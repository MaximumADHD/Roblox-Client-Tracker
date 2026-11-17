PROTO_0:
        0 ADDK                             R2 R0 K0 [0.5]
        1 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        2 GETIMPORT                        R1 K3 [math.floor]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R3 K5 [{[1], ["goal"], ["pos"], ["vel"] = 0}]
        1 SETTABLEKS                       R0 R3 K0 ["freq"]
        3 SETTABLEKS                       R1 R3 K1 ["goal"]
        5 SETTABLEKS                       R1 R3 K2 ["pos"]
        7 GETUPVAL                         R4 0
        8 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       10 GETIMPORT                        R2 K7 [setmetatable]
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K2 ["freq"]
        2 MULK                             R3 R4 K1 [2]
        3 MULK                             R2 R3 K0 [3.141592653589793]
        4 GETTABLEKS                       R3 R0 K3 ["goal"]
        6 GETTABLEKS                       R4 R0 K4 ["pos"]
        8 GETTABLEKS                       R5 R0 K5 ["vel"]
       10 SUB                              R6 R4 R3
       11 MINUS                            R9 R2
       12 MUL                              R8 R9 R1
       13 FASTCALL1                        MATH_EXP R8 ; [+2]
       14 GETIMPORT                        R7 K8 [math.exp]
       16 CALL                             R7 1 1
       17 MUL                              R13 R2 R1
       18 ADDK                             R12 R13 K9 [1]
       19 MUL                              R11 R6 R12
       20 MUL                              R12 R5 R1
       21 ADD                              R10 R11 R12
       22 MUL                              R9 R10 R7
       23 ADD                              R8 R9 R3
       24 MUL                              R13 R2 R1
       25 SUBRK                            R12 K9 [1] R13
       26 MUL                              R11 R5 R12
       27 MUL                              R14 R2 R2
       28 MUL                              R13 R14 R1
       29 MUL                              R12 R6 R13
       30 SUB                              R10 R11 R12
       31 MUL                              R9 R10 R7
       32 SETTABLEKS                       R8 R0 K4 ["pos"]
       34 SETTABLEKS                       R9 R0 K5 ["vel"]
       36 RETURN                           R8 1

PROTO_3:
        0 SUB                              R8 R0 R1
        1 SUB                              R9 R4 R3
        2 MUL                              R7 R8 R9
        3 SUB                              R8 R2 R1
        4 DIV                              R6 R7 R8
        5 ADD                              R5 R6 R3
        6 RETURN                           R5 1

