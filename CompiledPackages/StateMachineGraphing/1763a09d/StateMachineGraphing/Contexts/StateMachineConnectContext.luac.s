PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["center"]
        2 SUB                              R2 R1 R3
        3 LOADB                            R3 0
        4 GETTABLEKS                       R5 R2 K1 ["X"]
        6 FASTCALL1                        MATH_ABS R5 ; [+2]
        7 GETIMPORT                        R4 K4 [math.abs]
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R5 R0 K5 ["halfSize"]
       12 GETTABLEKS                       R5 R5 K1 ["X"]
       14 JUMPIFNOTLE                      R4 R5 ; [+15]
       16 GETTABLEKS                       R5 R2 K6 ["Y"]
       18 FASTCALL1                        MATH_ABS R5 ; [+2]
       19 GETIMPORT                        R4 K4 [math.abs]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R0 K5 ["halfSize"]
       24 GETTABLEKS                       R5 R5 K6 ["Y"]
       26 JUMPIFLE                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 RETURN                           R3 1

PROTO_2:
        0 LOADNIL                          R4
        1 LOADK                            R5 K0 [∞]
        2 MOVE                             R6 R0
        3 LOADNIL                          R7
        4 LOADNIL                          R8
        5 FORGPREP                         R6
        6 JUMPIFEQ                         R9 R1 ; [+22]
        8 MOVE                             R11 R3
        9 MOVE                             R12 R1
       10 MOVE                             R13 R9
       11 CALL                             R11 2 1
       12 JUMPIFNOT                        R11 ; [+16]
       13 GETTABLEKS                       R12 R10 K1 ["center"]
       15 SUB                              R11 R12 R2
       16 GETTABLEKS                       R11 R11 K2 ["Magnitude"]
       18 GETTABLEKS                       R13 R10 K4 ["halfSize"]
       20 GETTABLEKS                       R13 R13 K2 ["Magnitude"]
       22 ADDK                             R12 R13 K3 [24]
       23 JUMPIFNOTLE                      R11 R12 ; [+5]
       25 JUMPIFNOTLT                      R11 R5 ; [+3]
       27 MOVE                             R5 R11
       28 MOVE                             R4 R9
       29 FORGLOOP                         R6 2 ; [-24]
       31 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observe"]
        3 LOADK                            R1 K1 ["pending"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observe"]
        3 LOADK                            R1 K1 ["pinActive"]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["observeGeometry"]
        4 LOADB                            R5 0
        5 CALL                             R4 1 1
        6 MOVE                             R5 R0
        7 MOVE                             R6 R2
        8 GETUPVAL                         R7 2
        9 CALL                             R3 4 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["set"]
       13 LOADK                            R5 K2 ["pending"]
       14 DUPTABLE                         R6 K8 [{"fromStateId", "startAbs", "cursorAbs", "targetStateId", "targetHasReverse"}]
       15 SETTABLEKS                       R0 R6 K3 ["fromStateId"]
       17 SETTABLEKS                       R1 R6 K4 ["startAbs"]
       19 SETTABLEKS                       R2 R6 K5 ["cursorAbs"]
       21 SETTABLEKS                       R3 R6 K6 ["targetStateId"]
       23 LOADB                            R7 0
       24 JUMPIFEQKNIL                     R3 ; [+5]
       26 GETUPVAL                         R7 4
       27 MOVE                             R8 R0
       28 MOVE                             R9 R3
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K7 ["targetHasReverse"]
       32 CALL                             R4 2 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 LOADK                            R2 K1 ["pending"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R1 K2 ["fromStateId"]
        9 GETTABLEKS                       R4 R1 K3 ["startAbs"]
       11 MOVE                             R5 R0
       12 CALL                             R2 3 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["get"]
        3 LOADK                            R3 K1 ["pending"]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["set"]
        8 LOADK                            R4 K1 ["pending"]
        9 LOADNIL                          R5
       10 CALL                             R3 2 0
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["observeGeometry"]
       17 LOADB                            R5 0
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R2 K4 ["fromStateId"]
       21 MOVE                             R6 R0
       22 GETUPVAL                         R7 3
       23 CALL                             R3 4 1
       24 JUMPIFNOT                        R3 ; [+6]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R5 R2 K4 ["fromStateId"]
       28 MOVE                             R6 R3
       29 CALL                             R4 2 0
       30 RETURN                           R0 0
       31 GETTABLEKS                       R6 R2 K5 ["startAbs"]
       33 SUB                              R5 R0 R6
       34 GETTABLEKS                       R5 R5 K6 ["Magnitude"]
       36 LOADN                            R6 40
       37 JUMPIFLE                         R6 R5 ; [+2]
       39 LOADB                            R4 0 +1
       40 LOADB                            R4 1
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R5 R5 K3 ["observeGeometry"]
       44 LOADB                            R6 0
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R7 R2 K4 ["fromStateId"]
       48 GETTABLE                         R6 R5 R7
       49 JUMPIFNOT                        R4 ; [+40]
       50 JUMPIFEQKNIL                     R6 ; [+32]
       52 GETTABLEKS                       R9 R6 K7 ["center"]
       54 SUB                              R8 R0 R9
       55 LOADB                            R7 0
       56 GETTABLEKS                       R10 R8 K8 ["X"]
       58 FASTCALL1                        MATH_ABS R10 ; [+2]
       59 GETIMPORT                        R9 K11 [math.abs]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R6 K12 ["halfSize"]
       64 GETTABLEKS                       R10 R10 K8 ["X"]
       66 JUMPIFNOTLE                      R9 R10 ; [+15]
       68 GETTABLEKS                       R10 R8 K13 ["Y"]
       70 FASTCALL1                        MATH_ABS R10 ; [+2]
       71 GETIMPORT                        R9 K11 [math.abs]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R6 K12 ["halfSize"]
       76 GETTABLEKS                       R10 R10 K13 ["Y"]
       78 JUMPIFLE                         R9 R10 ; [+2]
       80 LOADB                            R7 0 +1
       81 LOADB                            R7 1
       82 JUMPIF                           R7 ; [+7]
       83 GETUPVAL                         R7 5
       84 GETTABLEKS                       R8 R2 K4 ["fromStateId"]
       86 MOVE                             R9 R1
       87 MOVE                             R10 R0
       88 CALL                             R9 1 -1
       89 CALL                             R7 -1 0
       90 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["set"]
        3 LOADK                            R2 K1 ["pinActive"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 DUPTABLE                         R1 K7 [{"startConnect", "updateConnect", "endConnect", "observePending", "isValidTarget", "observePinActive", "setPinActive"}]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R2 R1 K0 ["startConnect"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R2 R1 K1 ["updateConnect"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 SETTABLEKS                       R2 R1 K2 ["endConnect"]
       25 GETUPVAL                         R2 7
       26 SETTABLEKS                       R2 R1 K3 ["observePending"]
       28 GETUPVAL                         R2 2
       29 SETTABLEKS                       R2 R1 K4 ["isValidTarget"]
       31 GETUPVAL                         R2 8
       32 SETTABLEKS                       R2 R1 K5 ["observePinActive"]
       34 NEWCLOSURE                       R2 P4
       35 CAPTURE                          UPVAL U3
       36 SETTABLEKS                       R2 R1 K6 ["setPinActive"]
       38 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R3 R0 K2 ["onCreateTransition"]
       11 GETTABLEKS                       R4 R0 K3 ["onCreateStateAndTransition"]
       13 GETTABLEKS                       R5 R0 K4 ["isValidTarget"]
       15 GETTABLEKS                       R6 R0 K5 ["hasReverseTransition"]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R9 0 1
       24 MOVE                             R10 R2
       25 SETLIST                          R9 R10 1 [1]
       27 CALL                             R7 2 1
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       31 NEWCLOSURE                       R9 P1
       32 CAPTURE                          VAL R2
       33 NEWTABLE                         R10 0 1
       35 MOVE                             R11 R2
       36 SETLIST                          R10 R11 1 [1]
       38 CALL                             R8 2 1
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K6 ["useMemo"]
       42 NEWCLOSURE                       R10 P2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R8
       52 NEWTABLE                         R11 0 8
       54 MOVE                             R12 R2
       55 MOVE                             R13 R1
       56 MOVE                             R14 R3
       57 MOVE                             R15 R4
       58 MOVE                             R16 R5
       59 MOVE                             R17 R6
       60 MOVE                             R18 R7
       61 MOVE                             R19 R8
       62 SETLIST                          R11 R12 8 [1]
       64 CALL                             R9 2 1
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K7 ["createElement"]
       68 GETUPVAL                         R11 4
       69 GETTABLEKS                       R11 R11 K8 ["Provider"]
       71 DUPTABLE                         R12 K10 [{"value"}]
       72 SETTABLEKS                       R9 R12 K9 ["value"]
       74 GETTABLEKS                       R13 R0 K11 ["children"]
       76 CALL                             R10 3 -1
       77 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StateMachineGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeGraphing"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["Signals"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K12 ["StateMachineGeometryContext"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R1 K13 ["useSignalDispatcher"]
       44 DUPTABLE                         R7 K21 [{"startConnect", "updateConnect", "endConnect", "observePending", "isValidTarget", "observePinActive", "setPinActive"}]
       45 GETTABLEKS                       R8 R3 K22 ["createUnimplemented"]
       47 LOADK                            R9 K14 ["startConnect"]
       48 CALL                             R8 1 1
       49 SETTABLEKS                       R8 R7 K14 ["startConnect"]
       51 GETTABLEKS                       R8 R3 K22 ["createUnimplemented"]
       53 LOADK                            R9 K15 ["updateConnect"]
       54 CALL                             R8 1 1
       55 SETTABLEKS                       R8 R7 K15 ["updateConnect"]
       57 GETTABLEKS                       R8 R3 K22 ["createUnimplemented"]
       59 LOADK                            R9 K16 ["endConnect"]
       60 CALL                             R8 1 1
       61 SETTABLEKS                       R8 R7 K16 ["endConnect"]
       63 GETTABLEKS                       R8 R4 K23 ["createSignal"]
       65 LOADNIL                          R9
       66 CALL                             R8 1 1
       67 SETTABLEKS                       R8 R7 K17 ["observePending"]
       69 DUPCLOSURE                       R8 K24 [PROTO_0]
       70 SETTABLEKS                       R8 R7 K18 ["isValidTarget"]
       72 GETTABLEKS                       R8 R4 K23 ["createSignal"]
       74 LOADB                            R9 0
       75 CALL                             R8 1 1
       76 SETTABLEKS                       R8 R7 K19 ["observePinActive"]
       78 GETTABLEKS                       R8 R3 K22 ["createUnimplemented"]
       80 LOADK                            R9 K20 ["setPinActive"]
       81 CALL                             R8 1 1
       82 SETTABLEKS                       R8 R7 K20 ["setPinActive"]
       84 GETTABLEKS                       R8 R2 K25 ["createContext"]
       86 MOVE                             R9 R7
       87 CALL                             R8 1 1
       88 DUPCLOSURE                       R9 K26 [PROTO_1]
       89 DUPCLOSURE                       R10 K27 [PROTO_2]
       90 DUPCLOSURE                       R11 K28 [PROTO_11]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R8
       96 DUPTABLE                         R12 K31 [{"Context", "Provider"}]
       97 SETTABLEKS                       R8 R12 K29 ["Context"]
       99 SETTABLEKS                       R11 R12 K30 ["Provider"]
      101 RETURN                           R12 1
