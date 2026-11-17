PROTO_0:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["threadId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R0 ; [+16]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["clearInputDisabled"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETTABLEKS                       R3 R1 K2 ["focus"]
       14 JUMPIFNOT                        R3 ; [+15]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["FocusInput"]
       18 NAMECALL                         R3 R3 K4 ["Fire"]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K5 ["markInputDisabled"]
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K6 ["Generation"]
       28 MOVE                             R5 R2
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K11 ["InputDisabledReasons"]
       28 DUPCLOSURE                       R5 K12 [PROTO_1]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
