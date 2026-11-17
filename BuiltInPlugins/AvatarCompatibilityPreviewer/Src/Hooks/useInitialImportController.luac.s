PROTO_0:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+23]
        5 LOADK                            R4 K2 ["MeshPart"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K3 ["Name"]
       13 JUMPIFNOTEQKS                    R2 K4 ["Head"] ; [+14]
       15 LOADK                            R3 K5 ["Decal"]
       16 NAMECALL                         R1 R0 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+8]
       20 LOADK                            R4 K6 ["WrapTextureTransfer"]
       21 NAMECALL                         R2 R0 K7 ["FindFirstChildWhichIsA"]
       23 CALL                             R2 2 1
       24 JUMPIFNOTEQKNIL                  R2 ; [+2]
       26 LOADB                            R1 0 +1
       27 LOADB                            R1 1
       28 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["filter"]
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K1 ["GetChildren"]
        7 CALL                             R2 1 1
        8 DUPCLOSURE                       R3 K2 [PROTO_0]
        9 CALL                             R1 2 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+23]
        5 LOADK                            R4 K2 ["MeshPart"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K3 ["Name"]
       13 JUMPIFNOTEQKS                    R2 K4 ["Head"] ; [+14]
       15 LOADK                            R3 K5 ["Decal"]
       16 NAMECALL                         R1 R0 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+8]
       20 LOADK                            R4 K6 ["WrapTextureTransfer"]
       21 NAMECALL                         R2 R0 K7 ["FindFirstChildWhichIsA"]
       23 CALL                             R2 2 1
       24 JUMPIFNOTEQKNIL                  R2 ; [+2]
       26 LOADB                            R1 0 +1
       27 LOADB                            R1 1
       28 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"palette", "item"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["animations"]
        4 GETTABLEN                        R1 R2 1
        5 SETTABLEKS                       R1 R0 K0 ["palette"]
        7 DUPTABLE                         R1 K7 [{["source"] = "builtin", ["builtinItem"]}]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K8 ["IDLE_ANIMATION_ID"]
       11 SETTABLEKS                       R2 R1 K6 ["builtinItem"]
       13 SETTABLEKS                       R1 R0 K1 ["item"]
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K9 ["addEquippedItem"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 3
       21 GETUPVAL                         R2 4
       22 GETTABLEKS                       R2 R2 K10 ["filter"]
       24 GETUPVAL                         R3 5
       25 NAMECALL                         R3 R3 K11 ["GetChildren"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K12 [PROTO_2]
       29 CALL                             R2 2 -1
       30 CALL                             R1 -1 0
       31 GETUPVAL                         R1 6
       32 CALL                             R1 0 1
       33 JUMPIFNOT                        R1 ; [+55]
       34 GETUPVAL                         R1 5
       35 GETTABLEKS                       R1 R1 K13 ["Humanoid"]
       37 LOADK                            R3 K14 ["HumanoidDescription"]
       38 NAMECALL                         R1 R1 K15 ["FindFirstChildOfClass"]
       40 CALL                             R1 2 1
       41 MOVE                             R2 R1
       42 JUMPIFNOT                        R2 ; [+6]
       43 GETUPVAL                         R4 7
       44 GETTABLEKS                       R4 R4 K16 ["MARKETPLACE_ITEMS_VALUE_NAME"]
       46 NAMECALL                         R2 R1 K17 ["FindFirstChild"]
       48 CALL                             R2 2 1
       49 JUMPIFNOT                        R2 ; [+39]
       50 LOADK                            R5 K18 ["StringValue"]
       51 NAMECALL                         R3 R2 K19 ["IsA"]
       53 CALL                             R3 2 1
       54 JUMPIFNOT                        R3 ; [+34]
       55 NEWTABLE                         R3 0 0
       57 NAMECALL                         R4 R2 K11 ["GetChildren"]
       59 CALL                             R4 1 3
       60 FORGPREP                         R4
       61 LOADK                            R11 K18 ["StringValue"]
       62 NAMECALL                         R9 R8 K19 ["IsA"]
       64 CALL                             R9 2 1
       65 JUMPIFNOT                        R9 ; [+11]
       66 MOVE                             R10 R3
       67 GETUPVAL                         R11 7
       68 GETTABLEKS                       R11 R11 K20 ["decodeMarketplaceItem"]
       70 GETTABLEKS                       R12 R8 K21 ["Value"]
       72 CALL                             R11 1 -1
       73 FASTCALL                         TABLE_INSERT ; [+2]
       74 GETIMPORT                        R9 K24 [table.insert]
       76 CALL                             R9 -1 0
       77 FORGLOOP                         R4 2 ; [-17]
       79 NAMECALL                         R4 R2 K25 ["Destroy"]
       81 CALL                             R4 1 0
       82 LENGTH                           R4 R3
       83 LOADN                            R5 0
       84 JUMPIFNOTLT                      R5 R4 ; [+4]
       86 GETUPVAL                         R4 8
       87 MOVE                             R5 R3
       88 CALL                             R4 1 0
       89 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 GETIMPORT                        R0 K2 [task.defer]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 5
       14 JUMPIFNOT                        R0 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 6
       17 LOADB                            R1 1
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 7
       20 GETTABLEKS                       R0 R0 K3 ["removeAllEquippedItems"]
       22 CALL                             R0 0 0
       23 GETIMPORT                        R0 K2 [task.defer]
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          UPVAL U9
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U10
       33 CAPTURE                          UPVAL U11
       34 CAPTURE                          UPVAL U12
       35 CALL                             R0 1 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R0
       11 LOADK                            R5 K0 ["initialImportComplete"]
       12 LOADB                            R6 0
       13 CALL                             R3 3 2
       14 GETUPVAL                         R5 3
       15 MOVE                             R6 R0
       16 LOADK                            R7 K1 ["shouldReimport"]
       17 LOADB                            R8 0
       18 CALL                             R5 3 2
       19 GETUPVAL                         R7 4
       20 GETTABLEKS                       R7 R7 K2 ["useContext"]
       22 GETUPVAL                         R8 5
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K3 ["useEffect"]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R7
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U9
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R10 0 7
       43 MOVE                             R11 R1
       44 MOVE                             R12 R3
       45 MOVE                             R13 R0
       46 MOVE                             R14 R4
       47 MOVE                             R15 R5
       48 MOVE                             R16 R6
       49 GETUPVAL                         R18 1
       50 CALL                             R18 0 1
       51 JUMPIFNOT                        R18 ; [+2]
       52 MOVE                             R17 R2
       53 JUMP                             ; [+1]
       54 LOADNIL                          R17
       55 SETLIST                          R10 R11 7 [1]
       57 CALL                             R8 2 0
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["MarketplaceCatalogUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Types"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Resources"]
       52 GETTABLEKS                       R7 R7 K15 ["CatalogItems"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K10 ["Util"]
       61 GETTABLEKS                       R8 R8 K16 ["EquipmentStateContext"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K9 ["Src"]
       68 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K18 ["useAddInstancesToUserCatalogAndEquip"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K9 ["Src"]
       77 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       79 GETTABLEKS                       R10 R10 K19 ["useAddMarketplaceItemsAndEquip"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K9 ["Src"]
       86 GETTABLEKS                       R11 R11 K17 ["Hooks"]
       88 GETTABLEKS                       R11 R11 K20 ["useSerializedState"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K9 ["Src"]
       95 GETTABLEKS                       R12 R12 K21 ["Flags"]
       97 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarPreviewerStartFromAssetId"]
       99 CALL                             R11 1 1
      100 DUPCLOSURE                       R12 K23 [PROTO_5]
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R4
      111 RETURN                           R12 1
