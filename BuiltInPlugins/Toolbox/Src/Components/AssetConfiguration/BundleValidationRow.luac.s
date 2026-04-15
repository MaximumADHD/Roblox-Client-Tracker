PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["View"]
       10 DUPTABLE                         R4 K5 [{"tag", "LayoutOrder"}]
       11 LOADK                            R5 K6 ["row gap-small align-x-left align-y-center size-full-0 auto-y"]
       12 SETTABLEKS                       R5 R4 K3 ["tag"]
       14 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       16 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       18 DUPTABLE                         R5 K10 [{"Preview", "AssetName", "ValidationArea"}]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K1 ["createElement"]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R7 R8 K2 ["View"]
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
       65 GETUPVAL                         R11 1
       66 GETTABLEKS                       R10 R11 K1 ["createElement"]
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
       85 JUMP                             ; [+26]
       86 GETUPVAL                         R11 1
       87 GETTABLEKS                       R10 R11 K1 ["createElement"]
       89 GETUPVAL                         R12 2
       90 GETTABLEKS                       R11 R12 K34 ["Image"]
       92 DUPTABLE                         R12 K36 [{"tag", "Image", "imageStyle"}]
       93 LOADK                            R13 K37 ["size-full"]
       94 SETTABLEKS                       R13 R12 K3 ["tag"]
       96 GETUPVAL                         R14 4
       97 GETTABLEKS                       R13 R14 K38 ["PLACEHOLDER_ICON"]
       99 SETTABLEKS                       R13 R12 K34 ["Image"]
      101 DUPTABLE                         R13 K17 [{"Color3", "Transparency"}]
      102 GETTABLEKS                       R14 R0 K39 ["placeholderIconColor"]
      104 SETTABLEKS                       R14 R13 K15 ["Color3"]
      106 LOADN                            R14 0
      107 SETTABLEKS                       R14 R13 K16 ["Transparency"]
      109 SETTABLEKS                       R13 R12 K35 ["imageStyle"]
      111 CALL                             R10 2 1
      112 SETTABLEKS                       R10 R9 K24 ["PreviewModel"]
      114 CALL                             R6 3 1
      115 SETTABLEKS                       R6 R5 K7 ["Preview"]
      117 GETUPVAL                         R7 1
      118 GETTABLEKS                       R6 R7 K1 ["createElement"]
      120 GETUPVAL                         R8 2
      121 GETTABLEKS                       R7 R8 K40 ["Text"]
      123 DUPTABLE                         R8 K42 [{"tag", "LayoutOrder", "Text", "sizeConstraint"}]
      124 LOADK                            R9 K43 ["text-body-medium text-align-x-left content-default auto-xy shrink-0"]
      125 SETTABLEKS                       R9 R8 K3 ["tag"]
      127 NAMECALL                         R9 R1 K19 ["getNextOrder"]
      129 CALL                             R9 1 1
      130 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      132 GETTABLEKS                       R9 R0 K44 ["assetDisplayName"]
      134 SETTABLEKS                       R9 R8 K40 ["Text"]
      136 DUPTABLE                         R9 K46 [{"MinSize"}]
      137 GETIMPORT                        R10 K48 [Vector2.new]
      139 GETTABLEKS                       R11 R0 K49 ["nameMinWidth"]
      141 LOADN                            R12 0
      142 CALL                             R10 2 1
      143 SETTABLEKS                       R10 R9 K45 ["MinSize"]
      145 SETTABLEKS                       R9 R8 K41 ["sizeConstraint"]
      147 CALL                             R6 2 1
      148 SETTABLEKS                       R6 R5 K8 ["AssetName"]
      150 GETUPVAL                         R7 1
      151 GETTABLEKS                       R6 R7 K1 ["createElement"]
      153 GETUPVAL                         R8 2
      154 GETTABLEKS                       R7 R8 K2 ["View"]
      156 DUPTABLE                         R8 K5 [{"tag", "LayoutOrder"}]
      157 LOADK                            R9 K50 ["row gap-small align-x-left align-y-center auto-xy shrink-0"]
      158 SETTABLEKS                       R9 R8 K3 ["tag"]
      160 NAMECALL                         R9 R1 K19 ["getNextOrder"]
      162 CALL                             R9 1 1
      163 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      165 DUPTABLE                         R9 K53 [{"ValidationIcon", "ValidationText"}]
      166 GETUPVAL                         R11 1
      167 GETTABLEKS                       R10 R11 K1 ["createElement"]
      169 GETUPVAL                         R12 2
      170 GETTABLEKS                       R11 R12 K34 ["Image"]
      172 DUPTABLE                         R12 K55 [{"Image", "imageStyle", "LayoutOrder", "Size", "onActivated"}]
      173 GETTABLEKS                       R13 R0 K56 ["validationStatusImage"]
      175 SETTABLEKS                       R13 R12 K34 ["Image"]
      177 DUPTABLE                         R13 K17 [{"Color3", "Transparency"}]
      178 GETTABLEKS                       R14 R0 K57 ["iconColor"]
      180 SETTABLEKS                       R14 R13 K15 ["Color3"]
      182 LOADN                            R14 0
      183 SETTABLEKS                       R14 R13 K16 ["Transparency"]
      185 SETTABLEKS                       R13 R12 K35 ["imageStyle"]
      187 LOADN                            R13 1
      188 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      190 GETIMPORT                        R13 K22 [UDim2.fromOffset]
      192 GETTABLEKS                       R14 R0 K58 ["validationIconSize"]
      194 GETTABLEKS                       R15 R0 K58 ["validationIconSize"]
      196 CALL                             R13 2 1
      197 SETTABLEKS                       R13 R12 K12 ["Size"]
      199 GETTABLEKS                       R14 R0 K59 ["isValidationError"]
      201 JUMPIFNOT                        R14 ; [+6]
      202 GETTABLEKS                       R14 R0 K60 ["onClickError"]
      204 JUMPIFNOT                        R14 ; [+3]
      205 GETTABLEKS                       R13 R0 K60 ["onClickError"]
      207 JUMP                             ; [+1]
      208 LOADNIL                          R13
      209 SETTABLEKS                       R13 R12 K54 ["onActivated"]
      211 CALL                             R10 2 1
      212 SETTABLEKS                       R10 R9 K51 ["ValidationIcon"]
      214 GETUPVAL                         R11 1
      215 GETTABLEKS                       R10 R11 K1 ["createElement"]
      217 GETUPVAL                         R12 2
      218 GETTABLEKS                       R11 R12 K40 ["Text"]
      220 DUPTABLE                         R12 K62 [{"tag", "Text", "textStyle", "LayoutOrder", "onActivated"}]
      221 LOADK                            R13 K63 ["text-body-medium text-align-x-left"]
      222 SETTABLEKS                       R13 R12 K3 ["tag"]
      224 GETTABLEKS                       R13 R0 K64 ["validationMessage"]
      226 SETTABLEKS                       R13 R12 K40 ["Text"]
      228 DUPTABLE                         R13 K65 [{"Color3"}]
      229 GETTABLEKS                       R14 R0 K66 ["textColor"]
      231 SETTABLEKS                       R14 R13 K15 ["Color3"]
      233 SETTABLEKS                       R13 R12 K61 ["textStyle"]
      235 LOADN                            R13 2
      236 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      238 GETTABLEKS                       R14 R0 K59 ["isValidationError"]
      240 JUMPIFNOT                        R14 ; [+6]
      241 GETTABLEKS                       R14 R0 K60 ["onClickError"]
      243 JUMPIFNOT                        R14 ; [+3]
      244 GETTABLEKS                       R13 R0 K60 ["onClickError"]
      246 JUMP                             ; [+1]
      247 LOADNIL                          R13
      248 SETTABLEKS                       R13 R12 K54 ["onActivated"]
      250 CALL                             R10 2 1
      251 SETTABLEKS                       R10 R9 K52 ["ValidationText"]
      253 CALL                             R6 3 1
      254 SETTABLEKS                       R6 R5 K9 ["ValidationArea"]
      256 CALL                             R2 3 -1
      257 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["UI"]
       30 GETTABLEKS                       R4 R5 K11 ["AssetRenderModel"]
       32 GETTABLEKS                       R6 R3 K12 ["Util"]
       34 GETTABLEKS                       R5 R6 K13 ["LayoutOrderIterator"]
       36 GETTABLEKS                       R7 R0 K14 ["Src"]
       38 GETTABLEKS                       R6 R7 K12 ["Util"]
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
