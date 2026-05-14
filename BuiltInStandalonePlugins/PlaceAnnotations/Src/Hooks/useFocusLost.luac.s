PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 JUMPIF                           R1 ; [+2]
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["setFocus"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["Listener"]
        8 GETTABLEKS                       R0 R0 K2 ["InputBegan"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 NAMECALL                         R0 R0 K3 ["Connect"]
       15 CALL                             R0 2 1
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["use"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R3 R3 K0 ["use"]
        7 CALL                             R3 1 1
        8 NAMECALL                         R3 R3 K1 ["get"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R6 0 2
       21 MOVE                             R7 R0
       22 MOVE                             R8 R1
       23 SETLIST                          R6 R7 2 [1]
       25 CALL                             R4 2 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Focus"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K13 ["InputListenerContext"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K14 [PROTO_3]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 RETURN                           R5 1
