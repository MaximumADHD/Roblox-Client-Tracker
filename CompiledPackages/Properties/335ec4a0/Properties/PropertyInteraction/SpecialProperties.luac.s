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
      102 LOADK                            R14 K26 ["Length"]
      103 LOADK                            R15 K27 ["RopeConstraint"]
      104 LOADK                            R16 K22 ["Property"]
      105 CALL                             R13 3 1
      106 DUPTABLE                         R14 K30 [{["unit"] = "studs"}]
      107 MOVE                             R15 R8
      108 MOVE                             R16 R13
      109 CALL                             R15 1 1
      110 SETTABLE                         R14 R9 R15
      111 MOVE                             R13 R3
      112 LOADK                            R14 K31 ["Rotation"]
      113 LOADK                            R15 K32 ["GuiObject"]
      114 LOADK                            R16 K22 ["Property"]
      115 CALL                             R13 3 1
      116 DUPTABLE                         R14 K34 [{["unit"] = "degrees"}]
      117 MOVE                             R15 R8
      118 MOVE                             R16 R13
      119 CALL                             R15 1 1
      120 SETTABLE                         R14 R9 R15
      121 MOVE                             R13 R3
      122 LOADK                            R14 K35 ["BorderSizePixel"]
      123 LOADK                            R15 K32 ["GuiObject"]
      124 LOADK                            R16 K22 ["Property"]
      125 CALL                             R13 3 1
      126 DUPTABLE                         R14 K37 [{["unit"] = "pixels"}]
      127 MOVE                             R15 R8
      128 MOVE                             R16 R13
      129 CALL                             R15 1 1
      130 SETTABLE                         R14 R9 R15
      131 MOVE                             R13 R3
      132 LOADK                            R14 K38 ["Duration"]
      133 LOADK                            R15 K39 ["SpawnLocation"]
      134 LOADK                            R16 K22 ["Property"]
      135 CALL                             R13 3 1
      136 DUPTABLE                         R14 K41 [{["unit"] = "seconds"}]
      137 MOVE                             R15 R8
      138 MOVE                             R16 R13
      139 CALL                             R15 1 1
      140 SETTABLE                         R14 R9 R15
      141 MOVE                             R13 R3
      142 LOADK                            R14 K42 ["Transparency"]
      143 LOADK                            R15 K21 ["BasePart"]
      144 LOADK                            R16 K22 ["Property"]
      145 CALL                             R13 3 1
      146 DUPTABLE                         R14 K44 [{["unit"] = "percent_0-1"}]
      147 MOVE                             R15 R8
      148 MOVE                             R16 R13
      149 CALL                             R15 1 1
      150 SETTABLE                         R14 R9 R15
      151 MOVE                             R13 R3
      152 LOADK                            R14 K45 ["Self"]
      153 LOADK                            R15 K46 ["Instance"]
      154 LOADK                            R16 K47 ["Virtual"]
      155 CALL                             R13 3 1
      156 DUPTABLE                         R14 K50 [{"info", "interactor"}]
      157 GETTABLEKS                       R15 R4 K51 ["fromInstanceRefType"]
      159 LOADB                            R16 1
      160 LOADK                            R17 K46 ["Instance"]
      161 CALL                             R15 2 1
      162 SETTABLEKS                       R15 R14 K48 ["info"]
      164 SETTABLEKS                       R1 R14 K49 ["interactor"]
      166 SETTABLE                         R14 R10 R13
      167 MOVE                             R13 R3
      168 LOADK                            R14 K10 ["MeshId"]
      169 LOADK                            R15 K52 ["MeshPart"]
      170 LOADK                            R16 K47 ["Virtual"]
      171 CALL                             R13 3 1
      172 DUPTABLE                         R14 K50 [{"info", "interactor"}]
      173 GETTABLEKS                       R15 R4 K53 ["fromType"]
      175 LOADK                            R16 K54 ["string"]
      176 LOADB                            R17 0
      177 CALL                             R15 2 1
      178 SETTABLEKS                       R15 R14 K48 ["info"]
      180 SETTABLEKS                       R2 R14 K49 ["interactor"]
      182 SETTABLE                         R14 R10 R13
      183 DUPCLOSURE                       R13 K55 [PROTO_3]
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R7
      186 MOVE                             R14 R3
      187 LOADK                            R15 K56 ["CombinedColor"]
      188 LOADK                            R16 K21 ["BasePart"]
      189 LOADK                            R17 K47 ["Virtual"]
      190 CALL                             R14 3 1
      191 MOVE                             R15 R13
      192 LOADB                            R16 0
      193 MOVE                             R17 R3
      194 LOADK                            R18 K57 ["Color"]
      195 LOADK                            R19 K21 ["BasePart"]
      196 LOADK                            R20 K22 ["Property"]
      197 CALL                             R17 3 1
      198 MOVE                             R18 R3
      199 LOADK                            R19 K58 ["BrickColor"]
      200 LOADK                            R20 K21 ["BasePart"]
      201 LOADK                            R21 K22 ["Property"]
      202 CALL                             R18 3 1
      203 MOVE                             R19 R3
      204 LOADK                            R20 K42 ["Transparency"]
      205 LOADK                            R21 K21 ["BasePart"]
      206 LOADK                            R22 K22 ["Property"]
      207 CALL                             R19 3 -1
      208 CALL                             R15 -1 1
      209 SETTABLE                         R15 R10 R14
      210 MOVE                             R14 R3
      211 LOADK                            R15 K59 ["CombinedHeadColor"]
      212 LOADK                            R16 K60 ["BodyColors"]
      213 LOADK                            R17 K47 ["Virtual"]
      214 CALL                             R14 3 1
      215 MOVE                             R15 R13
      216 LOADB                            R16 0
      217 MOVE                             R17 R3
      218 LOADK                            R18 K61 ["HeadColor3"]
      219 LOADK                            R19 K60 ["BodyColors"]
      220 LOADK                            R20 K22 ["Property"]
      221 CALL                             R17 3 1
      222 MOVE                             R18 R3
      223 LOADK                            R19 K62 ["HeadColor"]
      224 LOADK                            R20 K60 ["BodyColors"]
      225 LOADK                            R21 K22 ["Property"]
      226 CALL                             R18 3 1
      227 LOADNIL                          R19
      228 CALL                             R15 4 1
      229 SETTABLE                         R15 R10 R14
      230 MOVE                             R14 R3
      231 LOADK                            R15 K63 ["CombinedLeftArmColor"]
      232 LOADK                            R16 K60 ["BodyColors"]
      233 LOADK                            R17 K47 ["Virtual"]
      234 CALL                             R14 3 1
      235 MOVE                             R15 R13
      236 LOADB                            R16 0
      237 MOVE                             R17 R3
      238 LOADK                            R18 K64 ["LeftArmColor3"]
      239 LOADK                            R19 K60 ["BodyColors"]
      240 LOADK                            R20 K22 ["Property"]
      241 CALL                             R17 3 1
      242 MOVE                             R18 R3
      243 LOADK                            R19 K65 ["LeftArmColor"]
      244 LOADK                            R20 K60 ["BodyColors"]
      245 LOADK                            R21 K22 ["Property"]
      246 CALL                             R18 3 1
      247 LOADNIL                          R19
      248 CALL                             R15 4 1
      249 SETTABLE                         R15 R10 R14
      250 MOVE                             R14 R3
      251 LOADK                            R15 K66 ["CombinedLeftLegColor"]
      252 LOADK                            R16 K60 ["BodyColors"]
      253 LOADK                            R17 K47 ["Virtual"]
      254 CALL                             R14 3 1
      255 MOVE                             R15 R13
      256 LOADB                            R16 0
      257 MOVE                             R17 R3
      258 LOADK                            R18 K67 ["LeftLegColor3"]
      259 LOADK                            R19 K60 ["BodyColors"]
      260 LOADK                            R20 K22 ["Property"]
      261 CALL                             R17 3 1
      262 MOVE                             R18 R3
      263 LOADK                            R19 K68 ["LeftLegColor"]
      264 LOADK                            R20 K60 ["BodyColors"]
      265 LOADK                            R21 K22 ["Property"]
      266 CALL                             R18 3 1
      267 LOADNIL                          R19
      268 CALL                             R15 4 1
      269 SETTABLE                         R15 R10 R14
      270 MOVE                             R14 R3
      271 LOADK                            R15 K69 ["CombinedRightArmColor"]
      272 LOADK                            R16 K60 ["BodyColors"]
      273 LOADK                            R17 K47 ["Virtual"]
      274 CALL                             R14 3 1
      275 MOVE                             R15 R13
      276 LOADB                            R16 0
      277 MOVE                             R17 R3
      278 LOADK                            R18 K70 ["RightArmColor3"]
      279 LOADK                            R19 K60 ["BodyColors"]
      280 LOADK                            R20 K22 ["Property"]
      281 CALL                             R17 3 1
      282 MOVE                             R18 R3
      283 LOADK                            R19 K71 ["RightArmColor"]
      284 LOADK                            R20 K60 ["BodyColors"]
      285 LOADK                            R21 K22 ["Property"]
      286 CALL                             R18 3 1
      287 LOADNIL                          R19
      288 CALL                             R15 4 1
      289 SETTABLE                         R15 R10 R14
      290 MOVE                             R14 R3
      291 LOADK                            R15 K72 ["CombinedRightLegColor"]
      292 LOADK                            R16 K60 ["BodyColors"]
      293 LOADK                            R17 K47 ["Virtual"]
      294 CALL                             R14 3 1
      295 MOVE                             R15 R13
      296 LOADB                            R16 0
      297 MOVE                             R17 R3
      298 LOADK                            R18 K73 ["RightLegColor3"]
      299 LOADK                            R19 K60 ["BodyColors"]
      300 LOADK                            R20 K22 ["Property"]
      301 CALL                             R17 3 1
      302 MOVE                             R18 R3
      303 LOADK                            R19 K74 ["RightLegColor"]
      304 LOADK                            R20 K60 ["BodyColors"]
      305 LOADK                            R21 K22 ["Property"]
      306 CALL                             R18 3 1
      307 LOADNIL                          R19
      308 CALL                             R15 4 1
      309 SETTABLE                         R15 R10 R14
      310 MOVE                             R14 R3
      311 LOADK                            R15 K75 ["CombinedTorsoColor"]
      312 LOADK                            R16 K60 ["BodyColors"]
      313 LOADK                            R17 K47 ["Virtual"]
      314 CALL                             R14 3 1
      315 MOVE                             R15 R13
      316 LOADB                            R16 0
      317 MOVE                             R17 R3
      318 LOADK                            R18 K76 ["TorsoColor3"]
      319 LOADK                            R19 K60 ["BodyColors"]
      320 LOADK                            R20 K22 ["Property"]
      321 CALL                             R17 3 1
      322 MOVE                             R18 R3
      323 LOADK                            R19 K77 ["TorsoColor"]
      324 LOADK                            R20 K60 ["BodyColors"]
      325 LOADK                            R21 K22 ["Property"]
      326 CALL                             R18 3 1
      327 LOADNIL                          R19
      328 CALL                             R15 4 1
      329 SETTABLE                         R15 R10 R14
      330 MOVE                             R14 R3
      331 LOADK                            R15 K56 ["CombinedColor"]
      332 LOADK                            R16 K78 ["Decal"]
      333 LOADK                            R17 K47 ["Virtual"]
      334 CALL                             R14 3 1
      335 MOVE                             R15 R13
      336 LOADB                            R16 0
      337 MOVE                             R17 R3
      338 LOADK                            R18 K79 ["Color3"]
      339 LOADK                            R19 K78 ["Decal"]
      340 LOADK                            R20 K22 ["Property"]
      341 CALL                             R17 3 1
      342 LOADNIL                          R18
      343 MOVE                             R19 R3
      344 LOADK                            R20 K42 ["Transparency"]
      345 LOADK                            R21 K78 ["Decal"]
      346 LOADK                            R22 K22 ["Property"]
      347 CALL                             R19 3 -1
      348 CALL                             R15 -1 1
      349 SETTABLE                         R15 R10 R14
      350 MOVE                             R14 R3
      351 LOADK                            R15 K80 ["CombinedFillColor"]
      352 LOADK                            R16 K81 ["Highlight"]
      353 LOADK                            R17 K47 ["Virtual"]
      354 CALL                             R14 3 1
      355 MOVE                             R15 R13
      356 LOADB                            R16 0
      357 MOVE                             R17 R3
      358 LOADK                            R18 K82 ["FillColor"]
      359 LOADK                            R19 K81 ["Highlight"]
      360 LOADK                            R20 K22 ["Property"]
      361 CALL                             R17 3 1
      362 LOADNIL                          R18
      363 MOVE                             R19 R3
      364 LOADK                            R20 K83 ["FillTransparency"]
      365 LOADK                            R21 K81 ["Highlight"]
      366 LOADK                            R22 K22 ["Property"]
      367 CALL                             R19 3 -1
      368 CALL                             R15 -1 1
      369 SETTABLE                         R15 R10 R14
      370 MOVE                             R14 R3
      371 LOADK                            R15 K84 ["CombinedOutlineColor"]
      372 LOADK                            R16 K81 ["Highlight"]
      373 LOADK                            R17 K47 ["Virtual"]
      374 CALL                             R14 3 1
      375 MOVE                             R15 R13
      376 LOADB                            R16 0
      377 MOVE                             R17 R3
      378 LOADK                            R18 K85 ["OutlineColor"]
      379 LOADK                            R19 K81 ["Highlight"]
      380 LOADK                            R20 K22 ["Property"]
      381 CALL                             R17 3 1
      382 LOADNIL                          R18
      383 MOVE                             R19 R3
      384 LOADK                            R20 K86 ["OutlineTransparency"]
      385 LOADK                            R21 K81 ["Highlight"]
      386 LOADK                            R22 K22 ["Property"]
      387 CALL                             R19 3 -1
      388 CALL                             R15 -1 1
      389 SETTABLE                         R15 R10 R14
      390 MOVE                             R14 R3
      391 LOADK                            R15 K87 ["CombinedBackgroundColor"]
      392 LOADK                            R16 K32 ["GuiObject"]
      393 LOADK                            R17 K47 ["Virtual"]
      394 CALL                             R14 3 1
      395 MOVE                             R15 R13
      396 LOADB                            R16 0
      397 MOVE                             R17 R3
      398 LOADK                            R18 K88 ["BackgroundColor3"]
      399 LOADK                            R19 K32 ["GuiObject"]
      400 LOADK                            R20 K22 ["Property"]
      401 CALL                             R17 3 1
      402 MOVE                             R18 R3
      403 LOADK                            R19 K89 ["BackgroundColor"]
      404 LOADK                            R20 K32 ["GuiObject"]
      405 LOADK                            R21 K22 ["Property"]
      406 CALL                             R18 3 1
      407 MOVE                             R19 R3
      408 LOADK                            R20 K90 ["BackgroundTransparency"]
      409 LOADK                            R21 K32 ["GuiObject"]
      410 LOADK                            R22 K22 ["Property"]
      411 CALL                             R19 3 -1
      412 CALL                             R15 -1 1
      413 SETTABLE                         R15 R10 R14
      414 MOVE                             R14 R3
      415 LOADK                            R15 K91 ["CombinedImageColor"]
      416 LOADK                            R16 K92 ["ImageButton"]
      417 LOADK                            R17 K47 ["Virtual"]
      418 CALL                             R14 3 1
      419 MOVE                             R15 R13
      420 LOADB                            R16 0
      421 MOVE                             R17 R3
      422 LOADK                            R18 K93 ["ImageColor3"]
      423 LOADK                            R19 K92 ["ImageButton"]
      424 LOADK                            R20 K22 ["Property"]
      425 CALL                             R17 3 1
      426 LOADNIL                          R18
      427 MOVE                             R19 R3
      428 LOADK                            R20 K94 ["ImageTransparency"]
      429 LOADK                            R21 K92 ["ImageButton"]
      430 LOADK                            R22 K22 ["Property"]
      431 CALL                             R19 3 -1
      432 CALL                             R15 -1 1
      433 SETTABLE                         R15 R10 R14
      434 MOVE                             R14 R3
      435 LOADK                            R15 K91 ["CombinedImageColor"]
      436 LOADK                            R16 K95 ["ImageLabel"]
      437 LOADK                            R17 K47 ["Virtual"]
      438 CALL                             R14 3 1
      439 MOVE                             R15 R13
      440 LOADB                            R16 0
      441 MOVE                             R17 R3
      442 LOADK                            R18 K93 ["ImageColor3"]
      443 LOADK                            R19 K95 ["ImageLabel"]
      444 LOADK                            R20 K22 ["Property"]
      445 CALL                             R17 3 1
      446 LOADNIL                          R18
      447 MOVE                             R19 R3
      448 LOADK                            R20 K94 ["ImageTransparency"]
      449 LOADK                            R21 K95 ["ImageLabel"]
      450 LOADK                            R22 K22 ["Property"]
      451 CALL                             R19 3 -1
      452 CALL                             R15 -1 1
      453 SETTABLE                         R15 R10 R14
      454 MOVE                             R14 R3
      455 LOADK                            R15 K96 ["CombinedTextColor"]
      456 LOADK                            R16 K97 ["TextBox"]
      457 LOADK                            R17 K47 ["Virtual"]
      458 CALL                             R14 3 1
      459 MOVE                             R15 R13
      460 LOADB                            R16 0
      461 MOVE                             R17 R3
      462 LOADK                            R18 K98 ["TextColor3"]
      463 LOADK                            R19 K97 ["TextBox"]
      464 LOADK                            R20 K22 ["Property"]
      465 CALL                             R17 3 1
      466 LOADNIL                          R18
      467 MOVE                             R19 R3
      468 LOADK                            R20 K99 ["TextTransparency"]
      469 LOADK                            R21 K97 ["TextBox"]
      470 LOADK                            R22 K22 ["Property"]
      471 CALL                             R19 3 -1
      472 CALL                             R15 -1 1
      473 SETTABLE                         R15 R10 R14
      474 MOVE                             R14 R3
      475 LOADK                            R15 K100 ["CombinedTextStrokeColor"]
      476 LOADK                            R16 K97 ["TextBox"]
      477 LOADK                            R17 K47 ["Virtual"]
      478 CALL                             R14 3 1
      479 MOVE                             R15 R13
      480 LOADB                            R16 0
      481 MOVE                             R17 R3
      482 LOADK                            R18 K101 ["TextStrokeColor3"]
      483 LOADK                            R19 K97 ["TextBox"]
      484 LOADK                            R20 K22 ["Property"]
      485 CALL                             R17 3 1
      486 LOADNIL                          R18
      487 MOVE                             R19 R3
      488 LOADK                            R20 K102 ["TextStrokeTransparency"]
      489 LOADK                            R21 K97 ["TextBox"]
      490 LOADK                            R22 K22 ["Property"]
      491 CALL                             R19 3 -1
      492 CALL                             R15 -1 1
      493 SETTABLE                         R15 R10 R14
      494 MOVE                             R14 R3
      495 LOADK                            R15 K96 ["CombinedTextColor"]
      496 LOADK                            R16 K103 ["TextButton"]
      497 LOADK                            R17 K47 ["Virtual"]
      498 CALL                             R14 3 1
      499 MOVE                             R15 R13
      500 LOADB                            R16 0
      501 MOVE                             R17 R3
      502 LOADK                            R18 K98 ["TextColor3"]
      503 LOADK                            R19 K103 ["TextButton"]
      504 LOADK                            R20 K22 ["Property"]
      505 CALL                             R17 3 1
      506 LOADNIL                          R18
      507 MOVE                             R19 R3
      508 LOADK                            R20 K99 ["TextTransparency"]
      509 LOADK                            R21 K103 ["TextButton"]
      510 LOADK                            R22 K22 ["Property"]
      511 CALL                             R19 3 -1
      512 CALL                             R15 -1 1
      513 SETTABLE                         R15 R10 R14
      514 MOVE                             R14 R3
      515 LOADK                            R15 K100 ["CombinedTextStrokeColor"]
      516 LOADK                            R16 K103 ["TextButton"]
      517 LOADK                            R17 K47 ["Virtual"]
      518 CALL                             R14 3 1
      519 MOVE                             R15 R13
      520 LOADB                            R16 0
      521 MOVE                             R17 R3
      522 LOADK                            R18 K101 ["TextStrokeColor3"]
      523 LOADK                            R19 K103 ["TextButton"]
      524 LOADK                            R20 K22 ["Property"]
      525 CALL                             R17 3 1
      526 LOADNIL                          R18
      527 MOVE                             R19 R3
      528 LOADK                            R20 K102 ["TextStrokeTransparency"]
      529 LOADK                            R21 K103 ["TextButton"]
      530 LOADK                            R22 K22 ["Property"]
      531 CALL                             R19 3 -1
      532 CALL                             R15 -1 1
      533 SETTABLE                         R15 R10 R14
      534 MOVE                             R14 R3
      535 LOADK                            R15 K96 ["CombinedTextColor"]
      536 LOADK                            R16 K104 ["TextLabel"]
      537 LOADK                            R17 K47 ["Virtual"]
      538 CALL                             R14 3 1
      539 MOVE                             R15 R13
      540 LOADB                            R16 0
      541 MOVE                             R17 R3
      542 LOADK                            R18 K98 ["TextColor3"]
      543 LOADK                            R19 K104 ["TextLabel"]
      544 LOADK                            R20 K22 ["Property"]
      545 CALL                             R17 3 1
      546 LOADNIL                          R18
      547 MOVE                             R19 R3
      548 LOADK                            R20 K99 ["TextTransparency"]
      549 LOADK                            R21 K104 ["TextLabel"]
      550 LOADK                            R22 K22 ["Property"]
      551 CALL                             R19 3 -1
      552 CALL                             R15 -1 1
      553 SETTABLE                         R15 R10 R14
      554 MOVE                             R14 R3
      555 LOADK                            R15 K100 ["CombinedTextStrokeColor"]
      556 LOADK                            R16 K104 ["TextLabel"]
      557 LOADK                            R17 K47 ["Virtual"]
      558 CALL                             R14 3 1
      559 MOVE                             R15 R13
      560 LOADB                            R16 0
      561 MOVE                             R17 R3
      562 LOADK                            R18 K101 ["TextStrokeColor3"]
      563 LOADK                            R19 K104 ["TextLabel"]
      564 LOADK                            R20 K22 ["Property"]
      565 CALL                             R17 3 1
      566 LOADNIL                          R18
      567 MOVE                             R19 R3
      568 LOADK                            R20 K102 ["TextStrokeTransparency"]
      569 LOADK                            R21 K104 ["TextLabel"]
      570 LOADK                            R22 K22 ["Property"]
      571 CALL                             R19 3 -1
      572 CALL                             R15 -1 1
      573 SETTABLE                         R15 R10 R14
      574 DUPTABLE                         R14 K107 [{"propertyPatches", "virtualPropertyDefinitions"}]
      575 SETTABLEKS                       R9 R14 K105 ["propertyPatches"]
      577 SETTABLEKS                       R10 R14 K106 ["virtualPropertyDefinitions"]
      579 RETURN                           R14 1