PROTO_4:
        0 SUB                              R9 R0 R1
        1 SUB                              R10 R4 R3
        2 MUL                              R8 R9 R10
        3 SUB                              R9 R2 R1
        4 DIV                              R7 R8 R9
        5 ADD                              R6 R7 R3
        6 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
        8 MOVE                             R8 R3
        9 MOVE                             R9 R4
       10 GETIMPORT                        R7 K2 [math.min]
       12 CALL                             R7 2 1
       13 FASTCALL2                        MATH_MAX R3 R4 ; [+5]
       15 MOVE                             R9 R3
       16 MOVE                             R10 R4
       17 GETIMPORT                        R8 K4 [math.max]
       19 CALL                             R8 2 1
       20 FASTCALL                         MATH_CLAMP ; [+2]
       21 GETIMPORT                        R5 K6 [math.clamp]
       23 CALL                             R5 3 1
       24 RETURN                           R5 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LENGTH                           R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K4 [pairs]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLEKS                       R7 R6 K5 ["Position"]
       11 SETTABLE                         R7 R1 R5
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETTABLEN                        R2 R1 1
       15 MOVE                             R3 R2
       16 LOADN                            R4 0
       17 GETIMPORT                        R5 K7 [ipairs]
       19 MOVE                             R6 R1
       20 CALL                             R5 1 3
       21 FORGPREP_INEXT                   R5
       22 SUB                              R10 R9 R2
       23 GETTABLEKS                       R10 R10 K8 ["Magnitude"]
       25 JUMPIFNOTLT                      R4 R10 ; [+3]
       27 MOVE                             R3 R9
       28 MOVE                             R4 R10
       29 FORGLOOP                         R5 2 [inext] ; [-8]
       31 MOVE                             R5 R3
       32 LOADN                            R6 0
       33 GETIMPORT                        R7 K7 [ipairs]
       35 MOVE                             R8 R1
       36 CALL                             R7 1 3
       37 FORGPREP_INEXT                   R7
       38 SUB                              R12 R11 R3
       39 GETTABLEKS                       R12 R12 K8 ["Magnitude"]
       41 JUMPIFNOTLT                      R6 R12 ; [+3]
       43 MOVE                             R5 R11
       44 MOVE                             R6 R12
       45 FORGLOOP                         R7 2 [inext] ; [-8]
       47 ADD                              R8 R3 R5
       48 MULK                             R7 R8 K9 [0.5]
       49 SUB                              R9 R3 R5
       50 GETTABLEKS                       R9 R9 K8 ["Magnitude"]
       52 MULK                             R8 R9 K9 [0.5]
       53 GETIMPORT                        R9 K7 [ipairs]
       55 MOVE                             R10 R1
       56 CALL                             R9 1 3
       57 FORGPREP_INEXT                   R9
       58 SUB                              R14 R13 R7
       59 GETTABLEKS                       R14 R14 K8 ["Magnitude"]
       61 JUMPIFNOTLT                      R8 R14 ; [+10]
       63 SUB                              R17 R14 R8
       64 MULK                             R16 R17 K9 [0.5]
       65 SUB                              R17 R13 R7
       66 GETTABLEKS                       R17 R17 K10 ["Unit"]
       68 MUL                              R15 R16 R17
       69 ADD                              R7 R7 R15
       70 ADD                              R15 R14 R8
       71 MULK                             R8 R15 K9 [0.5]
       72 FORGLOOP                         R9 2 [inext] ; [-15]
       74 RETURN                           R7 2

PROTO_6:
        0 ADDK                             R3 R0 K0 [3.141592653589793]
        1 MODK                             R2 R3 K1 [6.283185307179586]
        2 SUBK                             R1 R2 K0 [3.141592653589793]
        3 RETURN                           R1 1

PROTO_7:
        0 LOADN                            R3 10
        1 POW                              R2 R3 R1
        2 MUL                              R6 R0 R2
        3 ADDK                             R5 R6 K0 [0.5]
        4 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        5 GETIMPORT                        R4 K3 [math.floor]
        7 CALL                             R4 1 1
        8 DIV                              R3 R4 R2
        9 RETURN                           R3 1

