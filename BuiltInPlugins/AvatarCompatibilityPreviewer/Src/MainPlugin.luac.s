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
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["props"]
        6 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
        8 GETTABLEKS                       R0 R1 K2 ["mainButtonClickedSignal"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
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
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
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
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K8 ["Localization"]
       31 GETTABLEKS                       R2 R3 K9 ["new"]
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
       49 GETUPVAL                         R4 1
       50 GETTABLEKS                       R3 R4 K16 ["PluginActions"]
       52 GETTABLEKS                       R2 R3 K9 ["new"]
       54 GETTABLEKS                       R4 R0 K17 ["props"]
       56 GETTABLEKS                       R3 R4 K18 ["Plugin"]
       58 GETUPVAL                         R4 5
       59 GETTABLEKS                       R6 R0 K17 ["props"]
       61 GETTABLEKS                       R5 R6 K18 ["Plugin"]
       63 GETTABLEKS                       R6 R0 K15 ["localization"]
       65 CALL                             R4 2 -1
       66 CALL                             R2 -1 1
       67 SETTABLEKS                       R2 R0 K19 ["pluginActions"]
       69 GETUPVAL                         R2 6
       70 CALL                             R2 0 1
       71 JUMPIF                           R2 ; [+9]
       72 GETUPVAL                         R2 7
       73 LOADK                            R4 K20 ["ValidateUgcBody"]
       74 NEWCLOSURE                       R5 P5
       75 CAPTURE                          VAL R0
       76 NAMECALL                         R2 R2 K21 ["Bind"]
       78 CALL                             R2 3 1
       79 SETTABLEKS                       R2 R0 K22 ["onImporterValidateUgcRequestConnection"]
       81 GETUPVAL                         R4 1
       82 GETTABLEKS                       R3 R4 K23 ["Analytics"]
       84 GETTABLEKS                       R2 R3 K9 ["new"]
       86 GETUPVAL                         R3 8
       87 CALL                             R2 1 1
       88 SETTABLEKS                       R2 R0 K24 ["analytics"]
       90 GETUPVAL                         R2 9
       91 JUMPIFNOT                        R2 ; [+22]
       92 GETUPVAL                         R4 9
       93 GETTABLEKS                       R3 R4 K25 ["Util"]
       95 GETTABLEKS                       R2 R3 K26 ["createFoundationDesignBinding"]
       97 CALL                             R2 0 2
       98 SETTABLEKS                       R3 R0 K27 ["onFoundationStyleSheetChange"]
      100 GETUPVAL                         R4 10
      101 GETTABLEKS                       R5 R1 K18 ["Plugin"]
      103 LOADNIL                          R6
      104 LOADNIL                          R7
      105 NEWTABLE                         R8 0 1
      107 MOVE                             R9 R2
      108 SETLIST                          R8 R9 1 [1]
      110 CALL                             R4 4 1
      111 SETTABLEKS                       R4 R0 K28 ["design"]
      113 RETURN                           R0 0
      114 GETUPVAL                         R2 10
      115 GETTABLEKS                       R3 R1 K18 ["Plugin"]
      117 CALL                             R2 1 1
      118 SETTABLEKS                       R2 R0 K28 ["design"]
      120 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R3 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K4 ["createElement"]
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

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["onImporterValidateUgcRequestConnection"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["onImporterValidateUgcRequestConnection"]
        6 NAMECALL                         R1 R1 K1 ["Disconnect"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["onImporterValidateUgcRequestConnection"]
       12 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        4 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R3 R4 K4 ["enabled"]
       10 NAMECALL                         R1 R1 K5 ["SetActive"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 NEWTABLE                         R5 1 6
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K4 ["new"]
       13 MOVE                             R7 R3
       14 CALL                             R6 1 1
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R7 R8 K4 ["new"]
       18 NAMECALL                         R8 R3 K5 ["getMouse"]
       20 CALL                             R8 1 -1
       21 CALL                             R7 -1 1
       22 GETUPVAL                         R8 2
       23 CALL                             R8 0 1
       24 GETTABLEKS                       R9 R0 K6 ["localization"]
       26 GETTABLEKS                       R10 R0 K7 ["analytics"]
       28 GETUPVAL                         R14 3
       29 GETTABLEKS                       R13 R14 K8 ["Contexts"]
       31 GETTABLEKS                       R12 R13 K9 ["PreviewContext"]
       33 GETTABLEKS                       R11 R12 K4 ["new"]
       35 CALL                             R11 0 1
       36 SETLIST                          R5 R6 6 [1]
       38 GETUPVAL                         R13 4
       39 GETTABLEKS                       R12 R13 K4 ["new"]
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
       58 GETUPVAL                         R9 6
       59 GETTABLEKS                       R8 R9 K4 ["new"]
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
       75 GETUPVAL                         R9 9
       76 GETTABLEKS                       R8 R9 K17 ["createElement"]
       78 GETUPVAL                         R10 10
       79 GETTABLEKS                       R9 R10 K18 ["Provider"]
       81 CALL                             R8 1 1
       82 GETUPVAL                         R10 5
       83 CALL                             R10 0 1
       84 JUMPIFNOT                        R10 ; [+8]
       85 GETUPVAL                         R10 9
       86 GETTABLEKS                       R9 R10 K17 ["createElement"]
       88 GETUPVAL                         R11 11
       89 GETTABLEKS                       R10 R11 K18 ["Provider"]
       91 CALL                             R9 1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R9
       94 SETLIST                          R7 R8 2 [1]
       96 GETUPVAL                         R8 12
       97 CALL                             R8 0 1
       98 JUMPIFNOT                        R8 ; [+12]
       99 MOVE                             R9 R7
      100 GETUPVAL                         R11 9
      101 GETTABLEKS                       R10 R11 K17 ["createElement"]
      103 GETUPVAL                         R12 13
      104 GETTABLEKS                       R11 R12 K18 ["Provider"]
      106 CALL                             R10 1 -1
      107 FASTCALL                         TABLE_INSERT ; [+2]
      108 GETIMPORT                        R8 K15 [table.insert]
      110 CALL                             R8 -1 0
      111 GETUPVAL                         R9 14
      112 GETTABLEKS                       R8 R9 K19 ["provide"]
      114 MOVE                             R9 R5
      115 DUPTABLE                         R10 K21 [{"ContextStack"}]
      116 GETUPVAL                         R12 9
      117 GETTABLEKS                       R11 R12 K17 ["createElement"]
      119 GETUPVAL                         R12 15
      120 DUPTABLE                         R13 K23 [{"providers"}]
      121 GETUPVAL                         R15 16
      122 GETTABLEKS                       R14 R15 K24 ["append"]
      124 GETUPVAL                         R16 17
      125 CALL                             R16 0 1
      126 JUMPIFNOT                        R16 ; [+28]
      127 NEWTABLE                         R15 0 1
      129 GETUPVAL                         R17 9
      130 GETTABLEKS                       R16 R17 K17 ["createElement"]
      132 GETUPVAL                         R18 18
      133 GETTABLEKS                       R17 R18 K25 ["FoundationProvider"]
      135 DUPTABLE                         R18 K28 [{"theme", "overlayGui"}]
      136 GETUPVAL                         R22 18
      137 GETTABLEKS                       R21 R22 K29 ["Enums"]
      139 GETTABLEKS                       R20 R21 K30 ["Theme"]
      141 GETTABLEKS                       R19 R20 K31 ["Dark"]
      143 SETTABLEKS                       R19 R18 K26 ["theme"]
      145 GETTABLEKS                       R20 R1 K32 ["PluginLoaderContext"]
      147 GETTABLEKS                       R19 R20 K33 ["mainDockWidget"]
      149 SETTABLEKS                       R19 R18 K27 ["overlayGui"]
      151 CALL                             R16 2 -1
      152 SETLIST                          R15 R16 -1 [1]
      154 JUMP                             ; [+2]
      155 NEWTABLE                         R15 0 0
      157 MOVE                             R16 R7
      158 CALL                             R14 2 1
      159 SETTABLEKS                       R14 R13 K22 ["providers"]
      161 DUPTABLE                         R14 K37 [{"Toolbar", "TestInExperienceManager", "MainWidget"}]
      162 GETUPVAL                         R16 17
      163 CALL                             R16 0 1
      164 JUMPIF                           R16 ; [+14]
      165 GETUPVAL                         R16 9
      166 GETTABLEKS                       R15 R16 K17 ["createElement"]
      168 GETUPVAL                         R16 19
      169 DUPTABLE                         R17 K40 [{"Title", "RenderButtons"}]
      170 LOADK                            R18 K41 ["AvatarPreviewer"]
      171 SETTABLEKS                       R18 R17 K38 ["Title"]
      173 NEWCLOSURE                       R18 P0
      174 CAPTURE                          VAL R0
      175 SETTABLEKS                       R18 R17 K39 ["RenderButtons"]
      177 CALL                             R15 2 1
      178 JUMP                             ; [+1]
      179 LOADNIL                          R15
      180 SETTABLEKS                       R15 R14 K34 ["Toolbar"]
      182 JUMPIFNOT                        R6 ; [+6]
      183 GETUPVAL                         R16 9
      184 GETTABLEKS                       R15 R16 K17 ["createElement"]
      186 GETUPVAL                         R16 20
      187 CALL                             R15 1 1
      188 JUMP                             ; [+1]
      189 LOADNIL                          R15
      190 SETTABLEKS                       R15 R14 K35 ["TestInExperienceManager"]
      192 GETUPVAL                         R16 9
      193 GETTABLEKS                       R15 R16 K17 ["createElement"]
      195 GETUPVAL                         R16 21
      196 NEWTABLE                         R17 16 0
      198 LOADK                            R18 K42 ["AvatarCompatibilityPreviewer"]
      199 SETTABLEKS                       R18 R17 K43 ["Id"]
      201 SETTABLEKS                       R4 R17 K44 ["Enabled"]
      203 GETUPVAL                         R19 17
      204 CALL                             R19 0 1
      205 JUMPIFNOT                        R19 ; [+5]
      206 GETTABLEKS                       R19 R1 K32 ["PluginLoaderContext"]
      208 GETTABLEKS                       R18 R19 K33 ["mainDockWidget"]
      210 JUMP                             ; [+1]
      211 LOADNIL                          R18
      212 SETTABLEKS                       R18 R17 K45 ["Widget"]
      214 GETTABLEKS                       R18 R0 K6 ["localization"]
      216 LOADK                            R20 K2 ["Plugin"]
      217 LOADK                            R21 K46 ["Name"]
      218 NAMECALL                         R18 R18 K47 ["getText"]
      220 CALL                             R18 3 1
      221 SETTABLEKS                       R18 R17 K38 ["Title"]
      223 GETIMPORT                        R18 K51 [Enum.ZIndexBehavior.Sibling]
      225 SETTABLEKS                       R18 R17 K49 ["ZIndexBehavior"]
      227 GETIMPORT                        R18 K54 [Enum.InitialDockState.Left]
      229 SETTABLEKS                       R18 R17 K52 ["InitialDockState"]
      231 GETIMPORT                        R18 K56 [Vector2.new]
      233 LOADN                            R19 194
      234 LOADN                            R20 88
      235 CALL                             R18 2 1
      236 SETTABLEKS                       R18 R17 K57 ["Size"]
      238 GETIMPORT                        R18 K56 [Vector2.new]
      240 LOADN                            R19 240
      241 LOADN                            R20 250
      242 CALL                             R18 2 1
      243 SETTABLEKS                       R18 R17 K58 ["MinSize"]
      245 GETTABLEKS                       R18 R0 K59 ["onClose"]
      247 SETTABLEKS                       R18 R17 K60 ["OnClose"]
      249 LOADB                            R18 1
      250 SETTABLEKS                       R18 R17 K61 ["ShouldRestore"]
      252 GETTABLEKS                       R18 R0 K62 ["onRestore"]
      254 SETTABLEKS                       R18 R17 K63 ["OnWidgetRestored"]
      256 GETUPVAL                         R19 17
      257 CALL                             R19 0 1
      258 JUMPIFNOT                        R19 ; [+3]
      259 GETTABLEKS                       R18 R0 K64 ["onDockWidgetCreated"]
      261 JUMP                             ; [+1]
      262 LOADNIL                          R18
      263 SETTABLEKS                       R18 R17 K65 ["OnWidgetCreated"]
      265 GETUPVAL                         R20 22
      266 GETTABLEKS                       R19 R20 K66 ["Change"]
      268 GETTABLEKS                       R18 R19 K44 ["Enabled"]
      270 GETTABLEKS                       R19 R0 K67 ["onWidgetEnabledChanged"]
      272 SETTABLE                         R19 R17 R18
      273 GETUPVAL                         R19 17
      274 CALL                             R19 0 1
      275 JUMPIFNOT                        R19 ; [+27]
      276 DUPTABLE                         R18 K68 [{"Provider"}]
      277 GETUPVAL                         R20 9
      278 GETTABLEKS                       R19 R20 K17 ["createElement"]
      280 GETUPVAL                         R20 23
      281 DUPTABLE                         R21 K70 [{"onStyleSheetChange"}]
      282 GETTABLEKS                       R22 R0 K71 ["onFoundationStyleSheetChange"]
      284 SETTABLEKS                       R22 R21 K69 ["onStyleSheetChange"]
      286 DUPTABLE                         R22 K73 [{"App"}]
      287 GETTABLEKS                       R24 R0 K1 ["state"]
      289 GETTABLEKS                       R23 R24 K3 ["enabled"]
      291 JUMPIFNOT                        R23 ; [+5]
      292 GETUPVAL                         R24 9
      293 GETTABLEKS                       R23 R24 K17 ["createElement"]
      295 GETUPVAL                         R24 24
      296 CALL                             R23 1 1
      297 SETTABLEKS                       R23 R22 K72 ["App"]
      299 CALL                             R19 3 1
      300 SETTABLEKS                       R19 R18 K18 ["Provider"]
      302 JUMP                             ; [+13]
      303 DUPTABLE                         R18 K73 [{"App"}]
      304 GETTABLEKS                       R20 R0 K1 ["state"]
      306 GETTABLEKS                       R19 R20 K3 ["enabled"]
      308 JUMPIFNOT                        R19 ; [+5]
      309 GETUPVAL                         R20 9
      310 GETTABLEKS                       R19 R20 K17 ["createElement"]
      312 GETUPVAL                         R20 24
      313 CALL                             R19 1 1
      314 SETTABLEKS                       R19 R18 K72 ["App"]
      316 CALL                             R15 3 1
      317 SETTABLEKS                       R15 R14 K36 ["MainWidget"]
      319 CALL                             R11 3 1
      320 SETTABLEKS                       R11 R10 K20 ["ContextStack"]
      322 CALL                             R8 2 -1
      323 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MemStorageService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Selection"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R5 K7 [script]
       21 GETTABLEKS                       R4 R5 K8 ["Parent"]
       23 GETTABLEKS                       R3 R4 K8 ["Parent"]
       25 GETIMPORT                        R4 K10 [require]
       27 GETTABLEKS                       R6 R3 K11 ["Packages"]
       29 GETTABLEKS                       R5 R6 K12 ["AvatarToolsShared"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K10 [require]
       34 GETTABLEKS                       R7 R3 K11 ["Packages"]
       36 GETTABLEKS                       R6 R7 K13 ["Dash"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K10 [require]
       41 GETTABLEKS                       R8 R3 K11 ["Packages"]
       43 GETTABLEKS                       R7 R8 K14 ["Foundation"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K10 [require]
       48 GETTABLEKS                       R9 R3 K11 ["Packages"]
       50 GETTABLEKS                       R8 R9 K15 ["StudioFoundation"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R9 R7 K16 ["Components"]
       55 GETTABLEKS                       R8 R9 K17 ["FoundationProviderAdapter"]
       57 GETIMPORT                        R9 K10 [require]
       59 GETTABLEKS                       R11 R3 K11 ["Packages"]
       61 GETTABLEKS                       R10 R11 K18 ["Framework"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K10 [require]
       66 GETTABLEKS                       R12 R3 K11 ["Packages"]
       68 GETTABLEKS                       R11 R12 K19 ["React"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K10 [require]
       73 GETTABLEKS                       R13 R3 K11 ["Packages"]
       75 GETTABLEKS                       R12 R13 K20 ["ReactRoblox"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R9 K21 ["UI"]
       80 GETTABLEKS                       R13 R12 K22 ["DockWidget"]
       82 GETTABLEKS                       R14 R12 K23 ["PluginButton"]
       84 GETTABLEKS                       R15 R12 K24 ["PluginToolbar"]
       86 GETTABLEKS                       R16 R9 K25 ["ContextServices"]
       88 GETTABLEKS                       R17 R16 K26 ["Plugin"]
       90 GETTABLEKS                       R18 R16 K27 ["Mouse"]
       92 GETTABLEKS                       R19 R16 K28 ["Design"]
       94 GETTABLEKS                       R21 R9 K29 ["Styling"]
       96 GETTABLEKS                       R20 R21 K30 ["registerPluginStyles"]
       98 GETIMPORT                        R21 K10 [require]
      100 GETTABLEKS                       R24 R3 K31 ["Src"]
      102 GETTABLEKS                       R23 R24 K32 ["Resources"]
      104 GETTABLEKS                       R22 R23 K33 ["MakeTheme"]
      106 CALL                             R21 1 1
      107 GETIMPORT                        R22 K10 [require]
      109 GETTABLEKS                       R25 R3 K31 ["Src"]
      111 GETTABLEKS                       R24 R25 K34 ["Util"]
      113 GETTABLEKS                       R23 R24 K35 ["SelectionWrapper"]
      115 CALL                             R22 1 1
      116 GETIMPORT                        R23 K10 [require]
      118 GETTABLEKS                       R26 R3 K31 ["Src"]
      120 GETTABLEKS                       R25 R26 K32 ["Resources"]
      122 GETTABLEKS                       R24 R25 K36 ["createAnalyticsHandlers"]
      124 CALL                             R23 1 1
      125 GETIMPORT                        R24 K10 [require]
      127 GETTABLEKS                       R27 R3 K31 ["Src"]
      129 GETTABLEKS                       R26 R27 K34 ["Util"]
      131 GETTABLEKS                       R25 R26 K37 ["makePluginActions"]
      133 CALL                             R24 1 1
      134 GETIMPORT                        R25 K10 [require]
      136 GETTABLEKS                       R28 R3 K31 ["Src"]
      138 GETTABLEKS                       R27 R28 K16 ["Components"]
      140 GETTABLEKS                       R26 R27 K38 ["LookContext"]
      142 CALL                             R25 1 1
      143 GETIMPORT                        R26 K10 [require]
      145 GETTABLEKS                       R29 R3 K31 ["Src"]
      147 GETTABLEKS                       R28 R29 K16 ["Components"]
      149 GETTABLEKS                       R27 R28 K39 ["UGCValidationContext"]
      151 CALL                             R26 1 1
      152 GETIMPORT                        R27 K10 [require]
      154 GETTABLEKS                       R31 R3 K31 ["Src"]
      156 GETTABLEKS                       R30 R31 K16 ["Components"]
      158 GETTABLEKS                       R29 R30 K40 ["EditingTools"]
      160 GETTABLEKS                       R28 R29 K41 ["EditingWorldModelContext"]
      162 CALL                             R27 1 1
      163 GETIMPORT                        R28 K10 [require]
      165 GETTABLEKS                       R31 R3 K31 ["Src"]
      167 GETTABLEKS                       R30 R31 K16 ["Components"]
      169 GETTABLEKS                       R29 R30 K42 ["ContextStack"]
      171 CALL                             R28 1 1
      172 GETTABLEKS                       R32 R3 K31 ["Src"]
      174 GETTABLEKS                       R31 R32 K32 ["Resources"]
      176 GETTABLEKS                       R30 R31 K43 ["Localization"]
      178 GETTABLEKS                       R29 R30 K44 ["SourceStrings"]
      180 GETTABLEKS                       R33 R3 K31 ["Src"]
      182 GETTABLEKS                       R32 R33 K32 ["Resources"]
      184 GETTABLEKS                       R31 R32 K43 ["Localization"]
      186 GETTABLEKS                       R30 R31 K45 ["LocalizedStrings"]
      188 GETTABLEKS                       R32 R3 K31 ["Src"]
      190 GETTABLEKS                       R31 R32 K16 ["Components"]
      192 GETIMPORT                        R32 K10 [require]
      194 GETTABLEKS                       R33 R31 K46 ["App"]
      196 CALL                             R32 1 1
      197 GETIMPORT                        R33 K10 [require]
      199 GETTABLEKS                       R34 R31 K47 ["TestInExperienceManager"]
      201 CALL                             R33 1 1
      202 GETIMPORT                        R34 K10 [require]
      204 GETTABLEKS                       R37 R3 K31 ["Src"]
      206 GETTABLEKS                       R36 R37 K48 ["Flags"]
      208 GETTABLEKS                       R35 R36 K49 ["getFFlagAvatarAutosetupOptionsInput"]
      210 CALL                             R34 1 1
      211 GETIMPORT                        R35 K10 [require]
      213 GETTABLEKS                       R38 R3 K31 ["Src"]
      215 GETTABLEKS                       R37 R38 K48 ["Flags"]
      217 GETTABLEKS                       R36 R37 K50 ["getFFlagAvatarPreviewerCageEditingTools"]
      219 CALL                             R35 1 1
      220 GETIMPORT                        R36 K10 [require]
      222 GETTABLEKS                       R39 R3 K31 ["Src"]
      224 GETTABLEKS                       R38 R39 K48 ["Flags"]
      226 GETTABLEKS                       R37 R38 K51 ["getFFlagUnlinkImporterAndAvatarPreview"]
      228 CALL                             R36 1 1
      229 GETIMPORT                        R37 K10 [require]
      231 GETTABLEKS                       R40 R3 K31 ["Src"]
      233 GETTABLEKS                       R39 R40 K48 ["Flags"]
      235 GETTABLEKS                       R38 R39 K52 ["getFFlagAvatarPreviewerLookComposer"]
      237 CALL                             R37 1 1
      238 GETTABLEKS                       R38 R10 K53 ["PureComponent"]
      240 LOADK                            R40 K54 ["MainPlugin"]
      241 NAMECALL                         R38 R38 K55 ["extend"]
      243 CALL                             R38 2 1
      244 DUPCLOSURE                       R39 K56 [PROTO_7]
      245 CAPTURE                          VAL R34
      246 CAPTURE                          VAL R16
      247 CAPTURE                          VAL R29
      248 CAPTURE                          VAL R30
      249 CAPTURE                          VAL R35
      250 CAPTURE                          VAL R24
      251 CAPTURE                          VAL R36
      252 CAPTURE                          VAL R0
      253 CAPTURE                          VAL R23
      254 CAPTURE                          VAL R7
      255 CAPTURE                          VAL R20
      256 SETTABLEKS                       R39 R38 K57 ["init"]
      258 MOVE                             R39 R34
      259 CALL                             R39 0 1
      260 JUMPIF                           R39 ; [+5]
      261 DUPCLOSURE                       R39 K58 [PROTO_8]
      262 CAPTURE                          VAL R10
      263 CAPTURE                          VAL R14
      264 SETTABLEKS                       R39 R38 K59 ["renderButtons"]
      266 MOVE                             R39 R36
      267 CALL                             R39 0 1
      268 JUMPIF                           R39 ; [+3]
      269 DUPCLOSURE                       R39 K60 [PROTO_9]
      270 SETTABLEKS                       R39 R38 K61 ["willUnmount"]
      272 MOVE                             R39 R34
      273 CALL                             R39 0 1
      274 JUMPIFNOT                        R39 ; [+3]
      275 DUPCLOSURE                       R39 K62 [PROTO_10]
      276 SETTABLEKS                       R39 R38 K63 ["didUpdate"]
      278 DUPCLOSURE                       R39 K64 [PROTO_12]
      279 CAPTURE                          VAL R17
      280 CAPTURE                          VAL R18
      281 CAPTURE                          VAL R21
      282 CAPTURE                          VAL R4
      283 CAPTURE                          VAL R19
      284 CAPTURE                          VAL R35
      285 CAPTURE                          VAL R22
      286 CAPTURE                          VAL R2
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R10
      289 CAPTURE                          VAL R26
      290 CAPTURE                          VAL R27
      291 CAPTURE                          VAL R37
      292 CAPTURE                          VAL R25
      293 CAPTURE                          VAL R16
      294 CAPTURE                          VAL R28
      295 CAPTURE                          VAL R5
      296 CAPTURE                          VAL R34
      297 CAPTURE                          VAL R6
      298 CAPTURE                          VAL R15
      299 CAPTURE                          VAL R33
      300 CAPTURE                          VAL R13
      301 CAPTURE                          VAL R11
      302 CAPTURE                          VAL R8
      303 CAPTURE                          VAL R32
      304 SETTABLEKS                       R39 R38 K65 ["render"]
      306 RETURN                           R38 1
