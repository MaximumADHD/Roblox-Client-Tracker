PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Ref"]
        2 JUMPIFNOTEQKS                    R1 K1 ["ref"] ; [+7]
        4 GETTABLEKS                       R1 R0 K2 ["Children"]
        6 JUMPIFNOTEQKS                    R1 K3 ["children"] ; [+3]
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 FASTCALL2K                       RAWGET R0 K4 ; [+5]
       12 MOVE                             R2 R0
       13 LOADK                            R3 K4 ["useState"]
       14 GETIMPORT                        R1 K6 [rawget]
       16 CALL                             R1 2 1
       17 JUMPIFEQKNIL                     R1 ; [+3]
       19 LOADB                            R1 1
       20 RETURN                           R1 1
       21 LOADB                            R1 0
       22 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
