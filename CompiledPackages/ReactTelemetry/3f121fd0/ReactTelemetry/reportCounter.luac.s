PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 DUPTABLE                         R1 K5 [{"eventName", "backends", "lastUpdated", "description", "links"}]
        4 GETTABLEKS                       R2 R0 K0 ["eventName"]
        6 SETTABLEKS                       R2 R1 K0 ["eventName"]
        8 NEWTABLE                         R2 0 1
       10 LOADK                            R3 K6 ["RobloxTelemetryCounter"]
       11 SETLIST                          R2 R3 1 [1]
       13 SETTABLEKS                       R2 R1 K1 ["backends"]
       15 GETTABLEKS                       R2 R0 K2 ["lastUpdated"]
       17 SETTABLEKS                       R2 R1 K2 ["lastUpdated"]
       19 GETTABLEKS                       R2 R0 K3 ["description"]
       21 SETTABLEKS                       R2 R1 K3 ["description"]
       23 GETTABLEKS                       R2 R0 K4 ["links"]
       25 SETTABLEKS                       R2 R1 K4 ["links"]
       27 DUPTABLE                         R2 K8 [{"customFields"}]
       28 GETTABLEKS                       R3 R0 K7 ["customFields"]
       30 JUMPIF                           R3 ; [+2]
       31 NEWTABLE                         R3 0 0
       33 SETTABLEKS                       R3 R2 K7 ["customFields"]
       35 GETIMPORT                        R3 K10 [pcall]
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K11 ["LogCounter"]
       40 GETUPVAL                         R5 1
       41 MOVE                             R6 R1
       42 MOVE                             R7 R2
       43 GETTABLEKS                       R8 R0 K12 ["value"]
       45 CALL                             R3 5 2
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R5 R6 K13 ["__DEV__"]
       49 JUMPIFNOT                        R5 ; [+10]
       50 JUMPIF                           R3 ; [+9]
       51 GETIMPORT                        R5 K15 [warn]
       53 LOADK                            R7 K16 ["React telemetry collection is enabled but log failed: %*"]
       54 MOVE                             R9 R4
       55 NAMECALL                         R7 R7 K17 ["format"]
       57 CALL                             R7 2 1
       58 MOVE                             R6 R7
       59 CALL                             R5 1 0
       60 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TelemetryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["SafeFlags"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["ReactGlobals"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R2 K11 ["createGetFFlag"]
       25 LOADK                            R5 K12 ["ReactTelemetryEnabled"]
       26 LOADB                            R6 0
       27 CALL                             R4 2 1
       28 CALL                             R4 0 1
       29 DUPCLOSURE                       R5 K13 [PROTO_0]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R3
       33 RETURN                           R5 1
