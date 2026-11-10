PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+3]
        7 GETUPVAL                         R0 2
        8 LOADB                            R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCloseDropdownsOnWidgetHidden"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["isVisible"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R2 R2 K3 ["sessionId"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K4 ["useEffect"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R5 0 2
       27 MOVE                             R6 R1
       28 MOVE                             R7 R0
       29 SETLIST                          R5 R6 2 [1]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K4 ["useEffect"]
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R5 0 2
       40 MOVE                             R6 R2
       41 MOVE                             R7 R0
       42 SETLIST                          R5 R6 2 [1]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["React"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Components"]
       23 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K11 ["SessionIdContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R5 K10 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["WidgetVisibilityContext"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_2]
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 RETURN                           R5 1
