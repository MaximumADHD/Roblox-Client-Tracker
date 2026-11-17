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
       20 DUPTABLE                         R3 K19 [{["EquippedIcon"] = "rbxasset://textures/LayeredClothingEditor/RemoveIcon.png", ["UnequippedIcon"] = "rbxasset://textures/LayeredClothingEditor/AddIcon.png", ["DefaultColor"], ["EquippedColor"], ["UnequippedColor"], ["MinRadius"] = 31, ["MaxRadius"] = 62}]
       21 GETIMPORT                        R4 K22 [Color3.new]
       23 LOADN                            R5 1
       24 LOADN                            R6 1
       25 LOADN                            R7 1
       26 CALL                             R4 3 1
       27 SETTABLEKS                       R4 R3 K12 ["DefaultColor"]
       29 GETTABLEKS                       R4 R2 K23 ["ErrorMain"]
       31 SETTABLEKS                       R4 R3 K13 ["EquippedColor"]
       33 GETTABLEKS                       R4 R2 K24 ["DialogMainButton"]
       35 SETTABLEKS                       R4 R3 K14 ["UnequippedColor"]
       37 RETURN                           R3 1
