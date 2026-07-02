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
      144 DUPTABLE                         R10 K57 [{["Name"] = "Speed", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1, ["Step"], ["Precision"]}]
      145 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      147 GETTABLEKS                       R11 R12 K52 ["Speed"]
      149 SETTABLEKS                       R11 R10 K31 ["Value"]
      151 GETUPVAL                         R12 7
      152 CALL                             R12 0 1
      153 JUMPIFNOT                        R12 ; [+2]
      154 LOADNIL                          R11
      155 JUMP                             ; [+1]
      156 LOADK                            R11 K58 [0.1]
      157 SETTABLEKS                       R11 R10 K55 ["Step"]
      159 GETUPVAL                         R12 7
      160 CALL                             R12 0 1
      161 JUMPIFNOT                        R12 ; [+2]
      162 LOADNIL                          R11
      163 JUMP                             ; [+5]
      164 GETUPVAL                         R11 8
      165 GETTABLEKS                       R11 R11 K59 ["NUMBER_PRECISION"]
      167 GETTABLEKS                       R11 R11 K60 ["Float"]
      169 SETTABLEKS                       R11 R10 K56 ["Precision"]
      171 CALL                             R9 1 1
      172 SETTABLEKS                       R9 R8 K23 ["Property_Speed"]
      174 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
      176 DUPTABLE                         R10 K61 [{["Name"] = "Trim", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      177 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      179 GETTABLEKS                       R11 R12 K14 ["Trim"]
      181 SETTABLEKS                       R11 R10 K31 ["Value"]
      183 CALL                             R9 1 1
      184 SETTABLEKS                       R9 R8 K24 ["Property_Trim"]
      186 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
      188 DUPTABLE                         R10 K66 [{["Name"] = "TrimStart", ["Type"] = "Timestamp", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"], ["ExtraProps"]}]
      189 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      191 GETTABLEKS                       R11 R12 K15 ["TrimStart"]
      193 SETTABLEKS                       R11 R10 K31 ["Value"]
      195 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      197 GETTABLEKS                       R12 R13 K14 ["Trim"]
      199 NOT                              R11 R12
      200 SETTABLEKS                       R11 R10 K64 ["IsDisabled"]
      202 JUMPIFNOT                        R2 ; [+21]
      203 DUPTABLE                         R11 K69 [{["Minimum"] = 0, ["Maximum"]}]
      204 GETUPVAL                         R13 9
      205 GETTABLEKS                       R13 R13 K70 ["number"]
      207 GETTABLEKS                       R15 R0 K10 ["PropertyLookup"]
      209 GETTABLEKS                       R14 R15 K16 ["TrimEnd"]
      211 GETTABLEKS                       R15 R2 K71 ["Length"]
      213 CALL                             R13 2 1
      214 GETTABLEKS                       R14 R2 K71 ["Length"]
      216 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      218 GETIMPORT                        R12 K74 [math.min]
      220 CALL                             R12 2 1
      221 SETTABLEKS                       R12 R11 K68 ["Maximum"]
      223 JUMP                             ; [+1]
      224 DUPTABLE                         R11 K75 [{["Minimum"] = 0, ["Maximum"] = 0}]
      225 SETTABLEKS                       R11 R10 K65 ["ExtraProps"]
      227 CALL                             R9 1 1
      228 SETTABLEKS                       R9 R8 K25 ["Property_TrimStart"]
      230 GETTABLEKS                       R9 R6 K28 ["nextProperty"]
      232 DUPTABLE                         R10 K76 [{["Name"] = "TrimEnd", ["Type"] = "Timestamp", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"], ["ExtraProps"]}]
      233 GETTABLEKS                       R12 R0 K10 ["PropertyLookup"]
      235 GETTABLEKS                       R11 R12 K16 ["TrimEnd"]
      237 SETTABLEKS                       R11 R10 K31 ["Value"]
      239 GETTABLEKS                       R13 R0 K10 ["PropertyLookup"]
      241 GETTABLEKS                       R12 R13 K14 ["Trim"]
      243 NOT                              R11 R12
      244 SETTABLEKS                       R11 R10 K64 ["IsDisabled"]
      246 JUMPIFNOT                        R2 ; [+23]
      247 DUPTABLE                         R11 K77 [{"Minimum", "Maximum"}]
      248 GETUPVAL                         R13 9
      249 GETTABLEKS                       R13 R13 K70 ["number"]
      251 GETTABLEKS                       R15 R0 K10 ["PropertyLookup"]
      253 GETTABLEKS                       R14 R15 K15 ["TrimStart"]
      255 LOADN                            R15 0
      256 CALL                             R13 2 1
      257 FASTCALL2K                       MATH_MAX R13 K63 ; [+4]
      259 LOADK                            R14 K63 [0]
      260 GETIMPORT                        R12 K79 [math.max]
      262 CALL                             R12 2 1
      263 SETTABLEKS                       R12 R11 K67 ["Minimum"]
      265 GETTABLEKS                       R12 R2 K71 ["Length"]
      267 SETTABLEKS                       R12 R11 K68 ["Maximum"]
      269 JUMP                             ; [+1]
      270 DUPTABLE                         R11 K75 [{["Minimum"] = 0, ["Maximum"] = 0}]
      271 SETTABLEKS                       R11 R10 K65 ["ExtraProps"]
      273 CALL                             R9 1 1
      274 SETTABLEKS                       R9 R8 K26 ["Property_TrimEnd"]
      276 GETUPVAL                         R9 0
      277 GETTABLEKS                       R9 R9 K80 ["createElement"]
      279 GETUPVAL                         R10 5
      280 GETTABLEKS                       R10 R10 K81 ["CompositorNode"]
      282 GETTABLEKS                       R11 R6 K82 ["nodeProps"]
      284 DUPTABLE                         R12 K85 [{"ContextToolbar", "OutputPin"}]
      285 GETUPVAL                         R14 10
      286 CALL                             R14 0 1
      287 JUMPIFNOT                        R14 ; [+4]
      288 GETTABLEKS                       R13 R6 K86 ["spotlightButton"]
      290 CALL                             R13 0 1
      291 JUMP                             ; [+1]
      292 LOADNIL                          R13
      293 SETTABLEKS                       R13 R12 K83 ["ContextToolbar"]
      295 GETTABLEKS                       R13 R6 K87 ["outputPin"]
      297 CALL                             R13 0 1
      298 SETTABLEKS                       R13 R12 K84 ["OutputPin"]
      300 CALL                             R11 1 1
      301 MOVE                             R12 R8
      302 CALL                             R9 3 -1
      303 RETURN                           R9 -1

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
       73 GETTABLEKS                       R11 R11 K22 ["getFFlagAnimGraphUI_SpotlightNodes"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K1 [game]
       78 LOADK                            R13 K23 ["AnimGraphFixAnimationClipEffectCrash"]
       79 LOADB                            R14 0
       80 NAMECALL                         R11 R11 K24 ["DefineFastFlag"]
       82 CALL                             R11 3 1
       83 DUPCLOSURE                       R12 K25 [PROTO_6]
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R10
       95 RETURN                           R12 1
