MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["../../OpenApi"]
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K3 ["Models"]
        7 GETTABLEKS                       R2 R1 K4 ["numberEnum"]
        9 NEWTABLE                         R3 0 2
       11 LOADN                            R4 0
       12 LOADN                            R5 1
       13 SETLIST                          R3 R4 2 [1]
       15 CALL                             R2 1 -1
       16 RETURN                           R2 -1
