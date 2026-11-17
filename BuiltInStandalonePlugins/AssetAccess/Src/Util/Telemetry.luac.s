PROTO_0:
        0 MOVE                             R2 R0
        1 GETTABLEKS                       R3 R0 K0 ["throttlingPercentage"]
        3 JUMPIF                           R3 ; [+8]
        4 GETIMPORT                        R3 K3 [table.clone]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 MOVE                             R2 R3
        9 LOADN                            R3 10000
       10 SETTABLEKS                       R3 R2 K0 ["throttlingPercentage"]
       12 GETUPVAL                         R3 0
       13 MOVE                             R5 R2
       14 MOVE                             R6 R1
       15 NAMECALL                         R3 R3 K4 ["LogEvent"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R2 R0
        1 GETTABLEKS                       R3 R0 K0 ["throttlingPercentage"]
        3 JUMPIF                           R3 ; [+8]
        4 GETIMPORT                        R3 K3 [table.clone]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 1
        8 MOVE                             R2 R3
        9 LOADN                            R3 10000
       10 SETTABLEKS                       R3 R2 K0 ["throttlingPercentage"]
       12 GETUPVAL                         R3 0
       13 MOVE                             R5 R2
       14 MOVE                             R6 R1
       15 NAMECALL                         R3 R3 K4 ["LogCounter"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R3 R0
        1 GETTABLEKS                       R4 R0 K0 ["throttlingPercentage"]
        3 JUMPIF                           R4 ; [+8]
        4 GETIMPORT                        R4 K3 [table.clone]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 MOVE                             R3 R4
        9 LOADN                            R4 10000
       10 SETTABLEKS                       R4 R3 K0 ["throttlingPercentage"]
       12 GETUPVAL                         R4 0
       13 MOVE                             R6 R3
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 NAMECALL                         R4 R4 K4 ["LogStat"]
       18 CALL                             R4 4 0
       19 RETURN                           R0 0

PROTO_3:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 MOVE                             R1 R0
        8 DUPTABLE                         R2 K10 [{["Counter"] = "RobloxTelemetryCounter", ["Stat"] = "RobloxTelemetryStat", ["EventIngest"] = "EventIngest", ["Points"] = "Points"}]
        9 DUPTABLE                         R3 K12 [{"Backends"}]
       10 SETTABLEKS                       R2 R3 K11 ["Backends"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          REF R1
       14 SETTABLEKS                       R4 R3 K13 ["logEvent"]
       16 NEWCLOSURE                       R4 P1
       17 CAPTURE                          REF R1
       18 SETTABLEKS                       R4 R3 K14 ["logCounter"]
       20 NEWCLOSURE                       R4 P2
       21 CAPTURE                          REF R1
       22 SETTABLEKS                       R4 R3 K15 ["logStat"]
       24 NEWCLOSURE                       R4 P3
       25 CAPTURE                          REF R1
       26 SETTABLEKS                       R4 R3 K16 ["mock"]
       28 NEWCLOSURE                       R4 P4
       29 CAPTURE                          REF R1
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R4 R3 K17 ["reset"]
       33 CLOSEUPVALS                      R1
       34 RETURN                           R3 1
