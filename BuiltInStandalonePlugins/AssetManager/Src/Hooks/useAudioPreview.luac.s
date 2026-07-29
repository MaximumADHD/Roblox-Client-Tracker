PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getState"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["OnStateChanged"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R3 R3 K1 ["Connect"]
       11 CALL                             R3 2 -1
       12 FASTCALL                         TABLE_INSERT ; [+2]
       13 GETIMPORT                        R1 K4 [table.insert]
       15 CALL                             R1 -1 0
       16 MOVE                             R2 R0
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["OnProgressChanged"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U2
       22 NAMECALL                         R3 R3 K1 ["Connect"]
       24 CALL                             R3 2 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R1 K4 [table.insert]
       28 CALL                             R1 -1 0
       29 NEWCLOSURE                       R1 P2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R0
       32 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["play"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["pause"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resume"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R1 R0 K1 ["getAudioPreviewManager"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 NAMECALL                         R3 R1 K3 ["getState"]
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 2
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["useBinding"]
       17 LOADN                            R5 0
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R5
       26 CAPTURE                          UPVAL U2
       27 NEWTABLE                         R8 0 0
       29 CALL                             R6 2 0
       30 DUPTABLE                         R6 K14 [{"CurrentSoundId", "IsPlaying", "IsLoading", "TotalTime", "ProgressBinding", "play", "pause", "resume"}]
       31 GETTABLEKS                       R7 R2 K6 ["CurrentSoundId"]
       33 SETTABLEKS                       R7 R6 K6 ["CurrentSoundId"]
       35 GETTABLEKS                       R7 R2 K7 ["IsPlaying"]
       37 SETTABLEKS                       R7 R6 K7 ["IsPlaying"]
       39 GETTABLEKS                       R7 R2 K8 ["IsLoading"]
       41 SETTABLEKS                       R7 R6 K8 ["IsLoading"]
       43 GETTABLEKS                       R7 R2 K9 ["TotalTime"]
       45 SETTABLEKS                       R7 R6 K9 ["TotalTime"]
       47 SETTABLEKS                       R4 R6 K10 ["ProgressBinding"]
       49 NEWCLOSURE                       R7 P1
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R7 R6 K11 ["play"]
       53 NEWCLOSURE                       R7 P2
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R7 R6 K12 ["pause"]
       57 NEWCLOSURE                       R7 P3
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R7 R6 K13 ["resume"]
       61 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Controllers"]
       20 GETTABLEKS                       R3 R3 K10 ["ItemsController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["cleanConnections"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Controllers"]
       38 GETTABLEKS                       R5 R5 K13 ["AudioPreviewManager"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K14 [PROTO_7]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 RETURN                           R5 1
