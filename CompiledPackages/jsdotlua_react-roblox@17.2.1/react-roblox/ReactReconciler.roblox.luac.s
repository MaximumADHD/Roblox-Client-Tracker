MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["react-reconciler"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  LOADK R4 K7 ["client"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 1
  LOADK R4 K8 ["ReactRobloxHostConfig"]
  NAMECALL R2 R2 K6 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  MOVE R2 R0
  MOVE R3 R1
  CALL R2 1 -1
  RETURN R2 -1
