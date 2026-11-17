MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["numberEnum"]
        9 NEWTABLE                         R3 0 4
       11 LOADN                            R4 0
       12 LOADN                            R5 1
       13 LOADN                            R6 2
       14 LOADN                            R7 3
       15 SETLIST                          R3 R4 4 [1]
       17 CALL                             R2 1 -1
       18 RETURN                           R2 -1
