PROTO_0:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        3 LOADN                            R3 200
        4 JUMPIFLT                         R2 R3 ; [+6]
        6 GETTABLEKS                       R2 R1 K0 ["StatusCode"]
        8 LOADN                            R3 44
        9 JUMPIFNOTLE                      R3 R2 ; [+33]
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R4 1
       13 DUPTABLE                         R5 K6 [{"url", "statusCode", "errorDetails", "user", "ampresponse"}]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K7 ["Url"]
       17 SETTABLEKS                       R6 R5 K1 ["url"]
       19 GETTABLEKS                       R6 R1 K0 ["StatusCode"]
       21 SETTABLEKS                       R6 R5 K2 ["statusCode"]
       23 GETTABLEKS                       R6 R1 K8 ["Body"]
       25 SETTABLEKS                       R6 R5 K3 ["errorDetails"]
       27 GETUPVAL                         R6 3
       28 NAMECALL                         R6 R6 K9 ["GetUserId"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R5 K4 ["user"]
       33 LOADK                            R6 K10 [""]
       34 SETTABLEKS                       R6 R5 K5 ["ampresponse"]
       36 NAMECALL                         R2 R2 K11 ["logRobloxTelemetryEvent"]
       38 CALL                             R2 3 0
       39 GETUPVAL                         R2 4
       40 LOADK                            R3 K12 ["Failed to fetch AMP collab auth status"]
       41 CALL                             R2 1 -1
       42 RETURN                           R2 -1
       43 GETUPVAL                         R2 5
       44 GETTABLEKS                       R4 R1 K8 ["Body"]
       46 NAMECALL                         R2 R2 K13 ["JSONDecode"]
       48 CALL                             R2 2 1
       49 GETTABLEKS                       R3 R2 K14 ["access"]
       51 JUMPIFEQKS                       R3 K15 ["Granted"] ; [+2]
       53 LOADB                            R4 0 +1
       54 LOADB                            R4 1
       55 JUMPIFEQKS                       R3 K15 ["Granted"] ; [+30]
       57 JUMPIFEQKS                       R3 K16 ["Denied"] ; [+28]
       59 GETUPVAL                         R5 0
       60 GETUPVAL                         R7 1
       61 DUPTABLE                         R8 K6 [{"url", "statusCode", "errorDetails", "user", "ampresponse"}]
       62 GETUPVAL                         R9 2
       63 GETTABLEKS                       R9 R9 K7 ["Url"]
       65 SETTABLEKS                       R9 R8 K1 ["url"]
       67 GETTABLEKS                       R9 R1 K0 ["StatusCode"]
       69 SETTABLEKS                       R9 R8 K2 ["statusCode"]
       71 GETTABLEKS                       R9 R1 K8 ["Body"]
       73 SETTABLEKS                       R9 R8 K3 ["errorDetails"]
       75 GETUPVAL                         R9 3
       76 NAMECALL                         R9 R9 K9 ["GetUserId"]
       78 CALL                             R9 1 1
       79 SETTABLEKS                       R9 R8 K4 ["user"]
       81 SETTABLEKS                       R3 R8 K5 ["ampresponse"]
       83 NAMECALL                         R5 R5 K11 ["logRobloxTelemetryEvent"]
       85 CALL                             R5 3 0
       86 GETUPVAL                         R5 6
       87 MOVE                             R6 R4
       88 CALL                             R5 1 -1
       89 RETURN                           R5 -1

PROTO_1:
        0 DUPTABLE                         R2 K3 [{"Method", "Url", "Headers"}]
        1 LOADK                            R3 K4 ["GET"]
        2 SETTABLEKS                       R3 R2 K0 ["Method"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K5 ["BuildRobloxUrl"]
        7 LOADK                            R4 K6 ["apis"]
        8 LOADK                            R6 K7 ["access-management/v1/upsell-feature-access?featureName="]
        9 GETUPVAL                         R7 1
       10 LOADK                            R8 K8 ["&nameSpace="]
       11 GETUPVAL                         R9 2
       12 CONCAT                           R5 R6 R9
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K1 ["Url"]
       16 NEWTABLE                         R3 1 0
       18 LOADK                            R4 K9 ["application/json"]
       19 SETTABLEKS                       R4 R3 K10 ["Content-Type"]
       21 SETTABLEKS                       R3 R2 K2 ["Headers"]
       23 GETUPVAL                         R3 3
       24 MOVE                             R5 R2
       25 NAMECALL                         R3 R3 K11 ["RequestInternal"]
       27 CALL                             R3 2 1
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R3 R3 K12 ["Start"]
       38 CALL                             R3 2 -1
       39 RETURN                           R3 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["PlaceId"]
        4 JUMPIFEQKN                       R2 K3 [0] ; [+4]
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 JUMPIF                           R2 ; [+6]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K4 ["resolve"]
       12 LOADB                            R3 0
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["new"]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          UPVAL U6
       26 CALL                             R2 1 -1
       27 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Util"]
       20 GETTABLEKS                       R3 R2 K8 ["Promise"]
       22 GETIMPORT                        R4 K10 [game]
       24 LOADK                            R6 K11 ["StudioService"]
       25 NAMECALL                         R4 R4 K12 ["GetService"]
       27 CALL                             R4 2 1
       28 GETIMPORT                        R5 K4 [require]
       30 GETTABLEKS                       R6 R0 K13 ["Src"]
       32 GETTABLEKS                       R6 R6 K14 ["Networking"]
       34 GETTABLEKS                       R6 R6 K15 ["Http"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K10 [game]
       39 LOADK                            R8 K16 ["HttpService"]
       40 NAMECALL                         R6 R6 K12 ["GetService"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R0 K13 ["Src"]
       47 GETTABLEKS                       R8 R8 K7 ["Util"]
       49 GETTABLEKS                       R8 R8 K17 ["IsTeamCreateEnabled"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R9 R0 K5 ["Packages"]
       56 GETTABLEKS                       R9 R9 K18 ["TelemetryProtocol"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R8 K19 ["new"]
       61 CALL                             R9 0 1
       62 GETIMPORT                        R10 K4 [require]
       64 GETTABLEKS                       R11 R0 K13 ["Src"]
       66 GETTABLEKS                       R11 R11 K7 ["Util"]
       68 GETTABLEKS                       R11 R11 K20 ["Telemetry"]
       70 GETTABLEKS                       R11 R11 K21 ["FetchAMPStatusFailureEvent"]
       72 CALL                             R10 1 1
       73 DUPCLOSURE                       R11 K22 [PROTO_2]
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R4
       81 RETURN                           R11 1
