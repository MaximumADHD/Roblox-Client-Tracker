PROTO_0:
  GETTABLEKS R1 R0 K0 ["Parent"]
  MOVE R3 R1
  JUMPIFNOT R3 [+4]
  LOADK R5 K1 ["Model"]
  NAMECALL R3 R1 K2 ["IsA"]
  CALL R3 2 1
  FASTCALL2K ASSERT R3 K3 [+4]
  LOADK R4 K3 ["Humanoid must be a child of a Model"]
  GETIMPORT R2 K5 [assert]
  CALL R2 2 0
  NAMECALL R2 R1 K6 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  LOADK R9 K7 ["Accessory"]
  NAMECALL R7 R6 K2 ["IsA"]
  CALL R7 2 1
  JUMPIFNOT R7 [+36]
  LOADK R9 K8 ["Handle"]
  NAMECALL R7 R6 K9 ["FindFirstChild"]
  CALL R7 2 1
  JUMPIFNOT R7 [+31]
  LOADK R10 K10 ["AvatarPartScaleType"]
  NAMECALL R8 R7 K9 ["FindFirstChild"]
  CALL R8 2 1
  JUMPIF R8 [+13]
  GETIMPORT R9 K13 [Instance.new]
  LOADK R10 K14 ["StringValue"]
  CALL R9 1 1
  LOADK R10 K10 ["AvatarPartScaleType"]
  SETTABLEKS R10 R9 K15 ["Name"]
  LOADK R10 K16 ["ProportionsSlender"]
  SETTABLEKS R10 R9 K17 ["Value"]
  SETTABLEKS R7 R9 K0 ["Parent"]
  JUMP [+13]
  LOADK R12 K14 ["StringValue"]
  NAMECALL R10 R8 K2 ["IsA"]
  CALL R10 2 1
  FASTCALL2K ASSERT R10 K18 [+4]
  LOADK R11 K18 ["Expected AvatarPartScaleType to be a StringValue"]
  GETIMPORT R9 K5 [assert]
  CALL R9 2 0
  LOADK R9 K16 ["ProportionsSlender"]
  SETTABLEKS R9 R8 K17 ["Value"]
  FORGLOOP R2 2 [-42]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
