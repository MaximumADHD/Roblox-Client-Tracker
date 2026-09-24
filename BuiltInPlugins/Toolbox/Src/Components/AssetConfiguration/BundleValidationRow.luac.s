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
       70 JUMP                             ; [+45]
       71 GETTABLEKS                       R11 R0 K36 ["previewImage"]
       73 JUMPIFEQKNIL                     R11 ; [+22]
       75 GETTABLEKS                       R11 R0 K36 ["previewImage"]
       77 JUMPIFEQKS                       R11 K37 [""] ; [+18]
       79 GETUPVAL                         R10 1
       80 GETTABLEKS                       R10 R10 K1 ["createElement"]
       82 GETUPVAL                         R11 2
       83 GETTABLEKS                       R11 R11 K38 ["Image"]
       85 DUPTABLE                         R12 K41 [{["tag"] = "size-full", ["Image"], ["ScaleType"]}]
       86 GETTABLEKS                       R13 R0 K36 ["previewImage"]
       88 SETTABLEKS                       R13 R12 K38 ["Image"]
       90 GETIMPORT                        R13 K44 [Enum.ScaleType.Fit]
       92 SETTABLEKS                       R13 R12 K40 ["ScaleType"]
       94 CALL                             R10 2 1
       95 JUMP                             ; [+20]
       96 GETUPVAL                         R10 1
       97 GETTABLEKS                       R10 R10 K1 ["createElement"]
       99 GETUPVAL                         R11 2
      100 GETTABLEKS                       R11 R11 K38 ["Image"]
      102 DUPTABLE                         R12 K46 [{["tag"] = "size-full", ["Image"], ["imageStyle"]}]
      103 GETUPVAL                         R13 4
      104 GETTABLEKS                       R13 R13 K47 ["PLACEHOLDER_ICON"]
      106 SETTABLEKS                       R13 R12 K38 ["Image"]
      108 DUPTABLE                         R13 K18 [{["Color3"], ["Transparency"] = 0}]
      109 GETTABLEKS                       R14 R0 K48 ["placeholderIconColor"]
      111 SETTABLEKS                       R14 R13 K15 ["Color3"]
      113 SETTABLEKS                       R13 R12 K45 ["imageStyle"]
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K25 ["PreviewModel"]
      118 CALL                             R6 3 1
      119 SETTABLEKS                       R6 R5 K7 ["Preview"]
      121 GETUPVAL                         R6 1
      122 GETTABLEKS                       R6 R6 K1 ["createElement"]
      124 GETUPVAL                         R7 2
      125 GETTABLEKS                       R7 R7 K49 ["Text"]
      127 DUPTABLE                         R8 K52 [{["tag"] = "auto-xy text-body-medium text-align-x-left content-default", ["LayoutOrder"], ["Text"], ["sizeConstraint"]}]
      128 NAMECALL                         R9 R1 K20 ["getNextOrder"]
      130 CALL                             R9 1 1
      131 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
      133 GETTABLEKS                       R9 R0 K53 ["assetDisplayName"]
      135 SETTABLEKS                       R9 R8 K49 ["Text"]
      137 DUPTABLE                         R9 K55 [{"MinSize"}]
      138 GETIMPORT                        R10 K57 [Vector2.new]
      140 GETTABLEKS                       R11 R0 K58 ["nameMinWidth"]
      142 LOADN                            R12 0
      143 CALL                             R10 2 1
      144 SETTABLEKS                       R10 R9 K54 ["MinSize"]
      146 SETTABLEKS                       R9 R8 K51 ["sizeConstraint"]
      148 CALL                             R6 2 1
      149 SETTABLEKS                       R6 R5 K8 ["AssetName"]
      151 GETUPVAL                         R6 1
      152 GETTABLEKS                       R6 R6 K1 ["createElement"]
      154 GETUPVAL                         R7 2
      155 GETTABLEKS                       R7 R7 K2 ["View"]
      157 DUPTABLE                         R8 K60 [{["tag"] = "row align-x-left align-y-center gap-small auto-xy", ["LayoutOrder"]}]
      158 NAMECALL                         R9 R1 K20 ["getNextOrder"]
      160 CALL                             R9 1 1
      161 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
      163 DUPTABLE                         R9 K63 [{"ValidationIcon", "ValidationText"}]
      164 GETUPVAL                         R10 1
      165 GETTABLEKS                       R10 R10 K1 ["createElement"]
      167 GETUPVAL                         R11 2
      168 GETTABLEKS                       R11 R11 K38 ["Image"]
      170 DUPTABLE                         R12 K66 [{["Image"], ["imageStyle"], ["LayoutOrder"] = 1, ["Size"], ["onActivated"]}]
      171 GETTABLEKS                       R13 R0 K67 ["validationStatusImage"]
      173 SETTABLEKS                       R13 R12 K38 ["Image"]
      175 DUPTABLE                         R13 K18 [{["Color3"], ["Transparency"] = 0}]
      176 GETTABLEKS                       R14 R0 K68 ["iconColor"]
      178 SETTABLEKS                       R14 R13 K15 ["Color3"]
      180 SETTABLEKS                       R13 R12 K45 ["imageStyle"]
      182 GETIMPORT                        R13 K23 [UDim2.fromOffset]
      184 GETTABLEKS                       R14 R0 K69 ["validationIconSize"]
      186 GETTABLEKS                       R15 R0 K69 ["validationIconSize"]
      188 CALL                             R13 2 1
      189 SETTABLEKS                       R13 R12 K13 ["Size"]
      191 GETTABLEKS                       R14 R0 K70 ["isValidationError"]
      193 JUMPIFNOT                        R14 ; [+6]
      194 GETTABLEKS                       R14 R0 K71 ["onClickError"]
      196 JUMPIFNOT                        R14 ; [+3]
      197 GETTABLEKS                       R13 R0 K71 ["onClickError"]
      199 JUMP                             ; [+1]
      200 LOADNIL                          R13
      201 SETTABLEKS                       R13 R12 K65 ["onActivated"]
      203 CALL                             R10 2 1
      204 SETTABLEKS                       R10 R9 K61 ["ValidationIcon"]
      206 GETUPVAL                         R10 1
      207 GETTABLEKS                       R10 R10 K1 ["createElement"]
      209 GETUPVAL                         R11 2
      210 GETTABLEKS                       R11 R11 K49 ["Text"]
      212 DUPTABLE                         R12 K75 [{["tag"] = "text-body-medium text-align-x-left", ["Text"], ["textStyle"], ["LayoutOrder"] = 2, ["onActivated"]}]
      213 GETTABLEKS                       R13 R0 K76 ["validationMessage"]
      215 SETTABLEKS                       R13 R12 K49 ["Text"]
      217 DUPTABLE                         R13 K77 [{"Color3"}]
      218 GETTABLEKS                       R14 R0 K78 ["textColor"]
      220 SETTABLEKS                       R14 R13 K15 ["Color3"]
      222 SETTABLEKS                       R13 R12 K73 ["textStyle"]
      224 GETTABLEKS                       R14 R0 K70 ["isValidationError"]
      226 JUMPIFNOT                        R14 ; [+6]
      227 GETTABLEKS                       R14 R0 K71 ["onClickError"]
      229 JUMPIFNOT                        R14 ; [+3]
      230 GETTABLEKS                       R13 R0 K71 ["onClickError"]
      232 JUMP                             ; [+1]
      233 LOADNIL                          R13
      234 SETTABLEKS                       R13 R12 K65 ["onActivated"]
      236 CALL                             R10 2 1
      237 SETTABLEKS                       R10 R9 K62 ["ValidationText"]
      239 CALL                             R6 3 1
      240 SETTABLEKS                       R6 R5 K9 ["ValidationArea"]
      242 CALL                             R2 3 -1
      243 RETURN                           R2 -1

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
       45 DUPCLOSURE                       R8 K16 [PROTO_0]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R7
       51 RETURN                           R8 1
