MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["TimeProgressBar"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K11 [{"stories"}]
       26 NEWTABLE                         R4 0 3
       28 DUPTABLE                         R5 K15 [{["name"] = "Default", ["story"]}]
       29 GETTABLEKS                       R6 R1 K16 ["createElement"]
       31 MOVE                             R7 R2
       32 DUPTABLE                         R8 K19 [{["TotalTime"] = 10}]
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K14 ["story"]
       36 DUPTABLE                         R6 K21 [{["name"] = "Fixed Width", ["story"]}]
       37 GETTABLEKS                       R7 R1 K16 ["createElement"]
       39 MOVE                             R8 R2
       40 DUPTABLE                         R9 K24 [{["TotalTime"] = 10, ["Width"] = 200}]
       41 CALL                             R7 2 1
       42 SETTABLEKS                       R7 R6 K14 ["story"]
       44 DUPTABLE                         R7 K28 [{["name"] = "StartTime", ["description"] = "Specify start time instead of starting at component mount", ["story"]}]
       45 GETTABLEKS                       R8 R1 K16 ["createElement"]
       47 MOVE                             R9 R2
       48 DUPTABLE                         R10 K30 [{["StartTime"], ["TotalTime"] = 20, ["Width"] = 200}]
       49 GETIMPORT                        R12 K32 [tick]
       51 CALL                             R12 0 1
       52 SUBK                             R11 R12 K18 [10]
       53 SETTABLEKS                       R11 R10 K25 ["StartTime"]
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K14 ["story"]
       58 SETLIST                          R4 R5 3 [1]
       60 SETTABLEKS                       R4 R3 K10 ["stories"]
       62 RETURN                           R3 1
