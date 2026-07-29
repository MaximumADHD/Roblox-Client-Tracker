PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["openInsertObjectMenuAsync called when the guest does not support opening it"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 LOADK                            R5 K0 ["opening insert object menu"]
        4 CALL                             R2 3 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       11 LOADK                            R5 K1 ["openInsertObjectMenuAsync called on unknown instance"]
       12 GETIMPORT                        R3 K3 [assert]
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R2
       17 MOVE                             R5 R1
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 DUPCLOSURE                       R2 K0 [PROTO_0]
        3 RETURN                           R2 1
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["InstanceGuestRPCInterface"]
       13 GETTABLEKS                       R2 R2 K8 ["InstanceGuestRPCInterfaceTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["RpcTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Guest"]
       25 GETTABLEKS                       R4 R4 K7 ["InstanceGuestRPCInterface"]
       27 GETTABLEKS                       R4 R4 K10 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["getInstanceById"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_2]
       33 CAPTURE                          VAL R3
       34 RETURN                           R4 1
