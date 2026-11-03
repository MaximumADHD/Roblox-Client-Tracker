PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 3
        9 CALL                             R0 0 0
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 4
       12 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 0
        4 JUMPIFEQKNIL                     R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K0 ; [+4]
       10 LOADK                            R3 K0 ["There is an already active connection to the host"]
       11 GETIMPORT                        R1 K2 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["createNetworkedGuestToHostRPCInterface"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 2
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K4 ["createInstanceGuestRPCInterface"]
       22 MOVE                             R4 R1
       23 CALL                             R3 1 2
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K5 ["addNetworkLayerToGuestRPCInterface"]
       27 MOVE                             R6 R0
       28 MOVE                             R7 R3
       29 CALL                             R5 2 1
       30 GETTABLEKS                       R6 R0 K6 ["disconnectSignal"]
       32 NEWCLOSURE                       R8 P0
       33 CAPTURE                          UPVAL U0
       34 NAMECALL                         R6 R6 K7 ["Connect"]
       36 CALL                             R6 2 1
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          UPVAL U0
       43 SETUPVAL                         R7 0
       44 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Starting guest"]
        2 CALL                             R1 1 0
        3 LOADNIL                          R1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 GETTABLEKS                       R3 R0 K1 ["guestConnectionObservable"]
       10 GETTABLEKS                       R3 R3 K2 ["get"]
       12 CALL                             R3 0 1
       13 JUMPIFEQKNIL                     R3 ; [+4]
       15 MOVE                             R4 R2
       16 MOVE                             R5 R3
       17 CALL                             R4 1 0
       18 GETTABLEKS                       R4 R0 K1 ["guestConnectionObservable"]
       20 GETTABLEKS                       R4 R4 K3 ["changedSignal"]
       22 MOVE                             R6 R2
       23 NAMECALL                         R4 R4 K4 ["Connect"]
       25 CALL                             R4 2 1
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          REF R1
       30 CLOSEUPVALS                      R1
       31 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Networking"]
       11 GETTABLEKS                       R2 R2 K7 ["NetworkedRPCInterfaces"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Networking"]
       18 GETTABLEKS                       R3 R3 K8 ["NetworkingTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["createDebugLogger"]
       32 CALL                             R4 1 1
       33 MOVE                             R5 R4
       34 LOADK                            R6 K12 ["startGuest"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K13 [PROTO_4]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 RETURN                           R6 1
