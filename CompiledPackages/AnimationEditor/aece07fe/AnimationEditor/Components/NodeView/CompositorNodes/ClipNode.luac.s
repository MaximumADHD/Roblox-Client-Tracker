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
       44 JUMPIFNOT                        R3 ; [+8]
       45 GETIMPORT                        R3 K13 [task.spawn]
       47 NEWCLOSURE                       R4 P0
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U0
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

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
       40 GETIMPORT                        R1 K10 [task.spawn]
       42 NEWCLOSURE                       R2 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U1
       47 CALL                             R1 1 1
       48 NEWCLOSURE                       R2 P1
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U1
       51 RETURN                           R2 1

PROTO_5:
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

PROTO_6:
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
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 NEWTABLE                         R9 0 5
       46 MOVE                             R10 R5
       47 GETTABLEKS                       R11 R0 K7 ["OnPropertyChanged"]
       49 GETTABLEKS                       R12 R2 K8 ["getAssetNameAsync"]
       51 GETTABLEKS                       R13 R3 K9 ["renameNodeAsync"]
       53 GETTABLEKS                       R14 R0 K10 ["GraphPayload"]
       55 GETTABLEKS                       R14 R14 K11 ["id"]
       57 SETLIST                          R9 R10 5 [1]
       59 CALL                             R7 2 1
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R8 R8 K12 ["useEffect"]
       63 NEWCLOSURE                       R9 P1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R5
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 NEWTABLE                         R10 0 2
       71 GETTABLEKS                       R12 R0 K14 ["PropertyLookup"]
       73 GETTABLEKS                       R11 R12 K13 ["AnimationId"]
       75 MOVE                             R12 R5
       76 SETLIST                          R10 R11 2 [1]
       78 CALL                             R8 2 0
       79 GETUPVAL                         R8 8
       80 GETTABLEKS                       R8 R8 K15 ["CompositorNodeUtils"]
       82 GETTABLEKS                       R8 R8 K16 ["createPropertyHelpers"]
       84 MOVE                             R9 R0
       85 CALL                             R8 1 1
       86 GETUPVAL                         R9 0
       87 GETTABLEKS                       R9 R9 K17 ["useMemo"]
       89 NEWCLOSURE                       R10 P2
       90 CAPTURE                          UPVAL U9
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R0
       93 NEWTABLE                         R11 0 5
       95 MOVE                             R12 R4
       96 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
       98 GETTABLEKS                       R13 R14 K18 ["Trim"]
      100 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      102 GETTABLEKS                       R14 R15 K19 ["TrimStart"]
      104 GETTABLEKS                       R16 R0 K14 ["PropertyLookup"]
      106 GETTABLEKS                       R15 R16 K20 ["TrimEnd"]
      108 GETTABLEKS                       R17 R0 K22 ["StateLookup"]
      110 GETTABLEKS                       R16 R17 K21 ["TimeProgress"]
      112 SETLIST                          R11 R12 5 [1]
      114 CALL                             R9 2 1
      115 DUPTABLE                         R10 K31 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd"}]
      116 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      118 DUPTABLE                         R12 K38 [{["Name"] = "TimeProgress", ["Type"] = "TimeProgress", ["Value"], ["ShowWhenCollapsed"] = True}]
      119 SETTABLEKS                       R9 R12 K35 ["Value"]
      121 CALL                             R11 1 1
      122 SETTABLEKS                       R11 R10 K23 ["Property_TimeProgress"]
      124 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      126 DUPTABLE                         R12 K44 [{["Name"] = "AnimationId", ["Type"] = "Animation", ["Value"], ["DefaultValue"] = "", ["OnChanged"], ["HidePin"]}]
      127 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      129 GETTABLEKS                       R13 R14 K13 ["AnimationId"]
      131 SETTABLEKS                       R13 R12 K35 ["Value"]
      133 SETTABLEKS                       R7 R12 K42 ["OnChanged"]
      135 GETUPVAL                         R14 10
      136 NOT                              R13 R14
      137 SETTABLEKS                       R13 R12 K43 ["HidePin"]
      139 CALL                             R11 1 1
      140 SETTABLEKS                       R11 R10 K24 ["Property_AnimationId"]
      142 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      144 DUPTABLE                         R12 K47 [{["Name"] = "PlayMode", ["Type"] = "Enum.AnimationNodePlayMode", ["Value"], ["DefaultValue"]}]
      145 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      147 GETTABLEKS                       R13 R14 K45 ["PlayMode"]
      149 SETTABLEKS                       R13 R12 K35 ["Value"]
      151 GETIMPORT                        R13 K51 [Enum.AnimationNodePlayMode.Loop]
      153 SETTABLEKS                       R13 R12 K40 ["DefaultValue"]
      155 CALL                             R11 1 1
      156 SETTABLEKS                       R11 R10 K25 ["Property_Playmode"]
      158 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      160 DUPTABLE                         R12 K55 [{["Name"] = "Reverse", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      161 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      163 GETTABLEKS                       R13 R14 K52 ["Reverse"]
      165 SETTABLEKS                       R13 R12 K35 ["Value"]
      167 CALL                             R11 1 1
      168 SETTABLEKS                       R11 R10 K26 ["Property_Reverse"]
      170 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      172 DUPTABLE                         R12 K59 [{["Name"] = "Speed", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
      173 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      175 GETTABLEKS                       R13 R14 K56 ["Speed"]
      177 SETTABLEKS                       R13 R12 K35 ["Value"]
      179 CALL                             R11 1 1
      180 SETTABLEKS                       R11 R10 K27 ["Property_Speed"]
      182 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      184 DUPTABLE                         R12 K60 [{["Name"] = "Trim", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      185 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      187 GETTABLEKS                       R13 R14 K18 ["Trim"]
      189 SETTABLEKS                       R13 R12 K35 ["Value"]
      191 CALL                             R11 1 1
      192 SETTABLEKS                       R11 R10 K28 ["Property_Trim"]
      194 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      196 DUPTABLE                         R12 K65 [{["Name"] = "TrimStart", ["Type"] = "Timestamp", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"], ["ExtraProps"]}]
      197 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      199 GETTABLEKS                       R13 R14 K19 ["TrimStart"]
      201 SETTABLEKS                       R13 R12 K35 ["Value"]
      203 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      205 GETTABLEKS                       R14 R15 K18 ["Trim"]
      207 NOT                              R13 R14
      208 SETTABLEKS                       R13 R12 K63 ["IsDisabled"]
      210 JUMPIFNOT                        R4 ; [+21]
      211 DUPTABLE                         R13 K68 [{["Minimum"] = 0, ["Maximum"]}]
      212 GETUPVAL                         R15 11
      213 GETTABLEKS                       R15 R15 K69 ["number"]
      215 GETTABLEKS                       R17 R0 K14 ["PropertyLookup"]
      217 GETTABLEKS                       R16 R17 K20 ["TrimEnd"]
      219 GETTABLEKS                       R17 R4 K70 ["Length"]
      221 CALL                             R15 2 1
      222 GETTABLEKS                       R16 R4 K70 ["Length"]
      224 FASTCALL2                        MATH_MIN R15 R16 ; [+3]
      226 GETIMPORT                        R14 K73 [math.min]
      228 CALL                             R14 2 1
      229 SETTABLEKS                       R14 R13 K67 ["Maximum"]
      231 JUMP                             ; [+1]
      232 DUPTABLE                         R13 K74 [{["Minimum"] = 0, ["Maximum"] = 0}]
      233 SETTABLEKS                       R13 R12 K64 ["ExtraProps"]
      235 CALL                             R11 1 1
      236 SETTABLEKS                       R11 R10 K29 ["Property_TrimStart"]
      238 GETTABLEKS                       R11 R8 K32 ["nextProperty"]
      240 DUPTABLE                         R12 K75 [{["Name"] = "TrimEnd", ["Type"] = "Timestamp", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"], ["ExtraProps"]}]
      241 GETTABLEKS                       R14 R0 K14 ["PropertyLookup"]
      243 GETTABLEKS                       R13 R14 K20 ["TrimEnd"]
      245 SETTABLEKS                       R13 R12 K35 ["Value"]
      247 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      249 GETTABLEKS                       R14 R15 K18 ["Trim"]
      251 NOT                              R13 R14
      252 SETTABLEKS                       R13 R12 K63 ["IsDisabled"]
      254 JUMPIFNOT                        R4 ; [+23]
      255 DUPTABLE                         R13 K76 [{"Minimum", "Maximum"}]
      256 GETUPVAL                         R15 11
      257 GETTABLEKS                       R15 R15 K69 ["number"]
      259 GETTABLEKS                       R17 R0 K14 ["PropertyLookup"]
      261 GETTABLEKS                       R16 R17 K19 ["TrimStart"]
      263 LOADN                            R17 0
      264 CALL                             R15 2 1
      265 FASTCALL2K                       MATH_MAX R15 K62 ; [+4]
      267 LOADK                            R16 K62 [0]
      268 GETIMPORT                        R14 K78 [math.max]
      270 CALL                             R14 2 1
      271 SETTABLEKS                       R14 R13 K66 ["Minimum"]
      273 GETTABLEKS                       R14 R4 K70 ["Length"]
      275 SETTABLEKS                       R14 R13 K67 ["Maximum"]
      277 JUMP                             ; [+1]
      278 DUPTABLE                         R13 K74 [{["Minimum"] = 0, ["Maximum"] = 0}]
      279 SETTABLEKS                       R13 R12 K64 ["ExtraProps"]
      281 CALL                             R11 1 1
      282 SETTABLEKS                       R11 R10 K30 ["Property_TrimEnd"]
      284 GETUPVAL                         R11 0
      285 GETTABLEKS                       R11 R11 K79 ["createElement"]
      287 GETUPVAL                         R12 8
      288 GETTABLEKS                       R12 R12 K80 ["CompositorNode"]
      290 GETTABLEKS                       R13 R8 K81 ["nodeProps"]
      292 DUPTABLE                         R14 K84 [{"ContextToolbar", "OutputPin"}]
      293 GETTABLEKS                       R15 R8 K85 ["spotlightButton"]
      295 CALL                             R15 0 1
      296 SETTABLEKS                       R15 R14 K82 ["ContextToolbar"]
      298 GETTABLEKS                       R15 R8 K86 ["outputPin"]
      300 CALL                             R15 0 1
      301 SETTABLEKS                       R15 R14 K83 ["OutputPin"]
      303 CALL                             R13 1 1
      304 MOVE                             R14 R10
      305 CALL                             R11 3 -1
      306 RETURN                           R11 -1

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
       80 GETTABLEKS                       R12 R12 K23 ["getFFlagAnimGraphUI_FixExpectedType"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K1 [game]
       85 LOADK                            R14 K24 ["AnimGraphClipRuntimeSwap"]
       86 NAMECALL                         R12 R12 K25 ["GetEngineFeature"]
       88 CALL                             R12 2 1
       89 DUPCLOSURE                       R13 K26 [PROTO_6]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R5
      102 RETURN                           R13 1
