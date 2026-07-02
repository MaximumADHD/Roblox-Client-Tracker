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
       71 DUPTABLE                         R2 K46 [{["tag"] = "text-wrap text-align-x-left text-align-y-top auto-y size-full-0"}]
       72 SETTABLEKS                       R2 R1 K9 ["contentText"]
       74 DUPTABLE                         R2 K48 [{["tag"] = "text-align-x-left text-wrap text-align-y-top auto-y size-full-0 text-body-small"}]
       75 SETTABLEKS                       R2 R1 K10 ["actionsLabel"]
       77 NEWTABLE                         R2 4 0
       79 GETUPVAL                         R3 1
       80 GETTABLEKS                       R3 R3 K49 ["Small"]
       82 DUPTABLE                         R4 K52 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
       83 DUPTABLE                         R5 K54 [{["tag"] = "padding-large"}]
       84 SETTABLEKS                       R5 R4 K1 ["shadow"]
       86 DUPTABLE                         R5 K31 [{"tag"}]
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R7 R7 K55 ["FoundationDialogRootZIndex"]
       90 JUMPIFNOT                        R7 ; [+2]
       91 LOADNIL                          R6
       92 JUMP                             ; [+1]
       93 LOADK                            R6 K53 ["padding-large"]
       94 SETTABLEKS                       R6 R5 K20 ["tag"]
       96 SETTABLEKS                       R5 R4 K2 ["container"]
       98 DUPTABLE                         R5 K58 [{["maxWidth"], ["tag"] = "radius-medium"}]
       99 GETUPVAL                         R7 2
      100 GETUPVAL                         R8 1
      101 GETTABLEKS                       R8 R8 K49 ["Small"]
      103 GETTABLE                         R6 R7 R8
      104 SETTABLEKS                       R6 R5 K56 ["maxWidth"]
      106 SETTABLEKS                       R5 R4 K3 ["inner"]
      108 DUPTABLE                         R5 K31 [{"tag"}]
      109 LOADK                            R7 K59 ["padding-x-large %*"]
      110 GETUPVAL                         R10 0
      111 GETTABLEKS                       R10 R10 K33 ["FoundationDialogBodyUpdate"]
      113 JUMPIFNOT                        R10 ; [+2]
      114 LOADK                            R9 K35 [""]
      115 JUMP                             ; [+1]
      116 LOADK                            R9 K60 ["gap-large"]
      117 NAMECALL                         R7 R7 K36 ["format"]
      119 CALL                             R7 2 1
      120 MOVE                             R6 R7
      121 SETTABLEKS                       R6 R5 K20 ["tag"]
      123 SETTABLEKS                       R5 R4 K4 ["body"]
      125 DUPTABLE                         R5 K62 [{"offset"}]
      126 GETTABLEKS                       R6 R0 K63 ["Size"]
      128 GETTABLEKS                       R6 R6 K64 ["Size_300"]
      130 SETTABLEKS                       R6 R5 K61 ["offset"]
      132 SETTABLEKS                       R5 R4 K50 ["closeAffordance"]
      134 DUPTABLE                         R5 K66 [{["tag"] = "radius-medium", ["offsetX"]}]
      135 GETTABLEKS                       R6 R0 K67 ["Padding"]
      137 GETTABLEKS                       R6 R6 K68 ["Large"]
      139 SETTABLEKS                       R6 R5 K65 ["offsetX"]
      141 SETTABLEKS                       R5 R4 K51 ["heroMedia"]
      143 DUPTABLE                         R5 K70 [{["tag"] = "text-heading-small"}]
      144 SETTABLEKS                       R5 R4 K7 ["titleText"]
      146 DUPTABLE                         R5 K72 [{["tag"] = "text-body-medium"}]
      147 SETTABLEKS                       R5 R4 K9 ["contentText"]
      149 DUPTABLE                         R5 K74 [{["tag"] = "padding-top-large"}]
      150 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      152 SETTABLE                         R4 R2 R3
      153 GETUPVAL                         R3 1
      154 GETTABLEKS                       R3 R3 K75 ["Medium"]
      156 DUPTABLE                         R4 K52 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      157 DUPTABLE                         R5 K77 [{["tag"] = "padding-xlarge"}]
      158 SETTABLEKS                       R5 R4 K1 ["shadow"]
      160 DUPTABLE                         R5 K31 [{"tag"}]
      161 GETUPVAL                         R7 0
      162 GETTABLEKS                       R7 R7 K55 ["FoundationDialogRootZIndex"]
      164 JUMPIFNOT                        R7 ; [+2]
      165 LOADNIL                          R6
      166 JUMP                             ; [+1]
      167 LOADK                            R6 K76 ["padding-xlarge"]
      168 SETTABLEKS                       R6 R5 K20 ["tag"]
      170 SETTABLEKS                       R5 R4 K2 ["container"]
      172 DUPTABLE                         R5 K79 [{["maxWidth"], ["tag"] = "radius-large"}]
      173 GETUPVAL                         R7 2
      174 GETUPVAL                         R8 1
      175 GETTABLEKS                       R8 R8 K75 ["Medium"]
      177 GETTABLE                         R6 R7 R8
      178 SETTABLEKS                       R6 R5 K56 ["maxWidth"]
      180 SETTABLEKS                       R5 R4 K3 ["inner"]
      182 DUPTABLE                         R5 K31 [{"tag"}]
      183 LOADK                            R7 K80 ["padding-x-xlarge %*"]
      184 GETUPVAL                         R10 0
      185 GETTABLEKS                       R10 R10 K33 ["FoundationDialogBodyUpdate"]
      187 JUMPIFNOT                        R10 ; [+2]
      188 LOADK                            R9 K35 [""]
      189 JUMP                             ; [+1]
      190 LOADK                            R9 K34 ["gap-xlarge"]
      191 NAMECALL                         R7 R7 K36 ["format"]
      193 CALL                             R7 2 1
      194 MOVE                             R6 R7
      195 SETTABLEKS                       R6 R5 K20 ["tag"]
      197 SETTABLEKS                       R5 R4 K4 ["body"]
      199 DUPTABLE                         R5 K62 [{"offset"}]
      200 GETTABLEKS                       R6 R0 K63 ["Size"]
      202 GETTABLEKS                       R6 R6 K81 ["Size_400"]
      204 SETTABLEKS                       R6 R5 K61 ["offset"]
      206 SETTABLEKS                       R5 R4 K50 ["closeAffordance"]
      208 DUPTABLE                         R5 K82 [{["tag"] = "radius-large", ["offsetX"]}]
      209 GETTABLEKS                       R6 R0 K67 ["Padding"]
      211 GETTABLEKS                       R6 R6 K83 ["XLarge"]
      213 SETTABLEKS                       R6 R5 K65 ["offsetX"]
      215 SETTABLEKS                       R5 R4 K51 ["heroMedia"]
      217 DUPTABLE                         R5 K85 [{["tag"] = "text-heading-medium"}]
      218 SETTABLEKS                       R5 R4 K7 ["titleText"]
      220 DUPTABLE                         R5 K72 [{["tag"] = "text-body-medium"}]
      221 SETTABLEKS                       R5 R4 K9 ["contentText"]
      223 DUPTABLE                         R5 K87 [{["tag"] = "padding-top-xlarge"}]
      224 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      226 SETTABLE                         R4 R2 R3
      227 GETUPVAL                         R3 1
      228 GETTABLEKS                       R3 R3 K68 ["Large"]
      230 DUPTABLE                         R4 K52 [{"shadow", "container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      231 DUPTABLE                         R5 K77 [{["tag"] = "padding-xlarge"}]
      232 SETTABLEKS                       R5 R4 K1 ["shadow"]
      234 DUPTABLE                         R5 K31 [{"tag"}]
      235 GETUPVAL                         R7 0
      236 GETTABLEKS                       R7 R7 K55 ["FoundationDialogRootZIndex"]
      238 JUMPIFNOT                        R7 ; [+2]
      239 LOADNIL                          R6
      240 JUMP                             ; [+1]
      241 LOADK                            R6 K76 ["padding-xlarge"]
      242 SETTABLEKS                       R6 R5 K20 ["tag"]
      244 SETTABLEKS                       R5 R4 K2 ["container"]
      246 DUPTABLE                         R5 K79 [{["maxWidth"], ["tag"] = "radius-large"}]
      247 GETUPVAL                         R7 2
      248 GETUPVAL                         R8 1
      249 GETTABLEKS                       R8 R8 K68 ["Large"]
      251 GETTABLE                         R6 R7 R8
      252 SETTABLEKS                       R6 R5 K56 ["maxWidth"]
      254 SETTABLEKS                       R5 R4 K3 ["inner"]
      256 DUPTABLE                         R5 K31 [{"tag"}]
      257 LOADK                            R7 K80 ["padding-x-xlarge %*"]
      258 GETUPVAL                         R10 0
      259 GETTABLEKS                       R10 R10 K33 ["FoundationDialogBodyUpdate"]
      261 JUMPIFNOT                        R10 ; [+2]
      262 LOADK                            R9 K35 [""]
      263 JUMP                             ; [+1]
      264 LOADK                            R9 K34 ["gap-xlarge"]
      265 NAMECALL                         R7 R7 K36 ["format"]
      267 CALL                             R7 2 1
      268 MOVE                             R6 R7
      269 SETTABLEKS                       R6 R5 K20 ["tag"]
      271 SETTABLEKS                       R5 R4 K4 ["body"]
      273 DUPTABLE                         R5 K62 [{"offset"}]
      274 GETTABLEKS                       R6 R0 K63 ["Size"]
      276 GETTABLEKS                       R6 R6 K81 ["Size_400"]
      278 SETTABLEKS                       R6 R5 K61 ["offset"]
      280 SETTABLEKS                       R5 R4 K50 ["closeAffordance"]
      282 DUPTABLE                         R5 K82 [{["tag"] = "radius-large", ["offsetX"]}]
      283 GETTABLEKS                       R6 R0 K67 ["Padding"]
      285 GETTABLEKS                       R6 R6 K83 ["XLarge"]
      287 SETTABLEKS                       R6 R5 K65 ["offsetX"]
      289 SETTABLEKS                       R5 R4 K51 ["heroMedia"]
      291 DUPTABLE                         R5 K89 [{["tag"] = "text-heading-large"}]
      292 SETTABLEKS                       R5 R4 K7 ["titleText"]
      294 DUPTABLE                         R5 K91 [{["tag"] = "text-body-large"}]
      295 SETTABLEKS                       R5 R4 K9 ["contentText"]
      297 DUPTABLE                         R5 K87 [{["tag"] = "padding-top-xlarge"}]
      298 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      300 SETTABLE                         R4 R2 R3
      301 DUPTABLE                         R3 K94 [{"common", "size"}]
      302 SETTABLEKS                       R1 R3 K92 ["common"]
      304 SETTABLEKS                       R2 R3 K93 ["size"]
      306 RETURN                           R3 1

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
