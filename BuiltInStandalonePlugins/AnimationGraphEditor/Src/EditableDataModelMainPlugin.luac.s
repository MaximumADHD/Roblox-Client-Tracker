PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K2 ["new"]
        7 DUPTABLE                         R1 K6 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K7 ["Src"]
       11 GETTABLEKS                       R2 R2 K8 ["Resources"]
       13 GETTABLEKS                       R2 R2 K1 ["Localization"]
       15 GETTABLEKS                       R2 R2 K9 ["SourceStrings"]
       17 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K7 ["Src"]
       22 GETTABLEKS                       R2 R2 K8 ["Resources"]
       24 GETTABLEKS                       R2 R2 K1 ["Localization"]
       26 GETTABLEKS                       R2 R2 K10 ["LocalizedStrings"]
       28 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       30 LOADK                            R2 K11 ["AnimationGraphEditor"]
       31 SETTABLEKS                       R2 R1 K5 ["pluginName"]
       33 CALL                             R0 1 -1
       34 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Contexts"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K1 ["Localization"]
        7 GETTABLEKS                       R0 R0 K2 ["new"]
        9 DUPTABLE                         R1 K6 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K7 ["Src"]
       13 GETTABLEKS                       R2 R2 K8 ["Resources"]
       15 GETTABLEKS                       R2 R2 K1 ["Localization"]
       17 GETTABLEKS                       R2 R2 K9 ["SourceStrings"]
       19 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K7 ["Src"]
       24 GETTABLEKS                       R2 R2 K8 ["Resources"]
       26 GETTABLEKS                       R2 R2 K1 ["Localization"]
       28 GETTABLEKS                       R2 R2 K10 ["LocalizedStrings"]
       30 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       32 LOADK                            R2 K11 ["AnimationGraphEditor"]
       33 SETTABLEKS                       R2 R1 K5 ["pluginName"]
       35 CALL                             R0 1 -1
       36 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_6:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 LOADK                            R2 K1 ["InstancePicker"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R2 K3 [PROTO_6]
        8 NAMECALL                         R0 R0 K4 ["PickInstanceAsync"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 LOADK                            R2 K1 ["AssetAccessController"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R0 R0 K3 ["ShareAccessToAssetsAsync"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useMemo"]
       12 DUPCLOSURE                       R3 K2 [PROTO_1]
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R5 0 1
       25 MOVE                             R6 R1
       26 SETLIST                          R5 R6 1 [1]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       32 NEWCLOSURE                       R4 P3
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R5 0 1
       36 MOVE                             R6 R2
       37 SETLIST                          R5 R6 1 [1]
       39 CALL                             R3 2 0
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       43 NEWCLOSURE                       R4 P4
       44 CAPTURE                          VAL R0
       45 NEWTABLE                         R5 0 1
       47 GETTABLEKS                       R6 R0 K5 ["Plugin"]
       49 SETLIST                          R5 R6 1 [1]
       51 CALL                             R3 2 1
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       55 NEWCLOSURE                       R5 P5
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R6 0 0
       59 CALL                             R4 2 1
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K6 ["ContextServices"]
       63 GETTABLEKS                       R5 R5 K7 ["provide"]
       65 NEWTABLE                         R6 0 3
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K6 ["ContextServices"]
       70 GETTABLEKS                       R7 R7 K5 ["Plugin"]
       72 GETTABLEKS                       R7 R7 K8 ["new"]
       74 GETTABLEKS                       R8 R0 K5 ["Plugin"]
       76 CALL                             R7 1 1
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K6 ["ContextServices"]
       80 GETTABLEKS                       R8 R8 K9 ["Mouse"]
       82 GETTABLEKS                       R8 R8 K8 ["new"]
       84 GETTABLEKS                       R9 R0 K5 ["Plugin"]
       86 NAMECALL                         R9 R9 K10 ["GetMouse"]
       88 CALL                             R9 1 -1
       89 CALL                             R8 -1 1
       90 MOVE                             R9 R1
       91 SETLIST                          R6 R7 3 [1]
       93 DUPTABLE                         R7 K12 [{"ContextStack"}]
       94 GETUPVAL                         R8 0
       95 GETTABLEKS                       R8 R8 K13 ["createElement"]
       97 GETUPVAL                         R9 4
       98 GETTABLEKS                       R9 R9 K11 ["ContextStack"]
      100 DUPTABLE                         R10 K15 [{"providers"}]
      101 NEWTABLE                         R11 0 22
      103 GETUPVAL                         R12 0
      104 GETTABLEKS                       R12 R12 K13 ["createElement"]
      106 GETUPVAL                         R13 3
      107 GETTABLEKS                       R13 R13 K16 ["Contexts"]
      109 GETTABLEKS                       R13 R13 K17 ["Localization"]
      111 GETTABLEKS                       R13 R13 K18 ["Provider"]
      113 DUPTABLE                         R14 K20 [{"localization"}]
      114 SETTABLEKS                       R2 R14 K19 ["localization"]
      116 CALL                             R12 2 1
      117 GETUPVAL                         R13 0
      118 GETTABLEKS                       R13 R13 K13 ["createElement"]
      120 GETUPVAL                         R14 5
      121 GETTABLEKS                       R14 R14 K21 ["AnalyticsTelemetryServiceProvider"]
      123 CALL                             R13 1 1
      124 GETUPVAL                         R14 0
      125 GETTABLEKS                       R14 R14 K13 ["createElement"]
      127 GETUPVAL                         R15 5
      128 GETTABLEKS                       R15 R15 K22 ["AddExtraFields"]
      130 DUPTABLE                         R16 K24 [{"extraFields"}]
      131 DUPTABLE                         R17 K26 [{"source"}]
      132 LOADK                            R18 K27 ["AnimationGraphEditor"]
      133 SETTABLEKS                       R18 R17 K25 ["source"]
      135 SETTABLEKS                       R17 R16 K23 ["extraFields"]
      137 CALL                             R14 2 1
      138 GETUPVAL                         R15 0
      139 GETTABLEKS                       R15 R15 K13 ["createElement"]
      141 GETUPVAL                         R16 6
      142 GETTABLEKS                       R16 R16 K28 ["InstanceRegistryContext"]
      144 GETTABLEKS                       R16 R16 K18 ["Provider"]
      146 CALL                             R15 1 1
      147 GETUPVAL                         R16 0
      148 GETTABLEKS                       R16 R16 K13 ["createElement"]
      150 GETUPVAL                         R17 6
      151 GETTABLEKS                       R17 R17 K29 ["NetworkingContext"]
      153 GETTABLEKS                       R17 R17 K30 ["EditableDataModelProvider"]
      155 CALL                             R16 1 1
      156 GETUPVAL                         R17 0
      157 GETTABLEKS                       R17 R17 K13 ["createElement"]
      159 GETUPVAL                         R18 6
      160 GETTABLEKS                       R18 R18 K31 ["VisibleContext"]
      162 GETTABLEKS                       R18 R18 K30 ["EditableDataModelProvider"]
      164 CALL                             R17 1 1
      165 GETUPVAL                         R18 0
      166 GETTABLEKS                       R18 R18 K13 ["createElement"]
      168 GETUPVAL                         R19 6
      169 GETTABLEKS                       R19 R19 K32 ["EditableDataModelContexts"]
      171 DUPTABLE                         R20 K34 [{"plugin"}]
      172 GETTABLEKS                       R21 R0 K5 ["Plugin"]
      174 SETTABLEKS                       R21 R20 K33 ["plugin"]
      176 CALL                             R18 2 1
      177 GETUPVAL                         R19 0
      178 GETTABLEKS                       R19 R19 K13 ["createElement"]
      180 GETUPVAL                         R20 6
      181 GETTABLEKS                       R20 R20 K35 ["NativeGraphContext"]
      183 GETTABLEKS                       R20 R20 K30 ["EditableDataModelProvider"]
      185 CALL                             R19 1 1
      186 GETUPVAL                         R21 7
      187 CALL                             R21 0 1
      188 JUMPIFNOT                        R21 ; [+8]
      189 GETUPVAL                         R20 0
      190 GETTABLEKS                       R20 R20 K13 ["createElement"]
      192 GETUPVAL                         R21 0
      193 GETTABLEKS                       R21 R21 K36 ["Fragment"]
      195 CALL                             R20 1 1
      196 JUMP                             ; [+9]
      197 GETUPVAL                         R20 0
      198 GETTABLEKS                       R20 R20 K13 ["createElement"]
      200 GETUPVAL                         R21 6
      201 GETTABLEKS                       R21 R21 K37 ["RigListContext"]
      203 GETTABLEKS                       R21 R21 K30 ["EditableDataModelProvider"]
      205 CALL                             R20 1 1
      206 GETUPVAL                         R22 7
      207 CALL                             R22 0 1
      208 JUMPIFNOT                        R22 ; [+8]
      209 GETUPVAL                         R21 0
      210 GETTABLEKS                       R21 R21 K13 ["createElement"]
      212 GETUPVAL                         R22 0
      213 GETTABLEKS                       R22 R22 K36 ["Fragment"]
      215 CALL                             R21 1 1
      216 JUMP                             ; [+9]
      217 GETUPVAL                         R21 0
      218 GETTABLEKS                       R21 R21 K13 ["createElement"]
      220 GETUPVAL                         R22 6
      221 GETTABLEKS                       R22 R22 K38 ["GraphTimestampContext"]
      223 GETTABLEKS                       R22 R22 K30 ["EditableDataModelProvider"]
      225 CALL                             R21 1 1
      226 GETUPVAL                         R23 7
      227 CALL                             R23 0 1
      228 JUMPIFNOT                        R23 ; [+8]
      229 GETUPVAL                         R22 0
      230 GETTABLEKS                       R22 R22 K13 ["createElement"]
      232 GETUPVAL                         R23 0
      233 GETTABLEKS                       R23 R23 K36 ["Fragment"]
      235 CALL                             R22 1 1
      236 JUMP                             ; [+9]
      237 GETUPVAL                         R22 0
      238 GETTABLEKS                       R22 R22 K13 ["createElement"]
      240 GETUPVAL                         R23 6
      241 GETTABLEKS                       R23 R23 K39 ["CreateGraphContext"]
      243 GETTABLEKS                       R23 R23 K30 ["EditableDataModelProvider"]
      245 CALL                             R22 1 1
      246 GETUPVAL                         R23 0
      247 GETTABLEKS                       R23 R23 K13 ["createElement"]
      249 GETUPVAL                         R24 6
      250 GETTABLEKS                       R24 R24 K40 ["AnimationParameterContext"]
      252 GETTABLEKS                       R24 R24 K30 ["EditableDataModelProvider"]
      254 CALL                             R23 1 1
      255 GETUPVAL                         R24 0
      256 GETTABLEKS                       R24 R24 K13 ["createElement"]
      258 GETUPVAL                         R25 6
      259 GETTABLEKS                       R25 R25 K41 ["GraphDebugDataContext"]
      261 GETTABLEKS                       R25 R25 K30 ["EditableDataModelProvider"]
      263 CALL                             R24 1 1
      264 GETUPVAL                         R25 0
      265 GETTABLEKS                       R25 R25 K13 ["createElement"]
      267 GETUPVAL                         R26 6
      268 GETTABLEKS                       R26 R26 K42 ["PlayStateContext"]
      270 GETTABLEKS                       R26 R26 K30 ["EditableDataModelProvider"]
      272 CALL                             R25 1 1
      273 GETUPVAL                         R26 0
      274 GETTABLEKS                       R26 R26 K13 ["createElement"]
      276 GETUPVAL                         R27 6
      277 GETTABLEKS                       R27 R27 K43 ["AssetAccessContext"]
      279 GETTABLEKS                       R27 R27 K30 ["EditableDataModelProvider"]
      281 DUPTABLE                         R28 K45 [{"shareAccessToAssetsAsync"}]
      282 SETTABLEKS                       R4 R28 K44 ["shareAccessToAssetsAsync"]
      284 CALL                             R26 2 1
      285 GETUPVAL                         R27 0
      286 GETTABLEKS                       R27 R27 K13 ["createElement"]
      288 GETUPVAL                         R28 6
      289 GETTABLEKS                       R28 R28 K46 ["GameContext"]
      291 GETTABLEKS                       R28 R28 K30 ["EditableDataModelProvider"]
      293 CALL                             R27 1 1
      294 SETLIST                          R11 R12 16 [1]
      296 GETUPVAL                         R12 0
      297 GETTABLEKS                       R12 R12 K13 ["createElement"]
      299 GETUPVAL                         R13 6
      300 GETTABLEKS                       R13 R13 K47 ["GraphDropdownContext"]
      302 GETTABLEKS                       R13 R13 K30 ["EditableDataModelProvider"]
      304 CALL                             R12 1 1
      305 GETUPVAL                         R14 7
      306 CALL                             R14 0 1
      307 JUMPIFNOT                        R14 ; [+8]
      308 GETUPVAL                         R13 0
      309 GETTABLEKS                       R13 R13 K13 ["createElement"]
      311 GETUPVAL                         R14 0
      312 GETTABLEKS                       R14 R14 K36 ["Fragment"]
      314 CALL                             R13 1 1
      315 JUMP                             ; [+14]
      316 GETUPVAL                         R13 0
      317 GETTABLEKS                       R13 R13 K13 ["createElement"]
      319 GETUPVAL                         R14 6
      320 GETTABLEKS                       R14 R14 K48 ["CreateScriptContext"]
      322 GETTABLEKS                       R14 R14 K30 ["EditableDataModelProvider"]
      324 DUPTABLE                         R15 K34 [{"plugin"}]
      325 GETTABLEKS                       R16 R0 K5 ["Plugin"]
      327 SETTABLEKS                       R16 R15 K33 ["plugin"]
      329 CALL                             R13 2 1
      330 GETUPVAL                         R14 0
      331 GETTABLEKS                       R14 R14 K13 ["createElement"]
      333 GETUPVAL                         R15 6
      334 GETTABLEKS                       R15 R15 K49 ["PublishWarningContext"]
      336 GETTABLEKS                       R15 R15 K50 ["StudioProvider"]
      338 DUPTABLE                         R16 K34 [{"plugin"}]
      339 GETTABLEKS                       R17 R0 K5 ["Plugin"]
      341 SETTABLEKS                       R17 R16 K33 ["plugin"]
      343 CALL                             R14 2 1
      344 GETUPVAL                         R15 0
      345 GETTABLEKS                       R15 R15 K13 ["createElement"]
      347 GETUPVAL                         R16 6
      348 GETTABLEKS                       R16 R16 K51 ["GraphDirtyStateContext"]
      350 GETTABLEKS                       R16 R16 K30 ["EditableDataModelProvider"]
      352 CALL                             R15 1 1
      353 GETUPVAL                         R16 0
      354 GETTABLEKS                       R16 R16 K13 ["createElement"]
      356 GETUPVAL                         R17 6
      357 GETTABLEKS                       R17 R17 K52 ["MaskEditorVisibilityContext"]
      359 GETTABLEKS                       R17 R17 K18 ["Provider"]
      361 CALL                             R16 1 1
      362 GETUPVAL                         R17 0
      363 GETTABLEKS                       R17 R17 K13 ["createElement"]
      365 GETUPVAL                         R18 6
      366 GETTABLEKS                       R18 R18 K53 ["MaskEditorContext"]
      368 GETTABLEKS                       R18 R18 K30 ["EditableDataModelProvider"]
      370 DUPTABLE                         R19 K55 [{"startPickingInstanceAsync"}]
      371 SETTABLEKS                       R3 R19 K54 ["startPickingInstanceAsync"]
      373 CALL                             R17 2 -1
      374 SETLIST                          R11 R12 -1 [17]
      376 SETTABLEKS                       R11 R10 K14 ["providers"]
      378 CALL                             R8 2 1
      379 SETTABLEKS                       R8 R7 K11 ["ContextStack"]
      381 CALL                             R5 2 -1
      382 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["AnimationEditor"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Packages"]
       46 GETTABLEKS                       R7 R7 K12 ["StudioFoundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Src"]
       53 GETTABLEKS                       R8 R8 K14 ["Flags"]
       55 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUI_RunTimeDebug"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K16 [PROTO_10]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R7
       67 RETURN                           R8 1
