MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["createContext"]
       16 DUPTABLE                         R4 K11 [{"isPresent", "id", "onExitComplete", "passThroughData"}]
       17 LOADB                            R5 1
       18 SETTABLEKS                       R5 R4 K7 ["isPresent"]
       20 LOADK                            R5 K12 [""]
       21 SETTABLEKS                       R5 R4 K8 ["id"]
       23 LOADNIL                          R5
       24 SETTABLEKS                       R5 R4 K9 ["onExitComplete"]
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K10 ["passThroughData"]
       29 CALL                             R3 1 -1
       30 RETURN                           R3 -1
