PROTO_0:
        0 DUPTABLE                         R1 K11 [{"backdrop", "shadow", "container", "inner", "body", "heroMediaWrapper", "title", "titleText", "content", "contentText", "actionsLabel"}]
        1 DUPTABLE                         R2 K13 [{"backgroundStyle"}]
        2 GETTABLEKS                       R3 R0 K14 ["Color"]
        4 GETTABLEKS                       R3 R3 K15 ["Common"]
        6 GETTABLEKS                       R3 R3 K16 ["Backdrop"]
        8 SETTABLEKS                       R3 R2 K12 ["backgroundStyle"]
       10 SETTABLEKS                       R2 R1 K0 ["backdrop"]
       12 DUPTABLE                         R2 K19 [{"tag", "imageStyle"}]
       13 LOADK                            R3 K20 ["auto-xy"]
       14 SETTABLEKS                       R3 R2 K17 ["tag"]
       16 GETTABLEKS                       R3 R0 K14 ["Color"]
       18 GETTABLEKS                       R3 R3 K21 ["Extended"]
       20 GETTABLEKS                       R3 R3 K22 ["Black"]
       22 GETTABLEKS                       R3 R3 K23 ["Black_15"]
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
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K28 ["FoundationDialogBodyUpdate"]
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
       70 LOADK                            R3 K34 ["size-full-0 auto-y content-emphasized text-wrap text-align-x-left"]
       71 SETTABLEKS                       R3 R2 K17 ["tag"]
       73 SETTABLEKS                       R2 R1 K7 ["titleText"]
       75 DUPTABLE                         R2 K24 [{"tag"}]
       76 LOADK                            R3 K35 ["auto-y size-full fill"]
       77 SETTABLEKS                       R3 R2 K17 ["tag"]
       79 SETTABLEKS                       R2 R1 K8 ["content"]
       81 DUPTABLE                         R2 K24 [{"tag"}]
       82 LOADK                            R3 K36 ["text-wrap text-align-x-left text-align-y-top auto-y size-full-0"]
       83 SETTABLEKS                       R3 R2 K17 ["tag"]
       85 SETTABLEKS                       R2 R1 K9 ["contentText"]
       87 DUPTABLE                         R2 K24 [{"tag"}]
       88 LOADK                            R3 K37 ["text-align-x-left text-wrap text-align-y-top auto-y size-full-0 text-body-small"]
       89 SETTABLEKS                       R3 R2 K17 ["tag"]
       91 SETTABLEKS                       R2 R1 K10 ["actionsLabel"]
       93 NEWTABLE                         R2 4 0
       95 GETUPVAL                         R3 1
       96 GETTABLEKS                       R3 R3 K38 ["Small"]
       98 DUPTABLE                         R4 K41 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
       99 DUPTABLE                         R5 K24 [{"tag"}]
      100 LOADK                            R6 K42 ["padding-large"]
      101 SETTABLEKS                       R6 R5 K17 ["tag"]
      103 SETTABLEKS                       R5 R4 K1 ["shadow"]
      105 DUPTABLE                         R5 K44 [{"maxWidth", "tag"}]
      106 GETUPVAL                         R7 2
      107 GETUPVAL                         R8 1
      108 GETTABLEKS                       R8 R8 K38 ["Small"]
      110 GETTABLE                         R6 R7 R8
      111 SETTABLEKS                       R6 R5 K43 ["maxWidth"]
      113 LOADK                            R6 K45 ["radius-medium"]
      114 SETTABLEKS                       R6 R5 K17 ["tag"]
      116 SETTABLEKS                       R5 R4 K3 ["inner"]
      118 DUPTABLE                         R5 K24 [{"tag"}]
      119 LOADK                            R7 K46 ["padding-x-large %*"]
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R10 R10 K28 ["FoundationDialogBodyUpdate"]
      123 JUMPIFNOT                        R10 ; [+2]
      124 LOADK                            R9 K30 [""]
      125 JUMP                             ; [+1]
      126 LOADK                            R9 K47 ["gap-large"]
      127 NAMECALL                         R7 R7 K31 ["format"]
      129 CALL                             R7 2 1
      130 MOVE                             R6 R7
      131 SETTABLEKS                       R6 R5 K17 ["tag"]
      133 SETTABLEKS                       R5 R4 K4 ["body"]
      135 DUPTABLE                         R5 K49 [{"offset"}]
      136 GETTABLEKS                       R6 R0 K50 ["Size"]
      138 GETTABLEKS                       R6 R6 K51 ["Size_300"]
      140 SETTABLEKS                       R6 R5 K48 ["offset"]
      142 SETTABLEKS                       R5 R4 K39 ["closeAffordance"]
      144 DUPTABLE                         R5 K53 [{"tag", "offsetX"}]
      145 LOADK                            R6 K45 ["radius-medium"]
      146 SETTABLEKS                       R6 R5 K17 ["tag"]
      148 GETTABLEKS                       R6 R0 K54 ["Padding"]
      150 GETTABLEKS                       R6 R6 K55 ["Large"]
      152 SETTABLEKS                       R6 R5 K52 ["offsetX"]
      154 SETTABLEKS                       R5 R4 K40 ["heroMedia"]
      156 DUPTABLE                         R5 K24 [{"tag"}]
      157 LOADK                            R6 K56 ["text-heading-small"]
      158 SETTABLEKS                       R6 R5 K17 ["tag"]
      160 SETTABLEKS                       R5 R4 K7 ["titleText"]
      162 DUPTABLE                         R5 K24 [{"tag"}]
      163 LOADK                            R6 K57 ["text-body-medium"]
      164 SETTABLEKS                       R6 R5 K17 ["tag"]
      166 SETTABLEKS                       R5 R4 K9 ["contentText"]
      168 DUPTABLE                         R5 K24 [{"tag"}]
      169 LOADK                            R6 K58 ["padding-top-large"]
      170 SETTABLEKS                       R6 R5 K17 ["tag"]
      172 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      174 SETTABLE                         R4 R2 R3
      175 GETUPVAL                         R3 1
      176 GETTABLEKS                       R3 R3 K59 ["Medium"]
      178 DUPTABLE                         R4 K41 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      179 DUPTABLE                         R5 K24 [{"tag"}]
      180 LOADK                            R6 K60 ["padding-xlarge"]
      181 SETTABLEKS                       R6 R5 K17 ["tag"]
      183 SETTABLEKS                       R5 R4 K1 ["shadow"]
      185 DUPTABLE                         R5 K44 [{"maxWidth", "tag"}]
      186 GETUPVAL                         R7 2
      187 GETUPVAL                         R8 1
      188 GETTABLEKS                       R8 R8 K59 ["Medium"]
      190 GETTABLE                         R6 R7 R8
      191 SETTABLEKS                       R6 R5 K43 ["maxWidth"]
      193 LOADK                            R6 K61 ["radius-large"]
      194 SETTABLEKS                       R6 R5 K17 ["tag"]
      196 SETTABLEKS                       R5 R4 K3 ["inner"]
      198 DUPTABLE                         R5 K24 [{"tag"}]
      199 LOADK                            R7 K62 ["padding-x-xlarge %*"]
      200 GETUPVAL                         R10 0
      201 GETTABLEKS                       R10 R10 K28 ["FoundationDialogBodyUpdate"]
      203 JUMPIFNOT                        R10 ; [+2]
      204 LOADK                            R9 K30 [""]
      205 JUMP                             ; [+1]
      206 LOADK                            R9 K29 ["gap-xlarge"]
      207 NAMECALL                         R7 R7 K31 ["format"]
      209 CALL                             R7 2 1
      210 MOVE                             R6 R7
      211 SETTABLEKS                       R6 R5 K17 ["tag"]
      213 SETTABLEKS                       R5 R4 K4 ["body"]
      215 DUPTABLE                         R5 K49 [{"offset"}]
      216 GETTABLEKS                       R6 R0 K50 ["Size"]
      218 GETTABLEKS                       R6 R6 K63 ["Size_400"]
      220 SETTABLEKS                       R6 R5 K48 ["offset"]
      222 SETTABLEKS                       R5 R4 K39 ["closeAffordance"]
      224 DUPTABLE                         R5 K53 [{"tag", "offsetX"}]
      225 LOADK                            R6 K61 ["radius-large"]
      226 SETTABLEKS                       R6 R5 K17 ["tag"]
      228 GETTABLEKS                       R6 R0 K54 ["Padding"]
      230 GETTABLEKS                       R6 R6 K64 ["XLarge"]
      232 SETTABLEKS                       R6 R5 K52 ["offsetX"]
      234 SETTABLEKS                       R5 R4 K40 ["heroMedia"]
      236 DUPTABLE                         R5 K24 [{"tag"}]
      237 LOADK                            R6 K65 ["text-heading-medium"]
      238 SETTABLEKS                       R6 R5 K17 ["tag"]
      240 SETTABLEKS                       R5 R4 K7 ["titleText"]
      242 DUPTABLE                         R5 K24 [{"tag"}]
      243 LOADK                            R6 K57 ["text-body-medium"]
      244 SETTABLEKS                       R6 R5 K17 ["tag"]
      246 SETTABLEKS                       R5 R4 K9 ["contentText"]
      248 DUPTABLE                         R5 K24 [{"tag"}]
      249 LOADK                            R6 K66 ["padding-top-xlarge"]
      250 SETTABLEKS                       R6 R5 K17 ["tag"]
      252 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      254 SETTABLE                         R4 R2 R3
      255 GETUPVAL                         R3 1
      256 GETTABLEKS                       R3 R3 K55 ["Large"]
      258 DUPTABLE                         R4 K41 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      259 DUPTABLE                         R5 K24 [{"tag"}]
      260 LOADK                            R6 K60 ["padding-xlarge"]
      261 SETTABLEKS                       R6 R5 K17 ["tag"]
      263 SETTABLEKS                       R5 R4 K1 ["shadow"]
      265 DUPTABLE                         R5 K44 [{"maxWidth", "tag"}]
      266 GETUPVAL                         R7 2
      267 GETUPVAL                         R8 1
      268 GETTABLEKS                       R8 R8 K55 ["Large"]
      270 GETTABLE                         R6 R7 R8
      271 SETTABLEKS                       R6 R5 K43 ["maxWidth"]
      273 LOADK                            R6 K61 ["radius-large"]
      274 SETTABLEKS                       R6 R5 K17 ["tag"]
      276 SETTABLEKS                       R5 R4 K3 ["inner"]
      278 DUPTABLE                         R5 K24 [{"tag"}]
      279 LOADK                            R7 K62 ["padding-x-xlarge %*"]
      280 GETUPVAL                         R10 0
      281 GETTABLEKS                       R10 R10 K28 ["FoundationDialogBodyUpdate"]
      283 JUMPIFNOT                        R10 ; [+2]
      284 LOADK                            R9 K30 [""]
      285 JUMP                             ; [+1]
      286 LOADK                            R9 K29 ["gap-xlarge"]
      287 NAMECALL                         R7 R7 K31 ["format"]
      289 CALL                             R7 2 1
      290 MOVE                             R6 R7
      291 SETTABLEKS                       R6 R5 K17 ["tag"]
      293 SETTABLEKS                       R5 R4 K4 ["body"]
      295 DUPTABLE                         R5 K49 [{"offset"}]
      296 GETTABLEKS                       R6 R0 K50 ["Size"]
      298 GETTABLEKS                       R6 R6 K63 ["Size_400"]
      300 SETTABLEKS                       R6 R5 K48 ["offset"]
      302 SETTABLEKS                       R5 R4 K39 ["closeAffordance"]
      304 DUPTABLE                         R5 K53 [{"tag", "offsetX"}]
      305 LOADK                            R6 K61 ["radius-large"]
      306 SETTABLEKS                       R6 R5 K17 ["tag"]
      308 GETTABLEKS                       R6 R0 K54 ["Padding"]
      310 GETTABLEKS                       R6 R6 K64 ["XLarge"]
      312 SETTABLEKS                       R6 R5 K52 ["offsetX"]
      314 SETTABLEKS                       R5 R4 K40 ["heroMedia"]
      316 DUPTABLE                         R5 K24 [{"tag"}]
      317 LOADK                            R6 K67 ["text-heading-large"]
      318 SETTABLEKS                       R6 R5 K17 ["tag"]
      320 SETTABLEKS                       R5 R4 K7 ["titleText"]
      322 DUPTABLE                         R5 K24 [{"tag"}]
      323 LOADK                            R6 K68 ["text-body-large"]
      324 SETTABLEKS                       R6 R5 K17 ["tag"]
      326 SETTABLEKS                       R5 R4 K9 ["contentText"]
      328 DUPTABLE                         R5 K24 [{"tag"}]
      329 LOADK                            R6 K66 ["padding-top-xlarge"]
      330 SETTABLEKS                       R6 R5 K17 ["tag"]
      332 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      334 SETTABLE                         R4 R2 R3
      335 DUPTABLE                         R3 K71 [{"common", "size"}]
      336 SETTABLEKS                       R1 R3 K69 ["common"]
      338 SETTABLEKS                       R2 R3 K70 ["size"]
      340 RETURN                           R3 1

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
