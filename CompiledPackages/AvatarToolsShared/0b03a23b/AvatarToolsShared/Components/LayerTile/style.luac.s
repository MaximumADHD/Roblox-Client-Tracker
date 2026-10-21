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
       16 GETTABLEKS                       R2 R1 K6 ["UI"]
       18 GETTABLEKS                       R3 R1 K7 ["Style"]
       20 GETTABLEKS                       R3 R3 K8 ["StyleKey"]
       22 GETTABLEKS                       R4 R1 K9 ["Util"]
       24 GETTABLEKS                       R5 R4 K10 ["StyleModifier"]
       26 GETIMPORT                        R6 K13 [Rect.new]
       28 LOADN                            R7 3
       29 LOADN                            R8 3
       30 LOADN                            R9 13
       31 LOADN                            R10 13
       32 CALL                             R6 4 1
       33 DUPTABLE                         R7 K15 [{"paneStyle"}]
       34 NEWTABLE                         R8 8 0
       36 GETTABLEKS                       R9 R3 K16 ["MainBackground"]
       38 SETTABLEKS                       R9 R8 K17 ["Background"]
       40 LOADK                            R9 K18 ["rbxasset://textures/StudioToolbox/RoundedBackground.png"]
       41 SETTABLEKS                       R9 R8 K19 ["Image"]
       43 SETTABLEKS                       R6 R8 K20 ["SliceCenter"]
       45 DUPTABLE                         R9 K22 [{["Background"], ["Image"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png", ["SliceCenter"]}]
       46 GETTABLEKS                       R10 R3 K23 ["Border"]
       48 SETTABLEKS                       R10 R9 K17 ["Background"]
       50 SETTABLEKS                       R6 R9 K20 ["SliceCenter"]
       52 SETTABLEKS                       R9 R8 K23 ["Border"]
       54 GETTABLEKS                       R9 R5 K24 ["Selected"]
       56 DUPTABLE                         R10 K25 [{["Background"], ["Image"] = "rbxasset://textures/StudioToolbox/RoundedBackground.png", ["SliceCenter"], ["Border"]}]
       57 GETTABLEKS                       R11 R3 K26 ["DialogMainButton"]
       59 SETTABLEKS                       R11 R10 K17 ["Background"]
       61 SETTABLEKS                       R6 R10 K20 ["SliceCenter"]
       63 DUPTABLE                         R11 K22 [{["Background"], ["Image"] = "rbxasset://textures/StudioToolbox/RoundedBorder.png", ["SliceCenter"]}]
       64 GETTABLEKS                       R12 R3 K27 ["Light"]
       66 SETTABLEKS                       R12 R11 K17 ["Background"]
       68 SETTABLEKS                       R6 R11 K20 ["SliceCenter"]
       70 SETTABLEKS                       R11 R10 K23 ["Border"]
       72 SETTABLE                         R10 R8 R9
       73 SETTABLEKS                       R8 R7 K14 ["paneStyle"]
       75 RETURN                           R7 1
