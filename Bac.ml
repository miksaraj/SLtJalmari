(*
    This module contains the proofs for the correctness of
    blood alcohol content calculations used in Alkkis
    application.

    The formula is as follows:

        EBAC = A/(r * Wt) - B * T

        Where:  EBAC    =   blood alcohol content
                A       =   mass or volume of alcohol consumed
                r       =   ratio of body water to total weight,
                            avg 0.68 for men and 0.55 for women
                Wt      =   body weight
                B       =   rate at which alcohol is metabolised
                            (~0.017%/h)
                T       =   time during which alcohol has been
                            present in the blood

*)

open Z3

let EBAC : float
let A : float
let r g : float =
    match g with
    | Male -> 0.68
    | Female -> 0.55
let Wt : float
let B : float = 0.017
let T : float

(*
    We first define and verify the parts of the algorithm, starting
    with (r * Wt), as in the mass of body water
*)


(*
    The next section defines and verifies B * T, as in the total
    blood alcohol content metabolised in a given time
*)

(*
    This section defines and verifies A/rWt, as in the absolute
    accumulated blood alcohol content
*)

(*
    This last partial proof defines and verifies A/rWt - BT, also
    that the blood alcohol content decreases over time at a defined
    rate
*)

(*
    This section verifies the curried version of the algorithm, constructed
    from the parts defined and verified above
*)

(*  This last section verifies the algorithm as a monolithic construction *)