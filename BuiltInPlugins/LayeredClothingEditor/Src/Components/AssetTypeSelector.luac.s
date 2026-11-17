PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R3 R3 K1 ["values"]
        5 GETTABLEKS                       R4 R0 K2 ["Attachments"]
        7 CALL                             R3 1 1
        8 LENGTH                           R2 R3
        9 LOADN                            R3 1
       10 JUMPIFLT                         R3 R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AccessoryTypeInfo"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R2 K2 ["AssetType"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["Accessory"]
       11 GETTABLE                         R4 R5 R3
       12 JUMPIFNOT                        R4 ; [+4]
       13 LOADK                            R4 K3 ["Accessory"]
       14 SETTABLEKS                       R4 R0 K4 ["initialRadioButtonListKey"]
       16 RETURN                           R0 0
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K5 ["Clothing"]
       20 GETTABLE                         R4 R5 R3
       21 JUMPIFNOT                        R4 ; [+3]
       22 LOADK                            R4 K5 ["Clothing"]
       23 SETTABLEKS                       R4 R0 K4 ["initialRadioButtonListKey"]
       25 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Localization"]
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K2 ["Dictionary"]
        7 GETTABLEKS                       R7 R7 K3 ["values"]
        9 GETTABLEKS                       R8 R2 K4 ["Attachments"]
       11 CALL                             R7 1 1
       12 LENGTH                           R6 R7
       13 LOADN                            R7 1
       14 JUMPIFLT                         R7 R6 ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 JUMPIFNOT                        R5 ; [+13]
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R4
       21 LOADK                            R7 K5 ["AssetType"]
       22 GETTABLEKS                       R8 R2 K4 ["Attachments"]
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R0 K6 ["attachmentListItems"]
       27 NEWTABLE                         R5 1 0
       29 SETTABLE                         R2 R5 R1
       30 SETTABLEKS                       R5 R0 K7 ["initialMultiAttachmentAsset"]
       32 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AccessoryTypeInfo"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R2 K2 ["AssetType"]
        8 GETTABLEKS                       R4 R1 K3 ["Localization"]
       10 LOADK                            R6 K2 ["AssetType"]
       11 MOVE                             R7 R3
       12 NAMECALL                         R4 R4 K4 ["getText"]
       14 CALL                             R4 3 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K5 ["Accessory"]
       18 GETTABLE                         R5 R6 R3
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K6 ["Clothing"]
       22 GETTABLE                         R6 R7 R3
       23 JUMPIFNOT                        R5 ; [+17]
       24 MOVE                             R9 R3
       25 MOVE                             R10 R5
       26 NAMECALL                         R7 R0 K7 ["setInitialSelectionInfo"]
       28 CALL                             R7 3 0
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K8 ["List"]
       32 GETTABLEKS                       R7 R7 K9 ["find"]
       34 GETTABLEKS                       R8 R0 K10 ["accessoryItemList"]
       36 MOVE                             R9 R4
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R0 K11 ["initialSelectedAccessoryIndex"]
       40 JUMP                             ; [+17]
       41 JUMPIFNOT                        R6 ; [+16]
       42 MOVE                             R9 R3
       43 MOVE                             R10 R6
       44 NAMECALL                         R7 R0 K7 ["setInitialSelectionInfo"]
       46 CALL                             R7 3 0
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K8 ["List"]
       50 GETTABLEKS                       R7 R7 K9 ["find"]
       52 GETTABLEKS                       R8 R0 K12 ["clothingItemList"]
       54 MOVE                             R9 R4
       55 CALL                             R7 2 1
       56 SETTABLEKS                       R7 R0 K13 ["initialSelectedClothingIndex"]
       58 GETTABLEKS                       R7 R0 K14 ["attachmentListItems"]
       60 JUMPIFNOT                        R7 ; [+19]
       61 GETTABLEKS                       R7 R1 K3 ["Localization"]
       63 LOADK                            R9 K2 ["AssetType"]
       64 GETTABLEKS                       R10 R2 K15 ["AssetSubType"]
       66 NAMECALL                         R7 R7 K4 ["getText"]
       68 CALL                             R7 3 1
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K8 ["List"]
       72 GETTABLEKS                       R8 R8 K9 ["find"]
       74 GETTABLEKS                       R9 R0 K14 ["attachmentListItems"]
       76 MOVE                             R10 R7
       77 CALL                             R8 2 1
       78 SETTABLEKS                       R8 R0 K16 ["initialSelectedAttachmentIndex"]
       80 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 NEWTABLE                         R2 4 0
        4 GETTABLEKS                       R3 R1 K1 ["radioButtonListKey"]
        6 GETTABLEKS                       R4 R1 K2 ["selectedAccessoryIndex"]
        8 GETTABLEKS                       R5 R1 K3 ["selectedClothingIndex"]
       10 JUMPIFNOTEQKS                    R3 K4 ["Accessory"] ; [+12]
       12 GETTABLEKS                       R6 R0 K5 ["accessoryItemList"]
       14 SETTABLEKS                       R6 R2 K6 ["Items"]
       16 GETTABLEKS                       R6 R0 K7 ["onClickAccessoryType"]
       18 SETTABLEKS                       R6 R2 K8 ["OnItemActivated"]
       20 SETTABLEKS                       R4 R2 K9 ["SelectedIndex"]
       22 RETURN                           R2 1
       23 JUMPIFNOTEQKS                    R3 K10 ["Clothing"] ; [+11]
       25 GETTABLEKS                       R6 R0 K11 ["clothingItemList"]
       27 SETTABLEKS                       R6 R2 K6 ["Items"]
       29 GETTABLEKS                       R6 R0 K12 ["onClickClothingType"]
       31 SETTABLEKS                       R6 R2 K8 ["OnItemActivated"]
       33 SETTABLEKS                       R5 R2 K9 ["SelectedIndex"]
       35 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onClickAttachment"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 GETUPVAL                         R5 2
        6 CALL                             R2 3 0
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R4 K2 [{"selectedAttachmentIndex"}]
        9 SETTABLEKS                       R1 R4 K1 ["selectedAttachmentIndex"]
       11 NAMECALL                         R2 R2 K3 ["setState"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R1 K1 ["multiAttachmentAsset"]
        4 GETTABLEKS                       R3 R1 K2 ["selectedAttachmentIndex"]
        6 NEWTABLE                         R4 4 0
        8 JUMPIFNOT                        R2 ; [+16]
        9 GETIMPORT                        R5 K4 [next]
       11 MOVE                             R6 R2
       12 CALL                             R5 1 2
       13 GETTABLEKS                       R7 R0 K5 ["attachmentListItems"]
       15 SETTABLEKS                       R7 R4 K6 ["SubListItems"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R6
       21 SETTABLEKS                       R7 R4 K7 ["OnSubListItemActivated"]
       23 SETTABLEKS                       R3 R4 K8 ["SubListSelectedIndex"]
       25 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 LOADK                            R5 K2 ["AssetType"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K3 ["Accessory"]
       10 CALL                             R3 3 1
       11 SETTABLEKS                       R3 R0 K4 ["accessoryItemList"]
       13 GETUPVAL                         R3 0
       14 MOVE                             R4 R2
       15 LOADK                            R5 K2 ["AssetType"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K5 ["Clothing"]
       19 CALL                             R3 3 1
       20 SETTABLEKS                       R3 R0 K6 ["clothingItemList"]
       22 NAMECALL                         R3 R0 K7 ["initWithPreviousAssetTypeInfo"]
       24 CALL                             R3 1 0
       25 DUPTABLE                         R5 K12 [{"multiAttachmentAsset", "selectedAttachmentIndex", "selectedAccessoryIndex", "selectedClothingIndex"}]
       26 GETTABLEKS                       R6 R0 K13 ["initialMultiAttachmentAsset"]
       28 SETTABLEKS                       R6 R5 K8 ["multiAttachmentAsset"]
       30 GETTABLEKS                       R6 R0 K14 ["initialSelectedAttachmentIndex"]
       32 SETTABLEKS                       R6 R5 K9 ["selectedAttachmentIndex"]
       34 GETTABLEKS                       R6 R0 K15 ["initialSelectedAccessoryIndex"]
       36 SETTABLEKS                       R6 R5 K10 ["selectedAccessoryIndex"]
       38 GETTABLEKS                       R6 R0 K16 ["initialSelectedClothingIndex"]
       40 SETTABLEKS                       R6 R5 K11 ["selectedClothingIndex"]
       42 NAMECALL                         R3 R0 K17 ["setState"]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R2 R1 K1 ["selectedAccessoryIndex"]
        5 GETTABLEKS                       R3 R1 K2 ["selectedClothingIndex"]
        7 GETUPVAL                         R4 0
        8 DUPTABLE                         R6 K5 [{"radioButtonListKey", "multiAttachmentAsset"}]
        9 JUMPIF                           R0 ; [+4]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K6 ["None"]
       13 JUMP                             ; [+1]
       14 MOVE                             R7 R0
       15 SETTABLEKS                       R7 R6 K3 ["radioButtonListKey"]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K6 ["None"]
       20 SETTABLEKS                       R7 R6 K4 ["multiAttachmentAsset"]
       22 NAMECALL                         R4 R4 K7 ["setState"]
       24 CALL                             R4 2 0
       25 JUMPIFNOTEQKS                    R0 K8 ["Accessory"] ; [+12]
       27 JUMPIFNOT                        R2 ; [+10]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K9 ["onClickAccessoryType"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K10 ["accessoryItemList"]
       34 GETTABLE                         R5 R6 R2
       35 MOVE                             R6 R2
       36 CALL                             R4 2 0
       37 RETURN                           R0 0
       38 JUMPIFNOTEQKS                    R0 K11 ["Clothing"] ; [+12]
       40 JUMPIFNOT                        R3 ; [+10]
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K12 ["onClickClothingType"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K13 ["clothingItemList"]
       47 GETTABLE                         R5 R6 R3
       48 MOVE                             R6 R3
       49 CALL                             R4 2 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R4 2
       52 CALL                             R4 0 1
       53 JUMPIFNOT                        R4 ; [+15]
       54 GETUPVAL                         R4 3
       55 MOVE                             R5 R0
       56 MOVE                             R6 R2
       57 MOVE                             R7 R3
       58 CALL                             R4 3 1
       59 JUMPIFNOT                        R4 ; [+9]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K14 ["props"]
       63 GETTABLEKS                       R4 R4 K15 ["SetAccessoryTypeInfo"]
       65 GETUPVAL                         R5 4
       66 GETTABLEKS                       R5 R5 K6 ["None"]
       68 CALL                             R4 1 0
       69 RETURN                           R0 0

PROTO_9:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["props"]
        5 GETTABLEKS                       R3 R3 K1 ["EditingItemContext"]
        7 NAMECALL                         R3 R3 K2 ["getItem"]
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLE                         R4 R2 R1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["props"]
       16 GETTABLEKS                       R5 R5 K3 ["SetAccessoryTypeInfo"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K4 ["Dictionary"]
       21 GETTABLEKS                       R6 R6 K5 ["join"]
       23 MOVE                             R7 R4
       24 DUPTABLE                         R8 K8 [{"AssetType", "AssetSubType"}]
       25 SETTABLEKS                       R0 R8 K6 ["AssetType"]
       27 SETTABLEKS                       R1 R8 K7 ["AssetSubType"]
       29 CALL                             R6 2 -1
       30 CALL                             R5 -1 0
       31 GETUPVAL                         R5 2
       32 MOVE                             R7 R3
       33 GETTABLEKS                       R8 R3 K9 ["Parent"]
       35 GETTABLEKS                       R9 R4 K10 ["Name"]
       37 NAMECALL                         R5 R5 K11 ["getExistingAttachmentPoint"]
       39 CALL                             R5 4 1
       40 JUMPIFNOT                        R5 ; [+7]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K0 ["props"]
       44 GETTABLEKS                       R6 R6 K12 ["SetAttachmentPoint"]
       46 MOVE                             R7 R5
       47 CALL                             R6 1 0
       48 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R5 R3 K1 ["Localization"]
        8 LOADK                            R6 K2 ["AssetType"]
        9 MOVE                             R7 R1
       10 GETTABLEKS                       R8 R2 K3 ["Attachments"]
       12 CALL                             R4 4 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["setAttachment"]
       16 MOVE                             R6 R0
       17 MOVE                             R7 R4
       18 GETTABLEKS                       R8 R2 K3 ["Attachments"]
       20 CALL                             R5 3 0
       21 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["state"]
        6 GETTABLEKS                       R4 R2 K2 ["Localization"]
        8 JUMPIFNOT                        R0 ; [+1]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLE                         R5 R1 R0
       12 GETUPVAL                         R8 1
       13 GETTABLEKS                       R8 R8 K3 ["Dictionary"]
       15 GETTABLEKS                       R8 R8 K4 ["values"]
       17 GETTABLEKS                       R9 R5 K5 ["Attachments"]
       19 CALL                             R8 1 1
       20 LENGTH                           R7 R8
       21 LOADN                            R8 1
       22 JUMPIFLT                         R8 R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 JUMPIF                           R6 ; [+24]
       27 GETIMPORT                        R6 K7 [next]
       29 GETTABLEKS                       R7 R5 K5 ["Attachments"]
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K8 ["setAttachment"]
       35 MOVE                             R8 R0
       36 MOVE                             R9 R6
       37 GETTABLEKS                       R10 R5 K5 ["Attachments"]
       39 CALL                             R7 3 0
       40 GETUPVAL                         R7 0
       41 DUPTABLE                         R9 K10 [{"multiAttachmentAsset"}]
       42 GETUPVAL                         R10 2
       43 GETTABLEKS                       R10 R10 K11 ["None"]
       45 SETTABLEKS                       R10 R9 K9 ["multiAttachmentAsset"]
       47 NAMECALL                         R7 R7 K12 ["setState"]
       49 CALL                             R7 2 0
       50 RETURN                           R0 0
       51 GETTABLEKS                       R6 R3 K13 ["selectedAttachmentIndex"]
       53 GETUPVAL                         R7 0
       54 GETUPVAL                         R8 3
       55 MOVE                             R9 R4
       56 LOADK                            R10 K14 ["AssetType"]
       57 GETTABLEKS                       R11 R5 K5 ["Attachments"]
       59 CALL                             R8 3 1
       60 SETTABLEKS                       R8 R7 K15 ["attachmentListItems"]
       62 GETUPVAL                         R7 0
       63 DUPTABLE                         R9 K10 [{"multiAttachmentAsset"}]
       64 NEWTABLE                         R10 1 0
       66 SETTABLE                         R5 R10 R0
       67 SETTABLEKS                       R10 R9 K9 ["multiAttachmentAsset"]
       69 NAMECALL                         R7 R7 K12 ["setState"]
       71 CALL                             R7 2 0
       72 JUMPIFNOT                        R6 ; [+10]
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K16 ["onClickAttachment"]
       76 MOVE                             R8 R0
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K15 ["attachmentListItems"]
       80 GETTABLE                         R9 R10 R6
       81 MOVE                             R10 R5
       82 CALL                             R7 3 0
       83 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R2 K1 ["Localization"]
        6 LOADK                            R5 K2 ["AssetType"]
        7 MOVE                             R6 R0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["Accessory"]
       11 CALL                             R3 4 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["onClickAssetType"]
       15 MOVE                             R5 R3
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["Accessory"]
       19 CALL                             R4 2 0
       20 GETUPVAL                         R4 0
       21 DUPTABLE                         R6 K6 [{"selectedAccessoryIndex"}]
       22 SETTABLEKS                       R1 R6 K5 ["selectedAccessoryIndex"]
       24 NAMECALL                         R4 R4 K7 ["setState"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R4 R2 K1 ["Localization"]
        6 LOADK                            R5 K2 ["AssetType"]
        7 MOVE                             R6 R0
        8 GETUPVAL                         R7 2
        9 GETTABLEKS                       R7 R7 K3 ["Clothing"]
       11 CALL                             R3 4 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["onClickAssetType"]
       15 MOVE                             R5 R3
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["Clothing"]
       19 CALL                             R4 2 0
       20 GETUPVAL                         R4 0
       21 DUPTABLE                         R6 K6 [{"selectedClothingIndex"}]
       22 SETTABLEKS                       R1 R6 K5 ["selectedClothingIndex"]
       24 NAMECALL                         R4 R4 K7 ["setState"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["getInitialRadioButtonListKey"]
        2 CALL                             R1 1 0
        3 DUPTABLE                         R1 K7 [{["multiAttachmentAsset"] = , ["radioButtonListKey"], ["selectedAttachmentIndex"] = , ["selectedAccessoryIndex"] = , ["selectedClothingIndex"] = }]
        4 GETTABLEKS                       R2 R0 K8 ["initialRadioButtonListKey"]
        6 SETTABLEKS                       R2 R1 K3 ["radioButtonListKey"]
        8 SETTABLEKS                       R1 R0 K9 ["state"]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 SETTABLEKS                       R1 R0 K10 ["onRadioButtonClick"]
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 SETTABLEKS                       R1 R0 K11 ["setAttachment"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 SETTABLEKS                       R1 R0 K12 ["onClickAttachment"]
       29 NEWCLOSURE                       R1 P3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R1 R0 K13 ["onClickAssetType"]
       36 NEWCLOSURE                       R1 P4
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U7
       40 SETTABLEKS                       R1 R0 K14 ["onClickAccessoryType"]
       42 NEWCLOSURE                       R1 P5
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U7
       46 SETTABLEKS                       R1 R0 K15 ["onClickClothingType"]
       48 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETTABLEKS                       R5 R2 K4 ["radioButtonListKey"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["new"]
       13 CALL                             R6 0 1
       14 NAMECALL                         R7 R0 K6 ["getAssetTypeDropdownProps"]
       16 CALL                             R7 1 1
       17 NAMECALL                         R8 R0 K7 ["getAttachmentDropdownProps"]
       19 CALL                             R8 1 1
       20 DUPTABLE                         R9 K11 [{"LayoutOrder", "Buttons", "OnRadioButtonClick", "InitialSelectedKey"}]
       21 SETTABLEKS                       R3 R9 K2 ["LayoutOrder"]
       23 GETUPVAL                         R10 1
       24 MOVE                             R11 R4
       25 LOADK                            R12 K12 ["AssetType"]
       26 GETUPVAL                         R13 2
       27 CALL                             R10 3 1
       28 SETTABLEKS                       R10 R9 K8 ["Buttons"]
       30 GETTABLEKS                       R10 R0 K13 ["onRadioButtonClick"]
       32 SETTABLEKS                       R10 R9 K9 ["OnRadioButtonClick"]
       34 SETTABLEKS                       R5 R9 K10 ["InitialSelectedKey"]
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K14 ["Dictionary"]
       39 GETTABLEKS                       R10 R10 K15 ["join"]
       41 MOVE                             R11 R9
       42 MOVE                             R12 R7
       43 MOVE                             R13 R8
       44 CALL                             R10 3 1
       45 MOVE                             R9 R10
       46 GETUPVAL                         R10 4
       47 GETTABLEKS                       R10 R10 K16 ["createElement"]
       49 GETUPVAL                         R11 5
       50 MOVE                             R12 R9
       51 CALL                             R10 2 -1
       52 RETURN                           R10 -1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["selectItem"]
        2 DUPTABLE                         R3 K2 [{"AccessoryTypeInfo"}]
        3 GETTABLEKS                       R4 R2 K3 ["accessoryTypeInfo"]
        5 SETTABLEKS                       R4 R3 K1 ["AccessoryTypeInfo"]
        7 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R1 K2 [{"SetAccessoryTypeInfo", "SetAttachmentPoint"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetAccessoryTypeInfo"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetAttachmentPoint"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K11 ["withContext"]
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R8 R0 K5 ["Packages"]
       45 GETTABLEKS                       R8 R8 K12 ["AvatarToolsShared"]
       47 CALL                             R7 1 1
       48 GETTABLEKS                       R8 R7 K13 ["Components"]
       50 GETTABLEKS                       R9 R8 K14 ["FlowScreenLayout"]
       52 GETTABLEKS                       R10 R8 K15 ["RadioButtonListDropdown"]
       54 GETTABLEKS                       R11 R7 K16 ["Util"]
       56 GETTABLEKS                       R11 R11 K17 ["AccessoryAndBodyToolShared"]
       58 GETTABLEKS                       R12 R11 K18 ["AssetTypeAttachmentInfo"]
       60 GETTABLEKS                       R13 R11 K19 ["AccessoryUtil"]
       62 GETTABLEKS                       R14 R11 K20 ["Constants"]
       64 GETTABLEKS                       R15 R4 K21 ["UI"]
       66 GETTABLEKS                       R16 R15 K22 ["Pane"]
       68 GETTABLEKS                       R17 R15 K23 ["SelectInput"]
       70 GETTABLEKS                       R18 R15 K24 ["TextLabel"]
       72 GETIMPORT                        R19 K4 [require]
       74 GETTABLEKS                       R20 R0 K25 ["Src"]
       76 GETTABLEKS                       R20 R20 K26 ["Actions"]
       78 GETTABLEKS                       R20 R20 K27 ["SetAccessoryTypeInfo"]
       80 CALL                             R19 1 1
       81 GETIMPORT                        R20 K4 [require]
       83 GETTABLEKS                       R21 R0 K25 ["Src"]
       85 GETTABLEKS                       R21 R21 K26 ["Actions"]
       87 GETTABLEKS                       R21 R21 K28 ["SetAttachmentPoint"]
       89 CALL                             R20 1 1
       90 GETIMPORT                        R21 K4 [require]
       92 GETTABLEKS                       R22 R0 K25 ["Src"]
       94 GETTABLEKS                       R22 R22 K16 ["Util"]
       96 GETTABLEKS                       R22 R22 K29 ["findLocalizedStringKey"]
       98 CALL                             R21 1 1
       99 GETIMPORT                        R22 K4 [require]
      101 GETTABLEKS                       R23 R0 K25 ["Src"]
      103 GETTABLEKS                       R23 R23 K16 ["Util"]
      105 GETTABLEKS                       R23 R23 K30 ["isAssetTypeListUnselected"]
      107 CALL                             R22 1 1
      108 GETIMPORT                        R23 K4 [require]
      110 GETTABLEKS                       R24 R0 K25 ["Src"]
      112 GETTABLEKS                       R24 R24 K16 ["Util"]
      114 GETTABLEKS                       R24 R24 K31 ["makeDropdownList"]
      116 CALL                             R23 1 1
      117 GETIMPORT                        R24 K4 [require]
      119 GETTABLEKS                       R25 R0 K25 ["Src"]
      121 GETTABLEKS                       R25 R25 K16 ["Util"]
      123 GETTABLEKS                       R25 R25 K32 ["makeRadioButtonList"]
      125 CALL                             R24 1 1
      126 GETIMPORT                        R25 K4 [require]
      128 GETTABLEKS                       R26 R0 K25 ["Src"]
      130 GETTABLEKS                       R26 R26 K33 ["Flags"]
      132 GETTABLEKS                       R26 R26 K34 ["getFFlagLayeredClothingEditorBlockUncagedClothing"]
      134 CALL                             R25 1 1
      135 GETTABLEKS                       R26 R7 K35 ["Contexts"]
      137 GETTABLEKS                       R26 R26 K36 ["EditingItemContext"]
      139 GETTABLEKS                       R27 R4 K16 ["Util"]
      141 GETTABLEKS                       R28 R27 K37 ["Typecheck"]
      143 GETTABLEKS                       R29 R27 K38 ["LayoutOrderIterator"]
      145 GETTABLEKS                       R30 R27 K39 ["StyleModifier"]
      147 GETTABLEKS                       R31 R1 K40 ["PureComponent"]
      149 LOADK                            R33 K41 ["AssetTypeSelector"]
      150 NAMECALL                         R31 R31 K42 ["extend"]
      152 CALL                             R31 2 1
      153 GETTABLEKS                       R32 R28 K43 ["wrap"]
      155 MOVE                             R33 R31
      156 GETIMPORT                        R34 K1 [script]
      158 CALL                             R32 2 0
      159 DUPCLOSURE                       R32 K44 [PROTO_0]
      160 CAPTURE                          VAL R3
      161 DUPCLOSURE                       R33 K45 [PROTO_1]
      162 CAPTURE                          VAL R12
      163 SETTABLEKS                       R33 R31 K46 ["getInitialRadioButtonListKey"]
      165 DUPCLOSURE                       R33 K47 [PROTO_2]
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R23
      168 SETTABLEKS                       R33 R31 K48 ["setInitialSelectionInfo"]
      170 DUPCLOSURE                       R33 K49 [PROTO_3]
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R3
      173 SETTABLEKS                       R33 R31 K50 ["initWithPreviousAssetTypeInfo"]
      175 DUPCLOSURE                       R33 K51 [PROTO_4]
      176 SETTABLEKS                       R33 R31 K52 ["getAssetTypeDropdownProps"]
      178 DUPCLOSURE                       R33 K53 [PROTO_6]
      179 SETTABLEKS                       R33 R31 K54 ["getAttachmentDropdownProps"]
      181 DUPCLOSURE                       R33 K55 [PROTO_7]
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R12
      184 SETTABLEKS                       R33 R31 K56 ["didMount"]
      186 DUPCLOSURE                       R33 K57 [PROTO_14]
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R25
      189 CAPTURE                          VAL R22
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R13
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R23
      194 CAPTURE                          VAL R12
      195 SETTABLEKS                       R33 R31 K58 ["init"]
      197 DUPCLOSURE                       R33 K59 [PROTO_15]
      198 CAPTURE                          VAL R29
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R10
      204 SETTABLEKS                       R33 R31 K60 ["render"]
      206 MOVE                             R33 R6
      207 DUPTABLE                         R34 K62 [{"Localization", "EditingItemContext"}]
      208 GETTABLEKS                       R35 R5 K61 ["Localization"]
      210 SETTABLEKS                       R35 R34 K61 ["Localization"]
      212 SETTABLEKS                       R26 R34 K36 ["EditingItemContext"]
      214 CALL                             R33 1 1
      215 MOVE                             R34 R31
      216 CALL                             R33 1 1
      217 MOVE                             R31 R33
      218 DUPCLOSURE                       R33 K63 [PROTO_16]
      219 DUPCLOSURE                       R34 K64 [PROTO_19]
      220 CAPTURE                          VAL R19
      221 CAPTURE                          VAL R20
      222 GETTABLEKS                       R35 R2 K65 ["connect"]
      224 MOVE                             R36 R33
      225 MOVE                             R37 R34
      226 CALL                             R35 2 1
      227 MOVE                             R36 R31
      228 CALL                             R35 1 -1
      229 RETURN                           R35 -1
