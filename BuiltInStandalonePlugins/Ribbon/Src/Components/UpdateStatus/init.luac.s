MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagStudioUpdateStatusV2"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 1
       18 JUMPIFNOT                        R2 ; [+8]
       19 GETIMPORT                        R2 K5 [require]
       21 GETIMPORT                        R3 K1 [script]
       23 GETTABLEKS                       R3 R3 K9 ["UpdateStatusRibbonV2"]
       25 CALL                             R2 1 -1
       26 RETURN                           R2 -1
       27 GETIMPORT                        R2 K5 [require]
       29 GETIMPORT                        R3 K1 [script]
       31 GETTABLEKS                       R3 R3 K10 ["UpdateStatusRibbon"]
       33 CALL                             R2 1 -1
       34 RETURN                           R2 -1
