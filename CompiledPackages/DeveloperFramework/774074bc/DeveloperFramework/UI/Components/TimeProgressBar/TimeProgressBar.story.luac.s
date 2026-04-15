MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["TimeProgressBar"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K11 [{"stories"}]
       26 NEWTABLE                         R4 0 3
       28 DUPTABLE                         R5 K14 [{"name", "story"}]
       29 LOADK                            R6 K15 ["Default"]
       30 SETTABLEKS                       R6 R5 K12 ["name"]
       32 GETTABLEKS                       R6 R1 K16 ["createElement"]
       34 MOVE                             R7 R2
       35 DUPTABLE                         R8 K18 [{"TotalTime"}]
       36 LOADN                            R9 10
       37 SETTABLEKS                       R9 R8 K17 ["TotalTime"]
       39 CALL                             R6 2 1
       40 SETTABLEKS                       R6 R5 K13 ["story"]
       42 DUPTABLE                         R6 K14 [{"name", "story"}]
       43 LOADK                            R7 K19 ["Fixed Width"]
       44 SETTABLEKS                       R7 R6 K12 ["name"]
       46 GETTABLEKS                       R7 R1 K16 ["createElement"]
       48 MOVE                             R8 R2
       49 DUPTABLE                         R9 K21 [{"TotalTime", "Width"}]
       50 LOADN                            R10 10
       51 SETTABLEKS                       R10 R9 K17 ["TotalTime"]
       53 LOADN                            R10 200
       54 SETTABLEKS                       R10 R9 K20 ["Width"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K13 ["story"]
       59 DUPTABLE                         R7 K23 [{"name", "description", "story"}]
       60 LOADK                            R8 K24 ["StartTime"]
       61 SETTABLEKS                       R8 R7 K12 ["name"]
       63 LOADK                            R8 K25 ["Specify start time instead of starting at component mount"]
       64 SETTABLEKS                       R8 R7 K22 ["description"]
       66 GETTABLEKS                       R8 R1 K16 ["createElement"]
       68 MOVE                             R9 R2
       69 DUPTABLE                         R10 K26 [{"StartTime", "TotalTime", "Width"}]
       70 GETIMPORT                        R12 K29 [tick]
       72 CALL                             R12 0 1
       73 SUBK                             R11 R12 K27 [10]
       74 SETTABLEKS                       R11 R10 K24 ["StartTime"]
       76 LOADN                            R11 20
       77 SETTABLEKS                       R11 R10 K17 ["TotalTime"]
       79 LOADN                            R11 200
       80 SETTABLEKS                       R11 R10 K20 ["Width"]
       82 CALL                             R8 2 1
       83 SETTABLEKS                       R8 R7 K13 ["story"]
       85 SETLIST                          R4 R5 3 [1]
       87 SETTABLEKS                       R4 R3 K10 ["stories"]
       89 RETURN                           R3 1
