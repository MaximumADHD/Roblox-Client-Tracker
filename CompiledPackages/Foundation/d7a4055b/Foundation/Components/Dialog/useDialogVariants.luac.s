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
       23 DUPTABLE                         R2 K23 [{["tag"] = "auto-xy", ["imageStyle"]}]
       24 GETTABLEKS                       R3 R0 K15 ["Color"]
       26 GETTABLEKS                       R3 R3 K24 ["Extended"]
       28 GETTABLEKS                       R3 R3 K25 ["Black"]
       30 GETTABLEKS                       R3 R3 K26 ["Black_15"]
       32 SETTABLEKS                       R3 R2 K22 ["imageStyle"]
       34 SETTABLEKS                       R2 R1 K1 ["shadow"]
       36 DUPTABLE                         R2 K28 [{["tag"] = "size-full-full col align-x-center align-y-center"}]
       37 SETTABLEKS                       R2 R1 K2 ["container"]
       39 DUPTABLE                         R2 K30 [{["tag"] = "size-full-0 auto-y shrink-1 bg-surface-100 clip"}]
       40 SETTABLEKS                       R2 R1 K3 ["inner"]
       42 DUPTABLE                         R2 K31 [{"tag"}]
       43 LOADK                            R4 K32 ["size-full auto-y col padding-bottom-xlarge %*"]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K33 ["FoundationDialogBodyUpdate"]
       47 JUMPIFNOT                        R7 ; [+2]
       48 LOADK                            R6 K34 ["gap-xlarge"]
       49 JUMP                             ; [+1]
       50 LOADK                            R6 K35 [""]
       51 NAMECALL                         R4 R4 K36 ["format"]
       53 CALL                             R4 2 1
       54 MOVE                             R3 R4
       55 SETTABLEKS                       R3 R2 K20 ["tag"]
       57 SETTABLEKS                       R2 R1 K4 ["body"]
       59 DUPTABLE                         R2 K38 [{["tag"] = "auto-y size-full-full position-top-center shrink"}]
       60 SETTABLEKS                       R2 R1 K5 ["heroMediaWrapper"]
       62 DUPTABLE                         R2 K40 [{["tag"] = "size-full-0 auto-y"}]
       63 SETTABLEKS                       R2 R1 K6 ["title"]
       65 DUPTABLE                         R2 K42 [{["tag"] = "size-full-0 auto-y content-emphasized text-wrap text-align-x-left"}]
       66 SETTABLEKS                       R2 R1 K7 ["titleText"]
       68 DUPTABLE                         R2 K44 [{["tag"] = "auto-y size-full fill"}]
       69 SETTABLEKS                       R2 R1 K8 ["content"]
       71 DUPTABLE                         R2 K31 [{"tag"}]
       72 LOADK                            R4 K45 ["text-wrap text-align-x-left text-align-y-top auto-y size-full-0 %*"]
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K33 ["FoundationDialogBodyUpdate"]
       76 JUMPIFNOT                        R7 ; [+2]
       77 LOADK                            R6 K46 ["padding-right-xxlarge"]
       78 JUMP                             ; [+1]
       79 LOADK                            R6 K35 [""]
       80 NAMECALL                         R4 R4 K36 ["format"]
       82 CALL                             R4 2 1
       83 MOVE                             R3 R4
       84 SETTABLEKS                       R3 R2 K20 ["tag"]
       86 SETTABLEKS                       R2 R1 K9 ["contentText"]
       88 DUPTABLE                         R2 K48 [{["tag"] = "text-align-x-left text-wrap text-align-y-top auto-y size-full-0 text-body-small"}]
       89 SETTABLEKS                       R2 R1 K10 ["actionsLabel"]
       91 NEWTABLE                         R2 4 0
       93 GETUPVAL                         R3 1
       94 GETTABLEKS                       R3 R3 K49 ["Small"]
       96 DUPTABLE                         R4 K52 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
       97 DUPTABLE                         R5 K54 [{["tag"] = "padding-large"}]
       98 SETTABLEKS                       R5 R4 K1 ["shadow"]
      100 DUPTABLE                         R5 K31 [{"tag"}]
      101 GETUPVAL                         R7 0
      102 GETTABLEKS                       R7 R7 K55 ["FoundationDialogRootZIndex"]
      104 JUMPIFNOT                        R7 ; [+2]
      105 LOADNIL                          R6
      106 JUMP                             ; [+1]
      107 LOADK                            R6 K53 ["padding-large"]
      108 SETTABLEKS                       R6 R5 K20 ["tag"]
      110 SETTABLEKS                       R5 R4 K2 ["container"]
      112 DUPTABLE                         R5 K58 [{["maxWidth"], ["tag"] = "radius-medium"}]
      113 GETUPVAL                         R7 2
      114 GETUPVAL                         R8 1
      115 GETTABLEKS                       R8 R8 K49 ["Small"]
      117 GETTABLE                         R6 R7 R8
      118 SETTABLEKS                       R6 R5 K56 ["maxWidth"]
      120 SETTABLEKS                       R5 R4 K3 ["inner"]
      122 DUPTABLE                         R5 K31 [{"tag"}]
      123 LOADK                            R7 K59 ["padding-x-large %*"]
      124 GETUPVAL                         R10 0
      125 GETTABLEKS                       R10 R10 K33 ["FoundationDialogBodyUpdate"]
      127 JUMPIFNOT                        R10 ; [+2]
      128 LOADK                            R9 K35 [""]
      129 JUMP                             ; [+1]
      130 LOADK                            R9 K60 ["gap-large"]
      131 NAMECALL                         R7 R7 K36 ["format"]
      133 CALL                             R7 2 1
      134 MOVE                             R6 R7
      135 SETTABLEKS                       R6 R5 K20 ["tag"]
      137 SETTABLEKS                       R5 R4 K4 ["body"]
      139 DUPTABLE                         R5 K62 [{"offset"}]
      140 GETTABLEKS                       R6 R0 K63 ["Size"]
      142 GETTABLEKS                       R6 R6 K64 ["Size_300"]
      144 SETTABLEKS                       R6 R5 K61 ["offset"]
      146 SETTABLEKS                       R5 R4 K50 ["closeAffordance"]
      148 DUPTABLE                         R5 K66 [{["tag"] = "radius-medium", ["offsetX"]}]
      149 GETTABLEKS                       R6 R0 K67 ["Padding"]
      151 GETTABLEKS                       R6 R6 K68 ["Large"]
      153 SETTABLEKS                       R6 R5 K65 ["offsetX"]
      155 SETTABLEKS                       R5 R4 K51 ["heroMedia"]
      157 DUPTABLE                         R5 K70 [{["tag"] = "text-heading-small"}]
      158 SETTABLEKS                       R5 R4 K7 ["titleText"]
      160 DUPTABLE                         R5 K72 [{["tag"] = "text-body-medium"}]
      161 SETTABLEKS                       R5 R4 K9 ["contentText"]
      163 DUPTABLE                         R5 K74 [{["tag"] = "padding-top-large"}]
      164 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      166 SETTABLE                         R4 R2 R3
      167 GETUPVAL                         R3 1
      168 GETTABLEKS                       R3 R3 K75 ["Medium"]
      170 DUPTABLE                         R4 K52 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      171 DUPTABLE                         R5 K77 [{["tag"] = "padding-xlarge"}]
      172 SETTABLEKS                       R5 R4 K1 ["shadow"]
      174 DUPTABLE                         R5 K31 [{"tag"}]
      175 GETUPVAL                         R7 0
      176 GETTABLEKS                       R7 R7 K55 ["FoundationDialogRootZIndex"]
      178 JUMPIFNOT                        R7 ; [+2]
      179 LOADNIL                          R6
      180 JUMP                             ; [+1]
      181 LOADK                            R6 K76 ["padding-xlarge"]
      182 SETTABLEKS                       R6 R5 K20 ["tag"]
      184 SETTABLEKS                       R5 R4 K2 ["container"]
      186 DUPTABLE                         R5 K79 [{["maxWidth"], ["tag"] = "radius-large"}]
      187 GETUPVAL                         R7 2
      188 GETUPVAL                         R8 1
      189 GETTABLEKS                       R8 R8 K75 ["Medium"]
      191 GETTABLE                         R6 R7 R8
      192 SETTABLEKS                       R6 R5 K56 ["maxWidth"]
      194 SETTABLEKS                       R5 R4 K3 ["inner"]
      196 DUPTABLE                         R5 K31 [{"tag"}]
      197 LOADK                            R7 K80 ["padding-x-xlarge %*"]
      198 GETUPVAL                         R10 0
      199 GETTABLEKS                       R10 R10 K33 ["FoundationDialogBodyUpdate"]
      201 JUMPIFNOT                        R10 ; [+2]
      202 LOADK                            R9 K35 [""]
      203 JUMP                             ; [+1]
      204 LOADK                            R9 K34 ["gap-xlarge"]
      205 NAMECALL                         R7 R7 K36 ["format"]
      207 CALL                             R7 2 1
      208 MOVE                             R6 R7
      209 SETTABLEKS                       R6 R5 K20 ["tag"]
      211 SETTABLEKS                       R5 R4 K4 ["body"]
      213 DUPTABLE                         R5 K62 [{"offset"}]
      214 GETTABLEKS                       R6 R0 K63 ["Size"]
      216 GETTABLEKS                       R6 R6 K81 ["Size_400"]
      218 SETTABLEKS                       R6 R5 K61 ["offset"]
      220 SETTABLEKS                       R5 R4 K50 ["closeAffordance"]
      222 DUPTABLE                         R5 K82 [{["tag"] = "radius-large", ["offsetX"]}]
      223 GETTABLEKS                       R6 R0 K67 ["Padding"]
      225 GETTABLEKS                       R6 R6 K83 ["XLarge"]
      227 SETTABLEKS                       R6 R5 K65 ["offsetX"]
      229 SETTABLEKS                       R5 R4 K51 ["heroMedia"]
      231 DUPTABLE                         R5 K85 [{["tag"] = "text-heading-medium"}]
      232 SETTABLEKS                       R5 R4 K7 ["titleText"]
      234 DUPTABLE                         R5 K72 [{["tag"] = "text-body-medium"}]
      235 SETTABLEKS                       R5 R4 K9 ["contentText"]
      237 DUPTABLE                         R5 K87 [{["tag"] = "padding-top-xlarge"}]
      238 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      240 SETTABLE                         R4 R2 R3
      241 GETUPVAL                         R3 1
      242 GETTABLEKS                       R3 R3 K68 ["Large"]
      244 DUPTABLE                         R4 K52 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      245 DUPTABLE                         R5 K77 [{["tag"] = "padding-xlarge"}]
      246 SETTABLEKS                       R5 R4 K1 ["shadow"]
      248 DUPTABLE                         R5 K31 [{"tag"}]
      249 GETUPVAL                         R7 0
      250 GETTABLEKS                       R7 R7 K55 ["FoundationDialogRootZIndex"]
      252 JUMPIFNOT                        R7 ; [+2]
      253 LOADNIL                          R6
      254 JUMP                             ; [+1]
      255 LOADK                            R6 K76 ["padding-xlarge"]
      256 SETTABLEKS                       R6 R5 K20 ["tag"]
      258 SETTABLEKS                       R5 R4 K2 ["container"]
      260 DUPTABLE                         R5 K79 [{["maxWidth"], ["tag"] = "radius-large"}]
      261 GETUPVAL                         R7 2
      262 GETUPVAL                         R8 1
      263 GETTABLEKS                       R8 R8 K68 ["Large"]
      265 GETTABLE                         R6 R7 R8
      266 SETTABLEKS                       R6 R5 K56 ["maxWidth"]
      268 SETTABLEKS                       R5 R4 K3 ["inner"]
      270 DUPTABLE                         R5 K31 [{"tag"}]
      271 LOADK                            R7 K80 ["padding-x-xlarge %*"]
      272 GETUPVAL                         R10 0
      273 GETTABLEKS                       R10 R10 K33 ["FoundationDialogBodyUpdate"]
      275 JUMPIFNOT                        R10 ; [+2]
      276 LOADK                            R9 K35 [""]
      277 JUMP                             ; [+1]
      278 LOADK                            R9 K34 ["gap-xlarge"]
      279 NAMECALL                         R7 R7 K36 ["format"]
      281 CALL                             R7 2 1
      282 MOVE                             R6 R7
      283 SETTABLEKS                       R6 R5 K20 ["tag"]
      285 SETTABLEKS                       R5 R4 K4 ["body"]
      287 DUPTABLE                         R5 K62 [{"offset"}]
      288 GETTABLEKS                       R6 R0 K63 ["Size"]
      290 GETTABLEKS                       R6 R6 K81 ["Size_400"]
      292 SETTABLEKS                       R6 R5 K61 ["offset"]
      294 SETTABLEKS                       R5 R4 K50 ["closeAffordance"]
      296 DUPTABLE                         R5 K82 [{["tag"] = "radius-large", ["offsetX"]}]
      297 GETTABLEKS                       R6 R0 K67 ["Padding"]
      299 GETTABLEKS                       R6 R6 K83 ["XLarge"]
      301 SETTABLEKS                       R6 R5 K65 ["offsetX"]
      303 SETTABLEKS                       R5 R4 K51 ["heroMedia"]
      305 DUPTABLE                         R5 K89 [{["tag"] = "text-heading-large"}]
      306 SETTABLEKS                       R5 R4 K7 ["titleText"]
      308 DUPTABLE                         R5 K91 [{["tag"] = "text-body-large"}]
      309 SETTABLEKS                       R5 R4 K9 ["contentText"]
      311 DUPTABLE                         R5 K87 [{["tag"] = "padding-top-xlarge"}]
      312 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      314 SETTABLE                         R4 R2 R3
      315 DUPTABLE                         R3 K94 [{"common", "size"}]
      316 SETTABLEKS                       R1 R3 K92 ["common"]
      318 SETTABLEKS                       R2 R3 K93 ["size"]
      320 RETURN                           R3 1

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
       75 LOADN                            R11 320
       76 SETTABLE                         R11 R9 R10
       77 GETTABLEKS                       R10 R2 K21 ["Medium"]
       79 LOADN                            R11 480
       80 SETTABLE                         R11 R9 R10
       81 GETTABLEKS                       R10 R2 K22 ["Large"]
       83 LOADN                            R11 640
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
