PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CreateNewParty"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["DeleteParty"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["SetPlayerPartyId"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetIsEmulationEnabled"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OnTestPlayerCountChanged"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 8 0
        2 LOADK                            R4 K0 ["CreateNewParty"]
        3 DUPCLOSURE                       R5 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R0 K2 ["OnInvoke"]
        7 CALL                             R2 3 1
        8 SETTABLEKS                       R2 R1 K0 ["CreateNewParty"]
       10 LOADK                            R4 K3 ["DeleteParty"]
       11 DUPCLOSURE                       R5 K4 [PROTO_1]
       12 CAPTURE                          UPVAL U0
       13 NAMECALL                         R2 R0 K2 ["OnInvoke"]
       15 CALL                             R2 3 1
       16 SETTABLEKS                       R2 R1 K3 ["DeleteParty"]
       18 LOADK                            R4 K5 ["SetPlayerPartyId"]
       19 DUPCLOSURE                       R5 K6 [PROTO_2]
       20 CAPTURE                          UPVAL U0
       21 NAMECALL                         R2 R0 K2 ["OnInvoke"]
       23 CALL                             R2 3 1
       24 SETTABLEKS                       R2 R1 K5 ["SetPlayerPartyId"]
       26 LOADK                            R4 K7 ["SetIsEmulationEnabled"]
       27 DUPCLOSURE                       R5 K8 [PROTO_3]
       28 CAPTURE                          UPVAL U0
       29 NAMECALL                         R2 R0 K2 ["OnInvoke"]
       31 CALL                             R2 3 1
       32 SETTABLEKS                       R2 R1 K7 ["SetIsEmulationEnabled"]
       34 LOADK                            R4 K9 ["OnTestPlayerCountChanged"]
       35 DUPCLOSURE                       R5 K10 [PROTO_4]
       36 CAPTURE                          UPVAL U0
       37 NAMECALL                         R2 R0 K2 ["OnInvoke"]
       39 CALL                             R2 3 1
       40 SETTABLEKS                       R2 R1 K9 ["OnTestPlayerCountChanged"]
       42 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PartyEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 1 0
        9 DUPCLOSURE                       R2 K4 [PROTO_5]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K5 ["setupAssetDMInvokes"]
       13 RETURN                           R1 1
