PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["instancePickerActiveChanged"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["instancePickerActiveChanged"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["pickInstanceAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["getIdByInstance"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["activated"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R3 R3 K1 ["Connect"]
        6 CALL                             R3 2 1
        7 GETTABLEKS                       R4 R1 K2 ["deactivated"]
        9 NEWCLOSURE                       R6 P1
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R4 R4 K1 ["Connect"]
       13 CALL                             R4 2 1
       14 NEWCLOSURE                       R5 P2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 NEWCLOSURE                       R6 P3
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 DUPTABLE                         R7 K6 [{"pickInstanceAsync", "deactivateInstancePickerAsync", "destroy"}]
       21 SETTABLEKS                       R5 R7 K3 ["pickInstanceAsync"]
       23 GETTABLEKS                       R8 R1 K4 ["deactivateInstancePickerAsync"]
       25 SETTABLEKS                       R8 R7 K4 ["deactivateInstancePickerAsync"]
       27 SETTABLEKS                       R6 R7 K5 ["destroy"]
       29 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyEditorTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["RpcTypes"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K8 [PROTO_4]
       18 RETURN                           R3 1
