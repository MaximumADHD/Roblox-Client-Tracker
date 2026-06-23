MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 GETTABLEKS                       R2 R2 K9 ["MenuIdentifiers"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Types"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 4 0
       27 GETTABLEKS                       R4 R1 K11 ["SCHEMA_FILTER_KEYBOARD_AND_MOUSE"]
       29 LOADK                            R5 K12 ["KeyboardAndMouse"]
       30 SETTABLE                         R5 R3 R4
       31 GETTABLEKS                       R4 R1 K13 ["SCHEMA_FILTER_GAMEPAD"]
       33 LOADK                            R5 K14 ["Gamepad"]
       34 SETTABLE                         R5 R3 R4
       35 GETTABLEKS                       R4 R1 K15 ["SCHEMA_FILTER_TOUCH"]
       37 LOADK                            R5 K16 ["Touch"]
       38 SETTABLE                         R5 R3 R4
       39 GETTABLEKS                       R4 R1 K17 ["SCHEMA_FILTER_VR"]
       41 LOADK                            R5 K18 ["VR"]
       42 SETTABLE                         R5 R3 R4
       43 RETURN                           R3 1
