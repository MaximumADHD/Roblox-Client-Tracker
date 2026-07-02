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
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETIMPORT                        R0 K4 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 JUMPIFEQ                         R0 R1 ; [+7]
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["enabled"]
        7 JUMPIFEQ                         R1 R2 ; [+7]
        9 GETIMPORT                        R1 K5 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R1 R1 K2 ["actionTriggeredSignals"]
        7 GETTABLEN                        R0 R1 1
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["toggleEnabled"]
       12 NAMECALL                         R2 R0 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K5 ["actionActivatedConnection"]
       17 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_12:
        0 DUPTABLE                         R2 K2 [{[1] = True}]
        1 SETTABLEKS                       R2 R0 K3 ["state"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K4 ["toggleEnabled"]
        7 GETTABLEKS                       R2 R1 K5 ["Plugin"]
        9 LOADK                            R4 K6 ["Actions"]
       10 NAMECALL                         R2 R2 K7 ["GetPluginComponent"]
       12 CALL                             R2 2 1
       13 GETIMPORT                        R3 K10 [task.spawn]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U0
       19 CALL                             R3 1 0
       20 NEWCLOSURE                       R3 P2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R3 R0 K11 ["onClose"]
       26 NEWCLOSURE                       R3 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R3 R0 K12 ["onRestore"]
       32 NEWCLOSURE                       R3 P4
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R3 R0 K13 ["onWidgetEnabledChanged"]
       38 NEWCLOSURE                       R3 P5
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R3 R0 K14 ["onDockWidgetCreated"]
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K15 ["Localization"]
       45 GETTABLEKS                       R3 R3 K16 ["new"]
       47 DUPTABLE                         R4 K21 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "PartyEmulator"}]
       48 GETUPVAL                         R5 2
       49 SETTABLEKS                       R5 R4 K17 ["stringResourceTable"]
       51 GETUPVAL                         R5 3
       52 SETTABLEKS                       R5 R4 K18 ["translationResourceTable"]
       54 CALL                             R3 1 1
       55 SETTABLEKS                       R3 R0 K22 ["localization"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K23 ["Analytics"]
       60 GETTABLEKS                       R3 R3 K16 ["new"]
       62 DUPCLOSURE                       R4 K24 [PROTO_11]
       63 NEWTABLE                         R5 0 0
       65 CALL                             R3 2 1
       66 SETTABLEKS                       R3 R0 K25 ["analytics"]
       68 GETUPVAL                         R3 4
       69 GETTABLEKS                       R3 R3 K16 ["new"]
       71 CALL                             R3 0 1
       72 SETTABLEKS                       R3 R0 K26 ["DEPRECATED_stylizer"]
       74 GETUPVAL                         R3 5
       75 GETTABLEKS                       R3 R3 K27 ["Util"]
       77 GETTABLEKS                       R3 R3 K28 ["createFoundationDesignBinding"]
       79 CALL                             R3 0 2
       80 SETTABLEKS                       R4 R0 K29 ["onFoundationStyleSheetChange"]
       82 GETUPVAL                         R5 6
       83 GETTABLEKS                       R6 R1 K5 ["Plugin"]
       85 LOADNIL                          R7
       86 LOADNIL                          R8
       87 NEWTABLE                         R9 0 1
       89 MOVE                             R10 R3
       90 SETLIST                          R9 R10 1 [1]
       92 CALL                             R5 4 1
       93 SETTABLEKS                       R5 R0 K30 ["design"]
       95 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 5
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETTABLEKS                       R9 R0 K7 ["localization"]
       27 GETTABLEKS                       R10 R0 K8 ["analytics"]
       29 GETUPVAL                         R11 3
       30 GETTABLEKS                       R11 R11 K5 ["new"]
       32 GETTABLEKS                       R12 R0 K9 ["design"]
       34 CALL                             R11 1 -1
       35 SETLIST                          R6 R7 -1 [1]
       37 DUPTABLE                         R7 K11 [{"MainWidget"}]
       38 GETUPVAL                         R8 4
       39 GETTABLEKS                       R8 R8 K12 ["createElement"]
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
       68 LOADN                            R12 640
       69 LOADN                            R13 480
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
       91 GETTABLEKS                       R11 R1 K35 ["PluginLoaderContext"]
       93 GETTABLEKS                       R11 R11 K36 ["mainDockWidget"]
       95 SETTABLEKS                       R11 R10 K37 ["Widget"]
       97 GETTABLEKS                       R11 R0 K38 ["onDockWidgetCreated"]
       99 SETTABLEKS                       R11 R10 K39 ["OnWidgetCreated"]
      101 GETTABLEKS                       R11 R0 K9 ["design"]
      103 SETTABLEKS                       R11 R10 K40 ["PluginDesign"]
      105 GETUPVAL                         R11 4
      106 GETTABLEKS                       R11 R11 K41 ["Change"]
      108 GETTABLEKS                       R11 R11 K15 ["Enabled"]
      110 GETTABLEKS                       R12 R0 K42 ["onWidgetEnabledChanged"]
      112 SETTABLE                         R12 R10 R11
      113 DUPTABLE                         R11 K44 [{"FoundationProvider"}]
      114 GETUPVAL                         R12 4
      115 GETTABLEKS                       R12 R12 K12 ["createElement"]
      117 GETUPVAL                         R13 6
      118 DUPTABLE                         R14 K46 [{"onStyleSheetChange"}]
      119 GETTABLEKS                       R15 R0 K47 ["onFoundationStyleSheetChange"]
      121 SETTABLEKS                       R15 R14 K45 ["onStyleSheetChange"]
      123 DUPTABLE                         R15 K50 [{"EmulationEventsHandler", "PartyContextProvider"}]
      124 GETUPVAL                         R16 4
      125 GETTABLEKS                       R16 R16 K12 ["createElement"]
      127 GETUPVAL                         R17 7
      128 CALL                             R16 1 1
      129 SETTABLEKS                       R16 R15 K48 ["EmulationEventsHandler"]
      131 GETUPVAL                         R16 4
      132 GETTABLEKS                       R16 R16 K12 ["createElement"]
      134 GETUPVAL                         R17 8
      135 GETTABLEKS                       R17 R17 K51 ["provider"]
      137 NEWTABLE                         R18 0 0
      139 DUPTABLE                         R19 K53 [{"App"}]
      140 GETUPVAL                         R20 4
      141 GETTABLEKS                       R20 R20 K12 ["createElement"]
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

PROTO_14:
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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["FoundationProviderAdapter"]
       32 GETTABLEKS                       R5 R3 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["StudioUri"]
       36 GETTABLEKS                       R6 R2 K14 ["UI"]
       38 GETTABLEKS                       R6 R6 K15 ["DockWidget"]
       40 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       42 GETTABLEKS                       R8 R7 K17 ["Plugin"]
       44 GETTABLEKS                       R9 R7 K18 ["Mouse"]
       46 GETTABLEKS                       R10 R7 K19 ["Design"]
       48 GETTABLEKS                       R11 R2 K20 ["Style"]
       50 GETTABLEKS                       R11 R11 K21 ["Themes"]
       52 GETTABLEKS                       R11 R11 K22 ["StudioTheme"]
       54 GETTABLEKS                       R12 R2 K23 ["Styling"]
       56 GETTABLEKS                       R12 R12 K24 ["registerPluginStyles"]
       58 GETTABLEKS                       R13 R0 K25 ["Src"]
       60 GETTABLEKS                       R13 R13 K26 ["Resources"]
       62 GETTABLEKS                       R13 R13 K27 ["Localization"]
       64 GETTABLEKS                       R13 R13 K28 ["SourceStrings"]
       66 GETTABLEKS                       R14 R0 K25 ["Src"]
       68 GETTABLEKS                       R14 R14 K26 ["Resources"]
       70 GETTABLEKS                       R14 R14 K27 ["Localization"]
       72 GETTABLEKS                       R14 R14 K29 ["LocalizedStrings"]
       74 GETTABLEKS                       R15 R0 K25 ["Src"]
       76 GETTABLEKS                       R15 R15 K10 ["Components"]
       78 GETTABLEKS                       R16 R0 K25 ["Src"]
       80 GETTABLEKS                       R16 R16 K30 ["Contexts"]
       82 GETIMPORT                        R17 K5 [require]
       84 GETTABLEKS                       R18 R15 K31 ["App"]
       86 CALL                             R17 1 1
       87 GETIMPORT                        R18 K5 [require]
       89 GETTABLEKS                       R19 R15 K32 ["EmulationEventsHandler"]
       91 CALL                             R18 1 1
       92 GETIMPORT                        R19 K5 [require]
       94 GETTABLEKS                       R20 R16 K33 ["PartyContext"]
       96 CALL                             R19 1 1
       97 GETTABLEKS                       R20 R1 K34 ["PureComponent"]
       99 LOADK                            R22 K35 ["MainPlugin"]
      100 NAMECALL                         R20 R20 K36 ["extend"]
      102 CALL                             R20 2 1
      103 GETTABLEKS                       R21 R5 K37 ["fromAction"]
      105 LOADK                            R22 K2 ["PartyEmulator"]
      106 LOADK                            R23 K38 ["Toggle"]
      107 CALL                             R21 2 1
      108 DUPCLOSURE                       R22 K39 [PROTO_12]
      109 CAPTURE                          VAL R21
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R12
      116 SETTABLEKS                       R22 R20 K40 ["init"]
      118 DUPCLOSURE                       R22 K41 [PROTO_13]
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R17
      129 SETTABLEKS                       R22 R20 K42 ["render"]
      131 DUPCLOSURE                       R22 K43 [PROTO_14]
      132 SETTABLEKS                       R22 R20 K44 ["willUnmount"]
      134 RETURN                           R20 1
