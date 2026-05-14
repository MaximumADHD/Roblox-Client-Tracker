PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 NAMECALL                         R1 R0 K1 ["setup"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["teardown"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["DraggerContext"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R4 K0 ["DraggerContext"]
        6 JUMPIFNOTEQ                      R3 R4 ; [+17]
        8 GETTABLEKS                       R3 R1 K2 ["DraggerSchema"]
       10 GETTABLEKS                       R4 R0 K1 ["props"]
       12 GETTABLEKS                       R4 R4 K2 ["DraggerSchema"]
       14 JUMPIFNOTEQ                      R3 R4 ; [+9]
       16 GETTABLEKS                       R3 R1 K3 ["DraggerSettings"]
       18 GETTABLEKS                       R4 R0 K1 ["props"]
       20 GETTABLEKS                       R4 R4 K3 ["DraggerSettings"]
       22 JUMPIFEQ                         R3 R4 ; [+8]
       24 NAMECALL                         R3 R0 K4 ["teardown"]
       26 CALL                             R3 1 0
       27 MOVE                             R5 R1
       28 NAMECALL                         R3 R0 K5 ["setup"]
       30 CALL                             R3 2 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_draggerToolModel"]
        2 NAMECALL                         R1 R1 K1 ["render"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["setState"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["forceUpdate"]
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R0 0
        9 NAMECALL                         R0 R0 K1 ["forceUpdate"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETIMPORT                        R0 K3 [xpcall]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U0
       17 DUPCLOSURE                       R2 K4 [PROTO_6]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_viewBoundsAreDirty"]
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_selectionBoundsAreDirty"]
        4 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_11:
        0 JUMPIF                           R1 ; [+4]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["_gameEatingEvents"]
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
        8 GETIMPORT                        R3 K4 [Enum.UserInputType.Keyboard]
       10 JUMPIFNOTEQ                      R2 R3 ; [+10]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["_draggerToolModel"]
       15 GETTABLEKS                       R5 R0 K6 ["KeyCode"]
       17 NAMECALL                         R3 R3 K7 ["_processKeyDown"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0
       21 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton1]
       23 JUMPIFEQ                         R2 R3 ; [+5]
       25 GETIMPORT                        R3 K11 [Enum.UserInputType.Touch]
       27 JUMPIFNOTEQ                      R2 R3 ; [+11]
       29 GETUPVAL                         R3 0
       30 LOADB                            R4 1
       31 SETTABLEKS                       R4 R3 K12 ["_mouseCaptured"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K5 ["_draggerToolModel"]
       36 NAMECALL                         R3 R3 K13 ["_processMouseDown"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R1 ; [+5]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["_mouseCaptured"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
        8 GETIMPORT                        R3 K4 [Enum.UserInputType.Keyboard]
       10 JUMPIFNOTEQ                      R2 R3 ; [+10]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["_draggerToolModel"]
       15 GETTABLEKS                       R5 R0 K6 ["KeyCode"]
       17 NAMECALL                         R3 R3 K7 ["_processKeyUp"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0
       21 GETIMPORT                        R3 K9 [Enum.UserInputType.MouseButton1]
       23 JUMPIFEQ                         R2 R3 ; [+5]
       25 GETIMPORT                        R3 K11 [Enum.UserInputType.Touch]
       27 JUMPIFNOTEQ                      R2 R3 ; [+11]
       29 GETUPVAL                         R3 0
       30 LOADB                            R4 0
       31 SETTABLEKS                       R4 R3 K0 ["_mouseCaptured"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K5 ["_draggerToolModel"]
       36 NAMECALL                         R3 R3 K12 ["_processMouseUp"]
       38 CALL                             R3 1 0
       39 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R2 R3 ; [+35]
        6 JUMPIFNOT                        R1 ; [+19]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["_gameEatingEvents"]
       10 JUMPIF                           R2 ; [+29]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["_mouseCaptured"]
       14 JUMPIF                           R2 ; [+25]
       15 GETUPVAL                         R2 0
       16 LOADB                            R3 1
       17 SETTABLEKS                       R3 R2 K4 ["_gameEatingEvents"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K6 ["_draggerToolModel"]
       22 NAMECALL                         R2 R2 K7 ["_processMouseLeave"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K4 ["_gameEatingEvents"]
       29 JUMPIFNOT                        R2 ; [+10]
       30 GETUPVAL                         R2 0
       31 LOADB                            R3 0
       32 SETTABLEKS                       R3 R2 K4 ["_gameEatingEvents"]
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K6 ["_draggerToolModel"]
       37 NAMECALL                         R2 R2 K8 ["_processMouseEnter"]
       39 CALL                             R2 1 0
       40 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["_gameEatingEvents"]
        6 JUMPIFNOT                        R1 ; [+10]
        7 GETUPVAL                         R1 0
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K0 ["_gameEatingEvents"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["_draggerToolModel"]
       14 NAMECALL                         R1 R1 K2 ["_processMouseEnter"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 0
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K3 ["_mouseCaptured"]
       21 LENGTH                           R1 R0
       22 LOADN                            R2 0
       23 JUMPIFNOTLT                      R2 R1 ; [+23]
       25 LENGTH                           R1 R0
       26 JUMPIFNOTEQKN                    R1 K4 [1] ; [+13]
       28 GETUPVAL                         R1 1
       29 GETTABLEN                        R2 R0 1
       30 CALL                             R1 1 1
       31 JUMPIFNOT                        R1 ; [+8]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K1 ["_draggerToolModel"]
       35 MOVE                             R3 R0
       36 NAMECALL                         R1 R1 K5 ["_processToolboxInitiatedFaceDrag"]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K1 ["_draggerToolModel"]
       43 MOVE                             R3 R0
       44 NAMECALL                         R1 R1 K6 ["_processToolboxInitiatedFreeformSelectionDrag"]
       46 CALL                             R1 2 0
       47 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_draggerToolModel"]
        3 NAMECALL                         R0 R0 K1 ["_processMouseEnter"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_draggerToolModel"]
        3 NAMECALL                         R0 R0 K1 ["_processMouseLeave"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["_draggerToolModel"]
        8 NAMECALL                         R0 R0 K2 ["update"]
       10 CALL                             R0 1 0
       11 LOADB                            R0 0
       12 LOADB                            R1 0
       13 LOADB                            R2 0
       14 LOADB                            R3 0
       15 GETUPVAL                         R4 1
       16 NAMECALL                         R4 R4 K3 ["poll"]
       18 CALL                             R4 1 1
       19 JUMPIFNOT                        R4 ; [+6]
       20 GETUPVAL                         R4 2
       21 CALL                             R4 0 1
       22 JUMPIFNOT                        R4 ; [+2]
       23 LOADB                            R2 1
       24 JUMP                             ; [+1]
       25 LOADB                            R1 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K4 ["_selectionBoundsAreDirty"]
       29 JUMPIFNOT                        R4 ; [+5]
       30 GETUPVAL                         R4 0
       31 LOADB                            R5 0
       32 SETTABLEKS                       R5 R4 K4 ["_selectionBoundsAreDirty"]
       34 LOADB                            R0 1
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K5 ["_viewBoundsAreDirty"]
       38 JUMPIFNOT                        R4 ; [+10]
       39 GETUPVAL                         R4 0
       40 LOADB                            R5 0
       41 SETTABLEKS                       R5 R4 K5 ["_viewBoundsAreDirty"]
       43 GETUPVAL                         R4 2
       44 CALL                             R4 0 1
       45 JUMPIFNOT                        R4 ; [+2]
       46 LOADB                            R3 1
       47 JUMP                             ; [+1]
       48 LOADB                            R1 1
       49 GETUPVAL                         R4 3
       50 GETTABLEKS                       R4 R4 K6 ["DraggerContext"]
       52 NAMECALL                         R4 R4 K7 ["shouldUseLocalSpace"]
       54 CALL                             R4 1 1
       55 GETUPVAL                         R5 4
       56 JUMPIFEQ                         R4 R5 ; [+2]
       58 LOADB                            R0 1
       59 JUMPIFNOT                        R0 ; [+6]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K1 ["_draggerToolModel"]
       63 NAMECALL                         R5 R5 K8 ["_processSelectionChanged"]
       65 CALL                             R5 1 0
       66 GETUPVAL                         R5 2
       67 CALL                             R5 0 1
       68 JUMPIFNOT                        R5 ; [+13]
       69 JUMPIF                           R2 ; [+5]
       70 JUMPIFNOT                        R3 ; [+22]
       71 GETUPVAL                         R5 0
       72 GETTABLEKS                       R5 R5 K9 ["_gameEatingEvents"]
       74 JUMPIF                           R5 ; [+18]
       75 GETUPVAL                         R5 0
       76 GETTABLEKS                       R5 R5 K1 ["_draggerToolModel"]
       78 NAMECALL                         R5 R5 K10 ["_processViewChanged"]
       80 CALL                             R5 1 0
       81 JUMP                             ; [+11]
       82 JUMPIFNOT                        R1 ; [+10]
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K9 ["_gameEatingEvents"]
       86 JUMPIF                           R5 ; [+6]
       87 GETUPVAL                         R5 0
       88 GETTABLEKS                       R5 R5 K1 ["_draggerToolModel"]
       90 NAMECALL                         R5 R5 K10 ["_processViewChanged"]
       92 CALL                             R5 1 0
       93 SETUPVAL                         R4 4
       94 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R1 K0 ["DraggerContext"]
        2 FASTCALL1                        ASSERT R3 ; [+2]
        3 GETIMPORT                        R2 K2 [assert]
        5 CALL                             R2 1 0
        6 GETTABLEKS                       R3 R1 K3 ["DraggerSchema"]
        8 FASTCALL1                        ASSERT R3 ; [+2]
        9 GETIMPORT                        R2 K2 [assert]
       11 CALL                             R2 1 0
       12 GETTABLEKS                       R3 R1 K4 ["DraggerSettings"]
       14 FASTCALL1                        ASSERT R3 ; [+2]
       15 GETIMPORT                        R2 K2 [assert]
       17 CALL                             R2 1 0
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R0 K5 ["_selectionBoundsAreDirty"]
       21 LOADB                            R2 0
       22 SETTABLEKS                       R2 R0 K6 ["_viewBoundsAreDirty"]
       24 LOADK                            R2 K7 ["DraggerToolViewUpdate"]
       25 SETTABLEKS                       R2 R0 K8 ["_bindName"]
       27 GETUPVAL                         R2 0
       28 LOADB                            R4 0
       29 NAMECALL                         R2 R2 K9 ["GenerateGUID"]
       31 CALL                             R2 2 1
       32 GETTABLEKS                       R4 R0 K8 ["_bindName"]
       34 MOVE                             R5 R2
       35 CONCAT                           R3 R4 R5
       36 SETTABLEKS                       R3 R0 K8 ["_bindName"]
       38 LOADB                            R3 0
       39 SETTABLEKS                       R3 R0 K10 ["_gameEatingEvents"]
       41 LOADB                            R3 0
       42 SETTABLEKS                       R3 R0 K11 ["_mouseCaptured"]
       44 NEWCLOSURE                       R3 P0
       45 CAPTURE                          VAL R0
       46 GETUPVAL                         R4 1
       47 GETTABLEKS                       R4 R4 K12 ["new"]
       49 GETTABLEKS                       R5 R1 K0 ["DraggerContext"]
       51 GETTABLEKS                       R6 R1 K3 ["DraggerSchema"]
       53 GETTABLEKS                       R7 R1 K4 ["DraggerSettings"]
       55 MOVE                             R8 R3
       56 NEWCLOSURE                       R9 P1
       57 CAPTURE                          VAL R0
       58 NEWCLOSURE                       R10 P2
       59 CAPTURE                          VAL R0
       60 CALL                             R4 6 1
       61 SETTABLEKS                       R4 R0 K13 ["_draggerToolModel"]
       63 GETTABLEKS                       R4 R0 K13 ["_draggerToolModel"]
       65 NAMECALL                         R4 R4 K14 ["_processSelected"]
       67 CALL                             R4 1 0
       68 DUPCLOSURE                       R4 K15 [PROTO_10]
       69 GETTABLEKS                       R5 R1 K16 ["Mouse"]
       71 GETUPVAL                         R6 2
       72 GETTABLEKS                       R6 R6 K17 ["InputBegan"]
       74 NEWCLOSURE                       R8 P4
       75 CAPTURE                          VAL R0
       76 NAMECALL                         R6 R6 K18 ["Connect"]
       78 CALL                             R6 2 1
       79 SETTABLEKS                       R6 R0 K19 ["_inputBeganConnection"]
       81 GETUPVAL                         R6 2
       82 GETTABLEKS                       R6 R6 K20 ["InputEnded"]
       84 NEWCLOSURE                       R8 P5
       85 CAPTURE                          VAL R0
       86 NAMECALL                         R6 R6 K18 ["Connect"]
       88 CALL                             R6 2 1
       89 SETTABLEKS                       R6 R0 K21 ["_inputEndedConnection"]
       91 GETUPVAL                         R6 2
       92 GETTABLEKS                       R6 R6 K22 ["InputChanged"]
       94 NEWCLOSURE                       R8 P6
       95 CAPTURE                          VAL R0
       96 NAMECALL                         R6 R6 K18 ["Connect"]
       98 CALL                             R6 2 1
       99 SETTABLEKS                       R6 R0 K23 ["_inputChangedConnection"]
      101 GETTABLEKS                       R6 R5 K24 ["DragEnter"]
      103 NEWCLOSURE                       R8 P7
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U3
      106 NAMECALL                         R6 R6 K18 ["Connect"]
      108 CALL                             R6 2 1
      109 SETTABLEKS                       R6 R0 K25 ["_dragEnterConnection"]
      111 GETUPVAL                         R6 4
      112 GETTABLEKS                       R6 R6 K26 ["MouseEnterStudioViewport"]
      114 NEWCLOSURE                       R8 P8
      115 CAPTURE                          VAL R0
      116 NAMECALL                         R6 R6 K18 ["Connect"]
      118 CALL                             R6 2 1
      119 SETTABLEKS                       R6 R0 K27 ["_mouseEnterConnection"]
      121 GETUPVAL                         R6 4
      122 GETTABLEKS                       R6 R6 K28 ["MouseLeaveStudioViewport"]
      124 NEWCLOSURE                       R8 P9
      125 CAPTURE                          VAL R0
      126 NAMECALL                         R6 R6 K18 ["Connect"]
      128 CALL                             R6 2 1
      129 SETTABLEKS                       R6 R0 K29 ["_mouseLeaveConnection"]
      131 GETUPVAL                         R6 5
      132 GETTABLEKS                       R6 R6 K12 ["new"]
      134 MOVE                             R7 R5
      135 CALL                             R6 1 1
      136 GETTABLEKS                       R7 R1 K0 ["DraggerContext"]
      138 NAMECALL                         R7 R7 K30 ["shouldUseLocalSpace"]
      140 CALL                             R7 1 1
      141 GETUPVAL                         R8 6
      142 GETTABLEKS                       R10 R0 K8 ["_bindName"]
      144 GETIMPORT                        R11 K34 [Enum.RenderPriority.First]
      146 GETTABLEKS                       R11 R11 K35 ["Value"]
      148 NEWCLOSURE                       R12 P10
      149 CAPTURE                          VAL R0
      150 CAPTURE                          VAL R6
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          VAL R1
      153 CAPTURE                          REF R7
      154 NAMECALL                         R8 R8 K36 ["BindToRenderStep"]
      156 CALL                             R8 4 0
      157 LOADB                            R8 1
      158 SETTABLEKS                       R8 R0 K37 ["_isMounted"]
      160 CLOSEUPVALS                      R7
      161 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["_inputChangedConnection"]
        5 NAMECALL                         R1 R1 K2 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K1 ["_inputChangedConnection"]
       11 GETTABLEKS                       R1 R0 K3 ["_inputBeganConnection"]
       13 NAMECALL                         R1 R1 K2 ["Disconnect"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K3 ["_inputBeganConnection"]
       19 GETTABLEKS                       R1 R0 K4 ["_inputEndedConnection"]
       21 NAMECALL                         R1 R1 K2 ["Disconnect"]
       23 CALL                             R1 1 0
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K4 ["_inputEndedConnection"]
       27 GETTABLEKS                       R1 R0 K5 ["_dragEnterConnection"]
       29 NAMECALL                         R1 R1 K2 ["Disconnect"]
       31 CALL                             R1 1 0
       32 LOADNIL                          R1
       33 SETTABLEKS                       R1 R0 K5 ["_dragEnterConnection"]
       35 GETTABLEKS                       R1 R0 K6 ["_mouseEnterConnection"]
       37 NAMECALL                         R1 R1 K2 ["Disconnect"]
       39 CALL                             R1 1 0
       40 LOADNIL                          R1
       41 SETTABLEKS                       R1 R0 K6 ["_mouseEnterConnection"]
       43 GETTABLEKS                       R1 R0 K7 ["_mouseLeaveConnection"]
       45 NAMECALL                         R1 R1 K2 ["Disconnect"]
       47 CALL                             R1 1 0
       48 LOADNIL                          R1
       49 SETTABLEKS                       R1 R0 K7 ["_mouseLeaveConnection"]
       51 GETUPVAL                         R1 0
       52 GETTABLEKS                       R3 R0 K8 ["_bindName"]
       54 NAMECALL                         R1 R1 K9 ["UnbindFromRenderStep"]
       56 CALL                             R1 2 0
       57 GETTABLEKS                       R1 R0 K10 ["_draggerToolModel"]
       59 NAMECALL                         R1 R1 K11 ["_processDeselected"]
       61 CALL                             R1 1 0
       62 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MouseService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["UserInputService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["HttpService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["GuiService"]
       28 NAMECALL                         R4 R4 K3 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K9 [script]
       33 GETTABLEKS                       R5 R5 K10 ["Parent"]
       35 GETTABLEKS                       R5 R5 K10 ["Parent"]
       37 GETTABLEKS                       R6 R5 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K10 ["Parent"]
       41 GETIMPORT                        R7 K12 [require]
       43 GETTABLEKS                       R8 R6 K13 ["Packages"]
       45 GETTABLEKS                       R8 R8 K14 ["Roact"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K12 [require]
       50 GETTABLEKS                       R9 R5 K15 ["Implementation"]
       52 GETTABLEKS                       R9 R9 K16 ["DraggerToolModel"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K12 [require]
       57 GETTABLEKS                       R10 R5 K17 ["Utility"]
       59 GETTABLEKS                       R10 R10 K18 ["ViewChangeDetector"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K12 [require]
       64 GETTABLEKS                       R11 R5 K17 ["Utility"]
       66 GETTABLEKS                       R11 R11 K19 ["shouldDragAsFace"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K12 [require]
       71 GETTABLEKS                       R12 R5 K20 ["Flags"]
       73 GETTABLEKS                       R12 R12 K21 ["getFFlagDraggerImprovements"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K12 [require]
       78 GETTABLEKS                       R13 R5 K20 ["Flags"]
       80 GETTABLEKS                       R13 R13 K22 ["getFFlagDraggerInputBlocksViewUpdates"]
       82 CALL                             R12 1 1
       83 GETTABLEKS                       R13 R7 K23 ["PureComponent"]
       85 LOADK                            R15 K24 ["DraggerToolComponent"]
       86 NAMECALL                         R13 R13 K25 ["extend"]
       88 CALL                             R13 2 1
       89 DUPCLOSURE                       R14 K26 [PROTO_0]
       90 SETTABLEKS                       R14 R13 K27 ["init"]
       92 DUPCLOSURE                       R14 K28 [PROTO_1]
       93 SETTABLEKS                       R14 R13 K29 ["didMount"]
       95 DUPCLOSURE                       R14 K30 [PROTO_2]
       96 SETTABLEKS                       R14 R13 K31 ["willUnmount"]
       98 DUPCLOSURE                       R14 K32 [PROTO_3]
       99 SETTABLEKS                       R14 R13 K33 ["willUpdate"]
      101 DUPCLOSURE                       R14 K34 [PROTO_4]
      102 SETTABLEKS                       R14 R13 K35 ["render"]
      104 DUPCLOSURE                       R14 K36 [PROTO_18]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R12
      113 SETTABLEKS                       R14 R13 K37 ["setup"]
      115 DUPCLOSURE                       R14 K38 [PROTO_19]
      116 CAPTURE                          VAL R1
      117 SETTABLEKS                       R14 R13 K39 ["teardown"]
      119 RETURN                           R13 1
