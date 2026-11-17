PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["COLLAB5863Telemetry"]
        3 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+45]
        7 MOVE                             R1 R0
        8 JUMPIF                           R1 ; [+2]
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R0 R1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["Dictionary"]
       15 GETTABLEKS                       R1 R1 K5 ["join"]
       17 DUPTABLE                         R2 K10 [{"studioSid", "clientId", "placeId", "userId"}]
       18 GETUPVAL                         R3 1
       19 NAMECALL                         R3 R3 K11 ["GetSessionId"]
       21 CALL                             R3 1 1
       22 SETTABLEKS                       R3 R2 K6 ["studioSid"]
       24 GETUPVAL                         R3 1
       25 NAMECALL                         R3 R3 K12 ["GetClientId"]
       27 CALL                             R3 1 1
       28 SETTABLEKS                       R3 R2 K7 ["clientId"]
       30 GETIMPORT                        R3 K1 [game]
       32 GETTABLEKS                       R3 R3 K13 ["PlaceId"]
       34 SETTABLEKS                       R3 R2 K8 ["placeId"]
       36 GETUPVAL                         R3 2
       37 NAMECALL                         R3 R3 K14 ["GetUserId"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R3 R2 K9 ["userId"]
       42 MOVE                             R3 R0
       43 CALL                             R1 2 1
       44 GETUPVAL                         R2 1
       45 LOADK                            R4 K15 ["studio"]
       46 LOADK                            R5 K16 ["SocialPresence"]
       47 LOADK                            R6 K17 ["StudioSocialPresenceAction"]
       48 MOVE                             R7 R1
       49 NAMECALL                         R2 R2 K18 ["SendEventDeferred"]
       51 CALL                             R2 5 0
       52 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K1 [{"actionName"}]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R4 K2 ["panelEnabled"]
        4 JUMP                             ; [+1]
        5 LOADK                            R4 K3 ["panelDisabled"]
        6 SETTABLEKS                       R4 R3 K0 ["actionName"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K1 [{"actionName"}]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R4 K2 ["highlightsEnabled"]
        4 JUMP                             ; [+1]
        5 LOADK                            R4 K3 ["highlightsDisabled"]
        6 SETTABLEKS                       R4 R3 K0 ["actionName"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"actionName"}]
        2 SETTABLEKS                       R0 R2 K0 ["actionName"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"actionName"}]
        2 SETTABLEKS                       R0 R2 K0 ["actionName"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 DUPTABLE                         R2 K4 [{"panelToggled", "highlightsToggled", "jumpToCollaboratorPressed", "manageCollaboratorsPressed"}]
        5 NEWCLOSURE                       R3 P1
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R3 R2 K0 ["panelToggled"]
        9 NEWCLOSURE                       R3 P2
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["highlightsToggled"]
       13 NEWCLOSURE                       R3 P3
       14 CAPTURE                          VAL R1
       15 SETTABLEKS                       R3 R2 K2 ["jumpToCollaboratorPressed"]
       17 NEWCLOSURE                       R3 P4
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R3 R2 K3 ["manageCollaboratorsPressed"]
       21 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K8 [game]
       18 LOADK                            R4 K9 ["StudioService"]
       19 NAMECALL                         R2 R2 K10 ["GetService"]
       21 CALL                             R2 2 1
       22 DUPCLOSURE                       R3 K11 [PROTO_5]
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
