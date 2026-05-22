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
        5 JUMPIFNOTEQKNIL                  R0 ; [+5]
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K3 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFEQKS                       R3 K4 ["string"] ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       22 LOADK                            R3 K5 ["Not a string"]
       23 GETIMPORT                        R1 K7 [assert]
       25 CALL                             R1 2 0
       26 GETUPVAL                         R1 1
       27 GETUPVAL                         R2 2
       28 MOVE                             R4 R0
       29 NAMECALL                         R2 R2 K8 ["GetAnimationClipAsync"]
       31 CALL                             R2 2 -1
       32 CALL                             R1 -1 0
       33 NEWCLOSURE                       R1 P0
       34 CAPTURE                          UPVAL U1
       35 RETURN                           R1 1

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
       54 GETTABLEKS                       R5 R5 K6 ["CompositorNodeUtils"]
       56 GETTABLEKS                       R5 R5 K7 ["createPropertyHelpers"]
       58 MOVE                             R6 R0
       59 CALL                             R5 1 1
       60 GETUPVAL                         R7 2
       61 CALL                             R7 0 1
       62 JUMPIFNOT                        R7 ; [+30]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       66 NEWCLOSURE                       R7 P3
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R8 0 5
       72 MOVE                             R9 R1
       73 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
       75 GETTABLEKS                       R10 R11 K9 ["Trim"]
       77 GETTABLEKS                       R12 R0 K5 ["PropertyLookup"]
       79 GETTABLEKS                       R11 R12 K10 ["TrimStart"]
       81 GETTABLEKS                       R13 R0 K5 ["PropertyLookup"]
       83 GETTABLEKS                       R12 R13 K11 ["TrimEnd"]
       85 GETTABLEKS                       R14 R0 K13 ["StateLookup"]
       87 GETTABLEKS                       R13 R14 K12 ["TimeProgress"]
       89 SETLIST                          R8 R9 5 [1]
       91 CALL                             R6 2 1
       92 JUMP                             ; [+38]
       93 GETUPVAL                         R6 4
       94 GETTABLEKS                       R6 R6 K14 ["join"]
       96 DUPTABLE                         R7 K18 [{"Duration", "EndTime", "StartTime"}]
       97 LOADN                            R8 5
       98 SETTABLEKS                       R8 R7 K15 ["Duration"]
      100 GETTABLEKS                       R10 R0 K5 ["PropertyLookup"]
      102 GETTABLEKS                       R9 R10 K9 ["Trim"]
      104 JUMPIFNOT                        R9 ; [+5]
      105 GETTABLEKS                       R9 R0 K5 ["PropertyLookup"]
      107 GETTABLEKS                       R8 R9 K11 ["TrimEnd"]
      109 JUMPIF                           R8 ; [+1]
      110 LOADNIL                          R8
      111 SETTABLEKS                       R8 R7 K16 ["EndTime"]
      113 GETTABLEKS                       R10 R0 K5 ["PropertyLookup"]
      115 GETTABLEKS                       R9 R10 K9 ["Trim"]
      117 JUMPIFNOT                        R9 ; [+5]
      118 GETTABLEKS                       R9 R0 K5 ["PropertyLookup"]
      120 GETTABLEKS                       R8 R9 K10 ["TrimStart"]
      122 JUMPIF                           R8 ; [+1]
      123 LOADNIL                          R8
      124 SETTABLEKS                       R8 R7 K17 ["StartTime"]
      126 GETTABLEKS                       R9 R0 K13 ["StateLookup"]
      128 GETTABLEKS                       R8 R9 K12 ["TimeProgress"]
      130 CALL                             R6 2 1
      131 DUPTABLE                         R7 K27 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd"}]
      132 GETTABLEKS                       R8 R5 K28 ["nextProperty"]
      134 DUPTABLE                         R9 K33 [{"Name", "Type", "Value", "ShowWhenCollapsed"}]
      135 LOADK                            R10 K12 ["TimeProgress"]
      136 SETTABLEKS                       R10 R9 K29 ["Name"]
      138 LOADK                            R10 K12 ["TimeProgress"]
      139 SETTABLEKS                       R10 R9 K30 ["Type"]
      141 SETTABLEKS                       R6 R9 K31 ["Value"]
      143 LOADB                            R10 1
      144 SETTABLEKS                       R10 R9 K32 ["ShowWhenCollapsed"]
      146 CALL                             R8 1 1
      147 SETTABLEKS                       R8 R7 K19 ["Property_TimeProgress"]
      149 GETTABLEKS                       R8 R5 K28 ["nextProperty"]
      151 DUPTABLE                         R9 K37 [{"Name", "Type", "Value", "DefaultValue", "OnChanged", "HidePin"}]
      152 LOADK                            R10 K4 ["AnimationId"]
      153 SETTABLEKS                       R10 R9 K29 ["Name"]
      155 LOADK                            R10 K38 ["Animation"]
      156 SETTABLEKS                       R10 R9 K30 ["Type"]
      158 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      160 GETTABLEKS                       R10 R11 K4 ["AnimationId"]
      162 SETTABLEKS                       R10 R9 K31 ["Value"]
      164 LOADK                            R10 K39 [""]
      165 SETTABLEKS                       R10 R9 K34 ["DefaultValue"]
      167 SETTABLEKS                       R3 R9 K35 ["OnChanged"]
      169 LOADB                            R10 1
      170 SETTABLEKS                       R10 R9 K36 ["HidePin"]
      172 CALL                             R8 1 1
      173 SETTABLEKS                       R8 R7 K20 ["Property_AnimationId"]
      175 GETTABLEKS                       R8 R5 K28 ["nextProperty"]
      177 DUPTABLE                         R9 K40 [{"Name", "Type", "Value", "DefaultValue"}]
      178 LOADK                            R10 K41 ["PlayMode"]
      179 SETTABLEKS                       R10 R9 K29 ["Name"]
      181 LOADK                            R10 K42 ["Enum.AnimationNodePlayMode"]
      182 SETTABLEKS                       R10 R9 K30 ["Type"]
      184 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      186 GETTABLEKS                       R10 R11 K41 ["PlayMode"]
      188 SETTABLEKS                       R10 R9 K31 ["Value"]
      190 GETIMPORT                        R10 K46 [Enum.AnimationNodePlayMode.Loop]
      192 SETTABLEKS                       R10 R9 K34 ["DefaultValue"]
      194 CALL                             R8 1 1
      195 SETTABLEKS                       R8 R7 K21 ["Property_Playmode"]
      197 GETTABLEKS                       R8 R5 K28 ["nextProperty"]
      199 DUPTABLE                         R9 K40 [{"Name", "Type", "Value", "DefaultValue"}]
      200 LOADK                            R10 K47 ["Reverse"]
      201 SETTABLEKS                       R10 R9 K29 ["Name"]
      203 LOADK                            R10 K48 ["Boolean"]
      204 SETTABLEKS                       R10 R9 K30 ["Type"]
      206 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      208 GETTABLEKS                       R10 R11 K47 ["Reverse"]
      210 SETTABLEKS                       R10 R9 K31 ["Value"]
      212 LOADB                            R10 0
      213 SETTABLEKS                       R10 R9 K34 ["DefaultValue"]
      215 CALL                             R8 1 1
      216 SETTABLEKS                       R8 R7 K22 ["Property_Reverse"]
      218 GETTABLEKS                       R8 R5 K28 ["nextProperty"]
      220 DUPTABLE                         R9 K51 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
      221 LOADK                            R10 K52 ["Speed"]
      222 SETTABLEKS                       R10 R9 K29 ["Name"]
      224 LOADK                            R10 K53 ["Number"]
      225 SETTABLEKS                       R10 R9 K30 ["Type"]
      227 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      229 GETTABLEKS                       R10 R11 K52 ["Speed"]
      231 SETTABLEKS                       R10 R9 K31 ["Value"]
      233 LOADN                            R10 1
      234 SETTABLEKS                       R10 R9 K34 ["DefaultValue"]
      236 GETUPVAL                         R11 5
      237 CALL                             R11 0 1
      238 JUMPIFNOT                        R11 ; [+2]
      239 LOADNIL                          R10
      240 JUMP                             ; [+1]
      241 LOADK                            R10 K54 [0.1]
      242 SETTABLEKS                       R10 R9 K49 ["Step"]
      244 GETUPVAL                         R11 5
      245 CALL                             R11 0 1
      246 JUMPIFNOT                        R11 ; [+2]
      247 LOADNIL                          R10
      248 JUMP                             ; [+5]
      249 GETUPVAL                         R10 6
      250 GETTABLEKS                       R10 R10 K55 ["NUMBER_PRECISION"]
      252 GETTABLEKS                       R10 R10 K56 ["Float"]
      254 SETTABLEKS                       R10 R9 K50 ["Precision"]
      256 CALL                             R8 1 1
      257 SETTABLEKS                       R8 R7 K23 ["Property_Speed"]
      259 GETTABLEKS                       R8 R5 K28 ["nextProperty"]
      261 DUPTABLE                         R9 K57 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
      262 LOADK                            R10 K9 ["Trim"]
      263 SETTABLEKS                       R10 R9 K29 ["Name"]
      265 LOADK                            R10 K48 ["Boolean"]
      266 SETTABLEKS                       R10 R9 K30 ["Type"]
      268 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      270 GETTABLEKS                       R10 R11 K9 ["Trim"]
      272 SETTABLEKS                       R10 R9 K31 ["Value"]
      274 LOADB                            R10 0
      275 SETTABLEKS                       R10 R9 K34 ["DefaultValue"]
      277 GETUPVAL                         R11 2
      278 CALL                             R11 0 1
      279 JUMPIFNOT                        R11 ; [+2]
      280 LOADNIL                          R10
      281 JUMP                             ; [+1]
      282 MOVE                             R10 R4
      283 SETTABLEKS                       R10 R9 K35 ["OnChanged"]
      285 CALL                             R8 1 1
      286 SETTABLEKS                       R8 R7 K24 ["Property_Trim"]
      288 GETTABLEKS                       R8 R5 K28 ["nextProperty"]
      290 DUPTABLE                         R9 K60 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "ExtraProps"}]
      291 LOADK                            R10 K10 ["TrimStart"]
      292 SETTABLEKS                       R10 R9 K29 ["Name"]
      294 LOADK                            R10 K61 ["Timestamp"]
      295 SETTABLEKS                       R10 R9 K30 ["Type"]
      297 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      299 GETTABLEKS                       R10 R11 K10 ["TrimStart"]
      301 SETTABLEKS                       R10 R9 K31 ["Value"]
      303 LOADN                            R10 0
      304 SETTABLEKS                       R10 R9 K34 ["DefaultValue"]
      306 GETTABLEKS                       R12 R0 K5 ["PropertyLookup"]
      308 GETTABLEKS                       R11 R12 K9 ["Trim"]
      310 NOT                              R10 R11
      311 SETTABLEKS                       R10 R9 K58 ["IsDisabled"]
      313 GETUPVAL                         R11 2
      314 CALL                             R11 0 1
      315 JUMPIFNOT                        R11 ; [+33]
      316 JUMPIFNOT                        R1 ; [+24]
      317 DUPTABLE                         R10 K64 [{"Minimum", "Maximum"}]
      318 LOADN                            R11 0
      319 SETTABLEKS                       R11 R10 K62 ["Minimum"]
      321 GETUPVAL                         R12 7
      322 GETTABLEKS                       R12 R12 K65 ["number"]
      324 GETTABLEKS                       R14 R0 K5 ["PropertyLookup"]
      326 GETTABLEKS                       R13 R14 K11 ["TrimEnd"]
      328 GETTABLEKS                       R14 R1 K66 ["Length"]
      330 CALL                             R12 2 1
      331 GETTABLEKS                       R13 R1 K66 ["Length"]
      333 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
      335 GETIMPORT                        R11 K69 [math.min]
      337 CALL                             R11 2 1
      338 SETTABLEKS                       R11 R10 K63 ["Maximum"]
      340 JUMP                             ; [+9]
      341 DUPTABLE                         R10 K64 [{"Minimum", "Maximum"}]
      342 LOADN                            R11 0
      343 SETTABLEKS                       R11 R10 K62 ["Minimum"]
      345 LOADN                            R11 0
      346 SETTABLEKS                       R11 R10 K63 ["Maximum"]
      348 JUMP                             ; [+1]
      349 LOADNIL                          R10
      350 SETTABLEKS                       R10 R9 K59 ["ExtraProps"]
      352 CALL                             R8 1 1
      353 SETTABLEKS                       R8 R7 K25 ["Property_TrimStart"]
      355 GETTABLEKS                       R8 R5 K28 ["nextProperty"]
      357 DUPTABLE                         R9 K60 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "ExtraProps"}]
      358 LOADK                            R10 K11 ["TrimEnd"]
      359 SETTABLEKS                       R10 R9 K29 ["Name"]
      361 LOADK                            R10 K61 ["Timestamp"]
      362 SETTABLEKS                       R10 R9 K30 ["Type"]
      364 GETTABLEKS                       R11 R0 K5 ["PropertyLookup"]
      366 GETTABLEKS                       R10 R11 K11 ["TrimEnd"]
      368 SETTABLEKS                       R10 R9 K31 ["Value"]
      370 LOADN                            R10 0
      371 SETTABLEKS                       R10 R9 K34 ["DefaultValue"]
      373 GETTABLEKS                       R12 R0 K5 ["PropertyLookup"]
      375 GETTABLEKS                       R11 R12 K9 ["Trim"]
      377 NOT                              R10 R11
      378 SETTABLEKS                       R10 R9 K58 ["IsDisabled"]
      380 GETUPVAL                         R11 2
      381 CALL                             R11 0 1
      382 JUMPIFNOT                        R11 ; [+32]
      383 JUMPIFNOT                        R1 ; [+23]
      384 DUPTABLE                         R10 K64 [{"Minimum", "Maximum"}]
      385 GETUPVAL                         R12 7
      386 GETTABLEKS                       R12 R12 K65 ["number"]
      388 GETTABLEKS                       R14 R0 K5 ["PropertyLookup"]
      390 GETTABLEKS                       R13 R14 K10 ["TrimStart"]
      392 LOADN                            R14 0
      393 CALL                             R12 2 1
      394 FASTCALL2K                       MATH_MAX R12 K70 ; [+4]
      396 LOADK                            R13 K70 [0]
      397 GETIMPORT                        R11 K72 [math.max]
      399 CALL                             R11 2 1
      400 SETTABLEKS                       R11 R10 K62 ["Minimum"]
      402 GETTABLEKS                       R11 R1 K66 ["Length"]
      404 SETTABLEKS                       R11 R10 K63 ["Maximum"]
      406 JUMP                             ; [+9]
      407 DUPTABLE                         R10 K64 [{"Minimum", "Maximum"}]
      408 LOADN                            R11 0
      409 SETTABLEKS                       R11 R10 K62 ["Minimum"]
      411 LOADN                            R11 0
      412 SETTABLEKS                       R11 R10 K63 ["Maximum"]
      414 JUMP                             ; [+1]
      415 LOADNIL                          R10
      416 SETTABLEKS                       R10 R9 K59 ["ExtraProps"]
      418 CALL                             R8 1 1
      419 SETTABLEKS                       R8 R7 K26 ["Property_TrimEnd"]
      421 GETUPVAL                         R8 0
      422 GETTABLEKS                       R8 R8 K73 ["createElement"]
      424 GETUPVAL                         R9 3
      425 GETTABLEKS                       R9 R9 K74 ["CompositorNode"]
      427 GETTABLEKS                       R10 R5 K75 ["nodeProps"]
      429 DUPTABLE                         R11 K77 [{"OutputPin"}]
      430 GETTABLEKS                       R12 R5 K78 ["outputPin"]
      432 CALL                             R12 0 1
      433 SETTABLEKS                       R12 R11 K76 ["OutputPin"]
      435 CALL                             R10 1 1
      436 MOVE                             R11 R7
      437 CALL                             R8 3 -1
      438 RETURN                           R8 -1

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
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Constants"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Util"]
       31 GETTABLEKS                       R5 R5 K14 ["ExpectType"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K12 ["Parent"]
       38 GETTABLEKS                       R6 R6 K15 ["NodeGraphing"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K12 ["Parent"]
       45 GETTABLEKS                       R7 R7 K16 ["React"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K17 ["Flags"]
       52 GETTABLEKS                       R8 R8 K18 ["getFFlagAnimGraphFloatStep003"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K17 ["Flags"]
       59 GETTABLEKS                       R9 R9 K19 ["getFFlagAnimGraphUIClampClipTrim"]
       61 CALL                             R8 1 1
       62 DUPCLOSURE                       R9 K20 [PROTO_5]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 RETURN                           R9 1
