PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["rigEditCaptured"]
        2 JUMPIF                           R1 ; [+13]
        3 LOADB                            R1 0
        4 GETTABLEKS                       R2 R0 K1 ["editedEffectors"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETTABLEKS                       R3 R0 K1 ["editedEffectors"]
       10 LENGTH                           R2 R3
       11 LOADN                            R3 0
       12 JUMPIFLT                         R3 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 NEWTABLE                         R1 0 0
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETUPVAL                         R7 0
       15 MOVE                             R8 R6
       16 CALL                             R7 1 1
       17 SETTABLE                         R7 R1 R5
       18 FORGLOOP                         R2 2 ; [-5]
       20 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["Clone"]
        2 CALL                             R1 1 1
        3 LOADN                            R2 0
        4 SETTABLEKS                       R2 R1 K1 ["Time"]
        6 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K6 [{"pose", "baseline", "interval", "rigEditCaptured", "editedEffectors", "dragSnapshot"}]
        1 GETTABLEKS                       R3 R0 K0 ["pose"]
        3 NAMECALL                         R4 R3 K7 ["Clone"]
        5 CALL                             R4 1 1
        6 MOVE                             R2 R4
        7 LOADN                            R4 0
        8 SETTABLEKS                       R4 R2 K8 ["Time"]
       10 SETTABLEKS                       R2 R1 K0 ["pose"]
       12 GETTABLEKS                       R3 R0 K1 ["baseline"]
       14 NAMECALL                         R4 R3 K7 ["Clone"]
       16 CALL                             R4 1 1
       17 MOVE                             R2 R4
       18 LOADN                            R4 0
       19 SETTABLEKS                       R4 R2 K8 ["Time"]
       21 SETTABLEKS                       R2 R1 K1 ["baseline"]
       23 GETIMPORT                        R2 K11 [table.clone]
       25 GETTABLEKS                       R3 R0 K2 ["interval"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K2 ["interval"]
       30 GETTABLEKS                       R2 R0 K3 ["rigEditCaptured"]
       32 SETTABLEKS                       R2 R1 K3 ["rigEditCaptured"]
       34 GETTABLEKS                       R3 R0 K4 ["editedEffectors"]
       36 JUMPIFEQKNIL                     R3 ; [+7]
       38 GETIMPORT                        R2 K11 [table.clone]
       40 GETTABLEKS                       R3 R0 K4 ["editedEffectors"]
       42 CALL                             R2 1 1
       43 JUMP                             ; [+1]
       44 LOADNIL                          R2
       45 SETTABLEKS                       R2 R1 K4 ["editedEffectors"]
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R3 R0 K5 ["dragSnapshot"]
       50 CALL                             R2 1 1
       51 SETTABLEKS                       R2 R1 K5 ["dragSnapshot"]
       53 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["pose"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["baseline"]
        7 NAMECALL                         R1 R1 K1 ["Destroy"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["keyposes"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R6
        9 CALL                             R7 1 1
       10 SETTABLE                         R7 R1 R5
       11 FORGLOOP                         R2 2 ; [-5]
       13 DUPTABLE                         R2 K2 [{"keyposes", "lastClickedTime"}]
       14 SETTABLEKS                       R1 R2 K0 ["keyposes"]
       16 GETTABLEKS                       R3 R0 K1 ["lastClickedTime"]
       18 SETTABLEKS                       R3 R2 K1 ["lastClickedTime"]
       20 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["keyposes"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["pose"]
        7 NAMECALL                         R6 R6 K2 ["Destroy"]
        9 CALL                             R6 1 0
       10 GETTABLEKS                       R6 R5 K3 ["baseline"]
       12 NAMECALL                         R6 R6 K2 ["Destroy"]
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-11]
       17 GETIMPORT                        R1 K6 [table.clear]
       19 GETTABLEKS                       R2 R0 K0 ["keyposes"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R0 K1 [{"keyposes"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["keyposes"]
        5 RETURN                           R0 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["keyposes"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["editedEffectors"]
        9 JUMPIFEQKNIL                     R7 ; [+4]
       11 GETTABLEKS                       R7 R6 K1 ["editedEffectors"]
       13 SETTABLE                         R7 R1 R5
       14 FORGLOOP                         R2 2 ; [-8]
       16 RETURN                           R1 1

PROTO_9:
        0 DUPTABLE                         R1 K5 [{"poses", "baselines", "rigEditedTimes", "editedEffectorsByTime", "dragSnapshotsByTime"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["poses"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["baselines"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["rigEditedTimes"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["editedEffectorsByTime"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K4 ["dragSnapshotsByTime"]
       21 GETTABLEKS                       R2 R0 K6 ["keyposes"]
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETTABLEKS                       R7 R1 K0 ["poses"]
       28 GETTABLEKS                       R8 R6 K7 ["pose"]
       30 SETTABLE                         R8 R7 R5
       31 GETTABLEKS                       R7 R1 K1 ["baselines"]
       33 GETTABLEKS                       R8 R6 K8 ["baseline"]
       35 SETTABLE                         R8 R7 R5
       36 GETTABLEKS                       R7 R6 K9 ["rigEditCaptured"]
       38 JUMPIFNOT                        R7 ; [+4]
       39 GETTABLEKS                       R7 R1 K2 ["rigEditedTimes"]
       41 LOADB                            R8 1
       42 SETTABLE                         R8 R7 R5
       43 GETTABLEKS                       R7 R6 K10 ["editedEffectors"]
       45 JUMPIFEQKNIL                     R7 ; [+6]
       47 GETTABLEKS                       R7 R1 K3 ["editedEffectorsByTime"]
       49 GETTABLEKS                       R8 R6 K10 ["editedEffectors"]
       51 SETTABLE                         R8 R7 R5
       52 GETTABLEKS                       R7 R6 K11 ["dragSnapshot"]
       54 JUMPIFEQKNIL                     R7 ; [+6]
       56 GETTABLEKS                       R7 R1 K4 ["dragSnapshotsByTime"]
       58 GETTABLEKS                       R8 R6 K11 ["dragSnapshot"]
       60 SETTABLE                         R8 R7 R5
       61 FORGLOOP                         R2 2 ; [-36]
       63 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R1 0 2
        2 GETTABLEKS                       R4 R0 K0 ["poses"]
        4 GETTABLEKS                       R5 R0 K1 ["baselines"]
        6 SETLIST                          R1 R4 2 [1]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K2 ["Destroy"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 FORGLOOP                         R1 2 ; [-10]
       22 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+8]
        4 DUPTABLE                         R1 K1 [{"keyposes"}]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K0 ["keyposes"]
        9 GETUPVAL                         R2 0
       10 SETTABLE                         R1 R2 R0
       11 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+17]
        4 GETTABLEKS                       R3 R2 K0 ["keyposes"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 SUB                              R9 R6 R1
       10 FASTCALL1                        MATH_ABS R9 ; [+2]
       11 GETIMPORT                        R8 K3 [math.abs]
       13 CALL                             R8 1 1
       14 LOADK                            R9 K4 [0.0001]
       15 JUMPIFNOTLT                      R8 R9 ; [+2]
       17 RETURN                           R6 1
       18 FORGLOOP                         R3 1 ; [-10]
       20 LOADNIL                          R3
       21 RETURN                           R3 1

PROTO_13:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIFEQKNIL                     R4 ; [+18]
        4 GETTABLEKS                       R5 R4 K0 ["keyposes"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 SUB                              R11 R8 R1
       10 FASTCALL1                        MATH_ABS R11 ; [+2]
       11 GETIMPORT                        R10 K3 [math.abs]
       13 CALL                             R10 1 1
       14 LOADK                            R11 K4 [0.0001]
       15 JUMPIFNOTLT                      R10 R11 ; [+3]
       17 MOVE                             R3 R8
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R5 1 ; [-11]
       21 LOADNIL                          R3
       22 OR                               R2 R3 R1
       23 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+18]
        4 GETTABLEKS                       R4 R3 K0 ["keyposes"]
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 SUB                              R10 R7 R1
       10 FASTCALL1                        MATH_ABS R10 ; [+2]
       11 GETIMPORT                        R9 K3 [math.abs]
       13 CALL                             R9 1 1
       14 LOADK                            R10 K4 [0.0001]
       15 JUMPIFNOTLT                      R9 R10 ; [+3]
       17 MOVE                             R2 R7
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R4 1 ; [-11]
       21 LOADNIL                          R2
       22 JUMPIFNOTEQKNIL                  R2 ; [+4]
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 RETURN                           R3 2
       27 GETUPVAL                         R5 0
       28 GETTABLE                         R4 R5 R0
       29 GETTABLEKS                       R4 R4 K0 ["keyposes"]
       31 GETTABLE                         R3 R4 R2
       32 MOVE                             R4 R2
       33 RETURN                           R3 2

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 NEWTABLE                         R2 0 0
        4 JUMPIFEQKNIL                     R1 ; [+19]
        6 GETTABLEKS                       R3 R1 K0 ["keyposes"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       13 MOVE                             R9 R2
       14 MOVE                             R10 R6
       15 GETIMPORT                        R8 K3 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 1 ; [-8]
       20 GETIMPORT                        R3 K5 [table.sort]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIFEQKNIL                     R4 ; [+18]
        4 GETTABLEKS                       R5 R4 K0 ["keyposes"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 SUB                              R11 R8 R1
       10 FASTCALL1                        MATH_ABS R11 ; [+2]
       11 GETIMPORT                        R10 K3 [math.abs]
       13 CALL                             R10 1 1
       14 LOADK                            R11 K4 [0.0001]
       15 JUMPIFNOTLT                      R10 R11 ; [+3]
       17 MOVE                             R3 R8
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R5 1 ; [-11]
       21 LOADNIL                          R3
       22 JUMPIFNOTEQKNIL                  R3 ; [+3]
       24 LOADNIL                          R2
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R5 0
       27 GETTABLE                         R4 R5 R0
       28 GETTABLEKS                       R4 R4 K0 ["keyposes"]
       30 GETTABLE                         R2 R4 R3
       31 LOADB                            R3 0
       32 JUMPIFEQKNIL                     R2 ; [+17]
       34 GETTABLEKS                       R3 R2 K5 ["rigEditCaptured"]
       36 JUMPIF                           R3 ; [+13]
       37 LOADB                            R3 0
       38 GETTABLEKS                       R4 R2 K6 ["editedEffectors"]
       40 JUMPIFEQKNIL                     R4 ; [+9]
       42 GETTABLEKS                       R5 R2 K6 ["editedEffectors"]
       44 LENGTH                           R4 R5
       45 LOADN                            R5 0
       46 JUMPIFLT                         R5 R4 ; [+2]
       48 LOADB                            R3 0 +1
       49 LOADB                            R3 1
       50 RETURN                           R3 1

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFEQKNIL                     R2 ; [+11]
        6 GETTABLEKS                       R3 R2 K0 ["keyposes"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K1 ["interval"]
       13 SETTABLE                         R8 R1 R6
       14 FORGLOOP                         R3 2 ; [-4]
       16 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R7 0
        1 GETTABLE                         R6 R7 R0
        2 JUMPIFEQKNIL                     R6 ; [+18]
        4 GETTABLEKS                       R7 R6 K0 ["keyposes"]
        6 LOADNIL                          R8
        7 LOADNIL                          R9
        8 FORGPREP                         R7
        9 SUB                              R13 R10 R1
       10 FASTCALL1                        MATH_ABS R13 ; [+2]
       11 GETIMPORT                        R12 K3 [math.abs]
       13 CALL                             R12 1 1
       14 LOADK                            R13 K4 [0.0001]
       15 JUMPIFNOTLT                      R12 R13 ; [+3]
       17 MOVE                             R5 R10
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R7 1 ; [-11]
       21 LOADNIL                          R5
       22 JUMPIFNOTEQKNIL                  R5 ; [+25]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K5 ["canPlace"]
       27 MOVE                             R6 R1
       28 MOVE                             R7 R3
       29 MOVE                             R8 R4
       30 NEWTABLE                         R9 0 0
       32 GETUPVAL                         R11 0
       33 GETTABLE                         R10 R11 R0
       34 JUMPIFEQKNIL                     R10 ; [+11]
       36 GETTABLEKS                       R11 R10 K0 ["keyposes"]
       38 LOADNIL                          R12
       39 LOADNIL                          R13
       40 FORGPREP                         R11
       41 GETTABLEKS                       R16 R15 K6 ["interval"]
       43 SETTABLE                         R16 R9 R14
       44 FORGLOOP                         R11 2 ; [-4]
       46 CALL                             R5 4 1
       47 JUMPIF                           R5 ; [+2]
       48 LOADB                            R5 0
       49 RETURN                           R5 1
       50 GETUPVAL                         R6 0
       51 GETTABLE                         R5 R6 R0
       52 JUMPIFNOTEQKNIL                  R5 ; [+8]
       54 DUPTABLE                         R5 K7 [{"keyposes"}]
       55 NEWTABLE                         R6 0 0
       57 SETTABLEKS                       R6 R5 K0 ["keyposes"]
       59 GETUPVAL                         R6 0
       60 SETTABLE                         R5 R6 R0
       61 NAMECALL                         R6 R2 K8 ["Clone"]
       63 CALL                             R6 1 1
       64 LOADN                            R7 0
       65 SETTABLEKS                       R7 R6 K9 ["Time"]
       67 GETUPVAL                         R9 2
       68 GETTABLEKS                       R9 R9 K10 ["EDIT_POSE_SOURCE_TIME_ATTRIBUTE"]
       70 NAMECALL                         R7 R6 K11 ["GetAttribute"]
       72 CALL                             R7 2 1
       73 JUMPIFNOTEQKNIL                  R7 ; [+8]
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R9 R9 K10 ["EDIT_POSE_SOURCE_TIME_ATTRIBUTE"]
       78 MOVE                             R10 R1
       79 NAMECALL                         R7 R6 K12 ["SetAttribute"]
       81 CALL                             R7 3 0
       82 GETTABLEKS                       R7 R5 K0 ["keyposes"]
       84 DUPTABLE                         R8 K17 [{["pose"], ["baseline"], ["interval"], ["rigEditCaptured"] = False}]
       85 SETTABLEKS                       R6 R8 K13 ["pose"]
       87 NAMECALL                         R9 R6 K8 ["Clone"]
       89 CALL                             R9 1 1
       90 SETTABLEKS                       R9 R8 K14 ["baseline"]
       92 GETIMPORT                        R9 K20 [table.clone]
       94 MOVE                             R10 R3
       95 CALL                             R9 1 1
       96 SETTABLEKS                       R9 R8 K6 ["interval"]
       98 SETTABLE                         R8 R7 R1
       99 LOADB                            R7 1
      100 RETURN                           R7 1

PROTO_19:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIFEQKNIL                     R4 ; [+18]
        4 GETTABLEKS                       R5 R4 K0 ["keyposes"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 SUB                              R11 R8 R1
       10 FASTCALL1                        MATH_ABS R11 ; [+2]
       11 GETIMPORT                        R10 K3 [math.abs]
       13 CALL                             R10 1 1
       14 LOADK                            R11 K4 [0.0001]
       15 JUMPIFNOTLT                      R10 R11 ; [+3]
       17 MOVE                             R3 R8
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R5 1 ; [-11]
       21 LOADNIL                          R3
       22 JUMPIFNOTEQKNIL                  R3 ; [+3]
       24 LOADNIL                          R2
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R5 0
       27 GETTABLE                         R4 R5 R0
       28 GETTABLEKS                       R4 R4 K0 ["keyposes"]
       30 GETTABLE                         R2 R4 R3
       31 JUMPIFNOTEQKNIL                  R2 ; [+3]
       33 LOADNIL                          R3
       34 RETURN                           R3 1
       35 NEWTABLE                         R3 0 0
       37 GETTABLEKS                       R4 R2 K5 ["pose"]
       39 NAMECALL                         R4 R4 K6 ["GetDescendants"]
       41 CALL                             R4 1 3
       42 FORGPREP                         R4
       43 LOADK                            R11 K7 ["Pose"]
       44 NAMECALL                         R9 R8 K8 ["IsA"]
       46 CALL                             R9 2 1
       47 JUMPIFNOT                        R9 ; [+10]
       48 GETTABLEKS                       R9 R8 K9 ["Weight"]
       50 LOADN                            R10 0
       51 JUMPIFNOTLT                      R10 R9 ; [+6]
       53 GETTABLEKS                       R9 R8 K10 ["Name"]
       55 GETTABLEKS                       R10 R8 K11 ["CFrame"]
       57 SETTABLE                         R10 R3 R9
       58 FORGLOOP                         R4 2 ; [-16]
       60 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIFEQKNIL                     R4 ; [+18]
        4 GETTABLEKS                       R5 R4 K0 ["keyposes"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 SUB                              R11 R8 R1
       10 FASTCALL1                        MATH_ABS R11 ; [+2]
       11 GETIMPORT                        R10 K3 [math.abs]
       13 CALL                             R10 1 1
       14 LOADK                            R11 K4 [0.0001]
       15 JUMPIFNOTLT                      R10 R11 ; [+3]
       17 MOVE                             R3 R8
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R5 1 ; [-11]
       21 LOADNIL                          R3
       22 JUMPIFNOTEQKNIL                  R3 ; [+3]
       24 LOADNIL                          R2
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R5 0
       27 GETTABLE                         R4 R5 R0
       28 GETTABLEKS                       R4 R4 K0 ["keyposes"]
       30 GETTABLE                         R2 R4 R3
       31 JUMPIFEQKNIL                     R2 ; [+11]
       33 GETTABLEKS                       R4 R2 K5 ["pose"]
       35 NAMECALL                         R5 R4 K6 ["Clone"]
       37 CALL                             R5 1 1
       38 MOVE                             R3 R5
       39 LOADN                            R5 0
       40 SETTABLEKS                       R5 R3 K7 ["Time"]
       42 RETURN                           R3 1
       43 LOADNIL                          R3
       44 RETURN                           R3 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 1
        3 JUMPIFEQKNIL                     R1 ; [+5]
        5 GETUPVAL                         R3 2
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 JUMP                             ; [+2]
        9 NEWTABLE                         R3 0 0
       11 CALL                             R2 1 1
       12 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K0 ["keyposes"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R7 R6 K1 ["rigEditCaptured"]
       13 JUMPIF                           R7 ; [+13]
       14 LOADB                            R7 0
       15 GETTABLEKS                       R8 R6 K2 ["editedEffectors"]
       17 JUMPIFEQKNIL                     R8 ; [+9]
       19 GETTABLEKS                       R9 R6 K2 ["editedEffectors"]
       21 LENGTH                           R8 R9
       22 LOADN                            R9 0
       23 JUMPIFLT                         R9 R8 ; [+2]
       25 LOADB                            R7 0 +1
       26 LOADB                            R7 1
       27 JUMPIFNOT                        R7 ; [+2]
       28 LOADB                            R7 1
       29 RETURN                           R7 1
       30 FORGLOOP                         R2 2 ; [-20]
       32 LOADB                            R2 0
       33 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIFEQKNIL                     R4 ; [+18]
        4 GETTABLEKS                       R5 R4 K0 ["keyposes"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 SUB                              R11 R8 R1
       10 FASTCALL1                        MATH_ABS R11 ; [+2]
       11 GETIMPORT                        R10 K3 [math.abs]
       13 CALL                             R10 1 1
       14 LOADK                            R11 K4 [0.0001]
       15 JUMPIFNOTLT                      R10 R11 ; [+3]
       17 MOVE                             R3 R8
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R5 1 ; [-11]
       21 LOADNIL                          R3
       22 JUMPIFNOTEQKNIL                  R3 ; [+3]
       24 LOADNIL                          R2
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R5 0
       27 GETTABLE                         R4 R5 R0
       28 GETTABLEKS                       R4 R4 K0 ["keyposes"]
       30 GETTABLE                         R2 R4 R3
       31 GETUPVAL                         R3 1
       32 JUMPIFEQKNIL                     R2 ; [+4]
       34 GETTABLEKS                       R4 R2 K5 ["dragSnapshot"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R4
       38 CALL                             R3 1 1
       39 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R8 0
        1 GETTABLE                         R7 R8 R0
        2 JUMPIFEQKNIL                     R7 ; [+18]
        4 GETTABLEKS                       R8 R7 K0 ["keyposes"]
        6 LOADNIL                          R9
        7 LOADNIL                          R10
        8 FORGPREP                         R8
        9 SUB                              R14 R11 R1
       10 FASTCALL1                        MATH_ABS R14 ; [+2]
       11 GETIMPORT                        R13 K3 [math.abs]
       13 CALL                             R13 1 1
       14 LOADK                            R14 K4 [0.0001]
       15 JUMPIFNOTLT                      R13 R14 ; [+3]
       17 MOVE                             R6 R11
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R8 1 ; [-11]
       21 LOADNIL                          R6
       22 JUMPIFNOTEQKNIL                  R6 ; [+3]
       24 LOADNIL                          R5
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R8 0
       27 GETTABLE                         R7 R8 R0
       28 GETTABLEKS                       R7 R7 K0 ["keyposes"]
       30 GETTABLE                         R5 R7 R6
       31 JUMPIFNOTEQKNIL                  R5 ; [+3]
       33 LOADB                            R6 0
       34 RETURN                           R6 1
       35 GETTABLEKS                       R6 R5 K5 ["pose"]
       37 NAMECALL                         R6 R6 K6 ["Destroy"]
       39 CALL                             R6 1 0
       40 NAMECALL                         R6 R2 K7 ["Clone"]
       42 CALL                             R6 1 1
       43 LOADN                            R7 0
       44 SETTABLEKS                       R7 R6 K8 ["Time"]
       46 SETTABLEKS                       R6 R5 K5 ["pose"]
       48 LOADB                            R6 1
       49 SETTABLEKS                       R6 R5 K9 ["rigEditCaptured"]
       51 GETIMPORT                        R6 K12 [table.clone]
       53 GETTABLEKS                       R7 R5 K13 ["editedEffectors"]
       55 JUMPIF                           R7 ; [+2]
       56 NEWTABLE                         R7 0 0
       58 CALL                             R6 1 1
       59 MOVE                             R7 R3
       60 LOADNIL                          R8
       61 LOADNIL                          R9
       62 FORGPREP                         R7
       63 GETIMPORT                        R12 K15 [table.find]
       65 MOVE                             R13 R6
       66 MOVE                             R14 R11
       67 CALL                             R12 2 1
       68 JUMPIFNOTEQKNIL                  R12 ; [+8]
       70 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       72 MOVE                             R13 R6
       73 MOVE                             R14 R11
       74 GETIMPORT                        R12 K17 [table.insert]
       76 CALL                             R12 2 0
       77 FORGLOOP                         R7 2 ; [-15]
       79 SETTABLEKS                       R6 R5 K13 ["editedEffectors"]
       81 JUMPIFEQKNIL                     R4 ; [+6]
       83 GETUPVAL                         R7 1
       84 MOVE                             R8 R4
       85 CALL                             R7 1 1
       86 SETTABLEKS                       R7 R5 K18 ["dragSnapshot"]
       88 LOADB                            R7 1
       89 RETURN                           R7 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["lastClickedTime"]
        6 RETURN                           R2 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+8]
        4 DUPTABLE                         R2 K1 [{"keyposes"}]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K0 ["keyposes"]
        9 GETUPVAL                         R3 0
       10 SETTABLE                         R2 R3 R0
       11 SETTABLEKS                       R1 R2 K2 ["lastClickedTime"]
       13 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R6 0
        1 GETTABLE                         R5 R6 R0
        2 JUMPIFEQKNIL                     R5 ; [+18]
        4 GETTABLEKS                       R6 R5 K0 ["keyposes"]
        6 LOADNIL                          R7
        7 LOADNIL                          R8
        8 FORGPREP                         R6
        9 SUB                              R12 R9 R1
       10 FASTCALL1                        MATH_ABS R12 ; [+2]
       11 GETIMPORT                        R11 K3 [math.abs]
       13 CALL                             R11 1 1
       14 LOADK                            R12 K4 [0.0001]
       15 JUMPIFNOTLT                      R11 R12 ; [+3]
       17 MOVE                             R4 R9
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R6 1 ; [-11]
       21 LOADNIL                          R4
       22 JUMPIFNOTEQKNIL                  R4 ; [+4]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 JUMP                             ; [+6]
       27 GETUPVAL                         R6 0
       28 GETTABLE                         R5 R6 R0
       29 GETTABLEKS                       R5 R5 K0 ["keyposes"]
       31 GETTABLE                         R2 R5 R4
       32 MOVE                             R3 R4
       33 JUMPIFEQKNIL                     R2 ; [+3]
       35 JUMPIFNOTEQKNIL                  R3 ; [+3]
       37 LOADB                            R4 0
       38 RETURN                           R4 1
       39 GETUPVAL                         R5 0
       40 GETTABLE                         R4 R5 R0
       41 GETTABLEKS                       R5 R2 K5 ["pose"]
       43 NAMECALL                         R5 R5 K6 ["Destroy"]
       45 CALL                             R5 1 0
       46 GETTABLEKS                       R5 R2 K7 ["baseline"]
       48 NAMECALL                         R5 R5 K6 ["Destroy"]
       50 CALL                             R5 1 0
       51 GETTABLEKS                       R5 R4 K0 ["keyposes"]
       53 LOADNIL                          R6
       54 SETTABLE                         R6 R5 R3
       55 GETTABLEKS                       R5 R4 K8 ["lastClickedTime"]
       57 JUMPIFEQKNIL                     R5 ; [+14]
       59 GETTABLEKS                       R7 R4 K8 ["lastClickedTime"]
       61 SUB                              R6 R7 R3
       62 FASTCALL1                        MATH_ABS R6 ; [+2]
       63 GETIMPORT                        R5 K3 [math.abs]
       65 CALL                             R5 1 1
       66 LOADK                            R6 K4 [0.0001]
       67 JUMPIFNOTLT                      R5 R6 ; [+4]
       69 LOADNIL                          R5
       70 SETTABLEKS                       R5 R4 K8 ["lastClickedTime"]
       72 LOADB                            R5 1
       73 RETURN                           R5 1

PROTO_28:
        0 GETUPVAL                         R7 0
        1 GETTABLE                         R6 R7 R0
        2 JUMPIFEQKNIL                     R6 ; [+18]
        4 GETTABLEKS                       R7 R6 K0 ["keyposes"]
        6 LOADNIL                          R8
        7 LOADNIL                          R9
        8 FORGPREP                         R7
        9 SUB                              R13 R10 R1
       10 FASTCALL1                        MATH_ABS R13 ; [+2]
       11 GETIMPORT                        R12 K3 [math.abs]
       13 CALL                             R12 1 1
       14 LOADK                            R13 K4 [0.0001]
       15 JUMPIFNOTLT                      R12 R13 ; [+3]
       17 MOVE                             R5 R10
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R7 1 ; [-11]
       21 LOADNIL                          R5
       22 JUMPIFNOTEQKNIL                  R5 ; [+4]
       24 LOADNIL                          R3
       25 LOADNIL                          R4
       26 JUMP                             ; [+6]
       27 GETUPVAL                         R7 0
       28 GETTABLE                         R6 R7 R0
       29 GETTABLEKS                       R6 R6 K0 ["keyposes"]
       31 GETTABLE                         R3 R6 R5
       32 MOVE                             R4 R5
       33 JUMPIFEQKNIL                     R3 ; [+11]
       35 JUMPIFEQKNIL                     R4 ; [+9]
       37 SUB                              R6 R4 R2
       38 FASTCALL1                        MATH_ABS R6 ; [+2]
       39 GETIMPORT                        R5 K3 [math.abs]
       41 CALL                             R5 1 1
       42 LOADK                            R6 K4 [0.0001]
       43 JUMPIFNOTLT                      R5 R6 ; [+2]
       45 RETURN                           R0 0
       46 GETUPVAL                         R6 0
       47 GETTABLE                         R5 R6 R0
       48 GETTABLEKS                       R6 R5 K0 ["keyposes"]
       50 LOADNIL                          R7
       51 SETTABLE                         R7 R6 R4
       52 GETTABLEKS                       R6 R5 K0 ["keyposes"]
       54 SETTABLE                         R3 R6 R2
       55 GETTABLEKS                       R6 R5 K5 ["lastClickedTime"]
       57 JUMPIFEQKNIL                     R6 ; [+13]
       59 GETTABLEKS                       R8 R5 K5 ["lastClickedTime"]
       61 SUB                              R7 R8 R4
       62 FASTCALL1                        MATH_ABS R7 ; [+2]
       63 GETIMPORT                        R6 K3 [math.abs]
       65 CALL                             R6 1 1
       66 LOADK                            R7 K4 [0.0001]
       67 JUMPIFNOTLT                      R6 R7 ; [+3]
       69 SETTABLEKS                       R2 R5 K5 ["lastClickedTime"]
       71 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R10 0
        1 GETTABLE                         R9 R10 R0
        2 JUMPIFEQKNIL                     R9 ; [+18]
        4 GETTABLEKS                       R10 R9 K0 ["keyposes"]
        6 LOADNIL                          R11
        7 LOADNIL                          R12
        8 FORGPREP                         R10
        9 SUB                              R16 R13 R1
       10 FASTCALL1                        MATH_ABS R16 ; [+2]
       11 GETIMPORT                        R15 K3 [math.abs]
       13 CALL                             R15 1 1
       14 LOADK                            R16 K4 [0.0001]
       15 JUMPIFNOTLT                      R15 R16 ; [+3]
       17 MOVE                             R8 R13
       18 JUMP                             ; [+3]
       19 FORGLOOP                         R10 1 ; [-11]
       21 LOADNIL                          R8
       22 JUMPIFNOTEQKNIL                  R8 ; [+4]
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 JUMP                             ; [+6]
       27 GETUPVAL                         R10 0
       28 GETTABLE                         R9 R10 R0
       29 GETTABLEKS                       R9 R9 K0 ["keyposes"]
       31 GETTABLE                         R6 R9 R8
       32 MOVE                             R7 R8
       33 JUMPIFEQKNIL                     R6 ; [+28]
       35 JUMPIFEQKNIL                     R7 ; [+26]
       37 GETUPVAL                         R8 1
       38 GETTABLEKS                       R8 R8 K5 ["canPlace"]
       40 MOVE                             R9 R2
       41 MOVE                             R10 R3
       42 MOVE                             R11 R4
       43 NEWTABLE                         R12 0 0
       45 GETUPVAL                         R14 0
       46 GETTABLE                         R13 R14 R0
       47 JUMPIFEQKNIL                     R13 ; [+11]
       49 GETTABLEKS                       R14 R13 K0 ["keyposes"]
       51 LOADNIL                          R15
       52 LOADNIL                          R16
       53 FORGPREP                         R14
       54 GETTABLEKS                       R19 R18 K6 ["interval"]
       56 SETTABLE                         R19 R12 R17
       57 FORGLOOP                         R14 2 ; [-4]
       59 MOVE                             R13 R7
       60 CALL                             R8 5 1
       61 JUMPIF                           R8 ; [+2]
       62 LOADB                            R8 0
       63 RETURN                           R8 1
       64 GETUPVAL                         R10 0
       65 GETTABLE                         R9 R10 R0
       66 JUMPIFEQKNIL                     R9 ; [+18]
       68 GETTABLEKS                       R10 R9 K0 ["keyposes"]
       70 LOADNIL                          R11
       71 LOADNIL                          R12
       72 FORGPREP                         R10
       73 SUB                              R16 R13 R2
       74 FASTCALL1                        MATH_ABS R16 ; [+2]
       75 GETIMPORT                        R15 K3 [math.abs]
       77 CALL                             R15 1 1
       78 LOADK                            R16 K4 [0.0001]
       79 JUMPIFNOTLT                      R15 R16 ; [+3]
       81 MOVE                             R8 R13
       82 JUMP                             ; [+3]
       83 FORGLOOP                         R10 1 ; [-11]
       85 LOADNIL                          R8
       86 JUMPIFEQKNIL                     R8 ; [+5]
       88 JUMPIFEQ                         R8 R7 ; [+3]
       90 LOADB                            R9 0
       91 RETURN                           R9 1
       92 SUB                              R11 R2 R7
       93 FASTCALL1                        MATH_ABS R11 ; [+2]
       94 GETIMPORT                        R10 K3 [math.abs]
       96 CALL                             R10 1 1
       97 LOADK                            R11 K4 [0.0001]
       98 JUMPIFLT                         R10 R11 ; [+2]
      100 LOADB                            R9 0 +1
      101 LOADB                            R9 1
      102 JUMPIFNOT                        R9 ; [+17]
      103 GETUPVAL                         R10 1
      104 GETTABLEKS                       R10 R10 K7 ["areBoundsEqual"]
      106 GETTABLEKS                       R11 R6 K6 ["interval"]
      108 MOVE                             R12 R3
      109 CALL                             R10 2 1
      110 JUMPIFNOT                        R10 ; [+2]
      111 LOADB                            R10 0
      112 RETURN                           R10 1
      113 GETIMPORT                        R10 K10 [table.clone]
      115 MOVE                             R11 R3
      116 CALL                             R10 1 1
      117 SETTABLEKS                       R10 R6 K6 ["interval"]
      119 JUMP                             ; [+148]
      120 GETUPVAL                         R14 0
      121 GETTABLE                         R13 R14 R0
      122 JUMPIFEQKNIL                     R13 ; [+18]
      124 GETTABLEKS                       R14 R13 K0 ["keyposes"]
      126 LOADNIL                          R15
      127 LOADNIL                          R16
      128 FORGPREP                         R14
      129 SUB                              R20 R17 R7
      130 FASTCALL1                        MATH_ABS R20 ; [+2]
      131 GETIMPORT                        R19 K3 [math.abs]
      133 CALL                             R19 1 1
      134 LOADK                            R20 K4 [0.0001]
      135 JUMPIFNOTLT                      R19 R20 ; [+3]
      137 MOVE                             R12 R17
      138 JUMP                             ; [+3]
      139 FORGLOOP                         R14 1 ; [-11]
      141 LOADNIL                          R12
      142 JUMPIFNOTEQKNIL                  R12 ; [+3]
      144 LOADNIL                          R11
      145 JUMP                             ; [+5]
      146 GETUPVAL                         R14 0
      147 GETTABLE                         R13 R14 R0
      148 GETTABLEKS                       R13 R13 K0 ["keyposes"]
      150 GETTABLE                         R11 R13 R12
      151 LOADB                            R10 0
      152 JUMPIFEQKNIL                     R11 ; [+17]
      154 GETTABLEKS                       R10 R11 K11 ["rigEditCaptured"]
      156 JUMPIF                           R10 ; [+13]
      157 LOADB                            R10 0
      158 GETTABLEKS                       R12 R11 K12 ["editedEffectors"]
      160 JUMPIFEQKNIL                     R12 ; [+9]
      162 GETTABLEKS                       R13 R11 K12 ["editedEffectors"]
      164 LENGTH                           R12 R13
      165 LOADN                            R13 0
      166 JUMPIFLT                         R13 R12 ; [+2]
      168 LOADB                            R10 0 +1
      169 LOADB                            R10 1
      170 JUMPIFNOT                        R10 ; [+12]
      171 GETUPVAL                         R10 2
      172 MOVE                             R11 R0
      173 MOVE                             R12 R7
      174 MOVE                             R13 R2
      175 CALL                             R10 3 0
      176 GETIMPORT                        R10 K10 [table.clone]
      178 MOVE                             R11 R3
      179 CALL                             R10 1 1
      180 SETTABLEKS                       R10 R6 K6 ["interval"]
      182 JUMP                             ; [+85]
      183 JUMPIFNOTEQKNIL                  R5 ; [+3]
      185 LOADB                            R10 0
      186 RETURN                           R10 1
      187 GETUPVAL                         R14 0
      188 GETTABLE                         R13 R14 R0
      189 JUMPIFEQKNIL                     R13 ; [+18]
      191 GETTABLEKS                       R14 R13 K0 ["keyposes"]
      193 LOADNIL                          R15
      194 LOADNIL                          R16
      195 FORGPREP                         R14
      196 SUB                              R20 R17 R7
      197 FASTCALL1                        MATH_ABS R20 ; [+2]
      198 GETIMPORT                        R19 K3 [math.abs]
      200 CALL                             R19 1 1
      201 LOADK                            R20 K4 [0.0001]
      202 JUMPIFNOTLT                      R19 R20 ; [+3]
      204 MOVE                             R12 R17
      205 JUMP                             ; [+3]
      206 FORGLOOP                         R14 1 ; [-11]
      208 LOADNIL                          R12
      209 JUMPIFNOTEQKNIL                  R12 ; [+4]
      211 LOADNIL                          R10
      212 LOADNIL                          R11
      213 JUMP                             ; [+6]
      214 GETUPVAL                         R14 0
      215 GETTABLE                         R13 R14 R0
      216 GETTABLEKS                       R13 R13 K0 ["keyposes"]
      218 GETTABLE                         R10 R13 R12
      219 MOVE                             R11 R12
      220 JUMPIFEQKNIL                     R10 ; [+37]
      222 JUMPIFNOTEQKNIL                  R11 ; [+2]
      224 JUMP                             ; [+33]
      225 GETUPVAL                         R13 0
      226 GETTABLE                         R12 R13 R0
      227 GETTABLEKS                       R13 R10 K13 ["pose"]
      229 NAMECALL                         R13 R13 K14 ["Destroy"]
      231 CALL                             R13 1 0
      232 GETTABLEKS                       R13 R10 K15 ["baseline"]
      234 NAMECALL                         R13 R13 K14 ["Destroy"]
      236 CALL                             R13 1 0
      237 GETTABLEKS                       R13 R12 K0 ["keyposes"]
      239 LOADNIL                          R14
      240 SETTABLE                         R14 R13 R11
      241 GETTABLEKS                       R13 R12 K16 ["lastClickedTime"]
      243 JUMPIFEQKNIL                     R13 ; [+14]
      245 GETTABLEKS                       R15 R12 K16 ["lastClickedTime"]
      247 SUB                              R14 R15 R11
      248 FASTCALL1                        MATH_ABS R14 ; [+2]
      249 GETIMPORT                        R13 K3 [math.abs]
      251 CALL                             R13 1 1
      252 LOADK                            R14 K4 [0.0001]
      253 JUMPIFNOTLT                      R13 R14 ; [+4]
      255 LOADNIL                          R13
      256 SETTABLEKS                       R13 R12 K16 ["lastClickedTime"]
      258 GETUPVAL                         R10 3
      259 MOVE                             R11 R0
      260 MOVE                             R12 R2
      261 MOVE                             R13 R5
      262 MOVE                             R14 R3
      263 MOVE                             R15 R4
      264 CALL                             R10 5 1
      265 JUMPIF                           R10 ; [+2]
      266 LOADB                            R10 0
      267 RETURN                           R10 1
      268 GETUPVAL                         R11 0
      269 GETTABLE                         R10 R11 R0
      270 JUMPIFNOTEQKNIL                  R10 ; [+8]
      272 DUPTABLE                         R10 K17 [{"keyposes"}]
      273 NEWTABLE                         R11 0 0
      275 SETTABLEKS                       R11 R10 K0 ["keyposes"]
      277 GETUPVAL                         R11 0
      278 SETTABLE                         R10 R11 R0
      279 JUMPIFNOT                        R9 ; [+2]
      280 MOVE                             R11 R7
      281 JUMP                             ; [+1]
      282 MOVE                             R11 R2
      283 SETTABLEKS                       R11 R10 K16 ["lastClickedTime"]
      285 LOADB                            R10 1
      286 RETURN                           R10 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+26]
        4 GETTABLEKS                       R2 R1 K0 ["keyposes"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K1 ["pose"]
       11 NAMECALL                         R7 R7 K2 ["Destroy"]
       13 CALL                             R7 1 0
       14 GETTABLEKS                       R7 R6 K3 ["baseline"]
       16 NAMECALL                         R7 R7 K2 ["Destroy"]
       18 CALL                             R7 1 0
       19 FORGLOOP                         R2 2 ; [-11]
       21 GETIMPORT                        R2 K6 [table.clear]
       23 GETTABLEKS                       R3 R1 K0 ["keyposes"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 0
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R2 R0
       29 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 DUPTABLE                         R2 K1 [{"workspace"}]
        3 JUMPIFEQKNIL                     R1 ; [+5]
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 JUMP                             ; [+5]
        9 DUPTABLE                         R3 K3 [{"keyposes"}]
       10 NEWTABLE                         R4 0 0
       12 SETTABLEKS                       R4 R3 K2 ["keyposes"]
       14 SETTABLEKS                       R3 R2 K0 ["workspace"]
       16 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+26]
        4 GETTABLEKS                       R3 R2 K0 ["keyposes"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 GETTABLEKS                       R8 R7 K1 ["pose"]
       11 NAMECALL                         R8 R8 K2 ["Destroy"]
       13 CALL                             R8 1 0
       14 GETTABLEKS                       R8 R7 K3 ["baseline"]
       16 NAMECALL                         R8 R8 K2 ["Destroy"]
       18 CALL                             R8 1 0
       19 FORGLOOP                         R3 2 ; [-11]
       21 GETIMPORT                        R3 K6 [table.clear]
       23 GETTABLEKS                       R4 R2 K0 ["keyposes"]
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 0
       27 LOADNIL                          R4
       28 SETTABLE                         R4 R3 R0
       29 GETUPVAL                         R2 0
       30 GETUPVAL                         R3 1
       31 GETTABLEKS                       R4 R1 K7 ["workspace"]
       33 CALL                             R3 1 1
       34 SETTABLE                         R3 R2 R0
       35 RETURN                           R0 0

PROTO_33:
        0 JUMPIFEQKNIL                     R0 ; [+25]
        2 GETTABLEKS                       R1 R0 K0 ["workspace"]
        4 GETTABLEKS                       R2 R1 K1 ["keyposes"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K2 ["pose"]
       11 NAMECALL                         R7 R7 K3 ["Destroy"]
       13 CALL                             R7 1 0
       14 GETTABLEKS                       R7 R6 K4 ["baseline"]
       16 NAMECALL                         R7 R7 K3 ["Destroy"]
       18 CALL                             R7 1 0
       19 FORGLOOP                         R2 2 ; [-11]
       21 GETIMPORT                        R2 K7 [table.clear]
       23 GETTABLEKS                       R3 R1 K1 ["keyposes"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R3 1
        3 JUMPIFEQKNIL                     R2 ; [+5]
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R2
        7 CALL                             R4 1 1
        8 JUMP                             ; [+5]
        9 DUPTABLE                         R4 K1 [{"keyposes"}]
       10 NEWTABLE                         R5 0 0
       12 SETTABLEKS                       R5 R4 K0 ["keyposes"]
       14 CALL                             R3 1 1
       15 MOVE                             R5 R1
       16 MOVE                             R6 R3
       17 FASTPCALL                        pcall 2 ; [+2]
       18 GETIMPORT                        R4 K3 [pcall]
       20 CALL                             R4 2 2
       21 GETUPVAL                         R6 3
       22 MOVE                             R7 R3
       23 CALL                             R6 1 0
       24 JUMPIF                           R4 ; [+5]
       25 GETIMPORT                        R6 K5 [error]
       27 MOVE                             R7 R5
       28 LOADN                            R8 0
       29 CALL                             R6 2 0
       30 RETURN                           R5 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R0
        5 JUMPIFEQKNIL                     R3 ; [+11]
        7 GETTABLEKS                       R4 R3 K0 ["keyposes"]
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R9 R8 K1 ["interval"]
       14 SETTABLE                         R9 R2 R7
       15 FORGLOOP                         R4 2 ; [-4]
       17 CALL                             R1 1 1
       18 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 0
        5 GETTABLE                         R5 R6 R3
        6 JUMPIFEQKNIL                     R5 ; [+26]
        8 GETTABLEKS                       R6 R5 K0 ["keyposes"]
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 FORGPREP                         R6
       13 GETTABLEKS                       R11 R10 K1 ["pose"]
       15 NAMECALL                         R11 R11 K2 ["Destroy"]
       17 CALL                             R11 1 0
       18 GETTABLEKS                       R11 R10 K3 ["baseline"]
       20 NAMECALL                         R11 R11 K2 ["Destroy"]
       22 CALL                             R11 1 0
       23 FORGLOOP                         R6 2 ; [-11]
       25 GETIMPORT                        R6 K6 [table.clear]
       27 GETTABLEKS                       R7 R5 K0 ["keyposes"]
       29 CALL                             R6 1 0
       30 GETUPVAL                         R6 0
       31 LOADNIL                          R7
       32 SETTABLE                         R7 R6 R3
       33 FORGLOOP                         R0 1 ; [-30]
       35 RETURN                           R0 0

PROTO_37:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R3 P2
        7 CAPTURE                          VAL R0
        8 NEWCLOSURE                       R4 P3
        9 CAPTURE                          VAL R0
       10 NEWCLOSURE                       R5 P4
       11 CAPTURE                          VAL R0
       12 NEWCLOSURE                       R6 P5
       13 CAPTURE                          VAL R0
       14 NEWCLOSURE                       R7 P6
       15 CAPTURE                          VAL R0
       16 NEWCLOSURE                       R8 P7
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 NEWCLOSURE                       R9 P8
       21 CAPTURE                          VAL R0
       22 NEWCLOSURE                       R10 P9
       23 CAPTURE                          VAL R0
       24 NEWCLOSURE                       R11 P10
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 NEWCLOSURE                       R12 P11
       29 CAPTURE                          VAL R0
       30 NEWCLOSURE                       R13 P12
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U2
       33 NEWCLOSURE                       R14 P13
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U2
       36 NEWCLOSURE                       R15 P14
       37 CAPTURE                          VAL R0
       38 NEWCLOSURE                       R16 P15
       39 CAPTURE                          VAL R0
       40 NEWCLOSURE                       R17 P16
       41 CAPTURE                          VAL R0
       42 NEWCLOSURE                       R18 P17
       43 CAPTURE                          VAL R0
       44 NEWCLOSURE                       R19 P18
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R18
       48 CAPTURE                          VAL R8
       49 NEWCLOSURE                       R20 P19
       50 CAPTURE                          VAL R0
       51 NEWCLOSURE                       R21 P20
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U4
       54 NEWCLOSURE                       R22 P21
       55 CAPTURE                          VAL R0
       56 CAPTURE                          UPVAL U4
       57 DUPCLOSURE                       R23 K0 [PROTO_33]
       58 NEWCLOSURE                       R24 P23
       59 CAPTURE                          VAL R0
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U6
       63 DUPTABLE                         R25 K23 [{"normalizeSavedTime", "findSavedTime", "getKeyposeTimes", "getSavedPoseIntervals", "getSavedPoseTransforms", "copySavedPose", "isSavedKeyframeAuthored", "hasEditedKeyframes", "getSavedDragEditedEffectors", "getDragEditSnapshotAtTime", "getLastClickedTime", "insertGeneratedKeyframe", "commitPoseEdit", "setLastClickedTime", "updateSavedPoseInterval", "deleteSavedKeyframe", "clearSavedKeyframes", "withSnapshot", "snapshot", "restore", "destroySnapshot", "destroy"}]
       64 SETTABLEKS                       R3 R25 K1 ["normalizeSavedTime"]
       66 SETTABLEKS                       R2 R25 K2 ["findSavedTime"]
       68 SETTABLEKS                       R5 R25 K3 ["getKeyposeTimes"]
       70 NEWCLOSURE                       R26 P24
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R26 R25 K4 ["getSavedPoseIntervals"]
       75 SETTABLEKS                       R9 R25 K5 ["getSavedPoseTransforms"]
       77 SETTABLEKS                       R10 R25 K6 ["copySavedPose"]
       79 SETTABLEKS                       R6 R25 K7 ["isSavedKeyframeAuthored"]
       81 SETTABLEKS                       R12 R25 K8 ["hasEditedKeyframes"]
       83 SETTABLEKS                       R11 R25 K9 ["getSavedDragEditedEffectors"]
       85 SETTABLEKS                       R13 R25 K10 ["getDragEditSnapshotAtTime"]
       87 SETTABLEKS                       R15 R25 K11 ["getLastClickedTime"]
       89 SETTABLEKS                       R8 R25 K12 ["insertGeneratedKeyframe"]
       91 SETTABLEKS                       R14 R25 K13 ["commitPoseEdit"]
       93 SETTABLEKS                       R16 R25 K14 ["setLastClickedTime"]
       95 SETTABLEKS                       R19 R25 K15 ["updateSavedPoseInterval"]
       97 SETTABLEKS                       R17 R25 K16 ["deleteSavedKeyframe"]
       99 SETTABLEKS                       R20 R25 K17 ["clearSavedKeyframes"]
      101 SETTABLEKS                       R24 R25 K18 ["withSnapshot"]
      103 SETTABLEKS                       R21 R25 K19 ["snapshot"]
      105 SETTABLEKS                       R22 R25 K20 ["restore"]
      107 SETTABLEKS                       R23 R25 K21 ["destroySnapshot"]
      109 NEWCLOSURE                       R26 P25
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R26 R25 K22 ["destroy"]
      113 RETURN                           R25 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenConstants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K9 ["Posing"]
       24 GETTABLEKS                       R3 R3 K10 ["DEPRECATED_DragEditSnapshot"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Util"]
       31 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       33 GETTABLEKS                       R4 R4 K9 ["Posing"]
       35 GETTABLEKS                       R4 R4 K11 ["PoseInterval"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K12 ["Types"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K13 [PROTO_0]
       44 DUPCLOSURE                       R6 K14 [PROTO_1]
       45 CAPTURE                          VAL R6
       46 DUPCLOSURE                       R7 K15 [PROTO_2]
       47 DUPCLOSURE                       R8 K16 [PROTO_3]
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R9 K17 [PROTO_4]
       50 DUPCLOSURE                       R10 K18 [PROTO_5]
       51 CAPTURE                          VAL R8
       52 DUPCLOSURE                       R11 K19 [PROTO_6]
       53 DUPCLOSURE                       R12 K20 [PROTO_7]
       54 DUPCLOSURE                       R13 K21 [PROTO_8]
       55 DUPCLOSURE                       R14 K22 [PROTO_9]
       56 DUPCLOSURE                       R15 K23 [PROTO_10]
       57 DUPCLOSURE                       R16 K24 [PROTO_37]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R13
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R14
       64 CAPTURE                          VAL R15
       65 RETURN                           R16 1
