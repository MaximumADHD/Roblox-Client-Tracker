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
       30 NEWTABLE                         R4 0 0
       32 MOVE                             R5 R3
       33 CALL                             R5 0 1
       34 JUMPIFNOT                        R5 ; [+17]
       35 GETTABLEKS                       R5 R2 K12 ["IxpVariable"]
       37 GETTABLEKS                       R5 R5 K13 ["Omnisearch"]
       39 NEWTABLE                         R6 0 2
       41 GETTABLEKS                       R7 R2 K14 ["IxpValue"]
       43 GETTABLEKS                       R7 R7 K15 ["Control"]
       45 GETTABLEKS                       R8 R2 K14 ["IxpValue"]
       47 GETTABLEKS                       R8 R8 K16 ["Experiment"]
       49 SETLIST                          R6 R7 2 [1]
       51 SETTABLE                         R6 R4 R5
       52 GETTABLEKS                       R5 R1 K17 ["Utils"]
       54 GETTABLEKS                       R5 R5 K18 ["deepFreeze"]
       56 MOVE                             R6 R4
       57 CALL                             R5 1 0
       58 DUPCLOSURE                       R5 K19 [PROTO_0]
       59 CAPTURE                          VAL R4
       60 DUPTABLE                         R6 K21 [{"getIxpExperimentDefinitions"}]
       61 SETTABLEKS                       R5 R6 K20 ["getIxpExperimentDefinitions"]
       63 RETURN                           R6 1
