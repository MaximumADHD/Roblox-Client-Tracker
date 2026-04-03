MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Rhodium"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["InputTypes"]
       11 GETTABLEKS                       R2 R3 K7 ["Keyboard"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["InputTypes"]
       18 GETTABLEKS                       R3 R4 K8 ["Mouse"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["InputTypes"]
       25 GETTABLEKS                       R4 R5 K9 ["Touch"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["InputTypes"]
       32 GETTABLEKS                       R5 R6 K10 ["Text"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["InputTypes"]
       39 GETTABLEKS                       R6 R7 K11 ["GamePad"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["VirtualInputUtils"]
       46 CALL                             R6 1 1
       47 DUPTABLE                         R7 K16 [{"Keyboard", "Mouse", "Touch", "Text", "GamePad", "setCurrentWindow", "getCurrentWindow", "waitForInputEventsProcessed"}]
       48 SETTABLEKS                       R1 R7 K7 ["Keyboard"]
       50 SETTABLEKS                       R2 R7 K8 ["Mouse"]
       52 SETTABLEKS                       R3 R7 K9 ["Touch"]
       54 SETTABLEKS                       R4 R7 K10 ["Text"]
       56 SETTABLEKS                       R5 R7 K11 ["GamePad"]
       58 GETTABLEKS                       R8 R6 K13 ["setCurrentWindow"]
       60 SETTABLEKS                       R8 R7 K13 ["setCurrentWindow"]
       62 GETTABLEKS                       R8 R6 K14 ["getCurrentWindow"]
       64 SETTABLEKS                       R8 R7 K14 ["getCurrentWindow"]
       66 GETTABLEKS                       R8 R6 K15 ["waitForInputEventsProcessed"]
       68 SETTABLEKS                       R8 R7 K15 ["waitForInputEventsProcessed"]
       70 RETURN                           R7 1
