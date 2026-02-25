PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected story to be a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K6 ["provideMockContext"]
       18 GETUPVAL                         R2 1
       19 MOVE                             R3 R0
       20 CALL                             R1 2 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["TestHelpers"]
       16 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       18 GETTABLEKS                       R6 R1 K10 ["Style"]
       20 GETTABLEKS                       R5 R6 K11 ["Themes"]
       22 GETTABLEKS                       R4 R5 K12 ["StudioTheme"]
       24 GETIMPORT                        R5 K5 [require]
       26 GETTABLEKS                       R9 R0 K13 ["Src"]
       28 GETTABLEKS                       R8 R9 K14 ["Util"]
       30 GETTABLEKS                       R7 R8 K15 ["Telemetry"]
       32 GETTABLEKS                       R6 R7 K16 ["TelemetryContext"]
       34 CALL                             R5 1 1
       35 NEWTABLE                         R6 0 4
       37 GETTABLEKS                       R8 R3 K17 ["Analytics"]
       39 GETTABLEKS                       R7 R8 K18 ["mock"]
       41 CALL                             R7 0 1
       42 GETTABLEKS                       R8 R5 K18 ["mock"]
       44 CALL                             R8 0 1
       45 GETTABLEKS                       R10 R3 K19 ["Localization"]
       47 GETTABLEKS                       R9 R10 K18 ["mock"]
       49 CALL                             R9 0 1
       50 GETTABLEKS                       R10 R4 K18 ["mock"]
       52 CALL                             R10 0 -1
       53 SETLIST                          R6 R7 -1 [1]
       55 DUPCLOSURE                       R7 K20 [PROTO_0]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R6
       58 RETURN                           R7 1
