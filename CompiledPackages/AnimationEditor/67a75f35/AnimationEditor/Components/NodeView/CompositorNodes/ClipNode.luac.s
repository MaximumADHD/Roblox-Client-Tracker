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
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAnimationClipAsync"]
        4 CALL                             R0 2 1
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
       42 GETUPVAL                         R2 3
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

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["ContextServices"]
        8 GETTABLEKS                       R3 R3 K2 ["Localization"]
       10 NAMECALL                         R3 R3 K3 ["use"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R6 0 2
       23 MOVE                             R7 R2
       24 GETTABLEKS                       R8 R0 K5 ["OnPropertyChanged"]
       26 SETLIST                          R6 R7 2 [1]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R7 0 1
       36 GETTABLEKS                       R8 R0 K5 ["OnPropertyChanged"]
       38 SETLIST                          R7 R8 1 [1]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 3
       42 CALL                             R6 0 1
       43 JUMPIFNOT                        R6 ; [+20]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K6 ["useEffect"]
       47 NEWCLOSURE                       R7 P2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          VAL R3
       54 NEWTABLE                         R8 0 2
       56 GETTABLEKS                       R10 R0 K8 ["PropertyLookup"]
       58 GETTABLEKS                       R9 R10 K7 ["AnimationId"]
       60 MOVE                             R10 R2
       61 SETLIST                          R8 R9 2 [1]
       63 CALL                             R6 2 0
       64 GETUPVAL                         R6 6
       65 GETTABLEKS                       R6 R6 K9 ["CompositorNodeUtils"]
       67 GETTABLEKS                       R6 R6 K10 ["createPropertyHelpers"]
       69 MOVE                             R7 R0
       70 CALL                             R6 1 1
       71 GETUPVAL                         R8 3
       72 CALL                             R8 0 1
       73 JUMPIFNOT                        R8 ; [+30]
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K11 ["useMemo"]
       77 NEWCLOSURE                       R8 P3
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R0
       81 NEWTABLE                         R9 0 5
       83 MOVE                             R10 R1
       84 GETTABLEKS                       R12 R0 K8 ["PropertyLookup"]
       86 GETTABLEKS                       R11 R12 K12 ["Trim"]
       88 GETTABLEKS                       R13 R0 K8 ["PropertyLookup"]
       90 GETTABLEKS                       R12 R13 K13 ["TrimStart"]
       92 GETTABLEKS                       R14 R0 K8 ["PropertyLookup"]
       94 GETTABLEKS                       R13 R14 K14 ["TrimEnd"]
       96 GETTABLEKS                       R15 R0 K16 ["StateLookup"]
       98 GETTABLEKS                       R14 R15 K15 ["TimeProgress"]
      100 SETLIST                          R9 R10 5 [1]
      102 CALL                             R7 2 1
      103 JUMP                             ; [+38]
      104 GETUPVAL                         R7 7
      105 GETTABLEKS                       R7 R7 K17 ["join"]
      107 DUPTABLE                         R8 K21 [{"Duration", "EndTime", "StartTime"}]
      108 LOADN                            R9 5
      109 SETTABLEKS                       R9 R8 K18 ["Duration"]
      111 GETTABLEKS                       R11 R0 K8 ["PropertyLookup"]
      113 GETTABLEKS                       R10 R11 K12 ["Trim"]
      115 JUMPIFNOT                        R10 ; [+5]
      116 GETTABLEKS                       R10 R0 K8 ["PropertyLookup"]
      118 GETTABLEKS                       R9 R10 K14 ["TrimEnd"]
      120 JUMPIF                           R9 ; [+1]
      121 LOADNIL                          R9
      122 SETTABLEKS                       R9 R8 K19 ["EndTime"]
      124 GETTABLEKS                       R11 R0 K8 ["PropertyLookup"]
      126 GETTABLEKS                       R10 R11 K12 ["Trim"]
      128 JUMPIFNOT                        R10 ; [+5]
      129 GETTABLEKS                       R10 R0 K8 ["PropertyLookup"]
      131 GETTABLEKS                       R9 R10 K13 ["TrimStart"]
      133 JUMPIF                           R9 ; [+1]
      134 LOADNIL                          R9
      135 SETTABLEKS                       R9 R8 K20 ["StartTime"]
      137 GETTABLEKS                       R10 R0 K16 ["StateLookup"]
      139 GETTABLEKS                       R9 R10 K15 ["TimeProgress"]
      141 CALL                             R7 2 1
      142 DUPTABLE                         R8 K30 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd"}]
      143 GETTABLEKS                       R9 R6 K31 ["nextProperty"]
      145 DUPTABLE                         R10 K36 [{"Name", "Type", "Value", "ShowWhenCollapsed"}]
      146 LOADK                            R11 K15 ["TimeProgress"]
      147 SETTABLEKS                       R11 R10 K32 ["Name"]
      149 LOADK                            R11 K15 ["TimeProgress"]
      150 SETTABLEKS                       R11 R10 K33 ["Type"]
      152 SETTABLEKS                       R7 R10 K34 ["Value"]
      154 LOADB                            R11 1
      155 SETTABLEKS                       R11 R10 K35 ["ShowWhenCollapsed"]
      157 CALL                             R9 1 1
      158 SETTABLEKS                       R9 R8 K22 ["Property_TimeProgress"]
      160 GETTABLEKS                       R9 R6 K31 ["nextProperty"]
      162 DUPTABLE                         R10 K40 [{"Name", "Type", "Value", "DefaultValue", "OnChanged", "HidePin"}]
      163 LOADK                            R11 K7 ["AnimationId"]
      164 SETTABLEKS                       R11 R10 K32 ["Name"]
      166 LOADK                            R11 K41 ["Animation"]
      167 SETTABLEKS                       R11 R10 K33 ["Type"]
      169 GETTABLEKS                       R12 R0 K8 ["PropertyLookup"]
      171 GETTABLEKS                       R11 R12 K7 ["AnimationId"]
      173 SETTABLEKS                       R11 R10 K34 ["Value"]
      175 LOADK                            R11 K42 [""]
      176 SETTABLEKS                       R11 R10 K37 ["DefaultValue"]
      178 SETTABLEKS                       R4 R10 K38 ["OnChanged"]
      180 LOADB                            R11 1
      181 SETTABLEKS                       R11 R10 K39 ["HidePin"]
      183 CALL                             R9 1 1
      184 SETTABLEKS                       R9 R8 K23 ["Property_AnimationId"]
      186 GETTABLEKS                       R9 R6 K31 ["nextProperty"]
      188 DUPTABLE                         R10 K43 [{"Name", "Type", "Value", "DefaultValue"}]
      189 LOADK                            R11 K44 ["PlayMode"]
      190 SETTABLEKS                       R11 R10 K32 ["Name"]
      192 LOADK                            R11 K45 ["Enum.AnimationNodePlayMode"]
      193 SETTABLEKS                       R11 R10 K33 ["Type"]
      195 GETTABLEKS                       R12 R0 K8 ["PropertyLookup"]
      197 GETTABLEKS                       R11 R12 K44 ["PlayMode"]
      199 SETTABLEKS                       R11 R10 K34 ["Value"]
      201 GETIMPORT                        R11 K49 [Enum.AnimationNodePlayMode.Loop]
      203 SETTABLEKS                       R11 R10 K37 ["DefaultValue"]
      205 CALL                             R9 1 1
      206 SETTABLEKS                       R9 R8 K24 ["Property_Playmode"]
      208 GETTABLEKS                       R9 R6 K31 ["nextProperty"]
      210 DUPTABLE                         R10 K43 [{"Name", "Type", "Value", "DefaultValue"}]
      211 LOADK                            R11 K50 ["Reverse"]
      212 SETTABLEKS                       R11 R10 K32 ["Name"]
      214 LOADK                            R11 K51 ["Boolean"]
      215 SETTABLEKS                       R11 R10 K33 ["Type"]
      217 GETTABLEKS                       R12 R0 K8 ["PropertyLookup"]
      219 GETTABLEKS                       R11 R12 K50 ["Reverse"]
      221 SETTABLEKS                       R11 R10 K34 ["Value"]
      223 LOADB                            R11 0
      224 SETTABLEKS                       R11 R10 K37 ["DefaultValue"]
      226 CALL                             R9 1 1
      227 SETTABLEKS                       R9 R8 K25 ["Property_Reverse"]
      229 GETTABLEKS                       R9 R6 K31 ["nextProperty"]
      231 DUPTABLE                         R10 K54 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
      232 LOADK                            R11 K55 ["Speed"]
      233 SETTABLEKS                       R11 R10 K32 ["Name"]
      235 LOADK                            R11 K56 ["Number"]
      236 SETTABLEKS                       R11 R10 K33 ["Type"]
      238 GETTABLEKS                       R12 R0 K8 ["PropertyLookup"]
      240 GETTABLEKS                       R11 R12 K55 ["Speed"]
      242 SETTABLEKS                       R11 R10 K34 ["Value"]
      244 LOADN                            R11 1
      245 SETTABLEKS                       R11 R10 K37 ["DefaultValue"]
      247 GETUPVAL                         R12 8
      248 CALL                             R12 0 1
      249 JUMPIFNOT                        R12 ; [+2]
      250 LOADNIL                          R11
      251 JUMP                             ; [+1]
      252 LOADK                            R11 K57 [0.1]
      253 SETTABLEKS                       R11 R10 K52 ["Step"]
      255 GETUPVAL                         R12 8
      256 CALL                             R12 0 1
      257 JUMPIFNOT                        R12 ; [+2]
      258 LOADNIL                          R11
      259 JUMP                             ; [+5]
      260 GETUPVAL                         R11 9
      261 GETTABLEKS                       R11 R11 K58 ["NUMBER_PRECISION"]
      263 GETTABLEKS                       R11 R11 K59 ["Float"]
      265 SETTABLEKS                       R11 R10 K53 ["Precision"]
      267 CALL                             R9 1 1
      268 SETTABLEKS                       R9 R8 K26 ["Property_Speed"]
      270 GETTABLEKS                       R9 R6 K31 ["nextProperty"]
      272 DUPTABLE                         R10 K60 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
      273 LOADK                            R11 K12 ["Trim"]
      274 SETTABLEKS                       R11 R10 K32 ["Name"]
      276 LOADK                            R11 K51 ["Boolean"]
      277 SETTABLEKS                       R11 R10 K33 ["Type"]
      279 GETTABLEKS                       R12 R0 K8 ["PropertyLookup"]
      281 GETTABLEKS                       R11 R12 K12 ["Trim"]
      283 SETTABLEKS                       R11 R10 K34 ["Value"]
      285 LOADB                            R11 0
      286 SETTABLEKS                       R11 R10 K37 ["DefaultValue"]
      288 GETUPVAL                         R12 3
      289 CALL                             R12 0 1
      290 JUMPIFNOT                        R12 ; [+2]
      291 LOADNIL                          R11
      292 JUMP                             ; [+1]
      293 MOVE                             R11 R5
      294 SETTABLEKS                       R11 R10 K38 ["OnChanged"]
      296 CALL                             R9 1 1
      297 SETTABLEKS                       R9 R8 K27 ["Property_Trim"]
      299 GETTABLEKS                       R9 R6 K31 ["nextProperty"]
      301 DUPTABLE                         R10 K63 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "ExtraProps"}]
      302 LOADK                            R11 K13 ["TrimStart"]
      303 SETTABLEKS                       R11 R10 K32 ["Name"]
      305 LOADK                            R11 K64 ["Timestamp"]
      306 SETTABLEKS                       R11 R10 K33 ["Type"]
      308 GETTABLEKS                       R12 R0 K8 ["PropertyLookup"]
      310 GETTABLEKS                       R11 R12 K13 ["TrimStart"]
      312 SETTABLEKS                       R11 R10 K34 ["Value"]
      314 LOADN                            R11 0
      315 SETTABLEKS                       R11 R10 K37 ["DefaultValue"]
      317 GETTABLEKS                       R13 R0 K8 ["PropertyLookup"]
      319 GETTABLEKS                       R12 R13 K12 ["Trim"]
      321 NOT                              R11 R12
      322 SETTABLEKS                       R11 R10 K61 ["IsDisabled"]
      324 GETUPVAL                         R12 3
      325 CALL                             R12 0 1
      326 JUMPIFNOT                        R12 ; [+33]
      327 JUMPIFNOT                        R1 ; [+24]
      328 DUPTABLE                         R11 K67 [{"Minimum", "Maximum"}]
      329 LOADN                            R12 0
      330 SETTABLEKS                       R12 R11 K65 ["Minimum"]
      332 GETUPVAL                         R13 10
      333 GETTABLEKS                       R13 R13 K68 ["number"]
      335 GETTABLEKS                       R15 R0 K8 ["PropertyLookup"]
      337 GETTABLEKS                       R14 R15 K14 ["TrimEnd"]
      339 GETTABLEKS                       R15 R1 K69 ["Length"]
      341 CALL                             R13 2 1
      342 GETTABLEKS                       R14 R1 K69 ["Length"]
      344 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      346 GETIMPORT                        R12 K72 [math.min]
      348 CALL                             R12 2 1
      349 SETTABLEKS                       R12 R11 K66 ["Maximum"]
      351 JUMP                             ; [+9]
      352 DUPTABLE                         R11 K67 [{"Minimum", "Maximum"}]
      353 LOADN                            R12 0
      354 SETTABLEKS                       R12 R11 K65 ["Minimum"]
      356 LOADN                            R12 0
      357 SETTABLEKS                       R12 R11 K66 ["Maximum"]
      359 JUMP                             ; [+1]
      360 LOADNIL                          R11
      361 SETTABLEKS                       R11 R10 K62 ["ExtraProps"]
      363 CALL                             R9 1 1
      364 SETTABLEKS                       R9 R8 K28 ["Property_TrimStart"]
      366 GETTABLEKS                       R9 R6 K31 ["nextProperty"]
      368 DUPTABLE                         R10 K63 [{"Name", "Type", "Value", "DefaultValue", "IsDisabled", "ExtraProps"}]
      369 LOADK                            R11 K14 ["TrimEnd"]
      370 SETTABLEKS                       R11 R10 K32 ["Name"]
      372 LOADK                            R11 K64 ["Timestamp"]
      373 SETTABLEKS                       R11 R10 K33 ["Type"]
      375 GETTABLEKS                       R12 R0 K8 ["PropertyLookup"]
      377 GETTABLEKS                       R11 R12 K14 ["TrimEnd"]
      379 SETTABLEKS                       R11 R10 K34 ["Value"]
      381 LOADN                            R11 0
      382 SETTABLEKS                       R11 R10 K37 ["DefaultValue"]
      384 GETTABLEKS                       R13 R0 K8 ["PropertyLookup"]
      386 GETTABLEKS                       R12 R13 K12 ["Trim"]
      388 NOT                              R11 R12
      389 SETTABLEKS                       R11 R10 K61 ["IsDisabled"]
      391 GETUPVAL                         R12 3
      392 CALL                             R12 0 1
      393 JUMPIFNOT                        R12 ; [+32]
      394 JUMPIFNOT                        R1 ; [+23]
      395 DUPTABLE                         R11 K67 [{"Minimum", "Maximum"}]
      396 GETUPVAL                         R13 10
      397 GETTABLEKS                       R13 R13 K68 ["number"]
      399 GETTABLEKS                       R15 R0 K8 ["PropertyLookup"]
      401 GETTABLEKS                       R14 R15 K13 ["TrimStart"]
      403 LOADN                            R15 0
      404 CALL                             R13 2 1
      405 FASTCALL2K                       MATH_MAX R13 K73 ; [+4]
      407 LOADK                            R14 K73 [0]
      408 GETIMPORT                        R12 K75 [math.max]
      410 CALL                             R12 2 1
      411 SETTABLEKS                       R12 R11 K65 ["Minimum"]
      413 GETTABLEKS                       R12 R1 K69 ["Length"]
      415 SETTABLEKS                       R12 R11 K66 ["Maximum"]
      417 JUMP                             ; [+9]
      418 DUPTABLE                         R11 K67 [{"Minimum", "Maximum"}]
      419 LOADN                            R12 0
      420 SETTABLEKS                       R12 R11 K65 ["Minimum"]
      422 LOADN                            R12 0
      423 SETTABLEKS                       R12 R11 K66 ["Maximum"]
      425 JUMP                             ; [+1]
      426 LOADNIL                          R11
      427 SETTABLEKS                       R11 R10 K62 ["ExtraProps"]
      429 CALL                             R9 1 1
      430 SETTABLEKS                       R9 R8 K29 ["Property_TrimEnd"]
      432 GETUPVAL                         R9 0
      433 GETTABLEKS                       R9 R9 K76 ["createElement"]
      435 GETUPVAL                         R10 6
      436 GETTABLEKS                       R10 R10 K77 ["CompositorNode"]
      438 GETTABLEKS                       R11 R6 K78 ["nodeProps"]
      440 DUPTABLE                         R12 K80 [{"OutputPin"}]
      441 GETTABLEKS                       R13 R6 K81 ["outputPin"]
      443 CALL                             R13 0 1
      444 SETTABLEKS                       R13 R12 K79 ["OutputPin"]
      446 CALL                             R11 1 1
      447 MOVE                             R12 R8
      448 CALL                             R9 3 -1
      449 RETURN                           R9 -1

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
       38 GETTABLEKS                       R6 R6 K15 ["Framework"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K12 ["Parent"]
       45 GETTABLEKS                       R7 R7 K16 ["NodeGraphing"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K12 ["Parent"]
       52 GETTABLEKS                       R8 R8 K17 ["React"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K18 ["Flags"]
       59 GETTABLEKS                       R9 R9 K19 ["getFFlagAnimGraphFloatStep003"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R1 K18 ["Flags"]
       66 GETTABLEKS                       R10 R10 K20 ["getFFlagAnimGraphUIClampClipTrim"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R1 K18 ["Flags"]
       73 GETTABLEKS                       R11 R11 K21 ["getFFlagAnimGraphUIWarnOnInvalidClip"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K1 [game]
       78 LOADK                            R13 K22 ["AnimGraphFixAnimationClipEffectCrash"]
       79 LOADB                            R14 0
       80 NAMECALL                         R11 R11 K23 ["DefineFastFlag"]
       82 CALL                             R11 3 1
       83 DUPCLOSURE                       R12 K24 [PROTO_7]
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R4
       95 RETURN                           R12 1
