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
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Checked"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["BindToChangedAsync"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 DUPTABLE                         R2 K1 [{"enabled"}]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K0 ["enabled"]
        7 NAMECALL                         R0 R0 K2 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 JUMPIFNOT                        R0 ; [+13]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K3 ["state"]
       16 GETTABLEKS                       R0 R1 K0 ["enabled"]
       18 JUMPIFNOT                        R0 ; [+15]
       19 GETIMPORT                        R0 K6 [task.spawn]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CALL                             R0 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 1
       27 DUPTABLE                         R2 K1 [{"enabled"}]
       28 LOADB                            R3 0
       29 SETTABLEKS                       R3 R2 K0 ["enabled"]
       31 NAMECALL                         R0 R0 K2 ["setState"]
       33 CALL                             R0 2 0
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["state"]
        5 GETTABLEKS                       R1 R2 K1 ["enabled"]
        7 JUMPIFEQ                         R0 R1 ; [+15]
        9 GETIMPORT                        R1 K4 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 DUPTABLE                         R3 K5 [{"enabled"}]
       18 SETTABLEKS                       R0 R3 K1 ["enabled"]
       20 NAMECALL                         R1 R1 K6 ["setState"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["state"]
        7 GETTABLEKS                       R2 R3 K2 ["enabled"]
        9 JUMPIFEQ                         R1 R2 ; [+17]
       11 GETIMPORT                        R1 K5 [task.spawn]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 DUPTABLE                         R3 K6 [{"enabled"}]
       20 GETTABLEKS                       R4 R0 K0 ["Enabled"]
       22 SETTABLEKS                       R4 R3 K2 ["enabled"]
       24 NAMECALL                         R1 R1 K7 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["props"]
        5 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        7 GETTABLEKS                       R1 R2 K2 ["actionTriggeredSignals"]
        9 GETTABLEN                        R0 R1 1
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K3 ["toggleEnabled"]
       14 NAMECALL                         R2 R0 K4 ["Connect"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K5 ["actionActivatedConnection"]
       19 JUMP                             ; [+13]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K0 ["props"]
       23 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
       25 GETTABLEKS                       R0 R1 K6 ["mainButtonClickedSignal"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
       30 NAMECALL                         R0 R0 K4 ["Connect"]
       32 CALL                             R0 2 0
       33 GETUPVAL                         R0 1
       34 DUPTABLE                         R2 K8 [{"dockWidgetCreated"}]
       35 LOADB                            R3 1
       36 SETTABLEKS                       R3 R2 K7 ["dockWidgetCreated"]
       38 NAMECALL                         R0 R0 K9 ["setState"]
       40 CALL                             R0 2 0
       41 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["enabled"]
        2 SETUPVAL                         R1 0
        3 DUPTABLE                         R1 K1 [{"enabled"}]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["enabled"]
        7 RETURN                           R1 1

PROTO_14:
        0 GETIMPORT                        R1 K3 [Enum.StudioDataModelType.None]
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K5 [Enum.StudioDataModelType.Edit]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 JUMPIF                           R1 ; [+7]
       12 GETUPVAL                         R2 0
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U1
       15 NAMECALL                         R2 R2 K6 ["setState"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 MOVE                             R2 R1
       20 JUMPIFNOT                        R2 ; [+1]
       21 GETUPVAL                         R2 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K7 ["onWidgetEnabledChanged"]
       25 DUPTABLE                         R4 K9 [{"Enabled"}]
       26 SETTABLEKS                       R2 R4 K8 ["Enabled"]
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R2 K2 [{"enabled", "dockWidgetCreated"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["dockWidgetCreated"]
        7 SETTABLEKS                       R2 R0 K3 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K4 ["toggleEnabled"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K5 ["new"]
       16 DUPTABLE                         R3 K8 [{"namespace", "plugin"}]
       17 LOADK                            R4 K9 ["creatorConfig"]
       18 SETTABLEKS                       R4 R3 K6 ["namespace"]
       20 GETTABLEKS                       R4 R1 K10 ["Plugin"]
       22 SETTABLEKS                       R4 R3 K7 ["plugin"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R0 K11 ["webViewManagerContext"]
       27 GETTABLEKS                       R2 R1 K10 ["Plugin"]
       29 LOADK                            R4 K12 ["Actions"]
       30 NAMECALL                         R2 R2 K13 ["GetPluginComponent"]
       32 CALL                             R2 2 1
       33 GETUPVAL                         R3 1
       34 JUMPIFNOT                        R3 ; [+7]
       35 GETIMPORT                        R3 K16 [task.spawn]
       37 NEWCLOSURE                       R4 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U2
       41 CALL                             R3 1 0
       42 NEWCLOSURE                       R3 P2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U2
       48 SETTABLEKS                       R3 R0 K17 ["onClose"]
       50 NEWCLOSURE                       R3 P3
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U2
       55 SETTABLEKS                       R3 R0 K18 ["onRestore"]
       57 NEWCLOSURE                       R3 P4
       58 CAPTURE                          UPVAL U1
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U2
       62 SETTABLEKS                       R3 R0 K19 ["onWidgetEnabledChanged"]
       64 NEWCLOSURE                       R3 P5
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R3 R0 K20 ["onDockWidgetCreated"]
       69 GETUPVAL                         R5 4
       70 GETTABLEKS                       R4 R5 K21 ["Localization"]
       72 GETTABLEKS                       R3 R4 K5 ["new"]
       74 DUPTABLE                         R4 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       75 GETUPVAL                         R5 5
       76 SETTABLEKS                       R5 R4 K22 ["stringResourceTable"]
       78 GETUPVAL                         R5 6
       79 SETTABLEKS                       R5 R4 K23 ["translationResourceTable"]
       81 LOADK                            R5 K26 ["CreatorConfig"]
       82 SETTABLEKS                       R5 R4 K24 ["pluginName"]
       84 CALL                             R3 1 1
       85 SETTABLEKS                       R3 R0 K27 ["localization"]
       87 GETUPVAL                         R5 4
       88 GETTABLEKS                       R4 R5 K28 ["Analytics"]
       90 GETTABLEKS                       R3 R4 K5 ["new"]
       92 DUPCLOSURE                       R4 K29 [PROTO_11]
       93 NEWTABLE                         R5 0 0
       95 CALL                             R3 2 1
       96 SETTABLEKS                       R3 R0 K30 ["analytics"]
       98 GETUPVAL                         R4 7
       99 GETTABLEKS                       R3 R4 K5 ["new"]
      101 CALL                             R3 0 1
      102 SETTABLEKS                       R3 R0 K31 ["DEPRECATED_stylizer"]
      104 GETUPVAL                         R5 8
      105 GETTABLEKS                       R4 R5 K32 ["Util"]
      107 GETTABLEKS                       R3 R4 K33 ["createFoundationDesignBinding"]
      109 CALL                             R3 0 2
      110 SETTABLEKS                       R4 R0 K34 ["onFoundationStyleSheetChange"]
      112 GETUPVAL                         R5 9
      113 GETTABLEKS                       R6 R1 K10 ["Plugin"]
      115 LOADNIL                          R7
      116 LOADNIL                          R8
      117 NEWTABLE                         R9 0 1
      119 MOVE                             R10 R3
      120 SETLIST                          R9 R10 1 [1]
      122 CALL                             R5 4 1
      123 SETTABLEKS                       R5 R0 K35 ["design"]
      125 GETTABLEKS                       R5 R1 K10 ["Plugin"]
      127 LOADK                            R7 K36 ["PlaceManager"]
      128 NAMECALL                         R5 R5 K13 ["GetPluginComponent"]
      130 CALL                             R5 2 1
      131 SETTABLEKS                       R5 R0 K37 ["placeManager"]
      133 GETTABLEKS                       R6 R0 K37 ["placeManager"]
      135 GETTABLEKS                       R5 R6 K38 ["PlaceDocPanelClosed"]
      137 NEWCLOSURE                       R7 P7
      138 CAPTURE                          VAL R0
      139 NAMECALL                         R5 R5 K39 ["Connect"]
      141 CALL                             R5 2 0
      142 GETUPVAL                         R5 10
      143 JUMPIFNOT                        R5 ; [+9]
      144 GETTABLEKS                       R5 R1 K10 ["Plugin"]
      146 LOADK                            R7 K40 ["DmChanged"]
      147 NEWCLOSURE                       R8 P8
      148 CAPTURE                          VAL R0
      149 CAPTURE                          UPVAL U11
      150 NAMECALL                         R5 R5 K41 ["OnInvoke"]
      152 CALL                             R5 3 0
      153 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+13]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        6 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        8 GETTABLEKS                       R4 R0 K3 ["state"]
       10 GETTABLEKS                       R3 R4 K4 ["enabled"]
       12 NAMECALL                         R1 R1 K5 ["SetActive"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 7
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R9 R10 K5 ["new"]
       28 CALL                             R9 0 1
       29 GETTABLEKS                       R10 R0 K7 ["localization"]
       31 GETTABLEKS                       R11 R0 K8 ["analytics"]
       33 GETUPVAL                         R13 4
       34 GETTABLEKS                       R12 R13 K5 ["new"]
       36 GETTABLEKS                       R13 R0 K9 ["design"]
       38 CALL                             R12 1 1
       39 GETTABLEKS                       R13 R0 K10 ["webViewManagerContext"]
       41 SETLIST                          R6 R7 7 [1]
       43 DUPTABLE                         R7 K12 [{"MainWidget"}]
       44 GETUPVAL                         R9 5
       45 GETTABLEKS                       R8 R9 K13 ["createElement"]
       47 GETUPVAL                         R9 6
       48 NEWTABLE                         R10 16 0
       50 LOADK                            R11 K14 ["CreatorConfig"]
       51 SETTABLEKS                       R11 R10 K15 ["Id"]
       53 SETTABLEKS                       R4 R10 K16 ["Enabled"]
       55 GETTABLEKS                       R11 R0 K7 ["localization"]
       57 LOADK                            R13 K2 ["Plugin"]
       58 LOADK                            R14 K17 ["Name"]
       59 NAMECALL                         R11 R11 K18 ["getText"]
       61 CALL                             R11 3 1
       62 SETTABLEKS                       R11 R10 K19 ["Title"]
       64 GETIMPORT                        R11 K23 [Enum.ZIndexBehavior.Sibling]
       66 SETTABLEKS                       R11 R10 K21 ["ZIndexBehavior"]
       68 GETIMPORT                        R11 K26 [Enum.InitialDockState.Bottom]
       70 SETTABLEKS                       R11 R10 K24 ["InitialDockState"]
       72 GETIMPORT                        R11 K28 [Vector2.new]
       74 LOADN                            R12 128
       75 LOADN                            R13 224
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K29 ["Size"]
       79 GETIMPORT                        R11 K28 [Vector2.new]
       81 LOADN                            R12 250
       82 LOADN                            R13 200
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K30 ["MinSize"]
       86 GETTABLEKS                       R11 R0 K31 ["onClose"]
       88 SETTABLEKS                       R11 R10 K32 ["OnClose"]
       90 LOADB                            R11 1
       91 SETTABLEKS                       R11 R10 K33 ["ShouldRestore"]
       93 GETTABLEKS                       R11 R0 K34 ["onRestore"]
       95 SETTABLEKS                       R11 R10 K35 ["OnWidgetRestored"]
       97 GETTABLEKS                       R12 R1 K36 ["PluginLoaderContext"]
       99 GETTABLEKS                       R11 R12 K37 ["mainDockWidget"]
      101 SETTABLEKS                       R11 R10 K38 ["Widget"]
      103 GETTABLEKS                       R11 R0 K39 ["onDockWidgetCreated"]
      105 SETTABLEKS                       R11 R10 K40 ["OnWidgetCreated"]
      107 GETTABLEKS                       R11 R0 K9 ["design"]
      109 SETTABLEKS                       R11 R10 K41 ["PluginDesign"]
      111 GETUPVAL                         R13 5
      112 GETTABLEKS                       R12 R13 K42 ["Change"]
      114 GETTABLEKS                       R11 R12 K16 ["Enabled"]
      116 GETTABLEKS                       R12 R0 K43 ["onWidgetEnabledChanged"]
      118 SETTABLE                         R12 R10 R11
      119 DUPTABLE                         R11 K45 [{"FoundationProvider"}]
      120 GETUPVAL                         R13 5
      121 GETTABLEKS                       R12 R13 K13 ["createElement"]
      123 GETUPVAL                         R13 7
      124 DUPTABLE                         R14 K47 [{"onStyleSheetChange"}]
      125 GETTABLEKS                       R15 R0 K48 ["onFoundationStyleSheetChange"]
      127 SETTABLEKS                       R15 R14 K46 ["onStyleSheetChange"]
      129 DUPTABLE                         R15 K49 [{"CreatorConfig"}]
      130 JUMPIFNOT                        R4 ; [+36]
      131 GETTABLEKS                       R17 R2 K50 ["dockWidgetCreated"]
      133 JUMPIFNOT                        R17 ; [+33]
      134 GETUPVAL                         R17 5
      135 GETTABLEKS                       R16 R17 K13 ["createElement"]
      137 GETUPVAL                         R17 8
      138 DUPTABLE                         R18 K54 [{"Plugin", "PluginManagerComponent", "retryTitle", "retryButtonText"}]
      139 GETTABLEKS                       R19 R1 K2 ["Plugin"]
      141 SETTABLEKS                       R19 R18 K2 ["Plugin"]
      143 GETTABLEKS                       R19 R1 K51 ["PluginManagerComponent"]
      145 SETTABLEKS                       R19 R18 K51 ["PluginManagerComponent"]
      147 GETTABLEKS                       R19 R0 K7 ["localization"]
      149 LOADK                            R21 K55 ["Common"]
      150 LOADK                            R22 K56 ["ConfigLoadFailed"]
      151 NAMECALL                         R19 R19 K18 ["getText"]
      153 CALL                             R19 3 1
      154 SETTABLEKS                       R19 R18 K52 ["retryTitle"]
      156 GETTABLEKS                       R19 R0 K7 ["localization"]
      158 LOADK                            R21 K55 ["Common"]
      159 LOADK                            R22 K57 ["Retry"]
      160 NAMECALL                         R19 R19 K18 ["getText"]
      162 CALL                             R19 3 1
      163 SETTABLEKS                       R19 R18 K53 ["retryButtonText"]
      165 CALL                             R16 2 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R16
      168 SETTABLEKS                       R16 R15 K14 ["CreatorConfig"]
      170 CALL                             R12 3 1
      171 SETTABLEKS                       R12 R11 K44 ["FoundationProvider"]
      173 CALL                             R8 3 1
      174 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
      176 CALL                             R5 2 -1
      177 RETURN                           R5 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["actionActivatedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["actionActivatedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
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
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R5 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R6 R2 K12 ["UI"]
       34 GETTABLEKS                       R5 R6 K13 ["DockWidget"]
       36 GETTABLEKS                       R6 R2 K14 ["ContextServices"]
       38 GETTABLEKS                       R7 R6 K15 ["Plugin"]
       40 GETTABLEKS                       R8 R6 K16 ["Mouse"]
       42 GETTABLEKS                       R9 R6 K17 ["Design"]
       44 GETTABLEKS                       R12 R2 K18 ["Style"]
       46 GETTABLEKS                       R11 R12 K19 ["Themes"]
       48 GETTABLEKS                       R10 R11 K20 ["StudioTheme"]
       50 GETTABLEKS                       R12 R3 K21 ["Util"]
       52 GETTABLEKS                       R11 R12 K22 ["StudioUri"]
       54 GETTABLEKS                       R13 R2 K23 ["Styling"]
       56 GETTABLEKS                       R12 R13 K24 ["registerPluginStyles"]
       58 GETTABLEKS                       R16 R0 K25 ["Src"]
       60 GETTABLEKS                       R15 R16 K26 ["Resources"]
       62 GETTABLEKS                       R14 R15 K27 ["Localization"]
       64 GETTABLEKS                       R13 R14 K28 ["SourceStrings"]
       66 GETTABLEKS                       R17 R0 K25 ["Src"]
       68 GETTABLEKS                       R16 R17 K26 ["Resources"]
       70 GETTABLEKS                       R15 R16 K27 ["Localization"]
       72 GETTABLEKS                       R14 R15 K29 ["LocalizedStrings"]
       74 GETTABLEKS                       R16 R0 K25 ["Src"]
       76 GETTABLEKS                       R15 R16 K10 ["Components"]
       78 GETIMPORT                        R16 K5 [require]
       80 GETTABLEKS                       R17 R15 K30 ["CreatorConfigWebViewConnectorWrapper"]
       82 CALL                             R16 1 1
       83 GETIMPORT                        R17 K5 [require]
       85 GETTABLEKS                       R20 R0 K31 ["Bin"]
       87 GETTABLEKS                       R19 R20 K32 ["Common"]
       89 GETTABLEKS                       R18 R19 K33 ["defineLuaFlags"]
       91 CALL                             R17 1 1
       92 GETTABLEKS                       R18 R17 K34 ["getFFlagRegisterActionsPluginLoader"]
       94 CALL                             R18 0 1
       95 GETTABLEKS                       R19 R17 K35 ["getFFlagEnableCreatorConfigSystemMenu"]
       97 CALL                             R19 0 1
       98 GETTABLEKS                       R20 R17 K36 ["getFFlagOnCloseSkipActionTrigger"]
      100 CALL                             R20 0 1
      101 GETTABLEKS                       R21 R17 K37 ["getFFlagCreatorConfigDmChangedListener"]
      103 CALL                             R21 0 1
      104 OR                               R22 R18 R19
      105 GETTABLEKS                       R23 R1 K38 ["PureComponent"]
      107 LOADK                            R25 K39 ["MainPlugin"]
      108 NAMECALL                         R23 R23 K40 ["extend"]
      110 CALL                             R23 2 1
      111 GETIMPORT                        R25 K5 [require]
      113 GETTABLEKS                       R27 R0 K6 ["Packages"]
      115 GETTABLEKS                       R26 R27 K41 ["WebView"]
      117 CALL                             R25 1 1
      118 GETTABLEKS                       R24 R25 K42 ["WebViewManagerContext"]
      120 GETTABLEKS                       R25 R11 K43 ["fromAction"]
      122 LOADK                            R26 K2 ["CreatorConfig"]
      123 LOADK                            R27 K44 ["Toggle"]
      124 CALL                             R25 2 1
      125 LOADB                            R26 0
      126 NEWCLOSURE                       R27 P0
      127 CAPTURE                          VAL R24
      128 CAPTURE                          VAL R22
      129 CAPTURE                          VAL R25
      130 CAPTURE                          VAL R20
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R21
      138 CAPTURE                          REF R26
      139 SETTABLEKS                       R27 R23 K45 ["init"]
      141 DUPCLOSURE                       R27 K46 [PROTO_16]
      142 CAPTURE                          VAL R22
      143 SETTABLEKS                       R27 R23 K47 ["didUpdate"]
      145 DUPCLOSURE                       R27 K48 [PROTO_17]
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R16
      155 SETTABLEKS                       R27 R23 K49 ["render"]
      157 DUPCLOSURE                       R27 K50 [PROTO_18]
      158 SETTABLEKS                       R27 R23 K51 ["willUnmount"]
      160 CLOSEUPVALS                      R26
      161 RETURN                           R23 1
