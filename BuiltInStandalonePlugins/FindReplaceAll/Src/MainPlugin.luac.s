PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
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
        1 DUPTABLE                         R2 K11 [{[1] = "", ["CaseSensitive"] = False, ["MatchWholeWords"] = False, ["Regex"] = False, ["Replace"] = , ["IncludeFilter"] = , ["ExcludeFilter"] = , ["MaxResults"]}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K12 ["MAX_RESULTS"]
        5 SETTABLEKS                       R3 R2 K10 ["MaxResults"]
        7 NAMECALL                         R0 R0 K13 ["UpdateQueryAsync"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

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
        7 DUPTABLE                         R2 K8 [{["enabled"] = False, ["findActivationData"] = }]
        8 NAMECALL                         R0 R0 K9 ["setState"]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K10 ["props"]
       14 GETTABLEKS                       R0 R0 K11 ["PluginLoaderContext"]
       16 GETTABLEKS                       R0 R0 K12 ["findActivationState"]
       18 JUMPIFNOT                        R0 ; [+8]
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K10 ["props"]
       22 GETTABLEKS                       R0 R0 K11 ["PluginLoaderContext"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K12 ["findActivationState"]
       27 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButton"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["state"]
       10 GETTABLEKS                       R2 R2 K4 ["enabled"]
       12 NAMECALL                         R0 R0 K5 ["SetActive"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["props"]
       18 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       20 GETTABLEKS                       R0 R0 K6 ["mainButtonClickedSignal"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K7 ["toggleEnabled"]
       25 NAMECALL                         R0 R0 K8 ["Connect"]
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["textBoxRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIFNOT                        R0 ; [+12]
        6 NAMECALL                         R1 R0 K2 ["CaptureFocus"]
        8 CALL                             R1 1 0
        9 LOADN                            R1 1
       10 SETTABLEKS                       R1 R0 K3 ["SelectionStart"]
       12 GETTABLEKS                       R3 R0 K5 ["Text"]
       14 LENGTH                           R2 R3
       15 ADDK                             R1 R2 K4 [1]
       16 SETTABLEKS                       R1 R0 K6 ["CursorPosition"]
       18 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isWidgetFocused"]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["textBoxRef"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["textBoxRef"]
       11 GETTABLEKS                       R0 R0 K2 ["current"]
       13 JUMPIFNOT                        R0 ; [+4]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K3 ["isProgrammaticallyFocusing"]
       17 JUMPIF                           R0 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R0 0
       20 GETTABLEKS                       R0 R0 K1 ["textBoxRef"]
       22 GETTABLEKS                       R0 R0 K2 ["current"]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K4 ["state"]
       27 GETTABLEKS                       R1 R1 K5 ["findActivationData"]
       29 GETTABLEKS                       R1 R1 K6 ["searchText"]
       31 JUMPIFNOT                        R1 ; [+8]
       32 GETTABLEKS                       R2 R0 K7 ["Text"]
       34 JUMPIFEQKS                       R2 K8 [""] ; [+3]
       36 JUMPIFEQKS                       R1 K8 [""] ; [+3]
       38 SETTABLEKS                       R1 R0 K7 ["Text"]
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K9 ["PluginLoaderContext"]
       43 GETTABLEKS                       R2 R2 K10 ["mainDockWidget"]
       45 NAMECALL                         R3 R2 K11 ["RequestRaise"]
       47 CALL                             R3 1 0
       48 NAMECALL                         R3 R0 K12 ["IsFocused"]
       50 CALL                             R3 1 1
       51 JUMPIF                           R3 ; [+3]
       52 NAMECALL                         R3 R0 K13 ["CaptureFocus"]
       54 CALL                             R3 1 0
       55 LOADN                            R3 1
       56 SETTABLEKS                       R3 R0 K14 ["SelectionStart"]
       58 GETTABLEKS                       R5 R0 K7 ["Text"]
       60 LENGTH                           R4 R5
       61 ADDK                             R3 R4 K15 [1]
       62 SETTABLEKS                       R3 R0 K16 ["CursorPosition"]
       64 GETUPVAL                         R3 0
       65 LOADB                            R4 0
       66 SETTABLEKS                       R4 R3 K3 ["isProgrammaticallyFocusing"]
       68 GETIMPORT                        R3 K19 [task.defer]
       70 NEWCLOSURE                       R4 P0
       71 CAPTURE                          UPVAL U0
       72 CALL                             R3 1 0
       73 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isWidgetFocused"]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["isProgrammaticallyFocusing"]
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K3 [{[1] = True, ["findActivationData"]}]
        2 DUPTABLE                         R5 K6 [{"searchText", "showReplace"}]
        3 SETTABLEKS                       R0 R5 K4 ["searchText"]
        5 SETTABLEKS                       R1 R5 K5 ["showReplace"]
        7 SETTABLEKS                       R5 R4 K2 ["findActivationData"]
        9 NAMECALL                         R2 R2 K7 ["setState"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K8 ["isWidgetFocused"]
       15 JUMPIFNOT                        R2 ; [+22]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K9 ["textBoxRef"]
       19 GETTABLEKS                       R2 R2 K10 ["current"]
       21 NAMECALL                         R3 R2 K11 ["IsFocused"]
       23 CALL                             R3 1 1
       24 JUMPIF                           R3 ; [+3]
       25 NAMECALL                         R3 R2 K12 ["CaptureFocus"]
       27 CALL                             R3 1 0
       28 LOADN                            R3 1
       29 SETTABLEKS                       R3 R2 K13 ["SelectionStart"]
       31 GETTABLEKS                       R5 R2 K15 ["Text"]
       33 LENGTH                           R4 R5
       34 ADDK                             R3 R4 K14 [1]
       35 SETTABLEKS                       R3 R2 K16 ["CursorPosition"]
       37 RETURN                           R0 0
       38 GETUPVAL                         R2 0
       39 NAMECALL                         R2 R2 K17 ["focusWidget"]
       41 CALL                             R2 1 0
       42 RETURN                           R0 0

PROTO_15:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["PluginLoaderContext"]
        3 GETTABLEKS                       R3 R3 K1 ["findActivationState"]
        5 JUMPIFNOT                        R3 ; [+4]
        6 GETTABLEKS                       R3 R1 K0 ["PluginLoaderContext"]
        8 GETTABLEKS                       R2 R3 K1 ["findActivationState"]
       10 LOADB                            R3 0
       11 GETTABLEKS                       R4 R1 K0 ["PluginLoaderContext"]
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETTABLEKS                       R4 R1 K0 ["PluginLoaderContext"]
       16 GETTABLEKS                       R4 R4 K2 ["mainDockWidget"]
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
       34 LOADB                            R4 0
       35 SETTABLEKS                       R4 R0 K9 ["isWidgetFocused"]
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R4 R0 K10 ["toggleEnabled"]
       41 NEWCLOSURE                       R4 P1
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R4 R0 K11 ["onClose"]
       47 NEWCLOSURE                       R4 P2
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R4 R0 K12 ["onRestore"]
       51 NEWCLOSURE                       R4 P3
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R4 R0 K13 ["onWidgetEnabledChanged"]
       55 NEWCLOSURE                       R4 P4
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R4 R0 K14 ["onDockWidgetCreated"]
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K15 ["new"]
       62 GETTABLEKS                       R5 R1 K16 ["Plugin"]
       64 NAMECALL                         R5 R5 K17 ["getMouse"]
       66 CALL                             R5 1 -1
       67 CALL                             R4 -1 1
       68 SETTABLEKS                       R4 R0 K18 ["mouse"]
       70 GETTABLEKS                       R4 R0 K18 ["mouse"]
       72 LOADK                            R6 K19 ["Arrow"]
       73 LOADN                            R7 0
       74 NAMECALL                         R4 R4 K20 ["__pushCursor"]
       76 CALL                             R4 3 0
       77 GETUPVAL                         R4 3
       78 GETTABLEKS                       R4 R4 K21 ["Localization"]
       80 GETTABLEKS                       R4 R4 K15 ["new"]
       82 DUPTABLE                         R5 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       83 GETUPVAL                         R6 4
       84 SETTABLEKS                       R6 R5 K22 ["stringResourceTable"]
       86 GETUPVAL                         R6 5
       87 SETTABLEKS                       R6 R5 K23 ["translationResourceTable"]
       89 GETUPVAL                         R6 1
       90 GETTABLEKS                       R6 R6 K26 ["PLUGIN_NAME"]
       92 SETTABLEKS                       R6 R5 K24 ["pluginName"]
       94 CALL                             R4 1 1
       95 SETTABLEKS                       R4 R0 K27 ["localization"]
       97 GETUPVAL                         R4 3
       98 GETTABLEKS                       R4 R4 K28 ["Analytics"]
      100 GETTABLEKS                       R4 R4 K15 ["new"]
      102 DUPCLOSURE                       R5 K29 [PROTO_10]
      103 NEWTABLE                         R6 0 0
      105 CALL                             R4 2 1
      106 SETTABLEKS                       R4 R0 K30 ["analytics"]
      108 GETUPVAL                         R4 6
      109 GETTABLEKS                       R4 R4 K15 ["new"]
      111 CALL                             R4 0 1
      112 SETTABLEKS                       R4 R0 K31 ["DEPRECATED_stylizer"]
      114 GETUPVAL                         R4 7
      115 GETTABLEKS                       R5 R1 K16 ["Plugin"]
      117 CALL                             R4 1 1
      118 SETTABLEKS                       R4 R0 K32 ["design"]
      120 GETUPVAL                         R4 8
      121 GETTABLEKS                       R4 R4 K33 ["createRef"]
      123 CALL                             R4 0 1
      124 SETTABLEKS                       R4 R0 K34 ["textBoxRef"]
      126 NEWCLOSURE                       R4 P6
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R1
      129 SETTABLEKS                       R4 R0 K35 ["onFocus"]
      131 NEWCLOSURE                       R4 P7
      132 CAPTURE                          VAL R0
      133 SETTABLEKS                       R4 R0 K36 ["onFocusReleased"]
      135 NEWCLOSURE                       R4 P8
      136 CAPTURE                          VAL R0
      137 SETTABLEKS                       R4 R0 K37 ["onFindActivationUpdate"]
      139 GETUPVAL                         R4 0
      140 GETTABLEKS                       R4 R4 K38 ["FindActivated"]
      142 GETTABLEKS                       R6 R0 K37 ["onFindActivationUpdate"]
      144 NAMECALL                         R4 R4 K39 ["Connect"]
      146 CALL                             R4 2 1
      147 SETTABLEKS                       R4 R0 K40 ["findActivatedConnection"]
      149 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["findActivationData"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 NAMECALL                         R1 R0 K2 ["focusWidget"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["findActivatedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["findActivatedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R7 R1 K4 ["PluginLoaderContext"]
       10 GETTABLEKS                       R7 R7 K5 ["mainDockWidget"]
       12 JUMPIFNOTEQKNIL                  R7 ; [+2]
       14 LOADB                            R6 0 +1
       15 LOADB                            R6 1
       16 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       18 LOADK                            R7 K6 ["Couldn't get main dock widget"]
       19 GETIMPORT                        R5 K8 [assert]
       21 CALL                             R5 2 0
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K9 ["provide"]
       25 NEWTABLE                         R6 0 6
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K10 ["new"]
       30 MOVE                             R8 R3
       31 CALL                             R7 1 1
       32 GETTABLEKS                       R8 R0 K11 ["mouse"]
       34 GETUPVAL                         R9 2
       35 CALL                             R9 0 1
       36 GETTABLEKS                       R10 R0 K12 ["localization"]
       38 GETTABLEKS                       R11 R0 K13 ["analytics"]
       40 GETUPVAL                         R12 3
       41 GETTABLEKS                       R12 R12 K10 ["new"]
       43 GETTABLEKS                       R13 R0 K14 ["design"]
       45 CALL                             R12 1 -1
       46 SETLIST                          R6 R7 -1 [1]
       48 DUPTABLE                         R7 K16 [{"MainWidget"}]
       49 GETUPVAL                         R8 4
       50 GETTABLEKS                       R8 R8 K17 ["createElement"]
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
       79 LOADN                            R12 640
       80 LOADN                            R13 480
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K34 ["Size"]
       84 GETIMPORT                        R11 K33 [Vector2.new]
       86 LOADN                            R12 250
       87 LOADN                            R13 200
       88 CALL                             R11 2 1
       89 SETTABLEKS                       R11 R10 K35 ["MinSize"]
       91 GETTABLEKS                       R11 R0 K36 ["onClose"]
       93 SETTABLEKS                       R11 R10 K37 ["OnClose"]
       95 GETTABLEKS                       R11 R1 K4 ["PluginLoaderContext"]
       97 GETTABLEKS                       R11 R11 K5 ["mainDockWidget"]
       99 SETTABLEKS                       R11 R10 K38 ["Widget"]
      101 GETTABLEKS                       R11 R0 K39 ["onDockWidgetCreated"]
      103 SETTABLEKS                       R11 R10 K40 ["OnWidgetCreated"]
      105 GETTABLEKS                       R11 R0 K41 ["onFocus"]
      107 SETTABLEKS                       R11 R10 K42 ["OnWidgetFocused"]
      109 GETTABLEKS                       R11 R0 K43 ["onFocusReleased"]
      111 SETTABLEKS                       R11 R10 K44 ["OnWidgetFocusReleased"]
      113 GETUPVAL                         R11 4
      114 GETTABLEKS                       R11 R11 K45 ["Change"]
      116 GETTABLEKS                       R11 R11 K20 ["Enabled"]
      118 GETTABLEKS                       R12 R0 K46 ["onWidgetEnabledChanged"]
      120 SETTABLE                         R12 R10 R11
      121 GETUPVAL                         R12 6
      122 JUMPIFNOT                        R12 ; [+3]
      123 GETTABLEKS                       R11 R0 K14 ["design"]
      125 JUMP                             ; [+1]
      126 LOADNIL                          R11
      127 SETTABLEKS                       R11 R10 K47 ["PluginDesign"]
      129 DUPTABLE                         R11 K51 [{"App", "StyleLink", "WidgetRegister"}]
      130 GETUPVAL                         R12 4
      131 GETTABLEKS                       R12 R12 K17 ["createElement"]
      133 GETUPVAL                         R13 7
      134 DUPTABLE                         R14 K54 [{"findActivationData", "enabled", "textBoxRef"}]
      135 GETTABLEKS                       R15 R2 K52 ["findActivationData"]
      137 SETTABLEKS                       R15 R14 K52 ["findActivationData"]
      139 SETTABLEKS                       R4 R14 K3 ["enabled"]
      141 GETTABLEKS                       R15 R0 K53 ["textBoxRef"]
      143 SETTABLEKS                       R15 R14 K53 ["textBoxRef"]
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K48 ["App"]
      148 GETUPVAL                         R13 6
      149 JUMPIF                           R13 ; [+11]
      150 GETUPVAL                         R12 4
      151 GETTABLEKS                       R12 R12 K17 ["createElement"]
      153 LOADK                            R13 K49 ["StyleLink"]
      154 DUPTABLE                         R14 K56 [{"StyleSheet"}]
      155 GETTABLEKS                       R15 R0 K14 ["design"]
      157 SETTABLEKS                       R15 R14 K55 ["StyleSheet"]
      159 CALL                             R12 2 1
      160 JUMP                             ; [+1]
      161 LOADNIL                          R12
      162 SETTABLEKS                       R12 R11 K49 ["StyleLink"]
      164 GETUPVAL                         R12 4
      165 GETTABLEKS                       R12 R12 K17 ["createElement"]
      167 GETUPVAL                         R13 8
      168 CALL                             R12 1 1
      169 SETTABLEKS                       R12 R11 K50 ["WidgetRegister"]
      171 CALL                             R8 3 1
      172 SETTABLEKS                       R8 R7 K15 ["MainWidget"]
      174 CALL                             R5 2 -1
      175 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["SharedFlags"]
       23 GETTABLEKS                       R3 R3 K10 ["getFFlagDevFrameworkUsePluginDesign"]
       25 CALL                             R3 0 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Src"]
       30 GETTABLEKS                       R5 R5 K12 ["Resources"]
       32 GETTABLEKS                       R5 R5 K13 ["MakeTheme"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K14 ["UI"]
       37 GETTABLEKS                       R5 R5 K15 ["DockWidget"]
       39 GETTABLEKS                       R6 R2 K16 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K17 ["Plugin"]
       43 GETTABLEKS                       R8 R6 K18 ["Mouse"]
       45 GETTABLEKS                       R9 R6 K19 ["Design"]
       47 GETTABLEKS                       R10 R2 K20 ["Style"]
       49 GETTABLEKS                       R10 R10 K21 ["Themes"]
       51 GETTABLEKS                       R10 R10 K22 ["StudioTheme"]
       53 GETTABLEKS                       R11 R2 K23 ["Styling"]
       55 GETTABLEKS                       R11 R11 K24 ["registerPluginStyles"]
       57 GETIMPORT                        R12 K5 [require]
       59 GETTABLEKS                       R13 R0 K11 ["Src"]
       61 GETTABLEKS                       R13 R13 K25 ["Util"]
       63 GETTABLEKS                       R13 R13 K26 ["Constants"]
       65 CALL                             R12 1 1
       66 GETTABLEKS                       R13 R0 K11 ["Src"]
       68 GETTABLEKS                       R13 R13 K12 ["Resources"]
       70 GETTABLEKS                       R13 R13 K27 ["Localization"]
       72 GETTABLEKS                       R13 R13 K28 ["SourceStrings"]
       74 GETTABLEKS                       R14 R0 K11 ["Src"]
       76 GETTABLEKS                       R14 R14 K12 ["Resources"]
       78 GETTABLEKS                       R14 R14 K27 ["Localization"]
       80 GETTABLEKS                       R14 R14 K29 ["LocalizedStrings"]
       82 GETIMPORT                        R15 K5 [require]
       84 GETTABLEKS                       R16 R0 K11 ["Src"]
       86 GETTABLEKS                       R16 R16 K30 ["Components"]
       88 GETTABLEKS                       R16 R16 K31 ["App"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K5 [require]
       93 GETTABLEKS                       R17 R0 K11 ["Src"]
       95 GETTABLEKS                       R17 R17 K30 ["Components"]
       97 GETTABLEKS                       R17 R17 K32 ["WidgetRegister"]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K5 [require]
      102 GETTABLEKS                       R18 R0 K11 ["Src"]
      104 GETTABLEKS                       R18 R18 K25 ["Util"]
      106 GETTABLEKS                       R18 R18 K33 ["MockableProxyPluginComponents"]
      108 CALL                             R17 1 1
      109 GETTABLEKS                       R17 R17 K34 ["FindReplace"]
      111 GETTABLEKS                       R18 R1 K35 ["PureComponent"]
      113 LOADK                            R20 K36 ["MainPlugin"]
      114 NAMECALL                         R18 R18 K37 ["extend"]
      116 CALL                             R18 2 1
      117 DUPCLOSURE                       R19 K38 [PROTO_1]
      118 SETTABLEKS                       R19 R18 K39 ["focusWidget"]
      120 DUPCLOSURE                       R19 K40 [PROTO_15]
      121 CAPTURE                          VAL R17
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R13
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R1
      130 SETTABLEKS                       R19 R18 K41 ["init"]
      132 DUPCLOSURE                       R19 K42 [PROTO_16]
      133 SETTABLEKS                       R19 R18 K43 ["didMount"]
      135 DUPCLOSURE                       R19 K44 [PROTO_17]
      136 SETTABLEKS                       R19 R18 K45 ["willUnmount"]
      138 DUPCLOSURE                       R19 K46 [PROTO_18]
      139 SETTABLEKS                       R19 R18 K47 ["didUpdate"]
      141 DUPCLOSURE                       R19 K48 [PROTO_19]
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R16
      151 SETTABLEKS                       R19 R18 K49 ["render"]
      153 RETURN                           R18 1
