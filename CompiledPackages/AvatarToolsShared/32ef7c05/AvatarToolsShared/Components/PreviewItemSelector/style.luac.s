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
       20 DUPTABLE                         R3 K15 [{"EquippedIcon", "UnequippedIcon", "DefaultColor", "EquippedColor", "UnequippedColor", "MinRadius", "MaxRadius"}]
       21 LOADK                            R4 K16 ["rbxasset://textures/LayeredClothingEditor/RemoveIcon.png"]
       22 SETTABLEKS                       R4 R3 K8 ["EquippedIcon"]
       24 LOADK                            R4 K17 ["rbxasset://textures/LayeredClothingEditor/AddIcon.png"]
       25 SETTABLEKS                       R4 R3 K9 ["UnequippedIcon"]
       27 GETIMPORT                        R4 K20 [Color3.new]
       29 LOADN                            R5 1
       30 LOADN                            R6 1
       31 LOADN                            R7 1
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K10 ["DefaultColor"]
       35 GETTABLEKS                       R4 R2 K21 ["ErrorMain"]
       37 SETTABLEKS                       R4 R3 K11 ["EquippedColor"]
       39 GETTABLEKS                       R4 R2 K22 ["DialogMainButton"]
       41 SETTABLEKS                       R4 R3 K12 ["UnequippedColor"]
       43 LOADN                            R4 31
       44 SETTABLEKS                       R4 R3 K13 ["MinRadius"]
       46 LOADN                            R4 62
       47 SETTABLEKS                       R4 R3 K14 ["MaxRadius"]
       49 RETURN                           R3 1
