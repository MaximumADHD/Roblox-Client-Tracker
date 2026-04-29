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
       38 GETTABLEKS                       R7 R0 K7 ["Src"]
       40 GETTABLEKS                       R6 R7 K8 ["Flags"]
       42 GETTABLEKS                       R5 R6 K11 ["getFFlagStyleEditorPropertyCreatedTelemetry"]
       44 CALL                             R4 1 1
       45 CALL                             R4 0 1
       46 GETIMPORT                        R5 K4 [require]
       48 GETTABLEKS                       R7 R0 K7 ["Src"]
       50 GETTABLEKS                       R6 R7 K12 ["Types"]
       52 CALL                             R5 1 1
       53 NEWTABLE                         R6 0 5
       55 LOADK                            R7 K13 ["ButtonPressed"]
       56 LOADK                            R8 K14 ["ContextMenu"]
       57 LOADK                            R9 K15 ["OnboardingLink"]
       58 LOADK                            R10 K16 ["PropertyEdited"]
       59 LOADK                            R11 K17 ["TokenEdited"]
       60 SETLIST                          R6 R7 5 [1]
       62 JUMPIF                           R2 ; [+1]
       63 JUMPIFNOT                        R4 ; [+7]
       64 FASTCALL2K                       TABLE_INSERT R6 K18 ; [+5]
       66 MOVE                             R8 R6
       67 LOADK                            R9 K18 ["PropertyCreated"]
       68 GETIMPORT                        R7 K21 [table.insert]
       70 CALL                             R7 2 0
       71 JUMPIFNOT                        R3 ; [+14]
       72 FASTCALL2K                       TABLE_INSERT R6 K22 ; [+5]
       74 MOVE                             R8 R6
       75 LOADK                            R9 K22 ["TransitionCreated"]
       76 GETIMPORT                        R7 K21 [table.insert]
       78 CALL                             R7 2 0
       79 FASTCALL2K                       TABLE_INSERT R6 K23 ; [+5]
       81 MOVE                             R8 R6
       82 LOADK                            R9 K23 ["TransitionEdited"]
       83 GETIMPORT                        R7 K21 [table.insert]
       85 CALL                             R7 2 0
       86 MOVE                             R7 R1
       87 LOADK                            R8 K24 ["ActionClickedEventType"]
       88 MOVE                             R9 R6
       89 CALL                             R7 2 1
       90 RETURN                           R7 1
