PROTO_0:
        0 LOADN                            R2 0
        1 LOADN                            R3 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R1 K0 ["getNodeById"]
        8 MOVE                             R10 R7
        9 CALL                             R9 1 1
       10 JUMPIFNOT                        R9 ; [+17]
       11 GETTABLEKS                       R10 R9 K1 ["Size"]
       13 JUMPIFNOT                        R10 ; [+14]
       14 GETTABLEKS                       R10 R9 K2 ["Children"]
       16 JUMPIFNOT                        R10 ; [+7]
       17 GETIMPORT                        R10 K4 [next]
       19 GETTABLEKS                       R11 R9 K2 ["Children"]
       21 CALL                             R10 1 1
       22 JUMPIFNOTEQKNIL                  R10 ; [+5]
       24 GETTABLEKS                       R10 R9 K1 ["Size"]
       26 ADD                              R2 R2 R10
       27 ADDK                             R3 R3 K5 [1]
       28 FORGLOOP                         R4 1 ; [-23]
       30 RETURN                           R2 2

PROTO_1:
        0 LOADN                            R2 0
        1 LOADN                            R3 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R1 K0 ["getNodeById"]
        8 MOVE                             R10 R7
        9 CALL                             R9 1 1
       10 JUMPIFNOT                        R9 ; [+66]
       11 GETTABLEKS                       R10 R9 K1 ["Children"]
       13 JUMPIFNOT                        R10 ; [+7]
       14 GETIMPORT                        R10 K3 [next]
       16 GETTABLEKS                       R11 R9 K1 ["Children"]
       18 CALL                             R10 1 1
       19 JUMPIFNOTEQKNIL                  R10 ; [+57]
       21 GETTABLEKS                       R10 R9 K4 ["Sizes"]
       23 JUMPIFNOT                        R10 ; [+28]
       24 GETTABLEKS                       R10 R9 K4 ["Sizes"]
       26 GETTABLEKS                       R10 R10 K5 ["Triangles"]
       28 JUMPIF                           R10 ; [+9]
       29 GETTABLEKS                       R10 R9 K4 ["Sizes"]
       31 GETTABLEKS                       R10 R10 K6 ["triangles"]
       33 JUMPIF                           R10 ; [+4]
       34 GETTABLEKS                       R10 R9 K7 ["Size"]
       36 JUMPIF                           R10 ; [+1]
       37 LOADN                            R10 0
       38 ADD                              R2 R2 R10
       39 GETTABLEKS                       R10 R9 K4 ["Sizes"]
       41 GETTABLEKS                       R10 R10 K8 ["Drawcalls"]
       43 JUMPIF                           R10 ; [+6]
       44 GETTABLEKS                       R10 R9 K4 ["Sizes"]
       46 GETTABLEKS                       R10 R10 K9 ["drawcalls"]
       48 JUMPIF                           R10 ; [+1]
       49 LOADN                            R10 0
       50 ADD                              R3 R3 R10
       51 JUMP                             ; [+4]
       52 GETTABLEKS                       R11 R9 K7 ["Size"]
       54 ORK                              R10 R11 K10 [0]
       55 ADD                              R2 R2 R10
       56 GETTABLEKS                       R10 R9 K4 ["Sizes"]
       58 JUMPIFNOT                        R10 ; [+10]
       59 GETTABLEKS                       R10 R9 K4 ["Sizes"]
       61 GETTABLEKS                       R10 R10 K8 ["Drawcalls"]
       63 JUMPIF                           R10 ; [+13]
       64 GETTABLEKS                       R10 R9 K4 ["Sizes"]
       66 GETTABLEKS                       R10 R10 K9 ["drawcalls"]
       68 JUMPIF                           R10 ; [+8]
       69 GETTABLEKS                       R11 R9 K11 ["DrawcallCount"]
       71 JUMPIFNOT                        R11 ; [+3]
       72 GETTABLEKS                       R10 R9 K11 ["DrawcallCount"]
       74 JUMP                             ; [+1]
       75 LOADN                            R10 1
       76 ADD                              R3 R3 R10
       77 FORGLOOP                         R4 1 ; [-72]
       79 RETURN                           R2 2

