PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CREATE_BINDING_KEYCODE"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+5]
        5 GETUPVAL                         R1 1
        6 LOADK                            R2 K1 ["Keycode"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["CREATE_BINDING_COMPOSITE"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+4]
       14 GETUPVAL                         R1 1
       15 LOADK                            R2 K3 ["Composite"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R6 0 2
       21 MOVE                             R7 R1
       22 MOVE                             R8 R0
       23 SETLIST                          R6 R7 2 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K4 ["useEventCallback"]
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R3
       32 CALL                             R5 1 1
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K4 ["useEventCallback"]
       36 NEWCLOSURE                       R7 P2
       37 CAPTURE                          VAL R3
       38 CALL                             R6 1 1
       39 GETUPVAL                         R7 3
       40 GETTABLEKS                       R7 R7 K4 ["useEventCallback"]
       42 NEWCLOSURE                       R8 P3
       43 CAPTURE                          VAL R3
       44 CALL                             R7 1 1
       45 MOVE                             R8 R4
       46 MOVE                             R9 R2
       47 MOVE                             R10 R5
       48 MOVE                             R11 R6
       49 MOVE                             R12 R7
       50 RETURN                           R8 5

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Types"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Src"]
       50 GETTABLEKS                       R8 R8 K15 ["Util"]
       52 GETTABLEKS                       R8 R8 K16 ["Menus"]
       54 GETTABLEKS                       R8 R8 K17 ["getCreateBindingMenu"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K13 ["Src"]
       61 GETTABLEKS                       R9 R9 K15 ["Util"]
       63 GETTABLEKS                       R9 R9 K18 ["Constants"]
       65 GETTABLEKS                       R9 R9 K19 ["MenuIdentifiers"]
       67 CALL                             R8 1 1
       68 DUPCLOSURE                       R9 K20 [PROTO_4]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R8
       74 RETURN                           R9 1
