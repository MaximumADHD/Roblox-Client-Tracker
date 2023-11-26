PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 1
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R4 R2 K8 ["Themes"]
  GETTABLEKS R3 R4 K9 ["StudioTheme"]
  GETTABLEKS R4 R2 K10 ["StyleKey"]
  DUPTABLE R5 K15 [{"backgroundColor", "icons", "labels", "dialogUILibrary"}]
  GETTABLEKS R6 R4 K16 ["MainBackground"]
  SETTABLEKS R6 R5 K11 ["backgroundColor"]
  DUPTABLE R6 K18 [{"DraftState"}]
  DUPTABLE R7 K22 [{"Committed", "Outdated", "Deleted"}]
  LOADK R8 K23 ["rbxasset://textures/StudioSharedUI/statusSuccess.png"]
  SETTABLEKS R8 R7 K19 ["Committed"]
  LOADK R8 K24 ["rbxasset://textures/DraftsWidget/newSource.png"]
  SETTABLEKS R8 R7 K20 ["Outdated"]
  LOADK R8 K25 ["rbxasset://textures/DraftsWidget/deletedSource.png"]
  SETTABLEKS R8 R7 K21 ["Deleted"]
  SETTABLEKS R7 R6 K17 ["DraftState"]
  SETTABLEKS R6 R5 K12 ["icons"]
  DUPTABLE R6 K28 [{"MainFont", "MainText"}]
  GETIMPORT R7 K32 [Enum.Font.SourceSans]
  SETTABLEKS R7 R6 K26 ["MainFont"]
  GETTABLEKS R7 R4 K33 ["TextPrimary"]
  SETTABLEKS R7 R6 K27 ["MainText"]
  SETTABLEKS R6 R5 K13 ["labels"]
  DUPTABLE R6 K36 [{"HeaderFont", "HeaderTextColor"}]
  GETIMPORT R7 K32 [Enum.Font.SourceSans]
  SETTABLEKS R7 R6 K34 ["HeaderFont"]
  GETTABLEKS R7 R4 K33 ["TextPrimary"]
  SETTABLEKS R7 R6 K35 ["HeaderTextColor"]
  SETTABLEKS R6 R5 K14 ["dialogUILibrary"]
  DUPCLOSURE R6 K37 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R5
  RETURN R6 1
