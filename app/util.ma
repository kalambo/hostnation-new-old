[
  colors:
    [
      dark: "#2f3644",
      light: "#f2f2f2",
      yellow: "#c3a217",
      yellowLight: "#f7ebb9",
      yellowDark: "#957c12",
    ],
  link:
    [
      [text, link]=>
        [
          : a,
          href: link?,
          target: "_blank",
          style: [color: colors?.yellow, "font-weight": bold],
          text?,
        ],
    ],
  icons:
    [
      tick:
        [
          : svg,
          width: 14,
          height: 14,
          viewBox: "-30 -30 572 572",
          style: [display: block, width: 14px, height: 14px],
          [
            : path,
            style: [fill: "#2f3644"],
            d:
              "M173.898 439.404l-166.4-166.4c-9.997-9.997-9.997-26.206 0-36.204l36.203-36.204c9.997-9.998 26.207-9.998 36.204 0L192 312.69 432.095 72.596c9.997-9.997 26.207-9.997 36.204 0l36.203 36.204c9.997 9.997 9.997 26.206 0 36.204l-294.4 294.401c-9.998 9.997-26.207 9.997-36.204-.001z"
          ,
          ],
        ],
      disc:
        [
          : svg,
          width: 14,
          height: 14,
          viewBox: "-170 -170 852 852",
          style: [display: block, width: 14px, height: 14px],
          [
            : path,
            style: [fill: "#2f3644"],
            d:
              "M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8z"
          ,
          ],
        ],
      down:
        [
          : svg,
          width: 16,
          height: 16,
          viewBox: "0 0 320 512",
          style: [display: block, width: 16px, height: 16px],
          [
            : path,
            style: [fill: "#2f3644"],
            d:
              "M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z"
          ,
          ],
        ],
    ],
  pointer:
    [
      cursor: pointer,
      userSelect: none,
      WebkitUserSelect: none,
      MozUserSelect: none,
      msUserSelect: none,
    ],
]