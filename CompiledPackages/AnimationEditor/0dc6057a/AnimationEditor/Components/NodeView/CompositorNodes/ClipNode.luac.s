PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["GetAnimationClipAsync"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 JUMPIF                           R3 ; [+3]
       13 GETUPVAL                         R3 3
       14 JUMPIF                           R3 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       19 LOADK                            R4 K2 ["AnimationId"]
       20 MOVE                             R5 R1
       21 CALL                             R3 2 0
       22 GETUPVAL                         R3 2
       23 CALL                             R3 0 1
       24 JUMPIFNOT                        R3 ; [+34]
       25 JUMPIFNOT                        R2 ; [+43]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       29 LOADK                            R4 K3 ["Trim"]
       30 LOADB                            R5 0
       31 CALL                             R3 2 0
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       35 LOADK                            R4 K4 ["TrimStart"]
       36 LOADN                            R5 0
       37 CALL                             R3 2 0
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       41 LOADK                            R4 K5 ["TrimEnd"]
       42 GETTABLEKS                       R5 R2 K6 ["Length"]
       44 CALL                             R3 2 0
       45 GETTABLEKS                       R3 R2 K7 ["Loop"]
       47 JUMPIFNOT                        R3 ; [+7]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       51 LOADK                            R4 K8 ["PlayMode"]
       52 GETIMPORT                        R5 K11 [Enum.AnimationNodePlayMode.Loop]
       54 CALL                             R3 2 0
       55 GETUPVAL                         R3 4
       56 MOVE                             R4 R2
       57 CALL                             R3 1 0
       58 RETURN                           R0 0
       59 GETTABLEKS                       R3 R2 K7 ["Loop"]
       61 JUMPIFNOT                        R3 ; [+7]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       65 LOADK                            R4 K8 ["PlayMode"]
       66 GETIMPORT                        R5 K11 [Enum.AnimationNodePlayMode.Loop]
       68 CALL                             R3 2 0
       69 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        8 LOADK                            R3 K1 ["Trim"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 JUMPIF                           R1 ; [0]
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K1 ["PropertyLookup"]
        3 GETTABLEKS                       R0 R1 K0 ["AnimationId"]
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K1 ["PropertyLookup"]
       15 GETTABLEKS                       R3 R4 K0 ["AnimationId"]
       17 NAMECALL                         R1 R1 K2 ["GetAnimationClipAsync"]
       19 CALL                             R1 2 -1
       20 CALL                             R0 -1 0
       21 NEWCLOSURE                       R0 P0
       22 CAPTURE                          UPVAL U1
       23 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["join"]
        3 DUPTABLE                         R1 K4 [{"Duration", "EndTime", "StartTime"}]
        4 GETUPVAL                         R3 1
        5 JUMPIFNOT                        R3 ; [+4]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K5 ["Length"]
        9 JUMP                             ; [+1]
       10 LOADN                            R2 1
       11 SETTABLEKS                       R2 R1 K1 ["Duration"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K7 ["PropertyLookup"]
       16 GETTABLEKS                       R3 R4 K6 ["Trim"]
       18 JUMPIFNOT                        R3 ; [+6]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R3 R4 K7 ["PropertyLookup"]
       22 GETTABLEKS                       R2 R3 K8 ["TrimEnd"]
       24 JUMPIF                           R2 ; [+1]
       25 LOADNIL                          R2
       26 SETTABLEKS                       R2 R1 K2 ["EndTime"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K7 ["PropertyLookup"]
       31 GETTABLEKS                       R3 R4 K6 ["Trim"]
       33 JUMPIFNOT                        R3 ; [+6]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R3 R4 K7 ["PropertyLookup"]
       37 GETTABLEKS                       R2 R3 K9 ["TrimStart"]
       39 JUMPIF                           R2 ; [+1]
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R1 K3 ["StartTime"]
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R3 R4 K11 ["StateLookup"]
       46 GETTABLEKS                       R2 R3 K10 ["TimeProgress"]
       48 CALL                             R0 2 -1
       49 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R5 0 2
       16 MOVE                             R6 R2
       17 GETTABLEKS                       R7 R0 K2 ["OnPropertyChanged"]
       19 SETLIST                          R5 R6 2 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R6 0 1
       29 GETTABLEKS                       R7 R0 K2 ["OnPropertyChanged"]
       31 SETLIST                          R6 R7 1 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 2
       35 CALL                             R5 0 1
       36 JUMPIFNOT                        R5 ; [+17]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K3 ["useEffect"]
       40 NEWCLOSURE                       R6 P2
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U1
       44 NEWTABLE                         R7 0 2
       46 GETTABLEKS                       R9 R0 K5 ["PropertyLookup"]
       48 GETTABLEKS                       R8 R9 K4 ["AnimationId"]
       50 MOVE                             R9 R2
       51 SETLIST                          R7 R8 2 [1]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R5 R6 K6 ["createPropertyHelpers"]
       57 MOVE                             R6 R0
       58 CALL                             R5 1 1
       59 GETUPVAL                         R7 2
       60 CALL                             R7 0 1
       61 JUMPIFNOT                        R7 ; [+30]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R6 R7 K7 ["useMemo"]
       65 NEWCLOSURE                       R7 P3
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R8 0 5
       71 MOVE                             R9 R1
       72 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
       74 GETTABLEKS                       R10 R11 K8 ["Trim"]
       76 GETTABLEKS                       R12 R0 K5 ["PropertyLookup"]
       78 GETTABLEKS                       R11 R12 K9 ["TrimStart"]
       80 GETTABLEKS                       R13 R0 K5 ["PropertyLookup"]
       82 GETTABLEKS                       R12 R13 K10 ["TrimEnd"]
       84 GETTABLEKS                       R14 R0 K12 ["StateLookup"]
       86 GETTABLEKS                       R13 R14 K11 ["TimeProgress"]
       88 SETLIST                          R8 R9 5 [1]
       90 CALL                             R6 2 1
       91 JUMP                             ; [+38]
       92 GETUPVAL                         R7 4
       93 GETTABLEKS                       R6 R7 K13 ["join"]
       95 DUPTABLE                         R7 K17 [{"Duration", "EndTime", "StartTime"}]
       96 LOADN                            R8 5
       97 SETTABLEKS                       R8 R7 K14 ["Duration"]
       99 GETTABLEKS                       R10 R0 K5 ["PropertyLookup"]
      101 GETTABLEKS                       R9 R10 K8 ["Trim"]
      103 JUMPIFNOT                        R9 ; [+5]
      104 GETTABLEKS                       R9 R0 K5 ["PropertyLookup"]
      106 GETTABLEKS                       R8 R9 K10 ["TrimEnd"]
      108 JUMPIF                           R8 ; [+1]
      109 LOADNIL                          R8
      110 SETTABLEKS                       R8 R7 K15 ["EndTime"]
      112 GETTABLEKS                       R10 R0 K5 ["PropertyLookup"]
      114 GETTABLEKS                       R9 R10 K8 ["Trim"]
      116 JUMPIFNOT                        R9 ; [+5]
      117 GETTABLEKS                       R9 R0 K5 ["PropertyLookup"]
      119 GETTABLEKS                       R8 R9 K9 ["TrimStart"]
      121 JUMPIF                           R8 ; [+1]
      122 LOADNIL                          R8
      123 SETTABLEKS                       R8 R7 K16 ["StartTime"]
      125 GETTABLEKS                       R9 R0 K12 ["StateLookup"]
      127 GETTABLEKS                       R8 R9 K11 ["TimeProgress"]
      129 CALL                             R6 2 1
      130 DUPTABLE                         R7 K26 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd"}]
      131 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      133 DUPTABLE                         R9 K32 [{"Name", "Type", "Value", "ShowWhenCollapsed"}]
      134 LOADK                            R10 K11 ["TimeProgress"]
      135 SETTABLEKS                       R10 R9 K28 ["Name"]
      137 LOADK                            R10 K11 ["TimeProgress"]
      138 SETTABLEKS                       R10 R9 K29 ["Type"]
      140 SETTABLEKS                       R6 R9 K30 ["Value"]
      142 LOADB                            R10 1
      143 SETTABLEKS                       R10 R9 K31 ["ShowWhenCollapsed"]
      145 CALL                             R8 1 1
      146 SETTABLEKS                       R8 R7 K18 ["Property_TimeProgress"]
      148 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      150 DUPTABLE                         R9 K36 [{"Name", "Type", "Value", "DefaultValue", "OnChanged", "HidePin"}]
      151 LOADK                            R10 K4 ["AnimationId"]
      152 SETTABLEKS                       R10 R9 K28 ["Name"]
      154 LOADK                            R10 K37 ["Animation"]
      155 SETTABLEKS                       R10 R9 K29 ["Type"]
      157 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      159 GETTABLEKS                       R10 R11 K4 ["AnimationId"]
      161 SETTABLEKS                       R10 R9 K30 ["Value"]
      163 LOADK                            R10 K38 [""]
      164 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      166 SETTABLEKS                       R3 R9 K34 ["OnChanged"]
      168 LOADB                            R10 1
      169 SETTABLEKS                       R10 R9 K35 ["HidePin"]
      171 CALL                             R8 1 1
      172 SETTABLEKS                       R8 R7 K19 ["Property_AnimationId"]
      174 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      176 DUPTABLE                         R9 K39 [{"Name", "Type", "Value", "DefaultValue"}]
      177 LOADK                            R10 K40 ["PlayMode"]
      178 SETTABLEKS                       R10 R9 K28 ["Name"]
      180 LOADK                            R10 K41 ["Enum.AnimationNodePlayMode"]
      181 SETTABLEKS                       R10 R9 K29 ["Type"]
      183 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      185 GETTABLEKS                       R10 R11 K40 ["PlayMode"]
      187 SETTABLEKS                       R10 R9 K30 ["Value"]
      189 GETIMPORT                        R10 K45 [Enum.AnimationNodePlayMode.Loop]
      191 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      193 CALL                             R8 1 1
      194 SETTABLEKS                       R8 R7 K20 ["Property_Playmode"]
      196 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      198 DUPTABLE                         R9 K39 [{"Name", "Type", "Value", "DefaultValue"}]
      199 LOADK                            R10 K46 ["Reverse"]
      200 SETTABLEKS                       R10 R9 K28 ["Name"]
      202 LOADK                            R10 K47 ["Boolean"]
      203 SETTABLEKS                       R10 R9 K29 ["Type"]
      205 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      207 GETTABLEKS                       R10 R11 K46 ["Reverse"]
      209 SETTABLEKS                       R10 R9 K30 ["Value"]
      211 LOADB                            R10 0
      212 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      214 CALL                             R8 1 1
      215 SETTABLEKS                       R8 R7 K21 ["Property_Reverse"]
      217 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      219 DUPTABLE                         R9 K50 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
      220 LOADK                            R10 K51 ["Speed"]
      221 SETTABLEKS                       R10 R9 K28 ["Name"]
      223 LOADK                            R10 K52 ["Number"]
      224 SETTABLEKS                       R10 R9 K29 ["Type"]
      226 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      228 GETTABLEKS                       R10 R11 K51 ["Speed"]
      230 SETTABLEKS                       R10 R9 K30 ["Value"]
      232 LOADN                            R10 1
      233 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      235 GETUPVAL                         R11 5
      236 CALL                             R11 0 1
      237 JUMPIFNOT                        R11 ; [+2]
      238 LOADNIL                          R10
      239 JUMP                             ; [+1]
      240 LOADK                            R10 K53 [0.1]
      241 SETTABLEKS                       R10 R9 K48 ["Step"]
      243 GETUPVAL                         R11 5
      244 CALL                             R11 0 1
      245 JUMPIFNOT                        R11 ; [+2]
      246 LOADNIL                          R10
      247 JUMP                             ; [+5]
      248 GETUPVAL                         R12 6
      249 GETTABLEKS                       R11 R12 K54 ["NUMBER_PRECISION"]
      251 GETTABLEKS                       R10 R11 K55 ["Float"]
      253 SETTABLEKS                       R10 R9 K49 ["Precision"]
      255 CALL                             R8 1 1
      256 SETTABLEKS                       R8 R7 K22 ["Property_Speed"]
      258 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      260 DUPTABLE                         R9 K56 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
      261 LOADK                            R10 K8 ["Trim"]
      262 SETTABLEKS                       R10 R9 K28 ["Name"]
      264 LOADK                            R10 K47 ["Boolean"]
      265 SETTABLEKS                       R10 R9 K29 ["Type"]
      267 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      269 GETTABLEKS                       R10 R11 K8 ["Trim"]
      271 SETTABLEKS                       R10 R9 K30 ["Value"]
      273 LOADB                            R10 0
      274 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      276 GETUPVAL                         R11 2
      277 CALL                             R11 0 1
      278 JUMPIFNOT                        R11 ; [+2]
      279 LOADNIL                          R10
      280 JUMP                             ; [+1]
      281 MOVE                             R10 R4
      282 SETTABLEKS                       R10 R9 K34 ["OnChanged"]
      284 CALL                             R8 1 1
      285 SETTABLEKS                       R8 R7 K23 ["Property_Trim"]
      287 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      289 DUPTABLE                         R9 K59 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "ExtraProps"}]
      290 LOADK                            R10 K9 ["TrimStart"]
      291 SETTABLEKS                       R10 R9 K28 ["Name"]
      293 LOADK                            R10 K60 ["Timestamp"]
      294 SETTABLEKS                       R10 R9 K29 ["Type"]
      296 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      298 GETTABLEKS                       R10 R11 K9 ["TrimStart"]
      300 SETTABLEKS                       R10 R9 K30 ["Value"]
      302 LOADN                            R10 0
      303 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      305 GETTABLEKS                       R12 R0 K5 ["PropertyLookup"]
      307 GETTABLEKS                       R11 R12 K8 ["Trim"]
      309 NOT                              R10 R11
      310 SETTABLEKS                       R10 R9 K57 ["IsDisabled"]
      312 GETUPVAL                         R11 2
      313 CALL                             R11 0 1
      314 JUMPIFNOT                        R11 ; [+30]
      315 JUMPIFNOT                        R1 ; [+21]
      316 DUPTABLE                         R10 K63 [{"Minimum", "Maximum"}]
      317 LOADN                            R11 0
      318 SETTABLEKS                       R11 R10 K61 ["Minimum"]
      320 GETTABLEKS                       R13 R0 K5 ["PropertyLookup"]
      322 GETTABLEKS                       R12 R13 K10 ["TrimEnd"]
      324 JUMPIF                           R12 ; [+2]
      325 GETTABLEKS                       R12 R1 K64 ["Length"]
      327 GETTABLEKS                       R13 R1 K64 ["Length"]
      329 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
      331 GETIMPORT                        R11 K67 [math.min]
      333 CALL                             R11 2 1
      334 SETTABLEKS                       R11 R10 K62 ["Maximum"]
      336 JUMP                             ; [+9]
      337 DUPTABLE                         R10 K63 [{"Minimum", "Maximum"}]
      338 LOADN                            R11 0
      339 SETTABLEKS                       R11 R10 K61 ["Minimum"]
      341 LOADN                            R11 0
      342 SETTABLEKS                       R11 R10 K62 ["Maximum"]
      344 JUMP                             ; [+1]
      345 LOADNIL                          R10
      346 SETTABLEKS                       R10 R9 K58 ["ExtraProps"]
      348 CALL                             R8 1 1
      349 SETTABLEKS                       R8 R7 K24 ["Property_TrimStart"]
      351 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      353 DUPTABLE                         R9 K59 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "ExtraProps"}]
      354 LOADK                            R10 K10 ["TrimEnd"]
      355 SETTABLEKS                       R10 R9 K28 ["Name"]
      357 LOADK                            R10 K60 ["Timestamp"]
      358 SETTABLEKS                       R10 R9 K29 ["Type"]
      360 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      362 GETTABLEKS                       R10 R11 K10 ["TrimEnd"]
      364 SETTABLEKS                       R10 R9 K30 ["Value"]
      366 LOADN                            R10 0
      367 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      369 GETTABLEKS                       R12 R0 K5 ["PropertyLookup"]
      371 GETTABLEKS                       R11 R12 K8 ["Trim"]
      373 NOT                              R10 R11
      374 SETTABLEKS                       R10 R9 K57 ["IsDisabled"]
      376 GETUPVAL                         R11 2
      377 CALL                             R11 0 1
      378 JUMPIFNOT                        R11 ; [+28]
      379 JUMPIFNOT                        R1 ; [+19]
      380 DUPTABLE                         R10 K63 [{"Minimum", "Maximum"}]
      381 GETTABLEKS                       R14 R0 K5 ["PropertyLookup"]
      383 GETTABLEKS                       R13 R14 K9 ["TrimStart"]
      385 ORK                              R12 R13 K68 [0]
      386 FASTCALL2K                       MATH_MAX R12 K68 ; [+4]
      388 LOADK                            R13 K68 [0]
      389 GETIMPORT                        R11 K70 [math.max]
      391 CALL                             R11 2 1
      392 SETTABLEKS                       R11 R10 K61 ["Minimum"]
      394 GETTABLEKS                       R11 R1 K64 ["Length"]
      396 SETTABLEKS                       R11 R10 K62 ["Maximum"]
      398 JUMP                             ; [+9]
      399 DUPTABLE                         R10 K63 [{"Minimum", "Maximum"}]
      400 LOADN                            R11 0
      401 SETTABLEKS                       R11 R10 K61 ["Minimum"]
      403 LOADN                            R11 0
      404 SETTABLEKS                       R11 R10 K62 ["Maximum"]
      406 JUMP                             ; [+1]
      407 LOADNIL                          R10
      408 SETTABLEKS                       R10 R9 K58 ["ExtraProps"]
      410 CALL                             R8 1 1
      411 SETTABLEKS                       R8 R7 K25 ["Property_TrimEnd"]
      413 GETUPVAL                         R9 0
      414 GETTABLEKS                       R8 R9 K71 ["createElement"]
      416 GETUPVAL                         R9 7
      417 GETTABLEKS                       R10 R5 K72 ["nodeProps"]
      419 DUPTABLE                         R11 K74 [{"OutputPin"}]
      420 GETTABLEKS                       R12 R5 K75 ["outputPin"]
      422 CALL                             R12 0 1
      423 SETTABLEKS                       R12 R11 K73 ["OutputPin"]
      425 CALL                             R10 1 1
      426 MOVE                             R11 R7
      427 CALL                             R8 3 -1
      428 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R8 R1 K13 ["Components"]
       31 GETTABLEKS                       R7 R8 K14 ["NodeView"]
       33 GETTABLEKS                       R6 R7 K15 ["CompositorNodes"]
       35 GETTABLEKS                       R5 R6 K16 ["CompositorNode"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R8 R1 K17 ["Util"]
       42 GETTABLEKS                       R7 R8 K18 ["Nodes"]
       44 GETTABLEKS                       R6 R7 K19 ["CompositorNodeUtils"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R8 R1 K17 ["Util"]
       51 GETTABLEKS                       R7 R8 K20 ["Constants"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R9 R1 K21 ["Flags"]
       58 GETTABLEKS                       R8 R9 K22 ["getFFlagAnimGraphFloatStep003"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R10 R1 K21 ["Flags"]
       65 GETTABLEKS                       R9 R10 K23 ["getFFlagAnimGraphUIClampClipTrim"]
       67 CALL                             R8 1 1
       68 DUPCLOSURE                       R9 K24 [PROTO_5]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R4
       77 RETURN                           R9 1
