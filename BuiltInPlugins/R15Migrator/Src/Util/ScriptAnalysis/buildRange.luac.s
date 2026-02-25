PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R0
        6 ADDK                             R7 R2 K1 [1]
        7 CALL                             R3 4 -1
        8 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["ScriptAnalysis"]
       15 GETTABLEKS                       R2 R3 K9 ["Constants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K7 ["Util"]
       24 GETTABLEKS                       R4 R5 K8 ["ScriptAnalysis"]
       26 GETTABLEKS                       R3 R4 K10 ["Range"]
       28 CALL                             R2 1 1
       29 DUPCLOSURE                       R3 K11 [PROTO_0]
       30 CAPTURE                          VAL R2
       31 RETURN                           R3 1
