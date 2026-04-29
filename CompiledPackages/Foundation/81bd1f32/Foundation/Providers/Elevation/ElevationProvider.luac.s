PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K1 ["current"]
        3 GETTABLE                         R3 R4 R0
        4 ORK                              R2 R3 K0 [0]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K2 ["ELEVATION_LAYERS"]
        8 GETTABLE                         R3 R4 R0
        9 GETTABLEKS                       R4 R1 K3 ["reserve"]
       11 JUMPIF                           R4 ; [+11]
       12 DUPTABLE                         R4 K7 [{"layer", "index", "zIndex"}]
       13 SETTABLEKS                       R0 R4 K4 ["layer"]
       15 LOADN                            R5 255
       16 SETTABLEKS                       R5 R4 K5 ["index"]
       18 GETTABLEKS                       R5 R3 K8 ["start"]
       20 SETTABLEKS                       R5 R4 K6 ["zIndex"]
       22 RETURN                           R4 1
       23 GETTABLEKS                       R5 R3 K8 ["start"]
       25 ADDK                             R7 R2 K9 [1]
       26 GETTABLEKS                       R8 R3 K10 ["step"]
       28 MUL                              R6 R7 R8
       29 ADD                              R4 R5 R6
       30 GETTABLEKS                       R5 R3 K11 ["finish"]
       32 JUMPIFNOTLT                      R5 R4 ; [+18]
       34 GETIMPORT                        R5 K13 [warn]
       36 GETIMPORT                        R6 K16 [string.format]
       38 LOADK                            R7 K17 ["Layer '%s' capacity exceeded (%d/%d). Capping zIndex at %d."]
       39 FASTCALL1                        TOSTRING R0 ; [+3]
       40 MOVE                             R9 R0
       41 GETIMPORT                        R8 K19 [tostring]
       43 CALL                             R8 1 1
       44 MOVE                             R9 R4
       45 GETTABLEKS                       R10 R3 K11 ["finish"]
       47 GETTABLEKS                       R11 R3 K11 ["finish"]
       49 CALL                             R6 5 -1
       50 CALL                             R5 -1 0
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R5 R6 K1 ["current"]
       54 ADDK                             R6 R2 K9 [1]
       55 SETTABLE                         R6 R5 R0
       56 MOVE                             R5 R4
       57 GETTABLEKS                       R6 R3 K11 ["finish"]
       59 JUMPIFNOTLT                      R6 R5 ; [+3]
       61 GETTABLEKS                       R5 R3 K11 ["finish"]
       63 DUPTABLE                         R6 K7 [{"layer", "index", "zIndex"}]
       64 SETTABLEKS                       R0 R6 K4 ["layer"]
       66 SETTABLEKS                       R2 R6 K5 ["index"]
       68 SETTABLEKS                       R5 R6 K6 ["zIndex"]
       70 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K1 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 ORK                              R1 R2 K0 [0]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["ELEVATION_LAYERS"]
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
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K1 ["current"]
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

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K1 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 ORK                              R1 R2 K0 [0]
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K1 ["current"]
        3 GETTABLE                         R3 R4 R0
        4 ORK                              R2 R3 K0 [0]
        5 JUMPIFEQKNIL                     R1 ; [+12]
        7 LOADN                            R3 0
        8 JUMPIFNOTLE                      R3 R1 ; [+9]
       10 SUBK                             R3 R2 K2 [1]
       11 JUMPIFNOTEQ                      R1 R3 ; [+6]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K1 ["current"]
       16 SUBK                             R4 R2 K2 [1]
       17 SETTABLE                         R4 R3 R0
       18 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"acquire", "peek", "releaseIfTop"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K4 ["FoundationElevationKeepSiblingZIndex"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 JUMP                             ; [+3]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 SETTABLEKS                       R1 R0 K0 ["acquire"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          UPVAL U1
       16 SETTABLEKS                       R1 R0 K1 ["peek"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R1 R0 K2 ["releaseIfTop"]
       22 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 NEWTABLE                         R2 8 0
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["Popover"]
        8 LOADN                            R4 0
        9 SETTABLE                         R4 R2 R3
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K2 ["Drawer"]
       13 LOADN                            R4 0
       14 SETTABLE                         R4 R2 R3
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["Sheet"]
       18 LOADN                            R4 0
       19 SETTABLE                         R4 R2 R3
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K4 ["Dialog"]
       23 LOADN                            R4 0
       24 SETTABLE                         R4 R2 R3
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R3 R4 K5 ["Notification"]
       28 LOADN                            R4 0
       29 SETTABLE                         R4 R2 R3
       30 CALL                             R1 1 1
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R2 R3 K6 ["useMemo"]
       34 NEWCLOSURE                       R3 P0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U3
       38 NEWTABLE                         R4 0 0
       40 CALL                             R2 2 1
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R3 R4 K7 ["createElement"]
       44 GETUPVAL                         R5 4
       45 GETTABLEKS                       R4 R5 K8 ["Provider"]
       47 DUPTABLE                         R5 K10 [{"value"}]
       48 SETTABLEKS                       R2 R5 K9 ["value"]
       50 GETTABLEKS                       R6 R0 K11 ["children"]
       52 CALL                             R3 3 -1
       53 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETTABLEKS                       R4 R0 K4 ["owner"]
        9 SETTABLEKS                       R4 R3 K2 ["value"]
       11 GETTABLEKS                       R4 R0 K5 ["children"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R1 K2 [error]
        8 LOADK                            R2 K3 ["useElevationManager must be used under <ElevationProvider>"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
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
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K8 ["elevation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K9 ["Utility"]
       27 GETTABLEKS                       R5 R6 K10 ["Flags"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K11 ["Enums"]
       34 GETTABLEKS                       R6 R7 K12 ["ElevationLayer"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R2 K13 ["createContext"]
       39 LOADNIL                          R7
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R2 K13 ["createContext"]
       43 LOADNIL                          R8
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K14 [PROTO_5]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 DUPCLOSURE                       R9 K15 [PROTO_6]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R7
       54 DUPCLOSURE                       R10 K16 [PROTO_7]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R6
       57 DUPCLOSURE                       R11 K17 [PROTO_8]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 DUPTABLE                         R12 K22 [{"ElevationProvider", "ElevationOwnerScope", "useElevationManager", "useOwnerToken"}]
       61 SETTABLEKS                       R8 R12 K18 ["ElevationProvider"]
       63 SETTABLEKS                       R9 R12 K19 ["ElevationOwnerScope"]
       65 SETTABLEKS                       R10 R12 K20 ["useElevationManager"]
       67 SETTABLEKS                       R11 R12 K21 ["useOwnerToken"]
       69 RETURN                           R12 1
