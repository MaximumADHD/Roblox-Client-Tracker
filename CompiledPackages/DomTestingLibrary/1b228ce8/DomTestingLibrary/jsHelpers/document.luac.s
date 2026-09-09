MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K6 [Instance.new]
        9 LOADK                            R2 K7 ["ScreenGui"]
       10 CALL                             R1 1 1
       11 GETIMPORT                        R2 K6 [Instance.new]
       13 LOADK                            R3 K8 ["Folder"]
       14 CALL                             R2 1 1
       15 LOADK                            R3 K9 ["Document"]
       16 SETTABLEKS                       R3 R2 K10 ["Name"]
       18 SETTABLEKS                       R1 R2 K11 ["Parent"]
       20 SETTABLEKS                       R0 R1 K11 ["Parent"]
       22 RETURN                           R2 1
