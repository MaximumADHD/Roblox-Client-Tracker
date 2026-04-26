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
       26 GETIMPORT                        R3 K4 [require]
       28 GETTABLEKS                       R6 R0 K7 ["Src"]
       30 GETTABLEKS                       R5 R6 K8 ["Flags"]
       32 GETTABLEKS                       R4 R5 K10 ["getFFlagStyleEditorSupportTransitions"]
       34 CALL                             R3 1 1
       35 CALL                             R3 0 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R6 R0 K7 ["Src"]
       40 GETTABLEKS                       R5 R6 K11 ["Types"]
       42 CALL                             R4 1 1
       43 NEWTABLE                         R5 0 5
       45 LOADK                            R6 K12 ["ButtonPressed"]
       46 LOADK                            R7 K13 ["ContextMenu"]
       47 LOADK                            R8 K14 ["OnboardingLink"]
       48 LOADK                            R9 K15 ["PropertyEdited"]
       49 LOADK                            R10 K16 ["TokenEdited"]
       50 SETLIST                          R5 R6 5 [1]
       52 JUMPIFNOT                        R2 ; [+7]
       53 FASTCALL2K                       TABLE_INSERT R5 K17 ; [+5]
       55 MOVE                             R7 R5
       56 LOADK                            R8 K17 ["PropertyCreated"]
       57 GETIMPORT                        R6 K20 [table.insert]
       59 CALL                             R6 2 0
       60 JUMPIFNOT                        R3 ; [+14]
       61 FASTCALL2K                       TABLE_INSERT R5 K21 ; [+5]
       63 MOVE                             R7 R5
       64 LOADK                            R8 K21 ["TransitionCreated"]
       65 GETIMPORT                        R6 K20 [table.insert]
       67 CALL                             R6 2 0
       68 FASTCALL2K                       TABLE_INSERT R5 K22 ; [+5]
       70 MOVE                             R7 R5
       71 LOADK                            R8 K22 ["TransitionEdited"]
       72 GETIMPORT                        R6 K20 [table.insert]
       74 CALL                             R6 2 0
       75 MOVE                             R6 R1
       76 LOADK                            R7 K23 ["ActionClickedEventType"]
       77 MOVE                             R8 R5
       78 CALL                             R6 2 1
       79 RETURN                           R6 1