PROTO_8:
        0 LOADB                            R1 0
        1 JUMPIFNOTEQ                      R0 R0 ; [+8]
        3 LOADB                            R1 0
        4 JUMPIFEQKN                       R0 K0 [Infinity] ; [+5]
        6 JUMPIFNOTEQKN                    R0 K1 [-Infinity] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["IsFinite"]
        3 GETTABLEKS                       R2 R0 K1 ["X"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+13]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["IsFinite"]
       10 GETTABLEKS                       R2 R0 K2 ["Y"]
       12 CALL                             R1 1 1
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["IsFinite"]
       17 GETTABLEKS                       R2 R0 K3 ["Z"]
       19 CALL                             R1 1 1
       20 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R5 R1 K0 ["X"]
        2 GETTABLEKS                       R6 R0 K1 ["Z"]
        4 MUL                              R4 R5 R6
        5 GETTABLEKS                       R6 R1 K1 ["Z"]
        7 GETTABLEKS                       R7 R0 K0 ["X"]
        9 MUL                              R5 R6 R7
       10 SUB                              R3 R4 R5
       11 GETTABLEKS                       R6 R1 K0 ["X"]
       13 GETTABLEKS                       R7 R0 K0 ["X"]
       15 MUL                              R5 R6 R7
       16 GETTABLEKS                       R7 R1 K1 ["Z"]
       18 GETTABLEKS                       R8 R0 K1 ["Z"]
       20 MUL                              R6 R7 R8
       21 ADD                              R4 R5 R6
       22 FASTCALL2                        MATH_ATAN2 R3 R4 ; [+3]
       24 GETIMPORT                        R2 K4 [math.atan2]
       26 CALL                             R2 2 1
       27 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["Magnitude"]
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R4 R3 ; [+32]
        5 GETTABLEKS                       R0 R0 K1 ["Unit"]
        7 GETTABLEKS                       R4 R0 K2 ["Z"]
        9 GETTABLEKS                       R5 R0 K3 ["X"]
       11 FASTCALL2                        MATH_ATAN2 R4 R5 ; [+3]
       13 GETIMPORT                        R3 K6 [math.atan2]
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R9 R0 K2 ["Z"]
       18 GETTABLEKS                       R10 R0 K3 ["X"]
       20 FASTCALL2                        MATH_ATAN2 R9 R10 ; [+3]
       22 GETIMPORT                        R8 K6 [math.atan2]
       24 CALL                             R8 2 1
       25 ADD                              R7 R8 R1
       26 DIV                              R6 R7 R2
       27 ADDK                             R8 R6 K7 [0.5]
       28 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       29 GETIMPORT                        R7 K9 [math.floor]
       31 CALL                             R7 1 1
       32 MOVE                             R5 R7
       33 MUL                              R4 R5 R2
       34 SUB                              R5 R4 R3
       35 RETURN                           R5 1
       36 LOADN                            R3 0
       37 RETURN                           R3 1

PROTO_12:
        0 LOADN                            R3 -1
        1 LOADN                            R4 1
        2 FASTCALL3                        MATH_CLAMP R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [math.clamp]
        7 CALL                             R1 3 1
        8 MOVE                             R0 R1
        9 LOADN                            R1 0
       10 JUMPIFNOTLE                      R1 R0 ; [+6]
       12 MULK                             R2 R0 K3 [0.35]
       13 SUBRK                            R4 K3 [0.35] R0
       14 ADDK                             R3 R4 K4 [1]
       15 DIV                              R1 R2 R3
       16 RETURN                           R1 1
       17 MINUS                            R4 R0
       18 MULK                             R3 R4 K5 [0.8]
       19 ADDK                             R5 R0 K5 [0.8]
       20 ADDK                             R4 R5 K4 [1]
       21 DIV                              R2 R3 R4
       22 MINUS                            R1 R2
       23 RETURN                           R1 1

PROTO_13:
        0 FASTCALL1                        MATH_ABS R0 ; [+3]
        1 MOVE                             R6 R0
        2 GETIMPORT                        R5 K6 [math.abs]
        4 CALL                             R5 1 1
        5 MULK                             R4 R5 K3 [2]
        6 SUBK                             R3 R4 K2 [1]
        7 MULK                             R2 R3 K1 [1.1]
        8 SUBK                             R1 R2 K0 [0.1]
        9 RETURN                           R1 1

PROTO_14:
        0 DIVK                             R2 R0 K1 [2]
        1 ADDK                             R1 R2 K0 [0.5]
        2 RETURN                           R1 1

