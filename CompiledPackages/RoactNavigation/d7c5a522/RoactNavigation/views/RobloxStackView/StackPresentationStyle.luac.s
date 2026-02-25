MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K4 ["Parent"]
       11 GETTABLEKS                       R1 R2 K5 ["NavigationSymbol"]
       13 CALL                             R0 1 1
       14 MOVE                             R1 R0
       15 LOADK                            R2 K6 ["DEFAULT"]
       16 CALL                             R1 1 1
       17 MOVE                             R2 R0
       18 LOADK                            R3 K7 ["MODAL"]
       19 CALL                             R2 1 1
       20 MOVE                             R3 R0
       21 LOADK                            R4 K8 ["OVERLAY"]
       22 CALL                             R3 1 1
       23 DUPTABLE                         R4 K12 [{"Default", "Modal", "Overlay"}]
       24 SETTABLEKS                       R1 R4 K9 ["Default"]
       26 SETTABLEKS                       R2 R4 K10 ["Modal"]
       28 SETTABLEKS                       R3 R4 K11 ["Overlay"]
       30 RETURN                           R4 1
