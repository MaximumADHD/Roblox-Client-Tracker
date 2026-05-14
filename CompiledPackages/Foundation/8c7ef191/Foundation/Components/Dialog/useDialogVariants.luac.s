PROTO_0:
        0 DUPTABLE                         R1 K11 [{"backdrop", "shadow", "container", "inner", "body", "heroMediaWrapper", "title", "titleText", "content", "contentText", "actionsLabel"}]
        1 DUPTABLE                         R2 K13 [{"backgroundStyle"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K14 ["FoundationDialogBackdropColorUpdate"]
        5 JUMPIFNOT                        R4 ; [+7]
        6 GETTABLEKS                       R3 R0 K15 ["Color"]
        8 GETTABLEKS                       R3 R3 K16 ["Common"]
       10 GETTABLEKS                       R3 R3 K17 ["Backdrop"]
       12 JUMP                             ; [+6]
       13 GETTABLEKS                       R3 R0 K15 ["Color"]
       15 GETTABLEKS                       R3 R3 K18 ["OverMedia"]
       17 GETTABLEKS                       R3 R3 K19 ["OverMedia_200"]
       19 SETTABLEKS                       R3 R2 K12 ["backgroundStyle"]
       21 SETTABLEKS                       R2 R1 K0 ["backdrop"]
       23 DUPTABLE                         R2 K22 [{"tag", "imageStyle"}]
       24 LOADK                            R3 K23 ["auto-xy"]
       25 SETTABLEKS                       R3 R2 K20 ["tag"]
       27 GETTABLEKS                       R3 R0 K15 ["Color"]
       29 GETTABLEKS                       R3 R3 K24 ["Extended"]
       31 GETTABLEKS                       R3 R3 K25 ["Black"]
       33 GETTABLEKS                       R3 R3 K26 ["Black_15"]
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
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K31 ["FoundationDialogBodyUpdate"]
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
       69 LOADK                            R3 K35 ["auto-y size-full-full position-top-center shrink"]
       70 SETTABLEKS                       R3 R2 K20 ["tag"]
       72 SETTABLEKS                       R2 R1 K5 ["heroMediaWrapper"]
       74 DUPTABLE                         R2 K27 [{"tag"}]
       75 LOADK                            R3 K36 ["size-full-0 auto-y"]
       76 SETTABLEKS                       R3 R2 K20 ["tag"]
       78 SETTABLEKS                       R2 R1 K6 ["title"]
       80 DUPTABLE                         R2 K27 [{"tag"}]
       81 LOADK                            R3 K37 ["size-full-0 auto-y content-emphasized text-wrap text-align-x-left"]
       82 SETTABLEKS                       R3 R2 K20 ["tag"]
       84 SETTABLEKS                       R2 R1 K7 ["titleText"]
       86 DUPTABLE                         R2 K27 [{"tag"}]
       87 LOADK                            R3 K38 ["auto-y size-full fill"]
       88 SETTABLEKS                       R3 R2 K20 ["tag"]
       90 SETTABLEKS                       R2 R1 K8 ["content"]
       92 DUPTABLE                         R2 K27 [{"tag"}]
       93 LOADK                            R4 K39 ["text-wrap text-align-x-left text-align-y-top auto-y size-full-0 %*"]
       94 GETUPVAL                         R7 0
       95 GETTABLEKS                       R7 R7 K31 ["FoundationDialogBodyUpdate"]
       97 JUMPIFNOT                        R7 ; [+2]
       98 LOADK                            R6 K40 ["padding-right-xxlarge"]
       99 JUMP                             ; [+1]
      100 LOADK                            R6 K33 [""]
      101 NAMECALL                         R4 R4 K34 ["format"]
      103 CALL                             R4 2 1
      104 MOVE                             R3 R4
      105 SETTABLEKS                       R3 R2 K20 ["tag"]
      107 SETTABLEKS                       R2 R1 K9 ["contentText"]
      109 DUPTABLE                         R2 K27 [{"tag"}]
      110 LOADK                            R3 K41 ["text-align-x-left text-wrap text-align-y-top auto-y size-full-0 text-body-small"]
      111 SETTABLEKS                       R3 R2 K20 ["tag"]
      113 SETTABLEKS                       R2 R1 K10 ["actionsLabel"]
      115 NEWTABLE                         R2 4 0
      117 GETUPVAL                         R3 1
      118 GETTABLEKS                       R3 R3 K42 ["Small"]
      120 DUPTABLE                         R4 K45 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      121 DUPTABLE                         R5 K27 [{"tag"}]
      122 LOADK                            R6 K46 ["padding-large"]
      123 SETTABLEKS                       R6 R5 K20 ["tag"]
      125 SETTABLEKS                       R5 R4 K1 ["shadow"]
      127 DUPTABLE                         R5 K27 [{"tag"}]
      128 GETUPVAL                         R7 0
      129 GETTABLEKS                       R7 R7 K47 ["FoundationDialogRootZIndex"]
      131 JUMPIFNOT                        R7 ; [+2]
      132 LOADNIL                          R6
      133 JUMP                             ; [+1]
      134 LOADK                            R6 K46 ["padding-large"]
      135 SETTABLEKS                       R6 R5 K20 ["tag"]
      137 SETTABLEKS                       R5 R4 K2 ["container"]
      139 DUPTABLE                         R5 K49 [{"maxWidth", "tag"}]
      140 GETUPVAL                         R7 2
      141 GETUPVAL                         R8 1
      142 GETTABLEKS                       R8 R8 K42 ["Small"]
      144 GETTABLE                         R6 R7 R8
      145 SETTABLEKS                       R6 R5 K48 ["maxWidth"]
      147 LOADK                            R6 K50 ["radius-medium"]
      148 SETTABLEKS                       R6 R5 K20 ["tag"]
      150 SETTABLEKS                       R5 R4 K3 ["inner"]
      152 DUPTABLE                         R5 K27 [{"tag"}]
      153 LOADK                            R7 K51 ["padding-x-large %*"]
      154 GETUPVAL                         R10 0
      155 GETTABLEKS                       R10 R10 K31 ["FoundationDialogBodyUpdate"]
      157 JUMPIFNOT                        R10 ; [+2]
      158 LOADK                            R9 K33 [""]
      159 JUMP                             ; [+1]
      160 LOADK                            R9 K52 ["gap-large"]
      161 NAMECALL                         R7 R7 K34 ["format"]
      163 CALL                             R7 2 1
      164 MOVE                             R6 R7
      165 SETTABLEKS                       R6 R5 K20 ["tag"]
      167 SETTABLEKS                       R5 R4 K4 ["body"]
      169 DUPTABLE                         R5 K54 [{"offset"}]
      170 GETTABLEKS                       R6 R0 K55 ["Size"]
      172 GETTABLEKS                       R6 R6 K56 ["Size_300"]
      174 SETTABLEKS                       R6 R5 K53 ["offset"]
      176 SETTABLEKS                       R5 R4 K43 ["closeAffordance"]
      178 DUPTABLE                         R5 K58 [{"tag", "offsetX"}]
      179 LOADK                            R6 K50 ["radius-medium"]
      180 SETTABLEKS                       R6 R5 K20 ["tag"]
      182 GETTABLEKS                       R6 R0 K59 ["Padding"]
      184 GETTABLEKS                       R6 R6 K60 ["Large"]
      186 SETTABLEKS                       R6 R5 K57 ["offsetX"]
      188 SETTABLEKS                       R5 R4 K44 ["heroMedia"]
      190 DUPTABLE                         R5 K27 [{"tag"}]
      191 LOADK                            R6 K61 ["text-heading-small"]
      192 SETTABLEKS                       R6 R5 K20 ["tag"]
      194 SETTABLEKS                       R5 R4 K7 ["titleText"]
      196 DUPTABLE                         R5 K27 [{"tag"}]
      197 LOADK                            R6 K62 ["text-body-medium"]
      198 SETTABLEKS                       R6 R5 K20 ["tag"]
      200 SETTABLEKS                       R5 R4 K9 ["contentText"]
      202 DUPTABLE                         R5 K27 [{"tag"}]
      203 LOADK                            R6 K63 ["padding-top-large"]
      204 SETTABLEKS                       R6 R5 K20 ["tag"]
      206 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      208 SETTABLE                         R4 R2 R3
      209 GETUPVAL                         R3 1
      210 GETTABLEKS                       R3 R3 K64 ["Medium"]
      212 DUPTABLE                         R4 K45 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      213 DUPTABLE                         R5 K27 [{"tag"}]
      214 LOADK                            R6 K65 ["padding-xlarge"]
      215 SETTABLEKS                       R6 R5 K20 ["tag"]
      217 SETTABLEKS                       R5 R4 K1 ["shadow"]
      219 DUPTABLE                         R5 K27 [{"tag"}]
      220 GETUPVAL                         R7 0
      221 GETTABLEKS                       R7 R7 K47 ["FoundationDialogRootZIndex"]
      223 JUMPIFNOT                        R7 ; [+2]
      224 LOADNIL                          R6
      225 JUMP                             ; [+1]
      226 LOADK                            R6 K65 ["padding-xlarge"]
      227 SETTABLEKS                       R6 R5 K20 ["tag"]
      229 SETTABLEKS                       R5 R4 K2 ["container"]
      231 DUPTABLE                         R5 K49 [{"maxWidth", "tag"}]
      232 GETUPVAL                         R7 2
      233 GETUPVAL                         R8 1
      234 GETTABLEKS                       R8 R8 K64 ["Medium"]
      236 GETTABLE                         R6 R7 R8
      237 SETTABLEKS                       R6 R5 K48 ["maxWidth"]
      239 LOADK                            R6 K66 ["radius-large"]
      240 SETTABLEKS                       R6 R5 K20 ["tag"]
      242 SETTABLEKS                       R5 R4 K3 ["inner"]
      244 DUPTABLE                         R5 K27 [{"tag"}]
      245 LOADK                            R7 K67 ["padding-x-xlarge %*"]
      246 GETUPVAL                         R10 0
      247 GETTABLEKS                       R10 R10 K31 ["FoundationDialogBodyUpdate"]
      249 JUMPIFNOT                        R10 ; [+2]
      250 LOADK                            R9 K33 [""]
      251 JUMP                             ; [+1]
      252 LOADK                            R9 K32 ["gap-xlarge"]
      253 NAMECALL                         R7 R7 K34 ["format"]
      255 CALL                             R7 2 1
      256 MOVE                             R6 R7
      257 SETTABLEKS                       R6 R5 K20 ["tag"]
      259 SETTABLEKS                       R5 R4 K4 ["body"]
      261 DUPTABLE                         R5 K54 [{"offset"}]
      262 GETTABLEKS                       R6 R0 K55 ["Size"]
      264 GETTABLEKS                       R6 R6 K68 ["Size_400"]
      266 SETTABLEKS                       R6 R5 K53 ["offset"]
      268 SETTABLEKS                       R5 R4 K43 ["closeAffordance"]
      270 DUPTABLE                         R5 K58 [{"tag", "offsetX"}]
      271 LOADK                            R6 K66 ["radius-large"]
      272 SETTABLEKS                       R6 R5 K20 ["tag"]
      274 GETTABLEKS                       R6 R0 K59 ["Padding"]
      276 GETTABLEKS                       R6 R6 K69 ["XLarge"]
      278 SETTABLEKS                       R6 R5 K57 ["offsetX"]
      280 SETTABLEKS                       R5 R4 K44 ["heroMedia"]
      282 DUPTABLE                         R5 K27 [{"tag"}]
      283 LOADK                            R6 K70 ["text-heading-medium"]
      284 SETTABLEKS                       R6 R5 K20 ["tag"]
      286 SETTABLEKS                       R5 R4 K7 ["titleText"]
      288 DUPTABLE                         R5 K27 [{"tag"}]
      289 LOADK                            R6 K62 ["text-body-medium"]
      290 SETTABLEKS                       R6 R5 K20 ["tag"]
      292 SETTABLEKS                       R5 R4 K9 ["contentText"]
      294 DUPTABLE                         R5 K27 [{"tag"}]
      295 LOADK                            R6 K71 ["padding-top-xlarge"]
      296 SETTABLEKS                       R6 R5 K20 ["tag"]
      298 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      300 SETTABLE                         R4 R2 R3
      301 GETUPVAL                         R3 1
      302 GETTABLEKS                       R3 R3 K60 ["Large"]
      304 DUPTABLE                         R4 K45 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      305 DUPTABLE                         R5 K27 [{"tag"}]
      306 LOADK                            R6 K65 ["padding-xlarge"]
      307 SETTABLEKS                       R6 R5 K20 ["tag"]
      309 SETTABLEKS                       R5 R4 K1 ["shadow"]
      311 DUPTABLE                         R5 K27 [{"tag"}]
      312 GETUPVAL                         R7 0
      313 GETTABLEKS                       R7 R7 K47 ["FoundationDialogRootZIndex"]
      315 JUMPIFNOT                        R7 ; [+2]
      316 LOADNIL                          R6
      317 JUMP                             ; [+1]
      318 LOADK                            R6 K65 ["padding-xlarge"]
      319 SETTABLEKS                       R6 R5 K20 ["tag"]
      321 SETTABLEKS                       R5 R4 K2 ["container"]
      323 DUPTABLE                         R5 K49 [{"maxWidth", "tag"}]
      324 GETUPVAL                         R7 2
      325 GETUPVAL                         R8 1
      326 GETTABLEKS                       R8 R8 K60 ["Large"]
      328 GETTABLE                         R6 R7 R8
      329 SETTABLEKS                       R6 R5 K48 ["maxWidth"]
      331 LOADK                            R6 K66 ["radius-large"]
      332 SETTABLEKS                       R6 R5 K20 ["tag"]
      334 SETTABLEKS                       R5 R4 K3 ["inner"]
      336 DUPTABLE                         R5 K27 [{"tag"}]
      337 LOADK                            R7 K67 ["padding-x-xlarge %*"]
      338 GETUPVAL                         R10 0
      339 GETTABLEKS                       R10 R10 K31 ["FoundationDialogBodyUpdate"]
      341 JUMPIFNOT                        R10 ; [+2]
      342 LOADK                            R9 K33 [""]
      343 JUMP                             ; [+1]
      344 LOADK                            R9 K32 ["gap-xlarge"]
      345 NAMECALL                         R7 R7 K34 ["format"]
      347 CALL                             R7 2 1
      348 MOVE                             R6 R7
      349 SETTABLEKS                       R6 R5 K20 ["tag"]
      351 SETTABLEKS                       R5 R4 K4 ["body"]
      353 DUPTABLE                         R5 K54 [{"offset"}]
      354 GETTABLEKS                       R6 R0 K55 ["Size"]
      356 GETTABLEKS                       R6 R6 K68 ["Size_400"]
      358 SETTABLEKS                       R6 R5 K53 ["offset"]
      360 SETTABLEKS                       R5 R4 K43 ["closeAffordance"]
      362 DUPTABLE                         R5 K58 [{"tag", "offsetX"}]
      363 LOADK                            R6 K66 ["radius-large"]
      364 SETTABLEKS                       R6 R5 K20 ["tag"]
      366 GETTABLEKS                       R6 R0 K59 ["Padding"]
      368 GETTABLEKS                       R6 R6 K69 ["XLarge"]
      370 SETTABLEKS                       R6 R5 K57 ["offsetX"]
      372 SETTABLEKS                       R5 R4 K44 ["heroMedia"]
      374 DUPTABLE                         R5 K27 [{"tag"}]
      375 LOADK                            R6 K72 ["text-heading-large"]
      376 SETTABLEKS                       R6 R5 K20 ["tag"]
      378 SETTABLEKS                       R5 R4 K7 ["titleText"]
      380 DUPTABLE                         R5 K27 [{"tag"}]
      381 LOADK                            R6 K73 ["text-body-large"]
      382 SETTABLEKS                       R6 R5 K20 ["tag"]
      384 SETTABLEKS                       R5 R4 K9 ["contentText"]
      386 DUPTABLE                         R5 K27 [{"tag"}]
      387 LOADK                            R6 K71 ["padding-top-xlarge"]
      388 SETTABLEKS                       R6 R5 K20 ["tag"]
      390 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      392 SETTABLE                         R4 R2 R3
      393 DUPTABLE                         R3 K76 [{"common", "size"}]
      394 SETTABLEKS                       R1 R3 K74 ["common"]
      396 SETTABLEKS                       R2 R3 K75 ["size"]
      398 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useVariants"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["DialogSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Utility"]
       25 GETTABLEKS                       R4 R4 K11 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Providers"]
       32 GETTABLEKS                       R5 R5 K13 ["Style"]
       34 GETTABLEKS                       R5 R5 K14 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Utility"]
       41 GETTABLEKS                       R6 R6 K15 ["Flags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Providers"]
       48 GETTABLEKS                       R7 R7 K13 ["Style"]
       50 GETTABLEKS                       R7 R7 K16 ["useTokens"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Providers"]
       57 GETTABLEKS                       R8 R8 K13 ["Style"]
       59 GETTABLEKS                       R8 R8 K17 ["VariantsContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETIMPORT                        R9 K1 [script]
       66 GETTABLEKS                       R9 R9 K18 ["Parent"]
       68 GETTABLEKS                       R9 R9 K19 ["useDialog"]
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
