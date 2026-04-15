PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["sizeChangedSignal"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 NAMECALL                         R0 R0 K1 ["Connect"]
        7 CALL                             R0 2 1
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["X"]
        3 SUBK                             R1 R0 K1 [200]
        4 IDIVK                            R2 R1 K2 [150]
        5 FASTCALL2K                       MATH_MIN R2 K3 ; [+5]
        7 MOVE                             R4 R2
        8 LOADK                            R5 K3 [4]
        9 GETIMPORT                        R3 K6 [math.min]
       11 CALL                             R3 2 1
       12 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 FASTCALL2K                       ASSERT R0 K2 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K2 ["PluginConfiguration context is required in order to use useColumnSizes"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K5 ["useState"]
       17 GETTABLEKS                       R2 R0 K6 ["size"]
       19 CALL                             R1 1 2
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K7 ["useEffect"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R0 K8 ["sizeChangedSignal"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K9 ["useMemo"]
       36 NEWCLOSURE                       R4 P1
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R5 0 1
       40 MOVE                             R6 R1
       41 SETLIST                          R5 R6 1 [1]
       43 CALL                             R3 2 1
       44 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["PluginConfiguration"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_4]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
