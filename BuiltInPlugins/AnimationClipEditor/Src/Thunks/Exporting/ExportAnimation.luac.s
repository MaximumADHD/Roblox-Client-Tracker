PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Disconnect"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K1 ["get"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K2 ["SaveSelectedToRoblox"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["onExportAnimation"]
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R6 2
        4 MOVE                             R7 R0
        5 GETUPVAL                         R10 3
        6 GETTABLEKS                       R9 R10 K1 ["Metadata"]
        8 JUMPIFNOT                        R9 ; [+6]
        9 GETUPVAL                         R10 3
       10 GETTABLEKS                       R9 R10 K1 ["Metadata"]
       12 GETTABLEKS                       R8 R9 K2 ["Guid"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R8
       16 NAMECALL                         R2 R2 K3 ["report"]
       18 CALL                             R2 6 0
       19 JUMPIFNOT                        R1 ; [+4]
       20 GETUPVAL                         R2 4
       21 NAMECALL                         R2 R2 K4 ["Destroy"]
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 5
       25 NAMECALL                         R2 R2 K5 ["Disconnect"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R4 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R4 K3 ["IsLegacyAnimSaves"]
        9 GETTABLEKS                       R5 R1 K2 ["Status"]
       11 GETTABLEKS                       R4 R5 K4 ["RootInstance"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 JUMPIF                           R4 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R6 R2 K5 ["Metadata"]
       18 GETTABLEKS                       R5 R6 K6 ["Name"]
       20 GETUPVAL                         R8 0
       21 MOVE                             R9 R5
       22 GETUPVAL                         R10 1
       23 GETUPVAL                         R11 2
       24 CALL                             R8 3 -1
       25 NAMECALL                         R6 R0 K7 ["dispatch"]
       27 CALL                             R6 -1 0
       28 GETUPVAL                         R7 3
       29 GETTABLEKS                       R6 R7 K8 ["getAnimSavesFolder"]
       31 MOVE                             R7 R4
       32 CALL                             R6 1 2
       33 JUMPIFNOT                        R3 ; [+1]
       34 MOVE                             R6 R7
       35 MOVE                             R8 R6
       36 JUMPIFNOT                        R8 ; [+4]
       37 MOVE                             R10 R5
       38 NAMECALL                         R8 R6 K9 ["FindFirstChild"]
       40 CALL                             R8 2 1
       41 JUMPIFNOT                        R6 ; [+76]
       42 JUMPIFNOT                        R8 ; [+75]
       43 LOADNIL                          R9
       44 GETUPVAL                         R11 4
       45 GETTABLEKS                       R10 R11 K10 ["SelectionChanged"]
       47 NEWCLOSURE                       R12 P0
       48 CAPTURE                          REF R9
       49 CAPTURE                          UPVAL U5
       50 NAMECALL                         R10 R10 K11 ["Connect"]
       52 CALL                             R10 2 1
       53 MOVE                             R9 R10
       54 LOADB                            R10 0
       55 LOADNIL                          R11
       56 GETUPVAL                         R13 6
       57 GETTABLEKS                       R12 R13 K12 ["hasFacsData"]
       59 MOVE                             R13 R2
       60 CALL                             R12 1 1
       61 MOVE                             R10 R12
       62 GETUPVAL                         R13 6
       63 GETTABLEKS                       R12 R13 K13 ["isChannelAnimation"]
       65 MOVE                             R13 R2
       66 CALL                             R12 1 1
       67 JUMPIFNOT                        R12 ; [+6]
       68 GETUPVAL                         R13 7
       69 GETTABLEKS                       R12 R13 K14 ["ANIMATION_TYPE"]
       71 GETTABLEKS                       R11 R12 K15 ["CurveAnimation"]
       73 JUMP                             ; [+5]
       74 GETUPVAL                         R13 7
       75 GETTABLEKS                       R12 R13 K14 ["ANIMATION_TYPE"]
       77 GETTABLEKS                       R11 R12 K16 ["KeyframeSequence"]
       79 GETUPVAL                         R12 8
       80 JUMPIFNOT                        R12 ; [+5]
       81 GETUPVAL                         R12 8
       82 LOADK                            R14 K17 ["AnimationClipEditor"]
       83 NAMECALL                         R12 R12 K9 ["FindFirstChild"]
       85 CALL                             R12 2 1
       86 JUMPIFNOT                        R12 ; [+21]
       87 GETUPVAL                         R16 7
       88 GETTABLEKS                       R15 R16 K18 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
       90 NAMECALL                         R13 R12 K9 ["FindFirstChild"]
       92 CALL                             R13 2 1
       93 LOADNIL                          R14
       94 GETTABLEKS                       R15 R13 K19 ["Event"]
       96 NEWCLOSURE                       R17 P1
       97 CAPTURE                          UPVAL U1
       98 CAPTURE                          REF R10
       99 CAPTURE                          REF R11
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R8
      102 CAPTURE                          REF R14
      103 NAMECALL                         R15 R15 K11 ["Connect"]
      105 CALL                             R15 2 1
      106 MOVE                             R14 R15
      107 CLOSEUPVALS                      R14
      108 GETUPVAL                         R13 4
      109 NEWTABLE                         R15 0 1
      111 MOVE                             R16 R8
      112 SETLIST                          R15 R16 1 [1]
      114 NAMECALL                         R13 R13 K20 ["Set"]
      116 CALL                             R13 2 0
      117 CLOSEUPVALS                      R9
      118 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RobloxPluginGuiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimationClipEditor"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R6 R2 K11 ["Src"]
       23 GETTABLEKS                       R5 R6 K12 ["Util"]
       25 GETTABLEKS                       R4 R5 K13 ["RigUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R8 R2 K11 ["Src"]
       32 GETTABLEKS                       R7 R8 K14 ["Thunks"]
       34 GETTABLEKS                       R6 R7 K15 ["Exporting"]
       36 GETTABLEKS                       R5 R6 K16 ["SaveAnimation"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K10 [require]
       41 GETTABLEKS                       R8 R2 K11 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Util"]
       45 GETTABLEKS                       R6 R7 K17 ["AnimationData"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K10 [require]
       50 GETTABLEKS                       R9 R2 K11 ["Src"]
       52 GETTABLEKS                       R8 R9 K12 ["Util"]
       54 GETTABLEKS                       R7 R8 K18 ["Constants"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K19 [PROTO_3]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R1
       64 RETURN                           R7 1
