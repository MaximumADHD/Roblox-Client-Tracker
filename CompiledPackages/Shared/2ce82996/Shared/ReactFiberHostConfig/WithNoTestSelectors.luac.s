PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 LOADB                            R1 0
        3 LOADK                            R2 K0 ["The current renderer does not support test selectors. This error is likely caused by a bug in React. Please file an issue."]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["invariant"]
       11 CALL                             R0 1 1
       12 DUPCLOSURE                       R1 K6 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 DUPTABLE                         R2 K16 [{["supportsTestSelectors"] = False, ["findFiberRoot"], ["getBoundingRect"], ["getTextContent"], ["isHiddenSubtree"], ["matchAccessibilityRole"], ["setFocusIfFocusable"], ["setupIntersectionObserver"]}]
       15 SETTABLEKS                       R1 R2 K9 ["findFiberRoot"]
       17 SETTABLEKS                       R1 R2 K10 ["getBoundingRect"]
       19 SETTABLEKS                       R1 R2 K11 ["getTextContent"]
       21 SETTABLEKS                       R1 R2 K12 ["isHiddenSubtree"]
       23 SETTABLEKS                       R1 R2 K13 ["matchAccessibilityRole"]
       25 SETTABLEKS                       R1 R2 K14 ["setFocusIfFocusable"]
       27 SETTABLEKS                       R1 R2 K15 ["setupIntersectionObserver"]
       29 RETURN                           R2 1
