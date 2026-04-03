MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K8 [{"ContentProvider", "CoreGui", "GuiService", "LocalizationService", "Players", "RunService", "TextService", "UserInputService"}]
        2 GETIMPORT                        R1 K10 [game]
        4 LOADK                            R3 K0 ["ContentProvider"]
        5 NAMECALL                         R1 R1 K11 ["GetService"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["ContentProvider"]
       10 GETIMPORT                        R1 K10 [game]
       12 LOADK                            R3 K1 ["CoreGui"]
       13 NAMECALL                         R1 R1 K11 ["GetService"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K1 ["CoreGui"]
       18 GETIMPORT                        R1 K10 [game]
       20 LOADK                            R3 K2 ["GuiService"]
       21 NAMECALL                         R1 R1 K11 ["GetService"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K2 ["GuiService"]
       26 GETIMPORT                        R1 K10 [game]
       28 LOADK                            R3 K3 ["LocalizationService"]
       29 NAMECALL                         R1 R1 K11 ["GetService"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K3 ["LocalizationService"]
       34 GETIMPORT                        R1 K10 [game]
       36 LOADK                            R3 K4 ["Players"]
       37 NAMECALL                         R1 R1 K11 ["GetService"]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K4 ["Players"]
       42 GETIMPORT                        R1 K10 [game]
       44 LOADK                            R3 K5 ["RunService"]
       45 NAMECALL                         R1 R1 K11 ["GetService"]
       47 CALL                             R1 2 1
       48 SETTABLEKS                       R1 R0 K5 ["RunService"]
       50 GETIMPORT                        R1 K10 [game]
       52 LOADK                            R3 K6 ["TextService"]
       53 NAMECALL                         R1 R1 K11 ["GetService"]
       55 CALL                             R1 2 1
       56 SETTABLEKS                       R1 R0 K6 ["TextService"]
       58 GETIMPORT                        R1 K10 [game]
       60 LOADK                            R3 K7 ["UserInputService"]
       61 NAMECALL                         R1 R1 K11 ["GetService"]
       63 CALL                             R1 2 1
       64 SETTABLEKS                       R1 R0 K7 ["UserInputService"]
       66 RETURN                           R0 1
