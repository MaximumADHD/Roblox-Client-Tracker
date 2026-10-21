PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createGuestRpcInterface"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["Disconnected with no destroyNetworkedInterface"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Destroying and disconnecting"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K1 ["Disconnect"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 3
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["Disconnected with no destroyNetworkedInterface"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Destroying and disconnecting"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K1 ["Disconnect"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 4
       12 CALL                             R0 0 0
       13 LOADNIL                          R0
       14 SETUPVAL                         R0 5
       15 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 0
        4 JUMPIFEQKNIL                     R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K0 ; [+4]
       10 LOADK                            R3 K0 ["There is an already active connection"]
       11 GETIMPORT                        R1 K2 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 1
       15 CALL                             R1 0 1
       16 JUMPIFNOT                        R1 ; [+21]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K3 ["addCommunicationLayer"]
       20 MOVE                             R2 R0
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          UPVAL U3
       23 CALL                             R1 2 1
       24 GETTABLEKS                       R2 R0 K4 ["disconnectSignal"]
       26 NEWCLOSURE                       R4 P1
       27 CAPTURE                          UPVAL U0
       28 NAMECALL                         R2 R2 K5 ["Connect"]
       30 CALL                             R2 2 1
       31 NEWCLOSURE                       R3 P2
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U0
       36 SETUPVAL                         R3 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R1 5
       39 GETTABLEKS                       R1 R1 K6 ["createNetworkedGuestToHostRPCInterface"]
       41 MOVE                             R2 R0
       42 CALL                             R1 1 2
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R3 R3 K7 ["createGuestRpcInterface"]
       46 MOVE                             R4 R1
       47 CALL                             R3 1 2
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K8 ["addNetworkLayerToGuestRPCInterface"]
       51 MOVE                             R6 R0
       52 MOVE                             R7 R3
       53 CALL                             R5 2 1
       54 GETTABLEKS                       R6 R0 K4 ["disconnectSignal"]
       56 NEWCLOSURE                       R8 P3
       57 CAPTURE                          UPVAL U0
       58 NAMECALL                         R6 R6 K5 ["Connect"]
       60 CALL                             R6 2 1
       61 NEWCLOSURE                       R7 P4
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          UPVAL U0
       68 SETUPVAL                         R7 0
       69 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Destroying guest"]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K1 ["Disconnect"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 JUMPIFEQKNIL                     R0 ; [+3]
       10 GETUPVAL                         R0 2
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Starting guest"]
        2 CALL                             R1 1 0
        3 LOADNIL                          R1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U3
       11 GETTABLEKS                       R3 R0 K1 ["guestConnectionObservable"]
       13 GETTABLEKS                       R3 R3 K2 ["get"]
       15 CALL                             R3 0 1
       16 JUMPIFEQKNIL                     R3 ; [+4]
       18 MOVE                             R4 R2
       19 MOVE                             R5 R3
       20 CALL                             R4 1 0
       21 GETTABLEKS                       R4 R0 K1 ["guestConnectionObservable"]
       23 GETTABLEKS                       R4 R4 K3 ["changedSignal"]
       25 MOVE                             R6 R2
       26 NAMECALL                         R4 R4 K4 ["Connect"]
       28 CALL                             R4 2 1
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          REF R1
       33 CLOSEUPVALS                      R1
       34 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R2 K7 ["DEPRECATED_NetworkedRPCInterfaces"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Networking"]
       18 GETTABLEKS                       R3 R3 K8 ["NetworkedRPCInterfaces"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Networking"]
       25 GETTABLEKS                       R4 R4 K9 ["NetworkingTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["RpcTypes"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Util"]
       37 GETTABLEKS                       R6 R6 K12 ["createDebugLogger"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Flags"]
       44 GETTABLEKS                       R7 R7 K14 ["getFFlagExplorerSynchronizeAllMessages"]
       46 CALL                             R6 1 1
       47 MOVE                             R7 R5
       48 LOADK                            R8 K15 ["startGuest"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K16 [PROTO_7]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R1
       55 RETURN                           R8 1
