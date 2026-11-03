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
      142 LOADK                            R14 K42 ["Reflectance"]
      143 LOADK                            R15 K21 ["BasePart"]
      144 LOADK                            R16 K22 ["Property"]
      145 CALL                             R13 3 1
      146 DUPTABLE                         R14 K48 [{["unit"] = "percent_0-1", ["min"] = 0, ["max"] = 100}]
      147 MOVE                             R15 R8
      148 MOVE                             R16 R13
      149 CALL                             R15 1 1
      150 SETTABLE                         R14 R9 R15
      151 MOVE                             R13 R3
      152 LOADK                            R14 K49 ["Transparency"]
      153 LOADK                            R15 K21 ["BasePart"]
      154 LOADK                            R16 K22 ["Property"]
      155 CALL                             R13 3 1
      156 DUPTABLE                         R14 K48 [{["unit"] = "percent_0-1", ["min"] = 0, ["max"] = 100}]
      157 MOVE                             R15 R8
      158 MOVE                             R16 R13
      159 CALL                             R15 1 1
      160 SETTABLE                         R14 R9 R15
      161 MOVE                             R13 R3
      162 LOADK                            R14 K49 ["Transparency"]
      163 LOADK                            R15 K50 ["Decal"]
      164 LOADK                            R16 K22 ["Property"]
      165 CALL                             R13 3 1
      166 DUPTABLE                         R14 K48 [{["unit"] = "percent_0-1", ["min"] = 0, ["max"] = 100}]
      167 MOVE                             R15 R8
      168 MOVE                             R16 R13
      169 CALL                             R15 1 1
      170 SETTABLE                         R14 R9 R15
      171 MOVE                             R13 R3
      172 LOADK                            R14 K51 ["EmissiveStrength"]
      173 LOADK                            R15 K50 ["Decal"]
      174 LOADK                            R16 K22 ["Property"]
      175 CALL                             R13 3 1
      176 DUPTABLE                         R14 K52 [{["unit"] = "percent_0-1", ["min"] = 0}]
      177 MOVE                             R15 R8
      178 MOVE                             R16 R13
      179 CALL                             R15 1 1
      180 SETTABLE                         R14 R9 R15
      181 MOVE                             R13 R3
      182 LOADK                            R14 K49 ["Transparency"]
      183 LOADK                            R15 K53 ["UIStroke"]
      184 LOADK                            R16 K22 ["Property"]
      185 CALL                             R13 3 1
      186 DUPTABLE                         R14 K48 [{["unit"] = "percent_0-1", ["min"] = 0, ["max"] = 100}]
      187 MOVE                             R15 R8
      188 MOVE                             R16 R13
      189 CALL                             R15 1 1
      190 SETTABLE                         R14 R9 R15
      191 MOVE                             R13 R3
      192 LOADK                            R14 K54 ["Self"]
      193 LOADK                            R15 K55 ["Instance"]
      194 LOADK                            R16 K56 ["Virtual"]
      195 CALL                             R13 3 1
      196 DUPTABLE                         R14 K59 [{"info", "interactor"}]
      197 GETTABLEKS                       R15 R4 K60 ["fromInstanceRefType"]
      199 LOADB                            R16 1
      200 LOADK                            R17 K55 ["Instance"]
      201 CALL                             R15 2 1
      202 SETTABLEKS                       R15 R14 K57 ["info"]
      204 SETTABLEKS                       R1 R14 K58 ["interactor"]
      206 SETTABLE                         R14 R10 R13
      207 MOVE                             R13 R3
      208 LOADK                            R14 K10 ["MeshId"]
      209 LOADK                            R15 K61 ["MeshPart"]
      210 LOADK                            R16 K56 ["Virtual"]
      211 CALL                             R13 3 1
      212 DUPTABLE                         R14 K59 [{"info", "interactor"}]
      213 GETTABLEKS                       R15 R4 K62 ["fromType"]
      215 LOADK                            R16 K63 ["string"]
      216 LOADB                            R17 0
      217 CALL                             R15 2 1
      218 SETTABLEKS                       R15 R14 K57 ["info"]
      220 SETTABLEKS                       R2 R14 K58 ["interactor"]
      222 SETTABLE                         R14 R10 R13
      223 DUPCLOSURE                       R13 K64 [PROTO_3]
      224 CAPTURE                          VAL R4
      225 CAPTURE                          VAL R7
      226 MOVE                             R14 R3
      227 LOADK                            R15 K65 ["CombinedColor"]
      228 LOADK                            R16 K21 ["BasePart"]
      229 LOADK                            R17 K56 ["Virtual"]
      230 CALL                             R14 3 1
      231 MOVE                             R15 R13
      232 LOADB                            R16 0
      233 MOVE                             R17 R3
      234 LOADK                            R18 K66 ["Color"]
      235 LOADK                            R19 K21 ["BasePart"]
      236 LOADK                            R20 K22 ["Property"]
      237 CALL                             R17 3 1
      238 MOVE                             R18 R3
      239 LOADK                            R19 K67 ["BrickColor"]
      240 LOADK                            R20 K21 ["BasePart"]
      241 LOADK                            R21 K22 ["Property"]
      242 CALL                             R18 3 1
      243 MOVE                             R19 R3
      244 LOADK                            R20 K49 ["Transparency"]
      245 LOADK                            R21 K21 ["BasePart"]
      246 LOADK                            R22 K22 ["Property"]
      247 CALL                             R19 3 -1
      248 CALL                             R15 -1 1
      249 SETTABLE                         R15 R10 R14
      250 MOVE                             R14 R3
      251 LOADK                            R15 K68 ["CombinedHeadColor"]
      252 LOADK                            R16 K69 ["BodyColors"]
      253 LOADK                            R17 K56 ["Virtual"]
      254 CALL                             R14 3 1
      255 MOVE                             R15 R13
      256 LOADB                            R16 0
      257 MOVE                             R17 R3
      258 LOADK                            R18 K70 ["HeadColor3"]
      259 LOADK                            R19 K69 ["BodyColors"]
      260 LOADK                            R20 K22 ["Property"]
      261 CALL                             R17 3 1
      262 MOVE                             R18 R3
      263 LOADK                            R19 K71 ["HeadColor"]
      264 LOADK                            R20 K69 ["BodyColors"]
      265 LOADK                            R21 K22 ["Property"]
      266 CALL                             R18 3 1
      267 LOADNIL                          R19
      268 CALL                             R15 4 1
      269 SETTABLE                         R15 R10 R14
      270 MOVE                             R14 R3
      271 LOADK                            R15 K72 ["CombinedLeftArmColor"]
      272 LOADK                            R16 K69 ["BodyColors"]
      273 LOADK                            R17 K56 ["Virtual"]
      274 CALL                             R14 3 1
      275 MOVE                             R15 R13
      276 LOADB                            R16 0
      277 MOVE                             R17 R3
      278 LOADK                            R18 K73 ["LeftArmColor3"]
      279 LOADK                            R19 K69 ["BodyColors"]
      280 LOADK                            R20 K22 ["Property"]
      281 CALL                             R17 3 1
      282 MOVE                             R18 R3
      283 LOADK                            R19 K74 ["LeftArmColor"]
      284 LOADK                            R20 K69 ["BodyColors"]
      285 LOADK                            R21 K22 ["Property"]
      286 CALL                             R18 3 1
      287 LOADNIL                          R19
      288 CALL                             R15 4 1
      289 SETTABLE                         R15 R10 R14
      290 MOVE                             R14 R3
      291 LOADK                            R15 K75 ["CombinedLeftLegColor"]
      292 LOADK                            R16 K69 ["BodyColors"]
      293 LOADK                            R17 K56 ["Virtual"]
      294 CALL                             R14 3 1
      295 MOVE                             R15 R13
      296 LOADB                            R16 0
      297 MOVE                             R17 R3
      298 LOADK                            R18 K76 ["LeftLegColor3"]
      299 LOADK                            R19 K69 ["BodyColors"]
      300 LOADK                            R20 K22 ["Property"]
      301 CALL                             R17 3 1
      302 MOVE                             R18 R3
      303 LOADK                            R19 K77 ["LeftLegColor"]
      304 LOADK                            R20 K69 ["BodyColors"]
      305 LOADK                            R21 K22 ["Property"]
      306 CALL                             R18 3 1
      307 LOADNIL                          R19
      308 CALL                             R15 4 1
      309 SETTABLE                         R15 R10 R14
      310 MOVE                             R14 R3
      311 LOADK                            R15 K78 ["CombinedRightArmColor"]
      312 LOADK                            R16 K69 ["BodyColors"]
      313 LOADK                            R17 K56 ["Virtual"]
      314 CALL                             R14 3 1
      315 MOVE                             R15 R13
      316 LOADB                            R16 0
      317 MOVE                             R17 R3
      318 LOADK                            R18 K79 ["RightArmColor3"]
      319 LOADK                            R19 K69 ["BodyColors"]
      320 LOADK                            R20 K22 ["Property"]
      321 CALL                             R17 3 1
      322 MOVE                             R18 R3
      323 LOADK                            R19 K80 ["RightArmColor"]
      324 LOADK                            R20 K69 ["BodyColors"]
      325 LOADK                            R21 K22 ["Property"]
      326 CALL                             R18 3 1
      327 LOADNIL                          R19
      328 CALL                             R15 4 1
      329 SETTABLE                         R15 R10 R14
      330 MOVE                             R14 R3
      331 LOADK                            R15 K81 ["CombinedRightLegColor"]
      332 LOADK                            R16 K69 ["BodyColors"]
      333 LOADK                            R17 K56 ["Virtual"]
      334 CALL                             R14 3 1
      335 MOVE                             R15 R13
      336 LOADB                            R16 0
      337 MOVE                             R17 R3
      338 LOADK                            R18 K82 ["RightLegColor3"]
      339 LOADK                            R19 K69 ["BodyColors"]
      340 LOADK                            R20 K22 ["Property"]
      341 CALL                             R17 3 1
      342 MOVE                             R18 R3
      343 LOADK                            R19 K83 ["RightLegColor"]
      344 LOADK                            R20 K69 ["BodyColors"]
      345 LOADK                            R21 K22 ["Property"]
      346 CALL                             R18 3 1
      347 LOADNIL                          R19
      348 CALL                             R15 4 1
      349 SETTABLE                         R15 R10 R14
      350 MOVE                             R14 R3
      351 LOADK                            R15 K84 ["CombinedTorsoColor"]
      352 LOADK                            R16 K69 ["BodyColors"]
      353 LOADK                            R17 K56 ["Virtual"]
      354 CALL                             R14 3 1
      355 MOVE                             R15 R13
      356 LOADB                            R16 0
      357 MOVE                             R17 R3
      358 LOADK                            R18 K85 ["TorsoColor3"]
      359 LOADK                            R19 K69 ["BodyColors"]
      360 LOADK                            R20 K22 ["Property"]
      361 CALL                             R17 3 1
      362 MOVE                             R18 R3
      363 LOADK                            R19 K86 ["TorsoColor"]
      364 LOADK                            R20 K69 ["BodyColors"]
      365 LOADK                            R21 K22 ["Property"]
      366 CALL                             R18 3 1
      367 LOADNIL                          R19
      368 CALL                             R15 4 1
      369 SETTABLE                         R15 R10 R14
      370 MOVE                             R14 R3
      371 LOADK                            R15 K65 ["CombinedColor"]
      372 LOADK                            R16 K50 ["Decal"]
      373 LOADK                            R17 K56 ["Virtual"]
      374 CALL                             R14 3 1
      375 MOVE                             R15 R13
      376 LOADB                            R16 0
      377 MOVE                             R17 R3
      378 LOADK                            R18 K87 ["Color3"]
      379 LOADK                            R19 K50 ["Decal"]
      380 LOADK                            R20 K22 ["Property"]
      381 CALL                             R17 3 1
      382 LOADNIL                          R18
      383 MOVE                             R19 R3
      384 LOADK                            R20 K49 ["Transparency"]
      385 LOADK                            R21 K50 ["Decal"]
      386 LOADK                            R22 K22 ["Property"]
      387 CALL                             R19 3 -1
      388 CALL                             R15 -1 1
      389 SETTABLE                         R15 R10 R14
      390 MOVE                             R14 R3
      391 LOADK                            R15 K88 ["CombinedFillColor"]
      392 LOADK                            R16 K89 ["Highlight"]
      393 LOADK                            R17 K56 ["Virtual"]
      394 CALL                             R14 3 1
      395 MOVE                             R15 R13
      396 LOADB                            R16 0
      397 MOVE                             R17 R3
      398 LOADK                            R18 K90 ["FillColor"]
      399 LOADK                            R19 K89 ["Highlight"]
      400 LOADK                            R20 K22 ["Property"]
      401 CALL                             R17 3 1
      402 LOADNIL                          R18
      403 MOVE                             R19 R3
      404 LOADK                            R20 K91 ["FillTransparency"]
      405 LOADK                            R21 K89 ["Highlight"]
      406 LOADK                            R22 K22 ["Property"]
      407 CALL                             R19 3 -1
      408 CALL                             R15 -1 1
      409 SETTABLE                         R15 R10 R14
      410 MOVE                             R14 R3
      411 LOADK                            R15 K92 ["CombinedOutlineColor"]
      412 LOADK                            R16 K89 ["Highlight"]
      413 LOADK                            R17 K56 ["Virtual"]
      414 CALL                             R14 3 1
      415 MOVE                             R15 R13
      416 LOADB                            R16 0
      417 MOVE                             R17 R3
      418 LOADK                            R18 K93 ["OutlineColor"]
      419 LOADK                            R19 K89 ["Highlight"]
      420 LOADK                            R20 K22 ["Property"]
      421 CALL                             R17 3 1
      422 LOADNIL                          R18
      423 MOVE                             R19 R3
      424 LOADK                            R20 K94 ["OutlineTransparency"]
      425 LOADK                            R21 K89 ["Highlight"]
      426 LOADK                            R22 K22 ["Property"]
      427 CALL                             R19 3 -1
      428 CALL                             R15 -1 1
      429 SETTABLE                         R15 R10 R14
      430 MOVE                             R14 R3
      431 LOADK                            R15 K95 ["CombinedBackgroundColor"]
      432 LOADK                            R16 K32 ["GuiObject"]
      433 LOADK                            R17 K56 ["Virtual"]
      434 CALL                             R14 3 1
      435 MOVE                             R15 R13
      436 LOADB                            R16 0
      437 MOVE                             R17 R3
      438 LOADK                            R18 K96 ["BackgroundColor3"]
      439 LOADK                            R19 K32 ["GuiObject"]
      440 LOADK                            R20 K22 ["Property"]
      441 CALL                             R17 3 1
      442 MOVE                             R18 R3
      443 LOADK                            R19 K97 ["BackgroundColor"]
      444 LOADK                            R20 K32 ["GuiObject"]
      445 LOADK                            R21 K22 ["Property"]
      446 CALL                             R18 3 1
      447 MOVE                             R19 R3
      448 LOADK                            R20 K98 ["BackgroundTransparency"]
      449 LOADK                            R21 K32 ["GuiObject"]
      450 LOADK                            R22 K22 ["Property"]
      451 CALL                             R19 3 -1
      452 CALL                             R15 -1 1
      453 SETTABLE                         R15 R10 R14
      454 MOVE                             R14 R3
      455 LOADK                            R15 K99 ["CombinedImageColor"]
      456 LOADK                            R16 K100 ["ImageButton"]
      457 LOADK                            R17 K56 ["Virtual"]
      458 CALL                             R14 3 1
      459 MOVE                             R15 R13
      460 LOADB                            R16 0
      461 MOVE                             R17 R3
      462 LOADK                            R18 K101 ["ImageColor3"]
      463 LOADK                            R19 K100 ["ImageButton"]
      464 LOADK                            R20 K22 ["Property"]
      465 CALL                             R17 3 1
      466 LOADNIL                          R18
      467 MOVE                             R19 R3
      468 LOADK                            R20 K102 ["ImageTransparency"]
      469 LOADK                            R21 K100 ["ImageButton"]
      470 LOADK                            R22 K22 ["Property"]
      471 CALL                             R19 3 -1
      472 CALL                             R15 -1 1
      473 SETTABLE                         R15 R10 R14
      474 MOVE                             R14 R3
      475 LOADK                            R15 K99 ["CombinedImageColor"]
      476 LOADK                            R16 K103 ["ImageLabel"]
      477 LOADK                            R17 K56 ["Virtual"]
      478 CALL                             R14 3 1
      479 MOVE                             R15 R13
      480 LOADB                            R16 0
      481 MOVE                             R17 R3
      482 LOADK                            R18 K101 ["ImageColor3"]
      483 LOADK                            R19 K103 ["ImageLabel"]
      484 LOADK                            R20 K22 ["Property"]
      485 CALL                             R17 3 1
      486 LOADNIL                          R18
      487 MOVE                             R19 R3
      488 LOADK                            R20 K102 ["ImageTransparency"]
      489 LOADK                            R21 K103 ["ImageLabel"]
      490 LOADK                            R22 K22 ["Property"]
      491 CALL                             R19 3 -1
      492 CALL                             R15 -1 1
      493 SETTABLE                         R15 R10 R14
      494 MOVE                             R14 R3
      495 LOADK                            R15 K104 ["CombinedTextColor"]
      496 LOADK                            R16 K105 ["TextBox"]
      497 LOADK                            R17 K56 ["Virtual"]
      498 CALL                             R14 3 1
      499 MOVE                             R15 R13
      500 LOADB                            R16 0
      501 MOVE                             R17 R3
      502 LOADK                            R18 K106 ["TextColor3"]
      503 LOADK                            R19 K105 ["TextBox"]
      504 LOADK                            R20 K22 ["Property"]
      505 CALL                             R17 3 1
      506 LOADNIL                          R18
      507 MOVE                             R19 R3
      508 LOADK                            R20 K107 ["TextTransparency"]
      509 LOADK                            R21 K105 ["TextBox"]
      510 LOADK                            R22 K22 ["Property"]
      511 CALL                             R19 3 -1
      512 CALL                             R15 -1 1
      513 SETTABLE                         R15 R10 R14
      514 MOVE                             R14 R3
      515 LOADK                            R15 K108 ["CombinedTextStrokeColor"]
      516 LOADK                            R16 K105 ["TextBox"]
      517 LOADK                            R17 K56 ["Virtual"]
      518 CALL                             R14 3 1
      519 MOVE                             R15 R13
      520 LOADB                            R16 0
      521 MOVE                             R17 R3
      522 LOADK                            R18 K109 ["TextStrokeColor3"]
      523 LOADK                            R19 K105 ["TextBox"]
      524 LOADK                            R20 K22 ["Property"]
      525 CALL                             R17 3 1
      526 LOADNIL                          R18
      527 MOVE                             R19 R3
      528 LOADK                            R20 K110 ["TextStrokeTransparency"]
      529 LOADK                            R21 K105 ["TextBox"]
      530 LOADK                            R22 K22 ["Property"]
      531 CALL                             R19 3 -1
      532 CALL                             R15 -1 1
      533 SETTABLE                         R15 R10 R14
      534 MOVE                             R14 R3
      535 LOADK                            R15 K104 ["CombinedTextColor"]
      536 LOADK                            R16 K111 ["TextButton"]
      537 LOADK                            R17 K56 ["Virtual"]
      538 CALL                             R14 3 1
      539 MOVE                             R15 R13
      540 LOADB                            R16 0
      541 MOVE                             R17 R3
      542 LOADK                            R18 K106 ["TextColor3"]
      543 LOADK                            R19 K111 ["TextButton"]
      544 LOADK                            R20 K22 ["Property"]
      545 CALL                             R17 3 1
      546 LOADNIL                          R18
      547 MOVE                             R19 R3
      548 LOADK                            R20 K107 ["TextTransparency"]
      549 LOADK                            R21 K111 ["TextButton"]
      550 LOADK                            R22 K22 ["Property"]
      551 CALL                             R19 3 -1
      552 CALL                             R15 -1 1
      553 SETTABLE                         R15 R10 R14
      554 MOVE                             R14 R3
      555 LOADK                            R15 K108 ["CombinedTextStrokeColor"]
      556 LOADK                            R16 K111 ["TextButton"]
      557 LOADK                            R17 K56 ["Virtual"]
      558 CALL                             R14 3 1
      559 MOVE                             R15 R13
      560 LOADB                            R16 0
      561 MOVE                             R17 R3
      562 LOADK                            R18 K109 ["TextStrokeColor3"]
      563 LOADK                            R19 K111 ["TextButton"]
      564 LOADK                            R20 K22 ["Property"]
      565 CALL                             R17 3 1
      566 LOADNIL                          R18
      567 MOVE                             R19 R3
      568 LOADK                            R20 K110 ["TextStrokeTransparency"]
      569 LOADK                            R21 K111 ["TextButton"]
      570 LOADK                            R22 K22 ["Property"]
      571 CALL                             R19 3 -1
      572 CALL                             R15 -1 1
      573 SETTABLE                         R15 R10 R14
      574 MOVE                             R14 R3
      575 LOADK                            R15 K104 ["CombinedTextColor"]
      576 LOADK                            R16 K112 ["TextLabel"]
      577 LOADK                            R17 K56 ["Virtual"]
      578 CALL                             R14 3 1
      579 MOVE                             R15 R13
      580 LOADB                            R16 0
      581 MOVE                             R17 R3
      582 LOADK                            R18 K106 ["TextColor3"]
      583 LOADK                            R19 K112 ["TextLabel"]
      584 LOADK                            R20 K22 ["Property"]
      585 CALL                             R17 3 1
      586 LOADNIL                          R18
      587 MOVE                             R19 R3
      588 LOADK                            R20 K107 ["TextTransparency"]
      589 LOADK                            R21 K112 ["TextLabel"]
      590 LOADK                            R22 K22 ["Property"]
      591 CALL                             R19 3 -1
      592 CALL                             R15 -1 1
      593 SETTABLE                         R15 R10 R14
      594 MOVE                             R14 R3
      595 LOADK                            R15 K108 ["CombinedTextStrokeColor"]
      596 LOADK                            R16 K112 ["TextLabel"]
      597 LOADK                            R17 K56 ["Virtual"]
      598 CALL                             R14 3 1
      599 MOVE                             R15 R13
      600 LOADB                            R16 0
      601 MOVE                             R17 R3
      602 LOADK                            R18 K109 ["TextStrokeColor3"]
      603 LOADK                            R19 K112 ["TextLabel"]
      604 LOADK                            R20 K22 ["Property"]
      605 CALL                             R17 3 1
      606 LOADNIL                          R18
      607 MOVE                             R19 R3
      608 LOADK                            R20 K110 ["TextStrokeTransparency"]
      609 LOADK                            R21 K112 ["TextLabel"]
      610 LOADK                            R22 K22 ["Property"]
      611 CALL                             R19 3 -1
      612 CALL                             R15 -1 1
      613 SETTABLE                         R15 R10 R14
      614 DUPTABLE                         R14 K115 [{"propertyPatches", "virtualPropertyDefinitions"}]
      615 SETTABLEKS                       R9 R14 K113 ["propertyPatches"]
      617 SETTABLEKS                       R10 R14 K114 ["virtualPropertyDefinitions"]
      619 RETURN                           R14 1
