MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.freeze]
        3 NEWTABLE                         R1 0 4
        5 LOADK                            R2 K3 ["ModuleScript"]
        6 LOADK                            R3 K4 ["Script"]
        7 LOADK                            R4 K5 ["LocalScript"]
        8 LOADK                            R5 K6 ["AuroraScript"]
        9 SETLIST                          R1 R2 4 [1]
       11 CALL                             R0 1 1
       12 RETURN                           R0 1
