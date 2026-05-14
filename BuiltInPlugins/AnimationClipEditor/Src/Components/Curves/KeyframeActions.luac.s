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
       21 GETUPVAL                         R18 0
       22 GETTABLEKS                       R18 R18 K6 ["traverse"]
       24 MOVE                             R19 R17
       25 GETTABLEKS                       R21 R12 K7 ["Tracks"]
       27 GETTABLE                         R20 R21 R16
       28 NEWCLOSURE                       R21 P0
       29 CAPTURE                          REF R5
       30 CAPTURE                          REF R6
       31 CAPTURE                          VAL R1
       32 LOADNIL                          R22
       33 LOADNIL                          R23
       34 CALL                             R18 5 0
       35 FORGLOOP                         R13 2 ; [-15]
       37 FORGLOOP                         R7 2 ; [-25]
       39 JUMPIFNOT                        R6 ; [+3]
       40 GETTABLEKS                       R7 R6 K8 ["Value"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R7
       44 CLOSEUPVALS                      R5
       45 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnInterpolationSelected"]
        3 GETTABLEKS                       R2 R0 K1 ["Data"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 DUPTABLE                         R3 K3 [{"Text"}]
        5 LOADK                            R6 K4 ["ContextMenu"]
        6 LOADK                            R7 K5 ["InterpolationMode"]
        7 NAMECALL                         R4 R2 K6 ["getText"]
        9 CALL                             R4 3 1
       10 SETTABLEKS                       R4 R3 K2 ["Text"]
       12 LOADK                            R6 K5 ["InterpolationMode"]
       13 NAMECALL                         R4 R0 K7 ["getSharedPropertyValue"]
       15 CALL                             R4 2 1
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K8 ["KEY_INTERPOLATION_MODE_ORDER"]
       21 LOADNIL                          R7
       22 LOADNIL                          R8
       23 FORGPREP                         R6
       24 DUPTABLE                         R13 K12 [{"Text", "Data", "Checked", "OnItemClicked"}]
       25 GETTABLEKS                       R14 R10 K13 ["Name"]
       27 SETTABLEKS                       R14 R13 K2 ["Text"]
       29 SETTABLEKS                       R10 R13 K9 ["Data"]
       31 GETTABLEKS                       R15 R10 K14 ["Value"]
       33 JUMPIFEQ                         R4 R15 ; [+2]
       35 LOADB                            R14 0 +1
       36 LOADB                            R14 1
       37 SETTABLEKS                       R14 R13 K10 ["Checked"]
       39 SETTABLEKS                       R5 R13 K11 ["OnItemClicked"]
       41 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       43 MOVE                             R12 R3
       44 GETIMPORT                        R11 K17 [table.insert]
       46 CALL                             R11 2 0
       47 FORGLOOP                         R6 2 ; [-24]
       49 RETURN                           R3 1

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
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["PluginActions"]
        8 NEWTABLE                         R4 0 5
       10 LOADK                            R7 K3 ["DeleteSelected"]
       11 NAMECALL                         R5 R3 K4 ["get"]
       13 CALL                             R5 2 1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K5 ["MENU_SEPARATOR"]
       17 LOADK                            R9 K6 ["CutSelected"]
       18 NAMECALL                         R7 R3 K4 ["get"]
       20 CALL                             R7 2 1
       21 LOADK                            R10 K7 ["CopySelected"]
       22 NAMECALL                         R8 R3 K4 ["get"]
       24 CALL                             R8 2 1
       25 LOADK                            R11 K8 ["PasteKeyframes"]
       26 NAMECALL                         R9 R3 K4 ["get"]
       28 CALL                             R9 2 -1
       29 SETLIST                          R4 R5 -1 [1]
       31 JUMPIFNOT                        R2 ; [+78]
       32 GETUPVAL                         R5 1
       33 MOVE                             R6 R2
       34 CALL                             R5 1 1
       35 JUMPIF                           R5 ; [+74]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K5 ["MENU_SEPARATOR"]
       39 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       41 MOVE                             R6 R4
       42 GETIMPORT                        R5 K11 [table.insert]
       44 CALL                             R5 2 0
       45 MOVE                             R6 R4
       46 LOADK                            R9 K12 ["ResetSelected"]
       47 NAMECALL                         R7 R3 K4 ["get"]
       49 CALL                             R7 2 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R5 K11 [table.insert]
       53 CALL                             R5 -1 0
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K5 ["MENU_SEPARATOR"]
       57 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       59 MOVE                             R6 R4
       60 GETIMPORT                        R5 K11 [table.insert]
       62 CALL                             R5 2 0
       63 MOVE                             R6 R4
       64 LOADK                            R9 K13 ["ChangeDuration"]
       65 NAMECALL                         R7 R3 K4 ["get"]
       67 CALL                             R7 2 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R5 K11 [table.insert]
       71 CALL                             R5 -1 0
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K5 ["MENU_SEPARATOR"]
       75 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       77 MOVE                             R6 R4
       78 GETIMPORT                        R5 K11 [table.insert]
       80 CALL                             R5 2 0
       81 MOVE                             R6 R4
       82 NAMECALL                         R7 R0 K14 ["makeInterpolationModeMenu"]
       84 CALL                             R7 1 -1
       85 FASTCALL                         TABLE_INSERT ; [+2]
       86 GETIMPORT                        R5 K11 [table.insert]
       88 CALL                             R5 -1 0
       89 MOVE                             R6 R4
       90 LOADK                            R9 K15 ["ClearBothTangents"]
       91 NAMECALL                         R7 R3 K4 ["get"]
       93 CALL                             R7 2 -1
       94 FASTCALL                         TABLE_INSERT ; [+2]
       95 GETIMPORT                        R5 K11 [table.insert]
       97 CALL                             R5 -1 0
       98 NAMECALL                         R5 R0 K16 ["multipleSelected"]
      100 CALL                             R5 1 1
      101 JUMPIFNOT                        R5 ; [+8]
      102 MOVE                             R6 R4
      103 NAMECALL                         R7 R0 K17 ["makeGenerateCurveMenu"]
      105 CALL                             R7 1 -1
      106 FASTCALL                         TABLE_INSERT ; [+2]
      107 GETIMPORT                        R5 K11 [table.insert]
      109 CALL                             R5 -1 0
      110 GETUPVAL                         R7 0
      111 GETTABLEKS                       R7 R7 K5 ["MENU_SEPARATOR"]
      113 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      115 MOVE                             R6 R4
      116 GETIMPORT                        R5 K11 [table.insert]
      118 CALL                             R5 2 0
      119 MOVE                             R6 R4
      120 LOADK                            R9 K18 ["AddEvent"]
      121 NAMECALL                         R7 R3 K4 ["get"]
      123 CALL                             R7 2 -1
      124 FASTCALL                         TABLE_INSERT ; [+2]
      125 GETIMPORT                        R5 K11 [table.insert]
      127 CALL                             R5 -1 0
      128 RETURN                           R4 1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Tracks"]
        5 GETTABLEKS                       R2 R0 K2 ["Playhead"]
        7 GETTABLEKS                       R3 R0 K3 ["SelectedTracks"]
        9 JUMPIFNOT                        R3 ; [+60]
       10 GETTABLEKS                       R4 R0 K4 ["AddWaypoint"]
       12 CALL                             R4 0 0
       13 GETIMPORT                        R4 K6 [pairs]
       15 GETTABLEKS                       R5 R0 K7 ["AnimationData"]
       17 GETTABLEKS                       R5 R5 K8 ["Instances"]
       19 CALL                             R4 1 3
       20 FORGPREP_NEXT                    R4
       21 GETIMPORT                        R9 K6 [pairs]
       23 MOVE                             R10 R3
       24 CALL                             R9 1 3
       25 FORGPREP_NEXT                    R9
       26 GETUPVAL                         R14 1
       27 GETTABLEKS                       R14 R14 K9 ["getTrack"]
       29 GETTABLEKS                       R15 R0 K7 ["AnimationData"]
       31 MOVE                             R16 R7
       32 MOVE                             R17 R13
       33 CALL                             R14 3 1
       34 JUMPIFNOT                        R14 ; [+3]
       35 GETTABLEKS                       R15 R14 K10 ["Type"]
       37 JUMPIF                           R15 ; [+6]
       38 GETUPVAL                         R15 2
       39 GETTABLEKS                       R15 R15 K11 ["getComponentTypeFromPath"]
       41 MOVE                             R16 R13
       42 MOVE                             R17 R1
       43 CALL                             R15 2 1
       44 JUMPIFNOT                        R14 ; [+6]
       45 GETUPVAL                         R16 2
       46 GETTABLEKS                       R16 R16 K12 ["getRotationType"]
       48 MOVE                             R17 R14
       49 CALL                             R16 1 1
       50 JUMPIF                           R16 ; [+2]
       51 GETTABLEKS                       R16 R0 K13 ["DefaultRotationType"]
       53 GETUPVAL                         R17 2
       54 GETTABLEKS                       R17 R17 K14 ["traverseComponents"]
       56 MOVE                             R18 R15
       57 NEWCLOSURE                       R19 P0
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R13
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R16
       63 CAPTURE                          VAL R2
       64 MOVE                             R20 R16
       65 CALL                             R17 3 0
       66 FORGLOOP                         R9 2 ; [-41]
       68 FORGLOOP                         R4 2 ; [-48]
       70 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CopySelectedKeyframes"]
        5 CALL                             R1 0 0
        6 GETTABLEKS                       R1 R0 K2 ["AddWaypoint"]
        8 CALL                             R1 0 0
        9 GETTABLEKS                       R1 R0 K3 ["DeleteSelectedKeyframes"]
       11 GETTABLEKS                       R2 R0 K4 ["Analytics"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["TogglePlay"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["AddWaypoint"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["ResetSelectedKeyframes"]
       11 CALL                             R0 0 -1
       12 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Undo"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Signals"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnEditEvents"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Tick"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginActions"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K2 ["Connections"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K3 ["Actions"]
       12 LOADK                            R6 K4 ["AddKeyframeAtScrubber"]
       13 NAMECALL                         R4 R1 K5 ["get"]
       15 CALL                             R4 2 1
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 NAMECALL                         R2 R0 K6 ["addAction"]
       23 CALL                             R2 3 0
       24 LOADK                            R6 K7 ["PasteKeyframes"]
       25 NAMECALL                         R4 R1 K5 ["get"]
       27 CALL                             R4 2 1
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R2 R0 K6 ["addAction"]
       32 CALL                             R2 3 0
       33 LOADK                            R6 K8 ["CutSelected"]
       34 NAMECALL                         R4 R1 K5 ["get"]
       36 CALL                             R4 2 1
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          VAL R0
       39 NAMECALL                         R2 R0 K6 ["addAction"]
       41 CALL                             R2 3 0
       42 LOADK                            R6 K9 ["ToggleTool"]
       43 NAMECALL                         R4 R1 K5 ["get"]
       45 CALL                             R4 2 1
       46 NEWCLOSURE                       R5 P3
       47 CAPTURE                          VAL R0
       48 NAMECALL                         R2 R0 K6 ["addAction"]
       50 CALL                             R2 3 0
       51 NEWCLOSURE                       R2 P4
       52 CAPTURE                          VAL R0
       53 NEWCLOSURE                       R3 P5
       54 CAPTURE                          VAL R0
       55 NEWCLOSURE                       R4 P6
       56 CAPTURE                          VAL R0
       57 NEWCLOSURE                       R5 P7
       58 CAPTURE                          VAL R0
       59 LOADK                            R10 K10 ["AddEvent"]
       60 NAMECALL                         R8 R1 K5 ["get"]
       62 CALL                             R8 2 1
       63 NEWCLOSURE                       R9 P8
       64 CAPTURE                          VAL R0
       65 NAMECALL                         R6 R0 K6 ["addAction"]
       67 CALL                             R6 3 0
       68 LOADK                            R10 K11 ["CopySelected"]
       69 NAMECALL                         R8 R1 K5 ["get"]
       71 CALL                             R8 2 1
       72 GETTABLEKS                       R9 R0 K0 ["props"]
       74 GETTABLEKS                       R9 R9 K12 ["CopySelectedKeyframes"]
       76 NAMECALL                         R6 R0 K6 ["addAction"]
       78 CALL                             R6 3 0
       79 LOADK                            R10 K13 ["DeleteSelected"]
       80 NAMECALL                         R8 R1 K5 ["get"]
       82 CALL                             R8 2 1
       83 MOVE                             R9 R3
       84 NAMECALL                         R6 R0 K6 ["addAction"]
       86 CALL                             R6 3 0
       87 LOADK                            R10 K14 ["ResetSelected"]
       88 NAMECALL                         R8 R1 K5 ["get"]
       90 CALL                             R8 2 1
       91 MOVE                             R9 R4
       92 NAMECALL                         R6 R0 K6 ["addAction"]
       94 CALL                             R6 3 0
       95 LOADK                            R10 K15 ["SelectAll"]
       96 NAMECALL                         R8 R1 K5 ["get"]
       98 CALL                             R8 2 1
       99 GETTABLEKS                       R9 R0 K0 ["props"]
      101 GETTABLEKS                       R9 R9 K16 ["SelectAllKeyframes"]
      103 NAMECALL                         R6 R0 K6 ["addAction"]
      105 CALL                             R6 3 0
      106 LOADK                            R10 K17 ["DeselectAll"]
      107 NAMECALL                         R8 R1 K5 ["get"]
      109 CALL                             R8 2 1
      110 GETTABLEKS                       R9 R0 K0 ["props"]
      112 GETTABLEKS                       R9 R9 K18 ["DeselectAllKeyframes"]
      114 NAMECALL                         R6 R0 K6 ["addAction"]
      116 CALL                             R6 3 0
      117 LOADK                            R10 K19 ["ChangeDuration"]
      118 NAMECALL                         R8 R1 K5 ["get"]
      120 CALL                             R8 2 1
      121 GETTABLEKS                       R9 R0 K0 ["props"]
      123 GETTABLEKS                       R9 R9 K20 ["OnChangeDuration"]
      125 NAMECALL                         R6 R0 K6 ["addAction"]
      127 CALL                             R6 3 0
      128 LOADK                            R10 K21 ["Undo"]
      129 NAMECALL                         R8 R1 K5 ["get"]
      131 CALL                             R8 2 1
      132 MOVE                             R9 R5
      133 NAMECALL                         R6 R0 K6 ["addAction"]
      135 CALL                             R6 3 0
      136 LOADK                            R10 K22 ["Redo"]
      137 NAMECALL                         R8 R1 K5 ["get"]
      139 CALL                             R8 2 1
      140 GETTABLEKS                       R9 R0 K0 ["props"]
      142 GETTABLEKS                       R9 R9 K22 ["Redo"]
      144 NAMECALL                         R6 R0 K6 ["addAction"]
      146 CALL                             R6 3 0
      147 LOADK                            R10 K23 ["TogglePlay"]
      148 NAMECALL                         R8 R1 K5 ["get"]
      150 CALL                             R8 2 1
      151 MOVE                             R9 R2
      152 NAMECALL                         R6 R0 K6 ["addAction"]
      154 CALL                             R6 3 0
      155 LOADK                            R10 K24 ["ToggleBoneVis"]
      156 NAMECALL                         R8 R1 K5 ["get"]
      158 CALL                             R8 2 1
      159 GETTABLEKS                       R9 R0 K0 ["props"]
      161 GETTABLEKS                       R9 R9 K25 ["ToggleBoneVisibility"]
      163 NAMECALL                         R6 R0 K6 ["addAction"]
      165 CALL                             R6 3 0
      166 LOADK                            R10 K26 ["ToggleGridVis"]
      167 NAMECALL                         R8 R1 K5 ["get"]
      169 CALL                             R8 2 1
      170 GETTABLEKS                       R9 R0 K0 ["props"]
      172 GETTABLEKS                       R9 R9 K27 ["ToggleGridVisibility"]
      174 NAMECALL                         R6 R0 K6 ["addAction"]
      176 CALL                             R6 3 0
      177 LOADK                            R10 K28 ["ClearBothTangents"]
      178 NAMECALL                         R8 R1 K5 ["get"]
      180 CALL                             R8 2 1
      181 GETTABLEKS                       R9 R0 K0 ["props"]
      183 GETTABLEKS                       R9 R9 K29 ["OnClearTangentsSelected"]
      185 NAMECALL                         R6 R0 K6 ["addAction"]
      187 CALL                             R6 3 0
      188 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ShowMenu"]
        4 GETTABLEKS                       R3 R1 K2 ["Clipboard"]
        6 GETTABLEKS                       R4 R1 K3 ["ClipboardType"]
        8 GETTABLEKS                       R5 R1 K4 ["SelectedKeyframes"]
       10 GETTABLEKS                       R6 R1 K5 ["MultipleSelected"]
       12 GETTABLEKS                       R7 R1 K6 ["Tool"]
       14 GETTABLEKS                       R8 R0 K7 ["Actions"]
       16 GETTABLEKS                       R9 R0 K0 ["props"]
       18 GETTABLEKS                       R9 R9 K8 ["PluginActions"]
       20 GETUPVAL                         R10 0
       21 MOVE                             R11 R9
       22 CALL                             R10 1 1
       23 JUMPIF                           R10 ; [+158]
       24 JUMPIFEQKNIL                     R8 ; [+157]
       26 GETIMPORT                        R10 K10 [ipairs]
       28 MOVE                             R11 R8
       29 CALL                             R10 1 3
       30 FORGPREP_INEXT                   R10
       31 LOADB                            R15 0
       32 SETTABLEKS                       R15 R14 K11 ["Enabled"]
       34 FORGLOOP                         R10 2 [inext] ; [-4]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K12 ["CLIPBOARD_TYPE"]
       39 GETTABLEKS                       R10 R10 K13 ["Channels"]
       41 JUMPIFNOT                        R3 ; [+13]
       42 GETUPVAL                         R11 0
       43 MOVE                             R12 R3
       44 CALL                             R11 1 1
       45 JUMPIF                           R11 ; [+9]
       46 JUMPIFNOTEQ                      R4 R10 ; [+8]
       48 LOADK                            R13 K14 ["PasteKeyframes"]
       49 NAMECALL                         R11 R9 K15 ["get"]
       51 CALL                             R11 2 1
       52 LOADB                            R12 1
       53 SETTABLEKS                       R12 R11 K11 ["Enabled"]
       55 JUMPIFNOT                        R5 ; [+40]
       56 GETUPVAL                         R11 0
       57 MOVE                             R12 R5
       58 CALL                             R11 1 1
       59 JUMPIF                           R11 ; [+36]
       60 LOADK                            R13 K16 ["DeselectAll"]
       61 NAMECALL                         R11 R9 K15 ["get"]
       63 CALL                             R11 2 1
       64 LOADB                            R12 1
       65 SETTABLEKS                       R12 R11 K11 ["Enabled"]
       67 LOADK                            R13 K17 ["CutSelected"]
       68 NAMECALL                         R11 R9 K15 ["get"]
       70 CALL                             R11 2 1
       71 LOADB                            R12 1
       72 SETTABLEKS                       R12 R11 K11 ["Enabled"]
       74 LOADK                            R13 K18 ["CopySelected"]
       75 NAMECALL                         R11 R9 K15 ["get"]
       77 CALL                             R11 2 1
       78 LOADB                            R12 1
       79 SETTABLEKS                       R12 R11 K11 ["Enabled"]
       81 LOADK                            R13 K19 ["ResetSelected"]
       82 NAMECALL                         R11 R9 K15 ["get"]
       84 CALL                             R11 2 1
       85 LOADB                            R12 1
       86 SETTABLEKS                       R12 R11 K11 ["Enabled"]
       88 LOADK                            R13 K20 ["DeleteSelected"]
       89 NAMECALL                         R11 R9 K15 ["get"]
       91 CALL                             R11 2 1
       92 LOADB                            R12 1
       93 SETTABLEKS                       R12 R11 K11 ["Enabled"]
       95 JUMP                             ; [+7]
       96 LOADK                            R13 K21 ["SelectAll"]
       97 NAMECALL                         R11 R9 K15 ["get"]
       99 CALL                             R11 2 1
      100 LOADB                            R12 1
      101 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      103 LOADK                            R13 K22 ["AddKeyframeAtScrubber"]
      104 NAMECALL                         R11 R9 K15 ["get"]
      106 CALL                             R11 2 1
      107 LOADB                            R12 1
      108 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      110 JUMPIFNOT                        R6 ; [+7]
      111 LOADK                            R13 K23 ["ChangeDuration"]
      112 NAMECALL                         R11 R9 K15 ["get"]
      114 CALL                             R11 2 1
      115 LOADB                            R12 1
      116 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      118 LOADK                            R13 K24 ["ClearBothTangents"]
      119 NAMECALL                         R11 R9 K15 ["get"]
      121 CALL                             R11 2 1
      122 LOADB                            R12 1
      123 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      125 GETIMPORT                        R11 K28 [Enum.RibbonTool.Rotate]
      127 JUMPIFEQ                         R7 R11 ; [+5]
      129 GETIMPORT                        R11 K30 [Enum.RibbonTool.Move]
      131 JUMPIFNOTEQ                      R7 R11 ; [+8]
      133 LOADK                            R13 K31 ["ToggleTool"]
      134 NAMECALL                         R11 R9 K15 ["get"]
      136 CALL                             R11 2 1
      137 LOADB                            R12 1
      138 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      140 LOADK                            R13 K32 ["Undo"]
      141 NAMECALL                         R11 R9 K15 ["get"]
      143 CALL                             R11 2 1
      144 LOADB                            R12 1
      145 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      147 LOADK                            R13 K33 ["Redo"]
      148 NAMECALL                         R11 R9 K15 ["get"]
      150 CALL                             R11 2 1
      151 LOADB                            R12 1
      152 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      154 LOADK                            R13 K34 ["TogglePlay"]
      155 NAMECALL                         R11 R9 K15 ["get"]
      157 CALL                             R11 2 1
      158 LOADB                            R12 1
      159 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      161 LOADK                            R13 K35 ["AddEvent"]
      162 NAMECALL                         R11 R9 K15 ["get"]
      164 CALL                             R11 2 1
      165 LOADB                            R12 1
      166 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      168 LOADK                            R13 K36 ["ToggleBoneVis"]
      169 NAMECALL                         R11 R9 K15 ["get"]
      171 CALL                             R11 2 1
      172 LOADB                            R12 1
      173 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      175 LOADK                            R13 K37 ["ToggleGridVis"]
      176 NAMECALL                         R11 R9 K15 ["get"]
      178 CALL                             R11 2 1
      179 LOADB                            R12 1
      180 SETTABLEKS                       R12 R11 K11 ["Enabled"]
      182 JUMPIFNOT                        R2 ; [+16]
      183 GETUPVAL                         R10 2
      184 GETTABLEKS                       R10 R10 K38 ["createElement"]
      186 GETUPVAL                         R11 3
      187 DUPTABLE                         R12 K40 [{"Actions", "OnMenuOpened"}]
      188 NAMECALL                         R13 R0 K41 ["makeMenuActions"]
      190 CALL                             R13 1 1
      191 SETTABLEKS                       R13 R12 K7 ["Actions"]
      193 GETTABLEKS                       R13 R1 K39 ["OnMenuOpened"]
      195 SETTABLEKS                       R13 R12 K39 ["OnMenuOpened"]
      197 CALL                             R10 2 1
      198 JUMPIF                           R10 ; [+1]
      199 LOADNIL                          R10
      200 RETURN                           R10 1

PROTO_22:
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

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["Status"]
        2 DUPTABLE                         R2 K11 [{"AnimationData", "Clipboard", "ClipboardType", "DefaultRotationType", "Playhead", "SelectedKeyframes", "SelectedTracks", "Tick", "Tool", "Tracks"}]
        3 GETTABLEKS                       R3 R0 K1 ["AnimationData"]
        5 SETTABLEKS                       R3 R2 K1 ["AnimationData"]
        7 GETTABLEKS                       R3 R1 K2 ["Clipboard"]
        9 SETTABLEKS                       R3 R2 K2 ["Clipboard"]
       11 GETTABLEKS                       R3 R1 K3 ["ClipboardType"]
       13 SETTABLEKS                       R3 R2 K3 ["ClipboardType"]
       15 GETTABLEKS                       R3 R1 K4 ["DefaultRotationType"]
       17 SETTABLEKS                       R3 R2 K4 ["DefaultRotationType"]
       19 GETTABLEKS                       R3 R1 K5 ["Playhead"]
       21 SETTABLEKS                       R3 R2 K5 ["Playhead"]
       23 GETTABLEKS                       R3 R1 K6 ["SelectedKeyframes"]
       25 SETTABLEKS                       R3 R2 K6 ["SelectedKeyframes"]
       27 GETTABLEKS                       R3 R1 K7 ["SelectedTracks"]
       29 SETTABLEKS                       R3 R2 K7 ["SelectedTracks"]
       31 GETTABLEKS                       R3 R1 K12 ["RightClickContextInfo"]
       33 GETTABLEKS                       R3 R3 K8 ["Tick"]
       35 SETTABLEKS                       R3 R2 K8 ["Tick"]
       37 GETTABLEKS                       R3 R1 K9 ["Tool"]
       39 SETTABLEKS                       R3 R2 K9 ["Tool"]
       41 GETTABLEKS                       R3 R1 K10 ["Tracks"]
       43 SETTABLEKS                       R3 R2 K10 ["Tracks"]
       45 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

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
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 NEWTABLE                         R2 0 0
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_39:
        0 DUPTABLE                         R1 K15 [{"AddWaypoint", "CopySelectedKeyframes", "DeleteSelectedKeyframes", "DeselectAllKeyframes", "OnEditEvents", "PasteKeyframes", "Redo", "ResetSelectedKeyframes", "SelectAllKeyframes", "SetTool", "SplitTrack", "ToggleBoneVisibility", "ToggleGridVisibility", "TogglePlay", "Undo"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["AddWaypoint"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 SETTABLEKS                       R2 R1 K1 ["CopySelectedKeyframes"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R2 R1 K2 ["DeleteSelectedKeyframes"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 SETTABLEKS                       R2 R1 K3 ["DeselectAllKeyframes"]
       24 NEWCLOSURE                       R2 P4
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 SETTABLEKS                       R2 R1 K4 ["OnEditEvents"]
       30 NEWCLOSURE                       R2 P5
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          UPVAL U2
       34 SETTABLEKS                       R2 R1 K5 ["PasteKeyframes"]
       36 NEWCLOSURE                       R2 P6
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U9
       39 SETTABLEKS                       R2 R1 K6 ["Redo"]
       41 NEWCLOSURE                       R2 P7
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U10
       44 CAPTURE                          UPVAL U2
       45 SETTABLEKS                       R2 R1 K7 ["ResetSelectedKeyframes"]
       47 NEWCLOSURE                       R2 P8
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          UPVAL U5
       51 SETTABLEKS                       R2 R1 K8 ["SelectAllKeyframes"]
       53 NEWCLOSURE                       R2 P9
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U12
       56 SETTABLEKS                       R2 R1 K9 ["SetTool"]
       58 NEWCLOSURE                       R2 P10
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U13
       61 CAPTURE                          UPVAL U2
       62 SETTABLEKS                       R2 R1 K10 ["SplitTrack"]
       64 NEWCLOSURE                       R2 P11
       65 CAPTURE                          VAL R0
       66 CAPTURE                          UPVAL U14
       67 SETTABLEKS                       R2 R1 K11 ["ToggleBoneVisibility"]
       69 NEWCLOSURE                       R2 P12
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U15
       72 SETTABLEKS                       R2 R1 K12 ["ToggleGridVisibility"]
       74 NEWCLOSURE                       R2 P13
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U16
       77 SETTABLEKS                       R2 R1 K13 ["TogglePlay"]
       79 NEWCLOSURE                       R2 P14
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U17
       82 SETTABLEKS                       R2 R1 K14 ["Undo"]
       84 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Roact"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Context"]
       45 GETTABLEKS                       R8 R8 K15 ["Signals"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R0 K13 ["Src"]
       50 GETTABLEKS                       R8 R8 K16 ["Actions"]
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R8 K17 ["SetEventEditingTick"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R8 K18 ["SetSelectedEvents"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K5 [require]
       64 GETTABLEKS                       R12 R8 K19 ["SetSelectedKeyframes"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R8 K20 ["SetShowEvents"]
       71 CALL                             R12 1 1
       72 GETIMPORT                        R13 K5 [require]
       74 GETTABLEKS                       R14 R8 K21 ["SetTool"]
       76 CALL                             R13 1 1
       77 GETTABLEKS                       R14 R0 K13 ["Src"]
       79 GETTABLEKS                       R14 R14 K22 ["Components"]
       81 GETIMPORT                        R15 K5 [require]
       83 GETTABLEKS                       R16 R14 K23 ["ContextMenu"]
       85 CALL                             R15 1 1
       86 GETTABLEKS                       R16 R0 K13 ["Src"]
       88 GETTABLEKS                       R16 R16 K24 ["Thunks"]
       90 GETIMPORT                        R17 K5 [require]
       92 GETTABLEKS                       R18 R16 K25 ["History"]
       94 GETTABLEKS                       R18 R18 K26 ["AddWaypoint"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K5 [require]
       99 GETTABLEKS                       R19 R16 K27 ["Selection"]
      101 GETTABLEKS                       R19 R19 K28 ["CopySelectedKeyframes"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K5 [require]
      106 GETTABLEKS                       R20 R16 K27 ["Selection"]
      108 GETTABLEKS                       R20 R20 K29 ["DeleteSelectedKeyframes"]
      110 CALL                             R19 1 1
      111 GETIMPORT                        R20 K5 [require]
      113 GETTABLEKS                       R21 R16 K30 ["PasteKeyframes"]
      115 CALL                             R20 1 1
      116 GETIMPORT                        R21 K5 [require]
      118 GETTABLEKS                       R22 R16 K25 ["History"]
      120 GETTABLEKS                       R22 R22 K31 ["Redo"]
      122 CALL                             R21 1 1
      123 GETIMPORT                        R22 K5 [require]
      125 GETTABLEKS                       R23 R16 K27 ["Selection"]
      127 GETTABLEKS                       R23 R23 K32 ["ResetSelectedKeyframes"]
      129 CALL                             R22 1 1
      130 GETIMPORT                        R23 K5 [require]
      132 GETTABLEKS                       R24 R16 K27 ["Selection"]
      134 GETTABLEKS                       R24 R24 K33 ["SelectAllKeyframes"]
      136 CALL                             R23 1 1
      137 GETIMPORT                        R24 K5 [require]
      139 GETTABLEKS                       R25 R8 K34 ["SetRightClickContextInfo"]
      141 CALL                             R24 1 1
      142 GETIMPORT                        R25 K5 [require]
      144 GETTABLEKS                       R26 R16 K35 ["SplitTrack"]
      146 CALL                             R25 1 1
      147 GETIMPORT                        R26 K5 [require]
      149 GETTABLEKS                       R27 R16 K36 ["ToggleBoneVisibility"]
      151 CALL                             R26 1 1
      152 GETIMPORT                        R27 K5 [require]
      154 GETTABLEKS                       R28 R16 K37 ["ToggleGridVisibility"]
      156 CALL                             R27 1 1
      157 GETIMPORT                        R28 K5 [require]
      159 GETTABLEKS                       R29 R16 K38 ["Playback"]
      161 GETTABLEKS                       R29 R29 K39 ["TogglePlay"]
      163 CALL                             R28 1 1
      164 GETIMPORT                        R29 K5 [require]
      166 GETTABLEKS                       R30 R16 K25 ["History"]
      168 GETTABLEKS                       R30 R30 K40 ["Undo"]
      170 CALL                             R29 1 1
      171 GETTABLEKS                       R30 R0 K13 ["Src"]
      173 GETTABLEKS                       R30 R30 K41 ["Util"]
      175 GETIMPORT                        R31 K5 [require]
      177 GETTABLEKS                       R32 R30 K42 ["AnimationData"]
      179 CALL                             R31 1 1
      180 GETIMPORT                        R32 K5 [require]
      182 GETTABLEKS                       R33 R30 K43 ["Constants"]
      184 CALL                             R32 1 1
      185 GETIMPORT                        R33 K5 [require]
      187 GETTABLEKS                       R34 R30 K44 ["isEmpty"]
      189 CALL                             R33 1 1
      190 GETIMPORT                        R34 K5 [require]
      192 GETTABLEKS                       R35 R30 K45 ["SelectionUtils"]
      194 CALL                             R34 1 1
      195 GETIMPORT                        R35 K5 [require]
      197 GETTABLEKS                       R36 R30 K46 ["TrackUtils"]
      199 CALL                             R35 1 1
      200 GETTABLEKS                       R36 R3 K47 ["PureComponent"]
      202 LOADK                            R38 K48 ["KeyframeActions"]
      203 NAMECALL                         R36 R36 K49 ["extend"]
      205 CALL                             R36 2 1
      206 DUPCLOSURE                       R37 K50 [PROTO_1]
      207 CAPTURE                          VAL R34
      208 SETTABLEKS                       R37 R36 K51 ["getSharedPropertyValue"]
      210 DUPCLOSURE                       R37 K52 [PROTO_3]
      211 CAPTURE                          VAL R32
      212 SETTABLEKS                       R37 R36 K53 ["makeInterpolationModeMenu"]
      214 DUPCLOSURE                       R37 K54 [PROTO_6]
      215 SETTABLEKS                       R37 R36 K55 ["makeGenerateCurveMenu"]
      217 DUPCLOSURE                       R37 K56 [PROTO_7]
      218 CAPTURE                          VAL R31
      219 SETTABLEKS                       R37 R36 K57 ["multipleSelected"]
      221 DUPCLOSURE                       R37 K58 [PROTO_8]
      222 CAPTURE                          VAL R32
      223 CAPTURE                          VAL R33
      224 SETTABLEKS                       R37 R36 K59 ["makeMenuActions"]
      226 DUPCLOSURE                       R37 K60 [PROTO_9]
      227 SETTABLEKS                       R37 R36 K61 ["addAction"]
      229 DUPCLOSURE                       R37 K62 [PROTO_20]
      230 CAPTURE                          VAL R31
      231 CAPTURE                          VAL R35
      232 CAPTURE                          VAL R1
      233 SETTABLEKS                       R37 R36 K63 ["didMount"]
      235 DUPCLOSURE                       R37 K64 [PROTO_21]
      236 CAPTURE                          VAL R33
      237 CAPTURE                          VAL R32
      238 CAPTURE                          VAL R3
      239 CAPTURE                          VAL R15
      240 SETTABLEKS                       R37 R36 K65 ["render"]
      242 DUPCLOSURE                       R37 K66 [PROTO_22]
      243 SETTABLEKS                       R37 R36 K67 ["willUnmount"]
      245 MOVE                             R37 R6
      246 DUPTABLE                         R38 K71 [{"Analytics", "Localization", "PluginActions", "Signals"}]
      247 GETTABLEKS                       R39 R5 K68 ["Analytics"]
      249 SETTABLEKS                       R39 R38 K68 ["Analytics"]
      251 GETTABLEKS                       R39 R5 K69 ["Localization"]
      253 SETTABLEKS                       R39 R38 K69 ["Localization"]
      255 GETTABLEKS                       R39 R5 K70 ["PluginActions"]
      257 SETTABLEKS                       R39 R38 K70 ["PluginActions"]
      259 SETTABLEKS                       R7 R38 K15 ["Signals"]
      261 CALL                             R37 1 1
      262 MOVE                             R38 R36
      263 CALL                             R37 1 1
      264 MOVE                             R36 R37
      265 DUPCLOSURE                       R37 K72 [PROTO_23]
      266 DUPCLOSURE                       R38 K73 [PROTO_39]
      267 CAPTURE                          VAL R17
      268 CAPTURE                          VAL R18
      269 CAPTURE                          VAL R24
      270 CAPTURE                          VAL R19
      271 CAPTURE                          VAL R11
      272 CAPTURE                          VAL R10
      273 CAPTURE                          VAL R12
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R20
      276 CAPTURE                          VAL R21
      277 CAPTURE                          VAL R22
      278 CAPTURE                          VAL R23
      279 CAPTURE                          VAL R13
      280 CAPTURE                          VAL R25
      281 CAPTURE                          VAL R26
      282 CAPTURE                          VAL R27
      283 CAPTURE                          VAL R28
      284 CAPTURE                          VAL R29
      285 GETTABLEKS                       R39 R4 K74 ["connect"]
      287 MOVE                             R40 R37
      288 MOVE                             R41 R38
      289 CALL                             R39 2 1
      290 MOVE                             R40 R36
      291 CALL                             R39 1 -1
      292 RETURN                           R39 -1
