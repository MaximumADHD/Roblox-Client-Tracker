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
       28 DUPTABLE                         R5 K12 [{["tag"] = "bg-system-alert"}]
       29 SETTABLEKS                       R5 R4 K9 ["container"]
       31 DUPTABLE                         R5 K14 [{"style"}]
       32 GETTABLEKS                       R6 R0 K15 ["DarkMode"]
       34 GETTABLEKS                       R6 R6 K16 ["Content"]
       36 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       38 SETTABLEKS                       R6 R5 K13 ["style"]
       40 SETTABLEKS                       R5 R4 K0 ["content"]
       42 SETTABLE                         R4 R2 R3
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K18 ["Success"]
       46 DUPTABLE                         R4 K10 [{"container", "content"}]
       47 DUPTABLE                         R5 K20 [{["tag"] = "bg-system-success"}]
       48 SETTABLEKS                       R5 R4 K9 ["container"]
       50 DUPTABLE                         R5 K14 [{"style"}]
       51 GETTABLEKS                       R6 R0 K21 ["LightMode"]
       53 GETTABLEKS                       R6 R6 K16 ["Content"]
       55 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       57 SETTABLEKS                       R6 R5 K13 ["style"]
       59 SETTABLEKS                       R5 R4 K0 ["content"]
       61 SETTABLE                         R4 R2 R3
       62 GETUPVAL                         R3 2
       63 GETTABLEKS                       R3 R3 K22 ["Warning"]
       65 DUPTABLE                         R4 K10 [{"container", "content"}]
       66 DUPTABLE                         R5 K24 [{["tag"] = "bg-system-warning"}]
       67 SETTABLEKS                       R5 R4 K9 ["container"]
       69 DUPTABLE                         R5 K14 [{"style"}]
       70 GETTABLEKS                       R6 R0 K21 ["LightMode"]
       72 GETTABLEKS                       R6 R6 K16 ["Content"]
       74 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
       76 SETTABLEKS                       R6 R5 K13 ["style"]
       78 SETTABLEKS                       R5 R4 K0 ["content"]
       80 SETTABLE                         R4 R2 R3
       81 GETUPVAL                         R3 2
       82 GETTABLEKS                       R3 R3 K17 ["Emphasis"]
       84 GETUPVAL                         R5 0
       85 GETTABLEKS                       R5 R5 K25 ["FoundationActionEmphasisStatusIndicator"]
       87 JUMPIFNOT                        R5 ; [+16]
       88 DUPTABLE                         R4 K10 [{"container", "content"}]
       89 DUPTABLE                         R5 K27 [{["tag"] = "bg-action-emphasis"}]
       90 SETTABLEKS                       R5 R4 K9 ["container"]
       92 DUPTABLE                         R5 K14 [{"style"}]
       93 GETTABLEKS                       R6 R0 K28 ["Color"]
       95 GETTABLEKS                       R6 R6 K29 ["ActionEmphasis"]
       97 GETTABLEKS                       R6 R6 K30 ["Foreground"]
       99 SETTABLEKS                       R6 R5 K13 ["style"]
      101 SETTABLEKS                       R5 R4 K0 ["content"]
      103 JUMP                             ; [+15]
      104 DUPTABLE                         R4 K10 [{"container", "content"}]
      105 DUPTABLE                         R5 K32 [{["tag"] = "bg-system-emphasis"}]
      106 SETTABLEKS                       R5 R4 K9 ["container"]
      108 DUPTABLE                         R5 K14 [{"style"}]
      109 GETTABLEKS                       R6 R0 K15 ["DarkMode"]
      111 GETTABLEKS                       R6 R6 K16 ["Content"]
      113 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      115 SETTABLEKS                       R6 R5 K13 ["style"]
      117 SETTABLEKS                       R5 R4 K0 ["content"]
      119 SETTABLE                         R4 R2 R3
      120 GETUPVAL                         R3 2
      121 GETTABLEKS                       R3 R3 K33 ["Neutral"]
      123 DUPTABLE                         R4 K10 [{"container", "content"}]
      124 DUPTABLE                         R5 K35 [{["tag"] = "bg-system-neutral"}]
      125 SETTABLEKS                       R5 R4 K9 ["container"]
      127 DUPTABLE                         R5 K14 [{"style"}]
      128 GETTABLEKS                       R6 R0 K36 ["Inverse"]
      130 GETTABLEKS                       R6 R6 K16 ["Content"]
      132 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      134 SETTABLEKS                       R6 R5 K13 ["style"]
      136 SETTABLEKS                       R5 R4 K0 ["content"]
      138 SETTABLE                         R4 R2 R3
      139 GETUPVAL                         R3 2
      140 GETTABLEKS                       R3 R3 K37 ["Standard"]
      142 DUPTABLE                         R4 K10 [{"container", "content"}]
      143 DUPTABLE                         R5 K39 [{["tag"] = "bg-action-standard"}]
      144 SETTABLEKS                       R5 R4 K9 ["container"]
      146 DUPTABLE                         R5 K14 [{"style"}]
      147 GETTABLEKS                       R6 R0 K28 ["Color"]
      149 GETTABLEKS                       R6 R6 K16 ["Content"]
      151 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      153 SETTABLEKS                       R6 R5 K13 ["style"]
      155 SETTABLEKS                       R5 R4 K0 ["content"]
      157 SETTABLE                         R4 R2 R3
      158 GETUPVAL                         R3 2
      159 GETTABLEKS                       R3 R3 K40 ["Contrast_Experiment"]
      161 DUPTABLE                         R4 K10 [{"container", "content"}]
      162 DUPTABLE                         R5 K42 [{["tag"] = "bg-system-contrast"}]
      163 SETTABLEKS                       R5 R4 K9 ["container"]
      165 DUPTABLE                         R5 K14 [{"style"}]
      166 GETTABLEKS                       R6 R0 K36 ["Inverse"]
      168 GETTABLEKS                       R6 R6 K16 ["Content"]
      170 GETTABLEKS                       R6 R6 K17 ["Emphasis"]
      172 SETTABLEKS                       R6 R5 K13 ["style"]
      174 SETTABLEKS                       R5 R4 K0 ["content"]
      176 SETTABLE                         R4 R2 R3
      177 GETUPVAL                         R3 2
      178 GETTABLEKS                       R3 R3 K43 ["Voice"]
      180 DUPTABLE                         R4 K44 [{"container"}]
      181 DUPTABLE                         R5 K46 [{"backgroundStyle"}]
      182 GETTABLEKS                       R6 R0 K28 ["Color"]
      184 GETTABLEKS                       R6 R6 K47 ["Extended"]
      186 GETTABLEKS                       R6 R6 K48 ["Orange"]
      188 GETTABLEKS                       R6 R6 K49 ["Orange_600"]
      190 SETTABLEKS                       R6 R5 K45 ["backgroundStyle"]
      192 SETTABLEKS                       R5 R4 K9 ["container"]
      194 SETTABLE                         R4 R2 R3
      195 NEWTABLE                         R3 2 0
      197 LOADB                            R4 0
      198 DUPTABLE                         R5 K44 [{"container"}]
      199 DUPTABLE                         R6 K51 [{["tag"] = "size-200-200"}]
      200 SETTABLEKS                       R6 R5 K9 ["container"]
      202 SETTABLE                         R5 R3 R4
      203 LOADB                            R4 1
      204 DUPTABLE                         R5 K44 [{"container"}]
      205 DUPTABLE                         R6 K53 [{["tag"] = "row align-x-center align-y-center size-400-400 auto-x padding-xsmall"}]
      206 SETTABLEKS                       R6 R5 K9 ["container"]
      208 SETTABLE                         R5 R3 R4
      209 NEWTABLE                         R4 4 0
      211 GETUPVAL                         R5 3
      212 GETTABLEKS                       R5 R5 K54 ["Circle"]
      214 DUPTABLE                         R6 K44 [{"container"}]
      215 DUPTABLE                         R7 K56 [{["tag"] = "radius-circle"}]
      216 SETTABLEKS                       R7 R6 K9 ["container"]
      218 SETTABLE                         R6 R4 R5
      219 GETUPVAL                         R5 3
      220 GETTABLEKS                       R5 R5 K57 ["Ring"]
      222 DUPTABLE                         R6 K59 [{"container", "ring"}]
      223 DUPTABLE                         R7 K61 [{["tag"] = "align-x-center align-y-center radius-circle"}]
      224 SETTABLEKS                       R7 R6 K9 ["container"]
      226 DUPTABLE                         R7 K63 [{["tag"] = "size-100-100 radius-circle bg-surface-100"}]
      227 SETTABLEKS                       R7 R6 K58 ["ring"]
      229 SETTABLE                         R6 R4 R5
      230 GETUPVAL                         R5 3
      231 GETTABLEKS                       R5 R5 K64 ["Square"]
      233 DUPTABLE                         R6 K44 [{"container"}]
      234 DUPTABLE                         R7 K66 [{["tag"] = "radius-none"}]
      235 SETTABLEKS                       R7 R6 K9 ["container"]
      237 SETTABLE                         R6 R4 R5
      238 DUPTABLE                         R5 K71 [{"common", "variants", "hasValue", "shape"}]
      239 SETTABLEKS                       R1 R5 K67 ["common"]
      241 SETTABLEKS                       R2 R5 K68 ["variants"]
      243 SETTABLEKS                       R3 R5 K69 ["hasValue"]
      245 SETTABLEKS                       R4 R5 K70 ["shape"]
      247 RETURN                           R5 1

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
