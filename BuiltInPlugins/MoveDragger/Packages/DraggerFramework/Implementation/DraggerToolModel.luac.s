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
       57 DUPTABLE                         R8 K25 [{["_lastMouseClickTime"] = 0, ["_lastMouseClickLocation"], ["_handlesList"], ["_allHandlesList"], ["_enabledHandlesList"], ["_draggerContext"], ["_draggerSchema"], ["_modelProps"], ["_requestRenderCallback"], ["_markViewDirtyCallback"], ["_markSelectionDirtyCallback"], ["_selectionWrapper"] = , ["_selectionCycleCache"], ["_handlesSummoned"] = False}]
       58 GETIMPORT                        R9 K28 [Vector2.new]
       60 LOADN                            R10 -1
       61 LOADN                            R11 -1
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K10 ["_lastMouseClickLocation"]
       65 GETUPVAL                         R10 2
       66 CALL                             R10 0 1
       67 JUMPIF                           R10 ; [+3]
       68 GETTABLEKS                       R9 R6 K29 ["HandlesList"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R9
       72 SETTABLEKS                       R9 R8 K11 ["_handlesList"]
       74 GETUPVAL                         R10 2
       75 CALL                             R10 0 1
       76 JUMPIFNOT                        R10 ; [+3]
       77 GETTABLEKS                       R9 R6 K29 ["HandlesList"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R9
       81 SETTABLEKS                       R9 R8 K12 ["_allHandlesList"]
       83 GETUPVAL                         R10 2
       84 CALL                             R10 0 1
       85 JUMPIFNOT                        R10 ; [+3]
       86 GETTABLEKS                       R9 R6 K29 ["HandlesList"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R9
       90 SETTABLEKS                       R9 R8 K13 ["_enabledHandlesList"]
       92 SETTABLEKS                       R0 R8 K14 ["_draggerContext"]
       94 SETTABLEKS                       R1 R8 K15 ["_draggerSchema"]
       96 SETTABLEKS                       R6 R8 K16 ["_modelProps"]
       98 SETTABLEKS                       R3 R8 K17 ["_requestRenderCallback"]
      100 SETTABLEKS                       R4 R8 K18 ["_markViewDirtyCallback"]
      102 SETTABLEKS                       R5 R8 K19 ["_markSelectionDirtyCallback"]
      104 GETUPVAL                         R9 3
      105 GETTABLEKS                       R9 R9 K27 ["new"]
      107 MOVE                             R10 R0
      108 MOVE                             R11 R1
      109 CALL                             R9 2 1
      110 SETTABLEKS                       R9 R8 K22 ["_selectionCycleCache"]
      112 GETUPVAL                         R9 4
      113 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
      115 GETIMPORT                        R7 K31 [setmetatable]
      117 CALL                             R7 2 1
      118 RETURN                           R7 1

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
       15 GETTABLEKS                       R3 R0 K5 ["_stateObject"]
       17 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       19 LOADK                            R4 K6 ["Transition can only happen while in a state"]
       20 GETIMPORT                        R2 K4 [assert]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R2 R0 K5 ["_stateObject"]
       25 NAMECALL                         R2 R2 K7 ["leave"]
       27 CALL                             R2 1 0
       28 SETTABLEKS                       R1 R0 K8 ["_mainState"]
       30 GETUPVAL                         R3 0
       31 GETTABLE                         R2 R3 R1
       32 GETTABLEKS                       R2 R2 K9 ["new"]
       34 MOVE                             R3 R0
       35 GETVARARGS                       R4 -1
       36 CALL                             R2 -1 1
       37 SETTABLEKS                       R2 R0 K5 ["_stateObject"]
       39 GETTABLEKS                       R2 R0 K5 ["_stateObject"]
       41 NAMECALL                         R2 R2 K10 ["enter"]
       43 CALL                             R2 1 0
       44 NAMECALL                         R2 R0 K11 ["_updatePivotIndicatorVisibility"]
       46 CALL                             R2 1 0
       47 NAMECALL                         R2 R0 K12 ["_scheduleRender"]
       49 CALL                             R2 1 0
       50 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["_updateHandles"]
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Portal"]
        9 DUPTABLE                         R3 K4 [{"target"}]
       10 GETTABLEKS                       R4 R0 K5 ["_draggerContext"]
       12 NAMECALL                         R4 R4 K6 ["getGuiParent"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K3 ["target"]
       17 DUPTABLE                         R4 K8 [{"DraggerUI"}]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K1 ["createElement"]
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
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["DraggingHandle"]
       15 JUMPIFEQ                         R2 R3 ; [+10]
       17 GETTABLEKS                       R2 R0 K3 ["_mainState"]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K5 ["DraggingParts"]
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
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["AnalyticsName"]
        4 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["WasAutoSelected"]
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
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["AllowDragSelect"]
        4 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["AllowFreeformDrag"]
        4 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowDragSelect"]
        4 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowLocalSpaceIndicator"]
        4 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowSelectionDot"]
        4 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["UseCollisionsTransparency"]
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
        5 GETTABLEKS                       R4 R0 K2 ["_draggerSchema"]
        7 GETTABLEKS                       R4 R4 K3 ["getNextSelectables"]
        9 GETTABLEKS                       R5 R0 K4 ["_draggerContext"]
       11 MOVE                             R6 R3
       12 MOVE                             R7 R1
       13 MOVE                             R8 R2
       14 CALL                             R4 4 1
       15 JUMPIFNOT                        R4 ; [+27]
       16 GETTABLEKS                       R5 R0 K4 ["_draggerContext"]
       18 NAMECALL                         R5 R5 K5 ["shouldExtendSelection"]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K6 ["updateSelectionWithMultipleSelectables"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_markSelectionDirtyCallback"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_processSelectionChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Ready"]
        3 SETTABLEKS                       R1 R0 K1 ["_mainState"]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["Ready"]
        9 GETTABLE                         R1 R2 R3
       10 GETTABLEKS                       R1 R1 K2 ["new"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 SETTABLEKS                       R1 R0 K3 ["_stateObject"]
       16 GETTABLEKS                       R2 R0 K4 ["_modelProps"]
       18 GETTABLEKS                       R2 R2 K5 ["ShowPivotIndicator"]
       20 JUMPIFNOT                        R2 ; [+8]
       21 GETTABLEKS                       R2 R0 K6 ["_draggerContext"]
       23 LOADB                            R4 1
       24 NAMECALL                         R2 R2 K7 ["setPivotIndicator"]
       26 CALL                             R2 2 1
       27 SETTABLEKS                       R2 R0 K8 ["_oldShowPivot"]
       29 LOADK                            R2 K9 [""]
       30 SETTABLEKS                       R2 R0 K10 ["_mouseCursor"]
       32 GETTABLEKS                       R2 R0 K6 ["_draggerContext"]
       34 LOADK                            R4 K9 [""]
       35 NAMECALL                         R2 R2 K11 ["setMouseIcon"]
       37 CALL                             R2 2 0
       38 GETTABLEKS                       R2 R0 K12 ["_draggerSchema"]
       40 GETTABLEKS                       R2 R2 K13 ["BoundsChangedTracker"]
       42 GETTABLEKS                       R2 R2 K2 ["new"]
       44 GETTABLEKS                       R3 R0 K6 ["_draggerContext"]
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          VAL R0
       48 CALL                             R2 2 1
       49 SETTABLEKS                       R2 R0 K14 ["_boundsChangedTracker"]
       51 GETTABLEKS                       R2 R0 K14 ["_boundsChangedTracker"]
       53 NAMECALL                         R2 R2 K15 ["install"]
       55 CALL                             R2 1 0
       56 GETUPVAL                         R2 2
       57 GETTABLEKS                       R2 R2 K2 ["new"]
       59 GETTABLEKS                       R3 R0 K6 ["_draggerContext"]
       61 NAMECALL                         R3 R3 K16 ["getSelection"]
       63 CALL                             R3 1 -1
       64 CALL                             R2 -1 1
       65 SETTABLEKS                       R2 R0 K17 ["_selectionWrapper"]
       67 GETTABLEKS                       R3 R2 K18 ["onSelectionExternallyChanged"]
       69 NEWCLOSURE                       R5 P1
       70 CAPTURE                          VAL R0
       71 NAMECALL                         R3 R3 K19 ["Connect"]
       73 CALL                             R3 2 1
       74 SETTABLEKS                       R3 R0 K20 ["_selectionChangedConnection"]
       76 NAMECALL                         R3 R0 K21 ["_updateSelectionInfo"]
       78 CALL                             R3 1 0
       79 GETUPVAL                         R3 3
       80 CALL                             R3 0 1
       81 JUMPIFNOT                        R3 ; [+3]
       82 NAMECALL                         R3 R0 K22 ["_updateEnabledHandlesList"]
       84 CALL                             R3 1 0
       85 NAMECALL                         R3 R1 K23 ["enter"]
       87 CALL                             R3 1 0
       88 NAMECALL                         R3 R0 K24 ["_analyticsSessionBegin"]
       90 CALL                             R3 1 0
       91 RETURN                           R0 0

PROTO_22:
        0 NAMECALL                         R1 R0 K0 ["_endSummon"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_isMouseDown"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 NAMECALL                         R1 R0 K2 ["_processMouseUp"]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K3 ["_modelProps"]
       11 GETTABLEKS                       R1 R1 K4 ["ShowPivotIndicator"]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETTABLEKS                       R1 R0 K5 ["_draggerContext"]
       16 GETTABLEKS                       R3 R0 K6 ["_oldShowPivot"]
       18 NAMECALL                         R1 R1 K7 ["setPivotIndicator"]
       20 CALL                             R1 2 0
       21 GETTABLEKS                       R2 R0 K8 ["_stateObject"]
       23 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       25 LOADK                            R3 K9 ["need a state to leave"]
       26 GETIMPORT                        R1 K11 [assert]
       28 CALL                             R1 2 0
       29 GETTABLEKS                       R1 R0 K8 ["_stateObject"]
       31 NAMECALL                         R1 R1 K12 ["leave"]
       33 CALL                             R1 1 0
       34 LOADNIL                          R1
       35 SETTABLEKS                       R1 R0 K8 ["_stateObject"]
       37 GETTABLEKS                       R2 R0 K13 ["_selectionWrapper"]
       39 FASTCALL2K                       ASSERT R2 K14 ; [+4]
       41 LOADK                            R3 K14 ["should have a selection wrapper"]
       42 GETIMPORT                        R1 K11 [assert]
       44 CALL                             R1 2 0
       45 GETTABLEKS                       R1 R0 K13 ["_selectionWrapper"]
       47 NAMECALL                         R1 R1 K15 ["destroy"]
       49 CALL                             R1 1 0
       50 LOADNIL                          R1
       51 SETTABLEKS                       R1 R0 K13 ["_selectionWrapper"]
       53 GETTABLEKS                       R1 R0 K16 ["_boundsChangedTracker"]
       55 NAMECALL                         R1 R1 K17 ["uninstall"]
       57 CALL                             R1 1 0
       58 GETTABLEKS                       R1 R0 K18 ["_selectionChangedConnection"]
       60 NAMECALL                         R1 R1 K19 ["Disconnect"]
       62 CALL                             R1 1 0
       63 LOADNIL                          R1
       64 SETTABLEKS                       R1 R0 K18 ["_selectionChangedConnection"]
       66 NAMECALL                         R1 R0 K20 ["_analyticsSendSession"]
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

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
       16 GETTABLEKS                       R6 R5 K4 ["_props"]
       18 GETTABLEKS                       R6 R6 K5 ["IsEnabledFunction"]
       20 JUMPIF                           R6 ; [+9]
       21 GETTABLEKS                       R7 R0 K0 ["_enabledHandlesList"]
       23 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       25 MOVE                             R8 R5
       26 GETIMPORT                        R6 K8 [table.insert]
       28 CALL                             R6 2 0
       29 JUMP                             ; [+16]
       30 GETTABLEKS                       R6 R5 K4 ["_props"]
       32 GETTABLEKS                       R6 R6 K5 ["IsEnabledFunction"]
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
       18 GETUPVAL                         R1 0
       19 CALL                             R1 0 1
       20 JUMPIFNOT                        R1 ; [+17]
       21 GETTABLEKS                       R1 R0 K5 ["_allHandlesList"]
       23 JUMPIFNOT                        R1 ; [+30]
       24 GETTABLEKS                       R1 R0 K5 ["_allHandlesList"]
       26 LOADNIL                          R2
       27 LOADNIL                          R3
       28 FORGPREP                         R1
       29 GETTABLEKS                       R6 R5 K6 ["selectionChanged"]
       31 JUMPIFNOT                        R6 ; [+3]
       32 NAMECALL                         R6 R5 K6 ["selectionChanged"]
       34 CALL                             R6 1 0
       35 FORGLOOP                         R1 2 ; [-7]
       37 JUMP                             ; [+16]
       38 GETTABLEKS                       R1 R0 K7 ["_handlesList"]
       40 JUMPIFNOT                        R1 ; [+13]
       41 GETTABLEKS                       R1 R0 K7 ["_handlesList"]
       43 LOADNIL                          R2
       44 LOADNIL                          R3
       45 FORGPREP                         R1
       46 GETTABLEKS                       R6 R5 K6 ["selectionChanged"]
       48 JUMPIFNOT                        R6 ; [+3]
       49 NAMECALL                         R6 R5 K6 ["selectionChanged"]
       51 CALL                             R6 1 0
       52 FORGLOOP                         R1 2 ; [-7]
       54 NAMECALL                         R1 R0 K8 ["_scheduleRender"]
       56 CALL                             R1 1 0
       57 RETURN                           R0 0

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
        4 GETTABLEKS                       R2 R0 K1 ["_draggerSchema"]
        6 GETTABLEKS                       R2 R2 K2 ["SelectionInfo"]
        8 GETTABLEKS                       R2 R2 K3 ["new"]
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
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowPivotIndicator"]
        4 JUMPIFNOT                        R1 ; [+30]
        5 GETTABLEKS                       R1 R0 K2 ["_mainState"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["DragSelecting"]
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
       12 GETTABLEKS                       R2 R0 K2 ["_selectionWrapper"]
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K3 ["set"]
       17 CALL                             R2 2 0
       18 NAMECALL                         R2 R0 K4 ["_updateSelectionInfo"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["DraggingParts"]
       24 DUPTABLE                         R5 K13 [{["draggedPoint"] = {0, 0, 0}, ["clickedPoint"] = {0, 0, 0}, ["clickedMetadata"], ["clickedFaceInstance"] = , ["attachmentBeingDragged"] = }]
       25 GETIMPORT                        R6 K16 [table.freeze]
       27 DUPTABLE                         R7 K22 [{["RaycastResult"] = , ["TargetMatrix"], ["TargetSize"] = {0, 0, 0}, ["IsPivot"] = False}]
       28 GETIMPORT                        R8 K25 [CFrame.new]
       30 CALL                             R8 0 1
       31 SETTABLEKS                       R8 R7 K18 ["TargetMatrix"]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R5 K9 ["clickedMetadata"]
       36 NAMECALL                         R2 R0 K26 ["transitionToState"]
       38 CALL                             R2 3 0
       39 RETURN                           R0 0

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
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R5 R5 K15 ["DraggingFaceInstance"]
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
        6 GETTABLEKS                       R2 R0 K2 ["_draggerSchema"]
        8 GETTABLEKS                       R2 R2 K3 ["getSummonTarget"]
       10 JUMPIFNOT                        R2 ; [+49]
       11 GETTABLEKS                       R2 R0 K2 ["_draggerSchema"]
       13 GETTABLEKS                       R2 R2 K3 ["getSummonTarget"]
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
        0 GETTABLEKS                       R1 R0 K0 ["_modelProps"]
        2 GETTABLEKS                       R1 R1 K1 ["ShowPivotIndicator"]
        4 RETURN                           R1 1

PROTO_44:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K2 ["_selectedAtTime"]
        5 DUPTABLE                         R1 K12 [{["freeformDrags"] = 0, ["handleDrags"] = 0, ["clickSelects"] = 0, ["dragSelects"] = 0, ["dragTilts"] = 0, ["dragRotates"] = 0, ["toolName"], ["wasAutoSelected"]}]
        6 GETTABLEKS                       R2 R0 K13 ["_modelProps"]
        8 GETTABLEKS                       R2 R2 K14 ["AnalyticsName"]
       10 SETTABLEKS                       R2 R1 K10 ["toolName"]
       12 GETTABLEKS                       R2 R0 K13 ["_modelProps"]
       14 GETTABLEKS                       R2 R2 K15 ["WasAutoSelected"]
       16 SETTABLEKS                       R2 R1 K11 ["wasAutoSelected"]
       18 SETTABLEKS                       R1 R0 K16 ["_sessionAnalytics"]
       20 GETTABLEKS                       R1 R0 K17 ["_draggerContext"]
       22 NAMECALL                         R1 R1 K18 ["getAnalytics"]
       24 CALL                             R1 1 1
       25 LOADK                            R3 K19 ["toolSelected"]
       26 DUPTABLE                         R4 K20 [{"toolName", "wasAutoSelected"}]
       27 GETTABLEKS                       R5 R0 K13 ["_modelProps"]
       29 GETTABLEKS                       R5 R5 K14 ["AnalyticsName"]
       31 SETTABLEKS                       R5 R4 K10 ["toolName"]
       33 GETTABLEKS                       R5 R0 K13 ["_modelProps"]
       35 GETTABLEKS                       R5 R5 K15 ["WasAutoSelected"]
       37 SETTABLEKS                       R5 R4 K11 ["wasAutoSelected"]
       39 NAMECALL                         R1 R1 K21 ["sendEvent"]
       41 CALL                             R1 3 0
       42 GETTABLEKS                       R1 R0 K13 ["_modelProps"]
       44 GETTABLEKS                       R1 R1 K15 ["WasAutoSelected"]
       46 JUMPIFNOT                        R1 ; [+10]
       47 GETTABLEKS                       R1 R0 K17 ["_draggerContext"]
       49 NAMECALL                         R1 R1 K18 ["getAnalytics"]
       51 CALL                             R1 1 1
       52 LOADK                            R3 K22 ["studioLuaDefaultDraggerSelected"]
       53 NAMECALL                         R1 R1 K23 ["reportCounter"]
       55 CALL                             R1 2 0
       56 RETURN                           R0 0
       57 GETTABLEKS                       R1 R0 K17 ["_draggerContext"]
       59 NAMECALL                         R1 R1 K18 ["getAnalytics"]
       61 CALL                             R1 1 1
       62 LOADK                            R4 K24 ["studioLua"]
       63 GETTABLEKS                       R5 R0 K13 ["_modelProps"]
       65 GETTABLEKS                       R5 R5 K14 ["AnalyticsName"]
       67 LOADK                            R6 K25 ["DraggerSelected"]
       68 CONCAT                           R3 R4 R6
       69 NAMECALL                         R1 R1 K23 ["reportCounter"]
       71 CALL                             R1 2 0
       72 RETURN                           R0 0

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
        7 GETTABLEKS                       R7 R0 K14 ["_modelProps"]
        9 GETTABLEKS                       R7 R7 K15 ["AnalyticsName"]
       11 SETTABLEKS                       R7 R6 K3 ["toolName"]
       13 GETTABLEKS                       R7 R0 K14 ["_modelProps"]
       15 GETTABLEKS                       R7 R7 K16 ["WasAutoSelected"]
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
       80 GETTABLEKS                       R5 R0 K26 ["_sessionAnalytics"]
       82 GETTABLEKS                       R5 R5 K28 ["clickSelects"]
       84 ADDK                             R4 R5 K27 [1]
       85 SETTABLEKS                       R4 R3 K28 ["clickSelects"]
       87 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R3 R3 K1 ["getAnalytics"]
        4 CALL                             R3 1 1
        5 LOADK                            R5 K2 ["selectionCycle"]
        6 DUPTABLE                         R6 K6 [{"toolName", "numberOfClicks", "selectableCount"}]
        7 GETTABLEKS                       R7 R0 K7 ["_modelProps"]
        9 GETTABLEKS                       R7 R7 K8 ["AnalyticsName"]
       11 SETTABLEKS                       R7 R6 K3 ["toolName"]
       13 SETTABLEKS                       R1 R6 K4 ["numberOfClicks"]
       15 SETTABLEKS                       R2 R6 K5 ["selectableCount"]
       17 NAMECALL                         R3 R3 K9 ["sendEvent"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R2 R0 K0 ["_sessionAnalytics"]
        2 GETTABLEKS                       R4 R0 K0 ["_sessionAnalytics"]
        4 GETTABLEKS                       R4 R4 K2 ["freeformDrags"]
        6 ADDK                             R3 R4 K1 [1]
        7 SETTABLEKS                       R3 R2 K2 ["freeformDrags"]
        9 LOADK                            R3 K3 ["studioLuaDragger"]
       10 GETTABLEKS                       R4 R0 K4 ["_modelProps"]
       12 GETTABLEKS                       R4 R4 K5 ["AnalyticsName"]
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
        6 DUPTABLE                         R5 K14 [{["toolName"], ["wasAutoSelected"] = False, ["gridSize"], ["rotateIncrement"], ["useLocalSpace"], ["joinSurfaces"], ["useConstraints"], ["haveCollisions"], ["pivotType"], ["handleId"]}]
        7 GETTABLEKS                       R6 R0 K15 ["_modelProps"]
        9 GETTABLEKS                       R6 R6 K16 ["AnalyticsName"]
       11 SETTABLEKS                       R6 R5 K3 ["toolName"]
       13 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       15 NAMECALL                         R6 R6 K17 ["getGridSize"]
       17 CALL                             R6 1 1
       18 SETTABLEKS                       R6 R5 K6 ["gridSize"]
       20 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       22 NAMECALL                         R6 R6 K18 ["getRotateIncrement"]
       24 CALL                             R6 1 1
       25 SETTABLEKS                       R6 R5 K7 ["rotateIncrement"]
       27 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       29 NAMECALL                         R6 R6 K19 ["shouldUseLocalSpace"]
       31 CALL                             R6 1 1
       32 SETTABLEKS                       R6 R5 K8 ["useLocalSpace"]
       34 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       36 NAMECALL                         R6 R6 K20 ["shouldJoinSurfaces"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K9 ["joinSurfaces"]
       41 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       43 NAMECALL                         R6 R6 K21 ["areConstraintsEnabled"]
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K10 ["useConstraints"]
       48 GETTABLEKS                       R6 R0 K0 ["_draggerContext"]
       50 NAMECALL                         R6 R6 K22 ["areCollisionsEnabled"]
       52 CALL                             R6 1 1
       53 SETTABLEKS                       R6 R5 K11 ["haveCollisions"]
       55 NAMECALL                         R6 R0 K23 ["classifySelectionPivot"]
       57 CALL                             R6 1 1
       58 SETTABLEKS                       R6 R5 K12 ["pivotType"]
       60 SETTABLEKS                       R1 R5 K13 ["handleId"]
       62 NAMECALL                         R2 R2 K24 ["sendEvent"]
       64 CALL                             R2 3 0
       65 GETTABLEKS                       R2 R0 K0 ["_draggerContext"]
       67 NAMECALL                         R2 R2 K1 ["getAnalytics"]
       69 CALL                             R2 1 1
       70 GETTABLEKS                       R4 R0 K15 ["_modelProps"]
       72 GETTABLEKS                       R4 R4 K16 ["AnalyticsName"]
       74 GETUPVAL                         R5 0
       75 NAMECALL                         R2 R2 K25 ["logTelemetryCounter"]
       77 CALL                             R2 3 0
       78 RETURN                           R0 0

PROTO_50:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerContext"]
        2 NAMECALL                         R1 R1 K1 ["getAnalytics"]
        4 CALL                             R1 1 1
        5 LOADK                            R3 K2 ["boxSelected"]
        6 DUPTABLE                         R4 K9 [{"toolName", "wasAutoSelected", "objectCount", "altPressed", "ctrlPressed", "shiftPressed"}]
        7 GETTABLEKS                       R5 R0 K10 ["_modelProps"]
        9 GETTABLEKS                       R5 R5 K11 ["AnalyticsName"]
       11 SETTABLEKS                       R5 R4 K3 ["toolName"]
       13 GETTABLEKS                       R5 R0 K10 ["_modelProps"]
       15 GETTABLEKS                       R5 R5 K12 ["WasAutoSelected"]
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
        7 GETTABLEKS                       R6 R0 K7 ["_modelProps"]
        9 GETTABLEKS                       R6 R6 K8 ["AnalyticsName"]
       11 SETTABLEKS                       R6 R5 K3 ["toolName"]
       13 GETTABLEKS                       R6 R0 K7 ["_modelProps"]
       15 GETTABLEKS                       R6 R6 K9 ["WasAutoSelected"]
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
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R2 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K6 ["Parent"]
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R4 R2 K9 ["Packages"]
       21 GETTABLEKS                       R4 R4 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K8 [require]
       26 GETTABLEKS                       R5 R1 K11 ["Types"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K8 [require]
       31 GETTABLEKS                       R6 R1 K12 ["Implementation"]
       33 GETTABLEKS                       R6 R6 K13 ["SelectionCycleCache"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K8 [require]
       38 GETTABLEKS                       R7 R1 K14 ["Utility"]
       40 GETTABLEKS                       R7 R7 K15 ["SelectionWrapper"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K8 [require]
       45 GETTABLEKS                       R8 R1 K14 ["Utility"]
       47 GETTABLEKS                       R8 R8 K16 ["SelectionHelper"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K8 [require]
       52 GETTABLEKS                       R9 R1 K14 ["Utility"]
       54 GETTABLEKS                       R9 R9 K17 ["classifyPivot"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K8 [require]
       59 GETTABLEKS                       R10 R1 K14 ["Utility"]
       61 GETTABLEKS                       R10 R10 K18 ["Analytics"]
       63 CALL                             R9 1 1
       64 DUPTABLE                         R10 K27 [{["eventName"] = "SBT_DraggerHandleDragCompleted", ["lastUpdated"], ["description"] = "The user successfully dragged the selection via a handle.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       65 NEWTABLE                         R11 0 3
       67 LOADN                            R12 2024
       68 LOADN                            R13 10
       69 LOADN                            R14 14
       70 SETLIST                          R11 R12 3 [1]
       72 SETTABLEKS                       R11 R10 K21 ["lastUpdated"]
       74 NEWTABLE                         R11 0 1
       76 LOADK                            R12 K28 ["RobloxTelemetryCounter"]
       77 SETLIST                          R11 R12 1 [1]
       79 SETTABLEKS                       R11 R10 K26 ["backends"]
       81 GETIMPORT                        R11 K8 [require]
       83 GETTABLEKS                       R12 R1 K29 ["Flags"]
       85 GETTABLEKS                       R12 R12 K30 ["getFFlagDraggerHandlesIsEnabledFunction"]
       87 CALL                             R11 1 1
       88 NEWTABLE                         R12 64 0
       90 SETTABLEKS                       R12 R12 K31 ["__index"]
       92 GETIMPORT                        R13 K8 [require]
       94 GETTABLEKS                       R14 R1 K12 ["Implementation"]
       96 GETTABLEKS                       R14 R14 K32 ["DraggerStateType"]
       98 CALL                             R13 1 1
       99 GETTABLEKS                       R14 R1 K12 ["Implementation"]
      101 GETTABLEKS                       R14 R14 K33 ["DraggerStates"]
      103 GETIMPORT                        R15 K36 [table.freeze]
      105 NEWTABLE                         R16 8 0
      107 GETTABLEKS                       R17 R13 K37 ["Ready"]
      109 GETIMPORT                        R18 K8 [require]
      111 GETTABLEKS                       R19 R14 K37 ["Ready"]
      113 CALL                             R18 1 1
      114 SETTABLE                         R18 R16 R17
      115 GETTABLEKS                       R17 R13 K38 ["DraggingFaceInstance"]
      117 GETIMPORT                        R18 K8 [require]
      119 GETTABLEKS                       R19 R14 K38 ["DraggingFaceInstance"]
      121 CALL                             R18 1 1
      122 SETTABLE                         R18 R16 R17
      123 GETTABLEKS                       R17 R13 K39 ["PendingDraggingParts"]
      125 GETIMPORT                        R18 K8 [require]
      127 GETTABLEKS                       R19 R14 K39 ["PendingDraggingParts"]
      129 CALL                             R18 1 1
      130 SETTABLE                         R18 R16 R17
      131 GETTABLEKS                       R17 R13 K40 ["PendingDraggingHandle"]
      133 GETIMPORT                        R18 K8 [require]
      135 GETTABLEKS                       R19 R14 K40 ["PendingDraggingHandle"]
      137 CALL                             R18 1 1
      138 SETTABLE                         R18 R16 R17
      139 GETTABLEKS                       R17 R13 K41 ["PendingSelectNext"]
      141 GETIMPORT                        R18 K8 [require]
      143 GETTABLEKS                       R19 R14 K41 ["PendingSelectNext"]
      145 CALL                             R18 1 1
      146 SETTABLE                         R18 R16 R17
      147 GETTABLEKS                       R17 R13 K42 ["DraggingHandle"]
      149 GETIMPORT                        R18 K8 [require]
      151 GETTABLEKS                       R19 R14 K42 ["DraggingHandle"]
      153 CALL                             R18 1 1
      154 SETTABLE                         R18 R16 R17
      155 GETTABLEKS                       R17 R13 K43 ["DraggingParts"]
      157 GETIMPORT                        R18 K8 [require]
      159 GETTABLEKS                       R19 R14 K43 ["DraggingParts"]
      161 CALL                             R18 1 1
      162 SETTABLE                         R18 R16 R17
      163 GETTABLEKS                       R17 R13 K44 ["DragSelecting"]
      165 GETIMPORT                        R18 K8 [require]
      167 GETTABLEKS                       R19 R14 K44 ["DragSelecting"]
      169 CALL                             R18 1 1
      170 SETTABLE                         R18 R16 R17
      171 CALL                             R15 1 1
      172 DUPTABLE                         R16 K54 [{["AllowDragSelect"] = True, ["AllowFreeformDrag"] = True, ["ShowLocalSpaceIndicator"] = False, ["WasAutoSelected"] = False, ["HandlesList"], ["ShowPivotIndicator"] = False, ["ShowDragSelect"] = True}]
      173 NEWTABLE                         R17 0 0
      175 SETTABLEKS                       R17 R16 K51 ["HandlesList"]
      177 DUPTABLE                         R17 K56 [{["AnalyticsName"] = True}]
      178 DUPCLOSURE                       R18 K57 [PROTO_0]
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R12
      184 SETTABLEKS                       R18 R12 K58 ["new"]
      186 DUPCLOSURE                       R18 K59 [PROTO_1]
      187 SETTABLEKS                       R18 R12 K60 ["setMouseCursor"]
      189 DUPCLOSURE                       R18 K61 [PROTO_2]
      190 CAPTURE                          VAL R15
      191 SETTABLEKS                       R18 R12 K62 ["transitionToState"]
      193 DUPCLOSURE                       R18 K63 [PROTO_3]
      194 CAPTURE                          VAL R3
      195 SETTABLEKS                       R18 R12 K64 ["render"]
      197 DUPCLOSURE                       R18 K65 [PROTO_4]
      198 CAPTURE                          VAL R13
      199 SETTABLEKS                       R18 R12 K66 ["update"]
      201 DUPCLOSURE                       R18 K67 [PROTO_5]
      202 SETTABLEKS                       R18 R12 K68 ["getSelectionWrapper"]
      204 DUPCLOSURE                       R18 K69 [PROTO_6]
      205 SETTABLEKS                       R18 R12 K70 ["getAnalyticsName"]
      207 DUPCLOSURE                       R18 K71 [PROTO_7]
      208 SETTABLEKS                       R18 R12 K72 ["wasAutoSelected"]
      210 DUPCLOSURE                       R18 K73 [PROTO_8]
      211 SETTABLEKS                       R18 R12 K74 ["getSchema"]
      213 DUPCLOSURE                       R18 K75 [PROTO_9]
      214 CAPTURE                          VAL R11
      215 SETTABLEKS                       R18 R12 K76 ["getHandlesList"]
      217 DUPCLOSURE                       R18 K77 [PROTO_10]
      218 SETTABLEKS                       R18 R12 K78 ["doesAllowDragSelect"]
      220 DUPCLOSURE                       R18 K79 [PROTO_11]
      221 SETTABLEKS                       R18 R12 K80 ["doesAllowFreeformDrag"]
      223 DUPCLOSURE                       R18 K81 [PROTO_12]
      224 SETTABLEKS                       R18 R12 K82 ["shouldShowDragSelect"]
      226 DUPCLOSURE                       R18 K83 [PROTO_13]
      227 SETTABLEKS                       R18 R12 K84 ["shouldShowLocalSpaceIndicator"]
      229 DUPCLOSURE                       R18 K85 [PROTO_14]
      230 SETTABLEKS                       R18 R12 K86 ["shouldShowSelectionDot"]
      232 DUPCLOSURE                       R18 K87 [PROTO_15]
      233 SETTABLEKS                       R18 R12 K88 ["shouldUseCollisionTransparency"]
      235 DUPCLOSURE                       R18 K89 [PROTO_16]
      236 SETTABLEKS                       R18 R12 K90 ["shouldAlignDraggedObjects"]
      238 DUPCLOSURE                       R18 K91 [PROTO_17]
      239 CAPTURE                          VAL R7
      240 SETTABLEKS                       R18 R12 K92 ["selectNextSelectables"]
      242 DUPCLOSURE                       R18 K93 [PROTO_18]
      243 CAPTURE                          VAL R8
      244 SETTABLEKS                       R18 R12 K94 ["classifySelectionPivot"]
      246 DUPCLOSURE                       R18 K95 [PROTO_21]
      247 CAPTURE                          VAL R13
      248 CAPTURE                          VAL R15
      249 CAPTURE                          VAL R6
      250 CAPTURE                          VAL R11
      251 SETTABLEKS                       R18 R12 K96 ["_processSelected"]
      253 DUPCLOSURE                       R18 K97 [PROTO_22]
      254 SETTABLEKS                       R18 R12 K98 ["_processDeselected"]
      256 DUPCLOSURE                       R18 K99 [PROTO_23]
      257 SETTABLEKS                       R18 R12 K100 ["isSelected"]
      259 MOVE                             R18 R11
      260 CALL                             R18 0 1
      261 JUMPIFNOT                        R18 ; [+3]
      262 DUPCLOSURE                       R18 K101 [PROTO_24]
      263 SETTABLEKS                       R18 R12 K102 ["_updateEnabledHandlesList"]
      265 DUPCLOSURE                       R18 K103 [PROTO_25]
      266 CAPTURE                          VAL R11
      267 SETTABLEKS                       R18 R12 K104 ["_processSelectionChanged"]
      269 DUPCLOSURE                       R18 K105 [PROTO_26]
      270 SETTABLEKS                       R18 R12 K106 ["_processKeyDown"]
      272 DUPCLOSURE                       R18 K107 [PROTO_27]
      273 SETTABLEKS                       R18 R12 K108 ["_processKeyUp"]
      275 DUPCLOSURE                       R18 K109 [PROTO_28]
      276 SETTABLEKS                       R18 R12 K110 ["_processMouseDown"]
      278 DUPCLOSURE                       R18 K111 [PROTO_29]
      279 SETTABLEKS                       R18 R12 K112 ["_processMouseUp"]
      281 DUPCLOSURE                       R18 K113 [PROTO_30]
      282 SETTABLEKS                       R18 R12 K114 ["_processViewChanged"]
      284 DUPCLOSURE                       R18 K115 [PROTO_31]
      285 CAPTURE                          VAL R11
      286 SETTABLEKS                       R18 R12 K116 ["_updateHandles"]
      288 DUPCLOSURE                       R18 K117 [PROTO_32]
      289 SETTABLEKS                       R18 R12 K118 ["_updateSelectionInfo"]
      291 DUPCLOSURE                       R18 K119 [PROTO_33]
      292 CAPTURE                          VAL R13
      293 SETTABLEKS                       R18 R12 K120 ["_updatePivotIndicatorVisibility"]
      295 DUPCLOSURE                       R18 K121 [PROTO_34]
      296 CAPTURE                          VAL R13
      297 SETTABLEKS                       R18 R12 K122 ["_processToolboxInitiatedFreeformSelectionDrag"]
      299 DUPCLOSURE                       R18 K123 [PROTO_36]
      300 CAPTURE                          VAL R0
      301 CAPTURE                          VAL R13
      302 SETTABLEKS                       R18 R12 K124 ["_processToolboxInitiatedFaceDrag"]
      304 DUPCLOSURE                       R18 K125 [PROTO_37]
      305 SETTABLEKS                       R18 R12 K126 ["_processMouseEnter"]
      307 DUPCLOSURE                       R18 K127 [PROTO_38]
      308 SETTABLEKS                       R18 R12 K128 ["_processMouseLeave"]
      310 DUPCLOSURE                       R18 K129 [PROTO_39]
      311 SETTABLEKS                       R18 R12 K130 ["_scheduleRender"]
      313 DUPCLOSURE                       R18 K131 [PROTO_40]
      314 SETTABLEKS                       R18 R12 K132 ["_isSummoned"]
      316 DUPCLOSURE                       R18 K133 [PROTO_41]
      317 SETTABLEKS                       R18 R12 K134 ["_beginSummon"]
      319 DUPCLOSURE                       R18 K135 [PROTO_42]
      320 SETTABLEKS                       R18 R12 K136 ["_endSummon"]
      322 DUPCLOSURE                       R18 K137 [PROTO_43]
      323 SETTABLEKS                       R18 R12 K138 ["shouldShowPivotIndicator"]
      325 DUPCLOSURE                       R18 K139 [PROTO_44]
      326 SETTABLEKS                       R18 R12 K140 ["_analyticsSessionBegin"]
      328 DUPCLOSURE                       R18 K141 [PROTO_45]
      329 SETTABLEKS                       R18 R12 K142 ["_analyticsSendSession"]
      331 DUPCLOSURE                       R18 K143 [PROTO_46]
      332 SETTABLEKS                       R18 R12 K144 ["_analyticsSendClick"]
      334 DUPCLOSURE                       R18 K145 [PROTO_47]
      335 SETTABLEKS                       R18 R12 K146 ["_analyticsSendSelectionCycle"]
      337 DUPCLOSURE                       R18 K147 [PROTO_48]
      338 SETTABLEKS                       R18 R12 K148 ["_analyticsRecordFreeformDragBegin"]
      340 DUPCLOSURE                       R18 K149 [PROTO_49]
      341 CAPTURE                          VAL R10
      342 SETTABLEKS                       R18 R12 K150 ["_analyticsSendHandleDragged"]
      344 DUPCLOSURE                       R18 K151 [PROTO_50]
      345 SETTABLEKS                       R18 R12 K152 ["_analyticsSendBoxSelect"]
      347 DUPCLOSURE                       R18 K153 [PROTO_51]
      348 SETTABLEKS                       R18 R12 K154 ["_analyticsSendFaceInstanceSelected"]
      350 RETURN                           R12 1
