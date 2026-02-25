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
       93 LOADK                            R3 K39 ["text-wrap text-align-x-left text-align-y-top auto-y size-full-0"]
       94 SETTABLEKS                       R3 R2 K20 ["tag"]
       96 SETTABLEKS                       R2 R1 K9 ["contentText"]
       98 DUPTABLE                         R2 K27 [{"tag"}]
       99 LOADK                            R3 K40 ["text-align-x-left text-wrap text-align-y-top auto-y size-full-0 text-body-small"]
      100 SETTABLEKS                       R3 R2 K20 ["tag"]
      102 SETTABLEKS                       R2 R1 K10 ["actionsLabel"]
      104 NEWTABLE                         R2 4 0
      106 GETUPVAL                         R4 1
      107 GETTABLEKS                       R3 R4 K41 ["Small"]
      109 DUPTABLE                         R4 K44 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      110 DUPTABLE                         R5 K27 [{"tag"}]
      111 LOADK                            R6 K45 ["padding-large"]
      112 SETTABLEKS                       R6 R5 K20 ["tag"]
      114 SETTABLEKS                       R5 R4 K1 ["shadow"]
      116 DUPTABLE                         R5 K27 [{"tag"}]
      117 GETUPVAL                         R8 0
      118 GETTABLEKS                       R7 R8 K46 ["FoundationDialogRootZIndex"]
      120 JUMPIFNOT                        R7 ; [+2]
      121 LOADNIL                          R6
      122 JUMP                             ; [+1]
      123 LOADK                            R6 K45 ["padding-large"]
      124 SETTABLEKS                       R6 R5 K20 ["tag"]
      126 SETTABLEKS                       R5 R4 K2 ["container"]
      128 DUPTABLE                         R5 K48 [{"maxWidth", "tag"}]
      129 GETUPVAL                         R7 2
      130 GETUPVAL                         R9 1
      131 GETTABLEKS                       R8 R9 K41 ["Small"]
      133 GETTABLE                         R6 R7 R8
      134 SETTABLEKS                       R6 R5 K47 ["maxWidth"]
      136 LOADK                            R6 K49 ["radius-medium"]
      137 SETTABLEKS                       R6 R5 K20 ["tag"]
      139 SETTABLEKS                       R5 R4 K3 ["inner"]
      141 DUPTABLE                         R5 K27 [{"tag"}]
      142 LOADK                            R7 K50 ["padding-x-large %*"]
      143 GETUPVAL                         R11 0
      144 GETTABLEKS                       R10 R11 K31 ["FoundationDialogBodyUpdate"]
      146 JUMPIFNOT                        R10 ; [+2]
      147 LOADK                            R9 K33 [""]
      148 JUMP                             ; [+1]
      149 LOADK                            R9 K51 ["gap-large"]
      150 NAMECALL                         R7 R7 K34 ["format"]
      152 CALL                             R7 2 1
      153 MOVE                             R6 R7
      154 SETTABLEKS                       R6 R5 K20 ["tag"]
      156 SETTABLEKS                       R5 R4 K4 ["body"]
      158 DUPTABLE                         R5 K53 [{"offset"}]
      159 GETTABLEKS                       R7 R0 K54 ["Size"]
      161 GETTABLEKS                       R6 R7 K55 ["Size_300"]
      163 SETTABLEKS                       R6 R5 K52 ["offset"]
      165 SETTABLEKS                       R5 R4 K42 ["closeAffordance"]
      167 DUPTABLE                         R5 K57 [{"tag", "offsetX"}]
      168 LOADK                            R6 K49 ["radius-medium"]
      169 SETTABLEKS                       R6 R5 K20 ["tag"]
      171 GETTABLEKS                       R7 R0 K58 ["Padding"]
      173 GETTABLEKS                       R6 R7 K59 ["Large"]
      175 SETTABLEKS                       R6 R5 K56 ["offsetX"]
      177 SETTABLEKS                       R5 R4 K43 ["heroMedia"]
      179 DUPTABLE                         R5 K27 [{"tag"}]
      180 LOADK                            R6 K60 ["text-heading-small"]
      181 SETTABLEKS                       R6 R5 K20 ["tag"]
      183 SETTABLEKS                       R5 R4 K7 ["titleText"]
      185 DUPTABLE                         R5 K27 [{"tag"}]
      186 LOADK                            R6 K61 ["text-body-medium"]
      187 SETTABLEKS                       R6 R5 K20 ["tag"]
      189 SETTABLEKS                       R5 R4 K9 ["contentText"]
      191 DUPTABLE                         R5 K27 [{"tag"}]
      192 LOADK                            R6 K62 ["padding-top-large"]
      193 SETTABLEKS                       R6 R5 K20 ["tag"]
      195 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      197 SETTABLE                         R4 R2 R3
      198 GETUPVAL                         R4 1
      199 GETTABLEKS                       R3 R4 K63 ["Medium"]
      201 DUPTABLE                         R4 K44 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      202 DUPTABLE                         R5 K27 [{"tag"}]
      203 LOADK                            R6 K64 ["padding-xlarge"]
      204 SETTABLEKS                       R6 R5 K20 ["tag"]
      206 SETTABLEKS                       R5 R4 K1 ["shadow"]
      208 DUPTABLE                         R5 K27 [{"tag"}]
      209 GETUPVAL                         R8 0
      210 GETTABLEKS                       R7 R8 K46 ["FoundationDialogRootZIndex"]
      212 JUMPIFNOT                        R7 ; [+2]
      213 LOADNIL                          R6
      214 JUMP                             ; [+1]
      215 LOADK                            R6 K64 ["padding-xlarge"]
      216 SETTABLEKS                       R6 R5 K20 ["tag"]
      218 SETTABLEKS                       R5 R4 K2 ["container"]
      220 DUPTABLE                         R5 K48 [{"maxWidth", "tag"}]
      221 GETUPVAL                         R7 2
      222 GETUPVAL                         R9 1
      223 GETTABLEKS                       R8 R9 K63 ["Medium"]
      225 GETTABLE                         R6 R7 R8
      226 SETTABLEKS                       R6 R5 K47 ["maxWidth"]
      228 LOADK                            R6 K65 ["radius-large"]
      229 SETTABLEKS                       R6 R5 K20 ["tag"]
      231 SETTABLEKS                       R5 R4 K3 ["inner"]
      233 DUPTABLE                         R5 K27 [{"tag"}]
      234 LOADK                            R7 K66 ["padding-x-xlarge %*"]
      235 GETUPVAL                         R11 0
      236 GETTABLEKS                       R10 R11 K31 ["FoundationDialogBodyUpdate"]
      238 JUMPIFNOT                        R10 ; [+2]
      239 LOADK                            R9 K33 [""]
      240 JUMP                             ; [+1]
      241 LOADK                            R9 K32 ["gap-xlarge"]
      242 NAMECALL                         R7 R7 K34 ["format"]
      244 CALL                             R7 2 1
      245 MOVE                             R6 R7
      246 SETTABLEKS                       R6 R5 K20 ["tag"]
      248 SETTABLEKS                       R5 R4 K4 ["body"]
      250 DUPTABLE                         R5 K53 [{"offset"}]
      251 GETTABLEKS                       R7 R0 K54 ["Size"]
      253 GETTABLEKS                       R6 R7 K67 ["Size_400"]
      255 SETTABLEKS                       R6 R5 K52 ["offset"]
      257 SETTABLEKS                       R5 R4 K42 ["closeAffordance"]
      259 DUPTABLE                         R5 K57 [{"tag", "offsetX"}]
      260 LOADK                            R6 K65 ["radius-large"]
      261 SETTABLEKS                       R6 R5 K20 ["tag"]
      263 GETTABLEKS                       R7 R0 K58 ["Padding"]
      265 GETTABLEKS                       R6 R7 K68 ["XLarge"]
      267 SETTABLEKS                       R6 R5 K56 ["offsetX"]
      269 SETTABLEKS                       R5 R4 K43 ["heroMedia"]
      271 DUPTABLE                         R5 K27 [{"tag"}]
      272 LOADK                            R6 K69 ["text-heading-medium"]
      273 SETTABLEKS                       R6 R5 K20 ["tag"]
      275 SETTABLEKS                       R5 R4 K7 ["titleText"]
      277 DUPTABLE                         R5 K27 [{"tag"}]
      278 LOADK                            R6 K61 ["text-body-medium"]
      279 SETTABLEKS                       R6 R5 K20 ["tag"]
      281 SETTABLEKS                       R5 R4 K9 ["contentText"]
      283 DUPTABLE                         R5 K27 [{"tag"}]
      284 LOADK                            R6 K70 ["padding-top-xlarge"]
      285 SETTABLEKS                       R6 R5 K20 ["tag"]
      287 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      289 SETTABLE                         R4 R2 R3
      290 GETUPVAL                         R4 1
      291 GETTABLEKS                       R3 R4 K59 ["Large"]
      293 DUPTABLE                         R4 K44 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      294 DUPTABLE                         R5 K27 [{"tag"}]
      295 LOADK                            R6 K64 ["padding-xlarge"]
      296 SETTABLEKS                       R6 R5 K20 ["tag"]
      298 SETTABLEKS                       R5 R4 K1 ["shadow"]
      300 DUPTABLE                         R5 K27 [{"tag"}]
      301 GETUPVAL                         R8 0
      302 GETTABLEKS                       R7 R8 K46 ["FoundationDialogRootZIndex"]
      304 JUMPIFNOT                        R7 ; [+2]
      305 LOADNIL                          R6
      306 JUMP                             ; [+1]
      307 LOADK                            R6 K64 ["padding-xlarge"]
      308 SETTABLEKS                       R6 R5 K20 ["tag"]
      310 SETTABLEKS                       R5 R4 K2 ["container"]
      312 DUPTABLE                         R5 K48 [{"maxWidth", "tag"}]
      313 GETUPVAL                         R7 2
      314 GETUPVAL                         R9 1
      315 GETTABLEKS                       R8 R9 K59 ["Large"]
      317 GETTABLE                         R6 R7 R8
      318 SETTABLEKS                       R6 R5 K47 ["maxWidth"]
      320 LOADK                            R6 K65 ["radius-large"]
      321 SETTABLEKS                       R6 R5 K20 ["tag"]
      323 SETTABLEKS                       R5 R4 K3 ["inner"]
      325 DUPTABLE                         R5 K27 [{"tag"}]
      326 LOADK                            R7 K66 ["padding-x-xlarge %*"]
      327 GETUPVAL                         R11 0
      328 GETTABLEKS                       R10 R11 K31 ["FoundationDialogBodyUpdate"]
      330 JUMPIFNOT                        R10 ; [+2]
      331 LOADK                            R9 K33 [""]
      332 JUMP                             ; [+1]
      333 LOADK                            R9 K32 ["gap-xlarge"]
      334 NAMECALL                         R7 R7 K34 ["format"]
      336 CALL                             R7 2 1
      337 MOVE                             R6 R7
      338 SETTABLEKS                       R6 R5 K20 ["tag"]
      340 SETTABLEKS                       R5 R4 K4 ["body"]
      342 DUPTABLE                         R5 K53 [{"offset"}]
      343 GETTABLEKS                       R7 R0 K54 ["Size"]
      345 GETTABLEKS                       R6 R7 K67 ["Size_400"]
      347 SETTABLEKS                       R6 R5 K52 ["offset"]
      349 SETTABLEKS                       R5 R4 K42 ["closeAffordance"]
      351 DUPTABLE                         R5 K57 [{"tag", "offsetX"}]
      352 LOADK                            R6 K65 ["radius-large"]
      353 SETTABLEKS                       R6 R5 K20 ["tag"]
      355 GETTABLEKS                       R7 R0 K58 ["Padding"]
      357 GETTABLEKS                       R6 R7 K68 ["XLarge"]
      359 SETTABLEKS                       R6 R5 K56 ["offsetX"]
      361 SETTABLEKS                       R5 R4 K43 ["heroMedia"]
      363 DUPTABLE                         R5 K27 [{"tag"}]
      364 LOADK                            R6 K71 ["text-heading-large"]
      365 SETTABLEKS                       R6 R5 K20 ["tag"]
      367 SETTABLEKS                       R5 R4 K7 ["titleText"]
      369 DUPTABLE                         R5 K27 [{"tag"}]
      370 LOADK                            R6 K72 ["text-body-large"]
      371 SETTABLEKS                       R6 R5 K20 ["tag"]
      373 SETTABLEKS                       R5 R4 K9 ["contentText"]
      375 DUPTABLE                         R5 K27 [{"tag"}]
      376 LOADK                            R6 K70 ["padding-top-xlarge"]
      377 SETTABLEKS                       R6 R5 K20 ["tag"]
      379 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      381 SETTABLE                         R4 R2 R3
      382 DUPTABLE                         R3 K75 [{"common", "size"}]
      383 SETTABLEKS                       R1 R3 K73 ["common"]
      385 SETTABLEKS                       R2 R3 K74 ["size"]
      387 RETURN                           R3 1

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
