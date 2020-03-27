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
              "box-shadow": "rgba(0, 0, 0, 0.15) 0px 1px 1px inset",
            ],
          placeholder:=?,
          value:=?,
        ],
    ],
  select:
    [
      [value:=, options:=, freeze:=, screen:=]=>
        {
          open: ,
          base: ,
          [
            focus: ,
            rect: base?,
            click? | true -> freeze?,
            freeze? | freeze? -> open?,
            tabIndex: 0,
            style:
              [
                display: block,
                background:
                  (focus?, util?.colors.yellowLight, => util?.colors.light),
                padding: 6px 10px,
                border: 1px solid (focus?, util?.colors.yellowDark, => white),
                "box-shadow": "rgba(0, 0, 0, 0.15) 0px 1px 1px inset",
                cursor: pointer,
                userSelect: none,
                WebkitUserSelect: none,
                MozUserSelect: none,
                msUserSelect: none,
                outline: none,
              ],
            [
              [
                style: [float: right, padding: 4px 0 4px 16px, width: 32px],
                util?.icons.down,
              ],
              [style: ["margin-right": 32px], value?],
              [style: [display: table, clear: both]],
              (
                open?,
                {
                  inner: ,
                  small: screen?.width <= 500,
                  gap: 5,
                  topGap: (small?, 30, => gap?),
                  height:
                    min?.[{inner?.height, 0}, screen?.height - topGap? * 2],
                  [
                    : _,
                    style:
                      [
                        "font-size": 16px,
                        "line-height": 1.5,
                        "font-family": "Lato, sans-serif",
                        color: util?.colors.dark,
                        boxShadow:
                          (
                            small?,
                            "0 2px 25px rgba(0,0,0,0.5)",
                            => "0 2px 20px 5px rgba(0,0,0,0.4)",
                          ),
                        position: fixed,
                        "z-index": 300,
                        overflow: auto,
                        :
                          (
                            small?,
                            {
                              width: min?.[screen?.width - 100, maxWidth?],
                              [
                                left: {(screen?.width - width?) * 0.5}px,
                                width: {width?}px,
                                top:
                                  {
                                    max?
                                    .[topGap?, (screen?.height - height?) * 0.5]
                                  ,
                                  }px,
                              ],
                            },
                            =>
                              [
                                left:
                                  {
                                    max?
                                    .[
                                      gap?,
                                      min?
                                      .[
                                        base?.left,
                                        screen?.width - width? - gap?,
                                      ],
                                    ],
                                  }px,
                                width: {base?.width}px,
                                top:
                                  {
                                    max?
                                    .[
                                      gap?,
                                      min?
                                      .[
                                        base?.top,
                                        screen?.height - height? - gap?,
                                      ],
                                    ],
                                  }px,
                              ],
                          ),
                        visibility: (height? = 0, hidden, => visible),
                        height: {height?}px,
                      ],
                    [
                      rect: inner?,
                      style: [background: util?.colors.light, padding: 8px 0],
                      :
                        [hello, there, another, person]
                        .[
                          v=>>
                            {
                              [
                                click: ,
                                click? | v? -> value?,
                                click? | "" -> freeze?,
                                hover: ,
                                style:
                                  [
                                    background:
                                      (
                                        hover?,
                                        util?.colors.yellowLight,
                                        => util?.colors.light,
                                      ),
                                    fontWeight: (value? = v?, bold),
                                    cursor: pointer,
                                    userSelect: none,
                                    WebkitUserSelect: none,
                                    MozUserSelect: none,
                                    msUserSelect: none,
                                    padding: 6px 10px,
                                    display: table,
                                    width: 100\%,
                                  ],
                                [
                                  v=>>
                                    [
                                      style:
                                        [
                                          display: "table-cell",
                                          "vertical-align": middle,
                                        ],
                                      v?,
                                    ],
                                ]
                                .[
                                  (
                                    value? = v?,
                                    util?.icons.tick,
                                    => [style: [height: 14px, width: 14px]],
                                  ),
                                  [style: [paddingLeft: 10px], v?],
                                ],
                              ],
                            },
                        ],
                    ],
                  ],
                },
              ),
            ],
          ],
        },
    ],
  check:
    [
      [value:=, text:=]=>
        [
          click? | !value? -> value?,
          focus: ,
          tabIndex: 0,
          style:
            [
              display: table,
              cursor: pointer,
              userSelect: none,
              WebkitUserSelect: none,
              MozUserSelect: none,
              msUserSelect: none,
              outline: none,
            ],
          :
            [
              v=>>
                [style: [display: "table-cell", "vertical-align": middle], v?],
            ]
            .[
              [
                style:
                  [
                    background:
                      (focus?, util?.colors.yellowLight, => util?.colors.light),
                    padding: 4px,
                    border:
                      1px solid (focus?, util?.colors.yellowDark, => white),
                    "box-shadow": "rgba(0, 0, 0, 0.15) 0px 1px 1px inset",
                    width: 24px,
                    "margin-right": 8px,
                  ],
                (
                  value?,
                  util?.icons.tick,
                  => [style: [height: 14px, width: 14px]],
                ),
              ],
              text?,
            ],
        ],
    ],
  radio:
    [
      [value:=, options:=]=>
        options?
        .[
          focus: ,
          tabIndex: 0,
          style: [outline: none],
          text=>>
            [
              click? | text? -> value?,
              style:
                [
                  display: table,
                  cursor: pointer,
                  userSelect: none,
                  WebkitUserSelect: none,
                  MozUserSelect: none,
                  msUserSelect: none,
                ],
              :
                [
                  v=>>
                    [
                      style: [display: "table-cell", "vertical-align": middle],
                      v?,
                    ],
                ]
                .[
                  [
                    style:
                      [
                        background:
                          (
                            focus?,
                            value? = text?,
                            util?.colors.yellowLight,
                            => util?.colors.light,
                          ),
                        padding: 4px,
                        border:
                          1px solid
                          (
                            focus?,
                            (
                              value? = text?,
                              util?.colors.yellowDark,
                              => util?.colors.yellow,
                            ),
                            => white,
                          ),
                        "box-shadow": "rgba(0, 0, 0, 0.15) 0px 1px 1px inset",
                        width: 24px,
                        "margin-right": 8px,
                        "border-radius": 100px,
                      ],
                    (
                      value? = text?,
                      util?.icons.disc,
                      => [style: [height: 14px, width: 14px]],
                    ),
                  ],
                  text?,
                ],
            ],
        ],
    ],
]