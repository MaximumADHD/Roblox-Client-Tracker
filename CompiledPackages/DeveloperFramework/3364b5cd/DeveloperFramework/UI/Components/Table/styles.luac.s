MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-Table"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 0
       22 DUPTABLE                         R6 K14 [{"FooterHeight", "HeaderHeight", "RowHeight", "ScrollHeaderPadding"}]
       23 LOADN                            R7 36
       24 SETTABLEKS                       R7 R6 K10 ["FooterHeight"]
       26 LOADN                            R7 32
       27 SETTABLEKS                       R7 R6 K11 ["HeaderHeight"]
       29 LOADN                            R7 24
       30 SETTABLEKS                       R7 R6 K12 ["RowHeight"]
       32 LOADN                            R7 10
       33 SETTABLEKS                       R7 R6 K13 ["ScrollHeaderPadding"]
       35 CALL                             R2 4 -1
       36 RETURN                           R2 -1