PROTO_15:
        0 LOADN                            R1 1
        1 LOADN                            R2 0
        2 JUMPIFNOTLT                      R0 R2 ; [+2]
        4 LOADN                            R1 -1
        5 FASTCALL1                        MATH_ABS R0 ; [+3]
        6 MOVE                             R6 R0
        7 GETIMPORT                        R5 K2 [math.abs]
        9 CALL                             R5 1 1
       10 FASTCALL1                        MATH_ABS R5 ; [+3]
       11 MOVE                             R10 R5
       12 GETIMPORT                        R9 K2 [math.abs]
       14 CALL                             R9 1 1
       15 MULK                             R8 R9 K6 [2]
       16 SUBK                             R7 R8 K5 [1]
       17 MULK                             R6 R7 K4 [1.1]
       18 SUBK                             R4 R6 K3 [0.1]
       19 LOADN                            R7 -1
       20 LOADN                            R8 1
       21 FASTCALL3                        MATH_CLAMP R4 R7 R8
       23 MOVE                             R6 R4
       24 GETIMPORT                        R5 K8 [math.clamp]
       26 CALL                             R5 3 1
       27 MOVE                             R4 R5
       28 LOADN                            R5 0
       29 JUMPIFNOTLE                      R5 R4 ; [+6]
       31 MULK                             R5 R4 K9 [0.35]
       32 SUBRK                            R7 K9 [0.35] R4
       33 ADDK                             R6 R7 K5 [1]
       34 DIV                              R3 R5 R6
       35 JUMP                             ; [+6]
       36 MINUS                            R7 R4
       37 MULK                             R6 R7 K10 [0.8]
       38 ADDK                             R8 R4 K10 [0.8]
       39 ADDK                             R7 R8 K5 [1]
       40 DIV                              R5 R6 R7
       41 MINUS                            R3 R5
       42 DIVK                             R4 R3 K6 [2]
       43 ADDK                             R2 R4 K11 [0.5]
       44 MUL                              R2 R2 R1
       45 LOADN                            R5 -1
       46 LOADN                            R6 1
       47 FASTCALL3                        MATH_CLAMP R2 R5 R6
       49 MOVE                             R4 R2
       50 GETIMPORT                        R3 K8 [math.clamp]
       52 CALL                             R3 3 1
       53 RETURN                           R3 1

