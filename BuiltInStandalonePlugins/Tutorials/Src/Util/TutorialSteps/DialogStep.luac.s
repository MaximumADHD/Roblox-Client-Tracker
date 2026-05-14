PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TutorialStep"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["extend"]
       12 LOADK                            R2 K7 ["Dialog"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 SETTABLEKS                       R2 R1 K9 ["bind"]
       17 DUPCLOSURE                       R2 K10 [PROTO_1]
       18 SETTABLEKS                       R2 R1 K11 ["unbind"]
       20 RETURN                           R1 1
