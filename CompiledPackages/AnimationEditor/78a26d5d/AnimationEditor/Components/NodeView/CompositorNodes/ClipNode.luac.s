PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnPropertyChanged"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["GetAnimationClipAsync"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       15 LOADK                            R4 K2 ["AnimationId"]
       16 MOVE                             R5 R1
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R3 R2 K3 ["Loop"]
       20 JUMPIFNOT                        R3 ; [+7]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["OnPropertyChanged"]
       24 LOADK                            R4 K4 ["PlayMode"]
       25 GETIMPORT                        R5 K7 [Enum.AnimationNodePlayMode.Loop]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useCallback"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 0
       16 CALL                             R2 2 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R3 R4 K1 ["createPropertyHelpers"]
       20 MOVE                             R4 R0
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R4 R5 K2 ["useSignalState"]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R5 R6 K3 ["useObserveIsDisabled"]
       28 GETTABLEKS                       R7 R0 K4 ["GraphPayload"]
       30 GETTABLEKS                       R6 R7 K5 ["id"]
       32 CALL                             R5 1 -1
       33 CALL                             R4 -1 1
       34 GETUPVAL                         R6 5
       35 GETTABLEKS                       R5 R6 K6 ["join"]
       37 DUPTABLE                         R6 K10 [{"Duration", "EndTime", "StartTime"}]
       38 LOADN                            R7 5
       39 SETTABLEKS                       R7 R6 K7 ["Duration"]
       41 GETTABLEKS                       R9 R0 K12 ["PropertyLookup"]
       43 GETTABLEKS                       R8 R9 K11 ["Trim"]
       45 JUMPIFNOT                        R8 ; [+5]
       46 GETTABLEKS                       R8 R0 K12 ["PropertyLookup"]
       48 GETTABLEKS                       R7 R8 K13 ["TrimEnd"]
       50 JUMPIF                           R7 ; [+1]
       51 LOADNIL                          R7
       52 SETTABLEKS                       R7 R6 K8 ["EndTime"]
       54 GETTABLEKS                       R9 R0 K12 ["PropertyLookup"]
       56 GETTABLEKS                       R8 R9 K11 ["Trim"]
       58 JUMPIFNOT                        R8 ; [+5]
       59 GETTABLEKS                       R8 R0 K12 ["PropertyLookup"]
       61 GETTABLEKS                       R7 R8 K14 ["TrimStart"]
       63 JUMPIF                           R7 ; [+1]
       64 LOADNIL                          R7
       65 SETTABLEKS                       R7 R6 K9 ["StartTime"]
       67 GETTABLEKS                       R8 R0 K16 ["StateLookup"]
       69 GETTABLEKS                       R7 R8 K15 ["TimeProgress"]
       71 CALL                             R5 2 1
       72 DUPTABLE                         R6 K26 [{"Property_TimeProgress", "Property_AnimationId", "Property_Playmode", "Property_Reverse", "Property_Speed", "Property_Trim", "Property_TrimStart", "Property_TrimEnd", "PlayingPreview"}]
       73 GETTABLEKS                       R7 R3 K27 ["nextProperty"]
       75 DUPTABLE                         R8 K32 [{"Name", "Type", "Value", "ShowWhenCollapsed"}]
       76 LOADK                            R9 K15 ["TimeProgress"]
       77 SETTABLEKS                       R9 R8 K28 ["Name"]
       79 LOADK                            R9 K15 ["TimeProgress"]
       80 SETTABLEKS                       R9 R8 K29 ["Type"]
       82 SETTABLEKS                       R5 R8 K30 ["Value"]
       84 LOADB                            R9 1
       85 SETTABLEKS                       R9 R8 K31 ["ShowWhenCollapsed"]
       87 CALL                             R7 1 1
       88 SETTABLEKS                       R7 R6 K17 ["Property_TimeProgress"]
       90 GETTABLEKS                       R7 R3 K27 ["nextProperty"]
       92 DUPTABLE                         R8 K35 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
       93 LOADK                            R9 K36 ["AnimationId"]
       94 SETTABLEKS                       R9 R8 K28 ["Name"]
       96 LOADK                            R9 K37 ["Animation"]
       97 SETTABLEKS                       R9 R8 K29 ["Type"]
       99 GETTABLEKS                       R10 R0 K12 ["PropertyLookup"]
      101 GETTABLEKS                       R9 R10 K36 ["AnimationId"]
      103 SETTABLEKS                       R9 R8 K30 ["Value"]
      105 LOADK                            R9 K38 [""]
      106 SETTABLEKS                       R9 R8 K33 ["DefaultValue"]
      108 SETTABLEKS                       R1 R8 K34 ["OnChanged"]
      110 CALL                             R7 1 1
      111 SETTABLEKS                       R7 R6 K18 ["Property_AnimationId"]
      113 GETTABLEKS                       R7 R3 K27 ["nextProperty"]
      115 DUPTABLE                         R8 K39 [{"Name", "Type", "Value", "DefaultValue"}]
      116 LOADK                            R9 K40 ["PlayMode"]
      117 SETTABLEKS                       R9 R8 K28 ["Name"]
      119 LOADK                            R9 K41 ["Enum.AnimationNodePlayMode"]
      120 SETTABLEKS                       R9 R8 K29 ["Type"]
      122 GETTABLEKS                       R10 R0 K12 ["PropertyLookup"]
      124 GETTABLEKS                       R9 R10 K40 ["PlayMode"]
      126 SETTABLEKS                       R9 R8 K30 ["Value"]
      128 GETIMPORT                        R9 K45 [Enum.AnimationNodePlayMode.Loop]
      130 SETTABLEKS                       R9 R8 K33 ["DefaultValue"]
      132 CALL                             R7 1 1
      133 SETTABLEKS                       R7 R6 K19 ["Property_Playmode"]
      135 GETTABLEKS                       R7 R3 K27 ["nextProperty"]
      137 DUPTABLE                         R8 K39 [{"Name", "Type", "Value", "DefaultValue"}]
      138 LOADK                            R9 K46 ["Reverse"]
      139 SETTABLEKS                       R9 R8 K28 ["Name"]
      141 LOADK                            R9 K47 ["Boolean"]
      142 SETTABLEKS                       R9 R8 K29 ["Type"]
      144 GETTABLEKS                       R10 R0 K12 ["PropertyLookup"]
      146 GETTABLEKS                       R9 R10 K46 ["Reverse"]
      148 SETTABLEKS                       R9 R8 K30 ["Value"]
      150 LOADB                            R9 0
      151 SETTABLEKS                       R9 R8 K33 ["DefaultValue"]
      153 CALL                             R7 1 1
      154 SETTABLEKS                       R7 R6 K20 ["Property_Reverse"]
      156 GETTABLEKS                       R7 R3 K27 ["nextProperty"]
      158 DUPTABLE                         R8 K50 [{"Name", "Type", "Value", "DefaultValue", "Step", "Precision"}]
      159 LOADK                            R9 K51 ["Speed"]
      160 SETTABLEKS                       R9 R8 K28 ["Name"]
      162 LOADK                            R9 K52 ["Number"]
      163 SETTABLEKS                       R9 R8 K29 ["Type"]
      165 GETTABLEKS                       R10 R0 K12 ["PropertyLookup"]
      167 GETTABLEKS                       R9 R10 K51 ["Speed"]
      169 SETTABLEKS                       R9 R8 K30 ["Value"]
      171 LOADN                            R9 1
      172 SETTABLEKS                       R9 R8 K33 ["DefaultValue"]
      174 LOADK                            R9 K53 [0.1]
      175 SETTABLEKS                       R9 R8 K48 ["Step"]
      177 LOADN                            R9 2
      178 SETTABLEKS                       R9 R8 K49 ["Precision"]
      180 CALL                             R7 1 1
      181 SETTABLEKS                       R7 R6 K21 ["Property_Speed"]
      183 GETTABLEKS                       R7 R3 K27 ["nextProperty"]
      185 DUPTABLE                         R8 K35 [{"Name", "Type", "Value", "DefaultValue", "OnChanged"}]
      186 LOADK                            R9 K11 ["Trim"]
      187 SETTABLEKS                       R9 R8 K28 ["Name"]
      189 LOADK                            R9 K47 ["Boolean"]
      190 SETTABLEKS                       R9 R8 K29 ["Type"]
      192 GETTABLEKS                       R10 R0 K12 ["PropertyLookup"]
      194 GETTABLEKS                       R9 R10 K11 ["Trim"]
      196 SETTABLEKS                       R9 R8 K30 ["Value"]
      198 LOADB                            R9 0
      199 SETTABLEKS                       R9 R8 K33 ["DefaultValue"]
      201 SETTABLEKS                       R2 R8 K34 ["OnChanged"]
      203 CALL                             R7 1 1
      204 SETTABLEKS                       R7 R6 K22 ["Property_Trim"]
      206 GETTABLEKS                       R7 R3 K27 ["nextProperty"]
      208 DUPTABLE                         R8 K55 [{"Name", "Type", "Value", "DefaultValue", "IsReadOnly"}]
      209 LOADK                            R9 K14 ["TrimStart"]
      210 SETTABLEKS                       R9 R8 K28 ["Name"]
      212 LOADK                            R9 K56 ["Timestamp"]
      213 SETTABLEKS                       R9 R8 K29 ["Type"]
      215 GETTABLEKS                       R10 R0 K12 ["PropertyLookup"]
      217 GETTABLEKS                       R9 R10 K14 ["TrimStart"]
      219 SETTABLEKS                       R9 R8 K30 ["Value"]
      221 LOADN                            R9 0
      222 SETTABLEKS                       R9 R8 K33 ["DefaultValue"]
      224 GETTABLEKS                       R11 R0 K12 ["PropertyLookup"]
      226 GETTABLEKS                       R10 R11 K11 ["Trim"]
      228 NOT                              R9 R10
      229 SETTABLEKS                       R9 R8 K54 ["IsReadOnly"]
      231 CALL                             R7 1 1
      232 SETTABLEKS                       R7 R6 K23 ["Property_TrimStart"]
      234 GETTABLEKS                       R7 R3 K27 ["nextProperty"]
      236 DUPTABLE                         R8 K55 [{"Name", "Type", "Value", "DefaultValue", "IsReadOnly"}]
      237 LOADK                            R9 K13 ["TrimEnd"]
      238 SETTABLEKS                       R9 R8 K28 ["Name"]
      240 LOADK                            R9 K56 ["Timestamp"]
      241 SETTABLEKS                       R9 R8 K29 ["Type"]
      243 GETTABLEKS                       R10 R0 K12 ["PropertyLookup"]
      245 GETTABLEKS                       R9 R10 K13 ["TrimEnd"]
      247 SETTABLEKS                       R9 R8 K30 ["Value"]
      249 LOADN                            R9 0
      250 SETTABLEKS                       R9 R8 K33 ["DefaultValue"]
      252 GETTABLEKS                       R11 R0 K12 ["PropertyLookup"]
      254 GETTABLEKS                       R10 R11 K11 ["Trim"]
      256 NOT                              R9 R10
      257 SETTABLEKS                       R9 R8 K54 ["IsReadOnly"]
      259 CALL                             R7 1 1
      260 SETTABLEKS                       R7 R6 K24 ["Property_TrimEnd"]
      262 GETUPVAL                         R9 6
      263 GETTABLEKS                       R8 R9 K57 ["PLAYING_PREVIEW_ENABLED"]
      265 JUMPIFNOT                        R8 ; [+18]
      266 GETUPVAL                         R8 0
      267 GETTABLEKS                       R7 R8 K58 ["createElement"]
      269 GETUPVAL                         R8 7
      270 DUPTABLE                         R9 K61 [{"GraphPayload", "LayoutOrder", "disabled"}]
      271 GETTABLEKS                       R10 R0 K4 ["GraphPayload"]
      273 SETTABLEKS                       R10 R9 K4 ["GraphPayload"]
      275 GETTABLEKS                       R10 R3 K62 ["nextOrder"]
      277 CALL                             R10 0 1
      278 SETTABLEKS                       R10 R9 K59 ["LayoutOrder"]
      280 SETTABLEKS                       R4 R9 K60 ["disabled"]
      282 CALL                             R7 2 1
      283 JUMP                             ; [+1]
      284 LOADNIL                          R7
      285 SETTABLEKS                       R7 R6 K25 ["PlayingPreview"]
      287 GETUPVAL                         R8 0
      288 GETTABLEKS                       R7 R8 K58 ["createElement"]
      290 GETUPVAL                         R8 8
      291 GETTABLEKS                       R9 R3 K63 ["nodeProps"]
      293 DUPTABLE                         R10 K65 [{"OutputPin"}]
      294 GETTABLEKS                       R11 R3 K66 ["outputPin"]
      296 CALL                             R11 0 1
      297 SETTABLEKS                       R11 R10 K64 ["OutputPin"]
      299 CALL                             R9 1 1
      300 MOVE                             R10 R6
      301 CALL                             R7 3 -1
      302 RETURN                           R7 -1

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
       15 GETTABLEKS                       R6 R1 K10 ["Components"]
       17 GETTABLEKS                       R5 R6 K11 ["NodeView"]
       19 GETTABLEKS                       R4 R5 K12 ["CompositorNodes"]
       21 GETTABLEKS                       R3 R4 K13 ["CompositorNode"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Components"]
       28 GETTABLEKS                       R5 R6 K11 ["NodeView"]
       30 GETTABLEKS                       R4 R5 K14 ["CompositorNodePreview"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R7 R1 K15 ["Util"]
       37 GETTABLEKS                       R6 R7 K16 ["Nodes"]
       39 GETTABLEKS                       R5 R6 K17 ["CompositorNodeUtils"]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K9 [require]
       44 GETTABLEKS                       R9 R1 K10 ["Components"]
       46 GETTABLEKS                       R8 R9 K11 ["NodeView"]
       48 GETTABLEKS                       R7 R8 K12 ["CompositorNodes"]
       50 GETTABLEKS                       R6 R7 K18 ["CompositorStateUtils"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K9 [require]
       55 GETTABLEKS                       R8 R1 K15 ["Util"]
       57 GETTABLEKS                       R7 R8 K19 ["Constants"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R9 R1 K20 ["Parent"]
       64 GETTABLEKS                       R8 R9 K21 ["Dash"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R10 R1 K20 ["Parent"]
       71 GETTABLEKS                       R9 R10 K22 ["React"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R11 R1 K20 ["Parent"]
       78 GETTABLEKS                       R10 R11 K23 ["SignalsReact"]
       80 CALL                             R9 1 1
       81 DUPCLOSURE                       R10 K24 [PROTO_2]
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R2
       91 RETURN                           R10 1
