MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Widget-Thumbstick"]
       20 DUPTABLE                         R5 K16 [{["BackgroundColor3"] = "$ControlActiveSecondaryColor", ["AnchorPoint"], ["BackgroundTransparency"] = 1}]
       21 GETIMPORT                        R6 K19 [Vector2.new]
       23 LOADK                            R7 K20 [0.5]
       24 LOADK                            R8 K20 [0.5]
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K13 ["AnchorPoint"]
       28 NEWTABLE                         R6 0 4
       30 MOVE                             R7 R2
       31 LOADK                            R8 K21 [".Active"]
       32 DUPTABLE                         R9 K23 [{["BackgroundTransparency"] = 0.7}]
       33 CALL                             R7 2 1
       34 MOVE                             R8 R2
       35 LOADK                            R9 K24 ["> #Stick"]
       36 DUPTABLE                         R10 K25 [{["AnchorPoint"], ["BackgroundTransparency"] = 1}]
       37 GETIMPORT                        R11 K19 [Vector2.new]
       39 LOADK                            R12 K20 [0.5]
       40 LOADK                            R13 K20 [0.5]
       41 CALL                             R11 2 1
       42 SETTABLEKS                       R11 R10 K13 ["AnchorPoint"]
       44 CALL                             R8 2 1
       45 MOVE                             R9 R2
       46 LOADK                            R10 K26 ["> #Stick.Hovered"]
       47 DUPTABLE                         R11 K29 [{["BackgroundColor3"] = "$ControlActiveColor", ["BackgroundTransparency"] = 0.6}]
       48 CALL                             R9 2 1
       49 MOVE                             R10 R2
       50 LOADK                            R11 K30 ["> #Stick.Active"]
       51 DUPTABLE                         R12 K32 [{["BackgroundColor3"] = "$ControlActiveColor", ["BackgroundTransparency"] = 0.3}]
       52 CALL                             R10 2 -1
       53 SETLIST                          R6 R7 -1 [1]
       55 CALL                             R3 3 -1
       56 RETURN                           R3 -1
