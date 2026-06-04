PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 2
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R4 R3 K0 ["Name"]
        6 RETURN                           R4 1
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETUPVAL                         R6 1
        9 LOADK                            R7 K1 ["Materials"]
       10 GETTABLEKS                       R8 R2 K0 ["Name"]
       12 NAMECALL                         R4 R1 K2 ["getProjectText"]
       14 CALL                             R4 4 -1
       15 RETURN                           R4 -1
       16 GETTABLEKS                       R4 R2 K0 ["Name"]
       18 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Resources"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["LOCALIZATION_PROJECT_NAME"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R0 K8 ["Util"]
       23 GETTABLEKS                       R5 R5 K9 ["parseMaterial"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K10 [PROTO_0]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 RETURN                           R5 1
