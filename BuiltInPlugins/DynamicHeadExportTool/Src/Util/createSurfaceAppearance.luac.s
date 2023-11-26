PROTO_0:
  GETIMPORT R1 K2 [string.match]
  MOVE R2 R0
  LOADK R3 K3 ["^%d+$"]
  CALL R1 2 1
  JUMPIFNOT R1 [+6]
  GETIMPORT R1 K5 [string.format]
  LOADK R2 K6 ["rbxassetid://%s"]
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1
  RETURN R0 1

PROTO_1:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["PluginReducer"]
  GETTABLEKS R2 R1 K2 ["colorMap"]
  GETTABLEKS R3 R1 K3 ["metalnessMap"]
  GETTABLEKS R4 R1 K4 ["normalMap"]
  GETTABLEKS R5 R1 K5 ["roughnessMap"]
  JUMPIFNOTEQKS R2 K6 [""] [+9]
  JUMPIFNOTEQKS R3 K6 [""] [+7]
  JUMPIFNOTEQKS R4 K6 [""] [+5]
  JUMPIFNOTEQKS R5 K6 [""] [+3]
  LOADNIL R6
  RETURN R6 1
  GETIMPORT R6 K9 [Instance.new]
  LOADK R7 K10 ["SurfaceAppearance"]
  CALL R6 1 1
  GETIMPORT R8 K13 [string.match]
  MOVE R9 R2
  LOADK R10 K14 ["^%d+$"]
  CALL R8 2 1
  JUMPIFNOT R8 [+6]
  GETIMPORT R7 K16 [string.format]
  LOADK R8 K17 ["rbxassetid://%s"]
  MOVE R9 R2
  CALL R7 2 1
  JUMP [+1]
  MOVE R7 R2
  SETTABLEKS R7 R6 K18 ["ColorMap"]
  GETIMPORT R8 K13 [string.match]
  MOVE R9 R3
  LOADK R10 K14 ["^%d+$"]
  CALL R8 2 1
  JUMPIFNOT R8 [+6]
  GETIMPORT R7 K16 [string.format]
  LOADK R8 K17 ["rbxassetid://%s"]
  MOVE R9 R3
  CALL R7 2 1
  JUMP [+1]
  MOVE R7 R3
  SETTABLEKS R7 R6 K19 ["MetalnessMap"]
  GETIMPORT R8 K13 [string.match]
  MOVE R9 R4
  LOADK R10 K14 ["^%d+$"]
  CALL R8 2 1
  JUMPIFNOT R8 [+6]
  GETIMPORT R7 K16 [string.format]
  LOADK R8 K17 ["rbxassetid://%s"]
  MOVE R9 R4
  CALL R7 2 1
  JUMP [+1]
  MOVE R7 R4
  SETTABLEKS R7 R6 K20 ["NormalMap"]
  GETIMPORT R8 K13 [string.match]
  MOVE R9 R5
  LOADK R10 K14 ["^%d+$"]
  CALL R8 2 1
  JUMPIFNOT R8 [+6]
  GETIMPORT R7 K16 [string.format]
  LOADK R8 K17 ["rbxassetid://%s"]
  MOVE R9 R5
  CALL R7 2 1
  JUMP [+1]
  MOVE R7 R5
  SETTABLEKS R7 R6 K21 ["RoughnessMap"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_1]
  RETURN R1 1
