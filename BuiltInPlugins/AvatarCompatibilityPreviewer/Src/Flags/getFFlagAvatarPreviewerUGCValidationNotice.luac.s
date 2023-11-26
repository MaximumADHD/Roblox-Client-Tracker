PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarPreviewerUGCValidationNotice"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+20]
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["DevFrameworkAlert"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+13]
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["MoveToolboxCodeToUGCValidation"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+6]
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["UGCValidationFixBundlesMetadataFetch"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarPreviewerUGCValidationNotice"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["DevFrameworkAlert"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K5 ["MoveToolboxCodeToUGCValidation"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["UGCValidationFixBundlesMetadataFetch"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPCLOSURE R0 K7 [PROTO_0]
  RETURN R0 1
