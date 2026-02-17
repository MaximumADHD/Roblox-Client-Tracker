PROTO_0:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["AnimationFromVideoCreatorStudioService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  MOVE R4 R0
  NAMECALL R2 R1 K4 ["CreateAnimationByUploadingVideo"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["CreateAnimationByUploadingVideo"]
  RETURN R0 1
