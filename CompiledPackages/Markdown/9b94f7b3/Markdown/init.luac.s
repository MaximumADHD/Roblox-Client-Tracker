MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Components"]
        5 GETIMPORT                        R1 K1 [script]
        7 GETTABLEKS                       R1 R1 K3 ["SharedFlags"]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K4 ["Hooks"]
       13 DUPTABLE                         R3 K5 [{"Components", "Hooks", "SharedFlags"}]
       14 DUPTABLE                         R4 K9 [{"InlineLayout", "MarkdownViewer", "BulletList"}]
       15 GETIMPORT                        R5 K11 [require]
       17 GETTABLEKS                       R6 R0 K6 ["InlineLayout"]
       19 CALL                             R5 1 1
       20 SETTABLEKS                       R5 R4 K6 ["InlineLayout"]
       22 GETIMPORT                        R5 K11 [require]
       24 GETTABLEKS                       R6 R0 K7 ["MarkdownViewer"]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R4 K7 ["MarkdownViewer"]
       29 GETIMPORT                        R5 K11 [require]
       31 GETTABLEKS                       R6 R0 K8 ["BulletList"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K8 ["BulletList"]
       36 SETTABLEKS                       R4 R3 K2 ["Components"]
       38 DUPTABLE                         R4 K13 [{"useStudioThemeColors"}]
       39 GETIMPORT                        R5 K11 [require]
       41 GETTABLEKS                       R6 R2 K12 ["useStudioThemeColors"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K12 ["useStudioThemeColors"]
       46 SETTABLEKS                       R4 R3 K4 ["Hooks"]
       48 GETIMPORT                        R4 K11 [require]
       50 MOVE                             R5 R1
       51 CALL                             R4 1 1
       52 SETTABLEKS                       R4 R3 K3 ["SharedFlags"]
       54 RETURN                           R3 1
