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
        1 GETTABLEKS                       R0 R0 K0 ["FilterInstances"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R0 R0 K1 ["ActivateAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"filterInstances"}]
        2 SETTABLEKS                       R0 R3 K0 ["filterInstances"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["state"]
       10 GETTABLEKS                       R1 R1 K4 ["enabled"]
       12 JUMPIF                           R1 ; [+5]
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R3 2
       15 NAMECALL                         R1 R1 K5 ["ActivateAsync"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        6 LOADK                            R3 K2 ["FilterInstances"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R1 R1 K3 ["OnInvoke"]
       13 CALL                             R1 3 1
       14 SETTABLEKS                       R1 R0 K4 ["filterInstancesConnection"]
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_15:
        0 DUPTABLE                         R2 K3 [{[1] = False, ["filterInstances"]}]
        1 GETTABLEKS                       R3 R1 K4 ["FilterInstances"]
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K2 ["filterInstances"]
        8 SETTABLEKS                       R2 R0 K5 ["state"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K6 ["toggleEnabled"]
       14 GETTABLEKS                       R2 R1 K7 ["Plugin"]
       16 LOADK                            R4 K8 ["Actions"]
       17 NAMECALL                         R2 R2 K9 ["GetPluginComponent"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K12 [task.spawn]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U0
       26 CALL                             R3 1 0
       27 GETTABLEKS                       R3 R1 K4 ["FilterInstances"]
       29 JUMPIFNOT                        R3 ; [+7]
       30 GETIMPORT                        R3 K12 [task.spawn]
       32 NEWCLOSURE                       R4 P2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U0
       36 CALL                             R3 1 0
       37 GETIMPORT                        R3 K12 [task.spawn]
       39 NEWCLOSURE                       R4 P3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U0
       43 CALL                             R3 1 0
       44 NEWCLOSURE                       R3 P4
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          UPVAL U0
       48 SETTABLEKS                       R3 R0 K13 ["onClose"]
       50 NEWCLOSURE                       R3 P5
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R2
       53 CAPTURE                          UPVAL U0
       54 SETTABLEKS                       R3 R0 K14 ["onRestore"]
       56 NEWCLOSURE                       R3 P6
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R2
       59 CAPTURE                          UPVAL U0
       60 SETTABLEKS                       R3 R0 K15 ["onWidgetEnabledChanged"]
       62 NEWCLOSURE                       R3 P7
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R3 R0 K16 ["onDockWidgetCreated"]
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R3 R3 K17 ["Localization"]
       69 GETTABLEKS                       R3 R3 K18 ["new"]
       71 DUPTABLE                         R4 K23 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager"}]
       72 GETUPVAL                         R5 2
       73 SETTABLEKS                       R5 R4 K19 ["stringResourceTable"]
       75 GETUPVAL                         R5 3
       76 SETTABLEKS                       R5 R4 K20 ["translationResourceTable"]
       78 CALL                             R3 1 1
       79 SETTABLEKS                       R3 R0 K24 ["localizationLEGACY"]
       81 GETUPVAL                         R3 4
       82 GETTABLEKS                       R3 R3 K17 ["Localization"]
       84 GETTABLEKS                       R3 R3 K18 ["new"]
       86 DUPTABLE                         R4 K23 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager"}]
       87 GETUPVAL                         R5 2
       88 SETTABLEKS                       R5 R4 K19 ["stringResourceTable"]
       90 GETUPVAL                         R5 3
       91 SETTABLEKS                       R5 R4 K20 ["translationResourceTable"]
       93 CALL                             R3 1 1
       94 SETTABLEKS                       R3 R0 K25 ["localization"]
       96 GETUPVAL                         R3 1
       97 GETTABLEKS                       R3 R3 K26 ["Analytics"]
       99 GETTABLEKS                       R3 R3 K18 ["new"]
      101 DUPCLOSURE                       R4 K27 [PROTO_14]
      102 NEWTABLE                         R5 0 0
      104 CALL                             R3 2 1
      105 SETTABLEKS                       R3 R0 K28 ["analytics"]
      107 GETUPVAL                         R3 5
      108 GETUPVAL                         R4 6
      109 GETTABLEKS                       R4 R4 K29 ["get"]
      111 CALL                             R4 0 1
      112 GETTABLEKS                       R5 R1 K7 ["Plugin"]
      114 CALL                             R3 2 1
      115 SETTABLEKS                       R3 R0 K30 ["guestInterface"]
      117 GETUPVAL                         R3 7
      118 GETTABLEKS                       R3 R3 K18 ["new"]
      120 CALL                             R3 0 1
      121 SETTABLEKS                       R3 R0 K31 ["DEPRECATED_stylizer"]
      123 GETUPVAL                         R3 8
      124 GETTABLEKS                       R3 R3 K32 ["Util"]
      126 GETTABLEKS                       R3 R3 K33 ["createFoundationDesignBinding"]
      128 CALL                             R3 0 2
      129 SETTABLEKS                       R4 R0 K34 ["onFoundationStyleSheetChange"]
      131 GETUPVAL                         R5 9
      132 GETTABLEKS                       R6 R1 K7 ["Plugin"]
      134 LOADNIL                          R7
      135 LOADNIL                          R8
      136 NEWTABLE                         R9 0 1
      138 MOVE                             R10 R3
      139 SETLIST                          R9 R10 1 [1]
      141 CALL                             R5 4 1
      142 SETTABLEKS                       R5 R0 K35 ["design"]
      144 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["MemStorageService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 LOADK                            R3 K4 ["InputActionManagerLoaded"]
        7 NAMECALL                         R1 R1 K5 ["SetItem"]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R1 R0 K6 ["props"]
       12 GETTABLEKS                       R1 R1 K7 ["Plugin"]
       14 LOADK                            R3 K8 ["Opened"]
       15 NAMECALL                         R1 R1 K9 ["Invoke"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R5 R2 K4 ["filterInstances"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["provide"]
       13 NEWTABLE                         R7 0 4
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K6 ["new"]
       18 MOVE                             R9 R3
       19 CALL                             R8 1 1
       20 GETUPVAL                         R9 2
       21 GETTABLEKS                       R9 R9 K6 ["new"]
       23 NAMECALL                         R10 R3 K7 ["getMouse"]
       25 CALL                             R10 1 -1
       26 CALL                             R9 -1 1
       27 GETUPVAL                         R10 3
       28 GETTABLEKS                       R10 R10 K6 ["new"]
       30 GETTABLEKS                       R11 R0 K8 ["design"]
       32 CALL                             R10 1 1
       33 GETTABLEKS                       R11 R0 K9 ["localizationLEGACY"]
       35 SETLIST                          R7 R8 4 [1]
       37 DUPTABLE                         R8 K11 [{"MainWidget"}]
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R9 R9 K12 ["createElement"]
       41 GETUPVAL                         R10 5
       42 NEWTABLE                         R11 16 0
       44 LOADK                            R12 K13 ["InputActionManager"]
       45 SETTABLEKS                       R12 R11 K14 ["Id"]
       47 SETTABLEKS                       R4 R11 K15 ["Enabled"]
       49 GETTABLEKS                       R12 R0 K16 ["localization"]
       51 LOADK                            R14 K2 ["Plugin"]
       52 LOADK                            R15 K17 ["Name"]
       53 NAMECALL                         R12 R12 K18 ["getText"]
       55 CALL                             R12 3 1
       56 SETTABLEKS                       R12 R11 K19 ["Title"]
       58 GETIMPORT                        R12 K23 [Enum.ZIndexBehavior.Sibling]
       60 SETTABLEKS                       R12 R11 K21 ["ZIndexBehavior"]
       62 GETIMPORT                        R12 K26 [Enum.InitialDockState.Bottom]
       64 SETTABLEKS                       R12 R11 K24 ["InitialDockState"]
       66 GETIMPORT                        R12 K28 [Vector2.new]
       68 LOADN                            R13 640
       69 LOADN                            R14 480
       70 CALL                             R12 2 1
       71 SETTABLEKS                       R12 R11 K29 ["Size"]
       73 GETIMPORT                        R12 K28 [Vector2.new]
       75 LOADN                            R13 250
       76 LOADN                            R14 200
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K30 ["MinSize"]
       80 GETTABLEKS                       R12 R0 K31 ["onClose"]
       82 SETTABLEKS                       R12 R11 K32 ["OnClose"]
       84 LOADB                            R12 1
       85 SETTABLEKS                       R12 R11 K33 ["ShouldRestore"]
       87 GETTABLEKS                       R12 R0 K34 ["onRestore"]
       89 SETTABLEKS                       R12 R11 K35 ["OnWidgetRestored"]
       91 GETTABLEKS                       R12 R1 K36 ["PluginLoaderContext"]
       93 GETTABLEKS                       R12 R12 K37 ["mainDockWidget"]
       95 SETTABLEKS                       R12 R11 K38 ["Widget"]
       97 GETTABLEKS                       R12 R0 K39 ["onDockWidgetCreated"]
       99 SETTABLEKS                       R12 R11 K40 ["OnWidgetCreated"]
      101 GETTABLEKS                       R12 R0 K8 ["design"]
      103 SETTABLEKS                       R12 R11 K41 ["PluginDesign"]
      105 GETUPVAL                         R12 4
      106 GETTABLEKS                       R12 R12 K42 ["Change"]
      108 GETTABLEKS                       R12 R12 K15 ["Enabled"]
      110 GETTABLEKS                       R13 R0 K43 ["onWidgetEnabledChanged"]
      112 SETTABLE                         R13 R11 R12
      113 DUPTABLE                         R12 K45 [{"ContextStack"}]
      114 GETUPVAL                         R13 4
      115 GETTABLEKS                       R13 R13 K12 ["createElement"]
      117 GETUPVAL                         R14 6
      118 DUPTABLE                         R15 K47 [{"providers"}]
      119 NEWTABLE                         R16 0 8
      121 GETUPVAL                         R17 4
      122 GETTABLEKS                       R17 R17 K12 ["createElement"]
      124 GETUPVAL                         R18 7
      125 GETTABLEKS                       R18 R18 K48 ["Provider"]
      127 CALL                             R17 1 1
      128 GETUPVAL                         R18 4
      129 GETTABLEKS                       R18 R18 K12 ["createElement"]
      131 GETUPVAL                         R19 8
      132 DUPTABLE                         R20 K50 [{"onStyleSheetChange"}]
      133 GETTABLEKS                       R21 R0 K51 ["onFoundationStyleSheetChange"]
      135 SETTABLEKS                       R21 R20 K49 ["onStyleSheetChange"]
      137 CALL                             R18 2 1
      138 GETUPVAL                         R19 4
      139 GETTABLEKS                       R19 R19 K12 ["createElement"]
      141 GETUPVAL                         R20 9
      142 GETTABLEKS                       R20 R20 K48 ["Provider"]
      144 DUPTABLE                         R21 K53 [{"value"}]
      145 GETUPVAL                         R22 10
      146 GETTABLEKS                       R22 R22 K54 ["get"]
      148 CALL                             R22 0 1
      149 SETTABLEKS                       R22 R21 K52 ["value"]
      151 CALL                             R19 2 1
      152 GETUPVAL                         R20 4
      153 GETTABLEKS                       R20 R20 K12 ["createElement"]
      155 GETUPVAL                         R21 11
      156 GETTABLEKS                       R21 R21 K48 ["Provider"]
      158 DUPTABLE                         R22 K56 [{"plugin"}]
      159 SETTABLEKS                       R3 R22 K55 ["plugin"]
      161 CALL                             R20 2 1
      162 GETUPVAL                         R21 4
      163 GETTABLEKS                       R21 R21 K12 ["createElement"]
      165 GETUPVAL                         R22 12
      166 GETTABLEKS                       R22 R22 K48 ["Provider"]
      168 DUPTABLE                         R23 K53 [{"value"}]
      169 GETTABLEKS                       R24 R0 K57 ["guestInterface"]
      171 SETTABLEKS                       R24 R23 K52 ["value"]
      173 CALL                             R21 2 1
      174 GETUPVAL                         R22 4
      175 GETTABLEKS                       R22 R22 K12 ["createElement"]
      177 GETUPVAL                         R23 13
      178 GETTABLEKS                       R23 R23 K48 ["Provider"]
      180 DUPTABLE                         R24 K58 [{"localization"}]
      181 GETTABLEKS                       R25 R0 K16 ["localization"]
      183 SETTABLEKS                       R25 R24 K16 ["localization"]
      185 CALL                             R22 2 1
      186 GETUPVAL                         R23 4
      187 GETTABLEKS                       R23 R23 K12 ["createElement"]
      189 GETUPVAL                         R24 14
      190 GETTABLEKS                       R24 R24 K59 ["AnalyticsTelemetryServiceProvider"]
      192 CALL                             R23 1 1
      193 GETUPVAL                         R24 4
      194 GETTABLEKS                       R24 R24 K12 ["createElement"]
      196 GETUPVAL                         R25 15
      197 GETTABLEKS                       R25 R25 K48 ["Provider"]
      199 CALL                             R24 1 -1
      200 SETLIST                          R16 R17 -1 [1]
      202 SETTABLEKS                       R16 R15 K46 ["providers"]
      204 DUPTABLE                         R16 K61 [{"App"}]
      205 GETUPVAL                         R17 4
      206 GETTABLEKS                       R17 R17 K12 ["createElement"]
      208 GETUPVAL                         R18 16
      209 DUPTABLE                         R19 K63 [{"filterInstances", "plugin", "pluginEnabled"}]
      210 SETTABLEKS                       R5 R19 K4 ["filterInstances"]
      212 SETTABLEKS                       R3 R19 K55 ["plugin"]
      214 SETTABLEKS                       R4 R19 K62 ["pluginEnabled"]
      216 CALL                             R17 2 1
      217 SETTABLEKS                       R17 R16 K60 ["App"]
      219 CALL                             R13 3 1
      220 SETTABLEKS                       R13 R12 K44 ["ContextStack"]
      222 CALL                             R9 3 1
      223 SETTABLEKS                       R9 R8 K10 ["MainWidget"]
      225 CALL                             R6 2 -1
      226 RETURN                           R6 -1

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
       16 GETTABLEKS                       R1 R0 K3 ["guestInterface"]
       18 NAMECALL                         R1 R1 K4 ["Destroy"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K4 ["Destroy"]
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Components"]
       37 GETTABLEKS                       R5 R5 K12 ["FoundationProviderAdapter"]
       39 GETTABLEKS                       R6 R2 K13 ["ContextStack"]
       41 GETTABLEKS                       R7 R4 K14 ["Contexts"]
       43 GETTABLEKS                       R7 R7 K15 ["Localization"]
       45 GETTABLEKS                       R8 R3 K16 ["UI"]
       47 GETTABLEKS                       R8 R8 K17 ["DockWidget"]
       49 GETTABLEKS                       R9 R3 K18 ["ContextServices"]
       51 GETTABLEKS                       R10 R9 K19 ["Plugin"]
       53 GETTABLEKS                       R11 R9 K20 ["Mouse"]
       55 GETTABLEKS                       R12 R9 K21 ["Design"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R0 K6 ["Packages"]
       61 GETTABLEKS                       R14 R14 K22 ["Analytics"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETTABLEKS                       R15 R0 K23 ["Src"]
       68 GETTABLEKS                       R15 R15 K14 ["Contexts"]
       70 GETTABLEKS                       R15 R15 K24 ["Settings"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K5 [require]
       75 GETTABLEKS                       R16 R0 K23 ["Src"]
       77 GETTABLEKS                       R16 R16 K14 ["Contexts"]
       79 GETTABLEKS                       R16 R16 K25 ["Telemetry"]
       81 CALL                             R15 1 1
       82 GETTABLEKS                       R16 R3 K26 ["Style"]
       84 GETTABLEKS                       R16 R16 K27 ["Themes"]
       86 GETTABLEKS                       R16 R16 K28 ["StudioTheme"]
       88 GETTABLEKS                       R17 R4 K29 ["Util"]
       90 GETTABLEKS                       R17 R17 K30 ["StudioUri"]
       92 GETTABLEKS                       R18 R3 K31 ["Styling"]
       94 GETTABLEKS                       R18 R18 K32 ["registerPluginStyles"]
       96 GETTABLEKS                       R19 R0 K23 ["Src"]
       98 GETTABLEKS                       R19 R19 K33 ["Resources"]
      100 GETTABLEKS                       R19 R19 K15 ["Localization"]
      102 GETTABLEKS                       R19 R19 K34 ["SourceStrings"]
      104 GETTABLEKS                       R20 R0 K23 ["Src"]
      106 GETTABLEKS                       R20 R20 K33 ["Resources"]
      108 GETTABLEKS                       R20 R20 K15 ["Localization"]
      110 GETTABLEKS                       R20 R20 K35 ["LocalizedStrings"]
      112 GETIMPORT                        R21 K5 [require]
      114 GETTABLEKS                       R22 R0 K23 ["Src"]
      116 GETTABLEKS                       R22 R22 K36 ["Host"]
      118 GETTABLEKS                       R22 R22 K37 ["App"]
      120 CALL                             R21 1 1
      121 GETIMPORT                        R22 K5 [require]
      123 GETTABLEKS                       R23 R0 K38 ["Bin"]
      125 GETTABLEKS                       R23 R23 K39 ["Common"]
      127 GETTABLEKS                       R23 R23 K40 ["StudioNetworking"]
      129 CALL                             R22 1 1
      130 GETIMPORT                        R23 K5 [require]
      132 GETTABLEKS                       R24 R0 K23 ["Src"]
      134 GETTABLEKS                       R24 R24 K41 ["Guest"]
      136 GETTABLEKS                       R24 R24 K42 ["createGuestInterface"]
      138 CALL                             R23 1 1
      139 GETIMPORT                        R24 K5 [require]
      141 GETTABLEKS                       R25 R0 K23 ["Src"]
      143 GETTABLEKS                       R25 R25 K14 ["Contexts"]
      145 GETTABLEKS                       R25 R25 K43 ["DatamodelConfiguration"]
      147 CALL                             R24 1 1
      148 GETIMPORT                        R25 K5 [require]
      150 GETTABLEKS                       R26 R0 K23 ["Src"]
      152 GETTABLEKS                       R26 R26 K14 ["Contexts"]
      154 GETTABLEKS                       R26 R26 K44 ["Networking"]
      156 CALL                             R25 1 1
      157 GETIMPORT                        R26 K5 [require]
      159 GETTABLEKS                       R27 R0 K23 ["Src"]
      161 GETTABLEKS                       R27 R27 K14 ["Contexts"]
      163 GETTABLEKS                       R27 R27 K41 ["Guest"]
      165 CALL                             R26 1 1
      166 GETTABLEKS                       R27 R1 K45 ["PureComponent"]
      168 LOADK                            R29 K46 ["MainPlugin"]
      169 NAMECALL                         R27 R27 K47 ["extend"]
      171 CALL                             R27 2 1
      172 GETTABLEKS                       R28 R17 K48 ["fromAction"]
      174 LOADK                            R29 K2 ["InputActionManager"]
      175 LOADK                            R30 K49 ["Toggle"]
      176 CALL                             R28 2 1
      177 DUPCLOSURE                       R29 K50 [PROTO_15]
      178 CAPTURE                          VAL R28
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R7
      183 CAPTURE                          VAL R23
      184 CAPTURE                          VAL R22
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R18
      188 SETTABLEKS                       R29 R27 K51 ["init"]
      190 DUPCLOSURE                       R29 K52 [PROTO_16]
      191 SETTABLEKS                       R29 R27 K53 ["didMount"]
      193 DUPCLOSURE                       R29 K54 [PROTO_17]
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R11
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R6
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R5
      203 CAPTURE                          VAL R25
      204 CAPTURE                          VAL R22
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R26
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R13
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R21
      211 SETTABLEKS                       R29 R27 K55 ["render"]
      213 DUPCLOSURE                       R29 K56 [PROTO_18]
      214 CAPTURE                          VAL R22
      215 SETTABLEKS                       R29 R27 K57 ["willUnmount"]
      217 RETURN                           R27 1
