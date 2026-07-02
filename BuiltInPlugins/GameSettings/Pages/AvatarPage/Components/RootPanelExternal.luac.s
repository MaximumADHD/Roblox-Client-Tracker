PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createBinding"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 SETTABLEKS                       R1 R0 K1 ["absoluteSizeChange"]
        7 SETTABLEKS                       R2 R0 K2 ["updateAbsoluteSizeChange"]
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateAbsoluteSizeChange"]
        3 GETTABLEKS                       R2 R0 K1 ["AbsoluteContentSize"]
        5 GETTABLEKS                       R2 R2 K2 ["y"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"templates"}]
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K2 ["fromUniverseData"]
        6 GETTABLEKS                       R4 R0 K3 ["props"]
        8 CALL                             R3 1 -1
        9 SETLIST                          R2 R3 -1 [1]
       11 SETTABLEKS                       R2 R1 K0 ["templates"]
       13 GETTABLEKS                       R2 R0 K3 ["props"]
       15 GETTABLEKS                       R2 R2 K4 ["ThemeData"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K5 ["createElement"]
       20 LOADK                            R4 K6 ["Frame"]
       21 DUPTABLE                         R5 K12 [{["Size"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1}]
       22 GETTABLEKS                       R6 R0 K13 ["absoluteSizeChange"]
       24 DUPCLOSURE                       R8 K14 [PROTO_1]
       25 NAMECALL                         R6 R6 K15 ["map"]
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K7 ["Size"]
       30 NEWTABLE                         R6 0 2
       32 GETUPVAL                         R7 1
       33 GETTABLEKS                       R7 R7 K5 ["createElement"]
       35 LOADK                            R8 K16 ["UIListLayout"]
       36 NEWTABLE                         R9 1 0
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K17 ["Change"]
       41 GETTABLEKS                       R10 R10 K18 ["AbsoluteContentSize"]
       43 NEWCLOSURE                       R11 P1
       44 CAPTURE                          VAL R0
       45 SETTABLE                         R11 R9 R10
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K5 ["createElement"]
       50 GETUPVAL                         R9 2
       51 DUPTABLE                         R10 K26 [{"ThemeData", "StateTemplates", "IsEnabled", "IsGameShutdownRequired", "AssetOverrideErrors", "Mouse", "IsPlacePublished", "clobberTemplate"}]
       52 DUPTABLE                         R11 K28 [{"theme"}]
       53 SETTABLEKS                       R2 R11 K27 ["theme"]
       55 SETTABLEKS                       R11 R10 K4 ["ThemeData"]
       57 SETTABLEKS                       R1 R10 K19 ["StateTemplates"]
       59 GETTABLEKS                       R11 R0 K3 ["props"]
       61 GETTABLEKS                       R11 R11 K20 ["IsEnabled"]
       63 SETTABLEKS                       R11 R10 K20 ["IsEnabled"]
       65 GETTABLEKS                       R11 R0 K3 ["props"]
       67 GETTABLEKS                       R11 R11 K21 ["IsGameShutdownRequired"]
       69 SETTABLEKS                       R11 R10 K21 ["IsGameShutdownRequired"]
       71 GETTABLEKS                       R11 R0 K3 ["props"]
       73 GETTABLEKS                       R11 R11 K22 ["AssetOverrideErrors"]
       75 SETTABLEKS                       R11 R10 K22 ["AssetOverrideErrors"]
       77 GETTABLEKS                       R11 R0 K3 ["props"]
       79 GETTABLEKS                       R11 R11 K23 ["Mouse"]
       81 SETTABLEKS                       R11 R10 K23 ["Mouse"]
       83 GETTABLEKS                       R11 R0 K3 ["props"]
       85 GETTABLEKS                       R11 R11 K24 ["IsPlacePublished"]
       87 SETTABLEKS                       R11 R10 K24 ["IsPlacePublished"]
       89 NEWCLOSURE                       R11 P2
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R0
       92 SETTABLEKS                       R11 R10 K25 ["clobberTemplate"]
       94 CALL                             R8 2 -1
       95 SETLIST                          R6 R7 -1 [1]
       97 CALL                             R3 3 -1
       98 RETURN                           R3 -1

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+86]
        1 GETTABLEKS                       R2 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["IsEnabled"]
        5 JUMPIFNOT                        R2 ; [+81]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["fromUniverseData"]
        9 GETTABLEKS                       R3 R0 K0 ["props"]
       11 CALL                             R2 1 1
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R1 K3 ["isAvatarTypeEqualTo"]
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+7]
       17 GETTABLEKS                       R3 R0 K0 ["props"]
       19 GETTABLEKS                       R3 R3 K4 ["OnAvatarTypeChanged"]
       21 GETTABLEKS                       R4 R1 K5 ["RigTypeValue"]
       23 CALL                             R3 1 0
       24 MOVE                             R5 R2
       25 NAMECALL                         R3 R1 K6 ["isAnimationEqualTo"]
       27 CALL                             R3 2 1
       28 JUMPIF                           R3 ; [+7]
       29 GETTABLEKS                       R3 R0 K0 ["props"]
       31 GETTABLEKS                       R3 R3 K7 ["OnAvatarAnimationChanged"]
       33 GETTABLEKS                       R4 R1 K8 ["AnimationValue"]
       35 CALL                             R3 1 0
       36 MOVE                             R5 R2
       37 NAMECALL                         R3 R1 K9 ["isCollisionEqualTo"]
       39 CALL                             R3 2 1
       40 JUMPIF                           R3 ; [+7]
       41 GETTABLEKS                       R3 R0 K0 ["props"]
       43 GETTABLEKS                       R3 R3 K10 ["OnAvatarCollisionChanged"]
       45 GETTABLEKS                       R4 R1 K11 ["CollisionValue"]
       47 CALL                             R3 1 0
       48 MOVE                             R5 R2
       49 NAMECALL                         R3 R1 K12 ["areAssetsEqualTo"]
       51 CALL                             R3 2 1
       52 JUMPIF                           R3 ; [+8]
       53 GETTABLEKS                       R3 R0 K0 ["props"]
       55 GETTABLEKS                       R3 R3 K13 ["OnAvatarAssetOverridesChanged"]
       57 NAMECALL                         R4 R1 K14 ["extractAssetOverridesForSaving"]
       59 CALL                             R4 1 -1
       60 CALL                             R3 -1 0
       61 MOVE                             R5 R2
       62 NAMECALL                         R3 R1 K15 ["areMinScalesEqualTo"]
       64 CALL                             R3 2 1
       65 JUMPIF                           R3 ; [+8]
       66 GETTABLEKS                       R3 R0 K0 ["props"]
       68 GETTABLEKS                       R3 R3 K16 ["OnAvatarScalingMinChanged"]
       70 NAMECALL                         R4 R1 K17 ["extractScalingMinForSaving"]
       72 CALL                             R4 1 -1
       73 CALL                             R3 -1 0
       74 MOVE                             R5 R2
       75 NAMECALL                         R3 R1 K18 ["areMaxScalesEqualTo"]
       77 CALL                             R3 2 1
       78 JUMPIF                           R3 ; [+8]
       79 GETTABLEKS                       R3 R0 K0 ["props"]
       81 GETTABLEKS                       R3 R3 K19 ["OnAvatarScalingMaxChanged"]
       83 NAMECALL                         R4 R1 K20 ["extractScalingMaxForSaving"]
       85 CALL                             R4 1 -1
       86 CALL                             R3 -1 0
       87 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R0 K7 ["Util"]
       28 GETTABLEKS                       R4 R4 K8 ["StateModelTemplate"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K9 ["Components"]
       35 GETTABLEKS                       R5 R5 K10 ["MorpherTemplateContainer"]
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R5 R2 K11 ["Component"]
       40 LOADK                            R7 K12 ["ComponentRootPanelExternal"]
       41 NAMECALL                         R5 R5 K13 ["extend"]
       43 CALL                             R5 2 1
       44 LOADNIL                          R6
       45 DUPCLOSURE                       R7 K14 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R7 R5 K15 ["init"]
       49 NEWCLOSURE                       R7 P1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          REF R6
       54 SETTABLEKS                       R7 R5 K16 ["render"]
       56 DUPCLOSURE                       R6 K17 [PROTO_5]
       57 CAPTURE                          VAL R3
       58 CLOSEUPVALS                      R6
       59 RETURN                           R5 1
