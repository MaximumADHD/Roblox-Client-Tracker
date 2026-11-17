PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["MATERIAL_GENERATOR_ENABLED"]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K2 [tostring]
        8 CALL                             R4 1 1
        9 NAMECALL                         R1 R1 K3 ["setItem"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 2
       13 DUPTABLE                         R3 K5 [{"enabled"}]
       14 SETTABLEKS                       R0 R3 K4 ["enabled"]
       16 NAMECALL                         R1 R1 K6 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R2 R2 K2 ["enabled"]
        8 NOT                              R1 R2
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K5 [{["explicitlyOpened"] = True}]
       12 NAMECALL                         R0 R0 K6 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["explicitlyOpened"]
        5 JUMPIF                           R1 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["setEnabled"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["Enabled"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 DUPTABLE                         R2 K3 [{["explicitlyOpened"] = True}]
        7 NAMECALL                         R0 R0 K4 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R4 K3 [{[1] = False, ["explicitlyOpened"] = False}]
        1 NAMECALL                         R2 R0 K4 ["setState"]
        3 CALL                             R2 2 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K5 ["setEnabled"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K6 ["toggleEnabled"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K7 ["onClose"]
       18 NEWCLOSURE                       R2 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K8 ["onRestore"]
       22 NEWCLOSURE                       R2 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K9 ["onDockWidgetCreated"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R2 R0 K10 ["onWidgetEnabledChanged"]
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K11 ["Localization"]
       33 GETTABLEKS                       R2 R2 K12 ["new"]
       35 DUPTABLE                         R3 K17 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MaterialGenerator"}]
       36 GETUPVAL                         R4 3
       37 SETTABLEKS                       R4 R3 K13 ["stringResourceTable"]
       39 GETUPVAL                         R4 4
       40 SETTABLEKS                       R4 R3 K14 ["translationResourceTable"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R0 K18 ["localization"]
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R2 R2 K19 ["Analytics"]
       48 GETTABLEKS                       R2 R2 K12 ["new"]
       50 GETUPVAL                         R3 5
       51 CALL                             R2 1 1
       52 SETTABLEKS                       R2 R0 K20 ["analytics"]
       54 GETUPVAL                         R2 6
       55 GETTABLEKS                       R2 R2 K12 ["new"]
       57 CALL                             R2 0 1
       58 SETTABLEKS                       R2 R0 K21 ["studioServices"]
       60 GETUPVAL                         R2 0
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R4 R4 K22 ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"]
       64 NEWCLOSURE                       R5 P6
       65 CAPTURE                          VAL R0
       66 NAMECALL                         R2 R2 K23 ["Bind"]
       68 CALL                             R2 3 0
       69 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["studioServices"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["studioServices"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 NEWTABLE                         R5 0 5
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K4 ["new"]
       13 MOVE                             R7 R3
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K4 ["new"]
       18 NAMECALL                         R8 R3 K5 ["getMouse"]
       20 CALL                             R8 1 -1
       21 CALL                             R7 -1 1
       22 GETUPVAL                         R8 2
       23 CALL                             R8 0 1
       24 GETTABLEKS                       R9 R0 K6 ["localization"]
       26 GETTABLEKS                       R10 R0 K7 ["analytics"]
       28 SETLIST                          R5 R6 5 [1]
       30 GETTABLEKS                       R8 R0 K8 ["studioServices"]
       32 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       34 MOVE                             R7 R5
       35 GETIMPORT                        R6 K11 [table.insert]
       37 CALL                             R6 2 0
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R6 R6 K12 ["provide"]
       41 MOVE                             R7 R5
       42 DUPTABLE                         R8 K14 [{"MainWidget"}]
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K15 ["createElement"]
       46 GETUPVAL                         R10 5
       47 NEWTABLE                         R11 16 0
       49 LOADK                            R12 K16 ["MaterialGenerator"]
       50 SETTABLEKS                       R12 R11 K17 ["Id"]
       52 SETTABLEKS                       R4 R11 K18 ["Enabled"]
       54 GETTABLEKS                       R12 R1 K19 ["pluginLoaderContext"]
       56 GETTABLEKS                       R12 R12 K20 ["mainDockWidget"]
       58 SETTABLEKS                       R12 R11 K21 ["Widget"]
       60 GETTABLEKS                       R12 R0 K6 ["localization"]
       62 LOADK                            R14 K2 ["Plugin"]
       63 LOADK                            R15 K22 ["Name"]
       64 NAMECALL                         R12 R12 K23 ["getText"]
       66 CALL                             R12 3 1
       67 SETTABLEKS                       R12 R11 K24 ["Title"]
       69 GETIMPORT                        R12 K28 [Enum.ZIndexBehavior.Sibling]
       71 SETTABLEKS                       R12 R11 K26 ["ZIndexBehavior"]
       73 GETIMPORT                        R12 K31 [Enum.InitialDockState.Left]
       75 SETTABLEKS                       R12 R11 K29 ["InitialDockState"]
       77 GETUPVAL                         R12 6
       78 GETTABLEKS                       R12 R12 K32 ["PLUGIN_SIZE"]
       80 SETTABLEKS                       R12 R11 K33 ["Size"]
       82 GETUPVAL                         R12 6
       83 GETTABLEKS                       R12 R12 K34 ["PLUGIN_MIN_SIZE"]
       85 SETTABLEKS                       R12 R11 K35 ["MinSize"]
       87 GETTABLEKS                       R12 R0 K36 ["onClose"]
       89 SETTABLEKS                       R12 R11 K37 ["OnClose"]
       91 LOADB                            R12 1
       92 SETTABLEKS                       R12 R11 K38 ["ShouldRestore"]
       94 GETTABLEKS                       R12 R0 K39 ["onRestore"]
       96 SETTABLEKS                       R12 R11 K40 ["OnWidgetRestored"]
       98 GETTABLEKS                       R12 R0 K41 ["onDockWidgetCreated"]
      100 SETTABLEKS                       R12 R11 K42 ["OnWidgetCreated"]
      102 GETUPVAL                         R12 7
      103 GETTABLEKS                       R12 R12 K43 ["Change"]
      105 GETTABLEKS                       R12 R12 K18 ["Enabled"]
      107 GETTABLEKS                       R13 R0 K44 ["onWidgetEnabledChanged"]
      109 SETTABLE                         R13 R11 R12
      110 DUPTABLE                         R12 K46 [{"Content"}]
      111 GETUPVAL                         R13 4
      112 GETTABLEKS                       R13 R13 K15 ["createElement"]
      114 GETUPVAL                         R14 8
      115 DUPTABLE                         R15 K48 [{"providers"}]
      116 NEWTABLE                         R16 0 4
      118 GETUPVAL                         R17 4
      119 GETTABLEKS                       R17 R17 K15 ["createElement"]
      121 GETUPVAL                         R18 9
      122 CALL                             R17 1 1
      123 GETUPVAL                         R18 4
      124 GETTABLEKS                       R18 R18 K15 ["createElement"]
      126 GETUPVAL                         R19 10
      127 CALL                             R18 1 1
      128 GETUPVAL                         R19 4
      129 GETTABLEKS                       R19 R19 K15 ["createElement"]
      131 GETUPVAL                         R20 11
      132 CALL                             R19 1 1
      133 GETUPVAL                         R20 4
      134 GETTABLEKS                       R20 R20 K15 ["createElement"]
      136 GETUPVAL                         R21 12
      137 DUPTABLE                         R22 K49 [{"enabled"}]
      138 SETTABLEKS                       R4 R22 K3 ["enabled"]
      140 CALL                             R20 2 -1
      141 SETLIST                          R16 R17 -1 [1]
      143 SETTABLEKS                       R16 R15 K47 ["providers"]
      145 DUPTABLE                         R16 K51 [{"App"}]
      146 JUMPIFNOT                        R4 ; [+6]
      147 GETUPVAL                         R17 4
      148 GETTABLEKS                       R17 R17 K15 ["createElement"]
      150 GETUPVAL                         R18 13
      151 CALL                             R17 1 1
      152 JUMP                             ; [+1]
      153 LOADNIL                          R17
      154 SETTABLEKS                       R17 R16 K50 ["App"]
      156 CALL                             R13 3 1
      157 SETTABLEKS                       R13 R12 K45 ["Content"]
      159 CALL                             R9 3 1
      160 SETTABLEKS                       R9 R8 K13 ["MainWidget"]
      162 CALL                             R6 2 -1
      163 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["MaterialFramework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K5 ["Packages"]
       32 GETTABLEKS                       R5 R5 K9 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K5 ["Packages"]
       39 GETTABLEKS                       R6 R6 K10 ["ReactRoblox"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K4 [require]
       44 GETTABLEKS                       R7 R0 K11 ["SharedPluginConstants"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R4 K12 ["ContextStack"]
       49 GETTABLEKS                       R8 R1 K13 ["UI"]
       51 GETTABLEKS                       R9 R8 K14 ["DockWidget"]
       53 GETTABLEKS                       R10 R1 K15 ["ContextServices"]
       55 GETTABLEKS                       R11 R10 K16 ["Plugin"]
       57 GETTABLEKS                       R12 R10 K17 ["Mouse"]
       59 GETTABLEKS                       R13 R2 K18 ["Context"]
       61 GETTABLEKS                       R13 R13 K19 ["StudioServices"]
       63 GETIMPORT                        R14 K21 [game]
       65 LOADK                            R16 K22 ["MemStorageService"]
       66 NAMECALL                         R14 R14 K23 ["GetService"]
       68 CALL                             R14 2 1
       69 GETTABLEKS                       R15 R0 K24 ["Src"]
       71 GETTABLEKS                       R15 R15 K25 ["Components"]
       73 GETIMPORT                        R16 K4 [require]
       75 GETTABLEKS                       R17 R15 K26 ["App"]
       77 CALL                             R16 1 1
       78 GETIMPORT                        R17 K4 [require]
       80 GETTABLEKS                       R18 R15 K27 ["GenerationProvider"]
       82 CALL                             R17 1 1
       83 GETIMPORT                        R18 K4 [require]
       85 GETTABLEKS                       R19 R15 K28 ["GeneratedMaterialsProvider"]
       87 CALL                             R18 1 1
       88 GETIMPORT                        R19 K4 [require]
       90 GETTABLEKS                       R20 R15 K29 ["PluginSettingsProvider"]
       92 CALL                             R19 1 1
       93 GETIMPORT                        R20 K4 [require]
       95 GETTABLEKS                       R21 R15 K30 ["PreviewProvider"]
       97 CALL                             R20 1 1
       98 GETIMPORT                        R21 K4 [require]
      100 GETTABLEKS                       R22 R0 K24 ["Src"]
      102 GETTABLEKS                       R22 R22 K31 ["Resources"]
      104 GETTABLEKS                       R22 R22 K32 ["MakeTheme"]
      106 CALL                             R21 1 1
      107 GETIMPORT                        R22 K4 [require]
      109 GETTABLEKS                       R23 R0 K24 ["Src"]
      111 GETTABLEKS                       R23 R23 K31 ["Resources"]
      113 GETTABLEKS                       R23 R23 K33 ["createAnalyticsHandlers"]
      115 CALL                             R22 1 1
      116 GETTABLEKS                       R23 R0 K24 ["Src"]
      118 GETTABLEKS                       R23 R23 K31 ["Resources"]
      120 GETTABLEKS                       R23 R23 K34 ["Localization"]
      122 GETTABLEKS                       R23 R23 K35 ["SourceStrings"]
      124 GETTABLEKS                       R24 R0 K24 ["Src"]
      126 GETTABLEKS                       R24 R24 K31 ["Resources"]
      128 GETTABLEKS                       R24 R24 K34 ["Localization"]
      130 GETTABLEKS                       R24 R24 K36 ["LocalizedStrings"]
      132 GETIMPORT                        R25 K4 [require]
      134 GETTABLEKS                       R26 R0 K24 ["Src"]
      136 GETTABLEKS                       R26 R26 K37 ["Util"]
      138 GETTABLEKS                       R26 R26 K38 ["Constants"]
      140 CALL                             R25 1 1
      141 GETTABLEKS                       R26 R3 K39 ["PureComponent"]
      143 LOADK                            R28 K40 ["MainPlugin"]
      144 NAMECALL                         R26 R26 K41 ["extend"]
      146 CALL                             R26 2 1
      147 DUPCLOSURE                       R27 K42 [PROTO_7]
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R23
      152 CAPTURE                          VAL R24
      153 CAPTURE                          VAL R22
      154 CAPTURE                          VAL R13
      155 SETTABLEKS                       R27 R26 K43 ["init"]
      157 DUPCLOSURE                       R27 K44 [PROTO_8]
      158 SETTABLEKS                       R27 R26 K45 ["willUnmount"]
      160 DUPCLOSURE                       R27 K46 [PROTO_9]
      161 SETTABLEKS                       R27 R26 K47 ["didUpdate"]
      163 DUPCLOSURE                       R27 K48 [PROTO_10]
      164 CAPTURE                          VAL R11
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R9
      170 CAPTURE                          VAL R25
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R16
      178 SETTABLEKS                       R27 R26 K49 ["render"]
      180 RETURN                           R26 1
