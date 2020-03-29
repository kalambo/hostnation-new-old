[
  content=>
    [
      style:
        [
          'font-size': 18px,
          'line-height': 1.5,
          'font-family': 'Lato, sans-serif',
          color: util?.colors.dark,
          background: '#f6f6f6',
          'min-height': '100%',
        ],
      navbar?,
      [
        style:
          ['min-height': '100%', 'padding-top': 50px, 'margin-bottom': -44px],
        [
          style: ['max-width': 850px, padding: 50px 15px, margin: 0 auto],
          content?,
        ],
        [style: [height: 44px]],
      ],
      [
        style:
          [
            background: util?.colors.dark,
            padding: 11.5px 15px,
            color: util?.colors.light,
            'font-size': 14px,
            'text-align': center,
          ],
        "HostNation is a charity. Registered charity number 1180004",
      ],
    ],
]