PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K7 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y", ["LayoutOrder"], ["testId"]}]
       11 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       13 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       15 LOADK                            R5 K8 ["%*Row"]
       16 GETTABLEKS                       R7 R0 K9 ["name"]
       18 NAMECALL                         R5 R5 K10 ["format"]
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K6 ["testId"]
       23 DUPTABLE                         R5 K13 [{"Label", "Value"}]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K1 ["createElement"]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K14 ["Text"]
       30 DUPTABLE                         R8 K16 [{["Text"], ["tag"] = "size-2200-0 auto-y text-body-small text-wrap text-align-x-left", ["LayoutOrder"], ["testId"]}]
       31 GETTABLEKS                       R9 R0 K17 ["labelText"]
       33 SETTABLEKS                       R9 R8 K14 ["Text"]
       35 MOVE                             R9 R1
       36 CALL                             R9 0 1
       37 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       39 LOADK                            R9 K18 ["%*Label"]
       40 GETTABLEKS                       R11 R0 K9 ["name"]
       42 NAMECALL                         R9 R9 K10 ["format"]
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K6 ["testId"]
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K11 ["Label"]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R6 R6 K1 ["createElement"]
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R7 R7 K2 ["View"]
       56 DUPTABLE                         R8 K20 [{["tag"] = "fill auto-y clip", ["LayoutOrder"], ["testId"]}]
       57 MOVE                             R9 R1
       58 CALL                             R9 0 1
       59 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       61 LOADK                            R9 K21 ["%*Value"]
       62 GETTABLEKS                       R11 R0 K9 ["name"]
       64 NAMECALL                         R9 R9 K10 ["format"]
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K6 ["testId"]
       69 DUPTABLE                         R9 K23 [{"Control"}]
       70 GETTABLEKS                       R10 R0 K24 ["control"]
       72 SETTABLEKS                       R10 R9 K22 ["Control"]
       74 CALL                             R6 3 1
       75 SETTABLEKS                       R6 R5 K12 ["Value"]
       77 CALL                             R2 3 -1
       78 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setBoundsAxis"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["BoundsFields"]
        6 GETTABLEKS                       R3 R3 K2 ["Size"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setBoundsAxis"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["BoundsFields"]
        6 GETTABLEKS                       R3 R3 K2 ["Position"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 LOADK                            R4 K0 ["SceneGen"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R2 4 -1
        6 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GenerateLayout"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["getText"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setQuality"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setUseMeshGen"]
        3 JUMPIFEQKS                       R0 K1 ["meshes"] ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["viewModel"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useContext"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["Context"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["createNextOrder"]
       12 CALL                             R3 0 1
       13 GETTABLEKS                       R4 R1 K4 ["bounds"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K5 ["useCallback"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U3
       21 NEWTABLE                         R7 0 1
       23 GETTABLEKS                       R8 R1 K6 ["setBoundsAxis"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U3
       34 NEWTABLE                         R8 0 1
       36 GETTABLEKS                       R9 R1 K6 ["setBoundsAxis"]
       38 SETLIST                          R8 R9 1 [1]
       40 CALL                             R6 2 1
       41 NEWCLOSURE                       R7 P2
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R2
       44 NEWCLOSURE                       R8 P3
       45 CAPTURE                          VAL R2
       46 DUPTABLE                         R9 K14 [{["segments"], ["value"], ["onActivated"], ["size"], ["fillBehavior"], ["testId"] = "SceneGenQuality"}]
       47 NEWTABLE                         R10 0 0
       49 SETTABLEKS                       R10 R9 K7 ["segments"]
       51 GETTABLEKS                       R10 R1 K15 ["quality"]
       53 SETTABLEKS                       R10 R9 K8 ["value"]
       55 NEWCLOSURE                       R10 P4
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R10 R9 K9 ["onActivated"]
       59 GETUPVAL                         R10 5
       60 GETTABLEKS                       R10 R10 K16 ["Enums"]
       62 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       64 GETTABLEKS                       R10 R10 K18 ["Small"]
       66 SETTABLEKS                       R10 R9 K10 ["size"]
       68 GETUPVAL                         R10 5
       69 GETTABLEKS                       R10 R10 K16 ["Enums"]
       71 GETTABLEKS                       R10 R10 K19 ["FillBehavior"]
       73 GETTABLEKS                       R10 R10 K20 ["Fill"]
       75 SETTABLEKS                       R10 R9 K11 ["fillBehavior"]
       77 GETUPVAL                         R10 6
       78 LOADNIL                          R11
       79 LOADNIL                          R12
       80 FORGPREP                         R10
       81 GETTABLEKS                       R16 R9 K7 ["segments"]
       83 DUPTABLE                         R17 K23 [{"id", "text"}]
       84 GETTABLEKS                       R18 R14 K21 ["id"]
       86 SETTABLEKS                       R18 R17 K21 ["id"]
       88 GETTABLEKS                       R19 R14 K24 ["key"]
       90 LOADK                            R22 K25 ["GenerateLayout"]
       91 MOVE                             R23 R19
       92 NAMECALL                         R20 R2 K26 ["getText"]
       94 CALL                             R20 3 1
       95 MOVE                             R18 R20
       96 SETTABLEKS                       R18 R17 K22 ["text"]
       98 FASTCALL2                        TABLE_INSERT R16 R17 ; [+3]
      100 GETIMPORT                        R15 K29 [table.insert]
      102 CALL                             R15 2 0
      103 FORGLOOP                         R10 2 ; [-23]
      105 GETUPVAL                         R10 0
      106 GETTABLEKS                       R10 R10 K30 ["createElement"]
      108 GETUPVAL                         R11 5
      109 GETTABLEKS                       R11 R11 K31 ["View"]
      111 DUPTABLE                         R12 K35 [{["tag"] = "col gap-small size-full-0 auto-y", ["testId"] = "SceneGenSettings"}]
      112 DUPTABLE                         R13 K43 [{"Heading", "Size", "Position", "Models", "Quality", "Error", "Actions"}]
      113 GETUPVAL                         R14 0
      114 GETTABLEKS                       R14 R14 K30 ["createElement"]
      116 GETUPVAL                         R15 5
      117 GETTABLEKS                       R15 R15 K44 ["Text"]
      119 DUPTABLE                         R16 K47 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-align-x-left", ["LayoutOrder"]}]
      120 GETUPVAL                         R17 4
      121 MOVE                             R18 R2
      122 LOADK                            R19 K48 ["SceneGen"]
      123 LOADK                            R20 K49 ["SettingsHeading"]
      124 LOADK                            R21 K50 ["Scene settings"]
      125 CALL                             R17 4 1
      126 SETTABLEKS                       R17 R16 K44 ["Text"]
      128 MOVE                             R17 R3
      129 CALL                             R17 0 1
      130 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K36 ["Heading"]
      135 GETUPVAL                         R14 0
      136 GETTABLEKS                       R14 R14 K30 ["createElement"]
      138 GETUPVAL                         R15 7
      139 DUPTABLE                         R16 K55 [{["name"] = "SceneGenSize", ["labelText"], ["LayoutOrder"], ["control"]}]
      140 GETUPVAL                         R17 4
      141 MOVE                             R18 R2
      142 LOADK                            R19 K48 ["SceneGen"]
      143 LOADK                            R20 K56 ["SceneSize"]
      144 LOADK                            R21 K57 ["Scene size"]
      145 CALL                             R17 4 1
      146 SETTABLEKS                       R17 R16 K53 ["labelText"]
      148 MOVE                             R17 R3
      149 CALL                             R17 0 1
      150 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      152 JUMPIFNOT                        R4 ; [+19]
      153 GETUPVAL                         R17 0
      154 GETTABLEKS                       R17 R17 K30 ["createElement"]
      156 GETUPVAL                         R18 8
      157 GETTABLEKS                       R18 R18 K58 ["Components"]
      159 GETTABLEKS                       R18 R18 K59 ["Vector3Input"]
      161 GETTABLEKS                       R18 R18 K60 ["Root"]
      163 DUPTABLE                         R19 K65 [{["value"], ["onChanged"], ["roundToWholeStud"] = True, ["interactable"] = True, ["testId"] = "SceneGenSize"}]
      164 GETTABLEKS                       R20 R4 K10 ["size"]
      166 SETTABLEKS                       R20 R19 K8 ["value"]
      168 SETTABLEKS                       R5 R19 K61 ["onChanged"]
      170 CALL                             R17 2 1
      171 JUMP                             ; [+1]
      172 LOADNIL                          R17
      173 SETTABLEKS                       R17 R16 K54 ["control"]
      175 CALL                             R14 2 1
      176 SETTABLEKS                       R14 R13 K37 ["Size"]
      178 GETUPVAL                         R14 0
      179 GETTABLEKS                       R14 R14 K30 ["createElement"]
      181 GETUPVAL                         R15 7
      182 DUPTABLE                         R16 K67 [{["name"] = "SceneGenPosition", ["labelText"], ["LayoutOrder"], ["control"]}]
      183 GETUPVAL                         R17 4
      184 MOVE                             R18 R2
      185 LOADK                            R19 K48 ["SceneGen"]
      186 LOADK                            R20 K38 ["Position"]
      187 LOADK                            R21 K38 ["Position"]
      188 CALL                             R17 4 1
      189 SETTABLEKS                       R17 R16 K53 ["labelText"]
      191 MOVE                             R17 R3
      192 CALL                             R17 0 1
      193 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      195 JUMPIFNOT                        R4 ; [+19]
      196 GETUPVAL                         R17 0
      197 GETTABLEKS                       R17 R17 K30 ["createElement"]
      199 GETUPVAL                         R18 8
      200 GETTABLEKS                       R18 R18 K58 ["Components"]
      202 GETTABLEKS                       R18 R18 K59 ["Vector3Input"]
      204 GETTABLEKS                       R18 R18 K60 ["Root"]
      206 DUPTABLE                         R19 K68 [{["value"], ["onChanged"], ["roundToWholeStud"] = True, ["interactable"] = True, ["testId"] = "SceneGenPosition"}]
      207 GETTABLEKS                       R20 R4 K69 ["position"]
      209 SETTABLEKS                       R20 R19 K8 ["value"]
      211 SETTABLEKS                       R6 R19 K61 ["onChanged"]
      213 CALL                             R17 2 1
      214 JUMP                             ; [+1]
      215 LOADNIL                          R17
      216 SETTABLEKS                       R17 R16 K54 ["control"]
      218 CALL                             R14 2 1
      219 SETTABLEKS                       R14 R13 K38 ["Position"]
      221 GETUPVAL                         R14 0
      222 GETTABLEKS                       R14 R14 K30 ["createElement"]
      224 GETUPVAL                         R15 7
      225 DUPTABLE                         R16 K71 [{["name"] = "SceneGenModels", ["labelText"], ["LayoutOrder"], ["control"]}]
      226 LOADK                            R19 K25 ["GenerateLayout"]
      227 LOADK                            R20 K39 ["Models"]
      228 NAMECALL                         R17 R2 K26 ["getText"]
      230 CALL                             R17 3 1
      231 SETTABLEKS                       R17 R16 K53 ["labelText"]
      233 MOVE                             R17 R3
      234 CALL                             R17 0 1
      235 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      237 GETUPVAL                         R17 0
      238 GETTABLEKS                       R17 R17 K30 ["createElement"]
      240 GETUPVAL                         R18 5
      241 GETTABLEKS                       R18 R18 K72 ["SegmentedControl"]
      243 DUPTABLE                         R19 K73 [{["testId"] = "SceneGenModels", ["segments"], ["value"], ["onActivated"], ["size"], ["fillBehavior"]}]
      244 NEWTABLE                         R20 0 2
      246 DUPTABLE                         R21 K75 [{["id"] = "procedural", ["text"]}]
      247 LOADK                            R24 K25 ["GenerateLayout"]
      248 LOADK                            R25 K76 ["ProcModels"]
      249 NAMECALL                         R22 R2 K26 ["getText"]
      251 CALL                             R22 3 1
      252 SETTABLEKS                       R22 R21 K22 ["text"]
      254 DUPTABLE                         R22 K78 [{["id"] = "meshes", ["text"]}]
      255 LOADK                            R25 K25 ["GenerateLayout"]
      256 LOADK                            R26 K79 ["ProcModelsAndMeshes"]
      257 NAMECALL                         R23 R2 K26 ["getText"]
      259 CALL                             R23 3 1
      260 SETTABLEKS                       R23 R22 K22 ["text"]
      262 SETLIST                          R20 R21 2 [1]
      264 SETTABLEKS                       R20 R19 K7 ["segments"]
      266 GETTABLEKS                       R21 R1 K80 ["useMeshGen"]
      268 JUMPIFNOT                        R21 ; [+2]
      269 LOADK                            R20 K77 ["meshes"]
      270 JUMP                             ; [+1]
      271 LOADK                            R20 K74 ["procedural"]
      272 SETTABLEKS                       R20 R19 K8 ["value"]
      274 NEWCLOSURE                       R20 P5
      275 CAPTURE                          VAL R1
      276 SETTABLEKS                       R20 R19 K9 ["onActivated"]
      278 GETUPVAL                         R20 5
      279 GETTABLEKS                       R20 R20 K16 ["Enums"]
      281 GETTABLEKS                       R20 R20 K17 ["InputSize"]
      283 GETTABLEKS                       R20 R20 K18 ["Small"]
      285 SETTABLEKS                       R20 R19 K10 ["size"]
      287 GETUPVAL                         R20 5
      288 GETTABLEKS                       R20 R20 K16 ["Enums"]
      290 GETTABLEKS                       R20 R20 K19 ["FillBehavior"]
      292 GETTABLEKS                       R20 R20 K20 ["Fill"]
      294 SETTABLEKS                       R20 R19 K11 ["fillBehavior"]
      296 CALL                             R17 2 1
      297 SETTABLEKS                       R17 R16 K54 ["control"]
      299 CALL                             R14 2 1
      300 SETTABLEKS                       R14 R13 K39 ["Models"]
      302 GETUPVAL                         R15 9
      303 GETTABLEKS                       R15 R15 K81 ["getFFlagAssistantGenerateSceneQuality"]
      305 CALL                             R15 0 1
      306 JUMPIFNOT                        R15 ; [+28]
      307 GETUPVAL                         R14 0
      308 GETTABLEKS                       R14 R14 K30 ["createElement"]
      310 GETUPVAL                         R15 7
      311 DUPTABLE                         R16 K82 [{["name"] = "SceneGenQuality", ["labelText"], ["LayoutOrder"], ["control"]}]
      312 LOADK                            R19 K25 ["GenerateLayout"]
      313 LOADK                            R20 K40 ["Quality"]
      314 NAMECALL                         R17 R2 K26 ["getText"]
      316 CALL                             R17 3 1
      317 SETTABLEKS                       R17 R16 K53 ["labelText"]
      319 MOVE                             R17 R3
      320 CALL                             R17 0 1
      321 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      323 GETUPVAL                         R17 0
      324 GETTABLEKS                       R17 R17 K30 ["createElement"]
      326 GETUPVAL                         R18 5
      327 GETTABLEKS                       R18 R18 K72 ["SegmentedControl"]
      329 MOVE                             R19 R9
      330 CALL                             R17 2 1
      331 SETTABLEKS                       R17 R16 K54 ["control"]
      333 CALL                             R14 2 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R14
      336 SETTABLEKS                       R14 R13 K40 ["Quality"]
      338 GETTABLEKS                       R15 R1 K83 ["boundsError"]
      340 JUMPIFNOT                        R15 ; [+17]
      341 GETUPVAL                         R14 0
      342 GETTABLEKS                       R14 R14 K30 ["createElement"]
      344 GETUPVAL                         R15 5
      345 GETTABLEKS                       R15 R15 K44 ["Text"]
      347 DUPTABLE                         R16 K86 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["LayoutOrder"], ["testId"] = "SceneGenBoundsError"}]
      348 GETTABLEKS                       R17 R1 K83 ["boundsError"]
      350 SETTABLEKS                       R17 R16 K44 ["Text"]
      352 MOVE                             R17 R3
      353 CALL                             R17 0 1
      354 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      356 CALL                             R14 2 1
      357 JUMP                             ; [+1]
      358 LOADNIL                          R14
      359 SETTABLEKS                       R14 R13 K41 ["Error"]
      361 GETUPVAL                         R14 0
      362 GETTABLEKS                       R14 R14 K30 ["createElement"]
      364 GETUPVAL                         R15 5
      365 GETTABLEKS                       R15 R15 K31 ["View"]
      367 DUPTABLE                         R16 K88 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
      368 MOVE                             R17 R3
      369 CALL                             R17 0 1
      370 SETTABLEKS                       R17 R16 K46 ["LayoutOrder"]
      372 DUPTABLE                         R17 K93 [{"Back", "Spacer", "Cancel", "Generate"}]
      373 GETUPVAL                         R18 0
      374 GETTABLEKS                       R18 R18 K30 ["createElement"]
      376 GETUPVAL                         R19 5
      377 GETTABLEKS                       R19 R19 K94 ["IconButton"]
      379 DUPTABLE                         R20 K98 [{["icon"], ["onActivated"], ["size"], ["variant"], ["LayoutOrder"], ["testId"] = "SceneGenBack"}]
      380 DUPTABLE                         R21 K99 [{"name"}]
      381 GETUPVAL                         R22 5
      382 GETTABLEKS                       R22 R22 K16 ["Enums"]
      384 GETTABLEKS                       R22 R22 K100 ["IconName"]
      386 GETTABLEKS                       R22 R22 K101 ["ChevronLargeLeft"]
      388 SETTABLEKS                       R22 R21 K51 ["name"]
      390 SETTABLEKS                       R21 R20 K95 ["icon"]
      392 GETTABLEKS                       R21 R1 K102 ["back"]
      394 SETTABLEKS                       R21 R20 K9 ["onActivated"]
      396 GETUPVAL                         R21 5
      397 GETTABLEKS                       R21 R21 K16 ["Enums"]
      399 GETTABLEKS                       R21 R21 K17 ["InputSize"]
      401 GETTABLEKS                       R21 R21 K18 ["Small"]
      403 SETTABLEKS                       R21 R20 K10 ["size"]
      405 GETUPVAL                         R21 5
      406 GETTABLEKS                       R21 R21 K16 ["Enums"]
      408 GETTABLEKS                       R21 R21 K103 ["ButtonVariant"]
      410 GETTABLEKS                       R21 R21 K104 ["Utility"]
      412 SETTABLEKS                       R21 R20 K96 ["variant"]
      414 MOVE                             R21 R3
      415 CALL                             R21 0 1
      416 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      418 CALL                             R18 2 1
      419 SETTABLEKS                       R18 R17 K89 ["Back"]
      421 GETUPVAL                         R18 0
      422 GETTABLEKS                       R18 R18 K30 ["createElement"]
      424 GETUPVAL                         R19 5
      425 GETTABLEKS                       R19 R19 K31 ["View"]
      427 DUPTABLE                         R20 K106 [{["tag"] = "fill", ["LayoutOrder"]}]
      428 MOVE                             R21 R3
      429 CALL                             R21 0 1
      430 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      432 CALL                             R18 2 1
      433 SETTABLEKS                       R18 R17 K90 ["Spacer"]
      435 GETUPVAL                         R18 0
      436 GETTABLEKS                       R18 R18 K30 ["createElement"]
      438 GETUPVAL                         R19 5
      439 GETTABLEKS                       R19 R19 K107 ["Button"]
      441 DUPTABLE                         R20 K109 [{["text"], ["onActivated"], ["size"], ["variant"], ["LayoutOrder"], ["testId"] = "SceneGenCancel"}]
      442 GETUPVAL                         R21 4
      443 MOVE                             R22 R2
      444 LOADK                            R23 K110 ["Common"]
      445 LOADK                            R24 K91 ["Cancel"]
      446 LOADK                            R25 K91 ["Cancel"]
      447 CALL                             R21 4 1
      448 SETTABLEKS                       R21 R20 K22 ["text"]
      450 GETTABLEKS                       R21 R1 K111 ["close"]
      452 SETTABLEKS                       R21 R20 K9 ["onActivated"]
      454 GETUPVAL                         R21 5
      455 GETTABLEKS                       R21 R21 K16 ["Enums"]
      457 GETTABLEKS                       R21 R21 K17 ["InputSize"]
      459 GETTABLEKS                       R21 R21 K112 ["XSmall"]
      461 SETTABLEKS                       R21 R20 K10 ["size"]
      463 GETUPVAL                         R21 5
      464 GETTABLEKS                       R21 R21 K16 ["Enums"]
      466 GETTABLEKS                       R21 R21 K103 ["ButtonVariant"]
      468 GETTABLEKS                       R21 R21 K113 ["Standard"]
      470 SETTABLEKS                       R21 R20 K96 ["variant"]
      472 MOVE                             R21 R3
      473 CALL                             R21 0 1
      474 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      476 CALL                             R18 2 1
      477 SETTABLEKS                       R18 R17 K91 ["Cancel"]
      479 GETUPVAL                         R18 0
      480 GETTABLEKS                       R18 R18 K30 ["createElement"]
      482 GETUPVAL                         R19 5
      483 GETTABLEKS                       R19 R19 K107 ["Button"]
      485 DUPTABLE                         R20 K116 [{["text"], ["onActivated"], ["isDisabled"], ["size"], ["variant"], ["LayoutOrder"], ["testId"] = "SceneGenGenerate"}]
      486 LOADK                            R23 K48 ["SceneGen"]
      487 LOADK                            R24 K92 ["Generate"]
      488 NAMECALL                         R21 R2 K26 ["getText"]
      490 CALL                             R21 3 1
      491 SETTABLEKS                       R21 R20 K22 ["text"]
      493 GETTABLEKS                       R21 R1 K117 ["generate"]
      495 SETTABLEKS                       R21 R20 K9 ["onActivated"]
      497 LOADB                            R21 1
      498 JUMPIFEQKNIL                     R4 ; [+17]
      500 LOADB                            R21 1
      501 GETTABLEKS                       R22 R1 K83 ["boundsError"]
      503 JUMPIFNOTEQKNIL                  R22 ; [+12]
      505 GETTABLEKS                       R21 R1 K118 ["imageLoading"]
      507 JUMPIF                           R21 ; [+8]
      508 GETTABLEKS                       R22 R1 K119 ["activeRunCount"]
      510 GETTABLEKS                       R23 R1 K120 ["maxRuns"]
      512 JUMPIFLE                         R23 R22 ; [+2]
      514 LOADB                            R21 0 +1
      515 LOADB                            R21 1
      516 SETTABLEKS                       R21 R20 K114 ["isDisabled"]
      518 GETUPVAL                         R21 5
      519 GETTABLEKS                       R21 R21 K16 ["Enums"]
      521 GETTABLEKS                       R21 R21 K17 ["InputSize"]
      523 GETTABLEKS                       R21 R21 K112 ["XSmall"]
      525 SETTABLEKS                       R21 R20 K10 ["size"]
      527 GETUPVAL                         R21 5
      528 GETTABLEKS                       R21 R21 K16 ["Enums"]
      530 GETTABLEKS                       R21 R21 K103 ["ButtonVariant"]
      532 GETTABLEKS                       R21 R21 K121 ["Emphasis"]
      534 SETTABLEKS                       R21 R20 K96 ["variant"]
      536 MOVE                             R21 R3
      537 CALL                             R21 0 1
      538 SETTABLEKS                       R21 R20 K46 ["LayoutOrder"]
      540 CALL                             R18 2 1
      541 SETTABLEKS                       R18 R17 K92 ["Generate"]
      543 CALL                             R14 3 1
      544 SETTABLEKS                       R14 R13 K42 ["Actions"]
      546 CALL                             R10 3 -1
      547 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Gen3dCore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       44 GETTABLEKS                       R5 R5 K13 ["Localization"]
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Util"]
       52 GETTABLEKS                       R7 R7 K16 ["SceneGenViewModel"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K17 ["Bin"]
       59 GETTABLEKS                       R8 R8 K18 ["Common"]
       61 GETTABLEKS                       R8 R8 K19 ["defineLuaFlags"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K14 ["Src"]
       68 GETTABLEKS                       R9 R9 K15 ["Util"]
       70 GETTABLEKS                       R9 R9 K20 ["getLocalizedTextOrDefault"]
       72 CALL                             R8 1 1
       73 GETTABLEKS                       R9 R2 K21 ["Constants"]
       75 GETTABLEKS                       R9 R9 K22 ["Enums"]
       77 GETTABLEKS                       R9 R9 K23 ["SceneQuality"]
       79 DUPTABLE                         R10 K28 [{["Procedural"] = "procedural", ["Meshes"] = "meshes"}]
       80 NEWTABLE                         R11 0 4
       82 DUPTABLE                         R12 K32 [{["id"], ["key"] = "QualityMinimal"}]
       83 GETTABLEKS                       R13 R9 K33 ["Minimal"]
       85 SETTABLEKS                       R13 R12 K29 ["id"]
       87 DUPTABLE                         R13 K35 [{["id"], ["key"] = "QualityLow"}]
       88 GETTABLEKS                       R14 R9 K36 ["Low"]
       90 SETTABLEKS                       R14 R13 K29 ["id"]
       92 DUPTABLE                         R14 K38 [{["id"], ["key"] = "QualityMedium"}]
       93 GETTABLEKS                       R15 R9 K39 ["Medium"]
       95 SETTABLEKS                       R15 R14 K29 ["id"]
       97 DUPTABLE                         R15 K41 [{["id"], ["key"] = "QualityHigh"}]
       98 GETTABLEKS                       R16 R9 K42 ["High"]
      100 SETTABLEKS                       R16 R15 K29 ["id"]
      102 SETLIST                          R11 R12 4 [1]
      104 DUPCLOSURE                       R12 K43 [PROTO_0]
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R1
      108 DUPCLOSURE                       R13 K44 [PROTO_7]
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R7
      119 RETURN                           R13 1
