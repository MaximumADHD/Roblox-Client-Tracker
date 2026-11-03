PROTO_0:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["getMap"]
        3 CALL                             R2 0 3
        4 FORGPREP                         R2
        5 GETTABLEKS                       R9 R6 K1 ["zIndex"]
        7 FASTCALL2                        MATH_MAX R1 R9 ; [+4]
        9 MOVE                             R8 R1
       10 GETIMPORT                        R7 K4 [math.max]
       12 CALL                             R7 2 1
       13 MOVE                             R1 R7
       14 FORGLOOP                         R2 2 ; [-10]
       16 ADDK                             R2 R1 K5 [1]
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["NodeViewTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Hooks"]
       16 GETTABLEKS                       R3 R3 K8 ["useSignalDispatcher"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 RETURN                           R3 1
