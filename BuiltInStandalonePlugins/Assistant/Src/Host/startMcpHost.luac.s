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

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from "]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R4 K4 ["name"]
        7 CONCAT                           R1 R2 R3
        8 SETTABLEKS                       R1 R0 K0 ["message"]
       10 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R3 R0 K0 ["params"]
        5 GETTABLEKS                       R2 R3 K1 ["disableScreenCapture"]
        7 GETUPVAL                         R3 0
        8 CALL                             R3 0 1
        9 JUMPIF                           R3 ; [+4]
       10 GETUPVAL                         R3 1
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+7]
       13 JUMPIFNOT                        R2 ; [+6]
       14 DUPTABLE                         R3 K3 [{"tools"}]
       15 GETUPVAL                         R4 2
       16 CALL                             R4 0 1
       17 SETTABLEKS                       R4 R3 K2 ["tools"]
       19 RETURN                           R3 1
       20 DUPTABLE                         R3 K3 [{"tools"}]
       21 GETUPVAL                         R5 3
       22 GETTABLEKS                       R4 R5 K4 ["getDefinitions"]
       24 CALL                             R4 0 1
       25 SETTABLEKS                       R4 R3 K2 ["tools"]
       27 RETURN                           R3 1

PROTO_4:
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

PROTO_5:
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
       25 DUPCLOSURE                       R4 K11 [PROTO_3]
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 NAMECALL                         R1 R0 K9 ["setRequestHandler"]
       32 CALL                             R1 3 0
       33 DUPTABLE                         R3 K7 [{"method"}]
       34 LOADK                            R4 K12 ["tools/call"]
       35 SETTABLEKS                       R4 R3 K6 ["method"]
       37 DUPCLOSURE                       R4 K13 [PROTO_4]
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 NAMECALL                         R1 R0 K9 ["setRequestHandler"]
       43 CALL                             R1 3 0
       44 RETURN                           R0 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"tools"}]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["tools"]
        5 RETURN                           R0 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected params to be present in tools/call request"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["_meta"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K5 ["isThirdPartyRequest"]
       17 GETTABLEKS                       R4 R2 K6 ["name"]
       19 MOVE                             R6 R4
       20 JUMPIFNOT                        R6 ; [+9]
       21 FASTCALL1                        TYPEOF R4 ; [+3]
       22 MOVE                             R8 R4
       23 GETIMPORT                        R7 K8 [typeof]
       25 CALL                             R7 1 1
       26 JUMPIFEQKS                       R7 K9 ["string"] ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       32 LOADK                            R7 K10 ["Expected tool name to be a string"]
       33 GETIMPORT                        R5 K3 [assert]
       35 CALL                             R5 2 0
       36 GETTABLEKS                       R5 R2 K11 ["arguments"]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R6 R7 K12 ["getHandler"]
       41 MOVE                             R7 R4
       42 CALL                             R6 1 1
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R8 R9 K13 ["get"]
       46 CALL                             R8 0 1
       47 GETTABLEKS                       R7 R8 K14 ["EventLogger"]
       49 GETUPVAL                         R8 2
       50 LOADB                            R10 0
       51 NAMECALL                         R8 R8 K15 ["GenerateGUID"]
       53 CALL                             R8 2 1
       54 GETTABLEKS                       R9 R7 K16 ["logToolStarted"]
       56 DUPTABLE                         R10 K21 [{"messageGuid", "sessionId", "toolName", "clientName", "isThirdPartyRequest"}]
       57 SETTABLEKS                       R8 R10 K17 ["messageGuid"]
       59 GETUPVAL                         R12 3
       60 ORK                              R11 R12 K22 [""]
       61 SETTABLEKS                       R11 R10 K18 ["sessionId"]
       63 SETTABLEKS                       R4 R10 K19 ["toolName"]
       65 GETTABLEKS                       R11 R3 K23 ["client_name"]
       67 SETTABLEKS                       R11 R10 K20 ["clientName"]
       69 LOADB                            R11 1
       70 SETTABLEKS                       R11 R10 K5 ["isThirdPartyRequest"]
       72 CALL                             R9 1 0
       73 GETUPVAL                         R10 4
       74 GETTABLEKS                       R9 R10 K24 ["getTimestampMilliseconds"]
       76 CALL                             R9 0 1
       77 LOADNIL                          R10
       78 GETUPVAL                         R11 5
       79 CALL                             R11 0 1
       80 JUMPIFNOT                        R11 ; [+22]
       81 GETUPVAL                         R11 6
       82 CALL                             R11 0 1
       83 JUMPIFNOT                        R11 ; [+19]
       84 DUPTABLE                         R11 K27 [{"isError", "content"}]
       85 LOADB                            R12 1
       86 SETTABLEKS                       R12 R11 K25 ["isError"]
       88 NEWTABLE                         R12 0 1
       90 DUPTABLE                         R13 K30 [{"type", "text"}]
       91 LOADK                            R14 K29 ["text"]
       92 SETTABLEKS                       R14 R13 K28 ["type"]
       94 LOADK                            R14 K31 ["Tool calls are not allowed while in Play mode."]
       95 SETTABLEKS                       R14 R13 K29 ["text"]
       97 SETLIST                          R12 R13 1 [1]
       99 SETTABLEKS                       R12 R11 K26 ["content"]
      101 MOVE                             R10 R11
      102 JUMP                             ; [+6]
      103 MOVE                             R11 R6
      104 MOVE                             R12 R5
      105 MOVE                             R13 R3
      106 MOVE                             R14 R1
      107 CALL                             R11 3 1
      108 MOVE                             R10 R11
      109 GETUPVAL                         R12 4
      110 GETTABLEKS                       R11 R12 K24 ["getTimestampMilliseconds"]
      112 CALL                             R11 0 1
      113 GETTABLEKS                       R12 R7 K32 ["logToolEnded"]
      115 DUPTABLE                         R13 K37 [{"messageGuid", "toolId", "toolName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "clientName", "isThirdPartyRequest"}]
      116 SETTABLEKS                       R8 R13 K17 ["messageGuid"]
      118 LOADK                            R14 K22 [""]
      119 SETTABLEKS                       R14 R13 K33 ["toolId"]
      121 SETTABLEKS                       R4 R13 K19 ["toolName"]
      123 SETTABLEKS                       R9 R13 K34 ["startTime"]
      125 SETTABLEKS                       R9 R13 K35 ["startTimeAfterConfirmation"]
      127 SETTABLEKS                       R11 R13 K36 ["endTime"]
      129 GETTABLEKS                       R15 R10 K25 ["isError"]
      131 ORK                              R14 R15 K38 [False]
      132 SETTABLEKS                       R14 R13 K25 ["isError"]
      134 GETTABLEKS                       R14 R3 K23 ["client_name"]
      136 SETTABLEKS                       R14 R13 K20 ["clientName"]
      138 LOADB                            R14 1
      139 SETTABLEKS                       R14 R13 K5 ["isThirdPartyRequest"]
      141 CALL                             R12 1 0
      142 RETURN                           R10 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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
       35 DUPCLOSURE                       R10 K13 [PROTO_8]
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.RawStream]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClientInternal"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["ALL_LOGGING_ENABLED"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K1 ["setStreamingClientCreationFunc"]
        8 DUPCLOSURE                       R1 K2 [PROTO_15]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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
       59 GETTABLEKS                       R11 R2 K16 ["Flags"]
       61 GETTABLEKS                       R10 R11 K17 ["Shared"]
       63 GETTABLEKS                       R9 R10 K21 ["FFlagAssistantUseNewMeshGenTool"]
       65 GETIMPORT                        R10 K9 [require]
       67 GETTABLEKS                       R13 R0 K14 ["Src"]
       69 GETTABLEKS                       R12 R13 K16 ["Flags"]
       71 GETTABLEKS                       R11 R12 K22 ["FFlagDisableInternalScreenCapture"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R13 R2 K16 ["Flags"]
       76 GETTABLEKS                       R12 R13 K17 ["Shared"]
       78 GETTABLEKS                       R11 R12 K23 ["FFlagDisableScreenCaptureForDefaultModel"]
       80 GETIMPORT                        R12 K9 [require]
       82 GETTABLEKS                       R15 R0 K14 ["Src"]
       84 GETTABLEKS                       R14 R15 K16 ["Flags"]
       86 GETTABLEKS                       R13 R14 K24 ["FFlagSkipExternalToolsNoDebugMode"]
       88 CALL                             R12 1 1
       89 GETTABLEKS                       R14 R2 K25 ["Utils"]
       91 GETTABLEKS                       R13 R14 K26 ["Tools"]
       93 GETTABLEKS                       R15 R4 K27 ["Util"]
       95 GETTABLEKS                       R14 R15 K28 ["Logging"]
       97 GETTABLEKS                       R15 R4 K15 ["Types"]
       99 GETTABLEKS                       R16 R4 K29 ["MultiplexedClient"]
      101 GETTABLEKS                       R18 R4 K27 ["Util"]
      103 GETTABLEKS                       R17 R18 K30 ["Observable"]
      105 GETTABLEKS                       R18 R4 K31 ["PeerTransport"]
      107 GETTABLEKS                       R19 R4 K32 ["Promise"]
      109 GETTABLEKS                       R20 R4 K33 ["Server"]
      111 GETTABLEKS                       R21 R4 K34 ["ServerRegistry"]
      113 GETTABLEKS                       R23 R4 K35 ["StreamableHttpClient"]
      115 GETTABLEKS                       R22 R23 K36 ["StreamableHttpClientTransport"]
      117 GETTABLEKS                       R23 R4 K37 ["ToolRegistry"]
      119 GETTABLEKS                       R25 R2 K38 ["IntegrationManagement"]
      121 GETTABLEKS                       R24 R25 K39 ["IntegrationManager"]
      123 GETTABLEKS                       R26 R2 K40 ["Guest"]
      125 GETTABLEKS                       R25 R26 K41 ["Environment"]
      127 GETTABLEKS                       R27 R4 K35 ["StreamableHttpClient"]
      129 GETTABLEKS                       R26 R27 K42 ["StreamingClientFactory"]
      131 GETTABLEKS                       R28 R4 K43 ["HttpVariantClientTransport"]
      133 GETTABLEKS                       R27 R28 K43 ["HttpVariantClientTransport"]
      135 GETTABLEKS                       R29 R2 K25 ["Utils"]
      137 GETTABLEKS                       R28 R29 K44 ["Time"]
      139 GETTABLEKS                       R31 R2 K26 ["Tools"]
      141 GETTABLEKS                       R30 R31 K45 ["ToolTypes"]
      143 GETTABLEKS                       R29 R30 K46 ["ToolNames"]
      145 DUPTABLE                         R30 K48 [{"capabilities"}]
      146 DUPTABLE                         R31 K52 [{"experimental", "roots", "sampling"}]
      147 GETTABLEKS                       R32 R15 K53 ["emptyObject"]
      149 CALL                             R32 0 1
      150 SETTABLEKS                       R32 R31 K49 ["experimental"]
      152 GETTABLEKS                       R32 R15 K53 ["emptyObject"]
      154 CALL                             R32 0 1
      155 SETTABLEKS                       R32 R31 K50 ["roots"]
      157 GETTABLEKS                       R32 R15 K53 ["emptyObject"]
      159 CALL                             R32 0 1
      160 SETTABLEKS                       R32 R31 K51 ["sampling"]
      162 SETTABLEKS                       R31 R30 K47 ["capabilities"]
      164 DUPTABLE                         R31 K48 [{"capabilities"}]
      165 DUPTABLE                         R32 K57 [{"prompts", "resources", "tools"}]
      166 GETTABLEKS                       R33 R15 K53 ["emptyObject"]
      168 CALL                             R33 0 1
      169 SETTABLEKS                       R33 R32 K54 ["prompts"]
      171 GETTABLEKS                       R33 R15 K53 ["emptyObject"]
      173 CALL                             R33 0 1
      174 SETTABLEKS                       R33 R32 K55 ["resources"]
      176 DUPTABLE                         R33 K59 [{"listChanged"}]
      177 LOADB                            R34 1
      178 SETTABLEKS                       R34 R33 K58 ["listChanged"]
      180 SETTABLEKS                       R33 R32 K56 ["tools"]
      182 SETTABLEKS                       R32 R31 K47 ["capabilities"]
      184 NEWTABLE                         R32 4 0
      186 GETTABLEKS                       R33 R29 K60 ["InsertFromMarketplace"]
      188 MOVE                             R35 R9
      189 CALL                             R35 0 1
      190 NOT                              R34 R35
      191 SETTABLE                         R34 R32 R33
      192 GETTABLEKS                       R33 R29 K61 ["MaterialGen"]
      194 MOVE                             R35 R9
      195 CALL                             R35 0 1
      196 NOT                              R34 R35
      197 SETTABLE                         R34 R32 R33
      198 GETTABLEKS                       R33 R29 K62 ["MeshGen"]
      200 MOVE                             R35 R9
      201 CALL                             R35 0 1
      202 NOT                              R34 R35
      203 SETTABLE                         R34 R32 R33
      204 NEWTABLE                         R33 1 0
      206 GETTABLEKS                       R34 R29 K63 ["ScreenCapture"]
      208 LOADB                            R35 1
      209 SETTABLE                         R35 R33 R34
      210 DUPCLOSURE                       R34 K64 [PROTO_0]
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R32
      213 DUPCLOSURE                       R35 K65 [PROTO_1]
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R33
      216 DUPCLOSURE                       R36 K66 [PROTO_5]
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R31
      219 CAPTURE                          VAL R10
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R35
      222 CAPTURE                          VAL R23
      223 CAPTURE                          VAL R6
      224 CAPTURE                          VAL R13
      225 SETGLOBAL                        R36 K67 ["getBuiltinServer"]
      227 DUPCLOSURE                       R36 K68 [PROTO_6]
      228 CAPTURE                          VAL R21
      229 SETGLOBAL                        R36 K69 ["startLocalServer"]
      231 DUPCLOSURE                       R36 K70 [PROTO_13]
      232 CAPTURE                          VAL R20
      233 CAPTURE                          VAL R31
      234 CAPTURE                          VAL R17
      235 CAPTURE                          VAL R34
      236 CAPTURE                          VAL R23
      237 CAPTURE                          VAL R25
      238 CAPTURE                          VAL R1
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R21
      242 SETGLOBAL                        R36 K71 ["startExternalServer"]
      244 DUPCLOSURE                       R36 K72 [PROTO_14]
      245 CAPTURE                          VAL R18
      246 DUPCLOSURE                       R37 K73 [PROTO_16]
      247 CAPTURE                          VAL R14
      248 CAPTURE                          VAL R6
      249 CAPTURE                          VAL R26
      250 CAPTURE                          VAL R1
      251 DUPCLOSURE                       R38 K74 [PROTO_19]
      252 CAPTURE                          VAL R18
      253 CAPTURE                          VAL R19
      254 CAPTURE                          VAL R16
      255 CAPTURE                          VAL R5
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R7
      258 CAPTURE                          VAL R30
      259 CAPTURE                          VAL R25
      260 CAPTURE                          VAL R24
      261 CAPTURE                          VAL R8
      262 CAPTURE                          VAL R27
      263 CAPTURE                          VAL R22
      264 DUPTABLE                         R39 K77 [{"promiseMcpHost", "configureModelContextProtocol", "startLocalServer", "startExternalServer"}]
      265 SETTABLEKS                       R38 R39 K75 ["promiseMcpHost"]
      267 SETTABLEKS                       R37 R39 K76 ["configureModelContextProtocol"]
      269 GETGLOBAL                        R40 K69 ["startLocalServer"]
      271 SETTABLEKS                       R40 R39 K69 ["startLocalServer"]
      273 GETGLOBAL                        R40 K71 ["startExternalServer"]
      275 SETTABLEKS                       R40 R39 K71 ["startExternalServer"]
      277 RETURN                           R39 1
