PROTO_0:
        0 GETIMPORT                        R1 K2 [table.freeze]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K11 [{[1] = "SingleAsset", ["singleAssetType"], ["intendedBundleType"] = , ["validatesSingleAssetsInBundle"] = False, ["bundleMetadataName"] = , ["bundleChecks"] = "None", ["requiresTrustedCreatorStatus"]}]
        1 SETTABLEKS                       R0 R1 K2 ["singleAssetType"]
        3 GETIMPORT                        R3 K14 [table.find]
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R0
        7 CALL                             R3 2 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 SETTABLEKS                       R2 R1 K10 ["requiresTrustedCreatorStatus"]
       14 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R0 K11 [{[1] = "AnimationPack", ["singleAssetType"] = , ["intendedBundleType"], ["validatesSingleAssetsInBundle"] = False, ["bundleMetadataName"] = , ["bundleChecks"] = "None", ["requiresTrustedCreatorStatus"] = False}]
        1 GETIMPORT                        R1 K15 [Enum.BundleType.Animations]
        3 SETTABLEKS                       R1 R0 K4 ["intendedBundleType"]
        5 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.find]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [Enum.AssetType]
        2 NAMECALL                         R1 R1 K3 ["GetEnumItems"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K4 ["Name"]
        8 JUMPIFNOTEQ                      R6 R0 ; [+2]
       10 RETURN                           R5 1
       11 FORGLOOP                         R1 2 ; [-6]
       13 LOADNIL                          R1
       14 RETURN                           R1 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 GETTABLE                         R1 R2 R0
       11 JUMPIFEQKNIL                     R1 ; [+2]
       13 RETURN                           R1 1
       14 GETIMPORT                        R3 K5 [Enum.AssetType]
       16 NAMECALL                         R3 R3 K6 ["GetEnumItems"]
       18 CALL                             R3 1 3
       19 FORGPREP                         R3
       20 GETTABLEKS                       R8 R7 K7 ["Name"]
       22 JUMPIFNOTEQ                      R8 R0 ; [+3]
       24 MOVE                             R2 R7
       25 JUMP                             ; [+3]
       26 FORGLOOP                         R3 2 ; [-7]
       28 LOADNIL                          R2
       29 JUMPIFNOTEQKNIL                  R2 ; [+3]
       31 LOADNIL                          R3
       32 RETURN                           R3 1
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K8 ["createSingleAssetProfile"]
       36 MOVE                             R4 R2
       37 CALL                             R3 1 -1
       38 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 NEWTABLE                         R1 0 4
        5 LOADK                            R2 K0 ["Body"]
        6 LOADK                            R3 K1 ["DynamicHead"]
        7 LOADK                            R4 K2 ["Shoes"]
        8 LOADK                            R5 K3 ["AvatarAnimations"]
        9 SETLIST                          R1 R2 4 [1]
       11 SETTABLEKS                       R1 R0 K4 ["BUNDLE_TYPE_NAMES"]
       13 DUPCLOSURE                       R1 K5 [PROTO_0]
       14 DUPTABLE                         R2 K6 [{"Body", "DynamicHead", "Shoes", "AvatarAnimations"}]
       15 DUPTABLE                         R4 K18 [{["inputLayout"] = "BodyBundle", ["singleAssetType"] = , ["intendedBundleType"], ["validatesSingleAssetsInBundle"] = True, ["bundleMetadataName"] = "Body", ["bundleChecks"] = "Body", ["requiresTrustedCreatorStatus"] = False}]
       16 GETIMPORT                        R5 K22 [Enum.BundleType.BodyParts]
       18 SETTABLEKS                       R5 R4 K11 ["intendedBundleType"]
       20 GETIMPORT                        R5 K25 [table.freeze]
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 MOVE                             R3 R5
       25 SETTABLEKS                       R3 R2 K0 ["Body"]
       27 DUPTABLE                         R4 K27 [{["inputLayout"] = "BodyBundle", ["singleAssetType"] = , ["intendedBundleType"] = , ["validatesSingleAssetsInBundle"] = False, ["bundleMetadataName"] = "DynamicHead", ["bundleChecks"] = "RequiredPieces", ["requiresTrustedCreatorStatus"] = False}]
       28 GETIMPORT                        R5 K25 [table.freeze]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 1
       32 MOVE                             R3 R5
       33 SETTABLEKS                       R3 R2 K1 ["DynamicHead"]
       35 DUPTABLE                         R4 K29 [{["inputLayout"] = "Shoes", ["singleAssetType"] = , ["intendedBundleType"] = , ["validatesSingleAssetsInBundle"] = False, ["bundleMetadataName"] = , ["bundleChecks"] = "None", ["requiresTrustedCreatorStatus"] = False}]
       36 GETIMPORT                        R5 K25 [table.freeze]
       38 MOVE                             R6 R4
       39 CALL                             R5 1 1
       40 MOVE                             R3 R5
       41 SETTABLEKS                       R3 R2 K2 ["Shoes"]
       43 DUPTABLE                         R4 K30 [{["inputLayout"] = "AvatarAnimations", ["singleAssetType"] = , ["intendedBundleType"] = , ["validatesSingleAssetsInBundle"] = False, ["bundleMetadataName"] = , ["bundleChecks"] = "None", ["requiresTrustedCreatorStatus"] = False}]
       44 GETIMPORT                        R5 K25 [table.freeze]
       46 MOVE                             R6 R4
       47 CALL                             R5 1 1
       48 MOVE                             R3 R5
       49 SETTABLEKS                       R3 R2 K3 ["AvatarAnimations"]
       51 GETIMPORT                        R3 K25 [table.freeze]
       53 NEWTABLE                         R4 0 8
       55 GETIMPORT                        R5 K33 [Enum.AssetType.EmoteAnimation]
       57 GETIMPORT                        R6 K35 [Enum.AssetType.ClimbAnimation]
       59 GETIMPORT                        R7 K37 [Enum.AssetType.FallAnimation]
       61 GETIMPORT                        R8 K39 [Enum.AssetType.IdleAnimation]
       63 GETIMPORT                        R9 K41 [Enum.AssetType.JumpAnimation]
       65 GETIMPORT                        R10 K43 [Enum.AssetType.RunAnimation]
       67 GETIMPORT                        R11 K45 [Enum.AssetType.SwimAnimation]
       69 GETIMPORT                        R12 K47 [Enum.AssetType.WalkAnimation]
       71 SETLIST                          R4 R5 8 [1]
       73 CALL                             R3 1 1
       74 DUPCLOSURE                       R4 K48 [PROTO_1]
       75 CAPTURE                          VAL R3
       76 SETTABLEKS                       R4 R0 K49 ["createSingleAssetProfile"]
       78 DUPCLOSURE                       R4 K50 [PROTO_2]
       79 SETTABLEKS                       R4 R0 K51 ["createAnimationPackProfile"]
       81 GETIMPORT                        R4 K25 [table.freeze]
       83 NEWTABLE                         R5 0 9
       85 GETIMPORT                        R6 K53 [Enum.AssetType.Model]
       87 GETIMPORT                        R7 K55 [Enum.AssetType.Decal]
       89 GETIMPORT                        R8 K57 [Enum.AssetType.Mesh]
       91 GETIMPORT                        R9 K59 [Enum.AssetType.MeshPart]
       93 GETIMPORT                        R10 K61 [Enum.AssetType.Audio]
       95 GETIMPORT                        R11 K63 [Enum.AssetType.Animation]
       97 GETIMPORT                        R12 K65 [Enum.AssetType.Video]
       99 GETIMPORT                        R13 K67 [Enum.AssetType.Plugin]
      101 GETIMPORT                        R14 K69 [Enum.AssetType.Package]
      103 SETLIST                          R5 R6 9 [1]
      105 CALL                             R4 1 1
      106 DUPCLOSURE                       R5 K70 [PROTO_3]
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R5 R0 K71 ["isUnvalidatedMarketplaceAssetType"]
      110 DUPCLOSURE                       R5 K72 [PROTO_4]
      111 DUPCLOSURE                       R6 K73 [PROTO_5]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R6 R0 K74 ["parse"]
      116 RETURN                           R0 1
