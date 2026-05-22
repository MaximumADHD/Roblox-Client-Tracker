MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.freeze]
        3 DUPTABLE                         R1 K7 [{"Editors", "PlayTesters", "Friends", "Public"}]
        4 LOADN                            R2 1
        5 SETTABLEKS                       R2 R1 K3 ["Editors"]
        7 LOADN                            R2 2
        8 SETTABLEKS                       R2 R1 K4 ["PlayTesters"]
       10 LOADN                            R2 3
       11 SETTABLEKS                       R2 R1 K5 ["Friends"]
       13 LOADN                            R2 4
       14 SETTABLEKS                       R2 R1 K6 ["Public"]
       16 CALL                             R0 1 -1
       17 RETURN                           R0 -1
