PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R3 K1 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K2 ["EnumItem"] ; [+3]
        9 MOVE                             R1 R0
       10 RETURN                           R1 2
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K1 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K3 ["Instance"] ; [+9]
       18 LOADK                            R5 K4 ["MaterialVariant"]
       19 NAMECALL                         R3 R0 K5 ["IsA"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+3]
       23 MOVE                             R2 R0
       24 GETTABLEKS                       R1 R2 K6 ["BaseMaterial"]
       26 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 RETURN                           R2 1
