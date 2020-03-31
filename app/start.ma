{
  freeze: ,
  screen: ,
  [
    style: [height: 100\%, overflow: (freeze?, hidden, => auto)],
    box: screen?,
    [
      (
        freeze?,
        [
          mouse? | (mouse?.left = down).[true: , : freeze?] -> freeze?,
          style:
            [
              position: fixed,
              top: 0,
              left: 0,
              height: 100\%,
              width: 100\%,
              background: (screen?.width <= 500, 'rgba(0, 0, 0, 0.15)'),
              'z-index': 200,
            ],
        ],
      ),
    ],
    page?
    .[
      [
        style:
          [
            background: util?.colors.yellow,
            'text-align': center,
            'font-size': 30px,
            'font-weight': bold,
            color: util?.colors.light,
          ],
        BEFRIENDER REGISTRATION FORM,
      ],
      [
        style: [background: white, padding: 35.5px 40px],
        [v=> i=> [style: ['padding-top': (i? ! 1, 25.5px)], v?]]
        .[
          "Thank you for your interest in HostNation refugee befriending.",
          "We are seeking befrienders who live in Greater London zones 3-6 which
          is where most refugees and asylum seekers are housed. If you live in
          the outer zones but within the M25, we would love to have you on
          board. We are also keen to recruit more men to join HostNation.",
          "By registering you commit to being a London host to a socially
          isolated refugee or asylum seeker, who may be recently arrived or have
          lived here 10+ years, but has experienced little of what London has to
          offer. We hope you will show them more of our great city and how they
          can enjoy London and have new, positive experiences cheaply and often
          for free. London is a much friendlier city with a Londoner by your
          side. You must be able to offer at least 3-4 hours of time to spend
          together once or twice a fortnight. Befriending is a service and a
          commitment of time but it can grow into a mutual and personal
          friendship.",
          [
            "Meanwhile please follow us on
            <: util?.link.[Facebook, 'https://www.facebook.com/HostNationUK/']/>
            where we’ll keep you posted on our progress.",
          ],
          [
            style: ['font-weight': bold, 'font-style': italic],
            "Please do not register if you live outside of Greater London as we
            are not yet in a position to take referrals from outside of the
            capital.",
          ],
          "Many thanks, HostNation team",
        ],
        [
          style: ['font-size': 16px],
          v=> i=> [style: ['padding-top': 42.5px], v?],
        ]
        .[
          [v=> i=> [style: ['padding-top': (i? ! 1, 18.5px)], v?]]
          .[
            [
              style:
                [
                  'font-size': 30px,
                  color: util?.colors.yellow,
                  'font-weight': bold,
                ],
              "1. Registration criteria",
            ],
            [style: ['font-weight': bold], 'You need to be:'],
            [
              "A full time British resident",
              "Over the age of 18",
              "Not currently suffering from alcohol or drug dependency",
              "Without criminal convictions",
              "Able to offer the gift of time spent together – a minimum of 3hrs
              once a fortnight over 3 months",
            ]
            .[
              : ul,
              style: ['list-style': disc, 'padding-left': 30px],
              item=>> [: li, item?],
            ],
            {
              value: ,
              inputs?
              .check
              .[value:=?, text: 'I believe that I fit the above criteria'],
            },
          ],
          [v=> i=> [style: ['padding-top': (i? ! 1, 18.5px)], v?]]
          .[
            [
              style:
                [
                  'font-size': 30px,
                  color: util?.colors.yellow,
                  'font-weight': bold,
                ],
              "2. Registration questions",
            ],
            [
              style: ['font-style': italic],
              "Only the starred questions are essential but the more personal
              information you can provide, the better the match we can make.
              Registering as an individual befriender does not preclude your
              partner or family becoming involved in the befriending process
              over time.",
            ],
            [
              style: ['font-style': italic],
              "You will need to upload your passport page, a recent photo of
              yourself and, if you have one, a copy of any DBS certificate that
              is less than 5 years old (please note that you do not need to have
              a DBS to register as a befriender). You will also be asked to
              provide the contact details for two referees (not immediate
              family) who have known you for a long time and can vouch for you.
              Please have this information and these documents ready.",
            ],
            [
              style: ['font-style': italic],
              "All information provided is treated as highly confidential and is
              securely encrypted.",
            ],
            {
              value: ,
              [
                [style: [float: left, width: 100px], Name],
                [
                  style: ['margin-left': 100px],
                  inputs?.text.[value:=?, placeholder: 'First name'],
                ],
                [style: [display: table, clear: both]],
              ],
            },
            {
              value: ,
              [
                [style: [float: left, width: 100px], Sex],
                [
                  style: ['margin-left': 100px],
                  inputs?
                  .radio
                  .[value:=?, options: [Male, Female, Prefer not to say]],
                ],
                [style: [display: table, clear: both]],
              ],
            },
            {
              value: ,
              [
                [style: [float: left, width: 100px], Sex],
                [
                  style: ['margin-left': 100px],
                  inputs?
                  .select
                  .[
                    value:=?,
                    options: [Male, Female, Prefer not to say],
                    freeze:=?,
                    screen:=?,
                  ],
                ],
                [style: [display: table, clear: both]],
              ],
            },
            {
              value: ,
              [
                [style: [float: left, width: 100px], Test],
                [style: ['margin-left': 100px], inputs?.textarea.[value:=?]],
                [style: [display: table, clear: both]],
              ],
            },
          ],
        ],
      ],
    ],
  ],
}