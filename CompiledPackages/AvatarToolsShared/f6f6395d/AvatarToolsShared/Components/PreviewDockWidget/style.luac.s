MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Size", "MinSize"}]
        2 GETIMPORT                        R1 K5 [Vector2.new]
        4 LOADN                            R2 400
        5 LOADN                            R3 400
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["Size"]
        9 GETIMPORT                        R1 K5 [Vector2.new]
       11 LOADN                            R2 400
       12 LOADN                            R3 400
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K1 ["MinSize"]
       16 RETURN                           R0 1
