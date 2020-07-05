import { GCM } from "./GCM.ts";

export class Frac<N extends number, D extends number> {
   constructor (public n: N, public d: D) {}

   simplified() {
      const gcm = GCM(this.n, this.d);
      return new Frac(this.n / gcm as N, this.d / gcm as D);
   }
}
