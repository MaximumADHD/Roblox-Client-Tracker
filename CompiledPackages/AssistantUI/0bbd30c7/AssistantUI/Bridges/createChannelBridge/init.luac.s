PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADNIL                          R2
        3 NAMECALL                         R3 R1 K1 ["IsGuest"]
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R3 ; [+14]
        7 GETIMPORT                        R3 K3 [require]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["Components"]
       12 GETTABLEKS                       R4 R4 K5 ["Contexts"]
       14 GETTABLEKS                       R4 R4 K6 ["Actions"]
       16 GETTABLEKS                       R4 R4 K7 ["ChannelActionsContext"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R2 R3 K8 ["guestBridgeImplementation"]
       21 LOADNIL                          R3
       22 NAMECALL                         R4 R1 K9 ["IsHost"]
       24 CALL                             R4 1 1
       25 JUMPIFNOT                        R4 ; [+10]
       26 GETIMPORT                        R4 K3 [require]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K6 ["Actions"]
       31 GETTABLEKS                       R5 R5 K10 ["ChannelActions"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R3 R4 K11 ["bridge"]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K12 ["prepareBridges"]
       39 MOVE                             R5 R0
       40 MOVE                             R6 R2
       41 MOVE                             R7 R3
       42 CALL                             R4 3 -1
       43 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 GETTABLEKS                       R2 R2 K7 ["BridgeMetaTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Generated"]
       18 GETTABLEKS                       R3 R3 K6 ["Bridges"]
       20 GETTABLEKS                       R3 R3 K9 ["ChannelBridge"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
