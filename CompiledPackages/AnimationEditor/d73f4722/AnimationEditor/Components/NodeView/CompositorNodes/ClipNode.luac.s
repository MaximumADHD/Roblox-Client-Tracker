PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAssetNameAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+10]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["renameNodeAsync"]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R2 R2 K2 ["GraphPayload"]
       12 GETTABLEKS                       R2 R2 K3 ["id"]
       14 MOVE                             R3 R0
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnPropertyChanged"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["GetAnimationClipAsync"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       13 LOADK                            R4 K2 ["AnimationId"]
       14 MOVE                             R5 R1
       15 CALL                             R3 2 0
       16 JUMPIFNOT                        R2 ; [+26]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       20 LOADK                            R4 K3 ["TrimStart"]
       21 LOADN                            R5 0
       22 CALL                             R3 2 0
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       26 LOADK                            R4 K4 ["TrimEnd"]
       27 GETTABLEKS                       R5 R2 K5 ["Length"]
       29 CALL                             R3 2 0
       30 GETTABLEKS                       R3 R2 K6 ["Loop"]
       32 JUMPIFNOT                        R3 ; [+7]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K0 ["OnPropertyChanged"]
       36 LOADK                            R4 K7 ["PlayMode"]
       37 GETIMPORT                        R5 K10 [Enum.AnimationNodePlayMode.Loop]
       39 CALL                             R3 2 0
       40 GETUPVAL                         R3 2
       41 MOVE                             R4 R2
       42 CALL                             R3 1 0
       43 GETUPVAL                         R3 3
       44 JUMPIFNOT                        R3 ; [+10]
       45 GETUPVAL                         R3 4
       46 JUMPIFNOT                        R3 ; [+8]
       47 GETIMPORT                        R3 K13 [task.spawn]
       49 NEWCLOSURE                       R4 P0
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          UPVAL U0
       54 CALL                             R3 1 0
       55 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAnimationClipAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFEQKNIL                     R0 ; [+26]
        7 LOADK                            R3 K1 ["KeyframeSequence"]
        8 NAMECALL                         R1 R0 K2 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+20]
       12 LOADK                            R3 K3 ["CurveAnimation"]
       13 NAMECALL                         R1 R0 K2 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIF                           R1 ; [+15]
       17 GETIMPORT                        R1 K5 [warn]
       19 GETUPVAL                         R2 2
       20 LOADK                            R4 K6 ["Common"]
       21 LOADK                            R5 K7 ["AnimationEditor"]
       22 LOADK                            R6 K8 ["ClipNode"]
       23 LOADK                            R7 K9 ["InvalidAssetType"]
       24 DUPTABLE                         R8 K11 [{"assetid"}]
       25 GETUPVAL                         R9 1
       26 SETTABLEKS                       R9 R8 K10 ["assetid"]
       28 NAMECALL                         R2 R2 K12 ["getExternalText"]
       30 CALL                             R2 6 -1
       31 CALL                             R1 -1 0
       32 GETUPVAL                         R1 3
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

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
       11 GETUPVAL                         R1 2
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+11]
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K3 [typeof]
       18 CALL                             R1 1 1
       19 JUMPIFEQKS                       R1 K4 ["string"] ; [+5]
       21 GETUPVAL                         R1 1
       22 LOADNIL                          R2
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 FASTCALL1                        TYPEOF R0 ; [+3]
       26 MOVE                             R4 R0
       27 GETIMPORT                        R3 K3 [typeof]
       29 CALL                             R3 1 1
       30 JUMPIFEQKS                       R3 K4 ["string"] ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       36 LOADK                            R3 K5 ["Not a string"]
       37 GETIMPORT                        R1 K7 [assert]
       39 CALL                             R1 2 0
       40 GETUPVAL                         R1 3
       41 JUMPIFNOT                        R1 ; [+12]
       42 GETIMPORT                        R1 K10 [task.spawn]
       44 NEWCLOSURE                       R2 P0
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U1
       49 CALL                             R1 1 1
       50 NEWCLOSURE                       R2 P1
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U1
       53 RETURN                           R2 1
       54 GETUPVAL                         R1 1
       55 GETUPVAL                         R2 6
       56 MOVE                             R4 R0
       57 NAMECALL                         R2 R2 K11 ["GetAnimationClipAsync"]
       59 CALL                             R2 2 -1
       60 CALL                             R1 -1 0
       61 NEWCLOSURE                       R1 P2
       62 CAPTURE                          UPVAL U1
       63 RETURN                           R1 1

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
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K2 ["useState"]
       24 LOADNIL                          R5
       25 CALL                             R4 1 2
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K3 ["ContextServices"]
       29 GETTABLEKS                       R6 R6 K4 ["Localization"]
       31 NAMECALL                         R6 R6 K5 ["use"]
       33 CALL                             R6 1 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R5
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 NEWTABLE                         R9 0 5
       47 MOVE                             R10 R5
       48 GETTABLEKS                       R11 R0 K7 ["OnPropertyChanged"]
       50 GETTABLEKS                       R12 R2 K8 ["getAssetNameAsync"]
       52 GETTABLEKS                       R13 R3 K9 ["renameNodeAsync"]
       54 GETTABLEKS                       R14 R0 K10 ["GraphPayload"]
       56 GETTABLEKS                       R14 R14 K11 ["id"]
       58 SETLIST                          R9 R10 5 [1]
       60 CALL                             R7 2 1
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K12 ["useEffect"]
       64 NEWCLOSURE                       R9 P1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R5
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          UPVAL U9
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R6
       71 CAPTURE                          UPVAL U5
       72 NEWTABLE                         R10 0 2
       74 GETTABLEKS                       R12 R0 K14 ["PropertyLookup"]
       76 GETTABLEKS                       R11 R12 K13 ["AnimationId"]
       78 MOVE                             R12 R5
       79 SETLIST                          R10 R11 2 [1]
       81 CALL                             R8 2 0
       82 GETUPVAL                         R8 10
       83 GETTABLEKS                       R8 R8 K15 ["CompositorNodeUtils"]
       85 GETTABLEKS                       R8 R8 K16 ["createPropertyHelpers"]
       87 MOVE                             R9 R0
       88 CALL                             R8 1 1
       89 GETUPVAL                         R9 0
       90 GETTABLEKS                       R9 R9 K17 ["useMemo"]
       92 NEWCLOSURE                       R10 P2
       93 CAPTURE                          UPVAL U11
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R0
       96 NEWTABLE                         R11 0 5
       98 MOVE                             R12 R4
       99 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      101 GETTABLEKS                       R13 R14 K18 ["Trim"]
      103 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      105 GETTABLEKS                       R14 R15 K19 ["TrimStart"]
      107 GETTABLEKS                       R16 R0 K14 ["PropertyLookup"]
      109 GETTABLEKS                       R15 R16 K20 ["TrimEnd"]
      111 GETTABLEKS                       R17 R0 K22 ["StateLookup"]
      113 GETTABLEKS                       R16 R17 K21 ["TimeProgress"]
      115 SETLIST                          R11 R12 5 [1]
      117 CALL                             R9 2 1
      118 DUPTABLE                         R10 K31 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd"}]
      119 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      121 DUPTABLE                         R12 K38 [{["Name"] = "TimeProgress", ["Type"] = "TimeProgress", ["Value"], ["ShowWhenCollapsed"] = True}]
      122 SETTABLEKS                       R9 R12 K35 ["Value"]
      124 CALL                             R11 1 1
      125 SETTABLEKS                       R11 R10 K23 ["Property_TimeProgress"]
      127 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      129 DUPTABLE                         R12 K44 [{["Name"] = "AnimationId", ["Type"] = "Animation", ["Value"], ["DefaultValue"] = "", ["OnChanged"], ["HidePin"] = True}]
      130 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      132 GETTABLEKS                       R13 R14 K13 ["AnimationId"]
      134 SETTABLEKS                       R13 R12 K35 ["Value"]
      136 SETTABLEKS                       R7 R12 K42 ["OnChanged"]
      138 CALL                             R11 1 1
      139 SETTABLEKS                       R11 R10 K24 ["Property_AnimationId"]
      141 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      143 DUPTABLE                         R12 K47 [{["Name"] = "PlayMode", ["Type"] = "Enum.AnimationNodePlayMode", ["Value"], ["DefaultValue"]}]
      144 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      146 GETTABLEKS                       R13 R14 K45 ["PlayMode"]
      148 SETTABLEKS                       R13 R12 K35 ["Value"]
      150 GETIMPORT                        R13 K51 [Enum.AnimationNodePlayMode.Loop]
      152 SETTABLEKS                       R13 R12 K40 ["DefaultValue"]
      154 CALL                             R11 1 1
      155 SETTABLEKS                       R11 R10 K25 ["Property_Playmode"]
      157 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      159 DUPTABLE                         R12 K55 [{["Name"] = "Reverse", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      160 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      162 GETTABLEKS                       R13 R14 K52 ["Reverse"]
      164 SETTABLEKS                       R13 R12 K35 ["Value"]
      166 CALL                             R11 1 1
      167 SETTABLEKS                       R11 R10 K26 ["Property_Reverse"]
      169 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      171 DUPTABLE                         R12 K59 [{["Name"] = "Speed", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
      172 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      174 GETTABLEKS                       R13 R14 K56 ["Speed"]
      176 SETTABLEKS                       R13 R12 K35 ["Value"]
      178 CALL                             R11 1 1
      179 SETTABLEKS                       R11 R10 K27 ["Property_Speed"]
      181 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      183 DUPTABLE                         R12 K60 [{["Name"] = "Trim", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      184 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      186 GETTABLEKS                       R13 R14 K18 ["Trim"]
      188 SETTABLEKS                       R13 R12 K35 ["Value"]
      190 CALL                             R11 1 1
      191 SETTABLEKS                       R11 R10 K28 ["Property_Trim"]
      193 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      195 DUPTABLE                         R12 K65 [{["Name"] = "TrimStart", ["Type"] = "Timestamp", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"], ["ExtraProps"]}]
      196 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      198 GETTABLEKS                       R13 R14 K19 ["TrimStart"]
      200 SETTABLEKS                       R13 R12 K35 ["Value"]
      202 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      204 GETTABLEKS                       R14 R15 K18 ["Trim"]
      206 NOT                              R13 R14
      207 SETTABLEKS                       R13 R12 K63 ["IsDisabled"]
      209 JUMPIFNOT                        R4 ; [+21]
      210 DUPTABLE                         R13 K68 [{["Minimum"] = 0, ["Maximum"]}]
      211 GETUPVAL                         R15 12
      212 GETTABLEKS                       R15 R15 K69 ["number"]
      214 GETTABLEKS                       R17 R0 K14 ["PropertyLookup"]
      216 GETTABLEKS                       R16 R17 K20 ["TrimEnd"]
      218 GETTABLEKS                       R17 R4 K70 ["Length"]
      220 CALL                             R15 2 1
      221 GETTABLEKS                       R16 R4 K70 ["Length"]
      223 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
      225 GETIMPORT                        R14 K73 [math.min]
      227 CALL                             R14 2 1
      228 SETTABLEKS                       R14 R13 K67 ["Maximum"]
      230 JUMP                             ; [+1]
      231 DUPTABLE                         R13 K74 [{["Minimum"] = 0, ["Maximum"] = 0}]
      232 SETTABLEKS                       R13 R12 K64 ["ExtraProps"]
      234 CALL                             R11 1 1
      235 SETTABLEKS                       R11 R10 K29 ["Property_TrimStart"]
      237 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      239 DUPTABLE                         R12 K75 [{["Name"] = "TrimEnd", ["Type"] = "Timestamp", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"], ["ExtraProps"]}]
      240 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      242 GETTABLEKS                       R13 R14 K20 ["TrimEnd"]
      244 SETTABLEKS                       R13 R12 K35 ["Value"]
      246 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      248 GETTABLEKS                       R14 R15 K18 ["Trim"]
      250 NOT                              R13 R14
      251 SETTABLEKS                       R13 R12 K63 ["IsDisabled"]
      253 JUMPIFNOT                        R4 ; [+23]
      254 DUPTABLE                         R13 K76 [{"Minimum", "Maximum"}]
      255 GETUPVAL                         R15 12
      256 GETTABLEKS                       R15 R15 K69 ["number"]
      258 GETTABLEKS                       R17 R0 K14 ["PropertyLookup"]
      260 GETTABLEKS                       R16 R17 K19 ["TrimStart"]
      262 LOADN                            R17 0
      263 CALL                             R15 2 1
      264 FASTCALL2K                       MATH_MAX R15 K62 ; [+4]
      266 LOADK                            R16 K62 [0]
      267 GETIMPORT                        R14 K78 [math.max]
      269 CALL                             R14 2 1
      270 SETTABLEKS                       R14 R13 K66 ["Minimum"]
      272 GETTABLEKS                       R14 R4 K70 ["Length"]
      274 SETTABLEKS                       R14 R13 K67 ["Maximum"]
      276 JUMP                             ; [+1]
      277 DUPTABLE                         R13 K74 [{["Minimum"] = 0, ["Maximum"] = 0}]
      278 SETTABLEKS                       R13 R12 K64 ["ExtraProps"]
      280 CALL                             R11 1 1
      281 SETTABLEKS                       R11 R10 K30 ["Property_TrimEnd"]
      283 GETUPVAL                         R11 0
      284 GETTABLEKS                       R11 R11 K79 ["createElement"]
      286 GETUPVAL                         R12 10
      287 GETTABLEKS                       R12 R12 K80 ["CompositorNode"]
      289 GETTABLEKS                       R13 R8 K81 ["nodeProps"]
      291 DUPTABLE                         R14 K84 [{"ContextToolbar", "OutputPin"}]
      292 GETUPVAL                         R16 13
      293 CALL                             R16 0 1
      294 JUMPIFNOT                        R16 ; [+4]
      295 GETTABLEKS                       R15 R8 K85 ["spotlightButton"]
      297 CALL                             R15 0 1
      298 JUMP                             ; [+1]
      299 LOADNIL                          R15
      300 SETTABLEKS                       R15 R14 K82 ["ContextToolbar"]
      302 GETTABLEKS                       R15 R8 K86 ["outputPin"]
      304 CALL                             R15 0 1
      305 SETTABLEKS                       R15 R14 K83 ["OutputPin"]
      307 CALL                             R13 1 1
      308 MOVE                             R14 R10
      309 CALL                             R11 3 -1
      310 RETURN                           R11 -1

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
       22 GETTABLEKS                       R4 R1 K10 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K12 ["AssetNameContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Parent"]
       31 GETTABLEKS                       R5 R5 K14 ["Dash"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K15 ["Util"]
       38 GETTABLEKS                       R6 R6 K16 ["ExpectType"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K13 ["Parent"]
       45 GETTABLEKS                       R7 R7 K17 ["Framework"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K10 ["Contexts"]
       52 GETTABLEKS                       R8 R8 K18 ["NativeGraphContext"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K13 ["Parent"]
       59 GETTABLEKS                       R9 R9 K19 ["NodeGraphing"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R1 K13 ["Parent"]
       66 GETTABLEKS                       R10 R10 K20 ["React"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R1 K21 ["Flags"]
       73 GETTABLEKS                       R11 R11 K22 ["FFlagAnimGraphUIRenameDuplicateInput"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R1 K21 ["Flags"]
       80 GETTABLEKS                       R12 R12 K23 ["FFlagAnimGraphUI_FixClipNames"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K9 [require]
       85 GETTABLEKS                       R13 R1 K21 ["Flags"]
       87 GETTABLEKS                       R13 R13 K24 ["getFFlagAnimGraphUI_SpotlightNodes"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K1 [game]
       92 LOADK                            R15 K25 ["AnimGraphFixAnimationClipEffectCrash"]
       93 LOADB                            R16 0
       94 NAMECALL                         R13 R13 K26 ["DefineFastFlag"]
       96 CALL                             R13 3 1
       97 GETIMPORT                        R14 K9 [require]
       99 GETTABLEKS                       R15 R1 K21 ["Flags"]
      101 GETTABLEKS                       R15 R15 K27 ["getFFlagAnimGraphUI_FixExpectedType"]
      103 CALL                             R14 1 1
      104 DUPCLOSURE                       R15 K28 [PROTO_7]
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R12
      119 RETURN                           R15 1
