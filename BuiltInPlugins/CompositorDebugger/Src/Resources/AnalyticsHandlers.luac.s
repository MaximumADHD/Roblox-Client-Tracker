PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 JUMPIF                           R3 ; [+2]
        3 NEWTABLE                         R3 0 0
        5 DUPTABLE                         R4 K4 [{"studioSid", "clientId", "placeId", "userId"}]
        6 GETUPVAL                         R5 1
        7 NAMECALL                         R5 R5 K5 ["GetSessionId"]
        9 CALL                             R5 1 1
       10 SETTABLEKS                       R5 R4 K0 ["studioSid"]
       12 GETUPVAL                         R5 1
       13 NAMECALL                         R5 R5 K6 ["GetClientId"]
       15 CALL                             R5 1 1
       16 SETTABLEKS                       R5 R4 K1 ["clientId"]
       18 GETIMPORT                        R6 K8 [game]
       20 GETTABLEKS                       R5 R6 K9 ["PlaceId"]
       22 SETTABLEKS                       R5 R4 K2 ["placeId"]
       24 GETUPVAL                         R5 2
       25 NAMECALL                         R5 R5 K10 ["GetUserId"]
       27 CALL                             R5 1 1
       28 SETTABLEKS                       R5 R4 K3 ["userId"]
       30 CALL                             R2 2 1
       31 MOVE                             R1 R2
       32 GETUPVAL                         R2 1
       33 LOADK                            R4 K11 ["studio"]
       34 LOADK                            R5 K12 ["compositorDebugger"]
       35 MOVE                             R6 R0
       36 MOVE                             R7 R1
       37 NAMECALL                         R2 R2 K13 ["SendEventDeferred"]
       39 CALL                             R2 5 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 NEWTABLE                         R5 1 0
        4 SETTABLE                         R2 R5 R1
        5 CALL                             R3 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 DUPTABLE                         R5 K2 [{"depth", "layers"}]
        3 SETTABLEKS                       R1 R5 K0 ["depth"]
        5 SETTABLEKS                       R2 R5 K1 ["layers"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 DUPTABLE                         R7 K4 [{"oldTab", "newTab", "reason", "duration"}]
        3 SETTABLEKS                       R1 R7 K0 ["oldTab"]
        5 SETTABLEKS                       R2 R7 K1 ["newTab"]
        7 SETTABLEKS                       R3 R7 K2 ["reason"]
        9 MULK                             R9 R4 K5 [1000]
       10 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       11 GETIMPORT                        R8 K8 [math.floor]
       13 CALL                             R8 1 1
       14 SETTABLEKS                       R8 R7 K3 ["duration"]
       16 CALL                             R5 2 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"timeSinceOpened"}]
        3 MULK                             R6 R1 K2 [1000]
        4 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        5 GETIMPORT                        R5 K5 [math.floor]
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K0 ["timeSinceOpened"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 DUPTABLE                         R2 K5 [{"onChangeSetting", "onCompositorConnected", "onLayerTabChanged", "onPluginClosed", "onScrubbing"}]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R3 R2 K0 ["onChangeSetting"]
        9 NEWCLOSURE                       R3 P2
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["onCompositorConnected"]
       13 NEWCLOSURE                       R3 P3
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R3 R2 K2 ["onLayerTabChanged"]
       17 NEWCLOSURE                       R3 P4
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R3 R2 K3 ["onPluginClosed"]
       21 SETTABLEKS                       R1 R2 K4 ["onScrubbing"]
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["CompositorDebugger"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["join"]
       22 GETIMPORT                        R4 K9 [require]
       24 GETTABLEKS                       R6 R1 K13 ["Src"]
       26 GETTABLEKS                       R5 R6 K14 ["Types"]
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K15 [PROTO_5]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R0
       32 RETURN                           R5 1
