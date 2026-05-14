PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ActiveLayersFilter"}]
        3 GETTABLEKS                       R5 R1 K2 ["activeLayersFilter"]
        5 SETTABLEKS                       R5 R4 K0 ["ActiveLayersFilter"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Actor"}]
        3 GETTABLEKS                       R5 R1 K2 ["actor"]
        5 JUMPIF                           R5 ; [+1]
        6 GETUPVAL                         R5 1
        7 SETTABLEKS                       R5 R4 K0 ["Actor"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"Adornments"}]
        3 GETTABLEKS                       R5 R1 K2 ["adornments"]
        5 SETTABLEKS                       R5 R4 K0 ["Adornments"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"DebugDataEvent", "DebugDataConnection"}]
        3 GETTABLEKS                       R5 R1 K3 ["event"]
        5 SETTABLEKS                       R5 R4 K0 ["DebugDataEvent"]
        7 GETTABLEKS                       R5 R1 K4 ["connection"]
        9 SETTABLEKS                       R5 R4 K1 ["DebugDataConnection"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"DebugPoseEvent"}]
        3 GETTABLEKS                       R5 R1 K2 ["event"]
        5 SETTABLEKS                       R5 R4 K0 ["DebugPoseEvent"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"ExpandedSections"}]
        3 GETTABLEKS                       R5 R1 K2 ["expandedSections"]
        5 SETTABLEKS                       R5 R4 K0 ["ExpandedSections"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"HistoryField"}]
        3 DUPTABLE                         R5 K5 [{"id", "section", "field"}]
        4 GETTABLEKS                       R6 R1 K2 ["id"]
        6 SETTABLEKS                       R6 R5 K2 ["id"]
        8 GETTABLEKS                       R6 R1 K3 ["section"]
       10 SETTABLEKS                       R6 R5 K3 ["section"]
       12 GETTABLEKS                       R6 R1 K4 ["field"]
       14 SETTABLEKS                       R6 R5 K4 ["field"]
       16 SETTABLEKS                       R5 R4 K0 ["HistoryField"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"HistoryFrame"}]
        3 GETTABLEKS                       R5 R1 K2 ["historyFrame"]
        5 SETTABLEKS                       R5 R4 K0 ["HistoryFrame"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"HistoryOffset"}]
        3 GETTABLEKS                       R5 R1 K2 ["historyOffset"]
        5 SETTABLEKS                       R5 R4 K0 ["HistoryOffset"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"LayerFilters"}]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R6 R0 K0 ["LayerFilters"]
        6 GETTABLEKS                       R7 R1 K2 ["layerFilters"]
        8 CALL                             R5 2 1
        9 SETTABLEKS                       R5 R4 K0 ["LayerFilters"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"LayerSelectionEvent"}]
        3 GETTABLEKS                       R5 R1 K2 ["event"]
        5 SETTABLEKS                       R5 R4 K0 ["LayerSelectionEvent"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"PropertyOverridesEvent"}]
        3 GETTABLEKS                       R5 R1 K2 ["event"]
        5 SETTABLEKS                       R5 R4 K0 ["PropertyOverridesEvent"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SelectedLayer"}]
        3 GETTABLEKS                       R5 R1 K2 ["selectedLayer"]
        5 JUMPIF                           R5 ; [+1]
        6 GETUPVAL                         R5 1
        7 SETTABLEKS                       R5 R4 K0 ["SelectedLayer"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SendPayloadAnalytics"}]
        3 GETTABLEKS                       R5 R1 K2 ["enable"]
        5 SETTABLEKS                       R5 R4 K0 ["SendPayloadAnalytics"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SkipCounter"}]
        3 GETTABLEKS                       R5 R1 K2 ["skipCounter"]
        5 SETTABLEKS                       R5 R4 K0 ["SkipCounter"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"SkipLimit"}]
        3 GETTABLEKS                       R5 R1 K2 ["skipLimit"]
        5 SETTABLEKS                       R5 R4 K0 ["SkipLimit"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["join"]
       23 GETTABLEKS                       R4 R1 K10 ["None"]
       25 GETTABLEKS                       R5 R0 K11 ["Src"]
       27 GETTABLEKS                       R5 R5 K12 ["Actions"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R5 K13 ["SetActiveLayersFilter"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R5 K14 ["SetActor"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K5 [require]
       41 GETTABLEKS                       R9 R5 K15 ["SetAdornments"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K5 [require]
       46 GETTABLEKS                       R10 R5 K16 ["SetDebugDataEvent"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R11 R5 K17 ["SetDebugPoseEvent"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R12 R5 K18 ["SetExpandedSections"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K5 [require]
       61 GETTABLEKS                       R13 R5 K19 ["SetHistoryField"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K5 [require]
       66 GETTABLEKS                       R14 R5 K20 ["SetHistoryFrame"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K5 [require]
       71 GETTABLEKS                       R15 R5 K21 ["SetHistoryOffset"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K5 [require]
       76 GETTABLEKS                       R16 R5 K22 ["SetLayerFilter"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K5 [require]
       81 GETTABLEKS                       R17 R5 K23 ["SetLayerSelectionEvent"]
       83 CALL                             R16 1 1
       84 GETIMPORT                        R17 K5 [require]
       86 GETTABLEKS                       R18 R5 K24 ["SetPropertyOverridesEvent"]
       88 CALL                             R17 1 1
       89 GETIMPORT                        R18 K5 [require]
       91 GETTABLEKS                       R19 R5 K25 ["SetSelectedLayer"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K5 [require]
       96 GETTABLEKS                       R20 R5 K26 ["SetSendPayloadAnalytics"]
       98 CALL                             R19 1 1
       99 GETIMPORT                        R20 K5 [require]
      101 GETTABLEKS                       R21 R5 K27 ["SetSkipCounter"]
      103 CALL                             R20 1 1
      104 GETIMPORT                        R21 K5 [require]
      106 GETTABLEKS                       R22 R5 K28 ["SetSkipLimit"]
      108 CALL                             R21 1 1
      109 GETIMPORT                        R22 K5 [require]
      111 GETTABLEKS                       R23 R0 K11 ["Src"]
      113 GETTABLEKS                       R23 R23 K29 ["Types"]
      115 CALL                             R22 1 1
      116 GETTABLEKS                       R23 R2 K30 ["createReducer"]
      118 DUPTABLE                         R24 K49 [{"ActiveLayersFilter", "Actor", "Adornments", "DebugDataConnection", "DebugDataEvent", "DebugPoseEvent", "ExpandedSections", "HistoryDuration", "HistoryField", "HistoryOffset", "HistoryFrame", "LayerFilters", "LayerSelectionEvent", "PropertyOverridesEvent", "SelectedLayer", "SendPayloadAnalytics", "SkipCounter", "SkipLimit"}]
      119 LOADB                            R25 0
      120 SETTABLEKS                       R25 R24 K31 ["ActiveLayersFilter"]
      122 LOADNIL                          R25
      123 SETTABLEKS                       R25 R24 K32 ["Actor"]
      125 NEWTABLE                         R25 0 0
      127 SETTABLEKS                       R25 R24 K33 ["Adornments"]
      129 LOADNIL                          R25
      130 SETTABLEKS                       R25 R24 K34 ["DebugDataConnection"]
      132 LOADNIL                          R25
      133 SETTABLEKS                       R25 R24 K35 ["DebugDataEvent"]
      135 LOADNIL                          R25
      136 SETTABLEKS                       R25 R24 K36 ["DebugPoseEvent"]
      138 DUPTABLE                         R25 K55 [{"layerDetails", "linkData", "props", "state", "watches"}]
      139 LOADB                            R26 1
      140 SETTABLEKS                       R26 R25 K50 ["layerDetails"]
      142 LOADB                            R26 1
      143 SETTABLEKS                       R26 R25 K51 ["linkData"]
      145 LOADB                            R26 1
      146 SETTABLEKS                       R26 R25 K52 ["props"]
      148 LOADB                            R26 1
      149 SETTABLEKS                       R26 R25 K53 ["state"]
      151 LOADB                            R26 1
      152 SETTABLEKS                       R26 R25 K54 ["watches"]
      154 SETTABLEKS                       R25 R24 K37 ["ExpandedSections"]
      156 LOADN                            R25 88
      157 SETTABLEKS                       R25 R24 K38 ["HistoryDuration"]
      159 NEWTABLE                         R25 0 0
      161 SETTABLEKS                       R25 R24 K39 ["HistoryField"]
      163 LOADNIL                          R25
      164 SETTABLEKS                       R25 R24 K40 ["HistoryOffset"]
      166 LOADNIL                          R25
      167 SETTABLEKS                       R25 R24 K41 ["HistoryFrame"]
      169 NEWTABLE                         R25 0 0
      171 SETTABLEKS                       R25 R24 K42 ["LayerFilters"]
      173 LOADNIL                          R25
      174 SETTABLEKS                       R25 R24 K43 ["LayerSelectionEvent"]
      176 LOADNIL                          R25
      177 SETTABLEKS                       R25 R24 K44 ["PropertyOverridesEvent"]
      179 LOADNIL                          R25
      180 SETTABLEKS                       R25 R24 K45 ["SelectedLayer"]
      182 LOADB                            R25 0
      183 SETTABLEKS                       R25 R24 K46 ["SendPayloadAnalytics"]
      185 LOADN                            R25 0
      186 SETTABLEKS                       R25 R24 K47 ["SkipCounter"]
      188 LOADN                            R25 0
      189 SETTABLEKS                       R25 R24 K48 ["SkipLimit"]
      191 NEWTABLE                         R25 16 0
      193 GETTABLEKS                       R26 R6 K56 ["name"]
      195 DUPCLOSURE                       R27 K57 [PROTO_0]
      196 CAPTURE                          VAL R3
      197 SETTABLE                         R27 R25 R26
      198 GETTABLEKS                       R26 R7 K56 ["name"]
      200 DUPCLOSURE                       R27 K58 [PROTO_1]
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R4
      203 SETTABLE                         R27 R25 R26
      204 GETTABLEKS                       R26 R8 K56 ["name"]
      206 DUPCLOSURE                       R27 K59 [PROTO_2]
      207 CAPTURE                          VAL R3
      208 SETTABLE                         R27 R25 R26
      209 GETTABLEKS                       R26 R9 K56 ["name"]
      211 DUPCLOSURE                       R27 K60 [PROTO_3]
      212 CAPTURE                          VAL R3
      213 SETTABLE                         R27 R25 R26
      214 GETTABLEKS                       R26 R10 K56 ["name"]
      216 DUPCLOSURE                       R27 K61 [PROTO_4]
      217 CAPTURE                          VAL R3
      218 SETTABLE                         R27 R25 R26
      219 GETTABLEKS                       R26 R11 K56 ["name"]
      221 DUPCLOSURE                       R27 K62 [PROTO_5]
      222 CAPTURE                          VAL R3
      223 SETTABLE                         R27 R25 R26
      224 GETTABLEKS                       R26 R12 K56 ["name"]
      226 DUPCLOSURE                       R27 K63 [PROTO_6]
      227 CAPTURE                          VAL R3
      228 SETTABLE                         R27 R25 R26
      229 GETTABLEKS                       R26 R13 K56 ["name"]
      231 DUPCLOSURE                       R27 K64 [PROTO_7]
      232 CAPTURE                          VAL R3
      233 SETTABLE                         R27 R25 R26
      234 GETTABLEKS                       R26 R14 K56 ["name"]
      236 DUPCLOSURE                       R27 K65 [PROTO_8]
      237 CAPTURE                          VAL R3
      238 SETTABLE                         R27 R25 R26
      239 GETTABLEKS                       R26 R15 K56 ["name"]
      241 DUPCLOSURE                       R27 K66 [PROTO_9]
      242 CAPTURE                          VAL R3
      243 SETTABLE                         R27 R25 R26
      244 GETTABLEKS                       R26 R16 K56 ["name"]
      246 DUPCLOSURE                       R27 K67 [PROTO_10]
      247 CAPTURE                          VAL R3
      248 SETTABLE                         R27 R25 R26
      249 GETTABLEKS                       R26 R17 K56 ["name"]
      251 DUPCLOSURE                       R27 K68 [PROTO_11]
      252 CAPTURE                          VAL R3
      253 SETTABLE                         R27 R25 R26
      254 GETTABLEKS                       R26 R18 K56 ["name"]
      256 DUPCLOSURE                       R27 K69 [PROTO_12]
      257 CAPTURE                          VAL R3
      258 CAPTURE                          VAL R4
      259 SETTABLE                         R27 R25 R26
      260 GETTABLEKS                       R26 R19 K56 ["name"]
      262 DUPCLOSURE                       R27 K70 [PROTO_13]
      263 CAPTURE                          VAL R3
      264 SETTABLE                         R27 R25 R26
      265 GETTABLEKS                       R26 R20 K56 ["name"]
      267 DUPCLOSURE                       R27 K71 [PROTO_14]
      268 CAPTURE                          VAL R3
      269 SETTABLE                         R27 R25 R26
      270 GETTABLEKS                       R26 R21 K56 ["name"]
      272 DUPCLOSURE                       R27 K72 [PROTO_15]
      273 CAPTURE                          VAL R3
      274 SETTABLE                         R27 R25 R26
      275 CALL                             R23 2 1
      276 RETURN                           R23 1
