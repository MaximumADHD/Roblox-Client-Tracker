MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["createUnimplemented"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K15 [{"default", "currentGameId", "setCurrentGameId", "requestSaveToRoblox"}]
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R3 K11 ["default"]
       27 LOADN                            R4 0
       28 SETTABLEKS                       R4 R3 K12 ["currentGameId"]
       30 MOVE                             R4 R2
       31 LOADK                            R5 K13 ["setCurrentGameId"]
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K13 ["setCurrentGameId"]
       35 MOVE                             R4 R2
       36 LOADK                            R5 K14 ["requestSaveToRoblox"]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K14 ["requestSaveToRoblox"]
       40 GETTABLEKS                       R4 R1 K16 ["createContext"]
       42 MOVE                             R5 R3
       43 CALL                             R4 1 1
       44 RETURN                           R4 1
