PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{"currentScreen", "previousScreens", "nextScreens"}]
        7 GETTABLEKS                       R5 R1 K6 ["screen"]
        9 SETTABLEKS                       R5 R4 K2 ["currentScreen"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       14 GETTABLEKS                       R5 R6 K1 ["join"]
       16 GETTABLEKS                       R6 R0 K3 ["previousScreens"]
       18 NEWTABLE                         R7 1 0
       20 GETTABLEKS                       R10 R0 K3 ["previousScreens"]
       22 LENGTH                           R9 R10
       23 ADDK                             R8 R9 K7 [1]
       24 GETTABLEKS                       R9 R0 K2 ["currentScreen"]
       26 SETTABLE                         R9 R7 R8
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K3 ["previousScreens"]
       30 NEWTABLE                         R5 0 0
       32 SETTABLEKS                       R5 R4 K4 ["nextScreens"]
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R5 R0 K0 ["previousScreens"]
        2 LENGTH                           R4 R5
        3 LOADN                            R5 0
        4 JUMPIFLT                         R5 R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["previousScreens should not be empty"]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K4 ["Dictionary"]
       17 GETTABLEKS                       R2 R3 K5 ["join"]
       19 MOVE                             R3 R0
       20 DUPTABLE                         R4 K8 [{"currentScreen", "previousScreens", "nextScreens"}]
       21 GETTABLEKS                       R6 R0 K0 ["previousScreens"]
       23 GETTABLEKS                       R8 R0 K0 ["previousScreens"]
       25 LENGTH                           R7 R8
       26 GETTABLE                         R5 R6 R7
       27 SETTABLEKS                       R5 R4 K6 ["currentScreen"]
       29 NEWTABLE                         R5 0 1
       31 GETTABLEKS                       R7 R0 K0 ["previousScreens"]
       33 LOADN                            R8 1
       34 GETTABLEKS                       R11 R0 K0 ["previousScreens"]
       36 LENGTH                           R10 R11
       37 SUBK                             R9 R10 K9 [1]
       38 FASTCALL                         TABLE_UNPACK ; [+2]
       39 GETIMPORT                        R6 K11 [unpack]
       41 CALL                             R6 3 -1
       42 SETLIST                          R5 R6 -1 [1]
       44 SETTABLEKS                       R5 R4 K0 ["previousScreens"]
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R6 R7 K4 ["Dictionary"]
       49 GETTABLEKS                       R5 R6 K5 ["join"]
       51 GETTABLEKS                       R6 R0 K7 ["nextScreens"]
       53 NEWTABLE                         R7 1 0
       55 GETTABLEKS                       R10 R0 K7 ["nextScreens"]
       57 LENGTH                           R9 R10
       58 ADDK                             R8 R9 K9 [1]
       59 GETTABLEKS                       R9 R0 K6 ["currentScreen"]
       61 SETTABLE                         R9 R7 R8
       62 CALL                             R5 2 1
       63 SETTABLEKS                       R5 R4 K7 ["nextScreens"]
       65 CALL                             R2 2 -1
       66 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R5 R0 K0 ["nextScreens"]
        2 LENGTH                           R4 R5
        3 LOADN                            R5 0
        4 JUMPIFLT                         R5 R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["nextScreens should not be empty"]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K4 ["Dictionary"]
       17 GETTABLEKS                       R2 R3 K5 ["join"]
       19 MOVE                             R3 R0
       20 DUPTABLE                         R4 K8 [{"currentScreen", "previousScreens", "nextScreens"}]
       21 GETTABLEKS                       R6 R0 K0 ["nextScreens"]
       23 GETTABLEKS                       R8 R0 K0 ["nextScreens"]
       25 LENGTH                           R7 R8
       26 GETTABLE                         R5 R6 R7
       27 SETTABLEKS                       R5 R4 K6 ["currentScreen"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K4 ["Dictionary"]
       32 GETTABLEKS                       R5 R6 K5 ["join"]
       34 GETTABLEKS                       R6 R0 K7 ["previousScreens"]
       36 NEWTABLE                         R7 1 0
       38 GETTABLEKS                       R10 R0 K7 ["previousScreens"]
       40 LENGTH                           R9 R10
       41 ADDK                             R8 R9 K9 [1]
       42 GETTABLEKS                       R9 R0 K6 ["currentScreen"]
       44 SETTABLE                         R9 R7 R8
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K7 ["previousScreens"]
       48 NEWTABLE                         R5 0 1
       50 GETTABLEKS                       R7 R0 K0 ["nextScreens"]
       52 LOADN                            R8 1
       53 GETTABLEKS                       R11 R0 K0 ["nextScreens"]
       55 LENGTH                           R10 R11
       56 SUBK                             R9 R10 K9 [1]
       57 FASTCALL                         TABLE_UNPACK ; [+2]
       58 GETIMPORT                        R6 K11 [unpack]
       60 CALL                             R6 3 -1
       61 SETLIST                          R5 R6 -1 [1]
       63 SETTABLEKS                       R5 R4 K0 ["nextScreens"]
       65 CALL                             R2 2 -1
       66 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K10 ["Screens"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R1 K11 ["createReducer"]
       34 DUPTABLE                         R5 K16 [{"screensTable", "currentScreen", "previousScreens", "nextScreens"}]
       35 NEWTABLE                         R6 0 0
       37 SETTABLEKS                       R6 R5 K12 ["screensTable"]
       39 GETTABLEKS                       R6 R3 K17 ["MAIN"]
       41 SETTABLEKS                       R6 R5 K13 ["currentScreen"]
       43 NEWTABLE                         R6 0 0
       45 SETTABLEKS                       R6 R5 K14 ["previousScreens"]
       47 NEWTABLE                         R6 0 0
       49 SETTABLEKS                       R6 R5 K15 ["nextScreens"]
       51 DUPTABLE                         R6 K21 [{"SetScreen", "SetToPreviousScreen", "SetToNextScreen"}]
       52 DUPCLOSURE                       R7 K22 [PROTO_0]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R7 R6 K18 ["SetScreen"]
       56 DUPCLOSURE                       R7 K23 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R7 R6 K19 ["SetToPreviousScreen"]
       60 DUPCLOSURE                       R7 K24 [PROTO_2]
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R7 R6 K20 ["SetToNextScreen"]
       64 CALL                             R4 2 -1
       65 RETURN                           R4 -1
