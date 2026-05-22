PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K5 [{"tag", "LayoutOrder"}]
       11 LOADK                            R5 K6 ["row gap-small align-x-left align-y-center size-full-0 auto-y"]
       12 SETTABLEKS                       R5 R4 K3 ["tag"]
       14 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       16 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       18 DUPTABLE                         R5 K10 [{"Preview", "AssetName", "ValidationArea"}]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K1 ["createElement"]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K2 ["View"]
       25 DUPTABLE                         R8 K13 [{"tag", "backgroundStyle", "LayoutOrder", "Size"}]
       26 LOADK                            R9 K14 ["shrink-0 radius-small"]
       27 SETTABLEKS                       R9 R8 K3 ["tag"]
       29 DUPTABLE                         R9 K17 [{"Color3", "Transparency"}]
       30 GETTABLEKS                       R10 R0 K18 ["previewBackgroundColor"]
       32 SETTABLEKS                       R10 R9 K15 ["Color3"]
       34 LOADN                            R10 0
       35 SETTABLEKS                       R10 R9 K16 ["Transparency"]
       37 SETTABLEKS                       R9 R8 K11 ["backgroundStyle"]
       39 NAMECALL                         R9 R1 K19 ["getNextOrder"]
       41 CALL                             R9 1 1
       42 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       44 GETIMPORT                        R9 K22 [UDim2.fromOffset]
       46 GETTABLEKS                       R10 R0 K23 ["previewSize"]
       48 GETTABLEKS                       R11 R0 K23 ["previewSize"]
       50 CALL                             R9 2 1
       51 SETTABLEKS                       R9 R8 K12 ["Size"]
       53 DUPTABLE                         R9 K25 [{"PreviewModel"}]
       54 GETTABLEKS                       R11 R0 K26 ["hasRenderablePreview"]
       56 JUMPIFNOT                        R11 ; [+29]
       57 GETTABLEKS                       R11 R0 K27 ["model"]
       59 JUMPIFEQKNIL                     R11 ; [+26]
       61 GETTABLEKS                       R11 R0 K28 ["focusDirection"]
       63 JUMPIFEQKNIL                     R11 ; [+22]
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K1 ["createElement"]
       68 GETUPVAL                         R11 3
       69 DUPTABLE                         R12 K33 [{"FocusDirection", "Model", "ShouldMuteModelSounds", "Static"}]
       70 GETTABLEKS                       R13 R0 K28 ["focusDirection"]
       72 SETTABLEKS                       R13 R12 K29 ["FocusDirection"]
       74 GETTABLEKS                       R13 R0 K27 ["model"]
       76 SETTABLEKS                       R13 R12 K30 ["Model"]
       78 LOADB                            R13 1
       79 SETTABLEKS                       R13 R12 K31 ["ShouldMuteModelSounds"]
       81 LOADB                            R13 1
       82 SETTABLEKS                       R13 R12 K32 ["Static"]
       84 CALL                             R10 2 1
       85 JUMP                             ; [+57]
       86 GETUPVAL                         R11 4
       87 CALL                             R11 0 1
       88 JUMPIFNOT                        R11 ; [+28]
       89 GETTABLEKS                       R11 R0 K34 ["previewImage"]
       91 JUMPIFEQKNIL                     R11 ; [+25]
       93 GETTABLEKS                       R11 R0 K34 ["previewImage"]
       95 JUMPIFEQKS                       R11 K35 [""] ; [+21]
       97 GETUPVAL                         R10 1
       98 GETTABLEKS                       R10 R10 K1 ["createElement"]
      100 GETUPVAL                         R11 2
      101 GETTABLEKS                       R11 R11 K36 ["Image"]
      103 DUPTABLE                         R12 K38 [{"tag", "Image", "ScaleType"}]
      104 LOADK                            R13 K39 ["size-full"]
      105 SETTABLEKS                       R13 R12 K3 ["tag"]
      107 GETTABLEKS                       R13 R0 K34 ["previewImage"]
      109 SETTABLEKS                       R13 R12 K36 ["Image"]
      111 GETIMPORT                        R13 K42 [Enum.ScaleType.Fit]
      113 SETTABLEKS                       R13 R12 K37 ["ScaleType"]
      115 CALL                             R10 2 1
      116 JUMP                             ; [+26]
      117 GETUPVAL                         R10 1
      118 GETTABLEKS                       R10 R10 K1 ["createElement"]
      120 GETUPVAL                         R11 2
      121 GETTABLEKS                       R11 R11 K36 ["Image"]
      123 DUPTABLE                         R12 K44 [{"tag", "Image", "imageStyle"}]
      124 LOADK                            R13 K39 ["size-full"]
      125 SETTABLEKS                       R13 R12 K3 ["tag"]
      127 GETUPVAL                         R13 5
      128 GETTABLEKS                       R13 R13 K45 ["PLACEHOLDER_ICON"]
      130 SETTABLEKS                       R13 R12 K36 ["Image"]
      132 DUPTABLE                         R13 K17 [{"Color3", "Transparency"}]
      133 GETTABLEKS                       R14 R0 K46 ["placeholderIconColor"]
      135 SETTABLEKS                       R14 R13 K15 ["Color3"]
      137 LOADN                            R14 0
      138 SETTABLEKS                       R14 R13 K16 ["Transparency"]
      140 SETTABLEKS                       R13 R12 K43 ["imageStyle"]
      142 CALL                             R10 2 1
      143 SETTABLEKS                       R10 R9 K24 ["PreviewModel"]
      145 CALL                             R6 3 1
      146 SETTABLEKS                       R6 R5 K7 ["Preview"]
      148 GETUPVAL                         R6 1
      149 GETTABLEKS                       R6 R6 K1 ["createElement"]
      151 GETUPVAL                         R7 2
      152 GETTABLEKS                       R7 R7 K47 ["Text"]
      154 DUPTABLE                         R8 K49 [{"tag", "LayoutOrder", "Text", "sizeConstraint"}]
      155 LOADK                            R9 K50 ["text-body-medium text-align-x-left content-default auto-xy shrink-0"]
      156 SETTABLEKS                       R9 R8 K3 ["tag"]
      158 NAMECALL                         R9 R1 K19 ["getNextOrder"]
      160 CALL                             R9 1 1
      161 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      163 GETTABLEKS                       R9 R0 K51 ["assetDisplayName"]
      165 SETTABLEKS                       R9 R8 K47 ["Text"]
      167 DUPTABLE                         R9 K53 [{"MinSize"}]
      168 GETIMPORT                        R10 K55 [Vector2.new]
      170 GETTABLEKS                       R11 R0 K56 ["nameMinWidth"]
      172 LOADN                            R12 0
      173 CALL                             R10 2 1
      174 SETTABLEKS                       R10 R9 K52 ["MinSize"]
      176 SETTABLEKS                       R9 R8 K48 ["sizeConstraint"]
      178 CALL                             R6 2 1
      179 SETTABLEKS                       R6 R5 K8 ["AssetName"]
      181 GETUPVAL                         R6 1
      182 GETTABLEKS                       R6 R6 K1 ["createElement"]
      184 GETUPVAL                         R7 2
      185 GETTABLEKS                       R7 R7 K2 ["View"]
      187 DUPTABLE                         R8 K5 [{"tag", "LayoutOrder"}]
      188 LOADK                            R9 K57 ["row gap-small align-x-left align-y-center auto-xy shrink-0"]
      189 SETTABLEKS                       R9 R8 K3 ["tag"]
      191 NAMECALL                         R9 R1 K19 ["getNextOrder"]
      193 CALL                             R9 1 1
      194 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      196 DUPTABLE                         R9 K60 [{"ValidationIcon", "ValidationText"}]
      197 GETUPVAL                         R10 1
      198 GETTABLEKS                       R10 R10 K1 ["createElement"]
      200 GETUPVAL                         R11 2
      201 GETTABLEKS                       R11 R11 K36 ["Image"]
      203 DUPTABLE                         R12 K62 [{"Image", "imageStyle", "LayoutOrder", "Size", "onActivated"}]
      204 GETTABLEKS                       R13 R0 K63 ["validationStatusImage"]
      206 SETTABLEKS                       R13 R12 K36 ["Image"]
      208 DUPTABLE                         R13 K17 [{"Color3", "Transparency"}]
      209 GETTABLEKS                       R14 R0 K64 ["iconColor"]
      211 SETTABLEKS                       R14 R13 K15 ["Color3"]
      213 LOADN                            R14 0
      214 SETTABLEKS                       R14 R13 K16 ["Transparency"]
      216 SETTABLEKS                       R13 R12 K43 ["imageStyle"]
      218 LOADN                            R13 1
      219 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      221 GETIMPORT                        R13 K22 [UDim2.fromOffset]
      223 GETTABLEKS                       R14 R0 K65 ["validationIconSize"]
      225 GETTABLEKS                       R15 R0 K65 ["validationIconSize"]
      227 CALL                             R13 2 1
      228 SETTABLEKS                       R13 R12 K12 ["Size"]
      230 GETTABLEKS                       R14 R0 K66 ["isValidationError"]
      232 JUMPIFNOT                        R14 ; [+6]
      233 GETTABLEKS                       R14 R0 K67 ["onClickError"]
      235 JUMPIFNOT                        R14 ; [+3]
      236 GETTABLEKS                       R13 R0 K67 ["onClickError"]
      238 JUMP                             ; [+1]
      239 LOADNIL                          R13
      240 SETTABLEKS                       R13 R12 K61 ["onActivated"]
      242 CALL                             R10 2 1
      243 SETTABLEKS                       R10 R9 K58 ["ValidationIcon"]
      245 GETUPVAL                         R10 1
      246 GETTABLEKS                       R10 R10 K1 ["createElement"]
      248 GETUPVAL                         R11 2
      249 GETTABLEKS                       R11 R11 K47 ["Text"]
      251 DUPTABLE                         R12 K69 [{"tag", "Text", "textStyle", "LayoutOrder", "onActivated"}]
      252 LOADK                            R13 K70 ["text-body-medium text-align-x-left"]
      253 SETTABLEKS                       R13 R12 K3 ["tag"]
      255 GETTABLEKS                       R13 R0 K71 ["validationMessage"]
      257 SETTABLEKS                       R13 R12 K47 ["Text"]
      259 DUPTABLE                         R13 K72 [{"Color3"}]
      260 GETTABLEKS                       R14 R0 K73 ["textColor"]
      262 SETTABLEKS                       R14 R13 K15 ["Color3"]
      264 SETTABLEKS                       R13 R12 K68 ["textStyle"]
      266 LOADN                            R13 2
      267 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      269 GETTABLEKS                       R14 R0 K66 ["isValidationError"]
      271 JUMPIFNOT                        R14 ; [+6]
      272 GETTABLEKS                       R14 R0 K67 ["onClickError"]
      274 JUMPIFNOT                        R14 ; [+3]
      275 GETTABLEKS                       R13 R0 K67 ["onClickError"]
      277 JUMP                             ; [+1]
      278 LOADNIL                          R13
      279 SETTABLEKS                       R13 R12 K61 ["onActivated"]
      281 CALL                             R10 2 1
      282 SETTABLEKS                       R10 R9 K59 ["ValidationText"]
      284 CALL                             R6 3 1
      285 SETTABLEKS                       R6 R5 K9 ["ValidationArea"]
      287 CALL                             R2 3 -1
      288 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["UI"]
       30 GETTABLEKS                       R4 R4 K11 ["AssetRenderModel"]
       32 GETTABLEKS                       R5 R3 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["LayoutOrderIterator"]
       36 GETTABLEKS                       R6 R0 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K12 ["Util"]
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R6 K15 ["Images"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K14 ["Src"]
       49 GETTABLEKS                       R9 R9 K16 ["Flags"]
       51 GETTABLEKS                       R9 R9 K17 ["getFFlagEnableUploadingAvatarAnimations"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K18 [PROTO_0]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R7
       61 RETURN                           R9 1
