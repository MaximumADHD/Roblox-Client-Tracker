PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["handlers"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 LOADNIL                          R1
        6 JUMPIFNOT                        R0 ; [+18]
        7 GETIMPORT                        R2 K2 [pcall]
        9 MOVE                             R3 R0
       10 GETUPVAL                         R4 2
       11 CALL                             R2 2 2
       12 JUMPIFNOT                        R2 ; [+2]
       13 MOVE                             R4 R3
       14 JUMPIF                           R4 ; [+8]
       15 DUPTABLE                         R4 K4 [{"error"}]
       16 FASTCALL1                        TOSTRING R3 ; [+3]
       17 MOVE                             R6 R3
       18 GETIMPORT                        R5 K6 [tostring]
       20 CALL                             R5 1 1
       21 SETTABLEKS                       R5 R4 K3 ["error"]
       23 MOVE                             R1 R4
       24 JUMP                             ; [+11]
       25 DUPTABLE                         R2 K4 [{"error"}]
       26 LOADK                            R4 K7 ["Unknown method: "]
       27 GETUPVAL                         R6 1
       28 FASTCALL1                        TOSTRING R6 ; [+2]
       29 GETIMPORT                        R5 K6 [tostring]
       31 CALL                             R5 1 1
       32 CONCAT                           R3 R4 R5
       33 SETTABLEKS                       R3 R2 K3 ["error"]
       35 MOVE                             R1 R2
       36 GETUPVAL                         R2 3
       37 LOADK                            R4 K8 ["DeliverResponse"]
       38 GETUPVAL                         R5 4
       39 MOVE                             R6 R1
       40 NAMECALL                         R2 R2 K9 ["Invoke"]
       42 CALL                             R2 4 0
       43 GETTABLEKS                       R2 R1 K3 ["error"]
       45 JUMPIFNOT                        R2 ; [+5]
       46 GETIMPORT                        R2 K11 [warn]
       48 GETTABLEKS                       R3 R1 K3 ["error"]
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K2 [task.spawn]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["plugin"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["handlers"]
       14 LOADK                            R4 K4 ["PluginBridgeRequest"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R2 R0 K5 ["OnInvoke"]
       20 CALL                             R2 3 1
       21 SETTABLEKS                       R2 R1 K6 ["connection"]
       23 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TYPE R2 ; [+3]
        1 MOVE                             R6 R2
        2 GETIMPORT                        R5 K1 [type]
        4 CALL                             R5 1 1
        5 JUMPIFEQKS                       R5 K2 ["function"] ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       11 LOADK                            R5 K3 ["Expected a function"]
       12 GETIMPORT                        R3 K5 [assert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R3 R0 K6 ["handlers"]
       17 SETTABLE                         R2 R3 R1
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_2]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_3]
       10 SETTABLEKS                       R1 R0 K4 ["Disconnect"]
       12 DUPCLOSURE                       R1 K5 [PROTO_4]
       13 SETTABLEKS                       R1 R0 K6 ["Bind"]
       15 RETURN                           R0 1
