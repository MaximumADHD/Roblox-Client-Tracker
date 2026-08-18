PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        6 GETTABLEKS                       R2 R2 K2 ["Y"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["faceControlsEditorOriginalWidth"]
       11 DIV                              R4 R1 R5
       12 LOADK                            R5 K4 [0.05]
       13 LOADK                            R6 K5 [1.65]
       14 FASTCALL                         MATH_CLAMP ; [+2]
       15 GETIMPORT                        R3 K8 [math.clamp]
       17 CALL                             R3 3 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K9 ["faceControlsEditorDiagramPadding"]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K10 ["faceControlsEditorFaceFrontDiagramHeight"]
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K11 ["faceControlsEditorFaceSideDiagramHeight"]
       27 ADD                              R7 R8 R9
       28 ADD                              R5 R6 R7
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K12 ["faceControlsEditoSpacingBetweenDiagrams"]
       32 ADD                              R4 R5 R6
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K13 ["faceControlsEditorTogglesContainerHeight"]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K9 ["faceControlsEditorDiagramPadding"]
       39 MULK                             R9 R10 K14 [2]
       40 ADD                              R7 R8 R9
       41 SUB                              R6 R2 R7
       42 DIV                              R5 R6 R4
       43 FASTCALL2                        MATH_MIN R3 R5 ; [+5]
       45 MOVE                             R7 R3
       46 MOVE                             R8 R5
       47 GETIMPORT                        R6 K16 [math.min]
       49 CALL                             R6 2 1
       50 MOVE                             R3 R6
       51 GETUPVAL                         R6 1
       52 DUPTABLE                         R8 K20 [{"panelWidth", "panelHeight", "scaleFactor"}]
       53 SETTABLEKS                       R1 R8 K17 ["panelWidth"]
       55 SETTABLEKS                       R2 R8 K18 ["panelHeight"]
       57 SETTABLEKS                       R3 R8 K19 ["scaleFactor"]
       59 NAMECALL                         R6 R6 K21 ["setState"]
       61 CALL                             R6 2 0
       62 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"currentMax", "currentMin"}]
        2 SETTABLEKS                       R1 R4 K0 ["currentMax"]
        4 SETTABLEKS                       R0 R4 K1 ["currentMin"]
        6 NAMECALL                         R2 R2 K3 ["setState"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ShowFaceControlsEditorPanel"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R1 R0 K2 ["SetShowFaceControlsEditorPanel"]
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 GETTABLEKS                       R1 R0 K3 ["FaceControlsEditorEnabled"]
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETTABLEKS                       R1 R0 K4 ["SetFaceControlsEditorEnabled"]
       15 LOADB                            R2 0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["PluginGui"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["hideFaceControlsEditor"]
        8 NAMECALL                         R1 R0 K3 ["BindToClose"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"treeArray"}]
        2 SETTABLEKS                       R0 R3 K0 ["treeArray"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["props"]
        6 GETTABLEKS                       R3 R1 K2 ["treeArray"]
        8 GETTABLEKS                       R4 R2 K3 ["SelectedTrack"]
       10 GETTABLEKS                       R5 R2 K4 ["SetSelectedTracks"]
       12 LOADN                            R6 0
       13 GETIMPORT                        R7 K6 [ipairs]
       15 MOVE                             R8 R3
       16 CALL                             R7 1 3
       17 FORGPREP_INEXT                   R7
       18 JUMPIFNOT                        R4 ; [+5]
       19 GETTABLEN                        R12 R4 1
       20 JUMPIFNOTEQ                      R12 R11 ; [+3]
       22 MOVE                             R6 R10
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R7 2 [inext] ; [-7]
       26 ADD                              R8 R6 R0
       27 LOADN                            R9 1
       28 LENGTH                           R10 R3
       29 FASTCALL                         MATH_CLAMP ; [+2]
       30 GETIMPORT                        R7 K9 [math.clamp]
       32 CALL                             R7 3 1
       33 NEWTABLE                         R8 0 1
       35 GETTABLE                         R9 R3 R7
       36 SETLIST                          R8 R9 1 [1]
       38 MOVE                             R9 R5
       39 NEWTABLE                         R10 0 1
       41 MOVE                             R11 R8
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R9 1 0
       45 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K8 [{[1] = , ["treeArray"], ["showContextMenu"] = False, ["currentlyEditedFacsProperties"], ["scaleFactor"] = 1}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K2 ["treeArray"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K5 ["currentlyEditedFacsProperties"]
        9 SETTABLEKS                       R1 R0 K9 ["state"]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K10 ["onAbsoluteSizeChange"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K3 ["showContextMenu"]
       20 NEWCLOSURE                       R1 P2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K11 ["hideContextMenu"]
       24 NEWCLOSURE                       R1 P3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K12 ["setValues"]
       28 NEWCLOSURE                       R1 P4
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K13 ["hideFaceControlsEditor"]
       32 GETUPVAL                         R1 1
       33 CALL                             R1 0 1
       34 JUMPIF                           R1 ; [+4]
       35 NEWCLOSURE                       R1 P5
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K14 ["onDockWidgetLoaded"]
       39 NEWCLOSURE                       R1 P6
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K15 ["onTreeUpdated"]
       43 NEWCLOSURE                       R1 P7
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K16 ["changeSelectedTrack"]
       47 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["focusCameraOnFace"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["props"]
        9 GETTABLEKS                       R1 R1 K2 ["RootInstance"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETGLOBAL                        R0 K3 ["focusFace"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K1 ["props"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginActions"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K2 ["Connections"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K3 ["Actions"]
       12 LOADK                            R6 K4 ["FocusCamera"]
       13 NAMECALL                         R4 R1 K5 ["get"]
       15 CALL                             R4 2 1
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R2 R0 K6 ["addAction"]
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_12:
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
       32 GETTABLEKS                       R1 R0 K6 ["hideFaceControlsEditor"]
       34 CALL                             R1 0 0
       35 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["FacsControlToRegionMap"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 DUPTABLE                         R6 K7 [{["Name"], ["Instance"] = "Root", ["Type"]}]
       10 SETTABLEKS                       R4 R6 K3 ["Name"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K8 ["TRACK_TYPES"]
       15 GETTABLEKS                       R7 R7 K9 ["Facs"]
       17 SETTABLEKS                       R7 R6 K6 ["Type"]
       19 SETTABLE                         R6 R0 R4
       20 FORGLOOP                         R1 2 ; [-12]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K10 ["Dictionary"]
       25 GETTABLEKS                       R1 R1 K11 ["values"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 1
       29 MOVE                             R0 R1
       30 GETIMPORT                        R1 K14 [table.sort]
       32 MOVE                             R2 R0
       33 DUPCLOSURE                       R3 K15 [PROTO_13]
       34 CALL                             R1 2 0
       35 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["NUMBER_PRECISION"]
        3 LOADK                            R6 K1 [0.5]
        4 MUL                              R7 R0 R1
        5 ADD                              R5 R6 R7
        6 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        7 GETIMPORT                        R4 K4 [math.floor]
        9 CALL                             R4 1 1
       10 DIV                              R3 R4 R1
       11 FASTCALL1                        TOSTRING R3 ; [+2]
       12 GETIMPORT                        R2 K6 [tostring]
       14 CALL                             R2 1 1
       15 RETURN                           R2 1

PROTO_16:
        0 NEWTABLE                         R6 0 1
        2 GETTABLEKS                       R7 R1 K0 ["Name"]
        4 SETLIST                          R6 R7 1 [1]
        6 JUMPIFNOT                        R5 ; [+47]
        7 GETTABLEN                        R9 R5 1
        8 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       10 MOVE                             R8 R6
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 GETTABLEN                        R9 R5 2
       15 FASTCALL2                        TABLE_INSERT R6 R9 ; [+4]
       17 MOVE                             R8 R6
       18 GETIMPORT                        R7 K3 [table.insert]
       20 CALL                             R7 2 0
       21 GETTABLEKS                       R7 R2 K4 ["SymmetryEnabled"]
       23 JUMPIFNOT                        R7 ; [+30]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R8 R8 K5 ["FacsCrossMappings"]
       27 GETTABLEN                        R9 R5 1
       28 GETTABLE                         R7 R8 R9
       29 GETTABLEKS                       R7 R7 K6 ["symmetryPartner"]
       31 JUMPIFNOT                        R7 ; [+7]
       32 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       34 MOVE                             R9 R6
       35 MOVE                             R10 R7
       36 GETIMPORT                        R8 K3 [table.insert]
       38 CALL                             R8 2 0
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K5 ["FacsCrossMappings"]
       42 GETTABLEN                        R10 R5 2
       43 GETTABLE                         R8 R9 R10
       44 GETTABLEKS                       R7 R8 K6 ["symmetryPartner"]
       46 JUMPIFNOT                        R7 ; [+7]
       47 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
       49 MOVE                             R9 R6
       50 MOVE                             R10 R7
       51 GETIMPORT                        R8 K3 [table.insert]
       53 CALL                             R8 2 0
       54 GETTABLEKS                       R7 R2 K4 ["SymmetryEnabled"]
       56 JUMPIFNOT                        R7 ; [+10]
       57 GETTABLEKS                       R4 R3 K6 ["symmetryPartner"]
       59 JUMPIFNOT                        R4 ; [+7]
       60 FASTCALL2                        TABLE_INSERT R6 R4 ; [+5]
       62 MOVE                             R8 R6
       63 MOVE                             R9 R4
       64 GETIMPORT                        R7 K3 [table.insert]
       66 CALL                             R7 2 0
       67 GETUPVAL                         R7 1
       68 CALL                             R7 0 1
       69 JUMPIFNOT                        R7 ; [+7]
       70 DUPTABLE                         R9 K10 [{["currentlyEditedFacsProperties"], ["showContextMenu"] = True}]
       71 SETTABLEKS                       R6 R9 K7 ["currentlyEditedFacsProperties"]
       73 NAMECALL                         R7 R0 K11 ["setState"]
       75 CALL                             R7 2 0
       76 RETURN                           R0 0
       77 GETTABLEKS                       R7 R0 K12 ["state"]
       79 SETTABLEKS                       R6 R7 K7 ["currentlyEditedFacsProperties"]
       81 GETTABLEKS                       R7 R0 K12 ["state"]
       83 LOADB                            R8 1
       84 SETTABLEKS                       R8 R7 K8 ["showContextMenu"]
       86 NAMECALL                         R7 R0 K8 ["showContextMenu"]
       88 CALL                             R7 1 0
       89 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["FacsCrossMappings"]
        5 GETTABLEKS                       R5 R0 K0 ["Name"]
        7 GETTABLE                         R3 R4 R5
        8 GETTABLEKS                       R4 R3 K2 ["sliderGroup"]
       10 GETGLOBAL                        R5 K3 ["formatNumber"]
       12 GETTABLEKS                       R6 R1 K4 ["currentValue"]
       14 CALL                             R5 1 1
       15 JUMPIFNOT                        R4 ; [+43]
       16 GETTABLEKS                       R6 R1 K5 ["Tooltip"]
       18 JUMPIFNOT                        R6 ; [+10]
       19 GETTABLEKS                       R6 R1 K4 ["currentValue"]
       21 GETTABLEKS                       R7 R1 K6 ["defaultValue"]
       23 JUMPIFNOTEQ                      R6 R7 ; [+5]
       25 GETTABLEKS                       R2 R1 K5 ["Tooltip"]
       27 LOADN                            R5 0
       28 JUMP                             ; [+30]
       29 GETTABLEKS                       R6 R1 K4 ["currentValue"]
       31 LOADK                            R7 K7 [0.5]
       32 JUMPIFNOTLT                      R6 R7 ; [+17]
       34 GETTABLEN                        R2 R4 1
       35 GETGLOBAL                        R6 K3 ["formatNumber"]
       37 GETTABLEKS                       R10 R1 K4 ["currentValue"]
       39 MULK                             R9 R10 K9 [2]
       40 SUBRK                            R8 K8 [1] R9
       41 LOADN                            R9 0
       42 LOADN                            R10 1
       43 FASTCALL                         MATH_CLAMP ; [+2]
       44 GETIMPORT                        R7 K12 [math.clamp]
       46 CALL                             R7 3 1
       47 CALL                             R6 1 1
       48 MOVE                             R5 R6
       49 JUMP                             ; [+9]
       50 GETTABLEN                        R2 R4 2
       51 GETGLOBAL                        R6 K3 ["formatNumber"]
       53 GETTABLEKS                       R9 R1 K4 ["currentValue"]
       55 SUBK                             R8 R9 K7 [0.5]
       56 MULK                             R7 R8 K9 [2]
       57 CALL                             R6 1 1
       58 MOVE                             R5 R6
       59 MOVE                             R7 R2
       60 LOADK                            R8 K13 [": "]
       61 MOVE                             R9 R5
       62 CONCAT                           R6 R7 R9
       63 RETURN                           R6 1

PROTO_18:
        0 SETTABLEKS                       R2 R5 K0 ["currentValue"]
        2 DUPTABLE                         R12 K3 [{"Tooltip", "Value"}]
        3 GETGLOBAL                        R13 K4 ["getSliderTooltipText"]
        5 MOVE                             R14 R1
        6 MOVE                             R15 R5
        7 CALL                             R13 2 1
        8 SETTABLEKS                       R13 R12 K1 ["Tooltip"]
       10 GETTABLEKS                       R14 R5 K0 ["currentValue"]
       12 FASTCALL3                        MATH_CLAMP R14 R3 R4
       14 MOVE                             R15 R3
       15 MOVE                             R16 R4
       16 GETIMPORT                        R13 K7 [math.clamp]
       18 CALL                             R13 3 1
       19 SETTABLEKS                       R13 R12 K2 ["Value"]
       21 NAMECALL                         R10 R0 K8 ["setState"]
       23 CALL                             R10 2 0
       24 GETTABLEKS                       R10 R1 K9 ["Name"]
       26 GETTABLEKS                       R11 R0 K10 ["props"]
       28 MOVE                             R12 R2
       29 JUMPIFNOT                        R7 ; [+72]
       30 GETTABLEKS                       R13 R6 K11 ["indexInGroup"]
       32 JUMPIFNOTEQKN                    R13 K12 [1] ; [+69]
       34 LOADNIL                          R13
       35 GETTABLEKS                       R14 R6 K11 ["indexInGroup"]
       37 JUMPIFNOTEQKN                    R14 K12 [1] ; [+3]
       39 GETTABLEN                        R13 R7 2
       40 JUMP                             ; [+1]
       41 GETTABLEN                        R13 R7 1
       42 GETUPVAL                         R15 0
       43 GETTABLEKS                       R15 R15 K13 ["FacsControlToFaceSliderInfoMap"]
       45 GETTABLE                         R14 R15 R13
       46 LOADN                            R15 0
       47 LOADK                            R16 K14 [0.5]
       48 JUMPIFNOTLE                      R2 R16 ; [+12]
       50 MULK                             R18 R2 K15 [2]
       51 SUBRK                            R17 K12 [1] R18
       52 LOADN                            R18 0
       53 LOADN                            R19 1
       54 FASTCALL                         MATH_CLAMP ; [+2]
       55 GETIMPORT                        R16 K7 [math.clamp]
       57 CALL                             R16 3 1
       58 MOVE                             R12 R16
       59 LOADN                            R15 0
       60 JUMP                             ; [+3]
       61 LOADN                            R12 0
       62 SUBK                             R16 R2 K14 [0.5]
       63 MULK                             R15 R16 K15 [2]
       64 MULK                             R17 R15 K14 [0.5]
       65 ADDK                             R16 R17 K14 [0.5]
       66 SETTABLEKS                       R16 R14 K0 ["currentValue"]
       68 GETGLOBAL                        R17 K16 ["triggerValueChanged"]
       70 MOVE                             R18 R11
       71 MOVE                             R19 R13
       72 MOVE                             R20 R15
       73 CALL                             R17 3 0
       74 GETTABLEKS                       R17 R0 K10 ["props"]
       76 GETTABLEKS                       R17 R17 K17 ["SymmetryEnabled"]
       78 JUMPIFNOT                        R17 ; [+23]
       79 LOADNIL                          R17
       80 LOADNIL                          R18
       81 GETUPVAL                         R20 1
       82 GETTABLEKS                       R20 R20 K18 ["FacsCrossMappings"]
       84 GETTABLE                         R19 R20 R13
       85 GETTABLEKS                       R18 R19 K19 ["symmetryPartner"]
       87 JUMPIFNOT                        R18 ; [+4]
       88 GETUPVAL                         R19 0
       89 GETTABLEKS                       R19 R19 K13 ["FacsControlToFaceSliderInfoMap"]
       91 GETTABLE                         R17 R19 R18
       92 JUMPIFNOT                        R17 ; [+2]
       93 SETTABLEKS                       R16 R17 K0 ["currentValue"]
       95 JUMPIFNOT                        R18 ; [+6]
       96 GETGLOBAL                        R19 K16 ["triggerValueChanged"]
       98 MOVE                             R20 R11
       99 MOVE                             R21 R18
      100 MOVE                             R22 R15
      101 CALL                             R19 3 0
      102 JUMPIFNOT                        R7 ; [+5]
      103 JUMPIFNOT                        R7 ; [+10]
      104 GETTABLEKS                       R13 R6 K11 ["indexInGroup"]
      106 JUMPIFNOTEQKN                    R13 K12 [1] ; [+7]
      108 GETGLOBAL                        R13 K16 ["triggerValueChanged"]
      110 MOVE                             R14 R11
      111 MOVE                             R15 R10
      112 MOVE                             R16 R12
      113 CALL                             R13 3 0
      114 GETTABLEKS                       R13 R0 K10 ["props"]
      116 GETTABLEKS                       R13 R13 K17 ["SymmetryEnabled"]
      118 JUMPIFNOT                        R13 ; [+9]
      119 JUMPIFNOT                        R9 ; [+8]
      120 SETTABLEKS                       R2 R9 K0 ["currentValue"]
      122 GETGLOBAL                        R13 K16 ["triggerValueChanged"]
      124 MOVE                             R14 R11
      125 MOVE                             R15 R8
      126 MOVE                             R16 R12
      127 CALL                             R13 3 0
      128 RETURN                           R0 0

PROTO_19:
        0 GETGLOBAL                        R0 K0 ["prepAndTriggerSliderContextMenu"]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["props"]
        7 GETUPVAL                         R4 2
        8 GETUPVAL                         R5 3
        9 GETUPVAL                         R6 4
       10 CALL                             R0 6 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AddWaypoint"]
        5 CALL                             R1 0 0
        6 NEWTABLE                         R1 0 1
        8 NEWTABLE                         R2 0 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["Name"]
       13 SETLIST                          R2 R3 1 [1]
       15 SETLIST                          R1 R2 1 [1]
       17 GETUPVAL                         R2 2
       18 JUMPIFNOT                        R2 ; [+11]
       19 NEWTABLE                         R4 0 1
       21 GETUPVAL                         R5 2
       22 SETLIST                          R4 R5 1 [1]
       24 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       26 MOVE                             R3 R1
       27 GETIMPORT                        R2 K5 [table.insert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 3
       31 JUMPIFNOT                        R2 ; [+31]
       32 GETUPVAL                         R3 3
       33 GETTABLEN                        R2 R3 2
       34 NEWTABLE                         R5 0 1
       36 MOVE                             R6 R2
       37 SETLIST                          R5 R6 1 [1]
       39 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       41 MOVE                             R4 R1
       42 GETIMPORT                        R3 K5 [table.insert]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 2
       46 JUMPIFNOT                        R3 ; [+16]
       47 NEWTABLE                         R5 0 1
       49 GETUPVAL                         R7 4
       50 GETTABLEKS                       R7 R7 K6 ["FacsCrossMappings"]
       52 GETTABLE                         R6 R7 R2
       53 GETTABLEKS                       R6 R6 K7 ["symmetryPartner"]
       55 SETLIST                          R5 R6 1 [1]
       57 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       59 MOVE                             R4 R1
       60 GETIMPORT                        R3 K5 [table.insert]
       62 CALL                             R3 2 0
       63 GETUPVAL                         R2 0
       64 GETTABLEKS                       R2 R2 K0 ["props"]
       66 GETTABLEKS                       R2 R2 K8 ["SetSelectedTracks"]
       68 MOVE                             R3 R1
       69 CALL                             R2 1 0
       70 RETURN                           R0 0

PROTO_21:
        0 GETGLOBAL                        R1 K0 ["handleSliderOnValueChanged"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 LOADN                            R5 0
        6 LOADN                            R6 1
        7 GETUPVAL                         R7 2
        8 GETUPVAL                         R8 3
        9 GETUPVAL                         R9 4
       10 GETUPVAL                         R10 5
       11 GETUPVAL                         R11 6
       12 CALL                             R1 10 0
       13 RETURN                           R0 0

PROTO_22:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R0 K0 ["props"]
        4 GETTABLEKS                       R4 R4 K1 ["Stylizer"]
        6 GETGLOBAL                        R5 K2 ["getFacsListData"]
        8 CALL                             R5 0 1
        9 GETIMPORT                        R6 K4 [ipairs]
       11 MOVE                             R7 R5
       12 CALL                             R6 1 3
       13 FORGPREP_INEXT                   R6
       14 LOADK                            R12 K5 ["Facs_"]
       15 GETTABLEKS                       R13 R10 K6 ["Name"]
       17 CONCAT                           R11 R12 R13
       18 GETUPVAL                         R13 0
       19 GETTABLEKS                       R13 R13 K7 ["FacsCrossMappings"]
       21 GETTABLEKS                       R14 R10 K6 ["Name"]
       23 GETTABLE                         R12 R13 R14
       24 GETUPVAL                         R14 1
       25 GETTABLEKS                       R14 R14 K8 ["FacsControlToFaceSliderInfoMap"]
       27 GETTABLEKS                       R15 R10 K6 ["Name"]
       29 GETTABLE                         R13 R14 R15
       30 GETTABLEKS                       R14 R12 K9 ["sliderGroup"]
       32 JUMPIFNOT                        R13 ; [+204]
       33 JUMPIFNOT                        R14 ; [+5]
       34 JUMPIFNOT                        R14 ; [+202]
       35 GETTABLEKS                       R15 R12 K10 ["indexInGroup"]
       37 JUMPIFNOTEQKN                    R15 K11 [1] ; [+199]
       39 LOADNIL                          R15
       40 LOADNIL                          R16
       41 GETTABLEKS                       R17 R0 K0 ["props"]
       43 GETTABLEKS                       R17 R17 K12 ["SymmetryEnabled"]
       45 JUMPIFNOT                        R17 ; [+7]
       46 GETTABLEKS                       R16 R12 K13 ["symmetryPartner"]
       48 JUMPIFNOT                        R16 ; [+4]
       49 GETUPVAL                         R17 1
       50 GETTABLEKS                       R17 R17 K8 ["FacsControlToFaceSliderInfoMap"]
       52 GETTABLE                         R15 R17 R16
       53 LOADN                            R17 43
       54 GETTABLEKS                       R18 R13 K14 ["customWidth"]
       56 JUMPIFNOT                        R18 ; [+2]
       57 GETTABLEKS                       R17 R13 K14 ["customWidth"]
       59 GETTABLEKS                       R19 R13 K15 ["currentValue"]
       61 LOADN                            R20 0
       62 LOADN                            R21 1
       63 FASTCALL                         MATH_CLAMP ; [+2]
       64 GETIMPORT                        R18 K18 [math.clamp]
       66 CALL                             R18 3 1
       67 JUMPIFNOTEQKNIL                  R14 ; [+2]
       69 LOADB                            R19 0 +1
       70 LOADB                            R19 1
       71 GETTABLEKS                       R20 R4 K19 ["faceSliderMaxValueTheme"]
       73 JUMPIFNOT                        R20 ; [+12]
       74 LOADB                            R20 1
       75 JUMPIFEQKN                       R18 K20 [0] ; [+10]
       77 LOADB                            R20 1
       78 JUMPIFEQKN                       R18 K11 [1] ; [+7]
       80 MOVE                             R20 R19
       81 JUMPIFNOT                        R20 ; [+4]
       82 JUMPIFEQKN                       R18 K21 [0.5] ; [+2]
       84 LOADB                            R20 0 +1
       85 LOADB                            R20 1
       86 MOVE                             R22 R11
       87 LOADK                            R23 K22 ["_rotatedSliderContainer"]
       88 CONCAT                           R21 R22 R23
       89 GETUPVAL                         R22 2
       90 GETTABLEKS                       R22 R22 K23 ["createElement"]
       92 LOADK                            R23 K24 ["Frame"]
       93 DUPTABLE                         R24 K34 [{["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["Rotation"], ["LayoutOrder"] = 2, ["ZIndex"] = 100}]
       94 GETIMPORT                        R25 K37 [UDim2.new]
       96 GETTABLEKS                       R26 R13 K38 ["position"]
       98 GETTABLEKS                       R26 R26 K39 ["X"]
      100 GETTABLEKS                       R26 R26 K40 ["Scale"]
      102 GETTABLEKS                       R28 R13 K38 ["position"]
      104 GETTABLEKS                       R28 R28 K39 ["X"]
      106 GETTABLEKS                       R28 R28 K41 ["Offset"]
      108 GETTABLEKS                       R29 R0 K42 ["state"]
      110 GETTABLEKS                       R29 R29 K43 ["scaleFactor"]
      112 MUL                              R27 R28 R29
      113 GETTABLEKS                       R28 R13 K38 ["position"]
      115 GETTABLEKS                       R28 R28 K44 ["Y"]
      117 GETTABLEKS                       R28 R28 K40 ["Scale"]
      119 GETTABLEKS                       R30 R13 K38 ["position"]
      121 GETTABLEKS                       R30 R30 K44 ["Y"]
      123 GETTABLEKS                       R30 R30 K41 ["Offset"]
      125 GETTABLEKS                       R31 R0 K42 ["state"]
      127 GETTABLEKS                       R31 R31 K43 ["scaleFactor"]
      129 MUL                              R29 R30 R31
      130 CALL                             R25 4 1
      131 SETTABLEKS                       R25 R24 K27 ["Position"]
      133 GETIMPORT                        R25 K37 [UDim2.new]
      135 LOADN                            R26 0
      136 GETTABLEKS                       R28 R0 K42 ["state"]
      138 GETTABLEKS                       R28 R28 K43 ["scaleFactor"]
      140 MUL                              R27 R17 R28
      141 LOADN                            R28 0
      142 LOADN                            R30 2
      143 GETTABLEKS                       R31 R0 K42 ["state"]
      145 GETTABLEKS                       R31 R31 K43 ["scaleFactor"]
      147 MUL                              R29 R30 R31
      148 CALL                             R25 4 1
      149 SETTABLEKS                       R25 R24 K28 ["Size"]
      151 GETTABLEKS                       R25 R13 K45 ["rotation"]
      153 SETTABLEKS                       R25 R24 K29 ["Rotation"]
      155 DUPTABLE                         R25 K47 [{"Scrubber"}]
      156 GETUPVAL                         R26 2
      157 GETTABLEKS                       R26 R26 K23 ["createElement"]
      159 GETUPVAL                         R27 3
      160 DUPTABLE                         R28 K60 [{["Style"], ["Disabled"] = False, ["Min"] = 0, ["Max"] = 1, ["Tooltip"], ["Value"], ["FillFromCenter"], ["OnRightClick"], ["OnChangeBegan"], ["OnValueChanged"], ["Position"], ["Size"], ["AnchorPoint"]}]
      161 JUMPIFNOT                        R20 ; [+3]
      162 GETTABLEKS                       R29 R4 K19 ["faceSliderMaxValueTheme"]
      164 JUMP                             ; [+2]
      165 GETTABLEKS                       R29 R4 K61 ["faceSliderTheme"]
      167 SETTABLEKS                       R29 R28 K48 ["Style"]
      169 GETGLOBAL                        R29 K62 ["getSliderTooltipText"]
      171 MOVE                             R30 R10
      172 MOVE                             R31 R13
      173 CALL                             R29 2 1
      174 SETTABLEKS                       R29 R28 K53 ["Tooltip"]
      176 SETTABLEKS                       R18 R28 K54 ["Value"]
      178 SETTABLEKS                       R19 R28 K55 ["FillFromCenter"]
      180 NEWCLOSURE                       R29 P0
      181 CAPTURE                          VAL R0
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R12
      184 CAPTURE                          REF R16
      185 CAPTURE                          VAL R14
      186 SETTABLEKS                       R29 R28 K56 ["OnRightClick"]
      188 NEWCLOSURE                       R29 P1
      189 CAPTURE                          VAL R0
      190 CAPTURE                          VAL R10
      191 CAPTURE                          REF R16
      192 CAPTURE                          VAL R14
      193 CAPTURE                          UPVAL U0
      194 SETTABLEKS                       R29 R28 K57 ["OnChangeBegan"]
      196 NEWCLOSURE                       R29 P2
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R13
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R14
      202 CAPTURE                          REF R16
      203 CAPTURE                          REF R15
      204 SETTABLEKS                       R29 R28 K58 ["OnValueChanged"]
      206 GETIMPORT                        R29 K37 [UDim2.new]
      208 LOADK                            R30 K21 [0.5]
      209 LOADN                            R31 0
      210 LOADK                            R32 K21 [0.5]
      211 LOADN                            R33 0
      212 CALL                             R29 4 1
      213 SETTABLEKS                       R29 R28 K27 ["Position"]
      215 GETIMPORT                        R29 K37 [UDim2.new]
      217 LOADN                            R30 1
      218 LOADN                            R31 0
      219 LOADN                            R32 0
      220 LOADN                            R33 8
      221 CALL                             R29 4 1
      222 SETTABLEKS                       R29 R28 K28 ["Size"]
      224 GETIMPORT                        R29 K64 [Vector2.new]
      226 LOADK                            R30 K21 [0.5]
      227 LOADK                            R31 K21 [0.5]
      228 CALL                             R29 2 1
      229 SETTABLEKS                       R29 R28 K59 ["AnchorPoint"]
      231 CALL                             R26 2 1
      232 SETTABLEKS                       R26 R25 K46 ["Scrubber"]
      234 CALL                             R22 3 1
      235 SETTABLE                         R22 R3 R21
      236 CLOSEUPVALS                      R15
      237 FORGLOOP                         R6 2 [inext] ; [-224]
      239 GETUPVAL                         R6 2
      240 GETTABLEKS                       R6 R6 K65 ["createFragment"]
      242 MOVE                             R7 R3
      243 CALL                             R6 1 -1
      244 RETURN                           R6 -1

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["ReadOnly"]
        2 JUMPIF                           R3 ; [+20]
        3 GETTABLEKS                       R3 R0 K1 ["ValueChanged"]
        5 LOADK                            R4 K2 ["Root"]
        6 NEWTABLE                         R5 0 1
        8 MOVE                             R6 R1
        9 SETLIST                          R5 R6 1 [1]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K3 ["TRACK_TYPES"]
       14 GETTABLEKS                       R6 R6 K4 ["Facs"]
       16 LOADNIL                          R7
       17 GETTABLEKS                       R8 R0 K5 ["Playhead"]
       19 MOVE                             R9 R2
       20 GETTABLEKS                       R10 R0 K6 ["Analytics"]
       22 CALL                             R3 7 0
       23 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["FacsNames"]
        5 GETTABLEKS                       R3 R3 K1 ["EyesLookLeft"]
        7 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K4 [table.insert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["FacsNames"]
       16 GETTABLEKS                       R3 R3 K5 ["EyesLookRight"]
       18 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       20 MOVE                             R2 R0
       21 GETIMPORT                        R1 K4 [table.insert]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["FacsNames"]
       27 GETTABLEKS                       R3 R3 K6 ["EyesLookUp"]
       29 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       31 MOVE                             R2 R0
       32 GETIMPORT                        R1 K4 [table.insert]
       34 CALL                             R1 2 0
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K0 ["FacsNames"]
       38 GETTABLEKS                       R3 R3 K7 ["EyesLookDown"]
       40 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       42 MOVE                             R2 R0
       43 GETIMPORT                        R1 K4 [table.insert]
       45 CALL                             R1 2 0
       46 GETUPVAL                         R1 1
       47 CALL                             R1 0 1
       48 JUMPIFNOT                        R1 ; [+8]
       49 GETUPVAL                         R1 2
       50 DUPTABLE                         R3 K11 [{["currentlyEditedFacsProperties"], ["showContextMenu"] = True}]
       51 SETTABLEKS                       R0 R3 K8 ["currentlyEditedFacsProperties"]
       53 NAMECALL                         R1 R1 K12 ["setState"]
       55 CALL                             R1 2 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R1 2
       58 GETTABLEKS                       R1 R1 K13 ["state"]
       60 SETTABLEKS                       R0 R1 K8 ["currentlyEditedFacsProperties"]
       62 GETUPVAL                         R1 2
       63 GETTABLEKS                       R1 R1 K13 ["state"]
       65 LOADB                            R2 1
       66 SETTABLEKS                       R2 R1 K9 ["showContextMenu"]
       68 GETUPVAL                         R1 2
       69 NAMECALL                         R1 R1 K9 ["showContextMenu"]
       71 CALL                             R1 1 0
       72 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["AddWaypoint"]
        5 CALL                             R1 0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K2 ["SetSelectedTracks"]
       11 NEWTABLE                         R2 0 4
       13 NEWTABLE                         R3 0 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["FacsNames"]
       18 GETTABLEKS                       R4 R4 K4 ["EyesLookLeft"]
       20 SETLIST                          R3 R4 1 [1]
       22 NEWTABLE                         R4 0 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K3 ["FacsNames"]
       27 GETTABLEKS                       R5 R5 K5 ["EyesLookRight"]
       29 SETLIST                          R4 R5 1 [1]
       31 NEWTABLE                         R5 0 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K3 ["FacsNames"]
       36 GETTABLEKS                       R6 R6 K6 ["EyesLookUp"]
       38 SETLIST                          R5 R6 1 [1]
       40 NEWTABLE                         R6 0 1
       42 GETUPVAL                         R7 1
       43 GETTABLEKS                       R7 R7 K3 ["FacsNames"]
       45 GETTABLEKS                       R7 R7 K7 ["EyesLookDown"]
       47 SETLIST                          R6 R7 1 [1]
       49 SETLIST                          R2 R3 4 [1]
       51 CALL                             R1 1 0
       52 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["currentValue"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R3 K4 [{["Tooltip"] = "EyesLook", ["Value"]}]
        5 GETIMPORT                        R4 K7 [Vector2.new]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K0 ["currentValue"]
       10 GETTABLEKS                       R6 R6 K8 ["X"]
       12 LOADN                            R7 -1
       13 LOADN                            R8 1
       14 FASTCALL                         MATH_CLAMP ; [+2]
       15 GETIMPORT                        R5 K11 [math.clamp]
       17 CALL                             R5 3 1
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K0 ["currentValue"]
       21 GETTABLEKS                       R7 R7 K12 ["Y"]
       23 LOADN                            R8 -1
       24 LOADN                            R9 1
       25 FASTCALL                         MATH_CLAMP ; [+2]
       26 GETIMPORT                        R6 K11 [math.clamp]
       28 CALL                             R6 3 1
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K3 ["Value"]
       32 NAMECALL                         R1 R1 K13 ["setState"]
       34 CALL                             R1 2 0
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K14 ["props"]
       38 GETTABLEKS                       R3 R0 K8 ["X"]
       40 LOADN                            R4 0
       41 JUMPIFNOTLE                      R3 R4 ; [+5]
       43 GETTABLEKS                       R3 R0 K8 ["X"]
       45 MINUS                            R2 R3
       46 JUMPIF                           R2 ; [+1]
       47 LOADN                            R2 0
       48 GETTABLEKS                       R4 R0 K8 ["X"]
       50 LOADN                            R5 0
       51 JUMPIFNOTLE                      R5 R4 ; [+4]
       53 GETTABLEKS                       R3 R0 K8 ["X"]
       55 JUMPIF                           R3 ; [+1]
       56 LOADN                            R3 0
       57 GETTABLEKS                       R5 R0 K12 ["Y"]
       59 LOADN                            R6 0
       60 JUMPIFNOTLE                      R5 R6 ; [+5]
       62 GETTABLEKS                       R5 R0 K12 ["Y"]
       64 MINUS                            R4 R5
       65 JUMPIF                           R4 ; [+1]
       66 LOADN                            R4 0
       67 GETTABLEKS                       R6 R0 K12 ["Y"]
       69 LOADN                            R7 0
       70 JUMPIFNOTLE                      R7 R6 ; [+4]
       72 GETTABLEKS                       R5 R0 K12 ["Y"]
       74 JUMPIF                           R5 ; [+1]
       75 LOADN                            R5 0
       76 GETGLOBAL                        R6 K15 ["triggerValueChanged"]
       78 MOVE                             R7 R1
       79 GETUPVAL                         R8 2
       80 GETTABLEKS                       R8 R8 K16 ["FacsNames"]
       82 GETTABLEKS                       R8 R8 K17 ["EyesLookRight"]
       84 MOVE                             R9 R2
       85 CALL                             R6 3 0
       86 GETGLOBAL                        R6 K15 ["triggerValueChanged"]
       88 MOVE                             R7 R1
       89 GETUPVAL                         R8 2
       90 GETTABLEKS                       R8 R8 K16 ["FacsNames"]
       92 GETTABLEKS                       R8 R8 K18 ["EyesLookLeft"]
       94 MOVE                             R9 R3
       95 CALL                             R6 3 0
       96 GETGLOBAL                        R6 K15 ["triggerValueChanged"]
       98 MOVE                             R7 R1
       99 GETUPVAL                         R8 2
      100 GETTABLEKS                       R8 R8 K16 ["FacsNames"]
      102 GETTABLEKS                       R8 R8 K19 ["EyesLookUp"]
      104 MOVE                             R9 R4
      105 CALL                             R6 3 0
      106 GETGLOBAL                        R6 K15 ["triggerValueChanged"]
      108 MOVE                             R7 R1
      109 GETUPVAL                         R8 2
      110 GETTABLEKS                       R8 R8 K16 ["FacsNames"]
      112 GETTABLEKS                       R8 R8 K20 ["EyesLookDown"]
      114 MOVE                             R9 R5
      115 CALL                             R6 3 0
      116 RETURN                           R0 0

PROTO_27:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R0 K0 ["props"]
        4 GETTABLEKS                       R4 R4 K1 ["Stylizer"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K3 ["FacsControlToFaceSliderInfoMap"]
        9 GETTABLEKS                       R5 R6 K2 ["EyesDragBox"]
       11 GETIMPORT                        R6 K6 [Vector2.new]
       13 GETTABLEKS                       R8 R5 K7 ["currentValue"]
       15 GETTABLEKS                       R8 R8 K8 ["X"]
       17 LOADN                            R9 -1
       18 LOADN                            R10 1
       19 FASTCALL                         MATH_CLAMP ; [+2]
       20 GETIMPORT                        R7 K11 [math.clamp]
       22 CALL                             R7 3 1
       23 GETTABLEKS                       R9 R5 K7 ["currentValue"]
       25 GETTABLEKS                       R9 R9 K12 ["Y"]
       27 LOADN                            R10 -1
       28 LOADN                            R11 1
       29 FASTCALL                         MATH_CLAMP ; [+2]
       30 GETIMPORT                        R8 K11 [math.clamp]
       32 CALL                             R8 3 1
       33 CALL                             R6 2 1
       34 LOADB                            R7 1
       35 GETTABLEKS                       R8 R6 K8 ["X"]
       37 JUMPIFEQKN                       R8 K13 [-1] ; [+27]
       39 LOADB                            R7 1
       40 GETTABLEKS                       R8 R6 K8 ["X"]
       42 JUMPIFEQKN                       R8 K14 [1] ; [+22]
       44 LOADB                            R7 1
       45 GETTABLEKS                       R8 R6 K12 ["Y"]
       47 JUMPIFEQKN                       R8 K13 [-1] ; [+17]
       49 LOADB                            R7 1
       50 GETTABLEKS                       R8 R6 K12 ["Y"]
       52 JUMPIFEQKN                       R8 K14 [1] ; [+12]
       54 LOADB                            R7 0
       55 GETTABLEKS                       R8 R6 K8 ["X"]
       57 JUMPIFNOTEQKN                    R8 K15 [0] ; [+7]
       59 GETTABLEKS                       R8 R6 K12 ["Y"]
       61 JUMPIFEQKN                       R8 K16 [0] ; [+2]
       63 LOADB                            R7 0 +1
       64 LOADB                            R7 1
       65 GETUPVAL                         R8 1
       66 GETTABLEKS                       R8 R8 K17 ["createElement"]
       68 GETUPVAL                         R9 2
       69 DUPTABLE                         R10 K34 [{["Style"], ["Disabled"] = False, ["MinX"] = -1, ["MaxX"] = 1, ["MinY"] = -1, ["MaxY"] = 1, ["Tooltip"] = "EyesLook", ["Value"], ["OnRightClick"], ["OnChangeBegan"], ["OnValueChanged"], ["Position"], ["Size"], ["AnchorPoint"]}]
       70 JUMPIFNOT                        R7 ; [+3]
       71 GETTABLEKS                       R11 R4 K35 ["faceDragBoxMaxValueTheme"]
       73 JUMP                             ; [+2]
       74 GETTABLEKS                       R11 R4 K36 ["faceDragBoxTheme"]
       76 SETTABLEKS                       R11 R10 K18 ["Style"]
       78 SETTABLEKS                       R6 R10 K27 ["Value"]
       80 NEWCLOSURE                       R11 P0
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R11 R10 K28 ["OnRightClick"]
       86 NEWCLOSURE                       R11 P1
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U3
       89 SETTABLEKS                       R11 R10 K29 ["OnChangeBegan"]
       91 NEWCLOSURE                       R11 P2
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U3
       95 SETTABLEKS                       R11 R10 K30 ["OnValueChanged"]
       97 GETIMPORT                        R11 K38 [UDim2.new]
       99 GETTABLEKS                       R12 R5 K39 ["position"]
      101 GETTABLEKS                       R12 R12 K8 ["X"]
      103 GETTABLEKS                       R12 R12 K40 ["Scale"]
      105 GETTABLEKS                       R14 R5 K39 ["position"]
      107 GETTABLEKS                       R14 R14 K8 ["X"]
      109 GETTABLEKS                       R14 R14 K41 ["Offset"]
      111 GETTABLEKS                       R15 R0 K42 ["state"]
      113 GETTABLEKS                       R15 R15 K43 ["scaleFactor"]
      115 MUL                              R13 R14 R15
      116 GETTABLEKS                       R14 R5 K39 ["position"]
      118 GETTABLEKS                       R14 R14 K12 ["Y"]
      120 GETTABLEKS                       R14 R14 K40 ["Scale"]
      122 GETTABLEKS                       R16 R5 K39 ["position"]
      124 GETTABLEKS                       R16 R16 K12 ["Y"]
      126 GETTABLEKS                       R16 R16 K41 ["Offset"]
      128 GETTABLEKS                       R17 R0 K42 ["state"]
      130 GETTABLEKS                       R17 R17 K43 ["scaleFactor"]
      132 MUL                              R15 R16 R17
      133 CALL                             R11 4 1
      134 SETTABLEKS                       R11 R10 K31 ["Position"]
      136 GETIMPORT                        R11 K38 [UDim2.new]
      138 LOADN                            R12 0
      139 LOADN                            R14 36
      140 GETTABLEKS                       R15 R0 K42 ["state"]
      142 GETTABLEKS                       R15 R15 K43 ["scaleFactor"]
      144 MUL                              R13 R14 R15
      145 LOADN                            R14 0
      146 LOADN                            R16 28
      147 GETTABLEKS                       R17 R0 K42 ["state"]
      149 GETTABLEKS                       R17 R17 K43 ["scaleFactor"]
      151 MUL                              R15 R16 R17
      152 CALL                             R11 4 1
      153 SETTABLEKS                       R11 R10 K32 ["Size"]
      155 GETIMPORT                        R11 K6 [Vector2.new]
      157 LOADK                            R12 K44 [0.5]
      158 LOADK                            R13 K44 [0.5]
      159 CALL                             R11 2 1
      160 SETTABLEKS                       R11 R10 K33 ["AnchorPoint"]
      162 CALL                             R8 2 1
      163 SETTABLEKS                       R8 R3 K2 ["EyesDragBox"]
      165 GETUPVAL                         R8 1
      166 GETTABLEKS                       R8 R8 K45 ["createFragment"]
      168 MOVE                             R9 R3
      169 CALL                             R8 1 -1
      170 RETURN                           R8 -1

PROTO_28:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R3 R0 K0 ["Tracks"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["FacsNames"]
        7 GETTABLEKS                       R4 R4 K2 ["EyesLookLeft"]
        9 GETTABLE                         R2 R3 R4
       10 GETTABLEKS                       R4 R0 K0 ["Tracks"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K1 ["FacsNames"]
       15 GETTABLEKS                       R5 R5 K3 ["EyesLookRight"]
       17 GETTABLE                         R3 R4 R5
       18 GETTABLEKS                       R5 R0 K0 ["Tracks"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K1 ["FacsNames"]
       23 GETTABLEKS                       R6 R6 K4 ["EyesLookUp"]
       25 GETTABLE                         R4 R5 R6
       26 GETTABLEKS                       R6 R0 K0 ["Tracks"]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K1 ["FacsNames"]
       31 GETTABLEKS                       R7 R7 K5 ["EyesLookDown"]
       33 GETTABLE                         R5 R6 R7
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K7 ["FacsControlToFaceSliderInfoMap"]
       37 GETTABLEKS                       R6 R7 K6 ["EyesDragBox"]
       39 JUMPIF                           R2 ; [+3]
       40 JUMPIF                           R3 ; [+2]
       41 JUMPIF                           R4 ; [+1]
       42 JUMPIFNOT                        R5 ; [+54]
       43 JUMPIFNOT                        R2 ; [+7]
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R7 R7 K8 ["getValue"]
       47 MOVE                             R8 R2
       48 MOVE                             R9 R1
       49 CALL                             R7 2 1
       50 JUMPIF                           R7 ; [+1]
       51 LOADN                            R7 0
       52 JUMPIFNOT                        R3 ; [+7]
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K8 ["getValue"]
       56 MOVE                             R9 R3
       57 MOVE                             R10 R1
       58 CALL                             R8 2 1
       59 JUMPIF                           R8 ; [+1]
       60 LOADN                            R8 0
       61 JUMPIFNOT                        R4 ; [+7]
       62 GETUPVAL                         R9 2
       63 GETTABLEKS                       R9 R9 K8 ["getValue"]
       65 MOVE                             R10 R4
       66 MOVE                             R11 R1
       67 CALL                             R9 2 1
       68 JUMPIF                           R9 ; [+1]
       69 LOADN                            R9 0
       70 JUMPIFNOT                        R5 ; [+7]
       71 GETUPVAL                         R10 2
       72 GETTABLEKS                       R10 R10 K8 ["getValue"]
       74 MOVE                             R11 R5
       75 MOVE                             R12 R1
       76 CALL                             R10 2 1
       77 JUMPIF                           R10 ; [+1]
       78 LOADN                            R10 0
       79 JUMPIFEQKN                       R7 K9 [0] ; [+3]
       81 MOVE                             R11 R7
       82 JUMPIF                           R11 ; [+1]
       83 MINUS                            R11 R8
       84 JUMPIFEQKN                       R9 K9 [0] ; [+3]
       86 MINUS                            R12 R9
       87 JUMPIF                           R12 ; [+1]
       88 MOVE                             R12 R10
       89 GETIMPORT                        R13 K12 [Vector2.new]
       91 MOVE                             R14 R11
       92 MOVE                             R15 R12
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R6 K13 ["currentValue"]
       96 RETURN                           R0 0
       97 GETTABLEKS                       R7 R6 K14 ["defaultValue"]
       99 SETTABLEKS                       R7 R6 K13 ["currentValue"]
      101 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["currentlyEditedFacsProperties"]
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETIMPORT                        R0 K3 [ipairs]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["state"]
       11 GETTABLEKS                       R1 R1 K1 ["currentlyEditedFacsProperties"]
       13 CALL                             R0 1 3
       14 FORGPREP_INEXT                   R0
       15 GETGLOBAL                        R5 K4 ["triggerValueChanged"]
       17 GETUPVAL                         R6 1
       18 MOVE                             R7 R4
       19 LOADN                            R8 0
       20 CALL                             R5 3 0
       21 FORGLOOP                         R0 2 [inext] ; [-7]
       23 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 NEWTABLE                         R3 0 0
        4 DUPTABLE                         R6 K3 [{"Text", "OnItemClicked"}]
        5 LOADK                            R9 K4 ["ContextMenu"]
        6 LOADK                            R10 K5 ["ResetSelected"]
        7 NAMECALL                         R7 R1 K6 ["getText"]
        9 CALL                             R7 3 1
       10 SETTABLEKS                       R7 R6 K1 ["Text"]
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 SETTABLEKS                       R7 R6 K2 ["OnItemClicked"]
       17 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       19 MOVE                             R5 R3
       20 GETIMPORT                        R4 K9 [table.insert]
       22 CALL                             R4 2 0
       23 RETURN                           R3 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        4 GETTABLEKS                       R4 R2 K3 ["Instances"]
        6 GETTABLEKS                       R3 R4 K2 ["Root"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R1 K4 ["Playhead"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["getFaceControls"]
       16 GETTABLEKS                       R6 R1 K6 ["RootInstance"]
       18 CALL                             R5 1 1
       19 JUMPIFEQKNIL                     R5 ; [+43]
       21 GETIMPORT                        R6 K8 [pairs]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K9 ["FacsNames"]
       26 CALL                             R6 1 3
       27 FORGPREP_NEXT                    R6
       28 GETUPVAL                         R12 2
       29 GETTABLEKS                       R12 R12 K10 ["FacsControlToFaceSliderInfoMap"]
       31 GETTABLE                         R11 R12 R10
       32 JUMPIFNOT                        R3 ; [+26]
       33 GETTABLEKS                       R12 R3 K11 ["Tracks"]
       35 JUMPIFEQKNIL                     R12 ; [+23]
       37 GETTABLEKS                       R13 R3 K11 ["Tracks"]
       39 GETTABLE                         R12 R13 R10
       40 JUMPIFEQKNIL                     R12 ; [+10]
       42 GETTABLEKS                       R13 R12 K12 ["Type"]
       44 GETUPVAL                         R14 1
       45 GETTABLEKS                       R14 R14 K13 ["TRACK_TYPES"]
       47 GETTABLEKS                       R14 R14 K14 ["Facs"]
       49 JUMPIFEQ                         R13 R14 ; [+11]
       51 LOADN                            R13 0
       52 SETTABLE                         R13 R5 R10
       53 JUMPIFNOT                        R11 ; [+7]
       54 GETTABLEKS                       R13 R11 K15 ["defaultValue"]
       56 SETTABLEKS                       R13 R11 K16 ["currentValue"]
       58 JUMP                             ; [+2]
       59 LOADN                            R12 0
       60 SETTABLE                         R12 R5 R10
       61 FORGLOOP                         R6 2 ; [-34]
       63 GETTABLEKS                       R6 R3 K11 ["Tracks"]
       65 JUMPIFNOTEQKNIL                  R6 ; [+2]
       67 RETURN                           R0 0
       68 GETGLOBAL                        R7 K17 ["getTrackValuesForEyeDragBox"]
       70 MOVE                             R8 R3
       71 MOVE                             R9 R4
       72 CALL                             R7 2 0
       73 GETIMPORT                        R7 K8 [pairs]
       75 GETTABLEKS                       R8 R3 K11 ["Tracks"]
       77 CALL                             R7 1 3
       78 FORGPREP_NEXT                    R7
       79 GETUPVAL                         R13 2
       80 GETTABLEKS                       R13 R13 K10 ["FacsControlToFaceSliderInfoMap"]
       82 GETTABLE                         R12 R13 R10
       83 LOADK                            R13 K2 ["Root"]
       84 SETTABLEKS                       R13 R11 K18 ["Instance"]
       86 LOADNIL                          R13
       87 JUMPIFEQKNIL                     R12 ; [+83]
       89 GETUPVAL                         R15 1
       90 GETTABLEKS                       R15 R15 K19 ["FacsCrossMappings"]
       92 GETTABLE                         R14 R15 R10
       93 GETTABLEKS                       R15 R14 K20 ["sliderGroup"]
       95 GETTABLEKS                       R16 R12 K15 ["defaultValue"]
       97 SETTABLEKS                       R16 R12 K16 ["currentValue"]
       99 GETUPVAL                         R16 3
      100 GETTABLEKS                       R16 R16 K21 ["getValue"]
      102 MOVE                             R17 R11
      103 MOVE                             R18 R4
      104 CALL                             R16 2 1
      105 MOVE                             R13 R16
      106 JUMPIFEQKNIL                     R13 ; [+64]
      108 JUMPIFNOT                        R15 ; [+60]
      109 LOADNIL                          R16
      110 GETTABLEKS                       R17 R14 K22 ["indexInGroup"]
      112 JUMPIFNOTEQKN                    R17 K23 [1] ; [+3]
      114 GETTABLEN                        R16 R15 2
      115 JUMP                             ; [+1]
      116 GETTABLEN                        R16 R15 1
      117 GETTABLEKS                       R17 R14 K22 ["indexInGroup"]
      119 JUMPIFNOTEQKN                    R17 K23 [1] ; [+40]
      121 MULK                             R19 R13 K24 [0.5]
      122 SUBRK                            R18 K24 [0.5] R19
      123 LOADN                            R19 0
      124 LOADN                            R20 1
      125 FASTCALL                         MATH_CLAMP ; [+2]
      126 GETIMPORT                        R17 K27 [math.clamp]
      128 CALL                             R17 3 1
      129 SETTABLEKS                       R17 R12 K16 ["currentValue"]
      131 GETUPVAL                         R18 2
      132 GETTABLEKS                       R18 R18 K10 ["FacsControlToFaceSliderInfoMap"]
      134 GETTABLE                         R17 R18 R16
      135 GETTABLEKS                       R18 R17 K16 ["currentValue"]
      137 LOADK                            R19 K24 [0.5]
      138 JUMPIFNOTLT                      R19 R18 ; [+32]
      140 LOADN                            R18 0
      141 GETTABLEKS                       R20 R3 K11 ["Tracks"]
      143 GETTABLE                         R19 R20 R16
      144 JUMPIFNOT                        R19 ; [+7]
      145 GETUPVAL                         R20 3
      146 GETTABLEKS                       R20 R20 K21 ["getValue"]
      148 MOVE                             R21 R19
      149 MOVE                             R22 R4
      150 CALL                             R20 2 1
      151 MOVE                             R18 R20
      152 MULK                             R21 R18 K24 [0.5]
      153 ADDK                             R20 R21 K24 [0.5]
      154 LOADN                            R21 0
      155 JUMPIFNOTLT                      R21 R18 ; [+15]
      157 SETTABLEKS                       R20 R12 K16 ["currentValue"]
      159 JUMP                             ; [+11]
      160 LOADK                            R18 K24 [0.5]
      161 MULK                             R19 R13 K24 [0.5]
      162 ADD                              R17 R18 R19
      163 LOADN                            R18 0
      164 JUMPIFNOTLT                      R18 R13 ; [+6]
      166 SETTABLEKS                       R17 R12 K16 ["currentValue"]
      168 JUMP                             ; [+2]
      169 SETTABLEKS                       R13 R12 K16 ["currentValue"]
      171 FORGLOOP                         R7 2 ; [-93]
      173 RETURN                           R0 0

PROTO_32:
        0 GETGLOBAL                        R0 K0 ["getFacsListData"]
        2 CALL                             R0 0 1
        3 GETIMPORT                        R1 K2 [ipairs]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 3
        7 FORGPREP_INEXT                   R1
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K3 ["FacsControlToFaceSliderInfoMap"]
       11 GETTABLEKS                       R8 R5 K4 ["Name"]
       13 GETTABLE                         R6 R7 R8
       14 JUMPIFNOT                        R6 ; [+4]
       15 GETTABLEKS                       R7 R6 K5 ["defaultValue"]
       17 SETTABLEKS                       R7 R6 K6 ["currentValue"]
       19 FORGLOOP                         R1 2 [inext] ; [-12]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K3 ["FacsControlToFaceSliderInfoMap"]
       24 GETTABLEKS                       R1 R2 K7 ["EyesDragBox"]
       26 GETTABLEKS                       R2 R1 K5 ["defaultValue"]
       28 SETTABLEKS                       R2 R1 K6 ["currentValue"]
       30 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R2 R1 K0 ["RootInstance"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["RootInstance"]
        6 JUMPIFEQ                         R2 R3 ; [+19]
        8 GETTABLEKS                       R2 R0 K1 ["props"]
       10 GETTABLEKS                       R2 R2 K0 ["RootInstance"]
       12 JUMPIFEQKNIL                     R2 ; [+6]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["resetAllFacsValuesInFaceControls"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 GETGLOBAL                        R3 K3 ["resetAllValuesInMapping"]
       21 CALL                             R3 0 0
       22 GETGLOBAL                        R3 K4 ["handleFocusFace"]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 0
       26 GETTABLEKS                       R2 R1 K5 ["ShowFaceControlsEditorPanel"]
       28 GETTABLEKS                       R3 R0 K5 ["ShowFaceControlsEditorPanel"]
       30 JUMPIFEQ                         R2 R3 ; [+12]
       32 GETTABLEKS                       R2 R1 K5 ["ShowFaceControlsEditorPanel"]
       34 JUMPIFNOTEQKB                    R2 TRUE ; [+8]
       36 LOADB                            R2 1
       37 SETTABLEKS                       R2 R0 K5 ["ShowFaceControlsEditorPanel"]
       39 GETGLOBAL                        R2 K4 ["handleFocusFace"]
       41 MOVE                             R3 R1
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_34:
        0 LOADN                            R2 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R2 1
        3 GETTABLEKS                       R4 R0 K1 ["Instances"]
        5 GETTABLEKS                       R3 R4 K0 ["Root"]
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R2 1
        9 GETIMPORT                        R4 K3 [pairs]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["FacsNames"]
       14 CALL                             R4 1 3
       15 FORGPREP_NEXT                    R4
       16 GETTABLEKS                       R10 R3 K5 ["Tracks"]
       18 GETTABLE                         R9 R10 R8
       19 JUMPIFNOT                        R9 ; [+10]
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R10 R10 K6 ["getValue"]
       23 MOVE                             R11 R9
       24 MOVE                             R12 R1
       25 CALL                             R10 2 1
       26 JUMPIFNOT                        R10 ; [+3]
       27 JUMPIFEQKN                       R10 K7 [0] ; [+2]
       29 ADDK                             R2 R2 K8 [1]
       30 FORGLOOP                         R4 2 ; [-15]
       32 RETURN                           R2 1

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["AutoFocusFaceEnabled"]
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["focusCameraOnFace"]
        9 GETTABLEKS                       R2 R0 K2 ["RootInstance"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0
       13 GETGLOBAL                        R1 K3 ["focusFace"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["getFaceControls"]
        9 GETTABLEKS                       R3 R0 K5 ["RootInstance"]
       11 CALL                             R2 1 1
       12 JUMPIFEQKNIL                     R2 ; [+43]
       14 GETTABLEKS                       R3 R2 K6 ["Parent"]
       16 JUMPIFNOT                        R3 ; [+5]
       17 LOADK                            R6 K7 ["BasePart"]
       18 NAMECALL                         R4 R3 K8 ["IsA"]
       20 CALL                             R4 2 1
       21 JUMPIF                           R4 ; [+1]
       22 RETURN                           R0 0
       23 LOADK                            R4 K9 [0.75]
       24 LOADK                            R4 K9 [0.75]
       25 GETTABLEKS                       R5 R1 K10 ["FieldOfView"]
       27 JUMPIFEQKN                       R5 K11 [70] ; [+5]
       29 GETTABLEKS                       R6 R1 K10 ["FieldOfView"]
       31 DIVK                             R5 R6 K11 [70]
       32 DIVRK                            R4 K9 [0.75] R5
       33 GETTABLEKS                       R6 R3 K12 ["Position"]
       35 GETTABLEKS                       R8 R3 K13 ["CFrame"]
       37 GETTABLEKS                       R8 R8 K14 ["LookVector"]
       39 MULK                             R9 R4 K15 [2]
       40 MUL                              R7 R8 R9
       41 ADD                              R5 R6 R7
       42 GETIMPORT                        R6 K17 [CFrame.new]
       44 MOVE                             R7 R5
       45 GETTABLEKS                       R8 R3 K13 ["CFrame"]
       47 GETTABLEKS                       R8 R8 K12 ["Position"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R1 K13 ["CFrame"]
       52 GETTABLEKS                       R6 R3 K13 ["CFrame"]
       54 SETTABLEKS                       R6 R1 K18 ["Focus"]
       56 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["props"]
        6 GETTABLEKS                       R1 R1 K1 ["SetSymmetryEnabled"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["props"]
       11 GETTABLEKS                       R3 R3 K2 ["SymmetryEnabled"]
       13 NOT                              R2 R3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K0 ["props"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K0 ["props"]
       22 GETTABLEKS                       R3 R3 K2 ["SymmetryEnabled"]
       24 NOT                              R2 R3
       25 SETTABLEKS                       R2 R1 K2 ["SymmetryEnabled"]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K0 ["props"]
       30 GETTABLEKS                       R1 R1 K1 ["SetSymmetryEnabled"]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K0 ["props"]
       35 GETTABLEKS                       R2 R2 K2 ["SymmetryEnabled"]
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+29]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K1 ["AutoFocusFaceEnabled"]
        8 NOT                              R1 R2
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K0 ["props"]
       12 GETTABLEKS                       R2 R2 K2 ["SetAutoFocusFaceEnabled"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 GETGLOBAL                        R2 K3 ["handleFocusFace"]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K4 ["Dictionary"]
       21 GETTABLEKS                       R3 R3 K5 ["join"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K0 ["props"]
       26 DUPTABLE                         R5 K6 [{"AutoFocusFaceEnabled"}]
       27 SETTABLEKS                       R1 R5 K1 ["AutoFocusFaceEnabled"]
       29 CALL                             R3 2 -1
       30 CALL                             R2 -1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R1 R1 K0 ["props"]
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R3 R3 K0 ["props"]
       38 GETTABLEKS                       R3 R3 K1 ["AutoFocusFaceEnabled"]
       40 NOT                              R2 R3
       41 SETTABLEKS                       R2 R1 K1 ["AutoFocusFaceEnabled"]
       43 GETUPVAL                         R1 1
       44 GETTABLEKS                       R1 R1 K0 ["props"]
       46 GETTABLEKS                       R1 R1 K2 ["SetAutoFocusFaceEnabled"]
       48 GETUPVAL                         R2 1
       49 GETTABLEKS                       R2 R2 K0 ["props"]
       51 GETTABLEKS                       R2 R2 K1 ["AutoFocusFaceEnabled"]
       53 CALL                             R1 1 0
       54 GETGLOBAL                        R1 K3 ["handleFocusFace"]
       56 GETUPVAL                         R2 1
       57 GETTABLEKS                       R2 R2 K0 ["props"]
       59 CALL                             R1 1 0
       60 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AddWaypoint"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["resetAllFacsValuesInFaceControls"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["RootInstance"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K4 ["Instances"]
       14 GETTABLEKS                       R0 R1 K3 ["Root"]
       16 GETGLOBAL                        R1 K5 ["resetAllValuesInMapping"]
       18 CALL                             R1 0 0
       19 GETIMPORT                        R1 K7 [pairs]
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K8 ["FacsNames"]
       24 CALL                             R1 1 3
       25 FORGPREP_NEXT                    R1
       26 GETTABLEKS                       R7 R0 K9 ["Tracks"]
       28 GETTABLE                         R6 R7 R5
       29 JUMPIFNOT                        R6 ; [+15]
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R7 R7 K10 ["getValue"]
       33 MOVE                             R8 R6
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K11 ["Playhead"]
       37 CALL                             R7 2 1
       38 JUMPIFNOT                        R7 ; [+6]
       39 GETGLOBAL                        R7 K12 ["triggerValueChanged"]
       41 GETUPVAL                         R8 0
       42 MOVE                             R9 R5
       43 LOADN                            R10 0
       44 CALL                             R7 3 0
       45 FORGLOOP                         R1 2 ; [-20]
       47 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["canUseFaceControlsEditor"]
        9 GETTABLEKS                       R4 R2 K3 ["RootInstance"]
       11 CALL                             R3 1 1
       12 JUMPIF                           R3 ; [+4]
       13 GETTABLEKS                       R4 R0 K4 ["hideFaceControlsEditor"]
       15 CALL                             R4 0 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R4 R0 K5 ["state"]
       19 GETTABLEKS                       R5 R4 K6 ["showContextMenu"]
       21 GETTABLEKS                       R6 R2 K7 ["Stylizer"]
       23 GETTABLEKS                       R7 R0 K0 ["props"]
       25 GETTABLEKS                       R7 R7 K7 ["Stylizer"]
       27 GETTABLEKS                       R8 R2 K8 ["AnimationData"]
       29 GETTABLEKS                       R9 R2 K9 ["Playhead"]
       31 GETTABLEKS                       R10 R2 K10 ["PluginActions"]
       33 LOADK                            R13 K11 ["FocusCamera"]
       34 NAMECALL                         R11 R10 K12 ["get"]
       36 CALL                             R11 2 1
       37 LOADB                            R12 1
       38 SETTABLEKS                       R12 R11 K13 ["Enabled"]
       40 JUMPIFEQKNIL                     R8 ; [+4]
       42 NAMECALL                         R11 R0 K14 ["getCurrentValues"]
       44 CALL                             R11 1 0
       45 GETGLOBAL                        R11 K15 ["getFacsKeysWithNonZerovalueCount"]
       47 MOVE                             R12 R8
       48 MOVE                             R13 R9
       49 CALL                             R11 2 1
       50 LOADNIL                          R12
       51 JUMPIFNOTEQKN                    R11 K16 [0] ; [+4]
       53 GETUPVAL                         R13 1
       54 GETTABLEKS                       R12 R13 K17 ["Disabled"]
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R13 R13 K18 ["createElement"]
       59 GETUPVAL                         R14 3
       60 NEWTABLE                         R15 16 0
       62 LOADK                            R16 K19 ["FaceControlsEditor"]
       63 SETTABLEKS                       R16 R15 K20 ["Id"]
       65 LOADK                            R18 K21 ["Title"]
       66 LOADK                            R19 K19 ["FaceControlsEditor"]
       67 NAMECALL                         R16 R1 K22 ["getText"]
       69 CALL                             R16 3 1
       70 SETTABLEKS                       R16 R15 K21 ["Title"]
       72 LOADK                            R16 K19 ["FaceControlsEditor"]
       73 SETTABLEKS                       R16 R15 K23 ["Name"]
       75 GETIMPORT                        R16 K27 [Enum.ZIndexBehavior.Global]
       77 SETTABLEKS                       R16 R15 K25 ["ZIndexBehavior"]
       79 GETIMPORT                        R16 K30 [Enum.InitialDockState.Left]
       81 SETTABLEKS                       R16 R15 K28 ["InitialDockState"]
       83 LOADB                            R16 1
       84 SETTABLEKS                       R16 R15 K31 ["InitialEnabled"]
       86 LOADB                            R16 1
       87 SETTABLEKS                       R16 R15 K32 ["InitialEnabledShouldOverrideRestore"]
       89 GETUPVAL                         R16 4
       90 SETTABLEKS                       R16 R15 K33 ["Size"]
       92 GETUPVAL                         R16 5
       93 SETTABLEKS                       R16 R15 K34 ["MinSize"]
       95 GETTABLEKS                       R16 R0 K4 ["hideFaceControlsEditor"]
       97 SETTABLEKS                       R16 R15 K35 ["OnClose"]
       99 LOADB                            R16 1
      100 SETTABLEKS                       R16 R15 K13 ["Enabled"]
      102 GETUPVAL                         R16 2
      103 GETTABLEKS                       R16 R16 K36 ["Ref"]
      105 GETUPVAL                         R18 6
      106 CALL                             R18 0 1
      107 JUMPIF                           R18 ; [+3]
      108 GETTABLEKS                       R17 R0 K37 ["onDockWidgetLoaded"]
      110 JUMP                             ; [+1]
      111 LOADNIL                          R17
      112 SETTABLE                         R17 R15 R16
      113 DUPTABLE                         R16 K39 [{"Container"}]
      114 GETUPVAL                         R17 2
      115 GETTABLEKS                       R17 R17 K18 ["createElement"]
      117 GETUPVAL                         R18 7
      118 NEWTABLE                         R19 8 0
      120 LOADN                            R20 0
      121 SETTABLEKS                       R20 R19 K40 ["BorderSizePixel"]
      123 GETTABLEKS                       R20 R6 K41 ["backgroundColor"]
      125 SETTABLEKS                       R20 R19 K42 ["BackgroundColor3"]
      127 GETIMPORT                        R20 K45 [UDim2.new]
      129 LOADN                            R21 1
      130 LOADN                            R22 0
      131 LOADN                            R23 1
      132 LOADN                            R24 0
      133 CALL                             R20 4 1
      134 SETTABLEKS                       R20 R19 K33 ["Size"]
      136 LOADN                            R20 -2
      137 SETTABLEKS                       R20 R19 K46 ["ZIndex"]
      139 GETUPVAL                         R20 2
      140 GETTABLEKS                       R20 R20 K47 ["Change"]
      142 GETTABLEKS                       R20 R20 K48 ["AbsoluteSize"]
      144 GETTABLEKS                       R21 R0 K49 ["onAbsoluteSizeChange"]
      146 SETTABLE                         R21 R19 R20
      147 DUPTABLE                         R20 K55 [{"FaceFrontContainer", "FaceSideContainer", "ContextMenu", "AdditionalControlsContainer", "BottomFrame"}]
      148 GETUPVAL                         R21 2
      149 GETTABLEKS                       R21 R21 K18 ["createElement"]
      151 LOADK                            R22 K56 ["Frame"]
      152 DUPTABLE                         R23 K59 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Size"], ["Position"], ["ZIndex"] = -1}]
      153 GETTABLEKS                       R24 R6 K41 ["backgroundColor"]
      155 SETTABLEKS                       R24 R23 K42 ["BackgroundColor3"]
      157 GETIMPORT                        R24 K45 [UDim2.new]
      159 LOADN                            R25 1
      160 LOADN                            R26 0
      161 LOADN                            R27 0
      162 LOADN                            R28 213
      163 CALL                             R24 4 1
      164 SETTABLEKS                       R24 R23 K33 ["Size"]
      166 GETIMPORT                        R24 K45 [UDim2.new]
      168 LOADN                            R25 0
      169 GETUPVAL                         R26 8
      170 GETTABLEKS                       R26 R26 K60 ["faceControlsEditorDiagramPadding"]
      172 LOADN                            R27 0
      173 GETUPVAL                         R28 8
      174 GETTABLEKS                       R28 R28 K60 ["faceControlsEditorDiagramPadding"]
      176 CALL                             R24 4 1
      177 SETTABLEKS                       R24 R23 K57 ["Position"]
      179 NEWTABLE                         R24 1 2
      181 GETUPVAL                         R27 2
      182 GETTABLEKS                       R27 R27 K18 ["createElement"]
      184 LOADK                            R28 K61 ["ImageLabel"]
      185 DUPTABLE                         R29 K68 [{["AnchorPoint"], ["Size"], ["Position"], ["Image"] = "rbxasset://textures/FaceControlsEditor/face_frontView.png", ["BackgroundTransparency"] = 1, ["ImageTransparency"] = 0, ["ZIndex"] = 0}]
      186 GETIMPORT                        R30 K70 [Vector2.new]
      188 LOADN                            R31 0
      189 LOADN                            R32 0
      190 CALL                             R30 2 1
      191 SETTABLEKS                       R30 R29 K62 ["AnchorPoint"]
      193 GETIMPORT                        R30 K45 [UDim2.new]
      195 LOADN                            R31 0
      196 GETUPVAL                         R33 8
      197 GETTABLEKS                       R33 R33 K71 ["faceControlsEditorFaceFrontDiagramWidth"]
      199 GETTABLEKS                       R34 R0 K5 ["state"]
      201 GETTABLEKS                       R34 R34 K72 ["scaleFactor"]
      203 MUL                              R32 R33 R34
      204 LOADN                            R33 0
      205 GETUPVAL                         R35 8
      206 GETTABLEKS                       R35 R35 K73 ["faceControlsEditorFaceFrontDiagramHeight"]
      208 GETTABLEKS                       R36 R0 K5 ["state"]
      210 GETTABLEKS                       R36 R36 K72 ["scaleFactor"]
      212 MUL                              R34 R35 R36
      213 CALL                             R30 4 1
      214 SETTABLEKS                       R30 R29 K33 ["Size"]
      216 GETIMPORT                        R30 K45 [UDim2.new]
      218 LOADN                            R31 0
      219 LOADN                            R32 0
      220 LOADN                            R33 0
      221 LOADN                            R34 6
      222 CALL                             R30 4 1
      223 SETTABLEKS                       R30 R29 K57 ["Position"]
      225 CALL                             R27 2 1
      226 SETTABLEKS                       R27 R24 K74 ["FaceFrontViewImage"]
      228 GETGLOBAL                        R25 K75 ["makeFacsOnFaceDiagramSliderUIItems"]
      230 MOVE                             R26 R0
      231 MOVE                             R27 R7
      232 MOVE                             R28 R1
      233 CALL                             R25 3 1
      234 GETGLOBAL                        R26 K76 ["makeEyesControlDragBox"]
      236 MOVE                             R27 R0
      237 MOVE                             R28 R7
      238 MOVE                             R29 R1
      239 CALL                             R26 3 -1
      240 SETLIST                          R24 R25 -1 [1]
      242 CALL                             R21 3 1
      243 SETTABLEKS                       R21 R20 K50 ["FaceFrontContainer"]
      245 GETUPVAL                         R21 2
      246 GETTABLEKS                       R21 R21 K18 ["createElement"]
      248 LOADK                            R22 K56 ["Frame"]
      249 DUPTABLE                         R23 K77 [{["BorderSizePixel"] = 0, ["BackgroundColor3"], ["Size"], ["Position"], ["BackgroundTransparency"] = 1}]
      250 GETTABLEKS                       R24 R6 K41 ["backgroundColor"]
      252 SETTABLEKS                       R24 R23 K42 ["BackgroundColor3"]
      254 GETIMPORT                        R24 K45 [UDim2.new]
      256 LOADN                            R25 1
      257 LOADN                            R26 0
      258 LOADN                            R27 0
      259 LOADN                            R28 213
      260 CALL                             R24 4 1
      261 SETTABLEKS                       R24 R23 K33 ["Size"]
      263 GETIMPORT                        R24 K45 [UDim2.new]
      265 LOADN                            R25 0
      266 GETUPVAL                         R26 8
      267 GETTABLEKS                       R26 R26 K60 ["faceControlsEditorDiagramPadding"]
      269 LOADN                            R27 0
      270 GETUPVAL                         R30 8
      271 GETTABLEKS                       R30 R30 K78 ["faceControlsEditoSpacingBetweenDiagrams"]
      273 GETUPVAL                         R31 8
      274 GETTABLEKS                       R31 R31 K73 ["faceControlsEditorFaceFrontDiagramHeight"]
      276 ADD                              R29 R30 R31
      277 GETTABLEKS                       R30 R0 K5 ["state"]
      279 GETTABLEKS                       R30 R30 K72 ["scaleFactor"]
      281 MUL                              R28 R29 R30
      282 CALL                             R24 4 1
      283 SETTABLEKS                       R24 R23 K57 ["Position"]
      285 DUPTABLE                         R24 K80 [{"SideviewImage"}]
      286 GETUPVAL                         R25 2
      287 GETTABLEKS                       R25 R25 K18 ["createElement"]
      289 LOADK                            R26 K61 ["ImageLabel"]
      290 DUPTABLE                         R27 K83 [{["AnchorPoint"], ["Size"], ["Position"], ["Image"] = "rbxasset://textures/FaceControlsEditor/face_sideView.png", ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      291 GETIMPORT                        R28 K70 [Vector2.new]
      293 LOADN                            R29 0
      294 LOADN                            R30 0
      295 CALL                             R28 2 1
      296 SETTABLEKS                       R28 R27 K62 ["AnchorPoint"]
      298 GETIMPORT                        R28 K45 [UDim2.new]
      300 LOADN                            R29 0
      301 GETUPVAL                         R31 8
      302 GETTABLEKS                       R31 R31 K84 ["faceControlsEditorFaceSideDiagramWidth"]
      304 GETTABLEKS                       R32 R0 K5 ["state"]
      306 GETTABLEKS                       R32 R32 K72 ["scaleFactor"]
      308 MUL                              R30 R31 R32
      309 LOADN                            R31 0
      310 GETUPVAL                         R33 8
      311 GETTABLEKS                       R33 R33 K85 ["faceControlsEditorFaceSideDiagramHeight"]
      313 GETTABLEKS                       R34 R0 K5 ["state"]
      315 GETTABLEKS                       R34 R34 K72 ["scaleFactor"]
      317 MUL                              R32 R33 R34
      318 CALL                             R28 4 1
      319 SETTABLEKS                       R28 R27 K33 ["Size"]
      321 GETIMPORT                        R28 K45 [UDim2.new]
      323 LOADN                            R29 0
      324 LOADN                            R30 0
      325 LOADN                            R31 0
      326 LOADN                            R32 0
      327 CALL                             R28 4 1
      328 SETTABLEKS                       R28 R27 K57 ["Position"]
      330 CALL                             R25 2 1
      331 SETTABLEKS                       R25 R24 K79 ["SideviewImage"]
      333 CALL                             R21 3 1
      334 SETTABLEKS                       R21 R20 K51 ["FaceSideContainer"]
      336 MOVE                             R21 R5
      337 JUMPIFNOT                        R21 ; [+16]
      338 GETUPVAL                         R21 2
      339 GETTABLEKS                       R21 R21 K18 ["createElement"]
      341 GETUPVAL                         R22 9
      342 DUPTABLE                         R23 K88 [{"Actions", "OnMenuOpened"}]
      343 MOVE                             R26 R1
      344 NAMECALL                         R24 R0 K89 ["makeContextMenuActions"]
      346 CALL                             R24 2 1
      347 SETTABLEKS                       R24 R23 K86 ["Actions"]
      349 GETTABLEKS                       R24 R0 K90 ["hideContextMenu"]
      351 SETTABLEKS                       R24 R23 K87 ["OnMenuOpened"]
      353 CALL                             R21 2 1
      354 SETTABLEKS                       R21 R20 K52 ["ContextMenu"]
      356 GETUPVAL                         R21 2
      357 GETTABLEKS                       R21 R21 K18 ["createElement"]
      359 LOADK                            R22 K56 ["Frame"]
      360 DUPTABLE                         R23 K92 [{["AnchorPoint"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["ZIndex"] = 400}]
      361 GETIMPORT                        R24 K70 [Vector2.new]
      363 LOADN                            R25 0
      364 LOADN                            R26 0
      365 CALL                             R24 2 1
      366 SETTABLEKS                       R24 R23 K62 ["AnchorPoint"]
      368 GETIMPORT                        R24 K45 [UDim2.new]
      370 LOADN                            R25 0
      371 LOADN                            R26 10
      372 LOADN                            R27 1
      373 GETUPVAL                         R29 8
      374 GETTABLEKS                       R29 R29 K93 ["faceControlsEditorTogglesContainerHeight"]
      376 MINUS                            R28 R29
      377 CALL                             R24 4 1
      378 SETTABLEKS                       R24 R23 K57 ["Position"]
      380 GETIMPORT                        R24 K45 [UDim2.new]
      382 LOADN                            R25 0
      383 LOADN                            R26 200
      384 LOADN                            R27 0
      385 GETUPVAL                         R28 8
      386 GETTABLEKS                       R28 R28 K93 ["faceControlsEditorTogglesContainerHeight"]
      388 CALL                             R24 4 1
      389 SETTABLEKS                       R24 R23 K33 ["Size"]
      391 DUPTABLE                         R24 K97 [{"CheckboxesList", "CheckboxSymmetry", "CheckboxAutoFocusFace"}]
      392 GETUPVAL                         R25 2
      393 GETTABLEKS                       R25 R25 K18 ["createElement"]
      395 LOADK                            R26 K98 ["UIListLayout"]
      396 DUPTABLE                         R27 K101 [{"SortOrder", "Padding"}]
      397 GETIMPORT                        R28 K102 [Enum.SortOrder.LayoutOrder]
      399 SETTABLEKS                       R28 R27 K99 ["SortOrder"]
      401 GETIMPORT                        R28 K104 [UDim.new]
      403 LOADN                            R29 0
      404 LOADN                            R30 5
      405 CALL                             R28 2 1
      406 SETTABLEKS                       R28 R27 K100 ["Padding"]
      408 CALL                             R25 2 1
      409 SETTABLEKS                       R25 R24 K94 ["CheckboxesList"]
      411 GETUPVAL                         R25 2
      412 GETTABLEKS                       R25 R25 K18 ["createElement"]
      414 GETUPVAL                         R26 10
      415 DUPTABLE                         R27 K110 [{["Text"], ["Checked"], ["size"], ["OnClick"], ["LayoutOrder"] = 1, ["ZIndex"] = 401}]
      416 LOADK                            R30 K21 ["Title"]
      417 LOADK                            R31 K111 ["Symmetry"]
      418 NAMECALL                         R28 R1 K22 ["getText"]
      420 CALL                             R28 3 1
      421 SETTABLEKS                       R28 R27 K105 ["Text"]
      423 GETTABLEKS                       R28 R0 K0 ["props"]
      425 GETTABLEKS                       R28 R28 K112 ["SymmetryEnabled"]
      427 SETTABLEKS                       R28 R27 K106 ["Checked"]
      429 GETTABLEKS                       R28 R0 K0 ["props"]
      431 GETTABLEKS                       R28 R28 K113 ["elementSize"]
      433 SETTABLEKS                       R28 R27 K107 ["size"]
      435 NEWCLOSURE                       R28 P0
      436 CAPTURE                          UPVAL U6
      437 CAPTURE                          VAL R0
      438 SETTABLEKS                       R28 R27 K108 ["OnClick"]
      440 CALL                             R25 2 1
      441 SETTABLEKS                       R25 R24 K95 ["CheckboxSymmetry"]
      443 GETUPVAL                         R25 2
      444 GETTABLEKS                       R25 R25 K18 ["createElement"]
      446 GETUPVAL                         R26 10
      447 DUPTABLE                         R27 K115 [{["Text"], ["Checked"], ["size"], ["LayoutOrder"] = 2, ["OnClick"]}]
      448 LOADK                            R30 K21 ["Title"]
      449 LOADK                            R31 K116 ["AutoFocusFace"]
      450 NAMECALL                         R28 R1 K22 ["getText"]
      452 CALL                             R28 3 1
      453 SETTABLEKS                       R28 R27 K105 ["Text"]
      455 GETTABLEKS                       R28 R0 K0 ["props"]
      457 GETTABLEKS                       R28 R28 K117 ["AutoFocusFaceEnabled"]
      459 SETTABLEKS                       R28 R27 K106 ["Checked"]
      461 GETTABLEKS                       R28 R0 K0 ["props"]
      463 GETTABLEKS                       R28 R28 K113 ["elementSize"]
      465 SETTABLEKS                       R28 R27 K107 ["size"]
      467 NEWCLOSURE                       R28 P1
      468 CAPTURE                          UPVAL U6
      469 CAPTURE                          VAL R0
      470 CAPTURE                          UPVAL U11
      471 SETTABLEKS                       R28 R27 K108 ["OnClick"]
      473 CALL                             R25 2 1
      474 SETTABLEKS                       R25 R24 K96 ["CheckboxAutoFocusFace"]
      476 CALL                             R21 3 1
      477 SETTABLEKS                       R21 R20 K53 ["AdditionalControlsContainer"]
      479 GETUPVAL                         R21 2
      480 GETTABLEKS                       R21 R21 K18 ["createElement"]
      482 LOADK                            R22 K56 ["Frame"]
      483 DUPTABLE                         R23 K118 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      484 GETIMPORT                        R24 K45 [UDim2.new]
      486 LOADN                            R25 1
      487 LOADN                            R26 0
      488 LOADN                            R27 0
      489 LOADN                            R28 52
      490 CALL                             R24 4 1
      491 SETTABLEKS                       R24 R23 K33 ["Size"]
      493 GETIMPORT                        R24 K45 [UDim2.new]
      495 LOADN                            R25 0
      496 LOADN                            R26 0
      497 LOADN                            R27 1
      498 LOADN                            R28 0
      499 CALL                             R24 4 1
      500 SETTABLEKS                       R24 R23 K57 ["Position"]
      502 GETIMPORT                        R24 K70 [Vector2.new]
      504 LOADN                            R25 0
      505 LOADN                            R26 1
      506 CALL                             R24 2 1
      507 SETTABLEKS                       R24 R23 K62 ["AnchorPoint"]
      509 GETTABLEKS                       R24 R6 K119 ["ikTheme"]
      511 GETTABLEKS                       R24 R24 K120 ["headerColor"]
      513 SETTABLEKS                       R24 R23 K42 ["BackgroundColor3"]
      515 DUPTABLE                         R24 K122 [{"WideResetAllButton"}]
      516 GETUPVAL                         R25 2
      517 GETTABLEKS                       R25 R25 K18 ["createElement"]
      519 GETUPVAL                         R26 12
      520 DUPTABLE                         R27 K127 [{["Text"], ["AnchorPoint"], ["Position"], ["IsRound"] = True, ["Size"], ["StyleModifier"], ["LayoutOrder"] = 3, ["OnClick"]}]
      521 LOADK                            R30 K21 ["Title"]
      522 LOADK                            R31 K128 ["ResetAll"]
      523 NAMECALL                         R28 R1 K22 ["getText"]
      525 CALL                             R28 3 1
      526 SETTABLEKS                       R28 R27 K105 ["Text"]
      528 GETIMPORT                        R28 K70 [Vector2.new]
      530 LOADK                            R29 K129 [0.5]
      531 LOADN                            R30 1
      532 CALL                             R28 2 1
      533 SETTABLEKS                       R28 R27 K62 ["AnchorPoint"]
      535 GETIMPORT                        R28 K45 [UDim2.new]
      537 LOADK                            R29 K129 [0.5]
      538 LOADN                            R30 0
      539 LOADN                            R31 1
      540 LOADN                            R32 -10
      541 CALL                             R28 4 1
      542 SETTABLEKS                       R28 R27 K57 ["Position"]
      544 GETIMPORT                        R28 K45 [UDim2.new]
      546 LOADN                            R29 1
      547 LOADN                            R30 -10
      548 LOADN                            R31 0
      549 LOADN                            R32 32
      550 CALL                             R28 4 1
      551 SETTABLEKS                       R28 R27 K33 ["Size"]
      553 SETTABLEKS                       R12 R27 K125 ["StyleModifier"]
      555 NEWCLOSURE                       R28 P2
      556 CAPTURE                          VAL R2
      557 CAPTURE                          UPVAL U0
      558 CAPTURE                          VAL R8
      559 CAPTURE                          UPVAL U8
      560 CAPTURE                          UPVAL U13
      561 SETTABLEKS                       R28 R27 K108 ["OnClick"]
      563 CALL                             R25 2 1
      564 SETTABLEKS                       R25 R24 K121 ["WideResetAllButton"]
      566 CALL                             R21 3 1
      567 SETTABLEKS                       R21 R20 K54 ["BottomFrame"]
      569 CALL                             R17 3 1
      570 SETTABLEKS                       R17 R16 K38 ["Container"]
      572 CALL                             R13 3 -1
      573 RETURN                           R13 -1

PROTO_41:
        0 GETTABLEKS                       R2 R0 K0 ["Status"]
        2 DUPTABLE                         R3 K13 [{"Tool", "SelectedTrackInstances", "RootInstance", "faceControlsEditorEnabled", "Playhead", "Tracks", "PlayState", "AnimationData", "DefaultRotationType", "SymmetryEnabled", "AutoFocusFaceEnabled", "ReadOnly"}]
        3 GETTABLEKS                       R4 R0 K0 ["Status"]
        5 GETTABLEKS                       R4 R4 K1 ["Tool"]
        7 SETTABLEKS                       R4 R3 K1 ["Tool"]
        9 GETTABLEKS                       R4 R0 K0 ["Status"]
       11 GETTABLEKS                       R4 R4 K2 ["SelectedTrackInstances"]
       13 SETTABLEKS                       R4 R3 K2 ["SelectedTrackInstances"]
       15 GETTABLEKS                       R4 R0 K0 ["Status"]
       17 GETTABLEKS                       R4 R4 K3 ["RootInstance"]
       19 SETTABLEKS                       R4 R3 K3 ["RootInstance"]
       21 GETTABLEKS                       R4 R0 K0 ["Status"]
       23 GETTABLEKS                       R4 R4 K14 ["FaceControlsEditorEnabled"]
       25 SETTABLEKS                       R4 R3 K4 ["faceControlsEditorEnabled"]
       27 GETTABLEKS                       R4 R0 K0 ["Status"]
       29 GETTABLEKS                       R4 R4 K5 ["Playhead"]
       31 SETTABLEKS                       R4 R3 K5 ["Playhead"]
       33 GETTABLEKS                       R4 R0 K0 ["Status"]
       35 GETTABLEKS                       R4 R4 K6 ["Tracks"]
       37 SETTABLEKS                       R4 R3 K6 ["Tracks"]
       39 GETTABLEKS                       R4 R2 K7 ["PlayState"]
       41 SETTABLEKS                       R4 R3 K7 ["PlayState"]
       43 GETTABLEKS                       R4 R0 K8 ["AnimationData"]
       45 SETTABLEKS                       R4 R3 K8 ["AnimationData"]
       47 GETTABLEKS                       R4 R2 K9 ["DefaultRotationType"]
       49 SETTABLEKS                       R4 R3 K9 ["DefaultRotationType"]
       51 GETTABLEKS                       R4 R2 K10 ["SymmetryEnabled"]
       53 SETTABLEKS                       R4 R3 K10 ["SymmetryEnabled"]
       55 GETTABLEKS                       R4 R2 K11 ["AutoFocusFaceEnabled"]
       57 SETTABLEKS                       R4 R3 K11 ["AutoFocusFaceEnabled"]
       59 GETTABLEKS                       R4 R2 K12 ["ReadOnly"]
       61 SETTABLEKS                       R4 R3 K12 ["ReadOnly"]
       63 RETURN                           R3 1

PROTO_42:
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
       11 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_46:
        0 DUPTABLE                         R1 K4 [{"ValueChanged", "AddWaypoint", "SetSymmetryEnabled", "SetAutoFocusFaceEnabled"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ValueChanged"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["AddWaypoint"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetSymmetryEnabled"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["SetAutoFocusFaceEnabled"]
       21 RETURN                           R1 1

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
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["UI"]
       30 GETTABLEKS                       R5 R4 K11 ["DockWidget"]
       32 GETTABLEKS                       R6 R3 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K13 ["withContext"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R9 R0 K14 ["Src"]
       40 GETTABLEKS                       R9 R9 K15 ["Util"]
       42 GETTABLEKS                       R9 R9 K16 ["Constants"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R0 K14 ["Src"]
       49 GETTABLEKS                       R10 R10 K15 ["Util"]
       51 GETTABLEKS                       R10 R10 K17 ["RigUtils"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R0 K14 ["Src"]
       58 GETTABLEKS                       R11 R11 K15 ["Util"]
       60 GETTABLEKS                       R11 R11 K18 ["RigInfo"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R11 R1 K19 ["PureComponent"]
       65 LOADK                            R13 K20 ["FaceControlsEditorWindow"]
       66 NAMECALL                         R11 R11 K21 ["extend"]
       68 CALL                             R11 2 1
       69 GETIMPORT                        R12 K24 [Vector2.new]
       71 GETTABLEKS                       R13 R8 K25 ["faceControlsEditorOriginalWidth"]
       73 LOADN                            R14 310
       74 CALL                             R12 2 1
       75 GETIMPORT                        R13 K24 [Vector2.new]
       77 LOADN                            R14 185
       78 LOADN                            R15 110
       79 CALL                             R13 2 1
       80 GETTABLEKS                       R14 R3 K10 ["UI"]
       82 GETTABLEKS                       R14 R14 K26 ["Slider"]
       84 GETTABLEKS                       R15 R3 K10 ["UI"]
       86 GETTABLEKS                       R15 R15 K27 ["DragBox"]
       88 GETTABLEKS                       R16 R3 K10 ["UI"]
       90 GETTABLEKS                       R16 R16 K28 ["Checkbox"]
       92 GETTABLEKS                       R17 R3 K10 ["UI"]
       94 GETTABLEKS                       R17 R17 K29 ["Pane"]
       96 GETTABLEKS                       R18 R3 K10 ["UI"]
       98 GETTABLEKS                       R18 R18 K30 ["Button"]
      100 GETIMPORT                        R19 K5 [require]
      102 GETTABLEKS                       R20 R0 K14 ["Src"]
      104 GETTABLEKS                       R20 R20 K31 ["Thunks"]
      106 GETTABLEKS                       R20 R20 K32 ["ValueChanged"]
      108 CALL                             R19 1 1
      109 GETIMPORT                        R20 K5 [require]
      111 GETTABLEKS                       R21 R0 K14 ["Src"]
      113 GETTABLEKS                       R21 R21 K31 ["Thunks"]
      115 GETTABLEKS                       R21 R21 K33 ["History"]
      117 GETTABLEKS                       R21 R21 K34 ["AddWaypoint"]
      119 CALL                             R20 1 1
      120 GETIMPORT                        R21 K5 [require]
      122 GETTABLEKS                       R22 R0 K14 ["Src"]
      124 GETTABLEKS                       R22 R22 K35 ["Actions"]
      126 GETTABLEKS                       R22 R22 K36 ["SetSymmetryEnabled"]
      128 CALL                             R21 1 1
      129 GETIMPORT                        R22 K5 [require]
      131 GETTABLEKS                       R23 R0 K14 ["Src"]
      133 GETTABLEKS                       R23 R23 K35 ["Actions"]
      135 GETTABLEKS                       R23 R23 K37 ["SetAutoFocusFaceEnabled"]
      137 CALL                             R22 1 1
      138 GETIMPORT                        R23 K5 [require]
      140 GETTABLEKS                       R24 R0 K14 ["Src"]
      142 GETTABLEKS                       R24 R24 K15 ["Util"]
      144 GETTABLEKS                       R24 R24 K38 ["KeyframeUtils"]
      146 CALL                             R23 1 1
      147 GETIMPORT                        R24 K5 [require]
      149 GETTABLEKS                       R25 R0 K14 ["Src"]
      151 GETTABLEKS                       R25 R25 K39 ["Components"]
      153 GETTABLEKS                       R25 R25 K40 ["ContextMenu"]
      155 CALL                             R24 1 1
      156 GETIMPORT                        R25 K5 [require]
      158 GETTABLEKS                       R26 R0 K6 ["Packages"]
      160 GETTABLEKS                       R26 R26 K41 ["Cryo"]
      162 CALL                             R25 1 1
      163 GETIMPORT                        R26 K5 [require]
      165 GETIMPORT                        R27 K1 [script]
      167 LOADK                            R29 K42 ["FaceControlsMapping"]
      168 NAMECALL                         R27 R27 K43 ["WaitForChild"]
      170 CALL                             R27 2 -1
      171 CALL                             R26 -1 1
      172 GETTABLEKS                       R27 R3 K15 ["Util"]
      174 GETTABLEKS                       R28 R27 K44 ["StyleModifier"]
      176 GETIMPORT                        R29 K5 [require]
      178 GETTABLEKS                       R30 R0 K45 ["LuaFlags"]
      180 GETTABLEKS                       R30 R30 K46 ["GetFFlagFacialAnimationRecordingInStudio"]
      182 CALL                             R29 1 1
      183 GETIMPORT                        R30 K5 [require]
      185 GETTABLEKS                       R31 R0 K45 ["LuaFlags"]
      187 GETTABLEKS                       R31 R31 K47 ["GetFFlagACERoactCompatPrepFixes"]
      189 CALL                             R30 1 1
      190 DUPCLOSURE                       R31 K48 [PROTO_8]
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R30
      193 SETTABLEKS                       R31 R11 K49 ["init"]
      195 DUPCLOSURE                       R31 K50 [PROTO_9]
      196 SETTABLEKS                       R31 R11 K51 ["addAction"]
      198 DUPCLOSURE                       R31 K52 [PROTO_11]
      199 CAPTURE                          VAL R29
      200 CAPTURE                          VAL R9
      201 SETTABLEKS                       R31 R11 K53 ["didMount"]
      203 DUPCLOSURE                       R31 K54 [PROTO_12]
      204 SETTABLEKS                       R31 R11 K55 ["willUnmount"]
      206 DUPCLOSURE                       R31 K56 [PROTO_14]
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R25
      209 SETGLOBAL                        R31 K57 ["getFacsListData"]
      211 DUPCLOSURE                       R31 K58 [PROTO_15]
      212 CAPTURE                          VAL R8
      213 SETGLOBAL                        R31 K59 ["formatNumber"]
      215 DUPCLOSURE                       R31 K60 [PROTO_16]
      216 CAPTURE                          VAL R8
      217 CAPTURE                          VAL R30
      218 SETGLOBAL                        R31 K61 ["prepAndTriggerSliderContextMenu"]
      220 DUPCLOSURE                       R31 K62 [PROTO_17]
      221 CAPTURE                          VAL R8
      222 SETGLOBAL                        R31 K63 ["getSliderTooltipText"]
      224 DUPCLOSURE                       R31 K64 [PROTO_18]
      225 CAPTURE                          VAL R26
      226 CAPTURE                          VAL R8
      227 SETGLOBAL                        R31 K65 ["handleSliderOnValueChanged"]
      229 DUPCLOSURE                       R31 K66 [PROTO_22]
      230 CAPTURE                          VAL R8
      231 CAPTURE                          VAL R26
      232 CAPTURE                          VAL R1
      233 CAPTURE                          VAL R14
      234 SETGLOBAL                        R31 K67 ["makeFacsOnFaceDiagramSliderUIItems"]
      236 DUPCLOSURE                       R31 K68 [PROTO_23]
      237 CAPTURE                          VAL R8
      238 SETGLOBAL                        R31 K69 ["triggerValueChanged"]
      240 DUPCLOSURE                       R31 K70 [PROTO_27]
      241 CAPTURE                          VAL R26
      242 CAPTURE                          VAL R1
      243 CAPTURE                          VAL R15
      244 CAPTURE                          VAL R8
      245 CAPTURE                          VAL R30
      246 SETGLOBAL                        R31 K71 ["makeEyesControlDragBox"]
      248 DUPCLOSURE                       R31 K72 [PROTO_28]
      249 CAPTURE                          VAL R8
      250 CAPTURE                          VAL R26
      251 CAPTURE                          VAL R23
      252 SETGLOBAL                        R31 K73 ["getTrackValuesForEyeDragBox"]
      254 DUPCLOSURE                       R31 K74 [PROTO_30]
      255 SETTABLEKS                       R31 R11 K75 ["makeContextMenuActions"]
      257 DUPCLOSURE                       R31 K76 [PROTO_31]
      258 CAPTURE                          VAL R10
      259 CAPTURE                          VAL R8
      260 CAPTURE                          VAL R26
      261 CAPTURE                          VAL R23
      262 SETTABLEKS                       R31 R11 K77 ["getCurrentValues"]
      264 DUPCLOSURE                       R31 K78 [PROTO_32]
      265 CAPTURE                          VAL R26
      266 SETGLOBAL                        R31 K79 ["resetAllValuesInMapping"]
      268 DUPCLOSURE                       R31 K80 [PROTO_33]
      269 CAPTURE                          VAL R9
      270 SETTABLEKS                       R31 R11 K81 ["willUpdate"]
      272 DUPCLOSURE                       R31 K82 [PROTO_34]
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R23
      275 SETGLOBAL                        R31 K83 ["getFacsKeysWithNonZerovalueCount"]
      277 DUPCLOSURE                       R31 K84 [PROTO_35]
      278 CAPTURE                          VAL R29
      279 CAPTURE                          VAL R9
      280 SETGLOBAL                        R31 K85 ["handleFocusFace"]
      282 DUPCLOSURE                       R31 K86 [PROTO_36]
      283 CAPTURE                          VAL R10
      284 SETGLOBAL                        R31 K87 ["focusFace"]
      286 DUPCLOSURE                       R31 K88 [PROTO_40]
      287 CAPTURE                          VAL R9
      288 CAPTURE                          VAL R28
      289 CAPTURE                          VAL R1
      290 CAPTURE                          VAL R5
      291 CAPTURE                          VAL R12
      292 CAPTURE                          VAL R13
      293 CAPTURE                          VAL R30
      294 CAPTURE                          VAL R17
      295 CAPTURE                          VAL R8
      296 CAPTURE                          VAL R24
      297 CAPTURE                          VAL R16
      298 CAPTURE                          VAL R25
      299 CAPTURE                          VAL R18
      300 CAPTURE                          VAL R23
      301 SETTABLEKS                       R31 R11 K89 ["render"]
      303 DUPCLOSURE                       R31 K90 [PROTO_41]
      304 DUPCLOSURE                       R32 K91 [PROTO_46]
      305 CAPTURE                          VAL R19
      306 CAPTURE                          VAL R20
      307 CAPTURE                          VAL R21
      308 CAPTURE                          VAL R22
      309 MOVE                             R33 R7
      310 DUPTABLE                         R34 K96 [{"Stylizer", "Localization", "Plugin", "PluginActions"}]
      311 GETTABLEKS                       R35 R6 K92 ["Stylizer"]
      313 SETTABLEKS                       R35 R34 K92 ["Stylizer"]
      315 GETTABLEKS                       R35 R6 K93 ["Localization"]
      317 SETTABLEKS                       R35 R34 K93 ["Localization"]
      319 GETTABLEKS                       R35 R6 K94 ["Plugin"]
      321 SETTABLEKS                       R35 R34 K94 ["Plugin"]
      323 GETTABLEKS                       R35 R6 K95 ["PluginActions"]
      325 SETTABLEKS                       R35 R34 K95 ["PluginActions"]
      327 CALL                             R33 1 1
      328 MOVE                             R34 R11
      329 CALL                             R33 1 1
      330 MOVE                             R11 R33
      331 GETTABLEKS                       R33 R2 K97 ["connect"]
      333 MOVE                             R34 R31
      334 MOVE                             R35 R32
      335 CALL                             R33 2 1
      336 MOVE                             R34 R11
      337 CALL                             R33 1 -1
      338 RETURN                           R33 -1
