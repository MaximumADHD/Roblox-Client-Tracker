PROTO_0:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_0]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R1 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"dockWidgetTitle"}]
        2 SETTABLEKS                       R0 R3 K0 ["dockWidgetTitle"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["textBoxRef"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["current"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 NAMECALL                         R2 R1 K2 ["IsFocused"]
       10 CALL                             R2 1 1
       11 JUMPIF                           R2 ; [+3]
       12 NAMECALL                         R2 R1 K3 ["CaptureFocus"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PluginLoaderContext"]
        3 GETTABLEKS                       R0 R1 K1 ["mainDockWidget"]
        5 NAMECALL                         R1 R0 K2 ["RequestRaise"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["onFocus"]
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 LOADK                            R4 K1 ["Actions"]
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K1 ["Actions"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["Localization"]
       11 GETTABLEKS                       R2 R3 K4 ["new"]
       13 DUPTABLE                         R3 K8 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       14 GETUPVAL                         R4 1
       15 SETTABLEKS                       R4 R3 K5 ["stringResourceTable"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K6 ["translationResourceTable"]
       20 LOADK                            R4 K9 ["Assistant"]
       21 SETTABLEKS                       R4 R3 K7 ["pluginName"]
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R0 K10 ["localization"]
       26 DUPTABLE                         R2 K13 [{"enabled", "dockWidgetTitle"}]
       27 LOADB                            R3 0
       28 SETTABLEKS                       R3 R2 K11 ["enabled"]
       30 GETTABLEKS                       R3 R0 K10 ["localization"]
       32 LOADK                            R5 K0 ["Plugin"]
       33 LOADK                            R6 K14 ["Name"]
       34 NAMECALL                         R3 R3 K15 ["getText"]
       36 CALL                             R3 3 1
       37 SETTABLEKS                       R3 R2 K12 ["dockWidgetTitle"]
       39 SETTABLEKS                       R2 R0 K16 ["state"]
       41 NEWCLOSURE                       R2 P0
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R2 R0 K17 ["toggleEnabled"]
       45 NEWCLOSURE                       R2 P1
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R2 R0 K18 ["onClose"]
       49 NEWCLOSURE                       R2 P2
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R2 R0 K19 ["onRestore"]
       53 NEWCLOSURE                       R2 P3
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R2 R0 K20 ["onWidgetEnabledChanged"]
       57 NEWCLOSURE                       R2 P4
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R2 R0 K21 ["onDockWidgetCreated"]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R3 R4 K22 ["Analytics"]
       64 GETTABLEKS                       R2 R3 K4 ["new"]
       66 DUPCLOSURE                       R3 K23 [PROTO_6]
       67 NEWTABLE                         R4 0 0
       69 CALL                             R2 2 1
       70 SETTABLEKS                       R2 R0 K24 ["analytics"]
       72 GETUPVAL                         R3 3
       73 GETTABLEKS                       R2 R3 K4 ["new"]
       75 CALL                             R2 0 1
       76 SETTABLEKS                       R2 R0 K25 ["DEPRECATED_stylizer"]
       78 GETUPVAL                         R4 4
       79 GETTABLEKS                       R3 R4 K26 ["Util"]
       81 GETTABLEKS                       R2 R3 K27 ["createFoundationDesignBinding"]
       83 CALL                             R2 0 2
       84 SETTABLEKS                       R3 R0 K28 ["onFoundationStyleSheetChange"]
       86 GETUPVAL                         R4 5
       87 GETTABLEKS                       R5 R1 K0 ["Plugin"]
       89 LOADNIL                          R6
       90 LOADNIL                          R7
       91 NEWTABLE                         R8 0 1
       93 MOVE                             R9 R2
       94 SETLIST                          R8 R9 1 [1]
       96 CALL                             R4 4 1
       97 SETTABLEKS                       R4 R0 K29 ["design"]
       99 GETUPVAL                         R5 6
      100 GETTABLEKS                       R4 R5 K4 ["new"]
      102 GETTABLEKS                       R5 R1 K0 ["Plugin"]
      104 NAMECALL                         R5 R5 K30 ["getMouse"]
      106 CALL                             R5 1 -1
      107 CALL                             R4 -1 1
      108 SETTABLEKS                       R4 R0 K31 ["mouse"]
      110 GETTABLEKS                       R4 R0 K31 ["mouse"]
      112 LOADK                            R6 K32 ["Arrow"]
      113 LOADN                            R7 0
      114 NAMECALL                         R4 R4 K33 ["__pushCursor"]
      116 CALL                             R4 3 0
      117 NEWCLOSURE                       R4 P6
      118 CAPTURE                          VAL R0
      119 SETTABLEKS                       R4 R0 K34 ["setDockWidgetTitle"]
      121 GETUPVAL                         R5 7
      122 GETTABLEKS                       R4 R5 K35 ["createRef"]
      124 CALL                             R4 0 1
      125 SETTABLEKS                       R4 R0 K36 ["textBoxRef"]
      127 NEWCLOSURE                       R4 P7
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R4 R0 K37 ["onFocus"]
      131 NEWCLOSURE                       R4 P8
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R4 R0 K38 ["openAssistant"]
      136 NAMECALL                         R4 R0 K39 ["setupActionBindings"]
      138 CALL                             R4 1 0
      139 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Actions"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["BindToActivatedAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Plugin"]
        5 GETTABLEKS                       R1 R0 K2 ["MultipleDocumentInterfaceInstance"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K3 ["FocusedDataModelSession"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R1 K3 ["FocusedDataModelSession"]
       14 GETTABLEKS                       R2 R3 K4 ["CurrentDataModelType"]
       16 GETIMPORT                        R3 K8 [Enum.StudioDataModelType.Edit]
       18 JUMPIFEQ                         R2 R3 ; [+6]
       20 GETIMPORT                        R3 K10 [warn]
       22 LOADK                            R4 K11 ["Explain Code is only available in Edit mode, not during play/run"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K12 ["openAssistant"]
       28 CALL                             R3 0 0
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K13 ["generateExplainCodePrompt"]
       32 CALL                             R3 0 1
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R5 R6 K14 ["Components"]
       36 GETTABLEKS                       R4 R5 K15 ["ExternalHooks"]
       38 GETTABLEKS                       R5 R4 K16 ["sendMessage"]
       40 DUPTABLE                         R6 K19 [{"text", "retry"}]
       41 SETTABLEKS                       R3 R6 K17 ["text"]
       43 LOADB                            R7 0
       44 SETTABLEKS                       R7 R6 K18 ["retry"]
       46 CALL                             R5 1 0
       47 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["textBoxRef"]
        9 GETTABLEKS                       R0 R1 K1 ["current"]
       11 NAMECALL                         R0 R0 K2 ["IsFocused"]
       13 CALL                             R0 1 1
       14 JUMPIF                           R0 ; [+4]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K3 ["openAssistant"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K4 [{"DataModel", "PluginId", "Category", "ItemId"}]
        1 LOADK                            R2 K5 ["Standalone"]
        2 SETTABLEKS                       R2 R1 K0 ["DataModel"]
        4 LOADK                            R2 K6 ["AssistantPlugin"]
        5 SETTABLEKS                       R2 R1 K1 ["PluginId"]
        7 LOADK                            R2 K7 ["Actions"]
        8 SETTABLEKS                       R2 R1 K2 ["Category"]
       10 LOADK                            R2 K8 ["MCPExplainCode"]
       11 SETTABLEKS                       R2 R1 K3 ["ItemId"]
       13 GETIMPORT                        R2 K10 [pcall]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CALL                             R2 1 2
       19 JUMPIFNOT                        R2 ; [+9]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 NAMECALL                         R4 R3 K11 ["Connect"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R0 K12 ["mcpExplainCodeConnection"]
       29 GETTABLEKS                       R4 R0 K7 ["Actions"]
       31 GETUPVAL                         R6 2
       32 NAMECALL                         R4 R4 K13 ["BindToActivatedAsync"]
       34 CALL                             R4 2 1
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          VAL R0
       37 NAMECALL                         R4 R4 K11 ["Connect"]
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R0 K14 ["askAssistantConnection"]
       42 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R4 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["mcpExplainCodeConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["mcpExplainCodeConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["mcpExplainCodeConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["askAssistantConnection"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["askAssistantConnection"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["askAssistantConnection"]
       22 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R6 R1 K4 ["PluginLoaderContext"]
       10 GETTABLEKS                       R5 R6 K5 ["mainDockWidget"]
       12 GETUPVAL                         R6 0
       13 CALL                             R6 0 1
       14 JUMPIF                           R6 ; [+31]
       15 GETTABLEKS                       R6 R0 K6 ["Actions"]
       17 NEWTABLE                         R8 0 1
       19 GETUPVAL                         R9 1
       20 SETLIST                          R8 R9 1 [1]
       22 NAMECALL                         R6 R6 K7 ["GetAsync"]
       24 CALL                             R6 2 1
       25 LENGTH                           R7 R6
       26 LOADN                            R8 0
       27 JUMPIFNOTLT                      R8 R7 ; [+18]
       29 GETTABLEN                        R8 R6 1
       30 GETTABLEKS                       R7 R8 K8 ["Enabled"]
       32 JUMPIFNOTEQKB                    R7 FALSE ; [+13]
       34 GETTABLEKS                       R7 R5 K8 ["Enabled"]
       36 JUMPIFNOT                        R7 ; [+9]
       37 GETIMPORT                        R7 K10 [warn]
       39 LOADK                            R8 K11 ["MCP assistant is disabled as you are rolled out from previous session"]
       40 CALL                             R7 1 0
       41 LOADB                            R7 0
       42 SETTABLEKS                       R7 R5 K8 ["Enabled"]
       44 LOADNIL                          R7
       45 RETURN                           R7 1
       46 GETTABLEKS                       R6 R2 K12 ["dockWidgetTitle"]
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R7 R8 K13 ["provide"]
       51 DUPTABLE                         R8 K19 [{"Plugin", "Mouse", "Stylizer", "Localization", "Analytics", "Design"}]
       52 GETUPVAL                         R10 3
       53 GETTABLEKS                       R9 R10 K20 ["new"]
       55 MOVE                             R10 R3
       56 CALL                             R9 1 1
       57 SETTABLEKS                       R9 R8 K2 ["Plugin"]
       59 GETTABLEKS                       R9 R0 K21 ["mouse"]
       61 SETTABLEKS                       R9 R8 K14 ["Mouse"]
       63 GETTABLEKS                       R9 R0 K22 ["DEPRECATED_stylizer"]
       65 SETTABLEKS                       R9 R8 K15 ["Stylizer"]
       67 GETTABLEKS                       R9 R0 K23 ["localization"]
       69 SETTABLEKS                       R9 R8 K16 ["Localization"]
       71 GETTABLEKS                       R9 R0 K24 ["analytics"]
       73 SETTABLEKS                       R9 R8 K17 ["Analytics"]
       75 GETUPVAL                         R10 4
       76 GETTABLEKS                       R9 R10 K20 ["new"]
       78 GETTABLEKS                       R10 R0 K25 ["design"]
       80 CALL                             R9 1 1
       81 SETTABLEKS                       R9 R8 K18 ["Design"]
       83 DUPTABLE                         R9 K27 [{"MainWidget"}]
       84 GETUPVAL                         R10 5
       85 GETUPVAL                         R11 6
       86 NEWTABLE                         R12 16 0
       88 LOADK                            R13 K28 ["Assistant"]
       89 SETTABLEKS                       R13 R12 K29 ["Id"]
       91 SETTABLEKS                       R4 R12 K8 ["Enabled"]
       93 SETTABLEKS                       R6 R12 K30 ["Title"]
       95 GETIMPORT                        R13 K34 [Enum.ZIndexBehavior.Sibling]
       97 SETTABLEKS                       R13 R12 K32 ["ZIndexBehavior"]
       99 GETIMPORT                        R13 K37 [Enum.InitialDockState.Left]
      101 SETTABLEKS                       R13 R12 K35 ["InitialDockState"]
      103 GETIMPORT                        R13 K39 [Vector2.new]
      105 LOADN                            R14 128
      106 LOADN                            R15 224
      107 CALL                             R13 2 1
      108 SETTABLEKS                       R13 R12 K40 ["Size"]
      110 GETIMPORT                        R13 K39 [Vector2.new]
      112 LOADN                            R14 250
      113 LOADN                            R15 200
      114 CALL                             R13 2 1
      115 SETTABLEKS                       R13 R12 K41 ["MinSize"]
      117 GETTABLEKS                       R13 R0 K42 ["onClose"]
      119 SETTABLEKS                       R13 R12 K43 ["OnClose"]
      121 GETTABLEKS                       R14 R1 K4 ["PluginLoaderContext"]
      123 GETTABLEKS                       R13 R14 K5 ["mainDockWidget"]
      125 SETTABLEKS                       R13 R12 K44 ["Widget"]
      127 GETTABLEKS                       R13 R0 K45 ["onFocus"]
      129 SETTABLEKS                       R13 R12 K46 ["OnWidgetFocused"]
      131 GETTABLEKS                       R13 R0 K47 ["onDockWidgetCreated"]
      133 SETTABLEKS                       R13 R12 K48 ["OnWidgetCreated"]
      135 GETTABLEKS                       R13 R0 K49 ["onRestore"]
      137 SETTABLEKS                       R13 R12 K50 ["OnWidgetRestored"]
      139 LOADB                            R13 1
      140 SETTABLEKS                       R13 R12 K51 ["ShouldRestore"]
      142 GETUPVAL                         R15 7
      143 GETTABLEKS                       R14 R15 K52 ["Change"]
      145 GETTABLEKS                       R13 R14 K8 ["Enabled"]
      147 GETTABLEKS                       R14 R0 K53 ["onWidgetEnabledChanged"]
      149 SETTABLE                         R14 R12 R13
      150 DUPTABLE                         R13 K55 [{"App"}]
      151 GETUPVAL                         R14 5
      152 GETUPVAL                         R15 8
      153 DUPTABLE                         R16 K60 [{"dockWidget", "onFoundationStyleSheetChange", "setDockWidgetTitle", "textBoxRef"}]
      154 GETTABLEKS                       R18 R1 K4 ["PluginLoaderContext"]
      156 GETTABLEKS                       R17 R18 K5 ["mainDockWidget"]
      158 SETTABLEKS                       R17 R16 K56 ["dockWidget"]
      160 GETTABLEKS                       R17 R0 K57 ["onFoundationStyleSheetChange"]
      162 SETTABLEKS                       R17 R16 K57 ["onFoundationStyleSheetChange"]
      164 GETTABLEKS                       R17 R0 K58 ["setDockWidgetTitle"]
      166 SETTABLEKS                       R17 R16 K58 ["setDockWidgetTitle"]
      168 GETTABLEKS                       R17 R0 K59 ["textBoxRef"]
      170 SETTABLEKS                       R17 R16 K59 ["textBoxRef"]
      172 CALL                             R14 2 1
      173 SETTABLEKS                       R14 R13 K54 ["App"]
      175 CALL                             R10 3 1
      176 SETTABLEKS                       R10 R9 K26 ["MainWidget"]
      178 CALL                             R7 2 -1
      179 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Components"]
       13 GETTABLEKS                       R2 R3 K8 ["App"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["AssistantUI"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R7 K13 ["StudioFoundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Src"]
       48 GETTABLEKS                       R8 R9 K14 ["Util"]
       50 GETTABLEKS                       R7 R8 K15 ["StudioScriptHelper"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K6 ["Src"]
       57 GETTABLEKS                       R9 R10 K16 ["Flags"]
       59 GETTABLEKS                       R8 R9 K17 ["FFlagDeprecateOldAssistant"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R9 R3 K18 ["UI"]
       64 GETTABLEKS                       R8 R9 K19 ["DockWidget"]
       66 GETTABLEKS                       R9 R3 K20 ["ContextServices"]
       68 GETTABLEKS                       R10 R9 K21 ["Design"]
       70 GETTABLEKS                       R11 R9 K22 ["Plugin"]
       72 GETTABLEKS                       R12 R9 K23 ["Mouse"]
       74 GETTABLEKS                       R15 R3 K24 ["Style"]
       76 GETTABLEKS                       R14 R15 K25 ["Themes"]
       78 GETTABLEKS                       R13 R14 K26 ["StudioTheme"]
       80 GETTABLEKS                       R15 R3 K27 ["Styling"]
       82 GETTABLEKS                       R14 R15 K28 ["registerPluginStyles"]
       84 GETTABLEKS                       R18 R0 K6 ["Src"]
       86 GETTABLEKS                       R17 R18 K29 ["Resources"]
       88 GETTABLEKS                       R16 R17 K30 ["Localization"]
       90 GETTABLEKS                       R15 R16 K31 ["SourceStrings"]
       92 GETTABLEKS                       R19 R0 K6 ["Src"]
       94 GETTABLEKS                       R18 R19 K29 ["Resources"]
       96 GETTABLEKS                       R17 R18 K30 ["Localization"]
       98 GETTABLEKS                       R16 R17 K32 ["LocalizedStrings"]
      100 GETTABLEKS                       R17 R4 K33 ["createElement"]
      102 GETTABLEKS                       R18 R4 K34 ["PureComponent"]
      104 LOADK                            R20 K35 ["MainPlugin"]
      105 NAMECALL                         R18 R18 K36 ["extend"]
      107 CALL                             R18 2 1
      108 DUPTABLE                         R19 K40 [{"Category", "ItemId", "PluginId"}]
      109 LOADK                            R20 K41 ["Actions"]
      110 SETTABLEKS                       R20 R19 K37 ["Category"]
      112 LOADK                            R20 K42 ["FocusAssistant"]
      113 SETTABLEKS                       R20 R19 K38 ["ItemId"]
      115 LOADK                            R20 K2 ["Assistant"]
      116 SETTABLEKS                       R20 R19 K39 ["PluginId"]
      118 DUPCLOSURE                       R20 K43 [PROTO_10]
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R4
      127 SETTABLEKS                       R20 R18 K44 ["init"]
      129 DUPCLOSURE                       R20 K45 [PROTO_14]
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R19
      133 SETTABLEKS                       R20 R18 K46 ["setupActionBindings"]
      135 DUPCLOSURE                       R20 K47 [PROTO_15]
      136 SETTABLEKS                       R20 R18 K48 ["didUpdate"]
      138 DUPCLOSURE                       R20 K49 [PROTO_16]
      139 SETTABLEKS                       R20 R18 K50 ["willUnmount"]
      141 DUPTABLE                         R20 K52 [{"DataModel", "PluginId", "Category", "ItemId"}]
      142 LOADK                            R21 K53 ["Standalone"]
      143 SETTABLEKS                       R21 R20 K51 ["DataModel"]
      145 LOADK                            R21 K54 ["AssistantPlugin"]
      146 SETTABLEKS                       R21 R20 K39 ["PluginId"]
      148 LOADK                            R21 K41 ["Actions"]
      149 SETTABLEKS                       R21 R20 K37 ["Category"]
      151 LOADK                            R21 K55 ["Toggle"]
      152 SETTABLEKS                       R21 R20 K38 ["ItemId"]
      154 DUPCLOSURE                       R21 K56 [PROTO_17]
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R20
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R1
      164 SETTABLEKS                       R21 R18 K57 ["render"]
      166 RETURN                           R18 1
