PROTO_0:
        0 DUPTABLE                         R1 K1 [{"content"}]
        1 DUPTABLE                         R2 K4 [{"tag", "font"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K5 ["FoundationStatusIndicatorBeta"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K6 ["auto-xy text-align-x-left"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K7 ["auto-xy text-caption-small text-align-x-left"]
        9 SETTABLEKS                       R3 R2 K2 ["tag"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["FoundationStatusIndicatorBeta"]
       14 JUMPIFNOT                        R4 ; [+2]
       15 GETUPVAL                         R3 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K3 ["font"]
       20 SETTABLEKS                       R2 R1 K0 ["content"]
       22 NEWTABLE                         R2 8 0
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K8 ["Alert"]
       27 DUPTABLE                         R4 K10 [{"container", "content"}]
       28 DUPTABLE                         R5 K11 [{"tag"}]
       29 LOADK                            R6 K12 ["bg-system-alert"]
       30 SETTABLEKS                       R6 R5 K2 ["tag"]
       32 SETTABLEKS                       R5 R4 K9 ["container"]
       34 DUPTABLE                         R5 K14 [{"style"}]
       35 GETTABLEKS                       R6 R0 K15 ["DarkMode"]
       37 GETTABLEKS                       R6 R6 K16 ["Content"]
       39 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       41 SETTABLEKS                       R6 R5 K13 ["style"]
       43 SETTABLEKS                       R5 R4 K0 ["content"]
       45 SETTABLE                         R4 R2 R3
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R3 R3 K18 ["Success"]
       49 DUPTABLE                         R4 K10 [{"container", "content"}]
       50 DUPTABLE                         R5 K11 [{"tag"}]
       51 LOADK                            R6 K19 ["bg-system-success"]
       52 SETTABLEKS                       R6 R5 K2 ["tag"]
       54 SETTABLEKS                       R5 R4 K9 ["container"]
       56 DUPTABLE                         R5 K14 [{"style"}]
       57 GETTABLEKS                       R6 R0 K20 ["LightMode"]
       59 GETTABLEKS                       R6 R6 K16 ["Content"]
       61 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       63 SETTABLEKS                       R6 R5 K13 ["style"]
       65 SETTABLEKS                       R5 R4 K0 ["content"]
       67 SETTABLE                         R4 R2 R3
       68 GETUPVAL                         R3 2
       69 GETTABLEKS                       R3 R3 K21 ["Warning"]
       71 DUPTABLE                         R4 K10 [{"container", "content"}]
       72 DUPTABLE                         R5 K11 [{"tag"}]
       73 LOADK                            R6 K22 ["bg-system-warning"]
       74 SETTABLEKS                       R6 R5 K2 ["tag"]
       76 SETTABLEKS                       R5 R4 K9 ["container"]
       78 DUPTABLE                         R5 K14 [{"style"}]
       79 GETTABLEKS                       R6 R0 K20 ["LightMode"]
       81 GETTABLEKS                       R6 R6 K16 ["Content"]
       83 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       85 SETTABLEKS                       R6 R5 K13 ["style"]
       87 SETTABLEKS                       R5 R4 K0 ["content"]
       89 SETTABLE                         R4 R2 R3
       90 GETUPVAL                         R3 2
       91 GETTABLEKS                       R3 R3 K17 ["Emphasis"]
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R5 R5 K23 ["FoundationActionEmphasisStatusIndicator"]
       96 JUMPIFNOT                        R5 ; [+19]
       97 DUPTABLE                         R4 K10 [{"container", "content"}]
       98 DUPTABLE                         R5 K11 [{"tag"}]
       99 LOADK                            R6 K24 ["bg-action-emphasis"]
      100 SETTABLEKS                       R6 R5 K2 ["tag"]
      102 SETTABLEKS                       R5 R4 K9 ["container"]
      104 DUPTABLE                         R5 K14 [{"style"}]
      105 GETTABLEKS                       R6 R0 K25 ["Color"]
      107 GETTABLEKS                       R6 R6 K26 ["ActionEmphasis"]
      109 GETTABLEKS                       R6 R6 K27 ["Foreground"]
      111 SETTABLEKS                       R6 R5 K13 ["style"]
      113 SETTABLEKS                       R5 R4 K0 ["content"]
      115 JUMP                             ; [+18]
      116 DUPTABLE                         R4 K10 [{"container", "content"}]
      117 DUPTABLE                         R5 K11 [{"tag"}]
      118 LOADK                            R6 K28 ["bg-system-emphasis"]
      119 SETTABLEKS                       R6 R5 K2 ["tag"]
      121 SETTABLEKS                       R5 R4 K9 ["container"]
      123 DUPTABLE                         R5 K14 [{"style"}]
      124 GETTABLEKS                       R6 R0 K15 ["DarkMode"]
      126 GETTABLEKS                       R6 R6 K16 ["Content"]
      128 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      130 SETTABLEKS                       R6 R5 K13 ["style"]
      132 SETTABLEKS                       R5 R4 K0 ["content"]
      134 SETTABLE                         R4 R2 R3
      135 GETUPVAL                         R3 2
      136 GETTABLEKS                       R3 R3 K29 ["Neutral"]
      138 DUPTABLE                         R4 K10 [{"container", "content"}]
      139 DUPTABLE                         R5 K11 [{"tag"}]
      140 LOADK                            R6 K30 ["bg-system-neutral"]
      141 SETTABLEKS                       R6 R5 K2 ["tag"]
      143 SETTABLEKS                       R5 R4 K9 ["container"]
      145 DUPTABLE                         R5 K14 [{"style"}]
      146 GETTABLEKS                       R6 R0 K31 ["Inverse"]
      148 GETTABLEKS                       R6 R6 K16 ["Content"]
      150 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      152 SETTABLEKS                       R6 R5 K13 ["style"]
      154 SETTABLEKS                       R5 R4 K0 ["content"]
      156 SETTABLE                         R4 R2 R3
      157 GETUPVAL                         R3 2
      158 GETTABLEKS                       R3 R3 K32 ["Standard"]
      160 DUPTABLE                         R4 K10 [{"container", "content"}]
      161 DUPTABLE                         R5 K11 [{"tag"}]
      162 LOADK                            R6 K33 ["bg-action-standard"]
      163 SETTABLEKS                       R6 R5 K2 ["tag"]
      165 SETTABLEKS                       R5 R4 K9 ["container"]
      167 DUPTABLE                         R5 K14 [{"style"}]
      168 GETTABLEKS                       R6 R0 K25 ["Color"]
      170 GETTABLEKS                       R6 R6 K16 ["Content"]
      172 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      174 SETTABLEKS                       R6 R5 K13 ["style"]
      176 SETTABLEKS                       R5 R4 K0 ["content"]
      178 SETTABLE                         R4 R2 R3
      179 GETUPVAL                         R3 2
      180 GETTABLEKS                       R3 R3 K34 ["Contrast_Experiment"]
      182 DUPTABLE                         R4 K10 [{"container", "content"}]
      183 DUPTABLE                         R5 K11 [{"tag"}]
      184 LOADK                            R6 K35 ["bg-system-contrast"]
      185 SETTABLEKS                       R6 R5 K2 ["tag"]
      187 SETTABLEKS                       R5 R4 K9 ["container"]
      189 DUPTABLE                         R5 K14 [{"style"}]
      190 GETTABLEKS                       R6 R0 K31 ["Inverse"]
      192 GETTABLEKS                       R6 R6 K16 ["Content"]
      194 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      196 SETTABLEKS                       R6 R5 K13 ["style"]
      198 SETTABLEKS                       R5 R4 K0 ["content"]
      200 SETTABLE                         R4 R2 R3
      201 GETUPVAL                         R3 2
      202 GETTABLEKS                       R3 R3 K36 ["Voice"]
      204 DUPTABLE                         R4 K37 [{"container"}]
      205 DUPTABLE                         R5 K39 [{"backgroundStyle"}]
      206 GETTABLEKS                       R6 R0 K25 ["Color"]
      208 GETTABLEKS                       R6 R6 K40 ["Extended"]
      210 GETTABLEKS                       R6 R6 K41 ["Orange"]
      212 GETTABLEKS                       R6 R6 K42 ["Orange_600"]
      214 SETTABLEKS                       R6 R5 K38 ["backgroundStyle"]
      216 SETTABLEKS                       R5 R4 K9 ["container"]
      218 SETTABLE                         R4 R2 R3
      219 NEWTABLE                         R3 2 0
      221 LOADB                            R4 0
      222 DUPTABLE                         R5 K37 [{"container"}]
      223 DUPTABLE                         R6 K11 [{"tag"}]
      224 LOADK                            R7 K43 ["size-200-200"]
      225 SETTABLEKS                       R7 R6 K2 ["tag"]
      227 SETTABLEKS                       R6 R5 K9 ["container"]
      229 SETTABLE                         R5 R3 R4
      230 LOADB                            R4 1
      231 DUPTABLE                         R5 K37 [{"container"}]
      232 DUPTABLE                         R6 K11 [{"tag"}]
      233 LOADK                            R7 K44 ["row align-x-center align-y-center size-400-400 auto-x padding-xsmall"]
      234 SETTABLEKS                       R7 R6 K2 ["tag"]
      236 SETTABLEKS                       R6 R5 K9 ["container"]
      238 SETTABLE                         R5 R3 R4
      239 NEWTABLE                         R4 4 0
      241 GETUPVAL                         R5 3
      242 GETTABLEKS                       R5 R5 K45 ["Circle"]
      244 DUPTABLE                         R6 K37 [{"container"}]
      245 DUPTABLE                         R7 K11 [{"tag"}]
      246 LOADK                            R8 K46 ["radius-circle"]
      247 SETTABLEKS                       R8 R7 K2 ["tag"]
      249 SETTABLEKS                       R7 R6 K9 ["container"]
      251 SETTABLE                         R6 R4 R5
      252 GETUPVAL                         R5 3
      253 GETTABLEKS                       R5 R5 K47 ["Ring"]
      255 DUPTABLE                         R6 K49 [{"container", "ring"}]
      256 DUPTABLE                         R7 K11 [{"tag"}]
      257 LOADK                            R8 K50 ["align-x-center align-y-center radius-circle"]
      258 SETTABLEKS                       R8 R7 K2 ["tag"]
      260 SETTABLEKS                       R7 R6 K9 ["container"]
      262 DUPTABLE                         R7 K11 [{"tag"}]
      263 LOADK                            R8 K51 ["size-100-100 radius-circle bg-surface-100"]
      264 SETTABLEKS                       R8 R7 K2 ["tag"]
      266 SETTABLEKS                       R7 R6 K48 ["ring"]
      268 SETTABLE                         R6 R4 R5
      269 GETUPVAL                         R5 3
      270 GETTABLEKS                       R5 R5 K52 ["Square"]
      272 DUPTABLE                         R6 K37 [{"container"}]
      273 DUPTABLE                         R7 K11 [{"tag"}]
      274 LOADK                            R8 K53 ["radius-none"]
      275 SETTABLEKS                       R8 R7 K2 ["tag"]
      277 SETTABLEKS                       R7 R6 K9 ["container"]
      279 SETTABLE                         R6 R4 R5
      280 DUPTABLE                         R5 K58 [{"common", "variants", "hasValue", "shape"}]
      281 SETTABLEKS                       R1 R5 K54 ["common"]
      283 SETTABLEKS                       R2 R5 K55 ["variants"]
      285 SETTABLEKS                       R3 R5 K56 ["hasValue"]
      287 SETTABLEKS                       R4 R5 K57 ["shape"]
      289 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FoundationStatusIndicatorVariantExperiment"]
        3 JUMPIF                           R4 ; [+21]
        4 GETUPVAL                         R4 1
        5 JUMPIFNOT                        R4 ; [+19]
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["Contrast_Experiment"]
        9 JUMPIFNOTEQ                      R1 R4 ; [+5]
       11 GETIMPORT                        R4 K3 [error]
       13 LOADK                            R5 K4 ["Contrast is not a supported StatusIndicator variant."]
       14 CALL                             R4 1 0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K5 ["Alert"]
       18 JUMPIFNOTEQ                      R1 R4 ; [+6]
       20 JUMPIFNOT                        R2 ; [+4]
       21 GETIMPORT                        R4 K3 [error]
       23 LOADK                            R5 K6 ["Alert is not a supported numeric StatusIndicator variant."]
       24 CALL                             R4 1 0
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K7 ["useVariants"]
       28 LOADK                            R5 K8 ["StatusIndicator"]
       29 GETGLOBAL                        R6 K9 ["variantsFactory"]
       31 MOVE                             R7 R0
       32 CALL                             R4 3 1
       33 GETUPVAL                         R5 4
       34 GETTABLEKS                       R6 R4 K10 ["common"]
       36 GETTABLEKS                       R8 R4 K11 ["variants"]
       38 GETTABLE                         R7 R8 R1
       39 GETTABLEKS                       R9 R4 K12 ["hasValue"]
       41 GETTABLE                         R8 R9 R2
       42 GETTABLEKS                       R10 R4 K13 ["shape"]
       44 GETTABLE                         R9 R10 R3
       45 CALL                             R5 4 -1
       46 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["StatusIndicatorVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R4 K10 ["StatusIndicatorShape"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Utility"]
       39 GETTABLEKS                       R6 R6 K13 ["composeStyleVariant"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Providers"]
       46 GETTABLEKS                       R7 R7 K15 ["Style"]
       48 GETTABLEKS                       R7 R7 K16 ["Tokens"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K14 ["Providers"]
       55 GETTABLEKS                       R8 R8 K15 ["Style"]
       57 GETTABLEKS                       R8 R8 K17 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R9 K19 [_G]
       62 GETTABLEKS                       R9 R9 K20 ["__DEV__"]
       64 JUMPIFEQKB                       R9 TRUE ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K21 ["Constants"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K24 [Font.new]
       75 GETTABLEKS                       R11 R9 K25 ["BUILDER_SANS_FONT_ASSET"]
       77 GETIMPORT                        R12 K29 [Enum.FontWeight.SemiBold]
       79 GETIMPORT                        R13 K32 [Enum.FontStyle.Normal]
       81 CALL                             R10 3 1
       82 DUPCLOSURE                       R11 K33 [PROTO_0]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 SETGLOBAL                        R11 K34 ["variantsFactory"]
       89 DUPCLOSURE                       R11 K35 [PROTO_1]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R5
       95 RETURN                           R11 1
