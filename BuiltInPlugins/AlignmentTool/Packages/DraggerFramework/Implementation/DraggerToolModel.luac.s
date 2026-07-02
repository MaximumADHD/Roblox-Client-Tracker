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
       15 GETTABLEKS                       R2 R0 K5 ["_stateObject"]
       17 NAMECALL                         R2 R2 K6 ["leave"]
       19 CALL                             R2 1 0
       20 SETTABLEKS                       R1 R0 K7 ["_mainState"]
       22 GETUPVAL                         R3 0
       23 GETTABLE                         R2 R3 R1
       24 GETTABLEKS                       R2 R2 K8 ["new"]
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
       16 GETTABLEKS                       R1 R0 K4 ["_modelProps"]
       18 GETTABLEKS                       R1 R1 K5 ["ShowPivotIndicator"]
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
       38 GETTABLEKS                       R1 R0 K12 ["_draggerSchema"]
       40 GETTABLEKS                       R1 R1 K13 ["BoundsChangedTracker"]
       42 GETTABLEKS                       R1 R1 K2 ["new"]
       44 GETTABLEKS                       R2 R0 K6 ["_draggerContext"]
       46 NEWCLOSURE                       R3 P0
       47 CAPTURE                          VAL R0
       48 CALL                             R1 2 1
       49 SETTABLEKS                       R1 R0 K14 ["_boundsChangedTracker"]
       51 GETTABLEKS                       R1 R0 K14 ["_boundsChangedTracker"]
       53 NAMECALL                         R1 R1 K15 ["install"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 2
       57 GETTABLEKS                       R1 R1 K2 ["new"]
       59 GETTABLEKS                       R2 R0 K6 ["_draggerContext"]
       61 NAMECALL                         R2 R2 K16 ["getSelection"]
       63 CALL                             R2 1 -1
       64 CALL                             R1 -1 1
       65 SETTABLEKS                       R1 R0 K17 ["_selectionWrapper"]
       67 GETTABLEKS                       R1 R0 K17 ["_selectionWrapper"]
       69 GETTABLEKS                       R1 R1 K18 ["onSelectionExternallyChanged"]
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
       12 GETTABLEKS                       R1 R0 K3 ["_modelProps"]
       14 GETTABLEKS                       R1 R1 K4 ["ShowPivotIndicator"]
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
       25 JUMPIFNOT                        R2 ; [+19]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K5 ["DraggingParts"]
       29 DUPTABLE                         R5 K13 [{["draggedPoint"] = {0, 0, 0}, ["clickedPoint"] = {0, 0, 0}, ["clickedMetadata"], ["clickedFaceInstance"] = , ["attachmentBeingDragged"] = }]
       30 GETIMPORT                        R6 K16 [table.freeze]
       32 DUPTABLE                         R7 K22 [{["RaycastResult"] = , ["TargetMatrix"], ["TargetSize"] = {0, 0, 0}, ["IsPivot"] = False}]
       33 GETIMPORT                        R8 K25 [CFrame.new]
       35 CALL                             R8 0 1
       36 SETTABLEKS                       R8 R7 K18 ["TargetMatrix"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K9 ["clickedMetadata"]
       41 NAMECALL                         R2 R0 K26 ["transitionToState"]
       43 CALL                             R2 3 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R4 R4 K5 ["DraggingParts"]
       48 DUPTABLE                         R5 K30 [{["mouseLocation"], ["basisPoint"] = {0, 0, 0}, ["clickPoint"] = {0, 0, 0}}]
       49 GETTABLEKS                       R6 R0 K31 ["_draggerContext"]
       51 NAMECALL                         R6 R6 K32 ["getMouseLocation"]
       53 CALL                             R6 1 1
       54 SETTABLEKS                       R6 R5 K27 ["mouseLocation"]
       56 NAMECALL                         R2 R0 K26 ["transitionToState"]
       58 CALL                             R2 3 0
       59 RETURN                           R0 0

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
       26 GETTABLEKS                       R5 R1 K11 ["Implementation"]
       28 GETTABLEKS                       R5 R5 K12 ["SelectionCycleCache"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K8 [require]
       33 GETTABLEKS                       R6 R1 K13 ["Utility"]
       35 GETTABLEKS                       R6 R6 K14 ["SelectionWrapper"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K8 [require]
       40 GETTABLEKS                       R7 R1 K13 ["Utility"]
       42 GETTABLEKS                       R7 R7 K15 ["SelectionHelper"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K8 [require]
       47 GETTABLEKS                       R8 R1 K13 ["Utility"]
       49 GETTABLEKS                       R8 R8 K16 ["classifyPivot"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K8 [require]
       54 GETTABLEKS                       R9 R1 K13 ["Utility"]
       56 GETTABLEKS                       R9 R9 K17 ["Analytics"]
       58 CALL                             R8 1 1
       59 DUPTABLE                         R9 K26 [{["eventName"] = "SBT_DraggerHandleDragCompleted", ["lastUpdated"], ["description"] = "The user successfully dragged the selection via a handle.", ["links"] = "https://grafana.rbx.com/d/ae0dljzicfs3kb?from=now-10d", ["backends"]}]
       60 NEWTABLE                         R10 0 3
       62 LOADN                            R11 2024
       63 LOADN                            R12 10
       64 LOADN                            R13 14
       65 SETLIST                          R10 R11 3 [1]
       67 SETTABLEKS                       R10 R9 K20 ["lastUpdated"]
       69 NEWTABLE                         R10 0 1
       71 LOADK                            R11 K27 ["RobloxTelemetryCounter"]
       72 SETLIST                          R10 R11 1 [1]
       74 SETTABLEKS                       R10 R9 K25 ["backends"]
       76 GETIMPORT                        R10 K8 [require]
       78 GETTABLEKS                       R11 R1 K28 ["Flags"]
       80 GETTABLEKS                       R11 R11 K29 ["getFFlagDraggerHandlesIsEnabledFunction"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K8 [require]
       85 GETTABLEKS                       R12 R1 K28 ["Flags"]
       87 GETTABLEKS                       R12 R12 K30 ["getFFlagDraggerImprovements"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K1 [game]
       92 LOADK                            R14 K31 ["FixDragFromToolbox"]
       93 LOADB                            R15 0
       94 NAMECALL                         R12 R12 K32 ["DefineFastFlag"]
       96 CALL                             R12 3 1
       97 NEWTABLE                         R13 64 0
       99 SETTABLEKS                       R13 R13 K33 ["__index"]
      101 GETIMPORT                        R14 K8 [require]
      103 GETTABLEKS                       R15 R1 K11 ["Implementation"]
      105 GETTABLEKS                       R15 R15 K34 ["DraggerStateType"]
      107 CALL                             R14 1 1
      108 GETTABLEKS                       R15 R1 K11 ["Implementation"]
      110 GETTABLEKS                       R15 R15 K35 ["DraggerStates"]
      112 GETIMPORT                        R16 K38 [table.freeze]
      114 NEWTABLE                         R17 8 0
      116 GETTABLEKS                       R18 R14 K39 ["Ready"]
      118 GETIMPORT                        R19 K8 [require]
      120 GETTABLEKS                       R20 R15 K39 ["Ready"]
      122 CALL                             R19 1 1
      123 SETTABLE                         R19 R17 R18
      124 GETTABLEKS                       R18 R14 K40 ["DraggingFaceInstance"]
      126 GETIMPORT                        R19 K8 [require]
      128 GETTABLEKS                       R20 R15 K40 ["DraggingFaceInstance"]
      130 CALL                             R19 1 1
      131 SETTABLE                         R19 R17 R18
      132 GETTABLEKS                       R18 R14 K41 ["PendingDraggingParts"]
      134 GETIMPORT                        R19 K8 [require]
      136 GETTABLEKS                       R20 R15 K41 ["PendingDraggingParts"]
      138 CALL                             R19 1 1
      139 SETTABLE                         R19 R17 R18
      140 GETTABLEKS                       R18 R14 K42 ["PendingDraggingHandle"]
      142 GETIMPORT                        R19 K8 [require]
      144 GETTABLEKS                       R20 R15 K42 ["PendingDraggingHandle"]
      146 CALL                             R19 1 1
      147 SETTABLE                         R19 R17 R18
      148 GETTABLEKS                       R18 R14 K43 ["PendingSelectNext"]
      150 GETIMPORT                        R19 K8 [require]
      152 GETTABLEKS                       R20 R15 K43 ["PendingSelectNext"]
      154 CALL                             R19 1 1
      155 SETTABLE                         R19 R17 R18
      156 GETTABLEKS                       R18 R14 K44 ["DraggingHandle"]
      158 GETIMPORT                        R19 K8 [require]
      160 GETTABLEKS                       R20 R15 K44 ["DraggingHandle"]
      162 CALL                             R19 1 1
      163 SETTABLE                         R19 R17 R18
      164 GETTABLEKS                       R18 R14 K45 ["DraggingParts"]
      166 GETIMPORT                        R19 K8 [require]
      168 GETTABLEKS                       R20 R15 K45 ["DraggingParts"]
      170 CALL                             R19 1 1
      171 SETTABLE                         R19 R17 R18
      172 GETTABLEKS                       R18 R14 K46 ["DragSelecting"]
      174 GETIMPORT                        R19 K8 [require]
      176 GETTABLEKS                       R20 R15 K46 ["DragSelecting"]
      178 CALL                             R19 1 1
      179 SETTABLE                         R19 R17 R18
      180 CALL                             R16 1 1
      181 DUPTABLE                         R17 K56 [{["AllowDragSelect"] = True, ["AllowFreeformDrag"] = True, ["ShowLocalSpaceIndicator"] = False, ["WasAutoSelected"] = False, ["HandlesList"], ["ShowPivotIndicator"] = False, ["ShowDragSelect"] = True}]
      182 NEWTABLE                         R18 0 0
      184 SETTABLEKS                       R18 R17 K53 ["HandlesList"]
      186 DUPTABLE                         R18 K58 [{["AnalyticsName"] = True}]
      187 DUPCLOSURE                       R19 K59 [PROTO_0]
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R13
      193 SETTABLEKS                       R19 R13 K60 ["new"]
      195 DUPCLOSURE                       R19 K61 [PROTO_1]
      196 SETTABLEKS                       R19 R13 K62 ["setMouseCursor"]
      198 DUPCLOSURE                       R19 K63 [PROTO_2]
      199 CAPTURE                          VAL R16
      200 SETTABLEKS                       R19 R13 K64 ["transitionToState"]
      202 DUPCLOSURE                       R19 K65 [PROTO_3]
      203 CAPTURE                          VAL R3
      204 SETTABLEKS                       R19 R13 K66 ["render"]
      206 DUPCLOSURE                       R19 K67 [PROTO_4]
      207 CAPTURE                          VAL R14
      208 SETTABLEKS                       R19 R13 K68 ["update"]
      210 DUPCLOSURE                       R19 K69 [PROTO_5]
      211 SETTABLEKS                       R19 R13 K70 ["getSelectionWrapper"]
      213 DUPCLOSURE                       R19 K71 [PROTO_6]
      214 SETTABLEKS                       R19 R13 K72 ["getAnalyticsName"]
      216 DUPCLOSURE                       R19 K73 [PROTO_7]
      217 SETTABLEKS                       R19 R13 K74 ["wasAutoSelected"]
      219 DUPCLOSURE                       R19 K75 [PROTO_8]
      220 SETTABLEKS                       R19 R13 K76 ["getSchema"]
      222 DUPCLOSURE                       R19 K77 [PROTO_9]
      223 CAPTURE                          VAL R10
      224 SETTABLEKS                       R19 R13 K78 ["getHandlesList"]
      226 DUPCLOSURE                       R19 K79 [PROTO_10]
      227 SETTABLEKS                       R19 R13 K80 ["doesAllowDragSelect"]
      229 DUPCLOSURE                       R19 K81 [PROTO_11]
      230 SETTABLEKS                       R19 R13 K82 ["doesAllowFreeformDrag"]
      232 DUPCLOSURE                       R19 K83 [PROTO_12]
      233 SETTABLEKS                       R19 R13 K84 ["shouldShowDragSelect"]
      235 DUPCLOSURE                       R19 K85 [PROTO_13]
      236 SETTABLEKS                       R19 R13 K86 ["shouldShowLocalSpaceIndicator"]
      238 DUPCLOSURE                       R19 K87 [PROTO_14]
      239 SETTABLEKS                       R19 R13 K88 ["shouldShowSelectionDot"]
      241 DUPCLOSURE                       R19 K89 [PROTO_15]
      242 SETTABLEKS                       R19 R13 K90 ["shouldUseCollisionTransparency"]
      244 DUPCLOSURE                       R19 K91 [PROTO_16]
      245 SETTABLEKS                       R19 R13 K92 ["shouldAlignDraggedObjects"]
      247 DUPCLOSURE                       R19 K93 [PROTO_17]
      248 CAPTURE                          VAL R6
      249 SETTABLEKS                       R19 R13 K94 ["selectNextSelectables"]
      251 DUPCLOSURE                       R19 K95 [PROTO_18]
      252 CAPTURE                          VAL R7
      253 SETTABLEKS                       R19 R13 K96 ["classifySelectionPivot"]
      255 DUPCLOSURE                       R19 K97 [PROTO_21]
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R16
      258 CAPTURE                          VAL R5
      259 CAPTURE                          VAL R10
      260 SETTABLEKS                       R19 R13 K98 ["_processSelected"]
      262 DUPCLOSURE                       R19 K99 [PROTO_22]
      263 CAPTURE                          VAL R11
      264 SETTABLEKS                       R19 R13 K100 ["_processDeselected"]
      266 DUPCLOSURE                       R19 K101 [PROTO_23]
      267 SETTABLEKS                       R19 R13 K102 ["isSelected"]
      269 MOVE                             R19 R10
      270 CALL                             R19 0 1
      271 JUMPIFNOT                        R19 ; [+3]
      272 DUPCLOSURE                       R19 K103 [PROTO_24]
      273 SETTABLEKS                       R19 R13 K104 ["_updateEnabledHandlesList"]
      275 DUPCLOSURE                       R19 K105 [PROTO_25]
      276 CAPTURE                          VAL R10
      277 CAPTURE                          VAL R11
      278 SETTABLEKS                       R19 R13 K106 ["_processSelectionChanged"]
      280 DUPCLOSURE                       R19 K107 [PROTO_26]
      281 SETTABLEKS                       R19 R13 K108 ["_processKeyDown"]
      283 DUPCLOSURE                       R19 K109 [PROTO_27]
      284 SETTABLEKS                       R19 R13 K110 ["_processKeyUp"]
      286 DUPCLOSURE                       R19 K111 [PROTO_28]
      287 SETTABLEKS                       R19 R13 K112 ["_processMouseDown"]
      289 DUPCLOSURE                       R19 K113 [PROTO_29]
      290 SETTABLEKS                       R19 R13 K114 ["_processMouseUp"]
      292 DUPCLOSURE                       R19 K115 [PROTO_30]
      293 SETTABLEKS                       R19 R13 K116 ["_processViewChanged"]
      295 DUPCLOSURE                       R19 K117 [PROTO_31]
      296 CAPTURE                          VAL R10
      297 SETTABLEKS                       R19 R13 K118 ["_updateHandles"]
      299 DUPCLOSURE                       R19 K119 [PROTO_32]
      300 SETTABLEKS                       R19 R13 K120 ["_updateSelectionInfo"]
      302 DUPCLOSURE                       R19 K121 [PROTO_33]
      303 CAPTURE                          VAL R14
      304 SETTABLEKS                       R19 R13 K122 ["_updatePivotIndicatorVisibility"]
      306 DUPCLOSURE                       R19 K123 [PROTO_34]
      307 CAPTURE                          VAL R12
      308 CAPTURE                          VAL R11
      309 CAPTURE                          VAL R14
      310 SETTABLEKS                       R19 R13 K124 ["_processToolboxInitiatedFreeformSelectionDrag"]
      312 DUPCLOSURE                       R19 K125 [PROTO_36]
      313 CAPTURE                          VAL R0
      314 CAPTURE                          VAL R14
      315 SETTABLEKS                       R19 R13 K126 ["_processToolboxInitiatedFaceDrag"]
      317 DUPCLOSURE                       R19 K127 [PROTO_37]
      318 SETTABLEKS                       R19 R13 K128 ["_processMouseEnter"]
      320 DUPCLOSURE                       R19 K129 [PROTO_38]
      321 SETTABLEKS                       R19 R13 K130 ["_processMouseLeave"]
      323 DUPCLOSURE                       R19 K131 [PROTO_39]
      324 SETTABLEKS                       R19 R13 K132 ["_scheduleRender"]
      326 DUPCLOSURE                       R19 K133 [PROTO_40]
      327 SETTABLEKS                       R19 R13 K134 ["_isSummoned"]
      329 DUPCLOSURE                       R19 K135 [PROTO_41]
      330 SETTABLEKS                       R19 R13 K136 ["_beginSummon"]
      332 DUPCLOSURE                       R19 K137 [PROTO_42]
      333 SETTABLEKS                       R19 R13 K138 ["_endSummon"]
      335 DUPCLOSURE                       R19 K139 [PROTO_43]
      336 SETTABLEKS                       R19 R13 K140 ["shouldShowPivotIndicator"]
      338 DUPCLOSURE                       R19 K141 [PROTO_44]
      339 SETTABLEKS                       R19 R13 K142 ["_analyticsSessionBegin"]
      341 DUPCLOSURE                       R19 K143 [PROTO_45]
      342 SETTABLEKS                       R19 R13 K144 ["_analyticsSendSession"]
      344 DUPCLOSURE                       R19 K145 [PROTO_46]
      345 SETTABLEKS                       R19 R13 K146 ["_analyticsSendClick"]
      347 DUPCLOSURE                       R19 K147 [PROTO_47]
      348 SETTABLEKS                       R19 R13 K148 ["_analyticsSendSelectionCycle"]
      350 DUPCLOSURE                       R19 K149 [PROTO_48]
      351 SETTABLEKS                       R19 R13 K150 ["_analyticsRecordFreeformDragBegin"]
      353 DUPCLOSURE                       R19 K151 [PROTO_49]
      354 CAPTURE                          VAL R9
      355 SETTABLEKS                       R19 R13 K152 ["_analyticsSendHandleDragged"]
      357 DUPCLOSURE                       R19 K153 [PROTO_50]
      358 SETTABLEKS                       R19 R13 K154 ["_analyticsSendBoxSelect"]
      360 DUPCLOSURE                       R19 K155 [PROTO_51]
      361 SETTABLEKS                       R19 R13 K156 ["_analyticsSendFaceInstanceSelected"]
      363 RETURN                           R13 1
