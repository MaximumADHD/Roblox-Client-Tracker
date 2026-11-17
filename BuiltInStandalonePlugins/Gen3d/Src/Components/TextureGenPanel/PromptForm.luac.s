PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onGenerate"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 GETUPVAL                         R5 5
        9 JUMPIFNOT                        R5 ; [+2]
       10 GETUPVAL                         R4 6
       11 JUMP                             ; [+1]
       12 LOADNIL                          R4
       13 CALL                             R0 4 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onPromptChanged"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["onPromptChanged"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["onPromptChanged"]
        8 JUMPIFNOT                        R2 ; [+5]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["onPromptChanged"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onModelChanged"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["onModelChanged"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 JUMPIFEQKS                       R0 K0 ["Manual"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["Automatic"] ; [+18]
        4 JUMPIFEQKS                       R0 K1 ["Automatic"] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["onAutoSelectViewChanged"]
       14 JUMPIFNOT                        R2 ; [+119]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K2 ["onAutoSelectViewChanged"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 JUMPIFEQKS                       R0 K3 ["KeepUvYes"] ; [+3]
       23 JUMPIFNOTEQKS                    R0 K4 ["KeepUvNo"] ; [+18]
       25 JUMPIFEQKS                       R0 K3 ["KeepUvYes"] ; [+2]
       27 LOADB                            R1 0 +1
       28 LOADB                            R1 1
       29 GETUPVAL                         R2 2
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K5 ["onKeepExistingUvChanged"]
       35 JUMPIFNOT                        R2 ; [+98]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R2 R2 K5 ["onKeepExistingUvChanged"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0
       42 JUMPIFNOTEQKS                    R0 K6 ["clearPrompt"] ; [+14]
       44 GETUPVAL                         R1 3
       45 LOADK                            R2 K7 [""]
       46 CALL                             R1 1 0
       47 GETUPVAL                         R1 1
       48 GETTABLEKS                       R1 R1 K8 ["onPromptChanged"]
       50 JUMPIFNOT                        R1 ; [+83]
       51 GETUPVAL                         R1 1
       52 GETTABLEKS                       R1 R1 K8 ["onPromptChanged"]
       54 LOADK                            R2 K7 [""]
       55 CALL                             R1 1 0
       56 RETURN                           R0 0
       57 JUMPIFNOTEQKS                    R0 K9 ["clearImage"] ; [+10]
       59 GETUPVAL                         R1 1
       60 GETTABLEKS                       R1 R1 K10 ["onClearReferenceImage"]
       62 JUMPIFNOT                        R1 ; [+71]
       63 GETUPVAL                         R1 1
       64 GETTABLEKS                       R1 R1 K10 ["onClearReferenceImage"]
       66 CALL                             R1 0 0
       67 RETURN                           R0 0
       68 JUMPIFNOTEQKS                    R0 K11 ["reset"] ; [+65]
       70 GETUPVAL                         R1 3
       71 LOADK                            R2 K7 [""]
       72 CALL                             R1 1 0
       73 GETUPVAL                         R1 1
       74 GETTABLEKS                       R1 R1 K8 ["onPromptChanged"]
       76 JUMPIFNOT                        R1 ; [+5]
       77 GETUPVAL                         R1 1
       78 GETTABLEKS                       R1 R1 K8 ["onPromptChanged"]
       80 LOADK                            R2 K7 [""]
       81 CALL                             R1 1 0
       82 GETUPVAL                         R1 4
       83 GETUPVAL                         R2 5
       84 GETTABLEKS                       R2 R2 K12 ["Constants"]
       86 GETTABLEKS                       R2 R2 K13 ["DEFAULT_TEXTURE_GEN_MODEL"]
       88 CALL                             R1 1 0
       89 GETUPVAL                         R1 1
       90 GETTABLEKS                       R1 R1 K14 ["onModelChanged"]
       92 JUMPIFNOT                        R1 ; [+9]
       93 GETUPVAL                         R1 1
       94 GETTABLEKS                       R1 R1 K14 ["onModelChanged"]
       96 GETUPVAL                         R2 5
       97 GETTABLEKS                       R2 R2 K12 ["Constants"]
       99 GETTABLEKS                       R2 R2 K13 ["DEFAULT_TEXTURE_GEN_MODEL"]
      101 CALL                             R1 1 0
      102 GETUPVAL                         R1 6
      103 JUMPIFNOT                        R1 ; [+16]
      104 GETUPVAL                         R1 7
      105 GETTABLEKS                       R1 R1 K15 ["getFFlagTextureGenAutoSelectView"]
      107 CALL                             R1 0 1
      108 GETUPVAL                         R2 0
      109 MOVE                             R3 R1
      110 CALL                             R2 1 0
      111 GETUPVAL                         R2 1
      112 GETTABLEKS                       R2 R2 K2 ["onAutoSelectViewChanged"]
      114 JUMPIFNOT                        R2 ; [+5]
      115 GETUPVAL                         R2 1
      116 GETTABLEKS                       R2 R2 K2 ["onAutoSelectViewChanged"]
      118 MOVE                             R3 R1
      119 CALL                             R2 1 0
      120 GETUPVAL                         R1 8
      121 JUMPIFNOT                        R1 ; [+12]
      122 GETUPVAL                         R1 2
      123 LOADB                            R2 0
      124 CALL                             R1 1 0
      125 GETUPVAL                         R1 1
      126 GETTABLEKS                       R1 R1 K5 ["onKeepExistingUvChanged"]
      128 JUMPIFNOT                        R1 ; [+5]
      129 GETUPVAL                         R1 1
      130 GETTABLEKS                       R1 R1 K5 ["onKeepExistingUvChanged"]
      132 LOADB                            R2 0
      133 CALL                             R1 1 0
      134 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["Context"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["useState"]
       16 GETTABLEKS                       R5 R0 K6 ["initialPrompt"]
       18 ORK                              R4 R5 K5 [""]
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K4 ["useState"]
       23 GETTABLEKS                       R6 R0 K7 ["initialModel"]
       25 JUMPIF                           R6 ; [+5]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K8 ["Constants"]
       29 GETTABLEKS                       R6 R6 K9 ["DEFAULT_TEXTURE_GEN_MODEL"]
       31 CALL                             R5 1 2
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K4 ["useState"]
       35 GETTABLEKS                       R9 R0 K10 ["initialAutoSelectView"]
       37 JUMPIFEQKB                       R9 TRUE ; [+2]
       39 LOADB                            R8 0 +1
       40 LOADB                            R8 1
       41 CALL                             R7 1 2
       42 GETUPVAL                         R9 1
       43 GETTABLEKS                       R9 R9 K4 ["useState"]
       45 GETTABLEKS                       R11 R0 K11 ["initialKeepExistingUv"]
       47 JUMPIFEQKB                       R11 TRUE ; [+2]
       49 LOADB                            R10 0 +1
       50 LOADB                            R10 1
       51 CALL                             R9 1 2
       52 GETUPVAL                         R11 4
       53 GETTABLEKS                       R11 R11 K12 ["createNextOrder"]
       55 CALL                             R11 0 1
       56 GETTABLEKS                       R12 R0 K13 ["referenceImage"]
       58 JUMPIFNOT                        R12 ; [+3]
       59 GETTABLEKS                       R13 R12 K14 ["status"]
       61 JUMP                             ; [+1]
       62 LOADK                            R13 K15 ["None"]
       63 JUMPIFEQKNIL                     R12 ; [+6]
       65 JUMPIFNOTEQKS                    R13 K16 ["Ready"] ; [+4]
       67 GETTABLEKS                       R14 R12 K17 ["imageId"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R14
       71 JUMPIFNOTEQKS                    R13 K18 ["Failed"] ; [+5]
       73 JUMPIFNOT                        R12 ; [+3]
       74 GETTABLEKS                       R15 R12 K19 ["errorMessage"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R15
       78 GETUPVAL                         R16 5
       79 GETTABLEKS                       R16 R16 K20 ["getFFlagTextureGenReferenceImage"]
       81 CALL                             R16 0 1
       82 MOVE                             R17 R16
       83 JUMPIFNOT                        R17 ; [+4]
       84 JUMPIFNOTEQKNIL                  R14 ; [+2]
       86 LOADB                            R17 0 +1
       87 LOADB                            R17 1
       88 GETTABLEKS                       R19 R0 K21 ["disabled"]
       90 JUMPIFNOTEQKB                    R19 TRUE ; [+2]
       92 LOADB                            R18 0 +1
       93 LOADB                            R18 1
       94 MOVE                             R19 R16
       95 JUMPIFNOT                        R19 ; [+4]
       96 JUMPIFEQKS                       R13 K22 ["Loading"] ; [+2]
       98 LOADB                            R19 0 +1
       99 LOADB                            R19 1
      100 LOADB                            R20 1
      101 GETTABLEKS                       R21 R0 K21 ["disabled"]
      103 JUMPIFEQKB                       R21 TRUE ; [+7]
      105 MOVE                             R20 R19
      106 JUMPIF                           R20 ; [+4]
      107 LOADB                            R20 0
      108 JUMPIFNOTEQKS                    R3 K5 [""] ; [+2]
      110 NOT                              R20 R17
      111 GETUPVAL                         R21 5
      112 GETTABLEKS                       R21 R21 K23 ["getFFlagTextureGenAutoSelectView"]
      114 CALL                             R21 0 1
      115 JUMPIFNOT                        R21 ; [+11]
      116 GETUPVAL                         R21 3
      117 GETTABLEKS                       R21 R21 K24 ["getFFlagGen3dTextureGenBatchedPreview"]
      119 CALL                             R21 0 1
      120 JUMPIFNOT                        R21 ; [+6]
      121 GETTABLEKS                       R22 R0 K25 ["onAutoSelectViewChanged"]
      123 JUMPIFNOTEQKNIL                  R22 ; [+2]
      125 LOADB                            R21 0 +1
      126 LOADB                            R21 1
      127 GETUPVAL                         R22 3
      128 GETTABLEKS                       R22 R22 K26 ["getFFlagGen3dTextureGenKeepExistingUv"]
      130 CALL                             R22 0 1
      131 JUMPIFNOT                        R22 ; [+6]
      132 GETTABLEKS                       R23 R0 K27 ["onKeepExistingUvChanged"]
      134 JUMPIFNOTEQKNIL                  R23 ; [+2]
      136 LOADB                            R22 0 +1
      137 LOADB                            R22 1
      138 GETUPVAL                         R23 1
      139 GETTABLEKS                       R23 R23 K28 ["useCallback"]
      141 NEWCLOSURE                       R24 P0
      142 CAPTURE                          VAL R20
      143 CAPTURE                          VAL R0
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R22
      148 CAPTURE                          VAL R9
      149 NEWTABLE                         R25 0 7
      151 MOVE                             R26 R20
      152 MOVE                             R27 R3
      153 MOVE                             R28 R5
      154 MOVE                             R29 R7
      155 MOVE                             R30 R22
      156 MOVE                             R31 R9
      157 GETTABLEKS                       R32 R0 K29 ["onGenerate"]
      159 SETLIST                          R25 R26 7 [1]
      161 CALL                             R23 2 1
      162 GETUPVAL                         R24 6
      163 MOVE                             R25 R2
      164 LOADK                            R26 K30 ["TextureGen"]
      165 LOADK                            R27 K31 ["ViewManual"]
      166 LOADK                            R28 K32 ["Manual"]
      167 CALL                             R24 4 1
      168 GETUPVAL                         R25 6
      169 MOVE                             R26 R2
      170 LOADK                            R27 K30 ["TextureGen"]
      171 LOADK                            R28 K33 ["ViewAutomatic"]
      172 LOADK                            R29 K34 ["Automatic"]
      173 CALL                             R25 4 1
      174 JUMPIFNOT                        R7 ; [+2]
      175 MOVE                             R26 R25
      176 JUMP                             ; [+1]
      177 MOVE                             R26 R24
      178 GETUPVAL                         R27 6
      179 MOVE                             R28 R2
      180 LOADK                            R29 K30 ["TextureGen"]
      181 LOADK                            R30 K35 ["KeepExistingUvYes"]
      182 LOADK                            R31 K36 ["Yes"]
      183 CALL                             R27 4 1
      184 GETUPVAL                         R28 6
      185 MOVE                             R29 R2
      186 LOADK                            R30 K30 ["TextureGen"]
      187 LOADK                            R31 K37 ["KeepExistingUvNo"]
      188 LOADK                            R32 K38 ["No"]
      189 CALL                             R28 4 1
      190 JUMPIFNOT                        R9 ; [+2]
      191 MOVE                             R29 R27
      192 JUMP                             ; [+1]
      193 MOVE                             R29 R28
      194 NEWTABLE                         R30 0 0
      196 JUMPIFNOT                        R21 ; [+39]
      197 DUPTABLE                         R33 K43 [{["id"] = "viewSelection", ["text"], ["items"]}]
      198 GETUPVAL                         R34 6
      199 MOVE                             R35 R2
      200 LOADK                            R36 K30 ["TextureGen"]
      201 LOADK                            R37 K44 ["MoreViewSelection"]
      202 LOADK                            R38 K45 ["View: %*"]
      203 MOVE                             R40 R26
      204 NAMECALL                         R38 R38 K46 ["format"]
      206 CALL                             R38 2 1
      207 DUPTABLE                         R39 K48 [{"mode"}]
      208 SETTABLEKS                       R26 R39 K47 ["mode"]
      210 CALL                             R34 5 1
      211 SETTABLEKS                       R34 R33 K41 ["text"]
      213 NEWTABLE                         R34 0 2
      215 DUPTABLE                         R35 K50 [{["id"] = "Manual", ["text"], ["isChecked"]}]
      216 SETTABLEKS                       R24 R35 K41 ["text"]
      218 NOT                              R36 R7
      219 SETTABLEKS                       R36 R35 K49 ["isChecked"]
      221 DUPTABLE                         R36 K51 [{["id"] = "Automatic", ["text"], ["isChecked"]}]
      222 SETTABLEKS                       R25 R36 K41 ["text"]
      224 SETTABLEKS                       R7 R36 K49 ["isChecked"]
      226 SETLIST                          R34 R35 2 [1]
      228 SETTABLEKS                       R34 R33 K42 ["items"]
      230 FASTCALL2                        TABLE_INSERT R30 R33 ; [+4]
      232 MOVE                             R32 R30
      233 GETIMPORT                        R31 K54 [table.insert]
      235 CALL                             R31 2 0
      236 JUMPIFNOT                        R22 ; [+39]
      237 DUPTABLE                         R33 K56 [{["id"] = "keepExistingUv", ["text"], ["items"]}]
      238 GETUPVAL                         R34 6
      239 MOVE                             R35 R2
      240 LOADK                            R36 K30 ["TextureGen"]
      241 LOADK                            R37 K57 ["MoreKeepExistingUv"]
      242 LOADK                            R38 K58 ["Keep existing UVs: %*"]
      243 MOVE                             R40 R29
      244 NAMECALL                         R38 R38 K46 ["format"]
      246 CALL                             R38 2 1
      247 DUPTABLE                         R39 K60 [{"value"}]
      248 SETTABLEKS                       R29 R39 K59 ["value"]
      250 CALL                             R34 5 1
      251 SETTABLEKS                       R34 R33 K41 ["text"]
      253 NEWTABLE                         R34 0 2
      255 DUPTABLE                         R35 K62 [{["id"] = "KeepUvYes", ["text"], ["isChecked"]}]
      256 SETTABLEKS                       R27 R35 K41 ["text"]
      258 SETTABLEKS                       R9 R35 K49 ["isChecked"]
      260 DUPTABLE                         R36 K64 [{["id"] = "KeepUvNo", ["text"], ["isChecked"]}]
      261 SETTABLEKS                       R28 R36 K41 ["text"]
      263 NOT                              R37 R9
      264 SETTABLEKS                       R37 R36 K49 ["isChecked"]
      266 SETLIST                          R34 R35 2 [1]
      268 SETTABLEKS                       R34 R33 K42 ["items"]
      270 FASTCALL2                        TABLE_INSERT R30 R33 ; [+4]
      272 MOVE                             R32 R30
      273 GETIMPORT                        R31 K54 [table.insert]
      275 CALL                             R31 2 0
      276 NEWTABLE                         R31 0 3
      278 DUPTABLE                         R32 K67 [{["id"] = "clearPrompt", ["text"], ["isDisabled"]}]
      279 GETUPVAL                         R33 6
      280 MOVE                             R34 R2
      281 LOADK                            R35 K30 ["TextureGen"]
      282 LOADK                            R36 K68 ["MoreClearPrompt"]
      283 LOADK                            R37 K69 ["Clear prompt"]
      284 CALL                             R33 4 1
      285 SETTABLEKS                       R33 R32 K41 ["text"]
      287 JUMPIFEQKS                       R3 K5 [""] ; [+2]
      289 LOADB                            R33 0 +1
      290 LOADB                            R33 1
      291 SETTABLEKS                       R33 R32 K66 ["isDisabled"]
      293 DUPTABLE                         R33 K71 [{["id"] = "clearImage", ["text"], ["isDisabled"]}]
      294 GETUPVAL                         R34 6
      295 MOVE                             R35 R2
      296 LOADK                            R36 K30 ["TextureGen"]
      297 LOADK                            R37 K72 ["MoreRemoveImage"]
      298 LOADK                            R38 K73 ["Remove image"]
      299 CALL                             R34 4 1
      300 SETTABLEKS                       R34 R33 K41 ["text"]
      302 NOT                              R34 R17
      303 SETTABLEKS                       R34 R33 K66 ["isDisabled"]
      305 DUPTABLE                         R34 K75 [{["id"] = "reset", ["text"]}]
      306 GETUPVAL                         R35 6
      307 MOVE                             R36 R2
      308 LOADK                            R37 K30 ["TextureGen"]
      309 LOADK                            R38 K76 ["MoreResetOptions"]
      310 LOADK                            R39 K77 ["Reset options"]
      311 CALL                             R35 4 1
      312 SETTABLEKS                       R35 R34 K41 ["text"]
      314 SETLIST                          R31 R32 3 [1]
      316 MOVE                             R32 R31
      317 LOADNIL                          R33
      318 LOADNIL                          R34
      319 FORGPREP                         R32
      320 FASTCALL2                        TABLE_INSERT R30 R36 ; [+5]
      322 MOVE                             R38 R30
      323 MOVE                             R39 R36
      324 GETIMPORT                        R37 K54 [table.insert]
      326 CALL                             R37 2 0
      327 FORGLOOP                         R32 2 ; [-8]
      329 JUMPIFNOT                        R17 ; [+7]
      330 GETUPVAL                         R32 6
      331 MOVE                             R33 R2
      332 LOADK                            R34 K30 ["TextureGen"]
      333 LOADK                            R35 K78 ["InputPromptIgnoredWithImage"]
      334 LOADK                            R36 K79 ["Prompt is ignored when an image is attached"]
      335 CALL                             R32 4 1
      336 JUMP                             ; [+5]
      337 LOADK                            R34 K30 ["TextureGen"]
      338 LOADK                            R35 K80 ["InputPromptTitle"]
      339 NAMECALL                         R32 R2 K81 ["getText"]
      341 CALL                             R32 3 1
      342 NEWCLOSURE                       R33 P1
      343 CAPTURE                          VAL R4
      344 CAPTURE                          VAL R0
      345 GETUPVAL                         R34 1
      346 GETTABLEKS                       R34 R34 K82 ["createElement"]
      348 GETUPVAL                         R35 0
      349 GETTABLEKS                       R35 R35 K83 ["View"]
      351 DUPTABLE                         R36 K87 [{["tag"] = "col size-full-0 auto-y gap-small", ["LayoutOrder"]}]
      352 GETTABLEKS                       R37 R0 K86 ["LayoutOrder"]
      354 SETTABLEKS                       R37 R36 K86 ["LayoutOrder"]
      356 DUPTABLE                         R37 K92 [{"Prompt", "Attachment", "ReferenceImageError", "Actions"}]
      357 GETUPVAL                         R39 5
      358 GETTABLEKS                       R39 R39 K93 ["getFFlagTextureGenScrollablePrompt"]
      360 CALL                             R39 0 1
      361 JUMPIFNOT                        R39 ; [+52]
      362 GETUPVAL                         R38 1
      363 GETTABLEKS                       R38 R38 K82 ["createElement"]
      365 GETUPVAL                         R39 0
      366 GETTABLEKS                       R39 R39 K94 ["TextArea"]
      368 DUPTABLE                         R40 K105 [{["LayoutOrder"], ["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["isDisabled"], ["numLines"] = 2, ["size"], ["variant"], ["width"], ["testId"] = "TextureGenPrompt"}]
      369 MOVE                             R41 R11
      370 CALL                             R41 0 1
      371 SETTABLEKS                       R41 R40 K86 ["LayoutOrder"]
      373 SETTABLEKS                       R3 R40 K41 ["text"]
      375 SETTABLEKS                       R32 R40 K96 ["placeholder"]
      377 SETTABLEKS                       R33 R40 K97 ["onChanged"]
      379 GETTABLEKS                       R42 R0 K21 ["disabled"]
      381 JUMPIFEQKB                       R42 TRUE ; [+2]
      383 LOADB                            R41 0 +1
      384 LOADB                            R41 1
      385 SETTABLEKS                       R41 R40 K66 ["isDisabled"]
      387 GETUPVAL                         R41 0
      388 GETTABLEKS                       R41 R41 K106 ["Enums"]
      390 GETTABLEKS                       R41 R41 K107 ["InputSize"]
      392 GETTABLEKS                       R41 R41 K108 ["XSmall"]
      394 SETTABLEKS                       R41 R40 K100 ["size"]
      396 GETUPVAL                         R41 0
      397 GETTABLEKS                       R41 R41 K106 ["Enums"]
      399 GETTABLEKS                       R41 R41 K109 ["InputVariant"]
      401 GETTABLEKS                       R41 R41 K110 ["Utility"]
      403 SETTABLEKS                       R41 R40 K101 ["variant"]
      405 GETIMPORT                        R41 K113 [UDim.new]
      407 LOADN                            R42 1
      408 LOADN                            R43 -32
      409 CALL                             R41 2 1
      410 SETTABLEKS                       R41 R40 K102 ["width"]
      412 CALL                             R38 2 1
      413 JUMP                             ; [+153]
      414 GETUPVAL                         R38 1
      415 GETTABLEKS                       R38 R38 K82 ["createElement"]
      417 LOADK                            R39 K114 ["TextBox"]
      418 NEWTABLE                         R40 32 0
      420 LOADN                            R41 1
      421 SETTABLEKS                       R41 R40 K115 ["BackgroundTransparency"]
      423 LOADB                            R41 0
      424 SETTABLEKS                       R41 R40 K116 ["ClearTextOnFocus"]
      426 GETUPVAL                         R42 7
      427 JUMPIFNOT                        R42 ; [+2]
      428 LOADNIL                          R41
      429 JUMP                             ; [+6]
      430 GETTABLEKS                       R41 R1 K117 ["Typography"]
      432 GETTABLEKS                       R41 R41 K118 ["BodySmall"]
      434 GETTABLEKS                       R41 R41 K119 ["Font"]
      436 SETTABLEKS                       R41 R40 K119 ["Font"]
      438 GETUPVAL                         R42 7
      439 JUMPIFNOT                        R42 ; [+9]
      440 GETUPVAL                         R41 8
      441 GETTABLEKS                       R42 R1 K117 ["Typography"]
      443 GETTABLEKS                       R42 R42 K118 ["BodySmall"]
      445 GETTABLEKS                       R42 R42 K119 ["Font"]
      447 CALL                             R41 1 1
      448 JUMP                             ; [+1]
      449 LOADNIL                          R41
      450 SETTABLEKS                       R41 R40 K120 ["FontFace"]
      452 MOVE                             R41 R11
      453 CALL                             R41 0 1
      454 SETTABLEKS                       R41 R40 K86 ["LayoutOrder"]
      456 GETTABLEKS                       R41 R1 K117 ["Typography"]
      458 GETTABLEKS                       R41 R41 K118 ["BodySmall"]
      460 GETTABLEKS                       R41 R41 K121 ["LineHeight"]
      462 SETTABLEKS                       R41 R40 K121 ["LineHeight"]
      464 LOADB                            R41 1
      465 SETTABLEKS                       R41 R40 K122 ["MultiLine"]
      467 GETTABLEKS                       R41 R1 K123 ["Color"]
      469 GETTABLEKS                       R41 R41 K124 ["Content"]
      471 GETTABLEKS                       R41 R41 K125 ["Muted"]
      473 GETTABLEKS                       R41 R41 K126 ["Color3"]
      475 SETTABLEKS                       R41 R40 K127 ["PlaceholderColor3"]
      477 SETTABLEKS                       R32 R40 K128 ["PlaceholderText"]
      479 GETIMPORT                        R41 K130 [UDim2.new]
      481 LOADN                            R42 1
      482 LOADN                            R43 -32
      483 LOADN                            R44 0
      484 LOADN                            R45 44
      485 CALL                             R41 4 1
      486 SETTABLEKS                       R41 R40 K131 ["Size"]
      488 SETTABLEKS                       R3 R40 K132 ["Text"]
      490 GETTABLEKS                       R42 R0 K21 ["disabled"]
      492 JUMPIFNOTEQKB                    R42 TRUE ; [+2]
      494 LOADB                            R41 0 +1
      495 LOADB                            R41 1
      496 SETTABLEKS                       R41 R40 K133 ["TextEditable"]
      498 GETTABLEKS                       R41 R1 K123 ["Color"]
      500 GETTABLEKS                       R41 R41 K124 ["Content"]
      502 GETTABLEKS                       R41 R41 K134 ["Emphasis"]
      504 GETTABLEKS                       R41 R41 K126 ["Color3"]
      506 SETTABLEKS                       R41 R40 K135 ["TextColor3"]
      508 GETTABLEKS                       R41 R1 K117 ["Typography"]
      510 GETTABLEKS                       R41 R41 K118 ["BodySmall"]
      512 GETTABLEKS                       R41 R41 K136 ["FontSize"]
      514 SETTABLEKS                       R41 R40 K137 ["TextSize"]
      516 LOADB                            R41 1
      517 SETTABLEKS                       R41 R40 K138 ["TextWrapped"]
      519 GETIMPORT                        R41 K142 [Enum.TextXAlignment.Left]
      521 SETTABLEKS                       R41 R40 K140 ["TextXAlignment"]
      523 GETIMPORT                        R41 K145 [Enum.TextYAlignment.Top]
      525 SETTABLEKS                       R41 R40 K143 ["TextYAlignment"]
      527 GETUPVAL                         R41 1
      528 GETTABLEKS                       R41 R41 K146 ["Change"]
      530 GETTABLEKS                       R41 R41 K132 ["Text"]
      532 NEWCLOSURE                       R42 P2
      533 CAPTURE                          VAL R4
      534 CAPTURE                          VAL R0
      535 SETTABLE                         R42 R40 R41
      536 DUPTABLE                         R41 K148 [{"Padding"}]
      537 GETUPVAL                         R42 1
      538 GETTABLEKS                       R42 R42 K82 ["createElement"]
      540 LOADK                            R43 K149 ["UIPadding"]
      541 DUPTABLE                         R44 K153 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      542 GETIMPORT                        R45 K113 [UDim.new]
      544 LOADN                            R46 0
      545 LOADN                            R47 8
      546 CALL                             R45 2 1
      547 SETTABLEKS                       R45 R44 K150 ["PaddingLeft"]
      549 GETIMPORT                        R45 K113 [UDim.new]
      551 LOADN                            R46 0
      552 LOADN                            R47 8
      553 CALL                             R45 2 1
      554 SETTABLEKS                       R45 R44 K151 ["PaddingRight"]
      556 GETIMPORT                        R45 K113 [UDim.new]
      558 LOADN                            R46 0
      559 LOADN                            R47 8
      560 CALL                             R45 2 1
      561 SETTABLEKS                       R45 R44 K152 ["PaddingTop"]
      563 CALL                             R42 2 1
      564 SETTABLEKS                       R42 R41 K147 ["Padding"]
      566 CALL                             R38 3 1
      567 SETTABLEKS                       R38 R37 K88 ["Prompt"]
      569 JUMPIFNOT                        R16 ; [+27]
      570 JUMPIF                           R17 ; [+1]
      571 JUMPIFNOT                        R19 ; [+25]
      572 GETUPVAL                         R38 1
      573 GETTABLEKS                       R38 R38 K82 ["createElement"]
      575 GETUPVAL                         R39 9
      576 DUPTABLE                         R40 K156 [{"imageId", "isLoading", "onRemove", "disabled", "LayoutOrder"}]
      577 SETTABLEKS                       R14 R40 K17 ["imageId"]
      579 SETTABLEKS                       R19 R40 K154 ["isLoading"]
      581 GETTABLEKS                       R41 R0 K157 ["onClearReferenceImage"]
      583 JUMPIF                           R41 ; [+1]
      584 GETUPVAL                         R41 10
      585 SETTABLEKS                       R41 R40 K155 ["onRemove"]
      587 GETTABLEKS                       R41 R0 K21 ["disabled"]
      589 SETTABLEKS                       R41 R40 K21 ["disabled"]
      591 MOVE                             R41 R11
      592 CALL                             R41 0 1
      593 SETTABLEKS                       R41 R40 K86 ["LayoutOrder"]
      595 CALL                             R38 2 1
      596 JUMP                             ; [+1]
      597 LOADNIL                          R38
      598 SETTABLEKS                       R38 R37 K89 ["Attachment"]
      600 JUMPIFNOT                        R15 ; [+15]
      601 GETUPVAL                         R38 1
      602 GETTABLEKS                       R38 R38 K82 ["createElement"]
      604 GETUPVAL                         R39 0
      605 GETTABLEKS                       R39 R39 K132 ["Text"]
      607 DUPTABLE                         R40 K159 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert"}]
      608 MOVE                             R41 R11
      609 CALL                             R41 0 1
      610 SETTABLEKS                       R41 R40 K86 ["LayoutOrder"]
      612 SETTABLEKS                       R15 R40 K132 ["Text"]
      614 CALL                             R38 2 1
      615 JUMP                             ; [+1]
      616 LOADNIL                          R38
      617 SETTABLEKS                       R38 R37 K90 ["ReferenceImageError"]
      619 GETUPVAL                         R38 1
      620 GETTABLEKS                       R38 R38 K82 ["createElement"]
      622 GETUPVAL                         R39 0
      623 GETTABLEKS                       R39 R39 K83 ["View"]
      625 DUPTABLE                         R40 K161 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y gap-xsmall align-y-center"}]
      626 MOVE                             R41 R11
      627 CALL                             R41 0 1
      628 SETTABLEKS                       R41 R40 K86 ["LayoutOrder"]
      630 DUPTABLE                         R41 K167 [{"Add", "Quality", "Spacer", "More", "Generate"}]
      631 JUMPIFNOT                        R16 ; [+51]
      632 JUMPIF                           R17 ; [+50]
      633 GETUPVAL                         R42 1
      634 GETTABLEKS                       R42 R42 K82 ["createElement"]
      636 GETUPVAL                         R43 0
      637 GETTABLEKS                       R43 R43 K168 ["IconButton"]
      639 DUPTABLE                         R44 K173 [{["LayoutOrder"] = 0, ["icon"], ["onActivated"], ["isLoading"], ["isDisabled"], ["size"], ["variant"], ["testId"] = "ReferenceImageUpload"}]
      640 DUPTABLE                         R45 K175 [{"name"}]
      641 GETUPVAL                         R46 0
      642 GETTABLEKS                       R46 R46 K106 ["Enums"]
      644 GETTABLEKS                       R46 R46 K176 ["IconName"]
      646 GETTABLEKS                       R46 R46 K177 ["PlusLarge"]
      648 SETTABLEKS                       R46 R45 K174 ["name"]
      650 SETTABLEKS                       R45 R44 K170 ["icon"]
      652 GETTABLEKS                       R45 R0 K178 ["onPickReferenceImage"]
      654 JUMPIF                           R45 ; [+1]
      655 GETUPVAL                         R45 10
      656 SETTABLEKS                       R45 R44 K171 ["onActivated"]
      658 SETTABLEKS                       R19 R44 K154 ["isLoading"]
      660 NOT                              R45 R18
      661 SETTABLEKS                       R45 R44 K66 ["isDisabled"]
      663 GETUPVAL                         R45 0
      664 GETTABLEKS                       R45 R45 K106 ["Enums"]
      666 GETTABLEKS                       R45 R45 K107 ["InputSize"]
      668 GETTABLEKS                       R45 R45 K179 ["Small"]
      670 SETTABLEKS                       R45 R44 K100 ["size"]
      672 GETUPVAL                         R45 0
      673 GETTABLEKS                       R45 R45 K106 ["Enums"]
      675 GETTABLEKS                       R45 R45 K180 ["ButtonVariant"]
      677 GETTABLEKS                       R45 R45 K110 ["Utility"]
      679 SETTABLEKS                       R45 R44 K101 ["variant"]
      681 CALL                             R42 2 1
      682 JUMP                             ; [+1]
      683 LOADNIL                          R42
      684 SETTABLEKS                       R42 R41 K162 ["Add"]
      686 GETUPVAL                         R43 5
      687 GETTABLEKS                       R43 R43 K181 ["getFFlagTextureGenModelSelector"]
      689 CALL                             R43 0 1
      690 JUMPIFNOT                        R43 ; [+17]
      691 GETUPVAL                         R42 1
      692 GETTABLEKS                       R42 R42 K82 ["createElement"]
      694 GETUPVAL                         R43 11
      695 DUPTABLE                         R44 K186 [{["LayoutOrder"] = 1, ["model"], ["onModelChanged"], ["disabled"], ["testId"] = "TextureGenQuality"}]
      696 SETTABLEKS                       R5 R44 K183 ["model"]
      698 NEWCLOSURE                       R45 P3
      699 CAPTURE                          VAL R6
      700 CAPTURE                          VAL R0
      701 SETTABLEKS                       R45 R44 K184 ["onModelChanged"]
      703 NOT                              R45 R18
      704 SETTABLEKS                       R45 R44 K21 ["disabled"]
      706 CALL                             R42 2 1
      707 JUMP                             ; [+1]
      708 LOADNIL                          R42
      709 SETTABLEKS                       R42 R41 K163 ["Quality"]
      711 GETUPVAL                         R42 1
      712 GETTABLEKS                       R42 R42 K82 ["createElement"]
      714 GETUPVAL                         R43 0
      715 GETTABLEKS                       R43 R43 K83 ["View"]
      717 DUPTABLE                         R44 K189 [{["LayoutOrder"] = 4, ["tag"] = "fill"}]
      718 CALL                             R42 2 1
      719 SETTABLEKS                       R42 R41 K164 ["Spacer"]
      721 JUMPIF                           R21 ; [+1]
      722 JUMPIFNOT                        R22 ; [+24]
      723 GETUPVAL                         R42 1
      724 GETTABLEKS                       R42 R42 K82 ["createElement"]
      726 GETUPVAL                         R43 12
      727 DUPTABLE                         R44 K192 [{["LayoutOrder"] = 5, ["items"], ["onActivated"], ["disabled"], ["testId"] = "TextureGenMore"}]
      728 SETTABLEKS                       R30 R44 K42 ["items"]
      730 NEWCLOSURE                       R45 P4
      731 CAPTURE                          VAL R8
      732 CAPTURE                          VAL R0
      733 CAPTURE                          VAL R10
      734 CAPTURE                          VAL R4
      735 CAPTURE                          VAL R6
      736 CAPTURE                          UPVAL U3
      737 CAPTURE                          VAL R21
      738 CAPTURE                          UPVAL U5
      739 CAPTURE                          VAL R22
      740 SETTABLEKS                       R45 R44 K171 ["onActivated"]
      742 NOT                              R45 R18
      743 SETTABLEKS                       R45 R44 K21 ["disabled"]
      745 CALL                             R42 2 1
      746 JUMP                             ; [+1]
      747 LOADNIL                          R42
      748 SETTABLEKS                       R42 R41 K165 ["More"]
      750 GETUPVAL                         R42 1
      751 GETTABLEKS                       R42 R42 K82 ["createElement"]
      753 GETUPVAL                         R43 0
      754 GETTABLEKS                       R43 R43 K193 ["Button"]
      756 DUPTABLE                         R44 K196 [{["LayoutOrder"] = 8, ["text"], ["onActivated"], ["isDisabled"], ["variant"], ["size"], ["testId"] = "TextureGenGenerate"}]
      757 GETTABLEKS                       R45 R0 K197 ["submitText"]
      759 JUMPIF                           R45 ; [+6]
      760 GETUPVAL                         R45 6
      761 MOVE                             R46 R2
      762 LOADK                            R47 K30 ["TextureGen"]
      763 LOADK                            R48 K198 ["InputPreview"]
      764 LOADK                            R49 K199 ["Preview"]
      765 CALL                             R45 4 1
      766 SETTABLEKS                       R45 R44 K41 ["text"]
      768 SETTABLEKS                       R23 R44 K171 ["onActivated"]
      770 SETTABLEKS                       R20 R44 K66 ["isDisabled"]
      772 GETUPVAL                         R45 0
      773 GETTABLEKS                       R45 R45 K106 ["Enums"]
      775 GETTABLEKS                       R45 R45 K180 ["ButtonVariant"]
      777 GETTABLEKS                       R45 R45 K134 ["Emphasis"]
      779 SETTABLEKS                       R45 R44 K101 ["variant"]
      781 GETUPVAL                         R45 0
      782 GETTABLEKS                       R45 R45 K106 ["Enums"]
      784 GETTABLEKS                       R45 R45 K107 ["InputSize"]
      786 GETTABLEKS                       R45 R45 K108 ["XSmall"]
      788 SETTABLEKS                       R45 R44 K100 ["size"]
      790 CALL                             R42 2 1
      791 SETTABLEKS                       R42 R41 K166 ["Generate"]
      793 CALL                             R38 3 1
      794 SETTABLEKS                       R38 R37 K91 ["Actions"]
      796 CALL                             R34 3 -1
      797 RETURN                           R34 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
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
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Utility"]
       30 GETTABLEKS                       R4 R4 K11 ["Flags"]
       32 GETTABLEKS                       R4 R4 K12 ["FoundationStudioFontFaceMigration"]
       34 GETTABLEKS                       R5 R3 K10 ["Utility"]
       36 GETTABLEKS                       R5 R5 K13 ["normalizeFontFace"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K6 ["Packages"]
       42 GETTABLEKS                       R7 R7 K14 ["StudioFoundation"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R6 R6 K15 ["Contexts"]
       47 GETTABLEKS                       R6 R6 K16 ["Localization"]
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Packages"]
       53 GETTABLEKS                       R8 R8 K17 ["Gen3dCore"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K18 ["Src"]
       60 GETTABLEKS                       R9 R9 K19 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K18 ["Src"]
       67 GETTABLEKS                       R10 R10 K20 ["CoreGuiComponents"]
       69 GETTABLEKS                       R10 R10 K21 ["ComposerMenu"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETIMPORT                        R11 K1 [script]
       76 GETTABLEKS                       R11 R11 K22 ["Parent"]
       78 GETTABLEKS                       R11 R11 K23 ["ModelMenu"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETIMPORT                        R12 K1 [script]
       85 GETTABLEKS                       R12 R12 K22 ["Parent"]
       87 GETTABLEKS                       R12 R12 K24 ["ReferenceImageThumbnail"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K18 ["Src"]
       94 GETTABLEKS                       R13 R13 K25 ["Util"]
       96 GETTABLEKS                       R13 R13 K26 ["getLocalizedTextOrDefault"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K27 ["Bin"]
      103 GETTABLEKS                       R14 R14 K28 ["Common"]
      105 GETTABLEKS                       R14 R14 K29 ["defineLuaFlags"]
      107 CALL                             R13 1 1
      108 DUPCLOSURE                       R14 K30 [PROTO_0]
      109 DUPCLOSURE                       R15 K31 [PROTO_6]
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R9
      123 RETURN                           R15 1
