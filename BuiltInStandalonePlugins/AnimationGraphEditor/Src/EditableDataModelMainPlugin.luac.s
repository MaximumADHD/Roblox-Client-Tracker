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
      101 NEWTABLE                         R11 0 16
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
      120 GETUPVAL                         R16 5
      121 GETTABLEKS                       R15 R16 K21 ["InstanceRegistryContext"]
      123 GETTABLEKS                       R14 R15 K18 ["Provider"]
      125 CALL                             R13 1 1
      126 GETUPVAL                         R15 0
      127 GETTABLEKS                       R14 R15 K13 ["createElement"]
      129 GETUPVAL                         R17 5
      130 GETTABLEKS                       R16 R17 K22 ["NetworkingContext"]
      132 GETTABLEKS                       R15 R16 K23 ["EditableDataModelProvider"]
      134 CALL                             R14 1 1
      135 GETUPVAL                         R16 0
      136 GETTABLEKS                       R15 R16 K13 ["createElement"]
      138 GETUPVAL                         R18 5
      139 GETTABLEKS                       R17 R18 K24 ["NativeGraphContext"]
      141 GETTABLEKS                       R16 R17 K23 ["EditableDataModelProvider"]
      143 CALL                             R15 1 1
      144 GETUPVAL                         R17 0
      145 GETTABLEKS                       R16 R17 K13 ["createElement"]
      147 GETUPVAL                         R19 5
      148 GETTABLEKS                       R18 R19 K25 ["CreateGraphContext"]
      150 GETTABLEKS                       R17 R18 K23 ["EditableDataModelProvider"]
      152 CALL                             R16 1 1
      153 GETUPVAL                         R18 0
      154 GETTABLEKS                       R17 R18 K13 ["createElement"]
      156 GETUPVAL                         R20 5
      157 GETTABLEKS                       R19 R20 K26 ["RigListContext"]
      159 GETTABLEKS                       R18 R19 K23 ["EditableDataModelProvider"]
      161 CALL                             R17 1 1
      162 GETUPVAL                         R19 0
      163 GETTABLEKS                       R18 R19 K13 ["createElement"]
      165 GETUPVAL                         R21 5
      166 GETTABLEKS                       R20 R21 K27 ["AnimationParameterContext"]
      168 GETTABLEKS                       R19 R20 K23 ["EditableDataModelProvider"]
      170 CALL                             R18 1 1
      171 GETUPVAL                         R20 0
      172 GETTABLEKS                       R19 R20 K13 ["createElement"]
      174 GETUPVAL                         R22 5
      175 GETTABLEKS                       R21 R22 K28 ["GraphDebugDataContext"]
      177 GETTABLEKS                       R20 R21 K23 ["EditableDataModelProvider"]
      179 CALL                             R19 1 1
      180 GETUPVAL                         R21 0
      181 GETTABLEKS                       R20 R21 K13 ["createElement"]
      183 GETUPVAL                         R23 5
      184 GETTABLEKS                       R22 R23 K29 ["PlayStateContext"]
      186 GETTABLEKS                       R21 R22 K23 ["EditableDataModelProvider"]
      188 CALL                             R20 1 1
      189 GETUPVAL                         R22 0
      190 GETTABLEKS                       R21 R22 K13 ["createElement"]
      192 GETUPVAL                         R24 5
      193 GETTABLEKS                       R23 R24 K30 ["AssetAccessContext"]
      195 GETTABLEKS                       R22 R23 K23 ["EditableDataModelProvider"]
      197 DUPTABLE                         R23 K32 [{"shareAccessToAssetsAsync"}]
      198 SETTABLEKS                       R4 R23 K31 ["shareAccessToAssetsAsync"]
      200 CALL                             R21 2 1
      201 GETUPVAL                         R23 0
      202 GETTABLEKS                       R22 R23 K13 ["createElement"]
      204 GETUPVAL                         R25 5
      205 GETTABLEKS                       R24 R25 K33 ["GameContext"]
      207 GETTABLEKS                       R23 R24 K23 ["EditableDataModelProvider"]
      209 CALL                             R22 1 1
      210 GETUPVAL                         R24 0
      211 GETTABLEKS                       R23 R24 K13 ["createElement"]
      213 GETUPVAL                         R26 5
      214 GETTABLEKS                       R25 R26 K34 ["ParameterOverrideContext"]
      216 GETTABLEKS                       R24 R25 K23 ["EditableDataModelProvider"]
      218 CALL                             R23 1 1
      219 GETUPVAL                         R25 0
      220 GETTABLEKS                       R24 R25 K13 ["createElement"]
      222 GETUPVAL                         R27 5
      223 GETTABLEKS                       R26 R27 K35 ["GraphDropdownContext"]
      225 GETTABLEKS                       R25 R26 K23 ["EditableDataModelProvider"]
      227 CALL                             R24 1 1
      228 GETUPVAL                         R26 0
      229 GETTABLEKS                       R25 R26 K13 ["createElement"]
      231 GETUPVAL                         R28 5
      232 GETTABLEKS                       R27 R28 K36 ["GraphDirtyStateContext"]
      234 GETTABLEKS                       R26 R27 K23 ["EditableDataModelProvider"]
      236 CALL                             R25 1 1
      237 GETUPVAL                         R27 0
      238 GETTABLEKS                       R26 R27 K13 ["createElement"]
      240 GETUPVAL                         R29 5
      241 GETTABLEKS                       R28 R29 K37 ["CreateScriptContext"]
      243 GETTABLEKS                       R27 R28 K23 ["EditableDataModelProvider"]
      245 CALL                             R26 1 1
      246 GETUPVAL                         R28 0
      247 GETTABLEKS                       R27 R28 K13 ["createElement"]
      249 GETUPVAL                         R30 5
      250 GETTABLEKS                       R29 R30 K38 ["MaskEditorContext"]
      252 GETTABLEKS                       R28 R29 K23 ["EditableDataModelProvider"]
      254 DUPTABLE                         R29 K40 [{"startPickingInstanceAsync"}]
      255 SETTABLEKS                       R3 R29 K39 ["startPickingInstanceAsync"]
      257 CALL                             R27 2 -1
      258 SETLIST                          R11 R12 -1 [1]
      260 SETTABLEKS                       R11 R10 K14 ["providers"]
      262 CALL                             R8 2 1
      263 SETTABLEKS                       R8 R7 K11 ["ContextStack"]
      265 CALL                             R5 2 -1
      266 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K12 [PROTO_10]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 RETURN                           R6 1
