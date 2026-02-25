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
       19 LOADK                            R4 K10 [".Widget-Thumbstick"]
       20 DUPTABLE                         R5 K14 [{"BackgroundColor3", "AnchorPoint", "BackgroundTransparency"}]
       21 LOADK                            R6 K15 ["$ControlActiveSecondaryColor"]
       22 SETTABLEKS                       R6 R5 K11 ["BackgroundColor3"]
       24 GETIMPORT                        R6 K18 [Vector2.new]
       26 LOADK                            R7 K19 [0.5]
       27 LOADK                            R8 K19 [0.5]
       28 CALL                             R6 2 1
       29 SETTABLEKS                       R6 R5 K12 ["AnchorPoint"]
       31 LOADN                            R6 1
       32 SETTABLEKS                       R6 R5 K13 ["BackgroundTransparency"]
       34 NEWTABLE                         R6 0 4
       36 MOVE                             R7 R2
       37 LOADK                            R8 K20 [".Active"]
       38 DUPTABLE                         R9 K21 [{"BackgroundTransparency"}]
       39 LOADK                            R10 K22 [0.7]
       40 SETTABLEKS                       R10 R9 K13 ["BackgroundTransparency"]
       42 CALL                             R7 2 1
       43 MOVE                             R8 R2
       44 LOADK                            R9 K23 ["> #Stick"]
       45 DUPTABLE                         R10 K24 [{"AnchorPoint", "BackgroundTransparency"}]
       46 GETIMPORT                        R11 K18 [Vector2.new]
       48 LOADK                            R12 K19 [0.5]
       49 LOADK                            R13 K19 [0.5]
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K12 ["AnchorPoint"]
       53 LOADN                            R11 1
       54 SETTABLEKS                       R11 R10 K13 ["BackgroundTransparency"]
       56 CALL                             R8 2 1
       57 MOVE                             R9 R2
       58 LOADK                            R10 K25 ["> #Stick.Hovered"]
       59 DUPTABLE                         R11 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
       60 LOADK                            R12 K27 ["$ControlActiveColor"]
       61 SETTABLEKS                       R12 R11 K11 ["BackgroundColor3"]
       63 LOADK                            R12 K28 [0.6]
       64 SETTABLEKS                       R12 R11 K13 ["BackgroundTransparency"]
       66 CALL                             R9 2 1
       67 MOVE                             R10 R2
       68 LOADK                            R11 K29 ["> #Stick.Active"]
       69 DUPTABLE                         R12 K26 [{"BackgroundColor3", "BackgroundTransparency"}]
       70 LOADK                            R13 K27 ["$ControlActiveColor"]
       71 SETTABLEKS                       R13 R12 K11 ["BackgroundColor3"]
       73 LOADK                            R13 K30 [0.3]
       74 SETTABLEKS                       R13 R12 K13 ["BackgroundTransparency"]
       76 CALL                             R10 2 -1
       77 SETLIST                          R6 R7 -1 [1]
       79 CALL                             R3 3 -1
       80 RETURN                           R3 -1
