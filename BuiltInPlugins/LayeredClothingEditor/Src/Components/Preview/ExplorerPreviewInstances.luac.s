PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["hasAttachedEditingItem"]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["EditingItemContext"]
        7 NAMECALL                         R2 R2 K3 ["getItem"]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["isMounted"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["hasAttachedEditingItem"]
        8 GETTABLEKS                       R2 R0 K2 ["props"]
       10 GETTABLEKS                       R2 R2 K3 ["EditingItemContext"]
       12 NAMECALL                         R2 R2 K4 ["getItem"]
       14 CALL                             R2 1 -1
       15 CALL                             R1 -1 1
       16 JUMPIF                           R1 ; [+5]
       17 LOADB                            R1 1
       18 SETTABLEKS                       R1 R0 K5 ["hasPendingSelectionRefresh"]
       20 LOADB                            R1 0
       21 RETURN                           R1 1
       22 LOADB                            R1 1
       23 RETURN                           R1 1

PROTO_2:
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
       19 CALL                             R8 0 1
       20 JUMPIFNOT                        R8 ; [+26]
       21 GETTABLEKS                       R9 R0 K8 ["isMounted"]
       23 JUMPIF                           R9 ; [+2]
       24 LOADB                            R8 0
       25 JUMP                             ; [+18]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K9 ["hasAttachedEditingItem"]
       29 GETTABLEKS                       R10 R0 K0 ["props"]
       31 GETTABLEKS                       R10 R10 K5 ["EditingItemContext"]
       33 NAMECALL                         R10 R10 K6 ["getItem"]
       35 CALL                             R10 1 -1
       36 CALL                             R9 -1 1
       37 JUMPIF                           R9 ; [+5]
       38 LOADB                            R9 1
       39 SETTABLEKS                       R9 R0 K10 ["hasPendingSelectionRefresh"]
       41 LOADB                            R8 0
       42 JUMP                             ; [+1]
       43 LOADB                            R8 1
       44 JUMPIF                           R8 ; [+2]
       45 LOADB                            R8 0
       46 RETURN                           R8 1
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K11 ["TABS_KEYS"]
       50 GETTABLEKS                       R8 R8 K12 ["Avatars"]
       52 GETUPVAL                         R9 2
       53 GETTABLEKS                       R9 R9 K11 ["TABS_KEYS"]
       55 GETTABLEKS                       R9 R9 K13 ["Clothing"]
       57 GETTABLE                         R10 R2 R8
       58 JUMPIF                           R10 ; [+2]
       59 NEWTABLE                         R10 0 0
       61 GETTABLE                         R11 R2 R9
       62 JUMPIF                           R11 ; [+2]
       63 NEWTABLE                         R11 0 0
       65 GETUPVAL                         R12 3
       66 GETTABLEKS                       R12 R12 K14 ["createPreviewAvatars"]
       68 MOVE                             R13 R10
       69 GETTABLE                         R14 R3 R8
       70 LOADNIL                          R15
       71 MOVE                             R16 R4
       72 CALL                             R12 4 1
       73 GETUPVAL                         R13 3
       74 GETTABLEKS                       R13 R13 K14 ["createPreviewAvatars"]
       76 MOVE                             R14 R10
       77 GETTABLE                         R15 R3 R8
       78 GETTABLEKS                       R16 R0 K15 ["folderRef"]
       80 GETTABLEKS                       R16 R16 K16 ["current"]
       82 MOVE                             R17 R4
       83 CALL                             R13 4 1
       84 GETUPVAL                         R14 0
       85 CALL                             R14 0 1
       86 JUMPIFNOT                        R14 ; [+40]
       87 GETTABLEKS                       R15 R0 K8 ["isMounted"]
       89 JUMPIF                           R15 ; [+2]
       90 LOADB                            R14 0
       91 JUMP                             ; [+18]
       92 GETUPVAL                         R15 1
       93 GETTABLEKS                       R15 R15 K9 ["hasAttachedEditingItem"]
       95 GETTABLEKS                       R16 R0 K0 ["props"]
       97 GETTABLEKS                       R16 R16 K5 ["EditingItemContext"]
       99 NAMECALL                         R16 R16 K6 ["getItem"]
      101 CALL                             R16 1 -1
      102 CALL                             R15 -1 1
      103 JUMPIF                           R15 ; [+5]
      104 LOADB                            R15 1
      105 SETTABLEKS                       R15 R0 K10 ["hasPendingSelectionRefresh"]
      107 LOADB                            R14 0
      108 JUMP                             ; [+1]
      109 LOADB                            R14 1
      110 JUMPIF                           R14 ; [+12]
      111 GETUPVAL                         R14 1
      112 GETTABLEKS                       R14 R14 K17 ["discardAvatars"]
      114 MOVE                             R15 R12
      115 CALL                             R14 1 0
      116 GETUPVAL                         R14 1
      117 GETTABLEKS                       R14 R14 K17 ["discardAvatars"]
      119 MOVE                             R15 R13
      120 CALL                             R14 1 0
      121 LOADB                            R14 0
      122 RETURN                           R14 1
      123 NAMECALL                         R14 R5 K6 ["getItem"]
      125 CALL                             R14 1 1
      126 MOVE                             R6 R14
      127 GETTABLEKS                       R14 R6 K18 ["Archivable"]
      129 LOADB                            R15 1
      130 SETTABLEKS                       R15 R6 K18 ["Archivable"]
      132 NAMECALL                         R15 R6 K19 ["Clone"]
      134 CALL                             R15 1 1
      135 SETTABLEKS                       R14 R6 K18 ["Archivable"]
      137 MOVE                             R18 R12
      138 NAMECALL                         R16 R7 K20 ["setAvatars"]
      140 CALL                             R16 2 0
      141 MOVE                             R18 R13
      142 NAMECALL                         R16 R7 K21 ["setStorageAvatars"]
      144 CALL                             R16 2 0
      145 NAMECALL                         R16 R7 K22 ["getAllAvatars"]
      147 CALL                             R16 1 1
      148 GETUPVAL                         R17 3
      149 GETTABLEKS                       R17 R17 K23 ["addPreviewClothingFromInstances"]
      151 MOVE                             R18 R16
      152 NEWTABLE                         R19 0 1
      154 MOVE                             R20 R15
      155 SETLIST                          R19 R20 1 [1]
      157 LOADB                            R20 1
      158 CALL                             R17 3 0
      159 GETUPVAL                         R17 3
      160 GETTABLEKS                       R17 R17 K24 ["addPreviewClothingFromIds"]
      162 MOVE                             R18 R16
      163 MOVE                             R19 R11
      164 GETTABLE                         R20 R3 R9
      165 MOVE                             R21 R4
      166 CALL                             R17 4 0
      167 NAMECALL                         R17 R7 K25 ["getCurrentPreviewAvatarIndex"]
      169 CALL                             R17 1 1
      170 NAMECALL                         R18 R7 K26 ["getAvatars"]
      172 CALL                             R18 1 1
      173 LENGTH                           R19 R18
      174 JUMPIFNOTLT                      R19 R17 ; [+5]
      176 LOADN                            R21 1
      177 NAMECALL                         R19 R7 K27 ["setPreviewAvatarIndex"]
      179 CALL                             R19 2 0
      180 LOADB                            R19 1
      181 RETURN                           R19 1

PROTO_3:
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

PROTO_4:
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
       13 CALL                             R0 0 1
       14 JUMPIFNOT                        R0 ; [+34]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K3 ["isMounted"]
       18 JUMPIFNOT                        R0 ; [+10]
       19 GETUPVAL                         R1 2
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETUPVAL                         R1 3
       22 GETUPVAL                         R2 0
       23 CALL                             R1 1 1
       24 JUMPIFNOT                        R1 ; [+3]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K3 ["isMounted"]
       28 MOVE                             R0 R1
       29 JUMPIFNOT                        R0 ; [+14]
       30 GETUPVAL                         R1 4
       31 GETUPVAL                         R2 0
       32 GETUPVAL                         R3 2
       33 CALL                             R1 2 0
       34 GETUPVAL                         R1 2
       35 JUMPIFNOT                        R1 ; [+8]
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K4 ["props"]
       39 GETTABLEKS                       R1 R1 K5 ["PreviewContext"]
       41 NAMECALL                         R1 R1 K6 ["updatePreviewModel"]
       43 CALL                             R1 1 0
       44 GETUPVAL                         R1 0
       45 LOADB                            R2 0
       46 SETTABLEKS                       R2 R1 K0 ["isUpdateInProgress"]
       48 RETURN                           R0 0
       49 GETUPVAL                         R0 2
       50 JUMPIFNOT                        R0 ; [+3]
       51 GETUPVAL                         R0 3
       52 GETUPVAL                         R1 0
       53 CALL                             R0 1 0
       54 GETUPVAL                         R0 4
       55 GETUPVAL                         R1 0
       56 GETUPVAL                         R2 2
       57 CALL                             R0 2 0
       58 GETUPVAL                         R0 2
       59 JUMPIFNOT                        R0 ; [+8]
       60 GETUPVAL                         R0 0
       61 GETTABLEKS                       R0 R0 K4 ["props"]
       63 GETTABLEKS                       R1 R0 K5 ["PreviewContext"]
       65 NAMECALL                         R2 R1 K6 ["updatePreviewModel"]
       67 CALL                             R2 1 0
       68 GETUPVAL                         R0 0
       69 LOADB                            R1 0
       70 SETTABLEKS                       R1 R0 K0 ["isUpdateInProgress"]
       72 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K2 [coroutine.wrap]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 1 1
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["EditingItemContext"]
        5 NAMECALL                         R2 R1 K2 ["getItem"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+8]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K3 ["hasAttachedEditingItem"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 JUMPIF                           R3 ; [+2]
       17 LOADB                            R3 0
       18 RETURN                           R3 1
       19 GETTABLEKS                       R3 R2 K4 ["Parent"]
       21 JUMPIFEQ                         R0 R3 ; [+16]
       23 GETTABLEKS                       R5 R2 K4 ["Parent"]
       25 GETTABLEKS                       R5 R5 K5 ["Name"]
       27 NAMECALL                         R3 R0 K6 ["FindFirstAncestor"]
       29 CALL                             R3 2 1
       30 JUMPIF                           R3 ; [+7]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K7 ["PREVIEW_FOLDER_NAME"]
       34 NAMECALL                         R3 R0 K6 ["FindFirstAncestor"]
       36 CALL                             R3 2 1
       37 JUMPIFNOT                        R3 ; [+2]
       38 LOADB                            R3 0
       39 RETURN                           R3 1
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K8 ["isClothes"]
       43 MOVE                             R6 R0
       44 CALL                             R5 1 1
       45 JUMPIFNOT                        R5 ; [+6]
       46 GETUPVAL                         R4 5
       47 GETTABLEKS                       R4 R4 K9 ["TABS_KEYS"]
       49 GETTABLEKS                       R4 R4 K10 ["Clothing"]
       51 JUMP                             ; [+13]
       52 GETUPVAL                         R5 4
       53 GETTABLEKS                       R5 R5 K11 ["isAvatar"]
       55 MOVE                             R6 R0
       56 CALL                             R5 1 1
       57 JUMPIFNOT                        R5 ; [+6]
       58 GETUPVAL                         R4 5
       59 GETTABLEKS                       R4 R4 K9 ["TABS_KEYS"]
       61 GETTABLEKS                       R4 R4 K12 ["Avatars"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R4
       65 JUMPIFNOTEQKNIL                  R4 ; [+2]
       67 LOADB                            R3 0 +1
       68 LOADB                            R3 1
       69 RETURN                           R3 1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 GETUPVAL                         R5 3
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 SETTABLEKS                       R1 R0 K3 ["isSelectedInstanceValid"]
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U7
       24 SETTABLEKS                       R1 R0 K4 ["isEquipped"]
       26 NEWCLOSURE                       R1 P2
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U6
       31 CAPTURE                          UPVAL U8
       32 SETTABLEKS                       R1 R0 K5 ["onValidSelection"]
       34 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hasPendingSelectionRefresh"]
        3 JUMPIFNOT                        R0 ; [+30]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["hasAttachedEditingItem"]
        8 GETTABLEKS                       R3 R1 K2 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["EditingItemContext"]
       12 NAMECALL                         R3 R3 K4 ["getItem"]
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 1
       16 MOVE                             R0 R2
       17 JUMPIFNOT                        R0 ; [+16]
       18 GETUPVAL                         R0 0
       19 LOADB                            R1 0
       20 SETTABLEKS                       R1 R0 K0 ["hasPendingSelectionRefresh"]
       22 GETUPVAL                         R0 0
       23 GETIMPORT                        R1 K7 [coroutine.wrap]
       25 LOADB                            R3 1
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CALL                             R1 1 1
       33 CALL                             R1 0 0
       34 RETURN                           R0 0

PROTO_15:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+18]
        6 GETTABLEKS                       R1 R0 K1 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["EditingItemContext"]
       10 NAMECALL                         R1 R1 K3 ["getEditingItemChangedSignal"]
       12 CALL                             R1 1 1
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 NAMECALL                         R1 R1 K4 ["Connect"]
       21 CALL                             R1 2 1
       22 SETTABLEKS                       R1 R0 K5 ["editingItemChangedConnection"]
       24 RETURN                           R0 0

PROTO_16:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["editingItemChangedConnection"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["editingItemChangedConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["editingItemChangedConnection"]
       14 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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
       38 JUMPIFEQ                         R2 R3 ; [+13]
       40 GETIMPORT                        R2 K7 [coroutine.wrap]
       42 LOADB                            R4 1
       43 NEWCLOSURE                       R3 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U3
       49 CALL                             R2 1 1
       50 CALL                             R2 0 0
       51 RETURN                           R0 0
       52 GETIMPORT                        R2 K7 [coroutine.wrap]
       54 LOADB                            R4 0
       55 NEWCLOSURE                       R3 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          UPVAL U3
       61 CALL                             R2 1 1
       62 CALL                             R2 0 0
       63 RETURN                           R0 0

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_24:
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
      137 GETIMPORT                        R26 K8 [require]
      139 GETTABLEKS                       R27 R1 K27 ["Src"]
      141 GETTABLEKS                       R27 R27 K14 ["Util"]
      143 GETTABLEKS                       R27 R27 K39 ["PreviewEditingItemUtil"]
      145 CALL                             R26 1 1
      146 GETIMPORT                        R27 K8 [require]
      148 GETTABLEKS                       R28 R1 K27 ["Src"]
      150 GETTABLEKS                       R28 R28 K40 ["Flags"]
      152 GETTABLEKS                       R28 R28 K41 ["getFFlagLayeredClothingEditorPreviewAfterGenerate"]
      154 CALL                             R27 1 1
      155 GETTABLEKS                       R28 R2 K42 ["PureComponent"]
      157 LOADK                            R30 K43 ["ExplorerPreviewInstances"]
      158 NAMECALL                         R28 R28 K44 ["extend"]
      160 CALL                             R28 2 1
      161 GETTABLEKS                       R29 R23 K45 ["wrap"]
      163 MOVE                             R30 R28
      164 GETIMPORT                        R31 K5 [script]
      166 CALL                             R29 2 0
      167 DUPCLOSURE                       R29 K46 [PROTO_0]
      168 CAPTURE                          VAL R26
      169 DUPCLOSURE                       R30 K47 [PROTO_1]
      170 CAPTURE                          VAL R26
      171 DUPCLOSURE                       R31 K48 [PROTO_2]
      172 CAPTURE                          VAL R27
      173 CAPTURE                          VAL R26
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R7
      176 DUPCLOSURE                       R32 K49 [PROTO_3]
      177 CAPTURE                          VAL R24
      178 DUPCLOSURE                       R33 K50 [PROTO_5]
      179 CAPTURE                          VAL R27
      180 CAPTURE                          VAL R31
      181 CAPTURE                          VAL R32
      182 DUPCLOSURE                       R34 K51 [PROTO_6]
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R24
      185 DUPCLOSURE                       R35 K52 [PROTO_7]
      186 DUPCLOSURE                       R36 K53 [PROTO_8]
      187 CAPTURE                          VAL R10
      188 CAPTURE                          VAL R9
      189 DUPCLOSURE                       R37 K54 [PROTO_13]
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R27
      192 CAPTURE                          VAL R26
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R35
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R34
      199 SETTABLEKS                       R37 R28 K55 ["init"]
      201 DUPCLOSURE                       R37 K56 [PROTO_15]
      202 CAPTURE                          VAL R27
      203 CAPTURE                          VAL R26
      204 CAPTURE                          VAL R31
      205 CAPTURE                          VAL R32
      206 SETTABLEKS                       R37 R28 K57 ["didMount"]
      208 DUPCLOSURE                       R37 K58 [PROTO_16]
      209 SETTABLEKS                       R37 R28 K59 ["willUnmount"]
      211 DUPCLOSURE                       R37 K60 [PROTO_17]
      212 CAPTURE                          VAL R0
      213 CAPTURE                          VAL R24
      214 SETTABLEKS                       R37 R28 K61 ["getOrCreatePreviewFolder"]
      216 DUPCLOSURE                       R37 K62 [PROTO_18]
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R11
      219 SETTABLEKS                       R37 R28 K63 ["render"]
      221 DUPCLOSURE                       R37 K64 [PROTO_19]
      222 CAPTURE                          VAL R9
      223 CAPTURE                          VAL R27
      224 CAPTURE                          VAL R31
      225 CAPTURE                          VAL R32
      226 SETTABLEKS                       R37 R28 K65 ["didUpdate"]
      228 DUPCLOSURE                       R37 K66 [PROTO_20]
      229 DUPCLOSURE                       R38 K67 [PROTO_24]
      230 CAPTURE                          VAL R17
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R16
      233 MOVE                             R39 R21
      234 DUPTABLE                         R40 K70 [{"Analytics", "EditingItemContext", "PreviewContext", "AssetServiceWrapper", "Localization", "StudioServiceWrapper"}]
      235 GETTABLEKS                       R41 R20 K68 ["Analytics"]
      237 SETTABLEKS                       R41 R40 K68 ["Analytics"]
      239 SETTABLEKS                       R12 R40 K23 ["EditingItemContext"]
      241 SETTABLEKS                       R13 R40 K24 ["PreviewContext"]
      243 SETTABLEKS                       R14 R40 K25 ["AssetServiceWrapper"]
      245 GETTABLEKS                       R41 R20 K69 ["Localization"]
      247 SETTABLEKS                       R41 R40 K69 ["Localization"]
      249 SETTABLEKS                       R15 R40 K26 ["StudioServiceWrapper"]
      251 CALL                             R39 1 1
      252 MOVE                             R40 R28
      253 CALL                             R39 1 1
      254 MOVE                             R28 R39
      255 GETTABLEKS                       R39 R4 K71 ["connect"]
      257 MOVE                             R40 R37
      258 MOVE                             R41 R38
      259 CALL                             R39 2 1
      260 MOVE                             R40 R28
      261 CALL                             R39 1 -1
      262 RETURN                           R39 -1
