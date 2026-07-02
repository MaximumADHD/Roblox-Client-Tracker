PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ELEVATION_LAYERS"]
        3 GETTABLE                         R2 R3 R0
        4 LOADN                            R3 -1
        5 LOADNIL                          R4
        6 LOADB                            R5 1
        7 GETTABLEKS                       R6 R1 K1 ["owner"]
        9 JUMPIFNOT                        R6 ; [+16]
       10 GETTABLEKS                       R6 R1 K1 ["owner"]
       12 GETTABLEKS                       R6 R6 K3 ["zIndex"]
       14 ADDK                             R4 R6 K2 [1]
       15 GETTABLEKS                       R6 R1 K1 ["owner"]
       17 GETTABLEKS                       R6 R6 K3 ["zIndex"]
       19 GETTABLEKS                       R7 R2 K4 ["finish"]
       21 JUMPIFLE                         R6 R7 ; [+2]
       23 LOADB                            R5 0 +1
       24 LOADB                            R5 1
       25 JUMP                             ; [+24]
       26 GETTABLEKS                       R6 R1 K5 ["reserve"]
       28 JUMPIFNOT                        R6 ; [+19]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K7 ["current"]
       32 GETTABLE                         R7 R8 R0
       33 ORK                              R6 R7 K6 [0]
       34 GETTABLEKS                       R7 R2 K8 ["start"]
       36 ADDK                             R9 R6 K2 [1]
       37 GETTABLEKS                       R10 R2 K9 ["step"]
       39 MUL                              R8 R9 R10
       40 ADD                              R4 R7 R8
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K7 ["current"]
       44 ADDK                             R8 R6 K2 [1]
       45 SETTABLE                         R8 R7 R0
       46 MOVE                             R3 R6
       47 JUMP                             ; [+2]
       48 GETTABLEKS                       R4 R2 K8 ["start"]
       50 JUMPIFNOT                        R5 ; [+23]
       51 GETTABLEKS                       R6 R2 K4 ["finish"]
       53 JUMPIFNOTLT                      R6 R4 ; [+20]
       55 GETIMPORT                        R6 K11 [warn]
       57 GETIMPORT                        R7 K14 [string.format]
       59 LOADK                            R8 K15 ["Layer '%s' capacity exceeded (%d/%d). Capping zIndex at %d."]
       60 FASTCALL1                        TOSTRING R0 ; [+3]
       61 MOVE                             R10 R0
       62 GETIMPORT                        R9 K17 [tostring]
       64 CALL                             R9 1 1
       65 MOVE                             R10 R4
       66 GETTABLEKS                       R11 R2 K4 ["finish"]
       68 GETTABLEKS                       R12 R2 K4 ["finish"]
       70 CALL                             R7 5 -1
       71 CALL                             R6 -1 0
       72 GETTABLEKS                       R4 R2 K4 ["finish"]
       74 DUPTABLE                         R6 K20 [{"layer", "index", "zIndex"}]
       75 SETTABLEKS                       R0 R6 K18 ["layer"]
       77 SETTABLEKS                       R3 R6 K19 ["index"]
       79 SETTABLEKS                       R4 R6 K3 ["zIndex"]
       81 RETURN                           R6 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["current"]
        3 GETTABLE                         R2 R3 R0
        4 ORK                              R1 R2 K0 [0]
        5 RETURN                           R1 1

PROTO_3:
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

PROTO_4:
        0 DUPTABLE                         R0 K3 [{"acquire", "peek", "releaseIfTop"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K4 ["FoundationElevationKeepSiblingZIndex"]
        4 JUMPIFNOT                        R2 ; [+4]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 JUMP                             ; [+3]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K0 ["acquire"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          UPVAL U2
       16 SETTABLEKS                       R1 R0 K1 ["peek"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          UPVAL U2
       20 SETTABLEKS                       R1 R0 K2 ["releaseIfTop"]
       22 RETURN                           R0 1

PROTO_5:
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
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R1
       38 NEWTABLE                         R4 0 0
       40 CALL                             R2 2 1
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K7 ["createElement"]
       44 GETUPVAL                         R4 4
       45 GETTABLEKS                       R4 R4 K8 ["Provider"]
       47 DUPTABLE                         R5 K10 [{"value"}]
       48 SETTABLEKS                       R2 R5 K9 ["value"]
       50 GETTABLEKS                       R6 R0 K11 ["children"]
       52 CALL                             R3 3 -1
       53 RETURN                           R3 -1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIF                           R0 ; [+4]
        6 GETIMPORT                        R1 K2 [error]
        8 LOADK                            R2 K3 ["useElevationManager must be used under <ElevationProvider>"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 1

PROTO_8:
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
       25 GETTABLEKS                       R5 R0 K9 ["Utility"]
       27 GETTABLEKS                       R5 R5 K10 ["Flags"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Enums"]
       34 GETTABLEKS                       R6 R6 K12 ["ElevationLayer"]
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
