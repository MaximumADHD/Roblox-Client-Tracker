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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["getFFlagAmrEnableOmnisearch"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 1 0
       32 GETTABLEKS                       R5 R2 K12 ["IxpVariable"]
       34 GETTABLEKS                       R5 R5 K13 ["IntroTutorial"]
       36 NEWTABLE                         R6 0 2
       38 GETTABLEKS                       R7 R2 K14 ["IxpValue"]
       40 GETTABLEKS                       R7 R7 K15 ["Control"]
       42 GETTABLEKS                       R8 R2 K14 ["IxpValue"]
       44 GETTABLEKS                       R8 R8 K16 ["Experiment"]
       46 SETLIST                          R6 R7 2 [1]
       48 SETTABLE                         R6 R4 R5
       49 MOVE                             R5 R3
       50 CALL                             R5 0 1
       51 JUMPIFNOT                        R5 ; [+17]
       52 GETTABLEKS                       R5 R2 K12 ["IxpVariable"]
       54 GETTABLEKS                       R5 R5 K17 ["Omnisearch"]
       56 NEWTABLE                         R6 0 2
       58 GETTABLEKS                       R7 R2 K14 ["IxpValue"]
       60 GETTABLEKS                       R7 R7 K15 ["Control"]
       62 GETTABLEKS                       R8 R2 K14 ["IxpValue"]
       64 GETTABLEKS                       R8 R8 K16 ["Experiment"]
       66 SETLIST                          R6 R7 2 [1]
       68 SETTABLE                         R6 R4 R5
       69 GETTABLEKS                       R5 R1 K18 ["Utils"]
       71 GETTABLEKS                       R5 R5 K19 ["deepFreeze"]
       73 MOVE                             R6 R4
       74 CALL                             R5 1 0
       75 DUPCLOSURE                       R5 K20 [PROTO_0]
       76 CAPTURE                          VAL R4
       77 DUPTABLE                         R6 K22 [{"getIxpExperimentDefinitions"}]
       78 SETTABLEKS                       R5 R6 K21 ["getIxpExperimentDefinitions"]
       80 RETURN                           R6 1
