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
       16 DUPTABLE                         R2 K17 [{"ArrowImage", "ArrowSize", "ArrowColor", "DotColor", "DotImage", "DotsInset", "DotSize", "SelectedColor"}]
       17 LOADK                            R3 K18 ["rbxasset://textures/DeveloperFramework/arrow_right.png"]
       18 SETTABLEKS                       R3 R2 K9 ["ArrowImage"]
       20 GETIMPORT                        R3 K21 [UDim2.fromOffset]
       22 LOADN                            R4 20
       23 LOADN                            R5 20
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R2 K10 ["ArrowSize"]
       27 GETTABLEKS                       R3 R1 K22 ["SubText"]
       29 SETTABLEKS                       R3 R2 K11 ["ArrowColor"]
       31 GETTABLEKS                       R3 R1 K23 ["TextDisabled"]
       33 SETTABLEKS                       R3 R2 K12 ["DotColor"]
       35 LOADK                            R3 K24 ["rbxasset://textures/StudioSharedUI/dot.png"]
       36 SETTABLEKS                       R3 R2 K13 ["DotImage"]
       38 LOADN                            R3 50
       39 SETTABLEKS                       R3 R2 K14 ["DotsInset"]
       41 GETIMPORT                        R3 K21 [UDim2.fromOffset]
       43 LOADN                            R4 6
       44 LOADN                            R5 6
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K15 ["DotSize"]
       48 GETTABLEKS                       R3 R1 K25 ["TextPrimary"]
       50 SETTABLEKS                       R3 R2 K16 ["SelectedColor"]
       52 RETURN                           R2 1
