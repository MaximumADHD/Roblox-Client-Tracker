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
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["invariant"]
       11 CALL                             R0 1 1
       12 DUPCLOSURE                       R1 K6 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 DUPTABLE                         R2 K15 [{"supportsTestSelectors", "findFiberRoot", "getBoundingRect", "getTextContent", "isHiddenSubtree", "matchAccessibilityRole", "setFocusIfFocusable", "setupIntersectionObserver"}]
       15 LOADB                            R3 0
       16 SETTABLEKS                       R3 R2 K7 ["supportsTestSelectors"]
       18 SETTABLEKS                       R1 R2 K8 ["findFiberRoot"]
       20 SETTABLEKS                       R1 R2 K9 ["getBoundingRect"]
       22 SETTABLEKS                       R1 R2 K10 ["getTextContent"]
       24 SETTABLEKS                       R1 R2 K11 ["isHiddenSubtree"]
       26 SETTABLEKS                       R1 R2 K12 ["matchAccessibilityRole"]
       28 SETTABLEKS                       R1 R2 K13 ["setFocusIfFocusable"]
       30 SETTABLEKS                       R1 R2 K14 ["setupIntersectionObserver"]
       32 RETURN                           R2 1
