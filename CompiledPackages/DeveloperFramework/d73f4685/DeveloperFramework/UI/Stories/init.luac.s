PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["StoryMiddleware"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"getStoryMiddleware"}]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K0 ["getStoryMiddleware"]
        5 RETURN                           R0 1