PROTO_16:
        0 DUPCLOSURE                       R1 K0 [PROTO_15]
        1 GETIMPORT                        R2 K3 [Vector2.new]
        3 GETTABLEKS                       R4 R0 K4 ["X"]
        5 LOADN                            R5 1
        6 LOADN                            R6 0
        7 JUMPIFNOTLT                      R4 R6 ; [+2]
        9 LOADN                            R5 -1
       10 FASTCALL1                        MATH_ABS R4 ; [+3]
       11 MOVE                             R10 R4
       12 GETIMPORT                        R9 K7 [math.abs]
       14 CALL                             R9 1 1
       15 FASTCALL1                        MATH_ABS R9 ; [+3]
       16 MOVE                             R14 R9
       17 GETIMPORT                        R13 K7 [math.abs]
       19 CALL                             R13 1 1
       20 MULK                             R12 R13 K11 [2]
       21 SUBK                             R11 R12 K10 [1]
       22 MULK                             R10 R11 K9 [1.1]
       23 SUBK                             R8 R10 K8 [0.1]
       24 LOADN                            R11 -1
       25 LOADN                            R12 1
       26 FASTCALL3                        MATH_CLAMP R8 R11 R12
       28 MOVE                             R10 R8
       29 GETIMPORT                        R9 K13 [math.clamp]
       31 CALL                             R9 3 1
       32 MOVE                             R8 R9
       33 LOADN                            R9 0
       34 JUMPIFNOTLE                      R9 R8 ; [+6]
       36 MULK                             R9 R8 K14 [0.35]
       37 SUBRK                            R11 K14 [0.35] R8
       38 ADDK                             R10 R11 K10 [1]
       39 DIV                              R7 R9 R10
       40 JUMP                             ; [+6]
       41 MINUS                            R11 R8
       42 MULK                             R10 R11 K15 [0.8]
       43 ADDK                             R12 R8 K15 [0.8]
       44 ADDK                             R11 R12 K10 [1]
       45 DIV                              R9 R10 R11
       46 MINUS                            R7 R9
       47 DIVK                             R8 R7 K11 [2]
       48 ADDK                             R6 R8 K16 [0.5]
       49 MUL                              R6 R6 R5
       50 LOADN                            R9 -1
       51 LOADN                            R10 1
       52 FASTCALL3                        MATH_CLAMP R6 R9 R10
       54 MOVE                             R8 R6
       55 GETIMPORT                        R7 K13 [math.clamp]
       57 CALL                             R7 3 1
       58 MOVE                             R3 R7
       59 GETTABLEKS                       R5 R0 K17 ["Y"]
       61 LOADN                            R6 1
       62 LOADN                            R7 0
       63 JUMPIFNOTLT                      R5 R7 ; [+2]
       65 LOADN                            R6 -1
       66 FASTCALL1                        MATH_ABS R5 ; [+3]
       67 MOVE                             R11 R5
       68 GETIMPORT                        R10 K7 [math.abs]
       70 CALL                             R10 1 1
       71 FASTCALL1                        MATH_ABS R10 ; [+3]
       72 MOVE                             R15 R10
       73 GETIMPORT                        R14 K7 [math.abs]
       75 CALL                             R14 1 1
       76 MULK                             R13 R14 K11 [2]
       77 SUBK                             R12 R13 K10 [1]
       78 MULK                             R11 R12 K9 [1.1]
       79 SUBK                             R9 R11 K8 [0.1]
       80 LOADN                            R12 -1
       81 LOADN                            R13 1
       82 FASTCALL3                        MATH_CLAMP R9 R12 R13
       84 MOVE                             R11 R9
       85 GETIMPORT                        R10 K13 [math.clamp]
       87 CALL                             R10 3 1
       88 MOVE                             R9 R10
       89 LOADN                            R10 0
       90 JUMPIFNOTLE                      R10 R9 ; [+6]
       92 MULK                             R10 R9 K14 [0.35]
       93 SUBRK                            R12 K14 [0.35] R9
       94 ADDK                             R11 R12 K10 [1]
       95 DIV                              R8 R10 R11
       96 JUMP                             ; [+6]
       97 MINUS                            R12 R9
       98 MULK                             R11 R12 K15 [0.8]
       99 ADDK                             R13 R9 K15 [0.8]
      100 ADDK                             R12 R13 K10 [1]
      101 DIV                              R10 R11 R12
      102 MINUS                            R8 R10
      103 DIVK                             R9 R8 K11 [2]
      104 ADDK                             R7 R9 K16 [0.5]
      105 MUL                              R7 R7 R6
      106 LOADN                            R10 -1
      107 LOADN                            R11 1
      108 FASTCALL3                        MATH_CLAMP R7 R10 R11
      110 MOVE                             R9 R7
      111 GETIMPORT                        R8 K13 [math.clamp]
      113 CALL                             R8 3 1
      114 MOVE                             R4 R8
      115 CALL                             R2 2 -1
      116 RETURN                           R2 -1

