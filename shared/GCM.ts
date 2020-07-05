type N = number;
export const GCM = (a: N, b: N): N => b == 0 ? a : GCM(b, a % b);
