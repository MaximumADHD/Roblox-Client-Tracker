PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["\t\t\t\tEvent Revieved:\n\t\t\t\t\\tNamespace: %s\n\t\t\t\t\\tDetail: %s\n\t\t\t\t\\tDetail Type: %s\n\t\t\t"]
        3 GETTABLEKS                       R4 R0 K3 ["Namespace"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R7 R0 K4 ["Detail"]
        8 NAMECALL                         R5 R5 K5 ["JSONDecode"]
       10 CALL                             R5 2 1
       11 GETTABLEKS                       R6 R0 K6 ["DetailType"]
       13 NAMECALL                         R2 R2 K7 ["format"]
       15 CALL                             R2 4 -1
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RobloxEventReceived"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K2 ["Connect"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Callback for Example"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K3 ["Value is "]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Example"]
        2 LOADN                            R3 0
        3 NAMECALL                         R0 R0 K1 ["SetItem"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 LOADK                            R2 K0 ["Example"]
        8 DUPCLOSURE                       R3 K2 [PROTO_2]
        9 NAMECALL                         R0 R0 K3 ["Bind"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["NotificationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["HttpService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [pcall]
       21 DUPCLOSURE                       R4 K8 [PROTO_1]
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R2
       24 CALL                             R3 1 0
       25 GETIMPORT                        R3 K7 [pcall]
       27 DUPCLOSURE                       R4 K9 [PROTO_3]
       28 CAPTURE                          VAL R1
       29 CALL                             R3 1 0
       30 RETURN                           R0 0
