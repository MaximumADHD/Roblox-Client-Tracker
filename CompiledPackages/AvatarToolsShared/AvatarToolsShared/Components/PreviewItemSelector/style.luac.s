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
  GETTABLEKS R3 R1 K6 ["Style"]
  GETTABLEKS R2 R3 K7 ["StyleKey"]
  DUPTABLE R3 K15 [{"EquippedIcon", "UnequippedIcon", "DefaultColor", "EquippedColor", "UnequippedColor", "MinRadius", "MaxRadius"}]
  LOADK R4 K16 ["rbxasset://textures/LayeredClothingEditor/RemoveIcon.png"]
  SETTABLEKS R4 R3 K8 ["EquippedIcon"]
  LOADK R4 K17 ["rbxasset://textures/LayeredClothingEditor/AddIcon.png"]
  SETTABLEKS R4 R3 K9 ["UnequippedIcon"]
  GETIMPORT R4 K20 [Color3.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 1
  CALL R4 3 1
  SETTABLEKS R4 R3 K10 ["DefaultColor"]
  GETTABLEKS R4 R2 K21 ["ErrorMain"]
  SETTABLEKS R4 R3 K11 ["EquippedColor"]
  GETTABLEKS R4 R2 K22 ["DialogMainButton"]
  SETTABLEKS R4 R3 K12 ["UnequippedColor"]
  LOADN R4 31
  SETTABLEKS R4 R3 K13 ["MinRadius"]
  LOADN R4 62
  SETTABLEKS R4 R3 K14 ["MaxRadius"]
  RETURN R3 1
