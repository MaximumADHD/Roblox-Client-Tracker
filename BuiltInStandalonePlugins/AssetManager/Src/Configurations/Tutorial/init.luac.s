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
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K11 ["IntroTutorial"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K12 ["Flags"]
       45 GETTABLEKS                       R6 R6 K13 ["getFFlagAmrEnableIntroTutorial"]
       47 CALL                             R5 1 1
       48 NEWTABLE                         R6 0 0
       50 MOVE                             R7 R5
       51 CALL                             R7 0 1
       52 JUMPIFNOT                        R7 ; [+7]
       53 FASTCALL2                        TABLE_INSERT R6 R4 ; [+5]
       55 MOVE                             R8 R6
       56 MOVE                             R9 R4
       57 GETIMPORT                        R7 K16 [table.insert]
       59 CALL                             R7 2 0
       60 MOVE                             R7 R3
       61 MOVE                             R8 R6
       62 CALL                             R7 1 0
       63 DUPCLOSURE                       R7 K17 [PROTO_0]
       64 CAPTURE                          VAL R6
       65 DUPCLOSURE                       R8 K18 [PROTO_1]
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R2
       68 DUPTABLE                         R9 K21 [{"getTutorials", "getTutorial"}]
       69 SETTABLEKS                       R7 R9 K19 ["getTutorials"]
       71 SETTABLEKS                       R8 R9 K20 ["getTutorial"]
       73 RETURN                           R9 1
