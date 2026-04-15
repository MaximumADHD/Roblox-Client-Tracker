PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 GETTABLEKS                       R0 R1 K2 ["new"]
        7 DUPTABLE                         R1 K6 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K7 ["Src"]
       11 GETTABLEKS                       R4 R5 K8 ["Resources"]
       13 GETTABLEKS                       R3 R4 K1 ["Localization"]
       15 GETTABLEKS                       R2 R3 K9 ["SourceStrings"]
       17 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K7 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Resources"]
       24 GETTABLEKS                       R3 R4 K1 ["Localization"]
       26 GETTABLEKS                       R2 R3 K10 ["LocalizedStrings"]
       28 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       30 LOADK                            R2 K11 ["AnimationGraphEditor"]
       31 SETTABLEKS                       R2 R1 K5 ["pluginName"]
       33 CALL                             R0 1 -1
       34 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Contexts"]
        3 GETTABLEKS                       R2 R3 K1 ["Localization"]
        5 GETTABLEKS                       R1 R2 K1 ["Localization"]
        7 GETTABLEKS                       R0 R1 K2 ["new"]
        9 DUPTABLE                         R1 K6 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K7 ["Src"]
       13 GETTABLEKS                       R4 R5 K8 ["Resources"]
       15 GETTABLEKS                       R3 R4 K1 ["Localization"]
       17 GETTABLEKS                       R2 R3 K9 ["SourceStrings"]
       19 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K7 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Resources"]
       26 GETTABLEKS                       R3 R4 K1 ["Localization"]
       28 GETTABLEKS                       R2 R3 K10 ["LocalizedStrings"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Plugin"]
        3 LOADK                            R2 K1 ["InstancePicker"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R2 K3 [PROTO_6]
        8 NAMECALL                         R0 R0 K4 ["PickInstanceAsync"]
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Plugin"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useMemo"]
       12 DUPCLOSURE                       R3 K2 [PROTO_1]
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K3 ["useEffect"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R5 0 1
       25 MOVE                             R6 R1
       26 SETLIST                          R5 R6 1 [1]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K3 ["useEffect"]
       32 NEWCLOSURE                       R4 P3
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R5 0 1
       36 MOVE                             R6 R2
       37 SETLIST                          R5 R6 1 [1]
       39 CALL                             R3 2 0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K4 ["useCallback"]
       43 NEWCLOSURE                       R4 P4
       44 CAPTURE                          VAL R0
       45 NEWTABLE                         R5 0 1
       47 GETTABLEKS                       R6 R0 K5 ["Plugin"]
       49 SETLIST                          R5 R6 1 [1]
       51 CALL                             R3 2 1
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       55 NEWCLOSURE                       R5 P5
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R6 0 0
       59 CALL                             R4 2 1
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R6 R7 K6 ["ContextServices"]
       63 GETTABLEKS                       R5 R6 K7 ["provide"]
       65 NEWTABLE                         R6 0 3
       67 GETUPVAL                         R10 1
       68 GETTABLEKS                       R9 R10 K6 ["ContextServices"]
       70 GETTABLEKS                       R8 R9 K5 ["Plugin"]
       72 GETTABLEKS                       R7 R8 K8 ["new"]
       74 GETTABLEKS                       R8 R0 K5 ["Plugin"]
       76 CALL                             R7 1 1
       77 GETUPVAL                         R11 1
       78 GETTABLEKS                       R10 R11 K6 ["ContextServices"]
       80 GETTABLEKS                       R9 R10 K9 ["Mouse"]
       82 GETTABLEKS                       R8 R9 K8 ["new"]
       84 GETTABLEKS                       R9 R0 K5 ["Plugin"]
       86 NAMECALL                         R9 R9 K10 ["GetMouse"]
       88 CALL                             R9 1 -1
       89 CALL                             R8 -1 1
       90 MOVE                             R9 R1
       91 SETLIST                          R6 R7 3 [1]
       93 DUPTABLE                         R7 K12 [{"ContextStack"}]
       94 GETUPVAL                         R9 0
       95 GETTABLEKS                       R8 R9 K13 ["createElement"]
       97 GETUPVAL                         R10 4
       98 GETTABLEKS                       R9 R10 K11 ["ContextStack"]
      100 DUPTABLE                         R10 K15 [{"providers"}]
      101 NEWTABLE                         R11 0 21
      103 GETUPVAL                         R13 0
      104 GETTABLEKS                       R12 R13 K13 ["createElement"]
      106 GETUPVAL                         R16 3
      107 GETTABLEKS                       R15 R16 K16 ["Contexts"]
      109 GETTABLEKS                       R14 R15 K17 ["Localization"]
      111 GETTABLEKS                       R13 R14 K18 ["Provider"]
      113 DUPTABLE                         R14 K20 [{"localization"}]
      114 SETTABLEKS                       R2 R14 K19 ["localization"]
      116 CALL                             R12 2 1
      117 GETUPVAL                         R14 0
      118 GETTABLEKS                       R13 R14 K13 ["createElement"]
      120 GETUPVAL                         R15 5
      121 GETTABLEKS                       R14 R15 K21 ["AnalyticsTelemetryServiceProvider"]
      123 CALL                             R13 1 1
      124 GETUPVAL                         R15 0
      125 GETTABLEKS                       R14 R15 K13 ["createElement"]
      127 GETUPVAL                         R16 5
      128 GETTABLEKS                       R15 R16 K22 ["AddExtraFields"]
      130 DUPTABLE                         R16 K24 [{"extraFields"}]
      131 DUPTABLE                         R17 K26 [{"source"}]
      132 LOADK                            R18 K27 ["AnimationGraphEditor"]
      133 SETTABLEKS                       R18 R17 K25 ["source"]
      135 SETTABLEKS                       R17 R16 K23 ["extraFields"]
      137 CALL                             R14 2 1
      138 GETUPVAL                         R16 0
      139 GETTABLEKS                       R15 R16 K13 ["createElement"]
      141 GETUPVAL                         R18 6
      142 GETTABLEKS                       R17 R18 K28 ["InstanceRegistryContext"]
      144 GETTABLEKS                       R16 R17 K18 ["Provider"]
      146 CALL                             R15 1 1
      147 GETUPVAL                         R17 0
      148 GETTABLEKS                       R16 R17 K13 ["createElement"]
      150 GETUPVAL                         R19 6
      151 GETTABLEKS                       R18 R19 K29 ["NetworkingContext"]
      153 GETTABLEKS                       R17 R18 K30 ["EditableDataModelProvider"]
      155 CALL                             R16 1 1
      156 GETUPVAL                         R18 0
      157 GETTABLEKS                       R17 R18 K13 ["createElement"]
      159 GETUPVAL                         R20 6
      160 GETTABLEKS                       R19 R20 K31 ["VisibleContext"]
      162 GETTABLEKS                       R18 R19 K30 ["EditableDataModelProvider"]
      164 CALL                             R17 1 1
      165 GETUPVAL                         R19 0
      166 GETTABLEKS                       R18 R19 K13 ["createElement"]
      168 GETUPVAL                         R20 6
      169 GETTABLEKS                       R19 R20 K32 ["EditableDataModelContexts"]
      171 DUPTABLE                         R20 K34 [{"plugin"}]
      172 GETTABLEKS                       R21 R0 K5 ["Plugin"]
      174 SETTABLEKS                       R21 R20 K33 ["plugin"]
      176 CALL                             R18 2 1
      177 GETUPVAL                         R20 0
      178 GETTABLEKS                       R19 R20 K13 ["createElement"]
      180 GETUPVAL                         R22 6
      181 GETTABLEKS                       R21 R22 K35 ["NativeGraphContext"]
      183 GETTABLEKS                       R20 R21 K30 ["EditableDataModelProvider"]
      185 CALL                             R19 1 1
      186 GETUPVAL                         R21 0
      187 GETTABLEKS                       R20 R21 K13 ["createElement"]
      189 GETUPVAL                         R23 6
      190 GETTABLEKS                       R22 R23 K36 ["RigListContext"]
      192 GETTABLEKS                       R21 R22 K30 ["EditableDataModelProvider"]
      194 CALL                             R20 1 1
      195 GETUPVAL                         R22 0
      196 GETTABLEKS                       R21 R22 K13 ["createElement"]
      198 GETUPVAL                         R24 6
      199 GETTABLEKS                       R23 R24 K37 ["CreateGraphContext"]
      201 GETTABLEKS                       R22 R23 K30 ["EditableDataModelProvider"]
      203 CALL                             R21 1 1
      204 GETUPVAL                         R23 0
      205 GETTABLEKS                       R22 R23 K13 ["createElement"]
      207 GETUPVAL                         R25 6
      208 GETTABLEKS                       R24 R25 K38 ["AnimationParameterContext"]
      210 GETTABLEKS                       R23 R24 K30 ["EditableDataModelProvider"]
      212 CALL                             R22 1 1
      213 GETUPVAL                         R24 0
      214 GETTABLEKS                       R23 R24 K13 ["createElement"]
      216 GETUPVAL                         R26 6
      217 GETTABLEKS                       R25 R26 K39 ["GraphDebugDataContext"]
      219 GETTABLEKS                       R24 R25 K30 ["EditableDataModelProvider"]
      221 CALL                             R23 1 1
      222 GETUPVAL                         R25 0
      223 GETTABLEKS                       R24 R25 K13 ["createElement"]
      225 GETUPVAL                         R27 6
      226 GETTABLEKS                       R26 R27 K40 ["PlayStateContext"]
      228 GETTABLEKS                       R25 R26 K30 ["EditableDataModelProvider"]
      230 CALL                             R24 1 1
      231 GETUPVAL                         R26 0
      232 GETTABLEKS                       R25 R26 K13 ["createElement"]
      234 GETUPVAL                         R28 6
      235 GETTABLEKS                       R27 R28 K41 ["AssetAccessContext"]
      237 GETTABLEKS                       R26 R27 K30 ["EditableDataModelProvider"]
      239 DUPTABLE                         R27 K43 [{"shareAccessToAssetsAsync"}]
      240 SETTABLEKS                       R4 R27 K42 ["shareAccessToAssetsAsync"]
      242 CALL                             R25 2 1
      243 GETUPVAL                         R27 0
      244 GETTABLEKS                       R26 R27 K13 ["createElement"]
      246 GETUPVAL                         R29 6
      247 GETTABLEKS                       R28 R29 K44 ["GameContext"]
      249 GETTABLEKS                       R27 R28 K30 ["EditableDataModelProvider"]
      251 CALL                             R26 1 1
      252 GETUPVAL                         R28 0
      253 GETTABLEKS                       R27 R28 K13 ["createElement"]
      255 GETUPVAL                         R30 6
      256 GETTABLEKS                       R29 R30 K45 ["ParameterOverrideContext"]
      258 GETTABLEKS                       R28 R29 K30 ["EditableDataModelProvider"]
      260 CALL                             R27 1 1
      261 SETLIST                          R11 R12 16 [1]
      263 GETUPVAL                         R13 0
      264 GETTABLEKS                       R12 R13 K13 ["createElement"]
      266 GETUPVAL                         R15 6
      267 GETTABLEKS                       R14 R15 K46 ["GraphDropdownContext"]
      269 GETTABLEKS                       R13 R14 K30 ["EditableDataModelProvider"]
      271 CALL                             R12 1 1
      272 GETUPVAL                         R14 0
      273 GETTABLEKS                       R13 R14 K13 ["createElement"]
      275 GETUPVAL                         R16 6
      276 GETTABLEKS                       R15 R16 K47 ["CreateScriptContext"]
      278 GETTABLEKS                       R14 R15 K30 ["EditableDataModelProvider"]
      280 DUPTABLE                         R15 K34 [{"plugin"}]
      281 GETTABLEKS                       R16 R0 K5 ["Plugin"]
      283 SETTABLEKS                       R16 R15 K33 ["plugin"]
      285 CALL                             R13 2 1
      286 GETUPVAL                         R15 0
      287 GETTABLEKS                       R14 R15 K13 ["createElement"]
      289 GETUPVAL                         R17 6
      290 GETTABLEKS                       R16 R17 K48 ["PublishWarningContext"]
      292 GETTABLEKS                       R15 R16 K49 ["StudioProvider"]
      294 DUPTABLE                         R16 K34 [{"plugin"}]
      295 GETTABLEKS                       R17 R0 K5 ["Plugin"]
      297 SETTABLEKS                       R17 R16 K33 ["plugin"]
      299 CALL                             R14 2 1
      300 GETUPVAL                         R16 0
      301 GETTABLEKS                       R15 R16 K13 ["createElement"]
      303 GETUPVAL                         R18 6
      304 GETTABLEKS                       R17 R18 K50 ["GraphDirtyStateContext"]
      306 GETTABLEKS                       R16 R17 K30 ["EditableDataModelProvider"]
      308 CALL                             R15 1 1
      309 GETUPVAL                         R17 0
      310 GETTABLEKS                       R16 R17 K13 ["createElement"]
      312 GETUPVAL                         R19 6
      313 GETTABLEKS                       R18 R19 K51 ["MaskEditorContext"]
      315 GETTABLEKS                       R17 R18 K30 ["EditableDataModelProvider"]
      317 DUPTABLE                         R18 K53 [{"startPickingInstanceAsync"}]
      318 SETTABLEKS                       R3 R18 K52 ["startPickingInstanceAsync"]
      320 CALL                             R16 2 -1
      321 SETLIST                          R11 R12 -1 [17]
      323 SETTABLEKS                       R11 R10 K14 ["providers"]
      325 CALL                             R8 2 1
      326 SETTABLEKS                       R8 R7 K11 ["ContextStack"]
      328 CALL                             R5 2 -1
      329 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["AnimationEditor"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Packages"]
       46 GETTABLEKS                       R7 R8 K12 ["StudioFoundation"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K13 [PROTO_10]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 RETURN                           R7 1
