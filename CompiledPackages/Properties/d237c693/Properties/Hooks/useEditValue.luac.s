PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useEventCallback"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["ReactUtils"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["RpcTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Util"]
       25 GETTABLEKS                       R5 R5 K11 ["EditingOperation"]
       27 GETTABLEKS                       R5 R5 K12 ["createEditValue"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K13 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R4
       33 RETURN                           R5 1
