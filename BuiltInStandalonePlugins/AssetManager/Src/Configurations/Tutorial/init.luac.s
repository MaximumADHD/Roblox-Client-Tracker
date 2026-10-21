PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["id"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+2]
        8 RETURN                           R5 1
        9 FORGLOOP                         R1 2 ; [-6]
       11 GETUPVAL                         R1 1
       12 LOADK                            R2 K1 ["Configurations/Tutorial/init.lua: No tutorial found for ID: %*"]
       13 MOVE                             R4 R0
       14 NAMECALL                         R2 R2 K2 ["format"]
       16 CALL                             R2 2 1
       17 LOADK                            R3 K3 ["WARN"]
       18 CALL                             R1 2 0
       19 LOADNIL                          R1
       20 RETURN                           R1 1

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
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["logIfDebug"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K12 ["IntroTutorial"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Flags"]
       43 GETTABLEKS                       R6 R6 K14 ["getFFlagAmrEnableIntroTutorial"]
       45 CALL                             R5 1 1
       46 NEWTABLE                         R6 0 0
       48 MOVE                             R7 R5
       49 CALL                             R7 0 1
       50 JUMPIFNOT                        R7 ; [+7]
       51 FASTCALL2                        TABLE_INSERT R6 R4 ; [+5]
       53 MOVE                             R8 R6
       54 MOVE                             R9 R4
       55 GETIMPORT                        R7 K17 [table.insert]
       57 CALL                             R7 2 0
       58 GETTABLEKS                       R7 R1 K18 ["Utils"]
       60 GETTABLEKS                       R7 R7 K19 ["deepFreeze"]
       62 MOVE                             R8 R6
       63 CALL                             R7 1 0
       64 DUPCLOSURE                       R7 K20 [PROTO_0]
       65 CAPTURE                          VAL R6
       66 DUPCLOSURE                       R8 K21 [PROTO_1]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R3
       69 DUPTABLE                         R9 K24 [{"getTutorials", "getTutorial"}]
       70 SETTABLEKS                       R7 R9 K22 ["getTutorials"]
       72 SETTABLEKS                       R8 R9 K23 ["getTutorial"]
       74 RETURN                           R9 1