PROTO_17:
        0 GETIMPORT                        R1 K3 [Enum.TouchCameraMovementMode.Default]
        2 JUMPIFNOTEQ                      R0 R1 ; [+4]
        4 GETIMPORT                        R1 K6 [Enum.ComputerCameraMovementMode.Follow]
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K7 [Enum.ComputerCameraMovementMode.Default]
        9 JUMPIFNOTEQ                      R0 R1 ; [+4]
       11 GETIMPORT                        R1 K9 [Enum.ComputerCameraMovementMode.Classic]
       13 RETURN                           R1 1
       14 GETIMPORT                        R1 K10 [Enum.TouchCameraMovementMode.Classic]
       16 JUMPIFEQ                         R0 R1 ; [+13]
       18 GETIMPORT                        R1 K12 [Enum.DevTouchCameraMovementMode.Classic]
       20 JUMPIFEQ                         R0 R1 ; [+9]
       22 GETIMPORT                        R1 K14 [Enum.DevComputerCameraMovementMode.Classic]
       24 JUMPIFEQ                         R0 R1 ; [+5]
       26 GETIMPORT                        R1 K9 [Enum.ComputerCameraMovementMode.Classic]
       28 JUMPIFNOTEQ                      R0 R1 ; [+4]
       30 GETIMPORT                        R1 K9 [Enum.ComputerCameraMovementMode.Classic]
       32 RETURN                           R1 1
       33 GETIMPORT                        R1 K15 [Enum.TouchCameraMovementMode.Follow]
       35 JUMPIFEQ                         R0 R1 ; [+13]
       37 GETIMPORT                        R1 K16 [Enum.DevTouchCameraMovementMode.Follow]
       39 JUMPIFEQ                         R0 R1 ; [+9]
       41 GETIMPORT                        R1 K17 [Enum.DevComputerCameraMovementMode.Follow]
       43 JUMPIFEQ                         R0 R1 ; [+5]
       45 GETIMPORT                        R1 K6 [Enum.ComputerCameraMovementMode.Follow]
       47 JUMPIFNOTEQ                      R0 R1 ; [+4]
       49 GETIMPORT                        R1 K6 [Enum.ComputerCameraMovementMode.Follow]
       51 RETURN                           R1 1
       52 GETIMPORT                        R1 K19 [Enum.TouchCameraMovementMode.Orbital]
       54 JUMPIFEQ                         R0 R1 ; [+13]
       56 GETIMPORT                        R1 K20 [Enum.DevTouchCameraMovementMode.Orbital]
       58 JUMPIFEQ                         R0 R1 ; [+9]
       60 GETIMPORT                        R1 K21 [Enum.DevComputerCameraMovementMode.Orbital]
       62 JUMPIFEQ                         R0 R1 ; [+5]
       64 GETIMPORT                        R1 K22 [Enum.ComputerCameraMovementMode.Orbital]
       66 JUMPIFNOTEQ                      R0 R1 ; [+4]
       68 GETIMPORT                        R1 K22 [Enum.ComputerCameraMovementMode.Orbital]
       70 RETURN                           R1 1
       71 GETIMPORT                        R1 K24 [Enum.ComputerCameraMovementMode.CameraToggle]
       73 JUMPIFEQ                         R0 R1 ; [+5]
       75 GETIMPORT                        R1 K25 [Enum.DevComputerCameraMovementMode.CameraToggle]
       77 JUMPIFNOTEQ                      R0 R1 ; [+4]
       79 GETIMPORT                        R1 K24 [Enum.ComputerCameraMovementMode.CameraToggle]
       81 RETURN                           R1 1
       82 GETIMPORT                        R1 K27 [Enum.DevTouchCameraMovementMode.UserChoice]
       84 JUMPIFEQ                         R0 R1 ; [+5]
       86 GETIMPORT                        R1 K28 [Enum.DevComputerCameraMovementMode.UserChoice]
       88 JUMPIFNOTEQ                      R0 R1 ; [+4]
       90 GETIMPORT                        R1 K28 [Enum.DevComputerCameraMovementMode.UserChoice]
       92 RETURN                           R1 1
       93 GETIMPORT                        R1 K9 [Enum.ComputerCameraMovementMode.Classic]
       95 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LocalPlayer"]
        3 JUMPIF                           R0 ; [+11]
        4 GETUPVAL                         R1 0
        5 LOADK                            R3 K0 ["LocalPlayer"]
        6 NAMECALL                         R1 R1 K1 ["GetPropertyChangedSignal"]
        8 CALL                             R1 2 1
        9 NAMECALL                         R1 R1 K2 ["Wait"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R0 R1 K0 ["LocalPlayer"]
       15 FASTCALL1                        ASSERT R0 ; [+3]
       16 MOVE                             R2 R0
       17 GETIMPORT                        R1 K4 [assert]
       19 CALL                             R1 1 0
       20 NAMECALL                         R1 R0 K5 ["GetMouse"]
       22 CALL                             R1 1 -1
       23 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["LocalPlayer"]
        3 JUMPIF                           R2 ; [+11]
        4 GETUPVAL                         R3 0
        5 LOADK                            R5 K0 ["LocalPlayer"]
        6 NAMECALL                         R3 R3 K1 ["GetPropertyChangedSignal"]
        8 CALL                             R3 2 1
        9 NAMECALL                         R3 R3 K2 ["Wait"]
       11 CALL                             R3 1 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["LocalPlayer"]
       15 FASTCALL1                        ASSERT R2 ; [+3]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K4 [assert]
       19 CALL                             R3 1 0
       20 NAMECALL                         R3 R2 K5 ["GetMouse"]
       22 CALL                             R3 1 1
       23 MOVE                             R1 R3
       24 GETTABLEKS                       R2 R1 K6 ["Icon"]
       26 GETUPVAL                         R3 1
       27 JUMPIFEQ                         R2 R3 ; [+4]
       29 GETTABLEKS                       R2 R1 K6 ["Icon"]
       31 SETUPVAL                         R2 2
       32 SETTABLEKS                       R0 R1 K6 ["Icon"]
       34 SETUPVAL                         R0 1
       35 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["LocalPlayer"]
        3 JUMPIF                           R1 ; [+11]
        4 GETUPVAL                         R2 0
        5 LOADK                            R4 K0 ["LocalPlayer"]
        6 NAMECALL                         R2 R2 K1 ["GetPropertyChangedSignal"]
        8 CALL                             R2 2 1
        9 NAMECALL                         R2 R2 K2 ["Wait"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["LocalPlayer"]
       15 FASTCALL1                        ASSERT R1 ; [+3]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K4 [assert]
       19 CALL                             R2 1 0
       20 NAMECALL                         R2 R1 K5 ["GetMouse"]
       22 CALL                             R2 1 1
       23 MOVE                             R0 R2
       24 GETTABLEKS                       R1 R0 K6 ["Icon"]
       26 GETUPVAL                         R2 1
       27 JUMPIFNOTEQ                      R1 R2 ; [+4]
       29 GETUPVAL                         R1 2
       30 SETTABLEKS                       R1 R0 K6 ["Icon"]
       32 LOADNIL                          R1
       33 SETUPVAL                         R1 1
       34 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MouseBehavior"]
        3 GETUPVAL                         R2 1
        4 JUMPIFEQ                         R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["MouseBehavior"]
        9 SETUPVAL                         R1 2
       10 GETUPVAL                         R1 0
       11 SETTABLEKS                       R0 R1 K0 ["MouseBehavior"]
       13 SETUPVAL                         R0 1
       14 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MouseBehavior"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K0 ["MouseBehavior"]
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 1
       12 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RotationType"]
        3 GETUPVAL                         R2 1
        4 JUMPIFEQ                         R1 R2 ; [+5]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["RotationType"]
        9 SETUPVAL                         R1 2
       10 GETUPVAL                         R1 0
       11 SETTABLEKS                       R0 R1 K0 ["RotationType"]
       13 SETUPVAL                         R0 1
       14 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RotationType"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K0 ["RotationType"]
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 1
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UserInputService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [UserSettings]
       15 CALL                             R2 0 1
       16 LOADK                            R4 K7 ["UserGameSettings"]
       17 NAMECALL                         R2 R2 K3 ["GetService"]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 32 0
       22 DUPCLOSURE                       R4 K8 [PROTO_0]
       23 NEWTABLE                         R5 4 0
       25 SETTABLEKS                       R5 R5 K9 ["__index"]
       27 DUPCLOSURE                       R6 K10 [PROTO_1]
       28 CAPTURE                          VAL R5
       29 SETTABLEKS                       R6 R5 K11 ["new"]
       31 DUPCLOSURE                       R6 K12 [PROTO_2]
       32 SETTABLEKS                       R6 R5 K13 ["step"]
       34 SETTABLEKS                       R5 R3 K14 ["Spring"]
       36 DUPCLOSURE                       R6 K15 [PROTO_3]
       37 SETTABLEKS                       R6 R3 K16 ["map"]
       39 DUPCLOSURE                       R6 K17 [PROTO_4]
       40 SETTABLEKS                       R6 R3 K18 ["mapClamp"]
       42 DUPCLOSURE                       R6 K19 [PROTO_5]
       43 SETTABLEKS                       R6 R3 K20 ["getLooseBoundingSphere"]
       45 DUPCLOSURE                       R6 K21 [PROTO_6]
       46 SETTABLEKS                       R6 R3 K22 ["sanitizeAngle"]
       48 DUPCLOSURE                       R6 K23 [PROTO_7]
       49 SETTABLEKS                       R6 R3 K24 ["Round"]
       51 DUPCLOSURE                       R6 K25 [PROTO_8]
       52 SETTABLEKS                       R6 R3 K26 ["IsFinite"]
       54 DUPCLOSURE                       R6 K27 [PROTO_9]
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R6 R3 K28 ["IsFiniteVector3"]
       58 DUPCLOSURE                       R6 K29 [PROTO_10]
       59 SETTABLEKS                       R6 R3 K30 ["GetAngleBetweenXZVectors"]
       61 DUPCLOSURE                       R6 K31 [PROTO_11]
       62 SETTABLEKS                       R6 R3 K32 ["RotateVectorByAngleAndRound"]
       64 DUPCLOSURE                       R6 K33 [PROTO_12]
       65 DUPCLOSURE                       R7 K34 [PROTO_13]
       66 DUPCLOSURE                       R8 K35 [PROTO_14]
       67 DUPCLOSURE                       R9 K36 [PROTO_16]
       68 SETTABLEKS                       R9 R3 K37 ["GamepadLinearToCurve"]
       70 DUPCLOSURE                       R9 K38 [PROTO_17]
       71 SETTABLEKS                       R9 R3 K39 ["ConvertCameraModeEnumToStandard"]
       73 DUPCLOSURE                       R9 K40 [PROTO_18]
       74 CAPTURE                          VAL R0
       75 LOADK                            R10 K41 [""]
       76 LOADNIL                          R11
       77 NEWCLOSURE                       R12 P18
       78 CAPTURE                          VAL R0
       79 CAPTURE                          REF R11
       80 CAPTURE                          REF R10
       81 SETTABLEKS                       R12 R3 K42 ["setMouseIconOverride"]
       83 NEWCLOSURE                       R12 P19
       84 CAPTURE                          VAL R0
       85 CAPTURE                          REF R11
       86 CAPTURE                          REF R10
       87 SETTABLEKS                       R12 R3 K43 ["restoreMouseIcon"]
       89 GETIMPORT                        R12 K47 [Enum.MouseBehavior.Default]
       91 LOADNIL                          R13
       92 NEWCLOSURE                       R14 P20
       93 CAPTURE                          VAL R1
       94 CAPTURE                          REF R13
       95 CAPTURE                          REF R12
       96 SETTABLEKS                       R14 R3 K48 ["setMouseBehaviorOverride"]
       98 NEWCLOSURE                       R14 P21
       99 CAPTURE                          VAL R1
      100 CAPTURE                          REF R13
      101 CAPTURE                          REF R12
      102 SETTABLEKS                       R14 R3 K49 ["restoreMouseBehavior"]
      104 GETIMPORT                        R14 K52 [Enum.RotationType.MovementRelative]
      106 LOADNIL                          R15
      107 NEWCLOSURE                       R16 P22
      108 CAPTURE                          VAL R2
      109 CAPTURE                          REF R15
      110 CAPTURE                          REF R14
      111 SETTABLEKS                       R16 R3 K53 ["setRotationTypeOverride"]
      113 NEWCLOSURE                       R16 P23
      114 CAPTURE                          VAL R2
      115 CAPTURE                          REF R15
      116 CAPTURE                          REF R14
      117 SETTABLEKS                       R16 R3 K54 ["restoreRotationType"]
      119 CLOSEUPVALS                      R10
      120 RETURN                           R3 1
