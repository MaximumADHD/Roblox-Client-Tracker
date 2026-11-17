PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+23]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["step"]
        8 JUMPIFEQ                         R0 R1 ; [+16]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K1 ["step"]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K2 ["Steps"]
       16 GETTABLEKS                       R1 R1 K3 ["Prompt"]
       18 JUMPIFNOTEQ                      R0 R1 ; [+6]
       20 GETUPVAL                         R0 4
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K4 ["prompt"]
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 1
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K1 ["step"]
       29 SETTABLEKS                       R1 R0 K0 ["current"]
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["setPrompt"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["SceneGen"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["getText"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeImage"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GenerateLayout"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["getText"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["modelsProcedural"] ; [+7]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["setUseMeshGen"]
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKS                    R1 K4 ["modelsProceduralAndMeshes"] ; [+7]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["setUseMeshGen"]
       18 LOADB                            R3 1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKS                    R1 K5 ["clearPrompt"] ; [+10]
       23 GETUPVAL                         R2 1
       24 LOADK                            R3 K6 [""]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K7 ["setPrompt"]
       29 LOADK                            R3 K6 [""]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0
       32 JUMPIFNOTEQKS                    R1 K8 ["reset"] ; [+24]
       34 GETUPVAL                         R2 1
       35 LOADK                            R3 K6 [""]
       36 CALL                             R2 1 0
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K7 ["setPrompt"]
       40 LOADK                            R3 K6 [""]
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K3 ["setUseMeshGen"]
       45 LOADB                            R3 1
       46 CALL                             R2 1 0
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R2 R2 K9 ["setQuality"]
       50 GETUPVAL                         R3 2
       51 GETTABLEKS                       R3 R3 K10 ["Constants"]
       53 GETTABLEKS                       R3 R3 K11 ["DEFAULT_SCENE_QUALITY"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0
       57 LOADN                            R4 1
       58 LOADN                            R5 8
       59 FASTCALL3                        STRING_SUB R1 R4 R5
       61 MOVE                             R3 R1
       62 GETIMPORT                        R2 K14 [string.sub]
       64 CALL                             R2 3 1
       65 JUMPIFNOTEQKS                    R2 K15 ["quality:"] ; [+12]
       67 GETUPVAL                         R2 0
       68 GETTABLEKS                       R2 R2 K9 ["setQuality"]
       70 FASTCALL2K                       STRING_SUB R1 K16 ; [+5]
       72 MOVE                             R4 R1
       73 LOADK                            R5 K16 [9]
       74 GETIMPORT                        R3 K14 [string.sub]
       76 CALL                             R3 2 1
       77 CALL                             R2 1 0
       78 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["viewModel"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["getFFlagGen3dSceneGenSettings"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["useContext"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["Context"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["useState"]
       16 GETTABLEKS                       R5 R1 K5 ["prompt"]
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K6 ["useRef"]
       22 GETTABLEKS                       R7 R1 K7 ["step"]
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R9 0 3
       36 MOVE                             R10 R2
       37 GETTABLEKS                       R11 R1 K7 ["step"]
       39 GETTABLEKS                       R12 R1 K5 ["prompt"]
       41 SETLIST                          R9 R10 3 [1]
       43 CALL                             R7 2 0
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K9 ["createNextOrder"]
       47 CALL                             R7 0 1
       48 NEWCLOSURE                       R8 P1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R1
       51 NEWCLOSURE                       R9 P2
       52 CAPTURE                          VAL R3
       53 GETTABLEKS                       R11 R1 K10 ["imageIds"]
       55 LENGTH                           R10 R11
       56 LOADB                            R11 0
       57 GETUPVAL                         R12 3
       58 GETTABLEKS                       R12 R12 K11 ["MAX_IMAGES"]
       60 JUMPIFNOTLT                      R10 R12 ; [+4]
       62 GETTABLEKS                       R12 R1 K12 ["imageLoading"]
       64 NOT                              R11 R12
       65 GETTABLEKS                       R13 R1 K13 ["activeRunCount"]
       67 GETTABLEKS                       R14 R1 K14 ["maxRuns"]
       69 JUMPIFLE                         R14 R13 ; [+2]
       71 LOADB                            R12 0 +1
       72 LOADB                            R12 1
       73 GETTABLEKS                       R13 R1 K12 ["imageLoading"]
       75 JUMPIF                           R13 ; [+9]
       76 MOVE                             R13 R12
       77 JUMPIF                           R13 ; [+7]
       78 LOADB                            R13 0
       79 JUMPIFNOTEQKS                    R4 K15 [""] ; [+5]
       81 JUMPIFEQKN                       R10 K16 [0] ; [+2]
       83 LOADB                            R13 0 +1
       84 LOADB                            R13 1
       85 LOADNIL                          R14
       86 NEWTABLE                         R15 1 0
       88 GETTABLEKS                       R16 R1 K10 ["imageIds"]
       90 LOADNIL                          R17
       91 LOADNIL                          R18
       92 FORGPREP                         R16
       93 LOADK                            R21 K17 ["Image%*"]
       94 MOVE                             R23 R19
       95 NAMECALL                         R21 R21 K18 ["format"]
       97 CALL                             R21 2 1
       98 GETUPVAL                         R22 1
       99 GETTABLEKS                       R22 R22 K19 ["createElement"]
      101 GETUPVAL                         R23 5
      102 DUPTABLE                         R24 K25 [{"imageId", "onRemove", "size", "testId", "LayoutOrder"}]
      103 SETTABLEKS                       R20 R24 K20 ["imageId"]
      105 NEWCLOSURE                       R25 P3
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R19
      108 SETTABLEKS                       R25 R24 K21 ["onRemove"]
      110 GETUPVAL                         R25 6
      111 SETTABLEKS                       R25 R24 K22 ["size"]
      113 LOADK                            R25 K26 ["SceneGenImage%*"]
      114 MOVE                             R27 R19
      115 NAMECALL                         R25 R25 K18 ["format"]
      117 CALL                             R25 2 1
      118 SETTABLEKS                       R25 R24 K23 ["testId"]
      120 SETTABLEKS                       R19 R24 K24 ["LayoutOrder"]
      122 CALL                             R22 2 1
      123 SETTABLE                         R22 R15 R21
      124 FORGLOOP                         R16 2 ; [-32]
      126 GETTABLEKS                       R16 R1 K12 ["imageLoading"]
      128 JUMPIFNOT                        R16 ; [+17]
      129 GETUPVAL                         R16 1
      130 GETTABLEKS                       R16 R16 K19 ["createElement"]
      132 GETUPVAL                         R17 5
      133 DUPTABLE                         R18 K30 [{["isLoading"] = True, ["onRemove"], ["size"], ["testId"] = "SceneGenImageLoading", ["LayoutOrder"]}]
      134 DUPCLOSURE                       R19 K31 [PROTO_4]
      135 SETTABLEKS                       R19 R18 K21 ["onRemove"]
      137 GETUPVAL                         R19 6
      138 SETTABLEKS                       R19 R18 K22 ["size"]
      140 ADDK                             R19 R10 K32 [1]
      141 SETTABLEKS                       R19 R18 K24 ["LayoutOrder"]
      143 CALL                             R16 2 1
      144 SETTABLEKS                       R16 R15 K33 ["Loading"]
      146 GETTABLEKS                       R16 R1 K34 ["imageError"]
      148 NEWCLOSURE                       R17 P5
      149 CAPTURE                          VAL R3
      150 NEWTABLE                         R18 0 1
      152 DUPTABLE                         R19 K39 [{["id"] = "models", ["text"], ["items"]}]
      153 LOADK                            R22 K40 ["GenerateLayout"]
      154 LOADK                            R23 K41 ["Models"]
      155 NAMECALL                         R20 R3 K42 ["getText"]
      157 CALL                             R20 3 1
      158 SETTABLEKS                       R20 R19 K37 ["text"]
      160 NEWTABLE                         R20 0 2
      162 DUPTABLE                         R21 K45 [{["id"] = "modelsProcedural", ["text"], ["isChecked"]}]
      163 LOADK                            R24 K40 ["GenerateLayout"]
      164 LOADK                            R25 K46 ["ProcModels"]
      165 NAMECALL                         R22 R3 K42 ["getText"]
      167 CALL                             R22 3 1
      168 SETTABLEKS                       R22 R21 K37 ["text"]
      170 GETTABLEKS                       R23 R1 K47 ["useMeshGen"]
      172 NOT                              R22 R23
      173 SETTABLEKS                       R22 R21 K44 ["isChecked"]
      175 DUPTABLE                         R22 K49 [{["id"] = "modelsProceduralAndMeshes", ["text"], ["isChecked"]}]
      176 LOADK                            R25 K40 ["GenerateLayout"]
      177 LOADK                            R26 K50 ["ProcModelsAndMeshes"]
      178 NAMECALL                         R23 R3 K42 ["getText"]
      180 CALL                             R23 3 1
      181 SETTABLEKS                       R23 R22 K37 ["text"]
      183 GETTABLEKS                       R23 R1 K47 ["useMeshGen"]
      185 SETTABLEKS                       R23 R22 K44 ["isChecked"]
      187 SETLIST                          R20 R21 2 [1]
      189 SETTABLEKS                       R20 R19 K38 ["items"]
      191 SETLIST                          R18 R19 1 [1]
      193 GETUPVAL                         R19 0
      194 GETTABLEKS                       R19 R19 K51 ["getFFlagAssistantGenerateSceneQuality"]
      196 CALL                             R19 0 1
      197 JUMPIFNOT                        R19 ; [+57]
      198 NEWTABLE                         R19 0 0
      200 GETUPVAL                         R20 7
      201 LOADNIL                          R21
      202 LOADNIL                          R22
      203 FORGPREP                         R20
      204 DUPTABLE                         R27 K52 [{"id", "text", "isChecked"}]
      205 LOADK                            R29 K53 ["quality:"]
      206 GETTABLEKS                       R30 R24 K35 ["id"]
      208 CONCAT                           R28 R29 R30
      209 SETTABLEKS                       R28 R27 K35 ["id"]
      211 GETTABLEKS                       R29 R24 K54 ["key"]
      213 LOADK                            R32 K40 ["GenerateLayout"]
      214 MOVE                             R33 R29
      215 NAMECALL                         R30 R3 K42 ["getText"]
      217 CALL                             R30 3 1
      218 MOVE                             R28 R30
      219 SETTABLEKS                       R28 R27 K37 ["text"]
      221 GETTABLEKS                       R29 R1 K55 ["quality"]
      223 GETTABLEKS                       R30 R24 K35 ["id"]
      225 JUMPIFEQ                         R29 R30 ; [+2]
      227 LOADB                            R28 0 +1
      228 LOADB                            R28 1
      229 SETTABLEKS                       R28 R27 K44 ["isChecked"]
      231 FASTCALL2                        TABLE_INSERT R19 R27 ; [+4]
      233 MOVE                             R26 R19
      234 GETIMPORT                        R25 K58 [table.insert]
      236 CALL                             R25 2 0
      237 FORGLOOP                         R20 2 ; [-34]
      239 DUPTABLE                         R22 K59 [{["id"] = "quality", ["text"], ["items"]}]
      240 LOADK                            R25 K40 ["GenerateLayout"]
      241 LOADK                            R26 K60 ["Quality"]
      242 NAMECALL                         R23 R3 K42 ["getText"]
      244 CALL                             R23 3 1
      245 SETTABLEKS                       R23 R22 K37 ["text"]
      247 SETTABLEKS                       R19 R22 K38 ["items"]
      249 FASTCALL2                        TABLE_INSERT R18 R22 ; [+4]
      251 MOVE                             R21 R18
      252 GETIMPORT                        R20 K58 [table.insert]
      254 CALL                             R20 2 0
      255 DUPTABLE                         R21 K63 [{["id"] = "clearPrompt", ["text"], ["isDisabled"]}]
      256 GETUPVAL                         R22 8
      257 MOVE                             R23 R3
      258 LOADK                            R24 K64 ["TextureGen"]
      259 LOADK                            R25 K65 ["MoreClearPrompt"]
      260 LOADK                            R26 K66 ["Clear prompt"]
      261 CALL                             R22 4 1
      262 SETTABLEKS                       R22 R21 K37 ["text"]
      264 JUMPIFEQKS                       R4 K15 [""] ; [+2]
      266 LOADB                            R22 0 +1
      267 LOADB                            R22 1
      268 SETTABLEKS                       R22 R21 K62 ["isDisabled"]
      270 FASTCALL2                        TABLE_INSERT R18 R21 ; [+4]
      272 MOVE                             R20 R18
      273 GETIMPORT                        R19 K58 [table.insert]
      275 CALL                             R19 2 0
      276 DUPTABLE                         R21 K68 [{["id"] = "reset", ["text"]}]
      277 GETUPVAL                         R22 8
      278 MOVE                             R23 R3
      279 LOADK                            R24 K64 ["TextureGen"]
      280 LOADK                            R25 K69 ["MoreResetOptions"]
      281 LOADK                            R26 K70 ["Reset options"]
      282 CALL                             R22 4 1
      283 SETTABLEKS                       R22 R21 K37 ["text"]
      285 FASTCALL2                        TABLE_INSERT R18 R21 ; [+4]
      287 MOVE                             R20 R18
      288 GETIMPORT                        R19 K58 [table.insert]
      290 CALL                             R19 2 0
      291 NEWCLOSURE                       R19 P6
      292 CAPTURE                          VAL R1
      293 CAPTURE                          VAL R5
      294 CAPTURE                          UPVAL U9
      295 GETUPVAL                         R20 1
      296 GETTABLEKS                       R20 R20 K19 ["createElement"]
      298 GETUPVAL                         R21 10
      299 GETTABLEKS                       R21 R21 K71 ["View"]
      301 DUPTABLE                         R22 K74 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      302 MOVE                             R23 R7
      303 CALL                             R23 0 1
      304 SETTABLEKS                       R23 R22 K24 ["LayoutOrder"]
      306 DUPTABLE                         R23 K79 [{"Prompt", "Images", "Error", "Actions"}]
      307 GETUPVAL                         R24 1
      308 GETTABLEKS                       R24 R24 K19 ["createElement"]
      310 GETUPVAL                         R25 10
      311 GETTABLEKS                       R25 R25 K80 ["TextArea"]
      313 DUPTABLE                         R26 K89 [{["LayoutOrder"], ["label"] = "", ["text"], ["placeholder"], ["onChanged"], ["numLines"] = 3, ["size"], ["variant"], ["width"], ["testId"] = "SceneGenPrompt"}]
      314 MOVE                             R27 R7
      315 CALL                             R27 0 1
      316 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      318 SETTABLEKS                       R4 R26 K37 ["text"]
      320 LOADK                            R29 K90 ["SceneGen"]
      321 LOADK                            R30 K91 ["InputPrompt"]
      322 NAMECALL                         R27 R3 K42 ["getText"]
      324 CALL                             R27 3 1
      325 SETTABLEKS                       R27 R26 K82 ["placeholder"]
      327 SETTABLEKS                       R8 R26 K83 ["onChanged"]
      329 GETUPVAL                         R27 10
      330 GETTABLEKS                       R27 R27 K92 ["Enums"]
      332 GETTABLEKS                       R27 R27 K93 ["InputSize"]
      334 GETTABLEKS                       R27 R27 K94 ["XSmall"]
      336 SETTABLEKS                       R27 R26 K22 ["size"]
      338 GETUPVAL                         R27 10
      339 GETTABLEKS                       R27 R27 K92 ["Enums"]
      341 GETTABLEKS                       R27 R27 K95 ["InputVariant"]
      343 GETTABLEKS                       R27 R27 K96 ["Utility"]
      345 SETTABLEKS                       R27 R26 K86 ["variant"]
      347 GETIMPORT                        R27 K99 [UDim.new]
      349 LOADN                            R28 1
      350 LOADN                            R29 -32
      351 CALL                             R27 2 1
      352 SETTABLEKS                       R27 R26 K87 ["width"]
      354 CALL                             R24 2 1
      355 SETTABLEKS                       R24 R23 K75 ["Prompt"]
      357 LOADN                            R25 0
      358 JUMPIFLT                         R25 R10 ; [+4]
      360 GETTABLEKS                       R25 R1 K12 ["imageLoading"]
      362 JUMPIFNOT                        R25 ; [+14]
      363 GETUPVAL                         R24 1
      364 GETTABLEKS                       R24 R24 K19 ["createElement"]
      366 GETUPVAL                         R25 10
      367 GETTABLEKS                       R25 R25 K71 ["View"]
      369 DUPTABLE                         R26 K101 [{["LayoutOrder"], ["tag"] = "row gap-xsmall size-full-0 auto-y"}]
      370 MOVE                             R27 R7
      371 CALL                             R27 0 1
      372 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      374 MOVE                             R27 R15
      375 CALL                             R24 3 1
      376 JUMP                             ; [+1]
      377 LOADNIL                          R24
      378 SETTABLEKS                       R24 R23 K76 ["Images"]
      380 JUMPIFNOT                        R16 ; [+15]
      381 GETUPVAL                         R24 1
      382 GETTABLEKS                       R24 R24 K19 ["createElement"]
      384 GETUPVAL                         R25 10
      385 GETTABLEKS                       R25 R25 K102 ["Text"]
      387 DUPTABLE                         R26 K105 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["testId"] = "SceneGenError"}]
      388 MOVE                             R27 R7
      389 CALL                             R27 0 1
      390 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      392 SETTABLEKS                       R16 R26 K102 ["Text"]
      394 CALL                             R24 2 1
      395 JUMP                             ; [+1]
      396 LOADNIL                          R24
      397 SETTABLEKS                       R24 R23 K77 ["Error"]
      399 GETUPVAL                         R24 1
      400 GETTABLEKS                       R24 R24 K19 ["createElement"]
      402 GETUPVAL                         R25 10
      403 GETTABLEKS                       R25 R25 K71 ["View"]
      405 DUPTABLE                         R26 K107 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-0 auto-y"}]
      406 MOVE                             R27 R7
      407 CALL                             R27 0 1
      408 SETTABLEKS                       R27 R26 K24 ["LayoutOrder"]
      410 DUPTABLE                         R27 K112 [{"Add", "Spacer", "More", "Generate"}]
      411 GETUPVAL                         R28 1
      412 GETTABLEKS                       R28 R28 K19 ["createElement"]
      414 GETUPVAL                         R29 10
      415 GETTABLEKS                       R29 R29 K113 ["IconButton"]
      417 DUPTABLE                         R30 K117 [{["LayoutOrder"] = 1, ["icon"], ["onActivated"], ["isDisabled"], ["size"], ["variant"], ["testId"] = "SceneGenAddImage"}]
      418 DUPTABLE                         R31 K119 [{"name"}]
      419 GETUPVAL                         R32 10
      420 GETTABLEKS                       R32 R32 K92 ["Enums"]
      422 GETTABLEKS                       R32 R32 K120 ["IconName"]
      424 GETTABLEKS                       R32 R32 K121 ["PlusLarge"]
      426 SETTABLEKS                       R32 R31 K118 ["name"]
      428 SETTABLEKS                       R31 R30 K114 ["icon"]
      430 GETTABLEKS                       R31 R1 K122 ["pickImage"]
      432 SETTABLEKS                       R31 R30 K115 ["onActivated"]
      434 NOT                              R31 R11
      435 SETTABLEKS                       R31 R30 K62 ["isDisabled"]
      437 GETUPVAL                         R31 10
      438 GETTABLEKS                       R31 R31 K92 ["Enums"]
      440 GETTABLEKS                       R31 R31 K93 ["InputSize"]
      442 GETTABLEKS                       R31 R31 K123 ["Small"]
      444 SETTABLEKS                       R31 R30 K22 ["size"]
      446 GETUPVAL                         R31 10
      447 GETTABLEKS                       R31 R31 K92 ["Enums"]
      449 GETTABLEKS                       R31 R31 K124 ["ButtonVariant"]
      451 GETTABLEKS                       R31 R31 K96 ["Utility"]
      453 SETTABLEKS                       R31 R30 K86 ["variant"]
      455 CALL                             R28 2 1
      456 SETTABLEKS                       R28 R27 K108 ["Add"]
      458 GETUPVAL                         R28 1
      459 GETTABLEKS                       R28 R28 K19 ["createElement"]
      461 GETUPVAL                         R29 10
      462 GETTABLEKS                       R29 R29 K71 ["View"]
      464 DUPTABLE                         R30 K127 [{["LayoutOrder"] = 2, ["tag"] = "fill"}]
      465 CALL                             R28 2 1
      466 SETTABLEKS                       R28 R27 K109 ["Spacer"]
      468 JUMPIF                           R2 ; [+11]
      469 GETUPVAL                         R28 1
      470 GETTABLEKS                       R28 R28 K19 ["createElement"]
      472 GETUPVAL                         R29 11
      473 DUPTABLE                         R30 K129 [{["LayoutOrder"] = 3, ["items"], ["onActivated"], ["testId"] = "SceneGenMore"}]
      474 SETTABLEKS                       R18 R30 K38 ["items"]
      476 SETTABLEKS                       R19 R30 K115 ["onActivated"]
      478 CALL                             R28 2 1
      479 JUMP                             ; [+1]
      480 LOADNIL                          R28
      481 SETTABLEKS                       R28 R27 K110 ["More"]
      483 GETUPVAL                         R28 1
      484 GETTABLEKS                       R28 R28 K19 ["createElement"]
      486 GETUPVAL                         R29 10
      487 GETTABLEKS                       R29 R29 K130 ["Button"]
      489 DUPTABLE                         R30 K132 [{["LayoutOrder"] = 4, ["text"], ["onActivated"], ["isDisabled"], ["variant"], ["size"], ["testId"]}]
      490 JUMPIFNOT                        R2 ; [+7]
      491 GETUPVAL                         R31 8
      492 MOVE                             R32 R3
      493 LOADK                            R33 K90 ["SceneGen"]
      494 LOADK                            R34 K133 ["Next"]
      495 LOADK                            R35 K133 ["Next"]
      496 CALL                             R31 4 1
      497 JUMP                             ; [+5]
      498 LOADK                            R33 K90 ["SceneGen"]
      499 LOADK                            R34 K111 ["Generate"]
      500 NAMECALL                         R31 R3 K42 ["getText"]
      502 CALL                             R31 3 1
      503 SETTABLEKS                       R31 R30 K37 ["text"]
      505 JUMPIFNOT                        R2 ; [+3]
      506 GETTABLEKS                       R31 R1 K134 ["next"]
      508 JUMP                             ; [+2]
      509 GETTABLEKS                       R31 R1 K135 ["generate"]
      511 SETTABLEKS                       R31 R30 K115 ["onActivated"]
      513 SETTABLEKS                       R13 R30 K62 ["isDisabled"]
      515 GETUPVAL                         R31 10
      516 GETTABLEKS                       R31 R31 K92 ["Enums"]
      518 GETTABLEKS                       R31 R31 K124 ["ButtonVariant"]
      520 GETTABLEKS                       R31 R31 K136 ["Emphasis"]
      522 SETTABLEKS                       R31 R30 K86 ["variant"]
      524 GETUPVAL                         R31 10
      525 GETTABLEKS                       R31 R31 K92 ["Enums"]
      527 GETTABLEKS                       R31 R31 K93 ["InputSize"]
      529 GETTABLEKS                       R31 R31 K94 ["XSmall"]
      531 SETTABLEKS                       R31 R30 K22 ["size"]
      533 JUMPIFNOT                        R2 ; [+2]
      534 LOADK                            R31 K137 ["SceneGenNext"]
      535 JUMP                             ; [+1]
      536 LOADK                            R31 K138 ["SceneGenGenerate"]
      537 SETTABLEKS                       R31 R30 K23 ["testId"]
      539 CALL                             R28 2 1
      540 SETTABLEKS                       R28 R27 K111 ["Generate"]
      542 CALL                             R24 3 1
      543 SETTABLEKS                       R24 R23 K78 ["Actions"]
      545 CALL                             R20 3 1
      546 MOVE                             R14 R20
      547 JUMPIFNOT                        R2 ; [+18]
      548 GETTABLEKS                       R15 R1 K7 ["step"]
      550 GETUPVAL                         R16 3
      551 GETTABLEKS                       R16 R16 K139 ["Steps"]
      553 GETTABLEKS                       R16 R16 K140 ["Settings"]
      555 JUMPIFNOTEQ                      R15 R16 ; [+10]
      557 GETUPVAL                         R15 1
      558 GETTABLEKS                       R15 R15 K19 ["createElement"]
      560 GETUPVAL                         R16 12
      561 DUPTABLE                         R17 K141 [{"viewModel"}]
      562 SETTABLEKS                       R1 R17 K0 ["viewModel"]
      564 CALL                             R15 2 1
      565 MOVE                             R14 R15
      566 GETUPVAL                         R15 1
      567 GETTABLEKS                       R15 R15 K19 ["createElement"]
      569 GETUPVAL                         R16 10
      570 GETTABLEKS                       R16 R16 K71 ["View"]
      572 DUPTABLE                         R17 K143 [{["tag"] = "size-full-0 auto-y"}]
      573 DUPTABLE                         R18 K146 [{"Card", "Close"}]
      574 GETUPVAL                         R19 1
      575 GETTABLEKS                       R19 R19 K19 ["createElement"]
      577 GETUPVAL                         R20 10
      578 GETTABLEKS                       R20 R20 K71 ["View"]
      580 DUPTABLE                         R21 K148 [{["tag"] = "col align-y-top gap-medium size-full-0 auto-y padding-medium stroke-standard stroke-emphasis radius-large bg-surface-100"}]
      581 DUPTABLE                         R22 K150 [{"Body"}]
      582 SETTABLEKS                       R14 R22 K149 ["Body"]
      584 CALL                             R19 3 1
      585 SETTABLEKS                       R19 R18 K144 ["Card"]
      587 JUMPIFNOT                        R2 ; [+9]
      588 GETTABLEKS                       R20 R1 K7 ["step"]
      590 GETUPVAL                         R21 3
      591 GETTABLEKS                       R21 R21 K139 ["Steps"]
      593 GETTABLEKS                       R21 R21 K140 ["Settings"]
      595 JUMPIFEQ                         R20 R21 ; [+64]
      597 GETUPVAL                         R19 1
      598 GETTABLEKS                       R19 R19 K19 ["createElement"]
      600 GETUPVAL                         R20 10
      601 GETTABLEKS                       R20 R20 K71 ["View"]
      603 DUPTABLE                         R21 K154 [{["tag"] = "anchor-top-right auto-xy", ["Position"], ["ZIndex"] = 2}]
      604 GETIMPORT                        R22 K156 [UDim2.new]
      606 LOADN                            R23 1
      607 LOADN                            R24 -8
      608 LOADN                            R25 0
      609 LOADN                            R26 8
      610 CALL                             R22 4 1
      611 SETTABLEKS                       R22 R21 K152 ["Position"]
      613 DUPTABLE                         R22 K157 [{"Button"}]
      614 GETUPVAL                         R23 1
      615 GETTABLEKS                       R23 R23 K19 ["createElement"]
      617 GETUPVAL                         R24 10
      618 GETTABLEKS                       R24 R24 K113 ["IconButton"]
      620 DUPTABLE                         R25 K160 [{["icon"], ["onActivated"], ["size"], ["variant"], ["isCircular"] = True, ["testId"] = "SceneGenPanelClose"}]
      621 DUPTABLE                         R26 K119 [{"name"}]
      622 GETUPVAL                         R27 10
      623 GETTABLEKS                       R27 R27 K92 ["Enums"]
      625 GETTABLEKS                       R27 R27 K120 ["IconName"]
      627 GETTABLEKS                       R27 R27 K161 ["X"]
      629 SETTABLEKS                       R27 R26 K118 ["name"]
      631 SETTABLEKS                       R26 R25 K114 ["icon"]
      633 GETTABLEKS                       R26 R1 K162 ["close"]
      635 SETTABLEKS                       R26 R25 K115 ["onActivated"]
      637 GETUPVAL                         R26 10
      638 GETTABLEKS                       R26 R26 K92 ["Enums"]
      640 GETTABLEKS                       R26 R26 K93 ["InputSize"]
      642 GETTABLEKS                       R26 R26 K123 ["Small"]
      644 SETTABLEKS                       R26 R25 K22 ["size"]
      646 GETUPVAL                         R26 10
      647 GETTABLEKS                       R26 R26 K92 ["Enums"]
      649 GETTABLEKS                       R26 R26 K124 ["ButtonVariant"]
      651 GETTABLEKS                       R26 R26 K96 ["Utility"]
      653 SETTABLEKS                       R26 R25 K86 ["variant"]
      655 CALL                             R23 2 1
      656 SETTABLEKS                       R23 R22 K130 ["Button"]
      658 CALL                             R19 3 1
      659 JUMP                             ; [+1]
      660 LOADNIL                          R19
      661 SETTABLEKS                       R19 R18 K145 ["Close"]
      663 CALL                             R15 3 -1
      664 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Gen3dCore"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       44 GETTABLEKS                       R5 R5 K13 ["Localization"]
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Bin"]
       50 GETTABLEKS                       R7 R7 K15 ["Common"]
       52 GETTABLEKS                       R7 R7 K16 ["defineLuaFlags"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K17 ["Src"]
       59 GETTABLEKS                       R8 R8 K18 ["CoreGuiComponents"]
       61 GETTABLEKS                       R8 R8 K19 ["ComposerMenu"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K17 ["Src"]
       68 GETTABLEKS                       R9 R9 K20 ["Components"]
       70 GETTABLEKS                       R9 R9 K21 ["TextureGenPanel"]
       72 GETTABLEKS                       R9 R9 K22 ["ReferenceImageThumbnail"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K17 ["Src"]
       79 GETTABLEKS                       R10 R10 K23 ["Util"]
       81 GETTABLEKS                       R10 R10 K24 ["SceneGenViewModel"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K17 ["Src"]
       88 GETTABLEKS                       R11 R11 K23 ["Util"]
       90 GETTABLEKS                       R11 R11 K25 ["getLocalizedTextOrDefault"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETIMPORT                        R12 K1 [script]
       97 GETTABLEKS                       R12 R12 K26 ["SceneGenSettings"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K29 [UDim2.fromOffset]
      102 LOADN                            R13 60
      103 LOADN                            R14 40
      104 CALL                             R12 2 1
      105 GETTABLEKS                       R13 R4 K30 ["Constants"]
      107 GETTABLEKS                       R13 R13 K31 ["Enums"]
      109 GETTABLEKS                       R13 R13 K32 ["SceneQuality"]
      111 NEWTABLE                         R14 0 4
      113 DUPTABLE                         R15 K36 [{["id"], ["key"] = "QualityMinimal"}]
      114 GETTABLEKS                       R16 R13 K37 ["Minimal"]
      116 SETTABLEKS                       R16 R15 K33 ["id"]
      118 DUPTABLE                         R16 K39 [{["id"], ["key"] = "QualityLow"}]
      119 GETTABLEKS                       R17 R13 K40 ["Low"]
      121 SETTABLEKS                       R17 R16 K33 ["id"]
      123 DUPTABLE                         R17 K42 [{["id"], ["key"] = "QualityMedium"}]
      124 GETTABLEKS                       R18 R13 K43 ["Medium"]
      126 SETTABLEKS                       R18 R17 K33 ["id"]
      128 DUPTABLE                         R18 K45 [{["id"], ["key"] = "QualityHigh"}]
      129 GETTABLEKS                       R19 R13 K46 ["High"]
      131 SETTABLEKS                       R19 R18 K33 ["id"]
      133 SETLIST                          R14 R15 4 [1]
      135 DUPCLOSURE                       R15 K47 [PROTO_7]
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R1
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R11
      149 RETURN                           R15 1
