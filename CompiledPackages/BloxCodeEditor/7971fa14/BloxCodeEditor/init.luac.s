MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["CodeEditor"]
        7 CALL                             R0 1 1
        8 DUPTABLE                         R1 K10 [{"CodeEditor", "SyntaxHighlighter", "RichTextHitTest", "LuauLexer", "JsonLexer", "MarkdownLexer"}]
        9 SETTABLEKS                       R0 R1 K4 ["CodeEditor"]
       11 GETIMPORT                        R2 K1 [require]
       13 GETIMPORT                        R3 K3 [script]
       15 GETTABLEKS                       R3 R3 K5 ["SyntaxHighlighter"]
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R1 K5 ["SyntaxHighlighter"]
       20 GETIMPORT                        R2 K1 [require]
       22 GETIMPORT                        R3 K3 [script]
       24 GETTABLEKS                       R3 R3 K6 ["RichTextHitTest"]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R1 K6 ["RichTextHitTest"]
       29 GETIMPORT                        R2 K1 [require]
       31 GETIMPORT                        R3 K3 [script]
       33 GETTABLEKS                       R3 R3 K7 ["LuauLexer"]
       35 CALL                             R2 1 1
       36 SETTABLEKS                       R2 R1 K7 ["LuauLexer"]
       38 GETIMPORT                        R2 K1 [require]
       40 GETIMPORT                        R3 K3 [script]
       42 GETTABLEKS                       R3 R3 K8 ["JsonLexer"]
       44 CALL                             R2 1 1
       45 SETTABLEKS                       R2 R1 K8 ["JsonLexer"]
       47 GETIMPORT                        R2 K1 [require]
       49 GETIMPORT                        R3 K3 [script]
       51 GETTABLEKS                       R3 R3 K9 ["MarkdownLexer"]
       53 CALL                             R2 1 1
       54 SETTABLEKS                       R2 R1 K9 ["MarkdownLexer"]
       56 RETURN                           R1 1
