MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"CoreGui", "GuiService", "LocalizationService", "Players", "RunService", "TextService", "UserInputService"}]
        2 GETIMPORT                        R1 K9 [game]
        4 LOADK                            R3 K0 ["CoreGui"]
        5 NAMECALL                         R1 R1 K10 ["GetService"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["CoreGui"]
       10 GETIMPORT                        R1 K9 [game]
       12 LOADK                            R3 K1 ["GuiService"]
       13 NAMECALL                         R1 R1 K10 ["GetService"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K1 ["GuiService"]
       18 GETIMPORT                        R1 K9 [game]
       20 LOADK                            R3 K2 ["LocalizationService"]
       21 NAMECALL                         R1 R1 K10 ["GetService"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K2 ["LocalizationService"]
       26 GETIMPORT                        R1 K9 [game]
       28 LOADK                            R3 K3 ["Players"]
       29 NAMECALL                         R1 R1 K10 ["GetService"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K3 ["Players"]
       34 GETIMPORT                        R1 K9 [game]
       36 LOADK                            R3 K4 ["RunService"]
       37 NAMECALL                         R1 R1 K10 ["GetService"]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K4 ["RunService"]
       42 GETIMPORT                        R1 K9 [game]
       44 LOADK                            R3 K5 ["TextService"]
       45 NAMECALL                         R1 R1 K10 ["GetService"]
       47 CALL                             R1 2 1
       48 SETTABLEKS                       R1 R0 K5 ["TextService"]
       50 GETIMPORT                        R1 K9 [game]
       52 LOADK                            R3 K6 ["UserInputService"]
       53 NAMECALL                         R1 R1 K10 ["GetService"]
       55 CALL                             R1 2 1
       56 SETTABLEKS                       R1 R0 K6 ["UserInputService"]
       58 RETURN                           R0 1
