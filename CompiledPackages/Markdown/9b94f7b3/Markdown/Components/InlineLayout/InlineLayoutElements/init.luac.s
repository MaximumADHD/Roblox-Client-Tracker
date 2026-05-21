MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InlineLayoutElements"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RenderableInlineElement"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["BaseTextElement"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K5 [require]
       19 GETTABLEKS                       R4 R0 K8 ["HoverContext"]
       21 CALL                             R3 1 1
       22 DUPTABLE                         R4 K9 [{"RenderableInlineElement", "BaseTextElement", "HoverContext"}]
       23 SETTABLEKS                       R1 R4 K6 ["RenderableInlineElement"]
       25 SETTABLEKS                       R2 R4 K7 ["BaseTextElement"]
       27 SETTABLEKS                       R3 R4 K8 ["HoverContext"]
       29 RETURN                           R4 1
