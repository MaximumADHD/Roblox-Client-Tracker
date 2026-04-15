PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["PreferredInput"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PreferredInput"]
        2 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R0 R0 K2 ["Connect"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["PreferredInput"]
       15 CALL                             R1 1 0
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["PreferredInput"]
        6 CALL                             R0 1 2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useEffect"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 0
       15 CALL                             R2 2 0
       16 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R4 K6 [require]
       16 GETTABLEKS                       R7 R0 K8 ["Utility"]
       18 GETTABLEKS                       R6 R7 K9 ["Wrappers"]
       20 GETTABLEKS                       R5 R6 K10 ["Services"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R3 R4 K11 ["UserInputService"]
       25 DUPCLOSURE                       R4 K12 [PROTO_3]
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R3
       28 RETURN                           R4 1
