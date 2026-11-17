PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["responseBody"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADK                            R1 K1 ["Upload failed"]
        7 RETURN                           R1 1
        8 GETTABLEKS                       R2 R0 K0 ["responseBody"]
       10 FASTCALL1                        TOSTRING R2 ; [+2]
       11 GETIMPORT                        R1 K3 [tostring]
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
