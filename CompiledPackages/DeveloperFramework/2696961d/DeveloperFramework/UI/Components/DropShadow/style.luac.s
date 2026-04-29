MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K15 [{"Color", "Image", "ImageSize", "Offset", "Radius", "Transparency"}]
       17 GETTABLEKS                       R3 R1 K16 ["Border"]
       19 SETTABLEKS                       R3 R2 K9 ["Color"]
       21 LOADK                            R3 K17 ["rbxasset://textures/StudioSharedUI/dropShadow.png"]
       22 SETTABLEKS                       R3 R2 K10 ["Image"]
       24 LOADN                            R3 16
       25 SETTABLEKS                       R3 R2 K11 ["ImageSize"]
       27 GETIMPORT                        R3 K20 [Vector2.new]
       29 CALL                             R3 0 1
       30 SETTABLEKS                       R3 R2 K12 ["Offset"]
       32 LOADN                            R3 6
       33 SETTABLEKS                       R3 R2 K13 ["Radius"]
       35 LOADN                            R3 0
       36 SETTABLEKS                       R3 R2 K14 ["Transparency"]
       38 RETURN                           R2 1
