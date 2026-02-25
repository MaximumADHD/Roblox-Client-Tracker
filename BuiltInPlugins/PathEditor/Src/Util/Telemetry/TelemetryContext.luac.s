MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R3 R1 K7 ["ContextServices"]
       20 GETTABLEKS                       R2 R3 K8 ["ContextItem"]
       22 LOADK                            R5 K9 ["Telemetry"]
       23 NAMECALL                         R3 R2 K10 ["createSimple"]
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1
