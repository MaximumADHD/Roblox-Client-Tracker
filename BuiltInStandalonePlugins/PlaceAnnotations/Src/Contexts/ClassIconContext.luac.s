PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOTEQKNIL                  R1 ; [+8]
        7 NEWTABLE                         R1 0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 GETUPVAL                         R3 1
       13 SETTABLE                         R1 R2 R3
       14 GETTABLE                         R2 R1 R0
       15 JUMPIFEQKNIL                     R2 ; [+2]
       17 RETURN                           R2 1
       18 GETUPVAL                         R3 2
       19 JUMPIFNOTEQKS                    R0 K1 [""] ; [+3]
       21 LOADK                            R5 K2 ["Instance"]
       22 JUMP                             ; [+1]
       23 MOVE                             R5 R0
       24 NAMECALL                         R3 R3 K3 ["GetClassIcon"]
       26 CALL                             R3 2 1
       27 SETTABLE                         R3 R1 R0
       28 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["useCallback"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U2
       15 NEWTABLE                         R5 0 1
       17 MOVE                             R6 R1
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K2 ["createElement"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K3 ["Provider"]
       27 DUPTABLE                         R6 K5 [{"value"}]
       28 DUPTABLE                         R7 K7 [{"getClassIcon"}]
       29 SETTABLEKS                       R3 R7 K6 ["getClassIcon"]
       31 SETTABLEKS                       R7 R6 K4 ["value"]
       33 GETTABLEKS                       R7 R0 K8 ["children"]
       35 CALL                             R4 3 -1
       36 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["PlaceAnnotations"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Hooks"]
       26 GETTABLEKS                       R4 R4 K14 ["useTheme"]
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R2 K15 ["createContext"]
       31 NEWTABLE                         R5 0 0
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K16 [PROTO_1]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R4
       39 DUPTABLE                         R6 K19 [{"Context", "Provider"}]
       40 SETTABLEKS                       R4 R6 K17 ["Context"]
       42 SETTABLEKS                       R5 R6 K18 ["Provider"]
       44 RETURN                           R6 1
