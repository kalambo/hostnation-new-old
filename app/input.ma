[
  text:
    [
      [value:=, placeholder:=]=>
        [
          : input,
          focus: ,
          style:
            [
              display: block,
              background:
                (focus?, util?.colors.yellowLight, => util?.colors.light),
              padding: 6px 10px,
              border: 1px solid (focus?, util?.colors.yellowDark, => white),
              'box-shadow': 'rgba(0, 0, 0, 0.15) 0px 1px 1px inset',
            ],
          placeholder:=?,
          value:=?,
        ],
    ],
  textarea:
    [
      [value:=]=>
        {
          focus: ,
          [
            style:
              [
                background:
                  (focus?, util?.colors.yellowLight, => util?.colors.light),
                padding: 6px 10px,
                border: 1px solid (focus?, util?.colors.yellowDark, => white),
                'box-shadow': 'rgba(0, 0, 0, 0.15) 0px 1px 1px inset',
                cursor: text,
                display: block,
              ],
            [
              style: [position: relative],
              [
                : span,
                style:
                  [
                    visibility: hidden,
                    'white-space': 'pre-wrap',
                    'word-break': 'break-word',
                    display: block,
                    overflow: hidden,
                  ],
                {value?} \
                 \.,
              ],
              [
                : textarea,
                focus:=?,
                style:
                  [
                    position: absolute,
                    top: 0px,
                    left: 0px,
                    width: 100\%,
                    height: 100\%,
                    resize: none,
                    overflow: hidden,
                    background: transparent,
                    outline: none,
                    display: block,
                  ],
                value:=?,
              ],
            ],
          ],
        },
    ],
  select:
    [
      [value:=, options:=, freeze:=, screen:=]=>
        {
          open: ,
          base: ,
          [
            focus: ,
            box: base?,
            mouse? | (mouse?.left = down, true, => open?) -> open?,
            mouse? | (mouse?.left = down, true, => freeze?) -> freeze?,
            freeze? | (freeze?, open?) -> open?,
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
                    [
                      style: [background: util?.colors.light, padding: 8px 0],
                      :
                        [hello, there, another, person]
                        .[
                          text=>>
                            {
                              mouse: ,
                              mouse? | (mouse?.left = down, text?, => value?)
                                ->
                                value?,
                              mouse? | (mouse?.left = down).[true: , : freeze?]
                                ->
                                freeze?,
                              label?
                              .[text:=?, mouse:=?, selected: value? = text?],
                            },
                        ],
                    ],
                ],
              ),
            ],
          ],
        },
    ],
  check:
    [
      [value:=, text:=]=>
        {
          mouse: ,
          mouse? | (mouse?.left = down).[true: !value?, : value?] -> value?,
          [
            focus: ,
            tabIndex: 0,
            style: [outline: none],
            option?
            .[
              type: tick,
              text:=?,
              mouse:=?,
              focus:=?,
              active: focus?,
              selected: value?,
            ],
          ],
        },
    ],
  radio:
    [
      [value:=, options:=]=>
        {
          active: 1,
          options?
          .[
            focus: ,
            stopKeys: [ArrowUp, ArrowLeft, ArrowDown, ArrowRight],
            keys?
              |
              options?
              .(
                (
                  active?
                    +
                    {
                      ({keys?.ArrowDown = down, keys?.ArrowRight = down}, 1),
                      ({keys?.ArrowUp = down, keys?.ArrowLeft = down}, -1),
                      0,
                    },
                )
                  %
                  #options?,
              )
              ->
              value?,
            focus? | {options?.[v=> i=> : [(v? = value?, i?)]].1, 1} -> active?,
            value? | {options?.[v=> i=> : [(v? = value?, i?)]].1, 1} -> active?,
            tabIndex: 0,
            style: [outline: none],
            text=> i=>
              {
                mouse: ,
                mouse? | (mouse?.left = down, text?, => value?) -> value?,
                mouse? | (mouse?.left = down, i?, => active?) -> active?,
                [
                  style: ['padding-top': (i? ! 1, 10px)],
                  option?
                  .[
                    type: disc,
                    text:=?,
                    mouse:=?,
                    focus:=?,
                    active: active? = i?,
                    selected: value? = text?,
                  ],
                ],
              },
          ],
        },
    ],
]