PROTO_0:
        0 GETIMPORT                        R6 K1 [pairs]
        2 MOVE                             R7 R2
        3 CALL                             R6 1 3
        4 FORGPREP_NEXT                    R6
        5 GETUPVAL                         R12 0
        6 GETTABLE                         R11 R12 R9
        7 JUMPIFNOTEQKNIL                  R11 ; [+12]
        9 GETUPVAL                         R12 1
       10 GETTABLE                         R11 R12 R9
       11 JUMPIFNOTEQKNIL                  R11 ; [+8]
       13 GETIMPORT                        R11 K3 [error]
       15 LOADK                            R13 K4 ["Unexpected DraggerToolModel prop `"]
       16 MOVE                             R14 R9
       17 LOADK                            R15 K5 ["`"]
       18 CONCAT                           R12 R13 R15
       19 CALL                             R11 1 0
       20 FORGLOOP                         R6 2 ; [-16]
       22 NEWTABLE                         R6 0 0
       24 GETIMPORT                        R7 K1 [pairs]
       26 GETUPVAL                         R8 1
       27 CALL                             R7 1 3
       28 FORGPREP_NEXT                    R7
       29 GETTABLE                         R12 R2 R10
       30 JUMPIFNOTEQKNIL                  R12 ; [+9]
       32 GETIMPORT                        R13 K3 [error]
       34 LOADK                            R15 K6 ["Required prop `"]
       35 MOVE                             R16 R10
       36 LOADK                            R17 K7 ["` missing from DraggerToolModel props"]
       37 CONCAT                           R14 R15 R17
       38 CALL                             R13 1 0
       39 JUMP                             ; [+1]
       40 SETTABLE                         R12 R6 R10
       41 FORGLOOP                         R7 2 ; [-13]
       43 GETIMPORT                        R7 K1 [pairs]
       45 GETUPVAL                         R8 0
       46 CALL                             R7 1 3
       47 FORGPREP_NEXT                    R7
       48 GETTABLE                         R12 R2 R10
       49 JUMPIFEQKNIL                     R12 ; [+4]
       51 GETTABLE                         R12 R2 R10
       52 SETTABLE                         R12 R6 R10
       53 JUMP                             ; [+1]
       54 SETTABLE                         R11 R6 R10
       55 FORGLOOP                         R7 2 ; [-8]
       57 DUPTABLE                         R8 K22 [{"_lastMouseClickTime", "_lastMouseClickLocation", "_handlesList", "_allHandlesList", "_enabledHandlesList", "_draggerContext", "_draggerSchema", "_modelProps", "_requestRenderCallback", "_markViewDirtyCallback", "_markSelectionDirtyCallback", "_selectionWrapper", "_selectionCycleCache", "_handlesSummoned"}]
       58 LOADN                            R9 0
       59 SETTABLEKS                       R9 R8 K8 ["_lastMouseClickTime"]
       61 GETIMPORT                        R9 K25 [Vector2.new]
       63 LOADN                            R10 255
       64 LOADN                            R11 255
       65 CALL                             R9 2 1
       66 SETTABLEKS                       R9 R8 K9 ["_lastMouseClickLocation"]
       68 GETUPVAL                         R10 2
       69 CALL                             R10 0 1
       70 JUMPIF                           R10 ; [+3]
       71 GETTABLEKS                       R9 R6 K26 ["HandlesList"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R9
       75 SETTABLEKS                       R9 R8 K10 ["_handlesList"]
       77 GETUPVAL                         R10 2
       78 CALL                             R10 0 1
       79 JUMPIFNOT                        R10 ; [+3]
       80 GETTABLEKS                       R9 R6 K26 ["HandlesList"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R9
       84 SETTABLEKS                       R9 R8 K11 ["_allHandlesList"]
       86 GETUPVAL                         R10 2
       87 CALL                             R10 0 1
       88 JUMPIFNOT                        R10 ; [+3]
       89 GETTABLEKS                       R9 R6 K26 ["HandlesList"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R9
       93 SETTABLEKS                       R9 R8 K12 ["_enabledHandlesList"]
       95 SETTABLEKS                       R0 R8 K13 ["_draggerContext"]
       97 SETTABLEKS                       R1 R8 K14 ["_draggerSchema"]
       99 SETTABLEKS                       R6 R8 K15 ["_modelProps"]
      101 SETTABLEKS                       R3 R8 K16 ["_requestRenderCallback"]
      103 SETTABLEKS                       R4 R8 K17 ["_markViewDirtyCallback"]
      105 SETTABLEKS                       R5 R8 K18 ["_markSelectionDirtyCallback"]
      107 LOADNIL                          R9
      108 SETTABLEKS                       R9 R8 K19 ["_selectionWrapper"]
      110 GETUPVAL                         R10 3
      111 GETTABLEKS                       R9 R10 K24 ["new"]
      113 MOVE                             R10 R0
      114 MOVE                             R11 R1
      115 CALL                             R9 2 1
      116 SETTABLEKS                       R9 R8 K20 ["_selectionCycleCache"]
      118 LOADB                            R9 0
      119 SETTABLEKS                       R9 R8 K21 ["_handlesSummoned"]
      121 GETUPVAL                         R9 4
      122 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
      124 GETIMPORT                        R7 K28 [setmetatable]
      126 CALL                             R7 2 1
      127 RETURN                           R7 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_mouseCursor"]
        2 JUMPIFEQ                         R2 R1 ; [+9]
        4 SETTABLEKS                       R1 R0 K0 ["_mouseCursor"]
        6 GETTABLEKS                       R2 R0 K1 ["_draggerContext"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["setMouseIcon"]
       11 CALL                             R2 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R1
        3 LOADK                            R5 K0 ["Missing state type: "]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R7 R1
        6 GETIMPORT                        R6 K2 [tostring]
        8 CALL                             R6 1 1
        9 CONCAT                           R4 R5 R6
       10 FASTCALL2                        ASSERT R3 R4 ; [+3]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R0 K5 ["_stateObject"]
       17 NAMECALL                         R2 R2 K6 ["leave"]
       19 CALL                             R2 1 0
       20 SETTABLEKS                       R1 R0 K7 ["_mainState"]
       22 GETUPVAL                         R4 0
       23 GETTABLE                         R3 R4 R1
       24 GETTABLEKS                       R2 R3 K8 ["new"]
       26 MOVE                             R3 R0
       27 GETVARARGS                       R4 -1
       28 CALL                             R2 -1 1
       29 SETTABLEKS                       R2 R0 K5 ["_stateObject"]
       31 GETTABLEKS                       R2 R0 K5 ["_stateObject"]
       33 NAMECALL                         R2 R2 K9 ["enter"]
       35 CALL                             R2 1 0
       36 NAMECALL                         R2 R0 K10 ["_updatePivotIndicatorVisibility"]
       38 CALL                             R2 1 0
       39 NAMECALL                         R2 R0 K11 ["_scheduleRender"]
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["_updateHandles"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["createElement"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["Portal"]
        9 DUPTABLE                         R3 K4 [{"target"}]
       10 GETTABLEKS                       R4 R0 K5 ["_draggerContext"]
       12 NAMECALL                         R4 R4 K6 ["getGuiParent"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K3 ["target"]
       17 DUPTABLE                         R4 K8 [{"DraggerUI"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K1 ["createElement"]
       21 LOADK                            R6 K9 ["Folder"]
       22 NEWTABLE                         R7 0 0
       24 GETTABLEKS                       R8 R0 K10 ["_stateObject"]
       26 NAMECALL                         R8 R8 K11 ["render"]
       28 CALL                             R8 1 -1
       29 CALL                             R5 -1 1
       30 SETTABLEKS                       R5 R4 K7 ["DraggerUI"]
       32 CALL                             R1 3 -1
       33 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["isSimulating"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+30]
        6 GETTABLEKS                       R1 R0 K2 ["_markViewDirtyCallback"]
        8 CALL                             R1 0 0
        9 LOADB                            R1 1
       10 GETTABLEKS                       R2 R0 K3 ["_mainState"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K4 ["DraggingHandle"]
       15 JUMPIFEQ                         R2 R3 ; [+10]
       17 GETTABLEKS                       R2 R0 K3 ["_mainState"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K5 ["DraggingParts"]
       22 JUMPIFEQ                         R2 R3 ; [+2]
       24 LOADB                            R1 0 +1
       25 LOADB                            R1 1
       26 JUMPIF                           R1 ; [+9]
       27 GETTABLEKS                       R2 R0 K6 ["_selectionInfo"]
       29 NAMECALL                         R2 R2 K7 ["isDynamic"]
       31 CALL                             R2 1 1
       32 JUMPIFNOT                        R2 ; [+3]
       33 GETTABLEKS                       R2 R0 K8 ["_markSelectionDirtyCallback"]
       35 CALL                             R2 0 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionWrapper"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R2 K1 ["AnalyticsName"]
        4 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R2 K1 ["WasAutoSelected"]
        4 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerSchema"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["_enabledHandlesList"]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["_handlesList"]
        8 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R2 K1 ["AllowDragSelect"]
        4 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R2 K1 ["AllowFreeformDrag"]
        4 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R2 K1 ["ShowDragSelect"]
        4 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R2 K1 ["ShowLocalSpaceIndicator"]
        4 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R2 K1 ["ShowSelectionDot"]
        4 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R2 K1 ["UseCollisionsTransparency"]
        4 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["shouldAlignDraggedObjects"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["_selectionWrapper"]
        2 NAMECALL                         R3 R3 K1 ["get"]
        4 CALL                             R3 1 1
        5 GETTABLEKS                       R5 R0 K2 ["_draggerSchema"]
        7 GETTABLEKS                       R4 R5 K3 ["getNextSelectables"]
        9 GETTABLEKS                       R5 R0 K4 ["_draggerContext"]
       11 MOVE                             R6 R3
       12 MOVE                             R7 R1
       13 MOVE                             R8 R2
       14 CALL                             R4 4 1
       15 JUMPIFNOT                        R4 ; [+27]
       16 GETTABLEKS                       R5 R0 K4 ["_draggerContext"]
       18 NAMECALL                         R5 R5 K5 ["shouldExtendSelection"]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K6 ["updateSelectionWithMultipleSelectables"]
       24 MOVE                             R7 R4
       25 MOVE                             R8 R3
       26 LOADB                            R9 0
       27 MOVE                             R10 R5
       28 CALL                             R6 4 1
       29 GETTABLEKS                       R7 R0 K0 ["_selectionWrapper"]
       31 MOVE                             R9 R6
       32 NAMECALL                         R7 R7 K7 ["set"]
       34 CALL                             R7 2 0
       35 NAMECALL                         R7 R0 K8 ["isSelected"]
       37 CALL                             R7 1 1
       38 JUMPIF                           R7 ; [+1]
       39 RETURN                           R0 0
       40 NAMECALL                         R7 R0 K9 ["_updateSelectionInfo"]
       42 CALL                             R7 1 0
       43 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionInfo"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADK                            R1 K1 ["None"]
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["_selectionInfo"]
        7 NAMECALL                         R1 R1 K2 ["getBoundingBox"]
        9 CALL                             R1 1 3
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 MOVE                             R7 R3
       14 CALL                             R4 3 -1
       15 RETURN                           R4 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_markSelectionDirtyCallback"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_processSelectionChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Ready"]
        3 SETTABLEKS                       R1 R0 K1 ["_mainState"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["Ready"]
        9 GETTABLE                         R2 R3 R4
       10 GETTABLEKS                       R1 R2 K2 ["new"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K3 ["_stateObject"]
       16 GETTABLEKS                       R2 R0 K4 ["_modelProps"]
       18 GETTABLEKS                       R1 R2 K5 ["ShowPivotIndicator"]
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETTABLEKS                       R1 R0 K6 ["_draggerContext"]
       23 LOADB                            R3 1
       24 NAMECALL                         R1 R1 K7 ["setPivotIndicator"]
       26 CALL                             R1 2 1
       27 SETTABLEKS                       R1 R0 K8 ["_oldShowPivot"]
       29 LOADK                            R1 K9 [""]
       30 SETTABLEKS                       R1 R0 K10 ["_mouseCursor"]
       32 GETTABLEKS                       R1 R0 K6 ["_draggerContext"]
       34 LOADK                            R3 K9 [""]
       35 NAMECALL                         R1 R1 K11 ["setMouseIcon"]
       37 CALL                             R1 2 0
       38 GETTABLEKS                       R3 R0 K12 ["_draggerSchema"]
       40 GETTABLEKS                       R2 R3 K13 ["BoundsChangedTracker"]
       42 GETTABLEKS                       R1 R2 K2 ["new"]
       44 GETTABLEKS                       R2 R0 K6 ["_draggerContext"]
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          VAL R0
       48 CALL                             R1 2 1
       49 SETTABLEKS                       R1 R0 K14 ["_boundsChangedTracker"]
       51 GETTABLEKS                       R1 R0 K14 ["_boundsChangedTracker"]
       53 NAMECALL                         R1 R1 K15 ["install"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R2 2
       57 GETTABLEKS                       R1 R2 K2 ["new"]
       59 GETTABLEKS                       R2 R0 K6 ["_draggerContext"]
       61 NAMECALL                         R2 R2 K16 ["getSelection"]
       63 CALL                             R2 1 -1
       64 CALL                             R1 -1 1
       65 SETTABLEKS                       R1 R0 K17 ["_selectionWrapper"]
       67 GETTABLEKS                       R2 R0 K17 ["_selectionWrapper"]
       69 GETTABLEKS                       R1 R2 K18 ["onSelectionExternallyChanged"]
       71 NEWCLOSURE                       R3 P1
       72 CAPTURE                          VAL R0
       73 NAMECALL                         R1 R1 K19 ["Connect"]
       75 CALL                             R1 2 1
       76 SETTABLEKS                       R1 R0 K20 ["_selectionChangedConnection"]
       78 NAMECALL                         R1 R0 K21 ["_updateSelectionInfo"]
       80 CALL                             R1 1 0
       81 GETUPVAL                         R1 3
       82 CALL                             R1 0 1
       83 JUMPIFNOT                        R1 ; [+3]
       84 NAMECALL                         R1 R0 K22 ["_updateEnabledHandlesList"]
       86 CALL                             R1 1 0
       87 GETTABLEKS                       R1 R0 K3 ["_stateObject"]
       89 NAMECALL                         R1 R1 K23 ["enter"]
       91 CALL                             R1 1 0
       92 NAMECALL                         R1 R0 K24 ["_analyticsSessionBegin"]
       94 CALL                             R1 1 0
       95 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+3]
        3 NAMECALL                         R1 R0 K0 ["_endSummon"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K1 ["_isMouseDown"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 NAMECALL                         R1 R0 K2 ["_processMouseUp"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R2 R0 K3 ["_modelProps"]
       14 GETTABLEKS                       R1 R2 K4 ["ShowPivotIndicator"]
       16 JUMPIFNOT                        R1 ; [+7]
       17 GETTABLEKS                       R1 R0 K5 ["_draggerContext"]
       19 GETTABLEKS                       R3 R0 K6 ["_oldShowPivot"]
       21 NAMECALL                         R1 R1 K7 ["setPivotIndicator"]
       23 CALL                             R1 2 0
       24 GETTABLEKS                       R1 R0 K8 ["_stateObject"]
       26 NAMECALL                         R1 R1 K9 ["leave"]
       28 CALL                             R1 1 0
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K8 ["_stateObject"]
       32 GETTABLEKS                       R1 R0 K10 ["_selectionWrapper"]
       34 NAMECALL                         R1 R1 K11 ["destroy"]
       36 CALL                             R1 1 0
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K10 ["_selectionWrapper"]
       40 GETTABLEKS                       R1 R0 K12 ["_boundsChangedTracker"]
       42 NAMECALL                         R1 R1 K13 ["uninstall"]
       44 CALL                             R1 1 0
       45 GETTABLEKS                       R1 R0 K14 ["_selectionChangedConnection"]
       47 NAMECALL                         R1 R1 K15 ["Disconnect"]
       49 CALL                             R1 1 0
       50 LOADNIL                          R1
       51 SETTABLEKS                       R1 R0 K14 ["_selectionChangedConnection"]
       53 NAMECALL                         R1 R0 K16 ["_analyticsSendSession"]
       55 CALL                             R1 1 0
       56 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["_stateObject"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_24:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_enabledHandlesList"]
        4 GETTABLEKS                       R1 R0 K1 ["_allHandlesList"]
        6 JUMPIFNOT                        R1 ; [+41]
        7 GETIMPORT                        R1 K3 [pairs]
        9 GETTABLEKS                       R2 R0 K1 ["_allHandlesList"]
       11 CALL                             R1 1 3
       12 FORGPREP_NEXT                    R1
       13 GETTABLEKS                       R6 R5 K4 ["_props"]
       15 JUMPIFNOT                        R6 ; [+5]
       16 GETTABLEKS                       R7 R5 K4 ["_props"]
       18 GETTABLEKS                       R6 R7 K5 ["IsEnabledFunction"]
       20 JUMPIF                           R6 ; [+9]
       21 GETTABLEKS                       R7 R0 K0 ["_enabledHandlesList"]
       23 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       25 MOVE                             R8 R5
       26 GETIMPORT                        R6 K8 [table.insert]
       28 CALL                             R6 2 0
       29 JUMP                             ; [+16]
       30 GETTABLEKS                       R7 R5 K4 ["_props"]
       32 GETTABLEKS                       R6 R7 K5 ["IsEnabledFunction"]
       34 GETTABLEKS                       R7 R0 K9 ["_selectionInfo"]
       36 CALL                             R6 1 1
       37 JUMPIFNOT                        R6 ; [+8]
       38 GETTABLEKS                       R7 R0 K0 ["_enabledHandlesList"]
       40 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       42 MOVE                             R8 R5
       43 GETIMPORT                        R6 K8 [table.insert]
       45 CALL                             R6 2 0
       46 FORGLOOP                         R1 2 ; [-34]
       48 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionWrapper"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NAMECALL                         R1 R0 K1 ["_updateSelectionInfo"]
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K2 ["_stateObject"]
        9 NAMECALL                         R1 R1 K3 ["processSelectionChanged"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+3]
       15 NAMECALL                         R1 R0 K4 ["_updateEnabledHandlesList"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 1
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+36]
       21 GETUPVAL                         R1 0
       22 CALL                             R1 0 1
       23 JUMPIFNOT                        R1 ; [+17]
       24 GETTABLEKS                       R1 R0 K5 ["_allHandlesList"]
       26 JUMPIFNOT                        R1 ; [+30]
       27 GETTABLEKS                       R1 R0 K5 ["_allHandlesList"]
       29 LOADNIL                          R2
       30 LOADNIL                          R3
       31 FORGPREP                         R1
       32 GETTABLEKS                       R6 R5 K6 ["selectionChanged"]
       34 JUMPIFNOT                        R6 ; [+3]
       35 NAMECALL                         R6 R5 K6 ["selectionChanged"]
       37 CALL                             R6 1 0
       38 FORGLOOP                         R1 2 ; [-7]
       40 JUMP                             ; [+16]
       41 GETTABLEKS                       R1 R0 K7 ["_handlesList"]
       43 JUMPIFNOT                        R1 ; [+13]
       44 GETTABLEKS                       R1 R0 K7 ["_handlesList"]
       46 LOADNIL                          R2
       47 LOADNIL                          R3
       48 FORGPREP                         R1
       49 GETTABLEKS                       R6 R5 K6 ["selectionChanged"]
       51 JUMPIFNOT                        R6 ; [+3]
       52 NAMECALL                         R6 R5 K6 ["selectionChanged"]
       54 CALL                             R6 1 0
       55 FORGLOOP                         R1 2 ; [-7]
       57 NAMECALL                         R1 R0 K8 ["_scheduleRender"]
       59 CALL                             R1 1 0
       60 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["_stateObject"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["processKeyDown"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R2 R0 K0 ["_stateObject"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["processKeyUp"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["_isMouseDown"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 NAMECALL                         R1 R0 K1 ["_processMouseUp"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 GETTABLEKS                       R2 R0 K2 ["_draggerContext"]
        9 NAMECALL                         R2 R2 K3 ["getMouseLocation"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R4 K6 [os.clock]
       14 CALL                             R4 0 1
       15 GETTABLEKS                       R5 R0 K7 ["_lastMouseClickTime"]
       17 SUB                              R3 R4 R5
       18 LOADK                            R4 K8 [0.5]
       19 JUMPIFNOTLT                      R3 R4 ; [+10]
       21 GETTABLEKS                       R3 R0 K9 ["_lastMouseClickLocation"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+6]
       25 LOADB                            R1 1
       26 LOADN                            R3 0
       27 SETTABLEKS                       R3 R0 K7 ["_lastMouseClickTime"]
       29 JUMP                             ; [+6]
       30 LOADB                            R1 0
       31 GETIMPORT                        R3 K6 [os.clock]
       33 CALL                             R3 0 1
       34 SETTABLEKS                       R3 R0 K7 ["_lastMouseClickTime"]
       36 SETTABLEKS                       R2 R0 K9 ["_lastMouseClickLocation"]
       38 LOADB                            R3 1
       39 SETTABLEKS                       R3 R0 K0 ["_isMouseDown"]
       41 GETTABLEKS                       R3 R0 K10 ["_stateObject"]
       43 MOVE                             R5 R1
       44 NAMECALL                         R3 R3 K11 ["processMouseDown"]
       46 CALL                             R3 2 0
       47 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["_isMouseDown"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_isMouseDown"]
        7 GETTABLEKS                       R1 R0 K1 ["_stateObject"]
        9 NAMECALL                         R1 R1 K2 ["processMouseUp"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["_stateObject"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K0 ["_stateObject"]
        6 NAMECALL                         R1 R1 K1 ["processViewChanged"]
        8 CALL                             R1 1 0
        9 NAMECALL                         R1 R0 K2 ["_scheduleRender"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R4 0
        3 CALL                             R4 0 1
        4 JUMPIFNOT                        R4 ; [+3]
        5 GETTABLEKS                       R2 R0 K2 ["_enabledHandlesList"]
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R2 R0 K3 ["_handlesList"]
       10 CALL                             R1 1 3
       11 FORGPREP_NEXT                    R1
       12 GETTABLEKS                       R6 R5 K4 ["update"]
       14 JUMPIFNOT                        R6 ; [+6]
       15 MOVE                             R8 R0
       16 GETTABLEKS                       R9 R0 K5 ["_selectionInfo"]
       18 NAMECALL                         R6 R5 K4 ["update"]
       20 CALL                             R6 3 0
       21 FORGLOOP                         R1 2 ; [-10]
       23 RETURN                           R0 0

PROTO_32:
        0 JUMPIFNOT                        R1 ; [+3]
        1 SETTABLEKS                       R1 R0 K0 ["_selectionInfo"]
        3 JUMP                             ; [+16]
        4 GETTABLEKS                       R4 R0 K1 ["_draggerSchema"]
        6 GETTABLEKS                       R3 R4 K2 ["SelectionInfo"]
        8 GETTABLEKS                       R2 R3 K3 ["new"]
       10 GETTABLEKS                       R3 R0 K4 ["_draggerContext"]
       12 GETTABLEKS                       R4 R0 K5 ["_selectionWrapper"]
       14 NAMECALL                         R4 R4 K6 ["get"]
       16 CALL                             R4 1 -1
       17 CALL                             R2 -1 1
       18 SETTABLEKS                       R2 R0 K0 ["_selectionInfo"]
       20 GETTABLEKS                       R2 R0 K7 ["_boundsChangedTracker"]
       22 GETTABLEKS                       R4 R0 K0 ["_selectionInfo"]
       24 NAMECALL                         R2 R2 K8 ["setSelection"]
       26 CALL                             R2 2 0
       27 NAMECALL                         R2 R0 K9 ["_updateHandles"]
       29 CALL                             R2 1 0
       30 NAMECALL                         R2 R0 K10 ["_updatePivotIndicatorVisibility"]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R2 K1 ["ShowPivotIndicator"]
        4 JUMPIFNOT                        R1 ; [+30]
        5 GETTABLEKS                       R1 R0 K2 ["_mainState"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["DragSelecting"]
       10 JUMPIFEQ                         R1 R2 ; [+10]
       12 GETTABLEKS                       R2 R0 K4 ["_selectionWrapper"]
       14 NAMECALL                         R2 R2 K5 ["get"]
       16 CALL                             R2 1 1
       17 LENGTH                           R1 R2
       18 LOADN                            R2 1
       19 JUMPIFNOTLT                      R2 R1 ; [+9]
       21 GETTABLEKS                       R1 R0 K6 ["_draggerContext"]
       23 GETTABLEKS                       R3 R0 K7 ["_oldShowPivot"]
       25 NAMECALL                         R1 R1 K8 ["setPivotIndicator"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0
       29 GETTABLEKS                       R1 R0 K6 ["_draggerContext"]
       31 LOADB                            R3 1
       32 NAMECALL                         R1 R1 K8 ["setPivotIndicator"]
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

PROTO_34:
        0 NAMECALL                         R2 R0 K0 ["doesAllowFreeformDrag"]
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K1 ["_isMouseDown"]
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R0 0
        9 LOADB                            R2 1
       10 SETTABLEKS                       R2 R0 K1 ["_isMouseDown"]
       12 GETUPVAL                         R2 0
       13 JUMPIFNOT                        R2 ; [+9]
       14 GETTABLEKS                       R2 R0 K2 ["_selectionWrapper"]
       16 MOVE                             R4 R1
       17 NAMECALL                         R2 R2 K3 ["set"]
       19 CALL                             R2 2 0
       20 NAMECALL                         R2 R0 K4 ["_updateSelectionInfo"]
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 1
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+40]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R4 R5 K5 ["DraggingParts"]
       29 DUPTABLE                         R5 K11 [{"draggedPoint", "clickedPoint", "clickedMetadata", "clickedFaceInstance", "attachmentBeingDragged"}]
       30 LOADK                            R6 K12 [{0, 0, 0}]
       31 SETTABLEKS                       R6 R5 K6 ["draggedPoint"]
       33 LOADK                            R6 K12 [{0, 0, 0}]
       34 SETTABLEKS                       R6 R5 K7 ["clickedPoint"]
       36 GETIMPORT                        R6 K15 [table.freeze]
       38 DUPTABLE                         R7 K20 [{"RaycastResult", "TargetMatrix", "TargetSize", "IsPivot"}]
       39 LOADNIL                          R8
       40 SETTABLEKS                       R8 R7 K16 ["RaycastResult"]
       42 GETIMPORT                        R8 K23 [CFrame.new]
       44 CALL                             R8 0 1
       45 SETTABLEKS                       R8 R7 K17 ["TargetMatrix"]
       47 LOADK                            R8 K12 [{0, 0, 0}]
       48 SETTABLEKS                       R8 R7 K18 ["TargetSize"]
       50 LOADB                            R8 0
       51 SETTABLEKS                       R8 R7 K19 ["IsPivot"]
       53 CALL                             R6 1 1
       54 SETTABLEKS                       R6 R5 K8 ["clickedMetadata"]
       56 LOADNIL                          R6
       57 SETTABLEKS                       R6 R5 K9 ["clickedFaceInstance"]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R5 K10 ["attachmentBeingDragged"]
       62 NAMECALL                         R2 R0 K24 ["transitionToState"]
       64 CALL                             R2 3 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R5 2
       67 GETTABLEKS                       R4 R5 K5 ["DraggingParts"]
       69 DUPTABLE                         R5 K28 [{"mouseLocation", "basisPoint", "clickPoint"}]
       70 GETTABLEKS                       R6 R0 K29 ["_draggerContext"]
       72 NAMECALL                         R6 R6 K30 ["getMouseLocation"]
       74 CALL                             R6 1 1
       75 SETTABLEKS                       R6 R5 K25 ["mouseLocation"]
       77 LOADK                            R6 K12 [{0, 0, 0}]
       78 SETTABLEKS                       R6 R5 K26 ["basisPoint"]
       80 LOADK                            R6 K12 [{0, 0, 0}]
       81 SETTABLEKS                       R6 R5 K27 ["clickPoint"]
       83 NAMECALL                         R2 R0 K24 ["transitionToState"]
       85 CALL                             R2 3 0
       86 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Destroy"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R2 R0 K0 ["_isMouseDown"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R0 K0 ["_isMouseDown"]
        7 LOADNIL                          R2
        8 GETTABLEN                        R3 R1 1
        9 LOADK                            R5 K1 ["VideoFrame"]
       10 NAMECALL                         R3 R3 K2 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+39]
       14 GETIMPORT                        R3 K5 [Instance.new]
       16 LOADK                            R4 K6 ["SurfaceGui"]
       17 CALL                             R3 1 1
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K7 ["Enabled"]
       21 GETUPVAL                         R4 0
       22 SETTABLEKS                       R4 R3 K8 ["Parent"]
       24 GETTABLEN                        R4 R1 1
       25 SETTABLEKS                       R3 R4 K8 ["Parent"]
       27 GETTABLEKS                       R4 R3 K9 ["ChildRemoved"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R3
       31 NAMECALL                         R4 R4 K10 ["Connect"]
       33 CALL                             R4 2 1
       34 MOVE                             R2 R4
       35 GETTABLEKS                       R4 R0 K11 ["_selectionWrapper"]
       37 NEWTABLE                         R6 0 1
       39 MOVE                             R7 R3
       40 SETLIST                          R6 R7 1 [1]
       42 NAMECALL                         R4 R4 K12 ["set"]
       44 CALL                             R4 2 0
       45 NAMECALL                         R4 R0 K13 ["isSelected"]
       47 CALL                             R4 1 1
       48 JUMPIF                           R4 ; [+1]
       49 RETURN                           R0 0
       50 NAMECALL                         R4 R0 K14 ["_updateSelectionInfo"]
       52 CALL                             R4 1 0
       53 GETUPVAL                         R6 1
       54 GETTABLEKS                       R5 R6 K15 ["DraggingFaceInstance"]
       56 MOVE                             R6 R2
       57 NAMECALL                         R3 R0 K16 ["transitionToState"]
       59 CALL                             R3 3 0
       60 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R1 R0 K0 ["_stateObject"]
        2 NAMECALL                         R1 R1 K1 ["processMouseEnter"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["_stateObject"]
        2 NAMECALL                         R1 R1 K1 ["processMouseLeave"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["_requestRenderCallback"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R1 R0 K0 ["_handlesSummoned"]
        2 RETURN                           R1 1

PROTO_41:
        0 GETTABLEKS                       R1 R0 K0 ["_handlesSummoned"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["_draggerContext"]
        6 GETTABLEKS                       R3 R0 K2 ["_draggerSchema"]
        8 GETTABLEKS                       R2 R3 K3 ["getSummonTarget"]
       10 JUMPIFNOT                        R2 ; [+49]
       11 GETTABLEKS                       R3 R0 K2 ["_draggerSchema"]
       13 GETTABLEKS                       R2 R3 K3 ["getSummonTarget"]
       15 MOVE                             R3 R1
       16 NAMECALL                         R4 R1 K4 ["getMouseRay"]
       18 CALL                             R4 1 -1
       19 CALL                             R2 -1 1
       20 JUMPIFNOT                        R2 ; [+39]
       21 GETTABLEKS                       R3 R0 K5 ["_selectionInfo"]
       23 NAMECALL                         R3 R3 K6 ["getBoundingBox"]
       25 CALL                             R3 1 3
       26 MOVE                             R8 R2
       27 NAMECALL                         R6 R3 K7 ["ToObjectSpace"]
       29 CALL                             R6 2 1
       30 LOADB                            R7 0
       31 NAMECALL                         R8 R0 K8 ["getHandlesList"]
       33 CALL                             R8 1 3
       34 FORGPREP                         R8
       35 GETTABLEKS                       R13 R12 K9 ["beginSummon"]
       37 JUMPIFNOT                        R13 ; [+5]
       38 MOVE                             R15 R6
       39 NAMECALL                         R13 R12 K9 ["beginSummon"]
       41 CALL                             R13 2 0
       42 LOADB                            R7 1
       43 FORGLOOP                         R8 2 ; [-9]
       45 JUMPIFNOT                        R7 ; [+14]
       46 LOADB                            R8 1
       47 SETTABLEKS                       R8 R0 K0 ["_handlesSummoned"]
       49 GETTABLEKS                       R8 R0 K1 ["_draggerContext"]
       51 LOADB                            R10 0
       52 NAMECALL                         R8 R8 K10 ["setPivotIndicator"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R0 K11 ["_pivotVisibleBeforeSummon"]
       57 NAMECALL                         R8 R0 K12 ["_scheduleRender"]
       59 CALL                             R8 1 0
       60 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["_handlesSummoned"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["_isMouseDown"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["_handlesSummoned"]
       10 NAMECALL                         R1 R0 K2 ["getHandlesList"]
       12 CALL                             R1 1 3
       13 FORGPREP                         R1
       14 GETTABLEKS                       R6 R5 K3 ["endSummon"]
       16 JUMPIFNOT                        R6 ; [+3]
       17 NAMECALL                         R6 R5 K3 ["endSummon"]
       19 CALL                             R6 1 0
       20 FORGLOOP                         R1 2 ; [-7]
       22 GETTABLEKS                       R1 R0 K4 ["_draggerContext"]
       24 GETTABLEKS                       R3 R0 K5 ["_pivotVisibleBeforeSummon"]
       26 NAMECALL                         R1 R1 K6 ["setPivotIndicator"]
       28 CALL                             R1 2 0
       29 NAMECALL                         R1 R0 K7 ["_scheduleRender"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_43:
        0 GETTABLEKS                       R2 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R2 K1 ["ShowPivotIndicator"]
        4 RETURN                           R1 1

PROTO_44:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K2 ["_selectedAtTime"]
        5 DUPTABLE                         R1 K11 [{"freeformDrags", "handleDrags", "clickSelects", "dragSelects", "dragTilts", "dragRotates", "toolName", "wasAutoSelected"}]
        6 LOADN                            R2 0
        7 SETTABLEKS                       R2 R1 K3 ["freeformDrags"]
        9 LOADN                            R2 0
       10 SETTABLEKS                       R2 R1 K4 ["handleDrags"]
       12 LOADN                            R2 0
       13 SETTABLEKS                       R2 R1 K5 ["clickSelects"]
       15 LOADN                            R2 0
       16 SETTABLEKS                       R2 R1 K6 ["dragSelects"]
       18 LOADN                            R2 0
       19 SETTABLEKS                       R2 R1 K7 ["dragTilts"]
       21 LOADN                            R2 0
       22 SETTABLEKS                       R2 R1 K8 ["dragRotates"]
       24 GETTABLEKS                       R3 R0 K12 ["_modelProps"]
       26 GETTABLEKS                       R2 R3 K13 ["AnalyticsName"]
       28 SETTABLEKS                       R2 R1 K9 ["toolName"]
       30 GETTABLEKS                       R3 R0 K12 ["_modelProps"]
       32 GETTABLEKS                       R2 R3 K14 ["WasAutoSelected"]
       34 SETTABLEKS                       R2 R1 K10 ["wasAutoSelected"]
       36 SETTABLEKS                       R1 R0 K15 ["_sessionAnalytics"]
       38 GETTABLEKS                       R1 R0 K16 ["_draggerContext"]
       40 NAMECALL                         R1 R1 K17 ["getAnalytics"]
       42 CALL                             R1 1 1
       43 LOADK                            R3 K18 ["toolSelected"]
       44 DUPTABLE                         R4 K19 [{"toolName", "wasAutoSelected"}]
       45 GETTABLEKS                       R6 R0 K12 ["_modelProps"]
       47 GETTABLEKS                       R5 R6 K13 ["AnalyticsName"]
       49 SETTABLEKS                       R5 R4 K9 ["toolName"]
       51 GETTABLEKS                       R6 R0 K12 ["_modelProps"]
       53 GETTABLEKS                       R5 R6 K14 ["WasAutoSelected"]
       55 SETTABLEKS                       R5 R4 K10 ["wasAutoSelected"]
       57 NAMECALL                         R1 R1 K20 ["sendEvent"]
       59 CALL                             R1 3 0
       60 GETTABLEKS                       R2 R0 K12 ["_modelProps"]
       62 GETTABLEKS                       R1 R2 K14 ["WasAutoSelected"]
       64 JUMPIFNOT                        R1 ; [+10]
       65 GETTABLEKS                       R1 R0 K16 ["_draggerContext"]
       67 NAMECALL                         R1 R1 K17 ["getAnalytics"]
       69 CALL                             R1 1 1
       70 LOADK                            R3 K21 ["studioLuaDefaultDraggerSelected"]
       71 NAMECALL                         R1 R1 K22 ["reportCounter"]
       73 CALL                             R1 2 0
       74 RETURN                           R0 0
       75 GETTABLEKS                       R1 R0 K16 ["_draggerContext"]
       77 NAMECALL                         R1 R1 K17 ["getAnalytics"]
       79 CALL                             R1 1 1
       80 LOADK                            R4 K23 ["studioLua"]
       81 GETTABLEKS                       R7 R0 K12 ["_modelProps"]
       83 GETTABLEKS                       R5 R7 K13 ["AnalyticsName"]
       85 LOADK                            R6 K24 ["DraggerSelected"]
       86 CONCAT                           R3 R4 R6
       87 NAMECALL                         R1 R1 K22 ["reportCounter"]
       89 CALL                             R1 2 0
       90 RETURN                           R0 0

PROTO_45:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R0 K2 ["_selectedAtTime"]
        5 SUB                              R1 R2 R3
        6 GETTABLEKS                       R2 R0 K3 ["_sessionAnalytics"]
        8 SETTABLEKS                       R1 R2 K4 ["duration"]
       10 GETTABLEKS                       R2 R0 K5 ["_draggerContext"]
       12 NAMECALL                         R2 R2 K6 ["getAnalytics"]
       14 CALL                             R2 1 1
       15 LOADK                            R4 K7 ["toolSession"]
       16 GETTABLEKS                       R5 R0 K3 ["_sessionAnalytics"]
       18 NAMECALL                         R2 R2 K8 ["sendEvent"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0

PROTO_46:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R3 K1 ["getAnalytics"]
        4 CALL                             R3 1 1
        5 LOADK                            R5 K2 ["clickedObject"]
        6 DUPTABLE                         R6 K13 [{"toolName", "wasAutoSelected", "altPressed", "ctrlPressed", "shiftPressed", "clickedAttachment", "clickedConstraint", "clickedWeldConstraint", "clickedNoCollisionConstraint", "didAlterSelection"}]
        7 GETTABLEKS                       R8 R0 K14 ["_modelProps"]
        9 GETTABLEKS                       R7 R8 K15 ["AnalyticsName"]
       11 SETTABLEKS                       R7 R6 K3 ["toolName"]
       13 GETTABLEKS                       R8 R0 K14 ["_modelProps"]
       15 GETTABLEKS                       R7 R8 K16 ["WasAutoSelected"]
       17 SETTABLEKS                       R7 R6 K4 ["wasAutoSelected"]
       19 GETTABLEKS                       R7 R0 K0 ["_draggerContext"]
       21 NAMECALL                         R7 R7 K17 ["isAltKeyDown"]
       23 CALL                             R7 1 1
       24 SETTABLEKS                       R7 R6 K5 ["altPressed"]
       26 GETTABLEKS                       R7 R0 K0 ["_draggerContext"]
       28 NAMECALL                         R7 R7 K18 ["isCtrlKeyDown"]
       30 CALL                             R7 1 1
       31 SETTABLEKS                       R7 R6 K6 ["ctrlPressed"]
       33 GETTABLEKS                       R7 R0 K0 ["_draggerContext"]
       35 NAMECALL                         R7 R7 K19 ["isShiftKeyDown"]
       37 CALL                             R7 1 1
       38 SETTABLEKS                       R7 R6 K7 ["shiftPressed"]
       40 MOVE                             R7 R1
       41 JUMPIFNOT                        R7 ; [+4]
       42 LOADK                            R9 K20 ["Attachment"]
       43 NAMECALL                         R7 R1 K21 ["IsA"]
       45 CALL                             R7 2 1
       46 SETTABLEKS                       R7 R6 K8 ["clickedAttachment"]
       48 MOVE                             R7 R1
       49 JUMPIFNOT                        R7 ; [+4]
       50 LOADK                            R9 K22 ["Constraint"]
       51 NAMECALL                         R7 R1 K21 ["IsA"]
       53 CALL                             R7 2 1
       54 SETTABLEKS                       R7 R6 K9 ["clickedConstraint"]
       56 MOVE                             R7 R1
       57 JUMPIFNOT                        R7 ; [+4]
       58 LOADK                            R9 K23 ["WeldConstraint"]
       59 NAMECALL                         R7 R1 K21 ["IsA"]
       61 CALL                             R7 2 1
       62 SETTABLEKS                       R7 R6 K10 ["clickedWeldConstraint"]
       64 MOVE                             R7 R1
       65 JUMPIFNOT                        R7 ; [+4]
       66 LOADK                            R9 K24 ["NoCollisionConstraint"]
       67 NAMECALL                         R7 R1 K21 ["IsA"]
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K11 ["clickedNoCollisionConstraint"]
       72 SETTABLEKS                       R2 R6 K12 ["didAlterSelection"]
       74 NAMECALL                         R3 R3 K25 ["sendEvent"]
       76 CALL                             R3 3 0
       77 JUMPIFNOT                        R2 ; [+9]
       78 GETTABLEKS                       R3 R0 K26 ["_sessionAnalytics"]
       80 GETTABLEKS                       R6 R0 K26 ["_sessionAnalytics"]
       82 GETTABLEKS                       R5 R6 K28 ["clickSelects"]
       84 ADDK                             R4 R5 K27 [1]
       85 SETTABLEKS                       R4 R3 K28 ["clickSelects"]
       87 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R3 K1 ["getAnalytics"]
        4 CALL                             R3 1 1
        5 LOADK                            R5 K2 ["selectionCycle"]
        6 DUPTABLE                         R6 K6 [{"toolName", "numberOfClicks", "selectableCount"}]
        7 GETTABLEKS                       R8 R0 K7 ["_modelProps"]
        9 GETTABLEKS                       R7 R8 K8 ["AnalyticsName"]
       11 SETTABLEKS                       R7 R6 K3 ["toolName"]
       13 SETTABLEKS                       R1 R6 K4 ["numberOfClicks"]
       15 SETTABLEKS                       R2 R6 K5 ["selectableCount"]
       17 NAMECALL                         R3 R3 K9 ["sendEvent"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R2 R0 K0 ["_sessionAnalytics"]
        2 GETTABLEKS                       R5 R0 K0 ["_sessionAnalytics"]
        4 GETTABLEKS                       R4 R5 K2 ["freeformDrags"]
        6 ADDK                             R3 R4 K1 [1]
        7 SETTABLEKS                       R3 R2 K2 ["freeformDrags"]
        9 LOADK                            R3 K3 ["studioLuaDragger"]
       10 GETTABLEKS                       R6 R0 K4 ["_modelProps"]
       12 GETTABLEKS                       R4 R6 K5 ["AnalyticsName"]
       14 LOADK                            R5 K6 ["DragTime"]
       15 CONCAT                           R2 R3 R5
       16 GETTABLEKS                       R3 R0 K7 ["_draggerContext"]
       18 NAMECALL                         R3 R3 K8 ["getAnalytics"]
       20 CALL                             R3 1 1
       21 MOVE                             R5 R2
       22 MOVE                             R6 R1
       23 NAMECALL                         R3 R3 K9 ["reportStats"]
       25 CALL                             R3 3 0
       26 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R2 R2 K1 ["getAnalytics"]
        4 CALL                             R2 1 1
        5 LOADK                            R4 K2 ["handleDragged"]
        6 DUPTABLE                         R5 K13 [{"toolName", "wasAutoSelected", "gridSize", "rotateIncrement", "useLocalSpace", "joinSurfaces", "useConstraints", "haveCollisions", "pivotType", "handleId"}]
        7 GETTABLEKS                       R7 R0 K14 ["_modelProps"]
        9 GETTABLEKS                       R6 R7 K15 ["AnalyticsName"]
       11 SETTABLEKS                       R6 R5 K3 ["toolName"]
       13 LOADB                            R6 0
       14 SETTABLEKS                       R6 R5 K4 ["wasAutoSelected"]
       16 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       18 NAMECALL                         R6 R6 K16 ["getGridSize"]
       20 CALL                             R6 1 1
       21 SETTABLEKS                       R6 R5 K5 ["gridSize"]
       23 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       25 NAMECALL                         R6 R6 K17 ["getRotateIncrement"]
       27 CALL                             R6 1 1
       28 SETTABLEKS                       R6 R5 K6 ["rotateIncrement"]
       30 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       32 NAMECALL                         R6 R6 K18 ["shouldUseLocalSpace"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K7 ["useLocalSpace"]
       37 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       39 NAMECALL                         R6 R6 K19 ["shouldJoinSurfaces"]
       41 CALL                             R6 1 1
       42 SETTABLEKS                       R6 R5 K8 ["joinSurfaces"]
       44 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       46 NAMECALL                         R6 R6 K20 ["areConstraintsEnabled"]
       48 CALL                             R6 1 1
       49 SETTABLEKS                       R6 R5 K9 ["useConstraints"]
       51 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       53 NAMECALL                         R6 R6 K21 ["areCollisionsEnabled"]
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R5 K10 ["haveCollisions"]
       58 NAMECALL                         R6 R0 K22 ["classifySelectionPivot"]
       60 CALL                             R6 1 1
       61 SETTABLEKS                       R6 R5 K11 ["pivotType"]
       63 SETTABLEKS                       R1 R5 K12 ["handleId"]
       65 NAMECALL                         R2 R2 K23 ["sendEvent"]
       67 CALL                             R2 3 0
       68 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
       70 NAMECALL                         R2 R2 K1 ["getAnalytics"]
       72 CALL                             R2 1 1
       73 GETTABLEKS                       R5 R0 K14 ["_modelProps"]
       75 GETTABLEKS                       R4 R5 K15 ["AnalyticsName"]
       77 GETUPVAL                         R5 0
       78 NAMECALL                         R2 R2 K24 ["logTelemetryCounter"]
       80 CALL                             R2 3 0
       81 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["getAnalytics"]
        4 CALL                             R1 1 1
        5 LOADK                            R3 K2 ["boxSelected"]
        6 DUPTABLE                         R4 K9 [{"toolName", "wasAutoSelected", "objectCount", "altPressed", "ctrlPressed", "shiftPressed"}]
        7 GETTABLEKS                       R6 R0 K10 ["_modelProps"]
        9 GETTABLEKS                       R5 R6 K11 ["AnalyticsName"]
       11 SETTABLEKS                       R5 R4 K3 ["toolName"]
       13 GETTABLEKS                       R6 R0 K10 ["_modelProps"]
       15 GETTABLEKS                       R5 R6 K12 ["WasAutoSelected"]
       17 SETTABLEKS                       R5 R4 K4 ["wasAutoSelected"]
       19 GETTABLEKS                       R6 R0 K13 ["_selectionWrapper"]
       21 NAMECALL                         R6 R6 K14 ["get"]
       23 CALL                             R6 1 1
       24 LENGTH                           R5 R6
       25 SETTABLEKS                       R5 R4 K5 ["objectCount"]
       27 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       29 NAMECALL                         R5 R5 K15 ["isAltKeyDown"]
       31 CALL                             R5 1 1
       32 SETTABLEKS                       R5 R4 K6 ["altPressed"]
       34 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       36 NAMECALL                         R5 R5 K16 ["isCtrlKeyDown"]
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K7 ["ctrlPressed"]
       41 GETTABLEKS                       R5 R0 K0 ["_draggerContext"]
       43 NAMECALL                         R5 R5 K17 ["isShiftKeyDown"]
       45 CALL                             R5 1 1
       46 SETTABLEKS                       R5 R4 K8 ["shiftPressed"]
       48 NAMECALL                         R1 R1 K18 ["sendEvent"]
       50 CALL                             R1 3 0
       51 RETURN                           R0 0

PROTO_51:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R2 R2 K1 ["getAnalytics"]
        4 CALL                             R2 1 1
        5 LOADK                            R4 K2 ["faceInstanceSelected"]
        6 DUPTABLE                         R5 K6 [{"toolName", "wasAutoSelected", "className"}]
        7 GETTABLEKS                       R7 R0 K7 ["_modelProps"]
        9 GETTABLEKS                       R6 R7 K8 ["AnalyticsName"]
       11 SETTABLEKS                       R6 R5 K3 ["toolName"]
       13 GETTABLEKS                       R7 R0 K7 ["_modelProps"]
       15 GETTABLEKS                       R6 R7 K9 ["WasAutoSelected"]
       17 SETTABLEKS                       R6 R5 K4 ["wasAutoSelected"]
       19 SETTABLEKS                       R1 R5 K5 ["className"]
       21 NAMECALL                         R2 R2 K10 ["sendEvent"]
       23 CALL                             R2 3 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETTABLEKS                       R3 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R3 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R5 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R5 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K8 [require]
       26 GETTABLEKS                       R6 R1 K11 ["Implementation"]
       28 GETTABLEKS                       R5 R6 K12 ["SelectionCycleCache"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K8 [require]
       33 GETTABLEKS                       R7 R1 K13 ["Utility"]
       35 GETTABLEKS                       R6 R7 K14 ["SelectionWrapper"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K8 [require]
       40 GETTABLEKS                       R8 R1 K13 ["Utility"]
       42 GETTABLEKS                       R7 R8 K15 ["SelectionHelper"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K8 [require]
       47 GETTABLEKS                       R9 R1 K13 ["Utility"]
       49 GETTABLEKS                       R8 R9 K16 ["classifyPivot"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K8 [require]
       54 GETTABLEKS                       R10 R1 K13 ["Utility"]
       56 GETTABLEKS                       R9 R10 K17 ["Analytics"]
       58 CALL                             R8 1 1
       59 DUPTABLE                         R9 K23 [{"eventName", "lastUpdated", "description", "links", "backends"}]
       60 LOADK                            R10 K24 ["SBT_DraggerHandleDragCompleted"]
       61 SETTABLEKS                       R10 R9 K18 ["eventName"]
       63 NEWTABLE                         R10 0 3
       65 LOADN                            R11 232
       66 LOADN                            R12 10
       67 LOADN                            R13 14
       68 SETLIST                          R10 R11 3 [1]
       70 SETTABLEKS                       R10 R9 K19 ["lastUpdated"]
       72 LOADK                            R10 K25 ["The user successfully dragged the selection via a handle."]
       73 SETTABLEKS                       R10 R9 K20 ["description"]
       75 LOADK                            R10 K26 ["https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d"]
       76 SETTABLEKS                       R10 R9 K21 ["links"]
       78 NEWTABLE                         R10 0 1
       80 LOADK                            R11 K27 ["RobloxTelemetryCounter"]
       81 SETLIST                          R10 R11 1 [1]
       83 SETTABLEKS                       R10 R9 K22 ["backends"]
       85 GETIMPORT                        R10 K8 [require]
       87 GETTABLEKS                       R12 R1 K28 ["Flags"]
       89 GETTABLEKS                       R11 R12 K29 ["getFFlagDraggerHandlesIsEnabledFunction"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K8 [require]
       94 GETTABLEKS                       R13 R1 K28 ["Flags"]
       96 GETTABLEKS                       R12 R13 K30 ["getFFlagDraggerImprovements"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K1 [game]
      101 LOADK                            R14 K31 ["FixDragFromToolbox"]
      102 LOADB                            R15 0
      103 NAMECALL                         R12 R12 K32 ["DefineFastFlag"]
      105 CALL                             R12 3 1
      106 NEWTABLE                         R13 64 0
      108 SETTABLEKS                       R13 R13 K33 ["__index"]
      110 GETIMPORT                        R14 K8 [require]
      112 GETTABLEKS                       R16 R1 K11 ["Implementation"]
      114 GETTABLEKS                       R15 R16 K34 ["DraggerStateType"]
      116 CALL                             R14 1 1
      117 GETTABLEKS                       R16 R1 K11 ["Implementation"]
      119 GETTABLEKS                       R15 R16 K35 ["DraggerStates"]
      121 GETIMPORT                        R16 K38 [table.freeze]
      123 NEWTABLE                         R17 8 0
      125 GETTABLEKS                       R18 R14 K39 ["Ready"]
      127 GETIMPORT                        R19 K8 [require]
      129 GETTABLEKS                       R20 R15 K39 ["Ready"]
      131 CALL                             R19 1 1
      132 SETTABLE                         R19 R17 R18
      133 GETTABLEKS                       R18 R14 K40 ["DraggingFaceInstance"]
      135 GETIMPORT                        R19 K8 [require]
      137 GETTABLEKS                       R20 R15 K40 ["DraggingFaceInstance"]
      139 CALL                             R19 1 1
      140 SETTABLE                         R19 R17 R18
      141 GETTABLEKS                       R18 R14 K41 ["PendingDraggingParts"]
      143 GETIMPORT                        R19 K8 [require]
      145 GETTABLEKS                       R20 R15 K41 ["PendingDraggingParts"]
      147 CALL                             R19 1 1
      148 SETTABLE                         R19 R17 R18
      149 GETTABLEKS                       R18 R14 K42 ["PendingSelectNext"]
      151 GETIMPORT                        R19 K8 [require]
      153 GETTABLEKS                       R20 R15 K42 ["PendingSelectNext"]
      155 CALL                             R19 1 1
      156 SETTABLE                         R19 R17 R18
      157 GETTABLEKS                       R18 R14 K43 ["DraggingHandle"]
      159 GETIMPORT                        R19 K8 [require]
      161 GETTABLEKS                       R20 R15 K43 ["DraggingHandle"]
      163 CALL                             R19 1 1
      164 SETTABLE                         R19 R17 R18
      165 GETTABLEKS                       R18 R14 K44 ["DraggingParts"]
      167 GETIMPORT                        R19 K8 [require]
      169 GETTABLEKS                       R20 R15 K44 ["DraggingParts"]
      171 CALL                             R19 1 1
      172 SETTABLE                         R19 R17 R18
      173 GETTABLEKS                       R18 R14 K45 ["DragSelecting"]
      175 GETIMPORT                        R19 K8 [require]
      177 GETTABLEKS                       R20 R15 K45 ["DragSelecting"]
      179 CALL                             R19 1 1
      180 SETTABLE                         R19 R17 R18
      181 CALL                             R16 1 1
      182 DUPTABLE                         R17 K53 [{"AllowDragSelect", "AllowFreeformDrag", "ShowLocalSpaceIndicator", "WasAutoSelected", "HandlesList", "ShowPivotIndicator", "ShowDragSelect"}]
      183 LOADB                            R18 1
      184 SETTABLEKS                       R18 R17 K46 ["AllowDragSelect"]
      186 LOADB                            R18 1
      187 SETTABLEKS                       R18 R17 K47 ["AllowFreeformDrag"]
      189 LOADB                            R18 0
      190 SETTABLEKS                       R18 R17 K48 ["ShowLocalSpaceIndicator"]
      192 LOADB                            R18 0
      193 SETTABLEKS                       R18 R17 K49 ["WasAutoSelected"]
      195 NEWTABLE                         R18 0 0
      197 SETTABLEKS                       R18 R17 K50 ["HandlesList"]
      199 LOADB                            R18 0
      200 SETTABLEKS                       R18 R17 K51 ["ShowPivotIndicator"]
      202 LOADB                            R18 1
      203 SETTABLEKS                       R18 R17 K52 ["ShowDragSelect"]
      205 DUPTABLE                         R18 K55 [{"AnalyticsName"}]
      206 LOADB                            R19 1
      207 SETTABLEKS                       R19 R18 K54 ["AnalyticsName"]
      209 DUPCLOSURE                       R19 K56 [PROTO_0]
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R4
      214 CAPTURE                          VAL R13
      215 SETTABLEKS                       R19 R13 K57 ["new"]
      217 DUPCLOSURE                       R19 K58 [PROTO_1]
      218 SETTABLEKS                       R19 R13 K59 ["setMouseCursor"]
      220 DUPCLOSURE                       R19 K60 [PROTO_2]
      221 CAPTURE                          VAL R16
      222 SETTABLEKS                       R19 R13 K61 ["transitionToState"]
      224 DUPCLOSURE                       R19 K62 [PROTO_3]
      225 CAPTURE                          VAL R3
      226 SETTABLEKS                       R19 R13 K63 ["render"]
      228 DUPCLOSURE                       R19 K64 [PROTO_4]
      229 CAPTURE                          VAL R14
      230 SETTABLEKS                       R19 R13 K65 ["update"]
      232 DUPCLOSURE                       R19 K66 [PROTO_5]
      233 SETTABLEKS                       R19 R13 K67 ["getSelectionWrapper"]
      235 DUPCLOSURE                       R19 K68 [PROTO_6]
      236 SETTABLEKS                       R19 R13 K69 ["getAnalyticsName"]
      238 DUPCLOSURE                       R19 K70 [PROTO_7]
      239 SETTABLEKS                       R19 R13 K71 ["wasAutoSelected"]
      241 DUPCLOSURE                       R19 K72 [PROTO_8]
      242 SETTABLEKS                       R19 R13 K73 ["getSchema"]
      244 DUPCLOSURE                       R19 K74 [PROTO_9]
      245 CAPTURE                          VAL R10
      246 SETTABLEKS                       R19 R13 K75 ["getHandlesList"]
      248 DUPCLOSURE                       R19 K76 [PROTO_10]
      249 SETTABLEKS                       R19 R13 K77 ["doesAllowDragSelect"]
      251 DUPCLOSURE                       R19 K78 [PROTO_11]
      252 SETTABLEKS                       R19 R13 K79 ["doesAllowFreeformDrag"]
      254 DUPCLOSURE                       R19 K80 [PROTO_12]
      255 SETTABLEKS                       R19 R13 K81 ["shouldShowDragSelect"]
      257 DUPCLOSURE                       R19 K82 [PROTO_13]
      258 SETTABLEKS                       R19 R13 K83 ["shouldShowLocalSpaceIndicator"]
      260 DUPCLOSURE                       R19 K84 [PROTO_14]
      261 SETTABLEKS                       R19 R13 K85 ["shouldShowSelectionDot"]
      263 DUPCLOSURE                       R19 K86 [PROTO_15]
      264 SETTABLEKS                       R19 R13 K87 ["shouldUseCollisionTransparency"]
      266 DUPCLOSURE                       R19 K88 [PROTO_16]
      267 SETTABLEKS                       R19 R13 K89 ["shouldAlignDraggedObjects"]
      269 DUPCLOSURE                       R19 K90 [PROTO_17]
      270 CAPTURE                          VAL R6
      271 SETTABLEKS                       R19 R13 K91 ["selectNextSelectables"]
      273 DUPCLOSURE                       R19 K92 [PROTO_18]
      274 CAPTURE                          VAL R7
      275 SETTABLEKS                       R19 R13 K93 ["classifySelectionPivot"]
      277 DUPCLOSURE                       R19 K94 [PROTO_21]
      278 CAPTURE                          VAL R14
      279 CAPTURE                          VAL R16
      280 CAPTURE                          VAL R5
      281 CAPTURE                          VAL R10
      282 SETTABLEKS                       R19 R13 K95 ["_processSelected"]
      284 DUPCLOSURE                       R19 K96 [PROTO_22]
      285 CAPTURE                          VAL R11
      286 SETTABLEKS                       R19 R13 K97 ["_processDeselected"]
      288 DUPCLOSURE                       R19 K98 [PROTO_23]
      289 SETTABLEKS                       R19 R13 K99 ["isSelected"]
      291 MOVE                             R19 R10
      292 CALL                             R19 0 1
      293 JUMPIFNOT                        R19 ; [+3]
      294 DUPCLOSURE                       R19 K100 [PROTO_24]
      295 SETTABLEKS                       R19 R13 K101 ["_updateEnabledHandlesList"]
      297 DUPCLOSURE                       R19 K102 [PROTO_25]
      298 CAPTURE                          VAL R10
      299 CAPTURE                          VAL R11
      300 SETTABLEKS                       R19 R13 K103 ["_processSelectionChanged"]
      302 DUPCLOSURE                       R19 K104 [PROTO_26]
      303 SETTABLEKS                       R19 R13 K105 ["_processKeyDown"]
      305 DUPCLOSURE                       R19 K106 [PROTO_27]
      306 SETTABLEKS                       R19 R13 K107 ["_processKeyUp"]
      308 DUPCLOSURE                       R19 K108 [PROTO_28]
      309 SETTABLEKS                       R19 R13 K109 ["_processMouseDown"]
      311 DUPCLOSURE                       R19 K110 [PROTO_29]
      312 SETTABLEKS                       R19 R13 K111 ["_processMouseUp"]
      314 DUPCLOSURE                       R19 K112 [PROTO_30]
      315 SETTABLEKS                       R19 R13 K113 ["_processViewChanged"]
      317 DUPCLOSURE                       R19 K114 [PROTO_31]
      318 CAPTURE                          VAL R10
      319 SETTABLEKS                       R19 R13 K115 ["_updateHandles"]
      321 DUPCLOSURE                       R19 K116 [PROTO_32]
      322 SETTABLEKS                       R19 R13 K117 ["_updateSelectionInfo"]
      324 DUPCLOSURE                       R19 K118 [PROTO_33]
      325 CAPTURE                          VAL R14
      326 SETTABLEKS                       R19 R13 K119 ["_updatePivotIndicatorVisibility"]
      328 DUPCLOSURE                       R19 K120 [PROTO_34]
      329 CAPTURE                          VAL R12
      330 CAPTURE                          VAL R11
      331 CAPTURE                          VAL R14
      332 SETTABLEKS                       R19 R13 K121 ["_processToolboxInitiatedFreeformSelectionDrag"]
      334 DUPCLOSURE                       R19 K122 [PROTO_36]
      335 CAPTURE                          VAL R0
      336 CAPTURE                          VAL R14
      337 SETTABLEKS                       R19 R13 K123 ["_processToolboxInitiatedFaceDrag"]
      339 DUPCLOSURE                       R19 K124 [PROTO_37]
      340 SETTABLEKS                       R19 R13 K125 ["_processMouseEnter"]
      342 DUPCLOSURE                       R19 K126 [PROTO_38]
      343 SETTABLEKS                       R19 R13 K127 ["_processMouseLeave"]
      345 DUPCLOSURE                       R19 K128 [PROTO_39]
      346 SETTABLEKS                       R19 R13 K129 ["_scheduleRender"]
      348 DUPCLOSURE                       R19 K130 [PROTO_40]
      349 SETTABLEKS                       R19 R13 K131 ["_isSummoned"]
      351 DUPCLOSURE                       R19 K132 [PROTO_41]
      352 SETTABLEKS                       R19 R13 K133 ["_beginSummon"]
      354 DUPCLOSURE                       R19 K134 [PROTO_42]
      355 SETTABLEKS                       R19 R13 K135 ["_endSummon"]
      357 DUPCLOSURE                       R19 K136 [PROTO_43]
      358 SETTABLEKS                       R19 R13 K137 ["shouldShowPivotIndicator"]
      360 DUPCLOSURE                       R19 K138 [PROTO_44]
      361 SETTABLEKS                       R19 R13 K139 ["_analyticsSessionBegin"]
      363 DUPCLOSURE                       R19 K140 [PROTO_45]
      364 SETTABLEKS                       R19 R13 K141 ["_analyticsSendSession"]
      366 DUPCLOSURE                       R19 K142 [PROTO_46]
      367 SETTABLEKS                       R19 R13 K143 ["_analyticsSendClick"]
      369 DUPCLOSURE                       R19 K144 [PROTO_47]
      370 SETTABLEKS                       R19 R13 K145 ["_analyticsSendSelectionCycle"]
      372 DUPCLOSURE                       R19 K146 [PROTO_48]
      373 SETTABLEKS                       R19 R13 K147 ["_analyticsRecordFreeformDragBegin"]
      375 DUPCLOSURE                       R19 K148 [PROTO_49]
      376 CAPTURE                          VAL R9
      377 SETTABLEKS                       R19 R13 K149 ["_analyticsSendHandleDragged"]
      379 DUPCLOSURE                       R19 K150 [PROTO_50]
      380 SETTABLEKS                       R19 R13 K151 ["_analyticsSendBoxSelect"]
      382 DUPCLOSURE                       R19 K152 [PROTO_51]
      383 SETTABLEKS                       R19 R13 K153 ["_analyticsSendFaceInstanceSelected"]
      385 RETURN                           R13 1
