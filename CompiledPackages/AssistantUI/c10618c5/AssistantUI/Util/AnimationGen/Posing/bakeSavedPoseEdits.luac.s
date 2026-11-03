PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["poses"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R8 R0 K1 ["editedEffectorsByTime"]
        9 GETTABLE                         R7 R8 R5
       10 JUMPIF                           R7 ; [+2]
       11 NEWTABLE                         R7 0 0
       13 GETTABLEKS                       R10 R0 K2 ["rigEditedTimes"]
       15 GETTABLE                         R9 R10 R5
       16 JUMPIFEQKB                       R9 TRUE ; [+2]
       18 LOADB                            R8 0 +1
       19 LOADB                            R8 1
       20 LENGTH                           R9 R7
       21 JUMPIFNOTEQKN                    R9 K3 [0] ; [+2]
       23 JUMPIFNOT                        R8 ; [+74]
       24 GETTABLEKS                       R10 R0 K4 ["baselines"]
       26 GETTABLE                         R9 R10 R5
       27 JUMPIFEQKNIL                     R9 ; [+5]
       29 NAMECALL                         R10 R9 K5 ["Clone"]
       31 CALL                             R10 1 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R10
       34 NAMECALL                         R11 R6 K5 ["Clone"]
       36 CALL                             R11 1 1
       37 GETTABLEKS                       R13 R0 K6 ["dragSnapshotsByTime"]
       39 GETTABLE                         R12 R13 R5
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R13 R13 K7 ["rotateJointNamesForEdit"]
       43 MOVE                             R14 R7
       44 MOVE                             R15 R12
       45 MOVE                             R16 R11
       46 MOVE                             R17 R10
       47 CALL                             R13 4 1
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R14 R14 K8 ["moveJointNamesForEdit"]
       51 MOVE                             R15 R7
       52 MOVE                             R16 R12
       53 MOVE                             R17 R11
       54 MOVE                             R18 R10
       55 CALL                             R14 4 1
       56 GETUPVAL                         R15 0
       57 GETTABLEKS                       R15 R15 K9 ["includeRootChannels"]
       59 MOVE                             R16 R11
       60 MOVE                             R17 R10
       61 MOVE                             R18 R14
       62 MOVE                             R19 R13
       63 CALL                             R15 4 2
       64 MOVE                             R14 R15
       65 MOVE                             R13 R16
       66 LENGTH                           R15 R13
       67 JUMPIFNOTEQKN                    R15 K3 [0] ; [+13]
       69 LENGTH                           R15 R14
       70 JUMPIFNOTEQKN                    R15 K3 [0] ; [+10]
       72 NAMECALL                         R15 R11 K10 ["Destroy"]
       74 CALL                             R15 1 0
       75 JUMPIFEQKNIL                     R10 ; [+22]
       77 NAMECALL                         R15 R10 K10 ["Destroy"]
       79 CALL                             R15 1 0
       80 JUMP                             ; [+17]
       81 DUPTABLE                         R17 K16 [{"time", "authored", "baseline", "rotateJointNames", "moveJointNames"}]
       82 SETTABLEKS                       R5 R17 K11 ["time"]
       84 SETTABLEKS                       R11 R17 K12 ["authored"]
       86 SETTABLEKS                       R10 R17 K13 ["baseline"]
       88 SETTABLEKS                       R13 R17 K14 ["rotateJointNames"]
       90 SETTABLEKS                       R14 R17 K15 ["moveJointNames"]
       92 FASTCALL2                        TABLE_INSERT R1 R17 ; [+4]
       94 MOVE                             R16 R1
       95 GETIMPORT                        R15 K19 [table.insert]
       97 CALL                             R15 2 0
       98 FORGLOOP                         R2 2 ; [-92]
      100 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["withSavedPoseSnapshot"]
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 0
        4 CALL                             R3 2 1
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R2
        7 MOVE                             R6 R3
        8 GETTABLEKS                       R7 R0 K1 ["getSavedPoseIntervals"]
       10 MOVE                             R8 R1
       11 CALL                             R7 1 -1
       12 CALL                             R4 -1 1
       13 MOVE                             R5 R3
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R9 K2 ["authored"]
       19 NAMECALL                         R10 R10 K3 ["Destroy"]
       21 CALL                             R10 1 0
       22 GETTABLEKS                       R10 R9 K4 ["baseline"]
       24 JUMPIFEQKNIL                     R10 ; [+6]
       26 GETTABLEKS                       R10 R9 K4 ["baseline"]
       28 NAMECALL                         R10 R10 K3 ["Destroy"]
       30 CALL                             R10 1 0
       31 FORGLOOP                         R5 2 ; [-15]
       33 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["Posing"]
       15 GETTABLEKS                       R2 R2 K9 ["EditJointFilter"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Util"]
       22 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       24 GETTABLEKS                       R3 R3 K8 ["Posing"]
       26 GETTABLEKS                       R3 R3 K10 ["bakeLocalRotationIntentEdit"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Util"]
       33 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       35 GETTABLEKS                       R4 R4 K11 ["createHostEditor"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Util"]
       42 GETTABLEKS                       R5 R5 K7 ["AnimationGen"]
       44 GETTABLEKS                       R5 R5 K11 ["createHostEditor"]
       46 GETTABLEKS                       R5 R5 K12 ["createSavedKeyframeStore"]
       48 CALL                             R4 1 1
       49 DUPCLOSURE                       R5 K13 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 DUPCLOSURE                       R6 K14 [PROTO_1]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R2
       54 RETURN                           R6 1
