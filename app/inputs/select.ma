[
  [value:=, options:=, freeze:=, screen:=]=>
    {
      open: ,
      base: ,
      [
        focus: ,
        box: base?,,

        mouse? | (mouse?.left = down, true, => open?) -> open?,
        keys? | (keys?.Enter = down, true, => open?) -> open?,,

        mouse? | (mouse?.left = down, true, => freeze?) -> freeze?,
        keys? | (keys?.Enter = down, true, => freeze?) -> freeze?,,

        keys? | (keys?.Escape = down).[true: , : freeze?] -> freeze?,,

        freeze? | (freeze?, open?) -> open?,,

        tabIndex: 0,
        style:
          [
            display: block,
            background:
              (focus?, util?.colors.yellowLight, => util?.colors.light),
            padding: 6px 10px,
            border: 1px solid (focus?, util?.colors.yellowDark, => white),
            'box-shadow': 'rgba(0, 0, 0, 0.15) 0px 1px 1px inset',
            outline: none,
            : util?.pointer,
          ],
        [
          [
            style: [float: right, padding: 4px 0 4px 16px, width: 32px],
            util?.icons.down,
          ],
          [style: ['margin-right': 32px], value?],
          [style: [display: table, clear: both]],
          (
            open?,
            modal?
            .[
              screen:=?,
              base:=?,
              content:
                {
                  active: once?.{options?.[v=> i=> : [(v? = value?, i?)]].1, 1},
                  onUp: delay?.400,
                  [
                    style: [background: util?.colors.light, padding: 8px 0],
                    keys?
                      |
                      (
                        active?
                          +
                          {
                            (
                              {keys?.ArrowDown = down, keys?.ArrowRight = down},
                              1,
                            ),
                            ({keys?.ArrowUp = down, keys?.ArrowLeft = down}, -1)
                            ,
                            0,
                          },
                      )
                        %
                        #options?
                      ->
                      active?,
                    keys? | (keys?.Enter = down, options?.active?, => value?)
                      ->
                      value?,
                    keys? | (keys?.Enter = down).[true: , : freeze?] -> freeze?,
                    :
                      options?
                      .[
                        text=> i=>
                          {
                            mouse: ,
                            mouse? | (mouse?, i?, => active?) -> active?,
                            mouse?
                              |
                              (
                                {mouse?.left = down, (onUp?, mouse?.left = up)},
                                text?,
                                => value?,
                              )
                              ->
                              value?,
                            mouse?
                              |
                              ({mouse?.left = down, (onUp?, mouse?.left = up)})
                              .[true: , : freeze?]
                              ->
                              freeze?,
                            label?
                            .[
                              text:=?,
                              mouse:=?,
                              active: active? = i?,
                              selected: value? = text?,
                            ],
                          },
                      ],
                  ],
                },
            ],
          ),
        ],
      ],
    },
]