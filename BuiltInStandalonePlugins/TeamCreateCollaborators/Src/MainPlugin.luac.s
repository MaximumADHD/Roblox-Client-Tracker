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
       24 DUPTABLE                         R2 K11 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "TeamCreateCollaborators"}]
       25 GETUPVAL                         R3 4
       26 SETTABLEKS                       R3 R2 K7 ["stringResourceTable"]
       28 GETUPVAL                         R3 5
       29 SETTABLEKS                       R3 R2 K8 ["translationResourceTable"]
       31 CALL                             R1 1 1
       32 SETTABLEKS                       R1 R0 K12 ["Localization"]
       34 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.new]
        3 LOADN                            R3 520
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
       14 LOADN                            R4 520
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
       75 JUMPIFNOTEQ                      R13 R14 ; [+100]
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K11 ["createElement"]
       80 GETUPVAL                         R13 12
       81 GETTABLEKS                       R13 R13 K23 ["UI"]
       83 GETTABLEKS                       R13 R13 K24 ["Dialog"]
       85 DUPTABLE                         R14 K33 [{["Title"] = "", ["Enabled"] = True, ["Modal"], ["Resizable"] = True, ["Size"], ["OnClose"]}]
       86 GETUPVAL                         R16 13
       87 NOT                              R15 R16
       88 SETTABLEKS                       R15 R14 K29 ["Modal"]
       90 GETIMPORT                        R15 K6 [Vector2.new]
       92 LOADN                            R16 500
       93 LOADN                            R17 500
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K31 ["Size"]
       97 GETTABLEKS                       R15 R1 K34 ["onMainDialogX"]
       99 SETTABLEKS                       R15 R14 K32 ["OnClose"]
      101 DUPTABLE                         R15 K36 [{"Foundation"}]
      102 GETUPVAL                         R16 1
      103 GETTABLEKS                       R16 R16 K11 ["createElement"]
      105 GETUPVAL                         R17 14
      106 LOADNIL                          R18
      107 DUPTABLE                         R19 K38 [{"MainView"}]
      108 GETUPVAL                         R20 1
      109 GETTABLEKS                       R20 R20 K11 ["createElement"]
      111 GETUPVAL                         R21 15
      112 DUPTABLE                         R22 K46 [{"universeId", "placeId", "onOpenTrustedConnectionDialog", "onRequestComplete", "onClose", "canUseLinkedParent", "canUseAddTfLinks", "canCollabAllPcApproved"}]
      113 GETTABLEKS                       R23 R1 K14 ["universeId"]
      115 SETTABLEKS                       R23 R22 K14 ["universeId"]
      117 GETTABLEKS                       R23 R1 K39 ["placeId"]
      119 SETTABLEKS                       R23 R22 K39 ["placeId"]
      121 GETTABLEKS                       R23 R1 K40 ["onOpenTrustedConnectionDialog"]
      123 SETTABLEKS                       R23 R22 K40 ["onOpenTrustedConnectionDialog"]
      125 GETTABLEKS                       R23 R1 K41 ["onRequestComplete"]
      127 SETTABLEKS                       R23 R22 K41 ["onRequestComplete"]
      129 GETTABLEKS                       R23 R1 K47 ["onCloseAll"]
      131 SETTABLEKS                       R23 R22 K42 ["onClose"]
      133 GETTABLEKS                       R24 R1 K48 ["userCapabilities"]
      135 JUMPIFEQKNIL                     R24 ; [+6]
      137 GETTABLEKS                       R23 R1 K48 ["userCapabilities"]
      139 GETTABLEKS                       R23 R23 K43 ["canUseLinkedParent"]
      141 JUMPIF                           R23 ; [+1]
      142 LOADB                            R23 0
      143 SETTABLEKS                       R23 R22 K43 ["canUseLinkedParent"]
      145 GETTABLEKS                       R24 R1 K48 ["userCapabilities"]
      147 JUMPIFEQKNIL                     R24 ; [+6]
      149 GETTABLEKS                       R23 R1 K48 ["userCapabilities"]
      151 GETTABLEKS                       R23 R23 K44 ["canUseAddTfLinks"]
      153 JUMPIF                           R23 ; [+1]
      154 LOADB                            R23 0
      155 SETTABLEKS                       R23 R22 K44 ["canUseAddTfLinks"]
      157 GETTABLEKS                       R24 R1 K48 ["userCapabilities"]
      159 JUMPIFEQKNIL                     R24 ; [+6]
      161 GETTABLEKS                       R23 R1 K48 ["userCapabilities"]
      163 GETTABLEKS                       R23 R23 K45 ["canCollabAllPcApproved"]
      165 JUMPIF                           R23 ; [+1]
      166 LOADB                            R23 0
      167 SETTABLEKS                       R23 R22 K45 ["canCollabAllPcApproved"]
      169 CALL                             R20 2 1
      170 SETTABLEKS                       R20 R19 K37 ["MainView"]
      172 CALL                             R16 3 1
      173 SETTABLEKS                       R16 R15 K35 ["Foundation"]
      175 CALL                             R12 3 1
      176 SETTABLEKS                       R12 R11 K17 ["MainDialog"]
      178 LOADB                            R12 0
      179 GETTABLEKS                       R13 R1 K21 ["activeDialog"]
      181 GETUPVAL                         R14 11
      182 GETTABLEKS                       R14 R14 K49 ["VPCTrustedConnection"]
      184 JUMPIFNOTEQ                      R13 R14 ; [+56]
      186 GETUPVAL                         R12 1
      187 GETTABLEKS                       R12 R12 K11 ["createElement"]
      189 GETUPVAL                         R13 12
      190 GETTABLEKS                       R13 R13 K23 ["UI"]
      192 GETTABLEKS                       R13 R13 K24 ["Dialog"]
      194 DUPTABLE                         R14 K51 [{["Title"] = "", ["Enabled"] = True, ["Modal"], ["Resizable"] = False, ["Size"], ["OnClose"]}]
      195 GETUPVAL                         R16 13
      196 NOT                              R15 R16
      197 SETTABLEKS                       R15 R14 K29 ["Modal"]
      199 GETIMPORT                        R15 K6 [Vector2.new]
      201 LOADN                            R16 520
      202 LOADN                            R17 267
      203 CALL                             R15 2 1
      204 SETTABLEKS                       R15 R14 K31 ["Size"]
      206 GETTABLEKS                       R15 R1 K52 ["onNewParentDialogX"]
      208 SETTABLEKS                       R15 R14 K32 ["OnClose"]
      210 DUPTABLE                         R15 K36 [{"Foundation"}]
      211 GETUPVAL                         R16 1
      212 GETTABLEKS                       R16 R16 K11 ["createElement"]
      214 GETUPVAL                         R17 14
      215 LOADNIL                          R18
      216 DUPTABLE                         R19 K53 [{"Dialog"}]
      217 GETUPVAL                         R20 1
      218 GETTABLEKS                       R20 R20 K11 ["createElement"]
      220 GETUPVAL                         R21 16
      221 DUPTABLE                         R22 K54 [{"onClose", "onRequestComplete", "universeId"}]
      222 GETTABLEKS                       R23 R1 K55 ["onCloseTrustedConnectionDialog"]
      224 SETTABLEKS                       R23 R22 K42 ["onClose"]
      226 GETTABLEKS                       R23 R1 K41 ["onRequestComplete"]
      228 SETTABLEKS                       R23 R22 K41 ["onRequestComplete"]
      230 GETTABLEKS                       R23 R1 K14 ["universeId"]
      232 SETTABLEKS                       R23 R22 K14 ["universeId"]
      234 CALL                             R20 2 1
      235 SETTABLEKS                       R20 R19 K24 ["Dialog"]
      237 CALL                             R16 3 1
      238 SETTABLEKS                       R16 R15 K35 ["Foundation"]
      240 CALL                             R12 3 1
      241 SETTABLEKS                       R12 R11 K18 ["VPCTrustedConnectionDialog"]
      243 LOADB                            R12 0
      244 GETTABLEKS                       R13 R1 K21 ["activeDialog"]
      246 GETUPVAL                         R14 11
      247 GETTABLEKS                       R14 R14 K56 ["VPCRequestSent"]
      249 JUMPIFNOTEQ                      R13 R14 ; [+68]
      251 GETTABLEKS                       R12 R1 K57 ["requestResult"]
      253 JUMPIFNOT                        R12 ; [+64]
      254 GETUPVAL                         R12 1
      255 GETTABLEKS                       R12 R12 K11 ["createElement"]
      257 GETUPVAL                         R13 12
      258 GETTABLEKS                       R13 R13 K23 ["UI"]
      260 GETTABLEKS                       R13 R13 K24 ["Dialog"]
      262 DUPTABLE                         R14 K51 [{["Title"] = "", ["Enabled"] = True, ["Modal"], ["Resizable"] = False, ["Size"], ["OnClose"]}]
      263 GETUPVAL                         R16 13
      264 NOT                              R15 R16
      265 SETTABLEKS                       R15 R14 K29 ["Modal"]
      267 SETTABLEKS                       R2 R14 K31 ["Size"]
      269 GETTABLEKS                       R15 R1 K58 ["onRequestFailedDialogX"]
      271 SETTABLEKS                       R15 R14 K32 ["OnClose"]
      273 DUPTABLE                         R15 K36 [{"Foundation"}]
      274 GETUPVAL                         R16 1
      275 GETTABLEKS                       R16 R16 K11 ["createElement"]
      277 GETUPVAL                         R17 14
      278 LOADNIL                          R18
      279 DUPTABLE                         R19 K53 [{"Dialog"}]
      280 GETUPVAL                         R20 1
      281 GETTABLEKS                       R20 R20 K11 ["createElement"]
      283 GETUPVAL                         R21 17
      284 DUPTABLE                         R22 K63 [{"statusCode", "errorMessage", "responseBody", "onClose", "onSizeChanged"}]
      285 GETTABLEKS                       R23 R1 K57 ["requestResult"]
      287 GETTABLEKS                       R23 R23 K59 ["statusCode"]
      289 SETTABLEKS                       R23 R22 K59 ["statusCode"]
      291 GETTABLEKS                       R23 R1 K57 ["requestResult"]
      293 GETTABLEKS                       R23 R23 K60 ["errorMessage"]
      295 SETTABLEKS                       R23 R22 K60 ["errorMessage"]
      297 GETTABLEKS                       R23 R1 K57 ["requestResult"]
      299 GETTABLEKS                       R23 R23 K61 ["responseBody"]
      301 SETTABLEKS                       R23 R22 K61 ["responseBody"]
      303 GETTABLEKS                       R23 R1 K47 ["onCloseAll"]
      305 SETTABLEKS                       R23 R22 K42 ["onClose"]
      307 NEWCLOSURE                       R23 P1
      308 CAPTURE                          VAL R3
      309 SETTABLEKS                       R23 R22 K62 ["onSizeChanged"]
      311 CALL                             R20 2 1
      312 SETTABLEKS                       R20 R19 K24 ["Dialog"]
      314 CALL                             R16 3 1
      315 SETTABLEKS                       R16 R15 K35 ["Foundation"]
      317 CALL                             R12 3 1
      318 SETTABLEKS                       R12 R11 K19 ["VPCRequestSentDialog"]
      320 CALL                             R8 3 1
      321 SETTABLEKS                       R8 R7 K9 ["ContextStack"]
      323 CALL                             R5 2 -1
      324 RETURN                           R5 -1

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
