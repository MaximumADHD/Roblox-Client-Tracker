MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K2 [Color3.fromRGB]
        5 LOADN                            R2 40
        6 LOADN                            R3 40
        7 LOADN                            R4 40
        8 CALL                             R1 3 1
        9 SETTABLEKS                       R1 R0 K3 ["$Dark"]
       11 GETIMPORT                        R1 K2 [Color3.fromRGB]
       13 LOADN                            R2 255
       14 LOADN                            R3 0
       15 LOADN                            R4 0
       16 CALL                             R1 3 1
       17 SETTABLEKS                       R1 R0 K4 ["BackgroundColor3"]
       19 RETURN                           R0 1
