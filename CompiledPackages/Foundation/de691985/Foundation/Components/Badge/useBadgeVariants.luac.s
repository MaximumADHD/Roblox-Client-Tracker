PROTO_0:
        0 DUPTABLE                         R1 K2 [{"container", "text"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 LOADK                            R3 K5 ["radius-circle row align-y-center align-x-center gap-xsmall"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["container"]
        7 DUPTABLE                         R2 K4 [{"tag"}]
        8 NEWTABLE                         R3 2 0
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K6 ["auto-xy text-label-small"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K7 ["FoundationFixBadgeAndIndicatorTextAlignment"]
       16 SETTABLEKS                       R4 R3 K8 ["text-align-x-left"]
       18 SETTABLEKS                       R3 R2 K3 ["tag"]
       20 SETTABLEKS                       R2 R1 K1 ["text"]
       22 NEWTABLE                         R2 8 0
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K9 ["Alert"]
       27 DUPTABLE                         R4 K11 [{"container", "content"}]
       28 DUPTABLE                         R5 K13 [{"backgroundStyle"}]
       29 GETTABLEKS                       R8 R0 K14 ["Color"]
       31 GETTABLEKS                       R7 R8 K15 ["System"]
       33 GETTABLEKS                       R6 R7 K9 ["Alert"]
       35 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
       37 SETTABLEKS                       R5 R4 K0 ["container"]
       39 DUPTABLE                         R5 K17 [{"style"}]
       40 GETTABLEKS                       R8 R0 K18 ["DarkMode"]
       42 GETTABLEKS                       R7 R8 K19 ["Content"]
       44 GETTABLEKS                       R6 R7 K20 ["Emphasis"]
       46 SETTABLEKS                       R6 R5 K16 ["style"]
       48 SETTABLEKS                       R5 R4 K10 ["content"]
       50 SETTABLE                         R4 R2 R3
       51 GETUPVAL                         R4 1
       52 GETTABLEKS                       R3 R4 K21 ["Success"]
       54 DUPTABLE                         R4 K11 [{"container", "content"}]
       55 DUPTABLE                         R5 K13 [{"backgroundStyle"}]
       56 GETTABLEKS                       R8 R0 K14 ["Color"]
       58 GETTABLEKS                       R7 R8 K15 ["System"]
       60 GETTABLEKS                       R6 R7 K21 ["Success"]
       62 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
       64 SETTABLEKS                       R5 R4 K0 ["container"]
       66 DUPTABLE                         R5 K17 [{"style"}]
       67 GETTABLEKS                       R8 R0 K22 ["LightMode"]
       69 GETTABLEKS                       R7 R8 K19 ["Content"]
       71 GETTABLEKS                       R6 R7 K20 ["Emphasis"]
       73 SETTABLEKS                       R6 R5 K16 ["style"]
       75 SETTABLEKS                       R5 R4 K10 ["content"]
       77 SETTABLE                         R4 R2 R3
       78 GETUPVAL                         R4 1
       79 GETTABLEKS                       R3 R4 K23 ["Warning"]
       81 DUPTABLE                         R4 K11 [{"container", "content"}]
       82 DUPTABLE                         R5 K13 [{"backgroundStyle"}]
       83 GETTABLEKS                       R8 R0 K14 ["Color"]
       85 GETTABLEKS                       R7 R8 K15 ["System"]
       87 GETTABLEKS                       R6 R7 K23 ["Warning"]
       89 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
       91 SETTABLEKS                       R5 R4 K0 ["container"]
       93 DUPTABLE                         R5 K17 [{"style"}]
       94 GETTABLEKS                       R8 R0 K22 ["LightMode"]
       96 GETTABLEKS                       R7 R8 K19 ["Content"]
       98 GETTABLEKS                       R6 R7 K20 ["Emphasis"]
      100 SETTABLEKS                       R6 R5 K16 ["style"]
      102 SETTABLEKS                       R5 R4 K10 ["content"]
      104 SETTABLE                         R4 R2 R3
      105 GETUPVAL                         R4 1
      106 GETTABLEKS                       R3 R4 K24 ["Contrast"]
      108 DUPTABLE                         R4 K11 [{"container", "content"}]
      109 DUPTABLE                         R5 K13 [{"backgroundStyle"}]
      110 GETTABLEKS                       R8 R0 K14 ["Color"]
      112 GETTABLEKS                       R7 R8 K15 ["System"]
      114 GETTABLEKS                       R6 R7 K24 ["Contrast"]
      116 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
      118 SETTABLEKS                       R5 R4 K0 ["container"]
      120 DUPTABLE                         R5 K17 [{"style"}]
      121 GETTABLEKS                       R8 R0 K25 ["Inverse"]
      123 GETTABLEKS                       R7 R8 K19 ["Content"]
      125 GETTABLEKS                       R6 R7 K20 ["Emphasis"]
      127 SETTABLEKS                       R6 R5 K16 ["style"]
      129 SETTABLEKS                       R5 R4 K10 ["content"]
      131 SETTABLE                         R4 R2 R3
      132 GETUPVAL                         R4 1
      133 GETTABLEKS                       R3 R4 K26 ["Neutral"]
      135 DUPTABLE                         R4 K11 [{"container", "content"}]
      136 DUPTABLE                         R5 K13 [{"backgroundStyle"}]
      137 GETTABLEKS                       R8 R0 K14 ["Color"]
      139 GETTABLEKS                       R7 R8 K27 ["Shift"]
      141 GETTABLEKS                       R6 R7 K28 ["Shift_300"]
      143 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
      145 SETTABLEKS                       R5 R4 K0 ["container"]
      147 DUPTABLE                         R5 K17 [{"style"}]
      148 GETTABLEKS                       R8 R0 K14 ["Color"]
      150 GETTABLEKS                       R7 R8 K19 ["Content"]
      152 GETTABLEKS                       R6 R7 K20 ["Emphasis"]
      154 SETTABLEKS                       R6 R5 K16 ["style"]
      156 SETTABLEKS                       R5 R4 K10 ["content"]
      158 SETTABLE                         R4 R2 R3
      159 GETUPVAL                         R4 1
      160 GETTABLEKS                       R3 R4 K29 ["OverMedia"]
      162 DUPTABLE                         R4 K11 [{"container", "content"}]
      163 DUPTABLE                         R5 K31 [{"backgroundStyle", "stroke"}]
      164 GETTABLEKS                       R8 R0 K22 ["LightMode"]
      166 GETTABLEKS                       R7 R8 K32 ["Surface"]
      168 GETTABLEKS                       R6 R7 K33 ["Surface_100"]
      170 SETTABLEKS                       R6 R5 K12 ["backgroundStyle"]
      172 DUPTABLE                         R6 K35 [{"Color", "Transparency"}]
      173 GETTABLEKS                       R10 R0 K22 ["LightMode"]
      175 GETTABLEKS                       R9 R10 K36 ["Stroke"]
      177 GETTABLEKS                       R8 R9 K37 ["Default"]
      179 GETTABLEKS                       R7 R8 K38 ["Color3"]
      181 SETTABLEKS                       R7 R6 K14 ["Color"]
      183 GETTABLEKS                       R10 R0 K22 ["LightMode"]
      185 GETTABLEKS                       R9 R10 K36 ["Stroke"]
      187 GETTABLEKS                       R8 R9 K37 ["Default"]
      189 GETTABLEKS                       R7 R8 K34 ["Transparency"]
      191 SETTABLEKS                       R7 R6 K34 ["Transparency"]
      193 SETTABLEKS                       R6 R5 K30 ["stroke"]
      195 SETTABLEKS                       R5 R4 K0 ["container"]
      197 DUPTABLE                         R5 K17 [{"style"}]
      198 GETTABLEKS                       R8 R0 K22 ["LightMode"]
      200 GETTABLEKS                       R7 R8 K19 ["Content"]
      202 GETTABLEKS                       R6 R7 K20 ["Emphasis"]
      204 SETTABLEKS                       R6 R5 K16 ["style"]
      206 SETTABLEKS                       R5 R4 K10 ["content"]
      208 SETTABLE                         R4 R2 R3
      209 NEWTABLE                         R3 2 0
      211 LOADB                            R4 1
      212 DUPTABLE                         R5 K39 [{"container"}]
      213 DUPTABLE                         R6 K4 [{"tag"}]
      214 LOADK                            R7 K40 ["size-600"]
      215 SETTABLEKS                       R7 R6 K3 ["tag"]
      217 SETTABLEKS                       R6 R5 K0 ["container"]
      219 SETTABLE                         R5 R3 R4
      220 LOADB                            R4 0
      221 DUPTABLE                         R5 K39 [{"container"}]
      222 DUPTABLE                         R6 K4 [{"tag"}]
      223 LOADK                            R7 K41 ["size-0-600 auto-x padding-x-small"]
      224 SETTABLEKS                       R7 R6 K3 ["tag"]
      226 SETTABLEKS                       R6 R5 K0 ["container"]
      228 SETTABLE                         R5 R3 R4
      229 DUPTABLE                         R4 K45 [{"common", "variants", "iconOnly"}]
      230 SETTABLEKS                       R1 R4 K42 ["common"]
      232 SETTABLEKS                       R2 R4 K43 ["variants"]
      234 SETTABLEKS                       R3 R4 K44 ["iconOnly"]
      236 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useVariants"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R4 K9 ["BadgeVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Enums"]
       25 GETTABLEKS                       R4 R5 K10 ["BadgeSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R6 K12 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Utility"]
       39 GETTABLEKS                       R6 R7 K13 ["composeStyleVariant"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Providers"]
       46 GETTABLEKS                       R8 R9 K15 ["Style"]
       48 GETTABLEKS                       R7 R8 K16 ["Tokens"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R10 R0 K14 ["Providers"]
       55 GETTABLEKS                       R9 R10 K15 ["Style"]
       57 GETTABLEKS                       R8 R9 K17 ["VariantsContext"]
       59 CALL                             R7 1 1
       60 DUPCLOSURE                       R8 K18 [PROTO_0]
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 SETGLOBAL                        R8 K19 ["variantsFactory"]
       65 DUPCLOSURE                       R8 K20 [PROTO_1]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R5
       68 RETURN                           R8 1
