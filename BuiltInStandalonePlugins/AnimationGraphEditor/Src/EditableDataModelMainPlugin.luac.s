PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K2 ["new"]
        7 DUPTABLE                         R1 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AnimationGraphEditor"}]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K8 ["Src"]
       11 GETTABLEKS                       R2 R2 K9 ["Resources"]
       13 GETTABLEKS                       R2 R2 K1 ["Localization"]
       15 GETTABLEKS                       R2 R2 K10 ["SourceStrings"]
       17 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K8 ["Src"]
       22 GETTABLEKS                       R2 R2 K9 ["Resources"]
       24 GETTABLEKS                       R2 R2 K1 ["Localization"]
       26 GETTABLEKS                       R2 R2 K11 ["LocalizedStrings"]
       28 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       30 CALL                             R0 1 -1
       31 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Contexts"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K1 ["Localization"]
        7 GETTABLEKS                       R0 R0 K2 ["new"]
        9 DUPTABLE                         R1 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AnimationGraphEditor"}]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K8 ["Src"]
       13 GETTABLEKS                       R2 R2 K9 ["Resources"]
       15 GETTABLEKS                       R2 R2 K1 ["Localization"]
       17 GETTABLEKS                       R2 R2 K10 ["SourceStrings"]
       19 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K8 ["Src"]
       24 GETTABLEKS                       R2 R2 K9 ["Resources"]
       26 GETTABLEKS                       R2 R2 K1 ["Localization"]
       28 GETTABLEKS                       R2 R2 K11 ["LocalizedStrings"]
       30 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       32 CALL                             R0 1 -1
       33 RETURN                           R0 -1

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
      131 DUPTABLE                         R17 K27 [{["source"] = "AnimationGraphEditor"}]
      132 SETTABLEKS                       R17 R16 K23 ["extraFields"]
      134 CALL                             R14 2 1
      135 GETUPVAL                         R15 0
      136 GETTABLEKS                       R15 R15 K13 ["createElement"]
      138 GETUPVAL                         R16 6
      139 GETTABLEKS                       R16 R16 K28 ["InstanceRegistryContext"]
      141 GETTABLEKS                       R16 R16 K18 ["Provider"]
      143 CALL                             R15 1 1
      144 GETUPVAL                         R16 0
      145 GETTABLEKS                       R16 R16 K13 ["createElement"]
      147 GETUPVAL                         R17 6
      148 GETTABLEKS                       R17 R17 K29 ["NetworkingContext"]
      150 GETTABLEKS                       R17 R17 K30 ["EditableDataModelProvider"]
      152 CALL                             R16 1 1
      153 GETUPVAL                         R17 0
      154 GETTABLEKS                       R17 R17 K13 ["createElement"]
      156 GETUPVAL                         R18 6
      157 GETTABLEKS                       R18 R18 K31 ["VisibleContext"]
      159 GETTABLEKS                       R18 R18 K30 ["EditableDataModelProvider"]
      161 CALL                             R17 1 1
      162 GETUPVAL                         R18 0
      163 GETTABLEKS                       R18 R18 K13 ["createElement"]
      165 GETUPVAL                         R19 6
      166 GETTABLEKS                       R19 R19 K32 ["EditableDataModelContexts"]
      168 DUPTABLE                         R20 K34 [{"plugin"}]
      169 GETTABLEKS                       R21 R0 K5 ["Plugin"]
      171 SETTABLEKS                       R21 R20 K33 ["plugin"]
      173 CALL                             R18 2 1
      174 GETUPVAL                         R19 0
      175 GETTABLEKS                       R19 R19 K13 ["createElement"]
      177 GETUPVAL                         R20 6
      178 GETTABLEKS                       R20 R20 K35 ["NativeGraphContext"]
      180 GETTABLEKS                       R20 R20 K30 ["EditableDataModelProvider"]
      182 CALL                             R19 1 1
      183 GETUPVAL                         R21 7
      184 CALL                             R21 0 1
      185 JUMPIFNOT                        R21 ; [+8]
      186 GETUPVAL                         R20 0
      187 GETTABLEKS                       R20 R20 K13 ["createElement"]
      189 GETUPVAL                         R21 0
      190 GETTABLEKS                       R21 R21 K36 ["Fragment"]
      192 CALL                             R20 1 1
      193 JUMP                             ; [+9]
      194 GETUPVAL                         R20 0
      195 GETTABLEKS                       R20 R20 K13 ["createElement"]
      197 GETUPVAL                         R21 6
      198 GETTABLEKS                       R21 R21 K37 ["RigListContext"]
      200 GETTABLEKS                       R21 R21 K30 ["EditableDataModelProvider"]
      202 CALL                             R20 1 1
      203 GETUPVAL                         R22 7
      204 CALL                             R22 0 1
      205 JUMPIFNOT                        R22 ; [+8]
      206 GETUPVAL                         R21 0
      207 GETTABLEKS                       R21 R21 K13 ["createElement"]
      209 GETUPVAL                         R22 0
      210 GETTABLEKS                       R22 R22 K36 ["Fragment"]
      212 CALL                             R21 1 1
      213 JUMP                             ; [+9]
      214 GETUPVAL                         R21 0
      215 GETTABLEKS                       R21 R21 K13 ["createElement"]
      217 GETUPVAL                         R22 6
      218 GETTABLEKS                       R22 R22 K38 ["GraphTimestampContext"]
      220 GETTABLEKS                       R22 R22 K30 ["EditableDataModelProvider"]
      222 CALL                             R21 1 1
      223 GETUPVAL                         R23 7
      224 CALL                             R23 0 1
      225 JUMPIFNOT                        R23 ; [+8]
      226 GETUPVAL                         R22 0
      227 GETTABLEKS                       R22 R22 K13 ["createElement"]
      229 GETUPVAL                         R23 0
      230 GETTABLEKS                       R23 R23 K36 ["Fragment"]
      232 CALL                             R22 1 1
      233 JUMP                             ; [+9]
      234 GETUPVAL                         R22 0
      235 GETTABLEKS                       R22 R22 K13 ["createElement"]
      237 GETUPVAL                         R23 6
      238 GETTABLEKS                       R23 R23 K39 ["CreateGraphContext"]
      240 GETTABLEKS                       R23 R23 K30 ["EditableDataModelProvider"]
      242 CALL                             R22 1 1
      243 GETUPVAL                         R23 0
      244 GETTABLEKS                       R23 R23 K13 ["createElement"]
      246 GETUPVAL                         R24 6
      247 GETTABLEKS                       R24 R24 K40 ["AnimationParameterContext"]
      249 GETTABLEKS                       R24 R24 K30 ["EditableDataModelProvider"]
      251 CALL                             R23 1 1
      252 GETUPVAL                         R25 7
      253 CALL                             R25 0 1
      254 JUMPIFNOT                        R25 ; [+8]
      255 GETUPVAL                         R24 0
      256 GETTABLEKS                       R24 R24 K13 ["createElement"]
      258 GETUPVAL                         R25 0
      259 GETTABLEKS                       R25 R25 K36 ["Fragment"]
      261 CALL                             R24 1 1
      262 JUMP                             ; [+9]
      263 GETUPVAL                         R24 0
      264 GETTABLEKS                       R24 R24 K13 ["createElement"]
      266 GETUPVAL                         R25 6
      267 GETTABLEKS                       R25 R25 K41 ["GraphDebugDataContext"]
      269 GETTABLEKS                       R25 R25 K30 ["EditableDataModelProvider"]
      271 CALL                             R24 1 1
      272 GETUPVAL                         R25 0
      273 GETTABLEKS                       R25 R25 K13 ["createElement"]
      275 GETUPVAL                         R26 6
      276 GETTABLEKS                       R26 R26 K42 ["PlayStateContext"]
      278 GETTABLEKS                       R26 R26 K30 ["EditableDataModelProvider"]
      280 DUPTABLE                         R27 K44 [{"defaultPlayingState"}]
      281 GETUPVAL                         R29 7
      282 CALL                             R29 0 1
      283 JUMPIFNOT                        R29 ; [+2]
      284 LOADB                            R28 1
      285 JUMP                             ; [+1]
      286 LOADNIL                          R28
      287 SETTABLEKS                       R28 R27 K43 ["defaultPlayingState"]
      289 CALL                             R25 2 1
      290 GETUPVAL                         R26 0
      291 GETTABLEKS                       R26 R26 K13 ["createElement"]
      293 GETUPVAL                         R27 6
      294 GETTABLEKS                       R27 R27 K45 ["AssetAccessContext"]
      296 GETTABLEKS                       R27 R27 K30 ["EditableDataModelProvider"]
      298 DUPTABLE                         R28 K47 [{"shareAccessToAssetsAsync"}]
      299 SETTABLEKS                       R4 R28 K46 ["shareAccessToAssetsAsync"]
      301 CALL                             R26 2 1
      302 GETUPVAL                         R27 0
      303 GETTABLEKS                       R27 R27 K13 ["createElement"]
      305 GETUPVAL                         R28 6
      306 GETTABLEKS                       R28 R28 K48 ["GameContext"]
      308 GETTABLEKS                       R28 R28 K30 ["EditableDataModelProvider"]
      310 CALL                             R27 1 1
      311 SETLIST                          R11 R12 16 [1]
      313 GETUPVAL                         R12 0
      314 GETTABLEKS                       R12 R12 K13 ["createElement"]
      316 GETUPVAL                         R13 6
      317 GETTABLEKS                       R13 R13 K49 ["GraphDropdownContext"]
      319 GETTABLEKS                       R13 R13 K30 ["EditableDataModelProvider"]
      321 CALL                             R12 1 1
      322 GETUPVAL                         R14 7
      323 CALL                             R14 0 1
      324 JUMPIFNOT                        R14 ; [+8]
      325 GETUPVAL                         R13 0
      326 GETTABLEKS                       R13 R13 K13 ["createElement"]
      328 GETUPVAL                         R14 0
      329 GETTABLEKS                       R14 R14 K36 ["Fragment"]
      331 CALL                             R13 1 1
      332 JUMP                             ; [+14]
      333 GETUPVAL                         R13 0
      334 GETTABLEKS                       R13 R13 K13 ["createElement"]
      336 GETUPVAL                         R14 6
      337 GETTABLEKS                       R14 R14 K50 ["CreateScriptContext"]
      339 GETTABLEKS                       R14 R14 K30 ["EditableDataModelProvider"]
      341 DUPTABLE                         R15 K34 [{"plugin"}]
      342 GETTABLEKS                       R16 R0 K5 ["Plugin"]
      344 SETTABLEKS                       R16 R15 K33 ["plugin"]
      346 CALL                             R13 2 1
      347 GETUPVAL                         R14 0
      348 GETTABLEKS                       R14 R14 K13 ["createElement"]
      350 GETUPVAL                         R15 6
      351 GETTABLEKS                       R15 R15 K51 ["PublishWarningContext"]
      353 GETTABLEKS                       R15 R15 K52 ["StudioProvider"]
      355 DUPTABLE                         R16 K34 [{"plugin"}]
      356 GETTABLEKS                       R17 R0 K5 ["Plugin"]
      358 SETTABLEKS                       R17 R16 K33 ["plugin"]
      360 CALL                             R14 2 1
      361 GETUPVAL                         R15 0
      362 GETTABLEKS                       R15 R15 K13 ["createElement"]
      364 GETUPVAL                         R16 6
      365 GETTABLEKS                       R16 R16 K53 ["GraphDirtyStateContext"]
      367 GETTABLEKS                       R16 R16 K30 ["EditableDataModelProvider"]
      369 CALL                             R15 1 1
      370 GETUPVAL                         R16 0
      371 GETTABLEKS                       R16 R16 K13 ["createElement"]
      373 GETUPVAL                         R17 6
      374 GETTABLEKS                       R17 R17 K54 ["MaskEditorVisibilityContext"]
      376 GETTABLEKS                       R17 R17 K18 ["Provider"]
      378 CALL                             R16 1 1
      379 GETUPVAL                         R17 0
      380 GETTABLEKS                       R17 R17 K13 ["createElement"]
      382 GETUPVAL                         R18 6
      383 GETTABLEKS                       R18 R18 K55 ["MaskEditorContext"]
      385 GETTABLEKS                       R18 R18 K30 ["EditableDataModelProvider"]
      387 DUPTABLE                         R19 K57 [{"startPickingInstanceAsync"}]
      388 SETTABLEKS                       R3 R19 K56 ["startPickingInstanceAsync"]
      390 CALL                             R17 2 -1
      391 SETLIST                          R11 R12 -1 [17]
      393 SETTABLEKS                       R11 R10 K14 ["providers"]
      395 CALL                             R8 2 1
      396 SETTABLEKS                       R8 R7 K11 ["ContextStack"]
      398 CALL                             R5 2 -1
      399 RETURN                           R5 -1

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
