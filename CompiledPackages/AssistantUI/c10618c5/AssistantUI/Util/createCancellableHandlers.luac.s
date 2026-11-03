PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["waiter"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R0 K0 ["waiter"]
        6 GETIMPORT                        R2 K3 [task.spawn]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.pack]
        2 GETIMPORT                        R1 K4 [pcall]
        4 GETUPVAL                         R2 1
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 1
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R1 R0 K5 ["waiter"]
       11 JUMPIFNOT                        R1 ; [+7]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R0 K5 ["waiter"]
       15 GETIMPORT                        R2 K8 [task.spawn]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 2 0
        2 LOADNIL                          R2
        3 GETUPVAL                         R3 0
        4 LOADB                            R4 1
        5 SETTABLE                         R4 R3 R1
        6 GETIMPORT                        R3 K2 [task.spawn]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          REF R2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R1 K3 ["child"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+9]
       17 GETIMPORT                        R3 K6 [coroutine.running]
       19 CALL                             R3 0 1
       20 SETTABLEKS                       R3 R1 K7 ["waiter"]
       22 GETIMPORT                        R3 K9 [coroutine.yield]
       24 CALL                             R3 0 0
       25 GETUPVAL                         R3 0
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R3 R1
       28 JUMPIFNOTEQKNIL                  R2 ; [+6]
       30 GETIMPORT                        R3 K11 [error]
       32 LOADK                            R4 K12 ["Operation was cancelled"]
       33 LOADN                            R5 0
       34 CALL                             R3 2 0
       35 GETTABLEN                        R3 R2 1
       36 JUMPIF                           R3 ; [+5]
       37 GETIMPORT                        R3 K11 [error]
       39 GETTABLEN                        R4 R2 2
       40 LOADN                            R5 0
       41 CALL                             R3 2 0
       42 LOADN                            R5 2
       43 GETTABLEKS                       R6 R2 K13 ["n"]
       45 FASTCALL3                        TABLE_UNPACK R2 R5 R6
       47 MOVE                             R4 R2
       48 GETIMPORT                        R3 K16 [table.unpack]
       50 CALL                             R3 3 -1
       51 CLOSEUPVALS                      R2
       52 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R3 K0 ["child"]
        6 JUMPIFNOT                        R5 ; [+16]
        7 GETIMPORT                        R6 K3 [coroutine.status]
        9 MOVE                             R7 R5
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K4 ["dead"] ; [+11]
       13 GETTABLEKS                       R6 R3 K5 ["waiter"]
       15 JUMPIFNOT                        R6 ; [+7]
       16 LOADNIL                          R7
       17 SETTABLEKS                       R7 R3 K5 ["waiter"]
       19 GETIMPORT                        R7 K8 [task.spawn]
       21 MOVE                             R8 R6
       22 CALL                             R7 1 0
       23 FORGLOOP                         R0 2 ; [-20]
       25 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 0
        6 JUMPIF                           R1 ; [+5]
        7 GETIMPORT                        R3 K3 [error]
        9 MOVE                             R4 R2
       10 LOADN                            R5 0
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 DUPCLOSURE                       R1 K0 [PROTO_0]
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R3 P2
        6 CAPTURE                          VAL R0
        7 DUPTABLE                         R4 K3 [{"run", "cancel"}]
        8 SETTABLEKS                       R2 R4 K1 ["run"]
       10 NEWCLOSURE                       R5 P3
       11 CAPTURE                          VAL R3
       12 SETTABLEKS                       R5 R4 K2 ["cancel"]
       14 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_5]
        2 RETURN                           R0 1
