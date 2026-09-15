PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["deepFreeze"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 0 0
       25 MOVE                             R4 R2
       26 MOVE                             R5 R3
       27 CALL                             R4 1 0
       28 DUPCLOSURE                       R4 K10 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 DUPTABLE                         R5 K12 [{"getIxpExperimentDefinitions"}]
       31 SETTABLEKS                       R4 R5 K11 ["getIxpExperimentDefinitions"]
       33 RETURN                           R5 1
