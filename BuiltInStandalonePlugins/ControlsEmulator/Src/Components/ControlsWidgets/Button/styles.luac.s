MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Widget-Button"]
       20 DUPTABLE                         R5 K16 [{"BorderSizePixel", "BorderMode", "Size", "AnchorPoint", "TextScaled"}]
       21 LOADN                            R6 3
       22 SETTABLEKS                       R6 R5 K11 ["BorderSizePixel"]
       24 GETIMPORT                        R6 K19 [Enum.BorderMode.Outline]
       26 SETTABLEKS                       R6 R5 K12 ["BorderMode"]
       28 GETIMPORT                        R6 K22 [UDim2.new]
       30 LOADN                            R7 0
       31 LOADN                            R8 36
       32 LOADN                            R9 0
       33 LOADN                            R10 36
       34 CALL                             R6 4 1
       35 SETTABLEKS                       R6 R5 K13 ["Size"]
       37 GETIMPORT                        R6 K24 [Vector2.new]
       39 LOADK                            R7 K25 [0.5]
       40 LOADK                            R8 K25 [0.5]
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R5 K14 ["AnchorPoint"]
       44 LOADB                            R6 1
       45 SETTABLEKS                       R6 R5 K15 ["TextScaled"]
       47 NEWTABLE                         R6 0 1
       49 MOVE                             R7 R2
       50 LOADK                            R8 K26 ["::UICorner"]
       51 DUPTABLE                         R9 K28 [{"CornerRadius"}]
       52 GETIMPORT                        R10 K30 [UDim.new]
       54 LOADN                            R11 1
       55 LOADN                            R12 0
       56 CALL                             R10 2 1
       57 SETTABLEKS                       R10 R9 K27 ["CornerRadius"]
       59 CALL                             R7 2 -1
       60 SETLIST                          R6 R7 -1 [1]
       62 CALL                             R3 3 -1
       63 RETURN                           R3 -1
