[
  [text:=, mouse:=, active:=, selected:=]=>
    [
      mouse:=?,
      style:
        [
          background: (active?, util?.colors.yellowLight, => util?.colors.light)
          ,
          fontWeight: (selected?, bold),
          : util?.pointer,
        ],
      [
        style: [padding: 6px 10px, display: table],
        [
          style: [display: 'table-cell', 'vertical-align': middle],
          (selected?, util?.icons.tick, => [style: [height: 14px, width: 14px]])
        ,
        ],
        [
          style:
            [display: 'table-cell', 'vertical-align': middle, paddingLeft: 10px]
          ,
          text?,
        ],
      ],
    ],
]