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
        1 GETTABLEKS                       R0 R0 K0 ["clearCache"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 DUPCLOSURE                       R0 K1 [PROTO_8]
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R0 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
        3 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getMCPProxyTokenAsync"]
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeatureAssistantMCPProxyTokenEnabled"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R0
        5 RETURN                           R0 1
        6 GETIMPORT                        R0 K2 [pcall]
        8 DUPCLOSURE                       R1 K3 [PROTO_13]
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

PROTO_16:
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
       19 RETURN                           R0 0

PROTO_17:
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
       17 GETUPVAL                         R1 4
       18 GETTABLEKS                       R1 R1 K7 ["startExternalServer"]
       20 MOVE                             R2 R0
       21 GETUPVAL                         R3 5
       22 CALL                             R1 2 1
       23 GETTABLEKS                       R2 R1 K8 ["promise"]
       25 NAMECALL                         R2 R2 K9 ["await"]
       27 CALL                             R2 1 2
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U3
       33 JUMPIF                           R2 ; [+27]
       34 GETIMPORT                        R5 K11 [warn]
       36 LOADK                            R6 K12 ["Failed to start external server: %*"]
       37 MOVE                             R8 R3
       38 NAMECALL                         R6 R6 K13 ["format"]
       40 CALL                             R6 2 1
       41 CALL                             R5 1 0
       42 GETTABLEKS                       R5 R1 K14 ["destructor"]
       44 CALL                             R5 0 0
       45 NAMECALL                         R5 R0 K15 ["close"]
       47 CALL                             R5 1 0
       48 GETUPVAL                         R5 6
       49 GETTABLEKS                       R5 R5 K6 ["current"]
       51 LOADNIL                          R7
       52 NAMECALL                         R5 R5 K16 ["set"]
       54 CALL                             R5 2 0
       55 GETUPVAL                         R5 3
       56 LOADNIL                          R6
       57 SETTABLEKS                       R6 R5 K6 ["current"]
       59 LOADNIL                          R5
       60 RETURN                           R5 1
       61 GETUPVAL                         R5 6
       62 GETTABLEKS                       R5 R5 K6 ["current"]
       64 GETTABLEKS                       R7 R1 K17 ["server"]
       66 NAMECALL                         R5 R5 K16 ["set"]
       68 CALL                             R5 2 0
       69 DUPTABLE                         R5 K21 [{"disconnect", "connectionCountObservable", "activeConnectionsObservable"}]
       70 SETTABLEKS                       R4 R5 K18 ["disconnect"]
       72 GETTABLEKS                       R6 R1 K19 ["connectionCountObservable"]
       74 SETTABLEKS                       R6 R5 K19 ["connectionCountObservable"]
       76 GETTABLEKS                       R6 R1 K20 ["activeConnectionsObservable"]
       78 SETTABLEKS                       R6 R5 K20 ["activeConnectionsObservable"]
       80 RETURN                           R5 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["new"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 -1
       10 CALL                             R2 -1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K0 ["useRef"]
       14 LOADNIL                          R4
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K0 ["useRef"]
       19 MOVE                             R5 R1
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U3
       28 NEWTABLE                         R7 0 1
       30 MOVE                             R8 R1
       31 SETLIST                          R7 R8 1 [1]
       33 CALL                             R5 2 0
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R4
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       39 NEWCLOSURE                       R7 P2
       40 CAPTURE                          VAL R3
       41 NEWTABLE                         R8 0 0
       43 CALL                             R6 2 1
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K0 ["useRef"]
       47 LOADNIL                          R8
       48 CALL                             R7 1 1
       49 DUPCLOSURE                       R8 K4 [PROTO_12]
       50 CAPTURE                          UPVAL U4
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K3 ["useCallback"]
       54 NEWCLOSURE                       R10 P4
       55 CAPTURE                          UPVAL U4
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R7
       58 NEWTABLE                         R11 0 0
       60 CALL                             R9 2 1
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R10 R10 K3 ["useCallback"]
       64 NEWCLOSURE                       R11 P5
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U7
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R2
       72 NEWTABLE                         R12 0 1
       74 MOVE                             R13 R9
       75 SETLIST                          R12 R13 1 [1]
       77 CALL                             R10 2 1
       78 GETIMPORT                        R12 K8 [Enum.StudioDataModelType.None]
       80 JUMPIFNOTEQ                      R1 R12 ; [+2]
       82 LOADB                            R11 0 +1
       83 LOADB                            R11 1
       84 GETUPVAL                         R12 1
       85 GETTABLEKS                       R12 R12 K2 ["useEffect"]
       87 NEWCLOSURE                       R13 P6
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          VAL R3
       94 NEWTABLE                         R14 0 2
       96 MOVE                             R15 R11
       97 MOVE                             R16 R6
       98 SETLIST                          R14 R15 2 [1]
      100 CALL                             R12 2 0
      101 GETUPVAL                         R12 8
      102 GETUPVAL                         R13 9
      103 GETTABLEKS                       R13 R13 K9 ["Provider"]
      105 DUPTABLE                         R14 K11 [{"onConnect"}]
      106 SETTABLEKS                       R10 R14 K10 ["onConnect"]
      108 GETTABLEKS                       R15 R0 K12 ["children"]
      110 CALL                             R12 3 -1
      111 RETURN                           R12 -1

PROTO_27:
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
       34 GETTABLEKS                       R5 R5 K12 ["ModelContextProtocol"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K6 ["Packages"]
       48 GETTABLEKS                       R7 R7 K14 ["Signal"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Util"]
       57 GETTABLEKS                       R8 R8 K16 ["StudioIdentification"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K8 ["Src"]
       64 GETTABLEKS                       R9 R9 K9 ["Host"]
       66 GETTABLEKS                       R9 R9 K17 ["startMcpHost"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K8 ["Src"]
       73 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       75 GETTABLEKS                       R10 R10 K19 ["useFocusedDataModelType"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R4 K15 ["Util"]
       80 GETTABLEKS                       R10 R10 K20 ["Observable"]
       82 GETTABLEKS                       R11 R1 K21 ["Components"]
       84 GETTABLEKS                       R11 R11 K22 ["Contexts"]
       86 GETTABLEKS                       R11 R11 K23 ["ExternalServerContext"]
       88 GETTABLEKS                       R12 R1 K24 ["Guest"]
       90 GETTABLEKS                       R12 R12 K25 ["Environment"]
       92 GETTABLEKS                       R13 R4 K26 ["WebSocketTransport"]
       94 GETTABLEKS                       R13 R13 K26 ["WebSocketTransport"]
       96 GETTABLEKS                       R14 R5 K27 ["createElement"]
       98 DUPCLOSURE                       R15 K28 [PROTO_4]
       99 CAPTURE                          VAL R5
      100 DUPCLOSURE                       R16 K29 [PROTO_7]
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R11
      106 DUPCLOSURE                       R17 K30 [PROTO_26]
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R11
      117 DUPCLOSURE                       R18 K31 [PROTO_27]
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R17
      122 RETURN                           R18 1
