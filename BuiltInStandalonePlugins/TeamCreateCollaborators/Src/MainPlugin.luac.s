PROTO_0:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["new"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["plugin"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K2 ["Plugin"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["new"]
       14 GETIMPORT                        R2 K4 [Instance.new]
       16 LOADK                            R3 K5 ["StyleSheet"]
       17 CALL                             R2 1 -1
       18 CALL                             R1 -1 1
       19 SETTABLEKS                       R1 R0 K6 ["Design"]
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K0 ["new"]
       24 DUPTABLE                         R2 K10 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       25 GETUPVAL                         R3 4
       26 SETTABLEKS                       R3 R2 K7 ["stringResourceTable"]
       28 GETUPVAL                         R3 5
       29 SETTABLEKS                       R3 R2 K8 ["translationResourceTable"]
       31 LOADK                            R3 K11 ["TeamCreateCollaborators"]
       32 SETTABLEKS                       R3 R2 K9 ["pluginName"]
       34 CALL                             R1 1 1
       35 SETTABLEKS                       R1 R0 K12 ["Localization"]
       37 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 DUPTABLE                         R2 K2 [{"plugin"}]
        4 GETTABLEKS                       R3 R0 K1 ["plugin"]
        6 SETTABLEKS                       R3 R2 K1 ["plugin"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["useMemo"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 NEWTABLE                         R4 0 0
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 7
       23 GETTABLEKS                       R3 R3 K4 ["provide"]
       25 MOVE                             R4 R2
       26 DUPTABLE                         R5 K6 [{"ContextStack"}]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K7 ["createElement"]
       30 GETUPVAL                         R7 8
       31 GETTABLEKS                       R7 R7 K5 ["ContextStack"]
       33 DUPTABLE                         R8 K9 [{"providers"}]
       34 NEWTABLE                         R9 0 2
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K7 ["createElement"]
       39 GETUPVAL                         R11 9
       40 CALL                             R10 1 1
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R11 R11 K7 ["createElement"]
       44 GETUPVAL                         R12 10
       45 DUPTABLE                         R13 K12 [{"universeId", "collaborators"}]
       46 GETTABLEKS                       R14 R1 K10 ["universeId"]
       48 SETTABLEKS                       R14 R13 K10 ["universeId"]
       50 GETTABLEKS                       R14 R1 K11 ["collaborators"]
       52 SETTABLEKS                       R14 R13 K11 ["collaborators"]
       54 CALL                             R11 2 -1
       55 SETLIST                          R9 R10 -1 [1]
       57 SETTABLEKS                       R9 R8 K8 ["providers"]
       59 DUPTABLE                         R9 K16 [{"MainDialog", "VPCTrustedConnectionDialog", "VPCRequestSentDialog"}]
       60 LOADB                            R10 0
       61 GETTABLEKS                       R11 R1 K17 ["activeDialog"]
       63 GETUPVAL                         R12 11
       64 GETTABLEKS                       R12 R12 K18 ["Main"]
       66 JUMPIFNOTEQ                      R11 R12 ; [+73]
       68 GETUPVAL                         R10 1
       69 GETTABLEKS                       R10 R10 K7 ["createElement"]
       71 GETUPVAL                         R11 12
       72 GETTABLEKS                       R11 R11 K19 ["UI"]
       74 GETTABLEKS                       R11 R11 K20 ["Dialog"]
       76 DUPTABLE                         R12 K27 [{"Title", "Enabled", "Modal", "Resizable", "Size", "OnClose"}]
       77 LOADK                            R13 K28 [""]
       78 SETTABLEKS                       R13 R12 K21 ["Title"]
       80 LOADB                            R13 1
       81 SETTABLEKS                       R13 R12 K22 ["Enabled"]
       83 GETUPVAL                         R14 13
       84 NOT                              R13 R14
       85 SETTABLEKS                       R13 R12 K23 ["Modal"]
       87 LOADB                            R13 1
       88 SETTABLEKS                       R13 R12 K24 ["Resizable"]
       90 GETIMPORT                        R13 K31 [Vector2.new]
       92 LOADN                            R14 244
       93 LOADN                            R15 244
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K25 ["Size"]
       97 GETTABLEKS                       R13 R1 K32 ["onMainDialogX"]
       99 SETTABLEKS                       R13 R12 K26 ["OnClose"]
      101 DUPTABLE                         R13 K34 [{"Foundation"}]
      102 GETUPVAL                         R14 1
      103 GETTABLEKS                       R14 R14 K7 ["createElement"]
      105 GETUPVAL                         R15 14
      106 LOADNIL                          R16
      107 DUPTABLE                         R17 K36 [{"MainView"}]
      108 GETUPVAL                         R18 1
      109 GETTABLEKS                       R18 R18 K7 ["createElement"]
      111 GETUPVAL                         R19 15
      112 DUPTABLE                         R20 K41 [{"universeId", "placeId", "onOpenTrustedConnectionDialog", "onRequestComplete", "onClose"}]
      113 GETTABLEKS                       R21 R1 K10 ["universeId"]
      115 SETTABLEKS                       R21 R20 K10 ["universeId"]
      117 GETTABLEKS                       R21 R1 K37 ["placeId"]
      119 SETTABLEKS                       R21 R20 K37 ["placeId"]
      121 GETTABLEKS                       R21 R1 K38 ["onOpenTrustedConnectionDialog"]
      123 SETTABLEKS                       R21 R20 K38 ["onOpenTrustedConnectionDialog"]
      125 GETTABLEKS                       R21 R1 K39 ["onRequestComplete"]
      127 SETTABLEKS                       R21 R20 K39 ["onRequestComplete"]
      129 GETTABLEKS                       R21 R1 K42 ["onCloseAll"]
      131 SETTABLEKS                       R21 R20 K40 ["onClose"]
      133 CALL                             R18 2 1
      134 SETTABLEKS                       R18 R17 K35 ["MainView"]
      136 CALL                             R14 3 1
      137 SETTABLEKS                       R14 R13 K33 ["Foundation"]
      139 CALL                             R10 3 1
      140 SETTABLEKS                       R10 R9 K13 ["MainDialog"]
      142 LOADB                            R10 0
      143 GETTABLEKS                       R11 R1 K17 ["activeDialog"]
      145 GETUPVAL                         R12 11
      146 GETTABLEKS                       R12 R12 K43 ["VPCTrustedConnection"]
      148 JUMPIFNOTEQ                      R11 R12 ; [+65]
      150 GETUPVAL                         R10 1
      151 GETTABLEKS                       R10 R10 K7 ["createElement"]
      153 GETUPVAL                         R11 12
      154 GETTABLEKS                       R11 R11 K19 ["UI"]
      156 GETTABLEKS                       R11 R11 K20 ["Dialog"]
      158 DUPTABLE                         R12 K27 [{"Title", "Enabled", "Modal", "Resizable", "Size", "OnClose"}]
      159 LOADK                            R13 K28 [""]
      160 SETTABLEKS                       R13 R12 K21 ["Title"]
      162 LOADB                            R13 1
      163 SETTABLEKS                       R13 R12 K22 ["Enabled"]
      165 GETUPVAL                         R14 13
      166 NOT                              R13 R14
      167 SETTABLEKS                       R13 R12 K23 ["Modal"]
      169 LOADB                            R13 0
      170 SETTABLEKS                       R13 R12 K24 ["Resizable"]
      172 GETIMPORT                        R13 K31 [Vector2.new]
      174 LOADN                            R14 8
      175 LOADN                            R15 11
      176 CALL                             R13 2 1
      177 SETTABLEKS                       R13 R12 K25 ["Size"]
      179 GETTABLEKS                       R13 R1 K44 ["onNewParentDialogX"]
      181 SETTABLEKS                       R13 R12 K26 ["OnClose"]
      183 DUPTABLE                         R13 K34 [{"Foundation"}]
      184 GETUPVAL                         R14 1
      185 GETTABLEKS                       R14 R14 K7 ["createElement"]
      187 GETUPVAL                         R15 14
      188 LOADNIL                          R16
      189 DUPTABLE                         R17 K45 [{"Dialog"}]
      190 GETUPVAL                         R18 1
      191 GETTABLEKS                       R18 R18 K7 ["createElement"]
      193 GETUPVAL                         R19 16
      194 DUPTABLE                         R20 K46 [{"onClose", "onRequestComplete", "universeId"}]
      195 GETTABLEKS                       R21 R1 K47 ["onCloseTrustedConnectionDialog"]
      197 SETTABLEKS                       R21 R20 K40 ["onClose"]
      199 GETTABLEKS                       R21 R1 K39 ["onRequestComplete"]
      201 SETTABLEKS                       R21 R20 K39 ["onRequestComplete"]
      203 GETTABLEKS                       R21 R1 K10 ["universeId"]
      205 SETTABLEKS                       R21 R20 K10 ["universeId"]
      207 CALL                             R18 2 1
      208 SETTABLEKS                       R18 R17 K20 ["Dialog"]
      210 CALL                             R14 3 1
      211 SETTABLEKS                       R14 R13 K33 ["Foundation"]
      213 CALL                             R10 3 1
      214 SETTABLEKS                       R10 R9 K14 ["VPCTrustedConnectionDialog"]
      216 LOADB                            R10 0
      217 GETTABLEKS                       R11 R1 K17 ["activeDialog"]
      219 GETUPVAL                         R12 11
      220 GETTABLEKS                       R12 R12 K48 ["VPCRequestSent"]
      222 JUMPIFNOTEQ                      R11 R12 ; [+78]
      224 GETTABLEKS                       R10 R1 K49 ["requestResult"]
      226 JUMPIFNOT                        R10 ; [+74]
      227 GETUPVAL                         R10 1
      228 GETTABLEKS                       R10 R10 K7 ["createElement"]
      230 GETUPVAL                         R11 12
      231 GETTABLEKS                       R11 R11 K19 ["UI"]
      233 GETTABLEKS                       R11 R11 K20 ["Dialog"]
      235 DUPTABLE                         R12 K27 [{"Title", "Enabled", "Modal", "Resizable", "Size", "OnClose"}]
      236 LOADK                            R13 K28 [""]
      237 SETTABLEKS                       R13 R12 K21 ["Title"]
      239 LOADB                            R13 1
      240 SETTABLEKS                       R13 R12 K22 ["Enabled"]
      242 GETUPVAL                         R14 13
      243 NOT                              R13 R14
      244 SETTABLEKS                       R13 R12 K23 ["Modal"]
      246 LOADB                            R13 0
      247 SETTABLEKS                       R13 R12 K24 ["Resizable"]
      249 GETIMPORT                        R13 K31 [Vector2.new]
      251 LOADN                            R14 8
      252 LOADN                            R15 158
      253 CALL                             R13 2 1
      254 SETTABLEKS                       R13 R12 K25 ["Size"]
      256 GETTABLEKS                       R13 R1 K50 ["onRequestFailedDialogX"]
      258 SETTABLEKS                       R13 R12 K26 ["OnClose"]
      260 DUPTABLE                         R13 K34 [{"Foundation"}]
      261 GETUPVAL                         R14 1
      262 GETTABLEKS                       R14 R14 K7 ["createElement"]
      264 GETUPVAL                         R15 14
      265 LOADNIL                          R16
      266 DUPTABLE                         R17 K45 [{"Dialog"}]
      267 GETUPVAL                         R18 1
      268 GETTABLEKS                       R18 R18 K7 ["createElement"]
      270 GETUPVAL                         R19 17
      271 DUPTABLE                         R20 K54 [{"statusCode", "errorMessage", "responseBody", "onClose"}]
      272 GETTABLEKS                       R21 R1 K49 ["requestResult"]
      274 GETTABLEKS                       R21 R21 K51 ["statusCode"]
      276 SETTABLEKS                       R21 R20 K51 ["statusCode"]
      278 GETTABLEKS                       R21 R1 K49 ["requestResult"]
      280 GETTABLEKS                       R21 R21 K52 ["errorMessage"]
      282 SETTABLEKS                       R21 R20 K52 ["errorMessage"]
      284 GETTABLEKS                       R21 R1 K49 ["requestResult"]
      286 GETTABLEKS                       R21 R21 K53 ["responseBody"]
      288 SETTABLEKS                       R21 R20 K53 ["responseBody"]
      290 GETTABLEKS                       R21 R1 K42 ["onCloseAll"]
      292 SETTABLEKS                       R21 R20 K40 ["onClose"]
      294 CALL                             R18 2 1
      295 SETTABLEKS                       R18 R17 K20 ["Dialog"]
      297 CALL                             R14 3 1
      298 SETTABLEKS                       R14 R13 K33 ["Foundation"]
      300 CALL                             R10 3 1
      301 SETTABLEKS                       R10 R9 K15 ["VPCRequestSentDialog"]
      303 CALL                             R6 3 1
      304 SETTABLEKS                       R6 R5 K5 ["ContextStack"]
      306 CALL                             R3 2 -1
      307 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TeamCreateCollaborators"]
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
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Plugin"]
       39 GETTABLEKS                       R7 R5 K13 ["Design"]
       41 GETTABLEKS                       R8 R5 K14 ["Localization"]
       43 GETTABLEKS                       R9 R0 K15 ["Src"]
       45 GETTABLEKS                       R9 R9 K16 ["Resources"]
       47 GETTABLEKS                       R9 R9 K14 ["Localization"]
       49 GETTABLEKS                       R9 R9 K17 ["SourceStrings"]
       51 GETTABLEKS                       R10 R0 K15 ["Src"]
       53 GETTABLEKS                       R10 R10 K16 ["Resources"]
       55 GETTABLEKS                       R10 R10 K14 ["Localization"]
       57 GETTABLEKS                       R10 R10 K18 ["LocalizedStrings"]
       59 GETTABLEKS                       R11 R4 K19 ["Components"]
       61 GETTABLEKS                       R11 R11 K20 ["FoundationProviderAdapter"]
       63 GETTABLEKS                       R12 R0 K15 ["Src"]
       65 GETTABLEKS                       R12 R12 K19 ["Components"]
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R12 K21 ["MainView"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R15 R12 K22 ["VPCTrustedConnectionDialog"]
       76 CALL                             R14 1 1
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R12 K23 ["VPCRequestSentDialog"]
       81 CALL                             R15 1 1
       82 GETTABLEKS                       R16 R0 K15 ["Src"]
       84 GETTABLEKS                       R16 R16 K24 ["Contexts"]
       86 GETIMPORT                        R17 K5 [require]
       88 GETTABLEKS                       R18 R16 K25 ["NetworkContextProvider"]
       90 CALL                             R17 1 1
       91 GETIMPORT                        R18 K5 [require]
       93 GETTABLEKS                       R19 R16 K26 ["ControllerContextProvider"]
       95 CALL                             R18 1 1
       96 GETTABLEKS                       R19 R0 K15 ["Src"]
       98 GETTABLEKS                       R19 R19 K27 ["Hooks"]
      100 GETIMPORT                        R20 K5 [require]
      102 GETTABLEKS                       R21 R19 K28 ["usePluginStateController"]
      104 CALL                             R20 1 1
      105 GETTABLEKS                       R21 R20 K29 ["ActiveDialog"]
      107 GETIMPORT                        R22 K31 [game]
      109 LOADK                            R24 K32 ["DebugBuiltInPluginModalsNotBlocking"]
      110 NAMECALL                         R22 R22 K33 ["GetFastFlag"]
      112 CALL                             R22 2 1
      113 DUPCLOSURE                       R23 K34 [PROTO_1]
      114 CAPTURE                          VAL R20
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R17
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R21
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R22
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R15
      132 SETGLOBAL                        R23 K35 ["MainPlugin"]
      134 GETGLOBAL                        R23 K35 ["MainPlugin"]
      136 RETURN                           R23 1
