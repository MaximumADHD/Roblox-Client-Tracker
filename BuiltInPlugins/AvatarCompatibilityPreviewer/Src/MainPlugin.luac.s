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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["props"]
        6 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        8 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       13 NAMECALL                         R0 R0 K4 ["Connect"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

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
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K6 ["onDockWidgetCreated"]
       24 NEWCLOSURE                       R2 P4
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K7 ["onWidgetEnabledChanged"]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K8 ["Localization"]
       31 GETTABLEKS                       R2 R2 K9 ["new"]
       33 DUPTABLE                         R3 K13 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       34 GETUPVAL                         R4 2
       35 SETTABLEKS                       R4 R3 K10 ["stringResourceTable"]
       37 GETUPVAL                         R4 3
       38 SETTABLEKS                       R4 R3 K11 ["translationResourceTable"]
       40 LOADK                            R4 K14 ["AvatarCompatibilityPreviewer"]
       41 SETTABLEKS                       R4 R3 K12 ["pluginName"]
       43 CALL                             R2 1 1
       44 SETTABLEKS                       R2 R0 K15 ["localization"]
       46 GETUPVAL                         R2 4
       47 CALL                             R2 0 1
       48 JUMPIFNOT                        R2 ; [+20]
       49 GETUPVAL                         R2 1
       50 GETTABLEKS                       R2 R2 K16 ["PluginActions"]
       52 GETTABLEKS                       R2 R2 K9 ["new"]
       54 GETTABLEKS                       R3 R0 K17 ["props"]
       56 GETTABLEKS                       R3 R3 K18 ["Plugin"]
       58 GETUPVAL                         R4 5
       59 GETTABLEKS                       R5 R0 K17 ["props"]
       61 GETTABLEKS                       R5 R5 K18 ["Plugin"]
       63 GETTABLEKS                       R6 R0 K15 ["localization"]
       65 CALL                             R4 2 -1
       66 CALL                             R2 -1 1
       67 SETTABLEKS                       R2 R0 K19 ["pluginActions"]
       69 GETUPVAL                         R2 1
       70 GETTABLEKS                       R2 R2 K20 ["Analytics"]
       72 GETTABLEKS                       R2 R2 K9 ["new"]
       74 GETUPVAL                         R3 6
       75 CALL                             R2 1 1
       76 SETTABLEKS                       R2 R0 K21 ["analytics"]
       78 GETUPVAL                         R2 7
       79 JUMPIFNOT                        R2 ; [+22]
       80 GETUPVAL                         R2 7
       81 GETTABLEKS                       R2 R2 K22 ["Util"]
       83 GETTABLEKS                       R2 R2 K23 ["createFoundationDesignBinding"]
       85 CALL                             R2 0 2
       86 SETTABLEKS                       R3 R0 K24 ["onFoundationStyleSheetChange"]
       88 GETUPVAL                         R4 8
       89 GETTABLEKS                       R5 R1 K18 ["Plugin"]
       91 LOADNIL                          R6
       92 LOADNIL                          R7
       93 NEWTABLE                         R8 0 1
       95 MOVE                             R9 R2
       96 SETLIST                          R8 R9 1 [1]
       98 CALL                             R4 4 1
       99 SETTABLEKS                       R4 R0 K25 ["design"]
      101 RETURN                           R0 0
      102 GETUPVAL                         R2 8
      103 GETTABLEKS                       R3 R1 K18 ["Plugin"]
      105 CALL                             R2 1 1
      106 SETTABLEKS                       R2 R0 K25 ["design"]
      108 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K11 [{"Toolbar", "Active", "Id", "Title", "OnClick", "ClickableWhenViewportHidden"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 LOADK                            R7 K12 ["previewAvatar"]
       15 SETTABLEKS                       R7 R6 K7 ["Id"]
       17 GETTABLEKS                       R7 R0 K13 ["localization"]
       19 LOADK                            R9 K14 ["Plugin"]
       20 LOADK                            R10 K15 ["Button"]
       21 NAMECALL                         R7 R7 K16 ["getText"]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R6 K8 ["Title"]
       26 GETTABLEKS                       R7 R0 K17 ["toggleEnabled"]
       28 SETTABLEKS                       R7 R6 K9 ["OnClick"]
       30 LOADB                            R7 1
       31 SETTABLEKS                       R7 R6 K10 ["ClickableWhenViewportHidden"]
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       36 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        6 GETTABLEKS                       R3 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R3 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_10:
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
      127 GETUPVAL                         R16 18
      128 CALL                             R16 0 1
      129 JUMPIFNOT                        R16 ; [+28]
      130 NEWTABLE                         R15 0 1
      132 GETUPVAL                         R16 9
      133 GETTABLEKS                       R16 R16 K17 ["createElement"]
      135 GETUPVAL                         R17 19
      136 GETTABLEKS                       R17 R17 K25 ["FoundationProvider"]
      138 DUPTABLE                         R18 K28 [{"theme", "overlayGui"}]
      139 GETUPVAL                         R19 19
      140 GETTABLEKS                       R19 R19 K29 ["Enums"]
      142 GETTABLEKS                       R19 R19 K30 ["Theme"]
      144 GETTABLEKS                       R19 R19 K31 ["Dark"]
      146 SETTABLEKS                       R19 R18 K26 ["theme"]
      148 GETTABLEKS                       R19 R1 K32 ["PluginLoaderContext"]
      150 GETTABLEKS                       R19 R19 K33 ["mainDockWidget"]
      152 SETTABLEKS                       R19 R18 K27 ["overlayGui"]
      154 CALL                             R16 2 -1
      155 SETLIST                          R15 R16 -1 [1]
      157 JUMP                             ; [+2]
      158 NEWTABLE                         R15 0 0
      160 MOVE                             R16 R7
      161 CALL                             R14 2 1
      162 SETTABLEKS                       R14 R13 K22 ["providers"]
      164 DUPTABLE                         R14 K37 [{"Toolbar", "TestInExperienceManager", "MainWidget"}]
      165 GETUPVAL                         R16 18
      166 CALL                             R16 0 1
      167 JUMPIF                           R16 ; [+14]
      168 GETUPVAL                         R15 9
      169 GETTABLEKS                       R15 R15 K17 ["createElement"]
      171 GETUPVAL                         R16 20
      172 DUPTABLE                         R17 K40 [{"Title", "RenderButtons"}]
      173 LOADK                            R18 K41 ["AvatarPreviewer"]
      174 SETTABLEKS                       R18 R17 K38 ["Title"]
      176 NEWCLOSURE                       R18 P0
      177 CAPTURE                          VAL R0
      178 SETTABLEKS                       R18 R17 K39 ["RenderButtons"]
      180 CALL                             R15 2 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R15
      183 SETTABLEKS                       R15 R14 K34 ["Toolbar"]
      185 JUMPIFNOT                        R6 ; [+6]
      186 GETUPVAL                         R15 9
      187 GETTABLEKS                       R15 R15 K17 ["createElement"]
      189 GETUPVAL                         R16 21
      190 CALL                             R15 1 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R15
      193 SETTABLEKS                       R15 R14 K35 ["TestInExperienceManager"]
      195 GETUPVAL                         R15 9
      196 GETTABLEKS                       R15 R15 K17 ["createElement"]
      198 GETUPVAL                         R16 22
      199 NEWTABLE                         R17 16 0
      201 LOADK                            R18 K42 ["AvatarCompatibilityPreviewer"]
      202 SETTABLEKS                       R18 R17 K43 ["Id"]
      204 SETTABLEKS                       R4 R17 K44 ["Enabled"]
      206 GETUPVAL                         R19 18
      207 CALL                             R19 0 1
      208 JUMPIFNOT                        R19 ; [+5]
      209 GETTABLEKS                       R18 R1 K32 ["PluginLoaderContext"]
      211 GETTABLEKS                       R18 R18 K33 ["mainDockWidget"]
      213 JUMP                             ; [+1]
      214 LOADNIL                          R18
      215 SETTABLEKS                       R18 R17 K45 ["Widget"]
      217 GETTABLEKS                       R18 R0 K6 ["localization"]
      219 LOADK                            R20 K2 ["Plugin"]
      220 LOADK                            R21 K46 ["Name"]
      221 NAMECALL                         R18 R18 K47 ["getText"]
      223 CALL                             R18 3 1
      224 SETTABLEKS                       R18 R17 K38 ["Title"]
      226 GETIMPORT                        R18 K51 [Enum.ZIndexBehavior.Sibling]
      228 SETTABLEKS                       R18 R17 K49 ["ZIndexBehavior"]
      230 GETIMPORT                        R18 K54 [Enum.InitialDockState.Left]
      232 SETTABLEKS                       R18 R17 K52 ["InitialDockState"]
      234 GETIMPORT                        R18 K56 [Vector2.new]
      236 LOADN                            R19 194
      237 LOADN                            R20 88
      238 CALL                             R18 2 1
      239 SETTABLEKS                       R18 R17 K57 ["Size"]
      241 GETIMPORT                        R18 K56 [Vector2.new]
      243 LOADN                            R19 240
      244 LOADN                            R20 250
      245 CALL                             R18 2 1
      246 SETTABLEKS                       R18 R17 K58 ["MinSize"]
      248 GETTABLEKS                       R18 R0 K59 ["onClose"]
      250 SETTABLEKS                       R18 R17 K60 ["OnClose"]
      252 LOADB                            R18 1
      253 SETTABLEKS                       R18 R17 K61 ["ShouldRestore"]
      255 GETTABLEKS                       R18 R0 K62 ["onRestore"]
      257 SETTABLEKS                       R18 R17 K63 ["OnWidgetRestored"]
      259 GETUPVAL                         R19 18
      260 CALL                             R19 0 1
      261 JUMPIFNOT                        R19 ; [+3]
      262 GETTABLEKS                       R18 R0 K64 ["onDockWidgetCreated"]
      264 JUMP                             ; [+1]
      265 LOADNIL                          R18
      266 SETTABLEKS                       R18 R17 K65 ["OnWidgetCreated"]
      268 GETUPVAL                         R18 23
      269 GETTABLEKS                       R18 R18 K66 ["Change"]
      271 GETTABLEKS                       R18 R18 K44 ["Enabled"]
      273 GETTABLEKS                       R19 R0 K67 ["onWidgetEnabledChanged"]
      275 SETTABLE                         R19 R17 R18
      276 GETUPVAL                         R19 18
      277 CALL                             R19 0 1
      278 JUMPIFNOT                        R19 ; [+27]
      279 DUPTABLE                         R18 K68 [{"Provider"}]
      280 GETUPVAL                         R19 9
      281 GETTABLEKS                       R19 R19 K17 ["createElement"]
      283 GETUPVAL                         R20 24
      284 DUPTABLE                         R21 K70 [{"onStyleSheetChange"}]
      285 GETTABLEKS                       R22 R0 K71 ["onFoundationStyleSheetChange"]
      287 SETTABLEKS                       R22 R21 K69 ["onStyleSheetChange"]
      289 DUPTABLE                         R22 K73 [{"App"}]
      290 GETTABLEKS                       R23 R0 K1 ["state"]
      292 GETTABLEKS                       R23 R23 K3 ["enabled"]
      294 JUMPIFNOT                        R23 ; [+5]
      295 GETUPVAL                         R23 9
      296 GETTABLEKS                       R23 R23 K17 ["createElement"]
      298 GETUPVAL                         R24 25
      299 CALL                             R23 1 1
      300 SETTABLEKS                       R23 R22 K72 ["App"]
      302 CALL                             R19 3 1
      303 SETTABLEKS                       R19 R18 K18 ["Provider"]
      305 JUMP                             ; [+13]
      306 DUPTABLE                         R18 K73 [{"App"}]
      307 GETTABLEKS                       R19 R0 K1 ["state"]
      309 GETTABLEKS                       R19 R19 K3 ["enabled"]
      311 JUMPIFNOT                        R19 ; [+5]
      312 GETUPVAL                         R19 9
      313 GETTABLEKS                       R19 R19 K17 ["createElement"]
      315 GETUPVAL                         R20 25
      316 CALL                             R19 1 1
      317 SETTABLEKS                       R19 R18 K72 ["App"]
      319 CALL                             R15 3 1
      320 SETTABLEKS                       R15 R14 K36 ["MainWidget"]
      322 CALL                             R11 3 1
      323 SETTABLEKS                       R11 R10 K20 ["ContextStack"]
      325 CALL                             R8 2 -1
      326 RETURN                           R8 -1

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
       76 GETTABLEKS                       R13 R11 K22 ["PluginButton"]
       78 GETTABLEKS                       R14 R11 K23 ["PluginToolbar"]
       80 GETTABLEKS                       R15 R8 K24 ["ContextServices"]
       82 GETTABLEKS                       R16 R15 K25 ["Plugin"]
       84 GETTABLEKS                       R17 R15 K26 ["Mouse"]
       86 GETTABLEKS                       R18 R15 K27 ["Design"]
       88 GETTABLEKS                       R19 R8 K28 ["Styling"]
       90 GETTABLEKS                       R19 R19 K29 ["registerPluginStyles"]
       92 GETIMPORT                        R20 K9 [require]
       94 GETTABLEKS                       R21 R2 K30 ["Src"]
       96 GETTABLEKS                       R21 R21 K31 ["Resources"]
       98 GETTABLEKS                       R21 R21 K32 ["MakeTheme"]
      100 CALL                             R20 1 1
      101 GETIMPORT                        R21 K9 [require]
      103 GETTABLEKS                       R22 R2 K30 ["Src"]
      105 GETTABLEKS                       R22 R22 K33 ["Util"]
      107 GETTABLEKS                       R22 R22 K34 ["SelectionWrapper"]
      109 CALL                             R21 1 1
      110 GETIMPORT                        R22 K9 [require]
      112 GETTABLEKS                       R23 R2 K30 ["Src"]
      114 GETTABLEKS                       R23 R23 K31 ["Resources"]
      116 GETTABLEKS                       R23 R23 K35 ["createAnalyticsHandlers"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K9 [require]
      121 GETTABLEKS                       R24 R2 K30 ["Src"]
      123 GETTABLEKS                       R24 R24 K33 ["Util"]
      125 GETTABLEKS                       R24 R24 K36 ["makePluginActions"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K9 [require]
      130 GETTABLEKS                       R25 R2 K30 ["Src"]
      132 GETTABLEKS                       R25 R25 K15 ["Components"]
      134 GETTABLEKS                       R25 R25 K37 ["DEPRECATED_LookContext"]
      136 CALL                             R24 1 1
      137 GETIMPORT                        R25 K9 [require]
      139 GETTABLEKS                       R26 R2 K30 ["Src"]
      141 GETTABLEKS                       R26 R26 K15 ["Components"]
      143 GETTABLEKS                       R26 R26 K38 ["UGCValidationContext"]
      145 CALL                             R25 1 1
      146 GETIMPORT                        R26 K9 [require]
      148 GETTABLEKS                       R27 R2 K30 ["Src"]
      150 GETTABLEKS                       R27 R27 K15 ["Components"]
      152 GETTABLEKS                       R27 R27 K39 ["EditingTools"]
      154 GETTABLEKS                       R27 R27 K40 ["EditingWorldModelContext"]
      156 CALL                             R26 1 1
      157 GETIMPORT                        R27 K9 [require]
      159 GETTABLEKS                       R28 R2 K30 ["Src"]
      161 GETTABLEKS                       R28 R28 K15 ["Components"]
      163 GETTABLEKS                       R28 R28 K41 ["ContextStack"]
      165 CALL                             R27 1 1
      166 GETTABLEKS                       R28 R2 K30 ["Src"]
      168 GETTABLEKS                       R28 R28 K31 ["Resources"]
      170 GETTABLEKS                       R28 R28 K42 ["Localization"]
      172 GETTABLEKS                       R28 R28 K43 ["SourceStrings"]
      174 GETTABLEKS                       R29 R2 K30 ["Src"]
      176 GETTABLEKS                       R29 R29 K31 ["Resources"]
      178 GETTABLEKS                       R29 R29 K42 ["Localization"]
      180 GETTABLEKS                       R29 R29 K44 ["LocalizedStrings"]
      182 GETTABLEKS                       R30 R2 K30 ["Src"]
      184 GETTABLEKS                       R30 R30 K15 ["Components"]
      186 GETIMPORT                        R31 K9 [require]
      188 GETTABLEKS                       R32 R30 K45 ["App"]
      190 CALL                             R31 1 1
      191 GETIMPORT                        R32 K9 [require]
      193 GETTABLEKS                       R33 R30 K46 ["TestInExperienceManager"]
      195 CALL                             R32 1 1
      196 GETIMPORT                        R33 K9 [require]
      198 GETTABLEKS                       R34 R2 K30 ["Src"]
      200 GETTABLEKS                       R34 R34 K47 ["Flags"]
      202 GETTABLEKS                       R34 R34 K48 ["getFFlagAvatarAutosetupOptionsInput"]
      204 CALL                             R33 1 1
      205 GETIMPORT                        R34 K9 [require]
      207 GETTABLEKS                       R35 R2 K30 ["Src"]
      209 GETTABLEKS                       R35 R35 K47 ["Flags"]
      211 GETTABLEKS                       R35 R35 K49 ["getFFlagAvatarPreviewerCageEditingTools"]
      213 CALL                             R34 1 1
      214 GETIMPORT                        R35 K9 [require]
      216 GETTABLEKS                       R36 R2 K30 ["Src"]
      218 GETTABLEKS                       R36 R36 K47 ["Flags"]
      220 GETTABLEKS                       R36 R36 K50 ["getFFlagAvatarPreviewerLookComposer"]
      222 CALL                             R35 1 1
      223 GETIMPORT                        R36 K9 [require]
      225 GETTABLEKS                       R37 R2 K30 ["Src"]
      227 GETTABLEKS                       R37 R37 K47 ["Flags"]
      229 GETTABLEKS                       R37 R37 K51 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
      231 CALL                             R36 1 1
      232 GETTABLEKS                       R37 R9 K52 ["PureComponent"]
      234 LOADK                            R39 K53 ["MainPlugin"]
      235 NAMECALL                         R37 R37 K54 ["extend"]
      237 CALL                             R37 2 1
      238 DUPCLOSURE                       R38 K55 [PROTO_6]
      239 CAPTURE                          VAL R33
      240 CAPTURE                          VAL R15
      241 CAPTURE                          VAL R28
      242 CAPTURE                          VAL R29
      243 CAPTURE                          VAL R34
      244 CAPTURE                          VAL R23
      245 CAPTURE                          VAL R22
      246 CAPTURE                          VAL R6
      247 CAPTURE                          VAL R19
      248 SETTABLEKS                       R38 R37 K56 ["init"]
      250 MOVE                             R38 R33
      251 CALL                             R38 0 1
      252 JUMPIF                           R38 ; [+5]
      253 DUPCLOSURE                       R38 K57 [PROTO_7]
      254 CAPTURE                          VAL R9
      255 CAPTURE                          VAL R13
      256 SETTABLEKS                       R38 R37 K58 ["renderButtons"]
      258 MOVE                             R38 R33
      259 CALL                             R38 0 1
      260 JUMPIFNOT                        R38 ; [+3]
      261 DUPCLOSURE                       R38 K59 [PROTO_8]
      262 SETTABLEKS                       R38 R37 K60 ["didUpdate"]
      264 DUPCLOSURE                       R38 K61 [PROTO_10]
      265 CAPTURE                          VAL R16
      266 CAPTURE                          VAL R17
      267 CAPTURE                          VAL R20
      268 CAPTURE                          VAL R3
      269 CAPTURE                          VAL R18
      270 CAPTURE                          VAL R34
      271 CAPTURE                          VAL R21
      272 CAPTURE                          VAL R1
      273 CAPTURE                          VAL R0
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R25
      276 CAPTURE                          VAL R26
      277 CAPTURE                          VAL R35
      278 CAPTURE                          VAL R36
      279 CAPTURE                          VAL R24
      280 CAPTURE                          VAL R15
      281 CAPTURE                          VAL R27
      282 CAPTURE                          VAL R4
      283 CAPTURE                          VAL R33
      284 CAPTURE                          VAL R5
      285 CAPTURE                          VAL R14
      286 CAPTURE                          VAL R32
      287 CAPTURE                          VAL R12
      288 CAPTURE                          VAL R10
      289 CAPTURE                          VAL R7
      290 CAPTURE                          VAL R31
      291 SETTABLEKS                       R38 R37 K62 ["render"]
      293 RETURN                           R37 1
