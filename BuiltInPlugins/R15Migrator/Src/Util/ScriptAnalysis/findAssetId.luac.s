PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 3
        3 JUMPIF                           R3 ; [+2]
        4 LOADB                            R6 0
        5 RETURN                           R6 1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K0 ["MatchBeforeAndAfter"]
        9 MOVE                             R7 R0
       10 MOVE                             R8 R3
       11 MOVE                             R9 R4
       12 LOADK                            R10 K1 ["[\"]"]
       13 LOADK                            R11 K1 ["[\"]"]
       14 CALL                             R6 5 1
       15 JUMPIF                           R6 ; [+12]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K0 ["MatchBeforeAndAfter"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R3
       21 MOVE                             R9 R4
       22 LOADK                            R10 K2 ["[']"]
       23 LOADK                            R11 K2 ["[']"]
       24 CALL                             R6 5 1
       25 JUMPIF                           R6 ; [+2]
       26 LOADB                            R6 0
       27 RETURN                           R6 1
       28 JUMPIFNOT                        R2 ; [+7]
       29 MOVE                             R6 R2
       30 MOVE                             R7 R3
       31 MOVE                             R8 R4
       32 MOVE                             R9 R5
       33 MOVE                             R10 R0
       34 MOVE                             R11 R1
       35 CALL                             R6 5 0
       36 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["parseAssetURL"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K9 ["Parent"]
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R3 K10 ["StringUtil"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 RETURN                           R5 1
