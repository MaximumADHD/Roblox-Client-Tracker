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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Enabled"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R4 K1 [{"enabled"}]
        1 LOADB                            R5 0
        2 SETTABLEKS                       R5 R4 K0 ["enabled"]
        4 NAMECALL                         R2 R0 K2 ["setState"]
        6 CALL                             R2 2 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R2 R0 K4 ["onClose"]
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R0 K5 ["onRestore"]
       19 NEWCLOSURE                       R2 P3
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R2 R0 K6 ["onDockWidgetCreated"]
       23 NEWCLOSURE                       R2 P4
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K8 ["Localization"]
       30 GETTABLEKS                       R2 R2 K9 ["new"]
       32 DUPTABLE                         R3 K13 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       33 GETUPVAL                         R4 1
       34 SETTABLEKS                       R4 R3 K10 ["stringResourceTable"]
       36 GETUPVAL                         R4 2
       37 SETTABLEKS                       R4 R3 K11 ["translationResourceTable"]
       39 LOADK                            R4 K14 ["AvatarCompatibilityPreviewer"]
       40 SETTABLEKS                       R4 R3 K12 ["pluginName"]
       42 CALL                             R2 1 1
       43 SETTABLEKS                       R2 R0 K15 ["localization"]
       45 GETUPVAL                         R2 3
       46 CALL                             R2 0 1
       47 JUMPIFNOT                        R2 ; [+20]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K16 ["PluginActions"]
       51 GETTABLEKS                       R2 R2 K9 ["new"]
       53 GETTABLEKS                       R3 R0 K17 ["props"]
       55 GETTABLEKS                       R3 R3 K18 ["Plugin"]
       57 GETUPVAL                         R4 4
       58 GETTABLEKS                       R5 R0 K17 ["props"]
       60 GETTABLEKS                       R5 R5 K18 ["Plugin"]
       62 GETTABLEKS                       R6 R0 K15 ["localization"]
       64 CALL                             R4 2 -1
       65 CALL                             R2 -1 1
       66 SETTABLEKS                       R2 R0 K19 ["pluginActions"]
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K20 ["Analytics"]
       71 GETTABLEKS                       R2 R2 K9 ["new"]
       73 GETUPVAL                         R3 5
       74 CALL                             R2 1 1
       75 SETTABLEKS                       R2 R0 K21 ["analytics"]
       77 GETUPVAL                         R2 6
       78 JUMPIFNOT                        R2 ; [+22]
       79 GETUPVAL                         R2 6
       80 GETTABLEKS                       R2 R2 K22 ["Util"]
       82 GETTABLEKS                       R2 R2 K23 ["createFoundationDesignBinding"]
       84 CALL                             R2 0 2
       85 SETTABLEKS                       R3 R0 K24 ["onFoundationStyleSheetChange"]
       87 GETUPVAL                         R4 7
       88 GETTABLEKS                       R5 R1 K18 ["Plugin"]
       90 LOADNIL                          R6
       91 LOADNIL                          R7
       92 NEWTABLE                         R8 0 1
       94 MOVE                             R9 R2
       95 SETLIST                          R8 R9 1 [1]
       97 CALL                             R4 4 1
       98 SETTABLEKS                       R4 R0 K25 ["design"]
      100 RETURN                           R0 0
      101 GETUPVAL                         R2 7
      102 GETTABLEKS                       R3 R1 K18 ["Plugin"]
      104 CALL                             R2 1 1
      105 SETTABLEKS                       R2 R0 K25 ["design"]
      107 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 NEWTABLE                         R5 1 6
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
       28 GETUPVAL                         R11 3
       29 GETTABLEKS                       R11 R11 K8 ["Contexts"]
       31 GETTABLEKS                       R11 R11 K9 ["PreviewContext"]
       33 GETTABLEKS                       R11 R11 K4 ["new"]
       35 CALL                             R11 0 1
       36 SETLIST                          R5 R6 6 [1]
       38 GETUPVAL                         R12 4
       39 GETTABLEKS                       R12 R12 K4 ["new"]
       41 GETTABLEKS                       R13 R0 K10 ["design"]
       43 CALL                             R12 1 1
       44 SETTABLEKS                       R12 R5 K11 ["Design"]
       46 GETUPVAL                         R6 5
       47 CALL                             R6 0 1
       48 JUMPIFNOT                        R6 ; [+8]
       49 GETTABLEKS                       R8 R0 K12 ["pluginActions"]
       51 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       53 MOVE                             R7 R5
       54 GETIMPORT                        R6 K15 [table.insert]
       56 CALL                             R6 2 0
       57 MOVE                             R7 R5
       58 GETUPVAL                         R8 6
       59 GETTABLEKS                       R8 R8 K4 ["new"]
       61 GETUPVAL                         R9 7
       62 CALL                             R8 1 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R6 K15 [table.insert]
       66 CALL                             R6 -1 0
       67 GETUPVAL                         R8 8
       68 NAMECALL                         R8 R8 K16 ["IsRunning"]
       70 CALL                             R8 1 1
       71 NOT                              R7 R8
       72 AND                              R6 R7 R4
       73 NEWTABLE                         R7 0 2
       75 GETUPVAL                         R8 9
       76 GETTABLEKS                       R8 R8 K17 ["createElement"]
       78 GETUPVAL                         R9 10
       79 GETTABLEKS                       R9 R9 K18 ["Provider"]
       81 CALL                             R8 1 1
       82 GETUPVAL                         R10 5
       83 CALL                             R10 0 1
       84 JUMPIFNOT                        R10 ; [+8]
       85 GETUPVAL                         R9 9
       86 GETTABLEKS                       R9 R9 K17 ["createElement"]
       88 GETUPVAL                         R10 11
       89 GETTABLEKS                       R10 R10 K18 ["Provider"]
       91 CALL                             R9 1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R9
       94 SETLIST                          R7 R8 2 [1]
       96 GETUPVAL                         R8 12
       97 CALL                             R8 0 1
       98 JUMPIFNOT                        R8 ; [+15]
       99 GETUPVAL                         R8 13
      100 CALL                             R8 0 1
      101 JUMPIF                           R8 ; [+12]
      102 MOVE                             R9 R7
      103 GETUPVAL                         R10 9
      104 GETTABLEKS                       R10 R10 K17 ["createElement"]
      106 GETUPVAL                         R11 14
      107 GETTABLEKS                       R11 R11 K18 ["Provider"]
      109 CALL                             R10 1 -1
      110 FASTCALL                         TABLE_INSERT ; [+2]
      111 GETIMPORT                        R8 K15 [table.insert]
      113 CALL                             R8 -1 0
      114 GETUPVAL                         R8 15
      115 GETTABLEKS                       R8 R8 K19 ["provide"]
      117 MOVE                             R9 R5
      118 DUPTABLE                         R10 K21 [{"ContextStack"}]
      119 GETUPVAL                         R11 9
      120 GETTABLEKS                       R11 R11 K17 ["createElement"]
      122 GETUPVAL                         R12 16
      123 DUPTABLE                         R13 K23 [{"providers"}]
      124 GETUPVAL                         R14 17
      125 GETTABLEKS                       R14 R14 K24 ["append"]
      127 NEWTABLE                         R15 0 1
      129 GETUPVAL                         R16 9
      130 GETTABLEKS                       R16 R16 K17 ["createElement"]
      132 GETUPVAL                         R17 18
      133 GETTABLEKS                       R17 R17 K25 ["FoundationProvider"]
      135 DUPTABLE                         R18 K28 [{"theme", "overlayGui"}]
      136 GETUPVAL                         R19 18
      137 GETTABLEKS                       R19 R19 K29 ["Enums"]
      139 GETTABLEKS                       R19 R19 K30 ["Theme"]
      141 GETTABLEKS                       R19 R19 K31 ["Dark"]
      143 SETTABLEKS                       R19 R18 K26 ["theme"]
      145 GETTABLEKS                       R19 R1 K32 ["PluginLoaderContext"]
      147 GETTABLEKS                       R19 R19 K33 ["mainDockWidget"]
      149 SETTABLEKS                       R19 R18 K27 ["overlayGui"]
      151 CALL                             R16 2 -1
      152 SETLIST                          R15 R16 -1 [1]
      154 MOVE                             R16 R7
      155 CALL                             R14 2 1
      156 SETTABLEKS                       R14 R13 K22 ["providers"]
      158 DUPTABLE                         R14 K36 [{"TestInExperienceManager", "MainWidget"}]
      159 JUMPIFNOT                        R6 ; [+6]
      160 GETUPVAL                         R15 9
      161 GETTABLEKS                       R15 R15 K17 ["createElement"]
      163 GETUPVAL                         R16 19
      164 CALL                             R15 1 1
      165 JUMP                             ; [+1]
      166 LOADNIL                          R15
      167 SETTABLEKS                       R15 R14 K34 ["TestInExperienceManager"]
      169 GETUPVAL                         R15 9
      170 GETTABLEKS                       R15 R15 K17 ["createElement"]
      172 GETUPVAL                         R16 20
      173 NEWTABLE                         R17 16 0
      175 LOADK                            R18 K37 ["AvatarCompatibilityPreviewer"]
      176 SETTABLEKS                       R18 R17 K38 ["Id"]
      178 SETTABLEKS                       R4 R17 K39 ["Enabled"]
      180 GETTABLEKS                       R18 R1 K32 ["PluginLoaderContext"]
      182 GETTABLEKS                       R18 R18 K33 ["mainDockWidget"]
      184 SETTABLEKS                       R18 R17 K40 ["Widget"]
      186 GETTABLEKS                       R18 R0 K6 ["localization"]
      188 LOADK                            R20 K2 ["Plugin"]
      189 LOADK                            R21 K41 ["Name"]
      190 NAMECALL                         R18 R18 K42 ["getText"]
      192 CALL                             R18 3 1
      193 SETTABLEKS                       R18 R17 K43 ["Title"]
      195 GETIMPORT                        R18 K47 [Enum.ZIndexBehavior.Sibling]
      197 SETTABLEKS                       R18 R17 K45 ["ZIndexBehavior"]
      199 GETIMPORT                        R18 K50 [Enum.InitialDockState.Left]
      201 SETTABLEKS                       R18 R17 K48 ["InitialDockState"]
      203 GETIMPORT                        R18 K52 [Vector2.new]
      205 LOADN                            R19 194
      206 LOADN                            R20 88
      207 CALL                             R18 2 1
      208 SETTABLEKS                       R18 R17 K53 ["Size"]
      210 GETIMPORT                        R18 K52 [Vector2.new]
      212 LOADN                            R19 240
      213 LOADN                            R20 250
      214 CALL                             R18 2 1
      215 SETTABLEKS                       R18 R17 K54 ["MinSize"]
      217 GETTABLEKS                       R18 R0 K55 ["onClose"]
      219 SETTABLEKS                       R18 R17 K56 ["OnClose"]
      221 LOADB                            R18 1
      222 SETTABLEKS                       R18 R17 K57 ["ShouldRestore"]
      224 GETTABLEKS                       R18 R0 K58 ["onRestore"]
      226 SETTABLEKS                       R18 R17 K59 ["OnWidgetRestored"]
      228 GETTABLEKS                       R18 R0 K60 ["onDockWidgetCreated"]
      230 SETTABLEKS                       R18 R17 K61 ["OnWidgetCreated"]
      232 GETUPVAL                         R18 21
      233 GETTABLEKS                       R18 R18 K62 ["Change"]
      235 GETTABLEKS                       R18 R18 K39 ["Enabled"]
      237 GETTABLEKS                       R19 R0 K63 ["onWidgetEnabledChanged"]
      239 SETTABLE                         R19 R17 R18
      240 DUPTABLE                         R18 K64 [{"Provider"}]
      241 GETUPVAL                         R19 9
      242 GETTABLEKS                       R19 R19 K17 ["createElement"]
      244 GETUPVAL                         R20 22
      245 DUPTABLE                         R21 K66 [{"onStyleSheetChange"}]
      246 GETTABLEKS                       R22 R0 K67 ["onFoundationStyleSheetChange"]
      248 SETTABLEKS                       R22 R21 K65 ["onStyleSheetChange"]
      250 DUPTABLE                         R22 K69 [{"App"}]
      251 GETTABLEKS                       R23 R0 K1 ["state"]
      253 GETTABLEKS                       R23 R23 K3 ["enabled"]
      255 JUMPIFNOT                        R23 ; [+5]
      256 GETUPVAL                         R23 9
      257 GETTABLEKS                       R23 R23 K17 ["createElement"]
      259 GETUPVAL                         R24 23
      260 CALL                             R23 1 1
      261 SETTABLEKS                       R23 R22 K68 ["App"]
      263 CALL                             R19 3 1
      264 SETTABLEKS                       R19 R18 K18 ["Provider"]
      266 CALL                             R15 3 1
      267 SETTABLEKS                       R15 R14 K35 ["MainWidget"]
      269 CALL                             R11 3 1
      270 SETTABLEKS                       R11 R10 K20 ["ContextStack"]
      272 CALL                             R8 2 -1
      273 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Packages"]
       23 GETTABLEKS                       R4 R4 K11 ["AvatarToolsShared"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K9 [require]
       28 GETTABLEKS                       R5 R2 K10 ["Packages"]
       30 GETTABLEKS                       R5 R5 K12 ["Dash"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K9 [require]
       35 GETTABLEKS                       R6 R2 K10 ["Packages"]
       37 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K9 [require]
       42 GETTABLEKS                       R7 R2 K10 ["Packages"]
       44 GETTABLEKS                       R7 R7 K14 ["StudioFoundation"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R6 K15 ["Components"]
       49 GETTABLEKS                       R7 R7 K16 ["FoundationProviderAdapter"]
       51 GETIMPORT                        R8 K9 [require]
       53 GETTABLEKS                       R9 R2 K10 ["Packages"]
       55 GETTABLEKS                       R9 R9 K17 ["Framework"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K9 [require]
       60 GETTABLEKS                       R10 R2 K10 ["Packages"]
       62 GETTABLEKS                       R10 R10 K18 ["React"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K9 [require]
       67 GETTABLEKS                       R11 R2 K10 ["Packages"]
       69 GETTABLEKS                       R11 R11 K19 ["ReactRoblox"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R11 R8 K20 ["UI"]
       74 GETTABLEKS                       R12 R11 K21 ["DockWidget"]
       76 GETTABLEKS                       R13 R8 K22 ["ContextServices"]
       78 GETTABLEKS                       R14 R13 K23 ["Plugin"]
       80 GETTABLEKS                       R15 R13 K24 ["Mouse"]
       82 GETTABLEKS                       R16 R13 K25 ["Design"]
       84 GETTABLEKS                       R17 R8 K26 ["Styling"]
       86 GETTABLEKS                       R17 R17 K27 ["registerPluginStyles"]
       88 GETIMPORT                        R18 K9 [require]
       90 GETTABLEKS                       R19 R2 K28 ["Src"]
       92 GETTABLEKS                       R19 R19 K29 ["Resources"]
       94 GETTABLEKS                       R19 R19 K30 ["MakeTheme"]
       96 CALL                             R18 1 1
       97 GETIMPORT                        R19 K9 [require]
       99 GETTABLEKS                       R20 R2 K28 ["Src"]
      101 GETTABLEKS                       R20 R20 K31 ["Util"]
      103 GETTABLEKS                       R20 R20 K32 ["SelectionWrapper"]
      105 CALL                             R19 1 1
      106 GETIMPORT                        R20 K9 [require]
      108 GETTABLEKS                       R21 R2 K28 ["Src"]
      110 GETTABLEKS                       R21 R21 K29 ["Resources"]
      112 GETTABLEKS                       R21 R21 K33 ["createAnalyticsHandlers"]
      114 CALL                             R20 1 1
      115 GETIMPORT                        R21 K9 [require]
      117 GETTABLEKS                       R22 R2 K28 ["Src"]
      119 GETTABLEKS                       R22 R22 K31 ["Util"]
      121 GETTABLEKS                       R22 R22 K34 ["makePluginActions"]
      123 CALL                             R21 1 1
      124 GETIMPORT                        R22 K9 [require]
      126 GETTABLEKS                       R23 R2 K28 ["Src"]
      128 GETTABLEKS                       R23 R23 K15 ["Components"]
      130 GETTABLEKS                       R23 R23 K35 ["DEPRECATED_LookContext"]
      132 CALL                             R22 1 1
      133 GETIMPORT                        R23 K9 [require]
      135 GETTABLEKS                       R24 R2 K28 ["Src"]
      137 GETTABLEKS                       R24 R24 K15 ["Components"]
      139 GETTABLEKS                       R24 R24 K36 ["UGCValidationContext"]
      141 CALL                             R23 1 1
      142 GETIMPORT                        R24 K9 [require]
      144 GETTABLEKS                       R25 R2 K28 ["Src"]
      146 GETTABLEKS                       R25 R25 K15 ["Components"]
      148 GETTABLEKS                       R25 R25 K37 ["EditingTools"]
      150 GETTABLEKS                       R25 R25 K38 ["EditingWorldModelContext"]
      152 CALL                             R24 1 1
      153 GETIMPORT                        R25 K9 [require]
      155 GETTABLEKS                       R26 R2 K28 ["Src"]
      157 GETTABLEKS                       R26 R26 K15 ["Components"]
      159 GETTABLEKS                       R26 R26 K39 ["ContextStack"]
      161 CALL                             R25 1 1
      162 GETTABLEKS                       R26 R2 K28 ["Src"]
      164 GETTABLEKS                       R26 R26 K29 ["Resources"]
      166 GETTABLEKS                       R26 R26 K40 ["Localization"]
      168 GETTABLEKS                       R26 R26 K41 ["SourceStrings"]
      170 GETTABLEKS                       R27 R2 K28 ["Src"]
      172 GETTABLEKS                       R27 R27 K29 ["Resources"]
      174 GETTABLEKS                       R27 R27 K40 ["Localization"]
      176 GETTABLEKS                       R27 R27 K42 ["LocalizedStrings"]
      178 GETTABLEKS                       R28 R2 K28 ["Src"]
      180 GETTABLEKS                       R28 R28 K15 ["Components"]
      182 GETIMPORT                        R29 K9 [require]
      184 GETTABLEKS                       R30 R28 K43 ["App"]
      186 CALL                             R29 1 1
      187 GETIMPORT                        R30 K9 [require]
      189 GETTABLEKS                       R31 R28 K44 ["TestInExperienceManager"]
      191 CALL                             R30 1 1
      192 GETIMPORT                        R31 K9 [require]
      194 GETTABLEKS                       R32 R2 K28 ["Src"]
      196 GETTABLEKS                       R32 R32 K45 ["Flags"]
      198 GETTABLEKS                       R32 R32 K46 ["getFFlagAvatarPreviewerCageEditingTools"]
      200 CALL                             R31 1 1
      201 GETIMPORT                        R32 K9 [require]
      203 GETTABLEKS                       R33 R2 K28 ["Src"]
      205 GETTABLEKS                       R33 R33 K45 ["Flags"]
      207 GETTABLEKS                       R33 R33 K47 ["getFFlagAvatarPreviewerLookComposer"]
      209 CALL                             R32 1 1
      210 GETIMPORT                        R33 K9 [require]
      212 GETTABLEKS                       R34 R2 K28 ["Src"]
      214 GETTABLEKS                       R34 R34 K45 ["Flags"]
      216 GETTABLEKS                       R34 R34 K48 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      218 CALL                             R33 1 1
      219 GETTABLEKS                       R34 R9 K49 ["PureComponent"]
      221 LOADK                            R36 K50 ["MainPlugin"]
      222 NAMECALL                         R34 R34 K51 ["extend"]
      224 CALL                             R34 2 1
      225 DUPCLOSURE                       R35 K52 [PROTO_6]
      226 CAPTURE                          VAL R13
      227 CAPTURE                          VAL R26
      228 CAPTURE                          VAL R27
      229 CAPTURE                          VAL R31
      230 CAPTURE                          VAL R21
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R17
      234 SETTABLEKS                       R35 R34 K53 ["init"]
      236 DUPCLOSURE                       R35 K54 [PROTO_7]
      237 SETTABLEKS                       R35 R34 K55 ["didUpdate"]
      239 DUPCLOSURE                       R35 K56 [PROTO_8]
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R18
      243 CAPTURE                          VAL R3
      244 CAPTURE                          VAL R16
      245 CAPTURE                          VAL R31
      246 CAPTURE                          VAL R19
      247 CAPTURE                          VAL R1
      248 CAPTURE                          VAL R0
      249 CAPTURE                          VAL R9
      250 CAPTURE                          VAL R23
      251 CAPTURE                          VAL R24
      252 CAPTURE                          VAL R32
      253 CAPTURE                          VAL R33
      254 CAPTURE                          VAL R22
      255 CAPTURE                          VAL R13
      256 CAPTURE                          VAL R25
      257 CAPTURE                          VAL R4
      258 CAPTURE                          VAL R5
      259 CAPTURE                          VAL R30
      260 CAPTURE                          VAL R12
      261 CAPTURE                          VAL R10
      262 CAPTURE                          VAL R7
      263 CAPTURE                          VAL R29
      264 SETTABLEKS                       R35 R34 K57 ["render"]
      266 RETURN                           R34 1
