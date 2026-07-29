PROTO_0:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["clearInputDisabled"]
        4 CALL                             R2 0 0
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETTABLEKS                       R2 R1 K1 ["focus"]
        8 JUMPIFNOT                        R2 ; [+14]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K2 ["FocusInput"]
       12 NAMECALL                         R2 R2 K3 ["Fire"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["markInputDisabled"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K5 ["Generation"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Events"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["InputStateContext"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["InputDisabledReasons"]
       23 DUPCLOSURE                       R4 K11 [PROTO_1]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 RETURN                           R4 1
