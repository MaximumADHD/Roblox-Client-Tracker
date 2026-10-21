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
       16 DUPTABLE                         R2 K19 [{["Color"], ["Image"] = "rbxasset://textures/StudioSharedUI/dropShadow.png", ["ImageSize"] = 16, ["Offset"], ["Radius"] = 6, ["Transparency"] = 0}]
       17 GETTABLEKS                       R3 R1 K20 ["Border"]
       19 SETTABLEKS                       R3 R2 K9 ["Color"]
       21 GETIMPORT                        R3 K23 [Vector2.new]
       23 CALL                             R3 0 1
       24 SETTABLEKS                       R3 R2 K14 ["Offset"]
       26 RETURN                           R2 1
