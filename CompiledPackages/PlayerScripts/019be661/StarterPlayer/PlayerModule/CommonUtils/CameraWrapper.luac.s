PROTO_0:
        0 DUPTABLE                         R1 K5 [{[1], ["_callbacks"], ["_connectionUtil"], ["_enabled"] = False}]
        1 GETIMPORT                        R2 K7 [game]
        3 GETTABLEKS                       R2 R2 K8 ["Workspace"]
        5 GETTABLEKS                       R2 R2 K9 ["CurrentCamera"]
        7 SETTABLEKS                       R2 R1 K0 ["_camera"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K1 ["_callbacks"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K10 ["new"]
       16 CALL                             R2 0 1
       17 SETTABLEKS                       R2 R1 K2 ["_connectionUtil"]
       19 GETUPVAL                         R2 1
       20 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       22 GETIMPORT                        R0 K12 [setmetatable]
       24 CALL                             R0 2 1
       25 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        6 SETTABLEKS                       R1 R0 K4 ["_camera"]
        8 GETTABLEKS                       R1 R0 K4 ["_camera"]
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R1 R0 K5 ["_callbacks"]
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 GETTABLEKS                       R6 R0 K6 ["_connectionUtil"]
       19 MOVE                             R8 R4
       20 GETTABLEKS                       R9 R0 K4 ["_camera"]
       22 MOVE                             R11 R4
       23 NAMECALL                         R9 R9 K7 ["GetPropertyChangedSignal"]
       25 CALL                             R9 2 1
       26 MOVE                             R11 R5
       27 NAMECALL                         R9 R9 K8 ["Connect"]
       29 CALL                             R9 2 -1
       30 NAMECALL                         R6 R6 K9 ["trackConnection"]
       32 CALL                             R6 -1 0
       33 MOVE                             R6 R5
       34 CALL                             R6 0 0
       35 FORGLOOP                         R1 2 ; [-19]
       37 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_connectCallbacks"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_enabled"]
        7 GETIMPORT                        R1 K2 [game]
        9 GETTABLEKS                       R1 R1 K3 ["Workspace"]
       11 LOADK                            R3 K4 ["CurrentCamera"]
       12 NAMECALL                         R1 R1 K5 ["GetPropertyChangedSignal"]
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 NAMECALL                         R1 R1 K6 ["Connect"]
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K7 ["_cameraChangedConnection"]
       22 NAMECALL                         R1 R0 K8 ["_connectCallbacks"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_enabled"]
        7 GETTABLEKS                       R1 R0 K1 ["_cameraChangedConnection"]
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETTABLEKS                       R1 R0 K1 ["_cameraChangedConnection"]
       12 NAMECALL                         R1 R1 K2 ["Disconnect"]
       14 CALL                             R1 1 0
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K1 ["_cameraChangedConnection"]
       18 GETTABLEKS                       R1 R0 K3 ["_connectionUtil"]
       20 NAMECALL                         R1 R1 K4 ["disconnectAll"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_callbacks"]
        2 SETTABLE                         R2 R3 R1
        3 GETTABLEKS                       R3 R0 K1 ["_camera"]
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R0 K2 ["_connectionUtil"]
        9 MOVE                             R5 R1
       10 GETTABLEKS                       R6 R0 K1 ["_camera"]
       12 MOVE                             R8 R1
       13 NAMECALL                         R6 R6 K3 ["GetPropertyChangedSignal"]
       15 CALL                             R6 2 1
       16 MOVE                             R8 R2
       17 NAMECALL                         R6 R6 K4 ["Connect"]
       19 CALL                             R6 2 -1
       20 NAMECALL                         R3 R3 K5 ["trackConnection"]
       22 CALL                             R3 -1 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_connectionUtil"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["disconnect"]
        5 CALL                             R2 2 0
        6 GETTABLEKS                       R2 R0 K2 ["_callbacks"]
        8 LOADNIL                          R3
        9 SETTABLE                         R3 R2 R1
       10 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_camera"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ConnectionUtil"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R2 R1 K8 ["new"]
       19 DUPCLOSURE                       R2 K9 [PROTO_1]
       20 SETTABLEKS                       R2 R1 K10 ["_connectCallbacks"]
       22 DUPCLOSURE                       R2 K11 [PROTO_3]
       23 SETTABLEKS                       R2 R1 K12 ["Enable"]
       25 DUPCLOSURE                       R2 K13 [PROTO_4]
       26 SETTABLEKS                       R2 R1 K14 ["Disable"]
       28 DUPCLOSURE                       R2 K15 [PROTO_5]
       29 SETTABLEKS                       R2 R1 K16 ["Connect"]
       31 DUPCLOSURE                       R2 K17 [PROTO_6]
       32 SETTABLEKS                       R2 R1 K18 ["Disconnect"]
       34 DUPCLOSURE                       R2 K19 [PROTO_7]
       35 SETTABLEKS                       R2 R1 K20 ["getCamera"]
       37 RETURN                           R1 1
