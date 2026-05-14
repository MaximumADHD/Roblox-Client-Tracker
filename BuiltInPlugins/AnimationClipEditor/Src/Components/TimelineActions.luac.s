PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Selection"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R2 R1 K1 ["Data"]
        5 JUMPIFNOT                        R2 ; [+2]
        6 GETUPVAL                         R2 0
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R2 K3 [pairs]
       11 GETTABLEKS                       R3 R0 K0 ["Selection"]
       13 CALL                             R2 1 3
       14 FORGPREP_NEXT                    R2
       15 GETTABLEKS                       R8 R1 K1 ["Data"]
       17 GETTABLE                         R7 R8 R5
       18 JUMPIFNOT                        R7 ; [+17]
       19 GETUPVAL                         R8 1
       20 JUMPIFNOTEQKNIL                  R8 ; [+5]
       22 GETUPVAL                         R9 2
       23 GETTABLE                         R8 R7 R9
       24 SETUPVAL                         R8 1
       25 JUMP                             ; [+10]
       26 GETUPVAL                         R8 1
       27 GETUPVAL                         R10 2
       28 GETTABLE                         R9 R7 R10
       29 JUMPIFEQ                         R8 R9 ; [+6]
       31 LOADNIL                          R8
       32 SETUPVAL                         R8 1
       33 LOADB                            R8 1
       34 SETUPVAL                         R8 0
       35 RETURN                           R0 0
       36 FORGLOOP                         R2 2 ; [-22]
       38 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["SelectedKeyframes"]
        4 GETTABLEKS                       R4 R2 K2 ["AnimationData"]
        6 LOADB                            R5 0
        7 LOADNIL                          R6
        8 GETIMPORT                        R7 K4 [pairs]
       10 MOVE                             R8 R3
       11 CALL                             R7 1 3
       12 FORGPREP_NEXT                    R7
       13 GETTABLEKS                       R13 R4 K5 ["Instances"]
       15 GETTABLE                         R12 R13 R10
       16 GETIMPORT                        R13 K4 [pairs]
       18 MOVE                             R14 R11
       19 CALL                             R13 1 3
       20 FORGPREP_NEXT                    R13
       21 GETTABLEKS                       R19 R12 K6 ["Tracks"]
       23 GETTABLE                         R18 R19 R16
       24 GETUPVAL                         R19 0
       25 GETTABLEKS                       R19 R19 K7 ["traverse"]
       27 MOVE                             R20 R17
       28 MOVE                             R21 R18
       29 NEWCLOSURE                       R22 P0
       30 CAPTURE                          REF R5
       31 CAPTURE                          REF R6
       32 CAPTURE                          VAL R1
       33 CALL                             R19 3 0
       34 FORGLOOP                         R13 2 ; [-14]
       36 FORGLOOP                         R7 2 ; [-24]
       38 MOVE                             R7 R6
       39 JUMPIFNOT                        R7 ; [+2]
       40 GETTABLEKS                       R7 R6 K8 ["Value"]
       42 CLOSEUPVALS                      R5
       43 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnItemSelected"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["Data"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R4 K1 ["Localization"]
        4 DUPTABLE                         R6 K3 [{"Text"}]
        5 LOADK                            R9 K4 ["ContextMenu"]
        6 MOVE                             R10 R2
        7 NAMECALL                         R7 R5 K5 ["getText"]
        9 CALL                             R7 3 1
       10 SETTABLEKS                       R7 R6 K2 ["Text"]
       12 MOVE                             R9 R2
       13 NAMECALL                         R7 R0 K6 ["getSharedPropertyValue"]
       15 CALL                             R7 2 1
       16 NEWCLOSURE                       R8 P0
       17 CAPTURE                          VAL R4
       18 CAPTURE                          VAL R2
       19 MOVE                             R9 R1
       20 LOADNIL                          R10
       21 LOADNIL                          R11
       22 FORGPREP                         R9
       23 GETTABLEKS                       R14 R13 K7 ["Name"]
       25 JUMPIFEQKNIL                     R3 ; [+5]
       27 GETTABLE                         R15 R3 R13
       28 JUMPIFEQKNIL                     R15 ; [+2]
       30 GETTABLE                         R14 R3 R13
       31 DUPTABLE                         R17 K11 [{"Text", "Data", "Checked", "OnItemClicked"}]
       32 SETTABLEKS                       R14 R17 K2 ["Text"]
       34 SETTABLEKS                       R13 R17 K8 ["Data"]
       36 GETTABLEKS                       R19 R13 K12 ["Value"]
       38 JUMPIFEQ                         R7 R19 ; [+2]
       40 LOADB                            R18 0 +1
       41 LOADB                            R18 1
       42 SETTABLEKS                       R18 R17 K9 ["Checked"]
       44 SETTABLEKS                       R8 R17 K10 ["OnItemClicked"]
       46 FASTCALL2                        TABLE_INSERT R6 R17 ; [+4]
       48 MOVE                             R16 R6
       49 GETIMPORT                        R15 K15 [table.insert]
       51 CALL                             R15 2 0
       52 FORGLOOP                         R9 2 ; [-30]
       54 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnGenerateCurve"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["Data"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWTABLE                         R2 1 3
        5 GETTABLEKS                       R6 R0 K0 ["Name"]
        7 SETTABLEKS                       R6 R2 K1 ["Text"]
        9 DUPTABLE                         R3 K4 [{"Text", "Data", "OnItemClicked"}]
       10 GETIMPORT                        R4 K8 [Enum.PoseEasingDirection.In]
       12 GETTABLEKS                       R4 R4 K0 ["Name"]
       14 SETTABLEKS                       R4 R3 K1 ["Text"]
       16 GETIMPORT                        R4 K8 [Enum.PoseEasingDirection.In]
       18 SETTABLEKS                       R4 R3 K2 ["Data"]
       20 SETTABLEKS                       R1 R3 K3 ["OnItemClicked"]
       22 DUPTABLE                         R4 K4 [{"Text", "Data", "OnItemClicked"}]
       23 GETIMPORT                        R5 K10 [Enum.PoseEasingDirection.Out]
       25 GETTABLEKS                       R5 R5 K0 ["Name"]
       27 SETTABLEKS                       R5 R4 K1 ["Text"]
       29 GETIMPORT                        R5 K10 [Enum.PoseEasingDirection.Out]
       31 SETTABLEKS                       R5 R4 K2 ["Data"]
       33 SETTABLEKS                       R1 R4 K3 ["OnItemClicked"]
       35 DUPTABLE                         R5 K4 [{"Text", "Data", "OnItemClicked"}]
       36 GETIMPORT                        R6 K12 [Enum.PoseEasingDirection.InOut]
       38 GETTABLEKS                       R6 R6 K0 ["Name"]
       40 SETTABLEKS                       R6 R5 K1 ["Text"]
       42 GETIMPORT                        R6 K12 [Enum.PoseEasingDirection.InOut]
       44 SETTABLEKS                       R6 R5 K2 ["Data"]
       46 SETTABLEKS                       R1 R5 K3 ["OnItemClicked"]
       48 SETLIST                          R2 R3 3 [1]
       50 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R1
        6 NEWTABLE                         R4 1 2
        8 LOADK                            R9 K2 ["ContextMenu"]
        9 LOADK                            R10 K3 ["GenerateCurve"]
       10 NAMECALL                         R7 R2 K4 ["getText"]
       12 CALL                             R7 3 1
       13 SETTABLEKS                       R7 R4 K5 ["Text"]
       15 MOVE                             R5 R3
       16 GETIMPORT                        R6 K9 [Enum.PoseEasingStyle.Bounce]
       18 CALL                             R5 1 1
       19 MOVE                             R6 R3
       20 GETIMPORT                        R7 K11 [Enum.PoseEasingStyle.Elastic]
       22 CALL                             R6 1 1
       23 SETLIST                          R4 R5 2 [1]
       25 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        4 GETTABLEKS                       R3 R1 K2 ["SelectedKeyframes"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["getSelectionBounds"]
        9 MOVE                             R5 R2
       10 MOVE                             R6 R3
       11 CALL                             R4 2 2
       12 MOVE                             R6 R3
       13 JUMPIFNOT                        R6 ; [+4]
       14 JUMPIFNOTEQ                      R4 R5 ; [+2]
       16 LOADB                            R6 0 +1
       17 LOADB                            R6 1
       18 RETURN                           R6 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SelectedKeyframes"]
        4 GETTABLEKS                       R3 R1 K2 ["SummaryKeyframe"]
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K3 ["PluginActions"]
       10 GETTABLEKS                       R5 R1 K4 ["IsChannelAnimation"]
       12 NEWTABLE                         R6 0 7
       14 LOADK                            R9 K5 ["AddKeyframeHere"]
       15 NAMECALL                         R7 R4 K6 ["get"]
       17 CALL                             R7 2 1
       18 LOADK                            R10 K7 ["DeleteSelected"]
       19 NAMECALL                         R8 R4 K6 ["get"]
       21 CALL                             R8 2 1
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K8 ["MENU_SEPARATOR"]
       25 LOADK                            R12 K9 ["CutSelected"]
       26 NAMECALL                         R10 R4 K6 ["get"]
       28 CALL                             R10 2 1
       29 LOADK                            R13 K10 ["CopySelected"]
       30 NAMECALL                         R11 R4 K6 ["get"]
       32 CALL                             R11 2 1
       33 LOADK                            R14 K11 ["PasteKeyframes"]
       34 NAMECALL                         R12 R4 K6 ["get"]
       36 CALL                             R12 2 1
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R13 R13 K8 ["MENU_SEPARATOR"]
       40 SETLIST                          R6 R7 7 [1]
       42 JUMPIFNOT                        R2 ; [+103]
       43 GETUPVAL                         R7 1
       44 MOVE                             R8 R2
       45 CALL                             R7 1 1
       46 JUMPIF                           R7 ; [+99]
       47 MOVE                             R8 R6
       48 LOADK                            R11 K12 ["ResetSelected"]
       49 NAMECALL                         R9 R4 K6 ["get"]
       51 CALL                             R9 2 -1
       52 FASTCALL                         TABLE_INSERT ; [+2]
       53 GETIMPORT                        R7 K15 [table.insert]
       55 CALL                             R7 -1 0
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K8 ["MENU_SEPARATOR"]
       59 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       61 MOVE                             R8 R6
       62 GETIMPORT                        R7 K15 [table.insert]
       64 CALL                             R7 2 0
       65 MOVE                             R8 R6
       66 LOADK                            R11 K16 ["ChangeDuration"]
       67 NAMECALL                         R9 R4 K6 ["get"]
       69 CALL                             R9 2 -1
       70 FASTCALL                         TABLE_INSERT ; [+2]
       71 GETIMPORT                        R7 K15 [table.insert]
       73 CALL                             R7 -1 0
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K8 ["MENU_SEPARATOR"]
       77 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       79 MOVE                             R8 R6
       80 GETIMPORT                        R7 K15 [table.insert]
       82 CALL                             R7 2 0
       83 JUMPIFNOT                        R5 ; [+34]
       84 MOVE                             R8 R6
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K17 ["KEY_INTERPOLATION_MODE_ORDER"]
       88 LOADK                            R12 K18 ["InterpolationMode"]
       89 NAMECALL                         R9 R0 K19 ["makeSelectionSubMenu"]
       91 CALL                             R9 3 -1
       92 FASTCALL                         TABLE_INSERT ; [+2]
       93 GETIMPORT                        R7 K15 [table.insert]
       95 CALL                             R7 -1 0
       96 MOVE                             R8 R6
       97 LOADK                            R11 K20 ["ClearBothTangents"]
       98 NAMECALL                         R9 R4 K6 ["get"]
      100 CALL                             R9 2 -1
      101 FASTCALL                         TABLE_INSERT ; [+2]
      102 GETIMPORT                        R7 K15 [table.insert]
      104 CALL                             R7 -1 0
      105 NAMECALL                         R7 R0 K21 ["multipleSelected"]
      107 CALL                             R7 1 1
      108 JUMPIFNOT                        R7 ; [+46]
      109 MOVE                             R8 R6
      110 NAMECALL                         R9 R0 K22 ["makeGenerateCurveMenu"]
      112 CALL                             R9 1 -1
      113 FASTCALL                         TABLE_INSERT ; [+2]
      114 GETIMPORT                        R7 K15 [table.insert]
      116 CALL                             R7 -1 0
      117 JUMP                             ; [+37]
      118 MOVE                             R8 R6
      119 GETUPVAL                         R11 0
      120 GETTABLEKS                       R11 R11 K23 ["EASING_STYLE_ORDER"]
      122 LOADK                            R12 K24 ["EasingStyle"]
      123 GETUPVAL                         R13 0
      124 GETTABLEKS                       R13 R13 K25 ["EASING_STYLE_DISPLAY_TEXT"]
      126 NAMECALL                         R9 R0 K19 ["makeSelectionSubMenu"]
      128 CALL                             R9 4 -1
      129 FASTCALL                         TABLE_INSERT ; [+2]
      130 GETIMPORT                        R7 K15 [table.insert]
      132 CALL                             R7 -1 0
      133 MOVE                             R8 R6
      134 GETUPVAL                         R11 0
      135 GETTABLEKS                       R11 R11 K26 ["EASING_DIRECTION_ORDER"]
      137 LOADK                            R12 K27 ["EasingDirection"]
      138 NAMECALL                         R9 R0 K19 ["makeSelectionSubMenu"]
      140 CALL                             R9 3 -1
      141 FASTCALL                         TABLE_INSERT ; [+2]
      142 GETIMPORT                        R7 K15 [table.insert]
      144 CALL                             R7 -1 0
      145 JUMP                             ; [+9]
      146 MOVE                             R8 R6
      147 LOADK                            R11 K28 ["AddResetKeyframe"]
      148 NAMECALL                         R9 R4 K6 ["get"]
      150 CALL                             R9 2 -1
      151 FASTCALL                         TABLE_INSERT ; [+2]
      152 GETIMPORT                        R7 K15 [table.insert]
      154 CALL                             R7 -1 0
      155 GETUPVAL                         R9 0
      156 GETTABLEKS                       R9 R9 K8 ["MENU_SEPARATOR"]
      158 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
      160 MOVE                             R8 R6
      161 GETIMPORT                        R7 K15 [table.insert]
      163 CALL                             R7 2 0
      164 MOVE                             R8 R6
      165 LOADK                            R11 K29 ["AddEvent"]
      166 NAMECALL                         R9 R4 K6 ["get"]
      168 CALL                             R9 2 -1
      169 FASTCALL                         TABLE_INSERT ; [+2]
      170 GETIMPORT                        R7 K15 [table.insert]
      172 CALL                             R7 -1 0
      173 JUMPIFEQKNIL                     R3 ; [+10]
      175 MOVE                             R8 R6
      176 LOADK                            R11 K30 ["RenameKeyframe"]
      177 NAMECALL                         R9 R4 K6 ["get"]
      179 CALL                             R9 2 -1
      180 FASTCALL                         TABLE_INSERT ; [+2]
      181 GETIMPORT                        R7 K15 [table.insert]
      183 CALL                             R7 -1 0
      184 RETURN                           R6 1

PROTO_9:
        0 JUMPIFNOT                        R1 ; [+23]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R1 K0 ["Enabled"]
        4 GETTABLEKS                       R4 R0 K1 ["Actions"]
        6 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R3 K4 [table.insert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R4 R0 K5 ["Connections"]
       14 GETTABLEKS                       R5 R1 K6 ["Triggered"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K7 ["Connect"]
       19 CALL                             R5 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["List"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["SplitTrack"]
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R2
       13 MOVE                             R6 R0
       14 GETUPVAL                         R7 4
       15 GETUPVAL                         R8 5
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R9 R9 K3 ["Analytics"]
       19 CALL                             R3 6 0
       20 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["getTrackTypeFromName"]
        5 GETTABLEN                        R3 R1 1
        6 GETUPVAL                         R4 2
        7 CALL                             R2 2 1
        8 SETUPVAL                         R2 0
        9 GETUPVAL                         R2 3
       10 JUMPIF                           R2 ; [+6]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["getRotationTypeFromName"]
       14 GETTABLEN                        R3 R1 1
       15 GETUPVAL                         R4 2
       16 CALL                             R2 2 1
       17 SETUPVAL                         R2 3
       18 GETUPVAL                         R2 4
       19 JUMPIFNOT                        R2 ; [+14]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K2 ["traverseComponents"]
       23 GETUPVAL                         R3 0
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U7
       31 GETUPVAL                         R5 3
       32 CALL                             R2 3 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 8
       35 GETTABLEKS                       R2 R2 K3 ["getTrack"]
       37 GETUPVAL                         R3 9
       38 MOVE                             R4 R0
       39 MOVE                             R5 R1
       40 CALL                             R2 3 1
       41 LOADNIL                          R3
       42 JUMPIFNOT                        R2 ; [+11]
       43 GETTABLEKS                       R4 R2 K4 ["Keyframes"]
       45 JUMPIFNOT                        R4 ; [+8]
       46 GETUPVAL                         R4 10
       47 GETTABLEKS                       R4 R4 K5 ["getValue"]
       49 MOVE                             R5 R2
       50 GETUPVAL                         R6 7
       51 CALL                             R4 2 1
       52 MOVE                             R3 R4
       53 JUMP                             ; [+6]
       54 GETUPVAL                         R4 10
       55 GETTABLEKS                       R4 R4 K6 ["getDefaultValue"]
       57 GETUPVAL                         R5 0
       58 CALL                             R4 1 1
       59 MOVE                             R3 R4
       60 DUPTABLE                         R4 K10 [{"Value", "EasingStyle", "EasingDirection"}]
       61 SETTABLEKS                       R3 R4 K7 ["Value"]
       63 GETIMPORT                        R5 K14 [Enum.PoseEasingStyle.Linear]
       65 SETTABLEKS                       R5 R4 K8 ["EasingStyle"]
       67 GETIMPORT                        R5 K17 [Enum.PoseEasingDirection.In]
       69 SETTABLEKS                       R5 R4 K9 ["EasingDirection"]
       71 GETUPVAL                         R5 6
       72 GETTABLEKS                       R5 R5 K18 ["AddKeyframe"]
       74 MOVE                             R6 R0
       75 MOVE                             R7 R1
       76 GETUPVAL                         R8 0
       77 LOADNIL                          R9
       78 GETUPVAL                         R10 7
       79 MOVE                             R11 R4
       80 GETUPVAL                         R12 6
       81 GETTABLEKS                       R12 R12 K19 ["Analytics"]
       83 CALL                             R5 7 0
       84 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Tick"]
        5 GETTABLEKS                       R2 R0 K2 ["InstanceName"]
        7 GETTABLEKS                       R3 R0 K3 ["Tracks"]
        9 GETTABLEKS                       R4 R0 K4 ["TrackType"]
       11 GETTABLEKS                       R5 R0 K5 ["RotationType"]
       13 GETTABLEKS                       R6 R0 K6 ["Path"]
       15 GETTABLEKS                       R7 R0 K7 ["AnimationData"]
       17 GETTABLEKS                       R8 R0 K8 ["IsChannelAnimation"]
       19 NEWCLOSURE                       R9 P0
       20 CAPTURE                          REF R4
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          REF R5
       24 CAPTURE                          VAL R8
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R7
       30 CAPTURE                          UPVAL U4
       31 GETTABLEKS                       R10 R0 K9 ["AddWaypoint"]
       33 CALL                             R10 0 0
       34 JUMPIFNOT                        R2 ; [+6]
       35 JUMPIFNOT                        R6 ; [+5]
       36 MOVE                             R10 R9
       37 MOVE                             R11 R2
       38 MOVE                             R12 R6
       39 CALL                             R10 2 0
       40 JUMP                             ; [+26]
       41 GETIMPORT                        R10 K11 [pairs]
       43 GETTABLEKS                       R11 R0 K7 ["AnimationData"]
       45 GETTABLEKS                       R11 R11 K12 ["Instances"]
       47 CALL                             R10 1 3
       48 FORGPREP_NEXT                    R10
       49 GETIMPORT                        R15 K11 [pairs]
       51 MOVE                             R16 R3
       52 CALL                             R15 1 3
       53 FORGPREP_NEXT                    R15
       54 MOVE                             R20 R9
       55 MOVE                             R21 R13
       56 NEWTABLE                         R22 0 1
       58 GETTABLEKS                       R23 R19 K13 ["Name"]
       60 SETLIST                          R22 R23 1 [1]
       62 CALL                             R20 2 0
       63 FORGLOOP                         R15 2 ; [-10]
       65 FORGLOOP                         R10 2 ; [-17]
       67 CLOSEUPVALS                      R4
       68 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["List"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["SplitTrack"]
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R2
       13 MOVE                             R6 R0
       14 GETUPVAL                         R7 4
       15 GETUPVAL                         R8 5
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R9 R9 K3 ["Analytics"]
       19 CALL                             R3 6 0
       20 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Tracks"]
        5 GETTABLEKS                       R2 R0 K2 ["Playhead"]
        7 GETTABLEKS                       R3 R0 K3 ["SelectedTracks"]
        9 GETTABLEKS                       R4 R0 K4 ["IsChannelAnimation"]
       11 JUMPIFNOT                        R3 ; [+103]
       12 GETTABLEKS                       R5 R0 K5 ["AddWaypoint"]
       14 CALL                             R5 0 0
       15 GETIMPORT                        R5 K7 [pairs]
       17 GETTABLEKS                       R6 R0 K8 ["AnimationData"]
       19 GETTABLEKS                       R6 R6 K9 ["Instances"]
       21 CALL                             R5 1 3
       22 FORGPREP_NEXT                    R5
       23 GETIMPORT                        R10 K7 [pairs]
       25 MOVE                             R11 R3
       26 CALL                             R10 1 3
       27 FORGPREP_NEXT                    R10
       28 GETUPVAL                         R15 1
       29 GETTABLEKS                       R15 R15 K10 ["getTrack"]
       31 GETTABLEKS                       R16 R0 K8 ["AnimationData"]
       33 MOVE                             R17 R8
       34 MOVE                             R18 R14
       35 CALL                             R15 3 1
       36 JUMPIFNOT                        R15 ; [+3]
       37 GETTABLEKS                       R16 R15 K11 ["Type"]
       39 JUMPIF                           R16 ; [+6]
       40 GETUPVAL                         R16 2
       41 GETTABLEKS                       R16 R16 K12 ["getComponentTypeFromPath"]
       43 MOVE                             R17 R14
       44 MOVE                             R18 R1
       45 CALL                             R16 2 1
       46 JUMPIFNOT                        R4 ; [+23]
       47 JUMPIFNOT                        R15 ; [+6]
       48 GETUPVAL                         R17 2
       49 GETTABLEKS                       R17 R17 K13 ["getRotationType"]
       51 MOVE                             R18 R15
       52 CALL                             R17 1 1
       53 JUMPIF                           R17 ; [+2]
       54 GETTABLEKS                       R17 R0 K14 ["DefaultRotationType"]
       56 GETUPVAL                         R18 2
       57 GETTABLEKS                       R18 R18 K15 ["traverseComponents"]
       59 MOVE                             R19 R16
       60 NEWCLOSURE                       R20 P0
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R14
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R17
       66 CAPTURE                          VAL R2
       67 MOVE                             R21 R17
       68 CALL                             R18 3 0
       69 JUMP                             ; [+41]
       70 LOADNIL                          R17
       71 JUMPIFNOT                        R15 ; [+11]
       72 GETTABLEKS                       R18 R15 K16 ["Keyframes"]
       74 JUMPIFNOT                        R18 ; [+8]
       75 GETUPVAL                         R18 4
       76 GETTABLEKS                       R18 R18 K17 ["getValue"]
       78 MOVE                             R19 R15
       79 MOVE                             R20 R2
       80 CALL                             R18 2 1
       81 MOVE                             R17 R18
       82 JUMP                             ; [+6]
       83 GETUPVAL                         R18 4
       84 GETTABLEKS                       R18 R18 K18 ["getDefaultValue"]
       86 MOVE                             R19 R16
       87 CALL                             R18 1 1
       88 MOVE                             R17 R18
       89 DUPTABLE                         R18 K22 [{"Value", "EasingStyle", "EasingDirection"}]
       90 SETTABLEKS                       R17 R18 K19 ["Value"]
       92 GETIMPORT                        R19 K26 [Enum.PoseEasingStyle.Linear]
       94 SETTABLEKS                       R19 R18 K20 ["EasingStyle"]
       96 GETIMPORT                        R19 K29 [Enum.PoseEasingDirection.In]
       98 SETTABLEKS                       R19 R18 K21 ["EasingDirection"]
      100 GETTABLEKS                       R19 R0 K30 ["AddKeyframe"]
      102 MOVE                             R20 R8
      103 MOVE                             R21 R14
      104 MOVE                             R22 R16
      105 LOADNIL                          R23
      106 MOVE                             R24 R2
      107 MOVE                             R25 R18
      108 GETTABLEKS                       R26 R0 K31 ["Analytics"]
      110 CALL                             R19 7 0
      111 FORGLOOP                         R10 2 ; [-84]
      113 FORGLOOP                         R5 2 ; [-91]
      115 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["List"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K2 ["getDefaultValue"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 SETUPVAL                         R3 2
       14 DUPTABLE                         R3 K5 [{"Value", "InterpolationMode"}]
       15 GETUPVAL                         R4 2
       16 SETTABLEKS                       R4 R3 K3 ["Value"]
       18 GETIMPORT                        R4 K9 [Enum.KeyInterpolationMode.Cubic]
       20 SETTABLEKS                       R4 R3 K4 ["InterpolationMode"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K10 ["AddKeyframe"]
       25 GETUPVAL                         R5 5
       26 MOVE                             R6 R2
       27 MOVE                             R7 R0
       28 GETUPVAL                         R8 6
       29 GETUPVAL                         R9 7
       30 MOVE                             R10 R3
       31 GETUPVAL                         R11 4
       32 GETTABLEKS                       R11 R11 K11 ["Analytics"]
       34 CALL                             R4 7 0
       35 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["List"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 SETLIST                          R3 R4 1 [1]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["getDefaultValue"]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 SETUPVAL                         R3 2
       18 DUPTABLE                         R3 K5 [{"Value", "InterpolationMode"}]
       19 GETUPVAL                         R4 2
       20 SETTABLEKS                       R4 R3 K3 ["Value"]
       22 GETIMPORT                        R4 K9 [Enum.KeyInterpolationMode.Cubic]
       24 SETTABLEKS                       R4 R3 K4 ["InterpolationMode"]
       26 GETUPVAL                         R4 4
       27 GETTABLEKS                       R4 R4 K10 ["AddKeyframe"]
       29 GETUPVAL                         R5 5
       30 MOVE                             R6 R2
       31 MOVE                             R7 R0
       32 GETUPVAL                         R8 6
       33 GETUPVAL                         R9 7
       34 MOVE                             R10 R3
       35 GETUPVAL                         R11 4
       36 GETTABLEKS                       R11 R11 K11 ["Analytics"]
       38 CALL                             R4 7 0
       39 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Tick"]
        5 GETTABLEKS                       R2 R0 K2 ["InstanceName"]
        7 GETTABLEKS                       R3 R0 K3 ["Tracks"]
        9 GETTABLEKS                       R4 R0 K4 ["Path"]
       11 GETTABLEKS                       R5 R0 K5 ["IsChannelAnimation"]
       13 GETTABLEKS                       R6 R0 K6 ["AddWaypoint"]
       15 CALL                             R6 0 0
       16 JUMPIFNOT                        R2 ; [+53]
       17 JUMPIFNOT                        R4 ; [+52]
       18 LOADNIL                          R6
       19 GETTABLEKS                       R7 R0 K7 ["TrackType"]
       21 GETTABLEKS                       R8 R0 K8 ["RotationType"]
       23 JUMPIFNOT                        R5 ; [+16]
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R9 R9 K9 ["traverseComponents"]
       27 MOVE                             R10 R7
       28 NEWCLOSURE                       R11 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          REF R6
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R8
       36 CAPTURE                          VAL R1
       37 MOVE                             R12 R8
       38 CALL                             R9 3 0
       39 JUMP                             ; [+28]
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R9 R9 K10 ["getDefaultValue"]
       43 MOVE                             R10 R7
       44 CALL                             R9 1 1
       45 MOVE                             R6 R9
       46 DUPTABLE                         R9 K14 [{"Value", "EasingStyle", "EasingDirection"}]
       47 SETTABLEKS                       R6 R9 K11 ["Value"]
       49 GETIMPORT                        R10 K18 [Enum.PoseEasingStyle.Linear]
       51 SETTABLEKS                       R10 R9 K12 ["EasingStyle"]
       53 GETIMPORT                        R10 K21 [Enum.PoseEasingDirection.In]
       55 SETTABLEKS                       R10 R9 K13 ["EasingDirection"]
       57 GETTABLEKS                       R10 R0 K22 ["AddKeyframe"]
       59 MOVE                             R11 R2
       60 MOVE                             R12 R4
       61 MOVE                             R13 R7
       62 LOADNIL                          R14
       63 MOVE                             R15 R1
       64 MOVE                             R16 R9
       65 GETTABLEKS                       R17 R0 K23 ["Analytics"]
       67 CALL                             R10 7 0
       68 CLOSEUPVALS                      R6
       69 RETURN                           R0 0
       70 GETIMPORT                        R6 K25 [pairs]
       72 GETTABLEKS                       R7 R0 K26 ["AnimationData"]
       74 GETTABLEKS                       R7 R7 K27 ["Instances"]
       76 CALL                             R6 1 3
       77 FORGPREP_NEXT                    R6
       78 GETIMPORT                        R11 K25 [pairs]
       80 MOVE                             R12 R3
       81 CALL                             R11 1 3
       82 FORGPREP_NEXT                    R11
       83 GETTABLEKS                       R16 R15 K28 ["Name"]
       85 GETTABLEKS                       R18 R10 K3 ["Tracks"]
       87 GETTABLE                         R17 R18 R16
       88 LOADNIL                          R18
       89 LOADNIL                          R19
       90 LOADNIL                          R20
       91 JUMPIFNOT                        R5 ; [+51]
       92 JUMPIFNOT                        R17 ; [+20]
       93 GETTABLEKS                       R19 R17 K29 ["Type"]
       95 GETTABLEKS                       R21 R17 K30 ["Components"]
       97 JUMPIFNOT                        R21 ; [+8]
       98 GETTABLEKS                       R22 R17 K30 ["Components"]
      100 GETUPVAL                         R23 4
      101 GETTABLEKS                       R23 R23 K31 ["PROPERTY_KEYS"]
      103 GETTABLEKS                       R23 R23 K32 ["Rotation"]
      105 GETTABLE                         R21 R22 R23
      106 JUMPIFNOT                        R21 ; [+3]
      107 GETTABLEKS                       R22 R21 K29 ["Type"]
      109 JUMPIF                           R22 ; [+1]
      110 LOADNIL                          R22
      111 MOVE                             R20 R22
      112 JUMP                             ; [+14]
      113 GETUPVAL                         R21 1
      114 GETTABLEKS                       R21 R21 K33 ["getTrackTypeFromName"]
      116 MOVE                             R22 R16
      117 MOVE                             R23 R3
      118 CALL                             R21 2 1
      119 MOVE                             R19 R21
      120 GETUPVAL                         R21 1
      121 GETTABLEKS                       R21 R21 K34 ["getRotationTypeFromName"]
      123 MOVE                             R22 R16
      124 MOVE                             R23 R3
      125 CALL                             R21 2 1
      126 MOVE                             R20 R21
      127 GETUPVAL                         R21 1
      128 GETTABLEKS                       R21 R21 K9 ["traverseComponents"]
      130 MOVE                             R22 R19
      131 NEWCLOSURE                       R23 P1
      132 CAPTURE                          UPVAL U2
      133 CAPTURE                          VAL R16
      134 CAPTURE                          REF R18
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R9
      138 CAPTURE                          REF R20
      139 CAPTURE                          VAL R1
      140 MOVE                             R24 R20
      141 CALL                             R21 3 0
      142 JUMP                             ; [+43]
      143 JUMPIFNOT                        R17 ; [+3]
      144 GETTABLEKS                       R21 R17 K29 ["Type"]
      146 JUMPIF                           R21 ; [+6]
      147 GETUPVAL                         R21 1
      148 GETTABLEKS                       R21 R21 K33 ["getTrackTypeFromName"]
      150 MOVE                             R22 R16
      151 MOVE                             R23 R3
      152 CALL                             R21 2 1
      153 MOVE                             R19 R21
      154 GETUPVAL                         R21 3
      155 GETTABLEKS                       R21 R21 K10 ["getDefaultValue"]
      157 MOVE                             R22 R19
      158 CALL                             R21 1 1
      159 MOVE                             R18 R21
      160 DUPTABLE                         R21 K14 [{"Value", "EasingStyle", "EasingDirection"}]
      161 SETTABLEKS                       R18 R21 K11 ["Value"]
      163 GETIMPORT                        R22 K18 [Enum.PoseEasingStyle.Linear]
      165 SETTABLEKS                       R22 R21 K12 ["EasingStyle"]
      167 GETIMPORT                        R22 K21 [Enum.PoseEasingDirection.In]
      169 SETTABLEKS                       R22 R21 K13 ["EasingDirection"]
      171 GETTABLEKS                       R22 R0 K22 ["AddKeyframe"]
      173 MOVE                             R23 R9
      174 NEWTABLE                         R24 0 1
      176 MOVE                             R25 R16
      177 SETLIST                          R24 R25 1 [1]
      179 MOVE                             R25 R19
      180 LOADNIL                          R26
      181 MOVE                             R27 R1
      182 MOVE                             R28 R21
      183 GETTABLEKS                       R29 R0 K23 ["Analytics"]
      185 CALL                             R22 7 0
      186 CLOSEUPVALS                      R18
      187 FORGLOOP                         R11 2 ; [-105]
      189 FORGLOOP                         R6 2 ; [-112]
      191 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["OnRenameKeyframe"]
        5 GETTABLEKS                       R2 R0 K2 ["Tick"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Tick"]
        5 JUMPIF                           R1 ; [+2]
        6 GETTABLEKS                       R1 R0 K2 ["Playhead"]
        8 GETTABLEKS                       R2 R0 K3 ["AddWaypoint"]
       10 CALL                             R2 0 0
       11 GETTABLEKS                       R2 R0 K4 ["PasteKeyframes"]
       13 MOVE                             R3 R1
       14 GETTABLEKS                       R4 R0 K5 ["Analytics"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CopySelectedKeyframes"]
        5 CALL                             R1 0 0
        6 GETTABLEKS                       R1 R0 K2 ["DeleteSelectedKeyframes"]
        8 GETTABLEKS                       R2 R0 K3 ["Analytics"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnEditEvents"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Tick"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Tool"]
        5 GETIMPORT                        R2 K5 [Enum.RibbonTool.Move]
        7 JUMPIFNOTEQ                      R1 R2 ; [+7]
        9 GETTABLEKS                       R2 R0 K6 ["SetTool"]
       11 GETIMPORT                        R3 K8 [Enum.RibbonTool.Rotate]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETTABLEKS                       R2 R0 K6 ["SetTool"]
       17 GETIMPORT                        R3 K5 [Enum.RibbonTool.Move]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["TogglePlay"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AddWaypoint"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["DeleteSelectedKeyframes"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["props"]
       14 GETTABLEKS                       R1 R1 K3 ["Analytics"]
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AddWaypoint"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["ResetSelectedKeyframes"]
       11 CALL                             R0 0 -1
       12 RETURN                           R0 -1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Undo"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Signals"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginActions"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K2 ["Connections"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K3 ["Actions"]
       12 LOADK                            R6 K4 ["AddKeyframeHere"]
       13 NAMECALL                         R4 R1 K5 ["get"]
       15 CALL                             R4 2 1
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 NAMECALL                         R2 R0 K6 ["addAction"]
       24 CALL                             R2 3 0
       25 LOADK                            R6 K7 ["AddKeyframeAtScrubber"]
       26 NAMECALL                         R4 R1 K5 ["get"]
       28 CALL                             R4 2 1
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U3
       35 NAMECALL                         R2 R0 K6 ["addAction"]
       37 CALL                             R2 3 0
       38 LOADK                            R6 K8 ["AddResetKeyframe"]
       39 NAMECALL                         R4 R1 K5 ["get"]
       41 CALL                             R4 2 1
       42 NEWCLOSURE                       R5 P2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 NAMECALL                         R2 R0 K6 ["addAction"]
       50 CALL                             R2 3 0
       51 LOADK                            R6 K9 ["RenameKeyframe"]
       52 NAMECALL                         R4 R1 K5 ["get"]
       54 CALL                             R4 2 1
       55 NEWCLOSURE                       R5 P3
       56 CAPTURE                          VAL R0
       57 NAMECALL                         R2 R0 K6 ["addAction"]
       59 CALL                             R2 3 0
       60 LOADK                            R6 K10 ["PasteKeyframes"]
       61 NAMECALL                         R4 R1 K5 ["get"]
       63 CALL                             R4 2 1
       64 NEWCLOSURE                       R5 P4
       65 CAPTURE                          VAL R0
       66 NAMECALL                         R2 R0 K6 ["addAction"]
       68 CALL                             R2 3 0
       69 LOADK                            R6 K11 ["CutSelected"]
       70 NAMECALL                         R4 R1 K5 ["get"]
       72 CALL                             R4 2 1
       73 NEWCLOSURE                       R5 P5
       74 CAPTURE                          VAL R0
       75 NAMECALL                         R2 R0 K6 ["addAction"]
       77 CALL                             R2 3 0
       78 LOADK                            R6 K12 ["AddEvent"]
       79 NAMECALL                         R4 R1 K5 ["get"]
       81 CALL                             R4 2 1
       82 NEWCLOSURE                       R5 P6
       83 CAPTURE                          VAL R0
       84 NAMECALL                         R2 R0 K6 ["addAction"]
       86 CALL                             R2 3 0
       87 LOADK                            R6 K13 ["ToggleTool"]
       88 NAMECALL                         R4 R1 K5 ["get"]
       90 CALL                             R4 2 1
       91 NEWCLOSURE                       R5 P7
       92 CAPTURE                          VAL R0
       93 NAMECALL                         R2 R0 K6 ["addAction"]
       95 CALL                             R2 3 0
       96 NEWCLOSURE                       R2 P8
       97 CAPTURE                          VAL R0
       98 NEWCLOSURE                       R3 P9
       99 CAPTURE                          VAL R0
      100 NEWCLOSURE                       R4 P10
      101 CAPTURE                          VAL R0
      102 NEWCLOSURE                       R5 P11
      103 CAPTURE                          VAL R0
      104 LOADK                            R10 K14 ["CopySelected"]
      105 NAMECALL                         R8 R1 K5 ["get"]
      107 CALL                             R8 2 1
      108 GETTABLEKS                       R9 R0 K0 ["props"]
      110 GETTABLEKS                       R9 R9 K15 ["CopySelectedKeyframes"]
      112 NAMECALL                         R6 R0 K6 ["addAction"]
      114 CALL                             R6 3 0
      115 LOADK                            R10 K16 ["DeleteSelected"]
      116 NAMECALL                         R8 R1 K5 ["get"]
      118 CALL                             R8 2 1
      119 MOVE                             R9 R3
      120 NAMECALL                         R6 R0 K6 ["addAction"]
      122 CALL                             R6 3 0
      123 LOADK                            R10 K17 ["ResetSelected"]
      124 NAMECALL                         R8 R1 K5 ["get"]
      126 CALL                             R8 2 1
      127 MOVE                             R9 R4
      128 NAMECALL                         R6 R0 K6 ["addAction"]
      130 CALL                             R6 3 0
      131 LOADK                            R10 K18 ["SelectAll"]
      132 NAMECALL                         R8 R1 K5 ["get"]
      134 CALL                             R8 2 1
      135 GETTABLEKS                       R9 R0 K0 ["props"]
      137 GETTABLEKS                       R9 R9 K19 ["SelectAllKeyframes"]
      139 NAMECALL                         R6 R0 K6 ["addAction"]
      141 CALL                             R6 3 0
      142 LOADK                            R10 K20 ["DeselectAll"]
      143 NAMECALL                         R8 R1 K5 ["get"]
      145 CALL                             R8 2 1
      146 GETTABLEKS                       R9 R0 K0 ["props"]
      148 GETTABLEKS                       R9 R9 K21 ["DeselectAllKeyframes"]
      150 NAMECALL                         R6 R0 K6 ["addAction"]
      152 CALL                             R6 3 0
      153 LOADK                            R10 K22 ["ChangeDuration"]
      154 NAMECALL                         R8 R1 K5 ["get"]
      156 CALL                             R8 2 1
      157 GETTABLEKS                       R9 R0 K0 ["props"]
      159 GETTABLEKS                       R9 R9 K23 ["OnChangeDuration"]
      161 NAMECALL                         R6 R0 K6 ["addAction"]
      163 CALL                             R6 3 0
      164 LOADK                            R10 K24 ["Undo"]
      165 NAMECALL                         R8 R1 K5 ["get"]
      167 CALL                             R8 2 1
      168 MOVE                             R9 R5
      169 NAMECALL                         R6 R0 K6 ["addAction"]
      171 CALL                             R6 3 0
      172 LOADK                            R10 K25 ["Redo"]
      173 NAMECALL                         R8 R1 K5 ["get"]
      175 CALL                             R8 2 1
      176 GETTABLEKS                       R9 R0 K0 ["props"]
      178 GETTABLEKS                       R9 R9 K25 ["Redo"]
      180 NAMECALL                         R6 R0 K6 ["addAction"]
      182 CALL                             R6 3 0
      183 LOADK                            R10 K26 ["TogglePlay"]
      184 NAMECALL                         R8 R1 K5 ["get"]
      186 CALL                             R8 2 1
      187 MOVE                             R9 R2
      188 NAMECALL                         R6 R0 K6 ["addAction"]
      190 CALL                             R6 3 0
      191 LOADK                            R10 K27 ["ToggleBoneVis"]
      192 NAMECALL                         R8 R1 K5 ["get"]
      194 CALL                             R8 2 1
      195 GETTABLEKS                       R9 R0 K0 ["props"]
      197 GETTABLEKS                       R9 R9 K28 ["ToggleBoneVisibility"]
      199 NAMECALL                         R6 R0 K6 ["addAction"]
      201 CALL                             R6 3 0
      202 LOADK                            R10 K29 ["ToggleGridVis"]
      203 NAMECALL                         R8 R1 K5 ["get"]
      205 CALL                             R8 2 1
      206 GETTABLEKS                       R9 R0 K0 ["props"]
      208 GETTABLEKS                       R9 R9 K30 ["ToggleGridVisibility"]
      210 NAMECALL                         R6 R0 K6 ["addAction"]
      212 CALL                             R6 3 0
      213 LOADK                            R10 K31 ["ClearBothTangents"]
      214 NAMECALL                         R8 R1 K5 ["get"]
      216 CALL                             R8 2 1
      217 GETTABLEKS                       R9 R0 K0 ["props"]
      219 GETTABLEKS                       R9 R9 K32 ["OnClearTangentsSelected"]
      221 NAMECALL                         R6 R0 K6 ["addAction"]
      223 CALL                             R6 3 0
      224 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ShowMenu"]
        4 GETTABLEKS                       R3 R1 K2 ["Clipboard"]
        6 GETTABLEKS                       R4 R1 K3 ["ClipboardType"]
        8 GETTABLEKS                       R5 R1 K4 ["SelectedKeyframes"]
       10 GETTABLEKS                       R6 R1 K5 ["SummaryKeyframe"]
       12 GETTABLEKS                       R7 R1 K6 ["MultipleSelected"]
       14 GETTABLEKS                       R8 R1 K7 ["Tool"]
       16 GETTABLEKS                       R9 R1 K8 ["Tracks"]
       18 GETTABLEKS                       R10 R1 K9 ["IsChannelAnimation"]
       20 GETTABLEKS                       R11 R1 K10 ["ReadOnly"]
       22 GETTABLEKS                       R12 R0 K11 ["Actions"]
       24 GETTABLEKS                       R13 R0 K0 ["props"]
       26 GETTABLEKS                       R13 R13 K12 ["PluginActions"]
       28 GETUPVAL                         R14 0
       29 MOVE                             R15 R13
       30 CALL                             R14 1 1
       31 JUMPIF                           R14 ; [+196]
       32 JUMPIFEQKNIL                     R12 ; [+195]
       34 GETIMPORT                        R14 K14 [ipairs]
       36 MOVE                             R15 R12
       37 CALL                             R14 1 3
       38 FORGPREP_INEXT                   R14
       39 LOADB                            R19 0
       40 SETTABLEKS                       R19 R18 K15 ["Enabled"]
       42 FORGLOOP                         R14 2 [inext] ; [-4]
       44 JUMPIFNOT                        R10 ; [+6]
       45 GETUPVAL                         R14 1
       46 GETTABLEKS                       R14 R14 K16 ["CLIPBOARD_TYPE"]
       48 GETTABLEKS                       R14 R14 K17 ["Channels"]
       50 JUMPIF                           R14 ; [+5]
       51 GETUPVAL                         R14 1
       52 GETTABLEKS                       R14 R14 K16 ["CLIPBOARD_TYPE"]
       54 GETTABLEKS                       R14 R14 K18 ["Keyframes"]
       56 JUMPIFNOT                        R3 ; [+13]
       57 GETUPVAL                         R15 0
       58 MOVE                             R16 R3
       59 CALL                             R15 1 1
       60 JUMPIF                           R15 ; [+9]
       61 JUMPIFNOTEQ                      R4 R14 ; [+8]
       63 LOADK                            R17 K19 ["PasteKeyframes"]
       64 NAMECALL                         R15 R13 K20 ["get"]
       66 CALL                             R15 2 1
       67 NOT                              R16 R11
       68 SETTABLEKS                       R16 R15 K15 ["Enabled"]
       70 JUMPIFNOT                        R5 ; [+40]
       71 GETUPVAL                         R15 0
       72 MOVE                             R16 R5
       73 CALL                             R15 1 1
       74 JUMPIF                           R15 ; [+36]
       75 LOADK                            R17 K21 ["DeselectAll"]
       76 NAMECALL                         R15 R13 K20 ["get"]
       78 CALL                             R15 2 1
       79 LOADB                            R16 1
       80 SETTABLEKS                       R16 R15 K15 ["Enabled"]
       82 LOADK                            R17 K22 ["CutSelected"]
       83 NAMECALL                         R15 R13 K20 ["get"]
       85 CALL                             R15 2 1
       86 NOT                              R16 R11
       87 SETTABLEKS                       R16 R15 K15 ["Enabled"]
       89 LOADK                            R17 K23 ["CopySelected"]
       90 NAMECALL                         R15 R13 K20 ["get"]
       92 CALL                             R15 2 1
       93 NOT                              R16 R11
       94 SETTABLEKS                       R16 R15 K15 ["Enabled"]
       96 LOADK                            R17 K24 ["ResetSelected"]
       97 NAMECALL                         R15 R13 K20 ["get"]
       99 CALL                             R15 2 1
      100 NOT                              R16 R11
      101 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      103 LOADK                            R17 K25 ["DeleteSelected"]
      104 NAMECALL                         R15 R13 K20 ["get"]
      106 CALL                             R15 2 1
      107 NOT                              R16 R11
      108 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      110 JUMP                             ; [+7]
      111 LOADK                            R17 K26 ["SelectAll"]
      112 NAMECALL                         R15 R13 K20 ["get"]
      114 CALL                             R15 2 1
      115 NOT                              R16 R11
      116 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      118 GETTABLEKS                       R15 R1 K27 ["OnKeyframe"]
      120 JUMPIF                           R15 ; [+18]
      121 GETUPVAL                         R15 0
      122 MOVE                             R16 R9
      123 CALL                             R15 1 1
      124 JUMPIF                           R15 ; [+14]
      125 LOADK                            R17 K28 ["AddKeyframeHere"]
      126 NAMECALL                         R15 R13 K20 ["get"]
      128 CALL                             R15 2 1
      129 NOT                              R16 R11
      130 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      132 LOADK                            R17 K29 ["AddResetKeyframe"]
      133 NAMECALL                         R15 R13 K20 ["get"]
      135 CALL                             R15 2 1
      136 NOT                              R16 R11
      137 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      139 LOADK                            R17 K30 ["AddKeyframeAtScrubber"]
      140 NAMECALL                         R15 R13 K20 ["get"]
      142 CALL                             R15 2 1
      143 NOT                              R16 R11
      144 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      146 JUMPIFNOT                        R7 ; [+7]
      147 LOADK                            R17 K31 ["ChangeDuration"]
      148 NAMECALL                         R15 R13 K20 ["get"]
      150 CALL                             R15 2 1
      151 NOT                              R16 R11
      152 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      154 JUMPIFEQKNIL                     R6 ; [+8]
      156 LOADK                            R17 K32 ["RenameKeyframe"]
      157 NAMECALL                         R15 R13 K20 ["get"]
      159 CALL                             R15 2 1
      160 LOADB                            R16 1
      161 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      163 JUMPIFNOT                        R10 ; [+7]
      164 LOADK                            R17 K33 ["ClearBothTangents"]
      165 NAMECALL                         R15 R13 K20 ["get"]
      167 CALL                             R15 2 1
      168 NOT                              R16 R11
      169 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      171 GETIMPORT                        R15 K37 [Enum.RibbonTool.Rotate]
      173 JUMPIFEQ                         R8 R15 ; [+5]
      175 GETIMPORT                        R15 K39 [Enum.RibbonTool.Move]
      177 JUMPIFNOTEQ                      R8 R15 ; [+8]
      179 LOADK                            R17 K40 ["ToggleTool"]
      180 NAMECALL                         R15 R13 K20 ["get"]
      182 CALL                             R15 2 1
      183 NOT                              R16 R11
      184 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      186 LOADK                            R17 K41 ["Undo"]
      187 NAMECALL                         R15 R13 K20 ["get"]
      189 CALL                             R15 2 1
      190 NOT                              R16 R11
      191 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      193 LOADK                            R17 K42 ["Redo"]
      194 NAMECALL                         R15 R13 K20 ["get"]
      196 CALL                             R15 2 1
      197 NOT                              R16 R11
      198 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      200 LOADK                            R17 K43 ["TogglePlay"]
      201 NAMECALL                         R15 R13 K20 ["get"]
      203 CALL                             R15 2 1
      204 LOADB                            R16 1
      205 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      207 LOADK                            R17 K44 ["AddEvent"]
      208 NAMECALL                         R15 R13 K20 ["get"]
      210 CALL                             R15 2 1
      211 LOADB                            R16 1
      212 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      214 LOADK                            R17 K45 ["ToggleBoneVis"]
      215 NAMECALL                         R15 R13 K20 ["get"]
      217 CALL                             R15 2 1
      218 LOADB                            R16 1
      219 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      221 LOADK                            R17 K46 ["ToggleGridVis"]
      222 NAMECALL                         R15 R13 K20 ["get"]
      224 CALL                             R15 2 1
      225 LOADB                            R16 1
      226 SETTABLEKS                       R16 R15 K15 ["Enabled"]
      228 JUMPIFNOT                        R2 ; [+17]
      229 JUMPIF                           R11 ; [+16]
      230 GETUPVAL                         R14 2
      231 GETTABLEKS                       R14 R14 K47 ["createElement"]
      233 GETUPVAL                         R15 3
      234 DUPTABLE                         R16 K49 [{"Actions", "OnMenuOpened"}]
      235 NAMECALL                         R17 R0 K50 ["makeMenuActions"]
      237 CALL                             R17 1 1
      238 SETTABLEKS                       R17 R16 K11 ["Actions"]
      240 GETTABLEKS                       R17 R1 K48 ["OnMenuOpened"]
      242 SETTABLEKS                       R17 R16 K48 ["OnMenuOpened"]
      244 CALL                             R14 2 1
      245 RETURN                           R14 1
      246 LOADNIL                          R14
      247 RETURN                           R14 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["Connections"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETIMPORT                        R1 K2 [ipairs]
        5 GETTABLEKS                       R2 R0 K0 ["Connections"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 NAMECALL                         R6 R5 K3 ["Disconnect"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 [inext] ; [-4]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K0 ["Connections"]
       18 GETTABLEKS                       R1 R0 K4 ["Actions"]
       20 JUMPIFNOT                        R1 ; [+11]
       21 GETIMPORT                        R1 K2 [ipairs]
       23 GETTABLEKS                       R2 R0 K4 ["Actions"]
       25 CALL                             R1 1 3
       26 FORGPREP_INEXT                   R1
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K5 ["Enabled"]
       30 FORGLOOP                         R1 2 [inext] ; [-4]
       32 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["Status"]
        2 DUPTABLE                         R3 K19 [{"Clipboard", "ClipboardType", "SelectedKeyframes", "Playhead", "AnimationData", "Tracks", "Path", "TrackName", "TrackType", "RotationType", "InstanceName", "Tick", "SummaryKeyframe", "OnKeyframe", "Tool", "SelectedTracks", "DefaultRotationType", "ReadOnly"}]
        3 GETTABLEKS                       R4 R2 K1 ["Clipboard"]
        5 SETTABLEKS                       R4 R3 K1 ["Clipboard"]
        7 GETTABLEKS                       R4 R2 K2 ["ClipboardType"]
        9 SETTABLEKS                       R4 R3 K2 ["ClipboardType"]
       11 GETTABLEKS                       R4 R2 K3 ["SelectedKeyframes"]
       13 SETTABLEKS                       R4 R3 K3 ["SelectedKeyframes"]
       15 GETTABLEKS                       R4 R2 K4 ["Playhead"]
       17 SETTABLEKS                       R4 R3 K4 ["Playhead"]
       19 GETTABLEKS                       R4 R0 K5 ["AnimationData"]
       21 SETTABLEKS                       R4 R3 K5 ["AnimationData"]
       23 GETTABLEKS                       R4 R2 K6 ["Tracks"]
       25 SETTABLEKS                       R4 R3 K6 ["Tracks"]
       27 GETTABLEKS                       R4 R2 K20 ["RightClickContextInfo"]
       29 GETTABLEKS                       R4 R4 K7 ["Path"]
       31 SETTABLEKS                       R4 R3 K7 ["Path"]
       33 GETTABLEKS                       R4 R2 K20 ["RightClickContextInfo"]
       35 GETTABLEKS                       R4 R4 K8 ["TrackName"]
       37 SETTABLEKS                       R4 R3 K8 ["TrackName"]
       39 GETTABLEKS                       R4 R2 K20 ["RightClickContextInfo"]
       41 GETTABLEKS                       R4 R4 K9 ["TrackType"]
       43 SETTABLEKS                       R4 R3 K9 ["TrackType"]
       45 GETTABLEKS                       R4 R2 K20 ["RightClickContextInfo"]
       47 GETTABLEKS                       R4 R4 K10 ["RotationType"]
       49 SETTABLEKS                       R4 R3 K10 ["RotationType"]
       51 GETTABLEKS                       R4 R2 K20 ["RightClickContextInfo"]
       53 GETTABLEKS                       R4 R4 K11 ["InstanceName"]
       55 SETTABLEKS                       R4 R3 K11 ["InstanceName"]
       57 GETTABLEKS                       R4 R2 K20 ["RightClickContextInfo"]
       59 GETTABLEKS                       R4 R4 K12 ["Tick"]
       61 SETTABLEKS                       R4 R3 K12 ["Tick"]
       63 GETTABLEKS                       R4 R2 K20 ["RightClickContextInfo"]
       65 GETTABLEKS                       R4 R4 K13 ["SummaryKeyframe"]
       67 SETTABLEKS                       R4 R3 K13 ["SummaryKeyframe"]
       69 GETTABLEKS                       R4 R2 K20 ["RightClickContextInfo"]
       71 GETTABLEKS                       R4 R4 K14 ["OnKeyframe"]
       73 SETTABLEKS                       R4 R3 K14 ["OnKeyframe"]
       75 GETTABLEKS                       R4 R2 K15 ["Tool"]
       77 SETTABLEKS                       R4 R3 K15 ["Tool"]
       79 GETTABLEKS                       R4 R2 K16 ["SelectedTracks"]
       81 SETTABLEKS                       R4 R3 K16 ["SelectedTracks"]
       83 GETTABLEKS                       R4 R2 K17 ["DefaultRotationType"]
       85 SETTABLEKS                       R4 R3 K17 ["DefaultRotationType"]
       87 GETTABLEKS                       R4 R2 K18 ["ReadOnly"]
       89 SETTABLEKS                       R4 R3 K18 ["ReadOnly"]
       91 RETURN                           R3 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 NEWTABLE                         R2 0 0
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 0
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 2
        8 NEWTABLE                         R2 0 0
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 NEWTABLE                         R3 0 0
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 NEWTABLE                         R2 0 0
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 NEWTABLE                         R2 0 0
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 2
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 -1
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 MOVE                             R8 R0
        3 MOVE                             R9 R1
        4 MOVE                             R10 R2
        5 MOVE                             R11 R3
        6 MOVE                             R12 R4
        7 MOVE                             R13 R5
        8 CALL                             R7 6 -1
        9 CALL                             R6 -1 0
       10 GETUPVAL                         R6 0
       11 GETUPVAL                         R7 2
       12 NEWTABLE                         R8 0 0
       14 CALL                             R7 1 -1
       15 CALL                             R6 -1 0
       16 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R7 0
        1 GETUPVAL                         R8 1
        2 MOVE                             R9 R0
        3 MOVE                             R10 R1
        4 MOVE                             R11 R2
        5 MOVE                             R12 R3
        6 MOVE                             R13 R4
        7 MOVE                             R14 R5
        8 MOVE                             R15 R6
        9 CALL                             R8 7 -1
       10 CALL                             R7 -1 0
       11 GETUPVAL                         R7 0
       12 GETUPVAL                         R8 2
       13 NEWTABLE                         R9 0 0
       15 CALL                             R8 1 -1
       16 CALL                             R7 -1 0
       17 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 1
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R0
        8 CALL                             R2 1 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_47:
        0 DUPTABLE                         R1 K16 [{"SelectAllKeyframes", "DeselectAllKeyframes", "DeleteSelectedKeyframes", "ResetSelectedKeyframes", "CopySelectedKeyframes", "PasteKeyframes", "SplitTrack", "AddWaypoint", "AddKeyframe", "OnEditEvents", "Undo", "Redo", "TogglePlay", "SetTool", "ToggleBoneVisibility", "ToggleGridVisibility"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 SETTABLEKS                       R2 R1 K0 ["SelectAllKeyframes"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U1
       11 SETTABLEKS                       R2 R1 K1 ["DeselectAllKeyframes"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 SETTABLEKS                       R2 R1 K2 ["DeleteSelectedKeyframes"]
       19 NEWCLOSURE                       R2 P3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U4
       23 SETTABLEKS                       R2 R1 K3 ["ResetSelectedKeyframes"]
       25 NEWCLOSURE                       R2 P4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U4
       29 SETTABLEKS                       R2 R1 K4 ["CopySelectedKeyframes"]
       31 NEWCLOSURE                       R2 P5
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U7
       34 CAPTURE                          UPVAL U4
       35 SETTABLEKS                       R2 R1 K5 ["PasteKeyframes"]
       37 NEWCLOSURE                       R2 P6
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U4
       41 SETTABLEKS                       R2 R1 K6 ["SplitTrack"]
       43 NEWCLOSURE                       R2 P7
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U9
       46 SETTABLEKS                       R2 R1 K7 ["AddWaypoint"]
       48 NEWCLOSURE                       R2 P8
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U10
       51 CAPTURE                          UPVAL U4
       52 SETTABLEKS                       R2 R1 K8 ["AddKeyframe"]
       54 NEWCLOSURE                       R2 P9
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U11
       57 CAPTURE                          UPVAL U12
       58 SETTABLEKS                       R2 R1 K9 ["OnEditEvents"]
       60 NEWCLOSURE                       R2 P10
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U13
       63 SETTABLEKS                       R2 R1 K10 ["Undo"]
       65 NEWCLOSURE                       R2 P11
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U14
       68 SETTABLEKS                       R2 R1 K11 ["Redo"]
       70 NEWCLOSURE                       R2 P12
       71 CAPTURE                          VAL R0
       72 CAPTURE                          UPVAL U15
       73 SETTABLEKS                       R2 R1 K12 ["TogglePlay"]
       75 NEWCLOSURE                       R2 P13
       76 CAPTURE                          VAL R0
       77 CAPTURE                          UPVAL U16
       78 SETTABLEKS                       R2 R1 K13 ["SetTool"]
       80 NEWCLOSURE                       R2 P14
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U17
       83 SETTABLEKS                       R2 R1 K14 ["ToggleBoneVisibility"]
       85 NEWCLOSURE                       R2 P15
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U18
       88 SETTABLEKS                       R2 R1 K15 ["ToggleGridVisibility"]
       90 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETTABLEKS                       R7 R0 K13 ["Src"]
       41 GETTABLEKS                       R7 R7 K14 ["Actions"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R7 K15 ["SetEventEditingTick"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K5 [require]
       50 GETTABLEKS                       R10 R7 K16 ["SetRightClickContextInfo"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K5 [require]
       55 GETTABLEKS                       R11 R7 K17 ["SetSelectedEvents"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R7 K18 ["SetSelectedKeyframes"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R13 R7 K19 ["SetShowEvents"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K5 [require]
       70 GETTABLEKS                       R14 R7 K20 ["SetTool"]
       72 CALL                             R13 1 1
       73 GETTABLEKS                       R14 R0 K13 ["Src"]
       75 GETTABLEKS                       R14 R14 K21 ["Components"]
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R14 K22 ["ContextMenu"]
       81 CALL                             R15 1 1
       82 GETTABLEKS                       R16 R0 K13 ["Src"]
       84 GETTABLEKS                       R16 R16 K23 ["Context"]
       86 GETIMPORT                        R17 K5 [require]
       88 GETTABLEKS                       R18 R16 K24 ["Signals"]
       90 CALL                             R17 1 1
       91 GETTABLEKS                       R18 R0 K13 ["Src"]
       93 GETTABLEKS                       R18 R18 K25 ["Thunks"]
       95 GETIMPORT                        R19 K5 [require]
       97 GETTABLEKS                       R20 R18 K26 ["AddKeyframe"]
       99 CALL                             R19 1 1
      100 GETIMPORT                        R20 K5 [require]
      102 GETTABLEKS                       R21 R18 K27 ["History"]
      104 GETTABLEKS                       R21 R21 K28 ["AddWaypoint"]
      106 CALL                             R20 1 1
      107 GETIMPORT                        R21 K5 [require]
      109 GETTABLEKS                       R22 R18 K29 ["Selection"]
      111 GETTABLEKS                       R22 R22 K30 ["CopySelectedKeyframes"]
      113 CALL                             R21 1 1
      114 GETIMPORT                        R22 K5 [require]
      116 GETTABLEKS                       R23 R18 K29 ["Selection"]
      118 GETTABLEKS                       R23 R23 K31 ["DeleteSelectedKeyframes"]
      120 CALL                             R22 1 1
      121 GETIMPORT                        R23 K5 [require]
      123 GETTABLEKS                       R24 R18 K32 ["PasteKeyframes"]
      125 CALL                             R23 1 1
      126 GETIMPORT                        R24 K5 [require]
      128 GETTABLEKS                       R25 R18 K27 ["History"]
      130 GETTABLEKS                       R25 R25 K33 ["Redo"]
      132 CALL                             R24 1 1
      133 GETIMPORT                        R25 K5 [require]
      135 GETTABLEKS                       R26 R18 K29 ["Selection"]
      137 GETTABLEKS                       R26 R26 K34 ["ResetSelectedKeyframes"]
      139 CALL                             R25 1 1
      140 GETIMPORT                        R26 K5 [require]
      142 GETTABLEKS                       R27 R18 K29 ["Selection"]
      144 GETTABLEKS                       R27 R27 K35 ["SelectAllKeyframes"]
      146 CALL                             R26 1 1
      147 GETIMPORT                        R27 K5 [require]
      149 GETTABLEKS                       R28 R18 K36 ["SplitTrack"]
      151 CALL                             R27 1 1
      152 GETIMPORT                        R28 K5 [require]
      154 GETTABLEKS                       R29 R18 K37 ["ToggleBoneVisibility"]
      156 CALL                             R28 1 1
      157 GETIMPORT                        R29 K5 [require]
      159 GETTABLEKS                       R30 R18 K38 ["ToggleGridVisibility"]
      161 CALL                             R29 1 1
      162 GETIMPORT                        R30 K5 [require]
      164 GETTABLEKS                       R31 R18 K39 ["Playback"]
      166 GETTABLEKS                       R31 R31 K40 ["TogglePlay"]
      168 CALL                             R30 1 1
      169 GETIMPORT                        R31 K5 [require]
      171 GETTABLEKS                       R32 R18 K27 ["History"]
      173 GETTABLEKS                       R32 R32 K41 ["Undo"]
      175 CALL                             R31 1 1
      176 GETTABLEKS                       R32 R0 K13 ["Src"]
      178 GETTABLEKS                       R32 R32 K42 ["Util"]
      180 GETIMPORT                        R33 K5 [require]
      182 GETTABLEKS                       R34 R32 K43 ["AnimationData"]
      184 CALL                             R33 1 1
      185 GETIMPORT                        R34 K5 [require]
      187 GETTABLEKS                       R35 R32 K44 ["Constants"]
      189 CALL                             R34 1 1
      190 GETIMPORT                        R35 K5 [require]
      192 GETTABLEKS                       R36 R32 K45 ["isEmpty"]
      194 CALL                             R35 1 1
      195 GETIMPORT                        R36 K5 [require]
      197 GETTABLEKS                       R37 R32 K46 ["KeyframeUtils"]
      199 CALL                             R36 1 1
      200 GETIMPORT                        R37 K5 [require]
      202 GETTABLEKS                       R38 R32 K47 ["SelectionUtils"]
      204 CALL                             R37 1 1
      205 GETIMPORT                        R38 K5 [require]
      207 GETTABLEKS                       R39 R32 K48 ["TrackUtils"]
      209 CALL                             R38 1 1
      210 GETTABLEKS                       R39 R1 K49 ["PureComponent"]
      212 LOADK                            R41 K50 ["TimelineActions"]
      213 NAMECALL                         R39 R39 K51 ["extend"]
      215 CALL                             R39 2 1
      216 DUPCLOSURE                       R40 K52 [PROTO_1]
      217 CAPTURE                          VAL R37
      218 SETTABLEKS                       R40 R39 K53 ["getSharedPropertyValue"]
      220 DUPCLOSURE                       R40 K54 [PROTO_3]
      221 SETTABLEKS                       R40 R39 K55 ["makeSelectionSubMenu"]
      223 DUPCLOSURE                       R40 K56 [PROTO_6]
      224 SETTABLEKS                       R40 R39 K57 ["makeGenerateCurveMenu"]
      226 DUPCLOSURE                       R40 K58 [PROTO_7]
      227 CAPTURE                          VAL R33
      228 SETTABLEKS                       R40 R39 K59 ["multipleSelected"]
      230 DUPCLOSURE                       R40 K60 [PROTO_8]
      231 CAPTURE                          VAL R34
      232 CAPTURE                          VAL R35
      233 SETTABLEKS                       R40 R39 K61 ["makeMenuActions"]
      235 DUPCLOSURE                       R40 K62 [PROTO_9]
      236 SETTABLEKS                       R40 R39 K63 ["addAction"]
      238 DUPCLOSURE                       R40 K64 [PROTO_27]
      239 CAPTURE                          VAL R38
      240 CAPTURE                          VAL R3
      241 CAPTURE                          VAL R33
      242 CAPTURE                          VAL R36
      243 CAPTURE                          VAL R34
      244 SETTABLEKS                       R40 R39 K65 ["didMount"]
      246 DUPCLOSURE                       R40 K66 [PROTO_28]
      247 CAPTURE                          VAL R35
      248 CAPTURE                          VAL R34
      249 CAPTURE                          VAL R1
      250 CAPTURE                          VAL R15
      251 SETTABLEKS                       R40 R39 K67 ["render"]
      253 DUPCLOSURE                       R40 K68 [PROTO_29]
      254 SETTABLEKS                       R40 R39 K69 ["willUnmount"]
      256 MOVE                             R40 R6
      257 DUPTABLE                         R41 K73 [{"Localization", "PluginActions", "Analytics", "Signals"}]
      258 GETTABLEKS                       R42 R5 K70 ["Localization"]
      260 SETTABLEKS                       R42 R41 K70 ["Localization"]
      262 GETTABLEKS                       R42 R5 K71 ["PluginActions"]
      264 SETTABLEKS                       R42 R41 K71 ["PluginActions"]
      266 GETTABLEKS                       R42 R5 K72 ["Analytics"]
      268 SETTABLEKS                       R42 R41 K72 ["Analytics"]
      270 SETTABLEKS                       R17 R41 K24 ["Signals"]
      272 CALL                             R40 1 1
      273 MOVE                             R41 R39
      274 CALL                             R40 1 1
      275 MOVE                             R39 R40
      276 DUPCLOSURE                       R40 K74 [PROTO_30]
      277 DUPCLOSURE                       R41 K75 [PROTO_47]
      278 CAPTURE                          VAL R26
      279 CAPTURE                          VAL R10
      280 CAPTURE                          VAL R11
      281 CAPTURE                          VAL R22
      282 CAPTURE                          VAL R9
      283 CAPTURE                          VAL R25
      284 CAPTURE                          VAL R21
      285 CAPTURE                          VAL R23
      286 CAPTURE                          VAL R27
      287 CAPTURE                          VAL R20
      288 CAPTURE                          VAL R19
      289 CAPTURE                          VAL R12
      290 CAPTURE                          VAL R8
      291 CAPTURE                          VAL R31
      292 CAPTURE                          VAL R24
      293 CAPTURE                          VAL R30
      294 CAPTURE                          VAL R13
      295 CAPTURE                          VAL R28
      296 CAPTURE                          VAL R29
      297 GETTABLEKS                       R42 R2 K76 ["connect"]
      299 MOVE                             R43 R40
      300 MOVE                             R44 R41
      301 CALL                             R42 2 1
      302 MOVE                             R43 R39
      303 CALL                             R42 1 -1
      304 RETURN                           R42 -1
