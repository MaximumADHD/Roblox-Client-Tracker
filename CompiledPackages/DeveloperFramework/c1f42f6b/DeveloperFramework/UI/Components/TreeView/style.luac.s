MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["deepCopy"]
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R6 R0 K2 ["UI"]
       20 GETTABLEKS                       R5 R6 K9 ["Components"]
       22 GETTABLEKS                       R4 R5 K10 ["UIFolderData"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R3 K11 ["Pane"]
       29 GETTABLEKS                       R5 R6 K12 ["style"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K4 ["Parent"]
       36 GETTABLEKS                       R6 R7 K13 ["Dash"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K14 ["join"]
       41 MOVE                             R7 R2
       42 MOVE                             R8 R4
       43 CALL                             R7 1 1
       44 DUPTABLE                         R8 K17 [{"Padding", "RowHeight"}]
       45 LOADN                            R9 2
       46 SETTABLEKS                       R9 R8 K15 ["Padding"]
       48 LOADN                            R9 24
       49 SETTABLEKS                       R9 R8 K16 ["RowHeight"]
       51 MOVE                             R9 R6
       52 MOVE                             R10 R8
       53 MOVE                             R11 R7
       54 CALL                             R9 2 -1
       55 RETURN                           R9 -1
