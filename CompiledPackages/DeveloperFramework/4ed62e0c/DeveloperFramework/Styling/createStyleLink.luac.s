PROTO_0:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["StyleLink"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R1 K4 ["Name"]
        6 SETTABLEKS                       R3 R2 K4 ["Name"]
        8 SETTABLEKS                       R1 R2 K5 ["StyleSheet"]
       10 SETTABLEKS                       R0 R2 K6 ["Parent"]
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["types"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 RETURN                           R1 1
