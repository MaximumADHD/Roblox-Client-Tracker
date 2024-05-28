PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarImportDeprecationDevForumLink"]
  NAMECALL R0 R0 K3 ["GetFastString"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["AvatarImportDeprecationDevForumLink"]
  LOADK R3 K3 ["https://devforum.roblox.com/"]
  NAMECALL R0 R0 K4 ["DefineFastString"]
  CALL R0 3 0
  DUPCLOSURE R0 K5 [PROTO_0]
  RETURN R0 1
