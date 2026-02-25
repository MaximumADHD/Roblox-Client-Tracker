PROTO_0:
        0 LOADK                            R1 K0 ["Sending \"%*\""]
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 MOVE                             R0 R1
        6 GETUPVAL                         R2 1
        7 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        8 GETIMPORT                        R1 K3 [unpack]
       10 CALL                             R1 1 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 GETUPVAL                         R2 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K0 ["Invoke"]
       14 MOVE                             R3 R2
       15 GETUPVAL                         R4 1
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K1 ["fromGuest"]
       19 GETTABLEKS                       R5 R6 K2 ["message"]
       21 GETUPVAL                         R6 3
       22 MOVE                             R7 R0
       23 GETVARARGS                       R8 -1
       24 CALL                             R3 -1 0
       25 RETURN                           R0 0

PROTO_2:
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
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 DUPTABLE                         R1 K9 [{"identifier", "disconnectSignal", "messageReceivedSignal", "sendMessage"}]
       23 GETUPVAL                         R2 4
       24 SETTABLEKS                       R2 R1 K5 ["identifier"]
       26 GETUPVAL                         R4 5
       27 GETTABLEKS                       R3 R4 K10 ["Signal"]
       29 GETTABLEKS                       R2 R3 K11 ["new"]
       31 CALL                             R2 0 1
       32 SETTABLEKS                       R2 R1 K6 ["disconnectSignal"]
       34 GETUPVAL                         R4 5
       35 GETTABLEKS                       R3 R4 K10 ["Signal"]
       37 GETTABLEKS                       R2 R3 K11 ["new"]
       39 CALL                             R2 0 1
       40 SETTABLEKS                       R2 R1 K7 ["messageReceivedSignal"]
       42 SETTABLEKS                       R0 R1 K8 ["sendMessage"]
       44 GETUPVAL                         R2 6
       45 MOVE                             R3 R1
       46 CALL                             R2 1 0
       47 GETUPVAL                         R2 2
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R5 R6 K12 ["fromGuest"]
       51 GETTABLEKS                       R4 R5 K13 ["connect"]
       53 GETUPVAL                         R5 4
       54 NAMECALL                         R2 R2 K14 ["Invoke"]
       56 CALL                             R2 3 0
       57 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 CALL                             R0 0 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["HostDataModelType"]
        2 GETTABLEKS                       R1 R2 K1 ["Name"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["Observable"]
        7 GETTABLEKS                       R2 R3 K3 ["create"]
        9 LOADNIL                          R3
       10 CALL                             R2 1 2
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R3
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 CAPTURE                          UPVAL U1
       23 NEWCLOSURE                       R6 P2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 GETUPVAL                         R11 2
       31 GETTABLEKS                       R10 R11 K4 ["fromHost"]
       33 GETTABLEKS                       R9 R10 K5 ["starting"]
       35 MOVE                             R10 R4
       36 NAMECALL                         R7 R0 K6 ["OnInvoke"]
       38 CALL                             R7 3 1
       39 GETUPVAL                         R12 2
       40 GETTABLEKS                       R11 R12 K4 ["fromHost"]
       42 GETTABLEKS                       R10 R11 K7 ["message"]
       44 MOVE                             R11 R5
       45 NAMECALL                         R8 R0 K6 ["OnInvoke"]
       47 CALL                             R8 3 1
       48 GETUPVAL                         R9 3
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R12 R13 K4 ["fromHost"]
       52 GETTABLEKS                       R11 R12 K8 ["itemStarted"]
       54 NAMECALL                         R9 R9 K9 ["HasItem"]
       56 CALL                             R9 2 1
       57 JUMPIFNOT                        R9 ; [+2]
       58 MOVE                             R9 R4
       59 CALL                             R9 0 0
       60 NEWCLOSURE                       R9 P3
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R6
       64 MOVE                             R10 R2
       65 MOVE                             R11 R9
       66 RETURN                           R10 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MemStorageService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["PropertiesPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Properties"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R1 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Util"]
       26 GETTABLEKS                       R4 R5 K14 ["StudioProtocolConstants"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R5 R2 K13 ["Util"]
       31 GETTABLEKS                       R4 R5 K15 ["createDebugLogger"]
       33 LOADK                            R5 K16 ["createStudioGuestConnection"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K17 [PROTO_6]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R0
       40 RETURN                           R5 1
