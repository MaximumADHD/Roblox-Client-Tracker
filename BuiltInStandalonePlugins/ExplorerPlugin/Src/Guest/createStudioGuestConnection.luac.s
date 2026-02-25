PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["fromGuest"]
        5 GETTABLEKS                       R2 R3 K1 ["message"]
        7 GETUPVAL                         R3 2
        8 GETVARARGS                       R4 -1
        9 NAMECALL                         R0 R0 K2 ["Invoke"]
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Starting connection"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["get"]
        6 CALL                             R2 0 1
        7 JUMPIFEQKNIL                     R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 FASTCALL2K                       ASSERT R1 K2 ; [+4]
       13 LOADK                            R2 K2 ["Connecting to host when there is already an active connection"]
       14 GETIMPORT                        R0 K4 [assert]
       16 CALL                             R0 2 0
       17 NEWCLOSURE                       R0 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 DUPTABLE                         R1 K9 [{"identifier", "disconnectSignal", "messageReceivedSignal", "sendMessage"}]
       22 GETUPVAL                         R2 5
       23 SETTABLEKS                       R2 R1 K5 ["identifier"]
       25 GETUPVAL                         R4 6
       26 GETTABLEKS                       R3 R4 K10 ["Signal"]
       28 GETTABLEKS                       R2 R3 K11 ["new"]
       30 CALL                             R2 0 1
       31 SETTABLEKS                       R2 R1 K6 ["disconnectSignal"]
       33 GETUPVAL                         R4 6
       34 GETTABLEKS                       R3 R4 K10 ["Signal"]
       36 GETTABLEKS                       R2 R3 K11 ["new"]
       38 CALL                             R2 0 1
       39 SETTABLEKS                       R2 R1 K7 ["messageReceivedSignal"]
       41 SETTABLEKS                       R0 R1 K8 ["sendMessage"]
       43 GETUPVAL                         R2 7
       44 MOVE                             R3 R1
       45 CALL                             R2 1 0
       46 GETUPVAL                         R2 2
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R5 R6 K12 ["fromGuest"]
       50 GETTABLEKS                       R4 R5 K13 ["connect"]
       52 GETUPVAL                         R5 5
       53 GETUPVAL                         R6 4
       54 NAMECALL                         R2 R2 K14 ["Invoke"]
       56 CALL                             R2 4 0
       57 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R2 0
        2 JUMPIFEQ                         R2 R0 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["get"]
        8 CALL                             R2 0 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+6]
       11 GETUPVAL                         R3 2
       12 LOADK                            R4 K1 ["Received message directed for %s, but no active connection"]
       13 MOVE                             R5 R1
       14 CALL                             R3 2 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R2 K2 ["messageReceivedSignal"]
       18 MOVE                             R5 R1
       19 GETVARARGS                       R6 -1
       20 NAMECALL                         R3 R3 K3 ["Fire"]
       22 CALL                             R3 -1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+5]
        6 GETUPVAL                         R1 1
        7 LOADK                            R2 K1 ["Disconnecting, but no active connection"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0
       10 JUMPIFNOTEQKNIL                  R0 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       16 LOADK                            R3 K2 ["Luau"]
       17 GETIMPORT                        R1 K4 [assert]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 1
       21 LOADK                            R2 K5 ["Disconnecting"]
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 2
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R4 R5 K6 ["fromGuest"]
       27 GETTABLEKS                       R3 R4 K7 ["disconnect"]
       29 GETUPVAL                         R4 4
       30 NAMECALL                         R1 R1 K8 ["Invoke"]
       32 CALL                             R1 3 0
       33 GETTABLEKS                       R1 R0 K9 ["disconnectSignal"]
       35 NAMECALL                         R1 R1 K10 ["Fire"]
       37 CALL                             R1 1 0
       38 GETUPVAL                         R1 5
       39 LOADNIL                          R2
       40 CALL                             R1 1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+5]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K0 ["Disconnect"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["HostDataModelType"]
        2 GETTABLEKS                       R1 R2 K1 ["Name"]
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K2 ["GenerateGUID"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["Observable"]
       11 GETTABLEKS                       R3 R4 K4 ["create"]
       13 LOADNIL                          R4
       14 CALL                             R3 1 2
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R4
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U2
       28 NEWCLOSURE                       R7 P2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 LOADNIL                          R8
       36 GETUPVAL                         R13 3
       37 GETTABLEKS                       R12 R13 K5 ["fromHost"]
       39 GETTABLEKS                       R11 R12 K6 ["message"]
       41 MOVE                             R12 R6
       42 NAMECALL                         R9 R0 K7 ["OnInvokeSuspendOverride"]
       44 CALL                             R9 3 1
       45 GETUPVAL                         R10 4
       46 GETUPVAL                         R14 3
       47 GETTABLEKS                       R13 R14 K5 ["fromHost"]
       49 GETTABLEKS                       R12 R13 K8 ["itemStarted"]
       51 NAMECALL                         R10 R10 K9 ["HasItem"]
       53 CALL                             R10 2 1
       54 JUMPIFNOT                        R10 ; [+3]
       55 MOVE                             R10 R5
       56 CALL                             R10 0 0
       57 JUMP                             ; [+10]
       58 GETUPVAL                         R14 3
       59 GETTABLEKS                       R13 R14 K5 ["fromHost"]
       61 GETTABLEKS                       R12 R13 K10 ["starting"]
       63 MOVE                             R13 R5
       64 NAMECALL                         R10 R0 K7 ["OnInvokeSuspendOverride"]
       66 CALL                             R10 3 1
       67 MOVE                             R8 R10
       68 NEWCLOSURE                       R10 P3
       69 CAPTURE                          REF R8
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R7
       72 MOVE                             R11 R3
       73 MOVE                             R12 R10
       74 CLOSEUPVALS                      R8
       75 RETURN                           R11 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["ExplorerPlugin"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["Explorer"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R7 R2 K13 ["Src"]
       30 GETTABLEKS                       R6 R7 K14 ["Util"]
       32 GETTABLEKS                       R5 R6 K15 ["StudioProtocolConstants"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R3 K14 ["Util"]
       37 GETTABLEKS                       R5 R6 K16 ["createDebugLogger"]
       39 LOADK                            R6 K17 ["createStudioGuestConnection"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K18 [PROTO_5]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 RETURN                           R6 1
