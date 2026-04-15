MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K6 ["Style"]
       18 GETTABLEKS                       R2 R3 K7 ["StyleKey"]
       20 DUPTABLE                         R3 K18 [{"BackgroundColor", "IconColor", "IconSize", "ItemSize", "GridIcon", "ListIcon", "Size", "SliderAnchorPoint", "SliderPosition", "SliderSize"}]
       21 GETTABLEKS                       R4 R2 K19 ["Button"]
       23 SETTABLEKS                       R4 R3 K8 ["BackgroundColor"]
       25 GETTABLEKS                       R4 R2 K20 ["ButtonText"]
       27 SETTABLEKS                       R4 R3 K9 ["IconColor"]
       29 LOADN                            R4 16
       30 SETTABLEKS                       R4 R3 K10 ["IconSize"]
       32 GETIMPORT                        R4 K23 [UDim2.new]
       34 LOADN                            R5 1
       35 LOADN                            R6 0
       36 LOADN                            R7 0
       37 LOADN                            R8 40
       38 CALL                             R4 4 1
       39 SETTABLEKS                       R4 R3 K11 ["ItemSize"]
       41 LOADK                            R4 K24 ["rbxasset://textures/MaterialFramework/Grid.png"]
       42 SETTABLEKS                       R4 R3 K12 ["GridIcon"]
       44 LOADK                            R4 K25 ["rbxasset://textures/MaterialFramework/List.png"]
       45 SETTABLEKS                       R4 R3 K13 ["ListIcon"]
       47 GETIMPORT                        R4 K27 [UDim2.fromOffset]
       49 LOADN                            R5 50
       50 LOADN                            R6 30
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K14 ["Size"]
       54 GETIMPORT                        R4 K29 [Vector2.new]
       56 LOADK                            R5 K30 [0.5]
       57 LOADK                            R6 K30 [0.5]
       58 CALL                             R4 2 1
       59 SETTABLEKS                       R4 R3 K15 ["SliderAnchorPoint"]
       61 GETIMPORT                        R4 K32 [UDim2.fromScale]
       63 LOADK                            R5 K30 [0.5]
       64 LOADK                            R6 K30 [0.5]
       65 CALL                             R4 2 1
       66 SETTABLEKS                       R4 R3 K16 ["SliderPosition"]
       68 GETIMPORT                        R4 K23 [UDim2.new]
       70 LOADN                            R5 1
       71 LOADN                            R6 246
       72 LOADN                            R7 0
       73 LOADN                            R8 20
       74 CALL                             R4 4 1
       75 SETTABLEKS                       R4 R3 K17 ["SliderSize"]
       77 RETURN                           R3 1
