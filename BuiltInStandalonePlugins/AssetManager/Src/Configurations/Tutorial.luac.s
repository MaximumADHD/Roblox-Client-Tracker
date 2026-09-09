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
       12 LOADK                            R3 K1 ["Configurations/Tutorial/init.lua: No tutorial found for ID: %*"]
       13 MOVE                             R5 R0
       14 NAMECALL                         R3 R3 K2 ["format"]
       16 CALL                             R3 2 1
       17 MOVE                             R2 R3
       18 LOADK                            R3 K3 ["WARN"]
       19 CALL                             R1 2 0
       20 LOADNIL                          R1
       21 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R3 K9 ["logIfDebug"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["deepFreeze"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 0 0
       34 MOVE                             R5 R3
       35 MOVE                             R6 R4
       36 CALL                             R5 1 0
       37 DUPCLOSURE                       R5 K11 [PROTO_0]
       38 CAPTURE                          VAL R4
       39 DUPCLOSURE                       R6 K12 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 DUPTABLE                         R7 K15 [{"getTutorials", "getTutorial"}]
       43 SETTABLEKS                       R5 R7 K13 ["getTutorials"]
       45 SETTABLEKS                       R6 R7 K14 ["getTutorial"]
       47 RETURN                           R7 1
