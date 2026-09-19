MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K12 [{"ResetCameraButton", "AxisIndicator", "Sky"}]
       17 DUPTABLE                         R3 K17 [{"Color", "Image", "Position", "Size"}]
       18 GETTABLEKS                       R4 R1 K18 ["Icon"]
       20 SETTABLEKS                       R4 R3 K13 ["Color"]
       22 GETTABLEKS                       R4 R1 K19 ["ResetCameraImage"]
       24 SETTABLEKS                       R4 R3 K14 ["Image"]
       26 GETIMPORT                        R4 K22 [UDim2.new]
       28 LOADN                            R5 1
       29 LOADN                            R6 -10
       30 LOADN                            R7 0
       31 LOADN                            R8 10
       32 CALL                             R4 4 1
       33 SETTABLEKS                       R4 R3 K15 ["Position"]
       35 GETIMPORT                        R4 K24 [UDim2.fromOffset]
       37 LOADN                            R5 28
       38 LOADN                            R6 28
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R3 K16 ["Size"]
       42 SETTABLEKS                       R3 R2 K9 ["ResetCameraButton"]
       44 DUPTABLE                         R3 K28 [{["AnchorPoint"], ["Position"], ["Size"], ["ZIndex"] = 1}]
       45 GETIMPORT                        R4 K30 [Vector2.new]
       47 LOADN                            R5 1
       48 LOADN                            R6 1
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K25 ["AnchorPoint"]
       52 GETIMPORT                        R4 K32 [UDim2.fromScale]
       54 LOADN                            R5 1
       55 LOADN                            R6 1
       56 CALL                             R4 2 1
       57 SETTABLEKS                       R4 R3 K15 ["Position"]
       59 GETIMPORT                        R4 K24 [UDim2.fromOffset]
       61 LOADN                            R5 60
       62 LOADN                            R6 60
       63 CALL                             R4 2 1
       64 SETTABLEKS                       R4 R3 K16 ["Size"]
       66 SETTABLEKS                       R3 R2 K10 ["AxisIndicator"]
       68 DUPTABLE                         R3 K44 [{["SkyboxBk"] = "rbxassetid://16358461871", ["SkyboxDn"] = "rbxassetid://16358249286", ["SkyboxFt"] = "rbxassetid://16358251874", ["SkyboxLf"] = "rbxassetid://16358461871", ["SkyboxRt"] = "rbxassetid://16358369477", ["SkyboxUp"] = "rbxassetid://16358379810"}]
       69 SETTABLEKS                       R3 R2 K11 ["Sky"]
       71 RETURN                           R2 1
