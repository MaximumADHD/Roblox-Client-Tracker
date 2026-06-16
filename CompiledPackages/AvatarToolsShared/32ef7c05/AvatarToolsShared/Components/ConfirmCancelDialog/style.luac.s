MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 DUPTABLE                         R1 K4 [{"PopupMessageSize"}]
       10 GETIMPORT                        R2 K7 [Vector2.new]
       12 LOADN                            R3 24
       13 LOADN                            R4 160
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K3 ["PopupMessageSize"]
       17 RETURN                           R1 1
