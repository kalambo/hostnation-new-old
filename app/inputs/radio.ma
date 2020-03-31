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
]