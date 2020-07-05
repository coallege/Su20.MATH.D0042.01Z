import { Degrees, MaxDegrees, Radians, MaxRadians } from "../shared/Units.ts";

type N = number;

// I really really really wanted to curry this function but no Ramda in typescript
const isCoterminal = (a: N, b: N, max: N) => (a % max) == (b % max);

const isCoterminal_deg = (a: Degrees, b: Degrees) => isCoterminal(a, b, MaxDegrees);

const isCoterminal_rad = (a: Radians, b: Radians) => isCoterminal(a, b, MaxRadians);

// [start, end)
function coterminalAbove_deg(angle: Degrees, start: Degrees, end: Degrees) {
   
}
