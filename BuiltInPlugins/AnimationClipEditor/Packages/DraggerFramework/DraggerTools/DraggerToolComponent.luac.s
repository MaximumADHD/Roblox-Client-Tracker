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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_gameEatingEvents"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 LOADB                            R2 0
        6 SETTABLEKS                       R2 R1 K0 ["_gameEatingEvents"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["_draggerToolModel"]
       11 NAMECALL                         R1 R1 K2 ["_processMouseEnter"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K3 ["_mouseCaptured"]
       18 LENGTH                           R1 R0
       19 LOADN                            R2 0
       20 JUMPIFNOTLT                      R2 R1 ; [+23]
       22 LENGTH                           R1 R0
       23 JUMPIFNOTEQKN                    R1 K4 [1] ; [+13]
       25 GETUPVAL                         R1 1
       26 GETTABLEN                        R2 R0 1
       27 CALL                             R1 1 1
       28 JUMPIFNOT                        R1 ; [+8]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K1 ["_draggerToolModel"]
       32 MOVE                             R3 R0
       33 NAMECALL                         R1 R1 K5 ["_processToolboxInitiatedFaceDrag"]
       35 CALL                             R1 2 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R1 0
       38 GETTABLEKS                       R1 R1 K1 ["_draggerToolModel"]
       40 MOVE                             R3 R0
       41 NAMECALL                         R1 R1 K6 ["_processToolboxInitiatedFreeformSelectionDrag"]
       43 CALL                             R1 2 0
       44 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_draggerToolModel"]
        3 NAMECALL                         R0 R0 K1 ["_processMouseEnter"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_draggerToolModel"]
        3 NAMECALL                         R0 R0 K1 ["_processMouseLeave"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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
       68 GETTABLEKS                       R4 R1 K15 ["Mouse"]
       70 GETUPVAL                         R5 2
       71 GETTABLEKS                       R5 R5 K16 ["InputBegan"]
       73 NEWCLOSURE                       R7 P3
       74 CAPTURE                          VAL R0
       75 NAMECALL                         R5 R5 K17 ["Connect"]
       77 CALL                             R5 2 1
       78 SETTABLEKS                       R5 R0 K18 ["_inputBeganConnection"]
       80 GETUPVAL                         R5 2
       81 GETTABLEKS                       R5 R5 K19 ["InputEnded"]
       83 NEWCLOSURE                       R7 P4
       84 CAPTURE                          VAL R0
       85 NAMECALL                         R5 R5 K17 ["Connect"]
       87 CALL                             R5 2 1
       88 SETTABLEKS                       R5 R0 K20 ["_inputEndedConnection"]
       90 GETUPVAL                         R5 2
       91 GETTABLEKS                       R5 R5 K21 ["InputChanged"]
       93 NEWCLOSURE                       R7 P5
       94 CAPTURE                          VAL R0
       95 NAMECALL                         R5 R5 K17 ["Connect"]
       97 CALL                             R5 2 1
       98 SETTABLEKS                       R5 R0 K22 ["_inputChangedConnection"]
      100 GETTABLEKS                       R5 R4 K23 ["DragEnter"]
      102 NEWCLOSURE                       R7 P6
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U3
      105 NAMECALL                         R5 R5 K17 ["Connect"]
      107 CALL                             R5 2 1
      108 SETTABLEKS                       R5 R0 K24 ["_dragEnterConnection"]
      110 GETUPVAL                         R5 4
      111 GETTABLEKS                       R5 R5 K25 ["MouseEnterStudioViewport"]
      113 NEWCLOSURE                       R7 P7
      114 CAPTURE                          VAL R0
      115 NAMECALL                         R5 R5 K17 ["Connect"]
      117 CALL                             R5 2 1
      118 SETTABLEKS                       R5 R0 K26 ["_mouseEnterConnection"]
      120 GETUPVAL                         R5 4
      121 GETTABLEKS                       R5 R5 K27 ["MouseLeaveStudioViewport"]
      123 NEWCLOSURE                       R7 P8
      124 CAPTURE                          VAL R0
      125 NAMECALL                         R5 R5 K17 ["Connect"]
      127 CALL                             R5 2 1
      128 SETTABLEKS                       R5 R0 K28 ["_mouseLeaveConnection"]
      130 GETUPVAL                         R5 5
      131 GETTABLEKS                       R5 R5 K12 ["new"]
      133 MOVE                             R6 R4
      134 CALL                             R5 1 1
      135 GETTABLEKS                       R6 R1 K0 ["DraggerContext"]
      137 NAMECALL                         R6 R6 K29 ["shouldUseLocalSpace"]
      139 CALL                             R6 1 1
      140 GETUPVAL                         R7 6
      141 GETTABLEKS                       R9 R0 K8 ["_bindName"]
      143 GETIMPORT                        R10 K33 [Enum.RenderPriority.First]
      145 GETTABLEKS                       R10 R10 K34 ["Value"]
      147 NEWCLOSURE                       R11 P9
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R5
      150 CAPTURE                          UPVAL U7
      151 CAPTURE                          VAL R1
      152 CAPTURE                          REF R6
      153 NAMECALL                         R7 R7 K35 ["BindToRenderStep"]
      155 CALL                             R7 4 0
      156 LOADB                            R7 1
      157 SETTABLEKS                       R7 R0 K36 ["_isMounted"]
      159 CLOSEUPVALS                      R6
      160 RETURN                           R0 0

PROTO_18:
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
       25 GETIMPORT                        R4 K8 [script]
       27 GETTABLEKS                       R4 R4 K9 ["Parent"]
       29 GETTABLEKS                       R4 R4 K9 ["Parent"]
       31 GETTABLEKS                       R5 R4 K9 ["Parent"]
       33 GETTABLEKS                       R5 R5 K9 ["Parent"]
       35 GETIMPORT                        R6 K11 [require]
       37 GETTABLEKS                       R7 R5 K12 ["Packages"]
       39 GETTABLEKS                       R7 R7 K13 ["Roact"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K11 [require]
       44 GETTABLEKS                       R8 R4 K14 ["Implementation"]
       46 GETTABLEKS                       R8 R8 K15 ["DraggerToolModel"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K11 [require]
       51 GETTABLEKS                       R9 R4 K16 ["Utility"]
       53 GETTABLEKS                       R9 R9 K17 ["ViewChangeDetector"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K11 [require]
       58 GETTABLEKS                       R10 R4 K16 ["Utility"]
       60 GETTABLEKS                       R10 R10 K18 ["shouldDragAsFace"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K11 [require]
       65 GETTABLEKS                       R11 R4 K19 ["Flags"]
       67 GETTABLEKS                       R11 R11 K20 ["getFFlagDraggerInputBlocksViewUpdates"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R6 K21 ["PureComponent"]
       72 LOADK                            R13 K22 ["DraggerToolComponent"]
       73 NAMECALL                         R11 R11 K23 ["extend"]
       75 CALL                             R11 2 1
       76 DUPCLOSURE                       R12 K24 [PROTO_0]
       77 SETTABLEKS                       R12 R11 K25 ["init"]
       79 DUPCLOSURE                       R12 K26 [PROTO_1]
       80 SETTABLEKS                       R12 R11 K27 ["didMount"]
       82 DUPCLOSURE                       R12 K28 [PROTO_2]
       83 SETTABLEKS                       R12 R11 K29 ["willUnmount"]
       85 DUPCLOSURE                       R12 K30 [PROTO_3]
       86 SETTABLEKS                       R12 R11 K31 ["willUpdate"]
       88 DUPCLOSURE                       R12 K32 [PROTO_4]
       89 SETTABLEKS                       R12 R11 K33 ["render"]
       91 DUPCLOSURE                       R12 K34 [PROTO_17]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R12 R11 K35 ["setup"]
      102 DUPCLOSURE                       R12 K36 [PROTO_18]
      103 CAPTURE                          VAL R1
      104 SETTABLEKS                       R12 R11 K37 ["teardown"]
      106 RETURN                           R11 1
