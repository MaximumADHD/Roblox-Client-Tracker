PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Items"]
        5 GETTABLEKS                       R2 R0 K2 ["selection"]
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLE                         R8 R2 R6
       12 JUMPIF                           R8 ; [+2]
       13 LOADB                            R8 0
       14 RETURN                           R8 1
       15 FORGLOOP                         R3 1 ; [-5]
       17 LOADB                            R3 1
       18 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["areAllSelected"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["resetSelected"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 0
       11 NAMECALL                         R0 R0 K2 ["selectAll"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R4 K4 [{"Key", "Position", "Row", "Size"}]
        1 SETTABLEKS                       R1 R4 K0 ["Key"]
        3 SETTABLEKS                       R2 R4 K1 ["Position"]
        5 SETTABLEKS                       R0 R4 K2 ["Row"]
        7 SETTABLEKS                       R3 R4 K3 ["Size"]
        9 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
        3 NAMECALL                         R1 R1 K1 ["isShift"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 1
        9 SETTABLEKS                       R2 R1 K2 ["_shiftDown"]
       11 JUMP                             ; [+11]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
       15 NAMECALL                         R1 R1 K3 ["isControl"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 1
       20 LOADB                            R2 1
       21 SETTABLEKS                       R2 R1 K4 ["_ctrlDown"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K4 ["_ctrlDown"]
       26 JUMPIFNOT                        R1 ; [+15]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K2 ["_shiftDown"]
       30 JUMPIFNOT                        R1 ; [+11]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
       34 NAMECALL                         R1 R1 K5 ["isLetterA"]
       36 CALL                             R1 2 1
       37 JUMPIFNOT                        R1 ; [+4]
       38 GETUPVAL                         R1 1
       39 NAMECALL                         R1 R1 K6 ["selectAll"]
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
        3 NAMECALL                         R1 R1 K1 ["isShift"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K2 ["_shiftDown"]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R3 R0 K0 ["KeyCode"]
       15 NAMECALL                         R1 R1 K3 ["isControl"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 GETUPVAL                         R1 1
       20 LOADB                            R2 0
       21 SETTABLEKS                       R2 R1 K4 ["_ctrlDown"]
       23 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"sortIndex", "sortOrder"}]
        1 LOADN                            R2 4
        2 SETTABLEKS                       R2 R1 K0 ["sortIndex"]
        4 GETIMPORT                        R2 K6 [Enum.SortDirection.Ascending]
        6 SETTABLEKS                       R2 R1 K1 ["sortOrder"]
        8 SETTABLEKS                       R1 R0 K7 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K8 ["areAllSelected"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K9 ["onAllSelectedChecked"]
       18 DUPCLOSURE                       R1 K10 [PROTO_2]
       19 SETTABLEKS                       R1 R0 K11 ["getRowProps"]
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K12 ["_selection"]
       25 LOADB                            R1 0
       26 SETTABLEKS                       R1 R0 K13 ["_ctrlDown"]
       28 LOADB                            R1 0
       29 SETTABLEKS                       R1 R0 K14 ["_shiftDown"]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K15 ["_anchor"]
       34 LOADNIL                          R1
       35 SETTABLEKS                       R1 R0 K16 ["_focus"]
       37 NEWCLOSURE                       R1 P3
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K17 ["onKeyPressed"]
       42 NEWCLOSURE                       R1 P4
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K18 ["onKeyReleased"]
       47 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Items"]
        4 GETTABLEKS                       R3 R1 K2 ["selection"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R3
        8 CALL                             R4 1 1
        9 MOVE                             R5 R2
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 LOADB                            R10 1
       14 SETTABLE                         R10 R4 R8
       15 FORGLOOP                         R5 2 ; [-3]
       17 GETTABLEKS                       R5 R1 K3 ["setSelection"]
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R0 K4 ["_focus"]
       24 LOADNIL                          R5
       25 SETTABLEKS                       R5 R0 K5 ["_anchor"]
       27 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["setSelection"]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R2 1 0
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R0 K2 ["_anchor"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R0 K3 ["_focus"]
       13 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R6 R5 K1 ["selection"]
        4 GETUPVAL                         R7 0
        5 MOVE                             R8 R6
        6 CALL                             R7 1 1
        7 GETTABLEKS                       R8 R0 K2 ["_anchor"]
        9 JUMPIF                           R8 ; [+10]
       10 SETTABLEKS                       R3 R0 K2 ["_anchor"]
       12 GETTABLEKS                       R8 R5 K3 ["setSelection"]
       14 NEWTABLE                         R9 1 0
       16 LOADB                            R10 1
       17 SETTABLE                         R10 R9 R2
       18 CALL                             R8 1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R8 R0 K4 ["_focus"]
       22 JUMPIFNOT                        R8 ; [+21]
       23 GETTABLEKS                       R9 R0 K2 ["_anchor"]
       25 GETTABLEKS                       R10 R0 K4 ["_focus"]
       27 JUMPIFNOTLT                      R9 R10 ; [+3]
       29 LOADN                            R8 1
       30 JUMP                             ; [+1]
       31 LOADN                            R8 255
       32 GETTABLEKS                       R11 R0 K2 ["_anchor"]
       34 GETTABLEKS                       R9 R0 K4 ["_focus"]
       36 MOVE                             R10 R8
       37 FORNPREP                         R9
       38 GETTABLE                         R12 R4 R11
       39 GETTABLEKS                       R12 R12 K5 ["id"]
       41 LOADNIL                          R13
       42 SETTABLE                         R13 R7 R12
       43 FORNLOOP                         R9
       44 GETTABLEKS                       R9 R0 K2 ["_anchor"]
       46 JUMPIFNOTLT                      R9 R3 ; [+3]
       48 LOADN                            R8 1
       49 JUMP                             ; [+1]
       50 LOADN                            R8 255
       51 GETTABLEKS                       R11 R0 K2 ["_anchor"]
       53 MOVE                             R9 R3
       54 MOVE                             R10 R8
       55 FORNPREP                         R9
       56 GETTABLE                         R12 R4 R11
       57 GETTABLEKS                       R12 R12 K5 ["id"]
       59 LOADB                            R13 1
       60 SETTABLE                         R13 R7 R12
       61 FORNLOOP                         R9
       62 SETTABLEKS                       R3 R0 K4 ["_focus"]
       64 GETTABLEKS                       R9 R5 K3 ["setSelection"]
       66 MOVE                             R10 R7
       67 CALL                             R9 1 0
       68 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R4 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R4 K1 ["selection"]
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R5
        6 CALL                             R6 1 1
        7 GETTABLE                         R7 R5 R2
        8 JUMPIFNOT                        R7 ; [+3]
        9 LOADNIL                          R7
       10 SETTABLE                         R7 R6 R2
       11 JUMP                             ; [+2]
       12 LOADB                            R7 1
       13 SETTABLE                         R7 R6 R2
       14 GETTABLEKS                       R7 R4 K2 ["setSelection"]
       16 MOVE                             R8 R6
       17 CALL                             R7 1 0
       18 SETTABLEKS                       R3 R0 K3 ["_anchor"]
       20 LOADNIL                          R7
       21 SETTABLEKS                       R7 R0 K4 ["_focus"]
       23 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["setPreviewSelection"]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 0
        6 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["Items"]
        5 GETUPVAL                         R5 1
        6 GETTABLE                         R1 R4 R5
        7 GETTABLEKS                       R1 R1 K1 ["oldRefs"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R4
       16 GETIMPORT                        R6 K4 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 1 ; [-8]
       21 GETUPVAL                         R1 2
       22 MOVE                             R3 R0
       23 NAMECALL                         R1 R1 K5 ["Set"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["Plugin"]
        4 GETTABLEKS                       R4 R2 K2 ["Localization"]
        6 GETUPVAL                         R5 0
        7 NAMECALL                         R6 R3 K3 ["get"]
        9 CALL                             R6 1 1
       10 NEWTABLE                         R7 0 4
       12 DUPTABLE                         R8 K7 [{"Id", "Text", "OnItemClicked"}]
       13 LOADK                            R9 K8 ["ShowInExplorer"]
       14 SETTABLEKS                       R9 R8 K4 ["Id"]
       16 LOADK                            R11 K9 ["AnimationList"]
       17 LOADK                            R12 K8 ["ShowInExplorer"]
       18 NAMECALL                         R9 R4 K10 ["getText"]
       20 CALL                             R9 3 1
       21 SETTABLEKS                       R9 R8 K5 ["Text"]
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U1
       27 SETTABLEKS                       R9 R8 K6 ["OnItemClicked"]
       29 DUPTABLE                         R9 K12 [{"ShowSeparator"}]
       30 LOADB                            R10 1
       31 SETTABLEKS                       R10 R9 K11 ["ShowSeparator"]
       33 DUPTABLE                         R10 K7 [{"Id", "Text", "OnItemClicked"}]
       34 LOADK                            R11 K13 ["ResetToAssignedR15Id"]
       35 SETTABLEKS                       R11 R10 K4 ["Id"]
       37 LOADK                            R13 K9 ["AnimationList"]
       38 LOADK                            R14 K13 ["ResetToAssignedR15Id"]
       39 NAMECALL                         R11 R4 K10 ["getText"]
       41 CALL                             R11 3 1
       42 SETTABLEKS                       R11 R10 K5 ["Text"]
       44 DUPCLOSURE                       R11 K14 [PROTO_12]
       45 SETTABLEKS                       R11 R10 K6 ["OnItemClicked"]
       47 DUPTABLE                         R11 K7 [{"Id", "Text", "OnItemClicked"}]
       48 LOADK                            R12 K15 ["OpenInKeyframeSequencer"]
       49 SETTABLEKS                       R12 R11 K4 ["Id"]
       51 LOADK                            R14 K9 ["AnimationList"]
       52 LOADK                            R15 K15 ["OpenInKeyframeSequencer"]
       53 NAMECALL                         R12 R4 K10 ["getText"]
       55 CALL                             R12 3 1
       56 SETTABLEKS                       R12 R11 K5 ["Text"]
       58 DUPCLOSURE                       R12 K16 [PROTO_13]
       59 SETTABLEKS                       R12 R11 K6 ["OnItemClicked"]
       61 SETLIST                          R7 R8 4 [1]
       63 CALL                             R5 2 0
       64 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETTABLEKS                       R3 R2 K0 ["id"]
        4 GETUPVAL                         R5 1
        5 GETTABLE                         R4 R5 R3
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R5 R5 K1 ["_shiftDown"]
        9 JUMPIFNOT                        R5 ; [+9]
       10 GETUPVAL                         R5 2
       11 MOVE                             R7 R4
       12 MOVE                             R8 R3
       13 MOVE                             R9 R1
       14 GETUPVAL                         R10 0
       15 NAMECALL                         R5 R5 K2 ["shiftClick"]
       17 CALL                             R5 5 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R5 2
       20 MOVE                             R7 R4
       21 MOVE                             R8 R3
       22 MOVE                             R9 R1
       23 NAMECALL                         R5 R5 K3 ["click"]
       25 CALL                             R5 4 0
       26 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R5 R2 K0 ["id"]
        5 NAMECALL                         R3 R3 K1 ["rowRightClick"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["sortIndex"]
        4 GETTABLE                         R2 R3 R4
        5 GETTABLEKS                       R2 R2 K1 ["Key"]
        7 GETTABLE                         R4 R0 R2
        8 ORK                              R3 R4 K2 [""]
        9 GETTABLE                         R5 R1 R2
       10 ORK                              R4 R5 K2 [""]
       11 FASTCALL1                        TYPEOF R3 ; [+3]
       12 MOVE                             R6 R3
       13 GETIMPORT                        R5 K4 [typeof]
       15 CALL                             R5 1 1
       16 JUMPIFNOTEQKS                    R5 K5 ["string"] ; [+11]
       18 GETIMPORT                        R5 K7 [string.upper]
       20 MOVE                             R6 R3
       21 CALL                             R5 1 1
       22 MOVE                             R3 R5
       23 GETIMPORT                        R5 K7 [string.upper]
       25 MOVE                             R6 R4
       26 CALL                             R5 1 1
       27 MOVE                             R4 R5
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K8 ["sortOrder"]
       31 GETIMPORT                        R6 K12 [Enum.SortDirection.Ascending]
       33 JUMPIFNOTEQ                      R5 R6 ; [+6]
       35 JUMPIFLT                         R4 R3 ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 RETURN                           R5 1
       40 JUMPIFLT                         R3 R4 ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 RETURN                           R5 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R4 R0 K0 ["id"]
        3 GETUPVAL                         R5 1
        4 JUMPIFNOTEQ                      R4 R5 ; [+3]
        6 LOADNIL                          R3
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R3 R0 K0 ["id"]
       10 NAMECALL                         R1 R1 K1 ["rowClick"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["id"]
        3 NAMECALL                         R1 R1 K1 ["rowRightClick"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"sortIndex", "sortOrder"}]
        2 SETTABLEKS                       R0 R4 K0 ["sortIndex"]
        4 SETTABLEKS                       R1 R4 K1 ["sortOrder"]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["Localization"]
        6 GETTABLEKS                       R4 R2 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R2 K4 ["Items"]
       10 GETTABLEKS                       R6 R2 K5 ["Tags"]
       12 GETTABLEKS                       R7 R2 K6 ["Size"]
       14 GETTABLEKS                       R8 R2 K7 ["selection"]
       16 GETTABLEKS                       R9 R2 K8 ["previewSelection"]
       18 GETTABLEKS                       R10 R2 K9 ["OnResetPlugin"]
       20 GETTABLEKS                       R11 R2 K10 ["LayoutOrder"]
       22 NEWTABLE                         R12 0 0
       24 MOVE                             R13 R5
       25 LOADNIL                          R14
       26 LOADNIL                          R15
       27 FORGPREP                         R13
       28 GETTABLE                         R18 R6 R16
       29 DUPTABLE                         R21 K19 [{"id", "selected", "name", "original", "converted", "previewSelected", "status", "errCode"}]
       30 SETTABLEKS                       R16 R21 K11 ["id"]
       32 GETTABLE                         R23 R8 R16
       33 JUMPIFNOTEQKNIL                  R23 ; [+2]
       35 LOADB                            R22 0 +1
       36 LOADB                            R22 1
       37 SETTABLEKS                       R22 R21 K12 ["selected"]
       39 GETTABLEKS                       R22 R17 K13 ["name"]
       41 SETTABLEKS                       R22 R21 K13 ["name"]
       43 GETTABLEKS                       R22 R18 K11 ["id"]
       45 SETTABLEKS                       R22 R21 K14 ["original"]
       47 GETTABLEKS                       R22 R18 K15 ["converted"]
       49 SETTABLEKS                       R22 R21 K15 ["converted"]
       51 JUMPIFEQ                         R16 R9 ; [+2]
       53 LOADB                            R22 0 +1
       54 LOADB                            R22 1
       55 SETTABLEKS                       R22 R21 K16 ["previewSelected"]
       57 GETTABLEKS                       R22 R17 K17 ["status"]
       59 SETTABLEKS                       R22 R21 K17 ["status"]
       61 GETTABLEKS                       R22 R17 K18 ["errCode"]
       63 SETTABLEKS                       R22 R21 K18 ["errCode"]
       65 FASTCALL2                        TABLE_INSERT R12 R21 ; [+4]
       67 MOVE                             R20 R12
       68 GETIMPORT                        R19 K22 [table.insert]
       70 CALL                             R19 2 0
       71 FORGLOOP                         R13 2 ; [-44]
       73 NEWTABLE                         R13 0 5
       75 DUPTABLE                         R14 K29 [{"Key", "Width", "HeaderCellComponent", "HeaderCellComponentProps", "CellComponent", "CellComponentProps"}]
       76 LOADK                            R15 K12 ["selected"]
       77 SETTABLEKS                       R15 R14 K23 ["Key"]
       79 GETIMPORT                        R15 K32 [UDim.new]
       81 LOADN                            R16 0
       82 GETTABLEKS                       R17 R4 K33 ["SelectedColumnWidth"]
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K24 ["Width"]
       87 GETUPVAL                         R15 0
       88 SETTABLEKS                       R15 R14 K25 ["HeaderCellComponent"]
       90 DUPTABLE                         R15 K36 [{"Checked", "OnClick"}]
       91 NAMECALL                         R16 R0 K37 ["areAllSelected"]
       93 CALL                             R16 1 1
       94 SETTABLEKS                       R16 R15 K34 ["Checked"]
       96 GETTABLEKS                       R16 R0 K38 ["onAllSelectedChecked"]
       98 SETTABLEKS                       R16 R15 K35 ["OnClick"]
      100 SETTABLEKS                       R15 R14 K26 ["HeaderCellComponentProps"]
      102 GETUPVAL                         R15 1
      103 SETTABLEKS                       R15 R14 K27 ["CellComponent"]
      105 DUPTABLE                         R15 K39 [{"OnClick"}]
      106 NEWCLOSURE                       R16 P0
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R16 R15 K35 ["OnClick"]
      112 SETTABLEKS                       R15 R14 K28 ["CellComponentProps"]
      114 DUPTABLE                         R15 K41 [{"Key", "Name", "Width"}]
      115 LOADK                            R16 K13 ["name"]
      116 SETTABLEKS                       R16 R15 K23 ["Key"]
      118 LOADK                            R18 K42 ["AnimationList"]
      119 LOADK                            R19 K43 ["NameColumn"]
      120 NAMECALL                         R16 R3 K44 ["getText"]
      122 CALL                             R16 3 1
      123 SETTABLEKS                       R16 R15 K40 ["Name"]
      125 GETIMPORT                        R16 K32 [UDim.new]
      127 LOADN                            R17 1
      128 GETTABLEKS                       R22 R4 K33 ["SelectedColumnWidth"]
      130 SUBRK                            R21 R45 K22 [table.insert]
      131 GETTABLEKS                       R22 R4 K46 ["OriginalColumnWidth"]
      133 SUB                              R20 R21 R22
      134 GETTABLEKS                       R21 R4 K47 ["ConvertedColumnWidth"]
      136 SUB                              R19 R20 R21
      137 GETTABLEKS                       R20 R4 K48 ["StatusColumnWidth"]
      139 SUB                              R18 R19 R20
      140 CALL                             R16 2 1
      141 SETTABLEKS                       R16 R15 K24 ["Width"]
      143 DUPTABLE                         R16 K49 [{"Key", "Name", "Width", "CellComponent"}]
      144 LOADK                            R17 K14 ["original"]
      145 SETTABLEKS                       R17 R16 K23 ["Key"]
      147 LOADK                            R19 K42 ["AnimationList"]
      148 LOADK                            R20 K50 ["OriginalColumn"]
      149 NAMECALL                         R17 R3 K44 ["getText"]
      151 CALL                             R17 3 1
      152 SETTABLEKS                       R17 R16 K40 ["Name"]
      154 GETIMPORT                        R17 K32 [UDim.new]
      156 LOADN                            R18 0
      157 GETTABLEKS                       R19 R4 K46 ["OriginalColumnWidth"]
      159 CALL                             R17 2 1
      160 SETTABLEKS                       R17 R16 K24 ["Width"]
      162 GETUPVAL                         R17 2
      163 SETTABLEKS                       R17 R16 K27 ["CellComponent"]
      165 DUPTABLE                         R17 K51 [{"Key", "Name", "Width", "CellComponent", "CellComponentProps"}]
      166 LOADK                            R18 K15 ["converted"]
      167 SETTABLEKS                       R18 R17 K23 ["Key"]
      169 LOADK                            R20 K42 ["AnimationList"]
      170 LOADK                            R21 K52 ["ConvertedColumn"]
      171 NAMECALL                         R18 R3 K44 ["getText"]
      173 CALL                             R18 3 1
      174 SETTABLEKS                       R18 R17 K40 ["Name"]
      176 GETIMPORT                        R18 K32 [UDim.new]
      178 LOADN                            R19 0
      179 GETTABLEKS                       R20 R4 K47 ["ConvertedColumnWidth"]
      181 CALL                             R18 2 1
      182 SETTABLEKS                       R18 R17 K24 ["Width"]
      184 GETUPVAL                         R18 3
      185 SETTABLEKS                       R18 R17 K27 ["CellComponent"]
      187 DUPTABLE                         R18 K54 [{"OnContextButtonClick"}]
      188 NEWCLOSURE                       R19 P1
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R0
      191 SETTABLEKS                       R19 R18 K53 ["OnContextButtonClick"]
      193 SETTABLEKS                       R18 R17 K28 ["CellComponentProps"]
      195 DUPTABLE                         R18 K49 [{"Key", "Name", "Width", "CellComponent"}]
      196 LOADK                            R19 K17 ["status"]
      197 SETTABLEKS                       R19 R18 K23 ["Key"]
      199 LOADK                            R19 K55 [""]
      200 SETTABLEKS                       R19 R18 K40 ["Name"]
      202 GETIMPORT                        R19 K32 [UDim.new]
      204 LOADN                            R20 0
      205 GETTABLEKS                       R21 R4 K48 ["StatusColumnWidth"]
      207 CALL                             R19 2 1
      208 SETTABLEKS                       R19 R18 K24 ["Width"]
      210 GETUPVAL                         R19 4
      211 SETTABLEKS                       R19 R18 K27 ["CellComponent"]
      213 SETLIST                          R13 R14 5 [1]
      215 GETIMPORT                        R14 K57 [table.sort]
      217 MOVE                             R15 R12
      218 NEWCLOSURE                       R16 P2
      219 CAPTURE                          VAL R13
      220 CAPTURE                          VAL R1
      221 CALL                             R14 2 0
      222 LOADNIL                          R14
      223 MOVE                             R15 R12
      224 LOADNIL                          R16
      225 LOADNIL                          R17
      226 FORGPREP                         R15
      227 GETTABLEKS                       R20 R19 K11 ["id"]
      229 JUMPIFNOTEQ                      R20 R9 ; [+2]
      231 MOVE                             R14 R18
      232 FORGLOOP                         R15 2 ; [-6]
      234 GETUPVAL                         R15 5
      235 GETTABLEKS                       R15 R15 K31 ["new"]
      237 CALL                             R15 0 1
      238 GETUPVAL                         R16 6
      239 GETTABLEKS                       R16 R16 K58 ["createElement"]
      241 GETUPVAL                         R17 7
      242 DUPTABLE                         R18 K62 [{"LayoutOrder", "Size", "Layout", "VerticalAlignment", "Padding"}]
      243 SETTABLEKS                       R11 R18 K10 ["LayoutOrder"]
      245 SETTABLEKS                       R7 R18 K6 ["Size"]
      247 GETIMPORT                        R19 K66 [Enum.FillDirection.Vertical]
      249 SETTABLEKS                       R19 R18 K59 ["Layout"]
      251 GETIMPORT                        R19 K68 [Enum.VerticalAlignment.Top]
      253 SETTABLEKS                       R19 R18 K60 ["VerticalAlignment"]
      255 DUPTABLE                         R19 K72 [{"Top", "Left", "Right", "Bottom"}]
      256 LOADN                            R20 12
      257 SETTABLEKS                       R20 R19 K67 ["Top"]
      259 LOADN                            R20 12
      260 SETTABLEKS                       R20 R19 K69 ["Left"]
      262 LOADN                            R20 12
      263 SETTABLEKS                       R20 R19 K70 ["Right"]
      265 LOADN                            R20 12
      266 SETTABLEKS                       R20 R19 K71 ["Bottom"]
      268 SETTABLEKS                       R19 R18 K61 ["Padding"]
      270 DUPTABLE                         R19 K76 [{"Controls", "Table", "KeyboardListener"}]
      271 GETUPVAL                         R20 6
      272 GETTABLEKS                       R20 R20 K58 ["createElement"]
      274 GETUPVAL                         R21 7
      275 DUPTABLE                         R22 K77 [{"LayoutOrder", "Size"}]
      276 NAMECALL                         R23 R15 K78 ["getNextOrder"]
      278 CALL                             R23 1 1
      279 SETTABLEKS                       R23 R22 K10 ["LayoutOrder"]
      281 GETIMPORT                        R23 K80 [UDim2.new]
      283 LOADN                            R24 1
      284 LOADN                            R25 0
      285 LOADN                            R26 0
      286 LOADN                            R27 40
      287 CALL                             R23 4 1
      288 SETTABLEKS                       R23 R22 K6 ["Size"]
      290 DUPTABLE                         R23 K82 [{"Refresh"}]
      291 GETUPVAL                         R24 6
      292 GETTABLEKS                       R24 R24 K58 ["createElement"]
      294 GETUPVAL                         R25 8
      295 DUPTABLE                         R26 K89 [{"LeftIcon", "Cursor", "OnClick", "Size", "AnchorPoint", "Position", "BackgroundStyle", "TooltipText"}]
      296 GETTABLEKS                       R27 R4 K90 ["RefreshButton"]
      298 GETTABLEKS                       R27 R27 K91 ["Icon"]
      300 SETTABLEKS                       R27 R26 K83 ["LeftIcon"]
      302 LOADK                            R27 K92 ["PointingHand"]
      303 SETTABLEKS                       R27 R26 K84 ["Cursor"]
      305 SETTABLEKS                       R10 R26 K35 ["OnClick"]
      307 GETTABLEKS                       R27 R4 K90 ["RefreshButton"]
      309 GETTABLEKS                       R27 R27 K6 ["Size"]
      311 SETTABLEKS                       R27 R26 K6 ["Size"]
      313 GETIMPORT                        R27 K94 [Vector2.new]
      315 LOADN                            R28 1
      316 LOADK                            R29 K95 [0.5]
      317 CALL                             R27 2 1
      318 SETTABLEKS                       R27 R26 K85 ["AnchorPoint"]
      320 GETIMPORT                        R27 K80 [UDim2.new]
      322 LOADN                            R28 1
      323 LOADN                            R29 240
      324 LOADK                            R30 K95 [0.5]
      325 LOADN                            R31 0
      326 CALL                             R27 4 1
      327 SETTABLEKS                       R27 R26 K86 ["Position"]
      329 GETTABLEKS                       R27 R4 K90 ["RefreshButton"]
      331 GETTABLEKS                       R27 R27 K87 ["BackgroundStyle"]
      333 SETTABLEKS                       R27 R26 K87 ["BackgroundStyle"]
      335 LOADK                            R29 K96 ["Summary"]
      336 LOADK                            R30 K81 ["Refresh"]
      337 NAMECALL                         R27 R3 K44 ["getText"]
      339 CALL                             R27 3 1
      340 SETTABLEKS                       R27 R26 K88 ["TooltipText"]
      342 CALL                             R24 2 1
      343 SETTABLEKS                       R24 R23 K81 ["Refresh"]
      345 CALL                             R20 3 1
      346 SETTABLEKS                       R20 R19 K73 ["Controls"]
      348 GETUPVAL                         R20 6
      349 GETTABLEKS                       R20 R20 K58 ["createElement"]
      351 GETUPVAL                         R21 9
      352 DUPTABLE                         R22 K105 [{"LayoutOrder", "Columns", "Rows", "SelectedRow", "SortIndex", "SortOrder", "OnSelectRow", "OnRightClickRow", "OnSortChange"}]
      353 NAMECALL                         R23 R15 K78 ["getNextOrder"]
      355 CALL                             R23 1 1
      356 SETTABLEKS                       R23 R22 K10 ["LayoutOrder"]
      358 SETTABLEKS                       R13 R22 K97 ["Columns"]
      360 SETTABLEKS                       R12 R22 K98 ["Rows"]
      362 SETTABLEKS                       R14 R22 K99 ["SelectedRow"]
      364 GETTABLEKS                       R23 R1 K106 ["sortIndex"]
      366 SETTABLEKS                       R23 R22 K100 ["SortIndex"]
      368 GETTABLEKS                       R23 R1 K107 ["sortOrder"]
      370 SETTABLEKS                       R23 R22 K101 ["SortOrder"]
      372 NEWCLOSURE                       R23 P3
      373 CAPTURE                          VAL R0
      374 CAPTURE                          VAL R9
      375 SETTABLEKS                       R23 R22 K102 ["OnSelectRow"]
      377 NEWCLOSURE                       R23 P4
      378 CAPTURE                          VAL R0
      379 SETTABLEKS                       R23 R22 K103 ["OnRightClickRow"]
      381 NEWCLOSURE                       R23 P5
      382 CAPTURE                          VAL R0
      383 SETTABLEKS                       R23 R22 K104 ["OnSortChange"]
      385 CALL                             R20 2 1
      386 SETTABLEKS                       R20 R19 K74 ["Table"]
      388 GETUPVAL                         R20 6
      389 GETTABLEKS                       R20 R20 K58 ["createElement"]
      391 GETUPVAL                         R21 10
      392 DUPTABLE                         R22 K110 [{"OnKeyPressed", "OnKeyReleased"}]
      393 GETTABLEKS                       R23 R0 K111 ["onKeyPressed"]
      395 SETTABLEKS                       R23 R22 K108 ["OnKeyPressed"]
      397 GETTABLEKS                       R23 R0 K112 ["onKeyReleased"]
      399 SETTABLEKS                       R23 R22 K109 ["OnKeyReleased"]
      401 CALL                             R20 2 1
      402 SETTABLEKS                       R20 R19 K75 ["KeyboardListener"]
      404 CALL                             R16 3 -1
      405 RETURN                           R16 -1

PROTO_22:
        0 DUPTABLE                         R1 K2 [{"selection", "previewSelection"}]
        1 GETTABLEKS                       R2 R0 K3 ["AnimationConversion"]
        3 GETTABLEKS                       R2 R2 K0 ["selection"]
        5 SETTABLEKS                       R2 R1 K0 ["selection"]
        7 GETTABLEKS                       R2 R0 K3 ["AnimationConversion"]
        9 GETTABLEKS                       R2 R2 K1 ["previewSelection"]
       11 SETTABLEKS                       R2 R1 K1 ["previewSelection"]
       13 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R1 K2 [{"setSelection", "setPreviewSelection"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["setSelection"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["setPreviewSelection"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["R15Migrator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Roact"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["RoactRodux"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R2 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R2 K15 ["UI"]
       38 GETTABLEKS                       R7 R6 K16 ["Pane"]
       40 GETTABLEKS                       R8 R6 K17 ["KeyboardListener"]
       42 GETTABLEKS                       R9 R6 K18 ["IconButton"]
       44 GETTABLEKS                       R10 R6 K19 ["showContextMenu"]
       46 GETTABLEKS                       R11 R2 K20 ["Util"]
       48 GETTABLEKS                       R12 R11 K21 ["deepCopy"]
       50 GETTABLEKS                       R13 R11 K22 ["LayoutOrderIterator"]
       52 GETTABLEKS                       R14 R1 K23 ["Src"]
       54 GETTABLEKS                       R14 R14 K24 ["Components"]
       56 GETIMPORT                        R15 K9 [require]
       58 GETTABLEKS                       R16 R14 K25 ["RichTable"]
       60 CALL                             R15 1 1
       61 GETIMPORT                        R16 K9 [require]
       63 GETTABLEKS                       R17 R14 K25 ["RichTable"]
       65 GETTABLEKS                       R17 R17 K26 ["Cells"]
       67 GETTABLEKS                       R17 R17 K27 ["CheckboxHeaderCell"]
       69 CALL                             R16 1 1
       70 GETIMPORT                        R17 K9 [require]
       72 GETTABLEKS                       R18 R14 K25 ["RichTable"]
       74 GETTABLEKS                       R18 R18 K26 ["Cells"]
       76 GETTABLEKS                       R18 R18 K28 ["CheckboxCell"]
       78 CALL                             R17 1 1
       79 GETIMPORT                        R18 K9 [require]
       81 GETTABLEKS                       R19 R14 K25 ["RichTable"]
       83 GETTABLEKS                       R19 R19 K26 ["Cells"]
       85 GETTABLEKS                       R19 R19 K29 ["StatusCell"]
       87 CALL                             R18 1 1
       88 GETIMPORT                        R19 K9 [require]
       90 GETTABLEKS                       R20 R14 K25 ["RichTable"]
       92 GETTABLEKS                       R20 R20 K26 ["Cells"]
       94 GETTABLEKS                       R20 R20 K30 ["OriginalAssetCell"]
       96 CALL                             R19 1 1
       97 GETIMPORT                        R20 K9 [require]
       99 GETTABLEKS                       R21 R14 K25 ["RichTable"]
      101 GETTABLEKS                       R21 R21 K26 ["Cells"]
      103 GETTABLEKS                       R21 R21 K31 ["ConvertedAnimationCell"]
      105 CALL                             R20 1 1
      106 GETIMPORT                        R21 K9 [require]
      108 GETTABLEKS                       R22 R1 K23 ["Src"]
      110 GETTABLEKS                       R22 R22 K32 ["Actions"]
      112 GETTABLEKS                       R22 R22 K33 ["SetSelection"]
      114 CALL                             R21 1 1
      115 GETIMPORT                        R22 K9 [require]
      117 GETTABLEKS                       R23 R1 K23 ["Src"]
      119 GETTABLEKS                       R23 R23 K32 ["Actions"]
      121 GETTABLEKS                       R23 R23 K34 ["SetPreviewSelection"]
      123 CALL                             R22 1 1
      124 GETIMPORT                        R23 K9 [require]
      126 GETTABLEKS                       R24 R1 K23 ["Src"]
      128 GETTABLEKS                       R24 R24 K20 ["Util"]
      130 GETTABLEKS                       R24 R24 K35 ["Input"]
      132 CALL                             R23 1 1
      133 GETTABLEKS                       R24 R3 K36 ["PureComponent"]
      135 LOADK                            R26 K37 ["AnimationList"]
      136 NAMECALL                         R24 R24 K38 ["extend"]
      138 CALL                             R24 2 1
      139 DUPCLOSURE                       R25 K39 [PROTO_5]
      140 CAPTURE                          VAL R23
      141 SETTABLEKS                       R25 R24 K40 ["init"]
      143 DUPCLOSURE                       R25 K41 [PROTO_6]
      144 CAPTURE                          VAL R12
      145 SETTABLEKS                       R25 R24 K42 ["selectAll"]
      147 DUPCLOSURE                       R25 K43 [PROTO_7]
      148 SETTABLEKS                       R25 R24 K44 ["resetSelected"]
      150 DUPCLOSURE                       R25 K45 [PROTO_8]
      151 CAPTURE                          VAL R12
      152 SETTABLEKS                       R25 R24 K46 ["shiftClick"]
      154 DUPCLOSURE                       R25 K47 [PROTO_9]
      155 CAPTURE                          VAL R12
      156 SETTABLEKS                       R25 R24 K48 ["click"]
      158 DUPCLOSURE                       R25 K49 [PROTO_10]
      159 SETTABLEKS                       R25 R24 K50 ["rowClick"]
      161 DUPCLOSURE                       R25 K51 [PROTO_14]
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R0
      164 SETTABLEKS                       R25 R24 K52 ["rowRightClick"]
      166 DUPCLOSURE                       R25 K53 [PROTO_21]
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R15
      177 CAPTURE                          VAL R8
      178 SETTABLEKS                       R25 R24 K54 ["render"]
      180 GETTABLEKS                       R25 R5 K55 ["withContext"]
      182 DUPTABLE                         R26 K59 [{"Plugin", "Stylizer", "Localization"}]
      183 GETTABLEKS                       R27 R5 K56 ["Plugin"]
      185 SETTABLEKS                       R27 R26 K56 ["Plugin"]
      187 GETTABLEKS                       R27 R5 K57 ["Stylizer"]
      189 SETTABLEKS                       R27 R26 K57 ["Stylizer"]
      191 GETTABLEKS                       R27 R5 K58 ["Localization"]
      193 SETTABLEKS                       R27 R26 K58 ["Localization"]
      195 CALL                             R25 1 1
      196 MOVE                             R26 R24
      197 CALL                             R25 1 1
      198 MOVE                             R24 R25
      199 DUPCLOSURE                       R25 K60 [PROTO_22]
      200 DUPCLOSURE                       R26 K61 [PROTO_25]
      201 CAPTURE                          VAL R21
      202 CAPTURE                          VAL R22
      203 GETTABLEKS                       R27 R4 K62 ["connect"]
      205 MOVE                             R28 R25
      206 MOVE                             R29 R26
      207 CALL                             R27 2 1
      208 MOVE                             R28 R24
      209 CALL                             R27 1 -1
      210 RETURN                           R27 -1
