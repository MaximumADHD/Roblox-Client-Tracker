PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Stopped listening to %*"]
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R5 R1
        6 GETIMPORT                        R4 K2 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFEQKS                       R4 K3 ["string"] ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       15 LOADK                            R4 K4 ["Instance ID is not a string"]
       16 GETIMPORT                        R2 K6 [assert]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

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
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["createDebugLogger"]
       27 CALL                             R3 1 1
       28 MOVE                             R4 R3
       29 LOADK                            R5 K12 ["stopListening"]
       30 CALL                             R4 1 1
       31 DUPCLOSURE                       R5 K13 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 RETURN                           R5 1
