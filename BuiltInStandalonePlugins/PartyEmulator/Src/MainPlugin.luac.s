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
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["state"]
        5 GETTABLEKS                       R0 R1 K1 ["enabled"]
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETIMPORT                        R0 K4 [task.spawn]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CALL                             R0 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 DUPTABLE                         R2 K5 [{"enabled"}]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K1 ["enabled"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

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
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K0 ["props"]
       23 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
       25 GETTABLEKS                       R0 R1 K6 ["mainButtonClickedSignal"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
       30 NAMECALL                         R0 R0 K4 ["Connect"]
       32 CALL                             R0 2 0
       33 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_12:
        0 DUPTABLE                         R2 K1 [{"enabled"}]
        1 LOADB                            R3 1
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       10 GETTABLEKS                       R2 R1 K4 ["Plugin"]
       12 LOADK                            R4 K5 ["Actions"]
       13 NAMECALL                         R2 R2 K6 ["GetPluginComponent"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 0
       17 JUMPIFNOT                        R3 ; [+7]
       18 GETIMPORT                        R3 K9 [task.spawn]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U1
       24 CALL                             R3 1 0
       25 NEWCLOSURE                       R3 P2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U1
       30 SETTABLEKS                       R3 R0 K10 ["onClose"]
       32 NEWCLOSURE                       R3 P3
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U1
       37 SETTABLEKS                       R3 R0 K11 ["onRestore"]
       39 NEWCLOSURE                       R3 P4
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U1
       44 SETTABLEKS                       R3 R0 K12 ["onWidgetEnabledChanged"]
       46 NEWCLOSURE                       R3 P5
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R3 R0 K13 ["onDockWidgetCreated"]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R4 R5 K14 ["Localization"]
       54 GETTABLEKS                       R3 R4 K15 ["new"]
       56 DUPTABLE                         R4 K19 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       57 GETUPVAL                         R5 3
       58 SETTABLEKS                       R5 R4 K16 ["stringResourceTable"]
       60 GETUPVAL                         R5 4
       61 SETTABLEKS                       R5 R4 K17 ["translationResourceTable"]
       63 LOADK                            R5 K20 ["PartyEmulator"]
       64 SETTABLEKS                       R5 R4 K18 ["pluginName"]
       66 CALL                             R3 1 1
       67 SETTABLEKS                       R3 R0 K21 ["localization"]
       69 GETUPVAL                         R5 2
       70 GETTABLEKS                       R4 R5 K22 ["Analytics"]
       72 GETTABLEKS                       R3 R4 K15 ["new"]
       74 DUPCLOSURE                       R4 K23 [PROTO_11]
       75 NEWTABLE                         R5 0 0
       77 CALL                             R3 2 1
       78 SETTABLEKS                       R3 R0 K24 ["analytics"]
       80 GETUPVAL                         R4 5
       81 GETTABLEKS                       R3 R4 K15 ["new"]
       83 CALL                             R3 0 1
       84 SETTABLEKS                       R3 R0 K25 ["DEPRECATED_stylizer"]
       86 GETUPVAL                         R5 6
       87 GETTABLEKS                       R4 R5 K26 ["Util"]
       89 GETTABLEKS                       R3 R4 K27 ["createFoundationDesignBinding"]
       91 CALL                             R3 0 2
       92 SETTABLEKS                       R4 R0 K28 ["onFoundationStyleSheetChange"]
       94 GETUPVAL                         R5 7
       95 GETTABLEKS                       R6 R1 K4 ["Plugin"]
       97 LOADNIL                          R7
       98 LOADNIL                          R8
       99 NEWTABLE                         R9 0 1
      101 MOVE                             R10 R3
      102 SETLIST                          R9 R10 1 [1]
      104 CALL                             R5 4 1
      105 SETTABLEKS                       R5 R0 K29 ["design"]
      107 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 5
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETTABLEKS                       R9 R0 K7 ["localization"]
       27 GETTABLEKS                       R10 R0 K8 ["analytics"]
       29 GETUPVAL                         R12 3
       30 GETTABLEKS                       R11 R12 K5 ["new"]
       32 GETTABLEKS                       R12 R0 K9 ["design"]
       34 CALL                             R11 1 -1
       35 SETLIST                          R6 R7 -1 [1]
       37 DUPTABLE                         R7 K11 [{"MainWidget"}]
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R8 R9 K12 ["createElement"]
       41 GETUPVAL                         R9 5
       42 NEWTABLE                         R10 16 0
       44 LOADK                            R11 K13 ["PartyEmulator"]
       45 SETTABLEKS                       R11 R10 K14 ["Id"]
       47 SETTABLEKS                       R4 R10 K15 ["Enabled"]
       49 GETTABLEKS                       R11 R0 K7 ["localization"]
       51 LOADK                            R13 K2 ["Plugin"]
       52 LOADK                            R14 K16 ["Name"]
       53 NAMECALL                         R11 R11 K17 ["getText"]
       55 CALL                             R11 3 1
       56 SETTABLEKS                       R11 R10 K18 ["Title"]
       58 GETIMPORT                        R11 K22 [Enum.ZIndexBehavior.Sibling]
       60 SETTABLEKS                       R11 R10 K20 ["ZIndexBehavior"]
       62 GETIMPORT                        R11 K25 [Enum.InitialDockState.Bottom]
       64 SETTABLEKS                       R11 R10 K23 ["InitialDockState"]
       66 GETIMPORT                        R11 K27 [Vector2.new]
       68 LOADN                            R12 128
       69 LOADN                            R13 224
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K28 ["Size"]
       73 GETIMPORT                        R11 K27 [Vector2.new]
       75 LOADN                            R12 250
       76 LOADN                            R13 200
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K29 ["MinSize"]
       80 GETTABLEKS                       R11 R0 K30 ["onClose"]
       82 SETTABLEKS                       R11 R10 K31 ["OnClose"]
       84 LOADB                            R11 1
       85 SETTABLEKS                       R11 R10 K32 ["ShouldRestore"]
       87 GETTABLEKS                       R11 R0 K33 ["onRestore"]
       89 SETTABLEKS                       R11 R10 K34 ["OnWidgetRestored"]
       91 GETTABLEKS                       R12 R1 K35 ["PluginLoaderContext"]
       93 GETTABLEKS                       R11 R12 K36 ["mainDockWidget"]
       95 SETTABLEKS                       R11 R10 K37 ["Widget"]
       97 GETTABLEKS                       R11 R0 K38 ["onDockWidgetCreated"]
       99 SETTABLEKS                       R11 R10 K39 ["OnWidgetCreated"]
      101 GETTABLEKS                       R11 R0 K9 ["design"]
      103 SETTABLEKS                       R11 R10 K40 ["PluginDesign"]
      105 GETUPVAL                         R13 4
      106 GETTABLEKS                       R12 R13 K41 ["Change"]
      108 GETTABLEKS                       R11 R12 K15 ["Enabled"]
      110 GETTABLEKS                       R12 R0 K42 ["onWidgetEnabledChanged"]
      112 SETTABLE                         R12 R10 R11
      113 DUPTABLE                         R11 K44 [{"FoundationProvider"}]
      114 GETUPVAL                         R13 4
      115 GETTABLEKS                       R12 R13 K12 ["createElement"]
      117 GETUPVAL                         R13 6
      118 DUPTABLE                         R14 K46 [{"onStyleSheetChange"}]
      119 GETTABLEKS                       R15 R0 K47 ["onFoundationStyleSheetChange"]
      121 SETTABLEKS                       R15 R14 K45 ["onStyleSheetChange"]
      123 DUPTABLE                         R15 K50 [{"EmulationEventsHandler", "PartyContextProvider"}]
      124 GETUPVAL                         R17 4
      125 GETTABLEKS                       R16 R17 K12 ["createElement"]
      127 GETUPVAL                         R17 7
      128 CALL                             R16 1 1
      129 SETTABLEKS                       R16 R15 K48 ["EmulationEventsHandler"]
      131 GETUPVAL                         R17 4
      132 GETTABLEKS                       R16 R17 K12 ["createElement"]
      134 GETUPVAL                         R18 8
      135 GETTABLEKS                       R17 R18 K51 ["provider"]
      137 NEWTABLE                         R18 0 0
      139 DUPTABLE                         R19 K53 [{"App"}]
      140 GETUPVAL                         R21 4
      141 GETTABLEKS                       R20 R21 K12 ["createElement"]
      143 GETUPVAL                         R21 9
      144 NEWTABLE                         R22 0 0
      146 CALL                             R20 2 1
      147 SETTABLEKS                       R20 R19 K52 ["App"]
      149 CALL                             R16 3 1
      150 SETTABLEKS                       R16 R15 K49 ["PartyContextProvider"]
      152 CALL                             R12 3 1
      153 SETTABLEKS                       R12 R11 K43 ["FoundationProvider"]
      155 CALL                             R8 3 1
      156 SETTABLEKS                       R8 R7 K10 ["MainWidget"]
      158 CALL                             R5 2 -1
      159 RETURN                           R5 -1

PROTO_15:
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
        3 LOADK                            R2 K2 ["PartyEmulator"]
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
       23 GETTABLEKS                       R6 R0 K9 ["Bin"]
       25 GETTABLEKS                       R5 R6 K10 ["Common"]
       27 GETTABLEKS                       R4 R5 K11 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R4 K13 ["Components"]
       39 GETTABLEKS                       R5 R6 K14 ["FoundationProviderAdapter"]
       41 GETTABLEKS                       R7 R4 K15 ["Util"]
       43 GETTABLEKS                       R6 R7 K16 ["StudioUri"]
       45 GETTABLEKS                       R8 R2 K17 ["UI"]
       47 GETTABLEKS                       R7 R8 K18 ["DockWidget"]
       49 GETTABLEKS                       R8 R2 K19 ["ContextServices"]
       51 GETTABLEKS                       R9 R8 K20 ["Plugin"]
       53 GETTABLEKS                       R10 R8 K21 ["Mouse"]
       55 GETTABLEKS                       R11 R8 K22 ["Design"]
       57 GETTABLEKS                       R14 R2 K23 ["Style"]
       59 GETTABLEKS                       R13 R14 K24 ["Themes"]
       61 GETTABLEKS                       R12 R13 K25 ["StudioTheme"]
       63 GETTABLEKS                       R14 R2 K26 ["Styling"]
       65 GETTABLEKS                       R13 R14 K27 ["registerPluginStyles"]
       67 GETTABLEKS                       R17 R0 K28 ["Src"]
       69 GETTABLEKS                       R16 R17 K29 ["Resources"]
       71 GETTABLEKS                       R15 R16 K30 ["Localization"]
       73 GETTABLEKS                       R14 R15 K31 ["SourceStrings"]
       75 GETTABLEKS                       R18 R0 K28 ["Src"]
       77 GETTABLEKS                       R17 R18 K29 ["Resources"]
       79 GETTABLEKS                       R16 R17 K30 ["Localization"]
       81 GETTABLEKS                       R15 R16 K32 ["LocalizedStrings"]
       83 GETTABLEKS                       R17 R0 K28 ["Src"]
       85 GETTABLEKS                       R16 R17 K13 ["Components"]
       87 GETTABLEKS                       R18 R0 K28 ["Src"]
       89 GETTABLEKS                       R17 R18 K33 ["Contexts"]
       91 GETIMPORT                        R18 K5 [require]
       93 GETTABLEKS                       R19 R16 K34 ["App"]
       95 CALL                             R18 1 1
       96 GETIMPORT                        R19 K5 [require]
       98 GETTABLEKS                       R20 R16 K35 ["EmulationEventsHandler"]
      100 CALL                             R19 1 1
      101 GETIMPORT                        R20 K5 [require]
      103 GETTABLEKS                       R21 R17 K36 ["PartyContext"]
      105 CALL                             R20 1 1
      106 GETTABLEKS                       R21 R3 K37 ["getFFlagRegisterActionsPluginLoader"]
      108 CALL                             R21 0 1
      109 GETTABLEKS                       R22 R1 K38 ["PureComponent"]
      111 LOADK                            R24 K39 ["MainPlugin"]
      112 NAMECALL                         R22 R22 K40 ["extend"]
      114 CALL                             R22 2 1
      115 GETTABLEKS                       R23 R6 K41 ["fromAction"]
      117 LOADK                            R24 K2 ["PartyEmulator"]
      118 LOADK                            R25 K42 ["Toggle"]
      119 CALL                             R23 2 1
      120 DUPCLOSURE                       R24 K43 [PROTO_12]
      121 CAPTURE                          VAL R21
      122 CAPTURE                          VAL R23
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R13
      129 SETTABLEKS                       R24 R22 K44 ["init"]
      131 DUPCLOSURE                       R24 K45 [PROTO_13]
      132 CAPTURE                          VAL R21
      133 SETTABLEKS                       R24 R22 K46 ["didUpdate"]
      135 DUPCLOSURE                       R24 K47 [PROTO_14]
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R18
      146 SETTABLEKS                       R24 R22 K48 ["render"]
      148 DUPCLOSURE                       R24 K49 [PROTO_15]
      149 SETTABLEKS                       R24 R22 K50 ["willUnmount"]
      151 RETURN                           R22 1
