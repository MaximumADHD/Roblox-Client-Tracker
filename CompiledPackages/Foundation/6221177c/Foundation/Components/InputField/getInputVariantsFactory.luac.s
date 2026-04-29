PROTO_0:
        0 DUPTABLE                         R1 K1 [{"container"}]
        1 DUPTABLE                         R2 K5 [{"bgStyle", "strokeStyle", "strokeThickness"}]
        2 GETTABLEKS                       R5 R0 K6 ["Color"]
        4 GETTABLEKS                       R4 R5 K7 ["Shift"]
        6 GETTABLEKS                       R3 R4 K8 ["Shift_100"]
        8 SETTABLEKS                       R3 R2 K2 ["bgStyle"]
       10 GETTABLEKS                       R5 R0 K6 ["Color"]
       12 GETTABLEKS                       R4 R5 K9 ["Stroke"]
       14 GETTABLEKS                       R3 R4 K10 ["Emphasis"]
       16 SETTABLEKS                       R3 R2 K3 ["strokeStyle"]
       18 GETTABLEKS                       R4 R0 K9 ["Stroke"]
       20 GETTABLEKS                       R3 R4 K11 ["Standard"]
       22 SETTABLEKS                       R3 R2 K4 ["strokeThickness"]
       24 SETTABLEKS                       R2 R1 K0 ["container"]
       26 NEWTABLE                         R2 4 0
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K12 ["XSmall"]
       31 DUPTABLE                         R4 K1 [{"container"}]
       32 DUPTABLE                         R5 K14 [{"tag"}]
       33 LOADK                            R6 K15 ["size-full-600"]
       34 SETTABLEKS                       R6 R5 K13 ["tag"]
       36 SETTABLEKS                       R5 R4 K0 ["container"]
       38 SETTABLE                         R4 R2 R3
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R3 R4 K16 ["Small"]
       42 DUPTABLE                         R4 K1 [{"container"}]
       43 DUPTABLE                         R5 K14 [{"tag"}]
       44 LOADK                            R6 K17 ["size-full-800"]
       45 SETTABLEKS                       R6 R5 K13 ["tag"]
       47 SETTABLEKS                       R5 R4 K0 ["container"]
       49 SETTABLE                         R4 R2 R3
       50 GETUPVAL                         R4 0
       51 GETTABLEKS                       R3 R4 K18 ["Medium"]
       53 DUPTABLE                         R4 K1 [{"container"}]
       54 DUPTABLE                         R5 K14 [{"tag"}]
       55 LOADK                            R6 K19 ["size-full-1000"]
       56 SETTABLEKS                       R6 R5 K13 ["tag"]
       58 SETTABLEKS                       R5 R4 K0 ["container"]
       60 SETTABLE                         R4 R2 R3
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R3 R4 K20 ["Large"]
       64 DUPTABLE                         R4 K1 [{"container"}]
       65 DUPTABLE                         R5 K14 [{"tag"}]
       66 LOADK                            R6 K21 ["size-full-1200"]
       67 SETTABLEKS                       R6 R5 K13 ["tag"]
       69 SETTABLEKS                       R5 R4 K0 ["container"]
       71 SETTABLE                         R4 R2 R3
       72 NEWTABLE                         R3 4 0
       74 GETUPVAL                         R5 1
       75 GETTABLEKS                       R4 R5 K11 ["Standard"]
       77 DUPTABLE                         R5 K1 [{"container"}]
       78 DUPTABLE                         R6 K22 [{"bgStyle"}]
       79 GETTABLEKS                       R9 R0 K6 ["Color"]
       81 GETTABLEKS                       R8 R9 K7 ["Shift"]
       83 GETTABLEKS                       R7 R8 K8 ["Shift_100"]
       85 SETTABLEKS                       R7 R6 K2 ["bgStyle"]
       87 SETTABLEKS                       R6 R5 K0 ["container"]
       89 SETTABLE                         R5 R3 R4
       90 GETUPVAL                         R5 1
       91 GETTABLEKS                       R4 R5 K23 ["Contrast"]
       93 DUPTABLE                         R5 K1 [{"container"}]
       94 DUPTABLE                         R6 K24 [{"bgStyle", "strokeStyle"}]
       95 GETTABLEKS                       R9 R0 K6 ["Color"]
       97 GETTABLEKS                       R8 R9 K7 ["Shift"]
       99 GETTABLEKS                       R7 R8 K25 ["Shift_200"]
      101 SETTABLEKS                       R7 R6 K2 ["bgStyle"]
      103 GETUPVAL                         R8 2
      104 GETTABLEKS                       R7 R8 K26 ["None"]
      106 SETTABLEKS                       R7 R6 K3 ["strokeStyle"]
      108 SETTABLEKS                       R6 R5 K0 ["container"]
      110 SETTABLE                         R5 R3 R4
      111 GETUPVAL                         R5 1
      112 GETTABLEKS                       R4 R5 K27 ["Utility"]
      114 DUPTABLE                         R5 K1 [{"container"}]
      115 DUPTABLE                         R6 K24 [{"bgStyle", "strokeStyle"}]
      116 GETUPVAL                         R8 2
      117 GETTABLEKS                       R7 R8 K26 ["None"]
      119 SETTABLEKS                       R7 R6 K2 ["bgStyle"]
      121 GETUPVAL                         R8 2
      122 GETTABLEKS                       R7 R8 K26 ["None"]
      124 SETTABLEKS                       R7 R6 K3 ["strokeStyle"]
      126 SETTABLEKS                       R6 R5 K0 ["container"]
      128 SETTABLE                         R5 R3 R4
      129 NEWTABLE                         R4 2 0
      131 LOADB                            R5 1
      132 DUPTABLE                         R6 K1 [{"container"}]
      133 DUPTABLE                         R7 K28 [{"strokeStyle"}]
      134 GETTABLEKS                       R10 R0 K6 ["Color"]
      136 GETTABLEKS                       R9 R10 K29 ["System"]
      138 GETTABLEKS                       R8 R9 K30 ["Alert"]
      140 SETTABLEKS                       R8 R7 K3 ["strokeStyle"]
      142 SETTABLEKS                       R7 R6 K0 ["container"]
      144 SETTABLE                         R6 R4 R5
      145 LOADB                            R5 0
      146 NEWTABLE                         R6 0 0
      148 SETTABLE                         R6 R4 R5
      149 NEWTABLE                         R5 2 0
      151 LOADB                            R6 1
      152 DUPTABLE                         R7 K1 [{"container"}]
      153 DUPTABLE                         R8 K31 [{"strokeStyle", "strokeThickness"}]
      154 GETTABLEKS                       R11 R0 K6 ["Color"]
      156 GETTABLEKS                       R10 R11 K29 ["System"]
      158 GETTABLEKS                       R9 R10 K10 ["Emphasis"]
      160 SETTABLEKS                       R9 R8 K3 ["strokeStyle"]
      162 GETTABLEKS                       R11 R0 K9 ["Stroke"]
      164 GETTABLEKS                       R10 R11 K11 ["Standard"]
      166 MULK                             R9 R10 K32 [2]
      167 SETTABLEKS                       R9 R8 K4 ["strokeThickness"]
      169 SETTABLEKS                       R8 R7 K0 ["container"]
      171 SETTABLE                         R7 R5 R6
      172 LOADB                            R6 0
      173 NEWTABLE                         R7 0 0
      175 SETTABLE                         R7 R5 R6
      176 NEWTABLE                         R6 2 0
      178 LOADB                            R7 1
      179 DUPTABLE                         R8 K1 [{"container"}]
      180 DUPTABLE                         R9 K33 [{"strokeThickness"}]
      181 GETTABLEKS                       R12 R0 K9 ["Stroke"]
      183 GETTABLEKS                       R11 R12 K11 ["Standard"]
      185 MULK                             R10 R11 K32 [2]
      186 SETTABLEKS                       R10 R9 K4 ["strokeThickness"]
      188 SETTABLEKS                       R9 R8 K0 ["container"]
      190 SETTABLE                         R8 R6 R7
      191 LOADB                            R7 0
      192 NEWTABLE                         R8 0 0
      194 SETTABLE                         R8 R6 R7
      195 NEWTABLE                         R7 4 0
      197 GETUPVAL                         R9 0
      198 GETTABLEKS                       R8 R9 K12 ["XSmall"]
      200 DUPTABLE                         R9 K1 [{"container"}]
      201 DUPTABLE                         R10 K14 [{"tag"}]
      202 NEWTABLE                         R11 1 0
      204 LOADB                            R12 1
      205 SETTABLEKS                       R12 R11 K34 ["radius-small"]
      207 SETTABLEKS                       R11 R10 K13 ["tag"]
      209 SETTABLEKS                       R10 R9 K0 ["container"]
      211 SETTABLE                         R9 R7 R8
      212 GETUPVAL                         R9 0
      213 GETTABLEKS                       R8 R9 K16 ["Small"]
      215 DUPTABLE                         R9 K1 [{"container"}]
      216 DUPTABLE                         R10 K14 [{"tag"}]
      217 NEWTABLE                         R11 1 0
      219 LOADB                            R12 1
      220 SETTABLEKS                       R12 R11 K35 ["radius-medium"]
      222 SETTABLEKS                       R11 R10 K13 ["tag"]
      224 SETTABLEKS                       R10 R9 K0 ["container"]
      226 SETTABLE                         R9 R7 R8
      227 GETUPVAL                         R9 0
      228 GETTABLEKS                       R8 R9 K18 ["Medium"]
      230 DUPTABLE                         R9 K1 [{"container"}]
      231 DUPTABLE                         R10 K14 [{"tag"}]
      232 NEWTABLE                         R11 1 0
      234 LOADB                            R12 1
      235 SETTABLEKS                       R12 R11 K35 ["radius-medium"]
      237 SETTABLEKS                       R11 R10 K13 ["tag"]
      239 SETTABLEKS                       R10 R9 K0 ["container"]
      241 SETTABLE                         R9 R7 R8
      242 GETUPVAL                         R9 0
      243 GETTABLEKS                       R8 R9 K20 ["Large"]
      245 DUPTABLE                         R9 K1 [{"container"}]
      246 DUPTABLE                         R10 K14 [{"tag"}]
      247 NEWTABLE                         R11 1 0
      249 LOADB                            R12 1
      250 SETTABLEKS                       R12 R11 K35 ["radius-medium"]
      252 SETTABLEKS                       R11 R10 K13 ["tag"]
      254 SETTABLEKS                       R10 R9 K0 ["container"]
      256 SETTABLE                         R9 R7 R8
      257 NEWTABLE                         R8 8 0
      259 GETUPVAL                         R10 3
      260 GETTABLEKS                       R9 R10 K26 ["None"]
      262 DUPTABLE                         R10 K1 [{"container"}]
      263 DUPTABLE                         R11 K14 [{"tag"}]
      264 NEWTABLE                         R12 1 0
      266 LOADB                            R13 1
      267 SETTABLEKS                       R13 R12 K36 ["radius-none"]
      269 SETTABLEKS                       R12 R11 K13 ["tag"]
      271 SETTABLEKS                       R11 R10 K0 ["container"]
      273 SETTABLE                         R10 R8 R9
      274 GETUPVAL                         R10 3
      275 GETTABLEKS                       R9 R10 K12 ["XSmall"]
      277 DUPTABLE                         R10 K1 [{"container"}]
      278 DUPTABLE                         R11 K14 [{"tag"}]
      279 NEWTABLE                         R12 1 0
      281 LOADB                            R13 1
      282 SETTABLEKS                       R13 R12 K37 ["radius-xsmall"]
      284 SETTABLEKS                       R12 R11 K13 ["tag"]
      286 SETTABLEKS                       R11 R10 K0 ["container"]
      288 SETTABLE                         R10 R8 R9
      289 GETUPVAL                         R10 3
      290 GETTABLEKS                       R9 R10 K16 ["Small"]
      292 DUPTABLE                         R10 K1 [{"container"}]
      293 DUPTABLE                         R11 K14 [{"tag"}]
      294 NEWTABLE                         R12 1 0
      296 LOADB                            R13 1
      297 SETTABLEKS                       R13 R12 K34 ["radius-small"]
      299 SETTABLEKS                       R12 R11 K13 ["tag"]
      301 SETTABLEKS                       R11 R10 K0 ["container"]
      303 SETTABLE                         R10 R8 R9
      304 GETUPVAL                         R10 3
      305 GETTABLEKS                       R9 R10 K18 ["Medium"]
      307 DUPTABLE                         R10 K1 [{"container"}]
      308 DUPTABLE                         R11 K14 [{"tag"}]
      309 NEWTABLE                         R12 1 0
      311 LOADB                            R13 1
      312 SETTABLEKS                       R13 R12 K35 ["radius-medium"]
      314 SETTABLEKS                       R12 R11 K13 ["tag"]
      316 SETTABLEKS                       R11 R10 K0 ["container"]
      318 SETTABLE                         R10 R8 R9
      319 GETUPVAL                         R10 3
      320 GETTABLEKS                       R9 R10 K20 ["Large"]
      322 DUPTABLE                         R10 K1 [{"container"}]
      323 DUPTABLE                         R11 K14 [{"tag"}]
      324 NEWTABLE                         R12 1 0
      326 LOADB                            R13 1
      327 SETTABLEKS                       R13 R12 K38 ["radius-large"]
      329 SETTABLEKS                       R12 R11 K13 ["tag"]
      331 SETTABLEKS                       R11 R10 K0 ["container"]
      333 SETTABLE                         R10 R8 R9
      334 DUPTABLE                         R9 K47 [{"common", "sizes", "variants", "defaultRadius", "radius", "errorState", "focusedState", "hoverState"}]
      335 SETTABLEKS                       R1 R9 K39 ["common"]
      337 SETTABLEKS                       R2 R9 K40 ["sizes"]
      339 SETTABLEKS                       R3 R9 K41 ["variants"]
      341 SETTABLEKS                       R7 R9 K42 ["defaultRadius"]
      343 SETTABLEKS                       R8 R9 K43 ["radius"]
      345 SETTABLEKS                       R4 R9 K44 ["errorState"]
      347 SETTABLEKS                       R5 R9 K45 ["focusedState"]
      349 SETTABLEKS                       R6 R9 K46 ["hoverState"]
      351 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R6 K11 ["InputSize"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Enums"]
       32 GETTABLEKS                       R6 R7 K12 ["InputVariant"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R8 K13 ["IconSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K10 ["Enums"]
       46 GETTABLEKS                       R8 R9 K14 ["Radius"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K15 ["Utility"]
       53 GETTABLEKS                       R9 R10 K16 ["composeStyleVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R12 R0 K17 ["Providers"]
       60 GETTABLEKS                       R11 R12 K18 ["Style"]
       62 GETTABLEKS                       R10 R11 K19 ["Tokens"]
       64 CALL                             R9 1 1
       65 DUPCLOSURE                       R10 K20 [PROTO_0]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R7
       70 RETURN                           R10 1
