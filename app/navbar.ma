[
  style:
    [
      background: util?.colors.dark,
      position: fixed,
      top: 0px,
      left: 0px,
      width: "100%",
      "z-index": 100,
      color: util?.colors.light,
    ],
  [
    style:
      [
        "max-width": 850px,
        padding: 9px 15px 10px,
        margin: 0 auto,
        display: table,
        width: "100%",
      ],
    :
      [v=>> [style: [display: "table-cell", "vertical-align": middle], v?]]
      .[
        [style: ["font-size": 21px], HostNation],
        [
          style: [float: right],
          [About Us, Befriend, Refer, Donate, Guide, Links]
          .[link=>> [style: [float: left, "padding-left": 25px], link?]],
        ],
      ],
  ],
]