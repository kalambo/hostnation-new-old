[
  [type:=, text:=, click:=, focus:=, active:=, selected:=]=>
    [
      click:=?,
      style: [display: table, : util?.pointer],
      [
        style:
          [
            display: "table-cell",
            "vertical-align": middle,
            "padding-right": 8px,
          ],
        [
          style:
            [
              background:
                (
                  focus?,
                  active?,
                  util?.colors.yellowLight,
                  => util?.colors.light,
                ),
              padding: 4px,
              border:
                1px solid
                (
                  focus?,
                  (active?, util?.colors.yellowDark, => util?.colors.yellow),
                  => white,
                ),
              "box-shadow": "rgba(0, 0, 0, 0.15) 0px 1px 1px inset",
              width: 24px,
              "border-radius": (type? = disc, 100px),
            ],
          (
            selected?,
            util?.icons.(type?),
            => [style: [height: 14px, width: 14px]],
          ),
        ],
      ],
      [style: [display: "table-cell", "vertical-align": middle], text?],
    ],
]