PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"manuallyHiddenLayeredClothingItems"}]
        7 GETTABLEKS                       R5 R1 K2 ["manuallyHiddenLayeredClothingItems"]
        9 SETTABLEKS                       R5 R4 K2 ["manuallyHiddenLayeredClothingItems"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"editingCage"}]
        7 GETTABLEKS                       R5 R1 K2 ["editingCage"]
        9 SETTABLEKS                       R5 R4 K2 ["editingCage"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"cagesTransparency"}]
        7 GETTABLEKS                       R5 R1 K2 ["cagesTransparency"]
        9 SETTABLEKS                       R5 R4 K2 ["cagesTransparency"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"accessoryTypeInfo"}]
        7 GETTABLEKS                       R5 R1 K2 ["accessoryTypeInfo"]
        9 SETTABLEKS                       R5 R4 K2 ["accessoryTypeInfo"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"attachmentPoint"}]
        7 GETTABLEKS                       R5 R1 K2 ["attachmentPoint"]
        9 SETTABLEKS                       R5 R4 K2 ["attachmentPoint"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"size"}]
        7 GETTABLEKS                       R5 R1 K2 ["size"]
        9 SETTABLEKS                       R5 R4 K2 ["size"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"meshScale"}]
        7 GETTABLEKS                       R5 R1 K2 ["meshScale"]
        9 SETTABLEKS                       R5 R4 K2 ["meshScale"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"inBounds"}]
        7 GETTABLEKS                       R5 R1 K2 ["inBounds"]
        9 SETTABLEKS                       R5 R4 K2 ["inBounds"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R1 K8 ["createReducer"]
       25 DUPTABLE                         R4 K19 [{"editingItem", "layeredClothingItemsInList", "manuallyHiddenLayeredClothingItems", "editingCage", "cagesTransparency", "acessoryTypeInfo", "size", "meshScale", "inBounds", "attachmentPoint"}]
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K9 ["editingItem"]
       29 NEWTABLE                         R5 0 0
       31 SETTABLEKS                       R5 R4 K10 ["layeredClothingItemsInList"]
       33 NEWTABLE                         R5 0 0
       35 SETTABLEKS                       R5 R4 K11 ["manuallyHiddenLayeredClothingItems"]
       37 LOADNIL                          R5
       38 SETTABLEKS                       R5 R4 K12 ["editingCage"]
       40 NEWTABLE                         R5 0 0
       42 SETTABLEKS                       R5 R4 K13 ["cagesTransparency"]
       44 LOADNIL                          R5
       45 SETTABLEKS                       R5 R4 K14 ["acessoryTypeInfo"]
       47 LOADK                            R5 K20 [{1, 1, 1}]
       48 SETTABLEKS                       R5 R4 K15 ["size"]
       50 LOADK                            R5 K20 [{1, 1, 1}]
       51 SETTABLEKS                       R5 R4 K16 ["meshScale"]
       53 LOADB                            R5 0
       54 SETTABLEKS                       R5 R4 K17 ["inBounds"]
       56 DUPTABLE                         R5 K23 [{"ItemCFrame", "AttachmentCFrame"}]
       57 GETIMPORT                        R6 K26 [CFrame.new]
       59 CALL                             R6 0 1
       60 SETTABLEKS                       R6 R5 K21 ["ItemCFrame"]
       62 GETIMPORT                        R6 K26 [CFrame.new]
       64 CALL                             R6 0 1
       65 SETTABLEKS                       R6 R5 K22 ["AttachmentCFrame"]
       67 SETTABLEKS                       R5 R4 K18 ["attachmentPoint"]
       69 DUPTABLE                         R5 K35 [{"SetManuallyHiddenLayeredClothingItems", "SetEditingCage", "SetCagesTransparency", "SetAccessoryTypeInfo", "SetAttachmentPoint", "SetItemSize", "SetMeshScale", "SetInBounds"}]
       70 DUPCLOSURE                       R6 K36 [PROTO_0]
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R6 R5 K27 ["SetManuallyHiddenLayeredClothingItems"]
       74 DUPCLOSURE                       R6 K37 [PROTO_1]
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R6 R5 K28 ["SetEditingCage"]
       78 DUPCLOSURE                       R6 K38 [PROTO_2]
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R6 R5 K29 ["SetCagesTransparency"]
       82 DUPCLOSURE                       R6 K39 [PROTO_3]
       83 CAPTURE                          VAL R2
       84 SETTABLEKS                       R6 R5 K30 ["SetAccessoryTypeInfo"]
       86 DUPCLOSURE                       R6 K40 [PROTO_4]
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R6 R5 K31 ["SetAttachmentPoint"]
       90 DUPCLOSURE                       R6 K41 [PROTO_5]
       91 CAPTURE                          VAL R2
       92 SETTABLEKS                       R6 R5 K32 ["SetItemSize"]
       94 DUPCLOSURE                       R6 K42 [PROTO_6]
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R6 R5 K33 ["SetMeshScale"]
       98 DUPCLOSURE                       R6 K43 [PROTO_7]
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R6 R5 K34 ["SetInBounds"]
      102 CALL                             R3 2 -1
      103 RETURN                           R3 -1
