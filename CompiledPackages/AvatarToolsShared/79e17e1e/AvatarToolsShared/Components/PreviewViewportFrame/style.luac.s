MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K6 ["Style"]
       18 GETTABLEKS                       R2 R3 K7 ["StyleKey"]
       20 DUPTABLE                         R3 K20 [{"BackgroundColor", "PopoutButtonSize", "PopoutButtonOffset", "IconSize", "Icon", "RecenterIcon", "LayerOrderManagerSize", "LayerOrderManagerPosition", "LayerOrderManagerAnchorPoint", "PreviewAvatarWheelSize", "PreviewAvatarWheelPosition", "PreviewAvatarWheelAnchorPoint"}]
       21 GETTABLEKS                       R4 R2 K21 ["SubBackground"]
       23 SETTABLEKS                       R4 R3 K8 ["BackgroundColor"]
       25 LOADN                            R4 48
       26 SETTABLEKS                       R4 R3 K9 ["PopoutButtonSize"]
       28 LOADN                            R4 12
       29 SETTABLEKS                       R4 R3 K10 ["PopoutButtonOffset"]
       31 LOADN                            R4 28
       32 SETTABLEKS                       R4 R3 K11 ["IconSize"]
       34 LOADK                            R4 K22 ["rbxasset://textures/AvatarToolsShared/Preview Undock.png"]
       35 SETTABLEKS                       R4 R3 K12 ["Icon"]
       37 LOADK                            R4 K23 ["rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Center Camera to Mannequin.png"]
       38 SETTABLEKS                       R4 R3 K13 ["RecenterIcon"]
       40 GETIMPORT                        R4 K26 [UDim2.fromOffset]
       42 LOADN                            R5 42
       43 LOADN                            R6 210
       44 CALL                             R4 2 1
       45 SETTABLEKS                       R4 R3 K14 ["LayerOrderManagerSize"]
       47 GETIMPORT                        R4 K28 [UDim2.new]
       49 LOADN                            R5 1
       50 LOADN                            R6 246
       51 LOADN                            R7 0
       52 LOADN                            R8 10
       53 CALL                             R4 4 1
       54 SETTABLEKS                       R4 R3 K15 ["LayerOrderManagerPosition"]
       56 GETIMPORT                        R4 K30 [Vector2.new]
       58 LOADN                            R5 1
       59 LOADN                            R6 0
       60 CALL                             R4 2 1
       61 SETTABLEKS                       R4 R3 K16 ["LayerOrderManagerAnchorPoint"]
       63 GETIMPORT                        R4 K26 [UDim2.fromOffset]
       65 LOADN                            R5 144
       66 LOADN                            R6 48
       67 CALL                             R4 2 1
       68 SETTABLEKS                       R4 R3 K17 ["PreviewAvatarWheelSize"]
       70 GETIMPORT                        R4 K28 [UDim2.new]
       72 LOADK                            R5 K31 [0.5]
       73 LOADN                            R6 0
       74 LOADN                            R7 1
       75 LOADN                            R8 246
       76 CALL                             R4 4 1
       77 SETTABLEKS                       R4 R3 K18 ["PreviewAvatarWheelPosition"]
       79 GETIMPORT                        R4 K30 [Vector2.new]
       81 LOADK                            R5 K31 [0.5]
       82 LOADN                            R6 1
       83 CALL                             R4 2 1
       84 SETTABLEKS                       R4 R3 K19 ["PreviewAvatarWheelAnchorPoint"]
       86 RETURN                           R3 1
