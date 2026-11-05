MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"UserInputService", "GuiService"}]
        2 GETIMPORT                        R1 K4 [game]
        4 LOADK                            R3 K0 ["UserInputService"]
        5 NAMECALL                         R1 R1 K5 ["GetService"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["UserInputService"]
       10 GETIMPORT                        R1 K4 [game]
       12 LOADK                            R3 K1 ["GuiService"]
       13 NAMECALL                         R1 R1 K5 ["GetService"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K1 ["GuiService"]
       18 RETURN                           R0 1
