requires "kwasm-lemmas.k"

module SIMPLE-ARITHMETIC-SPEC
    imports WASM


    rule <k> ( ITYPE:IValType . const X:Int ) ( ITYPE . const Y:Int ) ( ITYPE . add ) => . ... </k>
         <stack> S:Stack => < ITYPE > (X +Int Y) : S </stack>
      requires 0 <=Int X andBool 0 <=Int Y
       andBool (X +Int Y) <Int #pow(ITYPE)

endmodule