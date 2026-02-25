MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["enumerate"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K7 ["ActionClickedEventType"]
       18 NEWTABLE                         R4 0 5
       20 LOADK                            R5 K8 ["ButtonPressed"]
       21 LOADK                            R6 K9 ["ContextMenu"]
       22 LOADK                            R7 K10 ["OnboardingLink"]
       23 LOADK                            R8 K11 ["PropertyEdited"]
       24 LOADK                            R9 K12 ["TokenEdited"]
       25 SETLIST                          R4 R5 5 [1]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1
