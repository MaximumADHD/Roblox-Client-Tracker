PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetPlatform"]
        3 CALL                             R0 1 1
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [tostring]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K6 [{[1], ["backends"], ["description"] = "Counter emitted by the LoginPage plugin.", ["lastUpdated"], ["throttlingPercentage"]}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["eventName"]
        5 NEWTABLE                         R3 0 1
        7 LOADK                            R4 K7 ["RobloxTelemetryCounter"]
        8 SETLIST                          R3 R4 1 [1]
       10 SETTABLEKS                       R3 R2 K1 ["backends"]
       12 NEWTABLE                         R3 0 3
       14 LOADN                            R4 2026
       15 LOADN                            R5 7
       16 LOADN                            R6 1
       17 SETLIST                          R3 R4 3 [1]
       19 SETTABLEKS                       R3 R2 K4 ["lastUpdated"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K8 ["getFIntLoginPageTelemetryThrottleHundredthsPercent"]
       24 CALL                             R3 0 1
       25 SETTABLEKS                       R3 R2 K5 ["throttlingPercentage"]
       27 LOADNIL                          R3
       28 LOADN                            R4 1
       29 NAMECALL                         R0 R0 K9 ["LogCounter"]
       31 CALL                             R0 4 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K6 [{[1], ["backends"], ["description"] = "Event emitted by the LoginPage plugin.", ["lastUpdated"], ["throttlingPercentage"]}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K0 ["eventName"]
        5 NEWTABLE                         R3 0 2
        7 LOADK                            R4 K7 ["EventIngest"]
        8 LOADK                            R5 K8 ["Points"]
        9 SETLIST                          R3 R4 2 [1]
       11 SETTABLEKS                       R3 R2 K1 ["backends"]
       13 NEWTABLE                         R3 0 3
       15 LOADN                            R4 2026
       16 LOADN                            R5 7
       17 LOADN                            R6 1
       18 SETLIST                          R3 R4 3 [1]
       20 SETTABLEKS                       R3 R2 K4 ["lastUpdated"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K9 ["getFIntLoginPageTelemetryThrottleHundredthsPercent"]
       25 CALL                             R3 0 1
       26 SETTABLEKS                       R3 R2 K5 ["throttlingPercentage"]
       28 DUPTABLE                         R3 K13 [{["customFields"], ["eventContext"] = "LoginPageFlow"}]
       29 GETUPVAL                         R4 3
       30 SETTABLEKS                       R4 R3 K10 ["customFields"]
       32 NAMECALL                         R0 R0 K14 ["LogEvent"]
       34 CALL                             R0 3 0
       35 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R5 K7 [{"studioSid", "clientId", "TraceId", "flow", "Event", "os", "timestamp"}]
        1 GETUPVAL                         R6 0
        2 NAMECALL                         R6 R6 K8 ["GetSessionId"]
        4 CALL                             R6 1 1
        5 SETTABLEKS                       R6 R5 K0 ["studioSid"]
        7 GETUPVAL                         R6 0
        8 NAMECALL                         R6 R6 K9 ["GetClientId"]
       10 CALL                             R6 1 1
       11 SETTABLEKS                       R6 R5 K1 ["clientId"]
       13 SETTABLEKS                       R3 R5 K2 ["TraceId"]
       15 SETTABLEKS                       R0 R5 K3 ["flow"]
       17 SETTABLEKS                       R1 R5 K4 ["Event"]
       19 GETUPVAL                         R7 1
       20 NAMECALL                         R7 R7 K10 ["GetPlatform"]
       22 CALL                             R7 1 1
       23 FASTCALL1                        TOSTRING R7 ; [+3]
       24 MOVE                             R9 R7
       25 GETIMPORT                        R8 K12 [tostring]
       27 CALL                             R8 1 1
       28 MOVE                             R6 R8
       29 SETTABLEKS                       R6 R5 K5 ["os"]
       31 GETIMPORT                        R7 K16 [DateTime.now]
       33 CALL                             R7 0 1
       34 GETTABLEKS                       R7 R7 K17 ["UnixTimestampMillis"]
       36 DIVK                             R6 R7 K13 [1000]
       37 SETTABLEKS                       R6 R5 K6 ["timestamp"]
       39 JUMPIFNOT                        R4 ; [+7]
       40 MOVE                             R6 R4
       41 LOADNIL                          R7
       42 LOADNIL                          R8
       43 FORGPREP                         R6
       44 SETTABLE                         R10 R5 R9
       45 FORGLOOP                         R6 2 ; [-2]
       47 GETIMPORT                        R6 K19 [pcall]
       49 NEWCLOSURE                       R7 P0
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R5
       54 CALL                             R6 1 0
       55 GETIMPORT                        R6 K19 [pcall]
       57 NEWCLOSURE                       R7 P1
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U3
       61 CALL                             R6 1 0
       62 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["QuickSignIn"]
        2 LOADK                            R3 K1 ["code_created_success"]
        3 LOADK                            R4 K2 ["LoginPage_QuickSignIn_CodeCreatedSuccess"]
        4 MOVE                             R5 R0
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["QuickSignIn"]
        2 LOADK                            R4 K1 ["code_created_failed"]
        3 LOADK                            R5 K2 ["LoginPage_QuickSignIn_CodeCreatedFailed"]
        4 MOVE                             R6 R0
        5 DUPTABLE                         R7 K4 [{"errorMessage"}]
        6 SETTABLEKS                       R1 R7 K3 ["errorMessage"]
        8 CALL                             R2 5 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["QuickSignIn"]
        2 LOADK                            R3 K1 ["await_result_validated"]
        3 LOADK                            R4 K2 ["LoginPage_QuickSignIn_AwaitResultValidated"]
        4 MOVE                             R5 R0
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["QuickSignIn"]
        2 LOADK                            R3 K1 ["await_result_cancelled"]
        3 LOADK                            R4 K2 ["LoginPage_QuickSignIn_AwaitResultCancelled"]
        4 MOVE                             R5 R0
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["QuickSignIn"]
        2 LOADK                            R3 K1 ["await_result_expired"]
        3 LOADK                            R4 K2 ["LoginPage_QuickSignIn_AwaitResultExpired"]
        4 MOVE                             R5 R0
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["QuickSignIn"]
        2 LOADK                            R4 K1 ["await_result_errored"]
        3 LOADK                            R5 K2 ["LoginPage_QuickSignIn_AwaitResultErrored"]
        4 MOVE                             R6 R0
        5 DUPTABLE                         R7 K4 [{"errorMessage"}]
        6 SETTABLEKS                       R1 R7 K3 ["errorMessage"]
        8 CALL                             R2 5 0
        9 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["QuickSignIn"]
        2 LOADK                            R3 K1 ["restart_succeeded"]
        3 LOADK                            R4 K2 ["LoginPage_QuickSignIn_RestartSucceeded"]
        4 MOVE                             R5 R0
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["QuickSignIn"]
        2 LOADK                            R4 K1 ["restart_failed"]
        3 LOADK                            R5 K2 ["LoginPage_QuickSignIn_RestartFailed"]
        4 MOVE                             R6 R0
        5 DUPTABLE                         R7 K4 [{"errorMessage"}]
        6 SETTABLEKS                       R1 R7 K3 ["errorMessage"]
        8 CALL                             R2 5 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["BrowserLogin"]
        2 LOADK                            R3 K1 ["login_browser_opened_success"]
        3 LOADK                            R4 K2 ["LoginPage_BrowserLogin_BrowserOpenedSuccess"]
        4 MOVE                             R5 R0
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["BrowserLogin"]
        2 LOADK                            R4 K1 ["login_browser_opened_failed"]
        3 LOADK                            R5 K2 ["LoginPage_BrowserLogin_BrowserOpenedFailed"]
        4 MOVE                             R6 R0
        5 DUPTABLE                         R7 K4 [{"errorMessage"}]
        6 SETTABLEKS                       R1 R7 K3 ["errorMessage"]
        8 CALL                             R2 5 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["SignUp"]
        2 LOADK                            R3 K1 ["signup_browser_opened_success"]
        3 LOADK                            R4 K2 ["LoginPage_SignUp_BrowserOpenedSuccess"]
        4 MOVE                             R5 R0
        5 CALL                             R1 4 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["SignUp"]
        2 LOADK                            R4 K1 ["signup_browser_opened_failed"]
        3 LOADK                            R5 K2 ["LoginPage_SignUp_BrowserOpenedFailed"]
        4 MOVE                             R6 R0
        5 DUPTABLE                         R7 K4 [{"errorMessage"}]
        6 SETTABLEKS                       R1 R7 K3 ["errorMessage"]
        8 CALL                             R2 5 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["AutoLogin"]
        2 LOADK                            R2 K1 ["show_login_page_timeout"]
        3 LOADK                            R3 K2 ["LoginPage_AutoLogin_ShowLoginPageTimeout"]
        4 LOADK                            R4 K3 [""]
        5 CALL                             R0 4 0
        6 RETURN                           R0 0

PROTO_19:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RbxAnalyticsService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["TelemetryService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["UserInputService"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Bin"]
       29 GETTABLEKS                       R5 R5 K13 ["Common"]
       31 GETTABLEKS                       R5 R5 K14 ["defineLuaFlags"]
       33 CALL                             R4 1 1
       34 NEWTABLE                         R5 16 0
       36 MOVE                             R6 R2
       37 DUPCLOSURE                       R7 K15 [PROTO_0]
       38 CAPTURE                          VAL R3
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          REF R2
       41 CAPTURE                          VAL R4
       42 NEWCLOSURE                       R9 P2
       43 CAPTURE                          REF R2
       44 CAPTURE                          VAL R4
       45 NEWCLOSURE                       R10 P3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R3
       48 CAPTURE                          REF R2
       49 CAPTURE                          VAL R4
       50 DUPCLOSURE                       R11 K16 [PROTO_6]
       51 CAPTURE                          VAL R10
       52 SETTABLEKS                       R11 R5 K17 ["reportCodeCreatedSuccess"]
       54 DUPCLOSURE                       R11 K18 [PROTO_7]
       55 CAPTURE                          VAL R10
       56 SETTABLEKS                       R11 R5 K19 ["reportCodeCreatedFailed"]
       58 DUPCLOSURE                       R11 K20 [PROTO_8]
       59 CAPTURE                          VAL R10
       60 SETTABLEKS                       R11 R5 K21 ["reportAwaitResultValidated"]
       62 DUPCLOSURE                       R11 K22 [PROTO_9]
       63 CAPTURE                          VAL R10
       64 SETTABLEKS                       R11 R5 K23 ["reportAwaitResultCancelled"]
       66 DUPCLOSURE                       R11 K24 [PROTO_10]
       67 CAPTURE                          VAL R10
       68 SETTABLEKS                       R11 R5 K25 ["reportAwaitResultExpired"]
       70 DUPCLOSURE                       R11 K26 [PROTO_11]
       71 CAPTURE                          VAL R10
       72 SETTABLEKS                       R11 R5 K27 ["reportAwaitResultErrored"]
       74 DUPCLOSURE                       R11 K28 [PROTO_12]
       75 CAPTURE                          VAL R10
       76 SETTABLEKS                       R11 R5 K29 ["reportRestartSucceeded"]
       78 DUPCLOSURE                       R11 K30 [PROTO_13]
       79 CAPTURE                          VAL R10
       80 SETTABLEKS                       R11 R5 K31 ["reportRestartFailed"]
       82 DUPCLOSURE                       R11 K32 [PROTO_14]
       83 CAPTURE                          VAL R10
       84 SETTABLEKS                       R11 R5 K33 ["reportLoginBrowserOpenedSuccess"]
       86 DUPCLOSURE                       R11 K34 [PROTO_15]
       87 CAPTURE                          VAL R10
       88 SETTABLEKS                       R11 R5 K35 ["reportLoginBrowserOpenedFailed"]
       90 DUPCLOSURE                       R11 K36 [PROTO_16]
       91 CAPTURE                          VAL R10
       92 SETTABLEKS                       R11 R5 K37 ["reportSignUpBrowserOpenedSuccess"]
       94 DUPCLOSURE                       R11 K38 [PROTO_17]
       95 CAPTURE                          VAL R10
       96 SETTABLEKS                       R11 R5 K39 ["reportSignUpBrowserOpenedFailed"]
       98 DUPCLOSURE                       R11 K40 [PROTO_18]
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R11 R5 K41 ["reportLoginPageRequestTimeout"]
      102 NEWCLOSURE                       R11 P17
      103 CAPTURE                          REF R2
      104 SETTABLEKS                       R11 R5 K42 ["mockTelemetryService"]
      106 NEWCLOSURE                       R11 P18
      107 CAPTURE                          REF R2
      108 CAPTURE                          VAL R6
      109 SETTABLEKS                       R11 R5 K43 ["resetTelemetryService"]
      111 CLOSEUPVALS                      R2
      112 RETURN                           R5 1
