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
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R5 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R5 K10 ["Types"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R6 R7 K2 ["Parent"]
       35 GETTABLEKS                       R5 R6 K10 ["Types"]
       37 CALL                             R4 1 1
       38 LOADK                            R7 K11 ["Telemetry"]
       39 NAMECALL                         R5 R2 K12 ["createSimple"]
       41 CALL                             R5 2 1
       42 RETURN                           R5 1
