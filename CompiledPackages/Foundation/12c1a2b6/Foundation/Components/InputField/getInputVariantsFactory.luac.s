PROTO_0:
        0 DUPTABLE                         R1 K1 [{"container"}]
        1 DUPTABLE                         R2 K5 [{"bgStyle", "strokeStyle", "strokeThickness"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K6 ["FoundationTextInputRemoveBackgroundStyle"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADNIL                          R3
        7 JUMP                             ; [+6]
        8 GETTABLEKS                       R3 R0 K7 ["Color"]
       10 GETTABLEKS                       R3 R3 K8 ["Shift"]
       12 GETTABLEKS                       R3 R3 K9 ["Shift_100"]
       14 SETTABLEKS                       R3 R2 K2 ["bgStyle"]
       16 GETTABLEKS                       R3 R0 K7 ["Color"]
       18 GETTABLEKS                       R3 R3 K10 ["Stroke"]
       20 GETTABLEKS                       R3 R3 K11 ["Emphasis"]
       22 SETTABLEKS                       R3 R2 K3 ["strokeStyle"]
       24 GETTABLEKS                       R3 R0 K10 ["Stroke"]
       26 GETTABLEKS                       R3 R3 K12 ["Standard"]
       28 SETTABLEKS                       R3 R2 K4 ["strokeThickness"]
       30 SETTABLEKS                       R2 R1 K0 ["container"]
       32 NEWTABLE                         R2 4 0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K13 ["XSmall"]
       37 DUPTABLE                         R4 K1 [{"container"}]
       38 DUPTABLE                         R5 K15 [{"tag"}]
       39 LOADK                            R6 K16 ["size-full-600"]
       40 SETTABLEKS                       R6 R5 K14 ["tag"]
       42 SETTABLEKS                       R5 R4 K0 ["container"]
       44 SETTABLE                         R4 R2 R3
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K17 ["Small"]
       48 DUPTABLE                         R4 K1 [{"container"}]
       49 DUPTABLE                         R5 K15 [{"tag"}]
       50 LOADK                            R6 K18 ["size-full-800"]
       51 SETTABLEKS                       R6 R5 K14 ["tag"]
       53 SETTABLEKS                       R5 R4 K0 ["container"]
       55 SETTABLE                         R4 R2 R3
       56 GETUPVAL                         R3 1
       57 GETTABLEKS                       R3 R3 K19 ["Medium"]
       59 DUPTABLE                         R4 K1 [{"container"}]
       60 DUPTABLE                         R5 K15 [{"tag"}]
       61 LOADK                            R6 K20 ["size-full-1000"]
       62 SETTABLEKS                       R6 R5 K14 ["tag"]
       64 SETTABLEKS                       R5 R4 K0 ["container"]
       66 SETTABLE                         R4 R2 R3
       67 GETUPVAL                         R3 1
       68 GETTABLEKS                       R3 R3 K21 ["Large"]
       70 DUPTABLE                         R4 K1 [{"container"}]
       71 DUPTABLE                         R5 K15 [{"tag"}]
       72 LOADK                            R6 K22 ["size-full-1200"]
       73 SETTABLEKS                       R6 R5 K14 ["tag"]
       75 SETTABLEKS                       R5 R4 K0 ["container"]
       77 SETTABLE                         R4 R2 R3
       78 NEWTABLE                         R3 4 0
       80 GETUPVAL                         R4 2
       81 GETTABLEKS                       R4 R4 K12 ["Standard"]
       83 GETUPVAL                         R6 0
       84 GETTABLEKS                       R6 R6 K6 ["FoundationTextInputRemoveBackgroundStyle"]
       86 JUMPIFNOT                        R6 ; [+3]
       87 NEWTABLE                         R5 0 0
       89 JUMP                             ; [+12]
       90 DUPTABLE                         R5 K1 [{"container"}]
       91 DUPTABLE                         R6 K23 [{"bgStyle"}]
       92 GETTABLEKS                       R7 R0 K7 ["Color"]
       94 GETTABLEKS                       R7 R7 K8 ["Shift"]
       96 GETTABLEKS                       R7 R7 K9 ["Shift_100"]
       98 SETTABLEKS                       R7 R6 K2 ["bgStyle"]
      100 SETTABLEKS                       R6 R5 K0 ["container"]
      102 SETTABLE                         R5 R3 R4
      103 GETUPVAL                         R4 2
      104 GETTABLEKS                       R4 R4 K24 ["Contrast"]
      106 DUPTABLE                         R5 K1 [{"container"}]
      107 DUPTABLE                         R6 K25 [{"bgStyle", "strokeStyle"}]
      108 GETTABLEKS                       R7 R0 K7 ["Color"]
      110 GETTABLEKS                       R7 R7 K8 ["Shift"]
      112 GETTABLEKS                       R7 R7 K26 ["Shift_200"]
      114 SETTABLEKS                       R7 R6 K2 ["bgStyle"]
      116 GETUPVAL                         R7 3
      117 GETTABLEKS                       R7 R7 K27 ["None"]
      119 SETTABLEKS                       R7 R6 K3 ["strokeStyle"]
      121 SETTABLEKS                       R6 R5 K0 ["container"]
      123 SETTABLE                         R5 R3 R4
      124 GETUPVAL                         R4 2
      125 GETTABLEKS                       R4 R4 K28 ["Utility"]
      127 DUPTABLE                         R5 K1 [{"container"}]
      128 DUPTABLE                         R6 K25 [{"bgStyle", "strokeStyle"}]
      129 GETUPVAL                         R7 3
      130 GETTABLEKS                       R7 R7 K27 ["None"]
      132 SETTABLEKS                       R7 R6 K2 ["bgStyle"]
      134 GETUPVAL                         R7 3
      135 GETTABLEKS                       R7 R7 K27 ["None"]
      137 SETTABLEKS                       R7 R6 K3 ["strokeStyle"]
      139 SETTABLEKS                       R6 R5 K0 ["container"]
      141 SETTABLE                         R5 R3 R4
      142 NEWTABLE                         R4 2 0
      144 LOADB                            R5 1
      145 DUPTABLE                         R6 K1 [{"container"}]
      146 DUPTABLE                         R7 K29 [{"strokeStyle"}]
      147 GETTABLEKS                       R8 R0 K7 ["Color"]
      149 GETTABLEKS                       R8 R8 K30 ["System"]
      151 GETTABLEKS                       R8 R8 K31 ["Alert"]
      153 SETTABLEKS                       R8 R7 K3 ["strokeStyle"]
      155 SETTABLEKS                       R7 R6 K0 ["container"]
      157 SETTABLE                         R6 R4 R5
      158 LOADB                            R5 0
      159 NEWTABLE                         R6 0 0
      161 SETTABLE                         R6 R4 R5
      162 NEWTABLE                         R5 2 0
      164 LOADB                            R6 1
      165 DUPTABLE                         R7 K1 [{"container"}]
      166 DUPTABLE                         R8 K32 [{"strokeStyle", "strokeThickness"}]
      167 GETTABLEKS                       R9 R0 K7 ["Color"]
      169 GETTABLEKS                       R9 R9 K30 ["System"]
      171 GETTABLEKS                       R9 R9 K11 ["Emphasis"]
      173 SETTABLEKS                       R9 R8 K3 ["strokeStyle"]
      175 GETTABLEKS                       R10 R0 K10 ["Stroke"]
      177 GETTABLEKS                       R10 R10 K12 ["Standard"]
      179 MULK                             R9 R10 K33 [2]
      180 SETTABLEKS                       R9 R8 K4 ["strokeThickness"]
      182 SETTABLEKS                       R8 R7 K0 ["container"]
      184 SETTABLE                         R7 R5 R6
      185 LOADB                            R6 0
      186 NEWTABLE                         R7 0 0
      188 SETTABLE                         R7 R5 R6
      189 NEWTABLE                         R6 2 0
      191 LOADB                            R7 1
      192 DUPTABLE                         R8 K1 [{"container"}]
      193 DUPTABLE                         R9 K34 [{"strokeThickness"}]
      194 GETTABLEKS                       R11 R0 K10 ["Stroke"]
      196 GETTABLEKS                       R11 R11 K12 ["Standard"]
      198 MULK                             R10 R11 K33 [2]
      199 SETTABLEKS                       R10 R9 K4 ["strokeThickness"]
      201 SETTABLEKS                       R9 R8 K0 ["container"]
      203 SETTABLE                         R8 R6 R7
      204 LOADB                            R7 0
      205 NEWTABLE                         R8 0 0
      207 SETTABLE                         R8 R6 R7
      208 NEWTABLE                         R7 4 0
      210 GETUPVAL                         R8 1
      211 GETTABLEKS                       R8 R8 K13 ["XSmall"]
      213 DUPTABLE                         R9 K1 [{"container"}]
      214 DUPTABLE                         R10 K15 [{"tag"}]
      215 NEWTABLE                         R11 1 0
      217 LOADB                            R12 1
      218 SETTABLEKS                       R12 R11 K35 ["radius-small"]
      220 SETTABLEKS                       R11 R10 K14 ["tag"]
      222 SETTABLEKS                       R10 R9 K0 ["container"]
      224 SETTABLE                         R9 R7 R8
      225 GETUPVAL                         R8 1
      226 GETTABLEKS                       R8 R8 K17 ["Small"]
      228 DUPTABLE                         R9 K1 [{"container"}]
      229 DUPTABLE                         R10 K15 [{"tag"}]
      230 NEWTABLE                         R11 1 0
      232 LOADB                            R12 1
      233 SETTABLEKS                       R12 R11 K36 ["radius-medium"]
      235 SETTABLEKS                       R11 R10 K14 ["tag"]
      237 SETTABLEKS                       R10 R9 K0 ["container"]
      239 SETTABLE                         R9 R7 R8
      240 GETUPVAL                         R8 1
      241 GETTABLEKS                       R8 R8 K19 ["Medium"]
      243 DUPTABLE                         R9 K1 [{"container"}]
      244 DUPTABLE                         R10 K15 [{"tag"}]
      245 NEWTABLE                         R11 1 0
      247 LOADB                            R12 1
      248 SETTABLEKS                       R12 R11 K36 ["radius-medium"]
      250 SETTABLEKS                       R11 R10 K14 ["tag"]
      252 SETTABLEKS                       R10 R9 K0 ["container"]
      254 SETTABLE                         R9 R7 R8
      255 GETUPVAL                         R8 1
      256 GETTABLEKS                       R8 R8 K21 ["Large"]
      258 DUPTABLE                         R9 K1 [{"container"}]
      259 DUPTABLE                         R10 K15 [{"tag"}]
      260 NEWTABLE                         R11 1 0
      262 LOADB                            R12 1
      263 SETTABLEKS                       R12 R11 K36 ["radius-medium"]
      265 SETTABLEKS                       R11 R10 K14 ["tag"]
      267 SETTABLEKS                       R10 R9 K0 ["container"]
      269 SETTABLE                         R9 R7 R8
      270 NEWTABLE                         R8 8 0
      272 GETUPVAL                         R9 4
      273 GETTABLEKS                       R9 R9 K27 ["None"]
      275 DUPTABLE                         R10 K1 [{"container"}]
      276 DUPTABLE                         R11 K15 [{"tag"}]
      277 NEWTABLE                         R12 1 0
      279 LOADB                            R13 1
      280 SETTABLEKS                       R13 R12 K37 ["radius-none"]
      282 SETTABLEKS                       R12 R11 K14 ["tag"]
      284 SETTABLEKS                       R11 R10 K0 ["container"]
      286 SETTABLE                         R10 R8 R9
      287 GETUPVAL                         R9 4
      288 GETTABLEKS                       R9 R9 K13 ["XSmall"]
      290 DUPTABLE                         R10 K1 [{"container"}]
      291 DUPTABLE                         R11 K15 [{"tag"}]
      292 NEWTABLE                         R12 1 0
      294 LOADB                            R13 1
      295 SETTABLEKS                       R13 R12 K38 ["radius-xsmall"]
      297 SETTABLEKS                       R12 R11 K14 ["tag"]
      299 SETTABLEKS                       R11 R10 K0 ["container"]
      301 SETTABLE                         R10 R8 R9
      302 GETUPVAL                         R9 4
      303 GETTABLEKS                       R9 R9 K17 ["Small"]
      305 DUPTABLE                         R10 K1 [{"container"}]
      306 DUPTABLE                         R11 K15 [{"tag"}]
      307 NEWTABLE                         R12 1 0
      309 LOADB                            R13 1
      310 SETTABLEKS                       R13 R12 K35 ["radius-small"]
      312 SETTABLEKS                       R12 R11 K14 ["tag"]
      314 SETTABLEKS                       R11 R10 K0 ["container"]
      316 SETTABLE                         R10 R8 R9
      317 GETUPVAL                         R9 4
      318 GETTABLEKS                       R9 R9 K19 ["Medium"]
      320 DUPTABLE                         R10 K1 [{"container"}]
      321 DUPTABLE                         R11 K15 [{"tag"}]
      322 NEWTABLE                         R12 1 0
      324 LOADB                            R13 1
      325 SETTABLEKS                       R13 R12 K36 ["radius-medium"]
      327 SETTABLEKS                       R12 R11 K14 ["tag"]
      329 SETTABLEKS                       R11 R10 K0 ["container"]
      331 SETTABLE                         R10 R8 R9
      332 GETUPVAL                         R9 4
      333 GETTABLEKS                       R9 R9 K21 ["Large"]
      335 DUPTABLE                         R10 K1 [{"container"}]
      336 DUPTABLE                         R11 K15 [{"tag"}]
      337 NEWTABLE                         R12 1 0
      339 LOADB                            R13 1
      340 SETTABLEKS                       R13 R12 K39 ["radius-large"]
      342 SETTABLEKS                       R12 R11 K14 ["tag"]
      344 SETTABLEKS                       R11 R10 K0 ["container"]
      346 SETTABLE                         R10 R8 R9
      347 DUPTABLE                         R9 K48 [{"common", "sizes", "variants", "defaultRadius", "radius", "errorState", "focusedState", "hoverState"}]
      348 SETTABLEKS                       R1 R9 K40 ["common"]
      350 SETTABLEKS                       R2 R9 K41 ["sizes"]
      352 SETTABLEKS                       R3 R9 K42 ["variants"]
      354 SETTABLEKS                       R7 R9 K43 ["defaultRadius"]
      356 SETTABLEKS                       R8 R9 K44 ["radius"]
      358 SETTABLEKS                       R4 R9 K45 ["errorState"]
      360 SETTABLEKS                       R5 R9 K46 ["focusedState"]
      362 SETTABLEKS                       R6 R9 K47 ["hoverState"]
      364 RETURN                           R9 1

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
       16 GETTABLEKS                       R4 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R4 K9 ["Flags"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Enums"]
       32 GETTABLEKS                       R6 R6 K13 ["InputSize"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Enums"]
       39 GETTABLEKS                       R7 R7 K14 ["InputVariant"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Enums"]
       46 GETTABLEKS                       R8 R8 K15 ["IconSize"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K12 ["Enums"]
       53 GETTABLEKS                       R9 R9 K16 ["Radius"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Utility"]
       60 GETTABLEKS                       R10 R10 K17 ["composeStyleVariant"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K18 ["Providers"]
       67 GETTABLEKS                       R11 R11 K19 ["Style"]
       69 GETTABLEKS                       R11 R11 K20 ["Tokens"]
       71 CALL                             R10 1 1
       72 DUPCLOSURE                       R11 K21 [PROTO_0]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 RETURN                           R11 1
