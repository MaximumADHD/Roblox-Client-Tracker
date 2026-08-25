PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 SETTABLE                         R1 R2 R3
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R4 K0 ["BasePart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        6 LOADK                            R3 K2 ["Not a BasePart"]
        7 GETIMPORT                        R1 K4 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R2 R0 K5 ["CanCollide"]
       12 NOT                              R1 R2
       13 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R5 1
        1 JUMPIFNOTEQKNIL                  R1 ; [+5]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R5 0 +1
        6 LOADB                            R5 1
        7 FASTCALL1                        ASSERT R5 ; [+2]
        8 GETIMPORT                        R4 K1 [assert]
       10 CALL                             R4 1 0
       11 DUPTABLE                         R4 K4 [{"info", "interactor"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["fromCombinedColor"]
       15 MOVE                             R6 R0
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADK                            R7 K6 ["Color3"]
       18 JUMP                             ; [+1]
       19 LOADK                            R7 K7 ["BrickColor"]
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R8 0 +1
       23 LOADB                            R8 1
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R4 K2 ["info"]
       27 GETUPVAL                         R5 1
       28 MOVE                             R6 R1
       29 MOVE                             R7 R2
       30 MOVE                             R8 R3
       31 CALL                             R5 3 1
       32 SETTABLEKS                       R5 R4 K3 ["interactor"]
       34 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyInteraction"]
       11 GETTABLEKS                       R2 R2 K7 ["Interactors"]
       13 GETTABLEKS                       R2 R2 K8 ["VirtualInteractor"]
       15 GETTABLEKS                       R2 R2 K9 ["InstanceSelf"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["PropertyInteraction"]
       22 GETTABLEKS                       R3 R3 K7 ["Interactors"]
       24 GETTABLEKS                       R3 R3 K8 ["VirtualInteractor"]
       26 GETTABLEKS                       R3 R3 K10 ["MeshId"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["PropertyInteraction"]
       33 GETTABLEKS                       R4 R4 K11 ["PropertyId"]
       35 GETTABLEKS                       R4 R4 K12 ["fromClass"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["PropertyInteraction"]
       42 GETTABLEKS                       R5 R5 K13 ["PropertyInfo"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K14 ["PropertyTypes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["PropertyInteraction"]
       54 GETTABLEKS                       R7 R7 K7 ["Interactors"]
       56 GETTABLEKS                       R7 R7 K8 ["VirtualInteractor"]
       58 GETTABLEKS                       R7 R7 K15 ["VirtualPropertyDataTypes"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["PropertyInteraction"]
       65 GETTABLEKS                       R8 R8 K7 ["Interactors"]
       67 GETTABLEKS                       R8 R8 K8 ["VirtualInteractor"]
       69 GETTABLEKS                       R8 R8 K16 ["createCombinedColor"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K6 ["PropertyInteraction"]
       76 GETTABLEKS                       R9 R9 K17 ["propertyIdToString"]
       78 CALL                             R8 1 1
       79 NEWTABLE                         R9 0 0
       81 NEWTABLE                         R10 0 0
       83 DUPCLOSURE                       R11 K18 [PROTO_0]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R8
       86 DUPCLOSURE                       R12 K19 [PROTO_1]
       87 CAPTURE                          VAL R10
       88 MOVE                             R13 R3
       89 LOADK                            R14 K20 ["CanQuery"]
       90 LOADK                            R15 K21 ["BasePart"]
       91 LOADK                            R16 K22 ["Property"]
       92 CALL                             R13 3 1
       93 DUPTABLE                         R14 K24 [{"isVisible"}]
       94 DUPCLOSURE                       R15 K25 [PROTO_2]
       95 SETTABLEKS                       R15 R14 K23 ["isVisible"]
       97 MOVE                             R15 R8
       98 MOVE                             R16 R13
       99 CALL                             R15 1 1
      100 SETTABLE                         R14 R9 R15
      101 MOVE                             R13 R3
      102 LOADK                            R14 K26 ["Self"]
      103 LOADK                            R15 K27 ["Instance"]
      104 LOADK                            R16 K28 ["Virtual"]
      105 CALL                             R13 3 1
      106 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      107 GETTABLEKS                       R15 R4 K32 ["fromInstanceRefType"]
      109 LOADB                            R16 1
      110 LOADK                            R17 K27 ["Instance"]
      111 CALL                             R15 2 1
      112 SETTABLEKS                       R15 R14 K29 ["info"]
      114 SETTABLEKS                       R1 R14 K30 ["interactor"]
      116 SETTABLE                         R14 R10 R13
      117 MOVE                             R13 R3
      118 LOADK                            R14 K10 ["MeshId"]
      119 LOADK                            R15 K33 ["MeshPart"]
      120 LOADK                            R16 K28 ["Virtual"]
      121 CALL                             R13 3 1
      122 DUPTABLE                         R14 K31 [{"info", "interactor"}]
      123 GETTABLEKS                       R15 R4 K34 ["fromType"]
      125 LOADK                            R16 K35 ["string"]
      126 LOADB                            R17 0
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K29 ["info"]
      130 SETTABLEKS                       R2 R14 K30 ["interactor"]
      132 SETTABLE                         R14 R10 R13
      133 DUPCLOSURE                       R13 K36 [PROTO_3]
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R7
      136 MOVE                             R14 R3
      137 LOADK                            R15 K37 ["CombinedColor"]
      138 LOADK                            R16 K21 ["BasePart"]
      139 LOADK                            R17 K28 ["Virtual"]
      140 CALL                             R14 3 1
      141 MOVE                             R15 R13
      142 LOADB                            R16 0
      143 MOVE                             R17 R3
      144 LOADK                            R18 K38 ["Color"]
      145 LOADK                            R19 K21 ["BasePart"]
      146 LOADK                            R20 K22 ["Property"]
      147 CALL                             R17 3 1
      148 MOVE                             R18 R3
      149 LOADK                            R19 K39 ["BrickColor"]
      150 LOADK                            R20 K21 ["BasePart"]
      151 LOADK                            R21 K22 ["Property"]
      152 CALL                             R18 3 1
      153 MOVE                             R19 R3
      154 LOADK                            R20 K40 ["Transparency"]
      155 LOADK                            R21 K21 ["BasePart"]
      156 LOADK                            R22 K22 ["Property"]
      157 CALL                             R19 3 -1
      158 CALL                             R15 -1 1
      159 SETTABLE                         R15 R10 R14
      160 MOVE                             R14 R3
      161 LOADK                            R15 K41 ["CombinedHeadColor"]
      162 LOADK                            R16 K42 ["BodyColors"]
      163 LOADK                            R17 K28 ["Virtual"]
      164 CALL                             R14 3 1
      165 MOVE                             R15 R13
      166 LOADB                            R16 0
      167 MOVE                             R17 R3
      168 LOADK                            R18 K43 ["HeadColor3"]
      169 LOADK                            R19 K42 ["BodyColors"]
      170 LOADK                            R20 K22 ["Property"]
      171 CALL                             R17 3 1
      172 MOVE                             R18 R3
      173 LOADK                            R19 K44 ["HeadColor"]
      174 LOADK                            R20 K42 ["BodyColors"]
      175 LOADK                            R21 K22 ["Property"]
      176 CALL                             R18 3 1
      177 LOADNIL                          R19
      178 CALL                             R15 4 1
      179 SETTABLE                         R15 R10 R14
      180 MOVE                             R14 R3
      181 LOADK                            R15 K45 ["CombinedLeftArmColor"]
      182 LOADK                            R16 K42 ["BodyColors"]
      183 LOADK                            R17 K28 ["Virtual"]
      184 CALL                             R14 3 1
      185 MOVE                             R15 R13
      186 LOADB                            R16 0
      187 MOVE                             R17 R3
      188 LOADK                            R18 K46 ["LeftArmColor3"]
      189 LOADK                            R19 K42 ["BodyColors"]
      190 LOADK                            R20 K22 ["Property"]
      191 CALL                             R17 3 1
      192 MOVE                             R18 R3
      193 LOADK                            R19 K47 ["LeftArmColor"]
      194 LOADK                            R20 K42 ["BodyColors"]
      195 LOADK                            R21 K22 ["Property"]
      196 CALL                             R18 3 1
      197 LOADNIL                          R19
      198 CALL                             R15 4 1
      199 SETTABLE                         R15 R10 R14
      200 MOVE                             R14 R3
      201 LOADK                            R15 K48 ["CombinedLeftLegColor"]
      202 LOADK                            R16 K42 ["BodyColors"]
      203 LOADK                            R17 K28 ["Virtual"]
      204 CALL                             R14 3 1
      205 MOVE                             R15 R13
      206 LOADB                            R16 0
      207 MOVE                             R17 R3
      208 LOADK                            R18 K49 ["LeftLegColor3"]
      209 LOADK                            R19 K42 ["BodyColors"]
      210 LOADK                            R20 K22 ["Property"]
      211 CALL                             R17 3 1
      212 MOVE                             R18 R3
      213 LOADK                            R19 K50 ["LeftLegColor"]
      214 LOADK                            R20 K42 ["BodyColors"]
      215 LOADK                            R21 K22 ["Property"]
      216 CALL                             R18 3 1
      217 LOADNIL                          R19
      218 CALL                             R15 4 1
      219 SETTABLE                         R15 R10 R14
      220 MOVE                             R14 R3
      221 LOADK                            R15 K51 ["CombinedRightArmColor"]
      222 LOADK                            R16 K42 ["BodyColors"]
      223 LOADK                            R17 K28 ["Virtual"]
      224 CALL                             R14 3 1
      225 MOVE                             R15 R13
      226 LOADB                            R16 0
      227 MOVE                             R17 R3
      228 LOADK                            R18 K52 ["RightArmColor3"]
      229 LOADK                            R19 K42 ["BodyColors"]
      230 LOADK                            R20 K22 ["Property"]
      231 CALL                             R17 3 1
      232 MOVE                             R18 R3
      233 LOADK                            R19 K53 ["RightArmColor"]
      234 LOADK                            R20 K42 ["BodyColors"]
      235 LOADK                            R21 K22 ["Property"]
      236 CALL                             R18 3 1
      237 LOADNIL                          R19
      238 CALL                             R15 4 1
      239 SETTABLE                         R15 R10 R14
      240 MOVE                             R14 R3
      241 LOADK                            R15 K54 ["CombinedRightLegColor"]
      242 LOADK                            R16 K42 ["BodyColors"]
      243 LOADK                            R17 K28 ["Virtual"]
      244 CALL                             R14 3 1
      245 MOVE                             R15 R13
      246 LOADB                            R16 0
      247 MOVE                             R17 R3
      248 LOADK                            R18 K55 ["RightLegColor3"]
      249 LOADK                            R19 K42 ["BodyColors"]
      250 LOADK                            R20 K22 ["Property"]
      251 CALL                             R17 3 1
      252 MOVE                             R18 R3
      253 LOADK                            R19 K56 ["RightLegColor"]
      254 LOADK                            R20 K42 ["BodyColors"]
      255 LOADK                            R21 K22 ["Property"]
      256 CALL                             R18 3 1
      257 LOADNIL                          R19
      258 CALL                             R15 4 1
      259 SETTABLE                         R15 R10 R14
      260 MOVE                             R14 R3
      261 LOADK                            R15 K57 ["CombinedTorsoColor"]
      262 LOADK                            R16 K42 ["BodyColors"]
      263 LOADK                            R17 K28 ["Virtual"]
      264 CALL                             R14 3 1
      265 MOVE                             R15 R13
      266 LOADB                            R16 0
      267 MOVE                             R17 R3
      268 LOADK                            R18 K58 ["TorsoColor3"]
      269 LOADK                            R19 K42 ["BodyColors"]
      270 LOADK                            R20 K22 ["Property"]
      271 CALL                             R17 3 1
      272 MOVE                             R18 R3
      273 LOADK                            R19 K59 ["TorsoColor"]
      274 LOADK                            R20 K42 ["BodyColors"]
      275 LOADK                            R21 K22 ["Property"]
      276 CALL                             R18 3 1
      277 LOADNIL                          R19
      278 CALL                             R15 4 1
      279 SETTABLE                         R15 R10 R14
      280 MOVE                             R14 R3
      281 LOADK                            R15 K37 ["CombinedColor"]
      282 LOADK                            R16 K60 ["Decal"]
      283 LOADK                            R17 K28 ["Virtual"]
      284 CALL                             R14 3 1
      285 MOVE                             R15 R13
      286 LOADB                            R16 0
      287 MOVE                             R17 R3
      288 LOADK                            R18 K61 ["Color3"]
      289 LOADK                            R19 K60 ["Decal"]
      290 LOADK                            R20 K22 ["Property"]
      291 CALL                             R17 3 1
      292 LOADNIL                          R18
      293 MOVE                             R19 R3
      294 LOADK                            R20 K40 ["Transparency"]
      295 LOADK                            R21 K60 ["Decal"]
      296 LOADK                            R22 K22 ["Property"]
      297 CALL                             R19 3 -1
      298 CALL                             R15 -1 1
      299 SETTABLE                         R15 R10 R14
      300 MOVE                             R14 R3
      301 LOADK                            R15 K62 ["CombinedFillColor"]
      302 LOADK                            R16 K63 ["Highlight"]
      303 LOADK                            R17 K28 ["Virtual"]
      304 CALL                             R14 3 1
      305 MOVE                             R15 R13
      306 LOADB                            R16 0
      307 MOVE                             R17 R3
      308 LOADK                            R18 K64 ["FillColor"]
      309 LOADK                            R19 K63 ["Highlight"]
      310 LOADK                            R20 K22 ["Property"]
      311 CALL                             R17 3 1
      312 LOADNIL                          R18
      313 MOVE                             R19 R3
      314 LOADK                            R20 K65 ["FillTransparency"]
      315 LOADK                            R21 K63 ["Highlight"]
      316 LOADK                            R22 K22 ["Property"]
      317 CALL                             R19 3 -1
      318 CALL                             R15 -1 1
      319 SETTABLE                         R15 R10 R14
      320 MOVE                             R14 R3
      321 LOADK                            R15 K66 ["CombinedOutlineColor"]
      322 LOADK                            R16 K63 ["Highlight"]
      323 LOADK                            R17 K28 ["Virtual"]
      324 CALL                             R14 3 1
      325 MOVE                             R15 R13
      326 LOADB                            R16 0
      327 MOVE                             R17 R3
      328 LOADK                            R18 K67 ["OutlineColor"]
      329 LOADK                            R19 K63 ["Highlight"]
      330 LOADK                            R20 K22 ["Property"]
      331 CALL                             R17 3 1
      332 LOADNIL                          R18
      333 MOVE                             R19 R3
      334 LOADK                            R20 K68 ["OutlineTransparency"]
      335 LOADK                            R21 K63 ["Highlight"]
      336 LOADK                            R22 K22 ["Property"]
      337 CALL                             R19 3 -1
      338 CALL                             R15 -1 1
      339 SETTABLE                         R15 R10 R14
      340 MOVE                             R14 R3
      341 LOADK                            R15 K69 ["CombinedBackgroundColor"]
      342 LOADK                            R16 K70 ["GuiObject"]
      343 LOADK                            R17 K28 ["Virtual"]
      344 CALL                             R14 3 1
      345 MOVE                             R15 R13
      346 LOADB                            R16 0
      347 MOVE                             R17 R3
      348 LOADK                            R18 K71 ["BackgroundColor3"]
      349 LOADK                            R19 K70 ["GuiObject"]
      350 LOADK                            R20 K22 ["Property"]
      351 CALL                             R17 3 1
      352 MOVE                             R18 R3
      353 LOADK                            R19 K72 ["BackgroundColor"]
      354 LOADK                            R20 K70 ["GuiObject"]
      355 LOADK                            R21 K22 ["Property"]
      356 CALL                             R18 3 1
      357 MOVE                             R19 R3
      358 LOADK                            R20 K73 ["BackgroundTransparency"]
      359 LOADK                            R21 K70 ["GuiObject"]
      360 LOADK                            R22 K22 ["Property"]
      361 CALL                             R19 3 -1
      362 CALL                             R15 -1 1
      363 SETTABLE                         R15 R10 R14
      364 MOVE                             R14 R3
      365 LOADK                            R15 K74 ["CombinedImageColor"]
      366 LOADK                            R16 K75 ["ImageButton"]
      367 LOADK                            R17 K28 ["Virtual"]
      368 CALL                             R14 3 1
      369 MOVE                             R15 R13
      370 LOADB                            R16 0
      371 MOVE                             R17 R3
      372 LOADK                            R18 K76 ["ImageColor3"]
      373 LOADK                            R19 K75 ["ImageButton"]
      374 LOADK                            R20 K22 ["Property"]
      375 CALL                             R17 3 1
      376 LOADNIL                          R18
      377 MOVE                             R19 R3
      378 LOADK                            R20 K77 ["ImageTransparency"]
      379 LOADK                            R21 K75 ["ImageButton"]
      380 LOADK                            R22 K22 ["Property"]
      381 CALL                             R19 3 -1
      382 CALL                             R15 -1 1
      383 SETTABLE                         R15 R10 R14
      384 MOVE                             R14 R3
      385 LOADK                            R15 K74 ["CombinedImageColor"]
      386 LOADK                            R16 K78 ["ImageLabel"]
      387 LOADK                            R17 K28 ["Virtual"]
      388 CALL                             R14 3 1
      389 MOVE                             R15 R13
      390 LOADB                            R16 0
      391 MOVE                             R17 R3
      392 LOADK                            R18 K76 ["ImageColor3"]
      393 LOADK                            R19 K78 ["ImageLabel"]
      394 LOADK                            R20 K22 ["Property"]
      395 CALL                             R17 3 1
      396 LOADNIL                          R18
      397 MOVE                             R19 R3
      398 LOADK                            R20 K77 ["ImageTransparency"]
      399 LOADK                            R21 K78 ["ImageLabel"]
      400 LOADK                            R22 K22 ["Property"]
      401 CALL                             R19 3 -1
      402 CALL                             R15 -1 1
      403 SETTABLE                         R15 R10 R14
      404 MOVE                             R14 R3
      405 LOADK                            R15 K79 ["CombinedTextColor"]
      406 LOADK                            R16 K80 ["TextBox"]
      407 LOADK                            R17 K28 ["Virtual"]
      408 CALL                             R14 3 1
      409 MOVE                             R15 R13
      410 LOADB                            R16 0
      411 MOVE                             R17 R3
      412 LOADK                            R18 K81 ["TextColor3"]
      413 LOADK                            R19 K80 ["TextBox"]
      414 LOADK                            R20 K22 ["Property"]
      415 CALL                             R17 3 1
      416 LOADNIL                          R18
      417 MOVE                             R19 R3
      418 LOADK                            R20 K82 ["TextTransparency"]
      419 LOADK                            R21 K80 ["TextBox"]
      420 LOADK                            R22 K22 ["Property"]
      421 CALL                             R19 3 -1
      422 CALL                             R15 -1 1
      423 SETTABLE                         R15 R10 R14
      424 MOVE                             R14 R3
      425 LOADK                            R15 K83 ["CombinedTextStrokeColor"]
      426 LOADK                            R16 K80 ["TextBox"]
      427 LOADK                            R17 K28 ["Virtual"]
      428 CALL                             R14 3 1
      429 MOVE                             R15 R13
      430 LOADB                            R16 0
      431 MOVE                             R17 R3
      432 LOADK                            R18 K84 ["TextStrokeColor3"]
      433 LOADK                            R19 K80 ["TextBox"]
      434 LOADK                            R20 K22 ["Property"]
      435 CALL                             R17 3 1
      436 LOADNIL                          R18
      437 MOVE                             R19 R3
      438 LOADK                            R20 K85 ["TextStrokeTransparency"]
      439 LOADK                            R21 K80 ["TextBox"]
      440 LOADK                            R22 K22 ["Property"]
      441 CALL                             R19 3 -1
      442 CALL                             R15 -1 1
      443 SETTABLE                         R15 R10 R14
      444 MOVE                             R14 R3
      445 LOADK                            R15 K79 ["CombinedTextColor"]
      446 LOADK                            R16 K86 ["TextButton"]
      447 LOADK                            R17 K28 ["Virtual"]
      448 CALL                             R14 3 1
      449 MOVE                             R15 R13
      450 LOADB                            R16 0
      451 MOVE                             R17 R3
      452 LOADK                            R18 K81 ["TextColor3"]
      453 LOADK                            R19 K86 ["TextButton"]
      454 LOADK                            R20 K22 ["Property"]
      455 CALL                             R17 3 1
      456 LOADNIL                          R18
      457 MOVE                             R19 R3
      458 LOADK                            R20 K82 ["TextTransparency"]
      459 LOADK                            R21 K86 ["TextButton"]
      460 LOADK                            R22 K22 ["Property"]
      461 CALL                             R19 3 -1
      462 CALL                             R15 -1 1
      463 SETTABLE                         R15 R10 R14
      464 MOVE                             R14 R3
      465 LOADK                            R15 K83 ["CombinedTextStrokeColor"]
      466 LOADK                            R16 K86 ["TextButton"]
      467 LOADK                            R17 K28 ["Virtual"]
      468 CALL                             R14 3 1
      469 MOVE                             R15 R13
      470 LOADB                            R16 0
      471 MOVE                             R17 R3
      472 LOADK                            R18 K84 ["TextStrokeColor3"]
      473 LOADK                            R19 K86 ["TextButton"]
      474 LOADK                            R20 K22 ["Property"]
      475 CALL                             R17 3 1
      476 LOADNIL                          R18
      477 MOVE                             R19 R3
      478 LOADK                            R20 K85 ["TextStrokeTransparency"]
      479 LOADK                            R21 K86 ["TextButton"]
      480 LOADK                            R22 K22 ["Property"]
      481 CALL                             R19 3 -1
      482 CALL                             R15 -1 1
      483 SETTABLE                         R15 R10 R14
      484 MOVE                             R14 R3
      485 LOADK                            R15 K79 ["CombinedTextColor"]
      486 LOADK                            R16 K87 ["TextLabel"]
      487 LOADK                            R17 K28 ["Virtual"]
      488 CALL                             R14 3 1
      489 MOVE                             R15 R13
      490 LOADB                            R16 0
      491 MOVE                             R17 R3
      492 LOADK                            R18 K81 ["TextColor3"]
      493 LOADK                            R19 K87 ["TextLabel"]
      494 LOADK                            R20 K22 ["Property"]
      495 CALL                             R17 3 1
      496 LOADNIL                          R18
      497 MOVE                             R19 R3
      498 LOADK                            R20 K82 ["TextTransparency"]
      499 LOADK                            R21 K87 ["TextLabel"]
      500 LOADK                            R22 K22 ["Property"]
      501 CALL                             R19 3 -1
      502 CALL                             R15 -1 1
      503 SETTABLE                         R15 R10 R14
      504 MOVE                             R14 R3
      505 LOADK                            R15 K83 ["CombinedTextStrokeColor"]
      506 LOADK                            R16 K87 ["TextLabel"]
      507 LOADK                            R17 K28 ["Virtual"]
      508 CALL                             R14 3 1
      509 MOVE                             R15 R13
      510 LOADB                            R16 0
      511 MOVE                             R17 R3
      512 LOADK                            R18 K84 ["TextStrokeColor3"]
      513 LOADK                            R19 K87 ["TextLabel"]
      514 LOADK                            R20 K22 ["Property"]
      515 CALL                             R17 3 1
      516 LOADNIL                          R18
      517 MOVE                             R19 R3
      518 LOADK                            R20 K85 ["TextStrokeTransparency"]
      519 LOADK                            R21 K87 ["TextLabel"]
      520 LOADK                            R22 K22 ["Property"]
      521 CALL                             R19 3 -1
      522 CALL                             R15 -1 1
      523 SETTABLE                         R15 R10 R14
      524 DUPTABLE                         R14 K90 [{"propertyPatches", "virtualPropertyDefinitions"}]
      525 SETTABLEKS                       R9 R14 K88 ["propertyPatches"]
      527 SETTABLEKS                       R10 R14 K89 ["virtualPropertyDefinitions"]
      529 RETURN                           R14 1
