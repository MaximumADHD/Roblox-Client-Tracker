PROTO_0:
        0 DUPTABLE                         R1 K2 [{"container", "text"}]
        1 DUPTABLE                         R2 K5 [{["tag"] = "radius-circle row align-y-center align-x-center gap-xsmall"}]
        2 SETTABLEKS                       R2 R1 K0 ["container"]
        4 DUPTABLE                         R2 K6 [{"tag"}]
        5 NEWTABLE                         R3 2 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K7 ["FoundationTruncateBadgeText"]
       10 SETTABLEKS                       R4 R3 K8 ["auto-xy text-label-small text-align-x-left text-truncate-end"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K7 ["FoundationTruncateBadgeText"]
       15 NOT                              R4 R5
       16 SETTABLEKS                       R4 R3 K9 ["auto-xy text-label-small text-align-x-left"]
       18 SETTABLEKS                       R3 R2 K3 ["tag"]
       20 SETTABLEKS                       R2 R1 K1 ["text"]
       22 NEWTABLE                         R2 8 0
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K10 ["Alert"]
       27 DUPTABLE                         R4 K12 [{"container", "content"}]
       28 DUPTABLE                         R5 K14 [{"backgroundStyle"}]
       29 GETTABLEKS                       R6 R0 K15 ["Color"]
       31 GETTABLEKS                       R6 R6 K16 ["System"]
       33 GETTABLEKS                       R6 R6 K10 ["Alert"]
       35 SETTABLEKS                       R6 R5 K13 ["backgroundStyle"]
       37 SETTABLEKS                       R5 R4 K0 ["container"]
       39 DUPTABLE                         R5 K18 [{"style"}]
       40 GETTABLEKS                       R6 R0 K19 ["DarkMode"]
       42 GETTABLEKS                       R6 R6 K20 ["Content"]
       44 GETTABLEKS                       R6 R6 K21 ["Emphasis"]
       46 SETTABLEKS                       R6 R5 K17 ["style"]
       48 SETTABLEKS                       R5 R4 K11 ["content"]
       50 SETTABLE                         R4 R2 R3
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R3 R3 K22 ["Success"]
       54 DUPTABLE                         R4 K12 [{"container", "content"}]
       55 DUPTABLE                         R5 K14 [{"backgroundStyle"}]
       56 GETTABLEKS                       R6 R0 K15 ["Color"]
       58 GETTABLEKS                       R6 R6 K16 ["System"]
       60 GETTABLEKS                       R6 R6 K22 ["Success"]
       62 SETTABLEKS                       R6 R5 K13 ["backgroundStyle"]
       64 SETTABLEKS                       R5 R4 K0 ["container"]
       66 DUPTABLE                         R5 K18 [{"style"}]
       67 GETTABLEKS                       R6 R0 K23 ["LightMode"]
       69 GETTABLEKS                       R6 R6 K20 ["Content"]
       71 GETTABLEKS                       R6 R6 K21 ["Emphasis"]
       73 SETTABLEKS                       R6 R5 K17 ["style"]
       75 SETTABLEKS                       R5 R4 K11 ["content"]
       77 SETTABLE                         R4 R2 R3
       78 GETUPVAL                         R3 1
       79 GETTABLEKS                       R3 R3 K24 ["Warning"]
       81 DUPTABLE                         R4 K12 [{"container", "content"}]
       82 DUPTABLE                         R5 K14 [{"backgroundStyle"}]
       83 GETTABLEKS                       R6 R0 K15 ["Color"]
       85 GETTABLEKS                       R6 R6 K16 ["System"]
       87 GETTABLEKS                       R6 R6 K24 ["Warning"]
       89 SETTABLEKS                       R6 R5 K13 ["backgroundStyle"]
       91 SETTABLEKS                       R5 R4 K0 ["container"]
       93 DUPTABLE                         R5 K18 [{"style"}]
       94 GETTABLEKS                       R6 R0 K23 ["LightMode"]
       96 GETTABLEKS                       R6 R6 K20 ["Content"]
       98 GETTABLEKS                       R6 R6 K21 ["Emphasis"]
      100 SETTABLEKS                       R6 R5 K17 ["style"]
      102 SETTABLEKS                       R5 R4 K11 ["content"]
      104 SETTABLE                         R4 R2 R3
      105 GETUPVAL                         R3 1
      106 GETTABLEKS                       R3 R3 K25 ["Contrast"]
      108 DUPTABLE                         R4 K12 [{"container", "content"}]
      109 DUPTABLE                         R5 K14 [{"backgroundStyle"}]
      110 GETTABLEKS                       R6 R0 K15 ["Color"]
      112 GETTABLEKS                       R6 R6 K16 ["System"]
      114 GETTABLEKS                       R6 R6 K25 ["Contrast"]
      116 SETTABLEKS                       R6 R5 K13 ["backgroundStyle"]
      118 SETTABLEKS                       R5 R4 K0 ["container"]
      120 DUPTABLE                         R5 K18 [{"style"}]
      121 GETTABLEKS                       R6 R0 K26 ["Inverse"]
      123 GETTABLEKS                       R6 R6 K20 ["Content"]
      125 GETTABLEKS                       R6 R6 K21 ["Emphasis"]
      127 SETTABLEKS                       R6 R5 K17 ["style"]
      129 SETTABLEKS                       R5 R4 K11 ["content"]
      131 SETTABLE                         R4 R2 R3
      132 GETUPVAL                         R3 1
      133 GETTABLEKS                       R3 R3 K27 ["Neutral"]
      135 DUPTABLE                         R4 K12 [{"container", "content"}]
      136 DUPTABLE                         R5 K14 [{"backgroundStyle"}]
      137 GETTABLEKS                       R6 R0 K15 ["Color"]
      139 GETTABLEKS                       R6 R6 K28 ["Shift"]
      141 GETTABLEKS                       R6 R6 K29 ["Shift_300"]
      143 SETTABLEKS                       R6 R5 K13 ["backgroundStyle"]
      145 SETTABLEKS                       R5 R4 K0 ["container"]
      147 DUPTABLE                         R5 K18 [{"style"}]
      148 GETTABLEKS                       R6 R0 K15 ["Color"]
      150 GETTABLEKS                       R6 R6 K20 ["Content"]
      152 GETTABLEKS                       R6 R6 K21 ["Emphasis"]
      154 SETTABLEKS                       R6 R5 K17 ["style"]
      156 SETTABLEKS                       R5 R4 K11 ["content"]
      158 SETTABLE                         R4 R2 R3
      159 GETUPVAL                         R3 1
      160 GETTABLEKS                       R3 R3 K30 ["OverMedia"]
      162 DUPTABLE                         R4 K12 [{"container", "content"}]
      163 DUPTABLE                         R5 K32 [{"backgroundStyle", "stroke"}]
      164 GETTABLEKS                       R6 R0 K23 ["LightMode"]
      166 GETTABLEKS                       R6 R6 K33 ["Surface"]
      168 GETTABLEKS                       R6 R6 K34 ["Surface_100"]
      170 SETTABLEKS                       R6 R5 K13 ["backgroundStyle"]
      172 DUPTABLE                         R6 K36 [{"Color", "Transparency"}]
      173 GETTABLEKS                       R7 R0 K23 ["LightMode"]
      175 GETTABLEKS                       R7 R7 K37 ["Stroke"]
      177 GETTABLEKS                       R7 R7 K38 ["Default"]
      179 GETTABLEKS                       R7 R7 K39 ["Color3"]
      181 SETTABLEKS                       R7 R6 K15 ["Color"]
      183 GETTABLEKS                       R7 R0 K23 ["LightMode"]
      185 GETTABLEKS                       R7 R7 K37 ["Stroke"]
      187 GETTABLEKS                       R7 R7 K38 ["Default"]
      189 GETTABLEKS                       R7 R7 K35 ["Transparency"]
      191 SETTABLEKS                       R7 R6 K35 ["Transparency"]
      193 SETTABLEKS                       R6 R5 K31 ["stroke"]
      195 SETTABLEKS                       R5 R4 K0 ["container"]
      197 DUPTABLE                         R5 K18 [{"style"}]
      198 GETTABLEKS                       R6 R0 K23 ["LightMode"]
      200 GETTABLEKS                       R6 R6 K20 ["Content"]
      202 GETTABLEKS                       R6 R6 K21 ["Emphasis"]
      204 SETTABLEKS                       R6 R5 K17 ["style"]
      206 SETTABLEKS                       R5 R4 K11 ["content"]
      208 SETTABLE                         R4 R2 R3
      209 NEWTABLE                         R3 2 0
      211 LOADB                            R4 1
      212 DUPTABLE                         R5 K40 [{"container"}]
      213 DUPTABLE                         R6 K42 [{["tag"] = "size-600"}]
      214 SETTABLEKS                       R6 R5 K0 ["container"]
      216 SETTABLE                         R5 R3 R4
      217 LOADB                            R4 0
      218 DUPTABLE                         R5 K40 [{"container"}]
      219 DUPTABLE                         R6 K44 [{["tag"] = "size-0-600 auto-x padding-x-small"}]
      220 SETTABLEKS                       R6 R5 K0 ["container"]
      222 SETTABLE                         R5 R3 R4
      223 DUPTABLE                         R4 K48 [{"common", "variants", "iconOnly"}]
      224 SETTABLEKS                       R1 R4 K45 ["common"]
      226 SETTABLEKS                       R2 R4 K46 ["variants"]
      228 SETTABLEKS                       R3 R4 K47 ["iconOnly"]
      230 RETURN                           R4 1

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
