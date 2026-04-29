MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["RenderableInlineElement"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["BaseTextElement"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["isInlineElement"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R6 K3 [script]
       32 GETTABLEKS                       R5 R6 K4 ["Parent"]
       34 GETTABLEKS                       R4 R5 K8 ["TextSplitByEnum"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R7 K3 [script]
       41 GETTABLEKS                       R6 R7 K4 ["Parent"]
       43 GETTABLEKS                       R5 R6 K9 ["HoverContext"]
       45 CALL                             R4 1 1
       46 DUPTABLE                         R5 K10 [{"RenderableInlineElement", "BaseTextElement", "TextSplitByEnum", "isInlineElement", "HoverContext"}]
       47 SETTABLEKS                       R0 R5 K5 ["RenderableInlineElement"]
       49 SETTABLEKS                       R1 R5 K6 ["BaseTextElement"]
       51 SETTABLEKS                       R3 R5 K8 ["TextSplitByEnum"]
       53 SETTABLEKS                       R2 R5 K7 ["isInlineElement"]
       55 SETTABLEKS                       R4 R5 K9 ["HoverContext"]
       57 RETURN                           R5 1
