PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["efficient"] ; [+3]
        2 LOADN                            R1 1
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K1 ["quality"] ; [+3]
        6 LOADN                            R1 3
        7 RETURN                           R1 1
        8 LOADN                            R1 2
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setEffort"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 CALL                             R4 0 1
       10 JUMPIFNOT                        R4 ; [+2]
       11 GETUPVAL                         R3 3
       12 JUMP                             ; [+1]
       13 GETUPVAL                         R3 4
       14 NEWTABLE                         R4 0 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K2 ["useEventCallback"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U5
       22 CALL                             R5 1 1
       23 MOVE                             R6 R3
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 LOADK                            R11 K3 ["option-%*"]
       28 MOVE                             R13 R9
       29 NAMECALL                         R11 R11 K4 ["format"]
       31 CALL                             R11 2 1
       32 GETUPVAL                         R12 6
       33 GETTABLEKS                       R12 R12 K5 ["createElement"]
       35 GETUPVAL                         R13 7
       36 DUPTABLE                         R14 K10 [{"option", "order", "pipeline", "setPipeline"}]
       37 SETTABLEKS                       R10 R14 K6 ["option"]
       39 SETTABLEKS                       R9 R14 K7 ["order"]
       41 GETTABLEKS                       R15 R0 K8 ["pipeline"]
       43 SETTABLEKS                       R15 R14 K8 ["pipeline"]
       45 GETTABLEKS                       R15 R0 K9 ["setPipeline"]
       47 SETTABLEKS                       R15 R14 K9 ["setPipeline"]
       49 CALL                             R12 2 1
       50 SETTABLE                         R12 R4 R11
       51 FORGLOOP                         R6 2 ; [-25]
       53 GETUPVAL                         R6 6
       54 GETTABLEKS                       R6 R6 K5 ["createElement"]
       56 GETUPVAL                         R7 8
       57 DUPTABLE                         R8 K16 [{["tag"] = "col gap-none size-full-0 auto-y stroke-default radius-large clip", ["LayoutOrder"], ["testId"] = "avatar-chat-generation-options"}]
       58 GETTABLEKS                       R9 R0 K13 ["LayoutOrder"]
       60 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       62 DUPTABLE                         R9 K24 [{"Header", "Divider", "Choices", "CheckboxDivider", "Checkboxes", "EffortDivider", "Effort"}]
       63 GETUPVAL                         R10 6
       64 GETTABLEKS                       R10 R10 K5 ["createElement"]
       66 GETUPVAL                         R11 8
       67 DUPTABLE                         R12 K26 [{["tag"] = "row align-y-center size-full-0 auto-y padding-y-small padding-left-large padding-right-small", ["LayoutOrder"]}]
       68 MOVE                             R13 R2
       69 CALL                             R13 0 1
       70 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       72 DUPTABLE                         R13 K29 [{"Title", "Dismiss"}]
       73 GETUPVAL                         R14 6
       74 GETTABLEKS                       R14 R14 K5 ["createElement"]
       76 GETUPVAL                         R15 9
       77 DUPTABLE                         R16 K32 [{["tag"] = "fill auto-xy text-title-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
       78 LOADK                            R19 K33 ["AvatarChatScreen"]
       79 LOADK                            R20 K34 ["GenerateWhat"]
       80 NAMECALL                         R17 R1 K35 ["getText"]
       82 CALL                             R17 3 1
       83 SETTABLEKS                       R17 R16 K31 ["Text"]
       85 MOVE                             R17 R2
       86 CALL                             R17 0 1
       87 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
       89 CALL                             R14 2 1
       90 SETTABLEKS                       R14 R13 K27 ["Title"]
       92 GETUPVAL                         R14 6
       93 GETTABLEKS                       R14 R14 K5 ["createElement"]
       95 GETUPVAL                         R15 10
       96 DUPTABLE                         R16 K41 [{["icon"], ["size"], ["variant"], ["onActivated"], ["LayoutOrder"], ["testId"] = "avatar-chat-generation-options-dismiss"}]
       97 GETUPVAL                         R17 11
       98 GETTABLEKS                       R17 R17 K42 ["X"]
      100 SETTABLEKS                       R17 R16 K36 ["icon"]
      102 GETUPVAL                         R17 12
      103 GETTABLEKS                       R17 R17 K43 ["XSmall"]
      105 SETTABLEKS                       R17 R16 K37 ["size"]
      107 GETUPVAL                         R17 13
      108 GETTABLEKS                       R17 R17 K44 ["Utility"]
      110 SETTABLEKS                       R17 R16 K38 ["variant"]
      112 GETTABLEKS                       R17 R0 K45 ["onDismiss"]
      114 SETTABLEKS                       R17 R16 K39 ["onActivated"]
      116 MOVE                             R17 R2
      117 CALL                             R17 0 1
      118 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      120 CALL                             R14 2 1
      121 SETTABLEKS                       R14 R13 K28 ["Dismiss"]
      123 CALL                             R10 3 1
      124 SETTABLEKS                       R10 R9 K17 ["Header"]
      126 GETUPVAL                         R10 6
      127 GETTABLEKS                       R10 R10 K5 ["createElement"]
      129 GETUPVAL                         R11 14
      130 DUPTABLE                         R12 K46 [{"LayoutOrder"}]
      131 MOVE                             R13 R2
      132 CALL                             R13 0 1
      133 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      135 CALL                             R10 2 1
      136 SETTABLEKS                       R10 R9 K18 ["Divider"]
      138 GETUPVAL                         R10 6
      139 GETTABLEKS                       R10 R10 K5 ["createElement"]
      141 GETUPVAL                         R11 8
      142 DUPTABLE                         R12 K48 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-x-medium padding-y-small", ["LayoutOrder"]}]
      143 MOVE                             R13 R2
      144 CALL                             R13 0 1
      145 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      147 MOVE                             R13 R4
      148 CALL                             R10 3 1
      149 SETTABLEKS                       R10 R9 K19 ["Choices"]
      151 GETUPVAL                         R11 15
      152 CALL                             R11 0 1
      153 JUMPIF                           R11 ; [+5]
      154 GETUPVAL                         R11 16
      155 CALL                             R11 0 1
      156 JUMPIF                           R11 ; [+2]
      157 LOADNIL                          R10
      158 JUMP                             ; [+10]
      159 GETUPVAL                         R10 6
      160 GETTABLEKS                       R10 R10 K5 ["createElement"]
      162 GETUPVAL                         R11 14
      163 DUPTABLE                         R12 K46 [{"LayoutOrder"}]
      164 MOVE                             R13 R2
      165 CALL                             R13 0 1
      166 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      168 CALL                             R10 2 1
      169 SETTABLEKS                       R10 R9 K20 ["CheckboxDivider"]
      171 GETUPVAL                         R11 15
      172 CALL                             R11 0 1
      173 JUMPIF                           R11 ; [+5]
      174 GETUPVAL                         R11 16
      175 CALL                             R11 0 1
      176 JUMPIF                           R11 ; [+2]
      177 LOADNIL                          R10
      178 JUMP                             ; [+89]
      179 GETUPVAL                         R10 6
      180 GETTABLEKS                       R10 R10 K5 ["createElement"]
      182 GETUPVAL                         R11 8
      183 DUPTABLE                         R12 K50 [{["tag"] = "col size-full-0 auto-y padding-x-medium padding-y-small", ["LayoutOrder"]}]
      184 MOVE                             R13 R2
      185 CALL                             R13 0 1
      186 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      188 DUPTABLE                         R13 K53 [{"DynamicHead", "R15Plus"}]
      189 GETUPVAL                         R15 15
      190 CALL                             R15 0 1
      191 JUMPIF                           R15 ; [+2]
      192 LOADNIL                          R14
      193 JUMP                             ; [+32]
      194 GETUPVAL                         R14 6
      195 GETTABLEKS                       R14 R14 K5 ["createElement"]
      197 GETUPVAL                         R15 17
      198 DUPTABLE                         R16 K59 [{["LayoutOrder"], ["isChecked"], ["setChecked"], ["label"], ["description"], ["testId"] = "avatar-chat-dynamic-head"}]
      199 MOVE                             R17 R2
      200 CALL                             R17 0 1
      201 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      203 GETTABLEKS                       R17 R0 K60 ["dynamicHead"]
      205 SETTABLEKS                       R17 R16 K54 ["isChecked"]
      207 GETTABLEKS                       R17 R0 K61 ["setDynamicHead"]
      209 SETTABLEKS                       R17 R16 K55 ["setChecked"]
      211 LOADK                            R19 K33 ["AvatarChatScreen"]
      212 LOADK                            R20 K62 ["GenerateDynamicHead"]
      213 NAMECALL                         R17 R1 K35 ["getText"]
      215 CALL                             R17 3 1
      216 SETTABLEKS                       R17 R16 K56 ["label"]
      218 LOADK                            R19 K33 ["AvatarChatScreen"]
      219 LOADK                            R20 K63 ["GenerateDynamicHeadDetail"]
      220 NAMECALL                         R17 R1 K35 ["getText"]
      222 CALL                             R17 3 1
      223 SETTABLEKS                       R17 R16 K57 ["description"]
      225 CALL                             R14 2 1
      226 SETTABLEKS                       R14 R13 K51 ["DynamicHead"]
      228 GETUPVAL                         R15 16
      229 CALL                             R15 0 1
      230 JUMPIF                           R15 ; [+2]
      231 LOADNIL                          R14
      232 JUMP                             ; [+32]
      233 GETUPVAL                         R14 6
      234 GETTABLEKS                       R14 R14 K5 ["createElement"]
      236 GETUPVAL                         R15 17
      237 DUPTABLE                         R16 K65 [{["LayoutOrder"], ["isChecked"], ["setChecked"], ["label"], ["description"], ["testId"] = "avatar-chat-r15-plus"}]
      238 MOVE                             R17 R2
      239 CALL                             R17 0 1
      240 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      242 GETTABLEKS                       R17 R0 K66 ["r15Plus"]
      244 SETTABLEKS                       R17 R16 K54 ["isChecked"]
      246 GETTABLEKS                       R17 R0 K67 ["setR15Plus"]
      248 SETTABLEKS                       R17 R16 K55 ["setChecked"]
      250 LOADK                            R19 K68 ["AutoSetupOptions"]
      251 LOADK                            R20 K69 ["CustomHumanoid"]
      252 NAMECALL                         R17 R1 K35 ["getText"]
      254 CALL                             R17 3 1
      255 SETTABLEKS                       R17 R16 K56 ["label"]
      257 LOADK                            R19 K68 ["AutoSetupOptions"]
      258 LOADK                            R20 K70 ["CustomHumanoidDescription"]
      259 NAMECALL                         R17 R1 K35 ["getText"]
      261 CALL                             R17 3 1
      262 SETTABLEKS                       R17 R16 K57 ["description"]
      264 CALL                             R14 2 1
      265 SETTABLEKS                       R14 R13 K52 ["R15Plus"]
      267 CALL                             R10 3 1
      268 SETTABLEKS                       R10 R9 K21 ["Checkboxes"]
      270 GETUPVAL                         R11 2
      271 CALL                             R11 0 1
      272 JUMPIF                           R11 ; [+2]
      273 LOADNIL                          R10
      274 JUMP                             ; [+10]
      275 GETUPVAL                         R10 6
      276 GETTABLEKS                       R10 R10 K5 ["createElement"]
      278 GETUPVAL                         R11 14
      279 DUPTABLE                         R12 K46 [{"LayoutOrder"}]
      280 MOVE                             R13 R2
      281 CALL                             R13 0 1
      282 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      284 CALL                             R10 2 1
      285 SETTABLEKS                       R10 R9 K22 ["EffortDivider"]
      287 GETUPVAL                         R11 2
      288 CALL                             R11 0 1
      289 JUMPIF                           R11 ; [+2]
      290 LOADNIL                          R10
      291 JUMP                             ; [+139]
      292 GETUPVAL                         R10 6
      293 GETTABLEKS                       R10 R10 K5 ["createElement"]
      295 GETUPVAL                         R11 8
      296 DUPTABLE                         R12 K72 [{["tag"] = "col gap-xsmall size-full-0 auto-y padding-x-large padding-y-medium", ["LayoutOrder"]}]
      297 MOVE                             R13 R2
      298 CALL                             R13 0 1
      299 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      301 DUPTABLE                         R13 K76 [{"Label", "Slider", "Ticks"}]
      302 GETUPVAL                         R14 6
      303 GETTABLEKS                       R14 R14 K5 ["createElement"]
      305 GETUPVAL                         R15 9
      306 DUPTABLE                         R16 K78 [{["tag"] = "auto-xy text-label-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      307 LOADK                            R19 K33 ["AvatarChatScreen"]
      308 LOADK                            R20 K79 ["EffortLevel"]
      309 NAMECALL                         R17 R1 K35 ["getText"]
      311 CALL                             R17 3 1
      312 SETTABLEKS                       R17 R16 K31 ["Text"]
      314 MOVE                             R17 R2
      315 CALL                             R17 0 1
      316 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      318 CALL                             R14 2 1
      319 SETTABLEKS                       R14 R13 K73 ["Label"]
      321 GETUPVAL                         R14 6
      322 GETTABLEKS                       R14 R14 K5 ["createElement"]
      324 GETUPVAL                         R15 18
      325 DUPTABLE                         R16 K86 [{["value"], ["range"], ["step"] = 1, ["size"], ["onValueChanged"], ["LayoutOrder"], ["testId"] = "avatar-chat-effort"}]
      326 GETTABLEKS                       R18 R0 K87 ["effort"]
      328 JUMPIFNOTEQKS                    R18 K88 ["efficient"] ; [+3]
      330 LOADN                            R17 1
      331 JUMP                             ; [+5]
      332 JUMPIFNOTEQKS                    R18 K89 ["quality"] ; [+3]
      334 LOADN                            R17 3
      335 JUMP                             ; [+1]
      336 LOADN                            R17 2
      337 SETTABLEKS                       R17 R16 K80 ["value"]
      339 GETIMPORT                        R17 K92 [NumberRange.new]
      341 LOADN                            R18 1
      342 LOADN                            R19 3
      343 CALL                             R17 2 1
      344 SETTABLEKS                       R17 R16 K81 ["range"]
      346 GETUPVAL                         R17 12
      347 GETTABLEKS                       R17 R17 K93 ["Small"]
      349 SETTABLEKS                       R17 R16 K37 ["size"]
      351 SETTABLEKS                       R5 R16 K84 ["onValueChanged"]
      353 MOVE                             R17 R2
      354 CALL                             R17 0 1
      355 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      357 CALL                             R14 2 1
      358 SETTABLEKS                       R14 R13 K74 ["Slider"]
      360 GETUPVAL                         R14 6
      361 GETTABLEKS                       R14 R14 K5 ["createElement"]
      363 GETUPVAL                         R15 8
      364 DUPTABLE                         R16 K95 [{["tag"] = "row align-x-center size-full-0 auto-y", ["LayoutOrder"]}]
      365 MOVE                             R17 R2
      366 CALL                             R17 0 1
      367 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      369 DUPTABLE                         R17 K99 [{"Efficient", "Balanced", "Quality"}]
      370 GETUPVAL                         R18 6
      371 GETTABLEKS                       R18 R18 K5 ["createElement"]
      373 GETUPVAL                         R19 9
      374 DUPTABLE                         R20 K101 [{["tag"] = "grow auto-y text-body-small text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      375 LOADK                            R23 K33 ["AvatarChatScreen"]
      376 LOADK                            R24 K102 ["EffortEfficient"]
      377 NAMECALL                         R21 R1 K35 ["getText"]
      379 CALL                             R21 3 1
      380 SETTABLEKS                       R21 R20 K31 ["Text"]
      382 MOVE                             R21 R2
      383 CALL                             R21 0 1
      384 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      386 CALL                             R18 2 1
      387 SETTABLEKS                       R18 R17 K96 ["Efficient"]
      389 GETUPVAL                         R18 6
      390 GETTABLEKS                       R18 R18 K5 ["createElement"]
      392 GETUPVAL                         R19 9
      393 DUPTABLE                         R20 K104 [{["tag"] = "grow auto-y text-body-small text-align-x-center content-default", ["Text"], ["LayoutOrder"]}]
      394 LOADK                            R23 K33 ["AvatarChatScreen"]
      395 LOADK                            R24 K105 ["EffortBalanced"]
      396 NAMECALL                         R21 R1 K35 ["getText"]
      398 CALL                             R21 3 1
      399 SETTABLEKS                       R21 R20 K31 ["Text"]
      401 MOVE                             R21 R2
      402 CALL                             R21 0 1
      403 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      405 CALL                             R18 2 1
      406 SETTABLEKS                       R18 R17 K97 ["Balanced"]
      408 GETUPVAL                         R18 6
      409 GETTABLEKS                       R18 R18 K5 ["createElement"]
      411 GETUPVAL                         R19 9
      412 DUPTABLE                         R20 K107 [{["tag"] = "grow auto-y text-body-small text-align-x-right content-default", ["Text"], ["LayoutOrder"]}]
      413 LOADK                            R23 K33 ["AvatarChatScreen"]
      414 LOADK                            R24 K108 ["EffortQuality"]
      415 NAMECALL                         R21 R1 K35 ["getText"]
      417 CALL                             R21 3 1
      418 SETTABLEKS                       R21 R20 K31 ["Text"]
      420 MOVE                             R21 R2
      421 CALL                             R21 0 1
      422 SETTABLEKS                       R21 R20 K13 ["LayoutOrder"]
      424 CALL                             R18 2 1
      425 SETTABLEKS                       R18 R17 K98 ["Quality"]
      427 CALL                             R14 3 1
      428 SETTABLEKS                       R14 R13 K75 ["Ticks"]
      430 CALL                             R10 3 1
      431 SETTABLEKS                       R10 R9 K23 ["Effort"]
      433 CALL                             R6 3 -1
      434 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Enums"]
       37 GETTABLEKS                       R5 R5 K12 ["ButtonVariant"]
       39 GETTABLEKS                       R6 R4 K11 ["Enums"]
       41 GETTABLEKS                       R6 R6 K13 ["IconName"]
       43 GETTABLEKS                       R7 R4 K11 ["Enums"]
       45 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       47 GETTABLEKS                       R8 R4 K15 ["Divider"]
       49 GETTABLEKS                       R9 R4 K16 ["IconButton"]
       51 GETTABLEKS                       R10 R4 K17 ["Slider"]
       53 GETTABLEKS                       R11 R4 K18 ["Text"]
       55 GETTABLEKS                       R12 R4 K19 ["View"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R0 K20 ["Src"]
       61 GETTABLEKS                       R14 R14 K21 ["Components"]
       63 GETTABLEKS                       R14 R14 K22 ["Screens"]
       65 GETTABLEKS                       R14 R14 K23 ["AvatarChatScreen"]
       67 GETTABLEKS                       R14 R14 K24 ["CheckboxOptionRow"]
       69 CALL                             R13 1 1
       70 GETTABLEKS                       R14 R1 K25 ["ContextServices"]
       72 GETTABLEKS                       R14 R14 K26 ["Localization"]
       74 GETIMPORT                        R15 K5 [require]
       76 GETTABLEKS                       R16 R0 K20 ["Src"]
       78 GETTABLEKS                       R16 R16 K21 ["Components"]
       80 GETTABLEKS                       R16 R16 K22 ["Screens"]
       82 GETTABLEKS                       R16 R16 K23 ["AvatarChatScreen"]
       84 GETTABLEKS                       R16 R16 K27 ["PipelineOptionRow"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K5 [require]
       89 GETTABLEKS                       R17 R0 K20 ["Src"]
       91 GETTABLEKS                       R17 R17 K28 ["Types"]
       93 CALL                             R16 1 1
       94 GETIMPORT                        R17 K5 [require]
       96 GETTABLEKS                       R18 R0 K20 ["Src"]
       98 GETTABLEKS                       R18 R18 K29 ["Flags"]
      100 GETTABLEKS                       R18 R18 K30 ["getFFlagAvatarPreviewerAvatarCreationDynamicHeadOption"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K5 [require]
      105 GETTABLEKS                       R19 R0 K20 ["Src"]
      107 GETTABLEKS                       R19 R19 K29 ["Flags"]
      109 GETTABLEKS                       R19 R19 K31 ["getFFlagAvatarPreviewerAvatarCreationPipelineOptions"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K5 [require]
      114 GETTABLEKS                       R20 R0 K20 ["Src"]
      116 GETTABLEKS                       R20 R20 K29 ["Flags"]
      118 GETTABLEKS                       R20 R20 K32 ["getFFlagAvatarPreviewerAvatarCreationR15PlusOption"]
      120 CALL                             R19 1 1
      121 NEWTABLE                         R20 0 3
      123 DUPTABLE                         R21 K39 [{["value"] = "npc", ["titleKey"] = "NpcAvatar", ["detailKey"] = "NpcAvatarDetail"}]
      124 DUPTABLE                         R22 K43 [{["value"] = "modesty", ["titleKey"] = "BodyOnly", ["detailKey"] = "BodyOnlyDetail"}]
      125 DUPTABLE                         R23 K47 [{["value"] = , ["titleKey"] = "FullAvatarComingSoon", ["detailKey"] = "FullAvatarDetail"}]
      126 SETLIST                          R20 R21 3 [1]
      128 NEWTABLE                         R21 0 3
      130 DUPTABLE                         R22 K50 [{["value"] = "platform", ["titleKey"] = "FullAvatar", ["detailKey"] = "FullAvatarDetail"}]
      131 DUPTABLE                         R23 K39 [{["value"] = "npc", ["titleKey"] = "NpcAvatar", ["detailKey"] = "NpcAvatarDetail"}]
      132 DUPTABLE                         R24 K43 [{["value"] = "modesty", ["titleKey"] = "BodyOnly", ["detailKey"] = "BodyOnlyDetail"}]
      133 SETLIST                          R21 R22 3 [1]
      135 NEWTABLE                         R22 0 3
      137 LOADK                            R23 K51 ["efficient"]
      138 LOADK                            R24 K52 ["balanced"]
      139 LOADK                            R25 K53 ["quality"]
      140 SETLIST                          R22 R23 3 [1]
      142 DUPCLOSURE                       R23 K54 [PROTO_0]
      143 DUPCLOSURE                       R24 K55 [PROTO_2]
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R21
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R22
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R10
      163 RETURN                           R24 1
