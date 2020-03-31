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
]