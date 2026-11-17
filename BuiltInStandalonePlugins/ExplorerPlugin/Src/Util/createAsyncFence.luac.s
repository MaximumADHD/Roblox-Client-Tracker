PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETIMPORT                        R0 K2 [coroutine.resume]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 FASTCALL2K                       ASSERT R1 K0 ; [+4]
       10 LOADK                            R2 K0 ["awaitAsync called twice"]
       11 GETIMPORT                        R0 K2 [assert]
       13 CALL                             R0 2 0
       14 GETIMPORT                        R0 K5 [coroutine.running]
       16 CALL                             R0 0 1
       17 SETUPVAL                         R0 1
       18 GETIMPORT                        R0 K7 [coroutine.yield]
       20 CALL                             R0 0 0
       21 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 0
        1 LOADNIL                          R1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          REF R0
        4 CAPTURE                          REF R1
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          REF R0
        7 CAPTURE                          REF R1
        8 DUPTABLE                         R4 K2 [{"resumeAsync", "awaitAsync"}]
        9 SETTABLEKS                       R2 R4 K0 ["resumeAsync"]
       11 SETTABLEKS                       R3 R4 K1 ["awaitAsync"]
       13 CLOSEUPVALS                      R0
       14 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1
