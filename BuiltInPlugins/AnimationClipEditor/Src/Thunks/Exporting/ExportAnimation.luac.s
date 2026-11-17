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
        5 GETUPVAL                         R9 3
        6 GETTABLEKS                       R9 R9 K1 ["Metadata"]
        8 JUMPIFNOT                        R9 ; [+6]
        9 GETUPVAL                         R8 3
       10 GETTABLEKS                       R8 R8 K1 ["Metadata"]
       12 GETTABLEKS                       R8 R8 K2 ["Guid"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R8
       16 NAMECALL                         R2 R2 K3 ["report"]
       18 CALL                             R2 6 0
       19 JUMPIFNOT                        R1 ; [+4]
       20 GETUPVAL                         R2 4
       21 NAMECALL                         R2 R2 K4 ["Destroy"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["assetId"]
        2 GETTABLEKS                       R2 R0 K1 ["deleteLocal"]
        4 GETUPVAL                         R3 0
        5 LOADK                            R5 K2 ["onExportAnimation"]
        6 GETUPVAL                         R6 1
        7 GETUPVAL                         R7 2
        8 MOVE                             R8 R1
        9 GETUPVAL                         R10 3
       10 GETTABLEKS                       R10 R10 K3 ["Metadata"]
       12 JUMPIFNOT                        R10 ; [+6]
       13 GETUPVAL                         R9 3
       14 GETTABLEKS                       R9 R9 K3 ["Metadata"]
       16 GETTABLEKS                       R9 R9 K4 ["Guid"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R9
       20 NAMECALL                         R3 R3 K5 ["report"]
       22 CALL                             R3 6 0
       23 JUMPIFNOT                        R2 ; [+4]
       24 GETUPVAL                         R3 4
       25 NAMECALL                         R3 R3 K6 ["Destroy"]
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["onExportAnimation"]
        2 GETUPVAL                         R5 1
        3 GETUPVAL                         R6 2
        4 MOVE                             R7 R0
        5 GETUPVAL                         R9 3
        6 GETTABLEKS                       R9 R9 K1 ["Metadata"]
        8 JUMPIFNOT                        R9 ; [+6]
        9 GETUPVAL                         R8 3
       10 GETTABLEKS                       R8 R8 K1 ["Metadata"]
       12 GETTABLEKS                       R8 R8 K2 ["Guid"]
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

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R3 K3 ["IsLegacyAnimSaves"]
        9 GETTABLEKS                       R4 R1 K2 ["Status"]
       11 GETTABLEKS                       R4 R4 K4 ["RootInstance"]
       13 JUMPIFNOT                        R2 ; [+1]
       14 JUMPIF                           R4 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R5 R2 K5 ["Metadata"]
       18 GETTABLEKS                       R5 R5 K6 ["Name"]
       20 GETUPVAL                         R8 0
       21 MOVE                             R9 R5
       22 GETUPVAL                         R10 1
       23 GETUPVAL                         R11 2
       24 CALL                             R8 3 -1
       25 NAMECALL                         R6 R0 K7 ["dispatch"]
       27 CALL                             R6 -1 0
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K8 ["getAnimSavesFolder"]
       31 MOVE                             R7 R4
       32 CALL                             R6 1 2
       33 JUMPIFNOT                        R3 ; [+1]
       34 MOVE                             R6 R7
       35 MOVE                             R8 R6
       36 JUMPIFNOT                        R8 ; [+4]
       37 MOVE                             R10 R5
       38 NAMECALL                         R8 R6 K9 ["FindFirstChild"]
       40 CALL                             R8 2 1
       41 JUMPIFNOT                        R6 ; [+97]
       42 JUMPIFNOT                        R8 ; [+96]
       43 LOADNIL                          R9
       44 GETUPVAL                         R10 4
       45 GETTABLEKS                       R10 R10 K10 ["SelectionChanged"]
       47 NEWCLOSURE                       R12 P0
       48 CAPTURE                          REF R9
       49 CAPTURE                          UPVAL U5
       50 NAMECALL                         R10 R10 K11 ["Connect"]
       52 CALL                             R10 2 1
       53 MOVE                             R9 R10
       54 LOADB                            R10 0
       55 LOADNIL                          R11
       56 GETUPVAL                         R12 6
       57 GETTABLEKS                       R12 R12 K12 ["hasFacsData"]
       59 MOVE                             R13 R2
       60 CALL                             R12 1 1
       61 MOVE                             R10 R12
       62 GETUPVAL                         R12 6
       63 GETTABLEKS                       R12 R12 K13 ["isChannelAnimation"]
       65 MOVE                             R13 R2
       66 CALL                             R12 1 1
       67 JUMPIFNOT                        R12 ; [+6]
       68 GETUPVAL                         R12 7
       69 GETTABLEKS                       R12 R12 K14 ["ANIMATION_TYPE"]
       71 GETTABLEKS                       R11 R12 K15 ["CurveAnimation"]
       73 JUMP                             ; [+5]
       74 GETUPVAL                         R12 7
       75 GETTABLEKS                       R12 R12 K14 ["ANIMATION_TYPE"]
       77 GETTABLEKS                       R11 R12 K16 ["KeyframeSequence"]
       79 NEWCLOSURE                       R12 P1
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          REF R10
       82 CAPTURE                          REF R11
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R8
       85 GETUPVAL                         R13 8
       86 JUMPIFNOT                        R13 ; [+5]
       87 GETUPVAL                         R13 8
       88 LOADK                            R15 K17 ["AnimationClipEditor"]
       89 NAMECALL                         R13 R13 K9 ["FindFirstChild"]
       91 CALL                             R13 2 1
       92 GETUPVAL                         R14 9
       93 CALL                             R14 0 1
       94 JUMPIFNOT                        R14 ; [+12]
       95 GETUPVAL                         R14 10
       96 GETTABLEKS                       R14 R14 K18 ["waitForPublish"]
       98 MOVE                             R15 R8
       99 NEWCLOSURE                       R16 P2
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          REF R10
      102 CAPTURE                          REF R11
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R8
      105 CALL                             R14 2 0
      106 JUMP                             ; [+22]
      107 JUMPIFNOT                        R13 ; [+21]
      108 GETUPVAL                         R16 7
      109 GETTABLEKS                       R16 R16 K19 ["ANIMATION_UPLOAD_SUCCESS_EVENT_NAME"]
      111 NAMECALL                         R14 R13 K9 ["FindFirstChild"]
      113 CALL                             R14 2 1
      114 LOADNIL                          R15
      115 GETTABLEKS                       R16 R14 K20 ["Event"]
      117 NEWCLOSURE                       R18 P3
      118 CAPTURE                          UPVAL U1
      119 CAPTURE                          REF R10
      120 CAPTURE                          REF R11
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R8
      123 CAPTURE                          REF R15
      124 NAMECALL                         R16 R16 K11 ["Connect"]
      126 CALL                             R16 2 1
      127 MOVE                             R15 R16
      128 CLOSEUPVALS                      R15
      129 GETUPVAL                         R14 4
      130 NEWTABLE                         R16 0 1
      132 MOVE                             R17 R8
      133 SETLIST                          R16 R17 1 [1]
      135 NAMECALL                         R14 R14 K21 ["Set"]
      137 CALL                             R14 2 0
      138 CLOSEUPVALS                      R9
      139 RETURN                           R0 0

PROTO_5:
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
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 RETURN                           R3 1

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
       21 GETTABLEKS                       R4 R2 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Util"]
       25 GETTABLEKS                       R4 R4 K13 ["PendingAnimationPublishes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["RigUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R6 R2 K11 ["Src"]
       41 GETTABLEKS                       R6 R6 K15 ["Thunks"]
       43 GETTABLEKS                       R6 R6 K16 ["Exporting"]
       45 GETTABLEKS                       R6 R6 K17 ["SaveAnimation"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K10 [require]
       50 GETTABLEKS                       R7 R2 K11 ["Src"]
       52 GETTABLEKS                       R7 R7 K12 ["Util"]
       54 GETTABLEKS                       R7 R7 K18 ["AnimationData"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K10 [require]
       59 GETTABLEKS                       R8 R2 K11 ["Src"]
       61 GETTABLEKS                       R8 R8 K12 ["Util"]
       63 GETTABLEKS                       R8 R8 K19 ["Constants"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K10 [require]
       68 GETTABLEKS                       R9 R2 K11 ["Src"]
       70 GETTABLEKS                       R9 R9 K20 ["Flags"]
       72 GETTABLEKS                       R9 R9 K21 ["getFFlagNotifyAnimationPublished"]
       74 CALL                             R8 1 1
       75 DUPCLOSURE                       R9 K22 [PROTO_5]
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R3
       84 RETURN                           R9 1
