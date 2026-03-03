PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["hostRpcInterface"]
        3 GETTABLEKS                       R0 R1 K1 ["instancePickerActivated"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["hostRpcInterface"]
        3 GETTABLEKS                       R0 R1 K1 ["instancePickerDeactivated"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["submitPickedInstance"]
        3 MOVE                             R2 R0
        4 JUMPIFNOT                        R2 ; [+4]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["instanceIdsToInstance"]
        8 GETTABLE                         R2 R3 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["activatedSignal"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R2 R2 K1 ["Connect"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R3 R1 K2 ["deactivatedSignal"]
        9 NEWCLOSURE                       R5 P1
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R3 R3 K1 ["Connect"]
       13 CALL                             R3 2 1
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R0
       17 NEWCLOSURE                       R5 P3
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 DUPTABLE                         R6 K5 [{"instancePickerSubmitInstance", "destroy"}]
       21 SETTABLEKS                       R4 R6 K3 ["instancePickerSubmitInstance"]
       23 SETTABLEKS                       R5 R6 K4 ["destroy"]
       25 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Guest"]
       11 GETTABLEKS                       R3 R4 K7 ["InstanceGuestRPCInterface"]
       13 GETTABLEKS                       R2 R3 K8 ["InstanceGuestRPCInterfaceTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["RpcTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["Signal"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K12 [PROTO_4]
       29 RETURN                           R4 1
