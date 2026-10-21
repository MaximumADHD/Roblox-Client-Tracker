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
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Flags"]
       36 GETTABLEKS                       R5 R5 K12 ["getFFlagAmrEnableIntroTutorial"]
       38 CALL                             R4 1 1
       39 NEWTABLE                         R5 0 0
       41 MOVE                             R6 R3
       42 CALL                             R6 0 1
       43 JUMPIFNOT                        R6 ; [+17]
       44 GETTABLEKS                       R6 R2 K13 ["IxpVariable"]
       46 GETTABLEKS                       R6 R6 K14 ["Omnisearch"]
       48 NEWTABLE                         R7 0 2
       50 GETTABLEKS                       R8 R2 K15 ["IxpValue"]
       52 GETTABLEKS                       R8 R8 K16 ["Control"]
       54 GETTABLEKS                       R9 R2 K15 ["IxpValue"]
       56 GETTABLEKS                       R9 R9 K17 ["Experiment"]
       58 SETLIST                          R7 R8 2 [1]
       60 SETTABLE                         R7 R5 R6
       61 MOVE                             R6 R4
       62 CALL                             R6 0 1
       63 JUMPIFNOT                        R6 ; [+17]
       64 GETTABLEKS                       R6 R2 K13 ["IxpVariable"]
       66 GETTABLEKS                       R6 R6 K18 ["IntroTutorial"]
       68 NEWTABLE                         R7 0 2
       70 GETTABLEKS                       R8 R2 K15 ["IxpValue"]
       72 GETTABLEKS                       R8 R8 K16 ["Control"]
       74 GETTABLEKS                       R9 R2 K15 ["IxpValue"]
       76 GETTABLEKS                       R9 R9 K17 ["Experiment"]
       78 SETLIST                          R7 R8 2 [1]
       80 SETTABLE                         R7 R5 R6
       81 GETTABLEKS                       R6 R1 K19 ["Utils"]
       83 GETTABLEKS                       R6 R6 K20 ["deepFreeze"]
       85 MOVE                             R7 R5
       86 CALL                             R6 1 0
       87 DUPCLOSURE                       R6 K21 [PROTO_0]
       88 CAPTURE                          VAL R5
       89 DUPTABLE                         R7 K23 [{"getIxpExperimentDefinitions"}]
       90 SETTABLEKS                       R6 R7 K22 ["getIxpExperimentDefinitions"]
       92 RETURN                           R7 1
