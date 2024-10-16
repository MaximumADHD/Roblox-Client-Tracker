PROTO_0:
  GETIMPORT R1 K2 [Enum.AssetType]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["AssetType"]
  GETTABLE R0 R1 R2
  RETURN R0 1

PROTO_1:
  DUPTABLE R2 K2 [{"label", "attachmentName"}]
  SETTABLEKS R0 R2 K0 ["label"]
  GETTABLEKS R3 R1 K3 ["Name"]
  SETTABLEKS R3 R2 K1 ["attachmentName"]
  RETURN R2 1

PROTO_2:
  NEWTABLE R0 0 0
  NEWTABLE R1 0 0
  NEWTABLE R2 0 0
  GETUPVAL R3 0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R8 R7
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  GETIMPORT R13 K1 [pcall]
  NEWCLOSURE R14 P0
  CAPTURE VAL R12
  CALL R13 1 2
  JUMPIFNOT R13 [+37]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K2 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
  GETTABLE R15 R16 R14
  JUMPIFEQKNIL R15 [+32]
  GETTABLEKS R16 R12 K3 ["AssetType"]
  GETTABLE R15 R2 R16
  JUMPIF R15 [+27]
  GETTABLEKS R15 R12 K3 ["AssetType"]
  LOADB R16 1
  SETTABLE R16 R2 R15
  DUPTABLE R17 K6 [{"Id", "Label"}]
  GETTABLEKS R18 R14 K7 ["Name"]
  SETTABLEKS R18 R17 K4 ["Id"]
  GETTABLEKS R18 R12 K3 ["AssetType"]
  SETTABLEKS R18 R17 K5 ["Label"]
  FASTCALL2 TABLE_INSERT R0 R17 [+4]
  MOVE R16 R0
  GETIMPORT R15 K10 [table.insert]
  CALL R15 2 0
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K11 ["collectArray"]
  GETTABLEKS R16 R12 K12 ["Attachments"]
  DUPCLOSURE R17 K13 [PROTO_1]
  CALL R15 2 1
  SETTABLE R15 R1 R14
  FORGLOOP R8 2 [-44]
  FORGLOOP R3 2 [-50]
  RETURN R0 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AvatarToolsShared"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETTABLEKS R6 R1 K10 ["Util"]
  GETTABLEKS R5 R6 K12 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R4 R5 K13 ["AssetTypeAttachmentInfo"]
  DUPCLOSURE R5 K14 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R5 1
