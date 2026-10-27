PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 LOADB                            R3 1
        4 NAMECALL                         R0 R0 K0 ["connect"]
        6 CALL                             R0 3 1
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R0
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 0
       18 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ensureSetupInstructionsLoaded"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K8 [{"state", "isBusy", "start", "stop", "setupInstructions", "connectionCountObservable", "activeConnectionsObservable", "authRejectedObservable"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["state"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["isBusy"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["start"]
       10 SETTABLEKS                       R1 R0 K2 ["start"]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["stop"]
       15 SETTABLEKS                       R1 R0 K3 ["stop"]
       17 GETUPVAL                         R1 3
       18 SETTABLEKS                       R1 R0 K4 ["setupInstructions"]
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K5 ["connectionCountObservable"]
       23 SETTABLEKS                       R1 R0 K5 ["connectionCountObservable"]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K6 ["activeConnectionsObservable"]
       28 SETTABLEKS                       R1 R0 K6 ["activeConnectionsObservable"]
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R2 R2 K9 ["FFlagAssistantMCPProxyAuthRejectedWarn"]
       33 JUMPIFNOT                        R2 ; [+4]
       34 GETUPVAL                         R1 2
       35 GETTABLEKS                       R1 R1 K7 ["authRejectedObservable"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R1
       39 SETTABLEKS                       R1 R0 K7 ["authRejectedObservable"]
       41 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controller"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["stateObservable"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R4 R1 K2 ["isBusyObservable"]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R5 R1 K3 ["setupInstructionsObservable"]
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R7 0 1
       21 MOVE                             R8 R1
       22 SETLIST                          R7 R8 1 [1]
       24 CALL                             R5 2 0
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U2
       34 NEWTABLE                         R7 0 4
       36 MOVE                             R8 R1
       37 MOVE                             R9 R2
       38 MOVE                             R10 R3
       39 MOVE                             R11 R4
       40 SETLIST                          R7 R8 4 [1]
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 3
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K6 ["Context"]
       47 GETTABLEKS                       R7 R7 K7 ["Provider"]
       49 DUPTABLE                         R8 K9 [{"value"}]
       50 SETTABLEKS                       R5 R8 K8 ["value"]
       52 GETTABLEKS                       R9 R0 K10 ["children"]
       54 CALL                             R6 3 -1
       55 RETURN                           R6 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 JUMPIF                           R2 ; [+2]
        3 LOADK                            R1 K0 ["off"]
        4 JUMP                             ; [+22]
        5 GETUPVAL                         R2 2
        6 JUMPIF                           R2 ; [+2]
        7 LOADK                            R1 K1 ["indeterminate"]
        8 JUMP                             ; [+18]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["isActive"]
       12 NAMECALL                         R2 R2 K3 ["get"]
       14 CALL                             R2 1 1
       15 JUMPIFNOT                        R2 ; [+10]
       16 GETUPVAL                         R3 2
       17 NAMECALL                         R3 R3 K3 ["get"]
       19 CALL                             R3 1 1
       20 LENGTH                           R2 R3
       21 LOADN                            R3 0
       22 JUMPIFNOTLT                      R3 R2 ; [+3]
       24 LOADK                            R1 K4 ["connected"]
       25 JUMP                             ; [+1]
       26 LOADK                            R1 K5 ["ready"]
       27 GETUPVAL                         R3 2
       28 JUMPIFNOT                        R3 ; [+6]
       29 GETUPVAL                         R3 2
       30 NAMECALL                         R3 R3 K3 ["get"]
       32 CALL                             R3 1 1
       33 LENGTH                           R2 R3
       34 JUMP                             ; [+1]
       35 LOADN                            R2 0
       36 CALL                             R0 2 0
       37 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+8]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K0 ["isActive"]
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K1 ["connect"]
       14 CALL                             R1 2 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R1
       17 GETUPVAL                         R3 2
       18 JUMPIFNOT                        R3 ; [+6]
       19 GETUPVAL                         R2 2
       20 MOVE                             R4 R0
       21 NAMECALL                         R2 R2 K1 ["connect"]
       23 CALL                             R2 2 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R2
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["off"]
        2 LOADN                            R2 0
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearCache"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 DUPCLOSURE                       R0 K1 [PROTO_14]
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADB                            R1 0
        4 JUMPIFEQKNIL                     R0 ; [+12]
        6 LOADB                            R1 0
        7 GETIMPORT                        R2 K4 [Enum.StudioDataModelType.Edit]
        9 JUMPIFEQ                         R0 R2 ; [+7]
       11 GETIMPORT                        R2 K6 [Enum.StudioDataModelType.None]
       13 JUMPIFNOTEQ                      R0 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_17:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 JUMPIF                           R1 ; [+2]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K1 ["isActive"]
       11 NAMECALL                         R2 R2 K2 ["get"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
        3 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getMCPProxyTokenAsync"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["EventLogger"]
        6 GETTABLEKS                       R0 R0 K2 ["logMCPProxyTokenRead"]
        8 DUPTABLE                         R1 K5 [{"outcome", "errorMessage"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K3 ["outcome"]
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K4 ["errorMessage"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K2 [pcall]
        8 DUPCLOSURE                       R1 K3 [PROTO_19]
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 2
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 JUMPIF                           R0 ; [+8]
       15 LOADK                            R2 K4 ["threw"]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K6 [tostring]
       20 CALL                             R5 1 1
       21 MOVE                             R3 R5
       22 JUMP                             ; [+13]
       23 FASTCALL1                        TYPE R1 ; [+3]
       24 MOVE                             R6 R1
       25 GETIMPORT                        R5 K8 [type]
       27 CALL                             R5 1 1
       28 JUMPIFNOTEQKS                    R5 K9 ["string"] ; [+3]
       30 JUMPIFNOTEQKS                    R1 K10 [""] ; [+3]
       32 LOADK                            R2 K11 ["missing"]
       33 JUMP                             ; [+2]
       34 LOADK                            R2 K12 ["ok"]
       35 MOVE                             R4 R1
       36 GETUPVAL                         R5 2
       37 GETTABLEKS                       R5 R5 K13 ["current"]
       39 JUMPIFEQ                         R5 R2 ; [+11]
       41 GETUPVAL                         R5 2
       42 SETTABLEKS                       R2 R5 K13 ["current"]
       44 GETIMPORT                        R5 K2 [pcall]
       46 NEWCLOSURE                       R6 P1
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          REF R2
       49 CAPTURE                          REF R3
       50 CALL                             R5 1 0
       51 JUMPIFNOT                        R4 ; [+9]
       52 DUPTABLE                         R5 K15 [{"authorization"}]
       53 LOADK                            R6 K16 ["Bearer %*"]
       54 MOVE                             R8 R4
       55 NAMECALL                         R6 R6 K17 ["format"]
       57 CALL                             R6 2 1
       58 SETTABLEKS                       R6 R5 K14 ["authorization"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R5
       62 CLOSEUPVALS                      R2
       63 RETURN                           R5 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["startExternalServer"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["destructor"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["close"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["current"]
       11 LOADNIL                          R2
       12 NAMECALL                         R0 R0 K3 ["set"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 3
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K2 ["current"]
       19 GETUPVAL                         R0 4
       20 GETTABLEKS                       R0 R0 K4 ["FFlagMCPClientCountAsASetting"]
       22 JUMPIFNOT                        R0 ; [+15]
       23 GETUPVAL                         R1 5
       24 JUMPIFNOT                        R1 ; [+1]
       25 GETUPVAL                         R1 6
       26 FASTCALL2K                       ASSERT R1 K5 ; [+4]
       28 LOADK                            R2 K5 ["MCP status setters are not initialized"]
       29 GETIMPORT                        R0 K7 [assert]
       31 CALL                             R0 2 0
       32 GETUPVAL                         R0 5
       33 LOADNIL                          R1
       34 CALL                             R0 1 0
       35 GETUPVAL                         R0 6
       36 LOADNIL                          R1
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K4 [{["url"] = "ws://localhost:13469/studio", ["getHeadersAsync"]}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K5 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETUPVAL                         R2 2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K3 ["getHeadersAsync"]
       13 CALL                             R0 1 1
       14 GETUPVAL                         R1 3
       15 SETTABLEKS                       R0 R1 K6 ["current"]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["FFlagMCPClientCountAsASetting"]
       20 JUMPIFNOT                        R1 ; [+10]
       21 GETUPVAL                         R2 4
       22 FASTCALL2K                       ASSERT R2 K8 ; [+4]
       24 LOADK                            R3 K8 ["MCP status transport setter is not initialized"]
       25 GETIMPORT                        R1 K10 [assert]
       27 CALL                             R1 2 0
       28 GETUPVAL                         R1 4
       29 MOVE                             R2 R0
       30 CALL                             R1 1 0
       31 LOADNIL                          R1
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K7 ["FFlagMCPClientCountAsASetting"]
       35 JUMPIFNOT                        R2 ; [+36]
       36 GETIMPORT                        R2 K12 [pcall]
       38 NEWCLOSURE                       R3 P0
       39 CAPTURE                          UPVAL U5
       40 CAPTURE                          VAL R0
       41 CAPTURE                          UPVAL U6
       42 CALL                             R2 1 2
       43 JUMPIF                           R2 ; [+26]
       44 NAMECALL                         R4 R0 K13 ["close"]
       46 CALL                             R4 1 0
       47 GETUPVAL                         R4 3
       48 LOADNIL                          R5
       49 SETTABLEKS                       R5 R4 K6 ["current"]
       51 GETUPVAL                         R5 4
       52 JUMPIFNOT                        R5 ; [+1]
       53 GETUPVAL                         R5 7
       54 FASTCALL2K                       ASSERT R5 K14 ; [+4]
       56 LOADK                            R6 K14 ["MCP status setters are not initialized"]
       57 GETIMPORT                        R4 K10 [assert]
       59 CALL                             R4 2 0
       60 GETUPVAL                         R4 4
       61 LOADNIL                          R5
       62 CALL                             R4 1 0
       63 GETUPVAL                         R4 7
       64 LOADNIL                          R5
       65 CALL                             R4 1 0
       66 GETIMPORT                        R4 K16 [error]
       68 MOVE                             R5 R3
       69 CALL                             R4 1 0
       70 MOVE                             R1 R3
       71 JUMP                             ; [+7]
       72 GETUPVAL                         R2 5
       73 GETTABLEKS                       R2 R2 K17 ["startExternalServer"]
       75 MOVE                             R3 R0
       76 GETUPVAL                         R4 6
       77 CALL                             R2 2 1
       78 MOVE                             R1 R2
       79 GETTABLEKS                       R2 R1 K18 ["promise"]
       81 NAMECALL                         R2 R2 K19 ["await"]
       83 CALL                             R2 1 2
       84 NEWCLOSURE                       R4 P1
       85 CAPTURE                          REF R1
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          UPVAL U3
       89 CAPTURE                          UPVAL U1
       90 CAPTURE                          UPVAL U4
       91 CAPTURE                          UPVAL U7
       92 JUMPIF                           R2 ; [+13]
       93 GETIMPORT                        R5 K21 [warn]
       95 LOADK                            R6 K22 ["Failed to start external server: %*"]
       96 MOVE                             R8 R3
       97 NAMECALL                         R6 R6 K23 ["format"]
       99 CALL                             R6 2 1
      100 CALL                             R5 1 0
      101 MOVE                             R5 R4
      102 CALL                             R5 0 0
      103 LOADNIL                          R5
      104 CLOSEUPVALS                      R1
      105 RETURN                           R5 1
      106 GETUPVAL                         R5 8
      107 GETTABLEKS                       R5 R5 K6 ["current"]
      109 GETTABLEKS                       R7 R1 K24 ["server"]
      111 NAMECALL                         R5 R5 K25 ["set"]
      113 CALL                             R5 2 0
      114 GETUPVAL                         R5 1
      115 GETTABLEKS                       R5 R5 K7 ["FFlagMCPClientCountAsASetting"]
      117 JUMPIFNOT                        R5 ; [+11]
      118 GETUPVAL                         R6 7
      119 FASTCALL2K                       ASSERT R6 K26 ; [+4]
      121 LOADK                            R7 K26 ["MCP status clients setter is not initialized"]
      122 GETIMPORT                        R5 K10 [assert]
      124 CALL                             R5 2 0
      125 GETUPVAL                         R5 7
      126 GETTABLEKS                       R6 R1 K27 ["activeConnectionsObservable"]
      128 CALL                             R5 1 0
      129 DUPTABLE                         R5 K30 [{"disconnect", "connectionCountObservable", "activeConnectionsObservable"}]
      130 SETTABLEKS                       R4 R5 K28 ["disconnect"]
      132 GETTABLEKS                       R6 R1 K29 ["connectionCountObservable"]
      134 SETTABLEKS                       R6 R5 K29 ["connectionCountObservable"]
      136 GETTABLEKS                       R6 R1 K27 ["activeConnectionsObservable"]
      138 SETTABLEKS                       R6 R5 K27 ["activeConnectionsObservable"]
      140 CLOSEUPVALS                      R1
      141 RETURN                           R5 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_26:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["getNameAsync"]
        4 CALL                             R1 0 1
        5 JUMPIFEQ                         R1 R0 ; [+19]
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R4 K5 [{["_meta"], ["data"], ["level"] = "info"}]
        9 DUPTABLE                         R5 K7 [{"studio_name"}]
       10 SETTABLEKS                       R1 R5 K6 ["studio_name"]
       12 SETTABLEKS                       R5 R4 K1 ["_meta"]
       14 LOADK                            R5 K8 ["Server started for %*"]
       15 MOVE                             R7 R1
       16 NAMECALL                         R5 R5 K9 ["format"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K2 ["data"]
       21 NAMECALL                         R2 R2 K10 ["sendLoggingMessage"]
       23 CALL                             R2 2 0
       24 MOVE                             R0 R1
       25 GETIMPORT                        R2 K13 [task.wait]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K14 ["FIntAssistantStudioNameCheckInterval"]
       30 CALL                             R2 1 0
       31 JUMPBACK                         ; [-31]
       32 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 1
       13 NAMECALL                         R0 R0 K5 ["Disconnect"]
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 1
       18 RETURN                           R0 0

PROTO_29:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R1 0
        2 GETIMPORT                        R2 K2 [task.spawn]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U3
        8 CALL                             R2 1 1
        9 SETUPVAL                         R2 1
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 JUMPIFNOT                        R1 ; [+8]
       13 GETIMPORT                        R1 K4 [pcall]
       15 GETIMPORT                        R2 K6 [task.cancel]
       17 GETUPVAL                         R3 1
       18 CALL                             R1 2 0
       19 LOADNIL                          R1
       20 SETUPVAL                         R1 1
       21 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETIMPORT                        R1 K1 [pcall]
        4 GETIMPORT                        R2 K4 [task.cancel]
        6 GETUPVAL                         R3 0
        7 CALL                             R1 2 0
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETUPVAL                         R1 1
       13 NAMECALL                         R1 R1 K5 ["Disconnect"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETUPVAL                         R1 1
       18 JUMPIF                           R0 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K6 ["current"]
       23 FASTCALL2K                       ASSERT R1 K7 ; [+5]
       25 MOVE                             R3 R1
       26 LOADK                            R4 K7 ["WebSocket transport is not set"]
       27 GETIMPORT                        R2 K9 [assert]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R2 R1 K10 ["isActive"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 LOADB                            R5 1
       38 NAMECALL                         R2 R2 K11 ["connect"]
       40 CALL                             R2 3 1
       41 SETUPVAL                         R2 1
       42 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 GETUPVAL                         R0 1
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R0 1
       13 NAMECALL                         R0 R0 K5 ["Disconnect"]
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 1
       18 GETUPVAL                         R0 2
       19 NAMECALL                         R0 R0 K5 ["Disconnect"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+25]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 NAMECALL                         R0 R0 K1 ["get"]
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 2
        9 MOVE                             R2 R0
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+14]
       12 FASTCALL2K                       ASSERT R0 K2 ; [+5]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K2 ["Server is nil"]
       16 GETIMPORT                        R1 K4 [assert]
       18 CALL                             R1 2 0
       19 DUPTABLE                         R3 K10 [{["_meta"], ["data"] = "Studio is not inside a place", ["level"] = "info"}]
       20 DUPTABLE                         R4 K13 [{["studio_name"] = ""}]
       21 SETTABLEKS                       R4 R3 K5 ["_meta"]
       23 NAMECALL                         R1 R0 K14 ["sendLoggingMessage"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0
       27 LOADNIL                          R0
       28 LOADNIL                          R1
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          REF R0
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          REF R0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U4
       35 NEWCLOSURE                       R4 P2
       36 CAPTURE                          REF R0
       37 CAPTURE                          REF R1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K0 ["current"]
       41 NEWCLOSURE                       R7 P3
       42 CAPTURE                          REF R0
       43 CAPTURE                          REF R1
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 LOADB                            R8 1
       48 NAMECALL                         R5 R5 K15 ["connect"]
       50 CALL                             R5 3 1
       51 NEWCLOSURE                       R6 P4
       52 CAPTURE                          REF R0
       53 CAPTURE                          REF R1
       54 CAPTURE                          VAL R5
       55 CLOSEUPVALS                      R0
       56 RETURN                           R6 1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["FFlagMCPClientCountAsASetting"]
        7 JUMPIFNOT                        R4 ; [+58]
        8 GETUPVAL                         R4 2
        9 NAMECALL                         R4 R4 K1 ["use"]
       11 CALL                             R4 1 1
       12 NAMECALL                         R4 R4 K2 ["get"]
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K3 ["useState"]
       18 LOADNIL                          R6
       19 CALL                             R5 1 2
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R7 R7 K3 ["useState"]
       23 LOADNIL                          R8
       24 CALL                             R7 1 2
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       28 NEWCLOSURE                       R10 P0
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U5
       32 NEWTABLE                         R11 0 1
       34 MOVE                             R12 R4
       35 SETLIST                          R11 R12 1 [1]
       37 CALL                             R9 2 1
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K5 ["useEffect"]
       41 NEWCLOSURE                       R11 P1
       42 CAPTURE                          VAL R9
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R7
       45 NEWTABLE                         R12 0 3
       47 MOVE                             R13 R9
       48 MOVE                             R14 R5
       49 MOVE                             R15 R7
       50 SETLIST                          R12 R13 3 [1]
       52 CALL                             R10 2 0
       53 GETUPVAL                         R10 3
       54 GETTABLEKS                       R10 R10 K5 ["useEffect"]
       56 NEWCLOSURE                       R11 P2
       57 CAPTURE                          VAL R9
       58 NEWTABLE                         R12 0 1
       60 MOVE                             R13 R9
       61 SETLIST                          R12 R13 1 [1]
       63 CALL                             R10 2 0
       64 MOVE                             R2 R6
       65 MOVE                             R3 R8
       66 GETUPVAL                         R4 3
       67 GETTABLEKS                       R4 R4 K6 ["useRef"]
       69 GETUPVAL                         R5 6
       70 GETTABLEKS                       R5 R5 K7 ["new"]
       72 LOADNIL                          R6
       73 CALL                             R5 1 -1
       74 CALL                             R4 -1 1
       75 GETUPVAL                         R5 3
       76 GETTABLEKS                       R5 R5 K6 ["useRef"]
       78 LOADNIL                          R6
       79 CALL                             R5 1 1
       80 GETUPVAL                         R6 3
       81 GETTABLEKS                       R6 R6 K6 ["useRef"]
       83 MOVE                             R7 R1
       84 CALL                             R6 1 1
       85 GETUPVAL                         R7 3
       86 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       88 NEWCLOSURE                       R8 P3
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R1
       91 CAPTURE                          UPVAL U7
       92 NEWTABLE                         R9 0 1
       94 MOVE                             R10 R1
       95 SETLIST                          R9 R10 1 [1]
       97 CALL                             R7 2 0
       98 NEWCLOSURE                       R7 P4
       99 CAPTURE                          VAL R6
      100 GETUPVAL                         R8 3
      101 GETTABLEKS                       R8 R8 K8 ["useCallback"]
      103 NEWCLOSURE                       R9 P5
      104 CAPTURE                          VAL R5
      105 NEWTABLE                         R10 0 0
      107 CALL                             R8 2 1
      108 GETUPVAL                         R9 3
      109 GETTABLEKS                       R9 R9 K6 ["useRef"]
      111 LOADNIL                          R10
      112 CALL                             R9 1 1
      113 DUPCLOSURE                       R10 K9 [PROTO_18]
      114 CAPTURE                          UPVAL U1
      115 GETUPVAL                         R11 3
      116 GETTABLEKS                       R11 R11 K8 ["useCallback"]
      118 NEWCLOSURE                       R12 P7
      119 CAPTURE                          UPVAL U1
      120 CAPTURE                          UPVAL U8
      121 CAPTURE                          VAL R9
      122 NEWTABLE                         R13 0 0
      124 CALL                             R11 2 1
      125 GETUPVAL                         R12 3
      126 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      128 NEWCLOSURE                       R13 P8
      129 CAPTURE                          UPVAL U9
      130 CAPTURE                          UPVAL U1
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R5
      133 CAPTURE                          REF R2
      134 CAPTURE                          UPVAL U10
      135 CAPTURE                          VAL R7
      136 CAPTURE                          REF R3
      137 CAPTURE                          VAL R4
      138 NEWTABLE                         R14 0 3
      140 MOVE                             R15 R11
      141 MOVE                             R16 R2
      142 MOVE                             R17 R3
      143 SETLIST                          R14 R15 3 [1]
      145 CALL                             R12 2 1
      146 GETIMPORT                        R14 K13 [Enum.StudioDataModelType.None]
      148 JUMPIFNOTEQ                      R1 R14 ; [+2]
      150 LOADB                            R13 0 +1
      151 LOADB                            R13 1
      152 GETUPVAL                         R14 3
      153 GETTABLEKS                       R14 R14 K5 ["useEffect"]
      155 NEWCLOSURE                       R15 P9
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R8
      159 CAPTURE                          UPVAL U7
      160 CAPTURE                          UPVAL U1
      161 CAPTURE                          VAL R5
      162 NEWTABLE                         R16 0 2
      164 MOVE                             R17 R13
      165 MOVE                             R18 R8
      166 SETLIST                          R16 R17 2 [1]
      168 CALL                             R14 2 0
      169 GETUPVAL                         R14 11
      170 GETUPVAL                         R15 12
      171 GETTABLEKS                       R15 R15 K14 ["Provider"]
      173 DUPTABLE                         R16 K16 [{"onConnect"}]
      174 SETTABLEKS                       R12 R16 K15 ["onConnect"]
      176 GETTABLEKS                       R17 R0 K17 ["children"]
      178 CALL                             R14 3 -1
      179 CLOSEUPVALS                      R2
      180 RETURN                           R14 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantStartMcpServerWithoutUI"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETTABLEKS                       R1 R0 K1 ["externalServerController"]
        6 JUMPIFNOT                        R1 ; [+11]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K3 [{"controller"}]
       10 GETTABLEKS                       R4 R0 K1 ["externalServerController"]
       12 SETTABLEKS                       R4 R3 K2 ["controller"]
       14 GETTABLEKS                       R4 R0 K4 ["children"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 3
       20 LOADNIL                          R3
       21 GETTABLEKS                       R4 R0 K4 ["children"]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Host"]
       20 GETTABLEKS                       R3 R3 K10 ["ExternalServerController"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Resources"]
       43 GETTABLEKS                       R6 R6 K14 ["Localization"]
       45 GETTABLEKS                       R6 R6 K14 ["Localization"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K9 ["Host"]
       54 GETTABLEKS                       R7 R7 K15 ["McpStatusSetting"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K6 ["Packages"]
       61 GETTABLEKS                       R8 R8 K16 ["ModelContextProtocol"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K6 ["Packages"]
       68 GETTABLEKS                       R9 R9 K17 ["React"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K6 ["Packages"]
       75 GETTABLEKS                       R10 R10 K18 ["Signal"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K8 ["Src"]
       82 GETTABLEKS                       R11 R11 K19 ["Util"]
       84 GETTABLEKS                       R11 R11 K20 ["StudioIdentification"]
       86 CALL                             R10 1 1
       87 GETIMPORT                        R11 K5 [require]
       89 GETTABLEKS                       R12 R0 K8 ["Src"]
       91 GETTABLEKS                       R12 R12 K9 ["Host"]
       93 GETTABLEKS                       R12 R12 K21 ["startMcpHost"]
       95 CALL                             R11 1 1
       96 GETIMPORT                        R12 K5 [require]
       98 GETTABLEKS                       R13 R0 K8 ["Src"]
      100 GETTABLEKS                       R13 R13 K22 ["Hooks"]
      102 GETTABLEKS                       R13 R13 K23 ["useFocusedDataModelType"]
      104 CALL                             R12 1 1
      105 GETTABLEKS                       R13 R7 K19 ["Util"]
      107 GETTABLEKS                       R13 R13 K24 ["Observable"]
      109 GETTABLEKS                       R14 R1 K25 ["Components"]
      111 GETTABLEKS                       R14 R14 K26 ["Contexts"]
      113 GETTABLEKS                       R14 R14 K27 ["ExternalServerContext"]
      115 GETTABLEKS                       R15 R1 K28 ["Guest"]
      117 GETTABLEKS                       R15 R15 K29 ["Environment"]
      119 GETTABLEKS                       R16 R4 K30 ["ContextServices"]
      121 GETTABLEKS                       R16 R16 K31 ["Plugin"]
      123 GETTABLEKS                       R17 R7 K32 ["WebSocketTransport"]
      125 GETTABLEKS                       R17 R17 K32 ["WebSocketTransport"]
      127 GETTABLEKS                       R18 R8 K33 ["createElement"]
      129 DUPCLOSURE                       R19 K34 [PROTO_4]
      130 CAPTURE                          VAL R8
      131 DUPCLOSURE                       R20 K35 [PROTO_7]
      132 CAPTURE                          VAL R19
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R18
      136 CAPTURE                          VAL R14
      137 DUPCLOSURE                       R21 K36 [PROTO_33]
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R16
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R17
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R18
      150 CAPTURE                          VAL R14
      151 DUPCLOSURE                       R22 K37 [PROTO_34]
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R21
      156 RETURN                           R22 1