PROTO_2:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Children"]
        3 JUMPIFNOT                        R2 ; [+20]
        4 GETIMPORT                        R2 K2 [next]
        6 GETTABLEKS                       R3 R0 K0 ["Children"]
        8 CALL                             R2 1 1
        9 JUMPIFEQKNIL                     R2 ; [+14]
       11 GETIMPORT                        R2 K4 [pairs]
       13 GETTABLEKS                       R3 R0 K0 ["Children"]
       15 CALL                             R2 1 3
       16 FORGPREP_NEXT                    R2
       17 GETUPVAL                         R7 0
       18 MOVE                             R8 R6
       19 CALL                             R7 1 1
       20 ADD                              R1 R1 R7
       21 FORGLOOP                         R2 2 ; [-5]
       23 RETURN                           R1 1
       24 GETTABLEKS                       R3 R0 K6 ["Size"]
       26 ORK                              R2 R3 K5 [0]
       27 ADD                              R1 R1 R2
       28 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K1 ["count"]
        2 ORK                              R1 R2 K0 [0]
        3 GETTABLEKS                       R3 R0 K2 ["root"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R2 R0 K2 ["root"]
        8 GETTABLEKS                       R2 R2 K3 ["Size"]
       10 JUMPIF                           R2 ; [+1]
       11 LOADN                            R2 0
       12 LOADNIL                          R3
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["valueFormat"]
       16 JUMPIFNOTEQKS                    R4 K5 ["memory"] ; [+6]
       18 GETUPVAL                         R4 1
       19 MOVE                             R5 R2
       20 CALL                             R4 1 1
       21 MOVE                             R3 R4
       22 JUMP                             ; [+6]
       23 GETIMPORT                        R4 K8 [string.format]
       25 LOADK                            R5 K9 ["%d"]
       26 MOVE                             R6 R2
       27 CALL                             R4 2 1
       28 MOVE                             R3 R4
       29 LOADNIL                          R4
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K10 ["id"]
       33 JUMPIFNOTEQKS                    R5 K11 ["Script"] ; [+19]
       35 GETUPVAL                         R5 2
       36 LOADK                            R7 K12 ["SummaryPane"]
       37 LOADK                            R8 K13 ["TotalScriptMemory"]
       38 DUPTABLE                         R9 K14 [{"memory", "count"}]
       39 SETTABLEKS                       R3 R9 K5 ["memory"]
       41 GETIMPORT                        R10 K8 [string.format]
       43 LOADK                            R11 K9 ["%d"]
       44 MOVE                             R12 R1
       45 CALL                             R10 2 1
       46 SETTABLEKS                       R10 R9 K1 ["count"]
       48 NAMECALL                         R5 R5 K15 ["getText"]
       50 CALL                             R5 4 1
       51 MOVE                             R4 R5
       52 JUMP                             ; [+308]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K10 ["id"]
       56 JUMPIFNOTEQKS                    R5 K16 ["Triangles"] ; [+78]
       58 LOADN                            R5 0
       59 LOADN                            R6 0
       60 GETTABLEKS                       R7 R0 K2 ["root"]
       62 JUMPIFNOT                        R7 ; [+49]
       63 GETTABLEKS                       R7 R0 K2 ["root"]
       65 GETTABLEKS                       R7 R7 K17 ["Children"]
       67 JUMPIFNOT                        R7 ; [+44]
       68 GETTABLEKS                       R7 R0 K2 ["root"]
       70 GETTABLEKS                       R7 R7 K17 ["Children"]
       72 LOADNIL                          R8
       73 LOADNIL                          R9
       74 FORGPREP                         R7
       75 GETTABLEKS                       R12 R11 K18 ["Sizes"]
       77 JUMPIFNOT                        R12 ; [+20]
       78 GETTABLEKS                       R13 R12 K16 ["Triangles"]
       80 JUMPIF                           R13 ; [+7]
       81 GETTABLEKS                       R13 R12 K19 ["triangles"]
       83 JUMPIF                           R13 ; [+4]
       84 GETTABLEKS                       R13 R11 K3 ["Size"]
       86 JUMPIF                           R13 ; [+1]
       87 LOADN                            R13 0
       88 ADD                              R5 R5 R13
       89 GETTABLEKS                       R13 R12 K20 ["Drawcalls"]
       91 JUMPIF                           R13 ; [+4]
       92 GETTABLEKS                       R13 R12 K21 ["drawcalls"]
       94 JUMPIF                           R13 ; [+1]
       95 LOADN                            R13 0
       96 ADD                              R6 R6 R13
       97 JUMP                             ; [+12]
       98 GETTABLEKS                       R14 R11 K3 ["Size"]
      100 ORK                              R13 R14 K0 [0]
      101 ADD                              R5 R5 R13
      102 GETTABLEKS                       R13 R11 K21 ["drawcalls"]
      104 JUMPIF                           R13 ; [+4]
      105 GETTABLEKS                       R13 R11 K20 ["Drawcalls"]
      107 JUMPIF                           R13 ; [+1]
      108 LOADN                            R13 0
      109 ADD                              R6 R6 R13
      110 FORGLOOP                         R7 2 ; [-36]
      112 GETUPVAL                         R7 2
      113 LOADK                            R9 K12 ["SummaryPane"]
      114 LOADK                            R10 K22 ["TotalSceneTriangles"]
      115 DUPTABLE                         R11 K23 [{"triangles", "drawcalls"}]
      116 GETIMPORT                        R12 K8 [string.format]
      118 LOADK                            R13 K9 ["%d"]
      119 MOVE                             R14 R5
      120 CALL                             R12 2 1
      121 SETTABLEKS                       R12 R11 K19 ["triangles"]
      123 GETIMPORT                        R12 K8 [string.format]
      125 LOADK                            R13 K9 ["%d"]
      126 MOVE                             R14 R6
      127 CALL                             R12 2 1
      128 SETTABLEKS                       R12 R11 K21 ["drawcalls"]
      130 NAMECALL                         R7 R7 K15 ["getText"]
      132 CALL                             R7 4 1
      133 MOVE                             R4 R7
      134 JUMP                             ; [+226]
      135 GETUPVAL                         R5 0
      136 GETTABLEKS                       R5 R5 K10 ["id"]
      138 JUMPIFNOTEQKS                    R5 K24 ["SceneGeometry"] ; [+78]
      140 LOADN                            R5 0
      141 LOADN                            R6 0
      142 GETTABLEKS                       R7 R0 K2 ["root"]
      144 JUMPIFNOT                        R7 ; [+49]
      145 GETTABLEKS                       R7 R0 K2 ["root"]
      147 GETTABLEKS                       R7 R7 K17 ["Children"]
      149 JUMPIFNOT                        R7 ; [+44]
      150 GETTABLEKS                       R7 R0 K2 ["root"]
      152 GETTABLEKS                       R7 R7 K17 ["Children"]
      154 LOADNIL                          R8
      155 LOADNIL                          R9
      156 FORGPREP                         R7
      157 GETTABLEKS                       R12 R11 K18 ["Sizes"]
      159 JUMPIFNOT                        R12 ; [+20]
      160 GETTABLEKS                       R13 R12 K16 ["Triangles"]
      162 JUMPIF                           R13 ; [+7]
      163 GETTABLEKS                       R13 R12 K19 ["triangles"]
      165 JUMPIF                           R13 ; [+4]
      166 GETTABLEKS                       R13 R11 K3 ["Size"]
      168 JUMPIF                           R13 ; [+1]
      169 LOADN                            R13 0
      170 ADD                              R5 R5 R13
      171 GETTABLEKS                       R13 R12 K20 ["Drawcalls"]
      173 JUMPIF                           R13 ; [+4]
      174 GETTABLEKS                       R13 R12 K21 ["drawcalls"]
      176 JUMPIF                           R13 ; [+1]
      177 LOADN                            R13 0
      178 ADD                              R6 R6 R13
      179 JUMP                             ; [+12]
      180 GETTABLEKS                       R14 R11 K3 ["Size"]
      182 ORK                              R13 R14 K0 [0]
      183 ADD                              R5 R5 R13
      184 GETTABLEKS                       R13 R11 K21 ["drawcalls"]
      186 JUMPIF                           R13 ; [+4]
      187 GETTABLEKS                       R13 R11 K20 ["Drawcalls"]
      189 JUMPIF                           R13 ; [+1]
      190 LOADN                            R13 0
      191 ADD                              R6 R6 R13
      192 FORGLOOP                         R7 2 ; [-36]
      194 GETUPVAL                         R7 2
      195 LOADK                            R9 K12 ["SummaryPane"]
      196 LOADK                            R10 K25 ["TotalSceneGeometry"]
      197 DUPTABLE                         R11 K23 [{"triangles", "drawcalls"}]
      198 GETIMPORT                        R12 K8 [string.format]
      200 LOADK                            R13 K9 ["%d"]
      201 MOVE                             R14 R5
      202 CALL                             R12 2 1
      203 SETTABLEKS                       R12 R11 K19 ["triangles"]
      205 GETIMPORT                        R12 K8 [string.format]
      207 LOADK                            R13 K9 ["%d"]
      208 MOVE                             R14 R6
      209 CALL                             R12 2 1
      210 SETTABLEKS                       R12 R11 K21 ["drawcalls"]
      212 NAMECALL                         R7 R7 K15 ["getText"]
      214 CALL                             R7 4 1
      215 MOVE                             R4 R7
      216 JUMP                             ; [+144]
      217 GETUPVAL                         R5 0
      218 GETTABLEKS                       R5 R5 K10 ["id"]
      220 JUMPIFNOTEQKS                    R5 K26 ["Animation"] ; [+22]
      222 GETUPVAL                         R5 1
      223 MOVE                             R6 R2
      224 CALL                             R5 1 1
      225 GETUPVAL                         R6 2
      226 LOADK                            R8 K12 ["SummaryPane"]
      227 LOADK                            R9 K27 ["TotalAnimationMemory"]
      228 DUPTABLE                         R10 K14 [{"memory", "count"}]
      229 SETTABLEKS                       R5 R10 K5 ["memory"]
      231 GETIMPORT                        R11 K8 [string.format]
      233 LOADK                            R12 K9 ["%d"]
      234 MOVE                             R13 R1
      235 CALL                             R11 2 1
      236 SETTABLEKS                       R11 R10 K1 ["count"]
      238 NAMECALL                         R6 R6 K15 ["getText"]
      240 CALL                             R6 4 1
      241 MOVE                             R4 R6
      242 JUMP                             ; [+118]
      243 GETUPVAL                         R5 0
      244 GETTABLEKS                       R5 R5 K10 ["id"]
      246 JUMPIFNOTEQKS                    R5 K28 ["Audio"] ; [+19]
      248 GETUPVAL                         R5 2
      249 LOADK                            R7 K12 ["SummaryPane"]
      250 LOADK                            R8 K29 ["TotalAudioMemory"]
      251 DUPTABLE                         R9 K14 [{"memory", "count"}]
      252 SETTABLEKS                       R3 R9 K5 ["memory"]
      254 GETIMPORT                        R10 K8 [string.format]
      256 LOADK                            R11 K9 ["%d"]
      257 MOVE                             R12 R1
      258 CALL                             R10 2 1
      259 SETTABLEKS                       R10 R9 K1 ["count"]
      261 NAMECALL                         R5 R5 K15 ["getText"]
      263 CALL                             R5 4 1
      264 MOVE                             R4 R5
      265 JUMP                             ; [+95]
      266 GETUPVAL                         R5 0
      267 GETTABLEKS                       R5 R5 K10 ["id"]
      269 JUMPIFNOTEQKS                    R5 K30 ["Unparented"] ; [+28]
      271 LOADN                            R5 0
      272 DUPCLOSURE                       R6 K31 [PROTO_2]
      273 CAPTURE                          VAL R6
      274 GETTABLEKS                       R7 R0 K2 ["root"]
      276 JUMPIFNOT                        R7 ; [+5]
      277 MOVE                             R7 R6
      278 GETTABLEKS                       R8 R0 K2 ["root"]
      280 CALL                             R7 1 1
      281 MOVE                             R5 R7
      282 GETUPVAL                         R7 2
      283 LOADK                            R9 K12 ["SummaryPane"]
      284 LOADK                            R10 K32 ["TotalUnparentedInstances"]
      285 DUPTABLE                         R11 K33 [{"count"}]
      286 GETIMPORT                        R12 K8 [string.format]
      288 LOADK                            R13 K9 ["%d"]
      289 MOVE                             R14 R5
      290 CALL                             R12 2 1
      291 SETTABLEKS                       R12 R11 K1 ["count"]
      293 NAMECALL                         R7 R7 K15 ["getText"]
      295 CALL                             R7 4 1
      296 MOVE                             R4 R7
      297 JUMP                             ; [+63]
      298 GETUPVAL                         R5 0
      299 GETTABLEKS                       R5 R5 K10 ["id"]
      301 JUMPIFNOTEQKS                    R5 K34 ["InstanceComposition"] ; [+19]
      303 GETUPVAL                         R5 2
      304 LOADK                            R7 K12 ["SummaryPane"]
      305 LOADK                            R8 K35 ["TotalInstances"]
      306 DUPTABLE                         R9 K37 [{"count", "categories"}]
      307 SETTABLEKS                       R3 R9 K1 ["count"]
      309 GETIMPORT                        R10 K8 [string.format]
      311 LOADK                            R11 K9 ["%d"]
      312 MOVE                             R12 R1
      313 CALL                             R10 2 1
      314 SETTABLEKS                       R10 R9 K36 ["categories"]
      316 NAMECALL                         R5 R5 K15 ["getText"]
      318 CALL                             R5 4 1
      319 MOVE                             R4 R5
      320 JUMP                             ; [+40]
      321 GETUPVAL                         R5 0
      322 GETTABLEKS                       R5 R5 K4 ["valueFormat"]
      324 JUMPIFNOTEQKS                    R5 K5 ["memory"] ; [+19]
      326 GETUPVAL                         R5 2
      327 LOADK                            R7 K12 ["SummaryPane"]
      328 LOADK                            R8 K38 ["TotalMemory"]
      329 DUPTABLE                         R9 K14 [{"memory", "count"}]
      330 SETTABLEKS                       R3 R9 K5 ["memory"]
      332 GETIMPORT                        R10 K8 [string.format]
      334 LOADK                            R11 K9 ["%d"]
      335 MOVE                             R12 R1
      336 CALL                             R10 2 1
      337 SETTABLEKS                       R10 R9 K1 ["count"]
      339 NAMECALL                         R5 R5 K15 ["getText"]
      341 CALL                             R5 4 1
      342 MOVE                             R4 R5
      343 JUMP                             ; [+17]
      344 GETUPVAL                         R5 2
      345 LOADK                            R7 K12 ["SummaryPane"]
      346 LOADK                            R8 K39 ["TotalCountGeneric"]
      347 DUPTABLE                         R9 K41 [{"total", "count"}]
      348 SETTABLEKS                       R3 R9 K40 ["total"]
      350 GETIMPORT                        R10 K8 [string.format]
      352 LOADK                            R11 K9 ["%d"]
      353 MOVE                             R12 R1
      354 CALL                             R10 2 1
      355 SETTABLEKS                       R10 R9 K1 ["count"]
      357 NAMECALL                         R5 R5 K15 ["getText"]
      359 CALL                             R5 4 1
      360 MOVE                             R4 R5
      361 GETUPVAL                         R5 3
      362 JUMPIFNOT                        R5 ; [+86]
      363 GETIMPORT                        R5 K43 [next]
      365 GETUPVAL                         R6 3
      366 CALL                             R5 1 1
      367 JUMPIFNOT                        R5 ; [+81]
      368 GETUPVAL                         R5 0
      369 GETTABLEKS                       R5 R5 K10 ["id"]
      371 JUMPIFEQKS                       R5 K16 ["Triangles"] ; [+6]
      373 GETUPVAL                         R5 0
      374 GETTABLEKS                       R5 R5 K10 ["id"]
      376 JUMPIFNOTEQKS                    R5 K24 ["SceneGeometry"] ; [+29]
      378 GETUPVAL                         R5 4
      379 GETUPVAL                         R6 3
      380 GETUPVAL                         R7 5
      381 CALL                             R5 2 2
      382 GETUPVAL                         R7 2
      383 LOADK                            R9 K12 ["SummaryPane"]
      384 LOADK                            R10 K44 ["SelectedSceneTriangles"]
      385 DUPTABLE                         R11 K46 [{"triangles", "drawcalls", "summary"}]
      386 GETIMPORT                        R12 K8 [string.format]
      388 LOADK                            R13 K9 ["%d"]
      389 MOVE                             R14 R5
      390 CALL                             R12 2 1
      391 SETTABLEKS                       R12 R11 K19 ["triangles"]
      393 GETIMPORT                        R12 K8 [string.format]
      395 LOADK                            R13 K9 ["%d"]
      396 MOVE                             R14 R6
      397 CALL                             R12 2 1
      398 SETTABLEKS                       R12 R11 K21 ["drawcalls"]
      400 SETTABLEKS                       R4 R11 K45 ["summary"]
      402 NAMECALL                         R7 R7 K15 ["getText"]
      404 CALL                             R7 4 -1
      405 RETURN                           R7 -1
      406 GETUPVAL                         R5 6
      407 GETUPVAL                         R6 3
      408 GETUPVAL                         R7 5
      409 CALL                             R5 2 2
      410 LOADN                            R7 0
      411 JUMPIFNOTLT                      R7 R6 ; [+37]
      413 LOADNIL                          R7
      414 GETUPVAL                         R8 0
      415 GETTABLEKS                       R8 R8 K4 ["valueFormat"]
      417 JUMPIFNOTEQKS                    R8 K5 ["memory"] ; [+6]
      419 GETUPVAL                         R8 1
      420 MOVE                             R9 R5
      421 CALL                             R8 1 1
      422 MOVE                             R7 R8
      423 JUMP                             ; [+6]
      424 GETIMPORT                        R8 K8 [string.format]
      426 LOADK                            R9 K9 ["%d"]
      427 MOVE                             R10 R5
      428 CALL                             R8 2 1
      429 MOVE                             R7 R8
      430 GETUPVAL                         R8 2
      431 LOADK                            R10 K12 ["SummaryPane"]
      432 LOADK                            R11 K47 ["SelectedItemsPrefix"]
      433 DUPTABLE                         R12 K49 [{"selected", "count", "summary"}]
      434 SETTABLEKS                       R7 R12 K48 ["selected"]
      436 GETIMPORT                        R13 K8 [string.format]
      438 LOADK                            R14 K9 ["%d"]
      439 MOVE                             R15 R6
      440 CALL                             R13 2 1
      441 SETTABLEKS                       R13 R12 K1 ["count"]
      443 SETTABLEKS                       R4 R12 K45 ["summary"]
      445 NAMECALL                         R8 R8 K15 ["getText"]
      447 CALL                             R8 4 -1
      448 RETURN                           R8 -1
      449 RETURN                           R4 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["queryInfo"]
        2 GETTABLEKS                       R2 R0 K1 ["query"]
        4 GETTABLEKS                       R3 R0 K2 ["selectedIdsHash"]
        6 GETTABLEKS                       R4 R0 K3 ["localization"]
        8 JUMPIFNOT                        R1 ; [+1]
        9 JUMPIF                           R2 ; [+2]
       10 LOADNIL                          R5
       11 RETURN                           R5 1
       12 GETTABLEKS                       R5 R2 K4 ["getNodesObservable"]
       14 CALL                             R5 0 1
       15 GETTABLEKS                       R6 R2 K5 ["getTotalCountObservable"]
       17 CALL                             R6 0 1
       18 GETTABLEKS                       R7 R5 K6 ["getBinding"]
       20 CALL                             R7 0 1
       21 GETTABLEKS                       R8 R6 K6 ["getBinding"]
       23 CALL                             R8 0 1
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K7 ["joinBindings"]
       27 DUPTABLE                         R10 K10 [{"root", "count"}]
       28 SETTABLEKS                       R7 R10 K8 ["root"]
       30 SETTABLEKS                       R8 R10 K9 ["count"]
       32 CALL                             R9 1 1
       33 NEWCLOSURE                       R11 P0
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U3
       41 NAMECALL                         R9 R9 K11 ["map"]
       43 CALL                             R9 2 1
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K12 ["createElement"]
       47 LOADK                            R11 K13 ["Frame"]
       48 NEWTABLE                         R12 8 0
       50 GETIMPORT                        R13 K16 [UDim2.new]
       52 LOADN                            R14 1
       53 LOADN                            R15 0
       54 LOADN                            R16 0
       55 LOADN                            R17 34
       56 CALL                             R13 4 1
       57 SETTABLEKS                       R13 R12 K17 ["Size"]
       59 LOADN                            R13 0
       60 SETTABLEKS                       R13 R12 K18 ["BorderSizePixel"]
       62 GETTABLEKS                       R14 R0 K20 ["ZIndex"]
       64 ORK                              R13 R14 K19 [1]
       65 SETTABLEKS                       R13 R12 K20 ["ZIndex"]
       67 GETTABLEKS                       R13 R0 K21 ["LayoutOrder"]
       69 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R13 R13 K22 ["Tag"]
       74 LOADK                            R14 K23 ["SceneAnalysis-SummaryBar"]
       75 SETTABLE                         R14 R12 R13
       76 DUPTABLE                         R13 K26 [{"Padding", "TextLabel"}]
       77 GETUPVAL                         R14 0
       78 GETTABLEKS                       R14 R14 K12 ["createElement"]
       80 LOADK                            R15 K27 ["UIPadding"]
       81 DUPTABLE                         R16 K30 [{"PaddingLeft", "PaddingRight"}]
       82 GETIMPORT                        R17 K32 [UDim.new]
       84 LOADN                            R18 0
       85 LOADN                            R19 10
       86 CALL                             R17 2 1
       87 SETTABLEKS                       R17 R16 K28 ["PaddingLeft"]
       89 GETIMPORT                        R17 K32 [UDim.new]
       91 LOADN                            R18 0
       92 LOADN                            R19 10
       93 CALL                             R17 2 1
       94 SETTABLEKS                       R17 R16 K29 ["PaddingRight"]
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K24 ["Padding"]
       99 GETUPVAL                         R14 0
      100 GETTABLEKS                       R14 R14 K12 ["createElement"]
      102 LOADK                            R15 K25 ["TextLabel"]
      103 NEWTABLE                         R16 8 0
      105 GETIMPORT                        R17 K34 [UDim2.fromScale]
      107 LOADN                            R18 1
      108 LOADN                            R19 1
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K17 ["Size"]
      112 LOADN                            R17 1
      113 SETTABLEKS                       R17 R16 K35 ["BackgroundTransparency"]
      115 GETIMPORT                        R17 K39 [Enum.TextXAlignment.Left]
      117 SETTABLEKS                       R17 R16 K37 ["TextXAlignment"]
      119 GETIMPORT                        R17 K42 [Enum.TextYAlignment.Center]
      121 SETTABLEKS                       R17 R16 K40 ["TextYAlignment"]
      123 LOADN                            R17 18
      124 SETTABLEKS                       R17 R16 K43 ["TextSize"]
      126 GETUPVAL                         R17 0
      127 GETTABLEKS                       R17 R17 K22 ["Tag"]
      129 LOADK                            R18 K44 ["SceneAnalysis-StandardText"]
      130 SETTABLE                         R18 R16 R17
      131 SETTABLEKS                       R9 R16 K45 ["Text"]
      133 CALL                             R14 2 1
      134 SETTABLEKS                       R14 R13 K25 ["TextLabel"]
      136 CALL                             R10 3 1
      137 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["formatSize"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 DUPCLOSURE                       R4 K12 [PROTO_1]
       25 DUPCLOSURE                       R5 K13 [PROTO_4]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 RETURN                           R5 1
