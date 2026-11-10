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
       43 GETIMPORT                        R3 K13 [task.spawn]
       45 NEWCLOSURE                       R4 P0
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U0
       50 CALL                             R3 1 0
       51 RETURN                           R0 0

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
       11 FASTCALL1                        TYPEOF R0 ; [+3]
       12 MOVE                             R2 R0
       13 GETIMPORT                        R1 K3 [typeof]
       15 CALL                             R1 1 1
       16 JUMPIFEQKS                       R1 K4 ["string"] ; [+5]
       18 GETUPVAL                         R1 1
       19 LOADNIL                          R2
       20 CALL                             R1 1 0
       21 RETURN                           R0 0
       22 GETIMPORT                        R1 K7 [task.spawn]
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U1
       29 CALL                             R1 1 1
       30 NEWCLOSURE                       R2 P1
       31 CAPTURE                          VAL R1
       32 CAPTURE                          UPVAL U1
       33 RETURN                           R2 1

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
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K2 ["useState"]
       31 LOADNIL                          R6
       32 CALL                             R5 1 2
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R7 R7 K3 ["ContextServices"]
       36 GETTABLEKS                       R7 R7 K4 ["Localization"]
       38 NAMECALL                         R7 R7 K5 ["use"]
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R10 0 5
       52 MOVE                             R11 R6
       53 GETTABLEKS                       R12 R0 K7 ["OnPropertyChanged"]
       55 GETTABLEKS                       R13 R2 K8 ["getAssetNameAsync"]
       57 GETTABLEKS                       R14 R3 K9 ["renameNodeAsync"]
       59 GETTABLEKS                       R15 R0 K10 ["GraphPayload"]
       61 GETTABLEKS                       R15 R15 K11 ["id"]
       63 SETLIST                          R10 R11 5 [1]
       65 CALL                             R8 2 1
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K12 ["useEffect"]
       69 NEWCLOSURE                       R10 P1
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R7
       74 NEWTABLE                         R11 0 3
       76 GETTABLEKS                       R13 R0 K14 ["PropertyLookup"]
       78 GETTABLEKS                       R12 R13 K13 ["AnimationId"]
       80 GETUPVAL                         R14 7
       81 CALL                             R14 0 1
       82 JUMPIFNOT                        R14 ; [+8]
       83 GETTABLEKS                       R14 R4 K15 ["clipReloadVersions"]
       85 GETTABLEKS                       R16 R0 K14 ["PropertyLookup"]
       87 GETTABLEKS                       R15 R16 K13 ["AnimationId"]
       89 GETTABLE                         R13 R14 R15
       90 JUMP                             ; [+1]
       91 LOADNIL                          R13
       92 MOVE                             R14 R6
       93 SETLIST                          R11 R12 3 [1]
       95 CALL                             R9 2 0
       96 GETUPVAL                         R9 8
       97 GETTABLEKS                       R9 R9 K16 ["CompositorNodeUtils"]
       99 GETTABLEKS                       R9 R9 K17 ["createPropertyHelpers"]
      101 MOVE                             R10 R0
      102 CALL                             R9 1 1
      103 GETUPVAL                         R10 0
      104 GETTABLEKS                       R10 R10 K18 ["useMemo"]
      106 NEWCLOSURE                       R11 P2
      107 CAPTURE                          UPVAL U9
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R0
      110 NEWTABLE                         R12 0 5
      112 MOVE                             R13 R5
      113 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      115 GETTABLEKS                       R14 R15 K19 ["Trim"]
      117 GETTABLEKS                       R16 R0 K14 ["PropertyLookup"]
      119 GETTABLEKS                       R15 R16 K20 ["TrimStart"]
      121 GETTABLEKS                       R17 R0 K14 ["PropertyLookup"]
      123 GETTABLEKS                       R16 R17 K21 ["TrimEnd"]
      125 GETTABLEKS                       R18 R0 K23 ["StateLookup"]
      127 GETTABLEKS                       R17 R18 K22 ["TimeProgress"]
      129 SETLIST                          R12 R13 5 [1]
      131 CALL                             R10 2 1
      132 DUPTABLE                         R11 K32 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd"}]
      133 GETTABLEKS                       R12 R9 K33 ["nextProperty"]
      135 DUPTABLE                         R13 K39 [{["Name"] = "TimeProgress", ["Type"] = "TimeProgress", ["Value"], ["ShowWhenCollapsed"] = True}]
      136 SETTABLEKS                       R10 R13 K36 ["Value"]
      138 CALL                             R12 1 1
      139 SETTABLEKS                       R12 R11 K24 ["Property_TimeProgress"]
      141 GETTABLEKS                       R12 R9 K33 ["nextProperty"]
      143 DUPTABLE                         R13 K45 [{["Name"] = "AnimationId", ["Type"] = "Animation", ["Value"], ["DefaultValue"] = "", ["OnChanged"], ["HidePin"]}]
      144 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      146 GETTABLEKS                       R14 R15 K13 ["AnimationId"]
      148 SETTABLEKS                       R14 R13 K36 ["Value"]
      150 SETTABLEKS                       R8 R13 K43 ["OnChanged"]
      152 GETUPVAL                         R15 10
      153 NOT                              R14 R15
      154 SETTABLEKS                       R14 R13 K44 ["HidePin"]
      156 CALL                             R12 1 1
      157 SETTABLEKS                       R12 R11 K25 ["Property_AnimationId"]
      159 GETTABLEKS                       R12 R9 K33 ["nextProperty"]
      161 DUPTABLE                         R13 K48 [{["Name"] = "PlayMode", ["Type"] = "Enum.AnimationNodePlayMode", ["Value"], ["DefaultValue"]}]
      162 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      164 GETTABLEKS                       R14 R15 K46 ["PlayMode"]
      166 SETTABLEKS                       R14 R13 K36 ["Value"]
      168 GETIMPORT                        R14 K52 [Enum.AnimationNodePlayMode.Loop]
      170 SETTABLEKS                       R14 R13 K41 ["DefaultValue"]
      172 CALL                             R12 1 1
      173 SETTABLEKS                       R12 R11 K26 ["Property_Playmode"]
      175 GETTABLEKS                       R12 R9 K33 ["nextProperty"]
      177 DUPTABLE                         R13 K56 [{["Name"] = "Reverse", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      178 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      180 GETTABLEKS                       R14 R15 K53 ["Reverse"]
      182 SETTABLEKS                       R14 R13 K36 ["Value"]
      184 CALL                             R12 1 1
      185 SETTABLEKS                       R12 R11 K27 ["Property_Reverse"]
      187 GETTABLEKS                       R12 R9 K33 ["nextProperty"]
      189 DUPTABLE                         R13 K60 [{["Name"] = "Speed", ["Type"] = "Number", ["Value"], ["DefaultValue"] = 1}]
      190 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      192 GETTABLEKS                       R14 R15 K57 ["Speed"]
      194 SETTABLEKS                       R14 R13 K36 ["Value"]
      196 CALL                             R12 1 1
      197 SETTABLEKS                       R12 R11 K28 ["Property_Speed"]
      199 GETTABLEKS                       R12 R9 K33 ["nextProperty"]
      201 DUPTABLE                         R13 K61 [{["Name"] = "Trim", ["Type"] = "Boolean", ["Value"], ["DefaultValue"] = False}]
      202 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      204 GETTABLEKS                       R14 R15 K19 ["Trim"]
      206 SETTABLEKS                       R14 R13 K36 ["Value"]
      208 CALL                             R12 1 1
      209 SETTABLEKS                       R12 R11 K29 ["Property_Trim"]
      211 GETTABLEKS                       R12 R9 K33 ["nextProperty"]
      213 DUPTABLE                         R13 K66 [{["Name"] = "TrimStart", ["Type"] = "Timestamp", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"], ["ExtraProps"]}]
      214 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      216 GETTABLEKS                       R14 R15 K20 ["TrimStart"]
      218 SETTABLEKS                       R14 R13 K36 ["Value"]
      220 GETTABLEKS                       R16 R0 K14 ["PropertyLookup"]
      222 GETTABLEKS                       R15 R16 K19 ["Trim"]
      224 NOT                              R14 R15
      225 SETTABLEKS                       R14 R13 K64 ["IsDisabled"]
      227 JUMPIFNOT                        R5 ; [+21]
      228 DUPTABLE                         R14 K69 [{["Minimum"] = 0, ["Maximum"]}]
      229 GETUPVAL                         R16 11
      230 GETTABLEKS                       R16 R16 K70 ["number"]
      232 GETTABLEKS                       R18 R0 K14 ["PropertyLookup"]
      234 GETTABLEKS                       R17 R18 K21 ["TrimEnd"]
      236 GETTABLEKS                       R18 R5 K71 ["Length"]
      238 CALL                             R16 2 1
      239 GETTABLEKS                       R17 R5 K71 ["Length"]
      241 FASTCALL2                        MATH_MIN R16 R17 ; [+3]
      243 GETIMPORT                        R15 K74 [math.min]
      245 CALL                             R15 2 1
      246 SETTABLEKS                       R15 R14 K68 ["Maximum"]
      248 JUMP                             ; [+1]
      249 DUPTABLE                         R14 K75 [{["Minimum"] = 0, ["Maximum"] = 0}]
      250 SETTABLEKS                       R14 R13 K65 ["ExtraProps"]
      252 CALL                             R12 1 1
      253 SETTABLEKS                       R12 R11 K30 ["Property_TrimStart"]
      255 GETTABLEKS                       R12 R9 K33 ["nextProperty"]
      257 DUPTABLE                         R13 K76 [{["Name"] = "TrimEnd", ["Type"] = "Timestamp", ["Value"], ["DefaultValue"] = 0, ["IsDisabled"], ["ExtraProps"]}]
      258 GETTABLEKS                       R15 R0 K14 ["PropertyLookup"]
      260 GETTABLEKS                       R14 R15 K21 ["TrimEnd"]
      262 SETTABLEKS                       R14 R13 K36 ["Value"]
      264 GETTABLEKS                       R16 R0 K14 ["PropertyLookup"]
      266 GETTABLEKS                       R15 R16 K19 ["Trim"]
      268 NOT                              R14 R15
      269 SETTABLEKS                       R14 R13 K64 ["IsDisabled"]
      271 JUMPIFNOT                        R5 ; [+23]
      272 DUPTABLE                         R14 K77 [{"Minimum", "Maximum"}]
      273 GETUPVAL                         R16 11
      274 GETTABLEKS                       R16 R16 K70 ["number"]
      276 GETTABLEKS                       R18 R0 K14 ["PropertyLookup"]
      278 GETTABLEKS                       R17 R18 K20 ["TrimStart"]
      280 LOADN                            R18 0
      281 CALL                             R16 2 1
      282 FASTCALL2K                       MATH_MAX R16 K63 ; [+4]
      284 LOADK                            R17 K63 [0]
      285 GETIMPORT                        R15 K79 [math.max]
      287 CALL                             R15 2 1
      288 SETTABLEKS                       R15 R14 K67 ["Minimum"]
      290 GETTABLEKS                       R15 R5 K71 ["Length"]
      292 SETTABLEKS                       R15 R14 K68 ["Maximum"]
      294 JUMP                             ; [+1]
      295 DUPTABLE                         R14 K75 [{["Minimum"] = 0, ["Maximum"] = 0}]
      296 SETTABLEKS                       R14 R13 K65 ["ExtraProps"]
      298 CALL                             R12 1 1
      299 SETTABLEKS                       R12 R11 K31 ["Property_TrimEnd"]
      301 GETUPVAL                         R12 0
      302 GETTABLEKS                       R12 R12 K80 ["createElement"]
      304 GETUPVAL                         R13 8
      305 GETTABLEKS                       R13 R13 K81 ["CompositorNode"]
      307 GETTABLEKS                       R14 R9 K82 ["nodeProps"]
      309 DUPTABLE                         R15 K85 [{"ContextToolbar", "OutputPin"}]
      310 GETTABLEKS                       R16 R9 K86 ["spotlightButton"]
      312 CALL                             R16 0 1
      313 SETTABLEKS                       R16 R15 K83 ["ContextToolbar"]
      315 GETTABLEKS                       R16 R9 K87 ["outputPin"]
      317 CALL                             R16 0 1
      318 SETTABLEKS                       R16 R15 K84 ["OutputPin"]
      320 CALL                             R14 1 1
      321 MOVE                             R15 R11
      322 CALL                             R12 3 -1
      323 RETURN                           R12 -1

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
       64 GETTABLEKS                       R10 R1 K10 ["Contexts"]
       66 GETTABLEKS                       R10 R10 K20 ["PublishedClipContext"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R11 R1 K13 ["Parent"]
       73 GETTABLEKS                       R11 R11 K21 ["React"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R12 R1 K22 ["Flags"]
       80 GETTABLEKS                       R12 R12 K23 ["getFFlagAnimGraphUI_ReloadPublishedClips"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K1 [game]
       85 LOADK                            R14 K24 ["AnimGraphClipRuntimeSwap"]
       86 NAMECALL                         R12 R12 K25 ["GetEngineFeature"]
       88 CALL                             R12 2 1
       89 DUPCLOSURE                       R13 K26 [PROTO_6]
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R12
      101 CAPTURE                          VAL R5
      102 RETURN                           R13 1
