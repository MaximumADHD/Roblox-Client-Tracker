PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearCache"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 DUPCLOSURE                       R0 K1 [PROTO_0]
        5 CAPTURE                          UPVAL U2
        6 RETURN                           R0 1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K3 [{["url"] = "ws://localhost:13469/studio"}]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 1
        6 SETTABLEKS                       R0 R1 K4 ["current"]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K5 ["startExternalServer"]
       11 MOVE                             R2 R0
       12 GETUPVAL                         R3 3
       13 CALL                             R1 2 1
       14 GETTABLEKS                       R2 R1 K6 ["promise"]
       16 NAMECALL                         R2 R2 K7 ["await"]
       18 CALL                             R2 1 2
       19 NEWCLOSURE                       R4 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U1
       24 JUMPIF                           R2 ; [+28]
       25 GETIMPORT                        R5 K9 [warn]
       27 LOADK                            R7 K10 ["Failed to start external server: %*"]
       28 MOVE                             R9 R3
       29 NAMECALL                         R7 R7 K11 ["format"]
       31 CALL                             R7 2 1
       32 MOVE                             R6 R7
       33 CALL                             R5 1 0
       34 GETTABLEKS                       R5 R1 K12 ["destructor"]
       36 CALL                             R5 0 0
       37 NAMECALL                         R5 R0 K13 ["close"]
       39 CALL                             R5 1 0
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R5 R5 K4 ["current"]
       43 LOADNIL                          R7
       44 NAMECALL                         R5 R5 K14 ["set"]
       46 CALL                             R5 2 0
       47 GETUPVAL                         R5 1
       48 LOADNIL                          R6
       49 SETTABLEKS                       R6 R5 K4 ["current"]
       51 LOADNIL                          R5
       52 RETURN                           R5 1
       53 GETUPVAL                         R5 4
       54 GETTABLEKS                       R5 R5 K4 ["current"]
       56 GETTABLEKS                       R7 R1 K15 ["server"]
       58 NAMECALL                         R5 R5 K14 ["set"]
       60 CALL                             R5 2 0
       61 DUPTABLE                         R5 K19 [{"disconnect", "connectionCountObservable", "activeConnectionsObservable"}]
       62 SETTABLEKS                       R4 R5 K16 ["disconnect"]
       64 GETTABLEKS                       R6 R1 K17 ["connectionCountObservable"]
       66 SETTABLEKS                       R6 R5 K17 ["connectionCountObservable"]
       68 GETTABLEKS                       R6 R1 K18 ["activeConnectionsObservable"]
       70 SETTABLEKS                       R6 R5 K18 ["activeConnectionsObservable"]
       72 RETURN                           R5 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETIMPORT                        R0 K1 [pcall]
        4 GETIMPORT                        R1 K4 [task.cancel]
        6 GETUPVAL                         R2 0
        7 CALL                             R0 2 0
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["getNameAsync"]
        4 CALL                             R1 0 1
        5 JUMPIFEQ                         R1 R0 ; [+20]
        7 GETUPVAL                         R2 1
        8 DUPTABLE                         R4 K5 [{["_meta"], ["data"], ["level"] = "info"}]
        9 DUPTABLE                         R5 K7 [{"studio_name"}]
       10 SETTABLEKS                       R1 R5 K6 ["studio_name"]
       12 SETTABLEKS                       R5 R4 K1 ["_meta"]
       14 LOADK                            R6 K8 ["Server started for %*"]
       15 MOVE                             R8 R1
       16 NAMECALL                         R6 R6 K9 ["format"]
       18 CALL                             R6 2 1
       19 MOVE                             R5 R6
       20 SETTABLEKS                       R5 R4 K2 ["data"]
       22 NAMECALL                         R2 R2 K10 ["sendLoggingMessage"]
       24 CALL                             R2 2 0
       25 MOVE                             R0 R1
       26 GETIMPORT                        R2 K13 [task.wait]
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K14 ["FIntAssistantStudioNameCheckInterval"]
       31 CALL                             R2 1 0
       32 JUMPBACK                         ; [-32]
       33 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CALL                             R1 1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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
       45 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       47 NEWCLOSURE                       R8 P3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R9 0 0
       55 CALL                             R7 2 1
       56 GETIMPORT                        R9 K7 [Enum.StudioDataModelType.None]
       58 JUMPIFNOTEQ                      R1 R9 ; [+2]
       60 LOADB                            R8 0 +1
       61 LOADB                            R8 1
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K2 ["useEffect"]
       65 NEWCLOSURE                       R10 P4
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          VAL R3
       72 NEWTABLE                         R11 0 2
       74 MOVE                             R12 R8
       75 MOVE                             R13 R6
       76 SETLIST                          R11 R12 2 [1]
       78 CALL                             R9 2 0
       79 GETUPVAL                         R9 7
       80 GETUPVAL                         R10 8
       81 GETTABLEKS                       R10 R10 K8 ["Provider"]
       83 DUPTABLE                         R11 K10 [{"onConnect"}]
       84 SETTABLEKS                       R7 R11 K9 ["onConnect"]
       86 GETTABLEKS                       R12 R0 K11 ["children"]
       88 CALL                             R9 3 -1
       89 RETURN                           R9 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K12 ["Signal"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Util"]
       48 GETTABLEKS                       R7 R7 K14 ["StudioIdentification"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Host"]
       57 GETTABLEKS                       R8 R8 K16 ["startMcpHost"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K8 ["Src"]
       64 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       66 GETTABLEKS                       R9 R9 K18 ["useFocusedDataModelType"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R9 R3 K13 ["Util"]
       71 GETTABLEKS                       R9 R9 K19 ["Observable"]
       73 GETTABLEKS                       R10 R1 K20 ["Components"]
       75 GETTABLEKS                       R10 R10 K21 ["Contexts"]
       77 GETTABLEKS                       R10 R10 K22 ["ExternalServerContext"]
       79 GETTABLEKS                       R11 R3 K23 ["WebSocketTransport"]
       81 GETTABLEKS                       R11 R11 K23 ["WebSocketTransport"]
       83 GETTABLEKS                       R12 R4 K24 ["createElement"]
       85 DUPCLOSURE                       R13 K25 [PROTO_14]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R10
       95 RETURN                           R13 1
