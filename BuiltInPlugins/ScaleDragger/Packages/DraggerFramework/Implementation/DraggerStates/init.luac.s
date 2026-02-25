MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"DragSelecting", "DraggingFaceInstance", "DraggingHandle", "DraggingParts", "PendingDraggingParts", "PendingSelectNext", "Ready"}]
        2 GETIMPORT                        R1 K9 [require]
        4 GETIMPORT                        R3 K11 [script]
        6 GETTABLEKS                       R2 R3 K0 ["DragSelecting"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["DragSelecting"]
       11 GETIMPORT                        R1 K9 [require]
       13 GETIMPORT                        R3 K11 [script]
       15 GETTABLEKS                       R2 R3 K1 ["DraggingFaceInstance"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["DraggingFaceInstance"]
       20 GETIMPORT                        R1 K9 [require]
       22 GETIMPORT                        R3 K11 [script]
       24 GETTABLEKS                       R2 R3 K2 ["DraggingHandle"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["DraggingHandle"]
       29 GETIMPORT                        R1 K9 [require]
       31 GETIMPORT                        R3 K11 [script]
       33 GETTABLEKS                       R2 R3 K3 ["DraggingParts"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["DraggingParts"]
       38 GETIMPORT                        R1 K9 [require]
       40 GETIMPORT                        R3 K11 [script]
       42 GETTABLEKS                       R2 R3 K4 ["PendingDraggingParts"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["PendingDraggingParts"]
       47 GETIMPORT                        R1 K9 [require]
       49 GETIMPORT                        R3 K11 [script]
       51 GETTABLEKS                       R2 R3 K5 ["PendingSelectNext"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["PendingSelectNext"]
       56 GETIMPORT                        R1 K9 [require]
       58 GETIMPORT                        R3 K11 [script]
       60 GETTABLEKS                       R2 R3 K6 ["Ready"]
       62 CALL                             R1 1 1
       63 SETTABLEKS                       R1 R0 K6 ["Ready"]
       65 RETURN                           R0 1
