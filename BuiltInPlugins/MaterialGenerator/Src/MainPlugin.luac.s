PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["MATERIAL_GENERATOR_ENABLED"]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R5 R0
        9 GETIMPORT                        R4 K2 [tostring]
       11 CALL                             R4 1 1
       12 NAMECALL                         R1 R1 K3 ["setItem"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 3
       16 DUPTABLE                         R3 K5 [{"enabled"}]
       17 SETTABLEKS                       R0 R3 K4 ["enabled"]
       19 NAMECALL                         R1 R1 K6 ["setState"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+19]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["state"]
        9 GETTABLEKS                       R2 R2 K2 ["enabled"]
       11 NOT                              R1 R2
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 DUPTABLE                         R2 K4 [{"explicitlyOpened"}]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K3 ["explicitlyOpened"]
       18 NAMECALL                         R0 R0 K5 ["setState"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 1
       23 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K1 ["state"]
       28 GETTABLEKS                       R2 R2 K2 ["enabled"]
       30 NOT                              R1 R2
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["state"]
        6 GETTABLEKS                       R1 R1 K1 ["explicitlyOpened"]
        8 JUMPIF                           R1 ; [+11]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["setEnabled"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K2 ["setEnabled"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

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
        6 DUPTABLE                         R2 K2 [{"explicitlyOpened"}]
        7 LOADB                            R3 1
        8 SETTABLEKS                       R3 R2 K1 ["explicitlyOpened"]
       10 NAMECALL                         R0 R0 K3 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+11]
        3 DUPTABLE                         R4 K2 [{"enabled", "explicitlyOpened"}]
        4 LOADB                            R5 0
        5 SETTABLEKS                       R5 R4 K0 ["enabled"]
        7 LOADB                            R5 0
        8 SETTABLEKS                       R5 R4 K1 ["explicitlyOpened"]
       10 NAMECALL                         R2 R0 K3 ["setState"]
       12 CALL                             R2 2 0
       13 JUMP                             ; [+7]
       14 DUPTABLE                         R4 K4 [{"enabled"}]
       15 LOADB                            R5 0
       16 SETTABLEKS                       R5 R4 K0 ["enabled"]
       18 NAMECALL                         R2 R0 K3 ["setState"]
       20 CALL                             R2 2 0
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K5 ["setEnabled"]
       28 NEWCLOSURE                       R2 P1
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R0 K6 ["toggleEnabled"]
       33 NEWCLOSURE                       R2 P2
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R2 R0 K7 ["onClose"]
       37 NEWCLOSURE                       R2 P3
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R2 R0 K8 ["onRestore"]
       42 NEWCLOSURE                       R2 P4
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R2 R0 K9 ["onDockWidgetCreated"]
       46 NEWCLOSURE                       R2 P5
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R2 R0 K10 ["onWidgetEnabledChanged"]
       50 GETUPVAL                         R2 4
       51 GETTABLEKS                       R2 R2 K11 ["Localization"]
       53 GETTABLEKS                       R2 R2 K12 ["new"]
       55 DUPTABLE                         R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       56 GETUPVAL                         R4 5
       57 SETTABLEKS                       R4 R3 K13 ["stringResourceTable"]
       59 GETUPVAL                         R4 6
       60 SETTABLEKS                       R4 R3 K14 ["translationResourceTable"]
       62 LOADK                            R4 K17 ["MaterialGenerator"]
       63 SETTABLEKS                       R4 R3 K15 ["pluginName"]
       65 CALL                             R2 1 1
       66 SETTABLEKS                       R2 R0 K18 ["localization"]
       68 GETUPVAL                         R2 4
       69 GETTABLEKS                       R2 R2 K19 ["Analytics"]
       71 GETTABLEKS                       R2 R2 K12 ["new"]
       73 GETUPVAL                         R3 7
       74 CALL                             R2 1 1
       75 SETTABLEKS                       R2 R0 K20 ["analytics"]
       77 GETUPVAL                         R2 8
       78 GETTABLEKS                       R2 R2 K12 ["new"]
       80 CALL                             R2 0 1
       81 SETTABLEKS                       R2 R0 K21 ["studioServices"]
       83 GETUPVAL                         R2 0
       84 CALL                             R2 0 1
       85 JUMPIFNOT                        R2 ; [+9]
       86 GETUPVAL                         R2 2
       87 GETUPVAL                         R4 3
       88 GETTABLEKS                       R4 R4 K22 ["SHOW_MATERIAL_GENERATOR_PLUGIN_EVENT"]
       90 NEWCLOSURE                       R5 P6
       91 CAPTURE                          VAL R0
       92 NAMECALL                         R2 R2 K23 ["Bind"]
       94 CALL                             R2 3 0
       95 RETURN                           R0 0

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
      102 GETTABLEKS                       R22 R22 K31 ["Flags"]
      104 GETTABLEKS                       R22 R22 K32 ["getFFlagShowMaterialGeneratorFromElsewhere"]
      106 CALL                             R21 1 1
      107 GETIMPORT                        R22 K4 [require]
      109 GETTABLEKS                       R23 R0 K24 ["Src"]
      111 GETTABLEKS                       R23 R23 K31 ["Flags"]
      113 GETTABLEKS                       R23 R23 K33 ["getFFlagMaterialPickerUIChanges"]
      115 CALL                             R22 1 1
      116 GETIMPORT                        R23 K4 [require]
      118 GETTABLEKS                       R24 R0 K24 ["Src"]
      120 GETTABLEKS                       R24 R24 K34 ["Resources"]
      122 GETTABLEKS                       R24 R24 K35 ["MakeTheme"]
      124 CALL                             R23 1 1
      125 GETIMPORT                        R24 K4 [require]
      127 GETTABLEKS                       R25 R0 K24 ["Src"]
      129 GETTABLEKS                       R25 R25 K34 ["Resources"]
      131 GETTABLEKS                       R25 R25 K36 ["createAnalyticsHandlers"]
      133 CALL                             R24 1 1
      134 GETTABLEKS                       R25 R0 K24 ["Src"]
      136 GETTABLEKS                       R25 R25 K34 ["Resources"]
      138 GETTABLEKS                       R25 R25 K37 ["Localization"]
      140 GETTABLEKS                       R25 R25 K38 ["SourceStrings"]
      142 GETTABLEKS                       R26 R0 K24 ["Src"]
      144 GETTABLEKS                       R26 R26 K34 ["Resources"]
      146 GETTABLEKS                       R26 R26 K37 ["Localization"]
      148 GETTABLEKS                       R26 R26 K39 ["LocalizedStrings"]
      150 GETIMPORT                        R27 K4 [require]
      152 GETTABLEKS                       R28 R0 K24 ["Src"]
      154 GETTABLEKS                       R28 R28 K40 ["Util"]
      156 GETTABLEKS                       R28 R28 K41 ["Constants"]
      158 CALL                             R27 1 1
      159 GETTABLEKS                       R28 R3 K42 ["PureComponent"]
      161 LOADK                            R30 K43 ["MainPlugin"]
      162 NAMECALL                         R28 R28 K44 ["extend"]
      164 CALL                             R28 2 1
      165 DUPCLOSURE                       R29 K45 [PROTO_7]
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R25
      172 CAPTURE                          VAL R26
      173 CAPTURE                          VAL R24
      174 CAPTURE                          VAL R13
      175 SETTABLEKS                       R29 R28 K46 ["init"]
      177 DUPCLOSURE                       R29 K47 [PROTO_8]
      178 SETTABLEKS                       R29 R28 K48 ["willUnmount"]
      180 DUPCLOSURE                       R29 K49 [PROTO_9]
      181 SETTABLEKS                       R29 R28 K50 ["didUpdate"]
      183 DUPCLOSURE                       R29 K51 [PROTO_10]
      184 CAPTURE                          VAL R11
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R23
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R27
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R16
      198 SETTABLEKS                       R29 R28 K52 ["render"]
      200 RETURN                           R28 1
