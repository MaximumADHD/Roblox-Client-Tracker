MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ReplicatedStorage"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  LOADK R3 K7 ["React"]
  NAMECALL R1 R1 K8 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+12]
  GETIMPORT R1 K10 [require]
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 -1
  RETURN R1 -1
  LOADK R3 K11 ["rbxts_include"]
  NAMECALL R1 R0 K8 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+22]
  GETIMPORT R1 K10 [require]
  GETTABLEKS R3 R0 K11 ["rbxts_include"]
  GETTABLEKS R2 R3 K12 ["RuntimeLib"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K13 ["import"]
  GETIMPORT R3 K5 [script]
  GETTABLEKS R5 R1 K14 ["getModule"]
  GETIMPORT R6 K5 [script]
  LOADK R7 K15 ["@rbxts"]
  LOADK R8 K16 ["roact"]
  CALL R5 3 1
  GETTABLEKS R4 R5 K17 ["src"]
  CALL R2 2 -1
  RETURN R2 -1
  GETIMPORT R1 K19 [error]
  LOADK R2 K20 ["React not found. It must be placed in the same folder/hierarchy as react-spring."]
  CALL R1 1 0
  RETURN R0 0
