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
        0 GETTABLEKS                       R2 R1 K0 ["DraggerContext"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["DraggerContext"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+17]
        8 GETTABLEKS                       R2 R1 K2 ["DraggerSchema"]
       10 GETTABLEKS                       R3 R0 K1 ["props"]
       12 GETTABLEKS                       R3 R3 K2 ["DraggerSchema"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+9]
       16 GETTABLEKS                       R2 R1 K3 ["DraggerSettings"]
       18 GETTABLEKS                       R3 R0 K1 ["props"]
       20 GETTABLEKS                       R3 R3 K3 ["DraggerSettings"]
       22 JUMPIFEQ                         R2 R3 ; [+8]
       24 NAMECALL                         R2 R0 K4 ["teardown"]
       26 CALL                             R2 1 0
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R0 K5 ["setup"]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_constraintToolModel"]
        2 NAMECALL                         R1 R1 K1 ["render"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_5:
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
       13 GETUPVAL                         R0 0
       14 NEWTABLE                         R2 0 0
       16 NAMECALL                         R0 R0 K2 ["setState"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_viewBoundsAreDirty"]
        4 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        4 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        6 JUMPIFNOTEQ                      R2 R3 ; [+10]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K4 ["_constraintToolModel"]
       11 GETTABLEKS                       R5 R0 K5 ["KeyCode"]
       13 NAMECALL                         R3 R3 K6 ["_processKeyDown"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0
       17 GETIMPORT                        R3 K8 [Enum.UserInputType.MouseButton1]
       19 JUMPIFEQ                         R2 R3 ; [+5]
       21 GETIMPORT                        R3 K10 [Enum.UserInputType.Touch]
       23 JUMPIFNOTEQ                      R2 R3 ; [+7]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["_constraintToolModel"]
       28 NAMECALL                         R3 R3 K11 ["_processMouseDown"]
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R2 R3 ; [+10]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K4 ["_constraintToolModel"]
        9 GETTABLEKS                       R5 R0 K5 ["KeyCode"]
       11 NAMECALL                         R3 R3 K6 ["_processKeyUp"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 GETIMPORT                        R3 K8 [Enum.UserInputType.MouseButton1]
       17 JUMPIFEQ                         R2 R3 ; [+5]
       19 GETIMPORT                        R3 K10 [Enum.UserInputType.Touch]
       21 JUMPIFNOTEQ                      R2 R3 ; [+7]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K4 ["_constraintToolModel"]
       26 NAMECALL                         R3 R3 K11 ["_processMouseUp"]
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_isMounted"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["_constraintToolModel"]
        8 NAMECALL                         R0 R0 K2 ["update"]
       10 CALL                             R0 1 0
       11 LOADB                            R0 0
       12 GETUPVAL                         R1 1
       13 NAMECALL                         R1 R1 K3 ["poll"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+1]
       17 LOADB                            R0 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K4 ["_viewBoundsAreDirty"]
       21 JUMPIFNOT                        R1 ; [+5]
       22 GETUPVAL                         R1 0
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R1 K4 ["_viewBoundsAreDirty"]
       26 LOADB                            R0 1
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K5 ["_prevConstraintDetails"]
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K6 ["ShowConstraintDetails"]
       33 JUMPIFNOTEQ                      R1 R2 ; [+9]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K7 ["_prevWeldDetails"]
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K8 ["ShowWeldDetails"]
       41 JUMPIFEQ                         R1 R2 ; [+2]
       43 LOADB                            R0 1
       44 JUMPIFNOT                        R0 ; [+6]
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R1 R1 K1 ["_constraintToolModel"]
       48 NAMECALL                         R1 R1 K9 ["_processViewChanged"]
       50 CALL                             R1 1 0
       51 GETUPVAL                         R1 0
       52 GETUPVAL                         R2 2
       53 GETTABLEKS                       R2 R2 K6 ["ShowConstraintDetails"]
       55 SETTABLEKS                       R2 R1 K5 ["_prevConstraintDetails"]
       57 GETUPVAL                         R1 0
       58 GETUPVAL                         R2 2
       59 GETTABLEKS                       R2 R2 K8 ["ShowWeldDetails"]
       61 SETTABLEKS                       R2 R1 K7 ["_prevWeldDetails"]
       63 RETURN                           R0 0

PROTO_10:
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
       18 GETTABLEKS                       R3 R1 K5 ["ClosePluginCallback"]
       20 FASTCALL1                        ASSERT R3 ; [+2]
       21 GETIMPORT                        R2 K2 [assert]
       23 CALL                             R2 1 0
       24 GETTABLEKS                       R3 R1 K6 ["constraintType"]
       26 FASTCALL1                        ASSERT R3 ; [+2]
       27 GETIMPORT                        R2 K2 [assert]
       29 CALL                             R2 1 0
       30 LOADB                            R2 0
       31 SETTABLEKS                       R2 R0 K7 ["_selectionBoundsAreDirty"]
       33 LOADB                            R2 0
       34 SETTABLEKS                       R2 R0 K8 ["_viewBoundsAreDirty"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K9 ["ShowConstraintDetails"]
       39 SETTABLEKS                       R2 R0 K10 ["_prevConstraintDetails"]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K11 ["ShowWeldDetails"]
       44 SETTABLEKS                       R2 R0 K12 ["_prevWeldDetails"]
       46 LOADK                            R2 K13 ["ConstraintToolViewUpdate"]
       47 SETTABLEKS                       R2 R0 K14 ["_bindName"]
       49 GETUPVAL                         R2 1
       50 LOADB                            R4 0
       51 NAMECALL                         R2 R2 K15 ["GenerateGUID"]
       53 CALL                             R2 2 1
       54 GETTABLEKS                       R4 R0 K14 ["_bindName"]
       56 MOVE                             R5 R2
       57 CONCAT                           R3 R4 R5
       58 SETTABLEKS                       R3 R0 K14 ["_bindName"]
       60 NEWCLOSURE                       R3 P0
       61 CAPTURE                          VAL R0
       62 GETUPVAL                         R4 2
       63 GETTABLEKS                       R4 R4 K16 ["new"]
       65 GETTABLEKS                       R5 R1 K0 ["DraggerContext"]
       67 GETTABLEKS                       R6 R1 K3 ["DraggerSchema"]
       69 GETTABLEKS                       R7 R1 K4 ["DraggerSettings"]
       71 GETTABLEKS                       R8 R1 K5 ["ClosePluginCallback"]
       73 GETTABLEKS                       R9 R1 K17 ["undoAttachmentStack"]
       75 GETTABLEKS                       R10 R1 K18 ["redoAttachmentStack"]
       77 GETTABLEKS                       R11 R1 K19 ["recordingName"]
       79 GETTABLEKS                       R12 R1 K20 ["plugin"]
       81 GETTABLEKS                       R13 R1 K21 ["SetConstraintToolModelReference"]
       83 MOVE                             R14 R3
       84 NEWCLOSURE                       R15 P1
       85 CAPTURE                          VAL R0
       86 CALL                             R4 11 1
       87 SETTABLEKS                       R4 R0 K22 ["_constraintToolModel"]
       89 GETTABLEKS                       R4 R0 K22 ["_constraintToolModel"]
       91 NAMECALL                         R4 R4 K23 ["_processSelected"]
       93 CALL                             R4 1 0
       94 GETTABLEKS                       R4 R0 K22 ["_constraintToolModel"]
       96 GETTABLEKS                       R6 R1 K6 ["constraintType"]
       98 NAMECALL                         R4 R4 K24 ["_setConstraintType"]
      100 CALL                             R4 2 0
      101 GETTABLEKS                       R4 R0 K22 ["_constraintToolModel"]
      103 NAMECALL                         R4 R4 K25 ["_initSelectionHighlight"]
      105 CALL                             R4 1 0
      106 GETTABLEKS                       R4 R0 K22 ["_constraintToolModel"]
      108 NAMECALL                         R4 R4 K26 ["_initAttachmentAdornment"]
      110 CALL                             R4 1 0
      111 GETUPVAL                         R4 3
      112 NEWTABLE                         R6 0 0
      114 NAMECALL                         R4 R4 K27 ["Set"]
      116 CALL                             R4 2 0
      117 GETTABLEKS                       R4 R1 K28 ["Mouse"]
      119 GETUPVAL                         R5 4
      120 GETTABLEKS                       R5 R5 K29 ["InputBegan"]
      122 NEWCLOSURE                       R7 P2
      123 CAPTURE                          VAL R0
      124 NAMECALL                         R5 R5 K30 ["Connect"]
      126 CALL                             R5 2 1
      127 SETTABLEKS                       R5 R0 K31 ["_inputBeganConnection"]
      129 GETUPVAL                         R5 4
      130 GETTABLEKS                       R5 R5 K32 ["InputEnded"]
      132 NEWCLOSURE                       R7 P3
      133 CAPTURE                          VAL R0
      134 NAMECALL                         R5 R5 K30 ["Connect"]
      136 CALL                             R5 2 1
      137 SETTABLEKS                       R5 R0 K33 ["_inputEndedConnection"]
      139 GETUPVAL                         R5 5
      140 GETTABLEKS                       R5 R5 K16 ["new"]
      142 MOVE                             R6 R4
      143 CALL                             R5 1 1
      144 GETUPVAL                         R6 6
      145 GETTABLEKS                       R8 R0 K14 ["_bindName"]
      147 GETIMPORT                        R9 K37 [Enum.RenderPriority.First]
      149 GETTABLEKS                       R9 R9 K38 ["Value"]
      151 NEWCLOSURE                       R10 P4
      152 CAPTURE                          VAL R0
      153 CAPTURE                          VAL R5
      154 CAPTURE                          UPVAL U0
      155 NAMECALL                         R6 R6 K39 ["BindToRenderStep"]
      157 CALL                             R6 4 0
      158 LOADB                            R6 1
      159 SETTABLEKS                       R6 R0 K40 ["_isMounted"]
      161 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["_inputBeganConnection"]
        5 NAMECALL                         R1 R1 K2 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K1 ["_inputBeganConnection"]
       11 GETTABLEKS                       R1 R0 K3 ["_inputEndedConnection"]
       13 NAMECALL                         R1 R1 K2 ["Disconnect"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K3 ["_inputEndedConnection"]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R3 R0 K4 ["_bindName"]
       22 NAMECALL                         R1 R1 K5 ["UnbindFromRenderStep"]
       24 CALL                             R1 2 0
       25 GETTABLEKS                       R1 R0 K6 ["_constraintToolModel"]
       27 NAMECALL                         R1 R1 K7 ["_processDeselected"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConstraintTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["UserInputService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["HttpService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["Selection"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K5 [game]
       33 LOADK                            R7 K11 ["StudioService"]
       34 NAMECALL                         R5 R5 K7 ["GetService"]
       36 CALL                             R5 2 1
       37 GETTABLEKS                       R6 R0 K12 ["Packages"]
       39 GETTABLEKS                       R6 R6 K13 ["DraggerFramework"]
       41 GETIMPORT                        R7 K15 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Packages"]
       45 GETTABLEKS                       R8 R8 K16 ["Roact"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K15 [require]
       50 GETTABLEKS                       R9 R0 K17 ["Src"]
       52 GETTABLEKS                       R9 R9 K18 ["ConstraintToolModel"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K15 [require]
       57 GETTABLEKS                       R10 R6 K19 ["Utility"]
       59 GETTABLEKS                       R10 R10 K20 ["ViewChangeDetector"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R7 K21 ["PureComponent"]
       64 LOADK                            R12 K22 ["ConstraintToolComponent"]
       65 NAMECALL                         R10 R10 K23 ["extend"]
       67 CALL                             R10 2 1
       68 DUPCLOSURE                       R11 K24 [PROTO_0]
       69 SETTABLEKS                       R11 R10 K25 ["init"]
       71 DUPCLOSURE                       R11 K26 [PROTO_1]
       72 SETTABLEKS                       R11 R10 K27 ["didMount"]
       74 DUPCLOSURE                       R11 K28 [PROTO_2]
       75 SETTABLEKS                       R11 R10 K29 ["willUnmount"]
       77 DUPCLOSURE                       R11 K30 [PROTO_3]
       78 SETTABLEKS                       R11 R10 K31 ["willUpdate"]
       80 DUPCLOSURE                       R11 K32 [PROTO_4]
       81 SETTABLEKS                       R11 R10 K33 ["render"]
       83 DUPCLOSURE                       R11 K34 [PROTO_10]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R11 R10 K35 ["setup"]
       93 DUPCLOSURE                       R11 K36 [PROTO_11]
       94 CAPTURE                          VAL R1
       95 SETTABLEKS                       R11 R10 K37 ["teardown"]
       97 RETURN                           R10 1
