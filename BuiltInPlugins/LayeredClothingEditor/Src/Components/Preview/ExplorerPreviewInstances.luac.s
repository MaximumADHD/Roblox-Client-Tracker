PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["SelectedAssets"]
        4 GETTABLEKS                       R3 R1 K2 ["UserAddedAssets"]
        6 GETTABLEKS                       R4 R1 K3 ["AssetServiceWrapper"]
        8 NAMECALL                         R4 R4 K4 ["get"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R1 K5 ["EditingItemContext"]
       13 NAMECALL                         R6 R5 K6 ["getItem"]
       15 CALL                             R6 1 1
       16 GETTABLEKS                       R7 R1 K7 ["PreviewContext"]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K8 ["TABS_KEYS"]
       21 GETTABLEKS                       R8 R8 K9 ["Avatars"]
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K8 ["TABS_KEYS"]
       26 GETTABLEKS                       R9 R9 K10 ["Clothing"]
       28 GETTABLE                         R10 R2 R8
       29 JUMPIF                           R10 ; [+2]
       30 NEWTABLE                         R10 0 0
       32 GETTABLE                         R11 R2 R9
       33 JUMPIF                           R11 ; [+2]
       34 NEWTABLE                         R11 0 0
       36 GETUPVAL                         R12 1
       37 GETTABLEKS                       R12 R12 K11 ["createPreviewAvatars"]
       39 MOVE                             R13 R10
       40 GETTABLE                         R14 R3 R8
       41 LOADNIL                          R15
       42 MOVE                             R16 R4
       43 CALL                             R12 4 1
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R13 R13 K11 ["createPreviewAvatars"]
       47 MOVE                             R14 R10
       48 GETTABLE                         R15 R3 R8
       49 GETTABLEKS                       R16 R0 K12 ["folderRef"]
       51 GETTABLEKS                       R16 R16 K13 ["current"]
       53 MOVE                             R17 R4
       54 CALL                             R13 4 1
       55 GETTABLEKS                       R14 R6 K14 ["Archivable"]
       57 LOADB                            R15 1
       58 SETTABLEKS                       R15 R6 K14 ["Archivable"]
       60 NAMECALL                         R15 R6 K15 ["Clone"]
       62 CALL                             R15 1 1
       63 SETTABLEKS                       R14 R6 K14 ["Archivable"]
       65 MOVE                             R18 R12
       66 NAMECALL                         R16 R7 K16 ["setAvatars"]
       68 CALL                             R16 2 0
       69 MOVE                             R18 R13
       70 NAMECALL                         R16 R7 K17 ["setStorageAvatars"]
       72 CALL                             R16 2 0
       73 NAMECALL                         R16 R7 K18 ["getAllAvatars"]
       75 CALL                             R16 1 1
       76 GETUPVAL                         R17 1
       77 GETTABLEKS                       R17 R17 K19 ["addPreviewClothingFromInstances"]
       79 MOVE                             R18 R16
       80 NEWTABLE                         R19 0 1
       82 MOVE                             R20 R15
       83 SETLIST                          R19 R20 1 [1]
       85 LOADB                            R20 1
       86 CALL                             R17 3 0
       87 GETUPVAL                         R17 1
       88 GETTABLEKS                       R17 R17 K20 ["addPreviewClothingFromIds"]
       90 MOVE                             R18 R16
       91 MOVE                             R19 R11
       92 GETTABLE                         R20 R3 R9
       93 MOVE                             R21 R4
       94 CALL                             R17 4 0
       95 NAMECALL                         R17 R7 K21 ["getCurrentPreviewAvatarIndex"]
       97 CALL                             R17 1 1
       98 NAMECALL                         R18 R7 K22 ["getAvatars"]
      100 CALL                             R18 1 1
      101 LENGTH                           R19 R18
      102 JUMPIFNOTLT                      R19 R17 ; [+5]
      104 LOADN                            R21 1
      105 NAMECALL                         R19 R7 K23 ["setPreviewAvatarIndex"]
      107 CALL                             R19 2 0
      108 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R2 K1 ["AttachmentPoint"]
        4 GETTABLEKS                       R4 R2 K2 ["AccessoryTypeInfo"]
        6 GETTABLEKS                       R5 R2 K3 ["PreviewContext"]
        8 GETTABLEKS                       R6 R2 K4 ["EditingCage"]
       10 GETTABLEKS                       R7 R2 K5 ["ItemSize"]
       12 GETTABLEKS                       R8 R2 K6 ["MeshScale"]
       14 NAMECALL                         R9 R5 K7 ["getAllAvatars"]
       16 CALL                             R9 1 1
       17 GETIMPORT                        R10 K9 [ipairs]
       19 MOVE                             R11 R9
       20 CALL                             R10 1 3
       21 FORGPREP_INEXT                   R10
       22 GETUPVAL                         R15 0
       23 GETTABLEKS                       R15 R15 K10 ["EDIT_MODE"]
       25 GETTABLEKS                       R15 R15 K11 ["Mesh"]
       27 JUMPIFNOTEQ                      R6 R15 ; [+13]
       29 LOADN                            R17 1
       30 MOVE                             R18 R7
       31 GETTABLEKS                       R19 R3 K12 ["AttachmentCFrame"]
       33 GETTABLEKS                       R20 R3 K13 ["ItemCFrame"]
       35 GETTABLEKS                       R21 R4 K14 ["Name"]
       37 MOVE                             R22 R8
       38 NAMECALL                         R15 R14 K15 ["transformLayer"]
       40 CALL                             R15 7 0
       41 FORGLOOP                         R10 2 [inext] ; [-20]
       43 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isUpdateInProgress"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [wait]
        6 CALL                             R0 0 0
        7 JUMPBACK                         ; [-8]
        8 GETUPVAL                         R0 0
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K0 ["isUpdateInProgress"]
       12 GETUPVAL                         R0 1
       13 JUMPIFNOT                        R0 ; [+3]
       14 GETUPVAL                         R0 2
       15 GETUPVAL                         R1 0
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R1 0
       19 GETUPVAL                         R2 1
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 1
       22 JUMPIFNOT                        R0 ; [+8]
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K3 ["props"]
       26 GETTABLEKS                       R1 R0 K4 ["PreviewContext"]
       28 NAMECALL                         R2 R1 K5 ["updatePreviewModel"]
       30 CALL                             R2 1 0
       31 GETUPVAL                         R0 0
       32 LOADB                            R1 0
       33 SETTABLEKS                       R1 R0 K0 ["isUpdateInProgress"]
       35 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [coroutine.wrap]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R2 1 1
        8 CALL                             R2 0 0
        9 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+43]
        1 GETTABLEKS                       R4 R0 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["UpdatePreviewAssetsSelected"]
        5 GETTABLEKS                       R5 R1 K2 ["uniqueId"]
        7 NOT                              R6 R2
        8 CALL                             R4 2 0
        9 JUMPIF                           R2 ; [+34]
       10 GETTABLEKS                       R4 R0 K0 ["props"]
       12 GETTABLEKS                       R4 R4 K3 ["Analytics"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K4 ["FirstAction"]
       17 JUMPIF                           R5 ; [+16]
       18 GETUPVAL                         R5 0
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K5 ["ACTIONS"]
       22 GETTABLEKS                       R6 R6 K6 ["Preview"]
       24 SETTABLEKS                       R6 R5 K4 ["FirstAction"]
       26 LOADK                            R7 K4 ["FirstAction"]
       27 NAMECALL                         R5 R4 K7 ["getHandler"]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K4 ["FirstAction"]
       33 CALL                             R5 1 0
       34 LOADK                            R7 K8 ["PreviewAssetSelected"]
       35 NAMECALL                         R5 R4 K7 ["getHandler"]
       37 CALL                             R5 2 1
       38 LOADB                            R6 1
       39 MOVE                             R7 R3
       40 GETTABLEKS                       R8 R1 K2 ["uniqueId"]
       42 LOADB                            R9 0
       43 CALL                             R5 4 0
       44 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["UserAddedAssets"]
        4 GETIMPORT                        R3 K3 [pairs]
        6 MOVE                             R4 R2
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 GETIMPORT                        R8 K3 [pairs]
       11 MOVE                             R9 R7
       12 CALL                             R8 1 3
       13 FORGPREP_NEXT                    R8
       14 GETTABLEKS                       R13 R12 K4 ["instance"]
       16 JUMPIFNOTEQ                      R13 R1 ; [+2]
       18 RETURN                           R12 1
       19 FORGLOOP                         R8 2 ; [-6]
       21 FORGLOOP                         R3 2 ; [-13]
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isClothes"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["TABS_KEYS"]
        9 GETTABLEKS                       R1 R1 K2 ["Clothing"]
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["isAvatar"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 JUMPIFNOT                        R1 ; [+6]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K1 ["TABS_KEYS"]
       21 GETTABLEKS                       R1 R1 K4 ["Avatars"]
       23 RETURN                           R1 1
       24 LOADNIL                          R1
       25 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["EditingItemContext"]
        5 NAMECALL                         R2 R1 K2 ["getItem"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R2 K3 ["Parent"]
       10 JUMPIFEQ                         R0 R3 ; [+16]
       12 GETTABLEKS                       R5 R2 K3 ["Parent"]
       14 GETTABLEKS                       R5 R5 K4 ["Name"]
       16 NAMECALL                         R3 R0 K5 ["FindFirstAncestor"]
       18 CALL                             R3 2 1
       19 JUMPIF                           R3 ; [+7]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K6 ["PREVIEW_FOLDER_NAME"]
       23 NAMECALL                         R3 R0 K5 ["FindFirstAncestor"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+2]
       27 LOADB                            R3 0
       28 RETURN                           R3 1
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K7 ["isClothes"]
       32 MOVE                             R6 R0
       33 CALL                             R5 1 1
       34 JUMPIFNOT                        R5 ; [+6]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R4 R4 K8 ["TABS_KEYS"]
       38 GETTABLEKS                       R4 R4 K9 ["Clothing"]
       40 JUMP                             ; [+13]
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K10 ["isAvatar"]
       44 MOVE                             R6 R0
       45 CALL                             R5 1 1
       46 JUMPIFNOT                        R5 ; [+6]
       47 GETUPVAL                         R4 3
       48 GETTABLEKS                       R4 R4 K8 ["TABS_KEYS"]
       50 GETTABLEKS                       R4 R4 K11 ["Avatars"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R4
       54 JUMPIFNOTEQKNIL                  R4 ; [+2]
       56 LOADB                            R3 0 +1
       57 LOADB                            R3 1
       58 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["isClothes"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIFNOT                        R3 ; [+6]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K1 ["TABS_KEYS"]
       13 GETTABLEKS                       R2 R2 K2 ["Clothing"]
       15 JUMP                             ; [+13]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K3 ["isAvatar"]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 1
       21 JUMPIFNOT                        R3 ; [+6]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K1 ["TABS_KEYS"]
       25 GETTABLEKS                       R2 R2 K4 ["Avatars"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R2
       29 JUMPIFNOT                        R1 ; [+20]
       30 JUMPIFNOT                        R2 ; [+19]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K5 ["props"]
       34 GETTABLEKS                       R4 R4 K6 ["SelectedAssets"]
       36 GETTABLE                         R3 R4 R2
       37 JUMPIFNOT                        R3 ; [+12]
       38 GETUPVAL                         R4 4
       39 GETTABLEKS                       R4 R4 K7 ["List"]
       41 GETTABLEKS                       R4 R4 K8 ["find"]
       43 MOVE                             R5 R3
       44 GETTABLEKS                       R6 R1 K9 ["uniqueId"]
       46 CALL                             R4 2 1
       47 JUMPIFNOT                        R4 ; [+2]
       48 LOADB                            R4 1
       49 RETURN                           R4 1
       50 LOADB                            R3 0
       51 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 GETUPVAL                         R5 3
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isClothes"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 JUMPIFNOT                        R3 ; [+6]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["TABS_KEYS"]
        9 GETTABLEKS                       R2 R2 K2 ["Clothing"]
       11 JUMP                             ; [+13]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["isAvatar"]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K1 ["TABS_KEYS"]
       21 GETTABLEKS                       R2 R2 K4 ["Avatars"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 JUMPIF                           R2 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K5 ["props"]
       30 GETTABLEKS                       R3 R3 K6 ["SelectPreviewTab"]
       32 MOVE                             R4 R2
       33 CALL                             R3 1 0
       34 GETUPVAL                         R3 3
       35 GETUPVAL                         R4 2
       36 MOVE                             R5 R0
       37 CALL                             R3 2 1
       38 JUMPIF                           R3 ; [+14]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K5 ["props"]
       42 GETTABLEKS                       R4 R4 K7 ["AddUserAddedAssetForPreview"]
       44 MOVE                             R5 R2
       45 MOVE                             R6 R0
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R2
       51 CALL                             R4 3 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R4 4
       54 GETUPVAL                         R5 2
       55 MOVE                             R6 R3
       56 MOVE                             R7 R1
       57 MOVE                             R8 R2
       58 CALL                             R4 4 0
       59 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["folderRef"]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["isUpdateInProgress"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 SETTABLEKS                       R1 R0 K3 ["isSelectedInstanceValid"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U5
       22 SETTABLEKS                       R1 R0 K4 ["isEquipped"]
       24 NEWCLOSURE                       R1 P2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U6
       30 SETTABLEKS                       R1 R0 K5 ["onValidSelection"]
       32 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PREVIEW_FOLDER_NAME"]
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K2 ["previewFolder"]
        9 GETTABLEKS                       R1 R0 K2 ["previewFolder"]
       11 JUMPIF                           R1 ; [+23]
       12 GETIMPORT                        R1 K5 [Instance.new]
       14 LOADK                            R2 K6 ["Folder"]
       15 CALL                             R1 1 1
       16 SETTABLEKS                       R1 R0 K2 ["previewFolder"]
       18 GETTABLEKS                       R1 R0 K2 ["previewFolder"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K0 ["PREVIEW_FOLDER_NAME"]
       23 SETTABLEKS                       R2 R1 K7 ["Name"]
       25 GETTABLEKS                       R1 R0 K2 ["previewFolder"]
       27 LOADB                            R2 1
       28 SETTABLEKS                       R2 R1 K8 ["Archivable"]
       30 GETTABLEKS                       R1 R0 K2 ["previewFolder"]
       32 GETUPVAL                         R2 0
       33 SETTABLEKS                       R2 R1 K9 ["Parent"]
       35 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["WorkspacePreviewSelectionEnabled"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["StudioServiceWrapper"]
        8 NAMECALL                         R4 R4 K4 ["get"]
       10 CALL                             R4 1 1
       11 NAMECALL                         R5 R0 K5 ["getOrCreatePreviewFolder"]
       13 CALL                             R5 1 0
       14 NAMECALL                         R5 R4 K6 ["GetUserId"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K7 ["createElement"]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K8 ["Portal"]
       23 DUPTABLE                         R8 K10 [{"target"}]
       24 GETTABLEKS                       R9 R0 K11 ["previewFolder"]
       26 SETTABLEKS                       R9 R8 K9 ["target"]
       28 NEWTABLE                         R9 1 0
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K7 ["createElement"]
       33 LOADK                            R11 K12 ["Folder"]
       34 NEWTABLE                         R12 2 0
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R13 R13 K13 ["Ref"]
       39 GETTABLEKS                       R14 R0 K14 ["folderRef"]
       41 SETTABLE                         R14 R12 R13
       42 LOADB                            R13 1
       43 SETTABLEKS                       R13 R12 K15 ["Archivable"]
       45 DUPTABLE                         R13 K17 [{"PreviewSelector"}]
       46 GETUPVAL                         R14 0
       47 GETTABLEKS                       R14 R14 K7 ["createElement"]
       49 GETUPVAL                         R15 1
       50 DUPTABLE                         R16 K22 [{"IsSelectedInstanceValid", "IsEquipped", "OnValidSelection", "TooltipText"}]
       51 GETTABLEKS                       R17 R0 K23 ["isSelectedInstanceValid"]
       53 SETTABLEKS                       R17 R16 K18 ["IsSelectedInstanceValid"]
       55 GETTABLEKS                       R17 R0 K24 ["isEquipped"]
       57 SETTABLEKS                       R17 R16 K19 ["IsEquipped"]
       59 GETTABLEKS                       R17 R0 K25 ["onValidSelection"]
       61 SETTABLEKS                       R17 R16 K20 ["OnValidSelection"]
       63 LOADK                            R19 K26 ["Preview"]
       64 LOADK                            R20 K27 ["Tooltip"]
       65 NAMECALL                         R17 R3 K28 ["getText"]
       67 CALL                             R17 3 1
       68 SETTABLEKS                       R17 R16 K21 ["TooltipText"]
       70 CALL                             R14 2 1
       71 SETTABLEKS                       R14 R13 K16 ["PreviewSelector"]
       73 CALL                             R10 3 1
       74 SETTABLE                         R10 R9 R5
       75 CALL                             R6 3 -1
       76 RETURN                           R6 -1

PROTO_14:
        0 GETTABLEKS                       R3 R1 K0 ["SelectedAssets"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["TABS_KEYS"]
        5 GETTABLEKS                       R4 R4 K2 ["Avatars"]
        7 GETTABLE                         R2 R3 R4
        8 GETTABLEKS                       R4 R0 K3 ["props"]
       10 GETTABLEKS                       R4 R4 K0 ["SelectedAssets"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K1 ["TABS_KEYS"]
       15 GETTABLEKS                       R5 R5 K2 ["Avatars"]
       17 GETTABLE                         R3 R4 R5
       18 JUMPIFNOTEQ                      R2 R3 ; [+21]
       20 GETTABLEKS                       R3 R1 K0 ["SelectedAssets"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K1 ["TABS_KEYS"]
       25 GETTABLEKS                       R4 R4 K4 ["Clothing"]
       27 GETTABLE                         R2 R3 R4
       28 GETTABLEKS                       R4 R0 K3 ["props"]
       30 GETTABLEKS                       R4 R4 K0 ["SelectedAssets"]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K1 ["TABS_KEYS"]
       35 GETTABLEKS                       R5 R5 K4 ["Clothing"]
       37 GETTABLE                         R3 R4 R5
       38 JUMPIFEQ                         R2 R3 ; [+12]
       40 GETIMPORT                        R2 K7 [coroutine.wrap]
       42 LOADB                            R4 1
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U2
       48 CALL                             R2 1 1
       49 CALL                             R2 0 0
       50 RETURN                           R0 0
       51 GETIMPORT                        R2 K7 [coroutine.wrap]
       53 LOADB                            R4 0
       54 NEWCLOSURE                       R3 P0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U2
       59 CALL                             R2 1 1
       60 CALL                             R2 0 0
       61 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["previewStatus"]
        2 GETTABLEKS                       R3 R0 K1 ["selectItem"]
        4 DUPTABLE                         R4 K9 [{"AttachmentPoint", "AccessoryTypeInfo", "ItemSize", "MeshScale", "SelectedAssets", "EditingCage", "UserAddedAssets"}]
        5 GETTABLEKS                       R5 R3 K10 ["attachmentPoint"]
        7 SETTABLEKS                       R5 R4 K2 ["AttachmentPoint"]
        9 GETTABLEKS                       R5 R3 K11 ["accessoryTypeInfo"]
       11 SETTABLEKS                       R5 R4 K3 ["AccessoryTypeInfo"]
       13 GETTABLEKS                       R5 R3 K12 ["size"]
       15 SETTABLEKS                       R5 R4 K4 ["ItemSize"]
       17 GETTABLEKS                       R5 R3 K13 ["meshScale"]
       19 SETTABLEKS                       R5 R4 K5 ["MeshScale"]
       21 GETTABLEKS                       R5 R2 K14 ["selectedAssets"]
       23 SETTABLEKS                       R5 R4 K6 ["SelectedAssets"]
       25 GETTABLEKS                       R5 R3 K15 ["editingCage"]
       27 SETTABLEKS                       R5 R4 K7 ["EditingCage"]
       29 GETTABLEKS                       R5 R2 K16 ["userAddedAssets"]
       31 SETTABLEKS                       R5 R4 K8 ["UserAddedAssets"]
       33 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R1 K3 [{"UpdatePreviewAssetsSelected", "AddUserAddedAssetForPreview", "SelectPreviewTab"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["UpdatePreviewAssetsSelected"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["AddUserAddedAssetForPreview"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SelectPreviewTab"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReplicatedStorage"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R1 R1 K6 ["Parent"]
       17 GETIMPORT                        R2 K8 [require]
       19 GETTABLEKS                       R3 R1 K9 ["Packages"]
       21 GETTABLEKS                       R3 R3 K10 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [require]
       26 GETTABLEKS                       R4 R1 K9 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Cryo"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K8 [require]
       33 GETTABLEKS                       R5 R1 K9 ["Packages"]
       35 GETTABLEKS                       R5 R5 K12 ["RoactRodux"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K8 [require]
       40 GETTABLEKS                       R6 R1 K9 ["Packages"]
       42 GETTABLEKS                       R6 R6 K13 ["AvatarToolsShared"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R5 K14 ["Util"]
       47 GETTABLEKS                       R6 R6 K15 ["AccessoryAndBodyToolShared"]
       49 GETTABLEKS                       R7 R6 K16 ["PreviewUtil"]
       51 GETTABLEKS                       R8 R6 K17 ["AvatarUtil"]
       53 GETTABLEKS                       R9 R6 K18 ["PreviewConstants"]
       55 GETTABLEKS                       R10 R6 K19 ["ItemCharacteristics"]
       57 GETTABLEKS                       R11 R5 K20 ["Components"]
       59 GETTABLEKS                       R11 R11 K21 ["PreviewItemSelector"]
       61 GETTABLEKS                       R12 R5 K22 ["Contexts"]
       63 GETTABLEKS                       R12 R12 K23 ["EditingItemContext"]
       65 GETTABLEKS                       R13 R5 K22 ["Contexts"]
       67 GETTABLEKS                       R13 R13 K24 ["PreviewContext"]
       69 GETTABLEKS                       R14 R5 K22 ["Contexts"]
       71 GETTABLEKS                       R14 R14 K25 ["AssetServiceWrapper"]
       73 GETTABLEKS                       R15 R5 K22 ["Contexts"]
       75 GETTABLEKS                       R15 R15 K26 ["StudioServiceWrapper"]
       77 GETIMPORT                        R16 K8 [require]
       79 GETTABLEKS                       R17 R1 K27 ["Src"]
       81 GETTABLEKS                       R17 R17 K28 ["Actions"]
       83 GETTABLEKS                       R17 R17 K29 ["SelectPreviewTab"]
       85 CALL                             R16 1 1
       86 GETIMPORT                        R17 K8 [require]
       88 GETTABLEKS                       R18 R1 K27 ["Src"]
       90 GETTABLEKS                       R18 R18 K30 ["Thunks"]
       92 GETTABLEKS                       R18 R18 K31 ["UpdatePreviewAssetsSelected"]
       94 CALL                             R17 1 1
       95 GETIMPORT                        R18 K8 [require]
       97 GETTABLEKS                       R19 R1 K27 ["Src"]
       99 GETTABLEKS                       R19 R19 K30 ["Thunks"]
      101 GETTABLEKS                       R19 R19 K32 ["AddUserAddedAssetForPreview"]
      103 CALL                             R18 1 1
      104 GETIMPORT                        R19 K8 [require]
      106 GETTABLEKS                       R20 R1 K9 ["Packages"]
      108 GETTABLEKS                       R20 R20 K33 ["Framework"]
      110 CALL                             R19 1 1
      111 GETTABLEKS                       R20 R19 K34 ["ContextServices"]
      113 GETTABLEKS                       R21 R20 K35 ["withContext"]
      115 GETTABLEKS                       R22 R19 K14 ["Util"]
      117 GETTABLEKS                       R23 R22 K36 ["Typecheck"]
      119 GETIMPORT                        R24 K8 [require]
      121 GETTABLEKS                       R25 R1 K27 ["Src"]
      123 GETTABLEKS                       R25 R25 K14 ["Util"]
      125 GETTABLEKS                       R25 R25 K37 ["Constants"]
      127 CALL                             R24 1 1
      128 GETIMPORT                        R25 K8 [require]
      130 GETTABLEKS                       R26 R1 K27 ["Src"]
      132 GETTABLEKS                       R26 R26 K14 ["Util"]
      134 GETTABLEKS                       R26 R26 K38 ["AnalyticsGlobals"]
      136 CALL                             R25 1 1
      137 GETTABLEKS                       R26 R2 K39 ["PureComponent"]
      139 LOADK                            R28 K40 ["ExplorerPreviewInstances"]
      140 NAMECALL                         R26 R26 K41 ["extend"]
      142 CALL                             R26 2 1
      143 GETTABLEKS                       R27 R23 K42 ["wrap"]
      145 MOVE                             R28 R26
      146 GETIMPORT                        R29 K5 [script]
      148 CALL                             R27 2 0
      149 DUPCLOSURE                       R27 K43 [PROTO_0]
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R7
      152 DUPCLOSURE                       R28 K44 [PROTO_1]
      153 CAPTURE                          VAL R24
      154 DUPCLOSURE                       R29 K45 [PROTO_3]
      155 CAPTURE                          VAL R27
      156 CAPTURE                          VAL R28
      157 DUPCLOSURE                       R30 K46 [PROTO_4]
      158 CAPTURE                          VAL R25
      159 CAPTURE                          VAL R24
      160 DUPCLOSURE                       R31 K47 [PROTO_5]
      161 DUPCLOSURE                       R32 K48 [PROTO_6]
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R9
      164 DUPCLOSURE                       R33 K49 [PROTO_11]
      165 CAPTURE                          VAL R2
      166 CAPTURE                          VAL R24
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R31
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R30
      172 SETTABLEKS                       R33 R26 K50 ["init"]
      174 DUPCLOSURE                       R33 K51 [PROTO_12]
      175 CAPTURE                          VAL R0
      176 CAPTURE                          VAL R24
      177 SETTABLEKS                       R33 R26 K52 ["getOrCreatePreviewFolder"]
      179 DUPCLOSURE                       R33 K53 [PROTO_13]
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R11
      182 SETTABLEKS                       R33 R26 K54 ["render"]
      184 DUPCLOSURE                       R33 K55 [PROTO_14]
      185 CAPTURE                          VAL R9
      186 CAPTURE                          VAL R27
      187 CAPTURE                          VAL R28
      188 SETTABLEKS                       R33 R26 K56 ["didUpdate"]
      190 DUPCLOSURE                       R33 K57 [PROTO_15]
      191 DUPCLOSURE                       R34 K58 [PROTO_19]
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R16
      195 MOVE                             R35 R21
      196 DUPTABLE                         R36 K61 [{"Analytics", "EditingItemContext", "PreviewContext", "AssetServiceWrapper", "Localization", "StudioServiceWrapper"}]
      197 GETTABLEKS                       R37 R20 K59 ["Analytics"]
      199 SETTABLEKS                       R37 R36 K59 ["Analytics"]
      201 SETTABLEKS                       R12 R36 K23 ["EditingItemContext"]
      203 SETTABLEKS                       R13 R36 K24 ["PreviewContext"]
      205 SETTABLEKS                       R14 R36 K25 ["AssetServiceWrapper"]
      207 GETTABLEKS                       R37 R20 K60 ["Localization"]
      209 SETTABLEKS                       R37 R36 K60 ["Localization"]
      211 SETTABLEKS                       R15 R36 K26 ["StudioServiceWrapper"]
      213 CALL                             R35 1 1
      214 MOVE                             R36 R26
      215 CALL                             R35 1 1
      216 MOVE                             R26 R35
      217 GETTABLEKS                       R35 R4 K62 ["connect"]
      219 MOVE                             R36 R33
      220 MOVE                             R37 R34
      221 CALL                             R35 2 1
      222 MOVE                             R36 R26
      223 CALL                             R35 1 -1
      224 RETURN                           R35 -1
