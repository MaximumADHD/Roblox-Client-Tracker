MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"CodeEditor", "SyntaxHighlighter", "RichTextHitTest", "LuauLexer", "JsonLexer", "MarkdownLexer"}]
        2 GETIMPORT                        R1 K8 [require]
        4 GETIMPORT                        R2 K10 [script]
        6 GETTABLEKS                       R2 R2 K0 ["CodeEditor"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["CodeEditor"]
       11 GETIMPORT                        R1 K8 [require]
       13 GETIMPORT                        R2 K10 [script]
       15 GETTABLEKS                       R2 R2 K1 ["SyntaxHighlighter"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["SyntaxHighlighter"]
       20 GETIMPORT                        R1 K8 [require]
       22 GETIMPORT                        R2 K10 [script]
       24 GETTABLEKS                       R2 R2 K2 ["RichTextHitTest"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["RichTextHitTest"]
       29 GETIMPORT                        R1 K8 [require]
       31 GETIMPORT                        R2 K10 [script]
       33 GETTABLEKS                       R2 R2 K3 ["LuauLexer"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["LuauLexer"]
       38 GETIMPORT                        R1 K8 [require]
       40 GETIMPORT                        R2 K10 [script]
       42 GETTABLEKS                       R2 R2 K4 ["JsonLexer"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["JsonLexer"]
       47 GETIMPORT                        R1 K8 [require]
       49 GETIMPORT                        R2 K10 [script]
       51 GETTABLEKS                       R2 R2 K5 ["MarkdownLexer"]
       53 CALL                             R1 1 1
       54 SETTABLEKS                       R1 R0 K5 ["MarkdownLexer"]
       56 RETURN                           R0 1
