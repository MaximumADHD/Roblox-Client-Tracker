PROTO_0:
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
       43 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
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
       27 JUMPIFNOT                        R1 ; [+12]
       28 GETIMPORT                        R1 K10 [task.spawn]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U1
       35 CALL                             R1 1 1
       36 NEWCLOSURE                       R2 P1
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U1
       39 RETURN                           R2 1
       40 GETUPVAL                         R1 1
       41 GETUPVAL                         R2 5
       42 MOVE                             R4 R0
       43 NAMECALL                         R2 R2 K11 ["GetAnimationClipAsync"]
       45 CALL                             R2 2 -1
       46 CALL                             R1 -1 0
       47 NEWCLOSURE                       R1 P2
       48 CAPTURE                          UPVAL U1
       49 RETURN                           R1 1

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
       26 CAPTURE                          VAL R3
       27 NEWTABLE                         R7 0 2
       29 MOVE                             R8 R3
       30 GETTABLEKS                       R9 R0 K7 ["OnPropertyChanged"]
       32 SETLIST                          R7 R8 2 [1]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K8 ["useEffect"]
       38 NEWCLOSURE                       R7 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          UPVAL U3
       45 NEWTABLE                         R8 0 2
       47 GETTABLEKS                       R10 R0 K10 ["PropertyLookup"]
       49 GETTABLEKS                       R9 R10 K9 ["AnimationId"]
       51 MOVE                             R10 R3
       52 SETLIST                          R8 R9 2 [1]
       54 CALL                             R6 2 0
       55 GETUPVAL                         R6 5
       56 GETTABLEKS                       R6 R6 K11 ["CompositorNodeUtils"]
       58 GETTABLEKS                       R6 R6 K12 ["createPropertyHelpers"]
       60 MOVE                             R7 R0
       61 CALL                             R6 1 1
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K13 ["useMemo"]
       65 NEWCLOSURE                       R8 P2
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R9 0 5
       71 MOVE                             R10 R2
       72 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
       74 GETTABLEKS                       R11 R12 K14 ["Trim"]
       76 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
       78 GETTABLEKS                       R12 R13 K15 ["TrimStart"]
       80 GETTABLEKS                       R14 R0 K10 ["PropertyLookup"]
       82 GETTABLEKS                       R13 R14 K16 ["TrimEnd"]
       84 GETTABLEKS                       R15 R0 K18 ["StateLookup"]
       86 GETTABLEKS                       R14 R15 K17 ["TimeProgress"]
       88 SETLIST                          R9 R10 5 [1]
       90 CALL                             R7 2 1
       91 DUPTABLE                         R8 K27 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd"}]
       92 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
       94 DUPTABLE                         R10 K34 [{["Name"] = "TimeProgress", ["Type"] = "TimeProgress", ["Value"], ["ShowWhenCollapsed"] = True}]
       95 SETTABLEKS                       R7 R10 K31 ["Value"]
       97 CALL                             R9 1 1
       98 SETTABLEKS                       R9 R8 K19 ["Property_TimeProgress"]
      100 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
      102 DUPTABLE                         R10 K40 [{["Name"] = "AnimationId", ["Type"] = "Animation", ["Value"], ["DefaultValue"] = "", ["OnChanged"], ["HidePin"] = True}]
      103 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      105 GETTABLEKS                       R11 R12 K9 ["AnimationId"]
      107 SETTABLEKS                       R11 R10 K31 ["Value"]
      109 SETTABLEKS                       R5 R10 K38 ["OnChanged"]
      111 CALL                             R9 1 1
      112 SETTABLEKS                       R9 R8 K20 ["Property_AnimationId"]
      114 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
      116 DUPTABLE                         R10 K43 [{["Name"] = "PlayMode", ["Type"] = "Enum.AnimationNodePlayMode", ["Value"], ["DefaultValue"]}]
      117 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      119 GETTABLEKS                       R11 R12 K41 ["PlayMode"]
      121 SETTABLEKS                       R11 R10 K31 ["Value"]
      123 GETIMPORT                        R11 K47 [Enum.AnimationNodePlayMode.Loop]
      125 SETTABLEKS                       R11 R10 K36 ["DefaultValue"]
      127 CALL                             R9 1 1
      128 SETTABLEKS                       R9 R8 K21 ["Property_Playmode"]
      130 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
      132 DUPTABLE                         R10 K51 [{["Name"] = "Reverse", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      133 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      135 GETTABLEKS                       R11 R12 K48 ["Reverse"]
      137 SETTABLEKS                       R11 R10 K31 ["Value"]
      139 CALL                             R9 1 1
      140 SETTABLEKS                       R9 R8 K22 ["Property_Reverse"]
      142 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
      144 DUPTABLE                         R10 K55 [{["Name"] = "Speed", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
      145 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      147 GETTABLEKS                       R11 R12 K52 ["Speed"]
      149 SETTABLEKS                       R11 R10 K31 ["Value"]
      151 CALL                             R9 1 1
      152 SETTABLEKS                       R9 R8 K23 ["Property_Speed"]
      154 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
      156 DUPTABLE                         R10 K56 [{["Name"] = "Trim", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      157 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      159 GETTABLEKS                       R11 R12 K14 ["Trim"]
      161 SETTABLEKS                       R11 R10 K31 ["Value"]
      163 CALL                             R9 1 1
      164 SETTABLEKS                       R9 R8 K24 ["Property_Trim"]
      166 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
      168 DUPTABLE                         R10 K61 [{["Name"] = "TrimStart", ["Type"] = "Timestamp", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"], ["ExtraProps"]}]
      169 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      171 GETTABLEKS                       R11 R12 K15 ["TrimStart"]
      173 SETTABLEKS                       R11 R10 K31 ["Value"]
      175 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      177 GETTABLEKS                       R12 R13 K14 ["Trim"]
      179 NOT                              R11 R12
      180 SETTABLEKS                       R11 R10 K59 ["IsDisabled"]
      182 JUMPIFNOT                        R2 ; [+21]
      183 DUPTABLE                         R11 K64 [{["Minimum"] = 0, ["Maximum"]}]
      184 GETUPVAL                         R13 7
      185 GETTABLEKS                       R13 R13 K65 ["number"]
      187 GETTABLEKS                       R15 R0 K10 ["PropertyLookup"]
      189 GETTABLEKS                       R14 R15 K16 ["TrimEnd"]
      191 GETTABLEKS                       R15 R2 K66 ["Length"]
      193 CALL                             R13 2 1
      194 GETTABLEKS                       R14 R2 K66 ["Length"]
      196 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      198 GETIMPORT                        R12 K69 [math.min]
      200 CALL                             R12 2 1
      201 SETTABLEKS                       R12 R11 K63 ["Maximum"]
      203 JUMP                             ; [+1]
      204 DUPTABLE                         R11 K70 [{["Minimum"] = 0, ["Maximum"] = 0}]
      205 SETTABLEKS                       R11 R10 K60 ["ExtraProps"]
      207 CALL                             R9 1 1
      208 SETTABLEKS                       R9 R8 K25 ["Property_TrimStart"]
      210 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
      212 DUPTABLE                         R10 K71 [{["Name"] = "TrimEnd", ["Type"] = "Timestamp", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"], ["ExtraProps"]}]
      213 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      215 GETTABLEKS                       R11 R12 K16 ["TrimEnd"]
      217 SETTABLEKS                       R11 R10 K31 ["Value"]
      219 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      221 GETTABLEKS                       R12 R13 K14 ["Trim"]
      223 NOT                              R11 R12
      224 SETTABLEKS                       R11 R10 K59 ["IsDisabled"]
      226 JUMPIFNOT                        R2 ; [+23]
      227 DUPTABLE                         R11 K72 [{"Minimum", "Maximum"}]
      228 GETUPVAL                         R13 7
      229 GETTABLEKS                       R13 R13 K65 ["number"]
      231 GETTABLEKS                       R15 R0 K10 ["PropertyLookup"]
      233 GETTABLEKS                       R14 R15 K15 ["TrimStart"]
      235 LOADN                            R15 0
      236 CALL                             R13 2 1
      237 FASTCALL2K                       MATH_MAX R13 K58 ; [+4]
      239 LOADK                            R14 K58 [0]
      240 GETIMPORT                        R12 K74 [math.max]
      242 CALL                             R12 2 1
      243 SETTABLEKS                       R12 R11 K62 ["Minimum"]
      245 GETTABLEKS                       R12 R2 K66 ["Length"]
      247 SETTABLEKS                       R12 R11 K63 ["Maximum"]
      249 JUMP                             ; [+1]
      250 DUPTABLE                         R11 K70 [{["Minimum"] = 0, ["Maximum"] = 0}]
      251 SETTABLEKS                       R11 R10 K60 ["ExtraProps"]
      253 CALL                             R9 1 1
      254 SETTABLEKS                       R9 R8 K26 ["Property_TrimEnd"]
      256 GETUPVAL                         R9 0
      257 GETTABLEKS                       R9 R9 K75 ["createElement"]
      259 GETUPVAL                         R10 5
      260 GETTABLEKS                       R10 R10 K76 ["CompositorNode"]
      262 GETTABLEKS                       R11 R6 K77 ["nodeProps"]
      264 DUPTABLE                         R12 K80 [{"ContextToolbar", "OutputPin"}]
      265 GETUPVAL                         R14 8
      266 CALL                             R14 0 1
      267 JUMPIFNOT                        R14 ; [+4]
      268 GETTABLEKS                       R13 R6 K81 ["spotlightButton"]
      270 CALL                             R13 0 1
      271 JUMP                             ; [+1]
      272 LOADNIL                          R13
      273 SETTABLEKS                       R13 R12 K78 ["ContextToolbar"]
      275 GETTABLEKS                       R13 R6 K82 ["outputPin"]
      277 CALL                             R13 0 1
      278 SETTABLEKS                       R13 R12 K79 ["OutputPin"]
      280 CALL                             R11 1 1
      281 MOVE                             R12 R8
      282 CALL                             R9 3 -1
      283 RETURN                           R9 -1

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
       22 GETTABLEKS                       R4 R1 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K14 ["Util"]
       31 GETTABLEKS                       R5 R5 K15 ["ExpectType"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K12 ["Parent"]
       38 GETTABLEKS                       R6 R6 K16 ["Framework"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K12 ["Parent"]
       45 GETTABLEKS                       R7 R7 K17 ["NodeGraphing"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K12 ["Parent"]
       52 GETTABLEKS                       R8 R8 K18 ["React"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K19 ["Flags"]
       59 GETTABLEKS                       R9 R9 K20 ["getFFlagAnimGraphUI_SpotlightNodes"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K1 [game]
       64 LOADK                            R11 K21 ["AnimGraphFixAnimationClipEffectCrash"]
       65 LOADB                            R12 0
       66 NAMECALL                         R9 R9 K22 ["DefineFastFlag"]
       68 CALL                             R9 3 1
       69 DUPCLOSURE                       R10 K23 [PROTO_6]
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R8
       79 RETURN                           R10 1
