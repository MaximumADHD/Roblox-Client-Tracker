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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAmrEnableOmnisearch"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Flags"]
       38 GETTABLEKS                       R5 R5 K12 ["getFFlagAmrEnableIntroTutorial"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 0 0
       43 MOVE                             R6 R3
       44 CALL                             R6 0 1
       45 JUMPIFNOT                        R6 ; [+17]
       46 GETTABLEKS                       R6 R1 K13 ["IxpVariable"]
       48 GETTABLEKS                       R6 R6 K14 ["Omnisearch"]
       50 NEWTABLE                         R7 0 2
       52 GETTABLEKS                       R8 R1 K15 ["IxpValue"]
       54 GETTABLEKS                       R8 R8 K16 ["Control"]
       56 GETTABLEKS                       R9 R1 K15 ["IxpValue"]
       58 GETTABLEKS                       R9 R9 K17 ["Experiment"]
       60 SETLIST                          R7 R8 2 [1]
       62 SETTABLE                         R7 R5 R6
       63 MOVE                             R6 R4
       64 CALL                             R6 0 1
       65 JUMPIFNOT                        R6 ; [+17]
       66 GETTABLEKS                       R6 R1 K13 ["IxpVariable"]
       68 GETTABLEKS                       R6 R6 K18 ["IntroTutorial"]
       70 NEWTABLE                         R7 0 2
       72 GETTABLEKS                       R8 R1 K15 ["IxpValue"]
       74 GETTABLEKS                       R8 R8 K16 ["Control"]
       76 GETTABLEKS                       R9 R1 K15 ["IxpValue"]
       78 GETTABLEKS                       R9 R9 K17 ["Experiment"]
       80 SETLIST                          R7 R8 2 [1]
       82 SETTABLE                         R7 R5 R6
       83 MOVE                             R6 R2
       84 MOVE                             R7 R5
       85 CALL                             R6 1 0
       86 DUPCLOSURE                       R6 K19 [PROTO_0]
       87 CAPTURE                          VAL R5
       88 DUPTABLE                         R7 K21 [{"getIxpExperimentDefinitions"}]
       89 SETTABLEKS                       R6 R7 K20 ["getIxpExperimentDefinitions"]
       91 RETURN                           R7 1
