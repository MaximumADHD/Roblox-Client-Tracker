PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["theme"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["current"]
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOTEQKNIL                  R2 ; [+7]
        9 NEWTABLE                         R2 0 0
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K1 ["current"]
       14 SETTABLE                         R2 R3 R1
       15 GETTABLE                         R3 R2 R0
       16 JUMPIFEQKNIL                     R3 ; [+2]
       18 RETURN                           R3 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K2 ["getClassIcon"]
       22 MOVE                             R5 R0
       23 CALL                             R4 1 1
       24 SETTABLE                         R4 R2 R0
       25 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["FaceControls"]
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["useCallback"]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 1
       22 GETTABLEKS                       R6 R1 K4 ["theme"]
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 DUPTABLE                         R4 K7 [{"getClassIcon", "getMultipleIcon"}]
       28 SETTABLEKS                       R3 R4 K5 ["getClassIcon"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R5 R4 K6 ["getMultipleIcon"]
       34 GETUPVAL                         R5 2
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R6 R6 K8 ["Provider"]
       38 DUPTABLE                         R7 K10 [{"value"}]
       39 SETTABLEKS                       R4 R7 K9 ["value"]
       41 GETTABLEKS                       R8 R0 K11 ["children"]
       43 CALL                             R5 3 -1
       44 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["ThemeContext"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["createUnimplemented"]
       32 GETTABLEKS                       R5 R1 K13 ["createElement"]
       34 DUPTABLE                         R6 K16 [{"getClassIcon", "getMultipleIcon"}]
       35 MOVE                             R7 R4
       36 LOADK                            R8 K14 ["getClassIcon"]
       37 CALL                             R7 1 1
       38 SETTABLEKS                       R7 R6 K14 ["getClassIcon"]
       40 MOVE                             R7 R4
       41 LOADK                            R8 K15 ["getMultipleIcon"]
       42 CALL                             R7 1 1
       43 SETTABLEKS                       R7 R6 K15 ["getMultipleIcon"]
       45 GETTABLEKS                       R7 R1 K17 ["createContext"]
       47 MOVE                             R8 R6
       48 CALL                             R7 1 1
       49 LOADK                            R8 K18 ["ClassIconContext"]
       50 SETTABLEKS                       R8 R7 K19 ["displayName"]
       52 DUPCLOSURE                       R8 K20 [PROTO_2]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R7
       57 DUPTABLE                         R9 K23 [{"Context", "Provider"}]
       58 SETTABLEKS                       R7 R9 K21 ["Context"]
       60 SETTABLEKS                       R8 R9 K22 ["Provider"]
       62 RETURN                           R9 1
