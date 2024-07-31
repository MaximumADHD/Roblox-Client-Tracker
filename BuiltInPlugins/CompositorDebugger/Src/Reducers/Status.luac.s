PROTO_0:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ActiveLayersFilter"}]
  GETTABLEKS R5 R1 K2 ["activeLayersFilter"]
  SETTABLEKS R5 R4 K0 ["ActiveLayersFilter"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Actor"}]
  GETTABLEKS R5 R1 K2 ["actor"]
  JUMPIF R5 [+1]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K0 ["Actor"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"Adornments"}]
  GETTABLEKS R5 R1 K2 ["adornments"]
  SETTABLEKS R5 R4 K0 ["Adornments"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K2 [{"DebugDataEvent", "DebugDataConnection"}]
  GETTABLEKS R5 R1 K3 ["event"]
  SETTABLEKS R5 R4 K0 ["DebugDataEvent"]
  GETTABLEKS R5 R1 K4 ["connection"]
  SETTABLEKS R5 R4 K1 ["DebugDataConnection"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"DebugPoseEvent"}]
  GETTABLEKS R5 R1 K2 ["event"]
  SETTABLEKS R5 R4 K0 ["DebugPoseEvent"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"ExpandedSections"}]
  GETTABLEKS R5 R1 K2 ["expandedSections"]
  SETTABLEKS R5 R4 K0 ["ExpandedSections"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"HistoryField"}]
  DUPTABLE R5 K5 [{"id", "section", "field"}]
  GETTABLEKS R6 R1 K2 ["id"]
  SETTABLEKS R6 R5 K2 ["id"]
  GETTABLEKS R6 R1 K3 ["section"]
  SETTABLEKS R6 R5 K3 ["section"]
  GETTABLEKS R6 R1 K4 ["field"]
  SETTABLEKS R6 R5 K4 ["field"]
  SETTABLEKS R5 R4 K0 ["HistoryField"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"HistoryFrame"}]
  GETTABLEKS R5 R1 K2 ["historyFrame"]
  SETTABLEKS R5 R4 K0 ["HistoryFrame"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_8:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"HistoryOffset"}]
  GETTABLEKS R5 R1 K2 ["historyOffset"]
  SETTABLEKS R5 R4 K0 ["HistoryOffset"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_9:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"LayerAdornmentEvent"}]
  GETTABLEKS R5 R1 K2 ["event"]
  SETTABLEKS R5 R4 K0 ["LayerAdornmentEvent"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_10:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"LayerFilters"}]
  GETUPVAL R5 0
  GETTABLEKS R6 R0 K0 ["LayerFilters"]
  GETTABLEKS R7 R1 K2 ["layerFilters"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K0 ["LayerFilters"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"PropertyOverrideEvent"}]
  GETTABLEKS R5 R1 K2 ["event"]
  SETTABLEKS R5 R4 K0 ["PropertyOverrideEvent"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_12:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SelectedLayer"}]
  GETTABLEKS R5 R1 K2 ["selectedLayer"]
  JUMPIF R5 [+1]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K0 ["SelectedLayer"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SendPayloadAnalytics"}]
  GETTABLEKS R5 R1 K2 ["enable"]
  SETTABLEKS R5 R4 K0 ["SendPayloadAnalytics"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SkipCounter"}]
  GETTABLEKS R5 R1 K2 ["skipCounter"]
  SETTABLEKS R5 R4 K0 ["SkipCounter"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_15:
  GETUPVAL R2 0
  MOVE R3 R0
  DUPTABLE R4 K1 [{"SkipLimit"}]
  GETTABLEKS R5 R1 K2 ["skipLimit"]
  SETTABLEKS R5 R4 K0 ["SkipLimit"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Dash"]
  GETTABLEKS R4 R3 K10 ["join"]
  GETTABLEKS R5 R3 K11 ["None"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Types"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K14 ["Actions"]
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R7 K15 ["SetActiveLayersFilter"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R7 K16 ["SetActor"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R7 K17 ["SetAdornments"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R12 R7 K18 ["SetDebugDataEvent"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R7 K19 ["SetDebugPoseEvent"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R7 K20 ["SetExpandedSections"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R7 K21 ["SetHistoryField"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R16 R7 K22 ["SetHistoryFrame"]
  CALL R15 1 1
  GETIMPORT R16 K5 [require]
  GETTABLEKS R17 R7 K23 ["SetHistoryOffset"]
  CALL R16 1 1
  GETIMPORT R17 K5 [require]
  GETTABLEKS R18 R7 K24 ["SetLayerAdornmentEvent"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R7 K25 ["SetLayerFilter"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R7 K26 ["SetPropertyOverrideEvent"]
  CALL R19 1 1
  GETIMPORT R20 K5 [require]
  GETTABLEKS R21 R7 K27 ["SetSelectedLayer"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R7 K28 ["SetSendPayloadAnalytics"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R7 K29 ["SetSkipCounter"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R24 R7 K30 ["SetSkipLimit"]
  CALL R23 1 1
  GETTABLEKS R25 R0 K12 ["Src"]
  GETTABLEKS R24 R25 K31 ["Util"]
  GETIMPORT R25 K5 [require]
  GETTABLEKS R26 R24 K32 ["Constants"]
  CALL R25 1 1
  GETTABLEKS R26 R1 K33 ["createReducer"]
  DUPTABLE R27 K52 [{"ActiveLayersFilter", "Actor", "Adornments", "DebugDataConnection", "DebugDataEvent", "DebugPoseEvent", "ExpandedSections", "HistoryDuration", "HistoryField", "HistoryOffset", "HistoryFrame", "LayerAdornmentEvent", "LayerFilters", "PropertyOverrideEvent", "SelectedLayer", "SendPayloadAnalytics", "SkipCounter", "SkipLimit"}]
  LOADB R28 0
  SETTABLEKS R28 R27 K34 ["ActiveLayersFilter"]
  LOADNIL R28
  SETTABLEKS R28 R27 K35 ["Actor"]
  NEWTABLE R28 0 0
  SETTABLEKS R28 R27 K36 ["Adornments"]
  LOADNIL R28
  SETTABLEKS R28 R27 K37 ["DebugDataConnection"]
  LOADNIL R28
  SETTABLEKS R28 R27 K38 ["DebugDataEvent"]
  LOADNIL R28
  SETTABLEKS R28 R27 K39 ["DebugPoseEvent"]
  DUPTABLE R28 K57 [{"layerDetails", "props", "state", "watches"}]
  LOADB R29 1
  SETTABLEKS R29 R28 K53 ["layerDetails"]
  LOADB R29 1
  SETTABLEKS R29 R28 K54 ["props"]
  LOADB R29 1
  SETTABLEKS R29 R28 K55 ["state"]
  LOADB R29 1
  SETTABLEKS R29 R28 K56 ["watches"]
  SETTABLEKS R28 R27 K40 ["ExpandedSections"]
  LOADN R28 88
  SETTABLEKS R28 R27 K41 ["HistoryDuration"]
  NEWTABLE R28 0 0
  SETTABLEKS R28 R27 K42 ["HistoryField"]
  LOADNIL R28
  SETTABLEKS R28 R27 K43 ["HistoryOffset"]
  LOADNIL R28
  SETTABLEKS R28 R27 K44 ["HistoryFrame"]
  LOADNIL R28
  SETTABLEKS R28 R27 K45 ["LayerAdornmentEvent"]
  DUPTABLE R28 K59 [{"CrossFade"}]
  LOADB R29 1
  SETTABLEKS R29 R28 K58 ["CrossFade"]
  SETTABLEKS R28 R27 K46 ["LayerFilters"]
  LOADNIL R28
  SETTABLEKS R28 R27 K47 ["PropertyOverrideEvent"]
  LOADNIL R28
  SETTABLEKS R28 R27 K48 ["SelectedLayer"]
  LOADB R28 0
  SETTABLEKS R28 R27 K49 ["SendPayloadAnalytics"]
  LOADN R28 0
  SETTABLEKS R28 R27 K50 ["SkipCounter"]
  LOADN R28 10
  SETTABLEKS R28 R27 K51 ["SkipLimit"]
  NEWTABLE R28 16 0
  GETTABLEKS R29 R8 K60 ["name"]
  DUPCLOSURE R30 K61 [PROTO_0]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R9 K60 ["name"]
  DUPCLOSURE R30 K62 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R10 K60 ["name"]
  DUPCLOSURE R30 K63 [PROTO_2]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R11 K60 ["name"]
  DUPCLOSURE R30 K64 [PROTO_3]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R12 K60 ["name"]
  DUPCLOSURE R30 K65 [PROTO_4]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R13 K60 ["name"]
  DUPCLOSURE R30 K66 [PROTO_5]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R14 K60 ["name"]
  DUPCLOSURE R30 K67 [PROTO_6]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R15 K60 ["name"]
  DUPCLOSURE R30 K68 [PROTO_7]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R16 K60 ["name"]
  DUPCLOSURE R30 K69 [PROTO_8]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R17 K60 ["name"]
  DUPCLOSURE R30 K70 [PROTO_9]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R18 K60 ["name"]
  DUPCLOSURE R30 K71 [PROTO_10]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R19 K60 ["name"]
  DUPCLOSURE R30 K72 [PROTO_11]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R20 K60 ["name"]
  DUPCLOSURE R30 K73 [PROTO_12]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R21 K60 ["name"]
  DUPCLOSURE R30 K74 [PROTO_13]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R22 K60 ["name"]
  DUPCLOSURE R30 K75 [PROTO_14]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R23 K60 ["name"]
  DUPCLOSURE R30 K76 [PROTO_15]
  CAPTURE VAL R4
  SETTABLE R30 R28 R29
  CALL R26 2 1
  RETURN R26 1
