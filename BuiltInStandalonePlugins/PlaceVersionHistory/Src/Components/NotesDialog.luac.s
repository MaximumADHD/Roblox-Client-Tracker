PROTO_0:
        0 LOADK                            R3 K0 ["[\n\r]"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[\r\n]"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 2
        6 ADDK                             R3 R2 K5 [1]
        7 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [utf8.len]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["View"]
       11 DUPTABLE                         R5 K6 [{["tag"] = "size-full", ["ref"]}]
       12 SETTABLEKS                       R2 R5 K5 ["ref"]
       14 DUPTABLE                         R6 K8 [{"OverlayProvider"}]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K1 ["createElement"]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K7 ["OverlayProvider"]
       21 DUPTABLE                         R9 K10 [{"gui"}]
       22 SETTABLEKS                       R1 R9 K9 ["gui"]
       24 GETTABLEKS                       R10 R0 K11 ["children"]
       26 CALL                             R7 3 1
       27 SETTABLEKS                       R7 R6 K7 ["OverlayProvider"]
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["localization"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["EngineFeaturePVHGenerateNotes"]
        7 JUMPIFNOT                        R3 ; [+440]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["createElement"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K3 ["View"]
       14 DUPTABLE                         R5 K9 [{["tag"] = "col size-full-0 auto-y gap-large padding-x-xxlarge padding-top-large", ["testId"] = "--notes-dialog-body", ["LayoutOrder"]}]
       15 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       17 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       19 DUPTABLE                         R6 K12 [{"TitleGroup", "DescriptionGroup"}]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K2 ["createElement"]
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K3 ["View"]
       26 DUPTABLE                         R9 K14 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       27 MOVE                             R10 R1
       28 CALL                             R10 0 1
       29 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       31 DUPTABLE                         R10 K17 [{"LabelRow", "TitleInput"}]
       32 GETUPVAL                         R11 2
       33 GETTABLEKS                       R11 R11 K2 ["createElement"]
       35 GETUPVAL                         R12 3
       36 GETTABLEKS                       R12 R12 K3 ["View"]
       38 DUPTABLE                         R13 K19 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
       39 MOVE                             R14 R1
       40 CALL                             R14 0 1
       41 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       43 DUPTABLE                         R14 K23 [{"Label", "Spacer", "GenerateButton"}]
       44 GETUPVAL                         R15 2
       45 GETTABLEKS                       R15 R15 K2 ["createElement"]
       47 GETUPVAL                         R16 3
       48 GETTABLEKS                       R16 R16 K24 ["Text"]
       50 DUPTABLE                         R17 K26 [{["Text"], ["tag"] = "size-0-0 auto-xy text-title-medium content-default", ["LayoutOrder"]}]
       51 LOADK                            R18 K27 ["%* *"]
       52 LOADK                            R22 K20 ["Label"]
       53 LOADK                            R23 K28 ["VersionName"]
       54 NAMECALL                         R20 R2 K29 ["getText"]
       56 CALL                             R20 3 1
       57 NAMECALL                         R18 R18 K30 ["format"]
       59 CALL                             R18 2 1
       60 SETTABLEKS                       R18 R17 K24 ["Text"]
       62 MOVE                             R18 R1
       63 CALL                             R18 0 1
       64 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
       66 CALL                             R15 2 1
       67 SETTABLEKS                       R15 R14 K20 ["Label"]
       69 GETUPVAL                         R15 2
       70 GETTABLEKS                       R15 R15 K2 ["createElement"]
       72 GETUPVAL                         R16 3
       73 GETTABLEKS                       R16 R16 K3 ["View"]
       75 DUPTABLE                         R17 K32 [{["tag"] = "fill", ["LayoutOrder"]}]
       76 MOVE                             R18 R1
       77 CALL                             R18 0 1
       78 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
       80 CALL                             R15 2 1
       81 SETTABLEKS                       R15 R14 K21 ["Spacer"]
       83 GETTABLEKS                       R16 R0 K33 ["showGenerateButton"]
       85 JUMPIF                           R16 ; [+2]
       86 LOADNIL                          R15
       87 JUMP                             ; [+26]
       88 GETUPVAL                         R15 2
       89 GETTABLEKS                       R15 R15 K2 ["createElement"]
       91 GETUPVAL                         R16 4
       92 DUPTABLE                         R17 K38 [{"text", "tooltip", "isDisabled", "onActivated", "LayoutOrder"}]
       93 GETTABLEKS                       R18 R0 K39 ["generateButtonText"]
       95 SETTABLEKS                       R18 R17 K34 ["text"]
       97 GETTABLEKS                       R18 R0 K40 ["generateTooltip"]
       99 SETTABLEKS                       R18 R17 K35 ["tooltip"]
      101 GETTABLEKS                       R18 R0 K41 ["isLoading"]
      103 SETTABLEKS                       R18 R17 K36 ["isDisabled"]
      105 GETTABLEKS                       R18 R0 K42 ["onGenerateTrigger"]
      107 SETTABLEKS                       R18 R17 K37 ["onActivated"]
      109 MOVE                             R18 R1
      110 CALL                             R18 0 1
      111 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K22 ["GenerateButton"]
      116 CALL                             R11 3 1
      117 SETTABLEKS                       R11 R10 K15 ["LabelRow"]
      119 GETUPVAL                         R11 2
      120 GETTABLEKS                       R11 R11 K2 ["createElement"]
      122 GETUPVAL                         R12 3
      123 GETTABLEKS                       R12 R12 K3 ["View"]
      125 DUPTABLE                         R13 K47 [{["BackgroundTransparency"] = 1, ["Size"], ["AutomaticSize"], ["LayoutOrder"]}]
      126 GETIMPORT                        R14 K50 [UDim2.new]
      128 LOADN                            R15 0
      129 GETUPVAL                         R16 5
      130 LOADN                            R17 0
      131 LOADN                            R18 0
      132 CALL                             R14 4 1
      133 SETTABLEKS                       R14 R13 K45 ["Size"]
      135 GETIMPORT                        R14 K53 [Enum.AutomaticSize.Y]
      137 SETTABLEKS                       R14 R13 K46 ["AutomaticSize"]
      139 MOVE                             R14 R1
      140 CALL                             R14 0 1
      141 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      143 DUPTABLE                         R14 K56 [{"Input", "DraftingOverlay"}]
      144 GETUPVAL                         R15 2
      145 GETTABLEKS                       R15 R15 K2 ["createElement"]
      147 GETUPVAL                         R16 3
      148 GETTABLEKS                       R16 R16 K57 ["TextArea"]
      150 DUPTABLE                         R17 K71 [{["key"], ["text"], ["onFocusLost"], ["onChanged"], ["label"] = "", ["placeholder"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 1, ["size"], ["variant"], ["textBoxRef"]}]
      151 GETTABLEKS                       R19 R0 K72 ["generationId"]
      153 FASTCALL1                        TOSTRING R19 ; [+2]
      154 GETIMPORT                        R18 K74 [tostring]
      156 CALL                             R18 1 1
      157 SETTABLEKS                       R18 R17 K58 ["key"]
      159 GETTABLEKS                       R18 R0 K75 ["title"]
      161 SETTABLEKS                       R18 R17 K34 ["text"]
      163 GETTABLEKS                       R18 R0 K76 ["onTitleFocusLost"]
      165 SETTABLEKS                       R18 R17 K59 ["onFocusLost"]
      167 GETTABLEKS                       R18 R0 K77 ["onTitleChanged"]
      169 SETTABLEKS                       R18 R17 K60 ["onChanged"]
      171 GETTABLEKS                       R19 R0 K78 ["isGenerating"]
      173 JUMPIFNOT                        R19 ; [+5]
      174 GETTABLEKS                       R19 R0 K79 ["isTitleBlank"]
      176 JUMPIFNOT                        R19 ; [+2]
      177 LOADK                            R18 K62 [""]
      178 JUMP                             ; [+5]
      179 LOADK                            R20 K20 ["Label"]
      180 LOADK                            R21 K80 ["VersionNamePlaceholder"]
      181 NAMECALL                         R18 R2 K29 ["getText"]
      183 CALL                             R18 3 1
      184 SETTABLEKS                       R18 R17 K63 ["placeholder"]
      186 GETTABLEKS                       R19 R0 K81 ["titleError"]
      188 JUMPIFNOT                        R19 ; [+3]
      189 GETTABLEKS                       R18 R0 K81 ["titleError"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R18
      193 SETTABLEKS                       R18 R17 K64 ["hint"]
      195 GETTABLEKS                       R19 R0 K81 ["titleError"]
      197 JUMPIFNOTEQKNIL                  R19 ; [+2]
      199 LOADB                            R18 0 +1
      200 LOADB                            R18 1
      201 SETTABLEKS                       R18 R17 K65 ["hasError"]
      203 GETTABLEKS                       R18 R0 K82 ["isBusy"]
      205 SETTABLEKS                       R18 R17 K36 ["isDisabled"]
      207 GETIMPORT                        R18 K84 [UDim.new]
      209 LOADN                            R19 0
      210 GETUPVAL                         R20 5
      211 CALL                             R18 2 1
      212 SETTABLEKS                       R18 R17 K66 ["width"]
      214 GETUPVAL                         R18 3
      215 GETTABLEKS                       R18 R18 K85 ["Enums"]
      217 GETTABLEKS                       R18 R18 K86 ["InputSize"]
      219 GETTABLEKS                       R18 R18 K87 ["Medium"]
      221 SETTABLEKS                       R18 R17 K68 ["size"]
      223 GETUPVAL                         R18 3
      224 GETTABLEKS                       R18 R18 K85 ["Enums"]
      226 GETTABLEKS                       R18 R18 K88 ["InputVariant"]
      228 GETTABLEKS                       R18 R18 K89 ["Contrast"]
      230 SETTABLEKS                       R18 R17 K69 ["variant"]
      232 GETTABLEKS                       R18 R0 K90 ["titleRef"]
      234 SETTABLEKS                       R18 R17 K70 ["textBoxRef"]
      236 CALL                             R15 2 1
      237 SETTABLEKS                       R15 R14 K54 ["Input"]
      239 GETTABLEKS                       R16 R0 K78 ["isGenerating"]
      241 JUMPIFNOT                        R16 ; [+17]
      242 GETTABLEKS                       R16 R0 K79 ["isTitleBlank"]
      244 JUMPIFNOT                        R16 ; [+14]
      245 GETUPVAL                         R15 2
      246 GETTABLEKS                       R15 R15 K2 ["createElement"]
      248 GETUPVAL                         R16 6
      249 DUPTABLE                         R17 K93 [{["text"], ["centered"] = True}]
      250 LOADK                            R20 K94 ["Description"]
      251 LOADK                            R21 K95 ["Draft"]
      252 NAMECALL                         R18 R2 K29 ["getText"]
      254 CALL                             R18 3 1
      255 SETTABLEKS                       R18 R17 K34 ["text"]
      257 CALL                             R15 2 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R15
      260 SETTABLEKS                       R15 R14 K55 ["DraftingOverlay"]
      262 CALL                             R11 3 1
      263 SETTABLEKS                       R11 R10 K16 ["TitleInput"]
      265 CALL                             R7 3 1
      266 SETTABLEKS                       R7 R6 K10 ["TitleGroup"]
      268 GETUPVAL                         R7 2
      269 GETTABLEKS                       R7 R7 K2 ["createElement"]
      271 GETUPVAL                         R8 3
      272 GETTABLEKS                       R8 R8 K3 ["View"]
      274 DUPTABLE                         R9 K14 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      275 MOVE                             R10 R1
      276 CALL                             R10 0 1
      277 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      279 DUPTABLE                         R10 K97 [{"Label", "DescriptionInput"}]
      280 GETUPVAL                         R11 2
      281 GETTABLEKS                       R11 R11 K2 ["createElement"]
      283 GETUPVAL                         R12 3
      284 GETTABLEKS                       R12 R12 K24 ["Text"]
      286 DUPTABLE                         R13 K26 [{["Text"], ["tag"] = "size-0-0 auto-xy text-title-medium content-default", ["LayoutOrder"]}]
      287 LOADK                            R16 K20 ["Label"]
      288 LOADK                            R17 K98 ["VersionNotes"]
      289 NAMECALL                         R14 R2 K29 ["getText"]
      291 CALL                             R14 3 1
      292 SETTABLEKS                       R14 R13 K24 ["Text"]
      294 MOVE                             R14 R1
      295 CALL                             R14 0 1
      296 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      298 CALL                             R11 2 1
      299 SETTABLEKS                       R11 R10 K20 ["Label"]
      301 GETUPVAL                         R11 2
      302 GETTABLEKS                       R11 R11 K2 ["createElement"]
      304 GETUPVAL                         R12 3
      305 GETTABLEKS                       R12 R12 K3 ["View"]
      307 DUPTABLE                         R13 K47 [{["BackgroundTransparency"] = 1, ["Size"], ["AutomaticSize"], ["LayoutOrder"]}]
      308 GETIMPORT                        R14 K50 [UDim2.new]
      310 LOADN                            R15 0
      311 GETUPVAL                         R16 5
      312 LOADN                            R17 0
      313 LOADN                            R18 0
      314 CALL                             R14 4 1
      315 SETTABLEKS                       R14 R13 K45 ["Size"]
      317 GETIMPORT                        R14 K53 [Enum.AutomaticSize.Y]
      319 SETTABLEKS                       R14 R13 K46 ["AutomaticSize"]
      321 MOVE                             R14 R1
      322 CALL                             R14 0 1
      323 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      325 DUPTABLE                         R14 K56 [{"Input", "DraftingOverlay"}]
      326 GETUPVAL                         R15 2
      327 GETTABLEKS                       R15 R15 K2 ["createElement"]
      329 GETUPVAL                         R16 3
      330 GETTABLEKS                       R16 R16 K57 ["TextArea"]
      332 DUPTABLE                         R17 K100 [{["key"], ["text"], ["onChanged"], ["label"] = "", ["placeholder"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 6, ["size"], ["variant"], ["textBoxRef"]}]
      333 GETTABLEKS                       R19 R0 K72 ["generationId"]
      335 FASTCALL1                        TOSTRING R19 ; [+2]
      336 GETIMPORT                        R18 K74 [tostring]
      338 CALL                             R18 1 1
      339 SETTABLEKS                       R18 R17 K58 ["key"]
      341 GETTABLEKS                       R18 R0 K101 ["description"]
      343 SETTABLEKS                       R18 R17 K34 ["text"]
      345 GETTABLEKS                       R18 R0 K102 ["onDescriptionChanged"]
      347 SETTABLEKS                       R18 R17 K60 ["onChanged"]
      349 GETTABLEKS                       R19 R0 K78 ["isGenerating"]
      351 JUMPIFNOT                        R19 ; [+5]
      352 GETTABLEKS                       R19 R0 K103 ["isDescriptionBlank"]
      354 JUMPIFNOT                        R19 ; [+2]
      355 LOADK                            R18 K62 [""]
      356 JUMP                             ; [+5]
      357 LOADK                            R20 K20 ["Label"]
      358 LOADK                            R21 K104 ["VersionNotesPlaceholder"]
      359 NAMECALL                         R18 R2 K29 ["getText"]
      361 CALL                             R18 3 1
      362 SETTABLEKS                       R18 R17 K63 ["placeholder"]
      364 GETTABLEKS                       R19 R0 K105 ["descriptionError"]
      366 JUMPIFNOT                        R19 ; [+3]
      367 GETTABLEKS                       R18 R0 K105 ["descriptionError"]
      369 JUMP                             ; [+1]
      370 LOADNIL                          R18
      371 SETTABLEKS                       R18 R17 K64 ["hint"]
      373 GETTABLEKS                       R19 R0 K105 ["descriptionError"]
      375 JUMPIFNOTEQKNIL                  R19 ; [+2]
      377 LOADB                            R18 0 +1
      378 LOADB                            R18 1
      379 SETTABLEKS                       R18 R17 K65 ["hasError"]
      381 GETTABLEKS                       R18 R0 K82 ["isBusy"]
      383 SETTABLEKS                       R18 R17 K36 ["isDisabled"]
      385 GETIMPORT                        R18 K84 [UDim.new]
      387 LOADN                            R19 0
      388 GETUPVAL                         R20 5
      389 CALL                             R18 2 1
      390 SETTABLEKS                       R18 R17 K66 ["width"]
      392 GETUPVAL                         R18 3
      393 GETTABLEKS                       R18 R18 K85 ["Enums"]
      395 GETTABLEKS                       R18 R18 K86 ["InputSize"]
      397 GETTABLEKS                       R18 R18 K87 ["Medium"]
      399 SETTABLEKS                       R18 R17 K68 ["size"]
      401 GETUPVAL                         R18 3
      402 GETTABLEKS                       R18 R18 K85 ["Enums"]
      404 GETTABLEKS                       R18 R18 K88 ["InputVariant"]
      406 GETTABLEKS                       R18 R18 K89 ["Contrast"]
      408 SETTABLEKS                       R18 R17 K69 ["variant"]
      410 GETTABLEKS                       R18 R0 K106 ["descriptionRef"]
      412 SETTABLEKS                       R18 R17 K70 ["textBoxRef"]
      414 CALL                             R15 2 1
      415 SETTABLEKS                       R15 R14 K54 ["Input"]
      417 GETTABLEKS                       R16 R0 K78 ["isGenerating"]
      419 JUMPIFNOT                        R16 ; [+17]
      420 GETTABLEKS                       R16 R0 K103 ["isDescriptionBlank"]
      422 JUMPIFNOT                        R16 ; [+14]
      423 GETUPVAL                         R15 2
      424 GETTABLEKS                       R15 R15 K2 ["createElement"]
      426 GETUPVAL                         R16 6
      427 DUPTABLE                         R17 K108 [{["text"], ["centered"] = False}]
      428 LOADK                            R20 K94 ["Description"]
      429 LOADK                            R21 K95 ["Draft"]
      430 NAMECALL                         R18 R2 K29 ["getText"]
      432 CALL                             R18 3 1
      433 SETTABLEKS                       R18 R17 K34 ["text"]
      435 CALL                             R15 2 1
      436 JUMP                             ; [+1]
      437 LOADNIL                          R15
      438 SETTABLEKS                       R15 R14 K55 ["DraftingOverlay"]
      440 CALL                             R11 3 1
      441 SETTABLEKS                       R11 R10 K96 ["DescriptionInput"]
      443 CALL                             R7 3 1
      444 SETTABLEKS                       R7 R6 K11 ["DescriptionGroup"]
      446 CALL                             R3 3 -1
      447 RETURN                           R3 -1
      448 GETUPVAL                         R3 2
      449 GETTABLEKS                       R3 R3 K2 ["createElement"]
      451 GETUPVAL                         R4 3
      452 GETTABLEKS                       R4 R4 K3 ["View"]
      454 DUPTABLE                         R5 K110 [{["tag"] = "col gap-medium size-full-0 auto-y padding-small", ["testId"] = "--notes-dialog-body", ["LayoutOrder"]}]
      455 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
      457 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
      459 DUPTABLE                         R6 K111 [{"TitleInput", "DescriptionInput"}]
      460 GETUPVAL                         R7 2
      461 GETTABLEKS                       R7 R7 K2 ["createElement"]
      463 GETUPVAL                         R8 3
      464 GETTABLEKS                       R8 R8 K57 ["TextArea"]
      466 DUPTABLE                         R9 K112 [{["text"], ["onFocusLost"], ["onChanged"], ["label"], ["placeholder"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 1, ["size"], ["textBoxRef"], ["LayoutOrder"]}]
      467 GETTABLEKS                       R10 R0 K75 ["title"]
      469 SETTABLEKS                       R10 R9 K34 ["text"]
      471 GETTABLEKS                       R10 R0 K76 ["onTitleFocusLost"]
      473 SETTABLEKS                       R10 R9 K59 ["onFocusLost"]
      475 GETTABLEKS                       R10 R0 K77 ["onTitleChanged"]
      477 SETTABLEKS                       R10 R9 K60 ["onChanged"]
      479 LOADK                            R10 K27 ["%* *"]
      480 LOADK                            R14 K20 ["Label"]
      481 LOADK                            R15 K28 ["VersionName"]
      482 NAMECALL                         R12 R2 K29 ["getText"]
      484 CALL                             R12 3 1
      485 NAMECALL                         R10 R10 K30 ["format"]
      487 CALL                             R10 2 1
      488 SETTABLEKS                       R10 R9 K61 ["label"]
      490 LOADK                            R12 K20 ["Label"]
      491 LOADK                            R13 K80 ["VersionNamePlaceholder"]
      492 NAMECALL                         R10 R2 K29 ["getText"]
      494 CALL                             R10 3 1
      495 SETTABLEKS                       R10 R9 K63 ["placeholder"]
      497 GETTABLEKS                       R11 R0 K81 ["titleError"]
      499 JUMPIFNOT                        R11 ; [+3]
      500 GETTABLEKS                       R10 R0 K81 ["titleError"]
      502 JUMP                             ; [+1]
      503 LOADNIL                          R10
      504 SETTABLEKS                       R10 R9 K64 ["hint"]
      506 GETTABLEKS                       R11 R0 K81 ["titleError"]
      508 JUMPIFNOTEQKNIL                  R11 ; [+2]
      510 LOADB                            R10 0 +1
      511 LOADB                            R10 1
      512 SETTABLEKS                       R10 R9 K65 ["hasError"]
      514 GETTABLEKS                       R10 R0 K41 ["isLoading"]
      516 SETTABLEKS                       R10 R9 K36 ["isDisabled"]
      518 GETIMPORT                        R10 K84 [UDim.new]
      520 LOADN                            R11 0
      521 GETUPVAL                         R12 5
      522 CALL                             R10 2 1
      523 SETTABLEKS                       R10 R9 K66 ["width"]
      525 GETUPVAL                         R10 3
      526 GETTABLEKS                       R10 R10 K85 ["Enums"]
      528 GETTABLEKS                       R10 R10 K86 ["InputSize"]
      530 GETTABLEKS                       R10 R10 K87 ["Medium"]
      532 SETTABLEKS                       R10 R9 K68 ["size"]
      534 GETTABLEKS                       R10 R0 K90 ["titleRef"]
      536 SETTABLEKS                       R10 R9 K70 ["textBoxRef"]
      538 MOVE                             R10 R1
      539 CALL                             R10 0 1
      540 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      542 CALL                             R7 2 1
      543 SETTABLEKS                       R7 R6 K16 ["TitleInput"]
      545 GETUPVAL                         R7 2
      546 GETTABLEKS                       R7 R7 K2 ["createElement"]
      548 GETUPVAL                         R8 3
      549 GETTABLEKS                       R8 R8 K57 ["TextArea"]
      551 DUPTABLE                         R9 K113 [{["text"], ["onChanged"], ["label"], ["placeholder"], ["hint"], ["hasError"], ["isDisabled"], ["width"], ["numLines"] = 6, ["size"], ["textBoxRef"], ["LayoutOrder"]}]
      552 GETTABLEKS                       R10 R0 K101 ["description"]
      554 SETTABLEKS                       R10 R9 K34 ["text"]
      556 GETTABLEKS                       R10 R0 K102 ["onDescriptionChanged"]
      558 SETTABLEKS                       R10 R9 K60 ["onChanged"]
      560 LOADK                            R12 K20 ["Label"]
      561 LOADK                            R13 K98 ["VersionNotes"]
      562 NAMECALL                         R10 R2 K29 ["getText"]
      564 CALL                             R10 3 1
      565 SETTABLEKS                       R10 R9 K61 ["label"]
      567 LOADK                            R12 K20 ["Label"]
      568 LOADK                            R13 K104 ["VersionNotesPlaceholder"]
      569 NAMECALL                         R10 R2 K29 ["getText"]
      571 CALL                             R10 3 1
      572 SETTABLEKS                       R10 R9 K63 ["placeholder"]
      574 GETTABLEKS                       R11 R0 K105 ["descriptionError"]
      576 JUMPIFNOT                        R11 ; [+3]
      577 GETTABLEKS                       R10 R0 K105 ["descriptionError"]
      579 JUMP                             ; [+1]
      580 LOADNIL                          R10
      581 SETTABLEKS                       R10 R9 K64 ["hint"]
      583 GETTABLEKS                       R11 R0 K105 ["descriptionError"]
      585 JUMPIFNOTEQKNIL                  R11 ; [+2]
      587 LOADB                            R10 0 +1
      588 LOADB                            R10 1
      589 SETTABLEKS                       R10 R9 K65 ["hasError"]
      591 GETTABLEKS                       R10 R0 K41 ["isLoading"]
      593 SETTABLEKS                       R10 R9 K36 ["isDisabled"]
      595 GETIMPORT                        R10 K84 [UDim.new]
      597 LOADN                            R11 0
      598 GETUPVAL                         R12 5
      599 CALL                             R10 2 1
      600 SETTABLEKS                       R10 R9 K66 ["width"]
      602 GETUPVAL                         R10 3
      603 GETTABLEKS                       R10 R10 K85 ["Enums"]
      605 GETTABLEKS                       R10 R10 K86 ["InputSize"]
      607 GETTABLEKS                       R10 R10 K87 ["Medium"]
      609 SETTABLEKS                       R10 R9 K68 ["size"]
      611 GETTABLEKS                       R10 R0 K106 ["descriptionRef"]
      613 SETTABLEKS                       R10 R9 K70 ["textBoxRef"]
      615 MOVE                             R10 R1
      616 CALL                             R10 0 1
      617 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      619 CALL                             R7 2 1
      620 SETTABLEKS                       R7 R6 K96 ["DescriptionInput"]
      622 CALL                             R3 3 -1
      623 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["EngineFeaturePVHGenerateNotes"]
        5 JUMPIFNOT                        R2 ; [+164]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["createElement"]
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["View"]
       12 DUPTABLE                         R4 K7 [{["tag"] = "row gap-small padding-top-small padding-bottom-large auto-y align-y-center", ["Size"], ["LayoutOrder"]}]
       13 GETIMPORT                        R5 K10 [UDim2.new]
       15 LOADN                            R6 0
       16 GETUPVAL                         R7 4
       17 LOADN                            R8 0
       18 LOADN                            R9 0
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K5 ["Size"]
       22 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       24 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       26 DUPTABLE                         R5 K12 [{"Buttons"}]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K1 ["createElement"]
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K2 ["View"]
       33 DUPTABLE                         R8 K14 [{["tag"] = "row gap-small size-full-0 auto-y align-y-center", ["LayoutOrder"]}]
       34 MOVE                             R9 R1
       35 CALL                             R9 0 1
       36 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       38 DUPTABLE                         R9 K18 [{"Disclaimer", "CancelButton", "AcceptButton"}]
       39 GETTABLEKS                       R11 R0 K19 ["showSummaryDisclaimer"]
       41 JUMPIFNOT                        R11 ; [+17]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K1 ["createElement"]
       45 GETUPVAL                         R11 3
       46 GETTABLEKS                       R11 R11 K20 ["Text"]
       48 DUPTABLE                         R12 K22 [{["Text"], ["tag"] = "fill auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"]}]
       49 GETTABLEKS                       R13 R0 K23 ["disclaimerText"]
       51 SETTABLEKS                       R13 R12 K20 ["Text"]
       53 MOVE                             R13 R1
       54 CALL                             R13 0 1
       55 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       57 CALL                             R10 2 1
       58 JUMP                             ; [+12]
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K1 ["createElement"]
       62 GETUPVAL                         R11 3
       63 GETTABLEKS                       R11 R11 K2 ["View"]
       65 DUPTABLE                         R12 K25 [{["tag"] = "fill", ["LayoutOrder"]}]
       66 MOVE                             R13 R1
       67 CALL                             R13 0 1
       68 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K15 ["Disclaimer"]
       73 GETUPVAL                         R10 2
       74 GETTABLEKS                       R10 R10 K1 ["createElement"]
       76 GETUPVAL                         R11 3
       77 GETTABLEKS                       R11 R11 K26 ["Button"]
       79 DUPTABLE                         R12 K34 [{["text"], ["isDisabled"], ["variant"], ["onActivated"], ["size"], ["testId"] = "--notes-dialog-cancel-button", ["LayoutOrder"]}]
       80 GETTABLEKS                       R13 R0 K35 ["cancelText"]
       82 SETTABLEKS                       R13 R12 K27 ["text"]
       84 GETTABLEKS                       R13 R0 K36 ["isLoading"]
       86 SETTABLEKS                       R13 R12 K28 ["isDisabled"]
       88 GETUPVAL                         R13 3
       89 GETTABLEKS                       R13 R13 K37 ["Enums"]
       91 GETTABLEKS                       R13 R13 K38 ["ButtonVariant"]
       93 GETTABLEKS                       R13 R13 K39 ["Standard"]
       95 SETTABLEKS                       R13 R12 K29 ["variant"]
       97 GETTABLEKS                       R13 R0 K40 ["onReject"]
       99 SETTABLEKS                       R13 R12 K30 ["onActivated"]
      101 GETUPVAL                         R13 3
      102 GETTABLEKS                       R13 R13 K37 ["Enums"]
      104 GETTABLEKS                       R13 R13 K41 ["InputSize"]
      106 GETTABLEKS                       R13 R13 K42 ["XSmall"]
      108 SETTABLEKS                       R13 R12 K31 ["size"]
      110 MOVE                             R13 R1
      111 CALL                             R13 0 1
      112 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      114 CALL                             R10 2 1
      115 SETTABLEKS                       R10 R9 K16 ["CancelButton"]
      117 GETUPVAL                         R10 2
      118 GETTABLEKS                       R10 R10 K1 ["createElement"]
      120 GETUPVAL                         R11 3
      121 GETTABLEKS                       R11 R11 K26 ["Button"]
      123 DUPTABLE                         R12 K44 [{["text"], ["variant"], ["onActivated"], ["size"], ["isLoading"], ["isDisabled"], ["testId"] = "--notes-dialog-accept-button", ["LayoutOrder"]}]
      124 GETTABLEKS                       R13 R0 K45 ["acceptText"]
      126 SETTABLEKS                       R13 R12 K27 ["text"]
      128 GETUPVAL                         R13 3
      129 GETTABLEKS                       R13 R13 K37 ["Enums"]
      131 GETTABLEKS                       R13 R13 K38 ["ButtonVariant"]
      133 GETTABLEKS                       R13 R13 K46 ["Emphasis"]
      135 SETTABLEKS                       R13 R12 K29 ["variant"]
      137 GETTABLEKS                       R13 R0 K47 ["onAccept"]
      139 SETTABLEKS                       R13 R12 K30 ["onActivated"]
      141 GETUPVAL                         R13 3
      142 GETTABLEKS                       R13 R13 K37 ["Enums"]
      144 GETTABLEKS                       R13 R13 K41 ["InputSize"]
      146 GETTABLEKS                       R13 R13 K42 ["XSmall"]
      148 SETTABLEKS                       R13 R12 K31 ["size"]
      150 GETTABLEKS                       R13 R0 K36 ["isLoading"]
      152 SETTABLEKS                       R13 R12 K36 ["isLoading"]
      154 GETTABLEKS                       R13 R0 K48 ["isAcceptDisabled"]
      156 SETTABLEKS                       R13 R12 K28 ["isDisabled"]
      158 MOVE                             R13 R1
      159 CALL                             R13 0 1
      160 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      162 CALL                             R10 2 1
      163 SETTABLEKS                       R10 R9 K17 ["AcceptButton"]
      165 CALL                             R6 3 1
      166 SETTABLEKS                       R6 R5 K11 ["Buttons"]
      168 CALL                             R2 3 -1
      169 RETURN                           R2 -1
      170 GETUPVAL                         R2 2
      171 GETTABLEKS                       R2 R2 K1 ["createElement"]
      173 GETUPVAL                         R3 3
      174 GETTABLEKS                       R3 R3 K2 ["View"]
      176 DUPTABLE                         R4 K50 [{["tag"] = "row gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      177 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
      179 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
      181 DUPTABLE                         R5 K52 [{"Spacer", "CancelButton", "AcceptButton"}]
      182 GETUPVAL                         R6 2
      183 GETTABLEKS                       R6 R6 K1 ["createElement"]
      185 GETUPVAL                         R7 3
      186 GETTABLEKS                       R7 R7 K2 ["View"]
      188 DUPTABLE                         R8 K25 [{["tag"] = "fill", ["LayoutOrder"]}]
      189 MOVE                             R9 R1
      190 CALL                             R9 0 1
      191 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
      193 CALL                             R6 2 1
      194 SETTABLEKS                       R6 R5 K51 ["Spacer"]
      196 GETUPVAL                         R6 2
      197 GETTABLEKS                       R6 R6 K1 ["createElement"]
      199 GETUPVAL                         R7 3
      200 GETTABLEKS                       R7 R7 K26 ["Button"]
      202 DUPTABLE                         R8 K34 [{["text"], ["isDisabled"], ["variant"], ["onActivated"], ["size"], ["testId"] = "--notes-dialog-cancel-button", ["LayoutOrder"]}]
      203 GETTABLEKS                       R9 R0 K35 ["cancelText"]
      205 SETTABLEKS                       R9 R8 K27 ["text"]
      207 GETTABLEKS                       R9 R0 K36 ["isLoading"]
      209 SETTABLEKS                       R9 R8 K28 ["isDisabled"]
      211 GETUPVAL                         R9 3
      212 GETTABLEKS                       R9 R9 K37 ["Enums"]
      214 GETTABLEKS                       R9 R9 K38 ["ButtonVariant"]
      216 GETTABLEKS                       R9 R9 K39 ["Standard"]
      218 SETTABLEKS                       R9 R8 K29 ["variant"]
      220 GETTABLEKS                       R9 R0 K40 ["onReject"]
      222 SETTABLEKS                       R9 R8 K30 ["onActivated"]
      224 GETUPVAL                         R9 3
      225 GETTABLEKS                       R9 R9 K37 ["Enums"]
      227 GETTABLEKS                       R9 R9 K41 ["InputSize"]
      229 GETTABLEKS                       R9 R9 K53 ["Small"]
      231 SETTABLEKS                       R9 R8 K31 ["size"]
      233 MOVE                             R9 R1
      234 CALL                             R9 0 1
      235 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
      237 CALL                             R6 2 1
      238 SETTABLEKS                       R6 R5 K16 ["CancelButton"]
      240 GETUPVAL                         R6 2
      241 GETTABLEKS                       R6 R6 K1 ["createElement"]
      243 GETUPVAL                         R7 3
      244 GETTABLEKS                       R7 R7 K26 ["Button"]
      246 DUPTABLE                         R8 K44 [{["text"], ["variant"], ["onActivated"], ["size"], ["isLoading"], ["isDisabled"], ["testId"] = "--notes-dialog-accept-button", ["LayoutOrder"]}]
      247 GETTABLEKS                       R9 R0 K45 ["acceptText"]
      249 SETTABLEKS                       R9 R8 K27 ["text"]
      251 GETUPVAL                         R9 3
      252 GETTABLEKS                       R9 R9 K37 ["Enums"]
      254 GETTABLEKS                       R9 R9 K38 ["ButtonVariant"]
      256 GETTABLEKS                       R9 R9 K46 ["Emphasis"]
      258 SETTABLEKS                       R9 R8 K29 ["variant"]
      260 GETTABLEKS                       R9 R0 K47 ["onAccept"]
      262 SETTABLEKS                       R9 R8 K30 ["onActivated"]
      264 GETUPVAL                         R9 3
      265 GETTABLEKS                       R9 R9 K37 ["Enums"]
      267 GETTABLEKS                       R9 R9 K41 ["InputSize"]
      269 GETTABLEKS                       R9 R9 K53 ["Small"]
      271 SETTABLEKS                       R9 R8 K31 ["size"]
      273 GETTABLEKS                       R9 R0 K36 ["isLoading"]
      275 SETTABLEKS                       R9 R8 K36 ["isLoading"]
      277 GETTABLEKS                       R9 R0 K48 ["isAcceptDisabled"]
      279 SETTABLEKS                       R9 R8 K28 ["isDisabled"]
      281 MOVE                             R9 R1
      282 CALL                             R9 0 1
      283 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
      285 CALL                             R6 2 1
      286 SETTABLEKS                       R6 R5 K17 ["AcceptButton"]
      288 CALL                             R2 3 -1
      289 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [utf8.len]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 MOVE                             R0 R2
        6 GETUPVAL                         R1 1
        7 JUMPIFNOTLT                      R1 R0 ; [+16]
        9 GETUPVAL                         R1 2
       10 LOADK                            R2 K3 ["%* (%*/%*)"]
       11 GETUPVAL                         R4 3
       12 LOADK                            R6 K4 ["Title"]
       13 LOADK                            R7 K5 ["ErrorCharLimit"]
       14 NAMECALL                         R4 R4 K6 ["getText"]
       16 CALL                             R4 3 1
       17 MOVE                             R5 R0
       18 GETUPVAL                         R6 1
       19 NAMECALL                         R2 R2 K7 ["format"]
       21 CALL                             R2 4 1
       22 CALL                             R1 1 0
       23 JUMP                             ; [+3]
       24 GETUPVAL                         R1 2
       25 LOADNIL                          R2
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 4
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [utf8.len]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 MOVE                             R0 R2
        6 GETUPVAL                         R2 0
        7 GETIMPORT                        R3 K5 [string.gsub]
        9 MOVE                             R4 R2
       10 LOADK                            R5 K6 ["[\r\n]"]
       11 LOADK                            R6 K7 [""]
       12 CALL                             R3 3 2
       13 ADDK                             R1 R4 K8 [1]
       14 GETUPVAL                         R2 1
       15 JUMPIFNOTLT                      R2 R0 ; [+16]
       17 GETUPVAL                         R2 2
       18 LOADK                            R3 K9 ["%* (%*/%*)"]
       19 GETUPVAL                         R5 3
       20 LOADK                            R7 K10 ["Title"]
       21 LOADK                            R8 K11 ["ErrorCharLimit"]
       22 NAMECALL                         R5 R5 K12 ["getText"]
       24 CALL                             R5 3 1
       25 MOVE                             R6 R0
       26 GETUPVAL                         R7 1
       27 NAMECALL                         R3 R3 K13 ["format"]
       29 CALL                             R3 4 1
       30 CALL                             R2 1 0
       31 JUMP                             ; [+21]
       32 GETUPVAL                         R2 4
       33 JUMPIFNOTLT                      R2 R1 ; [+16]
       35 GETUPVAL                         R2 2
       36 LOADK                            R3 K9 ["%* (%*/%*)"]
       37 GETUPVAL                         R5 3
       38 LOADK                            R7 K10 ["Title"]
       39 LOADK                            R8 K14 ["ErrorLineLimit"]
       40 NAMECALL                         R5 R5 K12 ["getText"]
       42 CALL                             R5 3 1
       43 MOVE                             R6 R1
       44 GETUPVAL                         R7 4
       45 NAMECALL                         R3 R3 K13 ["format"]
       47 CALL                             R3 4 1
       48 CALL                             R2 1 0
       49 JUMP                             ; [+3]
       50 GETUPVAL                         R2 2
       51 LOADNIL                          R3
       52 CALL                             R2 1 0
       53 GETUPVAL                         R2 5
       54 MOVE                             R3 R0
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        2 RETURN                           R0 0
        3 JUMPIF                           R1 ; [+3]
        4 GETUPVAL                         R2 0
        5 LOADB                            R3 1
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R4 2
        9 DUPTABLE                         R5 K3 [{"approved", "textLength"}]
       10 SETTABLEKS                       R1 R5 K1 ["approved"]
       12 SETTABLEKS                       R0 R5 K2 ["textLength"]
       14 NAMECALL                         R2 R2 K4 ["logRobloxTelemetryEvent"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 DUPTABLE                         R7 K4 [{"isRegenerated", "generationSuccess", "titleLength", "descriptionLength"}]
        3 SETTABLEKS                       R0 R7 K0 ["isRegenerated"]
        5 SETTABLEKS                       R1 R7 K1 ["generationSuccess"]
        7 SETTABLEKS                       R2 R7 K2 ["titleLength"]
        9 SETTABLEKS                       R3 R7 K3 ["descriptionLength"]
       11 NAMECALL                         R4 R4 K5 ["logRobloxTelemetryEvent"]
       13 CALL                             R4 3 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["EngineFeaturePVHGenerateNotes"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["current"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+3]
        9 LOADK                            R1 K2 ["Unused"]
       10 JUMP                             ; [+15]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["current"]
       15 JUMPIFNOTEQ                      R2 R3 ; [+3]
       17 LOADK                            R1 K3 ["Accepted"]
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K1 ["current"]
       22 JUMPIFNOT                        R2 ; [+2]
       23 LOADK                            R1 K4 ["Rejected"]
       24 JUMP                             ; [+1]
       25 LOADK                            R1 K5 ["Edited"]
       26 GETUPVAL                         R2 4
       27 GETUPVAL                         R4 5
       28 DUPTABLE                         R5 K12 [{"type", "accepted", "titleLength", "descriptionLength", "hadFailedModeration", "summaryStatus"}]
       29 GETUPVAL                         R6 6
       30 GETTABLEKS                       R6 R6 K13 ["variant"]
       32 SETTABLEKS                       R6 R5 K6 ["type"]
       34 SETTABLEKS                       R0 R5 K7 ["accepted"]
       36 GETUPVAL                         R6 7
       37 SETTABLEKS                       R6 R5 K8 ["titleLength"]
       39 GETUPVAL                         R6 8
       40 SETTABLEKS                       R6 R5 K9 ["descriptionLength"]
       42 GETUPVAL                         R6 9
       43 SETTABLEKS                       R6 R5 K10 ["hadFailedModeration"]
       45 SETTABLEKS                       R1 R5 K11 ["summaryStatus"]
       47 NAMECALL                         R2 R2 K14 ["logRobloxTelemetryEvent"]
       49 CALL                             R2 3 0
       50 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETTABLEN                        R2 R0 1
        1 JUMPIFEQKB                       R2 TRUE ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 GETTABLEN                        R3 R0 2
        6 JUMPIFEQKB                       R3 TRUE ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 AND                              R3 R1 R2
       11 GETUPVAL                         R4 0
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R1
       14 CALL                             R4 2 0
       15 GETUPVAL                         R4 0
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R2
       18 CALL                             R4 2 0
       19 JUMPIF                           R1 ; [+8]
       20 GETUPVAL                         R4 3
       21 GETUPVAL                         R5 4
       22 LOADK                            R7 K0 ["Title"]
       23 LOADK                            R8 K1 ["ErrorTextModeration"]
       24 NAMECALL                         R5 R5 K2 ["getText"]
       26 CALL                             R5 3 -1
       27 CALL                             R4 -1 0
       28 JUMPIF                           R2 ; [+8]
       29 GETUPVAL                         R4 5
       30 GETUPVAL                         R5 4
       31 LOADK                            R7 K0 ["Title"]
       32 LOADK                            R8 K1 ["ErrorTextModeration"]
       33 NAMECALL                         R5 R5 K2 ["getText"]
       35 CALL                             R5 3 -1
       36 CALL                             R4 -1 0
       37 JUMPIF                           R3 ; [+5]
       38 GETUPVAL                         R4 6
       39 GETTABLEKS                       R4 R4 K3 ["reject"]
       41 CALL                             R4 0 -1
       42 RETURN                           R4 -1
       43 DUPTABLE                         R4 K6 [{"title", "description"}]
       44 GETUPVAL                         R6 1
       45 JUMPIFNOTEQKN                    R6 K7 [0] ; [+3]
       47 LOADNIL                          R5
       48 JUMP                             ; [+1]
       49 GETUPVAL                         R5 7
       50 SETTABLEKS                       R5 R4 K4 ["title"]
       52 GETUPVAL                         R6 2
       53 JUMPIFNOTEQKN                    R6 K7 [0] ; [+3]
       55 LOADNIL                          R5
       56 JUMP                             ; [+1]
       57 GETUPVAL                         R5 8
       58 SETTABLEKS                       R5 R4 K5 ["description"]
       60 GETUPVAL                         R5 9
       61 GETTABLEKS                       R5 R5 K8 ["placeId"]
       63 JUMPIFNOT                        R5 ; [+4]
       64 GETUPVAL                         R5 9
       65 GETTABLEKS                       R5 R5 K9 ["version"]
       67 JUMPIF                           R5 ; [+6]
       68 GETUPVAL                         R5 6
       69 GETTABLEKS                       R5 R5 K10 ["resolve"]
       71 MOVE                             R6 R4
       72 CALL                             R5 1 -1
       73 RETURN                           R5 -1
       74 DUPTABLE                         R5 K12 [{"notes", "placeId", "version"}]
       75 SETTABLEKS                       R4 R5 K11 ["notes"]
       77 GETUPVAL                         R6 9
       78 GETTABLEKS                       R6 R6 K8 ["placeId"]
       80 SETTABLEKS                       R6 R5 K8 ["placeId"]
       82 GETUPVAL                         R6 9
       83 GETTABLEKS                       R6 R6 K9 ["version"]
       85 SETTABLEKS                       R6 R5 K9 ["version"]
       87 GETUPVAL                         R6 10
       88 GETTABLEKS                       R6 R6 K13 ["saveVersionNotes"]
       90 MOVE                             R7 R5
       91 CALL                             R6 1 1
       92 NEWCLOSURE                       R8 P0
       93 CAPTURE                          UPVAL U6
       94 CAPTURE                          VAL R4
       95 NAMECALL                         R6 R6 K14 ["andThen"]
       97 CALL                             R6 2 -1
       98 RETURN                           R6 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onAccept"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["all"]
        6 NEWTABLE                         R1 0 2
        8 GETUPVAL                         R3 2
        9 JUMPIFNOTEQKN                    R3 K1 [0] ; [+7]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["resolve"]
       14 LOADB                            R3 1
       15 CALL                             R2 1 1
       16 JUMP                             ; [+5]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K3 ["getNotesValidation"]
       20 GETUPVAL                         R3 4
       21 CALL                             R2 1 1
       22 GETUPVAL                         R4 5
       23 JUMPIFNOTEQKN                    R4 K1 [0] ; [+7]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K2 ["resolve"]
       28 LOADB                            R4 1
       29 CALL                             R3 1 1
       30 JUMP                             ; [+5]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K3 ["getNotesValidation"]
       34 GETUPVAL                         R4 6
       35 CALL                             R3 1 1
       36 SETLIST                          R1 R2 2 [1]
       38 CALL                             R0 1 1
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          UPVAL U9
       45 CAPTURE                          UPVAL U10
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          UPVAL U3
       51 NAMECALL                         R0 R0 K4 ["andThen"]
       53 CALL                             R0 2 1
       54 NEWCLOSURE                       R2 P1
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          UPVAL U12
       57 CAPTURE                          UPVAL U0
       58 NAMECALL                         R0 R0 K4 ["andThen"]
       60 CALL                             R0 2 1
       61 NEWCLOSURE                       R2 P2
       62 CAPTURE                          UPVAL U0
       63 NAMECALL                         R0 R0 K5 ["catch"]
       65 CALL                             R0 2 0
       66 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeaturePVHGenerateNotes"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["current"]
       11 NAMECALL                         R0 R0 K2 ["cancel"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K1 ["current"]
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K3 ["onReject"]
       21 CALL                             R0 0 0
       22 GETUPVAL                         R0 3
       23 LOADB                            R1 0
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R1 K2 [task.wait]
        4 CALL                             R1 0 0
        5 GETTABLEKS                       R1 R0 K3 ["focus"]
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K1 ["KeyCode"]
        8 GETIMPORT                        R2 K4 [Enum.KeyCode.Return]
       10 JUMPIFEQ                         R1 R2 ; [+2]
       12 RETURN                           R0 0
       13 GETIMPORT                        R3 K7 [Enum.ModifierKey.Ctrl]
       15 NAMECALL                         R1 R0 K8 ["IsModifierKeyDown"]
       17 CALL                             R1 2 1
       18 JUMPIF                           R1 ; [+10]
       19 GETIMPORT                        R1 K11 [task.wait]
       21 CALL                             R1 0 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K0 ["current"]
       25 GETTABLEKS                       R1 R1 K12 ["focus"]
       27 CALL                             R1 0 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R1 1
       30 JUMPIFNOT                        R1 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R1 2
       33 CALL                             R1 0 0
       34 RETURN                           R0 0

PROTO_20:
        0 LOADK                            R3 K0 ["[\n\r]"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K3 ["EngineFeaturePVHGenerateNotes"]
        8 JUMPIFNOT                        R2 ; [+11]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["current"]
       12 JUMPIFEQKNIL                     R2 ; [+7]
       14 JUMPIFNOTEQKS                    R1 K1 [""] ; [+5]
       16 GETUPVAL                         R2 2
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K4 ["current"]
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EngineFeaturePVHGenerateNotes"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["current"]
        7 JUMPIFEQKNIL                     R1 ; [+7]
        9 JUMPIFNOTEQKS                    R0 K2 [""] ; [+5]
       11 GETUPVAL                         R1 2
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K1 ["current"]
       15 GETUPVAL                         R1 3
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_22:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+21]
        2 GETTABLEKS                       R1 R0 K0 ["title"]
        4 JUMPIFNOT                        R1 ; [+18]
        5 GETTABLEKS                       R2 R0 K0 ["title"]
        7 LOADK                            R5 K1 ["[\n\r]"]
        8 LOADK                            R6 K2 [""]
        9 NAMECALL                         R3 R2 K3 ["gsub"]
       11 CALL                             R3 3 1
       12 MOVE                             R1 R3
       13 GETUPVAL                         R2 1
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 2
       17 SETTABLEKS                       R1 R2 K4 ["current"]
       19 GETUPVAL                         R2 3
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K4 ["current"]
       23 GETUPVAL                         R1 4
       24 JUMPIFNOT                        R1 ; [+16]
       25 GETTABLEKS                       R1 R0 K5 ["description"]
       27 JUMPIFNOT                        R1 ; [+13]
       28 GETUPVAL                         R1 5
       29 GETTABLEKS                       R2 R0 K5 ["description"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 6
       33 GETTABLEKS                       R2 R0 K5 ["description"]
       35 SETTABLEKS                       R2 R1 K4 ["current"]
       37 GETUPVAL                         R1 7
       38 LOADB                            R2 0
       39 SETTABLEKS                       R2 R1 K4 ["current"]
       41 GETUPVAL                         R1 8
       42 LOADNIL                          R2
       43 SETTABLEKS                       R2 R1 K4 ["current"]
       45 GETUPVAL                         R1 9
       46 LOADB                            R2 0
       47 CALL                             R1 1 0
       48 GETUPVAL                         R1 10
       49 GETTABLEKS                       R2 R1 K4 ["current"]
       51 ADDK                             R2 R2 K6 [1]
       52 SETTABLEKS                       R2 R1 K4 ["current"]
       54 GETUPVAL                         R1 11
       55 GETUPVAL                         R2 12
       56 LOADB                            R3 1
       57 GETTABLEKS                       R6 R0 K0 ["title"]
       59 ORK                              R5 R6 K2 [""]
       60 GETIMPORT                        R6 K9 [utf8.len]
       62 MOVE                             R7 R5
       63 CALL                             R6 1 1
       64 MOVE                             R4 R6
       65 GETTABLEKS                       R7 R0 K5 ["description"]
       67 ORK                              R6 R7 K2 [""]
       68 GETIMPORT                        R7 K9 [utf8.len]
       70 MOVE                             R8 R6
       71 CALL                             R7 1 1
       72 MOVE                             R5 R7
       73 CALL                             R1 4 0
       74 GETUPVAL                         R1 13
       75 DUPCLOSURE                       R2 K10 [PROTO_22]
       76 CALL                             R1 1 0
       77 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["FFlagPVHGenerateNotesQuotaMessage"]
       10 JUMPIFNOT                        R1 ; [+4]
       11 GETUPVAL                         R1 3
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 JUMP                             ; [+14]
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R3 4
       17 GETTABLEKS                       R3 R3 K2 ["NoSaveNotes"]
       19 JUMPIFNOTEQ                      R0 R3 ; [+5]
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K2 ["NoSaveNotes"]
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K3 ["Unavailable"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 5
       30 GETUPVAL                         R2 6
       31 LOADB                            R3 0
       32 LOADN                            R4 0
       33 LOADN                            R5 0
       34 CALL                             R1 4 0
       35 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 NAMECALL                         R0 R0 K1 ["cancel"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 1
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K0 ["current"]
       16 GETUPVAL                         R0 2
       17 LOADB                            R1 0
       18 CALL                             R0 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 3
       21 JUMPIFEQKN                       R1 K2 [0] ; [+2]
       23 LOADB                            R0 0 +1
       24 LOADB                            R0 1
       25 GETUPVAL                         R2 4
       26 JUMPIFEQKN                       R2 K2 [0] ; [+2]
       28 LOADB                            R1 0 +1
       29 LOADB                            R1 1
       30 GETUPVAL                         R3 5
       31 GETTABLEKS                       R3 R3 K0 ["current"]
       33 LOADN                            R4 0
       34 JUMPIFLT                         R4 R3 ; [+2]
       36 LOADB                            R2 0 +1
       37 LOADB                            R2 1
       38 GETUPVAL                         R3 6
       39 LOADNIL                          R4
       40 CALL                             R3 1 0
       41 GETUPVAL                         R3 2
       42 LOADB                            R4 1
       43 CALL                             R3 1 0
       44 LOADB                            R3 0
       45 GETUPVAL                         R4 7
       46 GETTABLEKS                       R4 R4 K3 ["isPublished"]
       48 JUMPIFNOTEQKB                    R4 TRUE ; [+8]
       50 GETUPVAL                         R4 7
       51 GETTABLEKS                       R4 R4 K4 ["date"]
       53 JUMPIFNOTEQKNIL                  R4 ; [+2]
       55 LOADB                            R3 0 +1
       56 LOADB                            R3 1
       57 JUMPIFNOT                        R3 ; [+17]
       58 GETUPVAL                         R4 8
       59 GETTABLEKS                       R4 R4 K5 ["getGeneratedNotes"]
       61 GETUPVAL                         R6 7
       62 GETTABLEKS                       R6 R6 K6 ["placeId"]
       64 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       66 LOADK                            R7 K7 ["retroactive generation requires a placeId"]
       67 GETIMPORT                        R5 K9 [assert]
       69 CALL                             R5 2 1
       70 GETUPVAL                         R6 7
       71 GETTABLEKS                       R6 R6 K4 ["date"]
       73 CALL                             R4 2 1
       74 JUMP                             ; [+11]
       75 GETUPVAL                         R4 8
       76 GETTABLEKS                       R4 R4 K5 ["getGeneratedNotes"]
       78 GETUPVAL                         R5 7
       79 GETTABLEKS                       R5 R5 K6 ["placeId"]
       81 JUMPIF                           R5 ; [+3]
       82 GETUPVAL                         R5 9
       83 GETTABLEKS                       R5 R5 K10 ["sessionPlaceId"]
       85 CALL                             R4 1 1
       86 GETUPVAL                         R5 1
       87 SETTABLEKS                       R4 R5 K0 ["current"]
       89 NEWCLOSURE                       R7 P0
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U10
       92 CAPTURE                          UPVAL U11
       93 CAPTURE                          UPVAL U12
       94 CAPTURE                          VAL R1
       95 CAPTURE                          UPVAL U13
       96 CAPTURE                          UPVAL U14
       97 CAPTURE                          UPVAL U15
       98 CAPTURE                          UPVAL U1
       99 CAPTURE                          UPVAL U2
      100 CAPTURE                          UPVAL U5
      101 CAPTURE                          UPVAL U16
      102 CAPTURE                          VAL R2
      103 CAPTURE                          UPVAL U17
      104 NAMECALL                         R5 R4 K11 ["andThen"]
      106 CALL                             R5 2 1
      107 NEWCLOSURE                       R7 P1
      108 CAPTURE                          UPVAL U1
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          UPVAL U18
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          UPVAL U19
      113 CAPTURE                          UPVAL U16
      114 CAPTURE                          VAL R2
      115 NAMECALL                         R5 R5 K12 ["catch"]
      117 CALL                             R5 2 0
      118 RETURN                           R0 0

PROTO_26:
        0 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeaturePVHGenerateNotes"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["variant"]
        7 JUMPIFNOTEQKS                    R0 K2 ["Publish"] ; [+3]
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 3
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 4
       13 NAMECALL                         R4 R4 K1 ["use"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K2 ["useState"]
       19 GETIMPORT                        R6 K5 [Vector2.new]
       21 LOADN                            R7 550
       22 LOADN                            R8 345
       23 CALL                             R6 2 -1
       24 CALL                             R5 -1 2
       25 GETTABLEKS                       R8 R0 K6 ["notes"]
       27 JUMPIFNOT                        R8 ; [+10]
       28 GETTABLEKS                       R8 R0 K6 ["notes"]
       30 GETTABLEKS                       R8 R8 K7 ["title"]
       32 JUMPIFNOT                        R8 ; [+5]
       33 GETTABLEKS                       R7 R0 K6 ["notes"]
       35 GETTABLEKS                       R7 R7 K7 ["title"]
       37 JUMP                             ; [+1]
       38 LOADK                            R7 K8 [""]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K2 ["useState"]
       42 MOVE                             R9 R7
       43 CALL                             R8 1 2
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R10 R10 K2 ["useState"]
       47 LOADNIL                          R11
       48 CALL                             R10 1 2
       49 GETUPVAL                         R12 1
       50 GETTABLEKS                       R12 R12 K2 ["useState"]
       52 LOADN                            R13 0
       53 CALL                             R12 1 2
       54 GETTABLEKS                       R15 R0 K6 ["notes"]
       56 JUMPIFNOT                        R15 ; [+10]
       57 GETTABLEKS                       R15 R0 K6 ["notes"]
       59 GETTABLEKS                       R15 R15 K9 ["description"]
       61 JUMPIFNOT                        R15 ; [+5]
       62 GETTABLEKS                       R14 R0 K6 ["notes"]
       64 GETTABLEKS                       R14 R14 K9 ["description"]
       66 JUMP                             ; [+1]
       67 LOADK                            R14 K8 [""]
       68 GETUPVAL                         R15 1
       69 GETTABLEKS                       R15 R15 K2 ["useState"]
       71 MOVE                             R16 R14
       72 CALL                             R15 1 2
       73 GETUPVAL                         R17 1
       74 GETTABLEKS                       R17 R17 K2 ["useState"]
       76 LOADNIL                          R18
       77 CALL                             R17 1 2
       78 GETUPVAL                         R19 1
       79 GETTABLEKS                       R19 R19 K2 ["useState"]
       81 LOADN                            R20 0
       82 CALL                             R19 1 2
       83 GETUPVAL                         R21 1
       84 GETTABLEKS                       R21 R21 K10 ["useRef"]
       86 LOADNIL                          R22
       87 CALL                             R21 1 1
       88 GETUPVAL                         R22 1
       89 GETTABLEKS                       R22 R22 K2 ["useState"]
       91 LOADB                            R23 0
       92 CALL                             R22 1 2
       93 GETUPVAL                         R24 1
       94 GETTABLEKS                       R24 R24 K2 ["useState"]
       96 LOADB                            R25 0
       97 CALL                             R24 1 2
       98 GETUPVAL                         R26 1
       99 GETTABLEKS                       R26 R26 K2 ["useState"]
      101 LOADNIL                          R27
      102 CALL                             R26 1 2
      103 GETUPVAL                         R28 1
      104 GETTABLEKS                       R28 R28 K2 ["useState"]
      106 LOADN                            R29 0
      107 CALL                             R28 1 2
      108 GETUPVAL                         R30 1
      109 GETTABLEKS                       R30 R30 K10 ["useRef"]
      111 LOADNIL                          R31
      112 CALL                             R30 1 1
      113 GETUPVAL                         R31 1
      114 GETTABLEKS                       R31 R31 K10 ["useRef"]
      116 LOADNIL                          R32
      117 CALL                             R31 1 1
      118 GETUPVAL                         R32 1
      119 GETTABLEKS                       R32 R32 K10 ["useRef"]
      121 LOADB                            R33 0
      122 CALL                             R32 1 1
      123 GETUPVAL                         R33 1
      124 GETTABLEKS                       R33 R33 K10 ["useRef"]
      126 LOADNIL                          R34
      127 CALL                             R33 1 1
      128 GETUPVAL                         R34 1
      129 GETTABLEKS                       R34 R34 K10 ["useRef"]
      131 LOADB                            R35 0
      132 CALL                             R34 1 1
      133 GETUPVAL                         R35 1
      134 GETTABLEKS                       R35 R35 K10 ["useRef"]
      136 LOADN                            R36 0
      137 CALL                             R35 1 1
      138 GETUPVAL                         R36 1
      139 GETTABLEKS                       R36 R36 K2 ["useState"]
      141 LOADB                            R37 0
      142 CALL                             R36 1 2
      143 GETUPVAL                         R39 5
      144 GETTABLEKS                       R39 R39 K11 ["EngineFeaturePVHGenerateNotes"]
      146 JUMPIFNOT                        R39 ; [+2]
      147 OR                               R38 R22 R24
      148 JUMP                             ; [+1]
      149 MOVE                             R38 R22
      150 GETTABLEKS                       R40 R0 K12 ["placeId"]
      152 JUMPIFEQKNIL                     R40 ; [+6]
      154 LOADB                            R39 1
      155 GETTABLEKS                       R40 R0 K12 ["placeId"]
      157 JUMPIFNOTEQKN                    R40 K13 [0] ; [+7]
      159 GETTABLEKS                       R40 R0 K14 ["variant"]
      161 JUMPIFEQKS                       R40 K15 ["Publish"] ; [+2]
      163 LOADB                            R39 0 +1
      164 LOADB                            R39 1
      165 GETUPVAL                         R40 5
      166 GETTABLEKS                       R40 R40 K11 ["EngineFeaturePVHGenerateNotes"]
      168 JUMPIFNOT                        R40 ; [+10]
      169 GETTABLEKS                       R41 R0 K16 ["isPublished"]
      171 JUMPIFEQKB                       R41 TRUE ; [+6]
      173 LOADB                            R40 0
      174 GETTABLEKS                       R41 R0 K14 ["variant"]
      176 JUMPIFNOTEQKS                    R41 K15 ["Publish"] ; [+2]
      178 MOVE                             R40 R39
      179 GETUPVAL                         R42 5
      180 GETTABLEKS                       R42 R42 K11 ["EngineFeaturePVHGenerateNotes"]
      182 JUMPIFNOT                        R42 ; [+2]
      183 MOVE                             R41 R38
      184 JUMPIF                           R41 ; [+12]
      185 MOVE                             R41 R22
      186 JUMPIF                           R41 ; [+10]
      187 LOADB                            R41 1
      188 JUMPIFEQKN                       R12 K13 [0] ; [+8]
      190 LOADB                            R41 1
      191 JUMPIFNOTEQKNIL                  R10 ; [+5]
      193 JUMPIFNOTEQKNIL                  R17 ; [+2]
      195 LOADB                            R41 0 +1
      196 LOADB                            R41 1
      197 JUMPIFEQKN                       R12 K13 [0] ; [+2]
      199 LOADB                            R42 0 +1
      200 LOADB                            R42 1
      201 JUMPIFEQKN                       R19 K13 [0] ; [+2]
      203 LOADB                            R43 0 +1
      204 LOADB                            R43 1
      205 MOVE                             R44 R40
      206 JUMPIFNOT                        R44 ; [+5]
      207 MOVE                             R44 R24
      208 JUMPIF                           R44 ; [+3]
      209 MOVE                             R44 R42
      210 JUMPIF                           R44 ; [+1]
      211 MOVE                             R44 R43
      212 GETUPVAL                         R46 5
      213 GETTABLEKS                       R46 R46 K11 ["EngineFeaturePVHGenerateNotes"]
      215 JUMPIF                           R46 ; [+2]
      216 LOADK                            R45 K8 [""]
      217 JUMP                             ; [+27]
      218 JUMPIFNOT                        R24 ; [+6]
      219 LOADK                            R47 K17 ["Description"]
      220 LOADK                            R48 K18 ["StopGenerating"]
      221 NAMECALL                         R45 R4 K19 ["getText"]
      223 CALL                             R45 3 1
      224 JUMP                             ; [+20]
      225 JUMPIFNOT                        R42 ; [+7]
      226 JUMPIFNOT                        R43 ; [+6]
      227 LOADK                            R47 K20 ["Action"]
      228 LOADK                            R48 K21 ["GenerateTitleAndDetails"]
      229 NAMECALL                         R45 R4 K19 ["getText"]
      231 CALL                             R45 3 1
      232 JUMP                             ; [+12]
      233 JUMPIFNOT                        R42 ; [+6]
      234 LOADK                            R47 K20 ["Action"]
      235 LOADK                            R48 K22 ["GenerateTitle"]
      236 NAMECALL                         R45 R4 K19 ["getText"]
      238 CALL                             R45 3 1
      239 JUMP                             ; [+5]
      240 LOADK                            R47 K20 ["Action"]
      241 LOADK                            R48 K23 ["GenerateDetails"]
      242 NAMECALL                         R45 R4 K19 ["getText"]
      244 CALL                             R45 3 1
      245 GETUPVAL                         R47 5
      246 GETTABLEKS                       R47 R47 K11 ["EngineFeaturePVHGenerateNotes"]
      248 JUMPIF                           R47 ; [+2]
      249 LOADK                            R46 K8 [""]
      250 JUMP                             ; [+12]
      251 JUMPIFNOT                        R24 ; [+6]
      252 LOADK                            R48 K20 ["Action"]
      253 LOADK                            R49 K18 ["StopGenerating"]
      254 NAMECALL                         R46 R4 K19 ["getText"]
      256 CALL                             R46 3 1
      257 JUMP                             ; [+5]
      258 LOADK                            R48 K20 ["Action"]
      259 LOADK                            R49 K24 ["Generate"]
      260 NAMECALL                         R46 R4 K19 ["getText"]
      262 CALL                             R46 3 1
      263 GETUPVAL                         R47 5
      264 GETTABLEKS                       R47 R47 K11 ["EngineFeaturePVHGenerateNotes"]
      266 JUMPIFNOT                        R47 ; [+16]
      267 GETTABLEKS                       R48 R33 K25 ["current"]
      269 JUMPIFEQKNIL                     R48 ; [+5]
      271 GETTABLEKS                       R48 R34 K25 ["current"]
      273 NOT                              R47 R48
      274 JUMPIF                           R47 ; [+8]
      275 LOADB                            R47 0
      276 GETTABLEKS                       R48 R31 K25 ["current"]
      278 JUMPIFEQKNIL                     R48 ; [+4]
      280 GETTABLEKS                       R48 R32 K25 ["current"]
      282 NOT                              R47 R48
      283 GETUPVAL                         R48 1
      284 GETTABLEKS                       R48 R48 K26 ["useEffect"]
      286 NEWCLOSURE                       R49 P0
      287 CAPTURE                          VAL R8
      288 CAPTURE                          UPVAL U6
      289 CAPTURE                          VAL R11
      290 CAPTURE                          VAL R4
      291 CAPTURE                          VAL R13
      292 NEWTABLE                         R50 0 1
      294 MOVE                             R51 R8
      295 SETLIST                          R50 R51 1 [1]
      297 CALL                             R48 2 0
      298 GETUPVAL                         R48 1
      299 GETTABLEKS                       R48 R48 K26 ["useEffect"]
      301 NEWCLOSURE                       R49 P1
      302 CAPTURE                          VAL R15
      303 CAPTURE                          UPVAL U7
      304 CAPTURE                          VAL R18
      305 CAPTURE                          VAL R4
      306 CAPTURE                          UPVAL U8
      307 CAPTURE                          VAL R20
      308 NEWTABLE                         R50 0 1
      310 MOVE                             R51 R15
      311 SETLIST                          R50 R51 1 [1]
      313 CALL                             R48 2 0
      314 GETUPVAL                         R48 1
      315 GETTABLEKS                       R48 R48 K27 ["useCallback"]
      317 NEWCLOSURE                       R49 P2
      318 CAPTURE                          VAL R37
      319 CAPTURE                          UPVAL U9
      320 CAPTURE                          UPVAL U10
      321 NEWTABLE                         R50 0 0
      323 CALL                             R48 2 1
      324 GETUPVAL                         R49 1
      325 GETTABLEKS                       R49 R49 K27 ["useCallback"]
      327 DUPCLOSURE                       R50 K28 [PROTO_9]
      328 CAPTURE                          UPVAL U9
      329 CAPTURE                          UPVAL U11
      330 NEWTABLE                         R51 0 0
      332 CALL                             R49 2 1
      333 GETUPVAL                         R50 1
      334 GETTABLEKS                       R50 R50 K27 ["useCallback"]
      336 NEWCLOSURE                       R51 P4
      337 CAPTURE                          UPVAL U5
      338 CAPTURE                          VAL R31
      339 CAPTURE                          VAL R15
      340 CAPTURE                          VAL R32
      341 CAPTURE                          UPVAL U9
      342 CAPTURE                          UPVAL U12
      343 CAPTURE                          VAL R0
      344 CAPTURE                          VAL R12
      345 CAPTURE                          VAL R19
      346 CAPTURE                          VAL R36
      347 NEWTABLE                         R52 0 5
      349 GETTABLEKS                       R53 R0 K14 ["variant"]
      351 MOVE                             R54 R12
      352 MOVE                             R55 R19
      353 MOVE                             R56 R36
      354 MOVE                             R57 R15
      355 SETLIST                          R52 R53 5 [1]
      357 CALL                             R50 2 1
      358 GETUPVAL                         R51 1
      359 GETTABLEKS                       R51 R51 K27 ["useCallback"]
      361 NEWCLOSURE                       R52 P5
      362 CAPTURE                          VAL R23
      363 CAPTURE                          UPVAL U13
      364 CAPTURE                          VAL R12
      365 CAPTURE                          VAL R2
      366 CAPTURE                          VAL R8
      367 CAPTURE                          VAL R19
      368 CAPTURE                          VAL R15
      369 CAPTURE                          VAL R48
      370 CAPTURE                          VAL R11
      371 CAPTURE                          VAL R4
      372 CAPTURE                          VAL R18
      373 CAPTURE                          VAL R0
      374 CAPTURE                          VAL R50
      375 NEWTABLE                         R53 0 7
      377 GETTABLEKS                       R54 R0 K29 ["onAccept"]
      379 MOVE                             R55 R8
      380 MOVE                             R56 R15
      381 MOVE                             R57 R12
      382 MOVE                             R58 R19
      383 MOVE                             R59 R50
      384 MOVE                             R60 R48
      385 SETLIST                          R53 R54 7 [1]
      387 CALL                             R51 2 1
      388 GETUPVAL                         R52 1
      389 GETTABLEKS                       R52 R52 K27 ["useCallback"]
      391 NEWCLOSURE                       R53 P6
      392 CAPTURE                          UPVAL U5
      393 CAPTURE                          VAL R30
      394 CAPTURE                          VAL R0
      395 CAPTURE                          VAL R50
      396 NEWTABLE                         R54 0 1
      398 MOVE                             R55 R50
      399 SETLIST                          R54 R55 1 [1]
      401 CALL                             R52 2 1
      402 GETUPVAL                         R53 1
      403 GETTABLEKS                       R53 R53 K27 ["useCallback"]
      405 NEWCLOSURE                       R54 P7
      406 CAPTURE                          VAL R6
      407 NEWTABLE                         R55 0 0
      409 CALL                             R53 2 1
      410 GETUPVAL                         R54 1
      411 GETTABLEKS                       R54 R54 K27 ["useCallback"]
      413 DUPCLOSURE                       R55 K30 [PROTO_18]
      414 NEWTABLE                         R56 0 0
      416 CALL                             R54 2 1
      417 GETUPVAL                         R55 1
      418 GETTABLEKS                       R55 R55 K27 ["useCallback"]
      420 NEWCLOSURE                       R56 P9
      421 CAPTURE                          VAL R21
      422 CAPTURE                          VAL R41
      423 CAPTURE                          VAL R51
      424 NEWTABLE                         R57 0 2
      426 MOVE                             R58 R51
      427 MOVE                             R59 R41
      428 SETLIST                          R57 R58 2 [1]
      430 CALL                             R55 2 1
      431 GETUPVAL                         R56 1
      432 GETTABLEKS                       R56 R56 K27 ["useCallback"]
      434 NEWCLOSURE                       R57 P10
      435 CAPTURE                          UPVAL U5
      436 CAPTURE                          VAL R33
      437 CAPTURE                          VAL R34
      438 CAPTURE                          VAL R9
      439 NEWTABLE                         R58 0 0
      441 CALL                             R56 2 1
      442 GETUPVAL                         R57 1
      443 GETTABLEKS                       R57 R57 K27 ["useCallback"]
      445 NEWCLOSURE                       R58 P11
      446 CAPTURE                          UPVAL U5
      447 CAPTURE                          VAL R31
      448 CAPTURE                          VAL R32
      449 CAPTURE                          VAL R16
      450 NEWTABLE                         R59 0 0
      452 CALL                             R57 2 1
      453 GETUPVAL                         R59 5
      454 GETTABLEKS                       R59 R59 K11 ["EngineFeaturePVHGenerateNotes"]
      456 JUMPIFNOT                        R59 ; [+43]
      457 GETUPVAL                         R58 1
      458 GETTABLEKS                       R58 R58 K27 ["useCallback"]
      460 NEWCLOSURE                       R59 P12
      461 CAPTURE                          VAL R24
      462 CAPTURE                          VAL R30
      463 CAPTURE                          VAL R25
      464 CAPTURE                          VAL R12
      465 CAPTURE                          VAL R19
      466 CAPTURE                          VAL R35
      467 CAPTURE                          VAL R27
      468 CAPTURE                          VAL R0
      469 CAPTURE                          VAL R2
      470 CAPTURE                          VAL R3
      471 CAPTURE                          VAL R9
      472 CAPTURE                          VAL R33
      473 CAPTURE                          VAL R34
      474 CAPTURE                          VAL R16
      475 CAPTURE                          VAL R31
      476 CAPTURE                          VAL R32
      477 CAPTURE                          VAL R49
      478 CAPTURE                          VAL R29
      479 CAPTURE                          UPVAL U5
      480 CAPTURE                          UPVAL U14
      481 NEWTABLE                         R60 0 9
      483 MOVE                             R61 R24
      484 MOVE                             R62 R12
      485 MOVE                             R63 R19
      486 MOVE                             R64 R2
      487 GETTABLEKS                       R65 R0 K16 ["isPublished"]
      489 GETTABLEKS                       R66 R0 K12 ["placeId"]
      491 GETTABLEKS                       R67 R0 K31 ["date"]
      493 GETTABLEKS                       R68 R3 K32 ["sessionPlaceId"]
      495 MOVE                             R69 R49
      496 SETLIST                          R60 R61 9 [1]
      498 CALL                             R58 2 1
      499 JUMP                             ; [+1]
      500 DUPCLOSURE                       R58 K33 [PROTO_26]
      501 GETUPVAL                         R59 1
      502 GETTABLEKS                       R59 R59 K26 ["useEffect"]
      504 NEWCLOSURE                       R60 P14
      505 CAPTURE                          UPVAL U5
      506 CAPTURE                          VAL R0
      507 CAPTURE                          VAL R58
      508 NEWTABLE                         R61 0 0
      510 CALL                             R59 2 0
      511 LOADK                            R61 K20 ["Action"]
      512 LOADK                            R62 K34 ["Cancel"]
      513 NAMECALL                         R59 R4 K19 ["getText"]
      515 CALL                             R59 3 1
      516 GETTABLEKS                       R61 R0 K14 ["variant"]
      518 JUMPIFNOTEQKS                    R61 K35 ["Edit"] ; [+7]
      520 LOADK                            R62 K20 ["Action"]
      521 LOADK                            R63 K36 ["Save"]
      522 NAMECALL                         R60 R4 K19 ["getText"]
      524 CALL                             R60 3 1
      525 JUMP                             ; [+31]
      526 GETTABLEKS                       R61 R0 K14 ["variant"]
      528 JUMPIFNOTEQKS                    R61 K37 ["Add"] ; [+7]
      530 LOADK                            R62 K20 ["Action"]
      531 LOADK                            R63 K36 ["Save"]
      532 NAMECALL                         R60 R4 K19 ["getText"]
      534 CALL                             R60 3 1
      535 JUMP                             ; [+21]
      536 GETTABLEKS                       R61 R0 K14 ["variant"]
      538 JUMPIFNOTEQKS                    R61 K36 ["Save"] ; [+7]
      540 LOADK                            R62 K20 ["Action"]
      541 LOADK                            R63 K36 ["Save"]
      542 NAMECALL                         R60 R4 K19 ["getText"]
      544 CALL                             R60 3 1
      545 JUMP                             ; [+11]
      546 GETTABLEKS                       R61 R0 K14 ["variant"]
      548 JUMPIFNOTEQKS                    R61 K15 ["Publish"] ; [+7]
      550 LOADK                            R62 K20 ["Action"]
      551 LOADK                            R63 K15 ["Publish"]
      552 NAMECALL                         R60 R4 K19 ["getText"]
      554 CALL                             R60 3 1
      555 JUMP                             ; [+1]
      556 LOADK                            R60 K8 [""]
      557 DUPTABLE                         R61 K40 [{"StyleLink", "MainView"}]
      558 GETUPVAL                         R62 1
      559 GETTABLEKS                       R62 R62 K41 ["createElement"]
      561 LOADK                            R63 K38 ["StyleLink"]
      562 DUPTABLE                         R64 K43 [{"StyleSheet"}]
      563 GETUPVAL                         R65 15
      564 CALL                             R65 0 1
      565 SETTABLEKS                       R65 R64 K42 ["StyleSheet"]
      567 CALL                             R62 2 1
      568 SETTABLEKS                       R62 R61 K38 ["StyleLink"]
      570 GETUPVAL                         R62 1
      571 GETTABLEKS                       R62 R62 K41 ["createElement"]
      573 GETUPVAL                         R63 16
      574 GETTABLEKS                       R63 R63 K44 ["View"]
      576 DUPTABLE                         R64 K48 [{["tag"] = "col gap-small size-0-0 auto-xy align-x-center", ["onAbsoluteSizeChanged"]}]
      577 SETTABLEKS                       R53 R64 K47 ["onAbsoluteSizeChanged"]
      579 DUPTABLE                         R65 K52 [{"Alert", "Body", "Footer"}]
      580 GETUPVAL                         R67 5
      581 GETTABLEKS                       R67 R67 K11 ["EngineFeaturePVHGenerateNotes"]
      583 JUMPIFNOT                        R67 ; [+98]
      584 JUMPIFEQKNIL                     R26 ; [+97]
      586 GETUPVAL                         R66 1
      587 GETTABLEKS                       R66 R66 K41 ["createElement"]
      589 GETUPVAL                         R67 16
      590 GETTABLEKS                       R67 R67 K44 ["View"]
      592 DUPTABLE                         R68 K57 [{["tag"] = "padding-top-large", ["Size"], ["AutomaticSize"], ["LayoutOrder"]}]
      593 GETIMPORT                        R69 K59 [UDim2.new]
      595 LOADN                            R70 0
      596 GETUPVAL                         R71 17
      597 LOADN                            R72 0
      598 LOADN                            R73 0
      599 CALL                             R69 4 1
      600 SETTABLEKS                       R69 R68 K54 ["Size"]
      602 GETIMPORT                        R69 K62 [Enum.AutomaticSize.Y]
      604 SETTABLEKS                       R69 R68 K55 ["AutomaticSize"]
      606 MOVE                             R69 R1
      607 CALL                             R69 0 1
      608 SETTABLEKS                       R69 R68 K56 ["LayoutOrder"]
      610 DUPTABLE                         R69 K63 [{"Alert"}]
      611 GETUPVAL                         R70 1
      612 GETTABLEKS                       R70 R70 K41 ["createElement"]
      614 GETUPVAL                         R71 16
      615 GETTABLEKS                       R71 R71 K64 ["FeedbackAlert"]
      617 DUPTABLE                         R72 K68 [{["severity"], ["title"] = "", ["subtitle"], ["onClose"]}]
      618 GETUPVAL                         R74 14
      619 GETTABLEKS                       R74 R74 K69 ["NoSaveNotes"]
      621 JUMPIFNOTEQ                      R26 R74 ; [+9]
      623 GETUPVAL                         R73 16
      624 GETTABLEKS                       R73 R73 K70 ["Enums"]
      626 GETTABLEKS                       R73 R73 K71 ["AlertSeverity"]
      628 GETTABLEKS                       R73 R73 K72 ["Info"]
      630 JUMP                             ; [+7]
      631 GETUPVAL                         R73 16
      632 GETTABLEKS                       R73 R73 K70 ["Enums"]
      634 GETTABLEKS                       R73 R73 K71 ["AlertSeverity"]
      636 GETTABLEKS                       R73 R73 K73 ["Warning"]
      638 SETTABLEKS                       R73 R72 K65 ["severity"]
      640 GETUPVAL                         R74 14
      641 GETTABLEKS                       R74 R74 K69 ["NoSaveNotes"]
      643 JUMPIFNOTEQ                      R26 R74 ; [+7]
      645 LOADK                            R75 K17 ["Description"]
      646 LOADK                            R76 K74 ["NothingToSummarize"]
      647 NAMECALL                         R73 R4 K19 ["getText"]
      649 CALL                             R73 3 1
      650 JUMP                             ; [+20]
      651 GETUPVAL                         R74 5
      652 GETTABLEKS                       R74 R74 K75 ["FFlagPVHGenerateNotesQuotaMessage"]
      654 JUMPIFNOT                        R74 ; [+11]
      655 GETUPVAL                         R74 14
      656 GETTABLEKS                       R74 R74 K76 ["QuotaExceeded"]
      658 JUMPIFNOTEQ                      R26 R74 ; [+7]
      660 LOADK                            R75 K17 ["Description"]
      661 LOADK                            R76 K76 ["QuotaExceeded"]
      662 NAMECALL                         R73 R4 K19 ["getText"]
      664 CALL                             R73 3 1
      665 JUMP                             ; [+5]
      666 LOADK                            R75 K17 ["Description"]
      667 LOADK                            R76 K77 ["SummaryGenerationFailed"]
      668 NAMECALL                         R73 R4 K19 ["getText"]
      670 CALL                             R73 3 1
      671 SETTABLEKS                       R73 R72 K66 ["subtitle"]
      673 NEWCLOSURE                       R73 P15
      674 CAPTURE                          VAL R27
      675 SETTABLEKS                       R73 R72 K67 ["onClose"]
      677 CALL                             R70 2 1
      678 SETTABLEKS                       R70 R69 K49 ["Alert"]
      680 CALL                             R66 3 1
      681 JUMP                             ; [+1]
      682 LOADNIL                          R66
      683 SETTABLEKS                       R66 R65 K49 ["Alert"]
      685 GETUPVAL                         R66 1
      686 GETTABLEKS                       R66 R66 K41 ["createElement"]
      688 GETUPVAL                         R67 18
      689 DUPTABLE                         R68 K96 [{"localization", "title", "description", "titleError", "descriptionError", "isLoading", "isBusy", "isGenerating", "isTitleBlank", "isDescriptionBlank", "showGenerateButton", "generateTooltip", "generateButtonText", "generationId", "onTitleFocusLost", "onTitleChanged", "onDescriptionChanged", "onGenerateTrigger", "titleRef", "descriptionRef", "LayoutOrder"}]
      690 SETTABLEKS                       R4 R68 K78 ["localization"]
      692 SETTABLEKS                       R8 R68 K7 ["title"]
      694 SETTABLEKS                       R15 R68 K9 ["description"]
      696 SETTABLEKS                       R10 R68 K79 ["titleError"]
      698 SETTABLEKS                       R17 R68 K80 ["descriptionError"]
      700 SETTABLEKS                       R22 R68 K81 ["isLoading"]
      702 SETTABLEKS                       R38 R68 K82 ["isBusy"]
      704 SETTABLEKS                       R24 R68 K83 ["isGenerating"]
      706 SETTABLEKS                       R42 R68 K84 ["isTitleBlank"]
      708 SETTABLEKS                       R43 R68 K85 ["isDescriptionBlank"]
      710 SETTABLEKS                       R44 R68 K86 ["showGenerateButton"]
      712 SETTABLEKS                       R45 R68 K87 ["generateTooltip"]
      714 SETTABLEKS                       R46 R68 K88 ["generateButtonText"]
      716 SETTABLEKS                       R28 R68 K89 ["generationId"]
      718 SETTABLEKS                       R55 R68 K90 ["onTitleFocusLost"]
      720 SETTABLEKS                       R56 R68 K91 ["onTitleChanged"]
      722 SETTABLEKS                       R57 R68 K92 ["onDescriptionChanged"]
      724 SETTABLEKS                       R58 R68 K93 ["onGenerateTrigger"]
      726 SETTABLEKS                       R54 R68 K94 ["titleRef"]
      728 SETTABLEKS                       R21 R68 K95 ["descriptionRef"]
      730 MOVE                             R69 R1
      731 CALL                             R69 0 1
      732 SETTABLEKS                       R69 R68 K56 ["LayoutOrder"]
      734 CALL                             R66 2 1
      735 SETTABLEKS                       R66 R65 K50 ["Body"]
      737 GETUPVAL                         R66 1
      738 GETTABLEKS                       R66 R66 K41 ["createElement"]
      740 GETUPVAL                         R67 19
      741 DUPTABLE                         R68 K103 [{"cancelText", "acceptText", "isLoading", "isAcceptDisabled", "showSummaryDisclaimer", "disclaimerText", "onAccept", "onReject", "LayoutOrder"}]
      742 SETTABLEKS                       R59 R68 K97 ["cancelText"]
      744 SETTABLEKS                       R60 R68 K98 ["acceptText"]
      746 SETTABLEKS                       R22 R68 K81 ["isLoading"]
      748 SETTABLEKS                       R41 R68 K99 ["isAcceptDisabled"]
      750 SETTABLEKS                       R47 R68 K100 ["showSummaryDisclaimer"]
      752 LOADK                            R71 K17 ["Description"]
      753 LOADK                            R72 K104 ["SummaryDisclaimer"]
      754 NAMECALL                         R69 R4 K19 ["getText"]
      756 CALL                             R69 3 1
      757 SETTABLEKS                       R69 R68 K101 ["disclaimerText"]
      759 SETTABLEKS                       R51 R68 K29 ["onAccept"]
      761 SETTABLEKS                       R52 R68 K102 ["onReject"]
      763 MOVE                             R69 R1
      764 CALL                             R69 0 1
      765 SETTABLEKS                       R69 R68 K56 ["LayoutOrder"]
      767 CALL                             R66 2 1
      768 SETTABLEKS                       R66 R65 K51 ["Footer"]
      770 CALL                             R62 3 1
      771 SETTABLEKS                       R62 R61 K39 ["MainView"]
      773 GETUPVAL                         R62 1
      774 GETTABLEKS                       R62 R62 K41 ["createElement"]
      776 GETUPVAL                         R63 20
      777 GETTABLEKS                       R63 R63 K105 ["UI"]
      779 GETTABLEKS                       R63 R63 K106 ["Dialog"]
      781 DUPTABLE                         R64 K114 [{["Title"], ["Enabled"] = True, ["Modal"] = True, ["Resizable"] = False, ["Size"], ["OnClose"]}]
      782 GETTABLEKS                       R66 R0 K14 ["variant"]
      784 JUMPIFNOTEQKS                    R66 K35 ["Edit"] ; [+7]
      786 LOADK                            R67 K107 ["Title"]
      787 LOADK                            R68 K115 ["EditVersionNotes"]
      788 NAMECALL                         R65 R4 K19 ["getText"]
      790 CALL                             R65 3 1
      791 JUMP                             ; [+31]
      792 GETTABLEKS                       R66 R0 K14 ["variant"]
      794 JUMPIFNOTEQKS                    R66 K37 ["Add"] ; [+7]
      796 LOADK                            R67 K107 ["Title"]
      797 LOADK                            R68 K116 ["AddVersionNotes"]
      798 NAMECALL                         R65 R4 K19 ["getText"]
      800 CALL                             R65 3 1
      801 JUMP                             ; [+21]
      802 GETTABLEKS                       R66 R0 K14 ["variant"]
      804 JUMPIFNOTEQKS                    R66 K36 ["Save"] ; [+7]
      806 LOADK                            R67 K107 ["Title"]
      807 LOADK                            R68 K117 ["SaveWithVersionNotes"]
      808 NAMECALL                         R65 R4 K19 ["getText"]
      810 CALL                             R65 3 1
      811 JUMP                             ; [+11]
      812 GETTABLEKS                       R66 R0 K14 ["variant"]
      814 JUMPIFNOTEQKS                    R66 K15 ["Publish"] ; [+7]
      816 LOADK                            R67 K107 ["Title"]
      817 LOADK                            R68 K118 ["PublishWithVersionNotes"]
      818 NAMECALL                         R65 R4 K19 ["getText"]
      820 CALL                             R65 3 1
      821 JUMP                             ; [+1]
      822 LOADK                            R65 K8 [""]
      823 SETTABLEKS                       R65 R64 K107 ["Title"]
      825 SETTABLEKS                       R5 R64 K54 ["Size"]
      827 SETTABLEKS                       R52 R64 K113 ["OnClose"]
      829 GETUPVAL                         R66 5
      830 GETTABLEKS                       R66 R66 K11 ["EngineFeaturePVHGenerateNotes"]
      832 JUMPIFNOT                        R66 ; [+11]
      833 DUPTABLE                         R65 K120 [{"Content"}]
      834 GETUPVAL                         R66 1
      835 GETTABLEKS                       R66 R66 K41 ["createElement"]
      837 GETUPVAL                         R67 21
      838 LOADNIL                          R68
      839 MOVE                             R69 R61
      840 CALL                             R66 3 1
      841 SETTABLEKS                       R66 R65 K119 ["Content"]
      843 JUMP                             ; [+1]
      844 MOVE                             R65 R61
      845 CALL                             R62 3 -1
      846 RETURN                           R62 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["flags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["ReactUtils"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Foundation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["Promise"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K9 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["Framework"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K9 ["Packages"]
       55 GETTABLEKS                       R8 R8 K15 ["TelemetryProtocol"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R6 K16 ["ContextServices"]
       60 GETTABLEKS                       R9 R8 K17 ["Localization"]
       62 GETTABLEKS                       R10 R0 K18 ["Src"]
       64 GETTABLEKS                       R10 R10 K19 ["Contexts"]
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R10 K20 ["NetworkContext"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R13 R10 K21 ["SettingContext"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R14 R0 K18 ["Src"]
       80 GETTABLEKS                       R14 R14 K22 ["Network"]
       82 GETTABLEKS                       R14 R14 K23 ["GetGeneratedNotesError"]
       84 CALL                             R13 1 1
       85 GETTABLEKS                       R14 R7 K24 ["new"]
       87 CALL                             R14 0 1
       88 GETTABLEKS                       R15 R0 K18 ["Src"]
       90 GETTABLEKS                       R15 R15 K25 ["Events"]
       92 GETIMPORT                        R16 K5 [require]
       94 GETTABLEKS                       R17 R15 K26 ["AddNotesEvent"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K5 [require]
       99 GETTABLEKS                       R18 R15 K27 ["SummaryGenerationEvent"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K5 [require]
      104 GETTABLEKS                       R19 R15 K28 ["TextModerationEvent"]
      106 CALL                             R18 1 1
      107 GETTABLEKS                       R19 R3 K29 ["createNextOrder"]
      109 GETTABLEKS                       R20 R4 K30 ["Hooks"]
      111 GETTABLEKS                       R20 R20 K31 ["useStyleSheet"]
      113 GETTABLEKS                       R21 R0 K18 ["Src"]
      115 GETTABLEKS                       R21 R21 K32 ["Components"]
      117 GETIMPORT                        R22 K5 [require]
      119 GETTABLEKS                       R23 R21 K33 ["DraftingText"]
      121 GETTABLEKS                       R23 R23 K34 ["Overlay"]
      123 CALL                             R22 1 1
      124 GETIMPORT                        R23 K5 [require]
      126 GETTABLEKS                       R24 R21 K35 ["GenerateButton"]
      128 CALL                             R23 1 1
      129 GETIMPORT                        R24 K5 [require]
      131 GETTABLEKS                       R25 R0 K18 ["Src"]
      133 GETTABLEKS                       R25 R25 K36 ["Types"]
      135 CALL                             R24 1 1
      136 GETTABLEKS                       R26 R1 K37 ["EngineFeaturePVHGenerateNotes"]
      138 JUMPIF                           R26 ; [+2]
      139 LOADN                            R25 450
      140 JUMP                             ; [+1]
      141 LOADN                            R25 502
      142 GETTABLEKS                       R26 R1 K38 ["FIntPVHMaxTitleChars"]
      144 GETTABLEKS                       R27 R1 K39 ["FIntPVHMaxDescriptionChars"]
      146 GETTABLEKS                       R28 R1 K40 ["FIntPVHMaxDescriptionLines"]
      148 DUPCLOSURE                       R29 K41 [PROTO_0]
      149 DUPCLOSURE                       R30 K42 [PROTO_1]
      150 DUPCLOSURE                       R31 K43 [PROTO_2]
      151 DUPCLOSURE                       R32 K44 [PROTO_3]
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R4
      154 DUPCLOSURE                       R33 K45 [PROTO_4]
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R2
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R25
      161 CAPTURE                          VAL R22
      162 DUPCLOSURE                       R34 K46 [PROTO_5]
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R25
      168 DUPCLOSURE                       R35 K47 [PROTO_29]
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R26
      176 CAPTURE                          VAL R27
      177 CAPTURE                          VAL R28
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R13
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R4
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R33
      188 CAPTURE                          VAL R34
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R32
      191 RETURN                           R35 1
