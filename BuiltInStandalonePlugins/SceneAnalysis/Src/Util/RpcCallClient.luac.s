PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["pending"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["pending"]
        8 LOADNIL                          R4
        9 SETTABLE                         R4 R3 R0
       10 MOVE                             R3 R2
       11 MOVE                             R4 R1
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["plugin"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["pending"]
       14 LOADN                            R2 1
       15 SETTABLEKS                       R2 R1 K4 ["nextRequestId"]
       17 LOADK                            R4 K5 ["DeliverResponse"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R2 R0 K6 ["OnInvoke"]
       22 CALL                             R2 3 0
       23 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+8]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 SETUPVAL                         R0 1
        5 GETIMPORT                        R1 K2 [coroutine.resume]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+21]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["pending"]
        5 GETUPVAL                         R2 2
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["pending"]
       11 GETUPVAL                         R1 2
       12 LOADNIL                          R2
       13 SETTABLE                         R2 R0 R1
       14 LOADB                            R0 1
       15 SETUPVAL                         R0 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 3
       18 GETIMPORT                        R0 K3 [coroutine.resume]
       20 GETUPVAL                         R1 4
       21 LOADNIL                          R2
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["nextRequestId"]
        2 GETTABLEKS                       R5 R0 K0 ["nextRequestId"]
        4 ADDK                             R5 R5 K1 [1]
        5 SETTABLEKS                       R5 R0 K0 ["nextRequestId"]
        7 GETIMPORT                        R5 K4 [coroutine.running]
        9 CALL                             R5 0 1
       10 JUMPIFNOTEQKNIL                  R5 ; [+7]
       12 GETIMPORT                        R6 K6 [warn]
       14 LOADK                            R7 K7 ["CallMethodAsync must be used inside a coroutine"]
       15 CALL                             R6 1 0
       16 LOADNIL                          R6
       17 RETURN                           R6 1
       18 LOADB                            R6 0
       19 LOADNIL                          R7
       20 GETTABLEKS                       R8 R0 K8 ["pending"]
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          REF R6
       24 CAPTURE                          REF R7
       25 CAPTURE                          VAL R5
       26 SETTABLE                         R9 R8 R4
       27 GETTABLEKS                       R8 R0 K9 ["plugin"]
       29 LOADK                            R10 K10 ["PluginBridgeRequest"]
       30 MOVE                             R11 R4
       31 MOVE                             R12 R1
       32 MOVE                             R13 R2
       33 NAMECALL                         R8 R8 K11 ["Invoke"]
       35 CALL                             R8 5 0
       36 GETIMPORT                        R8 K14 [task.delay]
       38 ORK                              R9 R3 K15 [5]
       39 NEWCLOSURE                       R10 P1
       40 CAPTURE                          REF R6
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R4
       43 CAPTURE                          REF R7
       44 CAPTURE                          VAL R5
       45 CALL                             R8 2 0
       46 GETIMPORT                        R8 K17 [coroutine.yield]
       48 CALL                             R8 0 -1
       49 CLOSEUPVALS                      R6
       50 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_1]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_4]
       10 SETTABLEKS                       R1 R0 K4 ["CallMethodAsync"]
       12 RETURN                           R0 1
