MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Types"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["Utility"]
       14 GETTABLEKS                       R2 R2 K6 ["Analytics"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K1 [require]
       19 GETIMPORT                        R3 K3 [script]
       21 GETTABLEKS                       R3 R3 K5 ["Utility"]
       23 GETTABLEKS                       R3 R3 K7 ["DebugFlags"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K1 [require]
       28 GETIMPORT                        R4 K3 [script]
       30 GETTABLEKS                       R4 R4 K5 ["Utility"]
       32 GETTABLEKS                       R4 R4 K8 ["DragHelper"]
       34 CALL                             R3 1 1
       35 DUPTABLE                         R4 K15 [{"Components", "DraggerTools", "Flags", "Handles", "Implementation", "Resources", "Utility"}]
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R6 R6 K9 ["Components"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K9 ["Components"]
       45 GETIMPORT                        R5 K1 [require]
       47 GETIMPORT                        R6 K3 [script]
       49 GETTABLEKS                       R6 R6 K10 ["DraggerTools"]
       51 CALL                             R5 1 1
       52 SETTABLEKS                       R5 R4 K10 ["DraggerTools"]
       54 GETIMPORT                        R5 K1 [require]
       56 GETIMPORT                        R6 K3 [script]
       58 GETTABLEKS                       R6 R6 K11 ["Flags"]
       60 CALL                             R5 1 1
       61 SETTABLEKS                       R5 R4 K11 ["Flags"]
       63 GETIMPORT                        R5 K1 [require]
       65 GETIMPORT                        R6 K3 [script]
       67 GETTABLEKS                       R6 R6 K12 ["Handles"]
       69 CALL                             R5 1 1
       70 SETTABLEKS                       R5 R4 K12 ["Handles"]
       72 GETIMPORT                        R5 K1 [require]
       74 GETIMPORT                        R6 K3 [script]
       76 GETTABLEKS                       R6 R6 K13 ["Implementation"]
       78 CALL                             R5 1 1
       79 SETTABLEKS                       R5 R4 K13 ["Implementation"]
       81 GETIMPORT                        R5 K3 [script]
       83 GETTABLEKS                       R5 R5 K14 ["Resources"]
       85 SETTABLEKS                       R5 R4 K14 ["Resources"]
       87 GETIMPORT                        R5 K1 [require]
       89 GETIMPORT                        R6 K3 [script]
       91 GETTABLEKS                       R6 R6 K5 ["Utility"]
       93 CALL                             R5 1 1
       94 SETTABLEKS                       R5 R4 K5 ["Utility"]
       96 RETURN                           R4 1
