MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["createContext"]
       16 DUPTABLE                         R4 K12 [{"fillDirection", "isContained", "testId"}]
       17 GETIMPORT                        R5 K16 [Enum.FillDirection.Vertical]
       19 SETTABLEKS                       R5 R4 K9 ["fillDirection"]
       21 LOADB                            R5 0
       22 SETTABLEKS                       R5 R4 K10 ["isContained"]
       24 LOADK                            R5 K17 [""]
       25 SETTABLEKS                       R5 R4 K11 ["testId"]
       27 CALL                             R3 1 -1
       28 RETURN                           R3 -1
