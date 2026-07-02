PROTO_0:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Attempting to wear an instance from something that has no custom instance implementation"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [Enum.AssetType]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["AssetType"]
        5 GETTABLE                         R0 R1 R2
        6 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Archivable"]
        2 JUMPIF                           R2 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 LOADK                            R4 K1 ["Accessory"]
        6 NAMECALL                         R2 R0 K2 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+2]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 LOADK                            R5 K1 ["Accessory"]
       13 NAMECALL                         R3 R0 K2 ["IsA"]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["LUAU_ANALYZE_ERROR"]
       19 FASTCALL2                        ASSERT R3 R4 ; [+3]
       21 GETIMPORT                        R2 K5 [assert]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R0 K6 ["AccessoryType"]
       26 GETIMPORT                        R3 K9 [Enum.AccessoryType.Unknown]
       28 JUMPIFEQ                         R2 R3 ; [+11]
       30 GETTABLEKS                       R2 R0 K6 ["AccessoryType"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K10 ["ASSET_TYPE_TO_ACCESSORY_TYPE"]
       35 GETTABLE                         R3 R4 R1
       36 JUMPIFEQ                         R2 R3 ; [+3]
       38 LOADNIL                          R2
       39 RETURN                           R2 1
       40 LOADK                            R4 K11 ["Handle"]
       41 NAMECALL                         R2 R0 K12 ["FindFirstChild"]
       43 CALL                             R2 2 1
       44 JUMPIFEQKNIL                     R2 ; [+4]
       46 GETTABLEKS                       R3 R2 K0 ["Archivable"]
       48 JUMPIF                           R3 ; [+2]
       49 LOADNIL                          R3
       50 RETURN                           R3 1
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R3 R3 K13 ["Dictionary"]
       54 GETTABLEKS                       R3 R3 K14 ["join"]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R4 R4 K1 ["Accessory"]
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R5 R5 K15 ["Clothing"]
       62 CALL                             R3 2 3
       63 FORGPREP                         R3
       64 GETIMPORT                        R8 K17 [pcall]
       66 NEWCLOSURE                       R9 P0
       67 CAPTURE                          VAL R7
       68 CALL                             R8 1 2
       69 JUMPIFNOT                        R8 ; [+27]
       70 JUMPIFNOTEQ                      R9 R1 ; [+26]
       72 GETTABLEKS                       R10 R7 K18 ["Attachments"]
       74 LOADNIL                          R11
       75 LOADNIL                          R12
       76 FORGPREP                         R10
       77 GETTABLEKS                       R17 R14 K19 ["Name"]
       79 NAMECALL                         R15 R2 K12 ["FindFirstChild"]
       81 CALL                             R15 2 1
       82 JUMPIFNOT                        R15 ; [+12]
       83 NAMECALL                         R15 R0 K20 ["Clone"]
       85 CALL                             R15 1 1
       86 GETTABLEKS                       R16 R15 K11 ["Handle"]
       88 FASTCALL                         VECTOR ; [+2]
       89 GETIMPORT                        R17 K23 [Vector3.new]
       91 CALL                             R17 0 1
       92 SETTABLEKS                       R17 R16 K24 ["Position"]
       94 RETURN                           R15 1
       95 FORGLOOP                         R10 2 ; [-19]
       97 FORGLOOP                         R3 2 ; [-34]
       99 LOADNIL                          R3
      100 RETURN                           R3 1

PROTO_4:
        0 NAMECALL                         R3 R0 K0 ["Clone"]
        2 CALL                             R3 1 1
        3 LOADK                            R6 K1 ["Handle"]
        4 NAMECALL                         R4 R3 K2 ["FindFirstChild"]
        6 CALL                             R4 2 1
        7 JUMPIFNOTEQKNIL                  R4 ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 GETTABLEKS                       R4 R3 K1 ["Handle"]
       13 LOADK                            R6 K3 ["WrapLayer"]
       14 NAMECALL                         R4 R4 K4 ["FindFirstChildWhichIsA"]
       16 CALL                             R4 2 1
       17 JUMPIFEQKNIL                     R4 ; [+3]
       19 SETTABLEKS                       R2 R4 K5 ["Order"]
       21 GETUPVAL                         R5 0
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+16]
       24 GETTABLEKS                       R5 R3 K1 ["Handle"]
       26 NAMECALL                         R5 R5 K6 ["GetChildren"]
       28 CALL                             R5 1 3
       29 FORGPREP                         R5
       30 LOADK                            R12 K7 ["Weld"]
       31 NAMECALL                         R10 R9 K8 ["IsA"]
       33 CALL                             R10 2 1
       34 JUMPIFNOT                        R10 ; [+3]
       35 NAMECALL                         R10 R9 K9 ["Destroy"]
       37 CALL                             R10 1 0
       38 FORGLOOP                         R5 2 ; [-9]
       40 GETTABLEKS                       R5 R1 K10 ["Humanoid"]
       42 MOVE                             R7 R3
       43 NAMECALL                         R5 R5 K11 ["AddAccessory"]
       45 CALL                             R5 2 0
       46 NEWTABLE                         R5 0 1
       48 MOVE                             R6 R3
       49 SETLIST                          R5 R6 1 [1]
       51 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["Order"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["Order"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R1 R0 K0 ["Order"]
        9 SUBK                             R1 R1 K1 [1]
       10 SETTABLEKS                       R1 R0 K0 ["Order"]
       12 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 LOADK                            R9 K0 ["WrapLayer"]
        5 LOADB                            R10 1
        6 NAMECALL                         R7 R6 K1 ["FindFirstChildWhichIsA"]
        8 CALL                             R7 3 1
        9 JUMPIFEQKNIL                     R7 ; [+8]
       11 SETTABLEKS                       R1 R7 K2 ["Order"]
       13 GETIMPORT                        R8 K5 [task.defer]
       15 NEWCLOSURE                       R9 P0
       16 CAPTURE                          VAL R7
       17 CALL                             R8 1 0
       18 FORGLOOP                         R2 2 ; [-15]
       20 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["allItems"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+10]
        9 GETIMPORT                        R2 K2 [error]
       11 LOADK                            R4 K3 ["Couldn't getBuiltinItemDataFromId: %*"]
       12 MOVE                             R6 R0
       13 NAMECALL                         R4 R4 K4 ["format"]
       15 CALL                             R4 2 1
       16 MOVE                             R3 R4
       17 CALL                             R2 1 0
       18 JUMPIFNOTEQKNIL                  R1 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K5 ["LUAU_ANALYZE_ERROR"]
       25 FASTCALL2                        ASSERT R3 R4 ; [+3]
       27 GETIMPORT                        R2 K7 [assert]
       29 CALL                             R2 2 0
       30 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["accessories"]
        2 GETUPVAL                         R3 0
        3 SETTABLE                         R0 R2 R3
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_11:
        0 DUPTABLE                         R3 K9 [{"Key", "Items", "PreviewComponent", "PublishAssetType", "WearBuiltin", "WearInstance", "CreateCustomInstanceFromSelection", "GetBuiltinItemData", "UpdateInstances"}]
        1 SETTABLEKS                       R0 R3 K0 ["Key"]
        3 SETTABLEKS                       R2 R3 K1 ["Items"]
        5 GETUPVAL                         R4 0
        6 SETTABLEKS                       R4 R3 K2 ["PreviewComponent"]
        8 SETTABLEKS                       R1 R3 K3 ["PublishAssetType"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R4 R3 K4 ["WearBuiltin"]
       14 GETUPVAL                         R4 1
       15 SETTABLEKS                       R4 R3 K5 ["WearInstance"]
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R4 R3 K6 ["CreateCustomInstanceFromSelection"]
       22 GETUPVAL                         R4 3
       23 SETTABLEKS                       R4 R3 K7 ["GetBuiltinItemData"]
       25 GETUPVAL                         R4 4
       26 SETTABLEKS                       R4 R3 K8 ["UpdateInstances"]
       28 RETURN                           R3 1

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["classicClothing"]
        2 GETUPVAL                         R3 0
        3 SETTABLE                         R0 R2 R3
        4 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R3 K10 [{[1], ["Items"], ["PreviewComponent"], ["PublishAssetType"], ["MaxItems"] = 1, ["WearBuiltin"], ["CreateCustomInstanceFromSelection"], ["WearInstance"], ["GetBuiltinItemData"]}]
        1 SETTABLEKS                       R0 R3 K0 ["Key"]
        3 SETTABLEKS                       R2 R3 K1 ["Items"]
        5 GETUPVAL                         R4 0
        6 SETTABLEKS                       R4 R3 K2 ["PreviewComponent"]
        8 SETTABLEKS                       R1 R3 K3 ["PublishAssetType"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R4 R3 K6 ["WearBuiltin"]
       14 GETUPVAL                         R4 1
       15 SETTABLEKS                       R4 R3 K7 ["CreateCustomInstanceFromSelection"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K8 ["WearInstance"]
       20 GETUPVAL                         R4 3
       21 SETTABLEKS                       R4 R3 K9 ["GetBuiltinItemData"]
       23 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R3 R1 K0 ["clothing"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R7 K1 ["AssetType"]
        7 GETUPVAL                         R9 0
        8 JUMPIFNOTEQ                      R8 R9 ; [+11]
       10 GETTABLEKS                       R8 R1 K0 ["clothing"]
       12 DUPTABLE                         R9 K3 [{"AssetId", "AssetType"}]
       13 SETTABLEKS                       R0 R9 K2 ["AssetId"]
       15 GETUPVAL                         R10 0
       16 SETTABLEKS                       R10 R9 K1 ["AssetType"]
       18 SETTABLE                         R9 R8 R6
       19 RETURN                           R0 0
       20 FORGLOOP                         R3 2 ; [-16]
       22 GETTABLEKS                       R4 R1 K0 ["clothing"]
       24 DUPTABLE                         R5 K5 [{"AssetId", "AssetType", "Order"}]
       25 SETTABLEKS                       R0 R5 K2 ["AssetId"]
       27 GETUPVAL                         R6 0
       28 SETTABLEKS                       R6 R5 K1 ["AssetType"]
       30 SETTABLEKS                       R2 R5 K4 ["Order"]
       32 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       34 GETIMPORT                        R3 K8 [table.insert]
       36 CALL                             R3 2 0
       37 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_16:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 DUPTABLE                         R5 K10 [{"Key", "Items", "PreviewComponent", "PublishAssetType", "WearBuiltin", "CreateCustomInstanceFromSelection", "WearInstance", "UpdateInstances", "GetBuiltinItemData", "PreferredLayer"}]
        3 SETTABLEKS                       R0 R5 K0 ["Key"]
        5 SETTABLEKS                       R2 R5 K1 ["Items"]
        7 GETUPVAL                         R6 0
        8 SETTABLEKS                       R6 R5 K2 ["PreviewComponent"]
       10 SETTABLEKS                       R1 R5 K3 ["PublishAssetType"]
       12 SETTABLEKS                       R4 R5 K4 ["WearBuiltin"]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R6 R5 K5 ["CreateCustomInstanceFromSelection"]
       19 GETUPVAL                         R6 2
       20 SETTABLEKS                       R6 R5 K6 ["WearInstance"]
       22 GETUPVAL                         R6 3
       23 SETTABLEKS                       R6 R5 K7 ["UpdateInstances"]
       25 GETUPVAL                         R6 4
       26 SETTABLEKS                       R6 R5 K8 ["GetBuiltinItemData"]
       28 SETTABLEKS                       R3 R5 K9 ["PreferredLayer"]
       30 RETURN                           R5 1

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["patches"]
        2 GETUPVAL                         R3 0
        3 SETTABLE                         R0 R2 R3
        4 RETURN                           R0 0

PROTO_18:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_19:
        0 DUPTABLE                         R4 K7 [{"Key", "PreviewComponent", "Items", "WearBuiltin", "CreateCustomInstanceFromSelection", "GetBuiltinItemData", "WearInstance"}]
        1 SETTABLEKS                       R0 R4 K0 ["Key"]
        3 GETUPVAL                         R5 0
        4 SETTABLEKS                       R5 R4 K1 ["PreviewComponent"]
        6 SETTABLEKS                       R2 R4 K2 ["Items"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R5 R4 K3 ["WearBuiltin"]
       12 GETTABLEKS                       R5 R3 K4 ["CreateCustomInstanceFromSelection"]
       14 SETTABLEKS                       R5 R4 K4 ["CreateCustomInstanceFromSelection"]
       16 DUPCLOSURE                       R5 K8 [PROTO_18]
       17 SETTABLEKS                       R5 R4 K5 ["GetBuiltinItemData"]
       19 GETTABLEKS                       R5 R3 K6 ["WearInstance"]
       21 SETTABLEKS                       R5 R4 K6 ["WearInstance"]
       23 RETURN                           R4 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createBodyPalette"]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R4 K3 [Enum.AssetType]
        6 GETTABLE                         R3 R4 R0
        7 GETUPVAL                         R5 1
        8 GETTABLE                         R4 R5 R0
        9 DUPTABLE                         R5 K6 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
       10 GETUPVAL                         R6 2
       11 SETTABLEKS                       R6 R5 K4 ["CreateCustomInstanceFromSelection"]
       13 GETUPVAL                         R6 3
       14 SETTABLEKS                       R6 R5 K5 ["WearInstance"]
       16 CALL                             R1 4 -1
       17 RETURN                           R1 -1

PROTO_21:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 GETTABLE                         R12 R1 R10
       11 JUMPIFNOTEQKNIL                  R12 ; [+8]
       13 NEWTABLE                         R12 0 1
       15 MOVE                             R13 R11
       16 SETLIST                          R12 R13 1 [1]
       18 SETTABLE                         R12 R1 R10
       19 JUMP                             ; [+7]
       20 GETTABLE                         R13 R1 R10
       21 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       23 MOVE                             R14 R11
       24 GETIMPORT                        R12 K2 [table.insert]
       26 CALL                             R12 2 0
       27 FORGLOOP                         R7 2 ; [-18]
       29 FORGLOOP                         R2 2 ; [-24]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U2
       36 NEWTABLE                         R3 0 5
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K3 ["createBodyPalette"]
       41 LOADK                            R5 K4 ["Torso"]
       42 GETIMPORT                        R7 K7 [Enum.AssetType]
       44 GETTABLEKS                       R6 R7 K4 ["Torso"]
       46 GETTABLEKS                       R7 R1 K4 ["Torso"]
       48 DUPTABLE                         R8 K10 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
       49 GETUPVAL                         R9 1
       50 SETTABLEKS                       R9 R8 K8 ["CreateCustomInstanceFromSelection"]
       52 GETUPVAL                         R9 2
       53 SETTABLEKS                       R9 R8 K9 ["WearInstance"]
       55 CALL                             R4 4 1
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K3 ["createBodyPalette"]
       59 LOADK                            R6 K11 ["LeftArm"]
       60 GETIMPORT                        R8 K7 [Enum.AssetType]
       62 GETTABLEKS                       R7 R8 K11 ["LeftArm"]
       64 GETTABLEKS                       R8 R1 K11 ["LeftArm"]
       66 DUPTABLE                         R9 K10 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
       67 GETUPVAL                         R10 1
       68 SETTABLEKS                       R10 R9 K8 ["CreateCustomInstanceFromSelection"]
       70 GETUPVAL                         R10 2
       71 SETTABLEKS                       R10 R9 K9 ["WearInstance"]
       73 CALL                             R5 4 1
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R6 R6 K3 ["createBodyPalette"]
       77 LOADK                            R7 K12 ["RightArm"]
       78 GETIMPORT                        R9 K7 [Enum.AssetType]
       80 GETTABLEKS                       R8 R9 K12 ["RightArm"]
       82 GETTABLEKS                       R9 R1 K12 ["RightArm"]
       84 DUPTABLE                         R10 K10 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
       85 GETUPVAL                         R11 1
       86 SETTABLEKS                       R11 R10 K8 ["CreateCustomInstanceFromSelection"]
       88 GETUPVAL                         R11 2
       89 SETTABLEKS                       R11 R10 K9 ["WearInstance"]
       91 CALL                             R6 4 1
       92 GETUPVAL                         R7 0
       93 GETTABLEKS                       R7 R7 K3 ["createBodyPalette"]
       95 LOADK                            R8 K13 ["LeftLeg"]
       96 GETIMPORT                        R10 K7 [Enum.AssetType]
       98 GETTABLEKS                       R9 R10 K13 ["LeftLeg"]
      100 GETTABLEKS                       R10 R1 K13 ["LeftLeg"]
      102 DUPTABLE                         R11 K10 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
      103 GETUPVAL                         R12 1
      104 SETTABLEKS                       R12 R11 K8 ["CreateCustomInstanceFromSelection"]
      106 GETUPVAL                         R12 2
      107 SETTABLEKS                       R12 R11 K9 ["WearInstance"]
      109 CALL                             R7 4 1
      110 MOVE                             R8 R2
      111 LOADK                            R9 K14 ["RightLeg"]
      112 CALL                             R8 1 -1
      113 SETLIST                          R3 R4 -1 [1]
      115 RETURN                           R3 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Head"] ; [+6]
        4 LOADK                            R3 K2 ["MeshPart"]
        5 NAMECALL                         R1 R0 K3 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIF                           R1 ; [+2]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 NAMECALL                         R1 R0 K4 ["Clone"]
       13 CALL                             R1 1 1
       14 FASTCALL                         VECTOR ; [+2]
       15 GETIMPORT                        R2 K7 [Vector3.new]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K8 ["Position"]
       20 RETURN                           R1 1

PROTO_23:
        0 NAMECALL                         R2 R0 K0 ["Clone"]
        2 CALL                             R2 1 1
        3 LOADK                            R3 K1 ["Head"]
        4 SETTABLEKS                       R3 R2 K2 ["Name"]
        6 GETTABLEKS                       R3 R1 K3 ["Humanoid"]
        8 GETIMPORT                        R5 K6 [Enum.BodyPartR15.Head]
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R3 K7 ["ReplaceBodyPartR15"]
       13 CALL                             R3 3 0
       14 NEWTABLE                         R3 0 0
       16 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createBodyPalette"]
        3 LOADK                            R2 K1 ["HeadBodyPart"]
        4 GETIMPORT                        R3 K5 [Enum.AssetType.Head]
        6 MOVE                             R4 R0
        7 DUPTABLE                         R5 K8 [{"CreateCustomInstanceFromSelection", "WearInstance"}]
        8 DUPCLOSURE                       R6 K9 [PROTO_22]
        9 SETTABLEKS                       R6 R5 K6 ["CreateCustomInstanceFromSelection"]
       11 DUPCLOSURE                       R6 K10 [PROTO_23]
       12 SETTABLEKS                       R6 R5 K7 ["WearInstance"]
       14 CALL                             R1 4 -1
       15 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["AnimationId"], ["AnimateTargetAsset"], ["Style"] = "BodyPreview", ["Transparency"]}]
        5 GETTABLEKS                       R4 R0 K7 ["Item"]
        7 SETTABLEKS                       R4 R3 K1 ["AnimationId"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K8 ["BODY_PREVIEW_PATH"]
       12 SETTABLEKS                       R4 R3 K2 ["AnimateTargetAsset"]
       14 GETTABLEKS                       R4 R0 K5 ["Transparency"]
       16 SETTABLEKS                       R4 R3 K5 ["Transparency"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_26:
        0 SETTABLEKS                       R0 R1 K0 ["animation"]
        2 RETURN                           R0 0

PROTO_27:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_28:
        0 DUPTABLE                         R2 K9 [{[1], ["OverrideEquipKey"] = "animations", ["Items"], ["PreviewComponent"], ["WearBuiltin"], ["CreateCustomInstanceFromSelection"], ["GetBuiltinItemData"], ["WearInstance"]}]
        1 SETTABLEKS                       R0 R2 K0 ["Key"]
        3 SETTABLEKS                       R1 R2 K3 ["Items"]
        5 DUPCLOSURE                       R3 K10 [PROTO_25]
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 SETTABLEKS                       R3 R2 K4 ["PreviewComponent"]
       11 DUPCLOSURE                       R3 K11 [PROTO_26]
       12 SETTABLEKS                       R3 R2 K5 ["WearBuiltin"]
       14 GETUPVAL                         R3 3
       15 SETTABLEKS                       R3 R2 K6 ["CreateCustomInstanceFromSelection"]
       17 DUPCLOSURE                       R3 K12 [PROTO_27]
       18 SETTABLEKS                       R3 R2 K7 ["GetBuiltinItemData"]
       20 GETUPVAL                         R3 4
       21 SETTABLEKS                       R3 R2 K8 ["WearInstance"]
       23 RETURN                           R2 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"Item", "Transparency"}]
        5 GETTABLEKS                       R4 R0 K1 ["Item"]
        7 GETTABLEKS                       R4 R4 K4 ["right"]
        9 SETTABLEKS                       R4 R3 K1 ["Item"]
       11 GETTABLEKS                       R4 R0 K2 ["Transparency"]
       13 SETTABLEKS                       R4 R3 K2 ["Transparency"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_30:
        0 GETTABLEKS                       R4 R1 K0 ["clothing"]
        2 DUPTABLE                         R5 K4 [{"AssetId", "AssetType", "Order"}]
        3 GETTABLEKS                       R6 R0 K5 ["left"]
        5 SETTABLEKS                       R6 R5 K1 ["AssetId"]
        7 GETIMPORT                        R6 K8 [Enum.AssetType.LeftShoeAccessory]
        9 SETTABLEKS                       R6 R5 K2 ["AssetType"]
       11 SETTABLEKS                       R2 R5 K3 ["Order"]
       13 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       15 GETIMPORT                        R3 K11 [table.insert]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R4 R1 K0 ["clothing"]
       20 DUPTABLE                         R5 K4 [{"AssetId", "AssetType", "Order"}]
       21 GETTABLEKS                       R6 R0 K12 ["right"]
       23 SETTABLEKS                       R6 R5 K1 ["AssetId"]
       25 GETIMPORT                        R6 K14 [Enum.AssetType.RightShoeAccessory]
       27 SETTABLEKS                       R6 R5 K2 ["AssetType"]
       29 SETTABLEKS                       R2 R5 K3 ["Order"]
       31 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       33 GETIMPORT                        R3 K11 [table.insert]
       35 CALL                             R3 2 0
       36 RETURN                           R0 0

PROTO_31:
        0 LOADK                            R3 K0 ["Folder"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+89]
        5 NAMECALL                         R1 R0 K2 ["GetChildren"]
        7 CALL                             R1 1 1
        8 LENGTH                           R2 R1
        9 JUMPIFNOTEQKN                    R2 K3 [2] ; [+35]
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 MOVE                             R4 R1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 MOVE                             R9 R2
       18 JUMPIF                           R9 ; [+5]
       19 GETUPVAL                         R9 0
       20 MOVE                             R10 R8
       21 GETIMPORT                        R11 K7 [Enum.AssetType.LeftShoeAccessory]
       23 CALL                             R9 2 1
       24 MOVE                             R2 R9
       25 MOVE                             R9 R3
       26 JUMPIF                           R9 ; [+5]
       27 GETUPVAL                         R9 0
       28 MOVE                             R10 R8
       29 GETIMPORT                        R11 K9 [Enum.AssetType.RightShoeAccessory]
       31 CALL                             R9 2 1
       32 MOVE                             R3 R9
       33 FORGLOOP                         R4 2 ; [-17]
       35 JUMPIFEQKNIL                     R2 ; [+7]
       37 JUMPIFEQKNIL                     R3 ; [+5]
       39 NAMECALL                         R4 R0 K10 ["Clone"]
       41 CALL                             R4 1 1
       42 RETURN                           R4 1
       43 LOADK                            R4 K11 ["InvalidPair"]
       44 RETURN                           R4 1
       45 LENGTH                           R2 R1
       46 LOADN                            R3 2
       47 JUMPIFNOTLT                      R3 R2 ; [+29]
       49 LENGTH                           R2 R1
       50 LOADN                            R3 10
       51 JUMPIFNOTLT                      R2 R3 ; [+25]
       53 MOVE                             R2 R1
       54 LOADNIL                          R3
       55 LOADNIL                          R4
       56 FORGPREP                         R2
       57 GETUPVAL                         R7 0
       58 MOVE                             R8 R6
       59 GETIMPORT                        R9 K7 [Enum.AssetType.LeftShoeAccessory]
       61 CALL                             R7 2 1
       62 JUMPIFNOTEQKNIL                  R7 ; [+10]
       64 GETUPVAL                         R7 0
       65 MOVE                             R8 R6
       66 GETIMPORT                        R9 K9 [Enum.AssetType.RightShoeAccessory]
       68 CALL                             R7 2 1
       69 JUMPIFNOTEQKNIL                  R7 ; [+3]
       71 LOADNIL                          R7
       72 RETURN                           R7 1
       73 FORGLOOP                         R2 2 ; [-17]
       75 LOADK                            R2 K12 ["NeedTwoShoes"]
       76 RETURN                           R2 1
       77 LENGTH                           R2 R1
       78 JUMPIFNOTEQKN                    R2 K13 [1] ; [+13]
       80 GETUPVAL                         R2 0
       81 GETTABLEN                        R3 R1 1
       82 GETIMPORT                        R4 K7 [Enum.AssetType.LeftShoeAccessory]
       84 CALL                             R2 2 1
       85 JUMPIF                           R2 ; [+5]
       86 GETUPVAL                         R2 0
       87 GETTABLEN                        R3 R1 1
       88 GETIMPORT                        R4 K9 [Enum.AssetType.RightShoeAccessory]
       90 CALL                             R2 2 1
       91 RETURN                           R2 1
       92 LOADNIL                          R2
       93 RETURN                           R2 1
       94 GETUPVAL                         R1 0
       95 MOVE                             R2 R0
       96 GETIMPORT                        R3 K7 [Enum.AssetType.LeftShoeAccessory]
       98 CALL                             R1 2 1
       99 JUMPIF                           R1 ; [+5]
      100 GETUPVAL                         R1 0
      101 MOVE                             R2 R0
      102 GETIMPORT                        R3 K9 [Enum.AssetType.RightShoeAccessory]
      104 CALL                             R1 2 1
      105 RETURN                           R1 1

PROTO_32:
        0 LOADK                            R5 K0 ["Folder"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+26]
        5 NEWTABLE                         R3 0 0
        7 NAMECALL                         R4 R0 K2 ["GetChildren"]
        9 CALL                             R4 1 3
       10 FORGPREP                         R4
       11 LOADK                            R11 K3 ["Accessory"]
       12 NAMECALL                         R9 R8 K1 ["IsA"]
       14 CALL                             R9 2 1
       15 JUMPIFNOT                        R9 ; [+12]
       16 GETUPVAL                         R12 0
       17 MOVE                             R13 R8
       18 MOVE                             R14 R1
       19 MOVE                             R15 R2
       20 CALL                             R12 3 1
       21 GETTABLEN                        R11 R12 1
       22 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       24 MOVE                             R10 R3
       25 GETIMPORT                        R9 K6 [table.insert]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R4 2 ; [-18]
       30 RETURN                           R3 1
       31 GETUPVAL                         R3 0
       32 MOVE                             R4 R0
       33 MOVE                             R5 R1
       34 MOVE                             R6 R2
       35 CALL                             R3 3 1
       36 RETURN                           R3 1

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["left"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["allItems"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R2
        8 CALL                             R3 2 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+10]
       11 GETIMPORT                        R4 K3 [error]
       13 LOADK                            R6 K4 ["Couldn't getBuiltinItemDataFromId: %*"]
       14 MOVE                             R8 R2
       15 NAMECALL                         R6 R6 K5 ["format"]
       17 CALL                             R6 2 1
       18 MOVE                             R5 R6
       19 CALL                             R4 1 0
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K6 ["LUAU_ANALYZE_ERROR"]
       27 FASTCALL2                        ASSERT R5 R6 ; [+3]
       29 GETIMPORT                        R4 K8 [assert]
       31 CALL                             R4 2 0
       32 MOVE                             R1 R3
       33 RETURN                           R1 1

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["left"]
        2 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["left"]
        6 JUMPIFNOTEQ                      R6 R0 ; [+2]
        8 RETURN                           R5 1
        9 FORGLOOP                         R1 2 ; [-6]
       11 GETIMPORT                        R1 K2 [error]
       13 LOADK                            R3 K3 ["Invalid pair of shoes for %*"]
       14 MOVE                             R5 R0
       15 NAMECALL                         R3 R3 K4 ["format"]
       17 CALL                             R3 2 1
       18 MOVE                             R2 R3
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_36:
        0 DUPTABLE                         R1 K11 [{[1] = "Shoes", ["Items"], ["PreviewComponent"], ["WearBuiltin"], ["CreateCustomInstanceFromSelection"], ["WearInstance"], ["UpdateInstances"], ["GetBuiltinItemData"], ["Serializer"], ["PreferredLayer"]}]
        1 SETTABLEKS                       R0 R1 K2 ["Items"]
        3 DUPCLOSURE                       R2 K12 [PROTO_29]
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R2 R1 K3 ["PreviewComponent"]
        8 DUPCLOSURE                       R2 K13 [PROTO_30]
        9 SETTABLEKS                       R2 R1 K4 ["WearBuiltin"]
       11 DUPCLOSURE                       R2 K14 [PROTO_31]
       12 CAPTURE                          UPVAL U2
       13 SETTABLEKS                       R2 R1 K5 ["CreateCustomInstanceFromSelection"]
       15 DUPCLOSURE                       R2 K15 [PROTO_32]
       16 CAPTURE                          UPVAL U3
       17 SETTABLEKS                       R2 R1 K6 ["WearInstance"]
       19 GETUPVAL                         R2 4
       20 SETTABLEKS                       R2 R1 K7 ["UpdateInstances"]
       22 DUPCLOSURE                       R2 K16 [PROTO_33]
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 SETTABLEKS                       R2 R1 K8 ["GetBuiltinItemData"]
       28 DUPTABLE                         R2 K19 [{"serialize", "deserialize"}]
       29 DUPCLOSURE                       R3 K20 [PROTO_34]
       30 SETTABLEKS                       R3 R2 K17 ["serialize"]
       32 NEWCLOSURE                       R3 P6
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R3 R2 K18 ["deserialize"]
       36 SETTABLEKS                       R2 R1 K9 ["Serializer"]
       38 GETUPVAL                         R2 7
       39 GETTABLEKS                       R2 R2 K21 ["PREFERRED_LAYERS"]
       41 GETTABLEKS                       R2 R2 K1 ["Shoes"]
       43 SETTABLEKS                       R2 R1 K10 ["PreferredLayer"]
       45 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{["AnimationId"], ["AnimateTargetAsset"], ["Style"] = "FacePreview", ["Transparency"]}]
        5 GETTABLEKS                       R4 R0 K7 ["Item"]
        7 SETTABLEKS                       R4 R3 K1 ["AnimationId"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K8 ["HEAD_PREVIEW_PATH"]
       12 SETTABLEKS                       R4 R3 K2 ["AnimateTargetAsset"]
       14 GETTABLEKS                       R4 R0 K5 ["Transparency"]
       16 SETTABLEKS                       R4 R3 K5 ["Transparency"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_38:
        0 SETTABLEKS                       R0 R1 K0 ["emotion"]
        2 RETURN                           R0 0

PROTO_39:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_40:
        0 DUPTABLE                         R1 K8 [{[1] = "Emotions", ["Items"], ["PreviewComponent"], ["WearBuiltin"], ["GetBuiltinItemData"], ["CreateCustomInstanceFromSelection"], ["WearInstance"]}]
        1 SETTABLEKS                       R0 R1 K2 ["Items"]
        3 DUPCLOSURE                       R2 K9 [PROTO_37]
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 SETTABLEKS                       R2 R1 K3 ["PreviewComponent"]
        9 DUPCLOSURE                       R2 K10 [PROTO_38]
       10 SETTABLEKS                       R2 R1 K4 ["WearBuiltin"]
       12 DUPCLOSURE                       R2 K11 [PROTO_39]
       13 SETTABLEKS                       R2 R1 K5 ["GetBuiltinItemData"]
       15 GETUPVAL                         R2 3
       16 SETTABLEKS                       R2 R1 K6 ["CreateCustomInstanceFromSelection"]
       18 GETUPVAL                         R2 4
       19 SETTABLEKS                       R2 R1 K7 ["WearInstance"]
       21 RETURN                           R1 1

PROTO_41:
        0 SETTABLEKS                       R0 R1 K0 ["skinTone"]
        2 RETURN                           R0 0

PROTO_42:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_43:
        0 NEWTABLE                         R1 0 3
        2 GETTABLEKS                       R2 R0 K0 ["R"]
        4 GETTABLEKS                       R3 R0 K1 ["G"]
        6 GETTABLEKS                       R4 R0 K2 ["B"]
        8 SETLIST                          R1 R2 3 [1]
       10 RETURN                           R1 1

PROTO_44:
        0 GETIMPORT                        R1 K2 [Color3.new]
        2 GETTABLEN                        R2 R0 1
        3 GETTABLEN                        R3 R0 2
        4 GETTABLEN                        R4 R0 3
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_45:
        0 DUPTABLE                         R1 K11 [{[1] = "Skin", ["Items"], ["PreviewAspectRatio"] = 2, ["PreviewComponent"], ["CreateCustomInstanceFromSelection"], ["WearBuiltin"], ["WearInstance"], ["GetBuiltinItemData"], ["Serializer"]}]
        1 SETTABLEKS                       R0 R1 K2 ["Items"]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R1 K5 ["PreviewComponent"]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K6 ["CreateCustomInstanceFromSelection"]
        9 DUPCLOSURE                       R2 K12 [PROTO_41]
       10 SETTABLEKS                       R2 R1 K7 ["WearBuiltin"]
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K8 ["WearInstance"]
       15 DUPCLOSURE                       R2 K13 [PROTO_42]
       16 SETTABLEKS                       R2 R1 K9 ["GetBuiltinItemData"]
       18 DUPTABLE                         R2 K16 [{"serialize", "deserialize"}]
       19 DUPCLOSURE                       R3 K17 [PROTO_43]
       20 SETTABLEKS                       R3 R2 K14 ["serialize"]
       22 DUPCLOSURE                       R3 K18 [PROTO_44]
       23 SETTABLEKS                       R3 R2 K15 ["deserialize"]
       25 SETTABLEKS                       R2 R1 K10 ["Serializer"]
       27 RETURN                           R1 1

PROTO_46:
        0 GETTABLEKS                       R2 R1 K0 ["gear"]
        2 GETUPVAL                         R3 0
        3 SETTABLE                         R0 R2 R3
        4 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKS                    R2 K0 ["left"] ; [+3]
        3 LOADK                            R1 K1 ["LeftGripAttachment"]
        4 JUMP                             ; [+1]
        5 LOADK                            R1 K2 ["RightGripAttachment"]
        6 LOADK                            R4 K3 ["Accessory"]
        7 NAMECALL                         R2 R0 K4 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+26]
       11 LOADK                            R4 K5 ["Handle"]
       12 NAMECALL                         R2 R0 K6 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 JUMPIFEQKNIL                     R2 ; [+21]
       17 MOVE                             R5 R1
       18 NAMECALL                         R3 R2 K6 ["FindFirstChild"]
       20 CALL                             R3 2 1
       21 JUMPIFNOT                        R3 ; [+15]
       22 NAMECALL                         R3 R0 K7 ["Clone"]
       24 CALL                             R3 1 1
       25 JUMPIF                           R3 ; [+2]
       26 LOADNIL                          R4
       27 RETURN                           R4 1
       28 GETTABLEKS                       R4 R3 K5 ["Handle"]
       30 FASTCALL                         VECTOR ; [+2]
       31 GETIMPORT                        R5 K10 [Vector3.new]
       33 CALL                             R5 0 1
       34 SETTABLEKS                       R5 R4 K11 ["Position"]
       36 RETURN                           R3 1
       37 LOADNIL                          R2
       38 RETURN                           R2 1

PROTO_48:
        0 DUPTABLE                         R2 K9 [{"Key", "Items", "PreviewComponent", "PublishAssetType", "WearBuiltin", "WearInstance", "CreateCustomInstanceFromSelection", "GetBuiltinItemData", "UpdateInstances"}]
        1 LOADK                            R4 K10 ["Gear"]
        2 MOVE                             R5 R1
        3 CONCAT                           R3 R4 R5
        4 SETTABLEKS                       R3 R2 K0 ["Key"]
        6 SETTABLEKS                       R0 R2 K1 ["Items"]
        8 GETUPVAL                         R3 0
        9 SETTABLEKS                       R3 R2 K2 ["PreviewComponent"]
       11 GETIMPORT                        R3 K13 [Enum.AssetType.Gear]
       13 SETTABLEKS                       R3 R2 K3 ["PublishAssetType"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K4 ["WearBuiltin"]
       19 GETUPVAL                         R3 1
       20 SETTABLEKS                       R3 R2 K5 ["WearInstance"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R2 K6 ["CreateCustomInstanceFromSelection"]
       26 GETUPVAL                         R3 2
       27 SETTABLEKS                       R3 R2 K7 ["GetBuiltinItemData"]
       29 GETUPVAL                         R3 3
       30 SETTABLEKS                       R3 R2 K8 ["UpdateInstances"]
       32 RETURN                           R2 1

PROTO_49:
        0 GETTABLEKS                       R4 R1 K0 ["makeup"]
        2 DUPTABLE                         R5 K4 [{"AssetId", "AssetType", "Order"}]
        3 SETTABLEKS                       R0 R5 K1 ["AssetId"]
        5 GETUPVAL                         R6 0
        6 SETTABLEKS                       R6 R5 K2 ["AssetType"]
        8 SETTABLEKS                       R2 R5 K3 ["Order"]
       10 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       12 GETIMPORT                        R3 K7 [table.insert]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_50:
        0 LOADK                            R3 K0 ["Decal"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 LOADK                            R3 K2 ["WrapTextureTransfer"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstChildOfClass"]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+2]
       12 LOADNIL                          R1
       13 RETURN                           R1 1
       14 NAMECALL                         R1 R0 K4 ["Clone"]
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_51:
        0 NEWTABLE                         R3 0 0
        2 RETURN                           R3 1

PROTO_52:
        0 DUPTABLE                         R3 K11 [{[1], ["OverrideEquipKey"], ["MaxItems"] = 6, ["PublishAssetType"], ["Items"], ["PreviewComponent"], ["WearBuiltin"], ["CreateCustomInstanceFromSelection"], ["GetBuiltinItemData"], ["WearInstance"]}]
        1 SETTABLEKS                       R0 R3 K0 ["Key"]
        3 GETUPVAL                         R5 0
        4 CALL                             R5 0 1
        5 JUMPIFNOT                        R5 ; [+2]
        6 LOADK                            R4 K12 ["Makeup"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R4
        9 SETTABLEKS                       R4 R3 K1 ["OverrideEquipKey"]
       11 SETTABLEKS                       R1 R3 K4 ["PublishAssetType"]
       13 SETTABLEKS                       R2 R3 K5 ["Items"]
       15 GETUPVAL                         R4 1
       16 SETTABLEKS                       R4 R3 K6 ["PreviewComponent"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R4 R3 K7 ["WearBuiltin"]
       22 DUPCLOSURE                       R4 K13 [PROTO_50]
       23 SETTABLEKS                       R4 R3 K8 ["CreateCustomInstanceFromSelection"]
       25 GETUPVAL                         R4 2
       26 SETTABLEKS                       R4 R3 K9 ["GetBuiltinItemData"]
       28 DUPCLOSURE                       R4 K14 [PROTO_51]
       29 SETTABLEKS                       R4 R3 K10 ["WearInstance"]
       31 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AvatarToolsShared"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Cryo"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["AnimationPreview"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K14 ["Resources"]
       50 GETTABLEKS                       R7 R7 K15 ["BuiltinItems"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K12 ["Components"]
       59 GETTABLEKS                       R8 R8 K16 ["CatalogPreviewBasic"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K17 ["Util"]
       68 GETTABLEKS                       R9 R9 K18 ["Constants"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Src"]
       75 GETTABLEKS                       R10 R10 K12 ["Components"]
       77 GETTABLEKS                       R10 R10 K19 ["SkinPreview"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K10 ["Src"]
       84 GETTABLEKS                       R11 R11 K17 ["Util"]
       86 GETTABLEKS                       R11 R11 K20 ["find"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K10 ["Src"]
       93 GETTABLEKS                       R12 R12 K21 ["Flags"]
       95 GETTABLEKS                       R12 R12 K22 ["getFFlagAvatarPreviewerMakeupSharedLimit"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K10 ["Src"]
      102 GETTABLEKS                       R13 R13 K21 ["Flags"]
      104 GETTABLEKS                       R13 R13 K23 ["getFFlagAvatarPreviewerBoneNestedAttachmentFix"]
      106 CALL                             R12 1 1
      107 GETTABLEKS                       R13 R1 K17 ["Util"]
      109 GETTABLEKS                       R13 R13 K24 ["AccessoryAndBodyToolShared"]
      111 GETTABLEKS                       R13 R13 K25 ["AssetTypeAttachmentInfo"]
      113 NEWTABLE                         R14 16 0
      115 DUPCLOSURE                       R15 K26 [PROTO_0]
      116 DUPCLOSURE                       R16 K27 [PROTO_1]
      117 DUPCLOSURE                       R17 K28 [PROTO_3]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R13
      121 DUPCLOSURE                       R18 K29 [PROTO_4]
      122 CAPTURE                          VAL R12
      123 DUPCLOSURE                       R19 K30 [PROTO_6]
      124 DUPCLOSURE                       R20 K31 [PROTO_8]
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R8
      128 DUPCLOSURE                       R21 K32 [PROTO_11]
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R19
      134 SETTABLEKS                       R21 R14 K33 ["basicAccessoryPalette"]
      136 DUPCLOSURE                       R21 K34 [PROTO_13]
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R20
      141 SETTABLEKS                       R21 R14 K35 ["classicClothingPalette"]
      143 DUPCLOSURE                       R21 K36 [PROTO_16]
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R20
      149 SETTABLEKS                       R21 R14 K37 ["layeredClothingPalette"]
      151 DUPCLOSURE                       R21 K38 [PROTO_19]
      152 CAPTURE                          VAL R7
      153 SETTABLEKS                       R21 R14 K39 ["createBodyPalette"]
      155 DUPCLOSURE                       R21 K40 [PROTO_21]
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R16
      159 SETTABLEKS                       R21 R14 K41 ["createBodyCategory"]
      161 DUPCLOSURE                       R21 K42 [PROTO_24]
      162 CAPTURE                          VAL R14
      163 SETTABLEKS                       R21 R14 K43 ["createHeadPalette"]
      165 DUPCLOSURE                       R21 K44 [PROTO_28]
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R16
      171 SETTABLEKS                       R21 R14 K45 ["createBodyAnimationPalette"]
      173 DUPCLOSURE                       R21 K46 [PROTO_36]
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R19
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R6
      181 CAPTURE                          VAL R8
      182 SETTABLEKS                       R21 R14 K47 ["shoesPalette"]
      184 DUPCLOSURE                       R21 K48 [PROTO_40]
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R16
      190 SETTABLEKS                       R21 R14 K49 ["emotionPalette"]
      192 DUPCLOSURE                       R21 K50 [PROTO_45]
      193 CAPTURE                          VAL R9
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R16
      196 SETTABLEKS                       R21 R14 K51 ["skinPalette"]
      198 DUPCLOSURE                       R21 K52 [PROTO_48]
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R19
      203 SETTABLEKS                       R21 R14 K53 ["gearPalette"]
      205 DUPCLOSURE                       R21 K54 [PROTO_52]
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R20
      209 SETTABLEKS                       R21 R14 K55 ["createMakeupPalette"]
      211 RETURN                           R14 1
