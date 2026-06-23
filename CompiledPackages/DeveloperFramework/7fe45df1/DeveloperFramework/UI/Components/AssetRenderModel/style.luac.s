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
       29 LOADN                            R6 246
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
       44 DUPTABLE                         R3 K27 [{"AnchorPoint", "Position", "Size", "ZIndex"}]
       45 GETIMPORT                        R4 K29 [Vector2.new]
       47 LOADN                            R5 1
       48 LOADN                            R6 1
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K25 ["AnchorPoint"]
       52 GETIMPORT                        R4 K31 [UDim2.fromScale]
       54 LOADN                            R5 1
       55 LOADN                            R6 1
       56 CALL                             R4 2 1
       57 SETTABLEKS                       R4 R3 K15 ["Position"]
       59 GETIMPORT                        R4 K24 [UDim2.fromOffset]
       61 LOADN                            R5 60
       62 LOADN                            R6 60
       63 CALL                             R4 2 1
       64 SETTABLEKS                       R4 R3 K16 ["Size"]
       66 LOADN                            R4 1
       67 SETTABLEKS                       R4 R3 K26 ["ZIndex"]
       69 SETTABLEKS                       R3 R2 K10 ["AxisIndicator"]
       71 DUPTABLE                         R3 K38 [{"SkyboxBk", "SkyboxDn", "SkyboxFt", "SkyboxLf", "SkyboxRt", "SkyboxUp"}]
       72 LOADK                            R4 K39 ["rbxassetid://16358461871"]
       73 SETTABLEKS                       R4 R3 K32 ["SkyboxBk"]
       75 LOADK                            R4 K40 ["rbxassetid://16358249286"]
       76 SETTABLEKS                       R4 R3 K33 ["SkyboxDn"]
       78 LOADK                            R4 K41 ["rbxassetid://16358251874"]
       79 SETTABLEKS                       R4 R3 K34 ["SkyboxFt"]
       81 LOADK                            R4 K39 ["rbxassetid://16358461871"]
       82 SETTABLEKS                       R4 R3 K35 ["SkyboxLf"]
       84 LOADK                            R4 K42 ["rbxassetid://16358369477"]
       85 SETTABLEKS                       R4 R3 K36 ["SkyboxRt"]
       87 LOADK                            R4 K43 ["rbxassetid://16358379810"]
       88 SETTABLEKS                       R4 R3 K37 ["SkyboxUp"]
       90 SETTABLEKS                       R3 R2 K11 ["Sky"]
       92 RETURN                           R2 1
