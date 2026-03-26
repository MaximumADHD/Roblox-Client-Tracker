PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+16]
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 1
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 FORGPREP                         R0
       10 MOVE                             R5 R4
       11 CALL                             R5 0 0
       12 FORGLOOP                         R0 2 ; [-3]
       14 GETIMPORT                        R0 K2 [table.clear]
       16 GETUPVAL                         R1 2
       17 CALL                             R0 1 0
       18 LOADB                            R0 0
       19 SETUPVAL                         R0 1
       20 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [_G]
        3 GETTABLEKS                       R0 R1 K2 ["__SIGNALS_DEFERRED_MODE_ENABLED__"]
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R1 K1 [_G]
        8 GETTABLEKS                       R0 R1 K3 ["__DEV__"]
       10 LOADB                            R1 0
       11 NEWTABLE                         R2 0 0
       13 DUPCLOSURE                       R3 K4 [PROTO_0]
       14 CAPTURE                          VAL R2
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          REF R1
       18 CAPTURE                          VAL R2
       19 DUPTABLE                         R5 K7 [{"scheduleWork", "runContinuations"}]
       20 JUMPIFNOT                        R0 ; [+3]
       21 GETIMPORT                        R6 K10 [task.defer]
       23 JUMP                             ; [+1]
       24 MOVE                             R6 R3
       25 SETTABLEKS                       R6 R5 K5 ["scheduleWork"]
       27 JUMPIFNOT                        R0 ; [+2]
       28 DUPCLOSURE                       R6 K11 [PROTO_2]
       29 JUMP                             ; [+1]
       30 MOVE                             R6 R4
       31 SETTABLEKS                       R6 R5 K6 ["runContinuations"]
       33 CLOSEUPVALS                      R1
       34 RETURN                           R5 1
