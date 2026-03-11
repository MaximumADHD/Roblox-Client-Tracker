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
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Flags"]
       22 GETTABLEKS                       R3 R4 K9 ["getFFlagStyleQuery"]
       24 CALL                             R2 1 1
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+14]
       27 MOVE                             R3 R1
       28 LOADK                            R4 K10 ["ActionClickedEventType"]
       29 NEWTABLE                         R5 0 6
       31 LOADK                            R6 K11 ["ButtonPressed"]
       32 LOADK                            R7 K12 ["ContextMenu"]
       33 LOADK                            R8 K13 ["OnboardingLink"]
       34 LOADK                            R9 K14 ["PropertyEdited"]
       35 LOADK                            R10 K15 ["TokenEdited"]
       36 LOADK                            R11 K16 ["PropertyCreated"]
       37 SETLIST                          R5 R6 6 [1]
       39 CALL                             R3 2 -1
       40 RETURN                           R3 -1
       41 MOVE                             R3 R1
       42 LOADK                            R4 K10 ["ActionClickedEventType"]
       43 NEWTABLE                         R5 0 5
       45 LOADK                            R6 K11 ["ButtonPressed"]
       46 LOADK                            R7 K12 ["ContextMenu"]
       47 LOADK                            R8 K13 ["OnboardingLink"]
       48 LOADK                            R9 K14 ["PropertyEdited"]
       49 LOADK                            R10 K15 ["TokenEdited"]
       50 SETLIST                          R5 R6 5 [1]
       52 CALL                             R3 2 -1
       53 RETURN                           R3 -1
