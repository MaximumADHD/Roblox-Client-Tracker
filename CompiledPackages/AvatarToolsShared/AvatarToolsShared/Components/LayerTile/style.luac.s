MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["UI"]
  GETTABLEKS R4 R1 K7 ["Style"]
  GETTABLEKS R3 R4 K8 ["StyleKey"]
  GETTABLEKS R4 R1 K9 ["Util"]
  GETTABLEKS R5 R4 K10 ["StyleModifier"]
  GETIMPORT R6 K13 [Rect.new]
  LOADN R7 3
  LOADN R8 3
  LOADN R9 13
  LOADN R10 13
  CALL R6 4 1
  DUPTABLE R7 K15 [{"paneStyle"}]
  NEWTABLE R8 8 0
  GETTABLEKS R9 R3 K16 ["MainBackground"]
  SETTABLEKS R9 R8 K17 ["Background"]
  LOADK R9 K18 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R9 R8 K19 ["Image"]
  SETTABLEKS R6 R8 K20 ["SliceCenter"]
  DUPTABLE R9 K21 [{"Background", "Image", "SliceCenter"}]
  GETTABLEKS R10 R3 K22 ["Border"]
  SETTABLEKS R10 R9 K17 ["Background"]
  LOADK R10 K23 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R10 R9 K19 ["Image"]
  SETTABLEKS R6 R9 K20 ["SliceCenter"]
  SETTABLEKS R9 R8 K22 ["Border"]
  GETTABLEKS R9 R5 K24 ["Selected"]
  DUPTABLE R10 K25 [{"Background", "Image", "SliceCenter", "Border"}]
  GETTABLEKS R11 R3 K26 ["DialogMainButton"]
  SETTABLEKS R11 R10 K17 ["Background"]
  LOADK R11 K18 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
  SETTABLEKS R11 R10 K19 ["Image"]
  SETTABLEKS R6 R10 K20 ["SliceCenter"]
  DUPTABLE R11 K21 [{"Background", "Image", "SliceCenter"}]
  GETTABLEKS R12 R3 K27 ["Light"]
  SETTABLEKS R12 R11 K17 ["Background"]
  LOADK R12 K23 ["rbxasset://textures/StudioToolbox/RoundedBorder.png"]
  SETTABLEKS R12 R11 K19 ["Image"]
  SETTABLEKS R6 R11 K20 ["SliceCenter"]
  SETTABLEKS R11 R10 K22 ["Border"]
  SETTABLE R10 R8 R9
  SETTABLEKS R8 R7 K14 ["paneStyle"]
  RETURN R7 1
