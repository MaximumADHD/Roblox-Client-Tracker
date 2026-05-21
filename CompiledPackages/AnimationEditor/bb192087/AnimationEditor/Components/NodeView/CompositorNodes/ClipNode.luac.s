PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["GetAnimationClipAsync"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 JUMPIF                           R3 ; [+2]
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       18 LOADK                            R4 K2 ["AnimationId"]
       19 MOVE                             R5 R1
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 2
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+34]
       24 JUMPIFNOT                        R2 ; [+43]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       28 LOADK                            R4 K3 ["Trim"]
       29 LOADB                            R5 0
       30 CALL                             R3 2 0
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       34 LOADK                            R4 K4 ["TrimStart"]
       35 LOADN                            R5 0
       36 CALL                             R3 2 0
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       40 LOADK                            R4 K5 ["TrimEnd"]
       41 GETTABLEKS                       R5 R2 K6 ["Length"]
       43 CALL                             R3 2 0
       44 GETTABLEKS                       R3 R2 K7 ["Loop"]
       46 JUMPIFNOT                        R3 ; [+7]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       50 LOADK                            R4 K8 ["PlayMode"]
       51 GETIMPORT                        R5 K11 [Enum.AnimationNodePlayMode.Loop]
       53 CALL                             R3 2 0
       54 GETUPVAL                         R3 3
       55 MOVE                             R4 R2
       56 CALL                             R3 1 0
       57 RETURN                           R0 0
       58 GETTABLEKS                       R3 R2 K7 ["Loop"]
       60 JUMPIFNOT                        R3 ; [+7]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       64 LOADK                            R4 K8 ["PlayMode"]
       65 GETIMPORT                        R5 K11 [Enum.AnimationNodePlayMode.Loop]
       67 CALL                             R3 2 0
       68 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K1 ["PropertyLookup"]
        3 GETTABLEKS                       R0 R1 K0 ["AnimationId"]
        5 JUMPIF                           R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K1 ["PropertyLookup"]
       15 GETTABLEKS                       R3 R4 K0 ["AnimationId"]
       17 NAMECALL                         R1 R1 K2 ["GetAnimationClipAsync"]
       19 CALL                             R1 2 -1
       20 CALL                             R0 -1 0
       21 NEWCLOSURE                       R0 P0
       22 CAPTURE                          UPVAL U1
       23 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 DUPTABLE                         R1 K4 [{"Duration", "EndTime", "StartTime"}]
        4 GETUPVAL                         R3 1
        5 JUMPIFNOT                        R3 ; [+4]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K5 ["Length"]
        9 JUMP                             ; [+1]
       10 LOADN                            R2 1
       11 SETTABLEKS                       R2 R1 K1 ["Duration"]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K7 ["PropertyLookup"]
       16 GETTABLEKS                       R3 R4 K6 ["Trim"]
       18 JUMPIFNOT                        R3 ; [+6]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K7 ["PropertyLookup"]
       22 GETTABLEKS                       R2 R3 K8 ["TrimEnd"]
       24 JUMPIF                           R2 ; [+1]
       25 LOADNIL                          R2
       26 SETTABLEKS                       R2 R1 K2 ["EndTime"]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K7 ["PropertyLookup"]
       31 GETTABLEKS                       R3 R4 K6 ["Trim"]
       33 JUMPIFNOT                        R3 ; [+6]
       34 GETUPVAL                         R3 2
       35 GETTABLEKS                       R3 R3 K7 ["PropertyLookup"]
       37 GETTABLEKS                       R2 R3 K9 ["TrimStart"]
       39 JUMPIF                           R2 ; [+1]
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R1 K3 ["StartTime"]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K11 ["StateLookup"]
       46 GETTABLEKS                       R2 R3 K10 ["TimeProgress"]
       48 CALL                             R0 2 -1
       49 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 2
       15 MOVE                             R6 R2
       16 GETTABLEKS                       R7 R0 K2 ["OnPropertyChanged"]
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R6 0 1
       28 GETTABLEKS                       R7 R0 K2 ["OnPropertyChanged"]
       30 SETLIST                          R6 R7 1 [1]
       32 CALL                             R4 2 1
       33 GETUPVAL                         R5 2
       34 CALL                             R5 0 1
       35 JUMPIFNOT                        R5 ; [+17]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       39 NEWCLOSURE                       R6 P2
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U1
       43 NEWTABLE                         R7 0 2
       45 GETTABLEKS                       R9 R0 K5 ["PropertyLookup"]
       47 GETTABLEKS                       R8 R9 K4 ["AnimationId"]
       49 MOVE                             R9 R2
       50 SETLIST                          R7 R8 2 [1]
       52 CALL                             R5 2 0
       53 GETUPVAL                         R5 3
       54 GETTABLEKS                       R5 R5 K6 ["createPropertyHelpers"]
       56 MOVE                             R6 R0
       57 CALL                             R5 1 1
       58 GETUPVAL                         R7 2
       59 CALL                             R7 0 1
       60 JUMPIFNOT                        R7 ; [+30]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       64 NEWCLOSURE                       R7 P3
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R8 0 5
       70 MOVE                             R9 R1
       71 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
       73 GETTABLEKS                       R10 R11 K8 ["Trim"]
       75 GETTABLEKS                       R12 R0 K5 ["PropertyLookup"]
       77 GETTABLEKS                       R11 R12 K9 ["TrimStart"]
       79 GETTABLEKS                       R13 R0 K5 ["PropertyLookup"]
       81 GETTABLEKS                       R12 R13 K10 ["TrimEnd"]
       83 GETTABLEKS                       R14 R0 K12 ["StateLookup"]
       85 GETTABLEKS                       R13 R14 K11 ["TimeProgress"]
       87 SETLIST                          R8 R9 5 [1]
       89 CALL                             R6 2 1
       90 JUMP                             ; [+38]
       91 GETUPVAL                         R6 4
       92 GETTABLEKS                       R6 R6 K13 ["join"]
       94 DUPTABLE                         R7 K17 [{"Duration", "EndTime", "StartTime"}]
       95 LOADN                            R8 5
       96 SETTABLEKS                       R8 R7 K14 ["Duration"]
       98 GETTABLEKS                       R10 R0 K5 ["PropertyLookup"]
      100 GETTABLEKS                       R9 R10 K8 ["Trim"]
      102 JUMPIFNOT                        R9 ; [+5]
      103 GETTABLEKS                       R9 R0 K5 ["PropertyLookup"]
      105 GETTABLEKS                       R8 R9 K10 ["TrimEnd"]
      107 JUMPIF                           R8 ; [+1]
      108 LOADNIL                          R8
      109 SETTABLEKS                       R8 R7 K15 ["EndTime"]
      111 GETTABLEKS                       R10 R0 K5 ["PropertyLookup"]
      113 GETTABLEKS                       R9 R10 K8 ["Trim"]
      115 JUMPIFNOT                        R9 ; [+5]
      116 GETTABLEKS                       R9 R0 K5 ["PropertyLookup"]
      118 GETTABLEKS                       R8 R9 K9 ["TrimStart"]
      120 JUMPIF                           R8 ; [+1]
      121 LOADNIL                          R8
      122 SETTABLEKS                       R8 R7 K16 ["StartTime"]
      124 GETTABLEKS                       R9 R0 K12 ["StateLookup"]
      126 GETTABLEKS                       R8 R9 K11 ["TimeProgress"]
      128 CALL                             R6 2 1
      129 DUPTABLE                         R7 K26 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd"}]
      130 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      132 DUPTABLE                         R9 K32 [{"Name", "Type", "Value", "ShowWhenCollapsed"}]
      133 LOADK                            R10 K11 ["TimeProgress"]
      134 SETTABLEKS                       R10 R9 K28 ["Name"]
      136 LOADK                            R10 K11 ["TimeProgress"]
      137 SETTABLEKS                       R10 R9 K29 ["Type"]
      139 SETTABLEKS                       R6 R9 K30 ["Value"]
      141 LOADB                            R10 1
      142 SETTABLEKS                       R10 R9 K31 ["ShowWhenCollapsed"]
      144 CALL                             R8 1 1
      145 SETTABLEKS                       R8 R7 K18 ["Property_TimeProgress"]
      147 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      149 DUPTABLE                         R9 K36 [{"Name", "Type", "Value", "DefaultValue", "OnChanged", "HidePin"}]
      150 LOADK                            R10 K4 ["AnimationId"]
      151 SETTABLEKS                       R10 R9 K28 ["Name"]
      153 LOADK                            R10 K37 ["Animation"]
      154 SETTABLEKS                       R10 R9 K29 ["Type"]
      156 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      158 GETTABLEKS                       R10 R11 K4 ["AnimationId"]
      160 SETTABLEKS                       R10 R9 K30 ["Value"]
      162 LOADK                            R10 K38 [""]
      163 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      165 SETTABLEKS                       R3 R9 K34 ["OnChanged"]
      167 LOADB                            R10 1
      168 SETTABLEKS                       R10 R9 K35 ["HidePin"]
      170 CALL                             R8 1 1
      171 SETTABLEKS                       R8 R7 K19 ["Property_AnimationId"]
      173 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      175 DUPTABLE                         R9 K39 [{"Name", "Type", "Value", "DefaultValue"}]
      176 LOADK                            R10 K40 ["PlayMode"]
      177 SETTABLEKS                       R10 R9 K28 ["Name"]
      179 LOADK                            R10 K41 ["Enum.AnimationNodePlayMode"]
      180 SETTABLEKS                       R10 R9 K29 ["Type"]
      182 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      184 GETTABLEKS                       R10 R11 K40 ["PlayMode"]
      186 SETTABLEKS                       R10 R9 K30 ["Value"]
      188 GETIMPORT                        R10 K45 [Enum.AnimationNodePlayMode.Loop]
      190 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      192 CALL                             R8 1 1
      193 SETTABLEKS                       R8 R7 K20 ["Property_Playmode"]
      195 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      197 DUPTABLE                         R9 K39 [{"Name", "Type", "Value", "DefaultValue"}]
      198 LOADK                            R10 K46 ["Reverse"]
      199 SETTABLEKS                       R10 R9 K28 ["Name"]
      201 LOADK                            R10 K47 ["Boolean"]
      202 SETTABLEKS                       R10 R9 K29 ["Type"]
      204 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      206 GETTABLEKS                       R10 R11 K46 ["Reverse"]
      208 SETTABLEKS                       R10 R9 K30 ["Value"]
      210 LOADB                            R10 0
      211 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      213 CALL                             R8 1 1
      214 SETTABLEKS                       R8 R7 K21 ["Property_Reverse"]
      216 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      218 DUPTABLE                         R9 K50 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
      219 LOADK                            R10 K51 ["Speed"]
      220 SETTABLEKS                       R10 R9 K28 ["Name"]
      222 LOADK                            R10 K52 ["Number"]
      223 SETTABLEKS                       R10 R9 K29 ["Type"]
      225 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      227 GETTABLEKS                       R10 R11 K51 ["Speed"]
      229 SETTABLEKS                       R10 R9 K30 ["Value"]
      231 LOADN                            R10 1
      232 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      234 GETUPVAL                         R11 5
      235 CALL                             R11 0 1
      236 JUMPIFNOT                        R11 ; [+2]
      237 LOADNIL                          R10
      238 JUMP                             ; [+1]
      239 LOADK                            R10 K53 [0.1]
      240 SETTABLEKS                       R10 R9 K48 ["Step"]
      242 GETUPVAL                         R11 5
      243 CALL                             R11 0 1
      244 JUMPIFNOT                        R11 ; [+2]
      245 LOADNIL                          R10
      246 JUMP                             ; [+5]
      247 GETUPVAL                         R10 6
      248 GETTABLEKS                       R10 R10 K54 ["NUMBER_PRECISION"]
      250 GETTABLEKS                       R10 R10 K55 ["Float"]
      252 SETTABLEKS                       R10 R9 K49 ["Precision"]
      254 CALL                             R8 1 1
      255 SETTABLEKS                       R8 R7 K22 ["Property_Speed"]
      257 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      259 DUPTABLE                         R9 K56 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
      260 LOADK                            R10 K8 ["Trim"]
      261 SETTABLEKS                       R10 R9 K28 ["Name"]
      263 LOADK                            R10 K47 ["Boolean"]
      264 SETTABLEKS                       R10 R9 K29 ["Type"]
      266 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      268 GETTABLEKS                       R10 R11 K8 ["Trim"]
      270 SETTABLEKS                       R10 R9 K30 ["Value"]
      272 LOADB                            R10 0
      273 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      275 GETUPVAL                         R11 2
      276 CALL                             R11 0 1
      277 JUMPIFNOT                        R11 ; [+2]
      278 LOADNIL                          R10
      279 JUMP                             ; [+1]
      280 MOVE                             R10 R4
      281 SETTABLEKS                       R10 R9 K34 ["OnChanged"]
      283 CALL                             R8 1 1
      284 SETTABLEKS                       R8 R7 K23 ["Property_Trim"]
      286 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      288 DUPTABLE                         R9 K59 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "ExtraProps"}]
      289 LOADK                            R10 K9 ["TrimStart"]
      290 SETTABLEKS                       R10 R9 K28 ["Name"]
      292 LOADK                            R10 K60 ["Timestamp"]
      293 SETTABLEKS                       R10 R9 K29 ["Type"]
      295 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      297 GETTABLEKS                       R10 R11 K9 ["TrimStart"]
      299 SETTABLEKS                       R10 R9 K30 ["Value"]
      301 LOADN                            R10 0
      302 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      304 GETTABLEKS                       R12 R0 K5 ["PropertyLookup"]
      306 GETTABLEKS                       R11 R12 K8 ["Trim"]
      308 NOT                              R10 R11
      309 SETTABLEKS                       R10 R9 K57 ["IsDisabled"]
      311 GETUPVAL                         R11 2
      312 CALL                             R11 0 1
      313 JUMPIFNOT                        R11 ; [+30]
      314 JUMPIFNOT                        R1 ; [+21]
      315 DUPTABLE                         R10 K63 [{"Minimum", "Maximum"}]
      316 LOADN                            R11 0
      317 SETTABLEKS                       R11 R10 K61 ["Minimum"]
      319 GETTABLEKS                       R13 R0 K5 ["PropertyLookup"]
      321 GETTABLEKS                       R12 R13 K10 ["TrimEnd"]
      323 JUMPIF                           R12 ; [+2]
      324 GETTABLEKS                       R12 R1 K64 ["Length"]
      326 GETTABLEKS                       R13 R1 K64 ["Length"]
      328 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
      330 GETIMPORT                        R11 K67 [math.min]
      332 CALL                             R11 2 1
      333 SETTABLEKS                       R11 R10 K62 ["Maximum"]
      335 JUMP                             ; [+9]
      336 DUPTABLE                         R10 K63 [{"Minimum", "Maximum"}]
      337 LOADN                            R11 0
      338 SETTABLEKS                       R11 R10 K61 ["Minimum"]
      340 LOADN                            R11 0
      341 SETTABLEKS                       R11 R10 K62 ["Maximum"]
      343 JUMP                             ; [+1]
      344 LOADNIL                          R10
      345 SETTABLEKS                       R10 R9 K58 ["ExtraProps"]
      347 CALL                             R8 1 1
      348 SETTABLEKS                       R8 R7 K24 ["Property_TrimStart"]
      350 GETTABLEKS                       R8 R5 K27 ["nextProperty"]
      352 DUPTABLE                         R9 K59 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "ExtraProps"}]
      353 LOADK                            R10 K10 ["TrimEnd"]
      354 SETTABLEKS                       R10 R9 K28 ["Name"]
      356 LOADK                            R10 K60 ["Timestamp"]
      357 SETTABLEKS                       R10 R9 K29 ["Type"]
      359 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      361 GETTABLEKS                       R10 R11 K10 ["TrimEnd"]
      363 SETTABLEKS                       R10 R9 K30 ["Value"]
      365 LOADN                            R10 0
      366 SETTABLEKS                       R10 R9 K33 ["DefaultValue"]
      368 GETTABLEKS                       R12 R0 K5 ["PropertyLookup"]
      370 GETTABLEKS                       R11 R12 K8 ["Trim"]
      372 NOT                              R10 R11
      373 SETTABLEKS                       R10 R9 K57 ["IsDisabled"]
      375 GETUPVAL                         R11 2
      376 CALL                             R11 0 1
      377 JUMPIFNOT                        R11 ; [+28]
      378 JUMPIFNOT                        R1 ; [+19]
      379 DUPTABLE                         R10 K63 [{"Minimum", "Maximum"}]
      380 GETTABLEKS                       R14 R0 K5 ["PropertyLookup"]
      382 GETTABLEKS                       R13 R14 K9 ["TrimStart"]
      384 ORK                              R12 R13 K68 [0]
      385 FASTCALL2K                       MATH_MAX R12 K68 ; [+4]
      387 LOADK                            R13 K68 [0]
      388 GETIMPORT                        R11 K70 [math.max]
      390 CALL                             R11 2 1
      391 SETTABLEKS                       R11 R10 K61 ["Minimum"]
      393 GETTABLEKS                       R11 R1 K64 ["Length"]
      395 SETTABLEKS                       R11 R10 K62 ["Maximum"]
      397 JUMP                             ; [+9]
      398 DUPTABLE                         R10 K63 [{"Minimum", "Maximum"}]
      399 LOADN                            R11 0
      400 SETTABLEKS                       R11 R10 K61 ["Minimum"]
      402 LOADN                            R11 0
      403 SETTABLEKS                       R11 R10 K62 ["Maximum"]
      405 JUMP                             ; [+1]
      406 LOADNIL                          R10
      407 SETTABLEKS                       R10 R9 K58 ["ExtraProps"]
      409 CALL                             R8 1 1
      410 SETTABLEKS                       R8 R7 K25 ["Property_TrimEnd"]
      412 GETUPVAL                         R8 0
      413 GETTABLEKS                       R8 R8 K71 ["createElement"]
      415 GETUPVAL                         R9 7
      416 GETTABLEKS                       R10 R5 K72 ["nodeProps"]
      418 DUPTABLE                         R11 K74 [{"OutputPin"}]
      419 GETTABLEKS                       R12 R5 K75 ["outputPin"]
      421 CALL                             R12 0 1
      422 SETTABLEKS                       R12 R11 K73 ["OutputPin"]
      424 CALL                             R10 1 1
      425 MOVE                             R11 R7
      426 CALL                             R8 3 -1
      427 RETURN                           R8 -1

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
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Components"]
       31 GETTABLEKS                       R5 R5 K14 ["NodeView"]
       33 GETTABLEKS                       R5 R5 K15 ["CompositorNodes"]
       35 GETTABLEKS                       R5 R5 K16 ["CompositorNode"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R1 K17 ["Util"]
       42 GETTABLEKS                       R6 R6 K18 ["Nodes"]
       44 GETTABLEKS                       R6 R6 K19 ["CompositorNodeUtils"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R1 K17 ["Util"]
       51 GETTABLEKS                       R7 R7 K20 ["Constants"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K21 ["Flags"]
       58 GETTABLEKS                       R8 R8 K22 ["getFFlagAnimGraphFloatStep003"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R1 K21 ["Flags"]
       65 GETTABLEKS                       R9 R9 K23 ["getFFlagAnimGraphUIClampClipTrim"]
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
