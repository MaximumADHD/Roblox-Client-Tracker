PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R0 K1 ["generation"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["isInProgress"]
       13 MOVE                             R5 R3
       14 CALL                             R4 1 1
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R8 R3 K4 ["status"]
       19 GETTABLE                         R6 R7 R8
       20 ORK                              R5 R6 K3 [""]
       21 JUMP                             ; [+1]
       22 LOADK                            R5 K3 [""]
       23 JUMPIFNOT                        R3 ; [+15]
       24 GETTABLEKS                       R6 R3 K5 ["errorMessage"]
       26 JUMPIF                           R6 ; [+13]
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R8 R3 K4 ["status"]
       30 GETTABLE                         R6 R7 R8
       31 JUMPIF                           R6 ; [+8]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R8 R3 K4 ["status"]
       35 GETTABLE                         R6 R7 R8
       36 JUMPIF                           R6 ; [+3]
       37 LOADK                            R6 K3 [""]
       38 JUMP                             ; [+1]
       39 LOADK                            R6 K3 [""]
       40 GETUPVAL                         R7 4
       41 GETTABLEKS                       R7 R7 K6 ["createElement"]
       43 GETUPVAL                         R8 5
       44 GETTABLEKS                       R8 R8 K7 ["View"]
       46 DUPTABLE                         R9 K11 [{["tag"] = "col gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
       47 GETTABLEKS                       R10 R0 K10 ["LayoutOrder"]
       49 SETTABLEKS                       R10 R9 K10 ["LayoutOrder"]
       51 DUPTABLE                         R10 K14 [{"Status", "Columns"}]
       52 GETUPVAL                         R11 4
       53 GETTABLEKS                       R11 R11 K6 ["createElement"]
       55 GETUPVAL                         R12 5
       56 GETTABLEKS                       R12 R12 K7 ["View"]
       58 DUPTABLE                         R13 K16 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"]}]
       59 MOVE                             R14 R1
       60 CALL                             R14 0 1
       61 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
       63 DUPTABLE                         R14 K19 [{"Spinner", "Text"}]
       64 JUMPIFNOT                        R4 ; [+22]
       65 GETUPVAL                         R15 4
       66 GETTABLEKS                       R15 R15 K6 ["createElement"]
       68 GETUPVAL                         R16 5
       69 GETTABLEKS                       R16 R16 K20 ["Loading"]
       71 DUPTABLE                         R17 K22 [{"size", "LayoutOrder"}]
       72 GETUPVAL                         R18 5
       73 GETTABLEKS                       R18 R18 K23 ["Enums"]
       75 GETTABLEKS                       R18 R18 K24 ["IconSize"]
       77 GETTABLEKS                       R18 R18 K25 ["Small"]
       79 SETTABLEKS                       R18 R17 K21 ["size"]
       81 MOVE                             R18 R1
       82 CALL                             R18 0 1
       83 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
       85 CALL                             R15 2 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R15
       88 SETTABLEKS                       R15 R14 K17 ["Spinner"]
       90 GETUPVAL                         R15 4
       91 GETTABLEKS                       R15 R15 K6 ["createElement"]
       93 GETUPVAL                         R16 5
       94 GETTABLEKS                       R16 R16 K18 ["Text"]
       96 DUPTABLE                         R17 K27 [{["Text"], ["tag"] = "auto-xy text-body-small content-emphasis", ["LayoutOrder"]}]
       97 SETTABLEKS                       R5 R17 K18 ["Text"]
       99 MOVE                             R18 R1
      100 CALL                             R18 0 1
      101 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K18 ["Text"]
      106 CALL                             R11 3 1
      107 SETTABLEKS                       R11 R10 K12 ["Status"]
      109 GETUPVAL                         R11 4
      110 GETTABLEKS                       R11 R11 K6 ["createElement"]
      112 GETUPVAL                         R12 5
      113 GETTABLEKS                       R12 R12 K7 ["View"]
      115 DUPTABLE                         R13 K29 [{["tag"] = "row gap-medium size-full-0 auto-y", ["LayoutOrder"]}]
      116 MOVE                             R14 R1
      117 CALL                             R14 0 1
      118 SETTABLEKS                       R14 R13 K10 ["LayoutOrder"]
      120 DUPTABLE                         R14 K32 [{"Inputs", "Output"}]
      121 GETUPVAL                         R15 4
      122 GETTABLEKS                       R15 R15 K6 ["createElement"]
      124 GETUPVAL                         R16 5
      125 GETTABLEKS                       R16 R16 K7 ["View"]
      127 DUPTABLE                         R17 K34 [{["tag"] = "col fill gap-small auto-y", ["LayoutOrder"]}]
      128 MOVE                             R18 R1
      129 CALL                             R18 0 1
      130 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      132 DUPTABLE                         R18 K39 [{"Title", "Image", "Prompt", "Details"}]
      133 GETUPVAL                         R19 4
      134 GETTABLEKS                       R19 R19 K6 ["createElement"]
      136 GETUPVAL                         R20 5
      137 GETTABLEKS                       R20 R20 K18 ["Text"]
      139 DUPTABLE                         R21 K41 [{["Text"] = "Inputs", ["tag"] = "auto-xy text-title-small content-emphasis", ["LayoutOrder"]}]
      140 MOVE                             R22 R1
      141 CALL                             R22 0 1
      142 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      144 CALL                             R19 2 1
      145 SETTABLEKS                       R19 R18 K35 ["Title"]
      147 GETUPVAL                         R19 4
      148 GETTABLEKS                       R19 R19 K6 ["createElement"]
      150 GETUPVAL                         R20 5
      151 GETTABLEKS                       R20 R20 K7 ["View"]
      153 DUPTABLE                         R21 K43 [{["tag"] = "size-2000-2000 radius-medium bg-surface-200", ["LayoutOrder"]}]
      154 MOVE                             R22 R1
      155 CALL                             R22 0 1
      156 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      158 DUPTABLE                         R22 K44 [{"Image"}]
      159 GETUPVAL                         R23 4
      160 GETTABLEKS                       R23 R23 K6 ["createElement"]
      162 GETUPVAL                         R24 5
      163 GETTABLEKS                       R24 R24 K36 ["Image"]
      165 DUPTABLE                         R25 K47 [{["Image"], ["ScaleType"], ["tag"] = "size-full radius-medium"}]
      166 JUMPIFNOT                        R3 ; [+3]
      167 GETTABLEKS                       R26 R3 K48 ["referenceImage"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R26
      171 SETTABLEKS                       R26 R25 K36 ["Image"]
      173 GETIMPORT                        R26 K51 [Enum.ScaleType.Fit]
      175 SETTABLEKS                       R26 R25 K45 ["ScaleType"]
      177 CALL                             R23 2 1
      178 SETTABLEKS                       R23 R22 K36 ["Image"]
      180 CALL                             R19 3 1
      181 SETTABLEKS                       R19 R18 K36 ["Image"]
      183 GETUPVAL                         R19 4
      184 GETTABLEKS                       R19 R19 K6 ["createElement"]
      186 GETUPVAL                         R20 5
      187 GETTABLEKS                       R20 R20 K18 ["Text"]
      189 DUPTABLE                         R21 K53 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-emphasis", ["LayoutOrder"]}]
      190 GETTABLEKS                       R22 R0 K54 ["prompt"]
      192 SETTABLEKS                       R22 R21 K18 ["Text"]
      194 MOVE                             R22 R1
      195 CALL                             R22 0 1
      196 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      198 CALL                             R19 2 1
      199 SETTABLEKS                       R19 R18 K37 ["Prompt"]
      201 GETUPVAL                         R19 4
      202 GETTABLEKS                       R19 R19 K6 ["createElement"]
      204 GETUPVAL                         R20 5
      205 GETTABLEKS                       R20 R20 K18 ["Text"]
      207 DUPTABLE                         R21 K56 [{["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["LayoutOrder"]}]
      208 GETTABLEKS                       R22 R0 K57 ["modelName"]
      210 SETTABLEKS                       R22 R21 K18 ["Text"]
      212 MOVE                             R22 R1
      213 CALL                             R22 0 1
      214 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K38 ["Details"]
      219 CALL                             R15 3 1
      220 SETTABLEKS                       R15 R14 K30 ["Inputs"]
      222 GETUPVAL                         R15 4
      223 GETTABLEKS                       R15 R15 K6 ["createElement"]
      225 GETUPVAL                         R16 5
      226 GETTABLEKS                       R16 R16 K7 ["View"]
      228 DUPTABLE                         R17 K34 [{["tag"] = "col fill gap-small auto-y", ["LayoutOrder"]}]
      229 MOVE                             R18 R1
      230 CALL                             R18 0 1
      231 SETTABLEKS                       R18 R17 K10 ["LayoutOrder"]
      233 DUPTABLE                         R18 K60 [{"Header", "Preview"}]
      234 GETUPVAL                         R19 4
      235 GETTABLEKS                       R19 R19 K6 ["createElement"]
      237 GETUPVAL                         R20 5
      238 GETTABLEKS                       R20 R20 K7 ["View"]
      240 DUPTABLE                         R21 K62 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
      241 MOVE                             R22 R1
      242 CALL                             R22 0 1
      243 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      245 DUPTABLE                         R22 K64 [{"Title", "Spacer", "Status"}]
      246 GETUPVAL                         R23 4
      247 GETTABLEKS                       R23 R23 K6 ["createElement"]
      249 GETUPVAL                         R24 5
      250 GETTABLEKS                       R24 R24 K18 ["Text"]
      252 DUPTABLE                         R25 K65 [{["Text"] = "Output", ["tag"] = "auto-xy text-title-small content-emphasis", ["LayoutOrder"]}]
      253 MOVE                             R26 R1
      254 CALL                             R26 0 1
      255 SETTABLEKS                       R26 R25 K10 ["LayoutOrder"]
      257 CALL                             R23 2 1
      258 SETTABLEKS                       R23 R22 K35 ["Title"]
      260 GETUPVAL                         R23 4
      261 GETTABLEKS                       R23 R23 K6 ["createElement"]
      263 GETUPVAL                         R24 5
      264 GETTABLEKS                       R24 R24 K7 ["View"]
      266 DUPTABLE                         R25 K67 [{["tag"] = "fill", ["LayoutOrder"]}]
      267 MOVE                             R26 R1
      268 CALL                             R26 0 1
      269 SETTABLEKS                       R26 R25 K10 ["LayoutOrder"]
      271 CALL                             R23 2 1
      272 SETTABLEKS                       R23 R22 K63 ["Spacer"]
      274 GETUPVAL                         R23 4
      275 GETTABLEKS                       R23 R23 K6 ["createElement"]
      277 GETUPVAL                         R24 5
      278 GETTABLEKS                       R24 R24 K18 ["Text"]
      280 DUPTABLE                         R25 K69 [{["Text"], ["tag"] = "auto-xy text-body-small content-muted", ["LayoutOrder"]}]
      281 SETTABLEKS                       R5 R25 K18 ["Text"]
      283 MOVE                             R26 R1
      284 CALL                             R26 0 1
      285 SETTABLEKS                       R26 R25 K10 ["LayoutOrder"]
      287 CALL                             R23 2 1
      288 SETTABLEKS                       R23 R22 K12 ["Status"]
      290 CALL                             R19 3 1
      291 SETTABLEKS                       R19 R18 K58 ["Header"]
      293 GETUPVAL                         R19 4
      294 GETTABLEKS                       R19 R19 K6 ["createElement"]
      296 GETUPVAL                         R20 5
      297 GETTABLEKS                       R20 R20 K7 ["View"]
      299 DUPTABLE                         R21 K43 [{["tag"] = "size-2000-2000 radius-medium bg-surface-200", ["LayoutOrder"]}]
      300 MOVE                             R22 R1
      301 CALL                             R22 0 1
      302 SETTABLEKS                       R22 R21 K10 ["LayoutOrder"]
      304 DUPTABLE                         R22 K71 [{"Skeleton", "Text"}]
      305 JUMPIFNOT                        R4 ; [+22]
      306 GETUPVAL                         R23 4
      307 GETTABLEKS                       R23 R23 K6 ["createElement"]
      309 GETUPVAL                         R24 5
      310 GETTABLEKS                       R24 R24 K70 ["Skeleton"]
      312 DUPTABLE                         R25 K75 [{["tag"] = "size-full", ["radius"], ["ZIndex"]}]
      313 GETUPVAL                         R26 5
      314 GETTABLEKS                       R26 R26 K23 ["Enums"]
      316 GETTABLEKS                       R26 R26 K76 ["Radius"]
      318 GETTABLEKS                       R26 R26 K77 ["Medium"]
      320 SETTABLEKS                       R26 R25 K73 ["radius"]
      322 MOVE                             R26 R2
      323 CALL                             R26 0 1
      324 SETTABLEKS                       R26 R25 K74 ["ZIndex"]
      326 CALL                             R23 2 1
      327 JUMP                             ; [+1]
      328 LOADNIL                          R23
      329 SETTABLEKS                       R23 R22 K70 ["Skeleton"]
      331 GETUPVAL                         R23 4
      332 GETTABLEKS                       R23 R23 K6 ["createElement"]
      334 GETUPVAL                         R24 5
      335 GETTABLEKS                       R24 R24 K18 ["Text"]
      337 DUPTABLE                         R25 K79 [{["Text"], ["tag"] = "size-full-full text-body-small text-wrap content-default", ["ZIndex"]}]
      338 SETTABLEKS                       R6 R25 K18 ["Text"]
      340 MOVE                             R26 R2
      341 CALL                             R26 0 1
      342 SETTABLEKS                       R26 R25 K74 ["ZIndex"]
      344 CALL                             R23 2 1
      345 SETTABLEKS                       R23 R22 K18 ["Text"]
      347 CALL                             R19 3 1
      348 SETTABLEKS                       R19 R18 K59 ["Preview"]
      350 CALL                             R15 3 1
      351 SETTABLEKS                       R15 R14 K31 ["Output"]
      353 CALL                             R11 3 1
      354 SETTABLEKS                       R11 R10 K13 ["Columns"]
      356 CALL                             R7 3 -1
      357 RETURN                           R7 -1

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
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Util"]
       41 GETTABLEKS                       R6 R6 K13 ["MeshGenViewModel"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K14 ["Gen3dTypes"]
       46 GETTABLEKS                       R6 R6 K15 ["Enums"]
       48 GETTABLEKS                       R6 R6 K16 ["PreviewState"]
       50 NEWTABLE                         R7 8 0
       52 GETTABLEKS                       R8 R6 K17 ["Generating"]
       54 LOADK                            R9 K18 ["Generating..."]
       55 SETTABLE                         R9 R7 R8
       56 GETTABLEKS                       R8 R6 K19 ["GenerationFailed"]
       58 LOADK                            R9 K20 ["Generation failed"]
       59 SETTABLE                         R9 R7 R8
       60 GETTABLEKS                       R8 R6 K21 ["Materializing"]
       62 LOADK                            R9 K22 ["Placing..."]
       63 SETTABLE                         R9 R7 R8
       64 GETTABLEKS                       R8 R6 K23 ["Materialized"]
       66 LOADK                            R9 K24 ["Placed"]
       67 SETTABLE                         R9 R7 R8
       68 GETTABLEKS                       R8 R6 K25 ["MaterializeFailed"]
       70 LOADK                            R9 K26 ["Placing failed"]
       71 SETTABLE                         R9 R7 R8
       72 NEWTABLE                         R8 4 0
       74 GETTABLEKS                       R9 R6 K17 ["Generating"]
       76 LOADK                            R10 K27 ["Generating mesh..."]
       77 SETTABLE                         R10 R8 R9
       78 GETTABLEKS                       R9 R6 K21 ["Materializing"]
       80 LOADK                            R10 K28 ["Placing mesh in the workspace..."]
       81 SETTABLE                         R10 R8 R9
       82 GETTABLEKS                       R9 R6 K23 ["Materialized"]
       84 LOADK                            R10 K29 ["Mesh placed in the workspace"]
       85 SETTABLE                         R10 R8 R9
       86 DUPCLOSURE                       R9 K30 [PROTO_0]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R1
       93 GETTABLEKS                       R10 R3 K31 ["memo"]
       95 MOVE                             R11 R9
       96 CALL                             R10 1 -1
       97 RETURN                           R10 -1
