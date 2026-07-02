MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETIMPORT                        R4 K1 [script]
       16 GETTABLEKS                       R4 R4 K2 ["Parent"]
       18 GETTABLEKS                       R3 R4 K6 ["flowtypes.roblox"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 0 0
       23 RETURN                           R3 1
