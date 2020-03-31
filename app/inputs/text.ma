[
  [value:=, placeholder:=]=>
    [
      : input,
      focus: ,
      style:
        [
          display: block,
          background: (focus?, util?.colors.yellowLight, => util?.colors.light),
          padding: 6px 10px,
          border: 1px solid (focus?, util?.colors.yellowDark, => white),
          'box-shadow': 'rgba(0, 0, 0, 0.15) 0px 1px 1px inset',
        ],
      placeholder:=?,
      value:=?,
    ],
]