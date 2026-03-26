MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"UI"}]
        2 DUPTABLE                         R1 K3 [{"MarkdownViewer"}]
        3 GETIMPORT                        R2 K5 [require]
        5 GETIMPORT                        R4 K7 [script]
        7 GETTABLEKS                       R3 R4 K2 ["MarkdownViewer"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K2 ["MarkdownViewer"]
       12 SETTABLEKS                       R1 R0 K0 ["UI"]
       14 RETURN                           R0 1
