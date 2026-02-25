PROTO_0:
        0 GETIMPORT                        R2 K2 [math.random]
        2 LOADN                            R3 1
        3 LENGTH                           R4 R0
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 LOADK                            R5 K3 ["ErrorMessage"]
        7 GETTABLE                         R6 R0 R2
        8 MOVE                             R7 R1
        9 NAMECALL                         R3 R3 K4 ["getText"]
       11 CALL                             R3 4 -1
       12 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["StreamText"]
        2 DUPTABLE                         R5 K3 [{"requestId", "content"}]
        3 SETTABLEKS                       R0 R5 K1 ["requestId"]
        5 SETTABLEKS                       R1 R5 K2 ["content"]
        7 NAMECALL                         R2 R2 K4 ["DisplayContent"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 LOADK                            R5 K0 ["SetErrorMessage"]
        2 DUPTABLE                         R6 K4 [{"message", "disableInput", "timeout"}]
        3 SETTABLEKS                       R0 R6 K1 ["message"]
        5 SETTABLEKS                       R1 R6 K2 ["disableInput"]
        7 SETTABLEKS                       R2 R6 K3 ["timeout"]
        9 NAMECALL                         R3 R3 K5 ["DisplayContent"]
       11 CALL                             R3 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["errorId"]
        2 JUMPIFNOTEQKS                    R2 K1 ["RawErrorMessage"] ; [+15]
        4 GETTABLEKS                       R2 R1 K2 ["content"]
        6 GETUPVAL                         R3 0
        7 LOADK                            R5 K3 ["StreamText"]
        8 DUPTABLE                         R6 K5 [{"requestId", "content"}]
        9 SETTABLEKS                       R0 R6 K4 ["requestId"]
       11 SETTABLEKS                       R2 R6 K2 ["content"]
       13 NAMECALL                         R3 R3 K6 ["DisplayContent"]
       15 CALL                             R3 3 0
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 LOADB                            R2 0
       19 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["errorId"]
        2 JUMPIFNOTEQKS                    R2 K1 ["RawErrorStatusBar"] ; [+24]
        4 GETUPVAL                         R2 0
        5 LOADK                            R4 K2 ["SetStatusBarMessage"]
        6 DUPTABLE                         R5 K6 [{"message", "disableInput", "timeout"}]
        7 GETTABLEKS                       R7 R1 K8 ["content"]
        9 ORK                              R6 R7 K7 [""]
       10 SETTABLEKS                       R6 R5 K3 ["message"]
       12 GETTABLEKS                       R7 R1 K4 ["disableInput"]
       14 ORK                              R6 R7 K9 [False]
       15 SETTABLEKS                       R6 R5 K4 ["disableInput"]
       17 GETTABLEKS                       R7 R1 K5 ["timeout"]
       19 ORK                              R6 R7 K10 [0]
       20 SETTABLEKS                       R6 R5 K5 ["timeout"]
       22 NAMECALL                         R2 R2 K11 ["DisplayContent"]
       24 CALL                             R2 3 0
       25 LOADB                            R2 1
       26 RETURN                           R2 1
       27 LOADB                            R2 0
       28 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R2 R1 K0 ["errorId"]
        2 JUMPIFNOTEQKS                    R2 K1 ["InappropriateRequest"] ; [+41]
        4 GETIMPORT                        R2 K4 [string.format]
        6 LOADK                            R3 K5 ["<br/><a href=\"%s\">%s</a>"]
        7 LOADK                            R4 K6 ["https://en.help.roblox.com/hc/en-us/articles/203313410-Roblox-Community-Standards"]
        8 LOADK                            R5 K6 ["https://en.help.roblox.com/hc/en-us/articles/203313410-Roblox-Community-Standards"]
        9 CALL                             R2 3 1
       10 NEWTABLE                         R4 0 2
       12 LOADK                            R5 K7 ["InappropriateRequestOne1"]
       13 LOADK                            R6 K8 ["InappropriateRequestTwo1"]
       14 SETLIST                          R4 R5 2 [1]
       16 DUPTABLE                         R5 K10 [{"url"}]
       17 SETTABLEKS                       R2 R5 K9 ["url"]
       19 GETIMPORT                        R6 K13 [math.random]
       21 LOADN                            R7 1
       22 LENGTH                           R8 R4
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 0
       25 LOADK                            R9 K14 ["ErrorMessage"]
       26 GETTABLE                         R10 R4 R6
       27 MOVE                             R11 R5
       28 NAMECALL                         R7 R7 K15 ["getText"]
       30 CALL                             R7 4 1
       31 MOVE                             R3 R7
       32 GETUPVAL                         R4 1
       33 LOADK                            R6 K16 ["StreamText"]
       34 DUPTABLE                         R7 K19 [{"requestId", "content"}]
       35 SETTABLEKS                       R0 R7 K17 ["requestId"]
       37 SETTABLEKS                       R3 R7 K18 ["content"]
       39 NAMECALL                         R4 R4 K20 ["DisplayContent"]
       41 CALL                             R4 3 0
       42 LOADB                            R4 1
       43 RETURN                           R4 1
       44 LOADB                            R2 0
       45 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["errorId"]
        2 JUMPIFNOTEQKS                    R2 K1 ["QuotaError"] ; [+38]
        4 NEWTABLE                         R3 0 3
        6 LOADK                            R4 K2 ["QuotaErrorOne"]
        7 LOADK                            R5 K3 ["QuotaErrorTwo"]
        8 LOADK                            R6 K4 ["QuotaErrorThree"]
        9 SETLIST                          R3 R4 3 [1]
       11 GETIMPORT                        R4 K7 [math.random]
       13 LOADN                            R5 1
       14 LENGTH                           R6 R3
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 0
       17 LOADK                            R7 K8 ["ErrorMessage"]
       18 GETTABLE                         R8 R3 R4
       19 LOADNIL                          R9
       20 NAMECALL                         R5 R5 K9 ["getText"]
       22 CALL                             R5 4 1
       23 MOVE                             R2 R5
       24 GETUPVAL                         R3 1
       25 CALL                             R3 0 1
       26 GETUPVAL                         R4 2
       27 LOADK                            R6 K10 ["SetErrorMessage"]
       28 DUPTABLE                         R7 K14 [{"message", "disableInput", "timeout"}]
       29 SETTABLEKS                       R2 R7 K11 ["message"]
       31 LOADB                            R8 1
       32 SETTABLEKS                       R8 R7 K12 ["disableInput"]
       34 SETTABLEKS                       R3 R7 K13 ["timeout"]
       36 NAMECALL                         R4 R4 K15 ["DisplayContent"]
       38 CALL                             R4 3 0
       39 LOADB                            R4 1
       40 RETURN                           R4 1
       41 LOADB                            R2 0
       42 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["errorId"]
        2 JUMPIFNOTEQKS                    R2 K1 ["ConnectionLost"] ; [+32]
        4 NEWTABLE                         R3 0 2
        6 LOADK                            R4 K2 ["ConnectionLostOne"]
        7 LOADK                            R5 K3 ["ConnectionLostTwo"]
        8 SETLIST                          R3 R4 2 [1]
       10 GETIMPORT                        R4 K6 [math.random]
       12 LOADN                            R5 1
       13 LENGTH                           R6 R3
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 0
       16 LOADK                            R7 K7 ["ErrorMessage"]
       17 GETTABLE                         R8 R3 R4
       18 LOADNIL                          R9
       19 NAMECALL                         R5 R5 K8 ["getText"]
       21 CALL                             R5 4 1
       22 MOVE                             R2 R5
       23 GETUPVAL                         R3 1
       24 LOADK                            R5 K9 ["StreamText"]
       25 DUPTABLE                         R6 K12 [{"requestId", "content"}]
       26 SETTABLEKS                       R0 R6 K10 ["requestId"]
       28 SETTABLEKS                       R2 R6 K11 ["content"]
       30 NAMECALL                         R3 R3 K13 ["DisplayContent"]
       32 CALL                             R3 3 0
       33 LOADB                            R3 1
       34 RETURN                           R3 1
       35 LOADB                            R2 0
       36 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["errorId"]
        2 JUMPIFNOTEQKS                    R2 K1 ["ServersAtMaxCapacity"] ; [+36]
        4 NEWTABLE                         R3 0 1
        6 LOADK                            R4 K1 ["ServersAtMaxCapacity"]
        7 SETLIST                          R3 R4 1 [1]
        9 GETIMPORT                        R4 K4 [math.random]
       11 LOADN                            R5 1
       12 LENGTH                           R6 R3
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 0
       15 LOADK                            R7 K5 ["ErrorMessage"]
       16 GETTABLE                         R8 R3 R4
       17 LOADNIL                          R9
       18 NAMECALL                         R5 R5 K6 ["getText"]
       20 CALL                             R5 4 1
       21 MOVE                             R2 R5
       22 GETUPVAL                         R3 1
       23 CALL                             R3 0 1
       24 GETUPVAL                         R4 2
       25 LOADK                            R6 K7 ["SetErrorMessage"]
       26 DUPTABLE                         R7 K11 [{"message", "disableInput", "timeout"}]
       27 SETTABLEKS                       R2 R7 K8 ["message"]
       29 LOADB                            R8 1
       30 SETTABLEKS                       R8 R7 K9 ["disableInput"]
       32 SETTABLEKS                       R3 R7 K10 ["timeout"]
       34 NAMECALL                         R4 R4 K12 ["DisplayContent"]
       36 CALL                             R4 3 0
       37 LOADB                            R4 1
       38 RETURN                           R4 1
       39 LOADB                            R2 0
       40 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["errorId"]
        2 JUMPIFNOTEQKS                    R2 K1 ["GeneralError"] ; [+31]
        4 NEWTABLE                         R3 0 1
        6 LOADK                            R4 K1 ["GeneralError"]
        7 SETLIST                          R3 R4 1 [1]
        9 GETIMPORT                        R4 K4 [math.random]
       11 LOADN                            R5 1
       12 LENGTH                           R6 R3
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 0
       15 LOADK                            R7 K5 ["ErrorMessage"]
       16 GETTABLE                         R8 R3 R4
       17 LOADNIL                          R9
       18 NAMECALL                         R5 R5 K6 ["getText"]
       20 CALL                             R5 4 1
       21 MOVE                             R2 R5
       22 GETUPVAL                         R3 1
       23 LOADK                            R5 K7 ["StreamText"]
       24 DUPTABLE                         R6 K10 [{"requestId", "content"}]
       25 SETTABLEKS                       R0 R6 K8 ["requestId"]
       27 SETTABLEKS                       R2 R6 K9 ["content"]
       29 NAMECALL                         R3 R3 K11 ["DisplayContent"]
       31 CALL                             R3 3 0
       32 LOADB                            R3 1
       33 RETURN                           R3 1
       34 LOADB                            R2 0
       35 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["errorId"]
        2 JUMPIFNOTEQKS                    R2 K1 ["StreamingServiceError"] ; [+45]
        4 GETTABLEKS                       R2 R1 K2 ["errorType"]
        6 JUMPIFNOTEQKS                    R2 K3 ["HttpFailed"] ; [+39]
        8 GETTABLEKS                       R2 R1 K4 ["errorMessage"]
       10 FASTCALL1                        TONUMBER R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K6 [tonumber]
       14 CALL                             R3 1 1
       15 JUMPIFEQKN                       R3 K7 [200] ; [+30]
       17 NEWTABLE                         R4 0 2
       19 LOADK                            R5 K8 ["ConnectionLostOne"]
       20 LOADK                            R6 K9 ["ConnectionLostTwo"]
       21 SETLIST                          R4 R5 2 [1]
       23 GETIMPORT                        R5 K12 [math.random]
       25 LOADN                            R6 1
       26 LENGTH                           R7 R4
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 0
       29 LOADK                            R8 K13 ["ErrorMessage"]
       30 GETTABLE                         R9 R4 R5
       31 LOADNIL                          R10
       32 NAMECALL                         R6 R6 K14 ["getText"]
       34 CALL                             R6 4 1
       35 MOVE                             R3 R6
       36 GETUPVAL                         R4 1
       37 LOADK                            R6 K15 ["StreamText"]
       38 DUPTABLE                         R7 K18 [{"requestId", "content"}]
       39 SETTABLEKS                       R0 R7 K16 ["requestId"]
       41 SETTABLEKS                       R3 R7 K17 ["content"]
       43 NAMECALL                         R4 R4 K19 ["DisplayContent"]
       45 CALL                             R4 3 0
       46 LOADB                            R2 1
       47 RETURN                           R2 1
       48 LOADB                            R2 0
       49 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["arguments"]
        2 GETIMPORT                        R2 K2 [ipairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 MOVE                             R7 R6
        8 GETTABLEKS                       R9 R0 K4 ["requestId"]
       10 ORK                              R8 R9 K3 [""]
       11 MOVE                             R9 R1
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+17]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R10 R0 K4 ["requestId"]
       17 ORK                              R9 R10 K3 [""]
       18 GETTABLEKS                       R11 R1 K6 ["errorId"]
       20 ORK                              R10 R11 K5 ["UnknownError"]
       21 GETTABLEKS                       R12 R1 K7 ["errorType"]
       23 ORK                              R11 R12 K3 [""]
       24 GETTABLEKS                       R13 R1 K8 ["errorMessage"]
       26 ORK                              R12 R13 K3 [""]
       27 NAMECALL                         R7 R7 K9 ["ErrorTelemetry"]
       29 CALL                             R7 5 0
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R2 2 [inext] ; [-25]
       33 GETUPVAL                         R2 2
       34 LOADK                            R4 K10 ["EndRequest"]
       35 NEWTABLE                         R5 1 0
       37 GETTABLEKS                       R6 R0 K4 ["requestId"]
       39 SETTABLEKS                       R6 R5 K4 ["requestId"]
       41 NAMECALL                         R2 R2 K11 ["DisplayContent"]
       43 CALL                             R2 3 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Utils"]
       13 GETTABLEKS                       R2 R3 K8 ["CliAdapter"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Localization"]
       22 GETTABLEKS                       R3 R4 K9 ["Localization"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R5 K10 ["Types"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K11 ["GetService"]
       34 LOADK                            R5 K12 ["ChatbotUIService"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R1 K11 ["GetService"]
       38 LOADK                            R6 K13 ["ConversationalAIAcceptanceService"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R10 R0 K6 ["Src"]
       44 GETTABLEKS                       R9 R10 K14 ["Flags"]
       46 GETTABLEKS                       R8 R9 K15 ["FIntConvAIMaxQuotaTimeout"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R6 R7 K16 ["Get"]
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R11 R0 K6 ["Src"]
       55 GETTABLEKS                       R10 R11 K14 ["Flags"]
       57 GETTABLEKS                       R9 R10 K17 ["FIntConvAIServersAtMaxCapacityTimeout"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R7 R8 K16 ["Get"]
       62 DUPCLOSURE                       R8 K18 [PROTO_0]
       63 CAPTURE                          VAL R2
       64 DUPCLOSURE                       R9 K19 [PROTO_1]
       65 CAPTURE                          VAL R4
       66 DUPCLOSURE                       R10 K20 [PROTO_2]
       67 CAPTURE                          VAL R4
       68 DUPCLOSURE                       R11 K21 [PROTO_3]
       69 CAPTURE                          VAL R4
       70 DUPCLOSURE                       R12 K22 [PROTO_4]
       71 CAPTURE                          VAL R4
       72 DUPCLOSURE                       R13 K23 [PROTO_5]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R4
       75 DUPCLOSURE                       R14 K24 [PROTO_6]
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R4
       79 DUPCLOSURE                       R15 K25 [PROTO_7]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R4
       82 DUPCLOSURE                       R16 K26 [PROTO_8]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R4
       86 DUPCLOSURE                       R17 K27 [PROTO_9]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 DUPCLOSURE                       R18 K28 [PROTO_10]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R4
       92 NEWTABLE                         R19 0 8
       94 MOVE                             R20 R11
       95 MOVE                             R21 R12
       96 MOVE                             R22 R13
       97 MOVE                             R23 R14
       98 MOVE                             R24 R15
       99 MOVE                             R25 R16
      100 MOVE                             R26 R17
      101 MOVE                             R27 R18
      102 SETLIST                          R19 R20 8 [1]
      104 DUPCLOSURE                       R20 K29 [PROTO_11]
      105 CAPTURE                          VAL R19
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R4
      108 RETURN                           R20 1
