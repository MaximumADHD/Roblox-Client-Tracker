PROTO_0:
        0 MOVE                             R11 R2
        1 LOADNIL                          R12
        2 LOADNIL                          R13
        3 FORGPREP                         R11
        4 GETUPVAL                         R17 0
        5 GETTABLE                         R16 R17 R14
        6 JUMPIFNOTEQKNIL                  R16 ; [+12]
        8 GETUPVAL                         R17 1
        9 GETTABLE                         R16 R17 R14
       10 JUMPIFNOTEQKNIL                  R16 ; [+8]
       12 GETIMPORT                        R16 K1 [error]
       14 LOADK                            R18 K2 ["Unexpected ConstraintToolModel prop `"]
       15 MOVE                             R19 R14
       16 LOADK                            R20 K3 ["`"]
       17 CONCAT                           R17 R18 R20
       18 CALL                             R16 1 0
       19 FORGLOOP                         R11 2 ; [-16]
       21 NEWTABLE                         R11 0 0
       23 GETUPVAL                         R12 1
       24 LOADNIL                          R13
       25 LOADNIL                          R14
       26 FORGPREP                         R12
       27 GETTABLE                         R17 R2 R15
       28 JUMPIFNOTEQKNIL                  R17 ; [+9]
       30 GETIMPORT                        R18 K1 [error]
       32 LOADK                            R20 K4 ["Required prop `"]
       33 MOVE                             R21 R15
       34 LOADK                            R22 K5 ["` missing from ConstraintToolModel props"]
       35 CONCAT                           R19 R20 R22
       36 CALL                             R18 1 0
       37 JUMP                             ; [+1]
       38 SETTABLE                         R17 R11 R15
       39 FORGLOOP                         R12 2 ; [-13]
       41 GETUPVAL                         R12 0
       42 LOADNIL                          R13
       43 LOADNIL                          R14
       44 FORGPREP                         R12
       45 GETTABLE                         R17 R2 R15
       46 JUMPIFEQKNIL                     R17 ; [+4]
       48 GETTABLE                         R17 R2 R15
       49 SETTABLE                         R17 R11 R15
       50 JUMP                             ; [+1]
       51 SETTABLE                         R16 R11 R15
       52 FORGLOOP                         R12 2 ; [-8]
       54 GETIMPORT                        R12 K8 [Instance.new]
       56 LOADK                            R13 K9 ["Folder"]
       57 CALL                             R12 1 1
       58 LOADK                            R13 K10 ["ConstraintTool"]
       59 SETTABLEKS                       R13 R12 K11 ["Name"]
       61 GETIMPORT                        R13 K13 [game]
       63 GETTABLEKS                       R13 R13 K14 ["CoreGui"]
       65 SETTABLEKS                       R13 R12 K15 ["Parent"]
       67 DUPTABLE                         R14 K43 [{["_draggerContext"], ["_draggerSchema"], ["_modelProps"], ["_closePluginCallback"], ["_requestRenderCallback"], ["_constraintToolVisualsFolder"], ["_markViewDirtyCallback"], ["_undoAttachmentStack"], ["_redoAttachmentStack"], ["_plugin"], ["_openedTimestamp"], ["_attachmentMover"], ["_attachmentArrowVisuals"], ["_partPassthroughEnabled"] = False, ["_addMultipleConstraintsEnabled"] = False, ["_ancestryChangedConnection"] = , ["_selectionHighlight"] = , ["_ghostAssembly"] = , ["_attachmentAdornment"] = , ["_initialInstanceAdornment"] = , ["_constraintType"] = , ["_tiltRotate"], ["_recordingIdentifier"] = , ["_lastDraggedInstanceDefaultOrientation"] = , ["_existingInitialAttachment"] = False}]
       68 SETTABLEKS                       R0 R14 K16 ["_draggerContext"]
       70 SETTABLEKS                       R1 R14 K17 ["_draggerSchema"]
       72 SETTABLEKS                       R11 R14 K18 ["_modelProps"]
       74 SETTABLEKS                       R3 R14 K19 ["_closePluginCallback"]
       76 SETTABLEKS                       R9 R14 K20 ["_requestRenderCallback"]
       78 SETTABLEKS                       R12 R14 K21 ["_constraintToolVisualsFolder"]
       80 SETTABLEKS                       R10 R14 K22 ["_markViewDirtyCallback"]
       82 SETTABLEKS                       R4 R14 K23 ["_undoAttachmentStack"]
       84 SETTABLEKS                       R5 R14 K24 ["_redoAttachmentStack"]
       86 SETTABLEKS                       R7 R14 K25 ["_plugin"]
       88 GETIMPORT                        R15 K46 [os.clock]
       90 CALL                             R15 0 1
       91 SETTABLEKS                       R15 R14 K26 ["_openedTimestamp"]
       93 GETUPVAL                         R15 2
       94 GETTABLEKS                       R15 R15 K7 ["new"]
       96 CALL                             R15 0 1
       97 SETTABLEKS                       R15 R14 K27 ["_attachmentMover"]
       99 NEWTABLE                         R15 0 0
      101 SETTABLEKS                       R15 R14 K28 ["_attachmentArrowVisuals"]
      103 GETUPVAL                         R15 3
      104 SETTABLEKS                       R15 R14 K39 ["_tiltRotate"]
      106 GETUPVAL                         R15 4
      107 FASTCALL2                        SETMETATABLE R14 R15 ; [+3]
      109 GETIMPORT                        R13 K48 [setmetatable]
      111 CALL                             R13 2 1
      112 GETUPVAL                         R14 5
      113 GETTABLEKS                       R14 R14 K7 ["new"]
      115 GETTABLEKS                       R15 R13 K16 ["_draggerContext"]
      117 GETTABLEKS                       R16 R13 K17 ["_draggerSchema"]
      119 MOVE                             R17 R13
      120 CALL                             R14 3 1
      121 SETTABLEKS                       R14 R13 K49 ["_attachmentToolRenderer"]
      123 GETUPVAL                         R14 6
      124 GETTABLEKS                       R14 R14 K7 ["new"]
      126 MOVE                             R15 R13
      127 CALL                             R14 1 1
      128 SETTABLEKS                       R14 R13 K50 ["_attachmentToolAnimator"]
      130 SETUPVAL                         R6 7
      131 GETTABLEKS                       R15 R13 K16 ["_draggerContext"]
      133 LOADK                            R17 K51 ["MultipleConstraintMode"]
      134 NAMECALL                         R15 R15 K52 ["getSetting"]
      136 CALL                             R15 2 1
      137 JUMPIFNOT                        R15 ; [+2]
      138 LOADB                            R14 1
      139 JUMP                             ; [+1]
      140 LOADB                            R14 0
      141 SETTABLEKS                       R14 R13 K31 ["_addMultipleConstraintsEnabled"]
      143 LOADN                            R14 1
      144 SETTABLEKS                       R14 R13 K53 ["_adornScale"]
      146 MOVE                             R16 R7
      147 NAMECALL                         R14 R13 K54 ["_connectGizmoScale"]
      149 CALL                             R14 2 0
      150 MOVE                             R14 R8
      151 MOVE                             R15 R13
      152 CALL                             R14 1 1
      153 GETTABLEKS                       R15 R14 K55 ["undo"]
      155 SETTABLEKS                       R15 R13 K56 ["_mainUndo"]
      157 RETURN                           R13 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetConstraintGizmoScaleAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["_adornScale"]
        3 GETUPVAL                         R1 0
        4 NAMECALL                         R1 R1 K1 ["_resizeAttachmentAdorns"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R4 K0 ["ConstraintGizmoManager"]
        1 NAMECALL                         R2 R1 K1 ["GetPluginComponent"]
        3 CALL                             R2 2 1
        4 GETIMPORT                        R3 K3 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CALL                             R3 1 2
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 SETTABLEKS                       R4 R0 K4 ["_adornScale"]
       13 GETTABLEKS                       R7 R0 K5 ["_gizmoConnection"]
       15 JUMPIFEQKNIL                     R7 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 FASTCALL1                        ASSERT R6 ; [+2]
       20 GETIMPORT                        R5 K7 [assert]
       22 CALL                             R5 1 0
       23 GETTABLEKS                       R5 R2 K8 ["OnConstraintGizmoScaleChanged"]
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R5 R5 K9 ["Connect"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R0 K5 ["_gizmoConnection"]
       32 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_undoAttachmentStack"]
        2 GETTABLEN                        R2 R3 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETTABLEKS                       R3 R2 K1 ["attachment"]
        6 GETTABLEKS                       R3 R3 K2 ["Parent"]
        8 JUMPIFNOT                        R3 ; [+13]
        9 GETTABLEKS                       R3 R2 K3 ["type"]
       11 JUMPIFNOTEQKS                    R3 K4 ["initial"] ; [+10]
       13 GETTABLEKS                       R5 R2 K1 ["attachment"]
       15 NAMECALL                         R3 R0 K5 ["_selectInitialInstance"]
       17 CALL                             R3 2 0
       18 NAMECALL                         R3 R0 K6 ["_updateAttachment"]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0
       22 JUMPIFNOT                        R1 ; [+9]
       23 GETTABLEKS                       R3 R1 K7 ["attachmentParent"]
       25 JUMPIFNOT                        R3 ; [+6]
       26 LOADN                            R5 0
       27 GETTABLEKS                       R6 R1 K7 ["attachmentParent"]
       29 NAMECALL                         R3 R0 K8 ["_setInitialInstanceTransparency"]
       31 CALL                             R3 3 0
       32 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+19]
        1 GETTABLEKS                       R2 R1 K0 ["type"]
        3 JUMPIFNOTEQKS                    R2 K1 ["initial"] ; [+10]
        5 GETTABLEKS                       R4 R1 K2 ["attachment"]
        7 NAMECALL                         R2 R0 K3 ["_selectInitialInstance"]
        9 CALL                             R2 2 0
       10 NAMECALL                         R2 R0 K4 ["_updateAttachment"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 NAMECALL                         R2 R0 K5 ["_clearInitialInstance"]
       16 CALL                             R2 1 0
       17 NAMECALL                         R2 R0 K6 ["_removeConstraintVisuals"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_attachmentArrowVisuals"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 LOADK                            R7 K1 [0.14]
        6 GETTABLEKS                       R8 R0 K2 ["_adornScale"]
        8 MUL                              R6 R7 R8
        9 SETTABLEKS                       R6 R4 K3 ["Radius"]
       11 GETTABLEKS                       R6 R5 K4 ["shaftRight"]
       13 LOADN                            R8 1
       14 GETTABLEKS                       R9 R0 K2 ["_adornScale"]
       16 MUL                              R7 R8 R9
       17 SETTABLEKS                       R7 R6 K5 ["Height"]
       19 GETTABLEKS                       R6 R5 K4 ["shaftRight"]
       21 LOADK                            R8 K6 [0.02]
       22 GETTABLEKS                       R9 R0 K2 ["_adornScale"]
       24 MUL                              R7 R8 R9
       25 SETTABLEKS                       R7 R6 K3 ["Radius"]
       27 GETTABLEKS                       R6 R5 K7 ["shaftTop"]
       29 LOADN                            R8 1
       30 GETTABLEKS                       R9 R0 K2 ["_adornScale"]
       32 MUL                              R7 R8 R9
       33 SETTABLEKS                       R7 R6 K5 ["Height"]
       35 GETTABLEKS                       R6 R5 K7 ["shaftTop"]
       37 LOADK                            R8 K6 [0.02]
       38 GETTABLEKS                       R9 R0 K2 ["_adornScale"]
       40 MUL                              R7 R8 R9
       41 SETTABLEKS                       R7 R6 K3 ["Radius"]
       43 GETTABLEKS                       R6 R5 K8 ["tipRight"]
       45 LOADK                            R8 K9 [0.2]
       46 GETTABLEKS                       R9 R0 K2 ["_adornScale"]
       48 MUL                              R7 R8 R9
       49 SETTABLEKS                       R7 R6 K5 ["Height"]
       51 GETTABLEKS                       R6 R5 K8 ["tipRight"]
       53 LOADK                            R8 K10 [0.05]
       54 GETTABLEKS                       R9 R0 K2 ["_adornScale"]
       56 MUL                              R7 R8 R9
       57 SETTABLEKS                       R7 R6 K3 ["Radius"]
       59 GETTABLEKS                       R6 R5 K11 ["tipTop"]
       61 LOADK                            R8 K9 [0.2]
       62 GETTABLEKS                       R9 R0 K2 ["_adornScale"]
       64 MUL                              R7 R8 R9
       65 SETTABLEKS                       R7 R6 K5 ["Height"]
       67 GETTABLEKS                       R6 R5 K11 ["tipTop"]
       69 LOADK                            R8 K10 [0.05]
       70 GETTABLEKS                       R9 R0 K2 ["_adornScale"]
       72 MUL                              R7 R8 R9
       73 SETTABLEKS                       R7 R6 K3 ["Radius"]
       75 MOVE                             R8 R4
       76 NAMECALL                         R6 R0 K12 ["_orientAttachmentAdornment"]
       78 CALL                             R6 2 0
       79 FORGLOOP                         R1 2 ; [-75]
       81 GETTABLEKS                       R1 R0 K13 ["_constraintConnectionVisual"]
       83 JUMPIFNOT                        R1 ; [+8]
       84 GETTABLEKS                       R1 R0 K13 ["_constraintConnectionVisual"]
       86 LOADK                            R3 K10 [0.05]
       87 GETTABLEKS                       R4 R0 K2 ["_adornScale"]
       89 MUL                              R2 R3 R4
       90 SETTABLEKS                       R2 R1 K3 ["Radius"]
       92 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["SphereHandleAdornment"]
        3 CALL                             R1 1 1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K4 ["AlwaysOnTop"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K5 ["ZIndex"]
       10 LOADK                            R3 K6 [0.14]
       11 GETTABLEKS                       R4 R0 K7 ["_adornScale"]
       13 MUL                              R2 R3 R4
       14 SETTABLEKS                       R2 R1 K8 ["Radius"]
       16 GETUPVAL                         R2 0
       17 SETTABLEKS                       R2 R1 K9 ["Color3"]
       19 GETIMPORT                        R2 K11 [workspace]
       21 GETTABLEKS                       R2 R2 K12 ["Terrain"]
       23 SETTABLEKS                       R2 R1 K13 ["Adornee"]
       25 GETTABLEKS                       R2 R0 K14 ["_constraintToolVisualsFolder"]
       27 SETTABLEKS                       R2 R1 K15 ["Parent"]
       29 MOVE                             R4 R1
       30 NAMECALL                         R2 R0 K16 ["_createAttachmentAdornmentArrows"]
       32 CALL                             R2 2 0
       33 RETURN                           R1 1

PROTO_8:
        0 NAMECALL                         R1 R0 K0 ["_createAttachmentAdornment"]
        2 CALL                             R1 1 1
        3 SETTABLEKS                       R1 R0 K1 ["_attachmentAdornment"]
        5 GETUPVAL                         R2 0
        6 NAMECALL                         R2 R2 K2 ["Get"]
        8 CALL                             R2 1 1
        9 LENGTH                           R3 R2
       10 JUMPIFNOTEQKN                    R3 K3 [1] ; [+11]
       12 GETTABLEN                        R3 R2 1
       13 LOADK                            R5 K4 ["Attachment"]
       14 NAMECALL                         R3 R3 K5 ["IsA"]
       16 CALL                             R3 2 1
       17 JUMPIFNOT                        R3 ; [+4]
       18 GETTABLEN                        R5 R2 1
       19 NAMECALL                         R3 R0 K6 ["_selectInitialInstance"]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Highlight"]
        3 CALL                             R1 1 1
        4 LOADN                            R2 1
        5 SETTABLEKS                       R2 R1 K4 ["FillTransparency"]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K5 ["OutlineColor"]
       10 GETIMPORT                        R2 K9 [Enum.HighlightDepthMode.AlwaysOnTop]
       12 SETTABLEKS                       R2 R1 K10 ["DepthMode"]
       14 GETTABLEKS                       R2 R0 K11 ["_constraintToolVisualsFolder"]
       16 SETTABLEKS                       R2 R1 K12 ["Parent"]
       18 SETTABLEKS                       R1 R0 K13 ["_selectionHighlight"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R4 R0 K14 ["_constraintType"]
       23 GETTABLE                         R2 R3 R4
       24 JUMPIFNOT                        R2 ; [+17]
       25 GETUPVAL                         R2 2
       26 NAMECALL                         R2 R2 K15 ["Get"]
       28 CALL                             R2 1 1
       29 LENGTH                           R3 R2
       30 JUMPIFNOTEQKN                    R3 K16 [1] ; [+11]
       32 GETTABLEN                        R3 R2 1
       33 LOADK                            R5 K17 ["BasePart"]
       34 NAMECALL                         R3 R3 K18 ["IsA"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+4]
       38 GETTABLEN                        R5 R2 1
       39 NAMECALL                         R3 R0 K19 ["_selectInitialInstance"]
       41 CALL                             R3 2 0
       42 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["CylinderHandleAdornment"]
        3 CALL                             R2 1 1
        4 LOADN                            R4 1
        5 GETTABLEKS                       R5 R0 K4 ["_adornScale"]
        7 MUL                              R3 R4 R5
        8 SETTABLEKS                       R3 R2 K5 ["Height"]
       10 LOADK                            R4 K6 [0.02]
       11 GETTABLEKS                       R5 R0 K4 ["_adornScale"]
       13 MUL                              R3 R4 R5
       14 SETTABLEKS                       R3 R2 K7 ["Radius"]
       16 LOADN                            R3 0
       17 SETTABLEKS                       R3 R2 K8 ["Transparency"]
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K9 ["AlwaysOnTop"]
       22 LOADN                            R3 1
       23 SETTABLEKS                       R3 R2 K10 ["ZIndex"]
       25 GETIMPORT                        R3 K12 [workspace]
       27 GETTABLEKS                       R3 R3 K13 ["Terrain"]
       29 SETTABLEKS                       R3 R2 K14 ["Adornee"]
       31 GETUPVAL                         R3 0
       32 SETTABLEKS                       R3 R2 K15 ["Color3"]
       34 GETTABLEKS                       R3 R0 K16 ["_constraintToolVisualsFolder"]
       36 SETTABLEKS                       R3 R2 K17 ["Parent"]
       38 GETIMPORT                        R3 K2 [Instance.new]
       40 LOADK                            R4 K3 ["CylinderHandleAdornment"]
       41 CALL                             R3 1 1
       42 LOADN                            R5 1
       43 GETTABLEKS                       R6 R0 K4 ["_adornScale"]
       45 MUL                              R4 R5 R6
       46 SETTABLEKS                       R4 R3 K5 ["Height"]
       48 LOADK                            R5 K6 [0.02]
       49 GETTABLEKS                       R6 R0 K4 ["_adornScale"]
       51 MUL                              R4 R5 R6
       52 SETTABLEKS                       R4 R3 K7 ["Radius"]
       54 LOADN                            R4 0
       55 SETTABLEKS                       R4 R3 K8 ["Transparency"]
       57 LOADB                            R4 1
       58 SETTABLEKS                       R4 R3 K9 ["AlwaysOnTop"]
       60 LOADN                            R4 1
       61 SETTABLEKS                       R4 R3 K10 ["ZIndex"]
       63 GETIMPORT                        R4 K12 [workspace]
       65 GETTABLEKS                       R4 R4 K13 ["Terrain"]
       67 SETTABLEKS                       R4 R3 K14 ["Adornee"]
       69 GETUPVAL                         R4 1
       70 SETTABLEKS                       R4 R3 K15 ["Color3"]
       72 GETTABLEKS                       R4 R0 K16 ["_constraintToolVisualsFolder"]
       74 SETTABLEKS                       R4 R3 K17 ["Parent"]
       76 GETIMPORT                        R4 K2 [Instance.new]
       78 LOADK                            R5 K18 ["ConeHandleAdornment"]
       79 CALL                             R4 1 1
       80 LOADK                            R6 K19 [0.2]
       81 GETTABLEKS                       R7 R0 K4 ["_adornScale"]
       83 MUL                              R5 R6 R7
       84 SETTABLEKS                       R5 R4 K5 ["Height"]
       86 LOADK                            R6 K20 [0.05]
       87 GETTABLEKS                       R7 R0 K4 ["_adornScale"]
       89 MUL                              R5 R6 R7
       90 SETTABLEKS                       R5 R4 K7 ["Radius"]
       92 LOADN                            R5 0
       93 SETTABLEKS                       R5 R4 K8 ["Transparency"]
       95 LOADB                            R5 1
       96 SETTABLEKS                       R5 R4 K9 ["AlwaysOnTop"]
       98 LOADN                            R5 1
       99 SETTABLEKS                       R5 R4 K10 ["ZIndex"]
      101 GETIMPORT                        R5 K12 [workspace]
      103 GETTABLEKS                       R5 R5 K13 ["Terrain"]
      105 SETTABLEKS                       R5 R4 K14 ["Adornee"]
      107 GETUPVAL                         R5 0
      108 SETTABLEKS                       R5 R4 K15 ["Color3"]
      110 GETTABLEKS                       R5 R0 K16 ["_constraintToolVisualsFolder"]
      112 SETTABLEKS                       R5 R4 K17 ["Parent"]
      114 GETIMPORT                        R5 K2 [Instance.new]
      116 LOADK                            R6 K18 ["ConeHandleAdornment"]
      117 CALL                             R5 1 1
      118 LOADK                            R7 K19 [0.2]
      119 GETTABLEKS                       R8 R0 K4 ["_adornScale"]
      121 MUL                              R6 R7 R8
      122 SETTABLEKS                       R6 R5 K5 ["Height"]
      124 LOADK                            R7 K20 [0.05]
      125 GETTABLEKS                       R8 R0 K4 ["_adornScale"]
      127 MUL                              R6 R7 R8
      128 SETTABLEKS                       R6 R5 K7 ["Radius"]
      130 LOADN                            R6 0
      131 SETTABLEKS                       R6 R5 K8 ["Transparency"]
      133 LOADB                            R6 1
      134 SETTABLEKS                       R6 R5 K9 ["AlwaysOnTop"]
      136 LOADN                            R6 1
      137 SETTABLEKS                       R6 R5 K10 ["ZIndex"]
      139 GETIMPORT                        R6 K12 [workspace]
      141 GETTABLEKS                       R6 R6 K13 ["Terrain"]
      143 SETTABLEKS                       R6 R5 K14 ["Adornee"]
      145 GETUPVAL                         R6 1
      146 SETTABLEKS                       R6 R5 K15 ["Color3"]
      148 GETTABLEKS                       R6 R0 K16 ["_constraintToolVisualsFolder"]
      150 SETTABLEKS                       R6 R5 K17 ["Parent"]
      152 LOADB                            R6 0
      153 SETTABLEKS                       R6 R1 K21 ["Visible"]
      155 LOADB                            R6 1
      156 SETTABLEKS                       R6 R1 K21 ["Visible"]
      158 GETTABLEKS                       R6 R0 K22 ["_attachmentArrowVisuals"]
      160 DUPTABLE                         R7 K27 [{"shaftRight", "shaftTop", "tipRight", "tipTop"}]
      161 SETTABLEKS                       R2 R7 K23 ["shaftRight"]
      163 SETTABLEKS                       R3 R7 K24 ["shaftTop"]
      165 SETTABLEKS                       R4 R7 K25 ["tipRight"]
      167 SETTABLEKS                       R5 R7 K26 ["tipTop"]
      169 SETTABLE                         R7 R6 R1
      170 MOVE                             R8 R1
      171 GETIMPORT                        R9 K29 [CFrame.new]
      173 LOADK                            R10 K30 [∞]
      174 LOADN                            R11 0
      175 LOADN                            R12 0
      176 CALL                             R9 3 -1
      177 NAMECALL                         R6 R0 K31 ["_orientAttachmentAdornment"]
      179 CALL                             R6 -1 0
      180 RETURN                           R0 0

PROTO_11:
        0 JUMPIF                           R2 ; [+11]
        1 LOADK                            R6 K0 ["Attachment"]
        2 NAMECALL                         R4 R1 K1 ["IsA"]
        4 CALL                             R4 2 1
        5 JUMPIFNOT                        R4 ; [+3]
        6 GETTABLEKS                       R3 R1 K2 ["WorldCFrame"]
        8 JUMPIF                           R3 ; [+2]
        9 GETTABLEKS                       R3 R1 K3 ["CFrame"]
       11 MOVE                             R2 R3
       12 GETTABLEKS                       R4 R0 K4 ["_attachmentArrowVisuals"]
       14 GETTABLE                         R3 R4 R1
       15 GETTABLEKS                       R4 R3 K5 ["shaftRight"]
       17 GETIMPORT                        R7 K7 [CFrame.Angles]
       19 LOADN                            R8 0
       20 LOADK                            R9 K8 [-1.5707963267949]
       21 LOADN                            R10 0
       22 CALL                             R7 3 1
       23 MUL                              R6 R2 R7
       24 GETIMPORT                        R7 K10 [CFrame.new]
       26 LOADN                            R8 0
       27 LOADN                            R9 0
       28 GETTABLEKS                       R12 R3 K5 ["shaftRight"]
       30 GETTABLEKS                       R12 R12 K12 ["Height"]
       32 MINUS                            R11 R12
       33 MULK                             R10 R11 K11 [0.15]
       34 CALL                             R7 3 1
       35 MUL                              R5 R6 R7
       36 SETTABLEKS                       R5 R4 K3 ["CFrame"]
       38 GETTABLEKS                       R4 R3 K13 ["shaftTop"]
       40 GETIMPORT                        R7 K7 [CFrame.Angles]
       42 LOADK                            R8 K14 [1.5707963267949]
       43 LOADN                            R9 0
       44 LOADN                            R10 0
       45 CALL                             R7 3 1
       46 MUL                              R6 R2 R7
       47 GETIMPORT                        R7 K10 [CFrame.new]
       49 LOADN                            R8 0
       50 LOADN                            R9 0
       51 GETTABLEKS                       R12 R3 K5 ["shaftRight"]
       53 GETTABLEKS                       R12 R12 K12 ["Height"]
       55 MINUS                            R11 R12
       56 MULK                             R10 R11 K11 [0.15]
       57 CALL                             R7 3 1
       58 MUL                              R5 R6 R7
       59 SETTABLEKS                       R5 R4 K3 ["CFrame"]
       61 GETTABLEKS                       R4 R3 K15 ["tipRight"]
       63 GETTABLEKS                       R6 R3 K5 ["shaftRight"]
       65 GETTABLEKS                       R6 R6 K3 ["CFrame"]
       67 GETIMPORT                        R7 K10 [CFrame.new]
       69 LOADN                            R8 0
       70 LOADN                            R9 0
       71 GETTABLEKS                       R12 R3 K5 ["shaftRight"]
       73 GETTABLEKS                       R12 R12 K12 ["Height"]
       75 MINUS                            R11 R12
       76 DIVK                             R10 R11 K16 [2]
       77 CALL                             R7 3 1
       78 MUL                              R5 R6 R7
       79 SETTABLEKS                       R5 R4 K3 ["CFrame"]
       81 GETTABLEKS                       R4 R3 K17 ["tipTop"]
       83 GETTABLEKS                       R6 R3 K13 ["shaftTop"]
       85 GETTABLEKS                       R6 R6 K3 ["CFrame"]
       87 GETIMPORT                        R7 K10 [CFrame.new]
       89 LOADN                            R8 0
       90 LOADN                            R9 0
       91 GETTABLEKS                       R12 R3 K13 ["shaftTop"]
       93 GETTABLEKS                       R12 R12 K12 ["Height"]
       95 MINUS                            R11 R12
       96 DIVK                             R10 R11 K16 [2]
       97 CALL                             R7 3 1
       98 MUL                              R5 R6 R7
       99 SETTABLEKS                       R5 R4 K3 ["CFrame"]
      101 LOADK                            R6 K0 ["Attachment"]
      102 NAMECALL                         R4 R1 K1 ["IsA"]
      104 CALL                             R4 2 1
      105 JUMPIFNOT                        R4 ; [+3]
      106 SETTABLEKS                       R2 R1 K2 ["WorldCFrame"]
      108 RETURN                           R0 0
      109 SETTABLEKS                       R2 R1 K3 ["CFrame"]
      111 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_mouseCursor"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_mouseCursor"]
        6 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["setMouseIcon"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_13:
        0 LOADK                            R3 K0 ["rbxasset://textures/ConstraintCursor.png"]
        1 NAMECALL                         R1 R0 K1 ["setMouseCursor"]
        3 CALL                             R1 2 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R3 R0 K2 ["_constraintType"]
        7 GETTABLE                         R1 R2 R3
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["createElement"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["Portal"]
       16 DUPTABLE                         R3 K6 [{"target"}]
       17 GETTABLEKS                       R4 R0 K7 ["_draggerContext"]
       19 NAMECALL                         R4 R4 K8 ["getGuiParent"]
       21 CALL                             R4 1 1
       22 SETTABLEKS                       R4 R3 K5 ["target"]
       24 DUPTABLE                         R4 K10 [{"DraggerUI"}]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K3 ["createElement"]
       28 LOADK                            R6 K11 ["Folder"]
       29 NEWTABLE                         R7 0 0
       31 GETTABLEKS                       R8 R0 K12 ["_attachmentToolRenderer"]
       33 NAMECALL                         R8 R8 K13 ["render"]
       35 CALL                             R8 1 -1
       36 CALL                             R5 -1 1
       37 SETTABLEKS                       R5 R4 K9 ["DraggerUI"]
       39 CALL                             R1 3 -1
       40 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["isSimulating"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["_markViewDirtyCallback"]
        8 CALL                             R1 0 0
        9 GETTABLEKS                       R1 R0 K3 ["_plugin"]
       11 NAMECALL                         R1 R1 K4 ["GetSelectedRibbonTool"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K8 [Enum.RibbonTool.None]
       16 JUMPIFEQ                         R1 R2 ; [+13]
       18 GETIMPORT                        R2 K11 [os.clock]
       20 CALL                             R2 0 1
       21 GETTABLEKS                       R3 R0 K12 ["_openedTimestamp"]
       23 SUB                              R1 R2 R3
       24 LOADK                            R2 K13 [0.0166666666666667]
       25 JUMPIFNOTLT                      R2 R1 ; [+4]
       27 NAMECALL                         R1 R0 K14 ["_processDeselected"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerSchema"]
        2 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["AllowDragSelect"]
        4 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowDragSelect"]
        4 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowLocalSpaceIndicator"]
        4 RETURN                           R1 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowSelectionDot"]
        4 RETURN                           R1 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["UseCollisionsTransparency"]
        4 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldAlignDraggedObjects"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_22:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_partPassthroughEnabled"]
        4 JUMPIFNOT                        R2 ; [+13]
        5 GETTABLEKS                       R2 R0 K1 ["_initialInstance"]
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETTABLEKS                       R4 R0 K1 ["_initialInstance"]
       10 GETTABLEKS                       R4 R4 K2 ["Parent"]
       12 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K5 [table.insert]
       17 CALL                             R2 2 0
       18 GETUPVAL                         R2 0
       19 JUMPIFNOT                        R2 ; [+11]
       20 GETTABLEKS                       R2 R0 K6 ["_ghostAssembly"]
       22 JUMPIFNOT                        R2 ; [+8]
       23 GETTABLEKS                       R4 R0 K6 ["_ghostAssembly"]
       25 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       27 MOVE                             R3 R1
       28 GETIMPORT                        R2 K5 [table.insert]
       30 CALL                             R2 2 0
       31 RETURN                           R1 1

PROTO_23:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+4]
        2 GETTABLEKS                       R3 R0 K0 ["_initialInstance"]
        4 GETTABLEKS                       R3 R3 K1 ["Parent"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R6 R0 K2 ["_constraintType"]
       10 GETTABLE                         R4 R5 R6
       11 JUMPIFNOT                        R4 ; [+1]
       12 RETURN                           R0 0
       13 LOADK                            R6 K3 ["BasePart"]
       14 NAMECALL                         R4 R3 K4 ["IsA"]
       16 CALL                             R4 2 1
       17 JUMPIFNOT                        R4 ; [+2]
       18 SETTABLEKS                       R1 R3 K5 ["LocalTransparencyModifier"]
       20 NAMECALL                         R4 R3 K6 ["GetChildren"]
       22 CALL                             R4 1 3
       23 FORGPREP                         R4
       24 LOADK                            R11 K7 ["Decal"]
       25 NAMECALL                         R9 R8 K4 ["IsA"]
       27 CALL                             R9 2 1
       28 JUMPIFNOT                        R9 ; [+2]
       29 SETTABLEKS                       R1 R8 K5 ["LocalTransparencyModifier"]
       31 FORGLOOP                         R4 2 ; [-8]
       33 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["getMouseRay"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R0 K2 ["_constraintType"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFNOT                        R2 ; [+114]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["raycast"]
       13 MOVE                             R3 R1
       14 NEWTABLE                         R4 0 0
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+43]
       18 GETTABLEKS                       R3 R0 K4 ["_selectionHighlight"]
       20 GETTABLEKS                       R4 R2 K5 ["Instance"]
       22 SETTABLEKS                       R4 R3 K6 ["Adornee"]
       24 GETTABLEKS                       R3 R0 K7 ["_constraintConnectionVisual"]
       26 JUMPIFNOT                        R3 ; [+34]
       27 GETTABLEKS                       R4 R2 K8 ["Position"]
       29 GETTABLEKS                       R5 R0 K9 ["_initialInstance"]
       31 GETTABLEKS                       R5 R5 K8 ["Position"]
       33 SUB                              R3 R4 R5
       34 GETTABLEKS                       R3 R3 K10 ["Magnitude"]
       36 GETTABLEKS                       R4 R0 K7 ["_constraintConnectionVisual"]
       38 GETIMPORT                        R6 K13 [CFrame.lookAt]
       40 GETTABLEKS                       R7 R0 K9 ["_initialInstance"]
       42 GETTABLEKS                       R7 R7 K8 ["Position"]
       44 GETTABLEKS                       R8 R2 K8 ["Position"]
       46 CALL                             R6 2 1
       47 GETIMPORT                        R7 K15 [CFrame.new]
       49 LOADN                            R8 0
       50 LOADN                            R9 0
       51 MINUS                            R11 R3
       52 MULK                             R10 R11 K16 [0.5]
       53 CALL                             R7 3 1
       54 MUL                              R5 R6 R7
       55 SETTABLEKS                       R5 R4 K11 ["CFrame"]
       57 GETTABLEKS                       R4 R0 K7 ["_constraintConnectionVisual"]
       59 SETTABLEKS                       R3 R4 K17 ["Height"]
       61 GETTABLEKS                       R3 R0 K7 ["_constraintConnectionVisual"]
       63 JUMPIFNOT                        R3 ; [+45]
       64 GETUPVAL                         R3 2
       65 NAMECALL                         R4 R0 K18 ["_canMouseDown"]
       67 CALL                             R4 1 1
       68 JUMPIF                           R4 ; [+2]
       69 GETUPVAL                         R3 3
       70 JUMP                             ; [+34]
       71 GETTABLEKS                       R4 R0 K9 ["_initialInstance"]
       73 JUMPIFNOT                        R4 ; [+31]
       74 GETTABLEKS                       R4 R0 K19 ["_currentHoveringInstance"]
       76 JUMPIFNOT                        R4 ; [+28]
       77 GETTABLEKS                       R4 R0 K19 ["_currentHoveringInstance"]
       79 LOADK                            R6 K20 ["BasePart"]
       80 NAMECALL                         R4 R4 K21 ["IsA"]
       82 CALL                             R4 2 1
       83 JUMPIFNOT                        R4 ; [+21]
       84 GETTABLEKS                       R4 R0 K19 ["_currentHoveringInstance"]
       86 GETTABLEKS                       R4 R4 K22 ["AssemblyRootPart"]
       88 GETTABLEKS                       R5 R0 K9 ["_initialInstance"]
       90 GETTABLEKS                       R5 R5 K22 ["AssemblyRootPart"]
       92 JUMPIFEQ                         R4 R5 ; [+11]
       94 GETTABLEKS                       R4 R0 K19 ["_currentHoveringInstance"]
       96 GETTABLEKS                       R4 R4 K23 ["Anchored"]
       98 JUMPIFNOT                        R4 ; [+6]
       99 GETTABLEKS                       R4 R0 K9 ["_initialInstance"]
      101 GETTABLEKS                       R4 R4 K23 ["Anchored"]
      103 JUMPIFNOT                        R4 ; [+1]
      104 GETUPVAL                         R3 4
      105 GETTABLEKS                       R4 R0 K7 ["_constraintConnectionVisual"]
      107 SETTABLEKS                       R3 R4 K24 ["Color3"]
      109 GETTABLEKS                       R3 R0 K4 ["_selectionHighlight"]
      111 JUMPIFNOTEQKNIL                  R2 ; [+2]
      113 LOADB                            R4 0 +1
      114 LOADB                            R4 1
      115 SETTABLEKS                       R4 R3 K25 ["Enabled"]
      117 MOVE                             R3 R2
      118 JUMPIFNOT                        R3 ; [+2]
      119 GETTABLEKS                       R3 R2 K5 ["Instance"]
      121 SETTABLEKS                       R3 R0 K19 ["_currentHoveringInstance"]
      123 RETURN                           R0 0
      124 LOADNIL                          R2
      125 GETTABLEKS                       R3 R0 K26 ["_lastDragTarget"]
      127 JUMPIFNOT                        R3 ; [+4]
      128 GETTABLEKS                       R3 R0 K26 ["_lastDragTarget"]
      130 GETTABLEKS                       R2 R3 K27 ["targetMatrix"]
      132 GETTABLEKS                       R3 R0 K28 ["_tiltRotate"]
      134 LOADNIL                          R4
      135 GETUPVAL                         R5 5
      136 CALL                             R5 0 1
      137 JUMPIFNOT                        R5 ; [+69]
      138 GETUPVAL                         R5 1
      139 GETTABLEKS                       R5 R5 K29 ["getDragTargetNew"]
      141 MOVE                             R6 R1
      142 DUPTABLE                         R7 K47 [{["selection"], ["selectionBoundsCFrame"], ["selectionBoundsOffset"] = {0, 0, 0}, ["selectionBoundsSize"] = {0, 0, 0}, ["draggedPoint"] = {0, 0, 0}, ["gridSnap"], ["tiltRotate"], ["lastTargetMat"], ["alignRotation"], ["draggingByPivot"] = False, ["softSnapMarginFactor"], ["partSnap"], ["disableTargetSpace"] = True, ["useBoundingBoxes"]}]
      143 NAMECALL                         R8 R0 K48 ["getRaycastIgnoreList"]
      145 CALL                             R8 1 1
      146 SETTABLEKS                       R8 R7 K30 ["selection"]
      148 GETIMPORT                        R8 K50 [CFrame.identity]
      150 SETTABLEKS                       R8 R7 K31 ["selectionBoundsCFrame"]
      152 GETTABLEKS                       R9 R0 K0 ["_draggerContext"]
      154 NAMECALL                         R9 R9 K51 ["shouldGridSnap"]
      156 CALL                             R9 1 1
      157 JUMPIFNOT                        R9 ; [+6]
      158 GETTABLEKS                       R8 R0 K0 ["_draggerContext"]
      160 NAMECALL                         R8 R8 K52 ["getGridSize"]
      162 CALL                             R8 1 1
      163 JUMP                             ; [+1]
      164 LOADNIL                          R8
      165 SETTABLEKS                       R8 R7 K36 ["gridSnap"]
      167 SETTABLEKS                       R3 R7 K37 ["tiltRotate"]
      169 SETTABLEKS                       R2 R7 K38 ["lastTargetMat"]
      171 NAMECALL                         R8 R0 K53 ["shouldAlignDraggedObjects"]
      173 CALL                             R8 1 1
      174 JUMPIFNOT                        R8 ; [+6]
      175 GETTABLEKS                       R9 R0 K0 ["_draggerContext"]
      177 NAMECALL                         R9 R9 K54 ["isAltKeyDown"]
      179 CALL                             R9 1 1
      180 NOT                              R8 R9
      181 SETTABLEKS                       R8 R7 K39 ["alignRotation"]
      183 GETTABLEKS                       R8 R0 K0 ["_draggerContext"]
      185 NAMECALL                         R8 R8 K55 ["getSoftSnapMarginFactor"]
      187 CALL                             R8 1 1
      188 SETTABLEKS                       R8 R7 K42 ["softSnapMarginFactor"]
      190 GETTABLEKS                       R8 R0 K0 ["_draggerContext"]
      192 NAMECALL                         R8 R8 K56 ["shouldPartSnap"]
      194 CALL                             R8 1 1
      195 SETTABLEKS                       R8 R7 K43 ["partSnap"]
      197 GETTABLEKS                       R8 R0 K0 ["_draggerContext"]
      199 NAMECALL                         R8 R8 K57 ["shouldUseBoundingBoxes"]
      201 CALL                             R8 1 1
      202 SETTABLEKS                       R8 R7 K46 ["useBoundingBoxes"]
      204 CALL                             R5 2 1
      205 MOVE                             R4 R5
      206 JUMP                             ; [+51]
      207 GETUPVAL                         R5 1
      208 GETTABLEKS                       R5 R5 K58 ["DEPRECATED_getDragTarget"]
      210 NAMECALL                         R6 R0 K48 ["getRaycastIgnoreList"]
      212 CALL                             R6 1 1
      213 GETIMPORT                        R7 K50 [CFrame.identity]
      215 LOADK                            R8 K33 [{0, 0, 0}]
      216 LOADK                            R9 K33 [{0, 0, 0}]
      217 LOADK                            R10 K33 [{0, 0, 0}]
      218 MOVE                             R11 R1
      219 GETTABLEKS                       R13 R0 K0 ["_draggerContext"]
      221 NAMECALL                         R13 R13 K51 ["shouldGridSnap"]
      223 CALL                             R13 1 1
      224 JUMPIFNOT                        R13 ; [+6]
      225 GETTABLEKS                       R12 R0 K0 ["_draggerContext"]
      227 NAMECALL                         R12 R12 K52 ["getGridSize"]
      229 CALL                             R12 1 1
      230 JUMP                             ; [+1]
      231 LOADNIL                          R12
      232 MOVE                             R13 R3
      233 MOVE                             R14 R2
      234 NAMECALL                         R15 R0 K53 ["shouldAlignDraggedObjects"]
      236 CALL                             R15 1 1
      237 JUMPIFNOT                        R15 ; [+6]
      238 GETTABLEKS                       R16 R0 K0 ["_draggerContext"]
      240 NAMECALL                         R16 R16 K54 ["isAltKeyDown"]
      242 CALL                             R16 1 1
      243 NOT                              R15 R16
      244 LOADB                            R16 0
      245 GETTABLEKS                       R17 R0 K0 ["_draggerContext"]
      247 NAMECALL                         R17 R17 K55 ["getSoftSnapMarginFactor"]
      249 CALL                             R17 1 1
      250 GETTABLEKS                       R18 R0 K0 ["_draggerContext"]
      252 NAMECALL                         R18 R18 K56 ["shouldPartSnap"]
      254 CALL                             R18 1 1
      255 LOADB                            R19 1
      256 CALL                             R5 14 1
      257 MOVE                             R4 R5
      258 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
      260 GETTABLEKS                       R7 R1 K59 ["Origin"]
      262 GETTABLEKS                       R8 R1 K60 ["Direction"]
      264 GETIMPORT                        R9 K62 [RaycastParams.new]
      266 CALL                             R9 0 -1
      267 NAMECALL                         R5 R5 K63 ["gizmoRaycast"]
      269 CALL                             R5 -1 1
      270 LOADNIL                          R6
      271 LOADNIL                          R7
      272 JUMPIFNOT                        R5 ; [+25]
      273 GETTABLEKS                       R8 R5 K5 ["Instance"]
      275 JUMPIFNOT                        R8 ; [+22]
      276 GETTABLEKS                       R8 R5 K5 ["Instance"]
      278 LOADK                            R10 K64 ["Attachment"]
      279 NAMECALL                         R8 R8 K21 ["IsA"]
      281 CALL                             R8 2 1
      282 JUMPIFNOT                        R8 ; [+15]
      283 GETTABLEKS                       R8 R5 K5 ["Instance"]
      285 GETTABLEKS                       R9 R0 K9 ["_initialInstance"]
      287 JUMPIFEQ                         R8 R9 ; [+10]
      289 GETTABLEKS                       R8 R0 K2 ["_constraintType"]
      291 JUMPIFEQKS                       R8 K64 ["Attachment"] ; [+6]
      293 GETTABLEKS                       R7 R5 K5 ["Instance"]
      295 GETTABLEKS                       R6 R7 K65 ["WorldCFrame"]
      297 JUMP                             ; [+8]
      298 JUMPIFNOT                        R4 ; [+7]
      299 GETTABLEKS                       R8 R4 K66 ["targetPart"]
      301 JUMPIFNOT                        R8 ; [+4]
      302 GETTABLEKS                       R7 R4 K66 ["targetPart"]
      304 GETTABLEKS                       R6 R4 K67 ["mainCFrame"]
      306 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      308 JUMPIF                           R8 ; [+41]
      309 GETUPVAL                         R8 1
      310 GETTABLEKS                       R8 R8 K3 ["raycast"]
      312 MOVE                             R9 R1
      313 NEWTABLE                         R10 0 0
      315 CALL                             R8 2 1
      316 JUMPIFNOT                        R8 ; [+33]
      317 GETTABLEKS                       R9 R0 K68 ["_lastNormal"]
      319 GETTABLEKS                       R10 R8 K69 ["Normal"]
      321 JUMPIFEQ                         R9 R10 ; [+24]
      323 GETUPVAL                         R9 5
      324 CALL                             R9 0 1
      325 JUMPIFNOT                        R9 ; [+14]
      326 FASTCALL2K                       ASSERT R4 K70 ; [+5]
      328 MOVE                             R10 R4
      329 LOADK                            R11 K70 ["should be present because the other raycast hit"]
      330 GETIMPORT                        R9 K72 [assert]
      332 CALL                             R9 2 1
      333 GETTABLEKS                       R9 R9 K73 ["baseCFrame"]
      335 GETTABLEKS                       R9 R9 K74 ["Rotation"]
      337 SETTABLEKS                       R9 R0 K75 ["_lastDraggedInstanceDefaultOrientation"]
      339 JUMP                             ; [+6]
      340 GETTABLEKS                       R9 R4 K73 ["baseCFrame"]
      342 GETTABLEKS                       R9 R9 K74 ["Rotation"]
      344 SETTABLEKS                       R9 R0 K75 ["_lastDraggedInstanceDefaultOrientation"]
      346 GETTABLEKS                       R9 R8 K69 ["Normal"]
      348 SETTABLEKS                       R9 R0 K68 ["_lastNormal"]
      350 JUMPIFNOT                        R4 ; [+5]
      351 GETTABLEKS                       R8 R4 K66 ["targetPart"]
      353 JUMPIFNOT                        R8 ; [+2]
      354 SETTABLEKS                       R4 R0 K26 ["_lastDragTarget"]
      356 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      358 JUMPIFNOT                        R8 ; [+6]
      359 JUMPIFNOT                        R4 ; [+5]
      360 GETTABLEKS                       R8 R4 K73 ["baseCFrame"]
      362 GETTABLEKS                       R9 R0 K28 ["_tiltRotate"]
      364 MUL                              R6 R8 R9
      365 SETTABLEKS                       R7 R0 K19 ["_currentHoveringInstance"]
      367 GETTABLEKS                       R8 R0 K4 ["_selectionHighlight"]
      369 JUMPIFNOTEQKNIL                  R7 ; [+2]
      371 LOADB                            R9 0 +1
      372 LOADB                            R9 1
      373 SETTABLEKS                       R9 R8 K25 ["Enabled"]
      375 GETTABLEKS                       R8 R0 K4 ["_selectionHighlight"]
      377 SETTABLEKS                       R7 R8 K6 ["Adornee"]
      379 JUMPIFNOT                        R7 ; [+197]
      380 GETUPVAL                         R8 6
      381 JUMPIFNOT                        R8 ; [+78]
      382 GETTABLEKS                       R8 R0 K76 ["_ghostAssembly"]
      384 JUMPIFNOT                        R8 ; [+4]
      385 GETTABLEKS                       R8 R0 K77 ["_lastHoveringInstance"]
      387 JUMPIFEQ                         R8 R7 ; [+72]
      389 GETTABLEKS                       R8 R0 K76 ["_ghostAssembly"]
      391 JUMPIFNOT                        R8 ; [+8]
      392 GETTABLEKS                       R8 R0 K76 ["_ghostAssembly"]
      394 NAMECALL                         R8 R8 K78 ["Destroy"]
      396 CALL                             R8 1 0
      397 LOADNIL                          R8
      398 SETTABLEKS                       R8 R0 K76 ["_ghostAssembly"]
      400 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      402 JUMPIFNOT                        R8 ; [+57]
      403 GETIMPORT                        R8 K79 [Instance.new]
      405 LOADK                            R9 K80 ["Model"]
      406 CALL                             R8 1 1
      407 SETTABLEKS                       R8 R0 K76 ["_ghostAssembly"]
      409 GETTABLEKS                       R8 R0 K76 ["_ghostAssembly"]
      411 LOADK                            R9 K81 ["GhostAssembly"]
      412 SETTABLEKS                       R9 R8 K82 ["Name"]
      414 GETTABLEKS                       R8 R0 K76 ["_ghostAssembly"]
      416 LOADB                            R9 0
      417 SETTABLEKS                       R9 R8 K83 ["Archivable"]
      419 GETTABLEKS                       R8 R0 K76 ["_ghostAssembly"]
      421 GETIMPORT                        R9 K85 [workspace]
      423 GETTABLEKS                       R9 R9 K86 ["CurrentCamera"]
      425 SETTABLEKS                       R9 R8 K87 ["Parent"]
      427 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      429 GETTABLEKS                       R8 R8 K87 ["Parent"]
      431 NAMECALL                         R8 R8 K88 ["Clone"]
      433 CALL                             R8 1 1
      434 GETTABLEKS                       R9 R0 K76 ["_ghostAssembly"]
      436 SETTABLEKS                       R9 R8 K87 ["Parent"]
      438 GETTABLEKS                       R9 R0 K76 ["_ghostAssembly"]
      440 SETTABLEKS                       R8 R9 K89 ["PrimaryPart"]
      442 GETTABLEKS                       R9 R0 K9 ["_initialInstance"]
      444 GETTABLEKS                       R9 R9 K87 ["Parent"]
      446 LOADB                            R11 1
      447 NAMECALL                         R9 R9 K90 ["GetConnectedParts"]
      449 CALL                             R9 2 3
      450 FORGPREP                         R9
      451 NAMECALL                         R14 R13 K88 ["Clone"]
      453 CALL                             R14 1 1
      454 GETTABLEKS                       R15 R0 K76 ["_ghostAssembly"]
      456 SETTABLEKS                       R15 R14 K87 ["Parent"]
      458 FORGLOOP                         R9 2 ; [-8]
      460 GETTABLEKS                       R8 R0 K91 ["_attachmentAdornment"]
      462 NAMECALL                         R10 R0 K18 ["_canMouseDown"]
      464 CALL                             R10 1 1
      465 JUMPIFNOT                        R10 ; [+2]
      466 GETUPVAL                         R9 7
      467 JUMPIF                           R9 ; [+1]
      468 GETUPVAL                         R9 8
      469 SETTABLEKS                       R9 R8 K24 ["Color3"]
      471 GETTABLEKS                       R8 R0 K75 ["_lastDraggedInstanceDefaultOrientation"]
      473 JUMPIFNOT                        R8 ; [+11]
      474 GETIMPORT                        R9 K15 [CFrame.new]
      476 GETTABLEKS                       R10 R6 K8 ["Position"]
      478 CALL                             R9 1 1
      479 GETTABLEKS                       R10 R0 K75 ["_lastDraggedInstanceDefaultOrientation"]
      481 MUL                              R8 R9 R10
      482 GETTABLEKS                       R9 R0 K28 ["_tiltRotate"]
      484 MUL                              R6 R8 R9
      485 GETTABLEKS                       R8 R0 K92 ["_attachmentToolAnimator"]
      487 NAMECALL                         R8 R8 K93 ["inProgress"]
      489 CALL                             R8 1 1
      490 JUMPIF                           R8 ; [+6]
      491 GETTABLEKS                       R10 R0 K91 ["_attachmentAdornment"]
      493 MOVE                             R11 R6
      494 NAMECALL                         R8 R0 K94 ["_orientAttachmentAdornment"]
      496 CALL                             R8 3 0
      497 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      499 JUMPIFNOT                        R8 ; [+77]
      500 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      502 GETTABLEKS                       R8 R8 K65 ["WorldCFrame"]
      504 GETTABLEKS                       R10 R0 K9 ["_initialInstance"]
      506 GETTABLEKS                       R10 R10 K87 ["Parent"]
      508 GETTABLEKS                       R10 R10 K11 ["CFrame"]
      510 NAMECALL                         R8 R8 K95 ["ToObjectSpace"]
      512 CALL                             R8 2 1
      513 GETTABLEKS                       R10 R6 K96 ["p"]
      515 GETTABLEKS                       R11 R0 K9 ["_initialInstance"]
      517 GETTABLEKS                       R11 R11 K65 ["WorldCFrame"]
      519 GETTABLEKS                       R11 R11 K96 ["p"]
      521 SUB                              R9 R10 R11
      522 GETTABLEKS                       R9 R9 K10 ["Magnitude"]
      524 GETTABLEKS                       R10 R0 K7 ["_constraintConnectionVisual"]
      526 GETIMPORT                        R12 K13 [CFrame.lookAt]
      528 GETTABLEKS                       R13 R0 K9 ["_initialInstance"]
      530 GETTABLEKS                       R13 R13 K65 ["WorldCFrame"]
      532 GETTABLEKS                       R13 R13 K96 ["p"]
      534 GETTABLEKS                       R14 R6 K96 ["p"]
      536 CALL                             R12 2 1
      537 GETIMPORT                        R13 K15 [CFrame.new]
      539 LOADN                            R14 0
      540 LOADN                            R15 0
      541 MINUS                            R17 R9
      542 MULK                             R16 R17 K16 [0.5]
      543 CALL                             R13 3 1
      544 MUL                              R11 R12 R13
      545 SETTABLEKS                       R11 R10 K11 ["CFrame"]
      547 GETTABLEKS                       R10 R0 K7 ["_constraintConnectionVisual"]
      549 SETTABLEKS                       R9 R10 K17 ["Height"]
      551 GETTABLEKS                       R13 R0 K97 ["_partPassthroughEnabled"]
      553 JUMPIFNOT                        R13 ; [+2]
      554 LOADK                            R12 K16 [0.5]
      555 JUMP                             ; [+1]
      556 LOADN                            R12 0
      557 NAMECALL                         R10 R0 K98 ["_setInitialInstanceTransparency"]
      559 CALL                             R10 2 0
      560 GETTABLEKS                       R12 R0 K99 ["_initialInstanceAdornment"]
      562 GETTABLEKS                       R13 R0 K9 ["_initialInstance"]
      564 GETTABLEKS                       R13 R13 K65 ["WorldCFrame"]
      566 NAMECALL                         R10 R0 K94 ["_orientAttachmentAdornment"]
      568 CALL                             R10 3 0
      569 GETUPVAL                         R10 6
      570 JUMPIFNOT                        R10 ; [+6]
      571 GETTABLEKS                       R10 R0 K76 ["_ghostAssembly"]
      573 MUL                              R12 R6 R8
      574 NAMECALL                         R10 R10 K100 ["SetPrimaryPartCFrame"]
      576 CALL                             R10 2 0
      577 RETURN                           R0 0

PROTO_25:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETTABLEKS                       R4 R0 K0 ["_lastDraggedInstanceDefaultOrientation"]
        4 JUMPIFNOT                        R4 ; [+36]
        5 LOADK                            R4 K1 [{0, 1, 0}]
        6 JUMPIFEQ                         R1 R4 ; [+34]
        8 GETTABLEKS                       R4 R0 K2 ["_draggerContext"]
       10 NAMECALL                         R4 R4 K3 ["getCameraCFrame"]
       12 CALL                             R4 1 1
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R4 K4 ["VectorToWorldSpace"]
       16 CALL                             R4 2 1
       17 LOADK                            R5 K5 [-∞]
       18 GETIMPORT                        R6 K7 [ipairs]
       20 GETUPVAL                         R7 0
       21 CALL                             R6 1 3
       22 FORGPREP_INEXT                   R6
       23 GETTABLEKS                       R11 R0 K0 ["_lastDraggedInstanceDefaultOrientation"]
       25 MOVE                             R13 R10
       26 NAMECALL                         R11 R11 K4 ["VectorToWorldSpace"]
       28 CALL                             R11 2 1
       29 MOVE                             R13 R4
       30 NAMECALL                         R11 R11 K8 ["Dot"]
       32 CALL                             R11 2 1
       33 JUMPIFNOTLT                      R5 R11 ; [+3]
       35 MOVE                             R3 R10
       36 MOVE                             R5 R11
       37 FORGLOOP                         R6 2 [inext] ; [-15]
       39 ORK                              R3 R3 K1 [{0, 1, 0}]
       40 JUMP                             ; [+1]
       41 MOVE                             R3 R1
       42 GETUPVAL                         R4 1
       43 GETIMPORT                        R5 K11 [CFrame.fromAxisAngle]
       45 MOVE                             R6 R3
       46 LOADK                            R7 K12 [1.5707963267949]
       47 CALL                             R5 2 -1
       48 CALL                             R4 -1 1
       49 GETTABLEKS                       R5 R0 K13 ["_tiltRotate"]
       51 MUL                              R2 R4 R5
       52 GETTABLEKS                       R5 R0 K14 ["_lastDragTarget"]
       54 JUMPIFNOT                        R5 ; [+26]
       55 GETTABLEKS                       R5 R0 K0 ["_lastDraggedInstanceDefaultOrientation"]
       57 JUMPIFNOT                        R5 ; [+16]
       58 GETTABLEKS                       R5 R0 K15 ["_attachmentToolAnimator"]
       60 GETIMPORT                        R7 K17 [CFrame.new]
       62 GETTABLEKS                       R8 R0 K14 ["_lastDragTarget"]
       64 GETTABLEKS                       R8 R8 K18 ["baseCFrame"]
       66 GETTABLEKS                       R8 R8 K19 ["Position"]
       68 CALL                             R7 1 1
       69 GETTABLEKS                       R8 R0 K0 ["_lastDraggedInstanceDefaultOrientation"]
       71 MUL                              R6 R7 R8
       72 SETTABLEKS                       R6 R5 K20 ["_overrideBaseRotation"]
       74 GETTABLEKS                       R5 R0 K15 ["_attachmentToolAnimator"]
       76 MOVE                             R7 R2
       77 NAMECALL                         R5 R5 K21 ["beginAnimation"]
       79 CALL                             R5 2 0
       80 JUMP                             ; [+2]
       81 SETTABLEKS                       R2 R0 K13 ["_tiltRotate"]
       83 NAMECALL                         R5 R0 K22 ["_updateAttachment"]
       85 CALL                             R5 1 0
       86 NAMECALL                         R5 R0 K23 ["_scheduleRender"]
       88 CALL                             R5 1 0
       89 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["_initialInstance"]
        2 NAMECALL                         R2 R0 K1 ["_clearInitialInstance"]
        4 CALL                             R2 1 0
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R4 R0 K2 ["_constraintType"]
        9 GETTABLE                         R2 R3 R4
       10 JUMPIF                           R2 ; [+8]
       11 GETTABLEKS                       R2 R0 K3 ["_existingInitialAttachment"]
       13 JUMPIF                           R2 ; [+5]
       14 GETUPVAL                         R2 1
       15 NAMECALL                         R2 R2 K4 ["Undo"]
       17 CALL                             R2 1 0
       18 LOADNIL                          R1
       19 GETUPVAL                         R2 2
       20 JUMPIFNOT                        R2 ; [+11]
       21 GETTABLEKS                       R2 R0 K5 ["_ghostAssembly"]
       23 JUMPIFNOT                        R2 ; [+8]
       24 GETTABLEKS                       R2 R0 K5 ["_ghostAssembly"]
       26 NAMECALL                         R2 R2 K6 ["Destroy"]
       28 CALL                             R2 1 0
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R0 K5 ["_ghostAssembly"]
       32 GETTABLEKS                       R2 R0 K7 ["_constraintToolVisualsFolder"]
       34 GETTABLEKS                       R2 R2 K8 ["Parent"]
       36 JUMPIFNOT                        R2 ; [+5]
       37 GETTABLEKS                       R2 R0 K7 ["_constraintToolVisualsFolder"]
       39 NAMECALL                         R2 R2 K6 ["Destroy"]
       41 CALL                             R2 1 0
       42 GETTABLEKS                       R2 R0 K9 ["_gizmoConnection"]
       44 JUMPIFNOT                        R2 ; [+5]
       45 GETTABLEKS                       R2 R0 K9 ["_gizmoConnection"]
       47 NAMECALL                         R2 R2 K10 ["Disconnect"]
       49 CALL                             R2 1 0
       50 NAMECALL                         R2 R0 K11 ["_removeAttachmentAdorns"]
       52 CALL                             R2 1 0
       53 NAMECALL                         R2 R0 K12 ["_removeConstraintVisuals"]
       55 CALL                             R2 1 0
       56 GETTABLEKS                       R2 R0 K13 ["_closePluginCallback"]
       58 CALL                             R2 0 0
       59 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_processSelectionChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowPivotIndicator"]
        4 JUMPIFNOT                        R1 ; [+8]
        5 GETTABLEKS                       R1 R0 K2 ["_draggerContext"]
        7 LOADB                            R3 1
        8 NAMECALL                         R1 R1 K3 ["setPivotIndicator"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K4 ["_oldShowPivot"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K5 ["SelectionChanged"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R1 R1 K6 ["Connect"]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K7 ["_selectionChangedConnection"]
       23 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_isMouseDown"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 NAMECALL                         R1 R0 K1 ["_processMouseUp"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K2 ["_modelProps"]
        8 GETTABLEKS                       R1 R1 K3 ["ShowPivotIndicator"]
       10 JUMPIFNOT                        R1 ; [+7]
       11 GETTABLEKS                       R1 R0 K4 ["_draggerContext"]
       13 GETTABLEKS                       R3 R0 K5 ["_oldShowPivot"]
       15 NAMECALL                         R1 R1 K6 ["setPivotIndicator"]
       17 CALL                             R1 2 0
       18 GETTABLEKS                       R1 R0 K7 ["_selectionChangedConnection"]
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETTABLEKS                       R1 R0 K7 ["_selectionChangedConnection"]
       23 NAMECALL                         R1 R1 K8 ["Disconnect"]
       25 CALL                             R1 1 0
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K7 ["_selectionChangedConnection"]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K9 ["_recordingIdentifier"]
       32 NAMECALL                         R1 R0 K10 ["_closeTool"]
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_30:
        0 NAMECALL                         R1 R0 K0 ["_scheduleRender"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_31:
        0 SETTABLEKS                       R1 R0 K0 ["_constraintType"]
        2 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["_constraintType"]
        3 GETTABLE                         R1 R2 R3
        4 RETURN                           R1 1

PROTO_33:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["CylinderHandleAdornment"]
        3 CALL                             R1 1 1
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K4 ["AlwaysOnTop"]
        7 GETIMPORT                        R2 K6 [workspace]
        9 GETTABLEKS                       R2 R2 K7 ["Terrain"]
       11 SETTABLEKS                       R2 R1 K8 ["Adornee"]
       13 LOADN                            R2 0
       14 SETTABLEKS                       R2 R1 K9 ["ZIndex"]
       16 LOADK                            R3 K10 [0.05]
       17 GETTABLEKS                       R4 R0 K11 ["_adornScale"]
       19 MUL                              R2 R3 R4
       20 SETTABLEKS                       R2 R1 K12 ["Radius"]
       22 GETTABLEKS                       R2 R0 K13 ["_constraintToolVisualsFolder"]
       24 SETTABLEKS                       R2 R1 K14 ["Parent"]
       26 SETTABLEKS                       R1 R0 K15 ["_constraintConnectionVisual"]
       28 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["_constraintConnectionVisual"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_constraintConnectionVisual"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_constraintConnectionVisual"]
       11 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R1 R0 K0 ["_attachmentArrowVisuals"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 NAMECALL                         R6 R4 K1 ["Destroy"]
        7 CALL                             R6 1 0
        8 MOVE                             R6 R5
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 NAMECALL                         R11 R10 K1 ["Destroy"]
       14 CALL                             R11 1 0
       15 FORGLOOP                         R6 2 ; [-4]
       17 FORGLOOP                         R1 2 ; [-13]
       19 GETIMPORT                        R1 K4 [table.clear]
       21 GETTABLEKS                       R2 R0 K0 ["_attachmentArrowVisuals"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.R]
        2 JUMPIFNOTEQ                      R1 R2 ; [+6]
        4 LOADK                            R4 K4 [{0, 1, 0}]
        5 NAMECALL                         R2 R0 K5 ["_rotateAttachment"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R2 K7 [Enum.KeyCode.T]
       11 JUMPIFNOTEQ                      R1 R2 ; [+6]
       13 LOADK                            R4 K8 [{1, 0, 0}]
       14 NAMECALL                         R2 R0 K5 ["_rotateAttachment"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0
       18 GETIMPORT                        R2 K10 [Enum.KeyCode.H]
       20 JUMPIFNOTEQ                      R1 R2 ; [+18]
       22 GETTABLEKS                       R2 R0 K11 ["_draggerContext"]
       24 LOADK                            R4 K12 ["HotkeyUsageHidden"]
       25 GETTABLEKS                       R6 R0 K11 ["_draggerContext"]
       27 LOADK                            R8 K12 ["HotkeyUsageHidden"]
       28 NAMECALL                         R6 R6 K13 ["getSetting"]
       30 CALL                             R6 2 1
       31 NOT                              R5 R6
       32 NAMECALL                         R2 R2 K14 ["setSetting"]
       34 CALL                             R2 3 0
       35 NAMECALL                         R2 R0 K15 ["_scheduleRender"]
       37 CALL                             R2 1 0
       38 RETURN                           R0 0
       39 GETIMPORT                        R2 K17 [Enum.KeyCode.G]
       41 JUMPIFNOTEQ                      R1 R2 ; [+15]
       43 GETUPVAL                         R2 0
       44 JUMPIFNOT                        R2 ; [+12]
       45 GETTABLEKS                       R3 R0 K18 ["_partPassthroughEnabled"]
       47 NOT                              R2 R3
       48 SETTABLEKS                       R2 R0 K18 ["_partPassthroughEnabled"]
       50 NAMECALL                         R2 R0 K19 ["_updateAttachment"]
       52 CALL                             R2 1 0
       53 NAMECALL                         R2 R0 K15 ["_scheduleRender"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0
       57 GETIMPORT                        R2 K21 [Enum.KeyCode.M]
       59 JUMPIFNOTEQ                      R1 R2 ; [+21]
       61 GETTABLEKS                       R3 R0 K22 ["_addMultipleConstraintsEnabled"]
       63 NOT                              R2 R3
       64 SETTABLEKS                       R2 R0 K22 ["_addMultipleConstraintsEnabled"]
       66 GETTABLEKS                       R2 R0 K11 ["_draggerContext"]
       68 LOADK                            R4 K23 ["MultipleConstraintMode"]
       69 GETTABLEKS                       R5 R0 K22 ["_addMultipleConstraintsEnabled"]
       71 NAMECALL                         R2 R2 K14 ["setSetting"]
       73 CALL                             R2 3 0
       74 NAMECALL                         R2 R0 K19 ["_updateAttachment"]
       76 CALL                             R2 1 0
       77 NAMECALL                         R2 R0 K15 ["_scheduleRender"]
       79 CALL                             R2 1 0
       80 RETURN                           R0 0
       81 GETUPVAL                         R3 1
       82 GETTABLE                         R2 R3 R1
       83 JUMPIFNOT                        R2 ; [+6]
       84 NAMECALL                         R2 R0 K19 ["_updateAttachment"]
       86 CALL                             R2 1 0
       87 NAMECALL                         R2 R0 K15 ["_scheduleRender"]
       89 CALL                             R2 1 0
       90 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+6]
        3 NAMECALL                         R2 R0 K0 ["_updateAttachment"]
        5 CALL                             R2 1 0
        6 NAMECALL                         R2 R0 K1 ["_scheduleRender"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_ancestryChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+48]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R0 K1 ["_constraintType"]
        6 GETTABLE                         R1 R2 R3
        7 JUMPIF                           R1 ; [+25]
        8 GETTABLEKS                       R2 R0 K2 ["_attachmentArrowVisuals"]
       10 GETTABLEKS                       R3 R0 K3 ["_initialInstanceAdornment"]
       12 GETTABLE                         R1 R2 R3
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 NAMECALL                         R7 R6 K4 ["Destroy"]
       19 CALL                             R7 1 0
       20 FORGLOOP                         R2 2 ; [-4]
       22 GETTABLEKS                       R2 R0 K3 ["_initialInstanceAdornment"]
       24 NAMECALL                         R2 R2 K4 ["Destroy"]
       26 CALL                             R2 1 0
       27 GETTABLEKS                       R2 R0 K2 ["_attachmentArrowVisuals"]
       29 GETTABLEKS                       R3 R0 K3 ["_initialInstanceAdornment"]
       31 LOADNIL                          R4
       32 SETTABLE                         R4 R2 R3
       33 LOADN                            R3 0
       34 NAMECALL                         R1 R0 K5 ["_setInitialInstanceTransparency"]
       36 CALL                             R1 2 0
       37 GETTABLEKS                       R1 R0 K0 ["_ancestryChangedConnection"]
       39 NAMECALL                         R1 R1 K6 ["Disconnect"]
       41 CALL                             R1 1 0
       42 LOADNIL                          R1
       43 SETTABLEKS                       R1 R0 K0 ["_ancestryChangedConnection"]
       45 LOADNIL                          R1
       46 SETTABLEKS                       R1 R0 K7 ["_initialInstance"]
       48 LOADNIL                          R1
       49 SETTABLEKS                       R1 R0 K3 ["_initialInstanceAdornment"]
       51 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 0
        5 GETIMPORT                        R2 K2 [workspace]
        7 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
        9 CALL                             R0 2 1
       10 JUMPIF                           R0 ; [+8]
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K4 ["_clearInitialInstance"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 1
       16 NAMECALL                         R0 R0 K5 ["_removeConstraintVisuals"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_40:
        0 NAMECALL                         R2 R0 K0 ["_clearInitialInstance"]
        2 CALL                             R2 1 0
        3 SETTABLEKS                       R1 R0 K1 ["_initialInstance"]
        5 GETTABLEKS                       R2 R1 K2 ["AncestryChanged"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R2 R2 K3 ["Connect"]
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R0 K4 ["_ancestryChangedConnection"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R4 R0 K5 ["_constraintType"]
       18 GETTABLE                         R2 R3 R4
       19 JUMPIF                           R2 ; [+5]
       20 NAMECALL                         R2 R0 K6 ["_createAttachmentAdornment"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R0 K7 ["_initialInstanceAdornment"]
       25 NAMECALL                         R2 R0 K8 ["_createConstraintVisuals"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_41:
        0 NAMECALL                         R1 R0 K0 ["_getConstraintData"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R4 R0 K1 ["_constraintType"]
        6 GETTABLE                         R2 R3 R4
        7 GETTABLEKS                       R3 R0 K2 ["_currentHoveringInstance"]
        9 JUMPIF                           R3 ; [+2]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 JUMPIFNOT                        R1 ; [+37]
       13 GETTABLEKS                       R3 R1 K3 ["Attachments"]
       15 JUMPIFNOTEQKN                    R3 K4 [2] ; [+34]
       17 GETTABLEKS                       R3 R0 K5 ["_initialInstance"]
       19 JUMPIFNOT                        R3 ; [+30]
       20 GETTABLEKS                       R3 R1 K6 ["IgnoreSamePartCheck"]
       22 JUMPIF                           R3 ; [+27]
       23 GETTABLEKS                       R3 R0 K2 ["_currentHoveringInstance"]
       25 LOADK                            R6 K7 ["Attachment"]
       26 NAMECALL                         R4 R3 K8 ["IsA"]
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+2]
       30 GETTABLEKS                       R3 R3 K9 ["Parent"]
       32 JUMPIFNOT                        R2 ; [+8]
       33 GETTABLEKS                       R4 R0 K5 ["_initialInstance"]
       35 GETTABLEKS                       R5 R0 K2 ["_currentHoveringInstance"]
       37 JUMPIFNOTEQ                      R4 R5 ; [+3]
       39 LOADB                            R4 0
       40 RETURN                           R4 1
       41 JUMPIF                           R2 ; [+8]
       42 GETTABLEKS                       R4 R0 K5 ["_initialInstance"]
       44 GETTABLEKS                       R4 R4 K9 ["Parent"]
       46 JUMPIFNOTEQ                      R4 R3 ; [+3]
       48 LOADB                            R4 0
       49 RETURN                           R4 1
       50 LOADB                            R3 1
       51 RETURN                           R3 1

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_isMouseDown"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_isMouseDown"]
        7 NAMECALL                         R1 R0 K1 ["_canMouseDown"]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 0
       14 GETUPVAL                         R4 1
       15 LOADK                            R5 K2 ["Placing Constraint"]
       16 NAMECALL                         R2 R2 K3 ["TryBeginRecording"]
       18 CALL                             R2 3 1
       19 GETIMPORT                        R3 K7 [Enum.FinishRecordingOperation.Commit]
       21 NAMECALL                         R4 R0 K8 ["_getConstraintData"]
       23 CALL                             R4 1 1
       24 LOADK                            R5 K9 ["default"]
       25 LOADB                            R6 0
       26 LOADB                            R7 1
       27 LOADB                            R8 0
       28 SETTABLEKS                       R8 R0 K10 ["_existingInitialAttachment"]
       30 LOADB                            R8 0
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R11 R0 K11 ["_constraintType"]
       34 GETTABLE                         R9 R10 R11
       35 JUMPIFNOT                        R9 ; [+38]
       36 GETTABLEKS                       R9 R0 K12 ["_initialInstance"]
       38 JUMPIFNOT                        R9 ; [+27]
       39 GETIMPORT                        R9 K15 [Instance.new]
       41 GETTABLEKS                       R10 R0 K11 ["_constraintType"]
       43 GETTABLEKS                       R11 R0 K12 ["_initialInstance"]
       45 CALL                             R9 2 1
       46 MOVE                             R1 R9
       47 GETTABLEKS                       R9 R0 K12 ["_initialInstance"]
       49 SETTABLEKS                       R9 R1 K16 ["Part0"]
       51 GETTABLEKS                       R9 R0 K17 ["_currentHoveringInstance"]
       53 SETTABLEKS                       R9 R1 K18 ["Part1"]
       55 GETUPVAL                         R9 3
       56 NEWTABLE                         R11 0 1
       58 MOVE                             R12 R1
       59 SETLIST                          R11 R12 1 [1]
       61 NAMECALL                         R9 R9 K19 ["Set"]
       63 CALL                             R9 2 0
       64 LOADB                            R8 1
       65 JUMP                             ; [+241]
       66 GETTABLEKS                       R11 R0 K17 ["_currentHoveringInstance"]
       68 NAMECALL                         R9 R0 K20 ["_selectInitialInstance"]
       70 CALL                             R9 2 0
       71 GETIMPORT                        R3 K22 [Enum.FinishRecordingOperation.Cancel]
       73 JUMP                             ; [+233]
       74 GETTABLEKS                       R10 R0 K11 ["_constraintType"]
       76 JUMPIFNOTEQKS                    R10 K23 ["Bone"] ; [+2]
       78 LOADB                            R9 0 +1
       79 LOADB                            R9 1
       80 GETTABLEKS                       R10 R0 K11 ["_constraintType"]
       82 JUMPIFNOTEQKS                    R10 K23 ["Bone"] ; [+33]
       84 GETIMPORT                        R10 K15 [Instance.new]
       86 LOADK                            R11 K23 ["Bone"]
       87 CALL                             R10 1 1
       88 MOVE                             R1 R10
       89 GETTABLEKS                       R10 R0 K17 ["_currentHoveringInstance"]
       91 GETTABLEKS                       R10 R10 K24 ["CFrame"]
       93 GETTABLEKS                       R12 R0 K25 ["_attachmentAdornment"]
       95 GETTABLEKS                       R12 R12 K24 ["CFrame"]
       97 NAMECALL                         R10 R10 K26 ["ToObjectSpace"]
       99 CALL                             R10 2 1
      100 SETTABLEKS                       R10 R1 K24 ["CFrame"]
      102 GETTABLEKS                       R10 R0 K17 ["_currentHoveringInstance"]
      104 SETTABLEKS                       R10 R1 K27 ["Parent"]
      106 GETUPVAL                         R10 3
      107 NEWTABLE                         R12 0 1
      109 MOVE                             R13 R1
      110 SETLIST                          R12 R13 1 [1]
      112 NAMECALL                         R10 R10 K19 ["Set"]
      114 CALL                             R10 2 0
      115 JUMP                             ; [+42]
      116 GETTABLEKS                       R10 R0 K17 ["_currentHoveringInstance"]
      118 LOADK                            R12 K28 ["Attachment"]
      119 NAMECALL                         R10 R10 K29 ["IsA"]
      121 CALL                             R10 2 1
      122 JUMPIFNOT                        R10 ; [+4]
      123 GETTABLEKS                       R1 R0 K17 ["_currentHoveringInstance"]
      125 LOADB                            R7 0
      126 JUMP                             ; [+31]
      127 GETIMPORT                        R10 K15 [Instance.new]
      129 LOADK                            R11 K28 ["Attachment"]
      130 CALL                             R10 1 1
      131 MOVE                             R1 R10
      132 GETTABLEKS                       R10 R0 K17 ["_currentHoveringInstance"]
      134 GETTABLEKS                       R10 R10 K24 ["CFrame"]
      136 GETTABLEKS                       R12 R0 K25 ["_attachmentAdornment"]
      138 GETTABLEKS                       R12 R12 K24 ["CFrame"]
      140 NAMECALL                         R10 R10 K26 ["ToObjectSpace"]
      142 CALL                             R10 2 1
      143 SETTABLEKS                       R10 R1 K24 ["CFrame"]
      145 GETTABLEKS                       R10 R0 K17 ["_currentHoveringInstance"]
      147 SETTABLEKS                       R10 R1 K27 ["Parent"]
      149 GETUPVAL                         R10 3
      150 NEWTABLE                         R12 0 1
      152 MOVE                             R13 R1
      153 SETLIST                          R12 R13 1 [1]
      155 NAMECALL                         R10 R10 K19 ["Set"]
      157 CALL                             R10 2 0
      158 LOADNIL                          R10
      159 GETTABLEKS                       R11 R4 K30 ["Attachments"]
      161 JUMPIFNOTEQKN                    R11 K31 [2] ; [+102]
      163 GETTABLEKS                       R11 R0 K12 ["_initialInstance"]
      165 JUMPIFNOT                        R11 ; [+71]
      166 JUMPIFNOT                        R7 ; [+3]
      167 LOADK                            R11 K32 ["Attachment1"]
      168 SETTABLEKS                       R11 R1 K33 ["Name"]
      170 GETIMPORT                        R11 K15 [Instance.new]
      172 GETTABLEKS                       R12 R0 K11 ["_constraintType"]
      174 GETTABLEKS                       R13 R0 K12 ["_initialInstance"]
      176 GETTABLEKS                       R13 R13 K27 ["Parent"]
      178 CALL                             R11 2 1
      179 MOVE                             R10 R11
      180 GETTABLEKS                       R11 R0 K12 ["_initialInstance"]
      182 SETTABLEKS                       R11 R10 K34 ["Attachment0"]
      184 SETTABLEKS                       R1 R10 K32 ["Attachment1"]
      186 GETTABLEKS                       R12 R1 K35 ["WorldCFrame"]
      188 GETTABLEKS                       R12 R12 K36 ["p"]
      190 GETTABLEKS                       R13 R0 K12 ["_initialInstance"]
      192 GETTABLEKS                       R13 R13 K35 ["WorldCFrame"]
      194 GETTABLEKS                       R13 R13 K36 ["p"]
      196 SUB                              R11 R12 R13
      197 GETTABLEKS                       R11 R11 K37 ["Magnitude"]
      199 GETTABLEKS                       R12 R0 K11 ["_constraintType"]
      201 JUMPIFEQKS                       R12 K38 ["RopeConstraint"] ; [+5]
      203 GETTABLEKS                       R12 R0 K11 ["_constraintType"]
      205 JUMPIFNOTEQKS                    R12 K39 ["RodConstraint"] ; [+4]
      207 SETTABLEKS                       R11 R10 K40 ["Length"]
      209 JUMP                             ; [+6]
      210 GETTABLEKS                       R12 R0 K11 ["_constraintType"]
      212 JUMPIFNOTEQKS                    R12 K41 ["SpringConstraint"] ; [+3]
      214 SETTABLEKS                       R11 R10 K42 ["FreeLength"]
      216 GETUPVAL                         R12 4
      217 MOVE                             R13 R10
      218 GETTABLEKS                       R14 R0 K11 ["_constraintType"]
      220 CALL                             R12 2 0
      221 GETUPVAL                         R12 5
      222 JUMPIFNOT                        R12 ; [+8]
      223 GETTABLEKS                       R12 R0 K43 ["_ghostAssembly"]
      225 NAMECALL                         R12 R12 K44 ["Destroy"]
      227 CALL                             R12 1 0
      228 LOADNIL                          R12
      229 SETTABLEKS                       R12 R0 K43 ["_ghostAssembly"]
      231 GETIMPORT                        R12 K46 [CFrame.identity]
      233 SETTABLEKS                       R12 R0 K47 ["_tiltRotate"]
      235 LOADB                            R8 1
      236 JUMP                             ; [+47]
      237 JUMPIFNOT                        R7 ; [+4]
      238 LOADK                            R11 K34 ["Attachment0"]
      239 SETTABLEKS                       R11 R1 K33 ["Name"]
      241 JUMP                             ; [+5]
      242 LOADB                            R11 1
      243 SETTABLEKS                       R11 R0 K10 ["_existingInitialAttachment"]
      245 GETIMPORT                        R3 K22 [Enum.FinishRecordingOperation.Cancel]
      247 LOADK                            R5 K48 ["initial"]
      248 MOVE                             R13 R1
      249 NAMECALL                         R11 R0 K20 ["_selectInitialInstance"]
      251 CALL                             R11 2 0
      252 GETTABLEKS                       R12 R0 K49 ["_lastDraggedInstanceDefaultOrientation"]
      254 GETTABLEKS                       R13 R0 K47 ["_tiltRotate"]
      256 MUL                              R11 R12 R13
      257 SETTABLEKS                       R11 R0 K49 ["_lastDraggedInstanceDefaultOrientation"]
      259 GETIMPORT                        R11 K46 [CFrame.identity]
      261 SETTABLEKS                       R11 R0 K47 ["_tiltRotate"]
      263 JUMP                             ; [+20]
      264 GETTABLEKS                       R11 R4 K30 ["Attachments"]
      266 JUMPIFNOTEQKN                    R11 K50 [1] ; [+17]
      268 GETTABLEKS                       R11 R0 K11 ["_constraintType"]
      270 JUMPIFEQKS                       R11 K28 ["Attachment"] ; [+13]
      272 JUMPIFNOT                        R9 ; [+11]
      273 GETIMPORT                        R11 K15 [Instance.new]
      275 GETTABLEKS                       R12 R0 K11 ["_constraintType"]
      277 GETTABLEKS                       R13 R1 K27 ["Parent"]
      279 CALL                             R11 2 1
      280 MOVE                             R10 R11
      281 SETTABLEKS                       R1 R10 K34 ["Attachment0"]
      283 LOADB                            R8 1
      284 JUMPIFNOT                        R10 ; [+10]
      285 LOADB                            R6 1
      286 GETUPVAL                         R11 3
      287 NEWTABLE                         R13 0 1
      289 MOVE                             R14 R10
      290 SETLIST                          R13 R14 1 [1]
      292 NAMECALL                         R11 R11 K19 ["Set"]
      294 CALL                             R11 2 0
      295 JUMPIFNOT                        R10 ; [+11]
      296 GETTABLEKS                       R11 R4 K51 ["Properties"]
      298 JUMPIFNOT                        R11 ; [+8]
      299 GETTABLEKS                       R11 R4 K51 ["Properties"]
      301 LOADNIL                          R12
      302 LOADNIL                          R13
      303 FORGPREP                         R11
      304 SETTABLE                         R15 R10 R14
      305 FORGLOOP                         R11 2 ; [-2]
      307 JUMPIFNOT                        R1 ; [+19]
      308 GETTABLEKS                       R9 R0 K10 ["_existingInitialAttachment"]
      310 JUMPIF                           R9 ; [+16]
      311 GETTABLEKS                       R10 R0 K52 ["_undoAttachmentStack"]
      313 LOADN                            R11 1
      314 DUPTABLE                         R12 K56 [{"attachment", "attachmentParent", "type"}]
      315 SETTABLEKS                       R1 R12 K53 ["attachment"]
      317 GETTABLEKS                       R13 R1 K27 ["Parent"]
      319 SETTABLEKS                       R13 R12 K54 ["attachmentParent"]
      321 SETTABLEKS                       R5 R12 K55 ["type"]
      323 FASTCALL                         TABLE_INSERT ; [+2]
      324 GETIMPORT                        R9 K59 [table.insert]
      326 CALL                             R9 3 0
      327 JUMPIFNOT                        R2 ; [+6]
      328 GETUPVAL                         R9 0
      329 MOVE                             R11 R2
      330 MOVE                             R12 R3
      331 NAMECALL                         R9 R9 K60 ["FinishRecording"]
      333 CALL                             R9 3 0
      334 JUMPIFNOT                        R8 ; [+6]
      335 NAMECALL                         R9 R0 K61 ["_clearInitialInstance"]
      337 CALL                             R9 1 0
      338 NAMECALL                         R9 R0 K62 ["_removeConstraintVisuals"]
      340 CALL                             R9 1 0
      341 NAMECALL                         R9 R0 K63 ["_updateAttachment"]
      343 CALL                             R9 1 0
      344 JUMPIFNOT                        R6 ; [+6]
      345 GETTABLEKS                       R9 R0 K64 ["_addMultipleConstraintsEnabled"]
      347 JUMPIF                           R9 ; [+3]
      348 NAMECALL                         R9 R0 K65 ["_processDeselected"]
      350 CALL                             R9 1 0
      351 RETURN                           R0 0

PROTO_43:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMouseDown"]
        3 GETTABLEKS                       R1 R0 K1 ["_recordingIdentifier"]
        5 JUMPIFNOT                        R1 ; [+10]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R3 R0 K1 ["_recordingIdentifier"]
        9 NAMECALL                         R1 R1 K2 ["IsRecordingInProgress"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K1 ["_recordingIdentifier"]
       16 RETURN                           R0 0

PROTO_44:
        0 NAMECALL                         R1 R0 K0 ["_updateAttachment"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["_scheduleRender"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R1 R0 K0 ["_requestRenderCallback"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["ConstraintTool"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R3 R2 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["DraggerFramework"]
       23 GETIMPORT                        R4 K12 [require]
       25 GETTABLEKS                       R5 R2 K9 ["Packages"]
       27 GETTABLEKS                       R5 R5 K13 ["Roact"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K12 [require]
       32 GETTABLEKS                       R6 R3 K14 ["Flags"]
       34 GETTABLEKS                       R6 R6 K15 ["getEngineFeatureDraggerServiceUseBoundingBoxes"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K12 [require]
       39 GETTABLEKS                       R7 R2 K16 ["Src"]
       41 GETTABLEKS                       R7 R7 K17 ["Resources"]
       43 GETTABLEKS                       R7 R7 K18 ["ConstraintData"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K12 [require]
       48 GETTABLEKS                       R8 R2 K16 ["Src"]
       50 GETTABLEKS                       R8 R8 K19 ["Util"]
       52 GETTABLEKS                       R8 R8 K20 ["AttachmentMover"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K12 [require]
       57 GETTABLEKS                       R9 R3 K21 ["Utility"]
       59 GETTABLEKS                       R9 R9 K22 ["DragHelper"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K12 [require]
       64 GETTABLEKS                       R10 R3 K21 ["Utility"]
       66 GETTABLEKS                       R10 R10 K23 ["roundRotation"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K12 [require]
       71 GETTABLEKS                       R11 R2 K16 ["Src"]
       73 GETTABLEKS                       R11 R11 K24 ["Components"]
       75 GETTABLEKS                       R11 R11 K25 ["setVisible"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K12 [require]
       80 GETTABLEKS                       R12 R2 K16 ["Src"]
       82 GETTABLEKS                       R12 R12 K19 ["Util"]
       84 GETTABLEKS                       R12 R12 K26 ["AttachmentToolRenderer"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K12 [require]
       89 GETTABLEKS                       R13 R2 K16 ["Src"]
       91 GETTABLEKS                       R13 R13 K19 ["Util"]
       93 GETTABLEKS                       R13 R13 K27 ["AttachmentToolAnimator"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K1 [game]
       98 LOADK                            R15 K28 ["EnableConstraintToolGhostAssemblyFeature"]
       99 NAMECALL                         R13 R13 K29 ["GetFastFlag"]
      101 CALL                             R13 2 1
      102 GETIMPORT                        R14 K1 [game]
      104 LOADK                            R16 K30 ["EnableConstraintToolPartPassthroughFeature"]
      105 NAMECALL                         R14 R14 K29 ["GetFastFlag"]
      107 CALL                             R14 2 1
      108 NEWTABLE                         R15 64 0
      110 SETTABLEKS                       R15 R15 K31 ["__index"]
      112 LOADK                            R16 K32 [""]
      113 GETIMPORT                        R17 K35 [Color3.fromRGB]
      115 LOADN                            R18 255
      116 LOADN                            R19 255
      117 LOADN                            R20 0
      118 CALL                             R17 3 1
      119 GETIMPORT                        R18 K35 [Color3.fromRGB]
      121 LOADN                            R19 255
      122 LOADN                            R20 170
      123 LOADN                            R21 0
      124 CALL                             R18 3 1
      125 GETIMPORT                        R19 K35 [Color3.fromRGB]
      127 LOADN                            R20 0
      128 LOADN                            R21 255
      129 LOADN                            R22 0
      130 CALL                             R19 3 1
      131 GETIMPORT                        R20 K35 [Color3.fromRGB]
      133 LOADN                            R21 255
      134 LOADN                            R22 0
      135 LOADN                            R23 0
      136 CALL                             R20 3 1
      137 GETIMPORT                        R21 K35 [Color3.fromRGB]
      139 LOADN                            R22 121
      140 LOADN                            R23 172
      141 LOADN                            R24 255
      142 CALL                             R21 3 1
      143 GETIMPORT                        R22 K35 [Color3.fromRGB]
      145 LOADN                            R23 255
      146 LOADN                            R24 0
      147 LOADN                            R25 0
      148 CALL                             R22 3 1
      149 GETIMPORT                        R23 K35 [Color3.fromRGB]
      151 LOADN                            R24 108
      152 LOADN                            R25 107
      153 LOADN                            R26 107
      154 CALL                             R23 3 1
      155 GETIMPORT                        R24 K38 [table.freeze]
      157 DUPTABLE                         R25 K46 [{["AllowDragSelect"] = True, ["ShowLocalSpaceIndicator"] = False, ["WasAutoSelected"] = False, ["ShowPivotIndicator"] = False, ["ShowDragSelect"] = True}]
      158 CALL                             R24 1 1
      159 GETIMPORT                        R25 K38 [table.freeze]
      161 DUPTABLE                         R26 K48 [{["AnalyticsName"] = True}]
      162 CALL                             R25 1 1
      163 GETIMPORT                        R26 K38 [table.freeze]
      165 DUPTABLE                         R27 K51 [{["WeldConstraint"] = True, ["NoCollisionConstraint"] = True}]
      166 CALL                             R26 1 1
      167 GETIMPORT                        R27 K38 [table.freeze]
      169 NEWTABLE                         R28 0 6
      171 LOADK                            R29 K52 [{1, 0, 0}]
      172 LOADK                            R30 K53 [{-1, 0, 0}]
      173 LOADK                            R31 K54 [{0, 1, 0}]
      174 LOADK                            R32 K55 [{0, -1, 0}]
      175 LOADK                            R33 K56 [{0, 0, 1}]
      176 LOADK                            R34 K57 [{0, 0, -1}]
      177 SETLIST                          R28 R29 6 [1]
      179 CALL                             R27 1 1
      180 GETIMPORT                        R28 K60 [CFrame.new]
      182 LOADN                            R29 0
      183 LOADN                            R30 0
      184 LOADN                            R31 0
      185 LOADN                            R32 0
      186 LOADN                            R33 1
      187 LOADN                            R34 0
      188 LOADN                            R35 1
      189 LOADN                            R36 0
      190 LOADN                            R37 0
      191 LOADN                            R38 0
      192 LOADN                            R39 0
      193 LOADN                            R40 -1
      194 CALL                             R28 12 1
      195 NEWCLOSURE                       R29 P0
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R25
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R28
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R12
      203 CAPTURE                          REF R16
      204 SETTABLEKS                       R29 R15 K59 ["new"]
      206 DUPCLOSURE                       R29 K61 [PROTO_3]
      207 SETTABLEKS                       R29 R15 K62 ["_connectGizmoScale"]
      209 DUPCLOSURE                       R29 K63 [PROTO_4]
      210 SETTABLEKS                       R29 R15 K64 ["_onUndo"]
      212 DUPCLOSURE                       R29 K65 [PROTO_5]
      213 SETTABLEKS                       R29 R15 K66 ["_onRedo"]
      215 DUPCLOSURE                       R29 K67 [PROTO_6]
      216 SETTABLEKS                       R29 R15 K68 ["_resizeAttachmentAdorns"]
      218 DUPCLOSURE                       R29 K69 [PROTO_7]
      219 CAPTURE                          VAL R19
      220 SETTABLEKS                       R29 R15 K70 ["_createAttachmentAdornment"]
      222 DUPCLOSURE                       R29 K71 [PROTO_8]
      223 CAPTURE                          VAL R1
      224 SETTABLEKS                       R29 R15 K72 ["_initAttachmentAdornment"]
      226 DUPCLOSURE                       R29 K73 [PROTO_9]
      227 CAPTURE                          VAL R21
      228 CAPTURE                          VAL R26
      229 CAPTURE                          VAL R1
      230 SETTABLEKS                       R29 R15 K74 ["_initSelectionHighlight"]
      232 DUPCLOSURE                       R29 K75 [PROTO_10]
      233 CAPTURE                          VAL R17
      234 CAPTURE                          VAL R18
      235 SETTABLEKS                       R29 R15 K76 ["_createAttachmentAdornmentArrows"]
      237 DUPCLOSURE                       R29 K77 [PROTO_11]
      238 SETTABLEKS                       R29 R15 K78 ["_orientAttachmentAdornment"]
      240 DUPCLOSURE                       R29 K79 [PROTO_12]
      241 SETTABLEKS                       R29 R15 K80 ["setMouseCursor"]
      243 DUPCLOSURE                       R29 K81 [PROTO_13]
      244 CAPTURE                          VAL R26
      245 CAPTURE                          VAL R4
      246 SETTABLEKS                       R29 R15 K82 ["render"]
      248 DUPCLOSURE                       R29 K83 [PROTO_14]
      249 SETTABLEKS                       R29 R15 K84 ["update"]
      251 DUPCLOSURE                       R29 K85 [PROTO_15]
      252 SETTABLEKS                       R29 R15 K86 ["getSchema"]
      254 DUPCLOSURE                       R29 K87 [PROTO_16]
      255 SETTABLEKS                       R29 R15 K88 ["doesAllowDragSelect"]
      257 DUPCLOSURE                       R29 K89 [PROTO_17]
      258 SETTABLEKS                       R29 R15 K90 ["shouldShowDragSelect"]
      260 DUPCLOSURE                       R29 K91 [PROTO_18]
      261 SETTABLEKS                       R29 R15 K92 ["shouldShowLocalSpaceIndicator"]
      263 DUPCLOSURE                       R29 K93 [PROTO_19]
      264 SETTABLEKS                       R29 R15 K94 ["shouldShowSelectionDot"]
      266 DUPCLOSURE                       R29 K95 [PROTO_20]
      267 SETTABLEKS                       R29 R15 K96 ["shouldUseCollisionTransparency"]
      269 DUPCLOSURE                       R29 K97 [PROTO_21]
      270 SETTABLEKS                       R29 R15 K98 ["shouldAlignDraggedObjects"]
      272 DUPCLOSURE                       R29 K99 [PROTO_22]
      273 CAPTURE                          VAL R13
      274 SETTABLEKS                       R29 R15 K100 ["getRaycastIgnoreList"]
      276 DUPCLOSURE                       R29 K101 [PROTO_23]
      277 CAPTURE                          VAL R26
      278 SETTABLEKS                       R29 R15 K102 ["_setInitialInstanceTransparency"]
      280 DUPCLOSURE                       R29 K103 [PROTO_24]
      281 CAPTURE                          VAL R26
      282 CAPTURE                          VAL R8
      283 CAPTURE                          VAL R21
      284 CAPTURE                          VAL R22
      285 CAPTURE                          VAL R23
      286 CAPTURE                          VAL R5
      287 CAPTURE                          VAL R13
      288 CAPTURE                          VAL R19
      289 CAPTURE                          VAL R20
      290 SETTABLEKS                       R29 R15 K104 ["_updateAttachment"]
      292 DUPCLOSURE                       R29 K105 [PROTO_25]
      293 CAPTURE                          VAL R27
      294 CAPTURE                          VAL R9
      295 SETTABLEKS                       R29 R15 K106 ["_rotateAttachment"]
      297 DUPCLOSURE                       R29 K107 [PROTO_26]
      298 CAPTURE                          VAL R26
      299 CAPTURE                          VAL R0
      300 CAPTURE                          VAL R13
      301 SETTABLEKS                       R29 R15 K108 ["_closeTool"]
      303 DUPCLOSURE                       R29 K109 [PROTO_28]
      304 CAPTURE                          VAL R1
      305 SETTABLEKS                       R29 R15 K110 ["_processSelected"]
      307 DUPCLOSURE                       R29 K111 [PROTO_29]
      308 SETTABLEKS                       R29 R15 K112 ["_processDeselected"]
      310 DUPCLOSURE                       R29 K113 [PROTO_30]
      311 SETTABLEKS                       R29 R15 K114 ["_processSelectionChanged"]
      313 DUPCLOSURE                       R29 K115 [PROTO_31]
      314 SETTABLEKS                       R29 R15 K116 ["_setConstraintType"]
      316 DUPCLOSURE                       R29 K117 [PROTO_32]
      317 CAPTURE                          VAL R6
      318 SETTABLEKS                       R29 R15 K118 ["_getConstraintData"]
      320 DUPCLOSURE                       R29 K119 [PROTO_33]
      321 SETTABLEKS                       R29 R15 K120 ["_createConstraintVisuals"]
      323 DUPCLOSURE                       R29 K121 [PROTO_34]
      324 SETTABLEKS                       R29 R15 K122 ["_removeConstraintVisuals"]
      326 DUPCLOSURE                       R29 K123 [PROTO_35]
      327 SETTABLEKS                       R29 R15 K124 ["_removeAttachmentAdorns"]
      329 GETIMPORT                        R29 K38 [table.freeze]
      331 NEWTABLE                         R30 8 0
      333 GETIMPORT                        R31 K128 [Enum.KeyCode.RightShift]
      335 LOADB                            R32 1
      336 SETTABLE                         R32 R30 R31
      337 GETIMPORT                        R31 K130 [Enum.KeyCode.LeftShift]
      339 LOADB                            R32 1
      340 SETTABLE                         R32 R30 R31
      341 GETIMPORT                        R31 K132 [Enum.KeyCode.RightControl]
      343 LOADB                            R32 1
      344 SETTABLE                         R32 R30 R31
      345 GETIMPORT                        R31 K134 [Enum.KeyCode.LeftControl]
      347 LOADB                            R32 1
      348 SETTABLE                         R32 R30 R31
      349 GETIMPORT                        R31 K136 [Enum.KeyCode.RightAlt]
      351 LOADB                            R32 1
      352 SETTABLE                         R32 R30 R31
      353 GETIMPORT                        R31 K138 [Enum.KeyCode.LeftAlt]
      355 LOADB                            R32 1
      356 SETTABLE                         R32 R30 R31
      357 CALL                             R29 1 1
      358 DUPCLOSURE                       R30 K139 [PROTO_36]
      359 CAPTURE                          VAL R14
      360 CAPTURE                          VAL R29
      361 SETTABLEKS                       R30 R15 K140 ["_processKeyDown"]
      363 DUPCLOSURE                       R30 K141 [PROTO_37]
      364 CAPTURE                          VAL R29
      365 SETTABLEKS                       R30 R15 K142 ["_processKeyUp"]
      367 DUPCLOSURE                       R30 K143 [PROTO_38]
      368 CAPTURE                          VAL R26
      369 SETTABLEKS                       R30 R15 K144 ["_clearInitialInstance"]
      371 DUPCLOSURE                       R30 K145 [PROTO_40]
      372 CAPTURE                          VAL R26
      373 SETTABLEKS                       R30 R15 K146 ["_selectInitialInstance"]
      375 DUPCLOSURE                       R30 K147 [PROTO_41]
      376 CAPTURE                          VAL R26
      377 SETTABLEKS                       R30 R15 K148 ["_canMouseDown"]
      379 NEWCLOSURE                       R30 P38
      380 CAPTURE                          VAL R0
      381 CAPTURE                          REF R16
      382 CAPTURE                          VAL R26
      383 CAPTURE                          VAL R1
      384 CAPTURE                          VAL R10
      385 CAPTURE                          VAL R13
      386 SETTABLEKS                       R30 R15 K149 ["_processMouseDown"]
      388 DUPCLOSURE                       R30 K150 [PROTO_43]
      389 CAPTURE                          VAL R0
      390 SETTABLEKS                       R30 R15 K151 ["_processMouseUp"]
      392 DUPCLOSURE                       R30 K152 [PROTO_44]
      393 SETTABLEKS                       R30 R15 K153 ["_processViewChanged"]
      395 DUPCLOSURE                       R30 K154 [PROTO_45]
      396 SETTABLEKS                       R30 R15 K155 ["_scheduleRender"]
      398 CLOSEUPVALS                      R16
      399 RETURN                           R15 1
