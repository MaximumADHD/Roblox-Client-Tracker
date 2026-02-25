PROTO_0:
        0 DUPTABLE                         R1 K11 [{"backdrop", "shadow", "container", "inner", "body", "heroMediaWrapper", "title", "titleText", "content", "contentText", "actionsLabel"}]
        1 DUPTABLE                         R2 K13 [{"backgroundStyle"}]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K14 ["FoundationDialogBackdropColorUpdate"]
        5 JUMPIFNOT                        R4 ; [+7]
        6 GETTABLEKS                       R5 R0 K15 ["Color"]
        8 GETTABLEKS                       R4 R5 K16 ["Common"]
       10 GETTABLEKS                       R3 R4 K17 ["Backdrop"]
       12 JUMP                             ; [+6]
       13 GETTABLEKS                       R5 R0 K15 ["Color"]
       15 GETTABLEKS                       R4 R5 K18 ["OverMedia"]
       17 GETTABLEKS                       R3 R4 K19 ["OverMedia_200"]
       19 SETTABLEKS                       R3 R2 K12 ["backgroundStyle"]
       21 SETTABLEKS                       R2 R1 K0 ["backdrop"]
       23 DUPTABLE                         R2 K22 [{"tag", "imageStyle"}]
       24 LOADK                            R3 K23 ["auto-xy"]
       25 SETTABLEKS                       R3 R2 K20 ["tag"]
       27 GETTABLEKS                       R6 R0 K15 ["Color"]
       29 GETTABLEKS                       R5 R6 K24 ["Extended"]
       31 GETTABLEKS                       R4 R5 K25 ["Black"]
       33 GETTABLEKS                       R3 R4 K26 ["Black_15"]
       35 SETTABLEKS                       R3 R2 K21 ["imageStyle"]
       37 SETTABLEKS                       R2 R1 K1 ["shadow"]
       39 DUPTABLE                         R2 K27 [{"tag"}]
       40 LOADK                            R3 K28 ["size-full-full col align-x-center align-y-center"]
       41 SETTABLEKS                       R3 R2 K20 ["tag"]
       43 SETTABLEKS                       R2 R1 K2 ["container"]
       45 DUPTABLE                         R2 K27 [{"tag"}]
       46 LOADK                            R3 K29 ["size-full-0 auto-y shrink-1 bg-surface-100 clip"]
       47 SETTABLEKS                       R3 R2 K20 ["tag"]
       49 SETTABLEKS                       R2 R1 K3 ["inner"]
       51 DUPTABLE                         R2 K27 [{"tag"}]
       52 LOADK                            R4 K30 ["size-full auto-y col padding-bottom-xlarge %*"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R7 R8 K31 ["FoundationDialogBodyUpdate"]
       56 JUMPIFNOT                        R7 ; [+2]
       57 LOADK                            R6 K32 ["gap-xlarge"]
       58 JUMP                             ; [+1]
       59 LOADK                            R6 K33 [""]
       60 NAMECALL                         R4 R4 K34 ["format"]
       62 CALL                             R4 2 1
       63 MOVE                             R3 R4
       64 SETTABLEKS                       R3 R2 K20 ["tag"]
       66 SETTABLEKS                       R2 R1 K4 ["body"]
       68 DUPTABLE                         R2 K27 [{"tag"}]
       69 LOADK                            R4 K35 ["auto-y size-full-full position-top-center %*"]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R7 R8 K36 ["FoundationDialogHeroImageOnlyFix"]
       73 JUMPIFNOT                        R7 ; [+2]
       74 LOADK                            R6 K37 ["shrink"]
       75 JUMP                             ; [+1]
       76 LOADK                            R6 K33 [""]
       77 NAMECALL                         R4 R4 K34 ["format"]
       79 CALL                             R4 2 1
       80 MOVE                             R3 R4
       81 SETTABLEKS                       R3 R2 K20 ["tag"]
       83 SETTABLEKS                       R2 R1 K5 ["heroMediaWrapper"]
       85 DUPTABLE                         R2 K27 [{"tag"}]
       86 LOADK                            R3 K38 ["size-full-0 auto-y"]
       87 SETTABLEKS                       R3 R2 K20 ["tag"]
       89 SETTABLEKS                       R2 R1 K6 ["title"]
       91 DUPTABLE                         R2 K27 [{"tag"}]
       92 LOADK                            R3 K39 ["size-full-0 auto-y content-emphasized text-wrap text-align-x-left"]
       93 SETTABLEKS                       R3 R2 K20 ["tag"]
       95 SETTABLEKS                       R2 R1 K7 ["titleText"]
       97 DUPTABLE                         R2 K27 [{"tag"}]
       98 LOADK                            R3 K40 ["auto-y size-full fill"]
       99 SETTABLEKS                       R3 R2 K20 ["tag"]
      101 SETTABLEKS                       R2 R1 K8 ["content"]
      103 DUPTABLE                         R2 K27 [{"tag"}]
      104 LOADK                            R4 K41 ["text-wrap text-align-x-left text-align-y-top auto-y size-full-0 %*"]
      105 GETUPVAL                         R8 0
      106 GETTABLEKS                       R7 R8 K31 ["FoundationDialogBodyUpdate"]
      108 JUMPIFNOT                        R7 ; [+2]
      109 LOADK                            R6 K42 ["padding-right-xxlarge"]
      110 JUMP                             ; [+1]
      111 LOADK                            R6 K33 [""]
      112 NAMECALL                         R4 R4 K34 ["format"]
      114 CALL                             R4 2 1
      115 MOVE                             R3 R4
      116 SETTABLEKS                       R3 R2 K20 ["tag"]
      118 SETTABLEKS                       R2 R1 K9 ["contentText"]
      120 DUPTABLE                         R2 K27 [{"tag"}]
      121 LOADK                            R4 K43 ["text-align-x-left text-wrap text-align-y-top auto-y size-full-0 %*"]
      122 GETUPVAL                         R8 0
      123 GETTABLEKS                       R7 R8 K44 ["FoundationDialogActionsUpdate"]
      125 JUMPIFNOT                        R7 ; [+2]
      126 LOADK                            R6 K45 ["text-body-small"]
      127 JUMP                             ; [+1]
      128 LOADK                            R6 K33 [""]
      129 NAMECALL                         R4 R4 K34 ["format"]
      131 CALL                             R4 2 1
      132 MOVE                             R3 R4
      133 SETTABLEKS                       R3 R2 K20 ["tag"]
      135 SETTABLEKS                       R2 R1 K10 ["actionsLabel"]
      137 NEWTABLE                         R2 4 0
      139 GETUPVAL                         R4 1
      140 GETTABLEKS                       R3 R4 K46 ["Small"]
      142 DUPTABLE                         R4 K49 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      143 DUPTABLE                         R5 K27 [{"tag"}]
      144 LOADK                            R6 K50 ["padding-large"]
      145 SETTABLEKS                       R6 R5 K20 ["tag"]
      147 SETTABLEKS                       R5 R4 K1 ["shadow"]
      149 DUPTABLE                         R5 K27 [{"tag"}]
      150 GETUPVAL                         R8 0
      151 GETTABLEKS                       R7 R8 K51 ["FoundationDialogRootZIndex"]
      153 JUMPIFNOT                        R7 ; [+2]
      154 LOADNIL                          R6
      155 JUMP                             ; [+1]
      156 LOADK                            R6 K50 ["padding-large"]
      157 SETTABLEKS                       R6 R5 K20 ["tag"]
      159 SETTABLEKS                       R5 R4 K2 ["container"]
      161 DUPTABLE                         R5 K53 [{"maxWidth", "tag"}]
      162 GETUPVAL                         R7 2
      163 GETUPVAL                         R9 1
      164 GETTABLEKS                       R8 R9 K46 ["Small"]
      166 GETTABLE                         R6 R7 R8
      167 SETTABLEKS                       R6 R5 K52 ["maxWidth"]
      169 LOADK                            R6 K54 ["radius-medium"]
      170 SETTABLEKS                       R6 R5 K20 ["tag"]
      172 SETTABLEKS                       R5 R4 K3 ["inner"]
      174 DUPTABLE                         R5 K27 [{"tag"}]
      175 LOADK                            R7 K55 ["padding-x-large %*"]
      176 GETUPVAL                         R11 0
      177 GETTABLEKS                       R10 R11 K31 ["FoundationDialogBodyUpdate"]
      179 JUMPIFNOT                        R10 ; [+2]
      180 LOADK                            R9 K33 [""]
      181 JUMP                             ; [+1]
      182 LOADK                            R9 K56 ["gap-large"]
      183 NAMECALL                         R7 R7 K34 ["format"]
      185 CALL                             R7 2 1
      186 MOVE                             R6 R7
      187 SETTABLEKS                       R6 R5 K20 ["tag"]
      189 SETTABLEKS                       R5 R4 K4 ["body"]
      191 DUPTABLE                         R5 K58 [{"offset"}]
      192 GETTABLEKS                       R7 R0 K59 ["Size"]
      194 GETTABLEKS                       R6 R7 K60 ["Size_300"]
      196 SETTABLEKS                       R6 R5 K57 ["offset"]
      198 SETTABLEKS                       R5 R4 K47 ["closeAffordance"]
      200 DUPTABLE                         R5 K62 [{"tag", "offsetX"}]
      201 LOADK                            R6 K54 ["radius-medium"]
      202 SETTABLEKS                       R6 R5 K20 ["tag"]
      204 GETTABLEKS                       R7 R0 K63 ["Padding"]
      206 GETTABLEKS                       R6 R7 K64 ["Large"]
      208 SETTABLEKS                       R6 R5 K61 ["offsetX"]
      210 SETTABLEKS                       R5 R4 K48 ["heroMedia"]
      212 DUPTABLE                         R5 K27 [{"tag"}]
      213 LOADK                            R6 K65 ["text-heading-small"]
      214 SETTABLEKS                       R6 R5 K20 ["tag"]
      216 SETTABLEKS                       R5 R4 K7 ["titleText"]
      218 DUPTABLE                         R5 K27 [{"tag"}]
      219 LOADK                            R6 K66 ["text-body-medium"]
      220 SETTABLEKS                       R6 R5 K20 ["tag"]
      222 SETTABLEKS                       R5 R4 K9 ["contentText"]
      224 DUPTABLE                         R5 K27 [{"tag"}]
      225 GETUPVAL                         R8 0
      226 GETTABLEKS                       R7 R8 K44 ["FoundationDialogActionsUpdate"]
      228 JUMPIFNOT                        R7 ; [+2]
      229 LOADK                            R6 K67 ["padding-top-large"]
      230 JUMP                             ; [+1]
      231 LOADK                            R6 K68 ["text-label-small"]
      232 SETTABLEKS                       R6 R5 K20 ["tag"]
      234 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      236 SETTABLE                         R4 R2 R3
      237 GETUPVAL                         R4 1
      238 GETTABLEKS                       R3 R4 K69 ["Medium"]
      240 DUPTABLE                         R4 K49 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      241 DUPTABLE                         R5 K27 [{"tag"}]
      242 LOADK                            R6 K70 ["padding-xlarge"]
      243 SETTABLEKS                       R6 R5 K20 ["tag"]
      245 SETTABLEKS                       R5 R4 K1 ["shadow"]
      247 DUPTABLE                         R5 K27 [{"tag"}]
      248 GETUPVAL                         R8 0
      249 GETTABLEKS                       R7 R8 K51 ["FoundationDialogRootZIndex"]
      251 JUMPIFNOT                        R7 ; [+2]
      252 LOADNIL                          R6
      253 JUMP                             ; [+1]
      254 LOADK                            R6 K70 ["padding-xlarge"]
      255 SETTABLEKS                       R6 R5 K20 ["tag"]
      257 SETTABLEKS                       R5 R4 K2 ["container"]
      259 DUPTABLE                         R5 K53 [{"maxWidth", "tag"}]
      260 GETUPVAL                         R7 2
      261 GETUPVAL                         R9 1
      262 GETTABLEKS                       R8 R9 K69 ["Medium"]
      264 GETTABLE                         R6 R7 R8
      265 SETTABLEKS                       R6 R5 K52 ["maxWidth"]
      267 LOADK                            R6 K71 ["radius-large"]
      268 SETTABLEKS                       R6 R5 K20 ["tag"]
      270 SETTABLEKS                       R5 R4 K3 ["inner"]
      272 DUPTABLE                         R5 K27 [{"tag"}]
      273 LOADK                            R7 K72 ["padding-x-xlarge %*"]
      274 GETUPVAL                         R11 0
      275 GETTABLEKS                       R10 R11 K31 ["FoundationDialogBodyUpdate"]
      277 JUMPIFNOT                        R10 ; [+2]
      278 LOADK                            R9 K33 [""]
      279 JUMP                             ; [+1]
      280 LOADK                            R9 K32 ["gap-xlarge"]
      281 NAMECALL                         R7 R7 K34 ["format"]
      283 CALL                             R7 2 1
      284 MOVE                             R6 R7
      285 SETTABLEKS                       R6 R5 K20 ["tag"]
      287 SETTABLEKS                       R5 R4 K4 ["body"]
      289 DUPTABLE                         R5 K58 [{"offset"}]
      290 GETTABLEKS                       R7 R0 K59 ["Size"]
      292 GETTABLEKS                       R6 R7 K73 ["Size_400"]
      294 SETTABLEKS                       R6 R5 K57 ["offset"]
      296 SETTABLEKS                       R5 R4 K47 ["closeAffordance"]
      298 DUPTABLE                         R5 K62 [{"tag", "offsetX"}]
      299 LOADK                            R6 K71 ["radius-large"]
      300 SETTABLEKS                       R6 R5 K20 ["tag"]
      302 GETTABLEKS                       R7 R0 K63 ["Padding"]
      304 GETTABLEKS                       R6 R7 K74 ["XLarge"]
      306 SETTABLEKS                       R6 R5 K61 ["offsetX"]
      308 SETTABLEKS                       R5 R4 K48 ["heroMedia"]
      310 DUPTABLE                         R5 K27 [{"tag"}]
      311 LOADK                            R6 K75 ["text-heading-medium"]
      312 SETTABLEKS                       R6 R5 K20 ["tag"]
      314 SETTABLEKS                       R5 R4 K7 ["titleText"]
      316 DUPTABLE                         R5 K27 [{"tag"}]
      317 LOADK                            R6 K66 ["text-body-medium"]
      318 SETTABLEKS                       R6 R5 K20 ["tag"]
      320 SETTABLEKS                       R5 R4 K9 ["contentText"]
      322 DUPTABLE                         R5 K27 [{"tag"}]
      323 GETUPVAL                         R8 0
      324 GETTABLEKS                       R7 R8 K44 ["FoundationDialogActionsUpdate"]
      326 JUMPIFNOT                        R7 ; [+2]
      327 LOADK                            R6 K76 ["padding-top-xlarge"]
      328 JUMP                             ; [+1]
      329 LOADK                            R6 K68 ["text-label-small"]
      330 SETTABLEKS                       R6 R5 K20 ["tag"]
      332 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      334 SETTABLE                         R4 R2 R3
      335 GETUPVAL                         R4 1
      336 GETTABLEKS                       R3 R4 K64 ["Large"]
      338 DUPTABLE                         R4 K49 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      339 DUPTABLE                         R5 K27 [{"tag"}]
      340 LOADK                            R6 K70 ["padding-xlarge"]
      341 SETTABLEKS                       R6 R5 K20 ["tag"]
      343 SETTABLEKS                       R5 R4 K1 ["shadow"]
      345 DUPTABLE                         R5 K27 [{"tag"}]
      346 GETUPVAL                         R8 0
      347 GETTABLEKS                       R7 R8 K51 ["FoundationDialogRootZIndex"]
      349 JUMPIFNOT                        R7 ; [+2]
      350 LOADNIL                          R6
      351 JUMP                             ; [+1]
      352 LOADK                            R6 K70 ["padding-xlarge"]
      353 SETTABLEKS                       R6 R5 K20 ["tag"]
      355 SETTABLEKS                       R5 R4 K2 ["container"]
      357 DUPTABLE                         R5 K53 [{"maxWidth", "tag"}]
      358 GETUPVAL                         R7 2
      359 GETUPVAL                         R9 1
      360 GETTABLEKS                       R8 R9 K64 ["Large"]
      362 GETTABLE                         R6 R7 R8
      363 SETTABLEKS                       R6 R5 K52 ["maxWidth"]
      365 LOADK                            R6 K71 ["radius-large"]
      366 SETTABLEKS                       R6 R5 K20 ["tag"]
      368 SETTABLEKS                       R5 R4 K3 ["inner"]
      370 DUPTABLE                         R5 K27 [{"tag"}]
      371 LOADK                            R7 K72 ["padding-x-xlarge %*"]
      372 GETUPVAL                         R11 0
      373 GETTABLEKS                       R10 R11 K31 ["FoundationDialogBodyUpdate"]
      375 JUMPIFNOT                        R10 ; [+2]
      376 LOADK                            R9 K33 [""]
      377 JUMP                             ; [+1]
      378 LOADK                            R9 K32 ["gap-xlarge"]
      379 NAMECALL                         R7 R7 K34 ["format"]
      381 CALL                             R7 2 1
      382 MOVE                             R6 R7
      383 SETTABLEKS                       R6 R5 K20 ["tag"]
      385 SETTABLEKS                       R5 R4 K4 ["body"]
      387 DUPTABLE                         R5 K58 [{"offset"}]
      388 GETTABLEKS                       R7 R0 K59 ["Size"]
      390 GETTABLEKS                       R6 R7 K73 ["Size_400"]
      392 SETTABLEKS                       R6 R5 K57 ["offset"]
      394 SETTABLEKS                       R5 R4 K47 ["closeAffordance"]
      396 DUPTABLE                         R5 K62 [{"tag", "offsetX"}]
      397 LOADK                            R6 K71 ["radius-large"]
      398 SETTABLEKS                       R6 R5 K20 ["tag"]
      400 GETTABLEKS                       R7 R0 K63 ["Padding"]
      402 GETTABLEKS                       R6 R7 K74 ["XLarge"]
      404 SETTABLEKS                       R6 R5 K61 ["offsetX"]
      406 SETTABLEKS                       R5 R4 K48 ["heroMedia"]
      408 DUPTABLE                         R5 K27 [{"tag"}]
      409 LOADK                            R6 K77 ["text-heading-large"]
      410 SETTABLEKS                       R6 R5 K20 ["tag"]
      412 SETTABLEKS                       R5 R4 K7 ["titleText"]
      414 DUPTABLE                         R5 K27 [{"tag"}]
      415 LOADK                            R6 K78 ["text-body-large"]
      416 SETTABLEKS                       R6 R5 K20 ["tag"]
      418 SETTABLEKS                       R5 R4 K9 ["contentText"]
      420 DUPTABLE                         R5 K27 [{"tag"}]
      421 GETUPVAL                         R8 0
      422 GETTABLEKS                       R7 R8 K44 ["FoundationDialogActionsUpdate"]
      424 JUMPIFNOT                        R7 ; [+2]
      425 LOADK                            R6 K76 ["padding-top-xlarge"]
      426 JUMP                             ; [+1]
      427 LOADK                            R6 K68 ["text-label-small"]
      428 SETTABLEKS                       R6 R5 K20 ["tag"]
      430 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      432 SETTABLE                         R4 R2 R3
      433 DUPTABLE                         R3 K81 [{"common", "size"}]
      434 SETTABLEKS                       R1 R3 K79 ["common"]
      436 SETTABLEKS                       R2 R3 K80 ["size"]
      438 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["useVariants"]
        5 LOADK                            R2 K1 ["Dialog"]
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R1 3 1
        9 GETUPVAL                         R2 3
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 4
       12 GETTABLEKS                       R4 R1 K2 ["common"]
       14 GETTABLEKS                       R6 R1 K3 ["size"]
       16 GETTABLEKS                       R7 R2 K4 ["responsiveSize"]
       18 GETTABLE                         R5 R6 R7
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["DialogSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Utility"]
       25 GETTABLEKS                       R4 R5 K11 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K12 ["Providers"]
       32 GETTABLEKS                       R6 R7 K13 ["Style"]
       34 GETTABLEKS                       R5 R6 K14 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Utility"]
       41 GETTABLEKS                       R6 R7 K15 ["Flags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K12 ["Providers"]
       48 GETTABLEKS                       R8 R9 K13 ["Style"]
       50 GETTABLEKS                       R7 R8 K16 ["useTokens"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K12 ["Providers"]
       57 GETTABLEKS                       R9 R10 K13 ["Style"]
       59 GETTABLEKS                       R8 R9 K17 ["VariantsContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETIMPORT                        R11 K1 [script]
       66 GETTABLEKS                       R10 R11 K18 ["Parent"]
       68 GETTABLEKS                       R9 R10 K19 ["useDialog"]
       70 CALL                             R8 1 1
       71 NEWTABLE                         R9 4 0
       73 GETTABLEKS                       R10 R2 K20 ["Small"]
       75 LOADN                            R11 64
       76 SETTABLE                         R11 R9 R10
       77 GETTABLEKS                       R10 R2 K21 ["Medium"]
       79 LOADN                            R11 224
       80 SETTABLE                         R11 R9 R10
       81 GETTABLEKS                       R10 R2 K22 ["Large"]
       83 LOADN                            R11 128
       84 SETTABLE                         R11 R9 R10
       85 DUPCLOSURE                       R10 K23 [PROTO_0]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R9
       89 DUPCLOSURE                       R11 K24 [PROTO_1]
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R3
       95 SETGLOBAL                        R11 K25 ["useDialogVariants"]
       97 DUPTABLE                         R11 K27 [{"useDialogVariants", "DIALOG_SIZES"}]
       98 GETGLOBAL                        R12 K25 ["useDialogVariants"]
      100 SETTABLEKS                       R12 R11 K25 ["useDialogVariants"]
      102 SETTABLEKS                       R9 R11 K26 ["DIALOG_SIZES"]
      104 RETURN                           R11 1
