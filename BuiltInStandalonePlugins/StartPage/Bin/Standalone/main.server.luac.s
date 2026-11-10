MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["launch"]
       16 LOADK                            R3 K2 ["StartPage"]
       17 GETTABLEKS                       R4 R0 K9 ["Src"]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K10 ["isCli"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K5 [require]
       27 GETTABLEKS                       R3 R0 K6 ["Packages"]
       29 GETTABLEKS                       R3 R3 K11 ["React"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K5 [require]
       34 GETTABLEKS                       R4 R0 K6 ["Packages"]
       36 GETTABLEKS                       R4 R4 K12 ["ReactRoblox"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K5 [require]
       41 GETTABLEKS                       R5 R0 K9 ["Src"]
       43 GETTABLEKS                       R5 R5 K13 ["MainPlugin"]
       45 CALL                             R4 1 1
       46 GETTABLEKS                       R5 R2 K14 ["createElement"]
       48 MOVE                             R6 R4
       49 DUPTABLE                         R7 K16 [{"Plugin"}]
       50 GETIMPORT                        R8 K18 [plugin]
       52 SETTABLEKS                       R8 R7 K15 ["Plugin"]
       54 CALL                             R5 2 1
       55 GETIMPORT                        R6 K21 [Instance.new]
       57 LOADK                            R7 K22 ["Frame"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R3 K23 ["createRoot"]
       61 MOVE                             R8 R6
       62 CALL                             R7 1 1
       63 MOVE                             R10 R5
       64 NAMECALL                         R8 R7 K24 ["render"]
       66 CALL                             R8 2 0
       67 RETURN                           R0 0
