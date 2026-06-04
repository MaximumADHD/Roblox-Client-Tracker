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
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+23]
        3 DUPTABLE                         R0 K2 [{"palette", "item"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K3 ["animations"]
        7 GETTABLEN                        R1 R2 1
        8 SETTABLEKS                       R1 R0 K0 ["palette"]
       10 DUPTABLE                         R1 K6 [{"source", "builtinItem"}]
       11 LOADK                            R2 K7 ["builtin"]
       12 SETTABLEKS                       R2 R1 K4 ["source"]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K8 ["IDLE_ANIMATION_ID"]
       17 SETTABLEKS                       R2 R1 K5 ["builtinItem"]
       19 SETTABLEKS                       R1 R0 K1 ["item"]
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K9 ["addEquippedItem"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 GETUPVAL                         R0 4
       27 GETUPVAL                         R1 5
       28 GETTABLEKS                       R1 R1 K10 ["filter"]
       30 GETUPVAL                         R2 6
       31 NAMECALL                         R2 R2 K11 ["GetChildren"]
       33 CALL                             R2 1 1
       34 DUPCLOSURE                       R3 K12 [PROTO_2]
       35 CAPTURE                          UPVAL U7
       36 CALL                             R1 2 -1
       37 CALL                             R0 -1 0
       38 GETUPVAL                         R0 8
       39 CALL                             R0 0 1
       40 JUMPIFNOT                        R0 ; [+55]
       41 GETUPVAL                         R0 6
       42 GETTABLEKS                       R0 R0 K13 ["Humanoid"]
       44 LOADK                            R2 K14 ["HumanoidDescription"]
       45 NAMECALL                         R0 R0 K15 ["FindFirstChildOfClass"]
       47 CALL                             R0 2 1
       48 MOVE                             R1 R0
       49 JUMPIFNOT                        R1 ; [+6]
       50 GETUPVAL                         R3 9
       51 GETTABLEKS                       R3 R3 K16 ["MARKETPLACE_ITEMS_VALUE_NAME"]
       53 NAMECALL                         R1 R0 K17 ["FindFirstChild"]
       55 CALL                             R1 2 1
       56 JUMPIFNOT                        R1 ; [+39]
       57 LOADK                            R4 K18 ["StringValue"]
       58 NAMECALL                         R2 R1 K19 ["IsA"]
       60 CALL                             R2 2 1
       61 JUMPIFNOT                        R2 ; [+34]
       62 NEWTABLE                         R2 0 0
       64 NAMECALL                         R3 R1 K11 ["GetChildren"]
       66 CALL                             R3 1 3
       67 FORGPREP                         R3
       68 LOADK                            R10 K18 ["StringValue"]
       69 NAMECALL                         R8 R7 K19 ["IsA"]
       71 CALL                             R8 2 1
       72 JUMPIFNOT                        R8 ; [+11]
       73 MOVE                             R9 R2
       74 GETUPVAL                         R10 9
       75 GETTABLEKS                       R10 R10 K20 ["decodeMarketplaceItem"]
       77 GETTABLEKS                       R11 R7 K21 ["Value"]
       79 CALL                             R10 1 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R8 K24 [table.insert]
       83 CALL                             R8 -1 0
       84 FORGLOOP                         R3 2 ; [-17]
       86 NAMECALL                         R3 R1 K25 ["Destroy"]
       88 CALL                             R3 1 0
       89 LENGTH                           R3 R2
       90 LOADN                            R4 0
       91 JUMPIFNOTLT                      R4 R3 ; [+4]
       93 GETUPVAL                         R3 10
       94 MOVE                             R4 R2
       95 CALL                             R3 1 0
       96 RETURN                           R0 0

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
       24 CALL                             R0 0 1
       25 JUMPIFNOT                        R0 ; [+4]
       26 GETUPVAL                         R0 10
       27 GETTABLEKS                       R0 R0 K3 ["removeAllEquippedItems"]
       29 CALL                             R0 0 0
       30 GETIMPORT                        R0 K2 [task.defer]
       32 NEWCLOSURE                       R1 P1
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          UPVAL U11
       35 CAPTURE                          UPVAL U12
       36 CAPTURE                          UPVAL U10
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U13
       42 CAPTURE                          UPVAL U14
       43 CAPTURE                          UPVAL U15
       44 CALL                             R0 1 0
       45 RETURN                           R0 0

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
       44 CAPTURE                          UPVAL U9
       45 CAPTURE                          VAL R7
       46 CAPTURE                          UPVAL U10
       47 CAPTURE                          UPVAL U11
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          UPVAL U12
       50 CAPTURE                          VAL R2
       51 NEWTABLE                         R10 0 7
       53 MOVE                             R11 R1
       54 MOVE                             R12 R3
       55 MOVE                             R13 R0
       56 MOVE                             R14 R4
       57 GETUPVAL                         R16 4
       58 CALL                             R16 0 1
       59 JUMPIFNOT                        R16 ; [+2]
       60 MOVE                             R15 R5
       61 JUMP                             ; [+1]
       62 LOADNIL                          R15
       63 GETUPVAL                         R17 4
       64 CALL                             R17 0 1
       65 JUMPIFNOT                        R17 ; [+2]
       66 MOVE                             R16 R6
       67 JUMP                             ; [+1]
       68 LOADNIL                          R16
       69 GETUPVAL                         R18 1
       70 CALL                             R18 0 1
       71 JUMPIFNOT                        R18 ; [+2]
       72 MOVE                             R17 R2
       73 JUMP                             ; [+1]
       74 LOADNIL                          R17
       75 SETLIST                          R10 R11 7 [1]
       77 CALL                             R8 2 0
       78 CLOSEUPVALS                      R5
       79 RETURN                           R0 0

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
      106 GETTABLEKS                       R13 R13 K23 ["getFFlagAvatarPreviewerEquipIdleOnInit"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R0 K9 ["Src"]
      113 GETTABLEKS                       R14 R14 K21 ["Flags"]
      115 GETTABLEKS                       R14 R14 K24 ["getFFlagAvatarPreviewerMakeup"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K9 ["Src"]
      122 GETTABLEKS                       R15 R15 K21 ["Flags"]
      124 GETTABLEKS                       R15 R15 K25 ["getFFlagAvatarPreviewerStartFromAssetId"]
      126 CALL                             R14 1 1
      127 DUPCLOSURE                       R15 K26 [PROTO_5]
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R13
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R4
      141 RETURN                           R15 1
