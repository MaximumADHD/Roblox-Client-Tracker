PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 SETTABLE                         R3 R2 R1
        3 DUPTABLE                         R2 K1 [{"Disconnect"}]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R1
        7 SETTABLEKS                       R3 R2 K0 ["Disconnect"]
        9 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R7 R5
        5 MOVE                             R8 R1
        6 CALL                             R7 1 0
        7 FORGLOOP                         R2 2 ; [-4]
        9 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__OTTER_MOCK_ANIMATION_STEP_SIGNAL__"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R2 0
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K3 ["Connect"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["RenderStepped"]
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K3 ["Connect"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__OTTER_MOCK_ANIMATION_STEP_SIGNAL__"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETUPVAL                         R2 0
        6 ORK                              R4 R1 K3 [0.0166666666666667]
        7 NAMECALL                         R2 R2 K4 ["Fire"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0
       11 GETIMPORT                        R2 K6 [error]
       13 LOADK                            R3 K7 ["Cannot manually fire real animation step signal"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 0 0
        9 DUPTABLE                         R2 K6 [{"Connect", "Fire"}]
       10 DUPCLOSURE                       R3 K7 [PROTO_1]
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R3 R2 K4 ["Connect"]
       14 DUPCLOSURE                       R3 K8 [PROTO_2]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R3 R2 K5 ["Fire"]
       18 DUPTABLE                         R3 K6 [{"Connect", "Fire"}]
       19 DUPCLOSURE                       R4 K9 [PROTO_3]
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R4 R3 K4 ["Connect"]
       24 DUPCLOSURE                       R4 K10 [PROTO_4]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R4 R3 K5 ["Fire"]
       28 RETURN                           R3 1
