PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["clearInputDisabled"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K1 ["markInputDisabled"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K2 ["Generation"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["InputStateContext"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["InputDisabledReasons"]
       18 DUPCLOSURE                       R3 K10 [PROTO_1]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
