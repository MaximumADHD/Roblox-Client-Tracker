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
        1 GETIMPORT                        R2 K2 [Vector2.new]
        3 LOADN                            R3 8
        4 GETTABLEKS                       R4 R0 K3 ["Y"]
        6 CALL                             R2 2 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 DUPTABLE                         R2 K2 [{"plugin"}]
        4 GETTABLEKS                       R3 R0 K1 ["plugin"]
        6 SETTABLEKS                       R3 R2 K1 ["plugin"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K3 ["useState"]
       12 GETIMPORT                        R3 K6 [Vector2.new]
       14 LOADN                            R4 8
       15 LOADN                            R5 158
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 2
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K7 ["useMemo"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 NEWTABLE                         R6 0 0
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 7
       32 GETTABLEKS                       R5 R5 K8 ["provide"]
       34 MOVE                             R6 R4
       35 DUPTABLE                         R7 K10 [{"ContextStack"}]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K11 ["createElement"]
       39 GETUPVAL                         R9 8
       40 GETTABLEKS                       R9 R9 K9 ["ContextStack"]
       42 DUPTABLE                         R10 K13 [{"providers"}]
       43 NEWTABLE                         R11 0 2
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K11 ["createElement"]
       48 GETUPVAL                         R13 9
       49 CALL                             R12 1 1
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R13 R13 K11 ["createElement"]
       53 GETUPVAL                         R14 10
       54 DUPTABLE                         R15 K16 [{"universeId", "collaborators"}]
       55 GETTABLEKS                       R16 R1 K14 ["universeId"]
       57 SETTABLEKS                       R16 R15 K14 ["universeId"]
       59 GETTABLEKS                       R16 R1 K15 ["collaborators"]
       61 SETTABLEKS                       R16 R15 K15 ["collaborators"]
       63 CALL                             R13 2 -1
       64 SETLIST                          R11 R12 -1 [1]
       66 SETTABLEKS                       R11 R10 K12 ["providers"]
       68 DUPTABLE                         R11 K20 [{"MainDialog", "VPCTrustedConnectionDialog", "VPCRequestSentDialog"}]
       69 LOADB                            R12 0
       70 GETTABLEKS                       R13 R1 K21 ["activeDialog"]
       72 GETUPVAL                         R14 11
       73 GETTABLEKS                       R14 R14 K22 ["Main"]
       75 JUMPIFNOTEQ                      R13 R14 ; [+109]
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K11 ["createElement"]
       80 GETUPVAL                         R13 12
       81 GETTABLEKS                       R13 R13 K23 ["UI"]
       83 GETTABLEKS                       R13 R13 K24 ["Dialog"]
       85 DUPTABLE                         R14 K31 [{"Title", "Enabled", "Modal", "Resizable", "Size", "OnClose"}]
       86 LOADK                            R15 K32 [""]
       87 SETTABLEKS                       R15 R14 K25 ["Title"]
       89 LOADB                            R15 1
       90 SETTABLEKS                       R15 R14 K26 ["Enabled"]
       92 GETUPVAL                         R16 13
       93 NOT                              R15 R16
       94 SETTABLEKS                       R15 R14 K27 ["Modal"]
       96 LOADB                            R15 1
       97 SETTABLEKS                       R15 R14 K28 ["Resizable"]
       99 GETIMPORT                        R15 K6 [Vector2.new]
      101 LOADN                            R16 244
      102 LOADN                            R17 244
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K29 ["Size"]
      106 GETTABLEKS                       R15 R1 K33 ["onMainDialogX"]
      108 SETTABLEKS                       R15 R14 K30 ["OnClose"]
      110 DUPTABLE                         R15 K35 [{"Foundation"}]
      111 GETUPVAL                         R16 1
      112 GETTABLEKS                       R16 R16 K11 ["createElement"]
      114 GETUPVAL                         R17 14
      115 LOADNIL                          R18
      116 DUPTABLE                         R19 K37 [{"MainView"}]
      117 GETUPVAL                         R20 1
      118 GETTABLEKS                       R20 R20 K11 ["createElement"]
      120 GETUPVAL                         R21 15
      121 DUPTABLE                         R22 K45 [{"universeId", "placeId", "onOpenTrustedConnectionDialog", "onRequestComplete", "onClose", "canUseLinkedParent", "canUseAddTfLinks", "canCollabAllPcApproved"}]
      122 GETTABLEKS                       R23 R1 K14 ["universeId"]
      124 SETTABLEKS                       R23 R22 K14 ["universeId"]
      126 GETTABLEKS                       R23 R1 K38 ["placeId"]
      128 SETTABLEKS                       R23 R22 K38 ["placeId"]
      130 GETTABLEKS                       R23 R1 K39 ["onOpenTrustedConnectionDialog"]
      132 SETTABLEKS                       R23 R22 K39 ["onOpenTrustedConnectionDialog"]
      134 GETTABLEKS                       R23 R1 K40 ["onRequestComplete"]
      136 SETTABLEKS                       R23 R22 K40 ["onRequestComplete"]
      138 GETTABLEKS                       R23 R1 K46 ["onCloseAll"]
      140 SETTABLEKS                       R23 R22 K41 ["onClose"]
      142 GETTABLEKS                       R24 R1 K47 ["userCapabilities"]
      144 JUMPIFEQKNIL                     R24 ; [+6]
      146 GETTABLEKS                       R23 R1 K47 ["userCapabilities"]
      148 GETTABLEKS                       R23 R23 K42 ["canUseLinkedParent"]
      150 JUMPIF                           R23 ; [+1]
      151 LOADB                            R23 0
      152 SETTABLEKS                       R23 R22 K42 ["canUseLinkedParent"]
      154 GETTABLEKS                       R24 R1 K47 ["userCapabilities"]
      156 JUMPIFEQKNIL                     R24 ; [+6]
      158 GETTABLEKS                       R23 R1 K47 ["userCapabilities"]
      160 GETTABLEKS                       R23 R23 K43 ["canUseAddTfLinks"]
      162 JUMPIF                           R23 ; [+1]
      163 LOADB                            R23 0
      164 SETTABLEKS                       R23 R22 K43 ["canUseAddTfLinks"]
      166 GETTABLEKS                       R24 R1 K47 ["userCapabilities"]
      168 JUMPIFEQKNIL                     R24 ; [+6]
      170 GETTABLEKS                       R23 R1 K47 ["userCapabilities"]
      172 GETTABLEKS                       R23 R23 K44 ["canCollabAllPcApproved"]
      174 JUMPIF                           R23 ; [+1]
      175 LOADB                            R23 0
      176 SETTABLEKS                       R23 R22 K44 ["canCollabAllPcApproved"]
      178 CALL                             R20 2 1
      179 SETTABLEKS                       R20 R19 K36 ["MainView"]
      181 CALL                             R16 3 1
      182 SETTABLEKS                       R16 R15 K34 ["Foundation"]
      184 CALL                             R12 3 1
      185 SETTABLEKS                       R12 R11 K17 ["MainDialog"]
      187 LOADB                            R12 0
      188 GETTABLEKS                       R13 R1 K21 ["activeDialog"]
      190 GETUPVAL                         R14 11
      191 GETTABLEKS                       R14 R14 K48 ["VPCTrustedConnection"]
      193 JUMPIFNOTEQ                      R13 R14 ; [+65]
      195 GETUPVAL                         R12 1
      196 GETTABLEKS                       R12 R12 K11 ["createElement"]
      198 GETUPVAL                         R13 12
      199 GETTABLEKS                       R13 R13 K23 ["UI"]
      201 GETTABLEKS                       R13 R13 K24 ["Dialog"]
      203 DUPTABLE                         R14 K31 [{"Title", "Enabled", "Modal", "Resizable", "Size", "OnClose"}]
      204 LOADK                            R15 K32 [""]
      205 SETTABLEKS                       R15 R14 K25 ["Title"]
      207 LOADB                            R15 1
      208 SETTABLEKS                       R15 R14 K26 ["Enabled"]
      210 GETUPVAL                         R16 13
      211 NOT                              R15 R16
      212 SETTABLEKS                       R15 R14 K27 ["Modal"]
      214 LOADB                            R15 0
      215 SETTABLEKS                       R15 R14 K28 ["Resizable"]
      217 GETIMPORT                        R15 K6 [Vector2.new]
      219 LOADN                            R16 8
      220 LOADN                            R17 11
      221 CALL                             R15 2 1
      222 SETTABLEKS                       R15 R14 K29 ["Size"]
      224 GETTABLEKS                       R15 R1 K49 ["onNewParentDialogX"]
      226 SETTABLEKS                       R15 R14 K30 ["OnClose"]
      228 DUPTABLE                         R15 K35 [{"Foundation"}]
      229 GETUPVAL                         R16 1
      230 GETTABLEKS                       R16 R16 K11 ["createElement"]
      232 GETUPVAL                         R17 14
      233 LOADNIL                          R18
      234 DUPTABLE                         R19 K50 [{"Dialog"}]
      235 GETUPVAL                         R20 1
      236 GETTABLEKS                       R20 R20 K11 ["createElement"]
      238 GETUPVAL                         R21 16
      239 DUPTABLE                         R22 K51 [{"onClose", "onRequestComplete", "universeId"}]
      240 GETTABLEKS                       R23 R1 K52 ["onCloseTrustedConnectionDialog"]
      242 SETTABLEKS                       R23 R22 K41 ["onClose"]
      244 GETTABLEKS                       R23 R1 K40 ["onRequestComplete"]
      246 SETTABLEKS                       R23 R22 K40 ["onRequestComplete"]
      248 GETTABLEKS                       R23 R1 K14 ["universeId"]
      250 SETTABLEKS                       R23 R22 K14 ["universeId"]
      252 CALL                             R20 2 1
      253 SETTABLEKS                       R20 R19 K24 ["Dialog"]
      255 CALL                             R16 3 1
      256 SETTABLEKS                       R16 R15 K34 ["Foundation"]
      258 CALL                             R12 3 1
      259 SETTABLEKS                       R12 R11 K18 ["VPCTrustedConnectionDialog"]
      261 LOADB                            R12 0
      262 GETTABLEKS                       R13 R1 K21 ["activeDialog"]
      264 GETUPVAL                         R14 11
      265 GETTABLEKS                       R14 R14 K53 ["VPCRequestSent"]
      267 JUMPIFNOTEQ                      R13 R14 ; [+77]
      269 GETTABLEKS                       R12 R1 K54 ["requestResult"]
      271 JUMPIFNOT                        R12 ; [+73]
      272 GETUPVAL                         R12 1
      273 GETTABLEKS                       R12 R12 K11 ["createElement"]
      275 GETUPVAL                         R13 12
      276 GETTABLEKS                       R13 R13 K23 ["UI"]
      278 GETTABLEKS                       R13 R13 K24 ["Dialog"]
      280 DUPTABLE                         R14 K31 [{"Title", "Enabled", "Modal", "Resizable", "Size", "OnClose"}]
      281 LOADK                            R15 K32 [""]
      282 SETTABLEKS                       R15 R14 K25 ["Title"]
      284 LOADB                            R15 1
      285 SETTABLEKS                       R15 R14 K26 ["Enabled"]
      287 GETUPVAL                         R16 13
      288 NOT                              R15 R16
      289 SETTABLEKS                       R15 R14 K27 ["Modal"]
      291 LOADB                            R15 0
      292 SETTABLEKS                       R15 R14 K28 ["Resizable"]
      294 SETTABLEKS                       R2 R14 K29 ["Size"]
      296 GETTABLEKS                       R15 R1 K55 ["onRequestFailedDialogX"]
      298 SETTABLEKS                       R15 R14 K30 ["OnClose"]
      300 DUPTABLE                         R15 K35 [{"Foundation"}]
      301 GETUPVAL                         R16 1
      302 GETTABLEKS                       R16 R16 K11 ["createElement"]
      304 GETUPVAL                         R17 14
      305 LOADNIL                          R18
      306 DUPTABLE                         R19 K50 [{"Dialog"}]
      307 GETUPVAL                         R20 1
      308 GETTABLEKS                       R20 R20 K11 ["createElement"]
      310 GETUPVAL                         R21 17
      311 DUPTABLE                         R22 K60 [{"statusCode", "errorMessage", "responseBody", "onClose", "onSizeChanged"}]
      312 GETTABLEKS                       R23 R1 K54 ["requestResult"]
      314 GETTABLEKS                       R23 R23 K56 ["statusCode"]
      316 SETTABLEKS                       R23 R22 K56 ["statusCode"]
      318 GETTABLEKS                       R23 R1 K54 ["requestResult"]
      320 GETTABLEKS                       R23 R23 K57 ["errorMessage"]
      322 SETTABLEKS                       R23 R22 K57 ["errorMessage"]
      324 GETTABLEKS                       R23 R1 K54 ["requestResult"]
      326 GETTABLEKS                       R23 R23 K58 ["responseBody"]
      328 SETTABLEKS                       R23 R22 K58 ["responseBody"]
      330 GETTABLEKS                       R23 R1 K46 ["onCloseAll"]
      332 SETTABLEKS                       R23 R22 K41 ["onClose"]
      334 NEWCLOSURE                       R23 P1
      335 CAPTURE                          VAL R3
      336 SETTABLEKS                       R23 R22 K59 ["onSizeChanged"]
      338 CALL                             R20 2 1
      339 SETTABLEKS                       R20 R19 K24 ["Dialog"]
      341 CALL                             R16 3 1
      342 SETTABLEKS                       R16 R15 K34 ["Foundation"]
      344 CALL                             R12 3 1
      345 SETTABLEKS                       R12 R11 K19 ["VPCRequestSentDialog"]
      347 CALL                             R8 3 1
      348 SETTABLEKS                       R8 R7 K9 ["ContextStack"]
      350 CALL                             R5 2 -1
      351 RETURN                           R5 -1

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
      113 DUPCLOSURE                       R23 K34 [PROTO_2]
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
