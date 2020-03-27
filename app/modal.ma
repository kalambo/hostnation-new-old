[
  [screen:=, base:=, content:=]=>
    {
      inner: ,
      small: screen?.width <= 500,
      gap: 5,
      topGap: (small?, 30, => gap?),
      height: min?.[{inner?.height, 0}, screen?.height - topGap? * 2],
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
                    top: {max?.[topGap?, (screen?.height - height?) * 0.5]}px,
                  ],
                },
                =>
                  [
                    left:
                      {
                        max?
                        .[
                          gap?,
                          min?.[base?.left, screen?.width - width? - gap?],
                        ],
                      }px,
                    width: {base?.width}px,
                    top:
                      {
                        max?
                        .[
                          gap?,
                          min?.[base?.top, screen?.height - height? - gap?],
                        ],
                      }px,
                  ],
              ),
            visibility: (height? = 0, hidden, => visible),
            height: {height?}px,
          ],
        [rect: inner?, content?],
      ],
    },
]