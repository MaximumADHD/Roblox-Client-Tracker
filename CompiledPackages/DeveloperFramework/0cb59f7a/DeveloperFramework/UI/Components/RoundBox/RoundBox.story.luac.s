MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["RoundBox"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["Container"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["createElement"]
       36 MOVE                             R5 R3
       37 DUPTABLE                         R6 K13 [{"Size"}]
       38 GETIMPORT                        R7 K16 [UDim2.fromOffset]
       40 LOADN                            R8 100
       41 LOADN                            R9 100
       42 CALL                             R7 2 1
       43 SETTABLEKS                       R7 R6 K12 ["Size"]
       45 DUPTABLE                         R7 K18 [{"Decoration"}]
       46 GETTABLEKS                       R8 R1 K11 ["createElement"]
       48 MOVE                             R9 R2
       49 CALL                             R8 1 1
       50 SETTABLEKS                       R8 R7 K17 ["Decoration"]
       52 CALL                             R4 3 -1
       53 RETURN                           R4 -1
