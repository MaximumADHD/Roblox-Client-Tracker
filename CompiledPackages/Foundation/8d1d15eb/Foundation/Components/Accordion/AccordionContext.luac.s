MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["InputSize"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R3 K10 ["createContext"]
       23 DUPTABLE                         R5 K16 [{["onAccordionItemActivated"] = , ["itemSize"], ["testId"] = ""}]
       24 GETTABLEKS                       R6 R2 K17 ["Medium"]
       26 SETTABLEKS                       R6 R5 K13 ["itemSize"]
       28 CALL                             R4 1 -1
       29 RETURN                           R4 -1
