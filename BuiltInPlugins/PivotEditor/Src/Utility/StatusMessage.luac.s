MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R2 R1 K3 ["Packages"]
       11 GETTABLEKS                       R3 R2 K4 ["Framework"]
       13 GETIMPORT                        R6 K6 [require]
       15 MOVE                             R7 R3
       16 CALL                             R6 1 1
       17 GETTABLEKS                       R5 R6 K7 ["Util"]
       19 GETTABLEKS                       R4 R5 K8 ["strict"]
       21 MOVE                             R5 R4
       22 DUPTABLE                         R6 K14 [{"None", "NoSelection", "MultipleSelection", "InvalidTarget", "ProceduralModel"}]
       23 LOADK                            R7 K15 [""]
       24 SETTABLEKS                       R7 R6 K9 ["None"]
       26 LOADK                            R7 K10 ["NoSelection"]
       27 SETTABLEKS                       R7 R6 K10 ["NoSelection"]
       29 LOADK                            R7 K11 ["MultipleSelection"]
       30 SETTABLEKS                       R7 R6 K11 ["MultipleSelection"]
       32 LOADK                            R7 K12 ["InvalidTarget"]
       33 SETTABLEKS                       R7 R6 K12 ["InvalidTarget"]
       35 LOADK                            R7 K13 ["ProceduralModel"]
       36 SETTABLEKS                       R7 R6 K13 ["ProceduralModel"]
       38 LOADK                            R7 K16 ["StatusMessage"]
       39 CALL                             R5 2 1
       40 RETURN                           R5 1
