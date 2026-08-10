MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R2 K6 ["enumerate"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 LOADK                            R3 K7 ["StyleModifier"]
       16 NEWTABLE                         R4 0 7
       18 LOADK                            R5 K8 ["Hover"]
       19 LOADK                            R6 K9 ["Pressed"]
       20 LOADK                            R7 K10 ["Selected"]
       21 LOADK                            R8 K11 ["Disabled"]
       22 LOADK                            R9 K12 ["Indeterminate"]
       23 LOADK                            R10 K13 ["Error"]
       24 LOADK                            R11 K14 ["DisabledAndSelected"]
       25 SETLIST                          R4 R5 7 [1]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1
