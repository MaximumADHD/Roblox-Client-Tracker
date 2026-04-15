PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["invariant requires an error message argument"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R1
        3 CALL                             R2 1 0
        4 JUMPIF                           R0 ; [+17]
        5 JUMPIFNOTEQKNIL                  R1 ; [+7]
        7 GETIMPORT                        R2 K1 [error]
        9 LOADK                            R3 K2 ["Minified exception occurred; use the non-minified dev environment for the full error message and additional helpful warnings."]
       10 LOADN                            R4 2
       11 CALL                             R2 2 0
       12 RETURN                           R0 0
       13 GETIMPORT                        R2 K1 [error]
       15 GETIMPORT                        R3 K5 [string.format]
       17 MOVE                             R4 R1
       18 GETVARARGS                       R5 -1
       19 CALL                             R3 -1 1
       20 LOADN                            R4 2
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R1 R2 K3 ["__DEV__"]
        6 JUMPIFNOT                        R1 ; [+1]
        7 DUPCLOSURE                       R0 K4 [PROTO_1]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          REF R0
       10 CLOSEUPVALS                      R0
       11 RETURN                           R1 1
