concrete MiniCatEng of MiniCat = {

  lincat
    N = {s : Str} ;
    A = Adjective ;
    V = {s : Str} ;
    Adv = {s : Str} ;

    AP = Adjective ;
    CN = {s : Str} ;
    NP = {s : Str} ;

    Comp = {s : Str} ;

    VP = {s : Str} ;

    S = {s : Str} ;

  oper
    -- This helper definition, Adjective, is the lincat of A (line 5) and AP (line 9).
    -- You will need to change Adjective into an inflection table.
    Adjective : Type = {s : Str} ;

    -- The inflection table will need the following:
    -- * Attributive form: blue cat
    -- * Predicative form: cat is blue-coloured
    -- Even though the predicative is only different for colour
    -- adjectives, the inflection table must still exist in the lincat of A and AP.
    -- Create the params, and change Adjective into an inflection table.


}
