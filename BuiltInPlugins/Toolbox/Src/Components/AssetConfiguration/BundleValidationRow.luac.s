PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K6 [{["tag"] = "row align-x-left align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"]}]
       11 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       13 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       15 DUPTABLE                         R5 K10 [{"Preview", "AssetName", "ValidationArea"}]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K1 ["createElement"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K2 ["View"]
       22 DUPTABLE                         R8 K14 [{["tag"] = "radius-small", ["backgroundStyle"], ["LayoutOrder"], ["Size"]}]
       23 DUPTABLE                         R9 K18 [{["Color3"], ["Transparency"] = 0}]
       24 GETTABLEKS                       R10 R0 K19 ["previewBackgroundColor"]
       26 SETTABLEKS                       R10 R9 K15 ["Color3"]
       28 SETTABLEKS                       R9 R8 K12 ["backgroundStyle"]
       30 NAMECALL                         R9 R1 K20 ["getNextOrder"]
       32 CALL                             R9 1 1
       33 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       35 GETIMPORT                        R9 K23 [UDim2.fromOffset]
       37 GETTABLEKS                       R10 R0 K24 ["previewSize"]
       39 GETTABLEKS                       R11 R0 K24 ["previewSize"]
       41 CALL                             R9 2 1
       42 SETTABLEKS                       R9 R8 K13 ["Size"]
       44 DUPTABLE                         R9 K26 [{"PreviewModel"}]
       45 GETTABLEKS                       R11 R0 K27 ["hasRenderablePreview"]
       47 JUMPIFNOT                        R11 ; [+23]
       48 GETTABLEKS                       R11 R0 K28 ["model"]
       50 JUMPIFEQKNIL                     R11 ; [+20]
       52 GETTABLEKS                       R11 R0 K29 ["focusDirection"]
       54 JUMPIFEQKNIL                     R11 ; [+16]
       56 GETUPVAL                         R10 1
       57 GETTABLEKS                       R10 R10 K1 ["createElement"]
       59 GETUPVAL                         R11 3
       60 DUPTABLE                         R12 K35 [{["FocusDirection"], ["Model"], ["ShouldMuteModelSounds"] = True, ["Static"] = True}]
       61 GETTABLEKS                       R13 R0 K29 ["focusDirection"]
       63 SETTABLEKS                       R13 R12 K30 ["FocusDirection"]
       65 GETTABLEKS                       R13 R0 K28 ["model"]
       67 SETTABLEKS                       R13 R12 K31 ["Model"]
       69 CALL                             R10 2 1
       70 JUMP                             ; [+48]
       71 GETUPVAL                         R11 4
       72 CALL                             R11 0 1
       73 JUMPIFNOT                        R11 ; [+25]
       74 GETTABLEKS                       R11 R0 K36 ["previewImage"]
       76 JUMPIFEQKNIL                     R11 ; [+22]
       78 GETTABLEKS                       R11 R0 K36 ["previewImage"]
       80 JUMPIFEQKS                       R11 K37 [""] ; [+18]
       82 GETUPVAL                         R10 1
       83 GETTABLEKS                       R10 R10 K1 ["createElement"]
       85 GETUPVAL                         R11 2
       86 GETTABLEKS                       R11 R11 K38 ["Image"]
       88 DUPTABLE                         R12 K41 [{["tag"] = "size-full", ["Image"], ["ScaleType"]}]
       89 GETTABLEKS                       R13 R0 K36 ["previewImage"]
       91 SETTABLEKS                       R13 R12 K38 ["Image"]
       93 GETIMPORT                        R13 K44 [Enum.ScaleType.Fit]
       95 SETTABLEKS                       R13 R12 K40 ["ScaleType"]
       97 CALL                             R10 2 1
       98 JUMP                             ; [+20]
       99 GETUPVAL                         R10 1
      100 GETTABLEKS                       R10 R10 K1 ["createElement"]
      102 GETUPVAL                         R11 2
      103 GETTABLEKS                       R11 R11 K38 ["Image"]
      105 DUPTABLE                         R12 K46 [{["tag"] = "size-full", ["Image"], ["imageStyle"]}]
      106 GETUPVAL                         R13 5
      107 GETTABLEKS                       R13 R13 K47 ["PLACEHOLDER_ICON"]
      109 SETTABLEKS                       R13 R12 K38 ["Image"]
      111 DUPTABLE                         R13 K18 [{["Color3"], ["Transparency"] = 0}]
      112 GETTABLEKS                       R14 R0 K48 ["placeholderIconColor"]
      114 SETTABLEKS                       R14 R13 K15 ["Color3"]
      116 SETTABLEKS                       R13 R12 K45 ["imageStyle"]
      118 CALL                             R10 2 1
      119 SETTABLEKS                       R10 R9 K25 ["PreviewModel"]
      121 CALL                             R6 3 1
      122 SETTABLEKS                       R6 R5 K7 ["Preview"]
      124 GETUPVAL                         R6 1
      125 GETTABLEKS                       R6 R6 K1 ["createElement"]
      127 GETUPVAL                         R7 2
      128 GETTABLEKS                       R7 R7 K49 ["Text"]
      130 DUPTABLE                         R8 K52 [{["tag"] = "auto-xy text-body-medium text-align-x-left content-default", ["LayoutOrder"], ["Text"], ["sizeConstraint"]}]
      131 NAMECALL                         R9 R1 K20 ["getNextOrder"]
      133 CALL                             R9 1 1
      134 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
      136 GETTABLEKS                       R9 R0 K53 ["assetDisplayName"]
      138 SETTABLEKS                       R9 R8 K49 ["Text"]
      140 DUPTABLE                         R9 K55 [{"MinSize"}]
      141 GETIMPORT                        R10 K57 [Vector2.new]
      143 GETTABLEKS                       R11 R0 K58 ["nameMinWidth"]
      145 LOADN                            R12 0
      146 CALL                             R10 2 1
      147 SETTABLEKS                       R10 R9 K54 ["MinSize"]
      149 SETTABLEKS                       R9 R8 K51 ["sizeConstraint"]
      151 CALL                             R6 2 1
      152 SETTABLEKS                       R6 R5 K8 ["AssetName"]
      154 GETUPVAL                         R6 1
      155 GETTABLEKS                       R6 R6 K1 ["createElement"]
      157 GETUPVAL                         R7 2
      158 GETTABLEKS                       R7 R7 K2 ["View"]
      160 DUPTABLE                         R8 K60 [{["tag"] = "row align-x-left align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      161 NAMECALL                         R9 R1 K20 ["getNextOrder"]
      163 CALL                             R9 1 1
      164 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
      166 DUPTABLE                         R9 K63 [{"ValidationIcon", "ValidationText"}]
      167 GETUPVAL                         R10 1
      168 GETTABLEKS                       R10 R10 K1 ["createElement"]
      170 GETUPVAL                         R11 2
      171 GETTABLEKS                       R11 R11 K38 ["Image"]
      173 DUPTABLE                         R12 K66 [{["Image"], ["imageStyle"], ["LayoutOrder"] = 1, ["Size"], ["onActivated"]}]
      174 GETTABLEKS                       R13 R0 K67 ["validationStatusImage"]
      176 SETTABLEKS                       R13 R12 K38 ["Image"]
      178 DUPTABLE                         R13 K18 [{["Color3"], ["Transparency"] = 0}]
      179 GETTABLEKS                       R14 R0 K68 ["iconColor"]
      181 SETTABLEKS                       R14 R13 K15 ["Color3"]
      183 SETTABLEKS                       R13 R12 K45 ["imageStyle"]
      185 GETIMPORT                        R13 K23 [UDim2.fromOffset]
      187 GETTABLEKS                       R14 R0 K69 ["validationIconSize"]
      189 GETTABLEKS                       R15 R0 K69 ["validationIconSize"]
      191 CALL                             R13 2 1
      192 SETTABLEKS                       R13 R12 K13 ["Size"]
      194 GETTABLEKS                       R14 R0 K70 ["isValidationError"]
      196 JUMPIFNOT                        R14 ; [+6]
      197 GETTABLEKS                       R14 R0 K71 ["onClickError"]
      199 JUMPIFNOT                        R14 ; [+3]
      200 GETTABLEKS                       R13 R0 K71 ["onClickError"]
      202 JUMP                             ; [+1]
      203 LOADNIL                          R13
      204 SETTABLEKS                       R13 R12 K65 ["onActivated"]
      206 CALL                             R10 2 1
      207 SETTABLEKS                       R10 R9 K61 ["ValidationIcon"]
      209 GETUPVAL                         R10 1
      210 GETTABLEKS                       R10 R10 K1 ["createElement"]
      212 GETUPVAL                         R11 2
      213 GETTABLEKS                       R11 R11 K49 ["Text"]
      215 DUPTABLE                         R12 K75 [{["tag"] = "text-body-medium text-align-x-left", ["Text"], ["textStyle"], ["LayoutOrder"] = 2, ["onActivated"]}]
      216 GETTABLEKS                       R13 R0 K76 ["validationMessage"]
      218 SETTABLEKS                       R13 R12 K49 ["Text"]
      220 DUPTABLE                         R13 K77 [{"Color3"}]
      221 GETTABLEKS                       R14 R0 K78 ["textColor"]
      223 SETTABLEKS                       R14 R13 K15 ["Color3"]
      225 SETTABLEKS                       R13 R12 K73 ["textStyle"]
      227 GETTABLEKS                       R14 R0 K70 ["isValidationError"]
      229 JUMPIFNOT                        R14 ; [+6]
      230 GETTABLEKS                       R14 R0 K71 ["onClickError"]
      232 JUMPIFNOT                        R14 ; [+3]
      233 GETTABLEKS                       R13 R0 K71 ["onClickError"]
      235 JUMP                             ; [+1]
      236 LOADNIL                          R13
      237 SETTABLEKS                       R13 R12 K65 ["onActivated"]
      239 CALL                             R10 2 1
      240 SETTABLEKS                       R10 R9 K62 ["ValidationText"]
      242 CALL                             R6 3 1
      243 SETTABLEKS                       R6 R5 K9 ["ValidationArea"]
      245 CALL                             R2 3 -1
      246 RETURN                           R2 -1

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
