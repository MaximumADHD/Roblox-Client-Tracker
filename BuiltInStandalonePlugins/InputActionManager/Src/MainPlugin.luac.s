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
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 JUMPIFNOT                        R4 ; [+6]
        4 GETTABLEKS                       R3 R1 K4 ["FilterInstances"]
        6 JUMPIF                           R3 ; [+4]
        7 NEWTABLE                         R3 0 0
        9 JUMP                             ; [+1]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K2 ["filterInstances"]
       13 SETTABLEKS                       R2 R0 K5 ["state"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K6 ["toggleEnabled"]
       19 GETTABLEKS                       R2 R1 K7 ["Plugin"]
       21 LOADK                            R4 K8 ["Actions"]
       22 NAMECALL                         R2 R2 K9 ["GetPluginComponent"]
       24 CALL                             R2 2 1
       25 GETIMPORT                        R3 K12 [task.spawn]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U1
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 0
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+17]
       35 GETTABLEKS                       R3 R1 K4 ["FilterInstances"]
       37 JUMPIFNOT                        R3 ; [+7]
       38 GETIMPORT                        R3 K12 [task.spawn]
       40 NEWCLOSURE                       R4 P2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U1
       44 CALL                             R3 1 0
       45 GETIMPORT                        R3 K12 [task.spawn]
       47 NEWCLOSURE                       R4 P3
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U1
       51 CALL                             R3 1 0
       52 NEWCLOSURE                       R3 P4
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U1
       56 SETTABLEKS                       R3 R0 K13 ["onClose"]
       58 NEWCLOSURE                       R3 P5
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U1
       62 SETTABLEKS                       R3 R0 K14 ["onRestore"]
       64 NEWCLOSURE                       R3 P6
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U1
       68 SETTABLEKS                       R3 R0 K15 ["onWidgetEnabledChanged"]
       70 NEWCLOSURE                       R3 P7
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R3 R0 K16 ["onDockWidgetCreated"]
       74 GETUPVAL                         R3 2
       75 GETTABLEKS                       R3 R3 K17 ["Localization"]
       77 GETTABLEKS                       R3 R3 K18 ["new"]
       79 DUPTABLE                         R4 K23 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager"}]
       80 GETUPVAL                         R5 3
       81 SETTABLEKS                       R5 R4 K19 ["stringResourceTable"]
       83 GETUPVAL                         R5 4
       84 SETTABLEKS                       R5 R4 K20 ["translationResourceTable"]
       86 CALL                             R3 1 1
       87 SETTABLEKS                       R3 R0 K24 ["localizationLEGACY"]
       89 GETUPVAL                         R3 5
       90 GETTABLEKS                       R3 R3 K17 ["Localization"]
       92 GETTABLEKS                       R3 R3 K18 ["new"]
       94 DUPTABLE                         R4 K23 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "InputActionManager"}]
       95 GETUPVAL                         R5 3
       96 SETTABLEKS                       R5 R4 K19 ["stringResourceTable"]
       98 GETUPVAL                         R5 4
       99 SETTABLEKS                       R5 R4 K20 ["translationResourceTable"]
      101 CALL                             R3 1 1
      102 SETTABLEKS                       R3 R0 K25 ["localization"]
      104 GETUPVAL                         R3 2
      105 GETTABLEKS                       R3 R3 K26 ["Analytics"]
      107 GETTABLEKS                       R3 R3 K18 ["new"]
      109 DUPCLOSURE                       R4 K27 [PROTO_14]
      110 NEWTABLE                         R5 0 0
      112 CALL                             R3 2 1
      113 SETTABLEKS                       R3 R0 K28 ["analytics"]
      115 GETUPVAL                         R3 6
      116 GETUPVAL                         R4 7
      117 GETTABLEKS                       R4 R4 K29 ["get"]
      119 CALL                             R4 0 1
      120 GETTABLEKS                       R5 R1 K7 ["Plugin"]
      122 CALL                             R3 2 1
      123 SETTABLEKS                       R3 R0 K30 ["guestInterface"]
      125 GETUPVAL                         R3 8
      126 GETTABLEKS                       R3 R3 K18 ["new"]
      128 CALL                             R3 0 1
      129 SETTABLEKS                       R3 R0 K31 ["DEPRECATED_stylizer"]
      131 GETUPVAL                         R3 9
      132 GETTABLEKS                       R3 R3 K32 ["Util"]
      134 GETTABLEKS                       R3 R3 K33 ["createFoundationDesignBinding"]
      136 CALL                             R3 0 2
      137 SETTABLEKS                       R4 R0 K34 ["onFoundationStyleSheetChange"]
      139 GETUPVAL                         R5 10
      140 GETTABLEKS                       R6 R1 K7 ["Plugin"]
      142 LOADNIL                          R7
      143 LOADNIL                          R8
      144 NEWTABLE                         R9 0 1
      146 MOVE                             R10 R3
      147 SETLIST                          R9 R10 1 [1]
      149 CALL                             R5 4 1
      150 SETTABLEKS                       R5 R0 K35 ["design"]
      152 RETURN                           R0 0

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
      121 GETUPVAL                         R18 7
      122 CALL                             R18 0 1
      123 JUMPIFNOT                        R18 ; [+8]
      124 GETUPVAL                         R17 4
      125 GETTABLEKS                       R17 R17 K12 ["createElement"]
      127 GETUPVAL                         R18 8
      128 GETTABLEKS                       R18 R18 K48 ["Provider"]
      130 CALL                             R17 1 1
      131 JUMP                             ; [+7]
      132 GETUPVAL                         R17 4
      133 GETTABLEKS                       R17 R17 K12 ["createElement"]
      135 GETUPVAL                         R18 4
      136 GETTABLEKS                       R18 R18 K49 ["Fragment"]
      138 CALL                             R17 1 1
      139 GETUPVAL                         R18 4
      140 GETTABLEKS                       R18 R18 K12 ["createElement"]
      142 GETUPVAL                         R19 9
      143 DUPTABLE                         R20 K51 [{"onStyleSheetChange"}]
      144 GETTABLEKS                       R21 R0 K52 ["onFoundationStyleSheetChange"]
      146 SETTABLEKS                       R21 R20 K50 ["onStyleSheetChange"]
      148 CALL                             R18 2 1
      149 GETUPVAL                         R19 4
      150 GETTABLEKS                       R19 R19 K12 ["createElement"]
      152 GETUPVAL                         R20 10
      153 GETTABLEKS                       R20 R20 K48 ["Provider"]
      155 DUPTABLE                         R21 K54 [{"value"}]
      156 GETUPVAL                         R22 11
      157 GETTABLEKS                       R22 R22 K55 ["get"]
      159 CALL                             R22 0 1
      160 SETTABLEKS                       R22 R21 K53 ["value"]
      162 CALL                             R19 2 1
      163 GETUPVAL                         R20 4
      164 GETTABLEKS                       R20 R20 K12 ["createElement"]
      166 GETUPVAL                         R21 12
      167 GETTABLEKS                       R21 R21 K48 ["Provider"]
      169 DUPTABLE                         R22 K57 [{"plugin"}]
      170 SETTABLEKS                       R3 R22 K56 ["plugin"]
      172 CALL                             R20 2 1
      173 GETUPVAL                         R21 4
      174 GETTABLEKS                       R21 R21 K12 ["createElement"]
      176 GETUPVAL                         R22 13
      177 GETTABLEKS                       R22 R22 K48 ["Provider"]
      179 DUPTABLE                         R23 K54 [{"value"}]
      180 GETTABLEKS                       R24 R0 K58 ["guestInterface"]
      182 SETTABLEKS                       R24 R23 K53 ["value"]
      184 CALL                             R21 2 1
      185 GETUPVAL                         R22 4
      186 GETTABLEKS                       R22 R22 K12 ["createElement"]
      188 GETUPVAL                         R23 14
      189 GETTABLEKS                       R23 R23 K48 ["Provider"]
      191 DUPTABLE                         R24 K59 [{"localization"}]
      192 GETTABLEKS                       R25 R0 K16 ["localization"]
      194 SETTABLEKS                       R25 R24 K16 ["localization"]
      196 CALL                             R22 2 1
      197 GETUPVAL                         R23 4
      198 GETTABLEKS                       R23 R23 K12 ["createElement"]
      200 GETUPVAL                         R24 15
      201 GETTABLEKS                       R24 R24 K60 ["AnalyticsTelemetryServiceProvider"]
      203 CALL                             R23 1 1
      204 GETUPVAL                         R24 4
      205 GETTABLEKS                       R24 R24 K12 ["createElement"]
      207 GETUPVAL                         R25 16
      208 GETTABLEKS                       R25 R25 K48 ["Provider"]
      210 CALL                             R24 1 -1
      211 SETLIST                          R16 R17 -1 [1]
      213 SETTABLEKS                       R16 R15 K46 ["providers"]
      215 DUPTABLE                         R16 K62 [{"App"}]
      216 GETUPVAL                         R17 4
      217 GETTABLEKS                       R17 R17 K12 ["createElement"]
      219 GETUPVAL                         R18 17
      220 DUPTABLE                         R19 K64 [{"filterInstances", "plugin", "pluginEnabled"}]
      221 GETUPVAL                         R21 18
      222 CALL                             R21 0 1
      223 JUMPIFNOT                        R21 ; [+2]
      224 MOVE                             R20 R5
      225 JUMP                             ; [+1]
      226 LOADNIL                          R20
      227 SETTABLEKS                       R20 R19 K4 ["filterInstances"]
      229 SETTABLEKS                       R3 R19 K56 ["plugin"]
      231 SETTABLEKS                       R4 R19 K63 ["pluginEnabled"]
      233 CALL                             R17 2 1
      234 SETTABLEKS                       R17 R16 K61 ["App"]
      236 CALL                             R13 3 1
      237 SETTABLEKS                       R13 R12 K44 ["ContextStack"]
      239 CALL                             R9 3 1
      240 SETTABLEKS                       R9 R8 K10 ["MainWidget"]
      242 CALL                             R6 2 -1
      243 RETURN                           R6 -1

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
      166 GETTABLEKS                       R27 R0 K23 ["Src"]
      168 GETTABLEKS                       R27 R27 K45 ["Flags"]
      170 GETIMPORT                        R28 K5 [require]
      172 GETTABLEKS                       R29 R27 K46 ["getFFlagIAMSavedFilters"]
      174 CALL                             R28 1 1
      175 GETIMPORT                        R29 K5 [require]
      177 GETTABLEKS                       R30 R27 K47 ["getFFlagIAMOpenFromProperties"]
      179 CALL                             R29 1 1
      180 GETTABLEKS                       R30 R1 K48 ["PureComponent"]
      182 LOADK                            R32 K49 ["MainPlugin"]
      183 NAMECALL                         R30 R30 K50 ["extend"]
      185 CALL                             R30 2 1
      186 GETTABLEKS                       R31 R17 K51 ["fromAction"]
      188 LOADK                            R32 K2 ["InputActionManager"]
      189 LOADK                            R33 K52 ["Toggle"]
      190 CALL                             R31 2 1
      191 DUPCLOSURE                       R32 K53 [PROTO_15]
      192 CAPTURE                          VAL R29
      193 CAPTURE                          VAL R31
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R22
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R18
      203 SETTABLEKS                       R32 R30 K54 ["init"]
      205 DUPCLOSURE                       R32 K55 [PROTO_16]
      206 SETTABLEKS                       R32 R30 K56 ["didMount"]
      208 DUPCLOSURE                       R32 K57 [PROTO_17]
      209 CAPTURE                          VAL R9
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R11
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R1
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R6
      216 CAPTURE                          VAL R28
      217 CAPTURE                          VAL R14
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R24
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R13
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R21
      227 CAPTURE                          VAL R29
      228 SETTABLEKS                       R32 R30 K58 ["render"]
      230 DUPCLOSURE                       R32 K59 [PROTO_18]
      231 CAPTURE                          VAL R22
      232 SETTABLEKS                       R32 R30 K60 ["willUnmount"]
      234 RETURN                           R30 1
