MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K4 [script]
        5 GETTABLEKS                       R2 R3 K5 ["client"]
        7 GETTABLEKS                       R1 R2 K2 ["ReactRobloxHostTypes.roblox"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K4 [script]
       14 GETTABLEKS                       R3 R4 K5 ["client"]
       16 GETTABLEKS                       R2 R3 K6 ["ReactRoblox"]
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
