PROTO_0:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+22]
        5 LOADK                            R4 K2 ["MeshPart"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K3 ["Name"]
       13 JUMPIFNOTEQKS                    R2 K4 ["Head"] ; [+13]
       15 GETUPVAL                         R1 0
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+9]
       18 LOADK                            R3 K5 ["Decal"]
       19 NAMECALL                         R1 R0 K1 ["IsA"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+4]
       23 LOADK                            R3 K6 ["WrapTextureTransfer"]
       24 NAMECALL                         R1 R0 K7 ["FindFirstChildWhichIsA"]
       26 CALL                             R1 2 1
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["filter"]
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K1 ["GetChildren"]
        7 CALL                             R2 1 1
        8 DUPCLOSURE                       R3 K2 [PROTO_0]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+22]
        5 LOADK                            R4 K2 ["MeshPart"]
        6 NAMECALL                         R2 R0 K1 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+5]
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K3 ["Name"]
       13 JUMPIFNOTEQKS                    R2 K4 ["Head"] ; [+13]
       15 GETUPVAL                         R1 0
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+9]
       18 LOADK                            R3 K5 ["Decal"]
       19 NAMECALL                         R1 R0 K1 ["IsA"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+4]
       23 LOADK                            R3 K6 ["WrapTextureTransfer"]
       24 NAMECALL                         R1 R0 K7 ["FindFirstChildWhichIsA"]
       26 CALL                             R1 2 1
       27 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"palette", "item"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["animations"]
        4 GETTABLEN                        R1 R2 1
        5 SETTABLEKS                       R1 R0 K0 ["palette"]
        7 DUPTABLE                         R1 K6 [{"source", "builtinItem"}]
        8 LOADK                            R2 K7 ["builtin"]
        9 SETTABLEKS                       R2 R1 K4 ["source"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K8 ["IDLE_ANIMATION_ID"]
       14 SETTABLEKS                       R2 R1 K5 ["builtinItem"]
       16 SETTABLEKS                       R1 R0 K1 ["item"]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K9 ["addEquippedItem"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 3
       24 GETUPVAL                         R2 4
       25 GETTABLEKS                       R2 R2 K10 ["filter"]
       27 GETUPVAL                         R3 5
       28 NAMECALL                         R3 R3 K11 ["GetChildren"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K12 [PROTO_2]
       32 CAPTURE                          UPVAL U6
       33 CALL                             R2 2 -1
       34 CALL                             R1 -1 0
       35 GETUPVAL                         R1 7
       36 CALL                             R1 0 1
       37 JUMPIFNOT                        R1 ; [+55]
       38 GETUPVAL                         R1 5
       39 GETTABLEKS                       R1 R1 K13 ["Humanoid"]
       41 LOADK                            R3 K14 ["HumanoidDescription"]
       42 NAMECALL                         R1 R1 K15 ["FindFirstChildOfClass"]
       44 CALL                             R1 2 1
       45 MOVE                             R2 R1
       46 JUMPIFNOT                        R2 ; [+6]
       47 GETUPVAL                         R4 8
       48 GETTABLEKS                       R4 R4 K16 ["MARKETPLACE_ITEMS_VALUE_NAME"]
       50 NAMECALL                         R2 R1 K17 ["FindFirstChild"]
       52 CALL                             R2 2 1
       53 JUMPIFNOT                        R2 ; [+39]
       54 LOADK                            R5 K18 ["StringValue"]
       55 NAMECALL                         R3 R2 K19 ["IsA"]
       57 CALL                             R3 2 1
       58 JUMPIFNOT                        R3 ; [+34]
       59 NEWTABLE                         R3 0 0
       61 NAMECALL                         R4 R2 K11 ["GetChildren"]
       63 CALL                             R4 1 3
       64 FORGPREP                         R4
       65 LOADK                            R11 K18 ["StringValue"]
       66 NAMECALL                         R9 R8 K19 ["IsA"]
       68 CALL                             R9 2 1
       69 JUMPIFNOT                        R9 ; [+11]
       70 MOVE                             R10 R3
       71 GETUPVAL                         R11 8
       72 GETTABLEKS                       R11 R11 K20 ["decodeMarketplaceItem"]
       74 GETTABLEKS                       R12 R8 K21 ["Value"]
       76 CALL                             R11 1 -1
       77 FASTCALL                         TABLE_INSERT ; [+2]
       78 GETIMPORT                        R9 K24 [table.insert]
       80 CALL                             R9 -1 0
       81 FORGLOOP                         R4 2 ; [-17]
       83 NAMECALL                         R4 R2 K25 ["Destroy"]
       85 CALL                             R4 1 0
       86 LENGTH                           R4 R3
       87 LOADN                            R5 0
       88 JUMPIFNOTLT                      R5 R4 ; [+4]
       90 GETUPVAL                         R4 9
       91 MOVE                             R5 R3
       92 CALL                             R4 1 0
       93 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+14]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+12]
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K2 [task.defer]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CALL                             R0 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 7
       18 JUMPIFNOT                        R0 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 8
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 GETUPVAL                         R0 9
       24 GETTABLEKS                       R0 R0 K3 ["removeAllEquippedItems"]
       26 CALL                             R0 0 0
       27 GETIMPORT                        R0 K2 [task.defer]
       29 NEWCLOSURE                       R1 P1
       30 CAPTURE                          UPVAL U10
       31 CAPTURE                          UPVAL U11
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U12
       38 CAPTURE                          UPVAL U13
       39 CAPTURE                          UPVAL U14
       40 CALL                             R0 1 0
       41 RETURN                           R0 0

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
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 GETUPVAL                         R7 4
       17 CALL                             R7 0 1
       18 JUMPIFNOT                        R7 ; [+7]
       19 GETUPVAL                         R7 3
       20 MOVE                             R8 R0
       21 LOADK                            R9 K1 ["shouldReimport"]
       22 LOADB                            R10 0
       23 CALL                             R7 3 2
       24 MOVE                             R5 R7
       25 MOVE                             R6 R8
       26 GETUPVAL                         R7 5
       27 GETTABLEKS                       R7 R7 K2 ["useContext"]
       29 GETUPVAL                         R8 6
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R8 R8 K3 ["useEffect"]
       34 NEWCLOSURE                       R9 P0
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          REF R5
       37 CAPTURE                          REF R6
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R7
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          UPVAL U10
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          UPVAL U11
       49 CAPTURE                          VAL R2
       50 NEWTABLE                         R10 0 7
       52 MOVE                             R11 R1
       53 MOVE                             R12 R3
       54 MOVE                             R13 R0
       55 MOVE                             R14 R4
       56 GETUPVAL                         R16 4
       57 CALL                             R16 0 1
       58 JUMPIFNOT                        R16 ; [+2]
       59 MOVE                             R15 R5
       60 JUMP                             ; [+1]
       61 LOADNIL                          R15
       62 GETUPVAL                         R17 4
       63 CALL                             R17 0 1
       64 JUMPIFNOT                        R17 ; [+2]
       65 MOVE                             R16 R6
       66 JUMP                             ; [+1]
       67 LOADNIL                          R16
       68 GETUPVAL                         R18 1
       69 CALL                             R18 0 1
       70 JUMPIFNOT                        R18 ; [+2]
       71 MOVE                             R17 R2
       72 JUMP                             ; [+1]
       73 LOADNIL                          R17
       74 SETLIST                          R10 R11 7 [1]
       76 CALL                             R8 2 0
       77 CLOSEUPVALS                      R5
       78 RETURN                           R0 0

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
       97 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarAutosetupOptionsInput"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K9 ["Src"]
      104 GETTABLEKS                       R13 R13 K21 ["Flags"]
      106 GETTABLEKS                       R13 R13 K23 ["getFFlagAvatarPreviewerMakeup"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R0 K9 ["Src"]
      113 GETTABLEKS                       R14 R14 K21 ["Flags"]
      115 GETTABLEKS                       R14 R14 K24 ["getFFlagAvatarPreviewerStartFromAssetId"]
      117 CALL                             R13 1 1
      118 DUPCLOSURE                       R14 K25 [PROTO_5]
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R4
      131 RETURN                           R14 1
