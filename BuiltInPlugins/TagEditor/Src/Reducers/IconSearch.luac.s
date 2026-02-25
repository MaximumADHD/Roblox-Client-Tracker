PROTO_0:
        0 ORK                              R0 R0 K0 [""]
        1 GETTABLEKS                       R2 R1 K1 ["type"]
        3 JUMPIFNOTEQKS                    R2 K2 ["ToggleIconPicker"] ; [+3]
        5 LOADK                            R2 K0 [""]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K1 ["type"]
        9 JUMPIFNOTEQKS                    R2 K3 ["SetIconSearch"] ; [+20]
       11 GETTABLEKS                       R5 R1 K4 ["text"]
       13 FASTCALL1                        TYPEOF R5 ; [+2]
       14 GETIMPORT                        R4 K6 [typeof]
       16 CALL                             R4 1 1
       17 JUMPIFEQKS                       R4 K7 ["string"] ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 FASTCALL1                        ASSERT R3 ; [+2]
       22 GETIMPORT                        R2 K9 [assert]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R3 R1 K4 ["text"]
       28 CALL                             R2 1 -1
       29 RETURN                           R2 -1
       30 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["sanitizeIconSearchInput"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
