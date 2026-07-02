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
       25 DUPTABLE                         R4 K22 [{["editingItem"] = , ["layeredClothingItemsInList"], ["manuallyHiddenLayeredClothingItems"], ["editingCage"] = , ["cagesTransparency"], ["acessoryTypeInfo"] = , ["size"] = {1, 1, 1}, ["meshScale"] = {1, 1, 1}, ["inBounds"] = False, ["attachmentPoint"]}]
       26 NEWTABLE                         R5 0 0
       28 SETTABLEKS                       R5 R4 K11 ["layeredClothingItemsInList"]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K12 ["manuallyHiddenLayeredClothingItems"]
       34 NEWTABLE                         R5 0 0
       36 SETTABLEKS                       R5 R4 K14 ["cagesTransparency"]
       38 DUPTABLE                         R5 K25 [{"ItemCFrame", "AttachmentCFrame"}]
       39 GETIMPORT                        R6 K28 [CFrame.new]
       41 CALL                             R6 0 1
       42 SETTABLEKS                       R6 R5 K23 ["ItemCFrame"]
       44 GETIMPORT                        R6 K28 [CFrame.new]
       46 CALL                             R6 0 1
       47 SETTABLEKS                       R6 R5 K24 ["AttachmentCFrame"]
       49 SETTABLEKS                       R5 R4 K21 ["attachmentPoint"]
       51 DUPTABLE                         R5 K37 [{"SetManuallyHiddenLayeredClothingItems", "SetEditingCage", "SetCagesTransparency", "SetAccessoryTypeInfo", "SetAttachmentPoint", "SetItemSize", "SetMeshScale", "SetInBounds"}]
       52 DUPCLOSURE                       R6 K38 [PROTO_0]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R6 R5 K29 ["SetManuallyHiddenLayeredClothingItems"]
       56 DUPCLOSURE                       R6 K39 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R6 R5 K30 ["SetEditingCage"]
       60 DUPCLOSURE                       R6 K40 [PROTO_2]
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R6 R5 K31 ["SetCagesTransparency"]
       64 DUPCLOSURE                       R6 K41 [PROTO_3]
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R6 R5 K32 ["SetAccessoryTypeInfo"]
       68 DUPCLOSURE                       R6 K42 [PROTO_4]
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R6 R5 K33 ["SetAttachmentPoint"]
       72 DUPCLOSURE                       R6 K43 [PROTO_5]
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R6 R5 K34 ["SetItemSize"]
       76 DUPCLOSURE                       R6 K44 [PROTO_6]
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R6 R5 K35 ["SetMeshScale"]
       80 DUPCLOSURE                       R6 K45 [PROTO_7]
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R6 R5 K36 ["SetInBounds"]
       84 CALL                             R3 2 -1
       85 RETURN                           R3 -1
