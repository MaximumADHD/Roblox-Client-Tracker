PROTO_0:
  GETUPVAL R0 0
  LOADB R2 0
  LOADB R3 0
  GETIMPORT R4 K3 [Enum.StudioCloseMode.None]
  NAMECALL R0 R0 K4 ["ShowSaveOrPublishPlaceToRoblox"]
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["plugin"]
  LOADK R3 K1 ["placeid"]
  NAMECALL R1 R1 K2 ["GetItem"]
  CALL R1 2 1
  JUMPIFNOTEQKN R1 K3 [0] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETIMPORT R3 K5 [game]
  LOADK R5 K6 ["StudioPublishService"]
  NAMECALL R3 R3 K7 ["GetService"]
  CALL R3 2 1
  DUPTABLE R4 K11 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "contextType"}]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K8 ["activityHistoryClient"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K9 ["showSaveOrPublishPlaceToRobloxFn"]
  LOADK R5 K12 ["real context"]
  SETTABLEKS R5 R4 K10 ["contextType"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K13 ["createElement"]
  GETUPVAL R6 2
  MOVE R7 R4
  DUPTABLE R8 K16 [{"EnableTeamCreate", "ActivityHistoryMain"}]
  NOT R9 R2
  JUMPIFNOT R9 [+7]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K13 ["createElement"]
  GETUPVAL R10 3
  NEWTABLE R11 0 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["EnableTeamCreate"]
  MOVE R9 R2
  JUMPIFNOT R9 [+10]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K13 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K17 [{"plugin"}]
  GETTABLEKS R12 R0 K0 ["plugin"]
  SETTABLEKS R12 R11 K0 ["plugin"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["ActivityHistoryMain"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Clients"]
  GETTABLEKS R3 R4 K9 ["ActivityHistoryClient"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Clients"]
  GETTABLEKS R4 R5 K10 ["MockActivityHistoryClient"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K7 ["Src"]
  GETTABLEKS R6 R7 K11 ["Contexts"]
  GETTABLEKS R5 R6 K12 ["ActivityHistoryProvider"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K7 ["Src"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["ActivityHistoryMain"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K7 ["Src"]
  GETTABLEKS R8 R9 K13 ["Components"]
  GETTABLEKS R7 R8 K15 ["EnableTeamCreate"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K7 ["Src"]
  GETTABLEKS R9 R10 K13 ["Components"]
  GETTABLEKS R8 R9 K16 ["StylingExamples"]
  CALL R7 1 1
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R8 1
