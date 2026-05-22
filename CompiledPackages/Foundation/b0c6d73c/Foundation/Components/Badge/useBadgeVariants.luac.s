PROTO_0:
        0 DUPTABLE                         R1 K2 [{"container", "text"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 LOADK                            R3 K5 ["row align-x-center align-y-center gap-xsmall radius-circle"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K4 [{"tag"}]
        8 NEWTABLE                         R3 2 0
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K6 ["FoundationTruncateBadgeText"]
       13 SETTABLEKS                       R4 R3 K7 ["auto-xy text-label-small text-align-x-left text-truncate-split"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K6 ["FoundationTruncateBadgeText"]
       18 NOT                              R4 R5
       19 SETTABLEKS                       R4 R3 K8 ["auto-xy text-label-small text-align-x-left"]
       21 SETTABLEKS                       R3 R2 K3 ["tag"]
       23 SETTABLEKS                       R2 R1 K1 ["text"]
       25 NEWTABLE                         R2 8 0
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R3 R3 K9 ["Alert"]
       30 DUPTABLE                         R4 K11 [{"container", "content"}]
       31 DUPTABLE                         R5 K13 [{"backgroundStyle"}]
       32 GETTABLEKS                       R6 R0 K14 ["Color"]
       34 GETTABLEKS                       R6 R6 K15 ["System"]
       36 GETTABLEKS                       R6 R6 K9 ["Alert"]
       38 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
       40 SETTABLEKS                       R5 R4 K0 ["container"]
       42 DUPTABLE                         R5 K17 [{"style"}]
       43 GETTABLEKS                       R6 R0 K18 ["DarkMode"]
       45 GETTABLEKS                       R6 R6 K19 ["Content"]
       47 GETTABLEKS                       R6 R6 K20 ["Emphasis"]
       49 SETTABLEKS                       R6 R5 K16 ["style"]
       51 SETTABLEKS                       R5 R4 K10 ["content"]
       53 SETTABLE                         R4 R2 R3
       54 GETUPVAL                         R3 1
       55 GETTABLEKS                       R3 R3 K21 ["Success"]
       57 DUPTABLE                         R4 K11 [{"container", "content"}]
       58 DUPTABLE                         R5 K13 [{"backgroundStyle"}]
       59 GETTABLEKS                       R6 R0 K14 ["Color"]
       61 GETTABLEKS                       R6 R6 K15 ["System"]
       63 GETTABLEKS                       R6 R6 K21 ["Success"]
       65 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
       67 SETTABLEKS                       R5 R4 K0 ["container"]
       69 DUPTABLE                         R5 K17 [{"style"}]
       70 GETTABLEKS                       R6 R0 K22 ["LightMode"]
       72 GETTABLEKS                       R6 R6 K19 ["Content"]
       74 GETTABLEKS                       R6 R6 K20 ["Emphasis"]
       76 SETTABLEKS                       R6 R5 K16 ["style"]
       78 SETTABLEKS                       R5 R4 K10 ["content"]
       80 SETTABLE                         R4 R2 R3
       81 GETUPVAL                         R3 1
       82 GETTABLEKS                       R3 R3 K23 ["Warning"]
       84 DUPTABLE                         R4 K11 [{"container", "content"}]
       85 DUPTABLE                         R5 K13 [{"backgroundStyle"}]
       86 GETTABLEKS                       R6 R0 K14 ["Color"]
       88 GETTABLEKS                       R6 R6 K15 ["System"]
       90 GETTABLEKS                       R6 R6 K23 ["Warning"]
       92 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
       94 SETTABLEKS                       R5 R4 K0 ["container"]
       96 DUPTABLE                         R5 K17 [{"style"}]
       97 GETTABLEKS                       R6 R0 K22 ["LightMode"]
       99 GETTABLEKS                       R6 R6 K19 ["Content"]
      101 GETTABLEKS                       R6 R6 K20 ["Emphasis"]
      103 SETTABLEKS                       R6 R5 K16 ["style"]
      105 SETTABLEKS                       R5 R4 K10 ["content"]
      107 SETTABLE                         R4 R2 R3
      108 GETUPVAL                         R3 1
      109 GETTABLEKS                       R3 R3 K24 ["Contrast"]
      111 DUPTABLE                         R4 K11 [{"container", "content"}]
      112 DUPTABLE                         R5 K13 [{"backgroundStyle"}]
      113 GETTABLEKS                       R6 R0 K14 ["Color"]
      115 GETTABLEKS                       R6 R6 K15 ["System"]
      117 GETTABLEKS                       R6 R6 K24 ["Contrast"]
      119 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
      121 SETTABLEKS                       R5 R4 K0 ["container"]
      123 DUPTABLE                         R5 K17 [{"style"}]
      124 GETTABLEKS                       R6 R0 K25 ["Inverse"]
      126 GETTABLEKS                       R6 R6 K19 ["Content"]
      128 GETTABLEKS                       R6 R6 K20 ["Emphasis"]
      130 SETTABLEKS                       R6 R5 K16 ["style"]
      132 SETTABLEKS                       R5 R4 K10 ["content"]
      134 SETTABLE                         R4 R2 R3
      135 GETUPVAL                         R3 1
      136 GETTABLEKS                       R3 R3 K26 ["Neutral"]
      138 DUPTABLE                         R4 K11 [{"container", "content"}]
      139 DUPTABLE                         R5 K13 [{"backgroundStyle"}]
      140 GETTABLEKS                       R6 R0 K14 ["Color"]
      142 GETTABLEKS                       R6 R6 K27 ["Shift"]
      144 GETTABLEKS                       R6 R6 K28 ["Shift_300"]
      146 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
      148 SETTABLEKS                       R5 R4 K0 ["container"]
      150 DUPTABLE                         R5 K17 [{"style"}]
      151 GETTABLEKS                       R6 R0 K14 ["Color"]
      153 GETTABLEKS                       R6 R6 K19 ["Content"]
      155 GETTABLEKS                       R6 R6 K20 ["Emphasis"]
      157 SETTABLEKS                       R6 R5 K16 ["style"]
      159 SETTABLEKS                       R5 R4 K10 ["content"]
      161 SETTABLE                         R4 R2 R3
      162 GETUPVAL                         R3 1
      163 GETTABLEKS                       R3 R3 K29 ["OverMedia"]
      165 DUPTABLE                         R4 K11 [{"container", "content"}]
      166 DUPTABLE                         R5 K31 [{"backgroundStyle", "stroke"}]
      167 GETTABLEKS                       R6 R0 K22 ["LightMode"]
      169 GETTABLEKS                       R6 R6 K32 ["Surface"]
      171 GETTABLEKS                       R6 R6 K33 ["Surface_100"]
      173 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
      175 DUPTABLE                         R6 K35 [{"Color", "Transparency"}]
      176 GETTABLEKS                       R7 R0 K22 ["LightMode"]
      178 GETTABLEKS                       R7 R7 K36 ["Stroke"]
      180 GETTABLEKS                       R7 R7 K37 ["Default"]
      182 GETTABLEKS                       R7 R7 K38 ["Color3"]
      184 SETTABLEKS                       R7 R6 K14 ["Color"]
      186 GETTABLEKS                       R7 R0 K22 ["LightMode"]
      188 GETTABLEKS                       R7 R7 K36 ["Stroke"]
      190 GETTABLEKS                       R7 R7 K37 ["Default"]
      192 GETTABLEKS                       R7 R7 K34 ["Transparency"]
      194 SETTABLEKS                       R7 R6 K34 ["Transparency"]
      196 SETTABLEKS                       R6 R5 K30 ["stroke"]
      198 SETTABLEKS                       R5 R4 K0 ["container"]
      200 DUPTABLE                         R5 K17 [{"style"}]
      201 GETTABLEKS                       R6 R0 K22 ["LightMode"]
      203 GETTABLEKS                       R6 R6 K19 ["Content"]
      205 GETTABLEKS                       R6 R6 K20 ["Emphasis"]
      207 SETTABLEKS                       R6 R5 K16 ["style"]
      209 SETTABLEKS                       R5 R4 K10 ["content"]
      211 SETTABLE                         R4 R2 R3
      212 NEWTABLE                         R3 2 0
      214 LOADB                            R4 1
      215 DUPTABLE                         R5 K39 [{"container"}]
      216 DUPTABLE                         R6 K4 [{"tag"}]
      217 LOADK                            R7 K40 ["size-600"]
      218 SETTABLEKS                       R7 R6 K3 ["tag"]
      220 SETTABLEKS                       R6 R5 K0 ["container"]
      222 SETTABLE                         R5 R3 R4
      223 LOADB                            R4 0
      224 DUPTABLE                         R5 K39 [{"container"}]
      225 DUPTABLE                         R6 K4 [{"tag"}]
      226 LOADK                            R7 K41 ["size-0-600 auto-x padding-x-small"]
      227 SETTABLEKS                       R7 R6 K3 ["tag"]
      229 SETTABLEKS                       R6 R5 K0 ["container"]
      231 SETTABLE                         R5 R3 R4
      232 DUPTABLE                         R4 K45 [{"common", "variants", "iconOnly"}]
      233 SETTABLEKS                       R1 R4 K42 ["common"]
      235 SETTABLEKS                       R2 R4 K43 ["variants"]
      237 SETTABLEKS                       R3 R4 K44 ["iconOnly"]
      239 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["Badge"]
        4 GETGLOBAL                        R5 K2 ["variantsFactory"]
        6 MOVE                             R6 R0
        7 CALL                             R3 3 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R5 R3 K3 ["common"]
       11 GETTABLEKS                       R7 R3 K4 ["variants"]
       13 GETTABLE                         R6 R7 R1
       14 GETTABLEKS                       R8 R3 K5 ["iconOnly"]
       16 GETTABLE                         R7 R8 R2
       17 CALL                             R4 3 -1
       18 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["BadgeVariant"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["BadgeSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Utility"]
       32 GETTABLEKS                       R5 R5 K12 ["composeStyleVariant"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Providers"]
       39 GETTABLEKS                       R6 R6 K14 ["Style"]
       41 GETTABLEKS                       R6 R6 K15 ["Tokens"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Providers"]
       48 GETTABLEKS                       R7 R7 K14 ["Style"]
       50 GETTABLEKS                       R7 R7 K16 ["VariantsContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Utility"]
       57 GETTABLEKS                       R8 R8 K17 ["Flags"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R1
       63 SETGLOBAL                        R8 K19 ["variantsFactory"]
       65 DUPCLOSURE                       R8 K20 [PROTO_1]
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 RETURN                           R8 1
