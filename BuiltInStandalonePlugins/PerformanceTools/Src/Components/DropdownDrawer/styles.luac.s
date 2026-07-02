MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Component-DropdownDrawer"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 2
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [">> .UseDownArrow"]
       26 DUPTABLE                         R9 K14 [{["Image"] = "$DownArrow"}]
       27 CALL                             R7 2 1
       28 MOVE                             R8 R2
       29 LOADK                            R9 K15 [">> .UseUpArrow"]
       30 DUPTABLE                         R10 K17 [{["Image"] = "$UpArrow"}]
       31 CALL                             R8 2 -1
       32 SETLIST                          R6 R7 -1 [1]
       34 CALL                             R3 3 -1
       35 RETURN                           R3 -1
