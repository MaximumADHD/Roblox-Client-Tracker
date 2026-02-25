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
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R5 R6 K6 ["ContextServices"]
       55 GETTABLEKS                       R4 R5 K7 ["provide"]
       57 NEWTABLE                         R5 0 3
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R8 R9 K6 ["ContextServices"]
       62 GETTABLEKS                       R7 R8 K5 ["Plugin"]
       64 GETTABLEKS                       R6 R7 K8 ["new"]
       66 GETTABLEKS                       R7 R0 K5 ["Plugin"]
       68 CALL                             R6 1 1
       69 GETUPVAL                         R10 1
       70 GETTABLEKS                       R9 R10 K6 ["ContextServices"]
       72 GETTABLEKS                       R8 R9 K9 ["Mouse"]
       74 GETTABLEKS                       R7 R8 K8 ["new"]
       76 GETTABLEKS                       R8 R0 K5 ["Plugin"]
       78 NAMECALL                         R8 R8 K10 ["GetMouse"]
       80 CALL                             R8 1 -1
       81 CALL                             R7 -1 1
       82 MOVE                             R8 R1
       83 SETLIST                          R5 R6 3 [1]
       85 DUPTABLE                         R6 K12 [{"ContextStack"}]
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R7 R8 K13 ["createElement"]
       89 GETUPVAL                         R9 4
       90 GETTABLEKS                       R8 R9 K11 ["ContextStack"]
       92 DUPTABLE                         R9 K15 [{"providers"}]
       93 NEWTABLE                         R10 0 14
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R11 R12 K13 ["createElement"]
       98 GETUPVAL                         R15 3
       99 GETTABLEKS                       R14 R15 K16 ["Contexts"]
      101 GETTABLEKS                       R13 R14 K17 ["Localization"]
      103 GETTABLEKS                       R12 R13 K18 ["Provider"]
      105 DUPTABLE                         R13 K20 [{"localization"}]
      106 SETTABLEKS                       R2 R13 K19 ["localization"]
      108 CALL                             R11 2 1
      109 GETUPVAL                         R13 0
      110 GETTABLEKS                       R12 R13 K13 ["createElement"]
      112 GETUPVAL                         R15 5
      113 GETTABLEKS                       R14 R15 K21 ["InstanceRegistryContext"]
      115 GETTABLEKS                       R13 R14 K18 ["Provider"]
      117 CALL                             R12 1 1
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R13 R14 K13 ["createElement"]
      121 GETUPVAL                         R16 5
      122 GETTABLEKS                       R15 R16 K22 ["NetworkingContext"]
      124 GETTABLEKS                       R14 R15 K23 ["EditableDataModelProvider"]
      126 CALL                             R13 1 1
      127 GETUPVAL                         R15 0
      128 GETTABLEKS                       R14 R15 K13 ["createElement"]
      130 GETUPVAL                         R17 5
      131 GETTABLEKS                       R16 R17 K24 ["NativeGraphContext"]
      133 GETTABLEKS                       R15 R16 K23 ["EditableDataModelProvider"]
      135 CALL                             R14 1 1
      136 GETUPVAL                         R16 0
      137 GETTABLEKS                       R15 R16 K13 ["createElement"]
      139 GETUPVAL                         R18 5
      140 GETTABLEKS                       R17 R18 K25 ["GameContext"]
      142 GETTABLEKS                       R16 R17 K23 ["EditableDataModelProvider"]
      144 CALL                             R15 1 1
      145 GETUPVAL                         R17 0
      146 GETTABLEKS                       R16 R17 K13 ["createElement"]
      148 GETUPVAL                         R19 5
      149 GETTABLEKS                       R18 R19 K26 ["GraphDebugDataContext"]
      151 GETTABLEKS                       R17 R18 K23 ["EditableDataModelProvider"]
      153 CALL                             R16 1 1
      154 GETUPVAL                         R18 0
      155 GETTABLEKS                       R17 R18 K13 ["createElement"]
      157 GETUPVAL                         R20 5
      158 GETTABLEKS                       R19 R20 K27 ["PlayStateContext"]
      160 GETTABLEKS                       R18 R19 K23 ["EditableDataModelProvider"]
      162 CALL                             R17 1 1
      163 GETUPVAL                         R19 0
      164 GETTABLEKS                       R18 R19 K13 ["createElement"]
      166 GETUPVAL                         R21 5
      167 GETTABLEKS                       R20 R21 K28 ["CreateGraphContext"]
      169 GETTABLEKS                       R19 R20 K23 ["EditableDataModelProvider"]
      171 CALL                             R18 1 1
      172 GETUPVAL                         R20 0
      173 GETTABLEKS                       R19 R20 K13 ["createElement"]
      175 GETUPVAL                         R22 5
      176 GETTABLEKS                       R21 R22 K29 ["AnimationParameterContext"]
      178 GETTABLEKS                       R20 R21 K23 ["EditableDataModelProvider"]
      180 CALL                             R19 1 1
      181 GETUPVAL                         R21 0
      182 GETTABLEKS                       R20 R21 K13 ["createElement"]
      184 GETUPVAL                         R23 5
      185 GETTABLEKS                       R22 R23 K30 ["ParameterOverrideContext"]
      187 GETTABLEKS                       R21 R22 K23 ["EditableDataModelProvider"]
      189 CALL                             R20 1 1
      190 GETUPVAL                         R22 0
      191 GETTABLEKS                       R21 R22 K13 ["createElement"]
      193 GETUPVAL                         R24 5
      194 GETTABLEKS                       R23 R24 K31 ["AnimationPreviewContext"]
      196 GETTABLEKS                       R22 R23 K23 ["EditableDataModelProvider"]
      198 CALL                             R21 1 1
      199 GETUPVAL                         R23 0
      200 GETTABLEKS                       R22 R23 K13 ["createElement"]
      202 GETUPVAL                         R25 5
      203 GETTABLEKS                       R24 R25 K32 ["GraphDropdownContext"]
      205 GETTABLEKS                       R23 R24 K23 ["EditableDataModelProvider"]
      207 CALL                             R22 1 1
      208 GETUPVAL                         R24 0
      209 GETTABLEKS                       R23 R24 K13 ["createElement"]
      211 GETUPVAL                         R26 5
      212 GETTABLEKS                       R25 R26 K33 ["GraphDirtyStateContext"]
      214 GETTABLEKS                       R24 R25 K23 ["EditableDataModelProvider"]
      216 CALL                             R23 1 1
      217 GETUPVAL                         R25 0
      218 GETTABLEKS                       R24 R25 K13 ["createElement"]
      220 GETUPVAL                         R27 5
      221 GETTABLEKS                       R26 R27 K34 ["MaskEditorContext"]
      223 GETTABLEKS                       R25 R26 K23 ["EditableDataModelProvider"]
      225 DUPTABLE                         R26 K36 [{"startPickingInstanceAsync"}]
      226 SETTABLEKS                       R3 R26 K35 ["startPickingInstanceAsync"]
      228 CALL                             R24 2 -1
      229 SETLIST                          R10 R11 -1 [1]
      231 SETTABLEKS                       R10 R9 K14 ["providers"]
      233 CALL                             R7 2 1
      234 SETTABLEKS                       R7 R6 K11 ["ContextStack"]
      236 CALL                             R4 2 -1
      237 RETURN                           R4 -1

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
       42 DUPCLOSURE                       R6 K12 [PROTO_8]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 RETURN                           R6 1
