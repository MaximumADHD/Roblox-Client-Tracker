PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["Instance"] ; [+27]
        7 LOADK                            R3 K3 ["BasePart"]
        8 NAMECALL                         R1 R0 K4 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+21]
       12 GETTABLEKS                       R2 R0 K5 ["MaterialVariant"]
       14 JUMPIFNOT                        R2 ; [+13]
       15 GETTABLEKS                       R2 R0 K5 ["MaterialVariant"]
       17 JUMPIFEQKS                       R2 K6 [""] ; [+10]
       19 GETTABLEKS                       R2 R0 K5 ["MaterialVariant"]
       21 LOADK                            R3 K7 ["__"]
       22 GETTABLEKS                       R4 R0 K8 ["Material"]
       24 GETTABLEKS                       R4 R4 K9 ["Name"]
       26 CONCAT                           R1 R2 R4
       27 RETURN                           R1 1
       28 GETTABLEKS                       R1 R0 K8 ["Material"]
       30 GETTABLEKS                       R1 R1 K9 ["Name"]
       32 RETURN                           R1 1
       33 GETUPVAL                         R1 0
       34 MOVE                             R2 R0
       35 CALL                             R1 1 2
       36 JUMPIFNOT                        R2 ; [+11]
       37 GETTABLEKS                       R3 R2 K9 ["Name"]
       39 JUMPIFEQKS                       R3 K6 [""] ; [+8]
       41 GETTABLEKS                       R4 R2 K9 ["Name"]
       43 LOADK                            R5 K7 ["__"]
       44 GETTABLEKS                       R6 R1 K9 ["Name"]
       46 CONCAT                           R3 R4 R6
       47 RETURN                           R3 1
       48 GETTABLEKS                       R3 R1 K9 ["Name"]
       50 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Util"]
       16 GETTABLEKS                       R3 R3 K7 ["parseMaterial"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
