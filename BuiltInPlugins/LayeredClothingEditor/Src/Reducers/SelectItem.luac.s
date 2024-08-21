PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"manuallyHiddenLayeredClothingItems"}]
  GETTABLEKS R5 R1 K2 ["manuallyHiddenLayeredClothingItems"]
  SETTABLEKS R5 R4 K2 ["manuallyHiddenLayeredClothingItems"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"editingCage"}]
  GETTABLEKS R5 R1 K2 ["editingCage"]
  SETTABLEKS R5 R4 K2 ["editingCage"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"cagesTransparency"}]
  GETTABLEKS R5 R1 K2 ["cagesTransparency"]
  SETTABLEKS R5 R4 K2 ["cagesTransparency"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"accessoryTypeInfo"}]
  GETTABLEKS R5 R1 K2 ["accessoryTypeInfo"]
  SETTABLEKS R5 R4 K2 ["accessoryTypeInfo"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"attachmentPoint"}]
  GETTABLEKS R5 R1 K2 ["attachmentPoint"]
  SETTABLEKS R5 R4 K2 ["attachmentPoint"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"size"}]
  GETTABLEKS R5 R1 K2 ["size"]
  SETTABLEKS R5 R4 K2 ["size"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"meshScale"}]
  GETTABLEKS R5 R1 K2 ["meshScale"]
  SETTABLEKS R5 R4 K2 ["meshScale"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"inBounds"}]
  GETTABLEKS R5 R1 K2 ["inBounds"]
  SETTABLEKS R5 R4 K2 ["inBounds"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["createReducer"]
  DUPTABLE R4 K19 [{"editingItem", "layeredClothingItemsInList", "manuallyHiddenLayeredClothingItems", "editingCage", "cagesTransparency", "acessoryTypeInfo", "size", "meshScale", "inBounds", "attachmentPoint"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K9 ["editingItem"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K10 ["layeredClothingItemsInList"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K11 ["manuallyHiddenLayeredClothingItems"]
  LOADNIL R5
  SETTABLEKS R5 R4 K12 ["editingCage"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K13 ["cagesTransparency"]
  LOADNIL R5
  SETTABLEKS R5 R4 K14 ["acessoryTypeInfo"]
  LOADK R5 K20 [{1, 1, 1}]
  SETTABLEKS R5 R4 K15 ["size"]
  LOADK R5 K20 [{1, 1, 1}]
  SETTABLEKS R5 R4 K16 ["meshScale"]
  LOADB R5 0
  SETTABLEKS R5 R4 K17 ["inBounds"]
  DUPTABLE R5 K23 [{"ItemCFrame", "AttachmentCFrame"}]
  GETIMPORT R6 K26 [CFrame.new]
  CALL R6 0 1
  SETTABLEKS R6 R5 K21 ["ItemCFrame"]
  GETIMPORT R6 K26 [CFrame.new]
  CALL R6 0 1
  SETTABLEKS R6 R5 K22 ["AttachmentCFrame"]
  SETTABLEKS R5 R4 K18 ["attachmentPoint"]
  DUPTABLE R5 K35 [{"SetManuallyHiddenLayeredClothingItems", "SetEditingCage", "SetCagesTransparency", "SetAccessoryTypeInfo", "SetAttachmentPoint", "SetItemSize", "SetMeshScale", "SetInBounds"}]
  DUPCLOSURE R6 K36 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K27 ["SetManuallyHiddenLayeredClothingItems"]
  DUPCLOSURE R6 K37 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K28 ["SetEditingCage"]
  DUPCLOSURE R6 K38 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K29 ["SetCagesTransparency"]
  DUPCLOSURE R6 K39 [PROTO_3]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K30 ["SetAccessoryTypeInfo"]
  DUPCLOSURE R6 K40 [PROTO_4]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K31 ["SetAttachmentPoint"]
  DUPCLOSURE R6 K41 [PROTO_5]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K32 ["SetItemSize"]
  DUPCLOSURE R6 K42 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K33 ["SetMeshScale"]
  DUPCLOSURE R6 K43 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R6 R5 K34 ["SetInBounds"]
  CALL R3 2 -1
  RETURN R3 -1
