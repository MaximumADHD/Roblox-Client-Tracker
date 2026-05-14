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
       67 DUPTABLE                         R14 K41 [{"_draggerContext", "_draggerSchema", "_modelProps", "_closePluginCallback", "_requestRenderCallback", "_constraintToolVisualsFolder", "_markViewDirtyCallback", "_undoAttachmentStack", "_redoAttachmentStack", "_plugin", "_openedTimestamp", "_attachmentMover", "_attachmentArrowVisuals", "_partPassthroughEnabled", "_addMultipleConstraintsEnabled", "_ancestryChangedConnection", "_selectionHighlight", "_ghostAssembly", "_attachmentAdornment", "_initialInstanceAdornment", "_constraintType", "_tiltRotate", "_recordingIdentifier", "_lastDraggedInstanceDefaultOrientation", "_existingInitialAttachment"}]
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
       88 GETIMPORT                        R15 K44 [os.clock]
       90 CALL                             R15 0 1
       91 SETTABLEKS                       R15 R14 K26 ["_openedTimestamp"]
       93 GETUPVAL                         R15 2
       94 GETTABLEKS                       R15 R15 K7 ["new"]
       96 CALL                             R15 0 1
       97 SETTABLEKS                       R15 R14 K27 ["_attachmentMover"]
       99 NEWTABLE                         R15 0 0
      101 SETTABLEKS                       R15 R14 K28 ["_attachmentArrowVisuals"]
      103 LOADB                            R15 0
      104 SETTABLEKS                       R15 R14 K29 ["_partPassthroughEnabled"]
      106 LOADB                            R15 0
      107 SETTABLEKS                       R15 R14 K30 ["_addMultipleConstraintsEnabled"]
      109 LOADNIL                          R15
      110 SETTABLEKS                       R15 R14 K31 ["_ancestryChangedConnection"]
      112 LOADNIL                          R15
      113 SETTABLEKS                       R15 R14 K32 ["_selectionHighlight"]
      115 LOADNIL                          R15
      116 SETTABLEKS                       R15 R14 K33 ["_ghostAssembly"]
      118 LOADNIL                          R15
      119 SETTABLEKS                       R15 R14 K34 ["_attachmentAdornment"]
      121 LOADNIL                          R15
      122 SETTABLEKS                       R15 R14 K35 ["_initialInstanceAdornment"]
      124 LOADNIL                          R15
      125 SETTABLEKS                       R15 R14 K36 ["_constraintType"]
      127 GETUPVAL                         R15 3
      128 SETTABLEKS                       R15 R14 K37 ["_tiltRotate"]
      130 LOADNIL                          R15
      131 SETTABLEKS                       R15 R14 K38 ["_recordingIdentifier"]
      133 LOADNIL                          R15
      134 SETTABLEKS                       R15 R14 K39 ["_lastDraggedInstanceDefaultOrientation"]
      136 LOADB                            R15 0
      137 SETTABLEKS                       R15 R14 K40 ["_existingInitialAttachment"]
      139 GETUPVAL                         R15 4
      140 FASTCALL2                        SETMETATABLE R14 R15 ; [+3]
      142 GETIMPORT                        R13 K46 [setmetatable]
      144 CALL                             R13 2 1
      145 GETUPVAL                         R14 5
      146 GETTABLEKS                       R14 R14 K7 ["new"]
      148 GETTABLEKS                       R15 R13 K16 ["_draggerContext"]
      150 GETTABLEKS                       R16 R13 K17 ["_draggerSchema"]
      152 MOVE                             R17 R13
      153 CALL                             R14 3 1
      154 SETTABLEKS                       R14 R13 K47 ["_attachmentToolRenderer"]
      156 GETUPVAL                         R14 6
      157 GETTABLEKS                       R14 R14 K7 ["new"]
      159 MOVE                             R15 R13
      160 CALL                             R14 1 1
      161 SETTABLEKS                       R14 R13 K48 ["_attachmentToolAnimator"]
      163 SETUPVAL                         R6 7
      164 GETTABLEKS                       R15 R13 K16 ["_draggerContext"]
      166 LOADK                            R17 K49 ["MultipleConstraintMode"]
      167 NAMECALL                         R15 R15 K50 ["getSetting"]
      169 CALL                             R15 2 1
      170 JUMPIFNOT                        R15 ; [+2]
      171 LOADB                            R14 1
      172 JUMP                             ; [+1]
      173 LOADB                            R14 0
      174 SETTABLEKS                       R14 R13 K30 ["_addMultipleConstraintsEnabled"]
      176 LOADN                            R14 1
      177 SETTABLEKS                       R14 R13 K51 ["_adornScale"]
      179 MOVE                             R16 R7
      180 NAMECALL                         R14 R13 K52 ["_connectGizmoScale"]
      182 CALL                             R14 2 0
      183 MOVE                             R14 R8
      184 MOVE                             R15 R13
      185 CALL                             R14 1 1
      186 GETTABLEKS                       R15 R14 K53 ["undo"]
      188 SETTABLEKS                       R15 R13 K54 ["_mainUndo"]
      190 RETURN                           R13 1

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
      134 GETUPVAL                         R4 1
      135 GETTABLEKS                       R4 R4 K29 ["getDragTarget"]
      137 NAMECALL                         R5 R0 K30 ["getRaycastIgnoreList"]
      139 CALL                             R5 1 1
      140 GETIMPORT                        R6 K32 [CFrame.identity]
      142 LOADK                            R7 K33 [{0, 0, 0}]
      143 LOADK                            R8 K33 [{0, 0, 0}]
      144 LOADK                            R9 K33 [{0, 0, 0}]
      145 MOVE                             R10 R1
      146 GETTABLEKS                       R12 R0 K0 ["_draggerContext"]
      148 NAMECALL                         R12 R12 K34 ["shouldGridSnap"]
      150 CALL                             R12 1 1
      151 JUMPIFNOT                        R12 ; [+6]
      152 GETTABLEKS                       R11 R0 K0 ["_draggerContext"]
      154 NAMECALL                         R11 R11 K35 ["getGridSize"]
      156 CALL                             R11 1 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R11
      159 MOVE                             R12 R3
      160 MOVE                             R13 R2
      161 NAMECALL                         R14 R0 K36 ["shouldAlignDraggedObjects"]
      163 CALL                             R14 1 1
      164 JUMPIFNOT                        R14 ; [+6]
      165 GETTABLEKS                       R15 R0 K0 ["_draggerContext"]
      167 NAMECALL                         R15 R15 K37 ["isAltKeyDown"]
      169 CALL                             R15 1 1
      170 NOT                              R14 R15
      171 LOADB                            R15 0
      172 GETTABLEKS                       R16 R0 K0 ["_draggerContext"]
      174 NAMECALL                         R16 R16 K38 ["getSoftSnapMarginFactor"]
      176 CALL                             R16 1 1
      177 GETTABLEKS                       R17 R0 K0 ["_draggerContext"]
      179 NAMECALL                         R17 R17 K39 ["shouldPartSnap"]
      181 CALL                             R17 1 1
      182 LOADB                            R18 1
      183 CALL                             R4 14 1
      184 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
      186 GETTABLEKS                       R7 R1 K40 ["Origin"]
      188 GETTABLEKS                       R8 R1 K41 ["Direction"]
      190 GETIMPORT                        R9 K43 [RaycastParams.new]
      192 CALL                             R9 0 -1
      193 NAMECALL                         R5 R5 K44 ["gizmoRaycast"]
      195 CALL                             R5 -1 1
      196 LOADNIL                          R6
      197 LOADNIL                          R7
      198 JUMPIFNOT                        R5 ; [+25]
      199 GETTABLEKS                       R8 R5 K5 ["Instance"]
      201 JUMPIFNOT                        R8 ; [+22]
      202 GETTABLEKS                       R8 R5 K5 ["Instance"]
      204 LOADK                            R10 K45 ["Attachment"]
      205 NAMECALL                         R8 R8 K21 ["IsA"]
      207 CALL                             R8 2 1
      208 JUMPIFNOT                        R8 ; [+15]
      209 GETTABLEKS                       R8 R5 K5 ["Instance"]
      211 GETTABLEKS                       R9 R0 K9 ["_initialInstance"]
      213 JUMPIFEQ                         R8 R9 ; [+10]
      215 GETTABLEKS                       R8 R0 K2 ["_constraintType"]
      217 JUMPIFEQKS                       R8 K45 ["Attachment"] ; [+6]
      219 GETTABLEKS                       R7 R5 K5 ["Instance"]
      221 GETTABLEKS                       R6 R7 K46 ["WorldCFrame"]
      223 JUMP                             ; [+8]
      224 JUMPIFNOT                        R4 ; [+7]
      225 GETTABLEKS                       R8 R4 K47 ["targetPart"]
      227 JUMPIFNOT                        R8 ; [+4]
      228 GETTABLEKS                       R7 R4 K47 ["targetPart"]
      230 GETTABLEKS                       R6 R4 K48 ["mainCFrame"]
      232 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      234 JUMPIF                           R8 ; [+24]
      235 GETUPVAL                         R8 1
      236 GETTABLEKS                       R8 R8 K3 ["raycast"]
      238 MOVE                             R9 R1
      239 NEWTABLE                         R10 0 0
      241 CALL                             R8 2 1
      242 JUMPIFNOT                        R8 ; [+16]
      243 GETTABLEKS                       R9 R0 K49 ["_lastNormal"]
      245 GETTABLEKS                       R10 R8 K50 ["Normal"]
      247 JUMPIFEQ                         R9 R10 ; [+7]
      249 GETTABLEKS                       R9 R4 K51 ["baseCFrame"]
      251 GETTABLEKS                       R9 R9 K52 ["Rotation"]
      253 SETTABLEKS                       R9 R0 K53 ["_lastDraggedInstanceDefaultOrientation"]
      255 GETTABLEKS                       R9 R8 K50 ["Normal"]
      257 SETTABLEKS                       R9 R0 K49 ["_lastNormal"]
      259 JUMPIFNOT                        R4 ; [+5]
      260 GETTABLEKS                       R8 R4 K47 ["targetPart"]
      262 JUMPIFNOT                        R8 ; [+2]
      263 SETTABLEKS                       R4 R0 K26 ["_lastDragTarget"]
      265 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      267 JUMPIFNOT                        R8 ; [+6]
      268 JUMPIFNOT                        R4 ; [+5]
      269 GETTABLEKS                       R8 R4 K51 ["baseCFrame"]
      271 GETTABLEKS                       R9 R0 K28 ["_tiltRotate"]
      273 MUL                              R6 R8 R9
      274 SETTABLEKS                       R7 R0 K19 ["_currentHoveringInstance"]
      276 GETTABLEKS                       R8 R0 K4 ["_selectionHighlight"]
      278 JUMPIFNOTEQKNIL                  R7 ; [+2]
      280 LOADB                            R9 0 +1
      281 LOADB                            R9 1
      282 SETTABLEKS                       R9 R8 K25 ["Enabled"]
      284 GETTABLEKS                       R8 R0 K4 ["_selectionHighlight"]
      286 SETTABLEKS                       R7 R8 K6 ["Adornee"]
      288 JUMPIFNOT                        R7 ; [+197]
      289 GETUPVAL                         R8 5
      290 JUMPIFNOT                        R8 ; [+78]
      291 GETTABLEKS                       R8 R0 K54 ["_ghostAssembly"]
      293 JUMPIFNOT                        R8 ; [+4]
      294 GETTABLEKS                       R8 R0 K55 ["_lastHoveringInstance"]
      296 JUMPIFEQ                         R8 R7 ; [+72]
      298 GETTABLEKS                       R8 R0 K54 ["_ghostAssembly"]
      300 JUMPIFNOT                        R8 ; [+8]
      301 GETTABLEKS                       R8 R0 K54 ["_ghostAssembly"]
      303 NAMECALL                         R8 R8 K56 ["Destroy"]
      305 CALL                             R8 1 0
      306 LOADNIL                          R8
      307 SETTABLEKS                       R8 R0 K54 ["_ghostAssembly"]
      309 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      311 JUMPIFNOT                        R8 ; [+57]
      312 GETIMPORT                        R8 K57 [Instance.new]
      314 LOADK                            R9 K58 ["Model"]
      315 CALL                             R8 1 1
      316 SETTABLEKS                       R8 R0 K54 ["_ghostAssembly"]
      318 GETTABLEKS                       R8 R0 K54 ["_ghostAssembly"]
      320 LOADK                            R9 K59 ["GhostAssembly"]
      321 SETTABLEKS                       R9 R8 K60 ["Name"]
      323 GETTABLEKS                       R8 R0 K54 ["_ghostAssembly"]
      325 LOADB                            R9 0
      326 SETTABLEKS                       R9 R8 K61 ["Archivable"]
      328 GETTABLEKS                       R8 R0 K54 ["_ghostAssembly"]
      330 GETIMPORT                        R9 K63 [workspace]
      332 GETTABLEKS                       R9 R9 K64 ["CurrentCamera"]
      334 SETTABLEKS                       R9 R8 K65 ["Parent"]
      336 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      338 GETTABLEKS                       R8 R8 K65 ["Parent"]
      340 NAMECALL                         R8 R8 K66 ["Clone"]
      342 CALL                             R8 1 1
      343 GETTABLEKS                       R9 R0 K54 ["_ghostAssembly"]
      345 SETTABLEKS                       R9 R8 K65 ["Parent"]
      347 GETTABLEKS                       R9 R0 K54 ["_ghostAssembly"]
      349 SETTABLEKS                       R8 R9 K67 ["PrimaryPart"]
      351 GETTABLEKS                       R9 R0 K9 ["_initialInstance"]
      353 GETTABLEKS                       R9 R9 K65 ["Parent"]
      355 LOADB                            R11 1
      356 NAMECALL                         R9 R9 K68 ["GetConnectedParts"]
      358 CALL                             R9 2 3
      359 FORGPREP                         R9
      360 NAMECALL                         R14 R13 K66 ["Clone"]
      362 CALL                             R14 1 1
      363 GETTABLEKS                       R15 R0 K54 ["_ghostAssembly"]
      365 SETTABLEKS                       R15 R14 K65 ["Parent"]
      367 FORGLOOP                         R9 2 ; [-8]
      369 GETTABLEKS                       R8 R0 K69 ["_attachmentAdornment"]
      371 NAMECALL                         R10 R0 K18 ["_canMouseDown"]
      373 CALL                             R10 1 1
      374 JUMPIFNOT                        R10 ; [+2]
      375 GETUPVAL                         R9 6
      376 JUMPIF                           R9 ; [+1]
      377 GETUPVAL                         R9 7
      378 SETTABLEKS                       R9 R8 K24 ["Color3"]
      380 GETTABLEKS                       R8 R0 K53 ["_lastDraggedInstanceDefaultOrientation"]
      382 JUMPIFNOT                        R8 ; [+11]
      383 GETIMPORT                        R9 K15 [CFrame.new]
      385 GETTABLEKS                       R10 R6 K8 ["Position"]
      387 CALL                             R9 1 1
      388 GETTABLEKS                       R10 R0 K53 ["_lastDraggedInstanceDefaultOrientation"]
      390 MUL                              R8 R9 R10
      391 GETTABLEKS                       R9 R0 K28 ["_tiltRotate"]
      393 MUL                              R6 R8 R9
      394 GETTABLEKS                       R8 R0 K70 ["_attachmentToolAnimator"]
      396 NAMECALL                         R8 R8 K71 ["inProgress"]
      398 CALL                             R8 1 1
      399 JUMPIF                           R8 ; [+6]
      400 GETTABLEKS                       R10 R0 K69 ["_attachmentAdornment"]
      402 MOVE                             R11 R6
      403 NAMECALL                         R8 R0 K72 ["_orientAttachmentAdornment"]
      405 CALL                             R8 3 0
      406 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      408 JUMPIFNOT                        R8 ; [+77]
      409 GETTABLEKS                       R8 R0 K9 ["_initialInstance"]
      411 GETTABLEKS                       R8 R8 K46 ["WorldCFrame"]
      413 GETTABLEKS                       R10 R0 K9 ["_initialInstance"]
      415 GETTABLEKS                       R10 R10 K65 ["Parent"]
      417 GETTABLEKS                       R10 R10 K11 ["CFrame"]
      419 NAMECALL                         R8 R8 K73 ["ToObjectSpace"]
      421 CALL                             R8 2 1
      422 GETTABLEKS                       R10 R6 K74 ["p"]
      424 GETTABLEKS                       R11 R0 K9 ["_initialInstance"]
      426 GETTABLEKS                       R11 R11 K46 ["WorldCFrame"]
      428 GETTABLEKS                       R11 R11 K74 ["p"]
      430 SUB                              R9 R10 R11
      431 GETTABLEKS                       R9 R9 K10 ["Magnitude"]
      433 GETTABLEKS                       R10 R0 K7 ["_constraintConnectionVisual"]
      435 GETIMPORT                        R12 K13 [CFrame.lookAt]
      437 GETTABLEKS                       R13 R0 K9 ["_initialInstance"]
      439 GETTABLEKS                       R13 R13 K46 ["WorldCFrame"]
      441 GETTABLEKS                       R13 R13 K74 ["p"]
      443 GETTABLEKS                       R14 R6 K74 ["p"]
      445 CALL                             R12 2 1
      446 GETIMPORT                        R13 K15 [CFrame.new]
      448 LOADN                            R14 0
      449 LOADN                            R15 0
      450 MINUS                            R17 R9
      451 MULK                             R16 R17 K16 [0.5]
      452 CALL                             R13 3 1
      453 MUL                              R11 R12 R13
      454 SETTABLEKS                       R11 R10 K11 ["CFrame"]
      456 GETTABLEKS                       R10 R0 K7 ["_constraintConnectionVisual"]
      458 SETTABLEKS                       R9 R10 K17 ["Height"]
      460 GETTABLEKS                       R13 R0 K75 ["_partPassthroughEnabled"]
      462 JUMPIFNOT                        R13 ; [+2]
      463 LOADK                            R12 K16 [0.5]
      464 JUMP                             ; [+1]
      465 LOADN                            R12 0
      466 NAMECALL                         R10 R0 K76 ["_setInitialInstanceTransparency"]
      468 CALL                             R10 2 0
      469 GETTABLEKS                       R12 R0 K77 ["_initialInstanceAdornment"]
      471 GETTABLEKS                       R13 R0 K9 ["_initialInstance"]
      473 GETTABLEKS                       R13 R13 K46 ["WorldCFrame"]
      475 NAMECALL                         R10 R0 K72 ["_orientAttachmentAdornment"]
      477 CALL                             R10 3 0
      478 GETUPVAL                         R10 5
      479 JUMPIFNOT                        R10 ; [+6]
      480 GETTABLEKS                       R10 R0 K54 ["_ghostAssembly"]
      482 MUL                              R12 R6 R8
      483 NAMECALL                         R10 R10 K78 ["SetPrimaryPartCFrame"]
      485 CALL                             R10 2 0
      486 RETURN                           R0 0

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
       32 GETTABLEKS                       R6 R2 K14 ["Src"]
       34 GETTABLEKS                       R6 R6 K15 ["Resources"]
       36 GETTABLEKS                       R6 R6 K16 ["ConstraintData"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K12 [require]
       41 GETTABLEKS                       R7 R2 K14 ["Src"]
       43 GETTABLEKS                       R7 R7 K17 ["Util"]
       45 GETTABLEKS                       R7 R7 K18 ["AttachmentMover"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K12 [require]
       50 GETTABLEKS                       R8 R3 K19 ["Utility"]
       52 GETTABLEKS                       R8 R8 K20 ["DragHelper"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K12 [require]
       57 GETTABLEKS                       R9 R3 K19 ["Utility"]
       59 GETTABLEKS                       R9 R9 K21 ["roundRotation"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K12 [require]
       64 GETTABLEKS                       R10 R2 K14 ["Src"]
       66 GETTABLEKS                       R10 R10 K22 ["Components"]
       68 GETTABLEKS                       R10 R10 K23 ["setVisible"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K12 [require]
       73 GETTABLEKS                       R11 R2 K14 ["Src"]
       75 GETTABLEKS                       R11 R11 K17 ["Util"]
       77 GETTABLEKS                       R11 R11 K24 ["AttachmentToolRenderer"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K12 [require]
       82 GETTABLEKS                       R12 R2 K14 ["Src"]
       84 GETTABLEKS                       R12 R12 K17 ["Util"]
       86 GETTABLEKS                       R12 R12 K25 ["AttachmentToolAnimator"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K1 [game]
       91 LOADK                            R14 K26 ["EnableConstraintToolGhostAssemblyFeature"]
       92 NAMECALL                         R12 R12 K27 ["GetFastFlag"]
       94 CALL                             R12 2 1
       95 GETIMPORT                        R13 K1 [game]
       97 LOADK                            R15 K28 ["EnableConstraintToolPartPassthroughFeature"]
       98 NAMECALL                         R13 R13 K27 ["GetFastFlag"]
      100 CALL                             R13 2 1
      101 NEWTABLE                         R14 64 0
      103 SETTABLEKS                       R14 R14 K29 ["__index"]
      105 LOADK                            R15 K30 [""]
      106 GETIMPORT                        R16 K33 [Color3.fromRGB]
      108 LOADN                            R17 255
      109 LOADN                            R18 255
      110 LOADN                            R19 0
      111 CALL                             R16 3 1
      112 GETIMPORT                        R17 K33 [Color3.fromRGB]
      114 LOADN                            R18 255
      115 LOADN                            R19 170
      116 LOADN                            R20 0
      117 CALL                             R17 3 1
      118 GETIMPORT                        R18 K33 [Color3.fromRGB]
      120 LOADN                            R19 0
      121 LOADN                            R20 255
      122 LOADN                            R21 0
      123 CALL                             R18 3 1
      124 GETIMPORT                        R19 K33 [Color3.fromRGB]
      126 LOADN                            R20 255
      127 LOADN                            R21 0
      128 LOADN                            R22 0
      129 CALL                             R19 3 1
      130 GETIMPORT                        R20 K33 [Color3.fromRGB]
      132 LOADN                            R21 121
      133 LOADN                            R22 172
      134 LOADN                            R23 255
      135 CALL                             R20 3 1
      136 GETIMPORT                        R21 K33 [Color3.fromRGB]
      138 LOADN                            R22 255
      139 LOADN                            R23 0
      140 LOADN                            R24 0
      141 CALL                             R21 3 1
      142 GETIMPORT                        R22 K33 [Color3.fromRGB]
      144 LOADN                            R23 108
      145 LOADN                            R24 107
      146 LOADN                            R25 107
      147 CALL                             R22 3 1
      148 GETIMPORT                        R23 K36 [table.freeze]
      150 DUPTABLE                         R24 K42 [{"AllowDragSelect", "ShowLocalSpaceIndicator", "WasAutoSelected", "ShowPivotIndicator", "ShowDragSelect"}]
      151 LOADB                            R25 1
      152 SETTABLEKS                       R25 R24 K37 ["AllowDragSelect"]
      154 LOADB                            R25 0
      155 SETTABLEKS                       R25 R24 K38 ["ShowLocalSpaceIndicator"]
      157 LOADB                            R25 0
      158 SETTABLEKS                       R25 R24 K39 ["WasAutoSelected"]
      160 LOADB                            R25 0
      161 SETTABLEKS                       R25 R24 K40 ["ShowPivotIndicator"]
      163 LOADB                            R25 1
      164 SETTABLEKS                       R25 R24 K41 ["ShowDragSelect"]
      166 CALL                             R23 1 1
      167 GETIMPORT                        R24 K36 [table.freeze]
      169 DUPTABLE                         R25 K44 [{"AnalyticsName"}]
      170 LOADB                            R26 1
      171 SETTABLEKS                       R26 R25 K43 ["AnalyticsName"]
      173 CALL                             R24 1 1
      174 GETIMPORT                        R25 K36 [table.freeze]
      176 DUPTABLE                         R26 K47 [{"WeldConstraint", "NoCollisionConstraint"}]
      177 LOADB                            R27 1
      178 SETTABLEKS                       R27 R26 K45 ["WeldConstraint"]
      180 LOADB                            R27 1
      181 SETTABLEKS                       R27 R26 K46 ["NoCollisionConstraint"]
      183 CALL                             R25 1 1
      184 GETIMPORT                        R26 K36 [table.freeze]
      186 NEWTABLE                         R27 0 6
      188 LOADK                            R28 K48 [{1, 0, 0}]
      189 LOADK                            R29 K49 [{-1, 0, 0}]
      190 LOADK                            R30 K50 [{0, 1, 0}]
      191 LOADK                            R31 K51 [{0, -1, 0}]
      192 LOADK                            R32 K52 [{0, 0, 1}]
      193 LOADK                            R33 K53 [{0, 0, -1}]
      194 SETLIST                          R27 R28 6 [1]
      196 CALL                             R26 1 1
      197 GETIMPORT                        R27 K56 [CFrame.new]
      199 LOADN                            R28 0
      200 LOADN                            R29 0
      201 LOADN                            R30 0
      202 LOADN                            R31 0
      203 LOADN                            R32 1
      204 LOADN                            R33 0
      205 LOADN                            R34 1
      206 LOADN                            R35 0
      207 LOADN                            R36 0
      208 LOADN                            R37 0
      209 LOADN                            R38 0
      210 LOADN                            R39 255
      211 CALL                             R27 12 1
      212 NEWCLOSURE                       R28 P0
      213 CAPTURE                          VAL R23
      214 CAPTURE                          VAL R24
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R27
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R10
      219 CAPTURE                          VAL R11
      220 CAPTURE                          REF R15
      221 SETTABLEKS                       R28 R14 K55 ["new"]
      223 DUPCLOSURE                       R28 K57 [PROTO_3]
      224 SETTABLEKS                       R28 R14 K58 ["_connectGizmoScale"]
      226 DUPCLOSURE                       R28 K59 [PROTO_4]
      227 SETTABLEKS                       R28 R14 K60 ["_onUndo"]
      229 DUPCLOSURE                       R28 K61 [PROTO_5]
      230 SETTABLEKS                       R28 R14 K62 ["_onRedo"]
      232 DUPCLOSURE                       R28 K63 [PROTO_6]
      233 SETTABLEKS                       R28 R14 K64 ["_resizeAttachmentAdorns"]
      235 DUPCLOSURE                       R28 K65 [PROTO_7]
      236 CAPTURE                          VAL R18
      237 SETTABLEKS                       R28 R14 K66 ["_createAttachmentAdornment"]
      239 DUPCLOSURE                       R28 K67 [PROTO_8]
      240 CAPTURE                          VAL R1
      241 SETTABLEKS                       R28 R14 K68 ["_initAttachmentAdornment"]
      243 DUPCLOSURE                       R28 K69 [PROTO_9]
      244 CAPTURE                          VAL R20
      245 CAPTURE                          VAL R25
      246 CAPTURE                          VAL R1
      247 SETTABLEKS                       R28 R14 K70 ["_initSelectionHighlight"]
      249 DUPCLOSURE                       R28 K71 [PROTO_10]
      250 CAPTURE                          VAL R16
      251 CAPTURE                          VAL R17
      252 SETTABLEKS                       R28 R14 K72 ["_createAttachmentAdornmentArrows"]
      254 DUPCLOSURE                       R28 K73 [PROTO_11]
      255 SETTABLEKS                       R28 R14 K74 ["_orientAttachmentAdornment"]
      257 DUPCLOSURE                       R28 K75 [PROTO_12]
      258 SETTABLEKS                       R28 R14 K76 ["setMouseCursor"]
      260 DUPCLOSURE                       R28 K77 [PROTO_13]
      261 CAPTURE                          VAL R25
      262 CAPTURE                          VAL R4
      263 SETTABLEKS                       R28 R14 K78 ["render"]
      265 DUPCLOSURE                       R28 K79 [PROTO_14]
      266 SETTABLEKS                       R28 R14 K80 ["update"]
      268 DUPCLOSURE                       R28 K81 [PROTO_15]
      269 SETTABLEKS                       R28 R14 K82 ["getSchema"]
      271 DUPCLOSURE                       R28 K83 [PROTO_16]
      272 SETTABLEKS                       R28 R14 K84 ["doesAllowDragSelect"]
      274 DUPCLOSURE                       R28 K85 [PROTO_17]
      275 SETTABLEKS                       R28 R14 K86 ["shouldShowDragSelect"]
      277 DUPCLOSURE                       R28 K87 [PROTO_18]
      278 SETTABLEKS                       R28 R14 K88 ["shouldShowLocalSpaceIndicator"]
      280 DUPCLOSURE                       R28 K89 [PROTO_19]
      281 SETTABLEKS                       R28 R14 K90 ["shouldShowSelectionDot"]
      283 DUPCLOSURE                       R28 K91 [PROTO_20]
      284 SETTABLEKS                       R28 R14 K92 ["shouldUseCollisionTransparency"]
      286 DUPCLOSURE                       R28 K93 [PROTO_21]
      287 SETTABLEKS                       R28 R14 K94 ["shouldAlignDraggedObjects"]
      289 DUPCLOSURE                       R28 K95 [PROTO_22]
      290 CAPTURE                          VAL R12
      291 SETTABLEKS                       R28 R14 K96 ["getRaycastIgnoreList"]
      293 DUPCLOSURE                       R28 K97 [PROTO_23]
      294 CAPTURE                          VAL R25
      295 SETTABLEKS                       R28 R14 K98 ["_setInitialInstanceTransparency"]
      297 DUPCLOSURE                       R28 K99 [PROTO_24]
      298 CAPTURE                          VAL R25
      299 CAPTURE                          VAL R7
      300 CAPTURE                          VAL R20
      301 CAPTURE                          VAL R21
      302 CAPTURE                          VAL R22
      303 CAPTURE                          VAL R12
      304 CAPTURE                          VAL R18
      305 CAPTURE                          VAL R19
      306 SETTABLEKS                       R28 R14 K100 ["_updateAttachment"]
      308 DUPCLOSURE                       R28 K101 [PROTO_25]
      309 CAPTURE                          VAL R26
      310 CAPTURE                          VAL R8
      311 SETTABLEKS                       R28 R14 K102 ["_rotateAttachment"]
      313 DUPCLOSURE                       R28 K103 [PROTO_26]
      314 CAPTURE                          VAL R25
      315 CAPTURE                          VAL R0
      316 CAPTURE                          VAL R12
      317 SETTABLEKS                       R28 R14 K104 ["_closeTool"]
      319 DUPCLOSURE                       R28 K105 [PROTO_28]
      320 CAPTURE                          VAL R1
      321 SETTABLEKS                       R28 R14 K106 ["_processSelected"]
      323 DUPCLOSURE                       R28 K107 [PROTO_29]
      324 SETTABLEKS                       R28 R14 K108 ["_processDeselected"]
      326 DUPCLOSURE                       R28 K109 [PROTO_30]
      327 SETTABLEKS                       R28 R14 K110 ["_processSelectionChanged"]
      329 DUPCLOSURE                       R28 K111 [PROTO_31]
      330 SETTABLEKS                       R28 R14 K112 ["_setConstraintType"]
      332 DUPCLOSURE                       R28 K113 [PROTO_32]
      333 CAPTURE                          VAL R5
      334 SETTABLEKS                       R28 R14 K114 ["_getConstraintData"]
      336 DUPCLOSURE                       R28 K115 [PROTO_33]
      337 SETTABLEKS                       R28 R14 K116 ["_createConstraintVisuals"]
      339 DUPCLOSURE                       R28 K117 [PROTO_34]
      340 SETTABLEKS                       R28 R14 K118 ["_removeConstraintVisuals"]
      342 DUPCLOSURE                       R28 K119 [PROTO_35]
      343 SETTABLEKS                       R28 R14 K120 ["_removeAttachmentAdorns"]
      345 GETIMPORT                        R28 K36 [table.freeze]
      347 NEWTABLE                         R29 8 0
      349 GETIMPORT                        R30 K124 [Enum.KeyCode.RightShift]
      351 LOADB                            R31 1
      352 SETTABLE                         R31 R29 R30
      353 GETIMPORT                        R30 K126 [Enum.KeyCode.LeftShift]
      355 LOADB                            R31 1
      356 SETTABLE                         R31 R29 R30
      357 GETIMPORT                        R30 K128 [Enum.KeyCode.RightControl]
      359 LOADB                            R31 1
      360 SETTABLE                         R31 R29 R30
      361 GETIMPORT                        R30 K130 [Enum.KeyCode.LeftControl]
      363 LOADB                            R31 1
      364 SETTABLE                         R31 R29 R30
      365 GETIMPORT                        R30 K132 [Enum.KeyCode.RightAlt]
      367 LOADB                            R31 1
      368 SETTABLE                         R31 R29 R30
      369 GETIMPORT                        R30 K134 [Enum.KeyCode.LeftAlt]
      371 LOADB                            R31 1
      372 SETTABLE                         R31 R29 R30
      373 CALL                             R28 1 1
      374 DUPCLOSURE                       R29 K135 [PROTO_36]
      375 CAPTURE                          VAL R13
      376 CAPTURE                          VAL R28
      377 SETTABLEKS                       R29 R14 K136 ["_processKeyDown"]
      379 DUPCLOSURE                       R29 K137 [PROTO_37]
      380 CAPTURE                          VAL R28
      381 SETTABLEKS                       R29 R14 K138 ["_processKeyUp"]
      383 DUPCLOSURE                       R29 K139 [PROTO_38]
      384 CAPTURE                          VAL R25
      385 SETTABLEKS                       R29 R14 K140 ["_clearInitialInstance"]
      387 DUPCLOSURE                       R29 K141 [PROTO_40]
      388 CAPTURE                          VAL R25
      389 SETTABLEKS                       R29 R14 K142 ["_selectInitialInstance"]
      391 DUPCLOSURE                       R29 K143 [PROTO_41]
      392 CAPTURE                          VAL R25
      393 SETTABLEKS                       R29 R14 K144 ["_canMouseDown"]
      395 NEWCLOSURE                       R29 P38
      396 CAPTURE                          VAL R0
      397 CAPTURE                          REF R15
      398 CAPTURE                          VAL R25
      399 CAPTURE                          VAL R1
      400 CAPTURE                          VAL R9
      401 CAPTURE                          VAL R12
      402 SETTABLEKS                       R29 R14 K145 ["_processMouseDown"]
      404 DUPCLOSURE                       R29 K146 [PROTO_43]
      405 CAPTURE                          VAL R0
      406 SETTABLEKS                       R29 R14 K147 ["_processMouseUp"]
      408 DUPCLOSURE                       R29 K148 [PROTO_44]
      409 SETTABLEKS                       R29 R14 K149 ["_processViewChanged"]
      411 DUPCLOSURE                       R29 K150 [PROTO_45]
      412 SETTABLEKS                       R29 R14 K151 ["_scheduleRender"]
      414 CLOSEUPVALS                      R15
      415 RETURN                           R14 1
