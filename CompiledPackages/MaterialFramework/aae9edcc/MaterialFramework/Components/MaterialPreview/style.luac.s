MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Framework"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R4 R2 K6 ["Style"]
       18 GETTABLEKS                       R3 R4 K7 ["StyleKey"]
       20 NEWTABLE                         R4 16 0
       22 GETTABLEKS                       R5 R3 K8 ["ScrollBarBackground"]
       24 SETTABLEKS                       R5 R4 K9 ["BackgroundColor"]
       26 LOADK                            R5 K10 [6.3]
       27 SETTABLEKS                       R5 R4 K11 ["InitialDistance"]
       29 GETIMPORT                        R5 K14 [Color3.fromRGB]
       31 LOADN                            R6 120
       32 LOADN                            R7 120
       33 LOADN                            R8 135
       34 CALL                             R5 3 1
       35 SETTABLEKS                       R5 R4 K15 ["Ambient"]
       37 GETIMPORT                        R5 K14 [Color3.fromRGB]
       39 LOADN                            R6 120
       40 LOADN                            R7 120
       41 LOADN                            R8 135
       42 CALL                             R5 3 1
       43 SETTABLEKS                       R5 R4 K16 ["AmbientColor"]
       45 GETIMPORT                        R5 K14 [Color3.fromRGB]
       47 LOADN                            R6 60
       48 LOADN                            R7 60
       49 LOADN                            R8 75
       50 CALL                             R5 3 1
       51 SETTABLEKS                       R5 R4 K17 ["LightColor"]
       53 LOADK                            R5 K18 [{10, -10, 10}]
       54 SETTABLEKS                       R5 R4 K19 ["LightDirection"]
       56 LOADB                            R5 1
       57 SETTABLEKS                       R5 R4 K20 ["RecenterModelOnUpdate"]
       59 LOADB                            R5 1
       60 SETTABLEKS                       R5 R4 K21 ["Use2022Materials"]
       62 DUPTABLE                         R5 K23 [{"CornerRadius"}]
       63 GETIMPORT                        R6 K26 [UDim.new]
       65 LOADN                            R7 0
       66 LOADN                            R8 4
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R5 K22 ["CornerRadius"]
       70 SETTABLEKS                       R5 R4 K27 ["&CornerBox"]
       72 RETURN                           R4 1
