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
       37 NEWTABLE                         R5 0 1
       39 MOVE                             R6 R4
       40 SETLIST                          R5 R6 1 [1]
       42 GETTABLEKS                       R6 R1 K13 ["Utils"]
       44 GETTABLEKS                       R6 R6 K14 ["deepFreeze"]
       46 MOVE                             R7 R5
       47 CALL                             R6 1 0
       48 DUPCLOSURE                       R6 K15 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 DUPCLOSURE                       R7 K16 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R3
       53 DUPTABLE                         R8 K19 [{"getTutorials", "getTutorial"}]
       54 SETTABLEKS                       R6 R8 K17 ["getTutorials"]
       56 SETTABLEKS                       R7 R8 K18 ["getTutorial"]
       58 RETURN                           R8 1
