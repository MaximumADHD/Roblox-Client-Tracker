PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.Keyboard]
        4 JUMPIFNOTEQ                      R1 R2 ; [+13]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+10]
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETUPVAL                         R1 1
       11 NEWTABLE                         R2 0 1
       13 GETTABLEKS                       R3 R0 K4 ["KeyCode"]
       15 SETLIST                          R2 R3 1 [1]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputBegan"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["InputChanged"]
        7 JUMPIFNOT                        R0 ; [+16]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["InputEnded"]
       11 JUMPIFNOT                        R0 ; [+12]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["InputEnded"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 NAMECALL                         R1 R1 K3 ["Connect"]
       21 CALL                             R1 2 1
       22 SETTABLEKS                       R1 R0 K4 ["current"]
       24 NEWCLOSURE                       R0 P1
       25 CAPTURE                          UPVAL U1
       26 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useContext"]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["useContext"]
       13 GETUPVAL                         R4 2
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K2 ["isUpdatingMappingForKey"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K1 ["useContext"]
       20 GETUPVAL                         R6 3
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R5 R5 K3 ["setMapping"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R5
       32 NEWTABLE                         R8 0 3
       34 MOVE                             R9 R2
       35 MOVE                             R10 R4
       36 MOVE                             R11 R5
       37 SETLIST                          R8 R9 3 [1]
       39 CALL                             R6 2 0
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K5 ["createElement"]
       43 LOADK                            R7 K6 ["Frame"]
       44 NEWTABLE                         R8 1 0
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K7 ["Tag"]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R11 R11 K7 ["Tag"]
       52 GETTABLE                         R10 R0 R11
       53 SETTABLE                         R10 R8 R9
       54 GETTABLEKS                       R9 R0 K8 ["children"]
       56 CALL                             R6 3 -1
       57 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["RootContainerInputContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["MappingsContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["MappingsActionsContext"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K13 [PROTO_3]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 RETURN                           R5 1
