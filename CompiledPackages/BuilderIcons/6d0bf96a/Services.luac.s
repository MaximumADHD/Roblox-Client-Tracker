MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"UserInputService"}]
        2 GETIMPORT                        R1 K3 [game]
        4 LOADK                            R3 K0 ["UserInputService"]
        5 NAMECALL                         R1 R1 K4 ["GetService"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["UserInputService"]
       10 RETURN                           R0 1
