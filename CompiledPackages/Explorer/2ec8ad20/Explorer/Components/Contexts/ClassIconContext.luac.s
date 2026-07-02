PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["theme"]
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+10]
        9 NEWTABLE                         R1 0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["current"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K1 ["theme"]
       17 SETTABLE                         R1 R2 R3
       18 GETTABLE                         R2 R1 R0
       19 JUMPIFEQKNIL                     R2 ; [+2]
       21 RETURN                           R2 1
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K2 ["getClassIcon"]
       25 MOVE                             R4 R0
       26 CALL                             R3 1 1
       27 SETTABLE                         R3 R1 R0
       28 RETURN                           R3 1

PROTO_1:
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
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R5 0 1
       22 GETTABLEKS                       R6 R1 K4 ["theme"]
       24 SETLIST                          R5 R6 1 [1]
       26 CALL                             R3 2 1
       27 DUPTABLE                         R4 K8 [{["getClassIcon"], ["default"] = False}]
       28 SETTABLEKS                       R3 R4 K5 ["getClassIcon"]
       30 GETUPVAL                         R5 2
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K9 ["Provider"]
       34 DUPTABLE                         R7 K11 [{"value"}]
       35 SETTABLEKS                       R4 R7 K10 ["value"]
       37 GETTABLEKS                       R8 R0 K12 ["children"]
       39 CALL                             R5 3 -1
       40 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 LOADK                            R3 K1 ["Instance"]
        4 JUMP                             ; [+1]
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["GetClassIcon"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"getClassIcon"}]
        3 DUPCLOSURE                       R4 K2 [PROTO_2]
        4 CAPTURE                          UPVAL U2
        5 SETTABLEKS                       R4 R3 K0 ["getClassIcon"]
        7 GETTABLEKS                       R4 R0 K3 ["children"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Explorer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Components"]
       24 GETTABLEKS                       R4 R4 K13 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K14 ["ThemeContext"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K15 ["Util"]
       33 GETTABLEKS                       R5 R5 K16 ["createUnimplemented"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R2 K17 ["createElement"]
       38 DUPTABLE                         R6 K21 [{["getClassIcon"], ["default"] = True}]
       39 MOVE                             R7 R4
       40 LOADK                            R8 K18 ["getClassIcon"]
       41 CALL                             R7 1 1
       42 SETTABLEKS                       R7 R6 K18 ["getClassIcon"]
       44 GETTABLEKS                       R7 R2 K22 ["createContext"]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 1
       48 DUPCLOSURE                       R8 K23 [PROTO_1]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R7
       53 DUPCLOSURE                       R9 K24 [PROTO_3]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R0
       57 DUPTABLE                         R10 K28 [{"Context", "Provider", "StandardProvider"}]
       58 SETTABLEKS                       R7 R10 K25 ["Context"]
       60 SETTABLEKS                       R8 R10 K26 ["Provider"]
       62 SETTABLEKS                       R9 R10 K27 ["StandardProvider"]
       64 RETURN                           R10 1
