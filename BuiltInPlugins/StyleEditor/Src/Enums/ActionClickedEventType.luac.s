MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["enumerate"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Flags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagStyleEditorSupportTransitions"]
       24 CALL                             R2 1 1
       25 CALL                             R2 0 1
       26 GETIMPORT                        R3 K4 [require]
       28 GETTABLEKS                       R4 R0 K7 ["Src"]
       30 GETTABLEKS                       R4 R4 K10 ["Types"]
       32 CALL                             R3 1 1
       33 NEWTABLE                         R4 0 6
       35 LOADK                            R5 K11 ["ButtonPressed"]
       36 LOADK                            R6 K12 ["ContextMenu"]
       37 LOADK                            R7 K13 ["OnboardingLink"]
       38 LOADK                            R8 K14 ["PropertyEdited"]
       39 LOADK                            R9 K15 ["TokenEdited"]
       40 LOADK                            R10 K16 ["PropertyCreated"]
       41 SETLIST                          R4 R5 6 [1]
       43 JUMPIFNOT                        R2 ; [+14]
       44 FASTCALL2K                       TABLE_INSERT R4 K17 ; [+5]
       46 MOVE                             R6 R4
       47 LOADK                            R7 K17 ["TransitionCreated"]
       48 GETIMPORT                        R5 K20 [table.insert]
       50 CALL                             R5 2 0
       51 FASTCALL2K                       TABLE_INSERT R4 K21 ; [+5]
       53 MOVE                             R6 R4
       54 LOADK                            R7 K21 ["TransitionEdited"]
       55 GETIMPORT                        R5 K20 [table.insert]
       57 CALL                             R5 2 0
       58 MOVE                             R5 R1
       59 LOADK                            R6 K22 ["ActionClickedEventType"]
       60 MOVE                             R7 R4
       61 CALL                             R5 2 1
       62 RETURN                           R5 1
