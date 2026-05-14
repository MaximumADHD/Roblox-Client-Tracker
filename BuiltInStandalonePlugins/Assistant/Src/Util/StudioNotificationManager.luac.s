PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["new"]
        9 CALL                             R1 0 1
       10 GETUPVAL                         R2 0
       11 SETTABLE                         R1 R2 R0
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 SUBK                             R1 R1 K0 [1]
        5 LOADN                            R2 0
        6 JUMPIFNOTLE                      R1 R2 ; [+8]
        8 GETUPVAL                         R2 0
        9 LOADNIL                          R3
       10 SETTABLE                         R3 R2 R0
       11 GETUPVAL                         R2 1
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R2 R0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 0
       16 SETTABLE                         R1 R2 R0
       17 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_isConnected"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_isConnected"]
        7 GETTABLEKS                       R1 R0 K1 ["_connection"]
        9 NAMECALL                         R1 R1 K2 ["Disconnect"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 JUMPIF                           R1 ; [+22]
       14 GETUPVAL                         R1 1
       15 LOADNIL                          R2
       16 SETTABLE                         R2 R1 R0
       17 GETTABLEKS                       R1 R0 K3 ["_namespace"]
       19 GETUPVAL                         R3 2
       20 GETTABLE                         R2 R3 R1
       21 JUMPIF                           R2 ; [+1]
       22 RETURN                           R0 0
       23 SUBK                             R2 R2 K4 [1]
       24 LOADN                            R3 0
       25 JUMPIFNOTLE                      R2 R3 ; [+8]
       27 GETUPVAL                         R3 2
       28 LOADNIL                          R4
       29 SETTABLE                         R4 R3 R1
       30 GETUPVAL                         R3 3
       31 LOADNIL                          R4
       32 SETTABLE                         R4 R3 R1
       33 RETURN                           R0 0
       34 GETUPVAL                         R3 2
       35 SETTABLE                         R2 R3 R1
       36 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 NOT                              R3 R4
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["Cannot listen for notifications on a destroyed manager."]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R6 1
       10 GETTABLE                         R5 R6 R0
       11 ORK                              R4 R5 K4 [0]
       12 ADDK                             R3 R4 K3 [1]
       13 SETTABLE                         R3 R2 R0
       14 GETUPVAL                         R4 2
       15 GETTABLE                         R3 R4 R0
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETUPVAL                         R3 2
       18 GETTABLE                         R2 R3 R0
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K5 ["new"]
       23 CALL                             R3 0 1
       24 GETUPVAL                         R4 2
       25 SETTABLE                         R3 R4 R0
       26 MOVE                             R2 R3
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R2 K6 ["Connect"]
       30 CALL                             R2 2 1
       31 DUPTABLE                         R3 K11 [{"_namespace", "_isConnected", "_connection", "Disconnect"}]
       32 SETTABLEKS                       R0 R3 K7 ["_namespace"]
       34 LOADB                            R4 1
       35 SETTABLEKS                       R4 R3 K8 ["_isConnected"]
       37 SETTABLEKS                       R2 R3 K9 ["_connection"]
       39 GETUPVAL                         R4 4
       40 SETTABLEKS                       R4 R3 K10 ["Disconnect"]
       42 GETUPVAL                         R4 5
       43 LOADB                            R5 1
       44 SETTABLE                         R5 R4 R3
       45 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["namespace"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R1 K1 ["Fire"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K3 [Enum.ConnectionState.Connected]
        2 JUMPIFEQ                         R1 R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 SETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K4 ["Fire"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K0 ["Disconnect"]
       10 CALL                             R0 1 0
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 1
       13 GETUPVAL                         R0 2
       14 JUMPIFNOT                        R0 ; [+6]
       15 GETUPVAL                         R0 2
       16 NAMECALL                         R0 R0 K0 ["Disconnect"]
       18 CALL                             R0 1 0
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 2
       21 GETUPVAL                         R0 3
       22 LOADNIL                          R1
       23 LOADNIL                          R2
       24 FORGPREP                         R0
       25 NAMECALL                         R5 R3 K0 ["Disconnect"]
       27 CALL                             R5 1 0
       28 FORGLOOP                         R0 1 ; [-4]
       30 GETIMPORT                        R0 K3 [table.clear]
       32 GETUPVAL                         R1 3
       33 CALL                             R0 1 0
       34 GETIMPORT                        R0 K3 [table.clear]
       36 GETUPVAL                         R1 4
       37 CALL                             R0 1 0
       38 GETIMPORT                        R0 K3 [table.clear]
       40 GETUPVAL                         R1 5
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["NotificationManager should only be created when FFlagAssistantNotificationManager is enabled."]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 NEWTABLE                         R1 0 0
       10 NEWTABLE                         R2 0 0
       12 NEWTABLE                         R3 0 0
       14 LOADB                            R4 0
       15 GETUPVAL                         R6 1
       16 JUMPIFNOT                        R6 ; [+3]
       17 GETTABLEKS                       R5 R0 K3 ["IsConnected"]
       19 JUMP                             ; [+1]
       20 LOADB                            R5 1
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K4 ["new"]
       24 CALL                             R6 0 1
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U2
       28 NEWCLOSURE                       R8 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 NEWCLOSURE                       R9 P2
       32 CAPTURE                          REF R4
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R2
       36 NEWCLOSURE                       R10 P3
       37 CAPTURE                          REF R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R9
       42 CAPTURE                          VAL R1
       43 NEWCLOSURE                       R11 P4
       44 CAPTURE                          REF R5
       45 LOADNIL                          R12
       46 GETTABLEKS                       R13 R0 K5 ["RobloxEventReceived"]
       48 NEWCLOSURE                       R15 P5
       49 CAPTURE                          VAL R2
       50 NAMECALL                         R13 R13 K6 ["Connect"]
       52 CALL                             R13 2 1
       53 MOVE                             R12 R13
       54 LOADNIL                          R13
       55 GETTABLEKS                       R14 R0 K7 ["RobloxConnectionChanged"]
       57 NEWCLOSURE                       R16 P6
       58 CAPTURE                          REF R5
       59 CAPTURE                          VAL R6
       60 NAMECALL                         R14 R14 K6 ["Connect"]
       62 CALL                             R14 2 1
       63 MOVE                             R13 R14
       64 NEWCLOSURE                       R14 P7
       65 CAPTURE                          REF R4
       66 CAPTURE                          REF R12
       67 CAPTURE                          REF R13
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R2
       71 DUPTABLE                         R15 K12 [{"listen", "getIsConnected", "isConnectedChanged", "destroy"}]
       72 SETTABLEKS                       R10 R15 K8 ["listen"]
       74 SETTABLEKS                       R11 R15 K9 ["getIsConnected"]
       76 SETTABLEKS                       R6 R15 K10 ["isConnectedChanged"]
       78 SETTABLEKS                       R14 R15 K11 ["destroy"]
       80 CLOSEUPVALS                      R4
       81 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["NotificationManagerStore"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Signal"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["FFlagAssistantNotificationManager"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K14 [game]
       34 LOADK                            R6 K15 ["NotificationServiceIsConnectedAvailable"]
       35 NAMECALL                         R4 R4 K16 ["GetEngineFeature"]
       37 CALL                             R4 2 1
       38 DUPCLOSURE                       R5 K17 [PROTO_8]
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R2
       42 DUPTABLE                         R6 K19 [{"create"}]
       43 SETTABLEKS                       R5 R6 K18 ["create"]
       45 RETURN                           R6 1
