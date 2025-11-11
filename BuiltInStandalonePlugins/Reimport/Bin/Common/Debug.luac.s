PROTO_0:
  LOADB R0 0
  RETURN R0 1

PROTO_1:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["save called"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["reimport called"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R0 K4 [{"configData", "presets", "doSaveConfig", "doReimport"}]
  DUPTABLE R1 K6 [{"filepath"}]
  LOADK R2 K7 [""]
  SETTABLEKS R2 R1 K5 ["filepath"]
  SETTABLEKS R1 R0 K0 ["configData"]
  NEWTABLE R1 0 3
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["StudioDefaultPreset"]
  LOADK R3 K9 ["Preset 1"]
  LOADK R4 K10 ["Preset 2"]
  SETLIST R1 R2 3 [1]
  SETTABLEKS R1 R0 K1 ["presets"]
  DUPCLOSURE R1 K11 [PROTO_1]
  SETTABLEKS R1 R0 K2 ["doSaveConfig"]
  DUPCLOSURE R1 K12 [PROTO_2]
  SETTABLEKS R1 R0 K3 ["doReimport"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fromProps"]
  LOADK R1 K1 ["Model"]
  GETUPVAL R2 1
  CALL R2 0 1
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R0 K1 [{"errors"}]
  NEWTABLE R1 0 10
  DUPTABLE R2 K4 [{"label", "message"}]
  LOADK R3 K5 ["Error 1"]
  SETTABLEKS R3 R2 K2 ["label"]
  LOADK R3 K6 ["Something went wrong"]
  SETTABLEKS R3 R2 K3 ["message"]
  DUPTABLE R3 K4 [{"label", "message"}]
  LOADK R4 K7 ["Error 2"]
  SETTABLEKS R4 R3 K2 ["label"]
  LOADK R4 K8 ["Another issue occurred"]
  SETTABLEKS R4 R3 K3 ["message"]
  DUPTABLE R4 K9 [{"message"}]
  LOADK R5 K10 ["This one has no Label"]
  SETTABLEKS R5 R4 K3 ["message"]
  DUPTABLE R5 K4 [{"label", "message"}]
  LOADK R6 K11 ["Error 3"]
  SETTABLEKS R6 R5 K2 ["label"]
  LOADK R6 K12 ["Yet another problem"]
  SETTABLEKS R6 R5 K3 ["message"]
  DUPTABLE R6 K4 [{"label", "message"}]
  LOADK R7 K13 ["Error 4"]
  SETTABLEKS R7 R6 K2 ["label"]
  LOADK R7 K14 ["This is a test error"]
  SETTABLEKS R7 R6 K3 ["message"]
  DUPTABLE R7 K4 [{"label", "message"}]
  LOADK R8 K15 ["Error 5"]
  SETTABLEKS R8 R7 K2 ["label"]
  LOADK R8 K16 ["Just for debugging purposes"]
  SETTABLEKS R8 R7 K3 ["message"]
  DUPTABLE R8 K4 [{"label", "message"}]
  LOADK R9 K17 ["Error 6"]
  SETTABLEKS R9 R8 K2 ["label"]
  LOADK R9 K18 ["More errors to test the dialog"]
  SETTABLEKS R9 R8 K3 ["message"]
  DUPTABLE R9 K4 [{"label", "message"}]
  LOADK R10 K19 ["Error 7"]
  SETTABLEKS R10 R9 K2 ["label"]
  LOADK R10 K20 ["Keep adding errors"]
  SETTABLEKS R10 R9 K3 ["message"]
  DUPTABLE R10 K4 [{"label", "message"}]
  LOADK R11 K21 ["Error 8"]
  SETTABLEKS R11 R10 K2 ["label"]
  LOADK R11 K22 ["Testing error handling"]
  SETTABLEKS R11 R10 K3 ["message"]
  DUPTABLE R11 K4 [{"label", "message"}]
  LOADK R12 K23 ["Error 9"]
  SETTABLEKS R12 R11 K2 ["label"]
  LOADK R12 K24 ["Still going strong"]
  SETTABLEKS R12 R11 K3 ["message"]
  SETLIST R1 R2 10 [1]
  SETTABLEKS R1 R0 K0 ["errors"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["fromProps"]
  GETUPVAL R1 1
  CALL R1 0 1
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["debugEnabled"]
  CALL R0 0 1
  JUMPIF R0 [+1]
  RETURN R0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ReimportPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Lib"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R6 R0 K8 ["Bin"]
  GETTABLEKS R5 R6 K9 ["Common"]
  GETTABLEKS R4 R5 K10 ["Dialogs"]
  GETTABLEKS R3 R4 K11 ["ShowConfigureDialog"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R7 R0 K8 ["Bin"]
  GETTABLEKS R6 R7 K9 ["Common"]
  GETTABLEKS R5 R6 K10 ["Dialogs"]
  GETTABLEKS R4 R5 K12 ["ShowErrorDialog"]
  CALL R3 1 1
  NEWTABLE R4 4 0
  DUPCLOSURE R5 K13 [PROTO_0]
  SETTABLEKS R5 R4 K14 ["debugEnabled"]
  DUPCLOSURE R5 K15 [PROTO_3]
  CAPTURE VAL R1
  DUPCLOSURE R6 K16 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R6 R4 K17 ["debugShowConfigureDialog"]
  DUPCLOSURE R6 K18 [PROTO_5]
  DUPCLOSURE R7 K19 [PROTO_6]
  CAPTURE VAL R3
  CAPTURE VAL R6
  SETTABLEKS R7 R4 K20 ["debugShowErrorDialog"]
  DUPCLOSURE R7 K21 [PROTO_7]
  CAPTURE VAL R4
  SETTABLEKS R7 R4 K22 ["showDebugUi"]
  RETURN R4 1
