PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K0 ["current"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["onDismissed"]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["token"]
        7 SETTABLEKS                       R1 R0 K1 ["current"]
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 4
       11 GETTABLEKS                       R1 R1 K2 ["ease"]
       13 GETUPVAL                         R2 5
       14 DUPTABLE                         R3 K5 [{"duration", "easingStyle"}]
       15 GETUPVAL                         R4 6
       16 GETTABLEKS                       R4 R4 K6 ["Time"]
       18 GETTABLEKS                       R4 R4 K7 ["Time_200"]
       20 SETTABLEKS                       R4 R3 K3 ["duration"]
       22 GETUPVAL                         R4 6
       23 GETTABLEKS                       R4 R4 K8 ["Ease"]
       25 GETTABLEKS                       R4 R4 K9 ["StandardIn"]
       27 SETTABLEKS                       R4 R3 K4 ["easingStyle"]
       29 CALL                             R1 2 -1
       30 CALL                             R0 -1 0
       31 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["notice"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 LOADB                            R1 1
        7 GETUPVAL                         R2 1
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K1 ["current"]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K2 ["ease"]
       15 LOADN                            R4 0
       16 DUPTABLE                         R5 K5 [{"duration", "easingStyle"}]
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R6 R6 K6 ["Time"]
       20 GETTABLEKS                       R6 R6 K7 ["Time_200"]
       22 SETTABLEKS                       R6 R5 K3 ["duration"]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K8 ["Ease"]
       27 GETTABLEKS                       R6 R6 K9 ["StandardOut"]
       29 SETTABLEKS                       R6 R5 K4 ["easingStyle"]
       31 CALL                             R3 2 -1
       32 CALL                             R2 -1 0
       33 GETIMPORT                        R2 K12 [task.delay]
       35 LOADN                            R3 2
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          REF R1
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U4
       44 CALL                             R2 2 0
       45 NEWCLOSURE                       R2 P1
       46 CAPTURE                          REF R1
       47 CAPTURE                          UPVAL U1
       48 CLOSEUPVALS                      R1
       49 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADK                            R2 K3 [0.5]
        3 LOADN                            R3 0
        4 LOADN                            R4 1
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K4 ["Padding"]
        8 GETTABLEKS                       R7 R7 K5 ["Small"]
       10 MINUS                            R6 R7
       11 ADD                              R5 R6 R0
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Size"]
        4 GETTABLEKS                       R2 R2 K1 ["Size_800"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["useRef"]
        9 LOADNIL                          R4
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["useCallback"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R6 0 1
       19 GETTABLEKS                       R7 R0 K4 ["onDismissed"]
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K5 ["useAnimatedBinding"]
       27 MOVE                             R6 R2
       28 MOVE                             R7 R4
       29 CALL                             R5 2 2
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R6
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R9 0 2
       42 GETTABLEKS                       R10 R0 K7 ["notice"]
       44 MOVE                             R11 R6
       45 SETLIST                          R9 R10 2 [1]
       47 CALL                             R7 2 0
       48 GETTABLEKS                       R7 R0 K7 ["notice"]
       50 JUMPIFNOTEQKNIL                  R7 ; [+3]
       52 LOADNIL                          R8
       53 RETURN                           R8 1
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K8 ["createElement"]
       57 GETUPVAL                         R9 3
       58 DUPTABLE                         R10 K14 [{"title", "icon", "testId", "AnchorPoint", "Position"}]
       59 GETTABLEKS                       R11 R7 K9 ["title"]
       61 SETTABLEKS                       R11 R10 K9 ["title"]
       63 GETTABLEKS                       R11 R7 K10 ["icon"]
       65 SETTABLEKS                       R11 R10 K10 ["icon"]
       67 GETTABLEKS                       R11 R7 K11 ["testId"]
       69 SETTABLEKS                       R11 R10 K11 ["testId"]
       71 GETIMPORT                        R11 K17 [Vector2.new]
       73 LOADK                            R12 K18 [0.5]
       74 LOADN                            R13 1
       75 CALL                             R11 2 1
       76 SETTABLEKS                       R11 R10 K12 ["AnchorPoint"]
       78 NEWCLOSURE                       R13 P2
       79 CAPTURE                          VAL R1
       80 NAMECALL                         R11 R5 K19 ["map"]
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K13 ["Position"]
       85 CALL                             R8 2 -1
       86 RETURN                           R8 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+5]
        7 GETIMPORT                        R1 K2 [error]
        9 LOADK                            R2 K3 ["useSnackbar must be used within SnackbarProvider"]
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R1 R0 K4 ["show"]
       13 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K4 [{"title", "icon", "testId", "token"}]
        2 GETTABLEKS                       R3 R0 K0 ["title"]
        4 SETTABLEKS                       R3 R2 K0 ["title"]
        6 GETTABLEKS                       R3 R0 K1 ["icon"]
        8 SETTABLEKS                       R3 R2 K1 ["icon"]
       10 GETTABLEKS                       R3 R0 K2 ["testId"]
       12 SETTABLEKS                       R3 R2 K2 ["testId"]
       14 GETIMPORT                        R3 K7 [os.clock]
       16 CALL                             R3 0 1
       17 SETTABLEKS                       R3 R2 K3 ["token"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETTABLEKS                       R1 R0 K0 ["token"]
        3 GETUPVAL                         R2 0
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R0 K3 [{"notice", "show", "dismiss"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["notice"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["show"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["dismiss"]
       10 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       24 NEWCLOSURE                       R6 P2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R7 0 3
       30 MOVE                             R8 R1
       31 MOVE                             R9 R3
       32 MOVE                             R10 R4
       33 SETLIST                          R7 R8 3 [1]
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K3 ["createElement"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K4 ["Provider"]
       42 DUPTABLE                         R8 K6 [{"value"}]
       43 SETTABLEKS                       R5 R8 K5 ["value"]
       45 GETTABLEKS                       R9 R0 K7 ["children"]
       47 CALL                             R6 3 -1
       48 RETURN                           R6 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+5]
        7 GETIMPORT                        R1 K2 [error]
        9 LOADK                            R2 K3 ["Snackbar must be used within SnackbarProvider"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["createElement"]
       14 GETUPVAL                         R2 2
       15 DUPTABLE                         R3 K7 [{"notice", "onDismissed"}]
       16 GETTABLEKS                       R4 R0 K5 ["notice"]
       18 SETTABLEKS                       R4 R3 K5 ["notice"]
       20 GETTABLEKS                       R4 R0 K8 ["dismiss"]
       22 SETTABLEKS                       R4 R3 K6 ["onDismissed"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactOtter"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["Snackbar"]
       26 GETTABLEKS                       R6 R4 K11 ["Hooks"]
       28 GETTABLEKS                       R6 R6 K12 ["useTokens"]
       30 GETTABLEKS                       R7 R2 K13 ["createContext"]
       32 LOADNIL                          R8
       33 CALL                             R7 1 1
       34 DUPCLOSURE                       R8 K14 [PROTO_5]
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R9 K15 [PROTO_6]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R7
       42 DUPCLOSURE                       R10 K16 [PROTO_11]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R7
       45 DUPCLOSURE                       R11 K17 [PROTO_12]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R8
       49 DUPTABLE                         R12 K20 [{"useSnackbar", "Provider", "Snackbar"}]
       50 SETTABLEKS                       R9 R12 K18 ["useSnackbar"]
       52 SETTABLEKS                       R10 R12 K19 ["Provider"]
       54 SETTABLEKS                       R11 R12 K10 ["Snackbar"]
       56 RETURN                           R12 1
