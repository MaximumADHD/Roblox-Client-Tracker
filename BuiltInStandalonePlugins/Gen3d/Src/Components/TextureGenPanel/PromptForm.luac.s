PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onGenerate"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 GETUPVAL                         R3 4
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

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
       14 JUMPIFNOT                        R2 ; [+82]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K2 ["onAutoSelectViewChanged"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKS                    R0 K3 ["clearPrompt"] ; [+14]
       23 GETUPVAL                         R1 2
       24 LOADK                            R2 K4 [""]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K5 ["onPromptChanged"]
       29 JUMPIFNOT                        R1 ; [+67]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K5 ["onPromptChanged"]
       33 LOADK                            R2 K4 [""]
       34 CALL                             R1 1 0
       35 RETURN                           R0 0
       36 JUMPIFNOTEQKS                    R0 K6 ["clearImage"] ; [+10]
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K7 ["onClearReferenceImage"]
       41 JUMPIFNOT                        R1 ; [+55]
       42 GETUPVAL                         R1 1
       43 GETTABLEKS                       R1 R1 K7 ["onClearReferenceImage"]
       45 CALL                             R1 0 0
       46 RETURN                           R0 0
       47 JUMPIFNOTEQKS                    R0 K8 ["reset"] ; [+49]
       49 GETUPVAL                         R1 2
       50 LOADK                            R2 K4 [""]
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R1 R1 K5 ["onPromptChanged"]
       55 JUMPIFNOT                        R1 ; [+5]
       56 GETUPVAL                         R1 1
       57 GETTABLEKS                       R1 R1 K5 ["onPromptChanged"]
       59 LOADK                            R2 K4 [""]
       60 CALL                             R1 1 0
       61 GETUPVAL                         R1 3
       62 GETUPVAL                         R2 4
       63 GETTABLEKS                       R2 R2 K9 ["Constants"]
       65 GETTABLEKS                       R2 R2 K10 ["DEFAULT_TEXTURE_GEN_MODEL"]
       67 CALL                             R1 1 0
       68 GETUPVAL                         R1 1
       69 GETTABLEKS                       R1 R1 K11 ["onModelChanged"]
       71 JUMPIFNOT                        R1 ; [+9]
       72 GETUPVAL                         R1 1
       73 GETTABLEKS                       R1 R1 K11 ["onModelChanged"]
       75 GETUPVAL                         R2 4
       76 GETTABLEKS                       R2 R2 K9 ["Constants"]
       78 GETTABLEKS                       R2 R2 K10 ["DEFAULT_TEXTURE_GEN_MODEL"]
       80 CALL                             R1 1 0
       81 GETUPVAL                         R1 5
       82 GETTABLEKS                       R1 R1 K12 ["getFFlagTextureGenAutoSelectView"]
       84 CALL                             R1 0 1
       85 GETUPVAL                         R2 0
       86 MOVE                             R3 R1
       87 CALL                             R2 1 0
       88 GETUPVAL                         R2 1
       89 GETTABLEKS                       R2 R2 K2 ["onAutoSelectViewChanged"]
       91 JUMPIFNOT                        R2 ; [+5]
       92 GETUPVAL                         R2 1
       93 GETTABLEKS                       R2 R2 K2 ["onAutoSelectViewChanged"]
       95 MOVE                             R3 R1
       96 CALL                             R2 1 0
       97 RETURN                           R0 0

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
       42 GETUPVAL                         R9 4
       43 GETTABLEKS                       R9 R9 K11 ["createNextOrder"]
       45 CALL                             R9 0 1
       46 GETTABLEKS                       R10 R0 K12 ["referenceImage"]
       48 JUMPIFNOT                        R10 ; [+3]
       49 GETTABLEKS                       R11 R10 K13 ["status"]
       51 JUMP                             ; [+1]
       52 LOADK                            R11 K14 ["None"]
       53 JUMPIFEQKNIL                     R10 ; [+6]
       55 JUMPIFNOTEQKS                    R11 K15 ["Ready"] ; [+4]
       57 GETTABLEKS                       R12 R10 K16 ["imageId"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R12
       61 JUMPIFNOTEQKS                    R11 K17 ["Failed"] ; [+5]
       63 JUMPIFNOT                        R10 ; [+3]
       64 GETTABLEKS                       R13 R10 K18 ["errorMessage"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R13
       68 GETUPVAL                         R14 5
       69 GETTABLEKS                       R14 R14 K19 ["getFFlagTextureGenReferenceImage"]
       71 CALL                             R14 0 1
       72 MOVE                             R15 R14
       73 JUMPIFNOT                        R15 ; [+4]
       74 JUMPIFNOTEQKNIL                  R12 ; [+2]
       76 LOADB                            R15 0 +1
       77 LOADB                            R15 1
       78 GETTABLEKS                       R17 R0 K20 ["disabled"]
       80 JUMPIFNOTEQKB                    R17 TRUE ; [+2]
       82 LOADB                            R16 0 +1
       83 LOADB                            R16 1
       84 MOVE                             R17 R14
       85 JUMPIFNOT                        R17 ; [+4]
       86 JUMPIFEQKS                       R11 K21 ["Loading"] ; [+2]
       88 LOADB                            R17 0 +1
       89 LOADB                            R17 1
       90 LOADB                            R18 1
       91 GETTABLEKS                       R19 R0 K20 ["disabled"]
       93 JUMPIFEQKB                       R19 TRUE ; [+7]
       95 MOVE                             R18 R17
       96 JUMPIF                           R18 ; [+4]
       97 LOADB                            R18 0
       98 JUMPIFNOTEQKS                    R3 K5 [""] ; [+2]
      100 NOT                              R18 R15
      101 GETUPVAL                         R19 5
      102 GETTABLEKS                       R19 R19 K22 ["getFFlagTextureGenAutoSelectView"]
      104 CALL                             R19 0 1
      105 JUMPIFNOT                        R19 ; [+11]
      106 GETUPVAL                         R19 3
      107 GETTABLEKS                       R19 R19 K23 ["getFFlagGen3dTextureGenBatchedPreview"]
      109 CALL                             R19 0 1
      110 JUMPIFNOT                        R19 ; [+6]
      111 GETTABLEKS                       R20 R0 K24 ["onAutoSelectViewChanged"]
      113 JUMPIFNOTEQKNIL                  R20 ; [+2]
      115 LOADB                            R19 0 +1
      116 LOADB                            R19 1
      117 GETUPVAL                         R20 1
      118 GETTABLEKS                       R20 R20 K25 ["useCallback"]
      120 NEWCLOSURE                       R21 P0
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R7
      126 NEWTABLE                         R22 0 5
      128 MOVE                             R23 R18
      129 MOVE                             R24 R3
      130 MOVE                             R25 R5
      131 MOVE                             R26 R7
      132 GETTABLEKS                       R27 R0 K26 ["onGenerate"]
      134 SETLIST                          R22 R23 5 [1]
      136 CALL                             R20 2 1
      137 GETUPVAL                         R21 6
      138 MOVE                             R22 R2
      139 LOADK                            R23 K27 ["TextureGen"]
      140 LOADK                            R24 K28 ["ViewManual"]
      141 LOADK                            R25 K29 ["Manual"]
      142 CALL                             R21 4 1
      143 GETUPVAL                         R22 6
      144 MOVE                             R23 R2
      145 LOADK                            R24 K27 ["TextureGen"]
      146 LOADK                            R25 K30 ["ViewAutomatic"]
      147 LOADK                            R26 K31 ["Automatic"]
      148 CALL                             R22 4 1
      149 JUMPIFNOT                        R7 ; [+2]
      150 MOVE                             R23 R22
      151 JUMP                             ; [+1]
      152 MOVE                             R23 R21
      153 NEWTABLE                         R24 0 4
      155 DUPTABLE                         R25 K36 [{["id"] = "viewSelection", ["text"], ["items"]}]
      156 GETUPVAL                         R26 6
      157 MOVE                             R27 R2
      158 LOADK                            R28 K27 ["TextureGen"]
      159 LOADK                            R29 K37 ["MoreViewSelection"]
      160 LOADK                            R30 K38 ["View: %*"]
      161 MOVE                             R32 R23
      162 NAMECALL                         R30 R30 K39 ["format"]
      164 CALL                             R30 2 1
      165 DUPTABLE                         R31 K41 [{"mode"}]
      166 SETTABLEKS                       R23 R31 K40 ["mode"]
      168 CALL                             R26 5 1
      169 SETTABLEKS                       R26 R25 K34 ["text"]
      171 NEWTABLE                         R26 0 2
      173 DUPTABLE                         R27 K43 [{["id"] = "Manual", ["text"], ["isChecked"]}]
      174 SETTABLEKS                       R21 R27 K34 ["text"]
      176 NOT                              R28 R7
      177 SETTABLEKS                       R28 R27 K42 ["isChecked"]
      179 DUPTABLE                         R28 K44 [{["id"] = "Automatic", ["text"], ["isChecked"]}]
      180 SETTABLEKS                       R22 R28 K34 ["text"]
      182 SETTABLEKS                       R7 R28 K42 ["isChecked"]
      184 SETLIST                          R26 R27 2 [1]
      186 SETTABLEKS                       R26 R25 K35 ["items"]
      188 DUPTABLE                         R26 K47 [{["id"] = "clearPrompt", ["text"], ["isDisabled"]}]
      189 GETUPVAL                         R27 6
      190 MOVE                             R28 R2
      191 LOADK                            R29 K27 ["TextureGen"]
      192 LOADK                            R30 K48 ["MoreClearPrompt"]
      193 LOADK                            R31 K49 ["Clear prompt"]
      194 CALL                             R27 4 1
      195 SETTABLEKS                       R27 R26 K34 ["text"]
      197 JUMPIFEQKS                       R3 K5 [""] ; [+2]
      199 LOADB                            R27 0 +1
      200 LOADB                            R27 1
      201 SETTABLEKS                       R27 R26 K46 ["isDisabled"]
      203 DUPTABLE                         R27 K51 [{["id"] = "clearImage", ["text"], ["isDisabled"]}]
      204 GETUPVAL                         R28 6
      205 MOVE                             R29 R2
      206 LOADK                            R30 K27 ["TextureGen"]
      207 LOADK                            R31 K52 ["MoreRemoveImage"]
      208 LOADK                            R32 K53 ["Remove image"]
      209 CALL                             R28 4 1
      210 SETTABLEKS                       R28 R27 K34 ["text"]
      212 NOT                              R28 R15
      213 SETTABLEKS                       R28 R27 K46 ["isDisabled"]
      215 DUPTABLE                         R28 K55 [{["id"] = "reset", ["text"]}]
      216 GETUPVAL                         R29 6
      217 MOVE                             R30 R2
      218 LOADK                            R31 K27 ["TextureGen"]
      219 LOADK                            R32 K56 ["MoreResetOptions"]
      220 LOADK                            R33 K57 ["Reset options"]
      221 CALL                             R29 4 1
      222 SETTABLEKS                       R29 R28 K34 ["text"]
      224 SETLIST                          R24 R25 4 [1]
      226 JUMPIFNOT                        R15 ; [+7]
      227 GETUPVAL                         R25 6
      228 MOVE                             R26 R2
      229 LOADK                            R27 K27 ["TextureGen"]
      230 LOADK                            R28 K58 ["InputPromptIgnoredWithImage"]
      231 LOADK                            R29 K59 ["Prompt is ignored when an image is attached"]
      232 CALL                             R25 4 1
      233 JUMP                             ; [+5]
      234 LOADK                            R27 K27 ["TextureGen"]
      235 LOADK                            R28 K60 ["InputPromptTitle"]
      236 NAMECALL                         R25 R2 K61 ["getText"]
      238 CALL                             R25 3 1
      239 NEWCLOSURE                       R26 P1
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R0
      242 GETUPVAL                         R27 1
      243 GETTABLEKS                       R27 R27 K62 ["createElement"]
      245 GETUPVAL                         R28 0
      246 GETTABLEKS                       R28 R28 K63 ["View"]
      248 DUPTABLE                         R29 K67 [{["tag"] = "col size-full-0 auto-y gap-small", ["LayoutOrder"]}]
      249 GETTABLEKS                       R30 R0 K66 ["LayoutOrder"]
      251 SETTABLEKS                       R30 R29 K66 ["LayoutOrder"]
      253 DUPTABLE                         R30 K72 [{"Prompt", "Attachment", "ReferenceImageError", "Actions"}]
      254 GETUPVAL                         R32 5
      255 GETTABLEKS                       R32 R32 K73 ["getFFlagTextureGenScrollablePrompt"]
      257 CALL                             R32 0 1
      258 JUMPIFNOT                        R32 ; [+52]
      259 GETUPVAL                         R31 1
      260 GETTABLEKS                       R31 R31 K62 ["createElement"]
      262 GETUPVAL                         R32 0
      263 GETTABLEKS                       R32 R32 K74 ["TextArea"]
      265 DUPTABLE                         R33 K85 [{["LayoutOrder"], ["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["isDisabled"], ["numLines"] = 2, ["size"], ["variant"], ["width"], ["testId"] = "TextureGenPrompt"}]
      266 MOVE                             R34 R9
      267 CALL                             R34 0 1
      268 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      270 SETTABLEKS                       R3 R33 K34 ["text"]
      272 SETTABLEKS                       R25 R33 K76 ["placeholder"]
      274 SETTABLEKS                       R26 R33 K77 ["onChanged"]
      276 GETTABLEKS                       R35 R0 K20 ["disabled"]
      278 JUMPIFEQKB                       R35 TRUE ; [+2]
      280 LOADB                            R34 0 +1
      281 LOADB                            R34 1
      282 SETTABLEKS                       R34 R33 K46 ["isDisabled"]
      284 GETUPVAL                         R34 0
      285 GETTABLEKS                       R34 R34 K86 ["Enums"]
      287 GETTABLEKS                       R34 R34 K87 ["InputSize"]
      289 GETTABLEKS                       R34 R34 K88 ["XSmall"]
      291 SETTABLEKS                       R34 R33 K80 ["size"]
      293 GETUPVAL                         R34 0
      294 GETTABLEKS                       R34 R34 K86 ["Enums"]
      296 GETTABLEKS                       R34 R34 K89 ["InputVariant"]
      298 GETTABLEKS                       R34 R34 K90 ["Utility"]
      300 SETTABLEKS                       R34 R33 K81 ["variant"]
      302 GETIMPORT                        R34 K93 [UDim.new]
      304 LOADN                            R35 1
      305 LOADN                            R36 -32
      306 CALL                             R34 2 1
      307 SETTABLEKS                       R34 R33 K82 ["width"]
      309 CALL                             R31 2 1
      310 JUMP                             ; [+153]
      311 GETUPVAL                         R31 1
      312 GETTABLEKS                       R31 R31 K62 ["createElement"]
      314 LOADK                            R32 K94 ["TextBox"]
      315 NEWTABLE                         R33 32 0
      317 LOADN                            R34 1
      318 SETTABLEKS                       R34 R33 K95 ["BackgroundTransparency"]
      320 LOADB                            R34 0
      321 SETTABLEKS                       R34 R33 K96 ["ClearTextOnFocus"]
      323 GETUPVAL                         R35 7
      324 JUMPIFNOT                        R35 ; [+2]
      325 LOADNIL                          R34
      326 JUMP                             ; [+6]
      327 GETTABLEKS                       R34 R1 K97 ["Typography"]
      329 GETTABLEKS                       R34 R34 K98 ["BodySmall"]
      331 GETTABLEKS                       R34 R34 K99 ["Font"]
      333 SETTABLEKS                       R34 R33 K99 ["Font"]
      335 GETUPVAL                         R35 7
      336 JUMPIFNOT                        R35 ; [+9]
      337 GETUPVAL                         R34 8
      338 GETTABLEKS                       R35 R1 K97 ["Typography"]
      340 GETTABLEKS                       R35 R35 K98 ["BodySmall"]
      342 GETTABLEKS                       R35 R35 K99 ["Font"]
      344 CALL                             R34 1 1
      345 JUMP                             ; [+1]
      346 LOADNIL                          R34
      347 SETTABLEKS                       R34 R33 K100 ["FontFace"]
      349 MOVE                             R34 R9
      350 CALL                             R34 0 1
      351 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      353 GETTABLEKS                       R34 R1 K97 ["Typography"]
      355 GETTABLEKS                       R34 R34 K98 ["BodySmall"]
      357 GETTABLEKS                       R34 R34 K101 ["LineHeight"]
      359 SETTABLEKS                       R34 R33 K101 ["LineHeight"]
      361 LOADB                            R34 1
      362 SETTABLEKS                       R34 R33 K102 ["MultiLine"]
      364 GETTABLEKS                       R34 R1 K103 ["Color"]
      366 GETTABLEKS                       R34 R34 K104 ["Content"]
      368 GETTABLEKS                       R34 R34 K105 ["Muted"]
      370 GETTABLEKS                       R34 R34 K106 ["Color3"]
      372 SETTABLEKS                       R34 R33 K107 ["PlaceholderColor3"]
      374 SETTABLEKS                       R25 R33 K108 ["PlaceholderText"]
      376 GETIMPORT                        R34 K110 [UDim2.new]
      378 LOADN                            R35 1
      379 LOADN                            R36 -32
      380 LOADN                            R37 0
      381 LOADN                            R38 44
      382 CALL                             R34 4 1
      383 SETTABLEKS                       R34 R33 K111 ["Size"]
      385 SETTABLEKS                       R3 R33 K112 ["Text"]
      387 GETTABLEKS                       R35 R0 K20 ["disabled"]
      389 JUMPIFNOTEQKB                    R35 TRUE ; [+2]
      391 LOADB                            R34 0 +1
      392 LOADB                            R34 1
      393 SETTABLEKS                       R34 R33 K113 ["TextEditable"]
      395 GETTABLEKS                       R34 R1 K103 ["Color"]
      397 GETTABLEKS                       R34 R34 K104 ["Content"]
      399 GETTABLEKS                       R34 R34 K114 ["Emphasis"]
      401 GETTABLEKS                       R34 R34 K106 ["Color3"]
      403 SETTABLEKS                       R34 R33 K115 ["TextColor3"]
      405 GETTABLEKS                       R34 R1 K97 ["Typography"]
      407 GETTABLEKS                       R34 R34 K98 ["BodySmall"]
      409 GETTABLEKS                       R34 R34 K116 ["FontSize"]
      411 SETTABLEKS                       R34 R33 K117 ["TextSize"]
      413 LOADB                            R34 1
      414 SETTABLEKS                       R34 R33 K118 ["TextWrapped"]
      416 GETIMPORT                        R34 K122 [Enum.TextXAlignment.Left]
      418 SETTABLEKS                       R34 R33 K120 ["TextXAlignment"]
      420 GETIMPORT                        R34 K125 [Enum.TextYAlignment.Top]
      422 SETTABLEKS                       R34 R33 K123 ["TextYAlignment"]
      424 GETUPVAL                         R34 1
      425 GETTABLEKS                       R34 R34 K126 ["Change"]
      427 GETTABLEKS                       R34 R34 K112 ["Text"]
      429 NEWCLOSURE                       R35 P2
      430 CAPTURE                          VAL R4
      431 CAPTURE                          VAL R0
      432 SETTABLE                         R35 R33 R34
      433 DUPTABLE                         R34 K128 [{"Padding"}]
      434 GETUPVAL                         R35 1
      435 GETTABLEKS                       R35 R35 K62 ["createElement"]
      437 LOADK                            R36 K129 ["UIPadding"]
      438 DUPTABLE                         R37 K133 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      439 GETIMPORT                        R38 K93 [UDim.new]
      441 LOADN                            R39 0
      442 LOADN                            R40 8
      443 CALL                             R38 2 1
      444 SETTABLEKS                       R38 R37 K130 ["PaddingLeft"]
      446 GETIMPORT                        R38 K93 [UDim.new]
      448 LOADN                            R39 0
      449 LOADN                            R40 8
      450 CALL                             R38 2 1
      451 SETTABLEKS                       R38 R37 K131 ["PaddingRight"]
      453 GETIMPORT                        R38 K93 [UDim.new]
      455 LOADN                            R39 0
      456 LOADN                            R40 8
      457 CALL                             R38 2 1
      458 SETTABLEKS                       R38 R37 K132 ["PaddingTop"]
      460 CALL                             R35 2 1
      461 SETTABLEKS                       R35 R34 K127 ["Padding"]
      463 CALL                             R31 3 1
      464 SETTABLEKS                       R31 R30 K68 ["Prompt"]
      466 JUMPIFNOT                        R14 ; [+27]
      467 JUMPIF                           R15 ; [+1]
      468 JUMPIFNOT                        R17 ; [+25]
      469 GETUPVAL                         R31 1
      470 GETTABLEKS                       R31 R31 K62 ["createElement"]
      472 GETUPVAL                         R32 9
      473 DUPTABLE                         R33 K136 [{"imageId", "isLoading", "onRemove", "disabled", "LayoutOrder"}]
      474 SETTABLEKS                       R12 R33 K16 ["imageId"]
      476 SETTABLEKS                       R17 R33 K134 ["isLoading"]
      478 GETTABLEKS                       R34 R0 K137 ["onClearReferenceImage"]
      480 JUMPIF                           R34 ; [+1]
      481 GETUPVAL                         R34 10
      482 SETTABLEKS                       R34 R33 K135 ["onRemove"]
      484 GETTABLEKS                       R34 R0 K20 ["disabled"]
      486 SETTABLEKS                       R34 R33 K20 ["disabled"]
      488 MOVE                             R34 R9
      489 CALL                             R34 0 1
      490 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      492 CALL                             R31 2 1
      493 JUMP                             ; [+1]
      494 LOADNIL                          R31
      495 SETTABLEKS                       R31 R30 K69 ["Attachment"]
      497 JUMPIFNOT                        R13 ; [+15]
      498 GETUPVAL                         R31 1
      499 GETTABLEKS                       R31 R31 K62 ["createElement"]
      501 GETUPVAL                         R32 0
      502 GETTABLEKS                       R32 R32 K112 ["Text"]
      504 DUPTABLE                         R33 K139 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert"}]
      505 MOVE                             R34 R9
      506 CALL                             R34 0 1
      507 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      509 SETTABLEKS                       R13 R33 K112 ["Text"]
      511 CALL                             R31 2 1
      512 JUMP                             ; [+1]
      513 LOADNIL                          R31
      514 SETTABLEKS                       R31 R30 K70 ["ReferenceImageError"]
      516 GETUPVAL                         R31 1
      517 GETTABLEKS                       R31 R31 K62 ["createElement"]
      519 GETUPVAL                         R32 0
      520 GETTABLEKS                       R32 R32 K63 ["View"]
      522 DUPTABLE                         R33 K141 [{["LayoutOrder"], ["tag"] = "row size-full-0 auto-y gap-xsmall align-y-center"}]
      523 MOVE                             R34 R9
      524 CALL                             R34 0 1
      525 SETTABLEKS                       R34 R33 K66 ["LayoutOrder"]
      527 DUPTABLE                         R34 K147 [{"Add", "Quality", "Spacer", "More", "Generate"}]
      528 JUMPIFNOT                        R14 ; [+51]
      529 JUMPIF                           R15 ; [+50]
      530 GETUPVAL                         R35 1
      531 GETTABLEKS                       R35 R35 K62 ["createElement"]
      533 GETUPVAL                         R36 0
      534 GETTABLEKS                       R36 R36 K148 ["IconButton"]
      536 DUPTABLE                         R37 K153 [{["LayoutOrder"] = 0, ["icon"], ["onActivated"], ["isLoading"], ["isDisabled"], ["size"], ["variant"], ["testId"] = "ReferenceImageUpload"}]
      537 DUPTABLE                         R38 K155 [{"name"}]
      538 GETUPVAL                         R39 0
      539 GETTABLEKS                       R39 R39 K86 ["Enums"]
      541 GETTABLEKS                       R39 R39 K156 ["IconName"]
      543 GETTABLEKS                       R39 R39 K157 ["PlusLarge"]
      545 SETTABLEKS                       R39 R38 K154 ["name"]
      547 SETTABLEKS                       R38 R37 K150 ["icon"]
      549 GETTABLEKS                       R38 R0 K158 ["onPickReferenceImage"]
      551 JUMPIF                           R38 ; [+1]
      552 GETUPVAL                         R38 10
      553 SETTABLEKS                       R38 R37 K151 ["onActivated"]
      555 SETTABLEKS                       R17 R37 K134 ["isLoading"]
      557 NOT                              R38 R16
      558 SETTABLEKS                       R38 R37 K46 ["isDisabled"]
      560 GETUPVAL                         R38 0
      561 GETTABLEKS                       R38 R38 K86 ["Enums"]
      563 GETTABLEKS                       R38 R38 K87 ["InputSize"]
      565 GETTABLEKS                       R38 R38 K159 ["Small"]
      567 SETTABLEKS                       R38 R37 K80 ["size"]
      569 GETUPVAL                         R38 0
      570 GETTABLEKS                       R38 R38 K86 ["Enums"]
      572 GETTABLEKS                       R38 R38 K160 ["ButtonVariant"]
      574 GETTABLEKS                       R38 R38 K90 ["Utility"]
      576 SETTABLEKS                       R38 R37 K81 ["variant"]
      578 CALL                             R35 2 1
      579 JUMP                             ; [+1]
      580 LOADNIL                          R35
      581 SETTABLEKS                       R35 R34 K142 ["Add"]
      583 GETUPVAL                         R36 5
      584 GETTABLEKS                       R36 R36 K161 ["getFFlagTextureGenModelSelector"]
      586 CALL                             R36 0 1
      587 JUMPIFNOT                        R36 ; [+17]
      588 GETUPVAL                         R35 1
      589 GETTABLEKS                       R35 R35 K62 ["createElement"]
      591 GETUPVAL                         R36 11
      592 DUPTABLE                         R37 K166 [{["LayoutOrder"] = 1, ["model"], ["onModelChanged"], ["disabled"], ["testId"] = "TextureGenQuality"}]
      593 SETTABLEKS                       R5 R37 K163 ["model"]
      595 NEWCLOSURE                       R38 P3
      596 CAPTURE                          VAL R6
      597 CAPTURE                          VAL R0
      598 SETTABLEKS                       R38 R37 K164 ["onModelChanged"]
      600 NOT                              R38 R16
      601 SETTABLEKS                       R38 R37 K20 ["disabled"]
      603 CALL                             R35 2 1
      604 JUMP                             ; [+1]
      605 LOADNIL                          R35
      606 SETTABLEKS                       R35 R34 K143 ["Quality"]
      608 GETUPVAL                         R35 1
      609 GETTABLEKS                       R35 R35 K62 ["createElement"]
      611 GETUPVAL                         R36 0
      612 GETTABLEKS                       R36 R36 K63 ["View"]
      614 DUPTABLE                         R37 K169 [{["LayoutOrder"] = 4, ["tag"] = "fill"}]
      615 CALL                             R35 2 1
      616 SETTABLEKS                       R35 R34 K144 ["Spacer"]
      618 JUMPIFNOT                        R19 ; [+21]
      619 GETUPVAL                         R35 1
      620 GETTABLEKS                       R35 R35 K62 ["createElement"]
      622 GETUPVAL                         R36 12
      623 DUPTABLE                         R37 K172 [{["LayoutOrder"] = 5, ["items"], ["onActivated"], ["disabled"], ["testId"] = "TextureGenMore"}]
      624 SETTABLEKS                       R24 R37 K35 ["items"]
      626 NEWCLOSURE                       R38 P4
      627 CAPTURE                          VAL R8
      628 CAPTURE                          VAL R0
      629 CAPTURE                          VAL R4
      630 CAPTURE                          VAL R6
      631 CAPTURE                          UPVAL U3
      632 CAPTURE                          UPVAL U5
      633 SETTABLEKS                       R38 R37 K151 ["onActivated"]
      635 NOT                              R38 R16
      636 SETTABLEKS                       R38 R37 K20 ["disabled"]
      638 CALL                             R35 2 1
      639 JUMP                             ; [+1]
      640 LOADNIL                          R35
      641 SETTABLEKS                       R35 R34 K145 ["More"]
      643 GETUPVAL                         R35 1
      644 GETTABLEKS                       R35 R35 K62 ["createElement"]
      646 GETUPVAL                         R36 0
      647 GETTABLEKS                       R36 R36 K173 ["Button"]
      649 DUPTABLE                         R37 K176 [{["LayoutOrder"] = 8, ["text"], ["onActivated"], ["isDisabled"], ["variant"], ["size"], ["testId"] = "TextureGenGenerate"}]
      650 GETTABLEKS                       R38 R0 K177 ["submitText"]
      652 JUMPIF                           R38 ; [+6]
      653 GETUPVAL                         R38 6
      654 MOVE                             R39 R2
      655 LOADK                            R40 K27 ["TextureGen"]
      656 LOADK                            R41 K178 ["InputPreview"]
      657 LOADK                            R42 K179 ["Preview"]
      658 CALL                             R38 4 1
      659 SETTABLEKS                       R38 R37 K34 ["text"]
      661 SETTABLEKS                       R20 R37 K151 ["onActivated"]
      663 SETTABLEKS                       R18 R37 K46 ["isDisabled"]
      665 GETUPVAL                         R38 0
      666 GETTABLEKS                       R38 R38 K86 ["Enums"]
      668 GETTABLEKS                       R38 R38 K160 ["ButtonVariant"]
      670 GETTABLEKS                       R38 R38 K114 ["Emphasis"]
      672 SETTABLEKS                       R38 R37 K81 ["variant"]
      674 GETUPVAL                         R38 0
      675 GETTABLEKS                       R38 R38 K86 ["Enums"]
      677 GETTABLEKS                       R38 R38 K87 ["InputSize"]
      679 GETTABLEKS                       R38 R38 K88 ["XSmall"]
      681 SETTABLEKS                       R38 R37 K80 ["size"]
      683 CALL                             R35 2 1
      684 SETTABLEKS                       R35 R34 K146 ["Generate"]
      686 CALL                             R31 3 1
      687 SETTABLEKS                       R31 R30 K71 ["Actions"]
      689 CALL                             R27 3 -1
      690 RETURN                           R27 -1

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
