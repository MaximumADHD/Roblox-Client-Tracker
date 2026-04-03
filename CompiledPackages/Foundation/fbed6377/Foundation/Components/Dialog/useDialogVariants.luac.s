PROTO_0:
        0 DUPTABLE                         R1 K11 [{"backdrop", "shadow", "container", "inner", "body", "heroMediaWrapper", "title", "titleText", "content", "contentText", "actionsLabel"}]
        1 DUPTABLE                         R2 K13 [{"backgroundStyle"}]
        2 GETTABLEKS                       R5 R0 K14 ["Color"]
        4 GETTABLEKS                       R4 R5 K15 ["Common"]
        6 GETTABLEKS                       R3 R4 K16 ["Backdrop"]
        8 SETTABLEKS                       R3 R2 K12 ["backgroundStyle"]
       10 SETTABLEKS                       R2 R1 K0 ["backdrop"]
       12 DUPTABLE                         R2 K19 [{"tag", "imageStyle"}]
       13 LOADK                            R3 K20 ["auto-xy"]
       14 SETTABLEKS                       R3 R2 K17 ["tag"]
       16 GETTABLEKS                       R6 R0 K14 ["Color"]
       18 GETTABLEKS                       R5 R6 K21 ["Extended"]
       20 GETTABLEKS                       R4 R5 K22 ["Black"]
       22 GETTABLEKS                       R3 R4 K23 ["Black_15"]
       24 SETTABLEKS                       R3 R2 K18 ["imageStyle"]
       26 SETTABLEKS                       R2 R1 K1 ["shadow"]
       28 DUPTABLE                         R2 K24 [{"tag"}]
       29 LOADK                            R3 K25 ["size-full-full col align-x-center align-y-center"]
       30 SETTABLEKS                       R3 R2 K17 ["tag"]
       32 SETTABLEKS                       R2 R1 K2 ["container"]
       34 DUPTABLE                         R2 K24 [{"tag"}]
       35 LOADK                            R3 K26 ["size-full-0 auto-y shrink-1 bg-surface-100 clip"]
       36 SETTABLEKS                       R3 R2 K17 ["tag"]
       38 SETTABLEKS                       R2 R1 K3 ["inner"]
       40 DUPTABLE                         R2 K24 [{"tag"}]
       41 LOADK                            R4 K27 ["size-full auto-y col padding-bottom-xlarge %*"]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R7 R8 K28 ["FoundationDialogBodyUpdate"]
       45 JUMPIFNOT                        R7 ; [+2]
       46 LOADK                            R6 K29 ["gap-xlarge"]
       47 JUMP                             ; [+1]
       48 LOADK                            R6 K30 [""]
       49 NAMECALL                         R4 R4 K31 ["format"]
       51 CALL                             R4 2 1
       52 MOVE                             R3 R4
       53 SETTABLEKS                       R3 R2 K17 ["tag"]
       55 SETTABLEKS                       R2 R1 K4 ["body"]
       57 DUPTABLE                         R2 K24 [{"tag"}]
       58 LOADK                            R3 K32 ["auto-y size-full-full position-top-center shrink"]
       59 SETTABLEKS                       R3 R2 K17 ["tag"]
       61 SETTABLEKS                       R2 R1 K5 ["heroMediaWrapper"]
       63 DUPTABLE                         R2 K24 [{"tag"}]
       64 LOADK                            R3 K33 ["size-full-0 auto-y"]
       65 SETTABLEKS                       R3 R2 K17 ["tag"]
       67 SETTABLEKS                       R2 R1 K6 ["title"]
       69 DUPTABLE                         R2 K24 [{"tag"}]
       70 LOADK                            R4 K34 ["size-full-0 auto-y text-wrap text-align-x-left %*"]
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R7 R8 K35 ["FoundationDialogTitleEmphasisFix"]
       74 JUMPIFNOT                        R7 ; [+2]
       75 LOADK                            R6 K36 ["content-emphasis"]
       76 JUMP                             ; [+1]
       77 LOADK                            R6 K37 ["content-emphasized"]
       78 NAMECALL                         R4 R4 K31 ["format"]
       80 CALL                             R4 2 1
       81 MOVE                             R3 R4
       82 SETTABLEKS                       R3 R2 K17 ["tag"]
       84 SETTABLEKS                       R2 R1 K7 ["titleText"]
       86 DUPTABLE                         R2 K24 [{"tag"}]
       87 LOADK                            R3 K38 ["auto-y size-full fill"]
       88 SETTABLEKS                       R3 R2 K17 ["tag"]
       90 SETTABLEKS                       R2 R1 K8 ["content"]
       92 DUPTABLE                         R2 K24 [{"tag"}]
       93 LOADK                            R3 K39 ["text-wrap text-align-x-left text-align-y-top auto-y size-full-0"]
       94 SETTABLEKS                       R3 R2 K17 ["tag"]
       96 SETTABLEKS                       R2 R1 K9 ["contentText"]
       98 DUPTABLE                         R2 K24 [{"tag"}]
       99 LOADK                            R3 K40 ["text-align-x-left text-wrap text-align-y-top auto-y size-full-0 text-body-small"]
      100 SETTABLEKS                       R3 R2 K17 ["tag"]
      102 SETTABLEKS                       R2 R1 K10 ["actionsLabel"]
      104 NEWTABLE                         R2 4 0
      106 GETUPVAL                         R4 1
      107 GETTABLEKS                       R3 R4 K41 ["Small"]
      109 DUPTABLE                         R4 K44 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      110 DUPTABLE                         R5 K24 [{"tag"}]
      111 LOADK                            R6 K45 ["padding-large"]
      112 SETTABLEKS                       R6 R5 K17 ["tag"]
      114 SETTABLEKS                       R5 R4 K1 ["shadow"]
      116 DUPTABLE                         R5 K47 [{"maxWidth", "tag"}]
      117 GETUPVAL                         R7 2
      118 GETUPVAL                         R9 1
      119 GETTABLEKS                       R8 R9 K41 ["Small"]
      121 GETTABLE                         R6 R7 R8
      122 SETTABLEKS                       R6 R5 K46 ["maxWidth"]
      124 LOADK                            R6 K48 ["radius-medium"]
      125 SETTABLEKS                       R6 R5 K17 ["tag"]
      127 SETTABLEKS                       R5 R4 K3 ["inner"]
      129 DUPTABLE                         R5 K24 [{"tag"}]
      130 LOADK                            R7 K49 ["padding-x-large %*"]
      131 GETUPVAL                         R11 0
      132 GETTABLEKS                       R10 R11 K28 ["FoundationDialogBodyUpdate"]
      134 JUMPIFNOT                        R10 ; [+2]
      135 LOADK                            R9 K30 [""]
      136 JUMP                             ; [+1]
      137 LOADK                            R9 K50 ["gap-large"]
      138 NAMECALL                         R7 R7 K31 ["format"]
      140 CALL                             R7 2 1
      141 MOVE                             R6 R7
      142 SETTABLEKS                       R6 R5 K17 ["tag"]
      144 SETTABLEKS                       R5 R4 K4 ["body"]
      146 DUPTABLE                         R5 K52 [{"offset"}]
      147 GETTABLEKS                       R7 R0 K53 ["Size"]
      149 GETTABLEKS                       R6 R7 K54 ["Size_300"]
      151 SETTABLEKS                       R6 R5 K51 ["offset"]
      153 SETTABLEKS                       R5 R4 K42 ["closeAffordance"]
      155 DUPTABLE                         R5 K56 [{"tag", "offsetX"}]
      156 LOADK                            R6 K48 ["radius-medium"]
      157 SETTABLEKS                       R6 R5 K17 ["tag"]
      159 GETTABLEKS                       R7 R0 K57 ["Padding"]
      161 GETTABLEKS                       R6 R7 K58 ["Large"]
      163 SETTABLEKS                       R6 R5 K55 ["offsetX"]
      165 SETTABLEKS                       R5 R4 K43 ["heroMedia"]
      167 DUPTABLE                         R5 K24 [{"tag"}]
      168 LOADK                            R6 K59 ["text-heading-small"]
      169 SETTABLEKS                       R6 R5 K17 ["tag"]
      171 SETTABLEKS                       R5 R4 K7 ["titleText"]
      173 DUPTABLE                         R5 K24 [{"tag"}]
      174 LOADK                            R6 K60 ["text-body-medium"]
      175 SETTABLEKS                       R6 R5 K17 ["tag"]
      177 SETTABLEKS                       R5 R4 K9 ["contentText"]
      179 DUPTABLE                         R5 K24 [{"tag"}]
      180 LOADK                            R6 K61 ["padding-top-large"]
      181 SETTABLEKS                       R6 R5 K17 ["tag"]
      183 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      185 SETTABLE                         R4 R2 R3
      186 GETUPVAL                         R4 1
      187 GETTABLEKS                       R3 R4 K62 ["Medium"]
      189 DUPTABLE                         R4 K44 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      190 DUPTABLE                         R5 K24 [{"tag"}]
      191 LOADK                            R6 K63 ["padding-xlarge"]
      192 SETTABLEKS                       R6 R5 K17 ["tag"]
      194 SETTABLEKS                       R5 R4 K1 ["shadow"]
      196 DUPTABLE                         R5 K47 [{"maxWidth", "tag"}]
      197 GETUPVAL                         R7 2
      198 GETUPVAL                         R9 1
      199 GETTABLEKS                       R8 R9 K62 ["Medium"]
      201 GETTABLE                         R6 R7 R8
      202 SETTABLEKS                       R6 R5 K46 ["maxWidth"]
      204 LOADK                            R6 K64 ["radius-large"]
      205 SETTABLEKS                       R6 R5 K17 ["tag"]
      207 SETTABLEKS                       R5 R4 K3 ["inner"]
      209 DUPTABLE                         R5 K24 [{"tag"}]
      210 LOADK                            R7 K65 ["padding-x-xlarge %*"]
      211 GETUPVAL                         R11 0
      212 GETTABLEKS                       R10 R11 K28 ["FoundationDialogBodyUpdate"]
      214 JUMPIFNOT                        R10 ; [+2]
      215 LOADK                            R9 K30 [""]
      216 JUMP                             ; [+1]
      217 LOADK                            R9 K29 ["gap-xlarge"]
      218 NAMECALL                         R7 R7 K31 ["format"]
      220 CALL                             R7 2 1
      221 MOVE                             R6 R7
      222 SETTABLEKS                       R6 R5 K17 ["tag"]
      224 SETTABLEKS                       R5 R4 K4 ["body"]
      226 DUPTABLE                         R5 K52 [{"offset"}]
      227 GETTABLEKS                       R7 R0 K53 ["Size"]
      229 GETTABLEKS                       R6 R7 K66 ["Size_400"]
      231 SETTABLEKS                       R6 R5 K51 ["offset"]
      233 SETTABLEKS                       R5 R4 K42 ["closeAffordance"]
      235 DUPTABLE                         R5 K56 [{"tag", "offsetX"}]
      236 LOADK                            R6 K64 ["radius-large"]
      237 SETTABLEKS                       R6 R5 K17 ["tag"]
      239 GETTABLEKS                       R7 R0 K57 ["Padding"]
      241 GETTABLEKS                       R6 R7 K67 ["XLarge"]
      243 SETTABLEKS                       R6 R5 K55 ["offsetX"]
      245 SETTABLEKS                       R5 R4 K43 ["heroMedia"]
      247 DUPTABLE                         R5 K24 [{"tag"}]
      248 LOADK                            R6 K68 ["text-heading-medium"]
      249 SETTABLEKS                       R6 R5 K17 ["tag"]
      251 SETTABLEKS                       R5 R4 K7 ["titleText"]
      253 DUPTABLE                         R5 K24 [{"tag"}]
      254 LOADK                            R6 K60 ["text-body-medium"]
      255 SETTABLEKS                       R6 R5 K17 ["tag"]
      257 SETTABLEKS                       R5 R4 K9 ["contentText"]
      259 DUPTABLE                         R5 K24 [{"tag"}]
      260 LOADK                            R6 K69 ["padding-top-xlarge"]
      261 SETTABLEKS                       R6 R5 K17 ["tag"]
      263 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      265 SETTABLE                         R4 R2 R3
      266 GETUPVAL                         R4 1
      267 GETTABLEKS                       R3 R4 K58 ["Large"]
      269 DUPTABLE                         R4 K44 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      270 DUPTABLE                         R5 K24 [{"tag"}]
      271 LOADK                            R6 K63 ["padding-xlarge"]
      272 SETTABLEKS                       R6 R5 K17 ["tag"]
      274 SETTABLEKS                       R5 R4 K1 ["shadow"]
      276 DUPTABLE                         R5 K47 [{"maxWidth", "tag"}]
      277 GETUPVAL                         R7 2
      278 GETUPVAL                         R9 1
      279 GETTABLEKS                       R8 R9 K58 ["Large"]
      281 GETTABLE                         R6 R7 R8
      282 SETTABLEKS                       R6 R5 K46 ["maxWidth"]
      284 LOADK                            R6 K64 ["radius-large"]
      285 SETTABLEKS                       R6 R5 K17 ["tag"]
      287 SETTABLEKS                       R5 R4 K3 ["inner"]
      289 DUPTABLE                         R5 K24 [{"tag"}]
      290 LOADK                            R7 K65 ["padding-x-xlarge %*"]
      291 GETUPVAL                         R11 0
      292 GETTABLEKS                       R10 R11 K28 ["FoundationDialogBodyUpdate"]
      294 JUMPIFNOT                        R10 ; [+2]
      295 LOADK                            R9 K30 [""]
      296 JUMP                             ; [+1]
      297 LOADK                            R9 K29 ["gap-xlarge"]
      298 NAMECALL                         R7 R7 K31 ["format"]
      300 CALL                             R7 2 1
      301 MOVE                             R6 R7
      302 SETTABLEKS                       R6 R5 K17 ["tag"]
      304 SETTABLEKS                       R5 R4 K4 ["body"]
      306 DUPTABLE                         R5 K52 [{"offset"}]
      307 GETTABLEKS                       R7 R0 K53 ["Size"]
      309 GETTABLEKS                       R6 R7 K66 ["Size_400"]
      311 SETTABLEKS                       R6 R5 K51 ["offset"]
      313 SETTABLEKS                       R5 R4 K42 ["closeAffordance"]
      315 DUPTABLE                         R5 K56 [{"tag", "offsetX"}]
      316 LOADK                            R6 K64 ["radius-large"]
      317 SETTABLEKS                       R6 R5 K17 ["tag"]
      319 GETTABLEKS                       R7 R0 K57 ["Padding"]
      321 GETTABLEKS                       R6 R7 K67 ["XLarge"]
      323 SETTABLEKS                       R6 R5 K55 ["offsetX"]
      325 SETTABLEKS                       R5 R4 K43 ["heroMedia"]
      327 DUPTABLE                         R5 K24 [{"tag"}]
      328 LOADK                            R6 K70 ["text-heading-large"]
      329 SETTABLEKS                       R6 R5 K17 ["tag"]
      331 SETTABLEKS                       R5 R4 K7 ["titleText"]
      333 DUPTABLE                         R5 K24 [{"tag"}]
      334 LOADK                            R6 K71 ["text-body-large"]
      335 SETTABLEKS                       R6 R5 K17 ["tag"]
      337 SETTABLEKS                       R5 R4 K9 ["contentText"]
      339 DUPTABLE                         R5 K24 [{"tag"}]
      340 LOADK                            R6 K69 ["padding-top-xlarge"]
      341 SETTABLEKS                       R6 R5 K17 ["tag"]
      343 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      345 SETTABLE                         R4 R2 R3
      346 DUPTABLE                         R3 K74 [{"common", "size"}]
      347 SETTABLEKS                       R1 R3 K72 ["common"]
      349 SETTABLEKS                       R2 R3 K73 ["size"]
      351 RETURN                           R3 1

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
