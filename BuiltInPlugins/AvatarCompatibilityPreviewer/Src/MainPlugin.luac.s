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
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
        0 DUPTABLE                         R4 K2 [{[1] = False}]
        1 NAMECALL                         R2 R0 K3 ["setState"]
        3 CALL                             R2 2 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K4 ["toggleEnabled"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K5 ["onClose"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R0 K6 ["onRestore"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R0 K7 ["onDockWidgetCreated"]
       20 NEWCLOSURE                       R2 P4
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K8 ["onWidgetEnabledChanged"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K9 ["Localization"]
       27 GETTABLEKS                       R2 R2 K10 ["new"]
       29 DUPTABLE                         R3 K15 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AvatarCompatibilityPreviewer"}]
       30 GETUPVAL                         R4 1
       31 SETTABLEKS                       R4 R3 K11 ["stringResourceTable"]
       33 GETUPVAL                         R4 2
       34 SETTABLEKS                       R4 R3 K12 ["translationResourceTable"]
       36 CALL                             R2 1 1
       37 SETTABLEKS                       R2 R0 K16 ["localization"]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R2 R2 K17 ["PluginActions"]
       42 GETTABLEKS                       R2 R2 K10 ["new"]
       44 GETTABLEKS                       R3 R0 K18 ["props"]
       46 GETTABLEKS                       R3 R3 K19 ["Plugin"]
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R5 R0 K18 ["props"]
       51 GETTABLEKS                       R5 R5 K19 ["Plugin"]
       53 GETTABLEKS                       R6 R0 K16 ["localization"]
       55 CALL                             R4 2 -1
       56 CALL                             R2 -1 1
       57 SETTABLEKS                       R2 R0 K20 ["pluginActions"]
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R2 R2 K21 ["Analytics"]
       62 GETTABLEKS                       R2 R2 K10 ["new"]
       64 GETUPVAL                         R3 4
       65 CALL                             R2 1 1
       66 SETTABLEKS                       R2 R0 K22 ["analytics"]
       68 GETUPVAL                         R2 5
       69 JUMPIFNOT                        R2 ; [+22]
       70 GETUPVAL                         R2 5
       71 GETTABLEKS                       R2 R2 K23 ["Util"]
       73 GETTABLEKS                       R2 R2 K24 ["createFoundationDesignBinding"]
       75 CALL                             R2 0 2
       76 SETTABLEKS                       R3 R0 K25 ["onFoundationStyleSheetChange"]
       78 GETUPVAL                         R4 6
       79 GETTABLEKS                       R5 R1 K19 ["Plugin"]
       81 LOADNIL                          R6
       82 LOADNIL                          R7
       83 NEWTABLE                         R8 0 1
       85 MOVE                             R9 R2
       86 SETLIST                          R8 R9 1 [1]
       88 CALL                             R4 4 1
       89 SETTABLEKS                       R4 R0 K26 ["design"]
       91 RETURN                           R0 0
       92 GETUPVAL                         R2 6
       93 GETTABLEKS                       R3 R1 K19 ["Plugin"]
       95 CALL                             R2 1 1
       96 SETTABLEKS                       R2 R0 K26 ["design"]
       98 RETURN                           R0 0

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
       46 GETTABLEKS                       R8 R0 K12 ["pluginActions"]
       48 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       50 MOVE                             R7 R5
       51 GETIMPORT                        R6 K15 [table.insert]
       53 CALL                             R6 2 0
       54 MOVE                             R7 R5
       55 GETUPVAL                         R8 5
       56 GETTABLEKS                       R8 R8 K4 ["new"]
       58 GETUPVAL                         R9 6
       59 CALL                             R8 1 -1
       60 FASTCALL                         TABLE_INSERT ; [+2]
       61 GETIMPORT                        R6 K15 [table.insert]
       63 CALL                             R6 -1 0
       64 GETUPVAL                         R8 7
       65 NAMECALL                         R8 R8 K16 ["IsRunning"]
       67 CALL                             R8 1 1
       68 NOT                              R7 R8
       69 AND                              R6 R7 R4
       70 NEWTABLE                         R7 0 2
       72 GETUPVAL                         R8 8
       73 GETTABLEKS                       R8 R8 K17 ["createElement"]
       75 GETUPVAL                         R9 9
       76 GETTABLEKS                       R9 R9 K18 ["Provider"]
       78 CALL                             R8 1 1
       79 GETUPVAL                         R9 8
       80 GETTABLEKS                       R9 R9 K17 ["createElement"]
       82 GETUPVAL                         R10 10
       83 GETTABLEKS                       R10 R10 K18 ["Provider"]
       85 CALL                             R9 1 -1
       86 SETLIST                          R7 R8 -1 [1]
       88 GETUPVAL                         R8 11
       89 CALL                             R8 0 1
       90 JUMPIFNOT                        R8 ; [+15]
       91 GETUPVAL                         R8 12
       92 CALL                             R8 0 1
       93 JUMPIF                           R8 ; [+12]
       94 MOVE                             R9 R7
       95 GETUPVAL                         R10 8
       96 GETTABLEKS                       R10 R10 K17 ["createElement"]
       98 GETUPVAL                         R11 13
       99 GETTABLEKS                       R11 R11 K18 ["Provider"]
      101 CALL                             R10 1 -1
      102 FASTCALL                         TABLE_INSERT ; [+2]
      103 GETIMPORT                        R8 K15 [table.insert]
      105 CALL                             R8 -1 0
      106 GETUPVAL                         R8 14
      107 GETTABLEKS                       R8 R8 K19 ["provide"]
      109 MOVE                             R9 R5
      110 DUPTABLE                         R10 K21 [{"ContextStack"}]
      111 GETUPVAL                         R11 8
      112 GETTABLEKS                       R11 R11 K17 ["createElement"]
      114 GETUPVAL                         R12 15
      115 DUPTABLE                         R13 K23 [{"providers"}]
      116 GETUPVAL                         R14 16
      117 GETTABLEKS                       R14 R14 K24 ["append"]
      119 NEWTABLE                         R15 0 1
      121 GETUPVAL                         R16 8
      122 GETTABLEKS                       R16 R16 K17 ["createElement"]
      124 GETUPVAL                         R17 17
      125 GETTABLEKS                       R17 R17 K25 ["FoundationProvider"]
      127 DUPTABLE                         R18 K28 [{"theme", "overlayGui"}]
      128 GETUPVAL                         R19 17
      129 GETTABLEKS                       R19 R19 K29 ["Enums"]
      131 GETTABLEKS                       R19 R19 K30 ["Theme"]
      133 GETTABLEKS                       R19 R19 K31 ["Dark"]
      135 SETTABLEKS                       R19 R18 K26 ["theme"]
      137 GETTABLEKS                       R19 R1 K32 ["PluginLoaderContext"]
      139 GETTABLEKS                       R19 R19 K33 ["mainDockWidget"]
      141 SETTABLEKS                       R19 R18 K27 ["overlayGui"]
      143 CALL                             R16 2 -1
      144 SETLIST                          R15 R16 -1 [1]
      146 MOVE                             R16 R7
      147 CALL                             R14 2 1
      148 SETTABLEKS                       R14 R13 K22 ["providers"]
      150 DUPTABLE                         R14 K36 [{"TestInExperienceManager", "MainWidget"}]
      151 JUMPIFNOT                        R6 ; [+6]
      152 GETUPVAL                         R15 8
      153 GETTABLEKS                       R15 R15 K17 ["createElement"]
      155 GETUPVAL                         R16 18
      156 CALL                             R15 1 1
      157 JUMP                             ; [+1]
      158 LOADNIL                          R15
      159 SETTABLEKS                       R15 R14 K34 ["TestInExperienceManager"]
      161 GETUPVAL                         R15 8
      162 GETTABLEKS                       R15 R15 K17 ["createElement"]
      164 GETUPVAL                         R16 19
      165 NEWTABLE                         R17 16 0
      167 LOADK                            R18 K37 ["AvatarCompatibilityPreviewer"]
      168 SETTABLEKS                       R18 R17 K38 ["Id"]
      170 SETTABLEKS                       R4 R17 K39 ["Enabled"]
      172 GETTABLEKS                       R18 R1 K32 ["PluginLoaderContext"]
      174 GETTABLEKS                       R18 R18 K33 ["mainDockWidget"]
      176 SETTABLEKS                       R18 R17 K40 ["Widget"]
      178 GETTABLEKS                       R18 R0 K6 ["localization"]
      180 LOADK                            R20 K2 ["Plugin"]
      181 LOADK                            R21 K41 ["Name"]
      182 NAMECALL                         R18 R18 K42 ["getText"]
      184 CALL                             R18 3 1
      185 SETTABLEKS                       R18 R17 K43 ["Title"]
      187 GETIMPORT                        R18 K47 [Enum.ZIndexBehavior.Sibling]
      189 SETTABLEKS                       R18 R17 K45 ["ZIndexBehavior"]
      191 GETIMPORT                        R18 K50 [Enum.InitialDockState.Left]
      193 SETTABLEKS                       R18 R17 K48 ["InitialDockState"]
      195 GETIMPORT                        R18 K52 [Vector2.new]
      197 LOADN                            R19 450
      198 LOADN                            R20 600
      199 CALL                             R18 2 1
      200 SETTABLEKS                       R18 R17 K53 ["Size"]
      202 GETIMPORT                        R18 K52 [Vector2.new]
      204 LOADN                            R19 240
      205 LOADN                            R20 250
      206 CALL                             R18 2 1
      207 SETTABLEKS                       R18 R17 K54 ["MinSize"]
      209 GETTABLEKS                       R18 R0 K55 ["onClose"]
      211 SETTABLEKS                       R18 R17 K56 ["OnClose"]
      213 LOADB                            R18 1
      214 SETTABLEKS                       R18 R17 K57 ["ShouldRestore"]
      216 GETTABLEKS                       R18 R0 K58 ["onRestore"]
      218 SETTABLEKS                       R18 R17 K59 ["OnWidgetRestored"]
      220 GETTABLEKS                       R18 R0 K60 ["onDockWidgetCreated"]
      222 SETTABLEKS                       R18 R17 K61 ["OnWidgetCreated"]
      224 GETUPVAL                         R18 20
      225 GETTABLEKS                       R18 R18 K62 ["Change"]
      227 GETTABLEKS                       R18 R18 K39 ["Enabled"]
      229 GETTABLEKS                       R19 R0 K63 ["onWidgetEnabledChanged"]
      231 SETTABLE                         R19 R17 R18
      232 DUPTABLE                         R18 K64 [{"Provider"}]
      233 GETUPVAL                         R19 8
      234 GETTABLEKS                       R19 R19 K17 ["createElement"]
      236 GETUPVAL                         R20 21
      237 DUPTABLE                         R21 K66 [{"onStyleSheetChange"}]
      238 GETTABLEKS                       R22 R0 K67 ["onFoundationStyleSheetChange"]
      240 SETTABLEKS                       R22 R21 K65 ["onStyleSheetChange"]
      242 DUPTABLE                         R22 K69 [{"App"}]
      243 GETTABLEKS                       R23 R0 K1 ["state"]
      245 GETTABLEKS                       R23 R23 K3 ["enabled"]
      247 JUMPIFNOT                        R23 ; [+5]
      248 GETUPVAL                         R23 8
      249 GETTABLEKS                       R23 R23 K17 ["createElement"]
      251 GETUPVAL                         R24 22
      252 CALL                             R23 1 1
      253 SETTABLEKS                       R23 R22 K68 ["App"]
      255 CALL                             R19 3 1
      256 SETTABLEKS                       R19 R18 K18 ["Provider"]
      258 CALL                             R15 3 1
      259 SETTABLEKS                       R15 R14 K35 ["MainWidget"]
      261 CALL                             R11 3 1
      262 SETTABLEKS                       R11 R10 K20 ["ContextStack"]
      264 CALL                             R8 2 -1
      265 RETURN                           R8 -1

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
      198 GETTABLEKS                       R32 R32 K46 ["getFFlagAvatarPreviewerLookComposer"]
      200 CALL                             R31 1 1
      201 GETIMPORT                        R32 K9 [require]
      203 GETTABLEKS                       R33 R2 K28 ["Src"]
      205 GETTABLEKS                       R33 R33 K45 ["Flags"]
      207 GETTABLEKS                       R33 R33 K47 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      209 CALL                             R32 1 1
      210 GETTABLEKS                       R33 R9 K48 ["PureComponent"]
      212 LOADK                            R35 K49 ["MainPlugin"]
      213 NAMECALL                         R33 R33 K50 ["extend"]
      215 CALL                             R33 2 1
      216 DUPCLOSURE                       R34 K51 [PROTO_6]
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R26
      219 CAPTURE                          VAL R27
      220 CAPTURE                          VAL R21
      221 CAPTURE                          VAL R20
      222 CAPTURE                          VAL R6
      223 CAPTURE                          VAL R17
      224 SETTABLEKS                       R34 R33 K52 ["init"]
      226 DUPCLOSURE                       R34 K53 [PROTO_7]
      227 SETTABLEKS                       R34 R33 K54 ["didUpdate"]
      229 DUPCLOSURE                       R34 K55 [PROTO_8]
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R15
      232 CAPTURE                          VAL R18
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R16
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R1
      237 CAPTURE                          VAL R0
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R23
      240 CAPTURE                          VAL R24
      241 CAPTURE                          VAL R31
      242 CAPTURE                          VAL R32
      243 CAPTURE                          VAL R22
      244 CAPTURE                          VAL R13
      245 CAPTURE                          VAL R25
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R5
      248 CAPTURE                          VAL R30
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R10
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R29
      253 SETTABLEKS                       R34 R33 K56 ["render"]
      255 RETURN                           R33 1
