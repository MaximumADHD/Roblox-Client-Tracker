PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["addScriptConversionRules"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 0
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 1
        7 CALL                             R3 1 -1
        8 NAMECALL                         R1 R0 K1 ["dispatch"]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SaveInterface"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R0 K4 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Actions"]
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R3 K10 ["SetReplaceRules"]
       24 CALL                             R4 1 1
       25 DUPCLOSURE                       R5 K11 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 RETURN                           R5 1
