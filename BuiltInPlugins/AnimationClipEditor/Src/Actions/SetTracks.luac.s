PROTO_0:
        0 DUPTABLE                         R3 K3 [{"tracks", "unusedTracks", "unusedFacs"}]
        1 SETTABLEKS                       R0 R3 K0 ["tracks"]
        3 SETTABLEKS                       R1 R3 K1 ["unusedTracks"]
        5 SETTABLEKS                       R2 R3 K2 ["unusedFacs"]
        7 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Action"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 GETIMPORT                        R3 K3 [script]
       13 GETTABLEKS                       R2 R3 K6 ["Name"]
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
