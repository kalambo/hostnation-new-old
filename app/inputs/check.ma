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
]