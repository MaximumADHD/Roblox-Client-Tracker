PROTO_0:
        0 GETIMPORT                        R3 K2 [coroutine.status]
        2 GETUPVAL                         R4 0
        3 CALL                             R3 1 1
        4 JUMPIFEQKS                       R3 K3 ["suspended"] ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       10 LOADK                            R3 K4 ["not suspended!"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [coroutine.resume]
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R0
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["ResetApplicationScopeAsync"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [coroutine.running]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R1 0
        4 LOADK                            R3 K3 ["FTFUtil"]
        5 NAMECALL                         R1 R1 K4 ["GetPluginComponent"]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K7 [task.defer]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 CALL                             R2 1 0
       14 GETIMPORT                        R2 K9 [coroutine.yield]
       16 CALL                             R2 0 0
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Plugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestorWhichIsA"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_2]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
