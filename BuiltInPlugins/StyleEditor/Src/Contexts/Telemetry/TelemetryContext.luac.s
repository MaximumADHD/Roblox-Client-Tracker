MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["ContextServices"]
       20 GETTABLEKS                       R2 R2 K8 ["ContextItem"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Types"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETIMPORT                        R5 K1 [script]
       33 GETTABLEKS                       R5 R5 K2 ["Parent"]
       35 GETTABLEKS                       R5 R5 K10 ["Types"]
       37 CALL                             R4 1 1
       38 LOADK                            R7 K11 ["Telemetry"]
       39 NAMECALL                         R5 R2 K12 ["createSimple"]
       41 CALL                             R5 2 1
       42 RETURN                           R5 1
