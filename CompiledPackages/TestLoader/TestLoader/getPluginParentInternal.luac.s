MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  GETTABLEKS R0 R1 K2 ["Parent"]
  LOADK R3 K3 ["Plugin"]
  NAMECALL R1 R0 K4 ["FindFirstAncestorWhichIsA"]
  CALL R1 2 1
  LOADK R3 K5 ["Folder"]
  NAMECALL R1 R1 K6 ["FindFirstChildWhichIsA"]
  CALL R1 2 1
  JUMPIFNOTEQKNIL R1 [+10]
  LOADK R4 K3 ["Plugin"]
  NAMECALL R2 R0 K4 ["FindFirstAncestorWhichIsA"]
  CALL R2 2 1
  LOADK R4 K7 ["ModuleScript"]
  NAMECALL R2 R2 K6 ["FindFirstChildWhichIsA"]
  CALL R2 2 1
  MOVE R1 R2
  LOADK R4 K8 ["Packages"]
  NAMECALL R2 R1 K9 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOTEQKNIL R2 [+8]
  LOADK R4 K8 ["Packages"]
  LOADB R5 1
  NAMECALL R2 R1 K9 ["FindFirstChild"]
  CALL R2 3 1
  GETTABLEKS R1 R2 K2 ["Parent"]
  RETURN R1 1
