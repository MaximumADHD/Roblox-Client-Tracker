PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["MaterialVariant"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADK                            R2 K1 ["Variant"]
        4 JUMP                             ; [+1]
        5 LOADK                            R2 K2 ["Material"]
        6 LOADK                            R5 K3 ["Materials"]
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R10 R0 K2 ["Material"]
       10 CALL                             R9 1 1
       11 MOVE                             R7 R9
       12 MOVE                             R8 R2
       13 CONCAT                           R6 R7 R8
       14 NAMECALL                         R3 R1 K4 ["getText"]
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Resources"]
       24 GETTABLEKS                       R3 R3 K8 ["Constants"]
       26 GETTABLEKS                       R3 R3 K9 ["getMaterialName"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K10 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 RETURN                           R3 1
