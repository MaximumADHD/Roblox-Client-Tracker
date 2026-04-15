MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"ExtrudeHandles", "MoveHandles", "RotateHandles"}]
        2 GETIMPORT                        R1 K5 [require]
        4 GETIMPORT                        R3 K7 [script]
        6 GETTABLEKS                       R2 R3 K0 ["ExtrudeHandles"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["ExtrudeHandles"]
       11 GETIMPORT                        R1 K5 [require]
       13 GETIMPORT                        R3 K7 [script]
       15 GETTABLEKS                       R2 R3 K1 ["MoveHandles"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["MoveHandles"]
       20 GETIMPORT                        R1 K5 [require]
       22 GETIMPORT                        R3 K7 [script]
       24 GETTABLEKS                       R2 R3 K2 ["RotateHandles"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["RotateHandles"]
       29 RETURN                           R0 1
