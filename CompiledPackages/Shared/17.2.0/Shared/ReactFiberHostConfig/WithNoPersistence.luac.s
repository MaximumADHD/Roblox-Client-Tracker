PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 LOADB                            R1 0
        3 LOADK                            R2 K0 ["The current renderer does not support persistence. This error is likely caused by a bug in React. Please file an issue."]
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
       14 DUPTABLE                         R2 K17 [{["supportsPersistence"] = False, ["cloneInstance"], ["cloneFundamentalInstance"], ["createContainerChildSet"], ["appendChildToContainerChildSet"], ["finalizeContainerChildren"], ["replaceContainerChildren"], ["cloneHiddenInstance"], ["cloneHiddenTextInstance"]}]
       15 SETTABLEKS                       R1 R2 K9 ["cloneInstance"]
       17 SETTABLEKS                       R1 R2 K10 ["cloneFundamentalInstance"]
       19 SETTABLEKS                       R1 R2 K11 ["createContainerChildSet"]
       21 SETTABLEKS                       R1 R2 K12 ["appendChildToContainerChildSet"]
       23 SETTABLEKS                       R1 R2 K13 ["finalizeContainerChildren"]
       25 SETTABLEKS                       R1 R2 K14 ["replaceContainerChildren"]
       27 SETTABLEKS                       R1 R2 K15 ["cloneHiddenInstance"]
       29 SETTABLEKS                       R1 R2 K16 ["cloneHiddenTextInstance"]
       31 RETURN                           R2 1
