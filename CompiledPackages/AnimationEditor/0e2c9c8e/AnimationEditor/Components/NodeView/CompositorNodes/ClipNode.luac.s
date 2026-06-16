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
       23 JUMPIFNOT                        R3 ; [+28]
       24 JUMPIFNOT                        R2 ; [+37]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       28 LOADK                            R4 K3 ["TrimStart"]
       29 LOADN                            R5 0
       30 CALL                             R3 2 0
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       34 LOADK                            R4 K4 ["TrimEnd"]
       35 GETTABLEKS                       R5 R2 K5 ["Length"]
       37 CALL                             R3 2 0
       38 GETTABLEKS                       R3 R2 K6 ["Loop"]
       40 JUMPIFNOT                        R3 ; [+7]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       44 LOADK                            R4 K7 ["PlayMode"]
       45 GETIMPORT                        R5 K10 [Enum.AnimationNodePlayMode.Loop]
       47 CALL                             R3 2 0
       48 GETUPVAL                         R3 3
       49 MOVE                             R4 R2
       50 CALL                             R3 1 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R3 R2 K6 ["Loop"]
       54 JUMPIFNOT                        R3 ; [+7]
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       58 LOADK                            R4 K7 ["PlayMode"]
       59 GETIMPORT                        R5 K10 [Enum.AnimationNodePlayMode.Loop]
       61 CALL                             R3 2 0
       62 RETURN                           R0 0

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
        1 GETTABLEKS                       R0 R0 K0 ["getAnimationClipAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+27]
        8 JUMPIFEQKNIL                     R0 ; [+26]
       10 LOADK                            R3 K1 ["KeyframeSequence"]
       11 NAMECALL                         R1 R0 K2 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+20]
       15 LOADK                            R3 K3 ["CurveAnimation"]
       16 NAMECALL                         R1 R0 K2 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIF                           R1 ; [+15]
       20 GETIMPORT                        R1 K5 [warn]
       22 GETUPVAL                         R2 3
       23 LOADK                            R4 K6 ["Common"]
       24 LOADK                            R5 K7 ["AnimationEditor"]
       25 LOADK                            R6 K8 ["ClipNode"]
       26 LOADK                            R7 K9 ["InvalidAssetType"]
       27 DUPTABLE                         R8 K11 [{"assetid"}]
       28 GETUPVAL                         R9 1
       29 SETTABLEKS                       R9 R8 K10 ["assetid"]
       31 NAMECALL                         R2 R2 K12 ["getExternalText"]
       33 CALL                             R2 6 -1
       34 CALL                             R1 -1 0
       35 GETUPVAL                         R1 4
       36 MOVE                             R2 R0
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
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
       26 GETUPVAL                         R1 2
       27 JUMPIFNOT                        R1 ; [+13]
       28 GETIMPORT                        R1 K10 [task.spawn]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U1
       36 CALL                             R1 1 1
       37 NEWCLOSURE                       R2 P1
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U1
       40 RETURN                           R2 1
       41 GETUPVAL                         R1 1
       42 GETUPVAL                         R2 6
       43 MOVE                             R4 R0
       44 NAMECALL                         R2 R2 K11 ["GetAnimationClipAsync"]
       46 CALL                             R2 2 -1
       47 CALL                             R1 -1 0
       48 NEWCLOSURE                       R1 P2
       49 CAPTURE                          UPVAL U1
       50 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["join"]
        3 DUPTABLE                         R1 K4 [{"Duration", "EndTime", "StartTime"}]
        4 GETUPVAL                         R3 1
        5 JUMPIFNOT                        R3 ; [+4]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K5 ["Length"]
        9 JUMP                             ; [+1]
       10 LOADN                            R2 0
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["ContextServices"]
       15 GETTABLEKS                       R4 R4 K4 ["Localization"]
       17 NAMECALL                         R4 R4 K5 ["use"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R7 0 2
       30 MOVE                             R8 R3
       31 GETTABLEKS                       R9 R0 K7 ["OnPropertyChanged"]
       33 SETLIST                          R7 R8 2 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       39 NEWCLOSURE                       R7 P1
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R8 0 1
       43 GETTABLEKS                       R9 R0 K7 ["OnPropertyChanged"]
       45 SETLIST                          R8 R9 1 [1]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 4
       49 CALL                             R7 0 1
       50 JUMPIFNOT                        R7 ; [+21]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K8 ["useEffect"]
       54 NEWCLOSURE                       R8 P2
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R3
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R1
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          UPVAL U3
       62 NEWTABLE                         R9 0 2
       64 GETTABLEKS                       R11 R0 K10 ["PropertyLookup"]
       66 GETTABLEKS                       R10 R11 K9 ["AnimationId"]
       68 MOVE                             R11 R3
       69 SETLIST                          R9 R10 2 [1]
       71 CALL                             R7 2 0
       72 GETUPVAL                         R7 7
       73 GETTABLEKS                       R7 R7 K11 ["CompositorNodeUtils"]
       75 GETTABLEKS                       R7 R7 K12 ["createPropertyHelpers"]
       77 MOVE                             R8 R0
       78 CALL                             R7 1 1
       79 GETUPVAL                         R9 4
       80 CALL                             R9 0 1
       81 JUMPIFNOT                        R9 ; [+30]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K13 ["useMemo"]
       85 NEWCLOSURE                       R9 P3
       86 CAPTURE                          UPVAL U8
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R0
       89 NEWTABLE                         R10 0 5
       91 MOVE                             R11 R2
       92 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
       94 GETTABLEKS                       R12 R13 K14 ["Trim"]
       96 GETTABLEKS                       R14 R0 K10 ["PropertyLookup"]
       98 GETTABLEKS                       R13 R14 K15 ["TrimStart"]
      100 GETTABLEKS                       R15 R0 K10 ["PropertyLookup"]
      102 GETTABLEKS                       R14 R15 K16 ["TrimEnd"]
      104 GETTABLEKS                       R16 R0 K18 ["StateLookup"]
      106 GETTABLEKS                       R15 R16 K17 ["TimeProgress"]
      108 SETLIST                          R10 R11 5 [1]
      110 CALL                             R8 2 1
      111 JUMP                             ; [+38]
      112 GETUPVAL                         R8 8
      113 GETTABLEKS                       R8 R8 K19 ["join"]
      115 DUPTABLE                         R9 K23 [{"Duration", "EndTime", "StartTime"}]
      116 LOADN                            R10 5
      117 SETTABLEKS                       R10 R9 K20 ["Duration"]
      119 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      121 GETTABLEKS                       R11 R12 K14 ["Trim"]
      123 JUMPIFNOT                        R11 ; [+5]
      124 GETTABLEKS                       R11 R0 K10 ["PropertyLookup"]
      126 GETTABLEKS                       R10 R11 K16 ["TrimEnd"]
      128 JUMPIF                           R10 ; [+1]
      129 LOADNIL                          R10
      130 SETTABLEKS                       R10 R9 K21 ["EndTime"]
      132 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      134 GETTABLEKS                       R11 R12 K14 ["Trim"]
      136 JUMPIFNOT                        R11 ; [+5]
      137 GETTABLEKS                       R11 R0 K10 ["PropertyLookup"]
      139 GETTABLEKS                       R10 R11 K15 ["TrimStart"]
      141 JUMPIF                           R10 ; [+1]
      142 LOADNIL                          R10
      143 SETTABLEKS                       R10 R9 K22 ["StartTime"]
      145 GETTABLEKS                       R11 R0 K18 ["StateLookup"]
      147 GETTABLEKS                       R10 R11 K17 ["TimeProgress"]
      149 CALL                             R8 2 1
      150 DUPTABLE                         R9 K32 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd"}]
      151 GETTABLEKS                       R10 R7 K33 ["nextProperty"]
      153 DUPTABLE                         R11 K38 [{"Name", "Type", "Value", "ShowWhenCollapsed"}]
      154 LOADK                            R12 K17 ["TimeProgress"]
      155 SETTABLEKS                       R12 R11 K34 ["Name"]
      157 LOADK                            R12 K17 ["TimeProgress"]
      158 SETTABLEKS                       R12 R11 K35 ["Type"]
      160 SETTABLEKS                       R8 R11 K36 ["Value"]
      162 LOADB                            R12 1
      163 SETTABLEKS                       R12 R11 K37 ["ShowWhenCollapsed"]
      165 CALL                             R10 1 1
      166 SETTABLEKS                       R10 R9 K24 ["Property_TimeProgress"]
      168 GETTABLEKS                       R10 R7 K33 ["nextProperty"]
      170 DUPTABLE                         R11 K42 [{"Name", "Type", "Value", "DefaultValue", "OnChanged", "HidePin"}]
      171 LOADK                            R12 K9 ["AnimationId"]
      172 SETTABLEKS                       R12 R11 K34 ["Name"]
      174 LOADK                            R12 K43 ["Animation"]
      175 SETTABLEKS                       R12 R11 K35 ["Type"]
      177 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      179 GETTABLEKS                       R12 R13 K9 ["AnimationId"]
      181 SETTABLEKS                       R12 R11 K36 ["Value"]
      183 LOADK                            R12 K44 [""]
      184 SETTABLEKS                       R12 R11 K39 ["DefaultValue"]
      186 SETTABLEKS                       R5 R11 K40 ["OnChanged"]
      188 LOADB                            R12 1
      189 SETTABLEKS                       R12 R11 K41 ["HidePin"]
      191 CALL                             R10 1 1
      192 SETTABLEKS                       R10 R9 K25 ["Property_AnimationId"]
      194 GETTABLEKS                       R10 R7 K33 ["nextProperty"]
      196 DUPTABLE                         R11 K45 [{"Name", "Type", "Value", "DefaultValue"}]
      197 LOADK                            R12 K46 ["PlayMode"]
      198 SETTABLEKS                       R12 R11 K34 ["Name"]
      200 LOADK                            R12 K47 ["Enum.AnimationNodePlayMode"]
      201 SETTABLEKS                       R12 R11 K35 ["Type"]
      203 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      205 GETTABLEKS                       R12 R13 K46 ["PlayMode"]
      207 SETTABLEKS                       R12 R11 K36 ["Value"]
      209 GETIMPORT                        R12 K51 [Enum.AnimationNodePlayMode.Loop]
      211 SETTABLEKS                       R12 R11 K39 ["DefaultValue"]
      213 CALL                             R10 1 1
      214 SETTABLEKS                       R10 R9 K26 ["Property_Playmode"]
      216 GETTABLEKS                       R10 R7 K33 ["nextProperty"]
      218 DUPTABLE                         R11 K45 [{"Name", "Type", "Value", "DefaultValue"}]
      219 LOADK                            R12 K52 ["Reverse"]
      220 SETTABLEKS                       R12 R11 K34 ["Name"]
      222 LOADK                            R12 K53 ["Boolean"]
      223 SETTABLEKS                       R12 R11 K35 ["Type"]
      225 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      227 GETTABLEKS                       R12 R13 K52 ["Reverse"]
      229 SETTABLEKS                       R12 R11 K36 ["Value"]
      231 LOADB                            R12 0
      232 SETTABLEKS                       R12 R11 K39 ["DefaultValue"]
      234 CALL                             R10 1 1
      235 SETTABLEKS                       R10 R9 K27 ["Property_Reverse"]
      237 GETTABLEKS                       R10 R7 K33 ["nextProperty"]
      239 DUPTABLE                         R11 K56 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
      240 LOADK                            R12 K57 ["Speed"]
      241 SETTABLEKS                       R12 R11 K34 ["Name"]
      243 LOADK                            R12 K58 ["Number"]
      244 SETTABLEKS                       R12 R11 K35 ["Type"]
      246 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      248 GETTABLEKS                       R12 R13 K57 ["Speed"]
      250 SETTABLEKS                       R12 R11 K36 ["Value"]
      252 LOADN                            R12 1
      253 SETTABLEKS                       R12 R11 K39 ["DefaultValue"]
      255 GETUPVAL                         R13 9
      256 CALL                             R13 0 1
      257 JUMPIFNOT                        R13 ; [+2]
      258 LOADNIL                          R12
      259 JUMP                             ; [+1]
      260 LOADK                            R12 K59 [0.1]
      261 SETTABLEKS                       R12 R11 K54 ["Step"]
      263 GETUPVAL                         R13 9
      264 CALL                             R13 0 1
      265 JUMPIFNOT                        R13 ; [+2]
      266 LOADNIL                          R12
      267 JUMP                             ; [+5]
      268 GETUPVAL                         R12 10
      269 GETTABLEKS                       R12 R12 K60 ["NUMBER_PRECISION"]
      271 GETTABLEKS                       R12 R12 K61 ["Float"]
      273 SETTABLEKS                       R12 R11 K55 ["Precision"]
      275 CALL                             R10 1 1
      276 SETTABLEKS                       R10 R9 K28 ["Property_Speed"]
      278 GETTABLEKS                       R10 R7 K33 ["nextProperty"]
      280 DUPTABLE                         R11 K62 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
      281 LOADK                            R12 K14 ["Trim"]
      282 SETTABLEKS                       R12 R11 K34 ["Name"]
      284 LOADK                            R12 K53 ["Boolean"]
      285 SETTABLEKS                       R12 R11 K35 ["Type"]
      287 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      289 GETTABLEKS                       R12 R13 K14 ["Trim"]
      291 SETTABLEKS                       R12 R11 K36 ["Value"]
      293 LOADB                            R12 0
      294 SETTABLEKS                       R12 R11 K39 ["DefaultValue"]
      296 GETUPVAL                         R13 4
      297 CALL                             R13 0 1
      298 JUMPIFNOT                        R13 ; [+2]
      299 LOADNIL                          R12
      300 JUMP                             ; [+1]
      301 MOVE                             R12 R6
      302 SETTABLEKS                       R12 R11 K40 ["OnChanged"]
      304 CALL                             R10 1 1
      305 SETTABLEKS                       R10 R9 K29 ["Property_Trim"]
      307 GETTABLEKS                       R10 R7 K33 ["nextProperty"]
      309 DUPTABLE                         R11 K65 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "ExtraProps"}]
      310 LOADK                            R12 K15 ["TrimStart"]
      311 SETTABLEKS                       R12 R11 K34 ["Name"]
      313 LOADK                            R12 K66 ["Timestamp"]
      314 SETTABLEKS                       R12 R11 K35 ["Type"]
      316 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      318 GETTABLEKS                       R12 R13 K15 ["TrimStart"]
      320 SETTABLEKS                       R12 R11 K36 ["Value"]
      322 LOADN                            R12 0
      323 SETTABLEKS                       R12 R11 K39 ["DefaultValue"]
      325 GETTABLEKS                       R14 R0 K10 ["PropertyLookup"]
      327 GETTABLEKS                       R13 R14 K14 ["Trim"]
      329 NOT                              R12 R13
      330 SETTABLEKS                       R12 R11 K63 ["IsDisabled"]
      332 GETUPVAL                         R13 4
      333 CALL                             R13 0 1
      334 JUMPIFNOT                        R13 ; [+33]
      335 JUMPIFNOT                        R2 ; [+24]
      336 DUPTABLE                         R12 K69 [{"Minimum", "Maximum"}]
      337 LOADN                            R13 0
      338 SETTABLEKS                       R13 R12 K67 ["Minimum"]
      340 GETUPVAL                         R14 11
      341 GETTABLEKS                       R14 R14 K70 ["number"]
      343 GETTABLEKS                       R16 R0 K10 ["PropertyLookup"]
      345 GETTABLEKS                       R15 R16 K16 ["TrimEnd"]
      347 GETTABLEKS                       R16 R2 K71 ["Length"]
      349 CALL                             R14 2 1
      350 GETTABLEKS                       R15 R2 K71 ["Length"]
      352 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
      354 GETIMPORT                        R13 K74 [math.min]
      356 CALL                             R13 2 1
      357 SETTABLEKS                       R13 R12 K68 ["Maximum"]
      359 JUMP                             ; [+9]
      360 DUPTABLE                         R12 K69 [{"Minimum", "Maximum"}]
      361 LOADN                            R13 0
      362 SETTABLEKS                       R13 R12 K67 ["Minimum"]
      364 LOADN                            R13 0
      365 SETTABLEKS                       R13 R12 K68 ["Maximum"]
      367 JUMP                             ; [+1]
      368 LOADNIL                          R12
      369 SETTABLEKS                       R12 R11 K64 ["ExtraProps"]
      371 CALL                             R10 1 1
      372 SETTABLEKS                       R10 R9 K30 ["Property_TrimStart"]
      374 GETTABLEKS                       R10 R7 K33 ["nextProperty"]
      376 DUPTABLE                         R11 K65 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "ExtraProps"}]
      377 LOADK                            R12 K16 ["TrimEnd"]
      378 SETTABLEKS                       R12 R11 K34 ["Name"]
      380 LOADK                            R12 K66 ["Timestamp"]
      381 SETTABLEKS                       R12 R11 K35 ["Type"]
      383 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      385 GETTABLEKS                       R12 R13 K16 ["TrimEnd"]
      387 SETTABLEKS                       R12 R11 K36 ["Value"]
      389 LOADN                            R12 0
      390 SETTABLEKS                       R12 R11 K39 ["DefaultValue"]
      392 GETTABLEKS                       R14 R0 K10 ["PropertyLookup"]
      394 GETTABLEKS                       R13 R14 K14 ["Trim"]
      396 NOT                              R12 R13
      397 SETTABLEKS                       R12 R11 K63 ["IsDisabled"]
      399 GETUPVAL                         R13 4
      400 CALL                             R13 0 1
      401 JUMPIFNOT                        R13 ; [+32]
      402 JUMPIFNOT                        R2 ; [+23]
      403 DUPTABLE                         R12 K69 [{"Minimum", "Maximum"}]
      404 GETUPVAL                         R14 11
      405 GETTABLEKS                       R14 R14 K70 ["number"]
      407 GETTABLEKS                       R16 R0 K10 ["PropertyLookup"]
      409 GETTABLEKS                       R15 R16 K15 ["TrimStart"]
      411 LOADN                            R16 0
      412 CALL                             R14 2 1
      413 FASTCALL2K                       MATH_MAX R14 K75 ; [+4]
      415 LOADK                            R15 K75 [0]
      416 GETIMPORT                        R13 K77 [math.max]
      418 CALL                             R13 2 1
      419 SETTABLEKS                       R13 R12 K67 ["Minimum"]
      421 GETTABLEKS                       R13 R2 K71 ["Length"]
      423 SETTABLEKS                       R13 R12 K68 ["Maximum"]
      425 JUMP                             ; [+9]
      426 DUPTABLE                         R12 K69 [{"Minimum", "Maximum"}]
      427 LOADN                            R13 0
      428 SETTABLEKS                       R13 R12 K67 ["Minimum"]
      430 LOADN                            R13 0
      431 SETTABLEKS                       R13 R12 K68 ["Maximum"]
      433 JUMP                             ; [+1]
      434 LOADNIL                          R12
      435 SETTABLEKS                       R12 R11 K64 ["ExtraProps"]
      437 CALL                             R10 1 1
      438 SETTABLEKS                       R10 R9 K31 ["Property_TrimEnd"]
      440 GETUPVAL                         R10 0
      441 GETTABLEKS                       R10 R10 K78 ["createElement"]
      443 GETUPVAL                         R11 7
      444 GETTABLEKS                       R11 R11 K79 ["CompositorNode"]
      446 GETTABLEKS                       R12 R7 K80 ["nodeProps"]
      448 DUPTABLE                         R13 K82 [{"OutputPin"}]
      449 GETTABLEKS                       R14 R7 K83 ["outputPin"]
      451 CALL                             R14 0 1
      452 SETTABLEKS                       R14 R13 K81 ["OutputPin"]
      454 CALL                             R12 1 1
      455 MOVE                             R13 R9
      456 CALL                             R10 3 -1
      457 RETURN                           R10 -1

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
       15 GETTABLEKS                       R3 R1 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R3 K11 ["AnimationClipProviderContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["Constants"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Parent"]
       31 GETTABLEKS                       R5 R5 K15 ["Dash"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K12 ["Util"]
       38 GETTABLEKS                       R6 R6 K16 ["ExpectType"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K14 ["Parent"]
       45 GETTABLEKS                       R7 R7 K17 ["Framework"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K14 ["Parent"]
       52 GETTABLEKS                       R8 R8 K18 ["NodeGraphing"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K14 ["Parent"]
       59 GETTABLEKS                       R9 R9 K19 ["React"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R1 K20 ["Flags"]
       66 GETTABLEKS                       R10 R10 K21 ["getFFlagAnimGraphFloatStep003"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R1 K20 ["Flags"]
       73 GETTABLEKS                       R11 R11 K22 ["getFFlagAnimGraphUIClampClipTrim"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R1 K20 ["Flags"]
       80 GETTABLEKS                       R12 R12 K23 ["getFFlagAnimGraphUIWarnOnInvalidClip"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K1 [game]
       85 LOADK                            R14 K24 ["AnimGraphFixAnimationClipEffectCrash"]
       86 LOADB                            R15 0
       87 NAMECALL                         R12 R12 K25 ["DefineFastFlag"]
       89 CALL                             R12 3 1
       90 DUPCLOSURE                       R13 K26 [PROTO_7]
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R5
      103 RETURN                           R13 1
