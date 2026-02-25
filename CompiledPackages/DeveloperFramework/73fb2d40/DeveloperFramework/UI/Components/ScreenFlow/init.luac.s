PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentScreenIndex"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentScreenIndex"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Screens"]
        5 LENGTH                           R5 R2
        6 LOADN                            R6 0
        7 JUMPIFLT                         R6 R5 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       13 LOADK                            R5 K2 ["No screens"]
       14 GETIMPORT                        R3 K4 [assert]
       16 CALL                             R3 2 0
       17 ADDK                             R3 R0 K5 [1]
       18 LENGTH                           R4 R2
       19 MOD                              R3 R3 R4
       20 JUMPIFNOTEQKN                    R3 K6 [0] ; [+3]
       22 LENGTH                           R4 R2
       23 JUMPIF                           R4 ; [+1]
       24 MOVE                             R4 R3
       25 RETURN                           R4 1

PROTO_2:
        0 SUBK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["currentScreenIndex"]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["GoTo"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["props"]
       13 GETTABLEKS                       R2 R3 K4 ["GetNextIndex"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 -1
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K2 ["GoTo"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K5 ["GetNextIndexDefault"]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 -1
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["currentScreenIndex"]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["GoTo"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["props"]
       13 GETTABLEKS                       R2 R3 K4 ["GetPreviousIndex"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 -1
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K2 ["GoTo"]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K5 ["GetPreviousIndexDefault"]
       25 MOVE                             R3 R0
       26 CALL                             R2 1 -1
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Screens"]
        5 LENGTH                           R5 R2
        6 LOADN                            R6 0
        7 JUMPIFLT                         R6 R5 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       13 LOADK                            R5 K2 ["No screens"]
       14 GETIMPORT                        R3 K4 [assert]
       16 CALL                             R3 2 0
       17 LOADN                            R5 1
       18 LENGTH                           R6 R2
       19 FASTCALL3                        MATH_CLAMP R0 R5 R6
       21 MOVE                             R4 R0
       22 GETIMPORT                        R3 K7 [math.clamp]
       24 CALL                             R3 3 1
       25 MOVE                             R0 R3
       26 GETUPVAL                         R3 0
       27 DUPTABLE                         R5 K9 [{"currentScreenIndex"}]
       28 SETTABLEKS                       R0 R5 K8 ["currentScreenIndex"]
       30 NAMECALL                         R3 R3 K10 ["setState"]
       32 CALL                             R3 2 0
       33 GETUPVAL                         R3 1
       34 JUMPIFNOT                        R3 ; [+6]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K11 ["OnScreenChanged"]
       38 MOVE                             R4 R0
       39 CALL                             R3 1 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R3 2
       42 JUMPIFNOT                        R3 ; [+8]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K0 ["props"]
       46 GETTABLEKS                       R3 R4 K11 ["OnScreenChanged"]
       48 MOVE                             R4 R0
       49 CALL                             R3 1 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K12 ["OnScreenChangedDefault"]
       54 MOVE                             R4 R0
       55 CALL                             R3 1 0
       56 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K1 [{"currentScreenIndex"}]
        1 LOADN                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["currentScreenIndex"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETTABLEKS                       R2 R0 K3 ["props"]
        8 GETTABLEKS                       R1 R2 K4 ["GetNextIndex"]
       10 JUMPIFNOT                        R1 ; [+9]
       11 GETTABLEKS                       R2 R0 K3 ["props"]
       13 GETTABLEKS                       R1 R2 K5 ["GetPreviousIndex"]
       15 JUMPIFNOT                        R1 ; [+4]
       16 GETTABLEKS                       R2 R0 K3 ["props"]
       18 GETTABLEKS                       R1 R2 K6 ["OnScreenChanged"]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R0 K7 ["OnScreenChangedDefault"]
       24 GETUPVAL                         R2 0
       25 JUMPIFNOT                        R2 ; [+10]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R3 R0 K3 ["props"]
       29 GETTABLEKS                       R2 R3 K6 ["OnScreenChanged"]
       31 JUMP                             ; [+2]
       32 GETTABLEKS                       R2 R0 K7 ["OnScreenChangedDefault"]
       34 SETTABLEKS                       R2 R0 K6 ["OnScreenChanged"]
       36 NEWCLOSURE                       R2 P1
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R2 R0 K8 ["GetNextIndexDefault"]
       40 DUPCLOSURE                       R2 K9 [PROTO_2]
       41 SETTABLEKS                       R2 R0 K10 ["GetPreviousIndexDefault"]
       43 NEWCLOSURE                       R2 P3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R2 R0 K11 ["GoToNext"]
       48 NEWCLOSURE                       R2 P4
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R2 R0 K12 ["GoToPrevious"]
       53 NEWCLOSURE                       R2 P5
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R1
       57 SETTABLEKS                       R2 R0 K13 ["GoTo"]
       59 GETUPVAL                         R2 0
       60 JUMPIFNOT                        R2 ; [+7]
       61 GETTABLEKS                       R2 R0 K6 ["OnScreenChanged"]
       63 GETTABLEKS                       R4 R0 K2 ["state"]
       65 GETTABLEKS                       R3 R4 K0 ["currentScreenIndex"]
       67 CALL                             R2 1 0
       68 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Screens"]
        6 GETTABLEKS                       R4 R2 K3 ["currentScreenIndex"]
        8 GETTABLE                         R5 R3 R4
        9 FASTCALL2K                       ASSERT R5 K4 ; [+5]
       11 MOVE                             R7 R5
       12 LOADK                            R8 K4 ["No currentScreen"]
       13 GETIMPORT                        R6 K6 [assert]
       15 CALL                             R6 2 0
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K7 ["createElement"]
       19 MOVE                             R7 R5
       20 DUPTABLE                         R8 K10 [{"GoToNext", "GoToPrevious"}]
       21 GETTABLEKS                       R9 R0 K8 ["GoToNext"]
       23 SETTABLEKS                       R9 R8 K8 ["GoToNext"]
       25 GETTABLEKS                       R9 R0 K9 ["GoToPrevious"]
       27 SETTABLEKS                       R9 R8 K9 ["GoToPrevious"]
       29 CALL                             R6 2 -1
       30 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["PureComponent"]
       18 LOADK                            R4 K9 ["ScreenFlow"]
       19 NAMECALL                         R2 R2 K10 ["extend"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K12 [game]
       24 LOADK                            R5 K13 ["InitialOnScreenChanged"]
       25 LOADB                            R6 0
       26 NAMECALL                         R3 R3 K14 ["DefineFastFlag"]
       28 CALL                             R3 3 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R6 R0 K15 ["Util"]
       33 GETTABLEKS                       R5 R6 K16 ["Typecheck"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K17 ["wrap"]
       38 MOVE                             R6 R2
       39 GETIMPORT                        R7 K1 [script]
       41 CALL                             R5 2 0
       42 DUPCLOSURE                       R5 K18 [PROTO_6]
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R5 R2 K19 ["init"]
       46 DUPCLOSURE                       R5 K20 [PROTO_7]
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R5 R2 K21 ["render"]
       50 RETURN                           R2 1
