import { fromJs } from 'maraca';
import * as webfont from 'webfontloader';

webfont.load({
  google: { families: ['Lato:300,400,700'] },
});

const isNumber = (x) => !isNaN(x) && !isNaN(parseFloat(x));
const toNumber = (s) => (isNumber(s) ? parseFloat(s) : 0);

const map = (func) => fromJs((emit) => (x) => x && emit(fromJs(func(x))));

export default {
  once: fromJs((emit) => {
    let first = true;
    return (x) => {
      if (x && first) {
        first = false;
        emit(x);
      }
    };
  }),
  delay: fromJs((emit) => {
    let timer;
    return (x) => {
      if (x) {
        if (timer) emit(fromJs(null));
        const n = toNumber(x.value);
        if (n) timer = setTimeout(() => emit(fromJs(true)), n);
      } else {
        if (timer) clearTimeout(timer);
      }
    };
  }),
  tick: (emit) => {
    let count = 1;
    emit(fromJs(count++));
    const interval = setInterval(() => emit(fromJs(count++)), 1000);
    return () => clearInterval(interval);
  },
  min: map((values) =>
    Math.min(
      ...values.value
        .toPairs()
        .filter((x) => x.value.value)
        .map((x) => toNumber(x.value.value)),
    ),
  ),
  max: map((values) =>
    Math.max(
      ...values.value
        .toPairs()
        .filter((x) => x.value.value)
        .map((x) => toNumber(x.value.value)),
    ),
  ),
};
