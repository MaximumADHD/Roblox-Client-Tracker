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
       16 DUPTABLE                         R2 K20 [{["ArrowImage"] = "rbxasset://textures/DeveloperFramework/arrow_right.png", ["ArrowSize"], ["ArrowColor"], ["DotColor"], ["DotImage"] = "rbxasset://textures/StudioSharedUI/dot.png", ["DotsInset"] = 50, ["DotSize"], ["SelectedColor"]}]
       17 GETIMPORT                        R3 K23 [UDim2.fromOffset]
       19 LOADN                            R4 20
       20 LOADN                            R5 20
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R2 K11 ["ArrowSize"]
       24 GETTABLEKS                       R3 R1 K24 ["SubText"]
       26 SETTABLEKS                       R3 R2 K12 ["ArrowColor"]
       28 GETTABLEKS                       R3 R1 K25 ["TextDisabled"]
       30 SETTABLEKS                       R3 R2 K13 ["DotColor"]
       32 GETIMPORT                        R3 K23 [UDim2.fromOffset]
       34 LOADN                            R4 6
       35 LOADN                            R5 6
       36 CALL                             R3 2 1
       37 SETTABLEKS                       R3 R2 K18 ["DotSize"]
       39 GETTABLEKS                       R3 R1 K26 ["TextPrimary"]
       41 SETTABLEKS                       R3 R2 K19 ["SelectedColor"]
       43 RETURN                           R2 1
