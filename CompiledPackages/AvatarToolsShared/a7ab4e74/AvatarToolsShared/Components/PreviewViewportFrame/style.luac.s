MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K6 ["Style"]
       18 GETTABLEKS                       R2 R2 K7 ["StyleKey"]
       20 DUPTABLE                         R3 K25 [{["BackgroundColor"], ["PopoutButtonSize"] = 48, ["PopoutButtonOffset"] = 12, ["IconSize"] = 28, ["Icon"] = "rbxasset://textures/AvatarToolsShared/Preview Undock.png", ["RecenterIcon"] = "rbxasset://textures/LayeredClothingEditor/WorkspaceIcons/Center Camera to Mannequin.png", ["LayerOrderManagerSize"], ["LayerOrderManagerPosition"], ["LayerOrderManagerAnchorPoint"], ["PreviewAvatarWheelSize"], ["PreviewAvatarWheelPosition"], ["PreviewAvatarWheelAnchorPoint"]}]
       21 GETTABLEKS                       R4 R2 K26 ["SubBackground"]
       23 SETTABLEKS                       R4 R3 K8 ["BackgroundColor"]
       25 GETIMPORT                        R4 K29 [UDim2.fromOffset]
       27 LOADN                            R5 42
       28 LOADN                            R6 210
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K19 ["LayerOrderManagerSize"]
       32 GETIMPORT                        R4 K31 [UDim2.new]
       34 LOADN                            R5 1
       35 LOADN                            R6 -10
       36 LOADN                            R7 0
       37 LOADN                            R8 10
       38 CALL                             R4 4 1
       39 SETTABLEKS                       R4 R3 K20 ["LayerOrderManagerPosition"]
       41 GETIMPORT                        R4 K33 [Vector2.new]
       43 LOADN                            R5 1
       44 LOADN                            R6 0
       45 CALL                             R4 2 1
       46 SETTABLEKS                       R4 R3 K21 ["LayerOrderManagerAnchorPoint"]
       48 GETIMPORT                        R4 K29 [UDim2.fromOffset]
       50 LOADN                            R5 144
       51 LOADN                            R6 48
       52 CALL                             R4 2 1
       53 SETTABLEKS                       R4 R3 K22 ["PreviewAvatarWheelSize"]
       55 GETIMPORT                        R4 K31 [UDim2.new]
       57 LOADK                            R5 K34 [0.5]
       58 LOADN                            R6 0
       59 LOADN                            R7 1
       60 LOADN                            R8 -10
       61 CALL                             R4 4 1
       62 SETTABLEKS                       R4 R3 K23 ["PreviewAvatarWheelPosition"]
       64 GETIMPORT                        R4 K33 [Vector2.new]
       66 LOADK                            R5 K34 [0.5]
       67 LOADN                            R6 1
       68 CALL                             R4 2 1
       69 SETTABLEKS                       R4 R3 K24 ["PreviewAvatarWheelAnchorPoint"]
       71 RETURN                           R3 1
