MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K6 [Instance.new]
        9 LOADK                            R2 K7 ["Folder"]
       10 CALL                             R1 1 1
       11 LOADK                            R2 K8 ["PlaceVersionHistoryTestContainer"]
       12 SETTABLEKS                       R2 R1 K9 ["Name"]
       14 SETTABLEKS                       R0 R1 K10 ["Parent"]
       16 RETURN                           R1 1
