PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["testId"]
        2 DUPTABLE                         R2 K10 [{"Children", "AspectRatio", "CornerRadius", "FlexItem", "ListLayout", "SizeConstraint", "Padding", "Scale", "Stroke"}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K11 ["createElement"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K12 ["Fragment"]
        9 NEWTABLE                         R5 0 0
       11 GETTABLEKS                       R6 R0 K13 ["children"]
       13 CALL                             R3 3 1
       14 SETTABLEKS                       R3 R2 K1 ["Children"]
       16 GETTABLEKS                       R4 R0 K14 ["aspectRatio"]
       18 JUMPIFEQKNIL                     R4 ; [+23]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K11 ["createElement"]
       23 GETUPVAL                         R4 1
       24 DUPTABLE                         R5 K16 [{"value", "testId"}]
       25 GETTABLEKS                       R6 R0 K14 ["aspectRatio"]
       27 SETTABLEKS                       R6 R5 K15 ["value"]
       29 JUMPIFNOT                        R1 ; [+7]
       30 LOADK                            R7 K17 ["%*--aspect-ratio"]
       31 MOVE                             R9 R1
       32 NAMECALL                         R7 R7 K18 ["format"]
       34 CALL                             R7 2 1
       35 MOVE                             R6 R7
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 SETTABLEKS                       R6 R5 K0 ["testId"]
       40 CALL                             R3 2 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R3
       43 SETTABLEKS                       R3 R2 K2 ["AspectRatio"]
       45 GETTABLEKS                       R4 R0 K19 ["cornerRadius"]
       47 JUMPIFEQKNIL                     R4 ; [+21]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K11 ["createElement"]
       52 LOADK                            R4 K20 ["UICorner"]
       53 NEWTABLE                         R5 2 0
       55 GETTABLEKS                       R6 R0 K19 ["cornerRadius"]
       57 SETTABLEKS                       R6 R5 K3 ["CornerRadius"]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K21 ["Tag"]
       62 GETUPVAL                         R7 2
       63 MOVE                             R8 R1
       64 LOADK                            R9 K22 ["corner-radius"]
       65 CALL                             R7 2 1
       66 SETTABLE                         R7 R5 R6
       67 CALL                             R3 2 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R3
       70 SETTABLEKS                       R3 R2 K3 ["CornerRadius"]
       72 GETTABLEKS                       R4 R0 K23 ["flexItem"]
       74 JUMPIFEQKNIL                     R4 ; [+41]
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R3 R3 K11 ["createElement"]
       79 LOADK                            R4 K24 ["UIFlexItem"]
       80 NEWTABLE                         R5 8 0
       82 GETTABLEKS                       R6 R0 K23 ["flexItem"]
       84 GETTABLEKS                       R6 R6 K25 ["FlexMode"]
       86 SETTABLEKS                       R6 R5 K25 ["FlexMode"]
       88 GETTABLEKS                       R6 R0 K23 ["flexItem"]
       90 GETTABLEKS                       R6 R6 K26 ["GrowRatio"]
       92 SETTABLEKS                       R6 R5 K26 ["GrowRatio"]
       94 GETTABLEKS                       R6 R0 K23 ["flexItem"]
       96 GETTABLEKS                       R6 R6 K27 ["ShrinkRatio"]
       98 SETTABLEKS                       R6 R5 K27 ["ShrinkRatio"]
      100 GETTABLEKS                       R6 R0 K23 ["flexItem"]
      102 GETTABLEKS                       R6 R6 K28 ["ItemLineAlignment"]
      104 SETTABLEKS                       R6 R5 K28 ["ItemLineAlignment"]
      106 GETUPVAL                         R6 0
      107 GETTABLEKS                       R6 R6 K21 ["Tag"]
      109 GETUPVAL                         R7 2
      110 MOVE                             R8 R1
      111 LOADK                            R9 K29 ["flex-item"]
      112 CALL                             R7 2 1
      113 SETTABLE                         R7 R5 R6
      114 CALL                             R3 2 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R3
      117 SETTABLEKS                       R3 R2 K4 ["FlexItem"]
      119 GETTABLEKS                       R4 R0 K30 ["layout"]
      121 JUMPIFEQKNIL                     R4 ; [+77]
      123 GETTABLEKS                       R4 R0 K30 ["layout"]
      125 GETTABLEKS                       R4 R4 K31 ["FillDirection"]
      127 JUMPIFEQKNIL                     R4 ; [+71]
      129 GETUPVAL                         R3 0
      130 GETTABLEKS                       R3 R3 K11 ["createElement"]
      132 LOADK                            R4 K32 ["UIListLayout"]
      133 NEWTABLE                         R5 16 0
      135 GETTABLEKS                       R6 R0 K30 ["layout"]
      137 GETTABLEKS                       R6 R6 K31 ["FillDirection"]
      139 SETTABLEKS                       R6 R5 K31 ["FillDirection"]
      141 GETTABLEKS                       R6 R0 K30 ["layout"]
      143 GETTABLEKS                       R6 R6 K28 ["ItemLineAlignment"]
      145 SETTABLEKS                       R6 R5 K28 ["ItemLineAlignment"]
      147 GETTABLEKS                       R6 R0 K30 ["layout"]
      149 GETTABLEKS                       R6 R6 K33 ["HorizontalAlignment"]
      151 SETTABLEKS                       R6 R5 K33 ["HorizontalAlignment"]
      153 GETTABLEKS                       R6 R0 K30 ["layout"]
      155 GETTABLEKS                       R6 R6 K34 ["HorizontalFlex"]
      157 SETTABLEKS                       R6 R5 K34 ["HorizontalFlex"]
      159 GETTABLEKS                       R6 R0 K30 ["layout"]
      161 GETTABLEKS                       R6 R6 K35 ["VerticalAlignment"]
      163 SETTABLEKS                       R6 R5 K35 ["VerticalAlignment"]
      165 GETTABLEKS                       R6 R0 K30 ["layout"]
      167 GETTABLEKS                       R6 R6 K36 ["VerticalFlex"]
      169 SETTABLEKS                       R6 R5 K36 ["VerticalFlex"]
      171 GETTABLEKS                       R6 R0 K30 ["layout"]
      173 GETTABLEKS                       R6 R6 K7 ["Padding"]
      175 SETTABLEKS                       R6 R5 K7 ["Padding"]
      177 GETTABLEKS                       R6 R0 K30 ["layout"]
      179 GETTABLEKS                       R6 R6 K37 ["SortOrder"]
      181 SETTABLEKS                       R6 R5 K37 ["SortOrder"]
      183 GETTABLEKS                       R6 R0 K30 ["layout"]
      185 GETTABLEKS                       R6 R6 K38 ["Wraps"]
      187 SETTABLEKS                       R6 R5 K38 ["Wraps"]
      189 GETUPVAL                         R6 0
      190 GETTABLEKS                       R6 R6 K21 ["Tag"]
      192 GETUPVAL                         R7 2
      193 MOVE                             R8 R1
      194 LOADK                            R9 K39 ["list-layout"]
      195 CALL                             R7 2 1
      196 SETTABLE                         R7 R5 R6
      197 CALL                             R3 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R3
      200 SETTABLEKS                       R3 R2 K5 ["ListLayout"]
      202 GETTABLEKS                       R4 R0 K40 ["sizeConstraint"]
      204 JUMPIFEQKNIL                     R4 ; [+29]
      206 GETUPVAL                         R3 0
      207 GETTABLEKS                       R3 R3 K11 ["createElement"]
      209 LOADK                            R4 K41 ["UISizeConstraint"]
      210 NEWTABLE                         R5 4 0
      212 GETTABLEKS                       R6 R0 K40 ["sizeConstraint"]
      214 GETTABLEKS                       R6 R6 K42 ["MaxSize"]
      216 SETTABLEKS                       R6 R5 K42 ["MaxSize"]
      218 GETTABLEKS                       R6 R0 K40 ["sizeConstraint"]
      220 GETTABLEKS                       R6 R6 K43 ["MinSize"]
      222 SETTABLEKS                       R6 R5 K43 ["MinSize"]
      224 GETUPVAL                         R6 0
      225 GETTABLEKS                       R6 R6 K21 ["Tag"]
      227 GETUPVAL                         R7 2
      228 MOVE                             R8 R1
      229 LOADK                            R9 K44 ["size-constraint"]
      230 CALL                             R7 2 1
      231 SETTABLE                         R7 R5 R6
      232 CALL                             R3 2 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R3
      235 SETTABLEKS                       R3 R2 K6 ["SizeConstraint"]
      237 GETTABLEKS                       R4 R0 K45 ["padding"]
      239 JUMPIFEQKNIL                     R4 ; [+23]
      241 GETUPVAL                         R3 0
      242 GETTABLEKS                       R3 R3 K11 ["createElement"]
      244 GETUPVAL                         R4 3
      245 DUPTABLE                         R5 K16 [{"value", "testId"}]
      246 GETTABLEKS                       R6 R0 K45 ["padding"]
      248 SETTABLEKS                       R6 R5 K15 ["value"]
      250 JUMPIFNOT                        R1 ; [+7]
      251 LOADK                            R7 K46 ["%*--padding"]
      252 MOVE                             R9 R1
      253 NAMECALL                         R7 R7 K18 ["format"]
      255 CALL                             R7 2 1
      256 MOVE                             R6 R7
      257 JUMP                             ; [+1]
      258 LOADNIL                          R6
      259 SETTABLEKS                       R6 R5 K0 ["testId"]
      261 CALL                             R3 2 1
      262 JUMP                             ; [+1]
      263 LOADNIL                          R3
      264 SETTABLEKS                       R3 R2 K7 ["Padding"]
      266 GETTABLEKS                       R4 R0 K47 ["scale"]
      268 JUMPIFEQKNIL                     R4 ; [+21]
      270 GETUPVAL                         R3 0
      271 GETTABLEKS                       R3 R3 K11 ["createElement"]
      273 LOADK                            R4 K48 ["UIScale"]
      274 NEWTABLE                         R5 2 0
      276 GETTABLEKS                       R6 R0 K47 ["scale"]
      278 SETTABLEKS                       R6 R5 K8 ["Scale"]
      280 GETUPVAL                         R6 0
      281 GETTABLEKS                       R6 R6 K21 ["Tag"]
      283 GETUPVAL                         R7 2
      284 MOVE                             R8 R1
      285 LOADK                            R9 K47 ["scale"]
      286 CALL                             R7 2 1
      287 SETTABLE                         R7 R5 R6
      288 CALL                             R3 2 1
      289 JUMP                             ; [+1]
      290 LOADNIL                          R3
      291 SETTABLEKS                       R3 R2 K8 ["Scale"]
      293 GETTABLEKS                       R4 R0 K49 ["stroke"]
      295 JUMPIFEQKNIL                     R4 ; [+47]
      297 GETUPVAL                         R3 0
      298 GETTABLEKS                       R3 R3 K11 ["createElement"]
      300 LOADK                            R4 K50 ["UIStroke"]
      301 NEWTABLE                         R5 8 0
      303 GETTABLEKS                       R6 R0 K49 ["stroke"]
      305 GETTABLEKS                       R6 R6 K51 ["Color"]
      307 SETTABLEKS                       R6 R5 K51 ["Color"]
      309 GETTABLEKS                       R6 R0 K49 ["stroke"]
      311 GETTABLEKS                       R6 R6 K52 ["Thickness"]
      313 SETTABLEKS                       R6 R5 K52 ["Thickness"]
      315 GETTABLEKS                       R6 R0 K49 ["stroke"]
      317 GETTABLEKS                       R6 R6 K53 ["Transparency"]
      319 SETTABLEKS                       R6 R5 K53 ["Transparency"]
      321 GETTABLEKS                       R6 R0 K49 ["stroke"]
      323 GETTABLEKS                       R6 R6 K54 ["LineJoinMode"]
      325 SETTABLEKS                       R6 R5 K54 ["LineJoinMode"]
      327 GETTABLEKS                       R6 R0 K49 ["stroke"]
      329 GETTABLEKS                       R6 R6 K55 ["BorderStrokePosition"]
      331 SETTABLEKS                       R6 R5 K55 ["BorderStrokePosition"]
      333 GETUPVAL                         R6 0
      334 GETTABLEKS                       R6 R6 K21 ["Tag"]
      336 GETUPVAL                         R7 2
      337 MOVE                             R8 R1
      338 LOADK                            R9 K49 ["stroke"]
      339 CALL                             R7 2 1
      340 SETTABLE                         R7 R5 R6
      341 CALL                             R3 2 1
      342 JUMP                             ; [+1]
      343 LOADNIL                          R3
      344 SETTABLEKS                       R3 R2 K9 ["Stroke"]
      346 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["AspectRatio"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Padding"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["getTestIdTag"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["Types"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K14 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R4
       47 RETURN                           R7 1
