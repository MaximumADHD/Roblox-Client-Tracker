PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K1 ["FilterPills"]
        5 GETTABLEKS                       R2 R2 K2 ["SelectedFilterPill"]
        7 GETUPVAL                         R5 0
        8 GETUPVAL                         R6 1
        9 CALL                             R5 1 -1
       10 NAMECALL                         R3 R0 K3 ["dispatch"]
       12 CALL                             R3 -1 0
       13 GETUPVAL                         R3 1
       14 JUMPIFNOTEQKS                    R3 K4 ["EarlyTesters"] ; [+10]
       16 GETUPVAL                         R3 1
       17 JUMPIFEQ                         R2 R3 ; [+7]
       19 GETUPVAL                         R5 2
       20 GETUPVAL                         R6 3
       21 CALL                             R5 1 -1
       22 NAMECALL                         R3 R0 K3 ["dispatch"]
       24 CALL                             R3 -1 0
       25 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Actions"]
       15 GETTABLEKS                       R2 R2 K7 ["SetSelectedFilterPill"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       24 GETTABLEKS                       R3 R3 K9 ["LogEarlyTesterTelemetry"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K5 ["Src"]
       31 GETTABLEKS                       R4 R4 K10 ["Util"]
       33 GETTABLEKS                       R4 R4 K11 ["Telemetry"]
       35 GETTABLEKS                       R4 R4 K12 ["EarlyTestersTabOpenedEvent"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K13 [PROTO_1]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 RETURN                           R4 1
