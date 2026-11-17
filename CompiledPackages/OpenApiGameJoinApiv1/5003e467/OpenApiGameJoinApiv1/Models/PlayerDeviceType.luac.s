MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["numberEnum"]
        9 NEWTABLE                         R3 0 6
       11 LOADN                            R4 1
       12 LOADN                            R5 2
       13 LOADN                            R6 3
       14 LOADN                            R7 4
       15 LOADN                            R8 5
       16 LOADN                            R9 6
       17 SETLIST                          R3 R4 6 [1]
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1
