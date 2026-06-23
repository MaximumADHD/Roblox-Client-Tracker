PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

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
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["useState"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R5 0 1
       20 MOVE                             R6 R0
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R6 0 1
       32 MOVE                             R7 R2
       33 SETLIST                          R6 R7 1 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       39 NEWCLOSURE                       R6 P2
       40 CAPTURE                          VAL R2
       41 NEWTABLE                         R7 0 1
       43 MOVE                             R8 R2
       44 SETLIST                          R7 R8 1 [1]
       46 CALL                             R5 2 1
       47 MOVE                             R6 R3
       48 MOVE                             R7 R1
       49 MOVE                             R8 R4
       50 MOVE                             R9 R5
       51 RETURN                           R6 4

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
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Contexts"]
       30 GETTABLEKS                       R4 R4 K11 ["Localization"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Src"]
       36 GETTABLEKS                       R6 R6 K13 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Util"]
       45 GETTABLEKS                       R7 R7 K15 ["Menus"]
       47 GETTABLEKS                       R7 R7 K16 ["getCreateBindingMenu"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R0 K12 ["Src"]
       54 GETTABLEKS                       R8 R8 K14 ["Util"]
       56 GETTABLEKS                       R8 R8 K17 ["Constants"]
       58 GETTABLEKS                       R8 R8 K18 ["MenuIdentifiers"]
       60 CALL                             R7 1 1
       61 DUPCLOSURE                       R8 K19 [PROTO_3]
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 RETURN                           R8 1
