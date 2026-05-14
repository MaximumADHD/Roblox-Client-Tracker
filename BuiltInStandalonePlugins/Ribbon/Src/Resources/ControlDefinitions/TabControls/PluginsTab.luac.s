MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["deepFreeze"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K12 [{"Name", "Controls"}]
       24 LOADK                            R4 K13 ["Plugins"]
       25 SETTABLEKS                       R4 R3 K10 ["Name"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K11 ["Controls"]
       31 MOVE                             R4 R1
       32 MOVE                             R5 R3
       33 CALL                             R4 1 -1
       34 RETURN                           R4 -1
