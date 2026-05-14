PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 ORK                              R1 R2 K0 [0]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["ELEVATION_LAYERS"]
        8 GETTABLE                         R2 R3 R0
        9 GETTABLEKS                       R7 R2 K4 ["finish"]
       11 GETTABLEKS                       R8 R2 K5 ["start"]
       13 SUB                              R6 R7 R8
       14 GETTABLEKS                       R7 R2 K6 ["step"]
       16 DIV                              R5 R6 R7
       17 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       18 GETIMPORT                        R4 K9 [math.floor]
       20 CALL                             R4 1 1
       21 ADDK                             R3 R4 K3 [1]
       22 JUMPIFNOTEQ                      R1 R3 ; [+17]
       24 GETIMPORT                        R4 K11 [warn]
       26 GETIMPORT                        R5 K14 [string.format]
       28 LOADK                            R6 K15 ["Layer '%s' capacity exceeded (%d/%d). Capping zIndex at %d."]
       29 FASTCALL1                        TOSTRING R0 ; [+3]
       30 MOVE                             R8 R0
       31 GETIMPORT                        R7 K17 [tostring]
       33 CALL                             R7 1 1
       34 ADDK                             R8 R1 K3 [1]
       35 MOVE                             R9 R3
       36 GETTABLEKS                       R10 R2 K4 ["finish"]
       38 CALL                             R5 5 -1
       39 CALL                             R4 -1 0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K1 ["current"]
       43 ADDK                             R5 R1 K3 [1]
       44 SETTABLE                         R5 R4 R0
       45 GETTABLEKS                       R5 R2 K5 ["start"]
       47 GETTABLEKS                       R7 R2 K6 ["step"]
       49 MUL                              R6 R1 R7
       50 ADD                              R4 R5 R6
       51 GETTABLEKS                       R5 R2 K4 ["finish"]
       53 JUMPIFNOTLT                      R5 R4 ; [+3]
       55 GETTABLEKS                       R4 R2 K4 ["finish"]
       57 DUPTABLE                         R5 K21 [{"layer", "index", "zIndex"}]
       58 SETTABLEKS                       R0 R5 K18 ["layer"]
       60 SETTABLEKS                       R1 R5 K19 ["index"]
       62 SETTABLEKS                       R4 R5 K20 ["zIndex"]
       64 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 ORK                              R1 R2 K0 [0]
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K1 ["current"]
        3 GETTABLE                         R3 R4 R0
        4 ORK                              R2 R3 K0 [0]
        5 JUMPIFEQKNIL                     R1 ; [+12]
        7 LOADN                            R3 0
        8 JUMPIFNOTLE                      R3 R1 ; [+9]
       10 SUBK                             R3 R2 K2 [1]
       11 JUMPIFNOTEQ                      R1 R3 ; [+6]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K1 ["current"]
       16 SUBK                             R4 R2 K2 [1]
       17 SETTABLE                         R4 R3 R0
       18 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K3 [{"acquire", "peek", "releaseIfTop"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["acquire"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          UPVAL U0
        8 SETTABLEKS                       R1 R0 K1 ["peek"]
       10 NEWCLOSURE                       R1 P2
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K2 ["releaseIfTop"]
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 NEWTABLE                         R2 8 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Popover"]
        8 LOADN                            R4 0
        9 SETTABLE                         R4 R2 R3
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["Drawer"]
       13 LOADN                            R4 0
       14 SETTABLE                         R4 R2 R3
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["Sheet"]
       18 LOADN                            R4 0
       19 SETTABLE                         R4 R2 R3
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K4 ["Dialog"]
       23 LOADN                            R4 0
       24 SETTABLE                         R4 R2 R3
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K5 ["Notification"]
       28 LOADN                            R4 0
       29 SETTABLE                         R4 R2 R3
       30 CALL                             R1 1 1
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K6 ["useMemo"]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U2
       37 NEWTABLE                         R4 0 0
       39 CALL                             R2 2 1
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K7 ["createElement"]
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R4 R4 K8 ["Provider"]
       46 DUPTABLE                         R5 K10 [{"value"}]
       47 SETTABLEKS                       R2 R5 K9 ["value"]
       49 GETTABLEKS                       R6 R0 K11 ["children"]
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K4 ["owner"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 GETTABLEKS                       R4 R0 K5 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R1 K2 [error]
        8 LOADK                            R2 K3 ["useElevationManager must be used under <ElevationProvider>"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

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
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["elevation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Enums"]
       27 GETTABLEKS                       R5 R5 K10 ["ElevationLayer"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R2 K11 ["createContext"]
       32 LOADNIL                          R6
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R2 K11 ["createContext"]
       36 LOADNIL                          R7
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K12 [PROTO_4]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R8 K13 [PROTO_5]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R6
       46 DUPCLOSURE                       R9 K14 [PROTO_6]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 DUPCLOSURE                       R10 K15 [PROTO_7]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 DUPTABLE                         R11 K20 [{"ElevationProvider", "ElevationOwnerScope", "useElevationManager", "useOwnerToken"}]
       53 SETTABLEKS                       R7 R11 K16 ["ElevationProvider"]
       55 SETTABLEKS                       R8 R11 K17 ["ElevationOwnerScope"]
       57 SETTABLEKS                       R9 R11 K18 ["useElevationManager"]
       59 SETTABLEKS                       R10 R11 K19 ["useOwnerToken"]
       61 RETURN                           R11 1
