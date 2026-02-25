MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Utils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K10 [{"SplitText", "IsCli", "IsInlineElement", "InlineElementType", "TextSplitByEnum", "TestUtils"}]
        8 GETIMPORT                        R2 K12 [require]
       10 GETTABLEKS                       R3 R0 K4 ["SplitText"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K4 ["SplitText"]
       15 GETIMPORT                        R2 K12 [require]
       17 GETTABLEKS                       R3 R0 K5 ["IsCli"]
       19 CALL                             R2 1 1
       20 SETTABLEKS                       R2 R1 K5 ["IsCli"]
       22 GETIMPORT                        R2 K12 [require]
       24 GETTABLEKS                       R3 R0 K6 ["IsInlineElement"]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R1 K6 ["IsInlineElement"]
       29 GETIMPORT                        R2 K12 [require]
       31 GETTABLEKS                       R3 R0 K7 ["InlineElementType"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K7 ["InlineElementType"]
       36 GETIMPORT                        R2 K12 [require]
       38 GETTABLEKS                       R3 R0 K8 ["TextSplitByEnum"]
       40 CALL                             R2 1 1
       41 SETTABLEKS                       R2 R1 K8 ["TextSplitByEnum"]
       43 GETIMPORT                        R2 K12 [require]
       45 GETTABLEKS                       R3 R0 K9 ["TestUtils"]
       47 CALL                             R2 1 1
       48 SETTABLEKS                       R2 R1 K9 ["TestUtils"]
       50 RETURN                           R1 1
