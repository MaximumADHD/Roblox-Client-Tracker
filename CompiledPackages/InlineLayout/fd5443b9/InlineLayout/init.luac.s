MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Components"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETIMPORT                        R2 K1 [script]
        9 GETTABLEKS                       R2 R2 K5 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["InlineLayout"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K6 ["InlineLayout"]
       21 GETTABLEKS                       R4 R4 K7 ["InlineLayoutElements"]
       23 GETTABLEKS                       R4 R4 K8 ["RenderableInlineElement"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K6 ["InlineLayout"]
       30 GETTABLEKS                       R5 R5 K7 ["InlineLayoutElements"]
       32 GETTABLEKS                       R5 R5 K9 ["BaseTextElement"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K6 ["InlineLayout"]
       39 GETTABLEKS                       R6 R6 K7 ["InlineLayoutElements"]
       41 GETTABLEKS                       R6 R6 K10 ["HardBreakElement"]
       43 CALL                             R5 1 1
       44 DUPTABLE                         R6 K14 [{"Components", "Enums", "Test", "Utils"}]
       45 GETIMPORT                        R7 K4 [require]
       47 GETIMPORT                        R8 K1 [script]
       49 GETTABLEKS                       R8 R8 K2 ["Components"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K2 ["Components"]
       54 GETIMPORT                        R7 K4 [require]
       56 GETIMPORT                        R8 K1 [script]
       58 GETTABLEKS                       R8 R8 K11 ["Enums"]
       60 CALL                             R7 1 1
       61 SETTABLEKS                       R7 R6 K11 ["Enums"]
       63 GETIMPORT                        R7 K4 [require]
       65 GETIMPORT                        R8 K1 [script]
       67 GETTABLEKS                       R8 R8 K12 ["Test"]
       69 CALL                             R7 1 1
       70 SETTABLEKS                       R7 R6 K12 ["Test"]
       72 GETIMPORT                        R7 K4 [require]
       74 GETIMPORT                        R8 K1 [script]
       76 GETTABLEKS                       R8 R8 K13 ["Utils"]
       78 CALL                             R7 1 1
       79 SETTABLEKS                       R7 R6 K13 ["Utils"]
       81 RETURN                           R6 1
