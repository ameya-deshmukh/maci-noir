use dep::std::ec::tecurve::affine::{Curve, Point};
// does the Elliptic Curve Diffie Hellman key exchange between the user
// and the trusted co-ordinator

fn ecdh(privKey: Field, pubKey: Point) -> pub Point{
        
        // BabyJubjub curve initialized
        let bjj = Curve::new(168700, 168696, G::new(995203441582195749578291179787384436505546430278305826713579947235728471134,5472060717959818805561601436314318772137091100104008585924551046643952123905));

        let privBits = privKey.to_le_bits();   

        let sharedKey = bjj.bit_mul(privBits, pubKey);  

        sharedKey
}

