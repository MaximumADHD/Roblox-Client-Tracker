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
       29 LOADK                            R3 K25 ["col align-x-center align-y-center size-full-full"]
       30 SETTABLEKS                       R3 R2 K17 ["tag"]
       32 SETTABLEKS                       R2 R1 K2 ["container"]
       34 DUPTABLE                         R2 K24 [{"tag"}]
       35 LOADK                            R3 K26 ["shrink-1 size-full-0 auto-y clip bg-surface-100"]
       36 SETTABLEKS                       R3 R2 K17 ["tag"]
       38 SETTABLEKS                       R2 R1 K3 ["inner"]
       40 DUPTABLE                         R2 K24 [{"tag"}]
       41 LOADK                            R3 K27 ["col size-full auto-y padding-bottom-xlarge"]
       42 SETTABLEKS                       R3 R2 K17 ["tag"]
       44 SETTABLEKS                       R2 R1 K4 ["body"]
       46 DUPTABLE                         R2 K24 [{"tag"}]
       47 LOADK                            R3 K28 ["shrink position-top-center size-full-full auto-y"]
       48 SETTABLEKS                       R3 R2 K17 ["tag"]
       50 SETTABLEKS                       R2 R1 K5 ["heroMediaWrapper"]
       52 DUPTABLE                         R2 K24 [{"tag"}]
       53 LOADK                            R3 K29 ["size-full-0 auto-y"]
       54 SETTABLEKS                       R3 R2 K17 ["tag"]
       56 SETTABLEKS                       R2 R1 K6 ["title"]
       58 DUPTABLE                         R2 K24 [{"tag"}]
       59 LOADK                            R4 K30 ["size-full-0 auto-y text-wrap text-align-x-left %*"]
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R7 R7 K31 ["FoundationDialogTitleEmphasisFix"]
       63 JUMPIFNOT                        R7 ; [+2]
       64 LOADK                            R6 K32 ["content-emphasis"]
       65 JUMP                             ; [+1]
       66 LOADK                            R6 K33 ["content-emphasized"]
       67 NAMECALL                         R4 R4 K34 ["format"]
       69 CALL                             R4 2 1
       70 MOVE                             R3 R4
       71 SETTABLEKS                       R3 R2 K17 ["tag"]
       73 SETTABLEKS                       R2 R1 K7 ["titleText"]
       75 DUPTABLE                         R2 K24 [{"tag"}]
       76 LOADK                            R3 K35 ["fill size-full auto-y"]
       77 SETTABLEKS                       R3 R2 K17 ["tag"]
       79 SETTABLEKS                       R2 R1 K8 ["content"]
       81 DUPTABLE                         R2 K24 [{"tag"}]
       82 LOADK                            R3 K36 ["size-full-0 auto-y text-wrap text-align-x-left text-align-y-top"]
       83 SETTABLEKS                       R3 R2 K17 ["tag"]
       85 SETTABLEKS                       R2 R1 K9 ["contentText"]
       87 DUPTABLE                         R2 K24 [{"tag"}]
       88 LOADK                            R3 K37 ["size-full-0 auto-y text-body-small text-wrap text-align-x-left text-align-y-top"]
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
      119 LOADK                            R6 K46 ["gap-large padding-x-large"]
      120 SETTABLEKS                       R6 R5 K17 ["tag"]
      122 SETTABLEKS                       R5 R4 K4 ["body"]
      124 DUPTABLE                         R5 K48 [{"offset"}]
      125 GETTABLEKS                       R6 R0 K49 ["Size"]
      127 GETTABLEKS                       R6 R6 K50 ["Size_300"]
      129 SETTABLEKS                       R6 R5 K47 ["offset"]
      131 SETTABLEKS                       R5 R4 K39 ["closeAffordance"]
      133 DUPTABLE                         R5 K52 [{"tag", "offsetX"}]
      134 LOADK                            R6 K45 ["radius-medium"]
      135 SETTABLEKS                       R6 R5 K17 ["tag"]
      137 GETTABLEKS                       R6 R0 K53 ["Padding"]
      139 GETTABLEKS                       R6 R6 K54 ["Large"]
      141 SETTABLEKS                       R6 R5 K51 ["offsetX"]
      143 SETTABLEKS                       R5 R4 K40 ["heroMedia"]
      145 DUPTABLE                         R5 K24 [{"tag"}]
      146 LOADK                            R6 K55 ["text-heading-small"]
      147 SETTABLEKS                       R6 R5 K17 ["tag"]
      149 SETTABLEKS                       R5 R4 K7 ["titleText"]
      151 DUPTABLE                         R5 K24 [{"tag"}]
      152 LOADK                            R6 K56 ["text-body-medium"]
      153 SETTABLEKS                       R6 R5 K17 ["tag"]
      155 SETTABLEKS                       R5 R4 K9 ["contentText"]
      157 DUPTABLE                         R5 K24 [{"tag"}]
      158 LOADK                            R6 K57 ["padding-top-large"]
      159 SETTABLEKS                       R6 R5 K17 ["tag"]
      161 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      163 SETTABLE                         R4 R2 R3
      164 GETUPVAL                         R3 1
      165 GETTABLEKS                       R3 R3 K58 ["Medium"]
      167 DUPTABLE                         R4 K41 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      168 DUPTABLE                         R5 K24 [{"tag"}]
      169 LOADK                            R6 K59 ["padding-xlarge"]
      170 SETTABLEKS                       R6 R5 K17 ["tag"]
      172 SETTABLEKS                       R5 R4 K1 ["shadow"]
      174 DUPTABLE                         R5 K44 [{"maxWidth", "tag"}]
      175 GETUPVAL                         R7 2
      176 GETUPVAL                         R8 1
      177 GETTABLEKS                       R8 R8 K58 ["Medium"]
      179 GETTABLE                         R6 R7 R8
      180 SETTABLEKS                       R6 R5 K43 ["maxWidth"]
      182 LOADK                            R6 K60 ["radius-large"]
      183 SETTABLEKS                       R6 R5 K17 ["tag"]
      185 SETTABLEKS                       R5 R4 K3 ["inner"]
      187 DUPTABLE                         R5 K24 [{"tag"}]
      188 LOADK                            R6 K61 ["gap-xlarge padding-x-xlarge"]
      189 SETTABLEKS                       R6 R5 K17 ["tag"]
      191 SETTABLEKS                       R5 R4 K4 ["body"]
      193 DUPTABLE                         R5 K48 [{"offset"}]
      194 GETTABLEKS                       R6 R0 K49 ["Size"]
      196 GETTABLEKS                       R6 R6 K62 ["Size_400"]
      198 SETTABLEKS                       R6 R5 K47 ["offset"]
      200 SETTABLEKS                       R5 R4 K39 ["closeAffordance"]
      202 DUPTABLE                         R5 K52 [{"tag", "offsetX"}]
      203 LOADK                            R6 K60 ["radius-large"]
      204 SETTABLEKS                       R6 R5 K17 ["tag"]
      206 GETTABLEKS                       R6 R0 K53 ["Padding"]
      208 GETTABLEKS                       R6 R6 K63 ["XLarge"]
      210 SETTABLEKS                       R6 R5 K51 ["offsetX"]
      212 SETTABLEKS                       R5 R4 K40 ["heroMedia"]
      214 DUPTABLE                         R5 K24 [{"tag"}]
      215 LOADK                            R6 K64 ["text-heading-medium"]
      216 SETTABLEKS                       R6 R5 K17 ["tag"]
      218 SETTABLEKS                       R5 R4 K7 ["titleText"]
      220 DUPTABLE                         R5 K24 [{"tag"}]
      221 LOADK                            R6 K56 ["text-body-medium"]
      222 SETTABLEKS                       R6 R5 K17 ["tag"]
      224 SETTABLEKS                       R5 R4 K9 ["contentText"]
      226 DUPTABLE                         R5 K24 [{"tag"}]
      227 LOADK                            R6 K65 ["padding-top-xlarge"]
      228 SETTABLEKS                       R6 R5 K17 ["tag"]
      230 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      232 SETTABLE                         R4 R2 R3
      233 GETUPVAL                         R3 1
      234 GETTABLEKS                       R3 R3 K54 ["Large"]
      236 DUPTABLE                         R4 K41 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      237 DUPTABLE                         R5 K24 [{"tag"}]
      238 LOADK                            R6 K59 ["padding-xlarge"]
      239 SETTABLEKS                       R6 R5 K17 ["tag"]
      241 SETTABLEKS                       R5 R4 K1 ["shadow"]
      243 DUPTABLE                         R5 K44 [{"maxWidth", "tag"}]
      244 GETUPVAL                         R7 2
      245 GETUPVAL                         R8 1
      246 GETTABLEKS                       R8 R8 K54 ["Large"]
      248 GETTABLE                         R6 R7 R8
      249 SETTABLEKS                       R6 R5 K43 ["maxWidth"]
      251 LOADK                            R6 K60 ["radius-large"]
      252 SETTABLEKS                       R6 R5 K17 ["tag"]
      254 SETTABLEKS                       R5 R4 K3 ["inner"]
      256 DUPTABLE                         R5 K24 [{"tag"}]
      257 LOADK                            R6 K61 ["gap-xlarge padding-x-xlarge"]
      258 SETTABLEKS                       R6 R5 K17 ["tag"]
      260 SETTABLEKS                       R5 R4 K4 ["body"]
      262 DUPTABLE                         R5 K48 [{"offset"}]
      263 GETTABLEKS                       R6 R0 K49 ["Size"]
      265 GETTABLEKS                       R6 R6 K62 ["Size_400"]
      267 SETTABLEKS                       R6 R5 K47 ["offset"]
      269 SETTABLEKS                       R5 R4 K39 ["closeAffordance"]
      271 DUPTABLE                         R5 K52 [{"tag", "offsetX"}]
      272 LOADK                            R6 K60 ["radius-large"]
      273 SETTABLEKS                       R6 R5 K17 ["tag"]
      275 GETTABLEKS                       R6 R0 K53 ["Padding"]
      277 GETTABLEKS                       R6 R6 K63 ["XLarge"]
      279 SETTABLEKS                       R6 R5 K51 ["offsetX"]
      281 SETTABLEKS                       R5 R4 K40 ["heroMedia"]
      283 DUPTABLE                         R5 K24 [{"tag"}]
      284 LOADK                            R6 K66 ["text-heading-large"]
      285 SETTABLEKS                       R6 R5 K17 ["tag"]
      287 SETTABLEKS                       R5 R4 K7 ["titleText"]
      289 DUPTABLE                         R5 K24 [{"tag"}]
      290 LOADK                            R6 K67 ["text-body-large"]
      291 SETTABLEKS                       R6 R5 K17 ["tag"]
      293 SETTABLEKS                       R5 R4 K9 ["contentText"]
      295 DUPTABLE                         R5 K24 [{"tag"}]
      296 LOADK                            R6 K65 ["padding-top-xlarge"]
      297 SETTABLEKS                       R6 R5 K17 ["tag"]
      299 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      301 SETTABLE                         R4 R2 R3
      302 DUPTABLE                         R3 K70 [{"common", "size"}]
      303 SETTABLEKS                       R1 R3 K68 ["common"]
      305 SETTABLEKS                       R2 R3 K69 ["size"]
      307 RETURN                           R3 1

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
