PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["guestRpcInterface"]
        3 GETTABLEKS                       R1 R1 K1 ["instancePickerSubmitInstance"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 LOADB                            R2 0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["create"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R2
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          VAL R2
        9 NEWCLOSURE                       R5 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 DUPTABLE                         R6 K5 [{"instancePickerActivated", "instancePickerDeactivated", "instancePickerActiveObservable", "instancePickerSubmitInstance"}]
       13 SETTABLEKS                       R3 R6 K1 ["instancePickerActivated"]
       15 SETTABLEKS                       R4 R6 K2 ["instancePickerDeactivated"]
       17 SETTABLEKS                       R1 R6 K3 ["instancePickerActiveObservable"]
       19 SETTABLEKS                       R5 R6 K4 ["instancePickerSubmitInstance"]
       21 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Networking"]
       23 GETTABLEKS                       R4 R4 K10 ["createSession"]
       25 GETTABLEKS                       R4 R4 K11 ["createSessionTypes"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K12 [PROTO_3]
       29 CAPTURE                          VAL R1
       30 RETURN                           R4 1
