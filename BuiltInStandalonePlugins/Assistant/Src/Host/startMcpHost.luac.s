PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDefinitions"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R9 R6 K1 ["name"]
       13 GETTABLE                         R7 R8 R9
       14 JUMPIF                           R7 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R6
       19 GETIMPORT                        R7 K4 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-13]
       24 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from "]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R4 K4 ["name"]
        7 CONCAT                           R1 R2 R3
        8 SETTABLEKS                       R1 R0 K0 ["message"]
       10 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"tools"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K2 ["getDefinitions"]
        4 CALL                             R1 0 1
        5 SETTABLEKS                       R1 R0 K0 ["tools"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected params to be present in tools/call request"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["_meta"]
       11 GETTABLEKS                       R4 R2 K5 ["name"]
       13 MOVE                             R6 R4
       14 JUMPIFNOT                        R6 ; [+9]
       15 FASTCALL1                        TYPEOF R4 ; [+3]
       16 MOVE                             R8 R4
       17 GETIMPORT                        R7 K7 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFEQKS                       R7 K8 ["string"] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       26 LOADK                            R7 K9 ["Expected tool name to be a string"]
       27 GETIMPORT                        R5 K3 [assert]
       29 CALL                             R5 2 0
       30 GETTABLEKS                       R5 R2 K10 ["arguments"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K11 ["getHandler"]
       35 MOVE                             R7 R4
       36 CALL                             R6 1 1
       37 MOVE                             R7 R6
       38 MOVE                             R8 R5
       39 MOVE                             R9 R3
       40 MOVE                             R10 R1
       41 CALL                             R7 3 1
       42 GETUPVAL                         R8 1
       43 CALL                             R8 0 1
       44 JUMPIFNOT                        R8 ; [+35]
       45 GETIMPORT                        R8 K13 [print]
       47 LOADK                            R10 K14 ["TOOL CALL FINISHED: %*"]
       48 MOVE                             R12 R4
       49 NAMECALL                         R10 R10 K15 ["format"]
       51 CALL                             R10 2 1
       52 MOVE                             R9 R10
       53 CALL                             R8 1 0
       54 GETIMPORT                        R8 K13 [print]
       56 LOADK                            R10 K16 ["Args: %*"]
       57 GETUPVAL                         R13 2
       58 GETTABLEKS                       R12 R13 K17 ["toString"]
       60 MOVE                             R13 R5
       61 CALL                             R12 1 1
       62 NAMECALL                         R10 R10 K15 ["format"]
       64 CALL                             R10 2 1
       65 MOVE                             R9 R10
       66 CALL                             R8 1 0
       67 GETIMPORT                        R8 K13 [print]
       69 LOADK                            R10 K18 ["Result: %*"]
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R12 R13 K17 ["toString"]
       73 MOVE                             R13 R7
       74 CALL                             R12 1 1
       75 NAMECALL                         R10 R10 K15 ["format"]
       77 CALL                             R10 2 1
       78 MOVE                             R9 R10
       79 CALL                             R8 1 0
       80 RETURN                           R7 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K3 [{"name", "version"}]
        4 LOADK                            R2 K4 ["RobloxStudio"]
        5 SETTABLEKS                       R2 R1 K1 ["name"]
        7 LOADK                            R2 K5 ["0.1.0"]
        8 SETTABLEKS                       R2 R1 K2 ["version"]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 1
       12 DUPTABLE                         R3 K7 [{"method"}]
       13 LOADK                            R4 K8 ["ping"]
       14 SETTABLEKS                       R4 R3 K6 ["method"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R1 R0 K9 ["setRequestHandler"]
       20 CALL                             R1 3 0
       21 DUPTABLE                         R3 K7 [{"method"}]
       22 LOADK                            R4 K10 ["tools/list"]
       23 SETTABLEKS                       R4 R3 K6 ["method"]
       25 DUPCLOSURE                       R4 K11 [PROTO_2]
       26 CAPTURE                          UPVAL U2
       27 NAMECALL                         R1 R0 K9 ["setRequestHandler"]
       29 CALL                             R1 3 0
       30 DUPTABLE                         R3 K7 [{"method"}]
       31 LOADK                            R4 K12 ["tools/call"]
       32 SETTABLEKS                       R4 R3 K6 ["method"]
       34 DUPCLOSURE                       R4 K13 [PROTO_3]
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 NAMECALL                         R1 R0 K9 ["setRequestHandler"]
       40 CALL                             R1 3 0
       41 RETURN                           R0 1

PROTO_5:
        0 GETGLOBAL                        R1 K0 ["getBuiltinServer"]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["registerServer"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R1 K2 ["connect"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from %*"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K3 ["_serverInfo"]
        5 GETTABLEKS                       R4 R5 K4 ["name"]
        7 NAMECALL                         R2 R2 K5 ["format"]
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 SETTABLEKS                       R1 R0 K0 ["message"]
       13 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"tools"}]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["tools"]
        5 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected params to be present in tools/call request"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["_meta"]
       11 GETTABLEKS                       R4 R2 K5 ["name"]
       13 MOVE                             R6 R4
       14 JUMPIFNOT                        R6 ; [+9]
       15 FASTCALL1                        TYPEOF R4 ; [+3]
       16 MOVE                             R8 R4
       17 GETIMPORT                        R7 K7 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFEQKS                       R7 K8 ["string"] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       26 LOADK                            R7 K9 ["Expected tool name to be a string"]
       27 GETIMPORT                        R5 K3 [assert]
       29 CALL                             R5 2 0
       30 GETTABLEKS                       R5 R2 K10 ["arguments"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K11 ["getHandler"]
       35 MOVE                             R7 R4
       36 CALL                             R6 1 1
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K12 ["get"]
       40 CALL                             R8 0 1
       41 GETTABLEKS                       R7 R8 K13 ["EventLogger"]
       43 GETUPVAL                         R8 2
       44 LOADB                            R10 0
       45 NAMECALL                         R8 R8 K14 ["GenerateGUID"]
       47 CALL                             R8 2 1
       48 GETTABLEKS                       R9 R7 K15 ["logToolStarted"]
       50 DUPTABLE                         R10 K21 [{"messageGuid", "sessionId", "toolName", "clientName", "isThirdPartyRequest"}]
       51 SETTABLEKS                       R8 R10 K16 ["messageGuid"]
       53 GETUPVAL                         R12 3
       54 ORK                              R11 R12 K22 [""]
       55 SETTABLEKS                       R11 R10 K17 ["sessionId"]
       57 SETTABLEKS                       R4 R10 K18 ["toolName"]
       59 GETTABLEKS                       R11 R3 K23 ["client_name"]
       61 SETTABLEKS                       R11 R10 K19 ["clientName"]
       63 LOADB                            R11 1
       64 SETTABLEKS                       R11 R10 K20 ["isThirdPartyRequest"]
       66 CALL                             R9 1 0
       67 GETUPVAL                         R10 4
       68 GETTABLEKS                       R9 R10 K24 ["getTimestampMilliseconds"]
       70 CALL                             R9 0 1
       71 LOADNIL                          R10
       72 GETUPVAL                         R11 5
       73 CALL                             R11 0 1
       74 JUMPIFNOT                        R11 ; [+22]
       75 GETUPVAL                         R11 6
       76 CALL                             R11 0 1
       77 JUMPIFNOT                        R11 ; [+19]
       78 DUPTABLE                         R11 K27 [{"isError", "content"}]
       79 LOADB                            R12 1
       80 SETTABLEKS                       R12 R11 K25 ["isError"]
       82 NEWTABLE                         R12 0 1
       84 DUPTABLE                         R13 K30 [{"type", "text"}]
       85 LOADK                            R14 K29 ["text"]
       86 SETTABLEKS                       R14 R13 K28 ["type"]
       88 LOADK                            R14 K31 ["Tool calls are not allowed while in Play mode."]
       89 SETTABLEKS                       R14 R13 K29 ["text"]
       91 SETLIST                          R12 R13 1 [1]
       93 SETTABLEKS                       R12 R11 K26 ["content"]
       95 MOVE                             R10 R11
       96 JUMP                             ; [+6]
       97 MOVE                             R11 R6
       98 MOVE                             R12 R5
       99 MOVE                             R13 R3
      100 MOVE                             R14 R1
      101 CALL                             R11 3 1
      102 MOVE                             R10 R11
      103 GETUPVAL                         R12 4
      104 GETTABLEKS                       R11 R12 K24 ["getTimestampMilliseconds"]
      106 CALL                             R11 0 1
      107 GETTABLEKS                       R12 R7 K32 ["logToolEnded"]
      109 DUPTABLE                         R13 K37 [{"messageGuid", "toolId", "toolName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "clientName", "isThirdPartyRequest"}]
      110 SETTABLEKS                       R8 R13 K16 ["messageGuid"]
      112 LOADK                            R14 K22 [""]
      113 SETTABLEKS                       R14 R13 K33 ["toolId"]
      115 SETTABLEKS                       R4 R13 K18 ["toolName"]
      117 SETTABLEKS                       R9 R13 K34 ["startTime"]
      119 SETTABLEKS                       R9 R13 K35 ["startTimeAfterConfirmation"]
      121 SETTABLEKS                       R11 R13 K36 ["endTime"]
      123 GETTABLEKS                       R15 R10 K25 ["isError"]
      125 ORK                              R14 R15 K38 [False]
      126 SETTABLEKS                       R14 R13 K25 ["isError"]
      128 GETTABLEKS                       R14 R3 K23 ["client_name"]
      130 SETTABLEKS                       R14 R13 K19 ["clientName"]
      132 LOADB                            R14 1
      133 SETTABLEKS                       R14 R13 K20 ["isThirdPartyRequest"]
      135 CALL                             R12 1 0
      136 RETURN                           R10 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isActive"]
        3 NAMECALL                         R0 R0 K1 ["get"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+6]
        7 GETUPVAL                         R0 1
        8 LOADN                            R2 0
        9 NAMECALL                         R0 R0 K2 ["set"]
       11 CALL                             R0 2 0
       12 JUMP                             ; [+32]
       13 GETUPVAL                         R0 2
       14 NAMECALL                         R0 R0 K3 ["ping"]
       16 CALL                             R0 1 1
       17 NAMECALL                         R0 R0 K4 ["await"]
       19 CALL                             R0 1 2
       20 JUMPIFNOT                        R0 ; [+19]
       21 JUMPIFNOT                        R1 ; [+18]
       22 GETTABLEKS                       R2 R1 K5 ["_meta"]
       24 JUMPIFNOT                        R2 ; [+15]
       25 GETTABLEKS                       R3 R1 K5 ["_meta"]
       27 GETTABLEKS                       R2 R3 K6 ["clients"]
       29 JUMPIFNOT                        R2 ; [+10]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R6 R1 K5 ["_meta"]
       33 GETTABLEKS                       R5 R6 K6 ["clients"]
       35 LENGTH                           R4 R5
       36 NAMECALL                         R2 R2 K2 ["set"]
       38 CALL                             R2 2 0
       39 JUMP                             ; [+5]
       40 GETUPVAL                         R2 1
       41 LOADN                            R4 0
       42 NAMECALL                         R2 R2 K2 ["set"]
       44 CALL                             R2 2 0
       45 GETIMPORT                        R0 K9 [task.wait]
       47 LOADN                            R1 5
       48 CALL                             R0 1 0
       49 JUMPBACK                         ; [-50]
       50 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R1 R2 K1 ["EventLogger"]
        6 GETTABLEKS                       R2 R1 K2 ["logExternalServerConnected"]
        8 DUPTABLE                         R3 K4 [{"sessionId"}]
        9 GETUPVAL                         R5 1
       10 ORK                              R4 R5 K5 [""]
       11 SETTABLEKS                       R4 R3 K3 ["sessionId"]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 2
       15 JUMPIF                           R2 ; [+8]
       16 GETIMPORT                        R2 K8 [task.spawn]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CALL                             R2 1 1
       23 SETUPVAL                         R2 2
       24 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETIMPORT                        R0 K2 [pcall]
        8 GETIMPORT                        R1 K5 [task.cancel]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 0
       12 LOADNIL                          R0
       13 SETUPVAL                         R0 1
       14 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["transport"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["new"]
        5 DUPTABLE                         R4 K4 [{"name", "version"}]
        6 LOADK                            R5 K5 ["RobloxStudio"]
        7 SETTABLEKS                       R5 R4 K2 ["name"]
        9 LOADK                            R5 K6 ["0.1.0"]
       10 SETTABLEKS                       R5 R4 K3 ["version"]
       12 GETUPVAL                         R5 1
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R4 R2 K7 ["sessionId"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K1 ["new"]
       19 LOADN                            R6 0
       20 CALL                             R5 1 1
       21 LOADNIL                          R6
       22 DUPTABLE                         R9 K9 [{"method"}]
       23 LOADK                            R10 K10 ["ping"]
       24 SETTABLEKS                       R10 R9 K8 ["method"]
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R3
       28 NAMECALL                         R7 R3 K11 ["setRequestHandler"]
       30 CALL                             R7 3 0
       31 DUPTABLE                         R9 K9 [{"method"}]
       32 LOADK                            R10 K12 ["tools/list"]
       33 SETTABLEKS                       R10 R9 K8 ["method"]
       35 DUPCLOSURE                       R10 K13 [PROTO_7]
       36 CAPTURE                          UPVAL U3
       37 NAMECALL                         R7 R3 K11 ["setRequestHandler"]
       39 CALL                             R7 3 0
       40 DUPTABLE                         R9 K9 [{"method"}]
       41 LOADK                            R10 K14 ["tools/call"]
       42 SETTABLEKS                       R10 R9 K8 ["method"]
       44 NEWCLOSURE                       R10 P2
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R4
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R1
       52 NAMECALL                         R7 R3 K11 ["setRequestHandler"]
       54 CALL                             R7 3 0
       55 GETTABLEKS                       R7 R3 K15 ["onServerInitialized"]
       57 NEWCLOSURE                       R9 P3
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R4
       60 CAPTURE                          REF R6
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R3
       64 NAMECALL                         R7 R7 K16 ["Connect"]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R9 9
       68 GETTABLEKS                       R8 R9 K17 ["registerServer"]
       70 MOVE                             R9 R3
       71 CALL                             R8 1 0
       72 DUPTABLE                         R8 K22 [{"promise", "server", "connectionCountObservable", "destructor"}]
       73 MOVE                             R11 R2
       74 NAMECALL                         R9 R3 K23 ["connect"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K18 ["promise"]
       79 SETTABLEKS                       R3 R8 K19 ["server"]
       81 SETTABLEKS                       R5 R8 K20 ["connectionCountObservable"]
       83 NEWCLOSURE                       R9 P4
       84 CAPTURE                          VAL R7
       85 CAPTURE                          REF R6
       86 SETTABLEKS                       R9 R8 K21 ["destructor"]
       88 CLOSEUPVALS                      R6
       89 RETURN                           R8 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADK                            R1 K1 ["Client->Side"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["new"]
        8 LOADK                            R2 K2 ["Server<-Side"]
        9 CALL                             R1 1 1
       10 MOVE                             R4 R1
       11 LOADB                            R5 0
       12 NAMECALL                         R2 R0 K3 ["bindPeer"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 2

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.RawStream]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClientInternal"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["ALL_LOGGING_ENABLED"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K1 ["setStreamingClientCreationFunc"]
        8 DUPCLOSURE                       R1 K2 [PROTO_14]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["close"]
        6 CALL                             R0 1 0
        7 JUMP                             ; [+4]
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["close"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K0 ["close"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+64]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["get"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["getIntegrationsAsync"]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 MOVE                             R4 R3
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETTABLEKS                       R9 R8 K2 ["disabled"]
       18 JUMPIF                           R9 ; [+46]
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R11 R8 K3 ["label"]
       22 GETTABLEKS                       R12 R8 K4 ["url"]
       24 NAMECALL                         R9 R9 K5 ["getOrCreateAuthorizer"]
       26 CALL                             R9 3 1
       27 LOADNIL                          R10
       28 GETUPVAL                         R11 4
       29 CALL                             R11 0 1
       30 JUMPIFNOT                        R11 ; [+9]
       31 GETUPVAL                         R12 5
       32 GETTABLEKS                       R11 R12 K6 ["new"]
       34 GETTABLEKS                       R12 R8 K4 ["url"]
       36 MOVE                             R13 R9
       37 CALL                             R11 2 1
       38 MOVE                             R10 R11
       39 JUMP                             ; [+8]
       40 GETUPVAL                         R12 6
       41 GETTABLEKS                       R11 R12 K6 ["new"]
       43 GETTABLEKS                       R12 R8 K4 ["url"]
       45 MOVE                             R13 R9
       46 CALL                             R11 2 1
       47 MOVE                             R10 R11
       48 DUPTABLE                         R11 K10 [{"identifier", "transport", "clientOptions"}]
       49 GETTABLEKS                       R12 R8 K3 ["label"]
       51 SETTABLEKS                       R12 R11 K7 ["identifier"]
       53 GETTABLEKS                       R12 R10 K8 ["transport"]
       55 SETTABLEKS                       R12 R11 K8 ["transport"]
       57 GETUPVAL                         R12 7
       58 SETTABLEKS                       R12 R11 K9 ["clientOptions"]
       60 GETUPVAL                         R12 8
       61 MOVE                             R14 R11
       62 NAMECALL                         R12 R12 K11 ["addClient"]
       64 CALL                             R12 2 0
       65 FORGLOOP                         R4 2 ; [-50]
       67 GETUPVAL                         R2 8
       68 NAMECALL                         R2 R2 K12 ["connectAll"]
       70 CALL                             R2 1 1
       71 NAMECALL                         R2 R2 K13 ["await"]
       73 CALL                             R2 1 2
       74 JUMPIF                           R2 ; [+19]
       75 GETUPVAL                         R4 0
       76 CALL                             R4 0 1
       77 JUMPIFNOT                        R4 ; [+5]
       78 GETUPVAL                         R4 8
       79 NAMECALL                         R4 R4 K14 ["close"]
       81 CALL                             R4 1 0
       82 JUMP                             ; [+4]
       83 GETUPVAL                         R4 9
       84 NAMECALL                         R4 R4 K14 ["close"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 10
       88 NAMECALL                         R4 R4 K14 ["close"]
       90 CALL                             R4 1 0
       91 MOVE                             R4 R1
       92 MOVE                             R5 R3
       93 CALL                             R4 1 0
       94 MOVE                             R4 R0
       95 GETUPVAL                         R5 8
       96 CALL                             R4 1 0
       97 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 LOADK                            R5 K1 ["Client->Side"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K0 ["new"]
        8 LOADK                            R6 K2 ["Server<-Side"]
        9 CALL                             R5 1 1
       10 MOVE                             R8 R5
       11 LOADB                            R9 0
       12 NAMECALL                         R6 R4 K3 ["bindPeer"]
       14 CALL                             R6 3 0
       15 MOVE                             R2 R4
       16 MOVE                             R3 R5
       17 GETGLOBAL                        R4 K4 ["startLocalServer"]
       19 GETTABLEKS                       R5 R3 K5 ["transport"]
       21 CALL                             R4 1 1
       22 NAMECALL                         R4 R4 K6 ["await"]
       24 CALL                             R4 1 2
       25 JUMPIF                           R4 ; [+6]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K7 ["reject"]
       29 LOADK                            R7 K8 ["Failed to start local MCP server"]
       30 CALL                             R6 1 -1
       31 RETURN                           R6 -1
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R6 R7 K0 ["new"]
       35 DUPTABLE                         R7 K11 [{"name", "version"}]
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R8 R9 K12 ["MCP_CLIENT_IDENTIFIER"]
       39 SETTABLEKS                       R8 R7 K9 ["name"]
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R8 R9 K13 ["JSONRPC_VERSION"]
       44 SETTABLEKS                       R8 R7 K10 ["version"]
       46 CALL                             R6 1 1
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 MOVE                             R10 R7
       53 NAMECALL                         R8 R0 K14 ["Connect"]
       55 CALL                             R8 2 0
       56 DUPTABLE                         R8 K18 [{"identifier", "transport", "clientOptions", "useStaticToolNames"}]
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R9 R10 K12 ["MCP_CLIENT_IDENTIFIER"]
       60 SETTABLEKS                       R9 R8 K15 ["identifier"]
       62 GETTABLEKS                       R9 R2 K5 ["transport"]
       64 SETTABLEKS                       R9 R8 K5 ["transport"]
       66 GETUPVAL                         R9 6
       67 SETTABLEKS                       R9 R8 K16 ["clientOptions"]
       69 LOADB                            R9 1
       70 SETTABLEKS                       R9 R8 K17 ["useStaticToolNames"]
       72 MOVE                             R11 R8
       73 NAMECALL                         R9 R6 K19 ["addClient"]
       75 CALL                             R9 2 0
       76 GETUPVAL                         R10 1
       77 GETTABLEKS                       R9 R10 K0 ["new"]
       79 NEWCLOSURE                       R10 P1
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U7
       82 CAPTURE                          UPVAL U8
       83 CAPTURE                          VAL R1
       84 CAPTURE                          UPVAL U9
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          UPVAL U11
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R3
       91 CALL                             R9 1 -1
       92 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["LuauPolyfill"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["ModelContextProtocol"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K14 ["Src"]
       38 GETTABLEKS                       R6 R7 K15 ["Types"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R8 R2 K16 ["Flags"]
       43 GETTABLEKS                       R7 R8 K17 ["Shared"]
       45 GETTABLEKS                       R6 R7 K18 ["FFlagDebugLogAssistantUI"]
       47 GETTABLEKS                       R9 R2 K16 ["Flags"]
       49 GETTABLEKS                       R8 R9 K17 ["Shared"]
       51 GETTABLEKS                       R7 R8 K19 ["FFlagMCPAssistantManagementMenu"]
       53 GETTABLEKS                       R10 R2 K16 ["Flags"]
       55 GETTABLEKS                       R9 R10 K17 ["Shared"]
       57 GETTABLEKS                       R8 R9 K20 ["FFlagAssistantUseVariantHttpTransport"]
       59 GETIMPORT                        R9 K9 [require]
       61 GETTABLEKS                       R12 R0 K14 ["Src"]
       63 GETTABLEKS                       R11 R12 K16 ["Flags"]
       65 GETTABLEKS                       R10 R11 K21 ["FFlagSkipExternalToolsNoDebugMode"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R11 R2 K22 ["Utils"]
       70 GETTABLEKS                       R10 R11 K23 ["Tools"]
       72 GETTABLEKS                       R12 R4 K24 ["Util"]
       74 GETTABLEKS                       R11 R12 K25 ["Logging"]
       76 GETTABLEKS                       R12 R4 K15 ["Types"]
       78 GETTABLEKS                       R13 R4 K26 ["MultiplexedClient"]
       80 GETTABLEKS                       R15 R4 K24 ["Util"]
       82 GETTABLEKS                       R14 R15 K27 ["Observable"]
       84 GETTABLEKS                       R15 R4 K28 ["PeerTransport"]
       86 GETTABLEKS                       R16 R4 K29 ["Promise"]
       88 GETTABLEKS                       R17 R4 K30 ["Server"]
       90 GETTABLEKS                       R18 R4 K31 ["ServerRegistry"]
       92 GETTABLEKS                       R20 R4 K32 ["StreamableHttpClient"]
       94 GETTABLEKS                       R19 R20 K33 ["StreamableHttpClientTransport"]
       96 GETTABLEKS                       R20 R4 K34 ["ToolRegistry"]
       98 GETTABLEKS                       R22 R2 K35 ["IntegrationManagement"]
      100 GETTABLEKS                       R21 R22 K36 ["IntegrationManager"]
      102 GETTABLEKS                       R23 R2 K37 ["Guest"]
      104 GETTABLEKS                       R22 R23 K38 ["Environment"]
      106 GETTABLEKS                       R24 R4 K32 ["StreamableHttpClient"]
      108 GETTABLEKS                       R23 R24 K39 ["StreamingClientFactory"]
      110 GETTABLEKS                       R25 R4 K40 ["HttpVariantClientTransport"]
      112 GETTABLEKS                       R24 R25 K40 ["HttpVariantClientTransport"]
      114 GETTABLEKS                       R26 R2 K22 ["Utils"]
      116 GETTABLEKS                       R25 R26 K41 ["Time"]
      118 GETTABLEKS                       R28 R2 K23 ["Tools"]
      120 GETTABLEKS                       R27 R28 K42 ["ToolTypes"]
      122 GETTABLEKS                       R26 R27 K43 ["ToolNames"]
      124 DUPTABLE                         R27 K45 [{"capabilities"}]
      125 DUPTABLE                         R28 K49 [{"experimental", "roots", "sampling"}]
      126 GETTABLEKS                       R29 R12 K50 ["emptyObject"]
      128 CALL                             R29 0 1
      129 SETTABLEKS                       R29 R28 K46 ["experimental"]
      131 GETTABLEKS                       R29 R12 K50 ["emptyObject"]
      133 CALL                             R29 0 1
      134 SETTABLEKS                       R29 R28 K47 ["roots"]
      136 GETTABLEKS                       R29 R12 K50 ["emptyObject"]
      138 CALL                             R29 0 1
      139 SETTABLEKS                       R29 R28 K48 ["sampling"]
      141 SETTABLEKS                       R28 R27 K44 ["capabilities"]
      143 DUPTABLE                         R28 K45 [{"capabilities"}]
      144 DUPTABLE                         R29 K54 [{"prompts", "resources", "tools"}]
      145 GETTABLEKS                       R30 R12 K50 ["emptyObject"]
      147 CALL                             R30 0 1
      148 SETTABLEKS                       R30 R29 K51 ["prompts"]
      150 GETTABLEKS                       R30 R12 K50 ["emptyObject"]
      152 CALL                             R30 0 1
      153 SETTABLEKS                       R30 R29 K52 ["resources"]
      155 DUPTABLE                         R30 K56 [{"listChanged"}]
      156 LOADB                            R31 1
      157 SETTABLEKS                       R31 R30 K55 ["listChanged"]
      159 SETTABLEKS                       R30 R29 K53 ["tools"]
      161 SETTABLEKS                       R29 R28 K44 ["capabilities"]
      163 NEWTABLE                         R29 4 0
      165 GETTABLEKS                       R30 R26 K57 ["InsertFromMarketplace"]
      167 LOADB                            R31 1
      168 SETTABLE                         R31 R29 R30
      169 GETTABLEKS                       R30 R26 K58 ["MaterialGen"]
      171 LOADB                            R31 1
      172 SETTABLE                         R31 R29 R30
      173 GETTABLEKS                       R30 R26 K59 ["MeshGen"]
      175 LOADB                            R31 1
      176 SETTABLE                         R31 R29 R30
      177 DUPCLOSURE                       R30 K60 [PROTO_0]
      178 CAPTURE                          VAL R20
      179 CAPTURE                          VAL R29
      180 DUPCLOSURE                       R31 K61 [PROTO_4]
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R28
      183 CAPTURE                          VAL R20
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R10
      186 SETGLOBAL                        R31 K62 ["getBuiltinServer"]
      188 DUPCLOSURE                       R31 K63 [PROTO_5]
      189 CAPTURE                          VAL R18
      190 SETGLOBAL                        R31 K64 ["startLocalServer"]
      192 DUPCLOSURE                       R31 K65 [PROTO_12]
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R28
      195 CAPTURE                          VAL R14
      196 CAPTURE                          VAL R30
      197 CAPTURE                          VAL R20
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R25
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R18
      203 SETGLOBAL                        R31 K66 ["startExternalServer"]
      205 DUPCLOSURE                       R31 K67 [PROTO_13]
      206 CAPTURE                          VAL R15
      207 DUPCLOSURE                       R32 K68 [PROTO_15]
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R6
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R1
      212 DUPCLOSURE                       R33 K69 [PROTO_18]
      213 CAPTURE                          VAL R15
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R13
      216 CAPTURE                          VAL R5
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R27
      220 CAPTURE                          VAL R22
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R8
      223 CAPTURE                          VAL R24
      224 CAPTURE                          VAL R19
      225 DUPTABLE                         R34 K72 [{"promiseMcpHost", "configureModelContextProtocol", "startLocalServer", "startExternalServer"}]
      226 SETTABLEKS                       R33 R34 K70 ["promiseMcpHost"]
      228 SETTABLEKS                       R32 R34 K71 ["configureModelContextProtocol"]
      230 GETGLOBAL                        R35 K64 ["startLocalServer"]
      232 SETTABLEKS                       R35 R34 K64 ["startLocalServer"]
      234 GETGLOBAL                        R35 K66 ["startExternalServer"]
      236 SETTABLEKS                       R35 R34 K66 ["startExternalServer"]
      238 RETURN                           R34 1
