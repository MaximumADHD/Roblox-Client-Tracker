PROTO_0:
  GETTABLEKS R2 R1 K0 ["UserInputType"]
  GETIMPORT R3 K3 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R2 R3 [+2]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["join"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"Category", "ItemId"}]
  LOADK R5 K8 ["Widgets"]
  SETTABLEKS R5 R4 K5 ["Category"]
  LOADK R5 K9 ["Mezzanine"]
  SETTABLEKS R5 R4 K6 ["ItemId"]
  CALL R2 2 1
  NEWTABLE R3 0 5
  DUPTABLE R4 K14 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
  LOADK R5 K15 ["ManageTabs"]
  SETTABLEKS R5 R4 K10 ["Id"]
  LOADK R5 K16 ["Option"]
  SETTABLEKS R5 R4 K11 ["Type"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["join"]
  GETUPVAL R6 1
  DUPTABLE R7 K7 [{"Category", "ItemId"}]
  LOADK R8 K17 ["Actions"]
  SETTABLEKS R8 R7 K5 ["Category"]
  LOADK R8 K15 ["ManageTabs"]
  SETTABLEKS R8 R7 K6 ["ItemId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["Action"]
  LOADB R5 1
  SETTABLEKS R5 R4 K13 ["ReserveCheckmarkSpace"]
  DUPTABLE R5 K18 [{"Type"}]
  LOADK R6 K19 ["Separator"]
  SETTABLEKS R6 R5 K11 ["Type"]
  DUPTABLE R6 K14 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
  LOADK R7 K20 ["DockUndockRibbon"]
  SETTABLEKS R7 R6 K10 ["Id"]
  LOADK R7 K16 ["Option"]
  SETTABLEKS R7 R6 K11 ["Type"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["join"]
  GETUPVAL R8 1
  DUPTABLE R9 K7 [{"Category", "ItemId"}]
  LOADK R10 K17 ["Actions"]
  SETTABLEKS R10 R9 K5 ["Category"]
  LOADK R10 K20 ["DockUndockRibbon"]
  SETTABLEKS R10 R9 K6 ["ItemId"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K12 ["Action"]
  LOADB R7 1
  SETTABLEKS R7 R6 K13 ["ReserveCheckmarkSpace"]
  DUPTABLE R7 K14 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
  LOADK R8 K21 ["CompactDensity"]
  SETTABLEKS R8 R7 K10 ["Id"]
  LOADK R8 K16 ["Option"]
  SETTABLEKS R8 R7 K11 ["Type"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["join"]
  GETUPVAL R9 1
  DUPTABLE R10 K7 [{"Category", "ItemId"}]
  LOADK R11 K17 ["Actions"]
  SETTABLEKS R11 R10 K5 ["Category"]
  LOADK R11 K21 ["CompactDensity"]
  SETTABLEKS R11 R10 K6 ["ItemId"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["Action"]
  LOADB R8 1
  SETTABLEKS R8 R7 K13 ["ReserveCheckmarkSpace"]
  DUPTABLE R8 K14 [{"Id", "Type", "Action", "ReserveCheckmarkSpace"}]
  LOADK R9 K22 ["ShowHideLabels"]
  SETTABLEKS R9 R8 K10 ["Id"]
  LOADK R9 K16 ["Option"]
  SETTABLEKS R9 R8 K11 ["Type"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["join"]
  GETUPVAL R10 1
  DUPTABLE R11 K7 [{"Category", "ItemId"}]
  LOADK R12 K17 ["Actions"]
  SETTABLEKS R12 R11 K5 ["Category"]
  LOADK R12 K22 ["ShowHideLabels"]
  SETTABLEKS R12 R11 K6 ["ItemId"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K12 ["Action"]
  LOADB R9 1
  SETTABLEKS R9 R8 K13 ["ReserveCheckmarkSpace"]
  SETLIST R3 R4 5 [1]
  DUPTABLE R4 K24 [{"Type", "Children"}]
  LOADK R5 K25 ["Column"]
  SETTABLEKS R5 R4 K11 ["Type"]
  SETTABLEKS R3 R4 K23 ["Children"]
  GETUPVAL R5 2
  NEWTABLE R6 0 1
  MOVE R7 R4
  SETLIST R6 R7 1 [1]
  MOVE R7 R2
  DUPTABLE R8 K29 [{"SubjectAnchorPoint", "TargetAnchorPoint", "Offset"}]
  GETIMPORT R9 K32 [Vector2.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K26 ["SubjectAnchorPoint"]
  GETIMPORT R9 K32 [Vector2.new]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 1
  SETTABLEKS R9 R8 K27 ["TargetAnchorPoint"]
  GETIMPORT R9 K32 [Vector2.new]
  GETTABLEKS R11 R1 K33 ["Position"]
  GETTABLEKS R10 R11 K34 ["X"]
  GETTABLEKS R12 R1 K33 ["Position"]
  GETTABLEKS R11 R12 K35 ["Y"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K28 ["Offset"]
  CALL R5 3 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETUPVAL R2 1
  CALL R1 1 1
  GETUPVAL R2 2
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE VAL R1
  NEWTABLE R4 0 2
  MOVE R5 R0
  MOVE R6 R1
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["useCallback"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["StudioFoundation"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["StudioUri"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Src"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["ControlsView"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K16 ["Hooks"]
  GETTABLEKS R8 R9 K17 ["useMenu"]
  CALL R7 1 1
  DUPCLOSURE R8 K18 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R8 1
