MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R4 R0 K2 ["UI"]
       13 GETTABLEKS                       R3 R4 K7 ["Components"]
       15 GETTABLEKS                       R2 R3 K8 ["UIFolderData"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R4 R1 K9 ["RangeSlider"]
       22 GETTABLEKS                       R3 R4 K10 ["style"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Util"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["deepCopy"]
       32 MOVE                             R5 R4
       33 MOVE                             R6 R2
       34 CALL                             R5 1 -1
       35 RETURN                           R5 -1
