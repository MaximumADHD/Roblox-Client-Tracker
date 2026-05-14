PROTO_0:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+18]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K4 [{"url", "errorDetails", "user", "ampresponse"}]
        5 SETTABLEKS                       R0 R6 K0 ["url"]
        7 SETTABLEKS                       R1 R6 K1 ["errorDetails"]
        9 GETUPVAL                         R7 2
       10 NAMECALL                         R7 R7 K5 ["GetUserId"]
       12 CALL                             R7 1 1
       13 SETTABLEKS                       R7 R6 K2 ["user"]
       15 SETTABLEKS                       R2 R6 K3 ["ampresponse"]
       17 NAMECALL                         R3 R3 K6 ["log"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+24]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 JUMPIFNOT                        R3 ; [+19]
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R5 3
        9 DUPTABLE                         R6 K4 [{"url", "errorDetails", "user", "ampresponse"}]
       10 SETTABLEKS                       R2 R6 K0 ["url"]
       12 SETTABLEKS                       R1 R6 K1 ["errorDetails"]
       14 GETUPVAL                         R7 4
       15 NAMECALL                         R7 R7 K5 ["GetUserId"]
       17 CALL                             R7 1 1
       18 SETTABLEKS                       R7 R6 K2 ["user"]
       20 LOADK                            R7 K6 [""]
       21 SETTABLEKS                       R7 R6 K3 ["ampresponse"]
       23 NAMECALL                         R3 R3 K7 ["log"]
       25 CALL                             R3 3 0
       26 LOADB                            R2 0
       27 RETURN                           R2 1
       28 GETTABLEKS                       R2 R1 K8 ["access"]
       30 JUMPIFEQKS                       R2 K9 ["Granted"] ; [+30]
       32 GETTABLEKS                       R2 R1 K8 ["access"]
       34 JUMPIFEQKS                       R2 K10 ["Denied"] ; [+26]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R3 R1 K8 ["access"]
       39 GETUPVAL                         R4 2
       40 JUMPIFNOT                        R4 ; [+18]
       41 GETUPVAL                         R4 2
       42 GETUPVAL                         R6 3
       43 DUPTABLE                         R7 K4 [{"url", "errorDetails", "user", "ampresponse"}]
       44 SETTABLEKS                       R2 R7 K0 ["url"]
       46 SETTABLEKS                       R1 R7 K1 ["errorDetails"]
       48 GETUPVAL                         R8 4
       49 NAMECALL                         R8 R8 K5 ["GetUserId"]
       51 CALL                             R8 1 1
       52 SETTABLEKS                       R8 R7 K2 ["user"]
       54 SETTABLEKS                       R3 R7 K3 ["ampresponse"]
       56 NAMECALL                         R4 R4 K7 ["log"]
       58 CALL                             R4 3 0
       59 LOADB                            R2 0
       60 RETURN                           R2 1
       61 GETTABLEKS                       R3 R1 K8 ["access"]
       63 JUMPIFEQKS                       R3 K9 ["Granted"] ; [+2]
       65 LOADB                            R2 0 +1
       66 LOADB                            R2 1
       67 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["DiscoverShowStudioFAEBanner experienced an error querying AMP access rule: %*"]
        3 GETUPVAL                         R5 0
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 1
        7 MOVE                             R2 R3
        8 CALL                             R1 1 0
        9 GETIMPORT                        R1 K1 [warn]
       11 LOADK                            R3 K4 ["DiscoverShowStudioFAEBanner error: %*"]
       12 MOVE                             R5 R0
       13 NAMECALL                         R3 R3 K3 ["format"]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 CALL                             R1 1 0
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K6 [tostring]
       22 CALL                             R1 1 1
       23 FASTCALL1                        TYPE R0 ; [+3]
       24 MOVE                             R3 R0
       25 GETIMPORT                        R2 K8 [type]
       27 CALL                             R2 1 1
       28 JUMPIFNOTEQKS                    R2 K9 ["table"] ; [+11]
       30 GETTABLEKS                       R3 R0 K10 ["responseBody"]
       32 FASTCALL1                        TYPE R3 ; [+2]
       33 GETIMPORT                        R2 K8 [type]
       35 CALL                             R2 1 1
       36 JUMPIFNOTEQKS                    R2 K11 ["string"] ; [+3]
       38 GETTABLEKS                       R1 R0 K10 ["responseBody"]
       40 GETUPVAL                         R2 1
       41 MOVE                             R3 R1
       42 GETUPVAL                         R4 2
       43 JUMPIFNOT                        R4 ; [+19]
       44 GETUPVAL                         R4 2
       45 GETUPVAL                         R6 3
       46 DUPTABLE                         R7 K16 [{"url", "errorDetails", "user", "ampresponse"}]
       47 SETTABLEKS                       R2 R7 K12 ["url"]
       49 SETTABLEKS                       R3 R7 K13 ["errorDetails"]
       51 GETUPVAL                         R8 4
       52 NAMECALL                         R8 R8 K17 ["GetUserId"]
       54 CALL                             R8 1 1
       55 SETTABLEKS                       R8 R7 K14 ["user"]
       57 LOADK                            R8 K18 [""]
       58 SETTABLEKS                       R8 R7 K15 ["ampresponse"]
       60 NAMECALL                         R4 R4 K19 ["log"]
       62 CALL                             R4 3 0
       63 LOADB                            R2 0
       64 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+7]
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["number"] ; [+7]
        8 GETIMPORT                        R3 K4 [warn]
       10 LOADK                            R4 K5 ["DiscoverShowStudioFAEBanner: userId must be a number"]
       11 CALL                             R3 1 0
       12 LOADB                            R3 0
       13 RETURN                           R3 1
       14 NEWTABLE                         R3 2 0
       16 LOADK                            R4 K6 ["application/json"]
       17 SETTABLEKS                       R4 R3 K7 ["Content-Type"]
       19 GETUPVAL                         R5 0
       20 NAMECALL                         R5 R5 K8 ["GetUserId"]
       22 CALL                             R5 1 -1
       23 FASTCALL                         TOSTRING ; [+2]
       24 GETIMPORT                        R4 K10 [tostring]
       26 CALL                             R4 -1 1
       27 SETTABLEKS                       R4 R3 K11 ["robloxctx-authenticated-userid"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K12 ["new"]
       32 CALL                             R4 0 1
       33 GETTABLEKS                       R5 R4 K13 ["composeUrl"]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K14 ["AMP_FEATURE_ACCESS_URL"]
       38 GETTABLEKS                       R6 R6 K15 ["Prefix"]
       40 GETUPVAL                         R7 2
       41 GETTABLEKS                       R7 R7 K14 ["AMP_FEATURE_ACCESS_URL"]
       43 GETTABLEKS                       R7 R7 K16 ["Url"]
       45 MOVE                             R8 R1
       46 LOADK                            R9 K17 ["studio/CollaborationSettings"]
       47 CALL                             R7 2 -1
       48 CALL                             R5 -1 1
       49 NEWCLOSURE                       R6 P0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U0
       53 GETUPVAL                         R7 4
       54 MOVE                             R9 R5
       55 MOVE                             R10 R3
       56 NAMECALL                         R7 R7 K18 ["get"]
       58 CALL                             R7 3 1
       59 GETUPVAL                         R8 4
       60 MOVE                             R10 R7
       61 NAMECALL                         R8 R8 K19 ["parseJson"]
       63 CALL                             R8 2 1
       64 NEWCLOSURE                       R10 P1
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R2
       68 CAPTURE                          UPVAL U3
       69 CAPTURE                          UPVAL U0
       70 NAMECALL                         R8 R8 K20 ["andThen"]
       72 CALL                             R8 2 1
       73 NEWCLOSURE                       R10 P2
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R2
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U0
       79 NAMECALL                         R8 R8 K21 ["catch"]
       81 CALL                             R8 2 -1
       82 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFIntDebugLuaStartPageLogging"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K5 [require]
       19 GETTABLEKS                       R3 R0 K6 ["Src"]
       21 GETTABLEKS                       R3 R3 K9 ["Types"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K10 ["Packages"]
       28 GETTABLEKS                       R4 R4 K11 ["Framework"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K5 [require]
       33 GETTABLEKS                       R5 R0 K6 ["Src"]
       35 GETTABLEKS                       R5 R5 K12 ["Network"]
       37 GETTABLEKS                       R5 R5 K13 ["Urls"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K5 [require]
       42 GETTABLEKS                       R6 R0 K6 ["Src"]
       44 GETTABLEKS                       R6 R6 K14 ["Util"]
       46 GETTABLEKS                       R6 R6 K15 ["Services"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R5 R5 K16 ["Networking"]
       51 GETIMPORT                        R6 K5 [require]
       53 GETTABLEKS                       R7 R0 K6 ["Src"]
       55 GETTABLEKS                       R7 R7 K17 ["Models"]
       57 GETTABLEKS                       R7 R7 K18 ["AMPUpsellFeatureAccessModel"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K5 [require]
       62 GETTABLEKS                       R8 R0 K6 ["Src"]
       64 GETTABLEKS                       R8 R8 K14 ["Util"]
       66 GETTABLEKS                       R8 R8 K19 ["createResponseValidator"]
       68 CALL                             R7 1 1
       69 GETTABLEKS                       R8 R3 K20 ["RobloxAPI"]
       71 GETTABLEKS                       R8 R8 K21 ["Url"]
       73 GETTABLEKS                       R9 R5 K22 ["new"]
       75 DUPTABLE                         R10 K25 [{"isInternal", "loggingLevel"}]
       76 LOADB                            R11 1
       77 SETTABLEKS                       R11 R10 K23 ["isInternal"]
       79 SETTABLEKS                       R1 R10 K24 ["loggingLevel"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K6 ["Src"]
       86 GETTABLEKS                       R11 R11 K14 ["Util"]
       88 GETTABLEKS                       R11 R11 K26 ["Telemetry"]
       90 GETTABLEKS                       R11 R11 K27 ["TelemetryContext"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Src"]
       97 GETTABLEKS                       R12 R12 K14 ["Util"]
       99 GETTABLEKS                       R12 R12 K26 ["Telemetry"]
      101 GETTABLEKS                       R12 R12 K28 ["FetchAMPStatusFailureEvent"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K30 [game]
      106 LOADK                            R14 K31 ["StudioService"]
      107 NAMECALL                         R12 R12 K32 ["GetService"]
      109 CALL                             R12 2 1
      110 MOVE                             R13 R7
      111 GETTABLEKS                       R14 R6 K33 ["validate"]
      113 CALL                             R13 1 1
      114 DUPCLOSURE                       R14 K34 [PROTO_3]
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R13
      121 RETURN                           R14 1
