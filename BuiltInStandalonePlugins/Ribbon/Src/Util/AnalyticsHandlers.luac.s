PROTO_0:
        0 DUPTABLE                         R1 K5 [{"actionName", "studioSid", "clientId", "placeId", "userId"}]
        1 SETTABLEKS                       R0 R1 K0 ["actionName"]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K6 ["GetSessionId"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["studioSid"]
        9 GETUPVAL                         R2 0
       10 NAMECALL                         R2 R2 K7 ["GetClientId"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K2 ["clientId"]
       15 GETIMPORT                        R2 K9 [game]
       17 GETTABLEKS                       R2 R2 K10 ["PlaceId"]
       19 SETTABLEKS                       R2 R1 K3 ["placeId"]
       21 GETUPVAL                         R2 1
       22 NAMECALL                         R2 R2 K11 ["GetUserId"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K4 ["userId"]
       27 GETUPVAL                         R2 0
       28 LOADK                            R4 K12 ["studio"]
       29 LOADK                            R5 K13 ["SocialPresence"]
       30 LOADK                            R6 K14 ["StudioSocialPresenceAction"]
       31 MOVE                             R7 R1
       32 NAMECALL                         R2 R2 K15 ["SendEventDeferred"]
       34 CALL                             R2 5 0
       35 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"manageCollaboratorsPressed"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["manageCollaboratorsPressed"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
