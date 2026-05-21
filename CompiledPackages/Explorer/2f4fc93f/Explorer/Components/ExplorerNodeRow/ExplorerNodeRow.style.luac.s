MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["ImageUrl"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["Styling"]
       23 GETTABLEKS                       R3 R3 K11 ["createStyleRule"]
       25 MOVE                             R4 R3
       26 LOADK                            R5 K12 [".Explorer-ExplorerNodeRow"]
       27 NEWTABLE                         R6 0 0
       29 NEWTABLE                         R7 0 3
       31 MOVE                             R8 R3
       32 LOADK                            R9 K13 [">> .Explorer-Expanded > .Explorer-ArrowImage"]
       33 DUPTABLE                         R10 K15 [{"Image"}]
       34 GETTABLEKS                       R11 R2 K16 ["standard"]
       36 LOADK                            R12 K17 ["expanded"]
       37 CALL                             R11 1 1
       38 SETTABLEKS                       R11 R10 K14 ["Image"]
       40 CALL                             R8 2 1
       41 MOVE                             R9 R3
       42 LOADK                            R10 K18 [">> .Explorer-Collapsed > .Explorer-ArrowImage"]
       43 DUPTABLE                         R11 K15 [{"Image"}]
       44 GETTABLEKS                       R12 R2 K16 ["standard"]
       46 LOADK                            R13 K19 ["collapsed"]
       47 CALL                             R12 1 1
       48 SETTABLEKS                       R12 R11 K14 ["Image"]
       50 CALL                             R9 2 1
       51 MOVE                             R10 R3
       52 LOADK                            R11 K20 [">> .Explorer-NoChildren"]
       53 DUPTABLE                         R12 K22 [{"Interactable"}]
       54 LOADB                            R13 0
       55 SETTABLEKS                       R13 R12 K21 ["Interactable"]
       57 NEWTABLE                         R13 0 1
       59 MOVE                             R14 R3
       60 LOADK                            R15 K23 ["> .Explorer-ArrowImage"]
       61 DUPTABLE                         R16 K15 [{"Image"}]
       62 LOADK                            R17 K24 [""]
       63 SETTABLEKS                       R17 R16 K14 ["Image"]
       65 CALL                             R14 2 -1
       66 SETLIST                          R13 R14 -1 [1]
       68 CALL                             R10 3 -1
       69 SETLIST                          R7 R8 -1 [1]
       71 CALL                             R4 3 -1
       72 RETURN                           R4 -1
