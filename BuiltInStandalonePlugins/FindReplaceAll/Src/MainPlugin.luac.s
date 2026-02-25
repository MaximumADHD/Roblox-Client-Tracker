PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Plugin"]
        5 LOADK                            R3 K2 ["Widgets"]
        6 NAMECALL                         R1 R0 K3 ["GetPluginComponent"]
        8 CALL                             R1 2 1
        9 NAMECALL                         R2 R0 K4 ["GetUri"]
       11 CALL                             R2 1 1
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R1 K5 ["GetWidgetAsync"]
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R4 R3 K6 ["Exists"]
       18 JUMPIFNOT                        R4 ; [+8]
       19 GETUPVAL                         R4 0
       20 LOADB                            R5 1
       21 SETTABLEKS                       R5 R4 K7 ["isProgrammaticallyFocusing"]
       23 MOVE                             R6 R2
       24 NAMECALL                         R4 R1 K8 ["FocusAsync"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K8 [{"Search", "CaseSensitive", "MatchWholeWords", "Regex", "Replace", "IncludeFilter", "ExcludeFilter", "MaxResults"}]
        2 LOADK                            R3 K9 [""]
        3 SETTABLEKS                       R3 R2 K0 ["Search"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["CaseSensitive"]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K2 ["MatchWholeWords"]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K3 ["Regex"]
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R2 K4 ["Replace"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K5 ["IncludeFilter"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K6 ["ExcludeFilter"]
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R3 R4 K10 ["MAX_RESULTS"]
       26 SETTABLEKS                       R3 R2 K7 ["MaxResults"]
       28 NAMECALL                         R0 R0 K11 ["UpdateQueryAsync"]
       30 CALL                             R0 2 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_4]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 DUPCLOSURE                       R1 K3 [PROTO_5]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 DUPTABLE                         R2 K6 [{"enabled", "findActivationData"}]
        8 LOADB                            R3 0
        9 SETTABLEKS                       R3 R2 K4 ["enabled"]
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R2 K5 ["findActivationData"]
       14 NAMECALL                         R0 R0 K7 ["setState"]
       16 CALL                             R0 2 0
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K8 ["props"]
       20 GETTABLEKS                       R1 R2 K9 ["PluginLoaderContext"]
       22 GETTABLEKS                       R0 R1 K10 ["findActivationState"]
       24 JUMPIFNOT                        R0 ; [+8]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K8 ["props"]
       28 GETTABLEKS                       R0 R1 K9 ["PluginLoaderContext"]
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K10 ["findActivationState"]
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R1 K2 ["mainButton"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["state"]
       10 GETTABLEKS                       R2 R3 K4 ["enabled"]
       12 NAMECALL                         R0 R0 K5 ["SetActive"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["props"]
       18 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
       20 GETTABLEKS                       R0 R1 K6 ["mainButtonClickedSignal"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K7 ["toggleEnabled"]
       25 NAMECALL                         R0 R0 K8 ["Connect"]
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isWidgetFocused"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["textBoxRef"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["textBoxRef"]
       11 GETTABLEKS                       R0 R1 K2 ["current"]
       13 JUMPIFNOT                        R0 ; [+4]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K3 ["isProgrammaticallyFocusing"]
       17 JUMPIF                           R0 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K1 ["textBoxRef"]
       22 GETTABLEKS                       R0 R1 K2 ["current"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K4 ["state"]
       27 GETTABLEKS                       R2 R3 K5 ["findActivationData"]
       29 GETTABLEKS                       R1 R2 K6 ["searchText"]
       31 JUMPIFNOT                        R1 ; [+8]
       32 GETTABLEKS                       R2 R0 K7 ["Text"]
       34 JUMPIFEQKS                       R2 K8 [""] ; [+3]
       36 JUMPIFEQKS                       R1 K8 [""] ; [+3]
       38 SETTABLEKS                       R1 R0 K7 ["Text"]
       40 NAMECALL                         R2 R0 K9 ["IsFocused"]
       42 CALL                             R2 1 1
       43 JUMPIF                           R2 ; [+3]
       44 NAMECALL                         R2 R0 K10 ["CaptureFocus"]
       46 CALL                             R2 1 0
       47 LOADN                            R2 1
       48 SETTABLEKS                       R2 R0 K11 ["SelectionStart"]
       50 GETTABLEKS                       R4 R0 K7 ["Text"]
       52 LENGTH                           R3 R4
       53 ADDK                             R2 R3 K12 [1]
       54 SETTABLEKS                       R2 R0 K13 ["CursorPosition"]
       56 GETUPVAL                         R4 1
       57 GETTABLEKS                       R3 R4 K14 ["PluginLoaderContext"]
       59 GETTABLEKS                       R2 R3 K15 ["mainDockWidget"]
       61 NAMECALL                         R3 R2 K16 ["RequestRaise"]
       63 CALL                             R3 1 0
       64 GETUPVAL                         R3 0
       65 LOADB                            R4 0
       66 SETTABLEKS                       R4 R3 K3 ["isProgrammaticallyFocusing"]
       68 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isWidgetFocused"]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["isProgrammaticallyFocusing"]
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{"enabled", "findActivationData"}]
        2 LOADB                            R5 1
        3 SETTABLEKS                       R5 R4 K0 ["enabled"]
        5 DUPTABLE                         R5 K5 [{"searchText", "showReplace"}]
        6 SETTABLEKS                       R0 R5 K3 ["searchText"]
        8 SETTABLEKS                       R1 R5 K4 ["showReplace"]
       10 SETTABLEKS                       R5 R4 K1 ["findActivationData"]
       12 NAMECALL                         R2 R2 K6 ["setState"]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K7 ["isWidgetFocused"]
       18 JUMPIFNOT                        R2 ; [+22]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K8 ["textBoxRef"]
       22 GETTABLEKS                       R2 R3 K9 ["current"]
       24 NAMECALL                         R3 R2 K10 ["IsFocused"]
       26 CALL                             R3 1 1
       27 JUMPIF                           R3 ; [+3]
       28 NAMECALL                         R3 R2 K11 ["CaptureFocus"]
       30 CALL                             R3 1 0
       31 LOADN                            R3 1
       32 SETTABLEKS                       R3 R2 K12 ["SelectionStart"]
       34 GETTABLEKS                       R5 R2 K14 ["Text"]
       36 LENGTH                           R4 R5
       37 ADDK                             R3 R4 K13 [1]
       38 SETTABLEKS                       R3 R2 K15 ["CursorPosition"]
       40 RETURN                           R0 0
       41 GETUPVAL                         R2 0
       42 NAMECALL                         R2 R2 K16 ["focusWidget"]
       44 CALL                             R2 1 0
       45 RETURN                           R0 0

PROTO_14:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R4 R1 K0 ["PluginLoaderContext"]
        3 GETTABLEKS                       R3 R4 K1 ["findActivationState"]
        5 JUMPIFNOT                        R3 ; [+4]
        6 GETTABLEKS                       R3 R1 K0 ["PluginLoaderContext"]
        8 GETTABLEKS                       R2 R3 K1 ["findActivationState"]
       10 LOADB                            R3 0
       11 GETTABLEKS                       R4 R1 K0 ["PluginLoaderContext"]
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETTABLEKS                       R5 R1 K0 ["PluginLoaderContext"]
       16 GETTABLEKS                       R4 R5 K2 ["mainDockWidget"]
       18 LOADB                            R5 0
       19 JUMPIFEQKNIL                     R4 ; [+3]
       21 GETTABLEKS                       R5 R4 K3 ["Enabled"]
       23 MOVE                             R3 R5
       24 DUPTABLE                         R4 K6 [{"enabled", "findActivationData"}]
       25 SETTABLEKS                       R3 R4 K4 ["enabled"]
       27 SETTABLEKS                       R2 R4 K5 ["findActivationData"]
       29 SETTABLEKS                       R4 R0 K7 ["state"]
       31 LOADB                            R4 0
       32 SETTABLEKS                       R4 R0 K8 ["isProgrammaticallyFocusing"]
       34 SETTABLEKS                       R3 R0 K9 ["isWidgetFocused"]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R4 R0 K10 ["toggleEnabled"]
       40 NEWCLOSURE                       R4 P1
       41 CAPTURE                          UPVAL U0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R4 R0 K11 ["onClose"]
       46 NEWCLOSURE                       R4 P2
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R4 R0 K12 ["onRestore"]
       50 NEWCLOSURE                       R4 P3
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R4 R0 K13 ["onWidgetEnabledChanged"]
       54 NEWCLOSURE                       R4 P4
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R4 R0 K14 ["onDockWidgetCreated"]
       58 GETUPVAL                         R5 2
       59 GETTABLEKS                       R4 R5 K15 ["new"]
       61 GETTABLEKS                       R5 R1 K16 ["Plugin"]
       63 NAMECALL                         R5 R5 K17 ["getMouse"]
       65 CALL                             R5 1 -1
       66 CALL                             R4 -1 1
       67 SETTABLEKS                       R4 R0 K18 ["mouse"]
       69 GETTABLEKS                       R4 R0 K18 ["mouse"]
       71 LOADK                            R6 K19 ["Arrow"]
       72 LOADN                            R7 0
       73 NAMECALL                         R4 R4 K20 ["__pushCursor"]
       75 CALL                             R4 3 0
       76 GETUPVAL                         R6 3
       77 GETTABLEKS                       R5 R6 K21 ["Localization"]
       79 GETTABLEKS                       R4 R5 K15 ["new"]
       81 DUPTABLE                         R5 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       82 GETUPVAL                         R6 4
       83 SETTABLEKS                       R6 R5 K22 ["stringResourceTable"]
       85 GETUPVAL                         R6 5
       86 SETTABLEKS                       R6 R5 K23 ["translationResourceTable"]
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R6 R7 K26 ["PLUGIN_NAME"]
       91 SETTABLEKS                       R6 R5 K24 ["pluginName"]
       93 CALL                             R4 1 1
       94 SETTABLEKS                       R4 R0 K27 ["localization"]
       96 GETUPVAL                         R6 3
       97 GETTABLEKS                       R5 R6 K28 ["Analytics"]
       99 GETTABLEKS                       R4 R5 K15 ["new"]
      101 DUPCLOSURE                       R5 K29 [PROTO_10]
      102 NEWTABLE                         R6 0 0
      104 CALL                             R4 2 1
      105 SETTABLEKS                       R4 R0 K30 ["analytics"]
      107 GETUPVAL                         R5 6
      108 GETTABLEKS                       R4 R5 K15 ["new"]
      110 CALL                             R4 0 1
      111 SETTABLEKS                       R4 R0 K31 ["DEPRECATED_stylizer"]
      113 GETUPVAL                         R4 7
      114 GETTABLEKS                       R5 R1 K16 ["Plugin"]
      116 CALL                             R4 1 1
      117 SETTABLEKS                       R4 R0 K32 ["design"]
      119 GETUPVAL                         R5 8
      120 GETTABLEKS                       R4 R5 K33 ["createRef"]
      122 CALL                             R4 0 1
      123 SETTABLEKS                       R4 R0 K34 ["textBoxRef"]
      125 NEWCLOSURE                       R4 P6
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R4 R0 K35 ["onFocus"]
      130 NEWCLOSURE                       R4 P7
      131 CAPTURE                          VAL R0
      132 SETTABLEKS                       R4 R0 K36 ["onFocusReleased"]
      134 NEWCLOSURE                       R4 P8
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R4 R0 K37 ["onFindActivationUpdate"]
      138 GETUPVAL                         R5 0
      139 GETTABLEKS                       R4 R5 K38 ["FindActivated"]
      141 GETTABLEKS                       R6 R0 K37 ["onFindActivationUpdate"]
      143 NAMECALL                         R4 R4 K39 ["Connect"]
      145 CALL                             R4 2 1
      146 SETTABLEKS                       R4 R0 K40 ["findActivatedConnection"]
      148 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["findActivatedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["findActivatedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R4 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R8 R1 K4 ["PluginLoaderContext"]
       10 GETTABLEKS                       R7 R8 K5 ["mainDockWidget"]
       12 JUMPIFNOTEQKNIL                  R7 ; [+2]
       14 LOADB                            R6 0 +1
       15 LOADB                            R6 1
       16 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       18 LOADK                            R7 K6 ["Couldn't get main dock widget"]
       19 GETIMPORT                        R5 K8 [assert]
       21 CALL                             R5 2 0
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K9 ["provide"]
       25 NEWTABLE                         R6 0 6
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R7 R8 K10 ["new"]
       30 MOVE                             R8 R3
       31 CALL                             R7 1 1
       32 GETTABLEKS                       R8 R0 K11 ["mouse"]
       34 GETUPVAL                         R9 2
       35 CALL                             R9 0 1
       36 GETTABLEKS                       R10 R0 K12 ["localization"]
       38 GETTABLEKS                       R11 R0 K13 ["analytics"]
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R12 R13 K10 ["new"]
       43 GETTABLEKS                       R13 R0 K14 ["design"]
       45 CALL                             R12 1 -1
       46 SETLIST                          R6 R7 -1 [1]
       48 DUPTABLE                         R7 K16 [{"MainWidget"}]
       49 GETUPVAL                         R9 4
       50 GETTABLEKS                       R8 R9 K17 ["createElement"]
       52 GETUPVAL                         R9 5
       53 NEWTABLE                         R10 16 0
       55 LOADK                            R11 K18 ["FindReplaceAllPlugin"]
       56 SETTABLEKS                       R11 R10 K19 ["Id"]
       58 SETTABLEKS                       R4 R10 K20 ["Enabled"]
       60 GETTABLEKS                       R11 R0 K12 ["localization"]
       62 LOADK                            R13 K21 ["SearchSection"]
       63 LOADK                            R14 K22 ["PlaceholderText"]
       64 NAMECALL                         R11 R11 K23 ["getText"]
       66 CALL                             R11 3 1
       67 SETTABLEKS                       R11 R10 K24 ["Title"]
       69 GETIMPORT                        R11 K28 [Enum.ZIndexBehavior.Sibling]
       71 SETTABLEKS                       R11 R10 K26 ["ZIndexBehavior"]
       73 GETIMPORT                        R11 K31 [Enum.InitialDockState.Left]
       75 SETTABLEKS                       R11 R10 K29 ["InitialDockState"]
       77 GETIMPORT                        R11 K33 [Vector2.new]
       79 LOADN                            R12 128
       80 LOADN                            R13 224
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K34 ["Size"]
       84 GETIMPORT                        R11 K33 [Vector2.new]
       86 LOADN                            R12 250
       87 LOADN                            R13 200
       88 CALL                             R11 2 1
       89 SETTABLEKS                       R11 R10 K35 ["MinSize"]
       91 GETTABLEKS                       R11 R0 K36 ["onClose"]
       93 SETTABLEKS                       R11 R10 K37 ["OnClose"]
       95 GETTABLEKS                       R12 R1 K4 ["PluginLoaderContext"]
       97 GETTABLEKS                       R11 R12 K5 ["mainDockWidget"]
       99 SETTABLEKS                       R11 R10 K38 ["Widget"]
      101 GETTABLEKS                       R11 R0 K39 ["onDockWidgetCreated"]
      103 SETTABLEKS                       R11 R10 K40 ["OnWidgetCreated"]
      105 GETTABLEKS                       R11 R0 K41 ["onFocus"]
      107 SETTABLEKS                       R11 R10 K42 ["OnWidgetFocused"]
      109 GETTABLEKS                       R11 R0 K43 ["onFocusReleased"]
      111 SETTABLEKS                       R11 R10 K44 ["OnWidgetFocusReleased"]
      113 GETUPVAL                         R13 4
      114 GETTABLEKS                       R12 R13 K45 ["Change"]
      116 GETTABLEKS                       R11 R12 K20 ["Enabled"]
      118 GETTABLEKS                       R12 R0 K46 ["onWidgetEnabledChanged"]
      120 SETTABLE                         R12 R10 R11
      121 DUPTABLE                         R11 K50 [{"App", "StyleLink", "WidgetRegister"}]
      122 GETUPVAL                         R13 4
      123 GETTABLEKS                       R12 R13 K17 ["createElement"]
      125 GETUPVAL                         R13 6
      126 DUPTABLE                         R14 K53 [{"findActivationData", "enabled", "textBoxRef"}]
      127 GETTABLEKS                       R15 R2 K51 ["findActivationData"]
      129 SETTABLEKS                       R15 R14 K51 ["findActivationData"]
      131 SETTABLEKS                       R4 R14 K3 ["enabled"]
      133 GETTABLEKS                       R15 R0 K52 ["textBoxRef"]
      135 SETTABLEKS                       R15 R14 K52 ["textBoxRef"]
      137 CALL                             R12 2 1
      138 SETTABLEKS                       R12 R11 K47 ["App"]
      140 GETUPVAL                         R13 4
      141 GETTABLEKS                       R12 R13 K17 ["createElement"]
      143 LOADK                            R13 K48 ["StyleLink"]
      144 DUPTABLE                         R14 K55 [{"StyleSheet"}]
      145 GETTABLEKS                       R15 R0 K14 ["design"]
      147 SETTABLEKS                       R15 R14 K54 ["StyleSheet"]
      149 CALL                             R12 2 1
      150 SETTABLEKS                       R12 R11 K48 ["StyleLink"]
      152 GETUPVAL                         R13 4
      153 GETTABLEKS                       R12 R13 K17 ["createElement"]
      155 GETUPVAL                         R13 7
      156 CALL                             R12 1 1
      157 SETTABLEKS                       R12 R11 K49 ["WidgetRegister"]
      159 CALL                             R8 3 1
      160 SETTABLEKS                       R8 R7 K15 ["MainWidget"]
      162 CALL                             R5 2 -1
      163 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["MakeTheme"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R2 K12 ["UI"]
       32 GETTABLEKS                       R4 R5 K13 ["DockWidget"]
       34 GETTABLEKS                       R5 R2 K14 ["ContextServices"]
       36 GETTABLEKS                       R6 R5 K15 ["Plugin"]
       38 GETTABLEKS                       R7 R5 K16 ["Mouse"]
       40 GETTABLEKS                       R8 R5 K17 ["Design"]
       42 GETTABLEKS                       R11 R2 K18 ["Style"]
       44 GETTABLEKS                       R10 R11 K19 ["Themes"]
       46 GETTABLEKS                       R9 R10 K20 ["StudioTheme"]
       48 GETTABLEKS                       R11 R2 K21 ["Styling"]
       50 GETTABLEKS                       R10 R11 K22 ["registerPluginStyles"]
       52 GETIMPORT                        R11 K5 [require]
       54 GETTABLEKS                       R14 R0 K9 ["Src"]
       56 GETTABLEKS                       R13 R14 K23 ["Util"]
       58 GETTABLEKS                       R12 R13 K24 ["Constants"]
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R15 R0 K9 ["Src"]
       63 GETTABLEKS                       R14 R15 K10 ["Resources"]
       65 GETTABLEKS                       R13 R14 K25 ["Localization"]
       67 GETTABLEKS                       R12 R13 K26 ["SourceStrings"]
       69 GETTABLEKS                       R16 R0 K9 ["Src"]
       71 GETTABLEKS                       R15 R16 K10 ["Resources"]
       73 GETTABLEKS                       R14 R15 K25 ["Localization"]
       75 GETTABLEKS                       R13 R14 K27 ["LocalizedStrings"]
       77 GETIMPORT                        R14 K5 [require]
       79 GETTABLEKS                       R17 R0 K9 ["Src"]
       81 GETTABLEKS                       R16 R17 K28 ["Components"]
       83 GETTABLEKS                       R15 R16 K29 ["App"]
       85 CALL                             R14 1 1
       86 GETIMPORT                        R15 K5 [require]
       88 GETTABLEKS                       R18 R0 K9 ["Src"]
       90 GETTABLEKS                       R17 R18 K28 ["Components"]
       92 GETTABLEKS                       R16 R17 K30 ["WidgetRegister"]
       94 CALL                             R15 1 1
       95 GETIMPORT                        R17 K5 [require]
       97 GETTABLEKS                       R20 R0 K9 ["Src"]
       99 GETTABLEKS                       R19 R20 K23 ["Util"]
      101 GETTABLEKS                       R18 R19 K31 ["MockableProxyPluginComponents"]
      103 CALL                             R17 1 1
      104 GETTABLEKS                       R16 R17 K32 ["FindReplace"]
      106 GETTABLEKS                       R17 R1 K33 ["PureComponent"]
      108 LOADK                            R19 K34 ["MainPlugin"]
      109 NAMECALL                         R17 R17 K35 ["extend"]
      111 CALL                             R17 2 1
      112 DUPCLOSURE                       R18 K36 [PROTO_1]
      113 SETTABLEKS                       R18 R17 K37 ["focusWidget"]
      115 DUPCLOSURE                       R18 K38 [PROTO_14]
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R1
      125 SETTABLEKS                       R18 R17 K39 ["init"]
      127 DUPCLOSURE                       R18 K40 [PROTO_15]
      128 SETTABLEKS                       R18 R17 K41 ["willUnmount"]
      130 DUPCLOSURE                       R18 K42 [PROTO_16]
      131 SETTABLEKS                       R18 R17 K43 ["didUpdate"]
      133 DUPCLOSURE                       R18 K44 [PROTO_17]
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R15
      142 SETTABLEKS                       R18 R17 K45 ["render"]
      144 RETURN                           R17 1
