PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K8 [task.delay]
       12 GETUPVAL                         R2 1
       13 DIVK                             R1 R2 K9 [1000]
       14 GETUPVAL                         R2 2
       15 CALL                             R0 2 1
       16 SETUPVAL                         R0 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+5]
        6 GETIMPORT                        R0 K6 [task.cancel]
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 GETIMPORT                        R3 K3 [task.delay]
        8 DIVK                             R4 R0 K4 [1000]
        9 MOVE                             R5 R2
       10 CALL                             R3 2 1
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          REF R3
       13 DUPTABLE                         R5 K8 [{"onTimeout", "reset", "close"}]
       14 SETTABLEKS                       R1 R5 K5 ["onTimeout"]
       16 NEWCLOSURE                       R6 P2
       17 CAPTURE                          REF R3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R6 R5 K6 ["reset"]
       22 NEWCLOSURE                       R6 P3
       23 CAPTURE                          REF R3
       24 SETTABLEKS                       R6 R5 K7 ["close"]
       26 CLOSEUPVALS                      R3
       27 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signal"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 DUPCLOSURE                       R3 K8 [PROTO_4]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K9 ["new"]
       20 RETURN                           R2 1
