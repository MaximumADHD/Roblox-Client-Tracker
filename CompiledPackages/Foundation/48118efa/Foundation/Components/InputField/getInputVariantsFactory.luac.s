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
       38 DUPTABLE                         R5 K16 [{["tag"] = "size-full-600"}]
       39 SETTABLEKS                       R5 R4 K0 ["container"]
       41 SETTABLE                         R4 R2 R3
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R3 R3 K17 ["Small"]
       45 DUPTABLE                         R4 K1 [{"container"}]
       46 DUPTABLE                         R5 K19 [{["tag"] = "size-full-800"}]
       47 SETTABLEKS                       R5 R4 K0 ["container"]
       49 SETTABLE                         R4 R2 R3
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K20 ["Medium"]
       53 DUPTABLE                         R4 K1 [{"container"}]
       54 DUPTABLE                         R5 K22 [{["tag"] = "size-full-1000"}]
       55 SETTABLEKS                       R5 R4 K0 ["container"]
       57 SETTABLE                         R4 R2 R3
       58 GETUPVAL                         R3 1
       59 GETTABLEKS                       R3 R3 K23 ["Large"]
       61 DUPTABLE                         R4 K1 [{"container"}]
       62 DUPTABLE                         R5 K25 [{["tag"] = "size-full-1200"}]
       63 SETTABLEKS                       R5 R4 K0 ["container"]
       65 SETTABLE                         R4 R2 R3
       66 NEWTABLE                         R3 4 0
       68 GETUPVAL                         R4 2
       69 GETTABLEKS                       R4 R4 K12 ["Standard"]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K6 ["FoundationTextInputRemoveBackgroundStyle"]
       74 JUMPIFNOT                        R6 ; [+3]
       75 NEWTABLE                         R5 0 0
       77 JUMP                             ; [+12]
       78 DUPTABLE                         R5 K1 [{"container"}]
       79 DUPTABLE                         R6 K26 [{"bgStyle"}]
       80 GETTABLEKS                       R7 R0 K7 ["Color"]
       82 GETTABLEKS                       R7 R7 K8 ["Shift"]
       84 GETTABLEKS                       R7 R7 K9 ["Shift_100"]
       86 SETTABLEKS                       R7 R6 K2 ["bgStyle"]
       88 SETTABLEKS                       R6 R5 K0 ["container"]
       90 SETTABLE                         R5 R3 R4
       91 GETUPVAL                         R4 2
       92 GETTABLEKS                       R4 R4 K27 ["Contrast"]
       94 DUPTABLE                         R5 K1 [{"container"}]
       95 DUPTABLE                         R6 K28 [{"bgStyle", "strokeStyle"}]
       96 GETTABLEKS                       R7 R0 K7 ["Color"]
       98 GETTABLEKS                       R7 R7 K8 ["Shift"]
      100 GETTABLEKS                       R7 R7 K29 ["Shift_200"]
      102 SETTABLEKS                       R7 R6 K2 ["bgStyle"]
      104 GETUPVAL                         R7 3
      105 GETTABLEKS                       R7 R7 K30 ["None"]
      107 SETTABLEKS                       R7 R6 K3 ["strokeStyle"]
      109 SETTABLEKS                       R6 R5 K0 ["container"]
      111 SETTABLE                         R5 R3 R4
      112 GETUPVAL                         R4 2
      113 GETTABLEKS                       R4 R4 K31 ["Utility"]
      115 DUPTABLE                         R5 K1 [{"container"}]
      116 DUPTABLE                         R6 K28 [{"bgStyle", "strokeStyle"}]
      117 GETUPVAL                         R7 3
      118 GETTABLEKS                       R7 R7 K30 ["None"]
      120 SETTABLEKS                       R7 R6 K2 ["bgStyle"]
      122 GETUPVAL                         R7 3
      123 GETTABLEKS                       R7 R7 K30 ["None"]
      125 SETTABLEKS                       R7 R6 K3 ["strokeStyle"]
      127 SETTABLEKS                       R6 R5 K0 ["container"]
      129 SETTABLE                         R5 R3 R4
      130 NEWTABLE                         R4 2 0
      132 LOADB                            R5 1
      133 DUPTABLE                         R6 K1 [{"container"}]
      134 DUPTABLE                         R7 K32 [{"strokeStyle"}]
      135 GETTABLEKS                       R8 R0 K7 ["Color"]
      137 GETTABLEKS                       R8 R8 K33 ["System"]
      139 GETTABLEKS                       R8 R8 K34 ["Alert"]
      141 SETTABLEKS                       R8 R7 K3 ["strokeStyle"]
      143 SETTABLEKS                       R7 R6 K0 ["container"]
      145 SETTABLE                         R6 R4 R5
      146 LOADB                            R5 0
      147 NEWTABLE                         R6 0 0
      149 SETTABLE                         R6 R4 R5
      150 NEWTABLE                         R5 2 0
      152 LOADB                            R6 1
      153 DUPTABLE                         R7 K1 [{"container"}]
      154 DUPTABLE                         R8 K35 [{"strokeStyle", "strokeThickness"}]
      155 GETTABLEKS                       R9 R0 K7 ["Color"]
      157 GETTABLEKS                       R9 R9 K33 ["System"]
      159 GETTABLEKS                       R9 R9 K11 ["Emphasis"]
      161 SETTABLEKS                       R9 R8 K3 ["strokeStyle"]
      163 GETTABLEKS                       R10 R0 K10 ["Stroke"]
      165 GETTABLEKS                       R10 R10 K12 ["Standard"]
      167 MULK                             R9 R10 K36 [2]
      168 SETTABLEKS                       R9 R8 K4 ["strokeThickness"]
      170 SETTABLEKS                       R8 R7 K0 ["container"]
      172 SETTABLE                         R7 R5 R6
      173 LOADB                            R6 0
      174 NEWTABLE                         R7 0 0
      176 SETTABLE                         R7 R5 R6
      177 NEWTABLE                         R6 2 0
      179 LOADB                            R7 1
      180 DUPTABLE                         R8 K1 [{"container"}]
      181 DUPTABLE                         R9 K37 [{"strokeThickness"}]
      182 GETTABLEKS                       R11 R0 K10 ["Stroke"]
      184 GETTABLEKS                       R11 R11 K12 ["Standard"]
      186 MULK                             R10 R11 K36 [2]
      187 SETTABLEKS                       R10 R9 K4 ["strokeThickness"]
      189 SETTABLEKS                       R9 R8 K0 ["container"]
      191 SETTABLE                         R8 R6 R7
      192 LOADB                            R7 0
      193 NEWTABLE                         R8 0 0
      195 SETTABLE                         R8 R6 R7
      196 NEWTABLE                         R7 4 0
      198 GETUPVAL                         R8 1
      199 GETTABLEKS                       R8 R8 K13 ["XSmall"]
      201 DUPTABLE                         R9 K1 [{"container"}]
      202 DUPTABLE                         R10 K38 [{"tag"}]
      203 NEWTABLE                         R11 1 0
      205 LOADB                            R12 1
      206 SETTABLEKS                       R12 R11 K39 ["radius-small"]
      208 SETTABLEKS                       R11 R10 K14 ["tag"]
      210 SETTABLEKS                       R10 R9 K0 ["container"]
      212 SETTABLE                         R9 R7 R8
      213 GETUPVAL                         R8 1
      214 GETTABLEKS                       R8 R8 K17 ["Small"]
      216 DUPTABLE                         R9 K1 [{"container"}]
      217 DUPTABLE                         R10 K38 [{"tag"}]
      218 NEWTABLE                         R11 1 0
      220 LOADB                            R12 1
      221 SETTABLEKS                       R12 R11 K40 ["radius-medium"]
      223 SETTABLEKS                       R11 R10 K14 ["tag"]
      225 SETTABLEKS                       R10 R9 K0 ["container"]
      227 SETTABLE                         R9 R7 R8
      228 GETUPVAL                         R8 1
      229 GETTABLEKS                       R8 R8 K20 ["Medium"]
      231 DUPTABLE                         R9 K1 [{"container"}]
      232 DUPTABLE                         R10 K38 [{"tag"}]
      233 NEWTABLE                         R11 1 0
      235 LOADB                            R12 1
      236 SETTABLEKS                       R12 R11 K40 ["radius-medium"]
      238 SETTABLEKS                       R11 R10 K14 ["tag"]
      240 SETTABLEKS                       R10 R9 K0 ["container"]
      242 SETTABLE                         R9 R7 R8
      243 GETUPVAL                         R8 1
      244 GETTABLEKS                       R8 R8 K23 ["Large"]
      246 DUPTABLE                         R9 K1 [{"container"}]
      247 DUPTABLE                         R10 K38 [{"tag"}]
      248 NEWTABLE                         R11 1 0
      250 LOADB                            R12 1
      251 SETTABLEKS                       R12 R11 K40 ["radius-medium"]
      253 SETTABLEKS                       R11 R10 K14 ["tag"]
      255 SETTABLEKS                       R10 R9 K0 ["container"]
      257 SETTABLE                         R9 R7 R8
      258 NEWTABLE                         R8 8 0
      260 GETUPVAL                         R9 4
      261 GETTABLEKS                       R9 R9 K30 ["None"]
      263 DUPTABLE                         R10 K1 [{"container"}]
      264 DUPTABLE                         R11 K38 [{"tag"}]
      265 NEWTABLE                         R12 1 0
      267 LOADB                            R13 1
      268 SETTABLEKS                       R13 R12 K41 ["radius-none"]
      270 SETTABLEKS                       R12 R11 K14 ["tag"]
      272 SETTABLEKS                       R11 R10 K0 ["container"]
      274 SETTABLE                         R10 R8 R9
      275 GETUPVAL                         R9 4
      276 GETTABLEKS                       R9 R9 K13 ["XSmall"]
      278 DUPTABLE                         R10 K1 [{"container"}]
      279 DUPTABLE                         R11 K38 [{"tag"}]
      280 NEWTABLE                         R12 1 0
      282 LOADB                            R13 1
      283 SETTABLEKS                       R13 R12 K42 ["radius-xsmall"]
      285 SETTABLEKS                       R12 R11 K14 ["tag"]
      287 SETTABLEKS                       R11 R10 K0 ["container"]
      289 SETTABLE                         R10 R8 R9
      290 GETUPVAL                         R9 4
      291 GETTABLEKS                       R9 R9 K17 ["Small"]
      293 DUPTABLE                         R10 K1 [{"container"}]
      294 DUPTABLE                         R11 K38 [{"tag"}]
      295 NEWTABLE                         R12 1 0
      297 LOADB                            R13 1
      298 SETTABLEKS                       R13 R12 K39 ["radius-small"]
      300 SETTABLEKS                       R12 R11 K14 ["tag"]
      302 SETTABLEKS                       R11 R10 K0 ["container"]
      304 SETTABLE                         R10 R8 R9
      305 GETUPVAL                         R9 4
      306 GETTABLEKS                       R9 R9 K20 ["Medium"]
      308 DUPTABLE                         R10 K1 [{"container"}]
      309 DUPTABLE                         R11 K38 [{"tag"}]
      310 NEWTABLE                         R12 1 0
      312 LOADB                            R13 1
      313 SETTABLEKS                       R13 R12 K40 ["radius-medium"]
      315 SETTABLEKS                       R12 R11 K14 ["tag"]
      317 SETTABLEKS                       R11 R10 K0 ["container"]
      319 SETTABLE                         R10 R8 R9
      320 GETUPVAL                         R9 4
      321 GETTABLEKS                       R9 R9 K23 ["Large"]
      323 DUPTABLE                         R10 K1 [{"container"}]
      324 DUPTABLE                         R11 K38 [{"tag"}]
      325 NEWTABLE                         R12 1 0
      327 LOADB                            R13 1
      328 SETTABLEKS                       R13 R12 K43 ["radius-large"]
      330 SETTABLEKS                       R12 R11 K14 ["tag"]
      332 SETTABLEKS                       R11 R10 K0 ["container"]
      334 SETTABLE                         R10 R8 R9
      335 DUPTABLE                         R9 K52 [{"common", "sizes", "variants", "defaultRadius", "radius", "errorState", "focusedState", "hoverState"}]
      336 SETTABLEKS                       R1 R9 K44 ["common"]
      338 SETTABLEKS                       R2 R9 K45 ["sizes"]
      340 SETTABLEKS                       R3 R9 K46 ["variants"]
      342 SETTABLEKS                       R7 R9 K47 ["defaultRadius"]
      344 SETTABLEKS                       R8 R9 K48 ["radius"]
      346 SETTABLEKS                       R4 R9 K49 ["errorState"]
      348 SETTABLEKS                       R5 R9 K50 ["focusedState"]
      350 SETTABLEKS                       R6 R9 K51 ["hoverState"]
      352 RETURN                           R9 1

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
