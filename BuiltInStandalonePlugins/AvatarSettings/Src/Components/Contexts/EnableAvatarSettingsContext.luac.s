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
       23 DUPTABLE                         R3 K17 [{["default"] = True, ["currentGameId"] = 0, ["setCurrentGameId"], ["requestSaveToRoblox"]}]
       24 MOVE                             R4 R2
       25 LOADK                            R5 K15 ["setCurrentGameId"]
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R4 R3 K15 ["setCurrentGameId"]
       29 MOVE                             R4 R2
       30 LOADK                            R5 K16 ["requestSaveToRoblox"]
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K16 ["requestSaveToRoblox"]
       34 GETTABLEKS                       R4 R1 K18 ["createContext"]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 1
       38 RETURN                           R4 1
