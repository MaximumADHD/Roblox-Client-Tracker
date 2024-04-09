PROTO_0:
  GETUPVAL R0 0
  LOADB R2 0
  LOADB R3 0
  GETIMPORT R4 K3 [Enum.StudioCloseMode.None]
  NAMECALL R0 R0 K4 ["ShowSaveOrPublishPlaceToRoblox"]
  CALL R0 4 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["OpenBrowserWindow"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
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
  GETUPVAL R4 0
  GETTABLEKS R5 R0 K0 ["plugin"]
  CALL R4 1 0
  GETIMPORT R4 K5 [game]
  LOADK R6 K8 ["GuiService"]
  NAMECALL R4 R4 K7 ["GetService"]
  CALL R4 2 1
  DUPTABLE R5 K15 [{"activityHistoryClient", "showSaveOrPublishPlaceToRobloxFn", "useCollaborators", "usePlaceAndUniverseId", "openBrowserLink", "contextType"}]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K9 ["activityHistoryClient"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K10 ["showSaveOrPublishPlaceToRobloxFn"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K11 ["useCollaborators"]
  GETUPVAL R6 0
  SETTABLEKS R6 R5 K12 ["usePlaceAndUniverseId"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K13 ["openBrowserLink"]
  LOADK R6 K16 ["real context"]
  SETTABLEKS R6 R5 K14 ["contextType"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K17 ["createElement"]
  GETUPVAL R7 4
  MOVE R8 R5
  DUPTABLE R9 K20 [{"EnableTeamCreate", "ActivityHistoryMain"}]
  NOT R10 R2
  JUMPIFNOT R10 [+7]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K17 ["createElement"]
  GETUPVAL R11 5
  NEWTABLE R12 0 0
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["EnableTeamCreate"]
  MOVE R10 R2
  JUMPIFNOT R10 [+10]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K17 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K21 [{"plugin"}]
  GETTABLEKS R13 R0 K0 ["plugin"]
  SETTABLEKS R13 R12 K0 ["plugin"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["ActivityHistoryMain"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K7 ["Src"]
  GETTABLEKS R10 R11 K17 ["Hooks"]
  GETTABLEKS R9 R10 K18 ["useCollaborators"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K7 ["Src"]
  GETTABLEKS R11 R12 K17 ["Hooks"]
  GETTABLEKS R10 R11 K19 ["usePlaceAndUniverseId"]
  CALL R9 1 1
  DUPCLOSURE R10 K20 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R5
  RETURN R10 1
