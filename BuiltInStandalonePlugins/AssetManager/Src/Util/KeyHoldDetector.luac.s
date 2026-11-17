PROTO_0:
        0 DUPTABLE                         R0 K7 [{[1] = , ["_heartbeatConnection"] = , ["_latestKeyPress"] = , ["_holdTime"] = 0, ["_sendTime"] = 0}]
        1 GETUPVAL                         R3 0
        2 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K9 [setmetatable]
        7 CALL                             R1 2 0
        8 RETURN                           R0 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["_reset"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["_callback"]
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_onHeartbeat"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["_latestKeyPress"]
        2 LOADK                            R2 K1 [0.5]
        3 SETTABLEKS                       R2 R0 K2 ["_holdTime"]
        5 GETTABLEKS                       R2 R0 K3 ["_heartbeatConnection"]
        7 JUMPIF                           R2 ; [+10]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["Heartbeat"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R2 R2 K5 ["Connect"]
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R0 K3 ["_heartbeatConnection"]
       18 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_latestKeyPress"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+4]
        4 NAMECALL                         R2 R0 K1 ["_reset"]
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_holdTime"]
        2 LOADN                            R3 0
        3 JUMPIFNOTLT                      R3 R2 ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["_holdTime"]
        7 SUB                              R2 R2 R1
        8 SETTABLEKS                       R2 R0 K0 ["_holdTime"]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R2 R0 K1 ["_sendTime"]
       13 SUB                              R2 R2 R1
       14 SETTABLEKS                       R2 R0 K1 ["_sendTime"]
       16 GETTABLEKS                       R2 R0 K1 ["_sendTime"]
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R2 R3 ; [+19]
       21 GETTABLEKS                       R4 R0 K2 ["_callback"]
       23 JUMPIFNOTEQKNIL                  R4 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 FASTCALL1                        ASSERT R3 ; [+2]
       28 GETIMPORT                        R2 K4 [assert]
       30 CALL                             R2 1 0
       31 GETTABLEKS                       R2 R0 K2 ["_callback"]
       33 GETTABLEKS                       R3 R0 K5 ["_latestKeyPress"]
       35 CALL                             R2 1 0
       36 LOADK                            R2 K6 [0.1]
       37 SETTABLEKS                       R2 R0 K1 ["_sendTime"]
       39 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_heartbeatConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_heartbeatConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_heartbeatConnection"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["_latestKeyPress"]
       14 LOADN                            R1 0
       15 SETTABLEKS                       R1 R0 K3 ["_holdTime"]
       17 LOADN                            R1 0
       18 SETTABLEKS                       R1 R0 K4 ["_sendTime"]
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 SETTABLEKS                       R1 R1 K4 ["__index"]
       11 DUPCLOSURE                       R2 K5 [PROTO_0]
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R2 R1 K6 ["new"]
       15 DUPCLOSURE                       R2 K7 [PROTO_1]
       16 SETTABLEKS                       R2 R1 K8 ["destroy"]
       18 DUPCLOSURE                       R2 K9 [PROTO_2]
       19 SETTABLEKS                       R2 R1 K10 ["setCallback"]
       21 DUPCLOSURE                       R2 K11 [PROTO_4]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R1 K12 ["keyPressed"]
       25 DUPCLOSURE                       R2 K13 [PROTO_5]
       26 SETTABLEKS                       R2 R1 K14 ["keyReleased"]
       28 DUPCLOSURE                       R2 K15 [PROTO_6]
       29 SETTABLEKS                       R2 R1 K16 ["_onHeartbeat"]
       31 DUPCLOSURE                       R2 K17 [PROTO_7]
       32 SETTABLEKS                       R2 R1 K18 ["_reset"]
       34 RETURN                           R1 1
