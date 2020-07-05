declare const _: unique symbol;

export type Degrees = number & { readonly [_]: unique symbol };

export const MaxDegrees = 360 as Degrees;

export type Radians = number & { readonly [_]: unique symbol };

export const MaxRadians = 2 as PiMul;

export type PiMul = number & { readonly [_]: unique symbol };

export type PiDiv = number & { readonly [_]: unique symbol };
