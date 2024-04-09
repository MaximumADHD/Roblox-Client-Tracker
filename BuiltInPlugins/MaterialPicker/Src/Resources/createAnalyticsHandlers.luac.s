PROTO_0:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R2 0
  DUPTABLE R3 K3 [{"studioSid", "clientId", "placeId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K4 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K0 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K5 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["clientId"]
  GETIMPORT R5 K7 [game]
  GETTABLEKS R4 R5 K8 ["PlaceId"]
  SETTABLEKS R4 R3 K2 ["placeId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+14]
  GETIMPORT R3 K11 [print]
  LOADK R4 K12 ["%s SendEvent eventName=%s args=%s"]
  LOADK R6 K13 ["MaterialPicker"]
  MOVE R7 R0
  GETUPVAL R8 3
  MOVE R10 R2
  NAMECALL R8 R8 K14 ["JSONEncode"]
  CALL R8 2 -1
  NAMECALL R4 R4 K15 ["format"]
  CALL R4 -1 -1
  CALL R3 -1 0
  GETUPVAL R3 1
  LOADK R5 K16 ["studio"]
  LOADK R6 K13 ["MaterialPicker"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K17 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["MaterialPickerAnalyticsThrottleHundrethsPercent"]
  NAMECALL R2 R2 K3 ["GetFastInt"]
  CALL R2 2 1
  MOVE R3 R1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  MOVE R1 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K4 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+23]
  GETIMPORT R3 K6 [print]
  LOADK R4 K7 ["%s SendEvent eventName=%s args=%s throttlingPercent=%s"]
  LOADK R6 K8 ["MaterialPicker"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K10 [tostring]
  CALL R7 1 1
  GETUPVAL R8 1
  MOVE R10 R1
  NAMECALL R8 R8 K11 ["JSONEncode"]
  CALL R8 2 1
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R10 R2
  GETIMPORT R9 K10 [tostring]
  CALL R9 1 1
  NAMECALL R4 R4 K12 ["format"]
  CALL R4 5 -1
  CALL R3 -1 0
  GETUPVAL R3 2
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K13 ["ReportInfluxSeries"]
  CALL R3 4 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R6 0
  DUPTABLE R7 K4 [{"applicationMethod", "instancesSelectedCount", "materialIdentifier", "materialType"}]
  SETTABLEKS R1 R7 K0 ["applicationMethod"]
  SETTABLEKS R2 R7 K1 ["instancesSelectedCount"]
  SETTABLEKS R3 R7 K2 ["materialIdentifier"]
  SETTABLEKS R4 R7 K3 ["materialType"]
  MOVE R8 R5
  JUMPIF R8 [+2]
  NEWTABLE R8 0 0
  CALL R6 2 1
  SETGLOBAL R6 K5 ["args"]
  GETUPVAL R6 1
  LOADK R7 K6 ["MaterialPicker_MaterialApplied"]
  GETGLOBAL R8 K5 ["args"]
  CALL R6 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADK R1 K0 ["MaterialPicker_MaterialGeneratorOpened"]
  NEWTABLE R2 0 0
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  LOADK R1 K0 ["MaterialPicker_MaterialManagerOpened"]
  NEWTABLE R2 0 0
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADK R1 K0 ["MaterialPicker_PopupOpened"]
  NEWTABLE R2 0 0
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  LOADK R4 K0 ["MaterialPicker_FilterChipToggled"]
  DUPTABLE R5 K3 [{"filterChipName", "toggleType"}]
  SETTABLEKS R1 R5 K1 ["filterChipName"]
  SETTABLEKS R2 R5 K2 ["toggleType"]
  CALL R3 2 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  LOADK R3 K0 ["MaterialPicker_ViewTypeToggled"]
  DUPTABLE R4 K2 [{"viewType"}]
  SETTABLEKS R1 R4 K1 ["viewType"]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  DUPTABLE R3 K6 [{"MaterialApplied", "MaterialGeneratorOpened", "MaterialManagerOpened", "PopupOpened", "FilterChipToggled", "ViewTypeToggled"}]
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K0 ["MaterialApplied"]
  NEWCLOSURE R4 P3
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K1 ["MaterialGeneratorOpened"]
  NEWCLOSURE R4 P4
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K2 ["MaterialManagerOpened"]
  NEWCLOSURE R4 P5
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K3 ["PopupOpened"]
  NEWCLOSURE R4 P6
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K4 ["FilterChipToggled"]
  NEWCLOSURE R4 P7
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K5 ["ViewTypeToggled"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K11 ["Src"]
  GETTABLEKS R5 R6 K12 ["Util"]
  GETTABLEKS R4 R5 K13 ["DebugFlags"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K14 ["join"]
  GETIMPORT R5 K1 [game]
  LOADK R7 K15 ["MaterialPickerAnalyticsThrottleHundrethsPercent"]
  LOADN R8 0
  NAMECALL R5 R5 K16 ["DefineFastInt"]
  CALL R5 3 0
  DUPCLOSURE R5 K17 [PROTO_8]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R0
  RETURN R5 1
