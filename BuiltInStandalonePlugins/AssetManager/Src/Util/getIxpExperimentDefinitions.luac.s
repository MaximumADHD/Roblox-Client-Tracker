PROTO_0:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

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
       14 NEWTABLE                         R2 1 0
       16 GETTABLEKS                       R3 R1 K8 ["IxpVariable"]
       18 GETTABLEKS                       R3 R3 K9 ["TestExperiment"]
       20 NEWTABLE                         R4 0 2
       22 GETTABLEKS                       R5 R1 K10 ["IxpValue"]
       24 GETTABLEKS                       R5 R5 K11 ["Control"]
       26 GETTABLEKS                       R6 R1 K10 ["IxpValue"]
       28 GETTABLEKS                       R6 R6 K12 ["Experiment"]
       30 SETLIST                          R4 R5 2 [1]
       32 SETTABLE                         R4 R2 R3
       33 DUPCLOSURE                       R3 K13 [PROTO_0]
       34 CAPTURE                          VAL R2
       35 RETURN                           R3 1
