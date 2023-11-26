PROTO_0:
  GETUPVAL R3 0
  MOVE R4 R1
  MOVE R5 R2
  CALL R3 2 1
  GETIMPORT R4 K2 [Instance.new]
  LOADK R5 K3 ["MaterialVariant"]
  CALL R4 1 1
  SETTABLEKS R3 R4 K4 ["Name"]
  LOADB R5 0
  SETTABLEKS R5 R4 K5 ["Archivable"]
  SETTABLEKS R0 R4 K6 ["ColorMap"]
  LOADK R7 K7 ["RBX_MaterialGenerator_Generated"]
  LOADB R8 1
  NAMECALL R5 R4 K8 ["SetAttribute"]
  CALL R5 3 0
  LOADK R7 K9 ["RBX_MaterialGenerator_HasBaseMaterial"]
  LOADB R8 1
  NAMECALL R5 R4 K8 ["SetAttribute"]
  CALL R5 3 0
  LOADK R7 K10 ["RBX_MaterialGenerator_IsPreview"]
  LOADB R8 0
  NAMECALL R5 R4 K8 ["SetAttribute"]
  CALL R5 3 0
  RETURN R4 1

PROTO_1:
  LOADK R4 K0 ["RBX_MaterialGenerator_HasBaseMaterial"]
  NAMECALL R2 R0 K1 ["GetAttribute"]
  CALL R2 2 1
  NOT R1 R2
  RETURN R1 1

PROTO_2:
  LOADK R3 K0 ["RBX_MaterialGenerator_Generated"]
  NAMECALL R1 R0 K1 ["GetAttribute"]
  CALL R1 2 1
  JUMPIF R1 [+10]
  GETIMPORT R2 K3 [warn]
  LOADK R4 K4 ["%* did not have generated set. This is a bug in the plugin, please report it."]
  MOVE R6 R0
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  CALL R2 1 0
  RETURN R0 0
  LOADK R4 K6 ["RBX_MaterialGenerator_HasBaseMaterial"]
  LOADNIL R5
  NAMECALL R2 R0 K7 ["SetAttribute"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  LOADK R4 K0 ["RBX_MaterialGenerator_IsPreview"]
  NAMECALL R2 R0 K1 ["GetAttribute"]
  CALL R2 2 1
  JUMPIFEQKB R2 TRUE [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_4:
  LOADK R4 K0 ["RBX_MaterialGenerator_Generated"]
  NAMECALL R2 R0 K1 ["GetAttribute"]
  CALL R2 2 1
  JUMPIF R2 [+10]
  GETIMPORT R3 K3 [warn]
  LOADK R5 K4 ["%* did not have generated set. This is a bug in the plugin, please report it."]
  MOVE R7 R0
  NAMECALL R5 R5 K5 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  RETURN R0 0
  LOADK R5 K6 ["RBX_MaterialGenerator_IsPreview"]
  MOVE R6 R1
  NAMECALL R3 R0 K7 ["SetAttribute"]
  CALL R3 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["MaterialGenerator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["getNewMaterialName"]
  CALL R1 1 1
  NEWTABLE R2 8 0
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K10 ["create"]
  DUPCLOSURE R3 K11 [PROTO_1]
  SETTABLEKS R3 R2 K12 ["hasBaseMaterial"]
  DUPCLOSURE R3 K13 [PROTO_2]
  SETTABLEKS R3 R2 K14 ["markHasBaseMaterial"]
  DUPCLOSURE R3 K15 [PROTO_3]
  SETTABLEKS R3 R2 K16 ["isPreview"]
  DUPCLOSURE R3 K17 [PROTO_4]
  SETTABLEKS R3 R2 K18 ["setIsPreview"]
  RETURN R2 1
