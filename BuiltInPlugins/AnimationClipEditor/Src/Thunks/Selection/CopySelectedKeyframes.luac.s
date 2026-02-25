PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Selection"]
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETTABLEKS                       R3 R1 K1 ["Data"]
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 DUPTABLE                         R3 K8 [{"TopTrackName", "TopTrackType", "RelPath", "Type", "RotationType", "EulerAnglesOrder", "Data"}]
        8 GETUPVAL                         R4 0
        9 SETTABLEKS                       R4 R3 K2 ["TopTrackName"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K5 ["Type"]
       14 SETTABLEKS                       R4 R3 K3 ["TopTrackType"]
       16 SETTABLEKS                       R2 R3 K4 ["RelPath"]
       18 GETTABLEKS                       R4 R1 K5 ["Type"]
       20 SETTABLEKS                       R4 R3 K5 ["Type"]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R4 R5 K9 ["getRotationType"]
       25 GETUPVAL                         R5 1
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R4 R3 K6 ["RotationType"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R4 R5 K10 ["getEulerAnglesOrder"]
       32 GETUPVAL                         R5 1
       33 CALL                             R4 1 1
       34 SETTABLEKS                       R4 R3 K7 ["EulerAnglesOrder"]
       36 NEWTABLE                         R4 0 0
       38 SETTABLEKS                       R4 R3 K1 ["Data"]
       40 GETIMPORT                        R4 K12 [pairs]
       42 GETTABLEKS                       R5 R0 K0 ["Selection"]
       44 CALL                             R4 1 3
       45 FORGPREP_NEXT                    R4
       46 GETTABLEKS                       R10 R1 K1 ["Data"]
       48 GETTABLE                         R9 R10 R7
       49 JUMPIFNOT                        R9 ; [+6]
       50 GETTABLEKS                       R10 R3 K1 ["Data"]
       52 GETUPVAL                         R11 3
       53 MOVE                             R12 R9
       54 CALL                             R11 1 1
       55 SETTABLE                         R11 R10 R7
       56 FORGLOOP                         R4 2 ; [-11]
       58 GETUPVAL                         R5 4
       59 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       61 MOVE                             R6 R3
       62 GETIMPORT                        R4 K15 [table.insert]
       64 CALL                             R4 2 0
       65 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["SelectedKeyframes"]
        7 GETTABLEKS                       R3 R1 K3 ["AnimationData"]
        9 JUMPIFNOT                        R3 ; [+1]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 NEWTABLE                         R4 0 0
       14 GETIMPORT                        R5 K5 [pairs]
       16 MOVE                             R6 R2
       17 CALL                             R5 1 3
       18 FORGPREP_NEXT                    R5
       19 GETTABLEKS                       R11 R3 K6 ["Instances"]
       21 GETTABLE                         R10 R11 R8
       22 NEWTABLE                         R11 0 0
       24 GETIMPORT                        R12 K5 [pairs]
       26 MOVE                             R13 R9
       27 CALL                             R12 1 3
       28 FORGPREP_NEXT                    R12
       29 GETTABLEKS                       R18 R10 K7 ["Tracks"]
       31 GETTABLE                         R17 R18 R15
       32 GETUPVAL                         R19 0
       33 GETTABLEKS                       R18 R19 K8 ["traverse"]
       35 MOVE                             R19 R16
       36 MOVE                             R20 R17
       37 NEWCLOSURE                       R21 P0
       38 CAPTURE                          VAL R15
       39 CAPTURE                          VAL R17
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R11
       43 CALL                             R18 3 0
       44 FORGLOOP                         R12 2 ; [-16]
       46 SETTABLE                         R11 R4 R8
       47 FORGLOOP                         R5 2 ; [-29]
       49 GETUPVAL                         R5 3
       50 MOVE                             R6 R4
       51 CALL                             R5 1 1
       52 JUMPIF                           R5 ; [+5]
       53 GETUPVAL                         R5 4
       54 LOADK                            R7 K9 [""]
       55 NAMECALL                         R5 R5 K10 ["CopyToClipboard"]
       57 CALL                             R5 2 0
       58 GETUPVAL                         R7 5
       59 GETTABLEKS                       R6 R7 K11 ["isChannelAnimation"]
       61 MOVE                             R7 R3
       62 CALL                             R6 1 1
       63 JUMPIFNOT                        R6 ; [+6]
       64 GETUPVAL                         R7 6
       65 GETTABLEKS                       R6 R7 K12 ["CLIPBOARD_TYPE"]
       67 GETTABLEKS                       R5 R6 K13 ["Channels"]
       69 JUMPIF                           R5 ; [+5]
       70 GETUPVAL                         R7 6
       71 GETTABLEKS                       R6 R7 K12 ["CLIPBOARD_TYPE"]
       73 GETTABLEKS                       R5 R6 K14 ["Keyframes"]
       75 GETUPVAL                         R8 7
       76 MOVE                             R9 R4
       77 MOVE                             R10 R5
       78 CALL                             R8 2 -1
       79 NAMECALL                         R6 R0 K15 ["dispatch"]
       81 CALL                             R6 -1 0
       82 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["deepCopy"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R6 R1 K10 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Util"]
       28 GETTABLEKS                       R4 R5 K13 ["isEmpty"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R7 R1 K10 ["Src"]
       35 GETTABLEKS                       R6 R7 K14 ["Actions"]
       37 GETTABLEKS                       R5 R6 K15 ["SetClipboard"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R8 R1 K10 ["Src"]
       44 GETTABLEKS                       R7 R8 K11 ["Util"]
       46 GETTABLEKS                       R6 R7 K16 ["Constants"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R9 R1 K10 ["Src"]
       53 GETTABLEKS                       R8 R9 K11 ["Util"]
       55 GETTABLEKS                       R7 R8 K17 ["AnimationData"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K9 [require]
       60 GETTABLEKS                       R10 R1 K10 ["Src"]
       62 GETTABLEKS                       R9 R10 K11 ["Util"]
       64 GETTABLEKS                       R8 R9 K18 ["SelectionUtils"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R11 R1 K10 ["Src"]
       71 GETTABLEKS                       R10 R11 K11 ["Util"]
       73 GETTABLEKS                       R9 R10 K19 ["TrackUtils"]
       75 CALL                             R8 1 1
       76 DUPCLOSURE                       R9 K20 [PROTO_2]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R4
       85 RETURN                           R9 1
