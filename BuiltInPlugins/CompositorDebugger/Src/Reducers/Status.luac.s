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
      118 DUPTABLE                         R24 K53 [{["ActiveLayersFilter"] = False, ["Actor"] = , ["Adornments"], ["DebugDataConnection"] = , ["DebugDataEvent"] = , ["DebugPoseEvent"] = , ["ExpandedSections"], ["HistoryDuration"] = 600, ["HistoryField"], ["HistoryOffset"] = , ["HistoryFrame"] = , ["LayerFilters"], ["LayerSelectionEvent"] = , ["PropertyOverridesEvent"] = , ["SelectedLayer"] = , ["SendPayloadAnalytics"] = False, ["SkipCounter"] = 0, ["SkipLimit"] = 0}]
      119 NEWTABLE                         R25 0 0
      121 SETTABLEKS                       R25 R24 K35 ["Adornments"]
      123 DUPTABLE                         R25 K60 [{["layerDetails"] = True, ["linkData"] = True, ["props"] = True, ["state"] = True, ["watches"] = True}]
      124 SETTABLEKS                       R25 R24 K39 ["ExpandedSections"]
      126 NEWTABLE                         R25 0 0
      128 SETTABLEKS                       R25 R24 K42 ["HistoryField"]
      130 NEWTABLE                         R25 0 0
      132 SETTABLEKS                       R25 R24 K45 ["LayerFilters"]
      134 NEWTABLE                         R25 16 0
      136 GETTABLEKS                       R26 R6 K61 ["name"]
      138 DUPCLOSURE                       R27 K62 [PROTO_0]
      139 CAPTURE                          VAL R3
      140 SETTABLE                         R27 R25 R26
      141 GETTABLEKS                       R26 R7 K61 ["name"]
      143 DUPCLOSURE                       R27 K63 [PROTO_1]
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R4
      146 SETTABLE                         R27 R25 R26
      147 GETTABLEKS                       R26 R8 K61 ["name"]
      149 DUPCLOSURE                       R27 K64 [PROTO_2]
      150 CAPTURE                          VAL R3
      151 SETTABLE                         R27 R25 R26
      152 GETTABLEKS                       R26 R9 K61 ["name"]
      154 DUPCLOSURE                       R27 K65 [PROTO_3]
      155 CAPTURE                          VAL R3
      156 SETTABLE                         R27 R25 R26
      157 GETTABLEKS                       R26 R10 K61 ["name"]
      159 DUPCLOSURE                       R27 K66 [PROTO_4]
      160 CAPTURE                          VAL R3
      161 SETTABLE                         R27 R25 R26
      162 GETTABLEKS                       R26 R11 K61 ["name"]
      164 DUPCLOSURE                       R27 K67 [PROTO_5]
      165 CAPTURE                          VAL R3
      166 SETTABLE                         R27 R25 R26
      167 GETTABLEKS                       R26 R12 K61 ["name"]
      169 DUPCLOSURE                       R27 K68 [PROTO_6]
      170 CAPTURE                          VAL R3
      171 SETTABLE                         R27 R25 R26
      172 GETTABLEKS                       R26 R13 K61 ["name"]
      174 DUPCLOSURE                       R27 K69 [PROTO_7]
      175 CAPTURE                          VAL R3
      176 SETTABLE                         R27 R25 R26
      177 GETTABLEKS                       R26 R14 K61 ["name"]
      179 DUPCLOSURE                       R27 K70 [PROTO_8]
      180 CAPTURE                          VAL R3
      181 SETTABLE                         R27 R25 R26
      182 GETTABLEKS                       R26 R15 K61 ["name"]
      184 DUPCLOSURE                       R27 K71 [PROTO_9]
      185 CAPTURE                          VAL R3
      186 SETTABLE                         R27 R25 R26
      187 GETTABLEKS                       R26 R16 K61 ["name"]
      189 DUPCLOSURE                       R27 K72 [PROTO_10]
      190 CAPTURE                          VAL R3
      191 SETTABLE                         R27 R25 R26
      192 GETTABLEKS                       R26 R17 K61 ["name"]
      194 DUPCLOSURE                       R27 K73 [PROTO_11]
      195 CAPTURE                          VAL R3
      196 SETTABLE                         R27 R25 R26
      197 GETTABLEKS                       R26 R18 K61 ["name"]
      199 DUPCLOSURE                       R27 K74 [PROTO_12]
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R4
      202 SETTABLE                         R27 R25 R26
      203 GETTABLEKS                       R26 R19 K61 ["name"]
      205 DUPCLOSURE                       R27 K75 [PROTO_13]
      206 CAPTURE                          VAL R3
      207 SETTABLE                         R27 R25 R26
      208 GETTABLEKS                       R26 R20 K61 ["name"]
      210 DUPCLOSURE                       R27 K76 [PROTO_14]
      211 CAPTURE                          VAL R3
      212 SETTABLE                         R27 R25 R26
      213 GETTABLEKS                       R26 R21 K61 ["name"]
      215 DUPCLOSURE                       R27 K77 [PROTO_15]
      216 CAPTURE                          VAL R3
      217 SETTABLE                         R27 R25 R26
      218 CALL                             R23 2 1
      219 RETURN                           R23 1
