MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["enumerate"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K7 ["Orientation"]
       18 DUPTABLE                         R4 K13 [{"Undefined", "Left", "Right", "Top", "Bottom"}]
       19 LOADN                            R5 0
       20 SETTABLEKS                       R5 R4 K8 ["Undefined"]
       22 LOADN                            R5 1
       23 SETTABLEKS                       R5 R4 K9 ["Left"]
       25 LOADN                            R5 2
       26 SETTABLEKS                       R5 R4 K10 ["Right"]
       28 LOADN                            R5 3
       29 SETTABLEKS                       R5 R4 K11 ["Top"]
       31 LOADN                            R5 4
       32 SETTABLEKS                       R5 R4 K12 ["Bottom"]
       34 CALL                             R2 2 1
       35 RETURN                           R2 1
