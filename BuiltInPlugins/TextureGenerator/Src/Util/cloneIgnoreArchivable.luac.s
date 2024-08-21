PROTO_0:
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["This function should only be called when FFlagTextureGeneratorFixNilIndexBug is enabled"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETIMPORT R1 K5 [Instance.fromExisting]
  MOVE R2 R0
  CALL R1 1 1
  NAMECALL R2 R0 K6 ["GetChildren"]
  CALL R2 1 3
  FORGPREP R2
  GETUPVAL R7 1
  MOVE R8 R6
  CALL R7 1 1
  SETTABLEKS R1 R7 K7 ["Parent"]
  FORGLOOP R2 2 [-6]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TextureGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Flags"]
  GETTABLEKS R2 R3 K8 ["getFFlagTextureGeneratorFixNilIndexBug"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R2 1
