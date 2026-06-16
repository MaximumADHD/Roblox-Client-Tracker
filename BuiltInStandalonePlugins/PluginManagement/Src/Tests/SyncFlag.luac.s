PROTO_0:
        0 DUPTABLE                         R0 K2 [{"_value", "_waitingThread"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["_value"]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["_waitingThread"]
        7 GETUPVAL                         R3 0
        8 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [setmetatable]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_value"]
        3 GETTABLEKS                       R1 R0 K1 ["_waitingThread"]
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETTABLEKS                       R1 R0 K1 ["_waitingThread"]
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R0 K1 ["_waitingThread"]
       11 GETIMPORT                        R2 K4 [coroutine.resume]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_value"]
        2 JUMPIF                           R1 ; [+9]
        3 GETIMPORT                        R1 K3 [coroutine.running]
        5 CALL                             R1 0 1
        6 SETTABLEKS                       R1 R0 K4 ["_waitingThread"]
        8 GETIMPORT                        R1 K6 [coroutine.yield]
       10 CALL                             R1 0 0
       11 JUMPBACK                         ; [-12]
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K0 ["_value"]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["mark"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["waitAndReset"]
       15 RETURN                           R0 1
