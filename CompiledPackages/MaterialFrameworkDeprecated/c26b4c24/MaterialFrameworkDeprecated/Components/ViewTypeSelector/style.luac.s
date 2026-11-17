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
       20 DUPTABLE                         R3 K21 [{["BackgroundColor"], ["IconColor"], ["IconSize"] = 16, ["ItemSize"], ["GridIcon"] = "rbxasset://textures/MaterialFramework/Grid.png", ["ListIcon"] = "rbxasset://textures/MaterialFramework/List.png", ["Size"], ["SliderAnchorPoint"], ["SliderPosition"], ["SliderSize"]}]
       21 GETTABLEKS                       R4 R2 K22 ["Button"]
       23 SETTABLEKS                       R4 R3 K8 ["BackgroundColor"]
       25 GETTABLEKS                       R4 R2 K23 ["ButtonText"]
       27 SETTABLEKS                       R4 R3 K9 ["IconColor"]
       29 GETIMPORT                        R4 K26 [UDim2.new]
       31 LOADN                            R5 1
       32 LOADN                            R6 0
       33 LOADN                            R7 0
       34 LOADN                            R8 40
       35 CALL                             R4 4 1
       36 SETTABLEKS                       R4 R3 K12 ["ItemSize"]
       38 GETIMPORT                        R4 K28 [UDim2.fromOffset]
       40 LOADN                            R5 50
       41 LOADN                            R6 30
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K17 ["Size"]
       45 GETIMPORT                        R4 K30 [Vector2.new]
       47 LOADK                            R5 K31 [0.5]
       48 LOADK                            R6 K31 [0.5]
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R3 K18 ["SliderAnchorPoint"]
       52 GETIMPORT                        R4 K33 [UDim2.fromScale]
       54 LOADK                            R5 K31 [0.5]
       55 LOADK                            R6 K31 [0.5]
       56 CALL                             R4 2 1
       57 SETTABLEKS                       R4 R3 K19 ["SliderPosition"]
       59 GETIMPORT                        R4 K26 [UDim2.new]
       61 LOADN                            R5 1
       62 LOADN                            R6 -10
       63 LOADN                            R7 0
       64 LOADN                            R8 20
       65 CALL                             R4 4 1
       66 SETTABLEKS                       R4 R3 K20 ["SliderSize"]
       68 RETURN                           R3 1
