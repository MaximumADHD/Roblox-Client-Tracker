PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ShareDialogModel"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["OnSetItem"]
        5 CALL                             R0 3 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 0
        8 LOADK                            R4 K0 ["ShareDialogModel"]
        9 NAMECALL                         R2 R2 K2 ["GetItem"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U1
       16 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ShareAccess"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ShareDialogDismissed"]
        2 NAMECALL                         R0 R0 K1 ["Invoke"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["use"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R0 R0 K1 ["get"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["useState"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R5 0 2
       20 MOVE                             R6 R0
       21 MOVE                             R7 R2
       22 SETLIST                          R5 R6 2 [1]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R5 0 1
       32 MOVE                             R6 R0
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       39 NEWCLOSURE                       R5 P2
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R6 0 1
       43 MOVE                             R7 R0
       44 SETLIST                          R6 R7 1 [1]
       46 CALL                             R4 2 1
       47 MOVE                             R5 R1
       48 MOVE                             R6 R3
       49 MOVE                             R7 R4
       50 RETURN                           R5 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetAccess"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Plugin"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Types"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K13 [PROTO_4]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 RETURN                           R5 1
