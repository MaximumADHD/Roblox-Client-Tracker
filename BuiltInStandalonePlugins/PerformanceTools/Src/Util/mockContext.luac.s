PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected children to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["provideMockContext"]
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R0
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["TestHelpers"]
       16 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Util"]
       24 GETTABLEKS                       R5 R5 K12 ["Telemetry"]
       26 GETTABLEKS                       R5 R5 K13 ["TelemetryContext"]
       28 CALL                             R4 1 1
       29 NEWTABLE                         R5 0 3
       31 GETTABLEKS                       R6 R3 K14 ["Analytics"]
       33 GETTABLEKS                       R6 R6 K15 ["mock"]
       35 CALL                             R6 0 1
       36 GETTABLEKS                       R7 R3 K16 ["Localization"]
       38 GETTABLEKS                       R7 R7 K15 ["mock"]
       40 CALL                             R7 0 1
       41 GETTABLEKS                       R8 R4 K15 ["mock"]
       43 CALL                             R8 0 -1
       44 SETLIST                          R5 R6 -1 [1]
       46 DUPCLOSURE                       R6 K17 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 RETURN                           R6 1
