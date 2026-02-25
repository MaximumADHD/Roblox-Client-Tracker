PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["SetToolMode"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K2 ["Signals"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K3 ["SIGNAL_KEYS"]
       15 GETTABLEKS                       R3 R4 K4 ["SelectionChanged"]
       17 NAMECALL                         R1 R1 K5 ["get"]
       19 CALL                             R1 2 1
       20 NAMECALL                         R1 R1 K6 ["Fire"]
       22 CALL                             R1 1 0
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K0 ["props"]
       26 GETTABLEKS                       R1 R2 K2 ["Signals"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K3 ["SIGNAL_KEYS"]
       31 GETTABLEKS                       R3 R4 K7 ["ToolChanged"]
       33 NAMECALL                         R1 R1 K5 ["get"]
       35 CALL                             R1 2 1
       36 NAMECALL                         R1 R1 K6 ["Fire"]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["editorFrameRef"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R1 R0 K2 ["onToolChange"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ToolMode"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["EditingCage"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K5 ["EDIT_MODE"]
       13 GETTABLEKS                       R7 R8 K6 ["Mesh"]
       15 JUMPIFEQ                         R4 R7 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 LOADB                            R7 0
       20 JUMPIFEQKNIL                     R4 ; [+2]
       22 NOT                              R7 R6
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R8 R9 K7 ["RunRhodiumTests"]
       26 CALL                             R8 0 1
       27 JUMPIF                           R8 ; [+4]
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R8 R9 K8 ["RunTests"]
       31 CALL                             R8 0 1
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R9 R10 K9 ["createFragment"]
       35 DUPTABLE                         R10 K13 [{"WorkspaceEditorControls", "MeshPartTool", "LuaMeshEditingModuleWrapper"}]
       36 GETUPVAL                         R12 2
       37 GETTABLEKS                       R11 R12 K14 ["createElement"]
       39 GETUPVAL                         R12 3
       40 CALL                             R11 1 1
       41 SETTABLEKS                       R11 R10 K10 ["WorkspaceEditorControls"]
       43 MOVE                             R11 R6
       44 JUMPIFNOT                        R11 ; [+5]
       45 GETUPVAL                         R12 2
       46 GETTABLEKS                       R11 R12 K14 ["createElement"]
       48 GETUPVAL                         R12 4
       49 CALL                             R11 1 1
       50 SETTABLEKS                       R11 R10 K11 ["MeshPartTool"]
       52 JUMPIF                           R8 ; [+7]
       53 JUMPIFNOT                        R7 ; [+6]
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R11 R12 K14 ["createElement"]
       57 GETUPVAL                         R12 5
       58 CALL                             R11 1 1
       59 JUMPIF                           R11 ; [+1]
       60 LOADNIL                          R11
       61 SETTABLEKS                       R11 R10 K12 ["LuaMeshEditingModuleWrapper"]
       63 CALL                             R9 1 -1
       64 RETURN                           R9 -1

PROTO_3:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["LuaMeshEditingModuleContext"]
        5 GETTABLEKS                       R4 R1 K2 ["ToolMode"]
        7 GETTABLEKS                       R6 R0 K0 ["props"]
        9 GETTABLEKS                       R5 R6 K2 ["ToolMode"]
       11 JUMPIFEQ                         R4 R5 ; [+40]
       13 GETTABLEKS                       R4 R1 K2 ["ToolMode"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K3 ["TOOL_MODE"]
       18 GETTABLEKS                       R5 R6 K4 ["Point"]
       20 JUMPIFEQ                         R4 R5 ; [+10]
       22 GETTABLEKS                       R4 R1 K2 ["ToolMode"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K3 ["TOOL_MODE"]
       27 GETTABLEKS                       R5 R6 K5 ["Lattice"]
       29 JUMPIFNOTEQ                      R4 R5 ; [+8]
       31 GETTABLEKS                       R6 R1 K2 ["ToolMode"]
       33 NAMECALL                         R4 R3 K6 ["setCurrentTool"]
       35 CALL                             R4 2 0
       36 LOADB                            R2 1
       37 JUMP                             ; [+14]
       38 GETTABLEKS                       R4 R1 K2 ["ToolMode"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K3 ["TOOL_MODE"]
       43 GETTABLEKS                       R5 R6 K7 ["Reset"]
       45 JUMPIFEQ                         R4 R5 ; [+6]
       47 LOADNIL                          R6
       48 NAMECALL                         R4 R3 K6 ["setCurrentTool"]
       50 CALL                             R4 2 0
       51 LOADB                            R2 1
       52 GETTABLEKS                       R6 R1 K8 ["EditingCage"]
       54 NAMECALL                         R4 R3 K9 ["changeEditingCage"]
       56 CALL                             R4 2 0
       57 JUMPIFNOT                        R2 ; [+14]
       58 GETTABLEKS                       R4 R1 K2 ["ToolMode"]
       60 GETTABLEKS                       R6 R0 K0 ["props"]
       62 GETTABLEKS                       R5 R6 K2 ["ToolMode"]
       64 JUMPIFEQ                         R4 R5 ; [+7]
       66 NAMECALL                         R4 R3 K10 ["getToolChangedSignal"]
       68 CALL                             R4 1 1
       69 NAMECALL                         R4 R4 K11 ["Fire"]
       71 CALL                             R4 1 0
       72 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["LuaMeshEditingModuleContext"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 LOADNIL                          R4
        6 NAMECALL                         R2 R1 K2 ["setCurrentTool"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 GETTABLEKS                       R3 R0 K1 ["cageData"]
        4 GETTABLEKS                       R4 R0 K2 ["selectItem"]
        6 DUPTABLE                         R5 K5 [{"ToolMode", "EditingCage"}]
        7 GETTABLEKS                       R6 R2 K6 ["toolMode"]
        9 SETTABLEKS                       R6 R5 K3 ["ToolMode"]
       11 GETTABLEKS                       R6 R4 K7 ["editingCage"]
       13 SETTABLEKS                       R6 R5 K4 ["EditingCage"]
       15 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"SetToolMode"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetToolMode"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["AvatarToolsShared"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K11 ["withContext"]
       41 GETTABLEKS                       R8 R3 K12 ["Contexts"]
       43 GETTABLEKS                       R7 R8 K13 ["Signals"]
       45 GETTABLEKS                       R9 R3 K12 ["Contexts"]
       47 GETTABLEKS                       R8 R9 K14 ["LuaMeshEditingModuleContext"]
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R12 R0 K15 ["Src"]
       53 GETTABLEKS                       R11 R12 K16 ["Components"]
       55 GETTABLEKS                       R10 R11 K17 ["MeshPartTool"]
       57 CALL                             R9 1 1
       58 GETIMPORT                        R10 K4 [require]
       60 GETTABLEKS                       R14 R0 K15 ["Src"]
       62 GETTABLEKS                       R13 R14 K16 ["Components"]
       64 GETTABLEKS                       R12 R13 K18 ["Draggers"]
       66 GETTABLEKS                       R11 R12 K19 ["LuaMeshEditingModuleWrapper"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETTABLEKS                       R14 R0 K15 ["Src"]
       73 GETTABLEKS                       R13 R14 K20 ["Actions"]
       75 GETTABLEKS                       R12 R13 K21 ["SetToolMode"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R15 R0 K15 ["Src"]
       82 GETTABLEKS                       R14 R15 K22 ["Util"]
       84 GETTABLEKS                       R13 R14 K23 ["Constants"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K4 [require]
       89 GETTABLEKS                       R16 R0 K15 ["Src"]
       91 GETTABLEKS                       R15 R16 K22 ["Util"]
       93 GETTABLEKS                       R14 R15 K24 ["DebugFlags"]
       95 CALL                             R13 1 1
       96 GETTABLEKS                       R14 R1 K25 ["PureComponent"]
       98 LOADK                            R16 K26 ["EditorToolsManager"]
       99 NAMECALL                         R14 R14 K27 ["extend"]
      101 CALL                             R14 2 1
      102 GETIMPORT                        R15 K4 [require]
      104 GETTABLEKS                       R19 R0 K15 ["Src"]
      106 GETTABLEKS                       R18 R19 K16 ["Components"]
      108 GETTABLEKS                       R17 R18 K28 ["Editor"]
      110 GETTABLEKS                       R16 R17 K29 ["WorkspaceEditorControls"]
      112 CALL                             R15 1 1
      113 GETTABLEKS                       R16 R4 K22 ["Util"]
      115 DUPCLOSURE                       R17 K30 [PROTO_1]
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R12
      118 SETTABLEKS                       R17 R14 K31 ["init"]
      120 DUPCLOSURE                       R17 K32 [PROTO_2]
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R10
      127 SETTABLEKS                       R17 R14 K33 ["render"]
      129 DUPCLOSURE                       R17 K34 [PROTO_3]
      130 CAPTURE                          VAL R12
      131 SETTABLEKS                       R17 R14 K35 ["willUpdate"]
      133 DUPCLOSURE                       R17 K36 [PROTO_4]
      134 SETTABLEKS                       R17 R14 K37 ["willUnmount"]
      136 MOVE                             R17 R6
      137 DUPTABLE                         R18 K38 [{"LuaMeshEditingModuleContext", "Signals"}]
      138 SETTABLEKS                       R8 R18 K14 ["LuaMeshEditingModuleContext"]
      140 SETTABLEKS                       R7 R18 K13 ["Signals"]
      142 CALL                             R17 1 1
      143 MOVE                             R18 R14
      144 CALL                             R17 1 1
      145 MOVE                             R14 R17
      146 DUPCLOSURE                       R17 K39 [PROTO_5]
      147 DUPCLOSURE                       R18 K40 [PROTO_7]
      148 CAPTURE                          VAL R11
      149 GETTABLEKS                       R19 R2 K41 ["connect"]
      151 MOVE                             R20 R17
      152 MOVE                             R21 R18
      153 CALL                             R19 2 1
      154 MOVE                             R20 R14
      155 CALL                             R19 1 -1
      156 RETURN                           R19 -1
