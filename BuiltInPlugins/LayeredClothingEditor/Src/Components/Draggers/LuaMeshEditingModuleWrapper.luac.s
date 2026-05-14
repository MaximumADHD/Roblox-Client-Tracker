PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"temp"}]
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R3 R2 K0 ["temp"]
        6 NAMECALL                         R0 R0 K2 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["Activate"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["LuaMeshEditingModuleContext"]
        5 NAMECALL                         R1 R1 K2 ["getCurrentTool"]
        7 CALL                             R1 1 1
        8 GETIMPORT                        R2 K6 [Enum.RibbonTool.Select]
       10 JUMPIFEQ                         R0 R2 ; [+13]
       12 GETIMPORT                        R2 K8 [Enum.RibbonTool.Rotate]
       14 JUMPIFEQ                         R0 R2 ; [+9]
       16 GETIMPORT                        R2 K10 [Enum.RibbonTool.Move]
       18 JUMPIFEQ                         R0 R2 ; [+5]
       20 GETIMPORT                        R2 K12 [Enum.RibbonTool.Scale]
       22 JUMPIFNOTEQ                      R0 R2 ; [+37]
       24 GETUPVAL                         R2 1
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+20]
       27 JUMPIF                           R1 ; [+2]
       28 LOADB                            R2 0
       29 RETURN                           R2 1
       30 NAMECALL                         R2 R1 K13 ["getCurrentHandle"]
       32 CALL                             R2 1 1
       33 JUMPIFNOTEQ                      R2 R0 ; [+3]
       35 LOADB                            R2 0
       36 RETURN                           R2 1
       37 GETUPVAL                         R2 2
       38 LOADB                            R4 1
       39 NAMECALL                         R2 R2 K14 ["Activate"]
       41 CALL                             R2 2 0
       42 MOVE                             R4 R0
       43 NAMECALL                         R2 R1 K15 ["setCurrentHandle"]
       45 CALL                             R2 2 0
       46 JUMP                             ; [+11]
       47 GETIMPORT                        R2 K18 [task.delay]
       49 LOADN                            R3 0
       50 NEWCLOSURE                       R4 P0
       51 CAPTURE                          UPVAL U2
       52 CALL                             R2 2 0
       53 JUMPIFNOT                        R1 ; [+4]
       54 MOVE                             R4 R0
       55 NAMECALL                         R2 R1 K15 ["setCurrentHandle"]
       57 CALL                             R2 2 0
       58 LOADB                            R2 1
       59 RETURN                           R2 1
       60 LOADB                            R2 0
       61 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["LuaMeshEditingModuleContext"]
        5 NAMECALL                         R0 R0 K2 ["disableEditing"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["props"]
       11 GETTABLEKS                       R0 R0 K3 ["SetControlsPanelBlockerMessage"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["props"]
       16 GETTABLEKS                       R1 R1 K4 ["Localization"]
       18 LOADK                            R3 K5 ["Editor"]
       19 LOADK                            R4 K6 ["ResumeEditing"]
       20 NAMECALL                         R1 R1 K7 ["getText"]
       22 CALL                             R1 3 -1
       23 CALL                             R0 -1 0
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K0 ["props"]
       27 GETTABLEKS                       R0 R0 K8 ["SetControlsPanelBlockerActivity"]
       29 LOADB                            R1 1
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Heartbeat"]
        3 NAMECALL                         R0 R0 K1 ["Wait"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["Heartbeat"]
        9 NAMECALL                         R0 R0 K1 ["Wait"]
       11 CALL                             R0 1 0
       12 GETIMPORT                        R1 K3 [next]
       14 GETUPVAL                         R2 1
       15 NAMECALL                         R2 R2 K4 ["Get"]
       17 CALL                             R2 1 -1
       18 CALL                             R1 -1 1
       19 JUMPIFNOTEQKNIL                  R1 ; [+2]
       21 LOADB                            R0 0 +1
       22 LOADB                            R0 1
       23 JUMPIFNOT                        R0 ; [+5]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K5 ["disableEditing"]
       27 CALL                             R1 0 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 3
       30 NAMECALL                         R1 R1 K6 ["GetSelectedRibbonTool"]
       32 CALL                             R1 1 1
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K7 ["onToolSelected"]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 1
       38 JUMPIFNOT                        R2 ; [+1]
       39 RETURN                           R0 0
       40 GETUPVAL                         R2 2
       41 GETTABLEKS                       R2 R2 K5 ["disableEditing"]
       43 CALL                             R2 0 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+62]
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["GetSelectedRibbonTool"]
        6 CALL                             R0 1 1
        7 GETIMPORT                        R1 K4 [Enum.RibbonTool.None]
        9 JUMPIFEQ                         R0 R1 ; [+54]
       11 GETIMPORT                        R1 K6 [next]
       13 GETIMPORT                        R2 K8 [game]
       15 LOADK                            R4 K9 ["Selection"]
       16 NAMECALL                         R2 R2 K10 ["GetService"]
       18 CALL                             R2 2 1
       19 NAMECALL                         R2 R2 K11 ["Get"]
       21 CALL                             R2 1 -1
       22 CALL                             R1 -1 1
       23 JUMPIFNOTEQKNIL                  R1 ; [+9]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K12 ["onToolSelected"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 1
       30 JUMPIFNOT                        R1 ; [+33]
       31 RETURN                           R0 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R1 2
       34 GETTABLEKS                       R1 R1 K13 ["props"]
       36 GETTABLEKS                       R1 R1 K14 ["LuaMeshEditingModuleContext"]
       38 NAMECALL                         R1 R1 K15 ["disableEditing"]
       40 CALL                             R1 1 0
       41 GETUPVAL                         R1 2
       42 GETTABLEKS                       R1 R1 K13 ["props"]
       44 GETTABLEKS                       R1 R1 K16 ["SetControlsPanelBlockerMessage"]
       46 GETUPVAL                         R2 2
       47 GETTABLEKS                       R2 R2 K13 ["props"]
       49 GETTABLEKS                       R2 R2 K17 ["Localization"]
       51 LOADK                            R4 K18 ["Editor"]
       52 LOADK                            R5 K19 ["ResumeEditing"]
       53 NAMECALL                         R2 R2 K20 ["getText"]
       55 CALL                             R2 3 -1
       56 CALL                             R1 -1 0
       57 GETUPVAL                         R1 2
       58 GETTABLEKS                       R1 R1 K13 ["props"]
       60 GETTABLEKS                       R1 R1 K21 ["SetControlsPanelBlockerActivity"]
       62 LOADB                            R2 1
       63 CALL                             R1 1 0
       64 RETURN                           R0 0
       65 GETIMPORT                        R0 K24 [task.spawn]
       67 NEWCLOSURE                       R1 P0
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          UPVAL U1
       72 CALL                             R0 1 0
       73 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["LuaMeshEditingModuleContext"]
        5 NAMECALL                         R0 R0 K2 ["getCurrentTool"]
        7 CALL                             R0 1 1
        8 JUMPIFNOT                        R0 ; [+3]
        9 NAMECALL                         R1 R0 K3 ["undo"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["LuaMeshEditingModuleContext"]
        5 NAMECALL                         R0 R0 K2 ["getCurrentTool"]
        7 CALL                             R0 1 1
        8 JUMPIFNOT                        R0 ; [+3]
        9 NAMECALL                         R1 R0 K3 ["redo"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 LOADB                            R5 1
        8 NAMECALL                         R3 R2 K3 ["Activate"]
       10 CALL                             R3 2 0
       11 GETTABLEKS                       R3 R0 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K4 ["LuaMeshEditingModuleContext"]
       15 NAMECALL                         R3 R3 K5 ["getToolChangedSignal"]
       17 CALL                             R3 1 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R3 R3 K6 ["Connect"]
       22 CALL                             R3 2 1
       23 SETTABLEKS                       R3 R0 K7 ["toolChangedHandle"]
       25 NEWCLOSURE                       R3 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R3 R0 K8 ["onToolSelected"]
       31 NEWCLOSURE                       R3 P2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R3 R0 K9 ["disableEditing"]
       35 GETTABLEKS                       R3 R2 K10 ["Deactivation"]
       37 NEWCLOSURE                       R5 P3
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          UPVAL U2
       43 NAMECALL                         R3 R3 K6 ["Connect"]
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R0 K11 ["deactivationListener"]
       48 GETTABLEKS                       R3 R1 K12 ["PluginActions"]
       50 LOADK                            R5 K13 ["Undo"]
       51 NAMECALL                         R3 R3 K2 ["get"]
       53 CALL                             R3 2 1
       54 JUMPIFNOT                        R3 ; [+12]
       55 LOADB                            R4 1
       56 SETTABLEKS                       R4 R3 K14 ["Enabled"]
       58 GETTABLEKS                       R4 R3 K15 ["Triggered"]
       60 NEWCLOSURE                       R6 P4
       61 CAPTURE                          VAL R0
       62 NAMECALL                         R4 R4 K6 ["Connect"]
       64 CALL                             R4 2 1
       65 SETTABLEKS                       R4 R0 K16 ["undoHandle"]
       67 GETTABLEKS                       R4 R1 K12 ["PluginActions"]
       69 LOADK                            R6 K17 ["Redo"]
       70 NAMECALL                         R4 R4 K2 ["get"]
       72 CALL                             R4 2 1
       73 JUMPIFNOT                        R4 ; [+12]
       74 LOADB                            R5 1
       75 SETTABLEKS                       R5 R4 K14 ["Enabled"]
       77 GETTABLEKS                       R5 R4 K15 ["Triggered"]
       79 NEWCLOSURE                       R7 P5
       80 CAPTURE                          VAL R0
       81 NAMECALL                         R5 R5 K6 ["Connect"]
       83 CALL                             R5 2 1
       84 SETTABLEKS                       R5 R0 K18 ["redoHandle"]
       86 GETUPVAL                         R5 3
       87 LOADB                            R7 0
       88 NAMECALL                         R5 R5 K19 ["SetEnabled"]
       90 CALL                             R5 2 0
       91 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Mouse"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R1 K3 ["Plugin"]
        9 NAMECALL                         R3 R3 K2 ["get"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R1 K4 ["LuaMeshEditingModuleContext"]
       14 NAMECALL                         R4 R4 K5 ["getCurrentTool"]
       16 CALL                             R4 1 1
       17 JUMPIFEQKNIL                     R4 ; [+14]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K6 ["createElement"]
       22 GETUPVAL                         R6 1
       23 DUPTABLE                         R7 K8 [{"Mouse", "Plugin", "VertexToolBase"}]
       24 SETTABLEKS                       R2 R7 K1 ["Mouse"]
       26 SETTABLEKS                       R3 R7 K3 ["Plugin"]
       28 SETTABLEKS                       R4 R7 K7 ["VertexToolBase"]
       30 CALL                             R5 2 -1
       31 RETURN                           R5 -1
       32 LOADNIL                          R5
       33 RETURN                           R5 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["PluginActions"]
        4 LOADK                            R4 K2 ["Undo"]
        5 NAMECALL                         R2 R2 K3 ["get"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R1 K1 ["PluginActions"]
       10 LOADK                            R5 K4 ["Redo"]
       11 NAMECALL                         R3 R3 K3 ["get"]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R2 ; [+3]
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R2 K5 ["Enabled"]
       18 JUMPIFNOT                        R3 ; [+3]
       19 LOADB                            R4 0
       20 SETTABLEKS                       R4 R3 K5 ["Enabled"]
       22 GETTABLEKS                       R4 R0 K6 ["deactivationListener"]
       24 JUMPIFNOT                        R4 ; [+5]
       25 GETTABLEKS                       R4 R0 K6 ["deactivationListener"]
       27 NAMECALL                         R4 R4 K7 ["Disconnect"]
       29 CALL                             R4 1 0
       30 GETTABLEKS                       R4 R0 K8 ["undoHandle"]
       32 JUMPIFNOT                        R4 ; [+5]
       33 GETTABLEKS                       R4 R0 K8 ["undoHandle"]
       35 NAMECALL                         R4 R4 K7 ["Disconnect"]
       37 CALL                             R4 1 0
       38 GETTABLEKS                       R4 R0 K9 ["redoHandle"]
       40 JUMPIFNOT                        R4 ; [+5]
       41 GETTABLEKS                       R4 R0 K9 ["redoHandle"]
       43 NAMECALL                         R4 R4 K7 ["Disconnect"]
       45 CALL                             R4 1 0
       46 GETTABLEKS                       R4 R0 K10 ["toolChangedHandle"]
       48 JUMPIFNOT                        R4 ; [+5]
       49 GETTABLEKS                       R4 R0 K10 ["toolChangedHandle"]
       51 NAMECALL                         R4 R4 K7 ["Disconnect"]
       53 CALL                             R4 1 0
       54 GETUPVAL                         R4 0
       55 LOADB                            R6 1
       56 NAMECALL                         R4 R4 K11 ["SetEnabled"]
       58 CALL                             R4 2 0
       59 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["selectItem"]
        2 DUPTABLE                         R3 K2 [{"EditingCage"}]
        3 GETTABLEKS                       R4 R2 K3 ["editingCage"]
        5 SETTABLEKS                       R4 R3 K1 ["EditingCage"]
        7 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K2 [{"SetControlsPanelBlockerActivity", "SetControlsPanelBlockerMessage"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetControlsPanelBlockerActivity"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetControlsPanelBlockerMessage"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["RunService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETIMPORT                        R2 K4 [game]
       19 LOADK                            R4 K7 ["Selection"]
       20 NAMECALL                         R2 R2 K6 ["GetService"]
       22 CALL                             R2 2 1
       23 GETIMPORT                        R3 K4 [game]
       25 LOADK                            R5 K8 ["ChangeHistoryService"]
       26 NAMECALL                         R3 R3 K6 ["GetService"]
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K10 [require]
       31 GETTABLEKS                       R5 R0 K11 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Roact"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K10 [require]
       38 GETTABLEKS                       R6 R0 K11 ["Packages"]
       40 GETTABLEKS                       R6 R6 K13 ["RoactRodux"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R0 K11 ["Packages"]
       45 GETTABLEKS                       R6 R6 K14 ["LuaMeshEditingModule"]
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K11 ["Packages"]
       51 GETTABLEKS                       R8 R8 K15 ["AvatarToolsShared"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETTABLEKS                       R9 R0 K11 ["Packages"]
       58 GETTABLEKS                       R9 R9 K16 ["Framework"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R8 K17 ["ContextServices"]
       63 GETTABLEKS                       R10 R9 K18 ["withContext"]
       65 GETIMPORT                        R11 K10 [require]
       67 GETTABLEKS                       R12 R6 K19 ["Components"]
       69 GETTABLEKS                       R12 R12 K20 ["MeshEditingComponent"]
       71 CALL                             R11 1 1
       72 GETTABLEKS                       R12 R7 K21 ["Contexts"]
       74 GETTABLEKS                       R12 R12 K22 ["LuaMeshEditingModuleContext"]
       76 GETIMPORT                        R13 K10 [require]
       78 GETTABLEKS                       R14 R0 K23 ["Src"]
       80 GETTABLEKS                       R14 R14 K24 ["Actions"]
       82 GETTABLEKS                       R14 R14 K25 ["SetControlsPanelBlockerActivity"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K10 [require]
       87 GETTABLEKS                       R15 R0 K23 ["Src"]
       89 GETTABLEKS                       R15 R15 K24 ["Actions"]
       91 GETTABLEKS                       R15 R15 K26 ["SetControlsPanelBlockerMessage"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K10 [require]
       96 GETTABLEKS                       R16 R0 K23 ["Src"]
       98 GETTABLEKS                       R16 R16 K27 ["Flags"]
      100 GETTABLEKS                       R16 R16 K28 ["getFFlagStudioLuaMeshEditingModuleActivatesTool"]
      102 CALL                             R15 1 1
      103 GETTABLEKS                       R16 R4 K29 ["PureComponent"]
      105 LOADK                            R18 K30 ["LuaMeshEditingModuleWrapper"]
      106 NAMECALL                         R16 R16 K31 ["extend"]
      108 CALL                             R16 2 1
      109 NEWTABLE                         R17 0 4
      111 GETIMPORT                        R18 K35 [Enum.RibbonTool.Select]
      113 GETIMPORT                        R19 K37 [Enum.RibbonTool.Move]
      115 GETIMPORT                        R20 K39 [Enum.RibbonTool.Scale]
      117 GETIMPORT                        R21 K41 [Enum.RibbonTool.Rotate]
      119 SETLIST                          R17 R18 4 [1]
      121 NEWTABLE                         R18 0 0
      123 GETIMPORT                        R19 K43 [ipairs]
      125 MOVE                             R20 R17
      126 CALL                             R19 1 3
      127 FORGPREP_INEXT                   R19
      128 SETTABLE                         R22 R18 R23
      129 FORGLOOP                         R19 2 [inext] ; [-2]
      131 DUPCLOSURE                       R19 K44 [PROTO_8]
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R3
      136 SETTABLEKS                       R19 R16 K45 ["didMount"]
      138 DUPCLOSURE                       R19 K46 [PROTO_9]
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R11
      141 SETTABLEKS                       R19 R16 K47 ["render"]
      143 DUPCLOSURE                       R19 K48 [PROTO_10]
      144 CAPTURE                          VAL R3
      145 SETTABLEKS                       R19 R16 K49 ["willUnmount"]
      147 DUPCLOSURE                       R19 K50 [PROTO_11]
      148 DUPCLOSURE                       R20 K51 [PROTO_14]
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R14
      151 MOVE                             R21 R10
      152 DUPTABLE                         R22 K56 [{"Plugin", "PluginActions", "Localization", "LuaMeshEditingModuleContext", "Mouse"}]
      153 GETTABLEKS                       R23 R9 K52 ["Plugin"]
      155 SETTABLEKS                       R23 R22 K52 ["Plugin"]
      157 GETTABLEKS                       R23 R9 K53 ["PluginActions"]
      159 SETTABLEKS                       R23 R22 K53 ["PluginActions"]
      161 GETTABLEKS                       R23 R9 K54 ["Localization"]
      163 SETTABLEKS                       R23 R22 K54 ["Localization"]
      165 SETTABLEKS                       R12 R22 K22 ["LuaMeshEditingModuleContext"]
      167 GETTABLEKS                       R23 R9 K55 ["Mouse"]
      169 SETTABLEKS                       R23 R22 K55 ["Mouse"]
      171 CALL                             R21 1 1
      172 MOVE                             R22 R16
      173 CALL                             R21 1 1
      174 MOVE                             R16 R21
      175 GETTABLEKS                       R21 R5 K57 ["connect"]
      177 MOVE                             R22 R19
      178 MOVE                             R23 R20
      179 CALL                             R21 2 1
      180 MOVE                             R22 R16
      181 CALL                             R21 1 -1
      182 RETURN                           R21 -1
