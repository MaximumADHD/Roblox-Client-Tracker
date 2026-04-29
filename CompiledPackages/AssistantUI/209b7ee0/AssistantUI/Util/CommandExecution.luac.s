PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R4 R1 K1 ["tools"]
        6 GETTABLEKS                       R3 R4 K2 ["executeLuau"]
        8 GETTABLEKS                       R2 R3 K3 ["loadCode"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 1
       13 SETTABLE                         R3 R4 R2
       14 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADK                            R2 K2 ["complete"]
        6 JUMP                             ; [+1]
        7 LOADK                            R2 K3 ["error"]
        8 SETUPVAL                         R2 1
        9 SETUPVAL                         R1 2
       10 GETIMPORT                        R2 K6 [coroutine.status]
       12 GETUPVAL                         R3 3
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K7 ["suspended"] ; [+5]
       16 GETIMPORT                        R2 K10 [task.spawn]
       18 GETUPVAL                         R3 3
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 FASTCALL2K                       ASSERT R1 K0 ; [+5]
        4 MOVE                             R3 R1
        5 LOADK                            R4 K0 ["Code not loaded"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETIMPORT                        R2 K5 [coroutine.running]
       11 CALL                             R2 0 1
       12 LOADNIL                          R3
       13 LOADK                            R4 K6 ["incomplete"]
       14 GETIMPORT                        R5 K8 [coroutine.create]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          REF R4
       19 CAPTURE                          REF R3
       20 CAPTURE                          VAL R2
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 1
       23 NEWTABLE                         R7 0 2
       25 MOVE                             R8 R5
       26 MOVE                             R9 R2
       27 SETLIST                          R7 R8 2 [1]
       29 SETTABLE                         R7 R6 R0
       30 GETIMPORT                        R6 K11 [task.spawn]
       32 MOVE                             R7 R5
       33 CALL                             R6 1 0
       34 GETIMPORT                        R6 K13 [coroutine.status]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 1
       38 JUMPIFEQKS                       R6 K14 ["dead"] ; [+4]
       40 GETIMPORT                        R6 K16 [coroutine.yield]
       42 CALL                             R6 0 0
       43 GETUPVAL                         R6 1
       44 LOADNIL                          R7
       45 SETTABLE                         R7 R6 R0
       46 JUMPIFNOTEQKS                    R4 K6 ["incomplete"] ; [+5]
       48 GETIMPORT                        R6 K18 [error]
       50 LOADK                            R7 K19 ["Script execution was cancelled"]
       51 CALL                             R6 1 0
       52 JUMPIFNOTEQKS                    R4 K17 ["error"] ; [+5]
       54 GETIMPORT                        R6 K18 [error]
       56 MOVE                             R7 R3
       57 CALL                             R6 1 0
       58 CLOSEUPVALS                      R3
       59 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+20]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R0
        5 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        6 GETIMPORT                        R1 K2 [table.unpack]
        8 CALL                             R1 1 2
        9 GETIMPORT                        R3 K5 [coroutine.status]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K6 ["suspended"] ; [+9]
       15 GETIMPORT                        R3 K9 [task.cancel]
       17 MOVE                             R4 R1
       18 CALL                             R3 1 0
       19 GETIMPORT                        R3 K11 [task.spawn]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R1 R2 K12 ["get"]
       26 CALL                             R1 0 1
       27 GETTABLEKS                       R4 R1 K13 ["tools"]
       29 GETTABLEKS                       R3 R4 K14 ["executeLuau"]
       31 GETTABLEKS                       R2 R3 K15 ["stopCode"]
       33 MOVE                             R3 R0
       34 CALL                             R2 1 0
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 0
       16 NEWTABLE                         R3 0 0
       18 NEWTABLE                         R4 4 0
       20 DUPCLOSURE                       R5 K8 [PROTO_0]
       21 CAPTURE                          VAL R3
       22 SETTABLEKS                       R5 R4 K9 ["isRunning"]
       24 DUPCLOSURE                       R5 K10 [PROTO_1]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R5 R4 K11 ["loadCode"]
       29 DUPCLOSURE                       R5 K12 [PROTO_3]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R5 R4 K13 ["runCode"]
       34 DUPCLOSURE                       R5 K14 [PROTO_4]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R5 R4 K15 ["stopCode"]
       39 RETURN                           R4 1
