PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TRACK_TYPES"]
        3 GETTABLEKS                       R1 R1 K1 ["CFrame"]
        5 JUMPIFEQ                         R0 R1 ; [+8]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["TRACK_TYPES"]
       10 GETTABLEKS                       R1 R1 K2 ["Quaternion"]
       12 JUMPIFNOTEQ                      R0 R1 ; [+5]
       14 GETIMPORT                        R1 K4 [CFrame.new]
       16 CALL                             R1 0 -1
       17 RETURN                           R1 -1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["TRACK_TYPES"]
       21 GETTABLEKS                       R1 R1 K5 ["Position"]
       23 JUMPIFEQ                         R0 R1 ; [+8]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K0 ["TRACK_TYPES"]
       28 GETTABLEKS                       R1 R1 K6 ["EulerAngles"]
       30 JUMPIFNOTEQ                      R0 R1 ; [+6]
       32 FASTCALL                         VECTOR ; [+2]
       33 GETIMPORT                        R1 K8 [Vector3.new]
       35 CALL                             R1 0 1
       36 RETURN                           R1 1
       37 GETUPVAL                         R1 1
       38 CALL                             R1 0 1
       39 JUMPIFNOT                        R1 ; [+16]
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K0 ["TRACK_TYPES"]
       43 GETTABLEKS                       R1 R1 K9 ["IkTarget"]
       45 JUMPIFEQ                         R0 R1 ; [+8]
       47 GETUPVAL                         R1 0
       48 GETTABLEKS                       R1 R1 K0 ["TRACK_TYPES"]
       50 GETTABLEKS                       R1 R1 K10 ["IkData"]
       52 JUMPIFNOTEQ                      R0 R1 ; [+3]
       54 LOADN                            R1 0
       55 RETURN                           R1 1
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K0 ["TRACK_TYPES"]
       59 GETTABLEKS                       R1 R1 K11 ["Number"]
       61 JUMPIFEQ                         R0 R1 ; [+15]
       63 GETUPVAL                         R1 0
       64 GETTABLEKS                       R1 R1 K0 ["TRACK_TYPES"]
       66 GETTABLEKS                       R1 R1 K12 ["Angle"]
       68 JUMPIFEQ                         R0 R1 ; [+8]
       70 GETUPVAL                         R1 0
       71 GETTABLEKS                       R1 R1 K0 ["TRACK_TYPES"]
       73 GETTABLEKS                       R1 R1 K13 ["Facs"]
       75 JUMPIFNOTEQ                      R0 R1 ; [+3]
       77 LOADN                            R1 0
       78 RETURN                           R1 1
       79 LOADB                            R2 0
       80 LOADK                            R4 K14 ["Unknown track type: "]
       81 ORK                              R5 R0 K15 ["<nil>"]
       82 CONCAT                           R3 R4 R5
       83 FASTCALL2                        ASSERT R2 R3 ; [+3]
       85 GETIMPORT                        R1 K17 [assert]
       87 CALL                             R1 2 0
       88 LOADN                            R1 0
       89 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R2 R0
        3 JUMPIFNOTEQKN                    R2 K0 [0] ; [+4]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 RETURN                           R2 2
        8 LOADN                            R2 1
        9 LENGTH                           R3 R0
       10 GETTABLE                         R4 R0 R2
       11 JUMPIFNOTLT                      R1 R4 ; [+4]
       13 MOVE                             R4 R2
       14 LOADNIL                          R5
       15 RETURN                           R4 2
       16 GETTABLE                         R4 R0 R3
       17 JUMPIFNOTLT                      R4 R1 ; [+4]
       19 MOVE                             R4 R3
       20 LOADNIL                          R5
       21 RETURN                           R4 2
       22 LOADNIL                          R4
       23 JUMPIFNOTLE                      R2 R3 ; [+22]
       25 ADD                              R7 R3 R2
       26 DIVK                             R6 R7 K1 [2]
       27 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       28 GETIMPORT                        R5 K4 [math.floor]
       30 CALL                             R5 1 1
       31 MOVE                             R4 R5
       32 GETTABLE                         R5 R0 R4
       33 JUMPIFNOTEQ                      R1 R5 ; [+4]
       35 MOVE                             R6 R4
       36 LOADNIL                          R7
       37 RETURN                           R6 2
       38 JUMPIFNOTLT                      R5 R1 ; [+3]
       40 ADDK                             R2 R4 K5 [1]
       41 JUMP                             ; [+3]
       42 JUMPIFNOTLT                      R1 R5 ; [+2]
       44 SUBK                             R3 R4 K5 [1]
       45 JUMPBACK                         ; [-23]
       46 GETTABLE                         R5 R0 R4
       47 JUMPIFNOTLT                      R1 R5 ; [+4]
       49 SUBK                             R5 R4 K5 [1]
       50 MOVE                             R6 R4
       51 RETURN                           R5 2
       52 MOVE                             R5 R4
       53 ADDK                             R6 R4 K5 [1]
       54 RETURN                           R5 2

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R2 R0
        3 JUMPIFNOTEQKN                    R2 K0 [0] ; [+5]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 RETURN                           R2 3
        9 LOADN                            R2 1
       10 LENGTH                           R3 R0
       11 GETTABLE                         R4 R0 R2
       12 JUMPIFNOTLT                      R1 R4 ; [+5]
       14 LOADNIL                          R4
       15 LOADNIL                          R5
       16 MOVE                             R6 R2
       17 RETURN                           R4 3
       18 GETTABLE                         R4 R0 R3
       19 JUMPIFNOTLT                      R4 R1 ; [+5]
       21 LOADNIL                          R4
       22 MOVE                             R5 R3
       23 LOADNIL                          R6
       24 RETURN                           R4 3
       25 LOADNIL                          R4
       26 JUMPIFNOTLE                      R2 R3 ; [+23]
       28 ADD                              R7 R3 R2
       29 DIVK                             R6 R7 K1 [2]
       30 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       31 GETIMPORT                        R5 K4 [math.floor]
       33 CALL                             R5 1 1
       34 MOVE                             R4 R5
       35 GETTABLE                         R5 R0 R4
       36 JUMPIFNOTEQ                      R1 R5 ; [+5]
       38 MOVE                             R6 R4
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 RETURN                           R6 3
       42 JUMPIFNOTLT                      R5 R1 ; [+3]
       44 ADDK                             R2 R4 K5 [1]
       45 JUMP                             ; [+3]
       46 JUMPIFNOTLT                      R1 R5 ; [+2]
       48 SUBK                             R3 R4 K5 [1]
       49 JUMPBACK                         ; [-24]
       50 GETTABLE                         R5 R0 R4
       51 JUMPIFNOTLT                      R1 R5 ; [+5]
       53 LOADNIL                          R5
       54 SUBK                             R6 R4 K5 [1]
       55 MOVE                             R7 R4
       56 RETURN                           R5 3
       57 LOADNIL                          R5
       58 MOVE                             R6 R4
       59 ADDK                             R7 R4 K5 [1]
       60 RETURN                           R5 3

PROTO_3:
        0 LOADN                            R2 1
        1 LENGTH                           R3 R0
        2 LOADNIL                          R4
        3 JUMPIFNOTLE                      R2 R3 ; [+20]
        5 ADD                              R7 R3 R2
        6 DIVK                             R6 R7 K0 [2]
        7 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        8 GETIMPORT                        R5 K3 [math.floor]
       10 CALL                             R5 1 1
       11 MOVE                             R4 R5
       12 GETTABLE                         R5 R0 R4
       13 JUMPIFNOTEQ                      R1 R5 ; [+2]
       15 RETURN                           R4 1
       16 JUMPIFNOTLT                      R5 R1 ; [+3]
       18 ADDK                             R2 R4 K4 [1]
       19 JUMP                             ; [+3]
       20 JUMPIFNOTLT                      R1 R5 ; [+2]
       22 SUBK                             R3 R4 K4 [1]
       23 JUMPBACK                         ; [-21]
       24 LOADNIL                          R5
       25 RETURN                           R5 1

PROTO_4:
        0 LOADN                            R2 1
        1 LENGTH                           R3 R0
        2 LOADNIL                          R4
        3 JUMPIFNOTLE                      R2 R3 ; [+21]
        5 ADD                              R7 R3 R2
        6 DIVK                             R6 R7 K0 [2]
        7 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        8 GETIMPORT                        R5 K3 [math.floor]
       10 CALL                             R5 1 1
       11 MOVE                             R4 R5
       12 GETTABLE                         R5 R0 R4
       13 JUMPIFNOTEQ                      R1 R5 ; [+3]
       15 LOADNIL                          R6
       16 RETURN                           R6 1
       17 JUMPIFNOTLT                      R5 R1 ; [+3]
       19 ADDK                             R2 R4 K4 [1]
       20 JUMP                             ; [+3]
       21 JUMPIFNOTLT                      R1 R5 ; [+2]
       23 SUBK                             R3 R4 K4 [1]
       24 JUMPBACK                         ; [-22]
       25 RETURN                           R2 1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["CFrame"] ; [+14]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R4 R1
        9 GETIMPORT                        R3 K1 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K2 ["CFrame"] ; [+7]
       14 MOVE                             R5 R1
       15 MOVE                             R6 R2
       16 NAMECALL                         R3 R0 K3 ["Lerp"]
       18 CALL                             R3 3 -1
       19 RETURN                           R3 -1
       20 FASTCALL1                        TYPEOF R0 ; [+3]
       21 MOVE                             R4 R0
       22 GETIMPORT                        R3 K1 [typeof]
       24 CALL                             R3 1 1
       25 JUMPIFNOTEQKS                    R3 K4 ["Vector3"] ; [+14]
       27 FASTCALL1                        TYPEOF R1 ; [+3]
       28 MOVE                             R4 R1
       29 GETIMPORT                        R3 K1 [typeof]
       31 CALL                             R3 1 1
       32 JUMPIFNOTEQKS                    R3 K4 ["Vector3"] ; [+7]
       34 MOVE                             R5 R1
       35 MOVE                             R6 R2
       36 NAMECALL                         R3 R0 K3 ["Lerp"]
       38 CALL                             R3 3 -1
       39 RETURN                           R3 -1
       40 FASTCALL1                        TYPEOF R0 ; [+3]
       41 MOVE                             R4 R0
       42 GETIMPORT                        R3 K1 [typeof]
       44 CALL                             R3 1 1
       45 JUMPIFNOTEQKS                    R3 K5 ["number"] ; [+12]
       47 FASTCALL1                        TYPEOF R1 ; [+3]
       48 MOVE                             R4 R1
       49 GETIMPORT                        R3 K1 [typeof]
       51 CALL                             R3 1 1
       52 JUMPIFNOTEQKS                    R3 K5 ["number"] ; [+5]
       54 SUB                              R5 R1 R0
       55 MUL                              R4 R5 R2
       56 ADD                              R3 R0 R4
       57 RETURN                           R3 1
       58 LOADB                            R4 0
       59 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       61 LOADK                            R5 K6 ["Attempted to interpolate an unsupported value."]
       62 GETIMPORT                        R3 K8 [assert]
       64 CALL                             R3 2 0
       65 RETURN                           R0 0

PROTO_6:
        0 ADDK                             R2 R0 K0 [0.5]
        1 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        2 GETIMPORT                        R1 K3 [math.floor]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_7:
        0 MUL                              R3 R0 R1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["TICK_FREQUENCY"]
        4 DIV                              R2 R3 R4
        5 ADDK                             R4 R2 K1 [0.5]
        6 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        7 GETIMPORT                        R3 K4 [math.floor]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["TICK_FREQUENCY"]
       13 MUL                              R4 R3 R5
       14 DIV                              R0 R4 R1
       15 ADDK                             R5 R0 K1 [0.5]
       16 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       17 GETIMPORT                        R4 K4 [math.floor]
       19 CALL                             R4 1 1
       20 RETURN                           R4 1

PROTO_8:
        0 LOADB                            R3 0
        1 LOADN                            R4 0
        2 JUMPIFNOTLT                      R4 R1 ; [+6]
        4 LOADN                            R4 1
        5 JUMPIFLT                         R1 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K0 ; [+4]
       11 LOADK                            R4 K0 ["Tolerance should be between 0 and 1."]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["getNearestTick"]
       18 MOVE                             R3 R0
       19 CALL                             R2 1 1
       20 SUB                              R4 R0 R2
       21 FASTCALL1                        MATH_ABS R4 ; [+2]
       22 GETIMPORT                        R3 K6 [math.abs]
       24 CALL                             R3 1 1
       25 JUMPIFNOTLT                      R3 R1 ; [+2]
       27 RETURN                           R2 1
       28 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Keyframes"]
        3 GETUPVAL                         R3 1
        4 SUBK                             R2 R3 K1 [1]
        5 GETTABLE                         R0 R1 R2
        6 MOVE                             R1 R0
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["Data"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIF                           R2 ; [+1]
       13 LOADNIL                          R2
       14 RETURN                           R1 2

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Keyframes"]
        3 GETUPVAL                         R3 1
        4 ADDK                             R2 R3 K1 [1]
        5 GETTABLE                         R0 R1 R2
        6 MOVE                             R1 R0
        7 JUMPIFNOT                        R0 ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["Data"]
       11 GETTABLE                         R2 R3 R0
       12 JUMPIF                           R2 ; [+1]
       13 LOADNIL                          R2
       14 RETURN                           R1 2

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CLAMPED_AUTO_TANGENT_THRESHOLD"]
        3 LOADN                            R3 0
        4 DIV                              R5 R0 R1
        5 SUBRK                            R7 R1 K0 ["CLAMPED_AUTO_TANGENT_THRESHOLD"]
        6 DIV                              R6 R7 R1
        7 LOADN                            R7 1
        8 FASTCALL                         MATH_MIN ; [+2]
        9 GETIMPORT                        R4 K4 [math.min]
       11 CALL                             R4 3 1
       12 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       14 GETIMPORT                        R2 K6 [math.max]
       16 CALL                             R2 2 1
       17 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Keyframes"]
        3 GETUPVAL                         R5 1
        4 SUBK                             R4 R5 K1 [1]
        5 GETTABLE                         R2 R3 R4
        6 MOVE                             R0 R2
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["Data"]
       11 GETTABLE                         R1 R3 R2
       12 JUMPIF                           R1 ; [+1]
       13 LOADNIL                          R1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K0 ["Keyframes"]
       17 GETUPVAL                         R7 1
       18 ADDK                             R6 R7 K1 [1]
       19 GETTABLE                         R4 R5 R6
       20 MOVE                             R2 R4
       21 JUMPIFNOT                        R4 ; [+5]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K2 ["Data"]
       25 GETTABLE                         R3 R5 R4
       26 JUMPIF                           R3 ; [+1]
       27 LOADNIL                          R3
       28 JUMPIFNOT                        R0 ; [+76]
       29 JUMPIFNOT                        R2 ; [+75]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K3 ["Type"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K4 ["TRACK_TYPES"]
       36 GETTABLEKS                       R5 R5 K5 ["Quaternion"]
       38 JUMPIFNOTEQ                      R4 R5 ; [+11]
       40 LOADK                            R5 K6 [0.5]
       41 GETUPVAL                         R9 3
       42 SUB                              R8 R2 R9
       43 DIVRK                            R7 R1 K8 ["Value"]
       44 GETUPVAL                         R10 3
       45 SUB                              R9 R10 R0
       46 DIVRK                            R8 R1 K9 ["CLAMPED_AUTO_TANGENT_THRESHOLD"]
       47 ADD                              R6 R7 R8
       48 MUL                              R4 R5 R6
       49 RETURN                           R4 1
       50 DUPCLOSURE                       R4 K7 [PROTO_11]
       51 CAPTURE                          UPVAL U2
       52 LOADK                            R6 K6 [0.5]
       53 GETTABLEKS                       R10 R3 K8 ["Value"]
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R11 R11 K8 ["Value"]
       58 SUB                              R9 R10 R11
       59 GETUPVAL                         R11 3
       60 SUB                              R10 R2 R11
       61 DIV                              R8 R9 R10
       62 GETTABLEKS                       R11 R1 K8 ["Value"]
       64 GETUPVAL                         R12 4
       65 GETTABLEKS                       R12 R12 K8 ["Value"]
       67 SUB                              R10 R11 R12
       68 GETUPVAL                         R12 3
       69 SUB                              R11 R0 R12
       70 DIV                              R9 R10 R11
       71 ADD                              R7 R8 R9
       72 MUL                              R5 R6 R7
       73 GETUPVAL                         R9 4
       74 GETTABLEKS                       R9 R9 K8 ["Value"]
       76 GETTABLEKS                       R10 R1 K8 ["Value"]
       78 SUB                              R8 R9 R10
       79 GETTABLEKS                       R10 R3 K8 ["Value"]
       81 GETTABLEKS                       R11 R1 K8 ["Value"]
       83 SUB                              R9 R10 R11
       84 DIV                              R7 R8 R9
       85 GETUPVAL                         R8 2
       86 GETTABLEKS                       R8 R8 K9 ["CLAMPED_AUTO_TANGENT_THRESHOLD"]
       88 LOADN                            R10 0
       89 DIV                              R12 R7 R8
       90 SUBRK                            R14 R1 K7 [PROTO_11]
       91 DIV                              R13 R14 R8
       92 LOADN                            R14 1
       93 FASTCALL                         MATH_MIN ; [+2]
       94 GETIMPORT                        R11 K12 [math.min]
       96 CALL                             R11 3 1
       97 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       99 GETIMPORT                        R9 K14 [math.max]
      101 CALL                             R9 2 1
      102 MOVE                             R6 R9
      103 MUL                              R5 R5 R6
      104 RETURN                           R5 1
      105 LOADN                            R4 0
      106 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["findNearestKeyframesProperly"]
        3 GETTABLEKS                       R5 R0 K1 ["Keyframes"]
        5 MOVE                             R6 R1
        6 CALL                             R4 2 1
        7 JUMPIF                           R4 ; [+2]
        8 LOADN                            R5 0
        9 RETURN                           R5 1
       10 GETTABLEKS                       R6 R0 K1 ["Keyframes"]
       12 GETTABLE                         R5 R6 R4
       13 GETTABLEKS                       R7 R0 K2 ["Data"]
       15 GETTABLE                         R6 R7 R5
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R4
       19 NEWCLOSURE                       R8 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R4
       22 NEWCLOSURE                       R9 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R6
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R10 R10 K3 ["SLOPES"]
       31 GETTABLEKS                       R10 R10 K4 ["Right"]
       33 JUMPIFNOTEQ                      R2 R10 ; [+73]
       35 GETTABLEKS                       R10 R6 K5 ["InterpolationMode"]
       37 GETIMPORT                        R11 K9 [Enum.KeyInterpolationMode.Constant]
       39 JUMPIFNOTEQ                      R10 R11 ; [+3]
       41 LOADN                            R10 0
       42 RETURN                           R10 1
       43 GETTABLEKS                       R10 R6 K5 ["InterpolationMode"]
       45 GETIMPORT                        R11 K11 [Enum.KeyInterpolationMode.Linear]
       47 JUMPIFNOTEQ                      R10 R11 ; [+38]
       49 GETTABLEKS                       R13 R0 K1 ["Keyframes"]
       51 ADDK                             R14 R4 K12 [1]
       52 GETTABLE                         R12 R13 R14
       53 MOVE                             R10 R12
       54 JUMPIFNOT                        R12 ; [+4]
       55 GETTABLEKS                       R13 R0 K2 ["Data"]
       57 GETTABLE                         R11 R13 R12
       58 JUMPIF                           R11 ; [+1]
       59 LOADNIL                          R11
       60 GETTABLEKS                       R12 R0 K13 ["Type"]
       62 GETUPVAL                         R13 1
       63 GETTABLEKS                       R13 R13 K14 ["TRACK_TYPES"]
       65 GETTABLEKS                       R13 R13 K15 ["Quaternion"]
       67 JUMPIFNOTEQ                      R12 R13 ; [+7]
       69 JUMPIFNOT                        R11 ; [+3]
       70 SUB                              R13 R10 R1
       71 DIVRK                            R12 R12 K13 ["Type"]
       72 JUMPIF                           R12 ; [+1]
       73 LOADN                            R12 0
       74 RETURN                           R12 1
       75 JUMPIFNOT                        R11 ; [+8]
       76 GETTABLEKS                       R14 R11 K16 ["Value"]
       78 GETTABLEKS                       R15 R6 K16 ["Value"]
       80 SUB                              R13 R14 R15
       81 SUB                              R14 R10 R1
       82 DIV                              R12 R13 R14
       83 JUMPIF                           R12 ; [+1]
       84 LOADN                            R12 0
       85 RETURN                           R12 1
       86 GETTABLEKS                       R10 R6 K17 ["RightSlope"]
       88 JUMPIFNOT                        R10 ; [+3]
       89 GETTABLEKS                       R10 R6 K17 ["RightSlope"]
       91 RETURN                           R10 1
       92 JUMPIF                           R3 ; [+11]
       93 GETUPVAL                         R10 2
       94 MOVE                             R11 R0
       95 MOVE                             R12 R1
       96 GETUPVAL                         R13 1
       97 GETTABLEKS                       R13 R13 K3 ["SLOPES"]
       99 GETTABLEKS                       R13 R13 K18 ["Left"]
      101 LOADB                            R14 1
      102 CALL                             R10 4 -1
      103 RETURN                           R10 -1
      104 MOVE                             R10 R9
      105 CALL                             R10 0 1
      106 RETURN                           R10 1
      107 GETTABLEKS                       R13 R0 K1 ["Keyframes"]
      109 SUBK                             R14 R4 K12 [1]
      110 GETTABLE                         R12 R13 R14
      111 MOVE                             R10 R12
      112 JUMPIFNOT                        R12 ; [+4]
      113 GETTABLEKS                       R13 R0 K2 ["Data"]
      115 GETTABLE                         R11 R13 R12
      116 JUMPIF                           R11 ; [+1]
      117 LOADNIL                          R11
      118 JUMPIF                           R11 ; [+2]
      119 LOADN                            R12 0
      120 RETURN                           R12 1
      121 GETTABLEKS                       R12 R11 K5 ["InterpolationMode"]
      123 GETIMPORT                        R13 K9 [Enum.KeyInterpolationMode.Constant]
      125 JUMPIFNOTEQ                      R12 R13 ; [+3]
      127 LOADN                            R12 0
      128 RETURN                           R12 1
      129 GETTABLEKS                       R12 R11 K5 ["InterpolationMode"]
      131 GETIMPORT                        R13 K11 [Enum.KeyInterpolationMode.Linear]
      133 JUMPIFNOTEQ                      R12 R13 ; [+21]
      135 GETTABLEKS                       R12 R0 K13 ["Type"]
      137 GETUPVAL                         R13 1
      138 GETTABLEKS                       R13 R13 K14 ["TRACK_TYPES"]
      140 GETTABLEKS                       R13 R13 K15 ["Quaternion"]
      142 JUMPIFNOTEQ                      R12 R13 ; [+4]
      144 SUB                              R13 R1 R10
      145 DIVRK                            R12 R12 K13 ["Type"]
      146 RETURN                           R12 1
      147 GETTABLEKS                       R14 R11 K16 ["Value"]
      149 GETTABLEKS                       R15 R6 K16 ["Value"]
      151 SUB                              R13 R14 R15
      152 SUB                              R14 R10 R1
      153 DIV                              R12 R13 R14
      154 RETURN                           R12 1
      155 GETTABLEKS                       R12 R6 K19 ["LeftSlope"]
      157 JUMPIFNOT                        R12 ; [+3]
      158 GETTABLEKS                       R12 R6 K19 ["LeftSlope"]
      160 RETURN                           R12 1
      161 JUMPIF                           R3 ; [+11]
      162 GETUPVAL                         R12 2
      163 MOVE                             R13 R0
      164 MOVE                             R14 R1
      165 GETUPVAL                         R15 1
      166 GETTABLEKS                       R15 R15 K3 ["SLOPES"]
      168 GETTABLEKS                       R15 R15 K4 ["Right"]
      170 LOADB                            R16 1
      171 CALL                             R12 4 -1
      172 RETURN                           R12 -1
      173 MOVE                             R12 R9
      174 CALL                             R12 0 1
      175 RETURN                           R12 1

PROTO_14:
        0 DUPCLOSURE                       R3 K0 [PROTO_13]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R3
        4 MOVE                             R4 R3
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 LOADB                            R8 0
        9 CALL                             R4 4 -1
       10 RETURN                           R4 -1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["Keyframes"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 RETURN                           R2 2
       11 GETTABLEKS                       R2 R0 K0 ["Keyframes"]
       13 GETTABLEKS                       R3 R0 K1 ["Data"]
       15 GETTABLE                         R4 R3 R1
       16 JUMPIFNOT                        R4 ; [+23]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K2 ["getSlope"]
       20 MOVE                             R5 R0
       21 MOVE                             R6 R1
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K3 ["SLOPES"]
       25 GETTABLEKS                       R7 R7 K4 ["Left"]
       27 CALL                             R4 3 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K2 ["getSlope"]
       31 MOVE                             R6 R0
       32 MOVE                             R7 R1
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K3 ["SLOPES"]
       36 GETTABLEKS                       R8 R8 K5 ["Right"]
       38 CALL                             R5 3 -1
       39 RETURN                           R4 -1
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K6 ["findNearestKeyframes"]
       43 MOVE                             R5 R2
       44 MOVE                             R6 R1
       45 CALL                             R4 2 2
       46 JUMPIFNOT                        R4 ; [+133]
       47 JUMPIFNOT                        R5 ; [+132]
       48 GETTABLE                         R6 R2 R4
       49 GETTABLE                         R7 R2 R5
       50 GETTABLE                         R8 R3 R6
       51 GETTABLE                         R9 R3 R7
       52 GETTABLEKS                       R10 R8 K7 ["EasingSyle"]
       54 GETIMPORT                        R11 K11 [Enum.KeyInterpolationMode.Constant]
       56 JUMPIFNOTEQ                      R10 R11 ; [+4]
       58 LOADN                            R10 0
       59 LOADN                            R11 0
       60 RETURN                           R10 2
       61 GETTABLEKS                       R10 R8 K12 ["EasingStyle"]
       63 GETIMPORT                        R11 K14 [Enum.KeyInterpolationMode.Linear]
       65 JUMPIFNOTEQ                      R10 R11 ; [+24]
       67 LOADNIL                          R10
       68 GETTABLEKS                       R11 R0 K15 ["Type"]
       70 GETUPVAL                         R12 2
       71 GETTABLEKS                       R12 R12 K16 ["TRACK_TYPES"]
       73 GETTABLEKS                       R12 R12 K17 ["Quaternion"]
       75 JUMPIFNOTEQ                      R11 R12 ; [+4]
       77 SUB                              R11 R7 R6
       78 DIVRK                            R10 R18 K11 [Enum.KeyInterpolationMode.Constant]
       79 JUMP                             ; [+7]
       80 GETTABLEKS                       R12 R9 K19 ["Value"]
       82 GETTABLEKS                       R13 R8 K19 ["Value"]
       84 SUB                              R11 R12 R13
       85 SUB                              R12 R7 R6
       86 DIV                              R10 R11 R12
       87 MOVE                             R11 R10
       88 MOVE                             R12 R10
       89 RETURN                           R11 2
       90 GETUPVAL                         R10 1
       91 GETTABLEKS                       R10 R10 K2 ["getSlope"]
       93 MOVE                             R11 R0
       94 MOVE                             R12 R6
       95 GETUPVAL                         R13 2
       96 GETTABLEKS                       R13 R13 K3 ["SLOPES"]
       98 GETTABLEKS                       R13 R13 K5 ["Right"]
      100 CALL                             R10 3 1
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R11 R11 K2 ["getSlope"]
      104 MOVE                             R12 R0
      105 MOVE                             R13 R7
      106 GETUPVAL                         R14 2
      107 GETTABLEKS                       R14 R14 K3 ["SLOPES"]
      109 GETTABLEKS                       R14 R14 K4 ["Left"]
      111 CALL                             R11 3 1
      112 SUB                              R12 R7 R6
      113 SUB                              R14 R1 R6
      114 DIV                              R13 R14 R12
      115 LOADN                            R16 6
      116 MUL                              R15 R16 R13
      117 SUBK                             R16 R13 K18 [1]
      118 MUL                              R14 R15 R16
      119 SUBK                             R16 R13 K18 [1]
      120 LOADN                            R19 3
      121 MUL                              R18 R19 R13
      122 SUBK                             R17 R18 K18 [1]
      123 MUL                              R15 R16 R17
      124 MINUS                            R16 R14
      125 LOADN                            R20 3
      126 MUL                              R19 R20 R13
      127 SUBK                             R18 R19 K20 [2]
      128 MUL                              R17 R13 R18
      129 LOADNIL                          R18
      130 GETTABLEKS                       R19 R0 K15 ["Type"]
      132 GETUPVAL                         R20 2
      133 GETTABLEKS                       R20 R20 K16 ["TRACK_TYPES"]
      135 GETTABLEKS                       R20 R20 K17 ["Quaternion"]
      137 JUMPIFNOTEQ                      R19 R20 ; [+27]
      139 DIV                              R20 R16 R12
      140 MUL                              R21 R15 R10
      141 ADD                              R19 R20 R21
      142 MUL                              R20 R17 R11
      143 ADD                              R18 R19 R20
      144 MUL                              R19 R13 R13
      145 SUBK                             R23 R13 K20 [2]
      146 MUL                              R22 R23 R13
      147 ADDK                             R21 R22 K18 [1]
      148 MUL                              R20 R21 R13
      149 LOADN                            R24 2
      150 MUL                              R23 R24 R13
      151 SUBRK                            R22 R21 K23 [NULL]
      152 MUL                              R21 R19 R22
      153 SUBK                             R23 R13 K18 [1]
      154 MUL                              R22 R19 R23
      155 MUL                              R26 R20 R12
      156 MUL                              R25 R26 R10
      157 ADD                              R24 R25 R21
      158 MUL                              R26 R22 R12
      159 MUL                              R25 R26 R11
      160 ADD                              R23 R24 R25
      161 DIV                              R24 R18 R23
      162 SUBRK                            R26 R18 K23 [NULL]
      163 DIV                              R25 R18 R26
      164 RETURN                           R24 2
      165 GETTABLEKS                       R23 R8 K19 ["Value"]
      167 MUL                              R22 R14 R23
      168 GETTABLEKS                       R24 R9 K19 ["Value"]
      170 MUL                              R23 R16 R24
      171 ADD                              R21 R22 R23
      172 DIV                              R20 R21 R12
      173 MUL                              R21 R15 R10
      174 ADD                              R19 R20 R21
      175 MUL                              R20 R17 R11
      176 ADD                              R18 R19 R20
      177 MOVE                             R19 R18
      178 MOVE                             R20 R18
      179 RETURN                           R19 2
      180 LOADN                            R6 0
      181 LOADN                            R7 0
      182 RETURN                           R6 2

PROTO_16:
        0 JUMPIFLT                         R2 R3 ; [+2]
        2 LOADB                            R5 0 +1
        3 LOADB                            R5 1
        4 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        6 LOADK                            R6 K0 ["Low keyframe must be less than high keyframe."]
        7 GETIMPORT                        R4 K2 [assert]
        9 CALL                             R4 2 0
       10 GETTABLEKS                       R4 R0 K3 ["Data"]
       12 GETTABLE                         R5 R4 R2
       13 GETTABLE                         R6 R4 R3
       14 SUB                              R7 R3 R2
       15 SUB                              R9 R1 R2
       16 DIV                              R8 R9 R7
       17 GETTABLEKS                       R9 R5 K4 ["InterpolationMode"]
       19 GETIMPORT                        R10 K8 [Enum.KeyInterpolationMode.Constant]
       21 JUMPIFNOTEQ                      R9 R10 ; [+4]
       23 GETTABLEKS                       R9 R5 K9 ["Value"]
       25 RETURN                           R9 1
       26 GETTABLEKS                       R9 R5 K4 ["InterpolationMode"]
       28 GETIMPORT                        R10 K11 [Enum.KeyInterpolationMode.Linear]
       30 JUMPIFNOTEQ                      R9 R10 ; [+11]
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K12 ["interpolate"]
       35 GETTABLEKS                       R10 R5 K9 ["Value"]
       37 GETTABLEKS                       R11 R6 K9 ["Value"]
       39 MOVE                             R12 R8
       40 CALL                             R9 3 -1
       41 RETURN                           R9 -1
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K13 ["getSlope"]
       45 MOVE                             R10 R0
       46 MOVE                             R11 R2
       47 GETUPVAL                         R12 1
       48 GETTABLEKS                       R12 R12 K14 ["SLOPES"]
       50 GETTABLEKS                       R12 R12 K15 ["Right"]
       52 CALL                             R9 3 1
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K13 ["getSlope"]
       56 MOVE                             R11 R0
       57 MOVE                             R12 R3
       58 GETUPVAL                         R13 1
       59 GETTABLEKS                       R13 R13 K14 ["SLOPES"]
       61 GETTABLEKS                       R13 R13 K16 ["Left"]
       63 CALL                             R10 3 1
       64 MUL                              R11 R8 R8
       65 LOADN                            R16 2
       66 MUL                              R15 R16 R8
       67 SUBK                             R14 R15 K18 [3]
       68 MUL                              R13 R11 R14
       69 ADDK                             R12 R13 K17 [1]
       70 SUBK                             R16 R8 K19 [2]
       71 MUL                              R15 R16 R8
       72 ADDK                             R14 R15 K17 [1]
       73 MUL                              R13 R14 R8
       74 LOADN                            R17 2
       75 MUL                              R16 R17 R8
       76 SUBRK                            R15 R18 K16 ["Left"]
       77 MUL                              R14 R11 R15
       78 SUBK                             R16 R8 K17 [1]
       79 MUL                              R15 R11 R16
       80 GETTABLEKS                       R16 R0 K20 ["Type"]
       82 GETUPVAL                         R17 1
       83 GETTABLEKS                       R17 R17 K21 ["TRACK_TYPES"]
       85 GETTABLEKS                       R17 R17 K22 ["Quaternion"]
       87 JUMPIFNOTEQ                      R16 R17 ; [+17]
       89 MUL                              R19 R13 R7
       90 MUL                              R18 R19 R9
       91 ADD                              R17 R18 R14
       92 MUL                              R19 R15 R7
       93 MUL                              R18 R19 R10
       94 ADD                              R16 R17 R18
       95 GETUPVAL                         R17 0
       96 GETTABLEKS                       R17 R17 K12 ["interpolate"]
       98 GETTABLEKS                       R18 R5 K9 ["Value"]
      100 GETTABLEKS                       R19 R6 K9 ["Value"]
      102 MOVE                             R20 R16
      103 CALL                             R17 3 -1
      104 RETURN                           R17 -1
      105 GETTABLEKS                       R20 R5 K9 ["Value"]
      107 MUL                              R19 R12 R20
      108 MUL                              R21 R13 R7
      109 MUL                              R20 R21 R9
      110 ADD                              R18 R19 R20
      111 GETTABLEKS                       R20 R6 K9 ["Value"]
      113 MUL                              R19 R14 R20
      114 ADD                              R17 R18 R19
      115 MUL                              R19 R15 R7
      116 MUL                              R18 R19 R10
      117 ADD                              R16 R17 R18
      118 RETURN                           R16 1

PROTO_17:
        0 JUMPIFLT                         R2 R3 ; [+2]
        2 LOADB                            R5 0 +1
        3 LOADB                            R5 1
        4 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        6 LOADK                            R6 K0 ["Low keyframe must be less than high keyframe."]
        7 GETIMPORT                        R4 K2 [assert]
        9 CALL                             R4 2 0
       10 GETTABLE                         R4 R0 R2
       11 GETTABLE                         R5 R0 R3
       12 SUB                              R7 R1 R2
       13 SUB                              R8 R3 R2
       14 DIV                              R6 R7 R8
       15 LOADNIL                          R7
       16 GETTABLEKS                       R8 R4 K3 ["EasingStyle"]
       18 GETIMPORT                        R9 K7 [Enum.PoseEasingStyle.Constant]
       20 JUMPIFNOTEQ                      R8 R9 ; [+4]
       22 GETTABLEKS                       R8 R4 K8 ["Value"]
       24 RETURN                           R8 1
       25 GETTABLEKS                       R8 R4 K3 ["EasingStyle"]
       27 GETIMPORT                        R9 K10 [Enum.PoseEasingStyle.Linear]
       29 JUMPIFNOTEQ                      R8 R9 ; [+3]
       31 MOVE                             R7 R6
       32 JUMP                             ; [+47]
       33 GETTABLEKS                       R8 R4 K3 ["EasingStyle"]
       35 GETIMPORT                        R9 K12 [Enum.PoseEasingStyle.CubicV2]
       37 JUMPIFNOTEQ                      R8 R9 ; [+22]
       39 GETUPVAL                         R8 0
       40 MOVE                             R10 R6
       41 GETIMPORT                        R12 K13 [Enum.EasingStyle]
       43 GETIMPORT                        R13 K15 [Enum.PoseEasingStyle.Cubic]
       45 GETTABLEKS                       R13 R13 K16 ["Name"]
       47 GETTABLE                         R11 R12 R13
       48 GETIMPORT                        R13 K18 [Enum.EasingDirection]
       50 GETTABLEKS                       R14 R4 K17 ["EasingDirection"]
       52 GETTABLEKS                       R14 R14 K16 ["Name"]
       54 GETTABLE                         R12 R13 R14
       55 NAMECALL                         R8 R8 K19 ["GetValue"]
       57 CALL                             R8 4 1
       58 MOVE                             R7 R8
       59 JUMP                             ; [+20]
       60 GETUPVAL                         R8 0
       61 MOVE                             R10 R6
       62 GETIMPORT                        R12 K13 [Enum.EasingStyle]
       64 GETTABLEKS                       R13 R4 K3 ["EasingStyle"]
       66 GETTABLEKS                       R13 R13 K16 ["Name"]
       68 GETTABLE                         R11 R12 R13
       69 GETIMPORT                        R13 K18 [Enum.EasingDirection]
       71 GETTABLEKS                       R14 R4 K17 ["EasingDirection"]
       73 GETTABLEKS                       R14 R14 K16 ["Name"]
       75 GETTABLE                         R12 R13 R14
       76 NAMECALL                         R8 R8 K19 ["GetValue"]
       78 CALL                             R8 4 1
       79 MOVE                             R7 R8
       80 GETUPVAL                         R8 1
       81 GETTABLEKS                       R8 R8 K20 ["interpolate"]
       83 GETTABLEKS                       R9 R4 K8 ["Value"]
       85 GETTABLEKS                       R10 R5 K8 ["Value"]
       87 MOVE                             R11 R7
       88 CALL                             R8 3 -1
       89 RETURN                           R8 -1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
        2 JUMPIFNOT                        R3 ; [+55]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R4 R0 K0 ["Keyframes"]
        6 CALL                             R3 1 1
        7 JUMPIF                           R3 ; [+50]
        8 GETTABLEKS                       R3 R0 K1 ["Data"]
       10 JUMPIFNOT                        R3 ; [+47]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R0 K1 ["Data"]
       14 CALL                             R3 1 1
       15 JUMPIF                           R3 ; [+42]
       16 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K2 ["findNearestKeyframes"]
       21 MOVE                             R5 R3
       22 MOVE                             R6 R1
       23 CALL                             R4 2 2
       24 GETTABLE                         R6 R3 R4
       25 MOVE                             R7 R5
       26 JUMPIFNOT                        R7 ; [+1]
       27 GETTABLE                         R7 R3 R5
       28 JUMPIFNOTEQKNIL                  R5 ; [+7]
       30 GETTABLEKS                       R9 R0 K1 ["Data"]
       32 GETTABLE                         R8 R9 R6
       33 GETTABLEKS                       R8 R8 K3 ["Value"]
       35 RETURN                           R8 1
       36 GETTABLEKS                       R8 R0 K4 ["IsCurveTrack"]
       38 JUMPIFNOT                        R8 ; [+9]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K5 ["blendCurveKeyframes"]
       42 MOVE                             R9 R0
       43 MOVE                             R10 R1
       44 MOVE                             R11 R6
       45 MOVE                             R12 R7
       46 CALL                             R8 4 -1
       47 RETURN                           R8 -1
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K6 ["blendKeyframes"]
       51 GETTABLEKS                       R9 R0 K1 ["Data"]
       53 MOVE                             R10 R1
       54 MOVE                             R11 R6
       55 MOVE                             R12 R7
       56 CALL                             R8 4 -1
       57 RETURN                           R8 -1
       58 GETTABLEKS                       R3 R0 K7 ["Type"]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K8 ["TRACK_TYPES"]
       63 GETTABLEKS                       R4 R4 K9 ["CFrame"]
       65 JUMPIFNOTEQ                      R3 R4 ; [+110]
       67 GETUPVAL                         R4 3
       68 CALL                             R4 0 1
       69 JUMPIFNOT                        R4 ; [+4]
       70 JUMPIFNOT                        R0 ; [+12]
       71 GETTABLEKS                       R4 R0 K10 ["Components"]
       73 JUMPIFNOT                        R4 ; [+9]
       74 GETTABLEKS                       R4 R0 K10 ["Components"]
       76 GETUPVAL                         R5 2
       77 GETTABLEKS                       R5 R5 K11 ["PROPERTY_KEYS"]
       79 GETTABLEKS                       R5 R5 K12 ["Position"]
       81 GETTABLE                         R3 R4 R5
       82 JUMP                             ; [+1]
       83 LOADNIL                          R3
       84 GETUPVAL                         R5 3
       85 CALL                             R5 0 1
       86 JUMPIFNOT                        R5 ; [+4]
       87 JUMPIFNOT                        R0 ; [+12]
       88 GETTABLEKS                       R5 R0 K10 ["Components"]
       90 JUMPIFNOT                        R5 ; [+9]
       91 GETTABLEKS                       R5 R0 K10 ["Components"]
       93 GETUPVAL                         R6 2
       94 GETTABLEKS                       R6 R6 K11 ["PROPERTY_KEYS"]
       96 GETTABLEKS                       R6 R6 K13 ["Rotation"]
       98 GETTABLE                         R4 R5 R6
       99 JUMP                             ; [+1]
      100 LOADNIL                          R4
      101 JUMPIFNOT                        R3 ; [+8]
      102 GETUPVAL                         R5 1
      103 GETTABLEKS                       R5 R5 K14 ["getValue"]
      105 MOVE                             R6 R3
      106 MOVE                             R7 R1
      107 MOVE                             R8 R2
      108 CALL                             R5 3 1
      109 JUMPIF                           R5 ; [+4]
      110 FASTCALL                         VECTOR ; [+2]
      111 GETIMPORT                        R5 K17 [Vector3.new]
      113 CALL                             R5 0 1
      114 GETUPVAL                         R6 3
      115 CALL                             R6 0 1
      116 JUMPIFNOT                        R6 ; [+1]
      117 JUMPIFNOT                        R4 ; [+40]
      118 GETTABLEKS                       R6 R4 K7 ["Type"]
      120 GETUPVAL                         R7 2
      121 GETTABLEKS                       R7 R7 K8 ["TRACK_TYPES"]
      123 GETTABLEKS                       R7 R7 K18 ["EulerAngles"]
      125 JUMPIFNOTEQ                      R6 R7 ; [+32]
      127 JUMPIFNOT                        R4 ; [+8]
      128 GETUPVAL                         R6 1
      129 GETTABLEKS                       R6 R6 K14 ["getValue"]
      131 MOVE                             R7 R4
      132 MOVE                             R8 R1
      133 MOVE                             R9 R2
      134 CALL                             R6 3 1
      135 JUMPIF                           R6 ; [+4]
      136 FASTCALL                         VECTOR ; [+2]
      137 GETIMPORT                        R6 K17 [Vector3.new]
      139 CALL                             R6 0 1
      140 GETIMPORT                        R8 K19 [CFrame.new]
      142 MOVE                             R9 R5
      143 CALL                             R8 1 1
      144 GETIMPORT                        R9 K21 [CFrame.fromEulerAngles]
      146 GETTABLEKS                       R10 R6 K22 ["X"]
      148 GETTABLEKS                       R11 R6 K23 ["Y"]
      150 GETTABLEKS                       R12 R6 K24 ["Z"]
      152 GETTABLEKS                       R14 R4 K25 ["EulerAnglesOrder"]
      154 OR                               R13 R14 R2
      155 CALL                             R9 4 1
      156 MUL                              R7 R8 R9
      157 RETURN                           R7 1
      158 JUMPIFNOT                        R4 ; [+8]
      159 GETUPVAL                         R6 1
      160 GETTABLEKS                       R6 R6 K14 ["getValue"]
      162 MOVE                             R7 R4
      163 MOVE                             R8 R1
      164 MOVE                             R9 R2
      165 CALL                             R6 3 1
      166 JUMPIF                           R6 ; [+3]
      167 GETIMPORT                        R6 K19 [CFrame.new]
      169 CALL                             R6 0 1
      170 GETIMPORT                        R8 K19 [CFrame.new]
      172 MOVE                             R9 R5
      173 CALL                             R8 1 1
      174 MUL                              R7 R8 R6
      175 RETURN                           R7 1
      176 GETTABLEKS                       R3 R0 K7 ["Type"]
      178 GETUPVAL                         R4 2
      179 GETTABLEKS                       R4 R4 K8 ["TRACK_TYPES"]
      181 GETTABLEKS                       R4 R4 K12 ["Position"]
      183 JUMPIFEQ                         R3 R4 ; [+10]
      185 GETTABLEKS                       R3 R0 K7 ["Type"]
      187 GETUPVAL                         R4 2
      188 GETTABLEKS                       R4 R4 K8 ["TRACK_TYPES"]
      190 GETTABLEKS                       R4 R4 K18 ["EulerAngles"]
      192 JUMPIFNOTEQ                      R3 R4 ; [+67]
      194 GETTABLEKS                       R3 R0 K10 ["Components"]
      196 JUMPIFNOT                        R3 ; [+63]
      197 GETTABLEKS                       R4 R0 K10 ["Components"]
      199 GETUPVAL                         R5 2
      200 GETTABLEKS                       R5 R5 K11 ["PROPERTY_KEYS"]
      202 GETTABLEKS                       R5 R5 K22 ["X"]
      204 GETTABLE                         R3 R4 R5
      205 GETTABLEKS                       R5 R0 K10 ["Components"]
      207 GETUPVAL                         R6 2
      208 GETTABLEKS                       R6 R6 K11 ["PROPERTY_KEYS"]
      210 GETTABLEKS                       R6 R6 K23 ["Y"]
      212 GETTABLE                         R4 R5 R6
      213 GETTABLEKS                       R6 R0 K10 ["Components"]
      215 GETUPVAL                         R7 2
      216 GETTABLEKS                       R7 R7 K11 ["PROPERTY_KEYS"]
      218 GETTABLEKS                       R7 R7 K24 ["Z"]
      220 GETTABLE                         R5 R6 R7
      221 JUMPIFNOT                        R3 ; [+8]
      222 GETUPVAL                         R6 1
      223 GETTABLEKS                       R6 R6 K14 ["getValue"]
      225 MOVE                             R7 R3
      226 MOVE                             R8 R1
      227 MOVE                             R9 R2
      228 CALL                             R6 3 1
      229 JUMPIF                           R6 ; [+1]
      230 LOADN                            R6 0
      231 JUMPIFNOT                        R4 ; [+8]
      232 GETUPVAL                         R7 1
      233 GETTABLEKS                       R7 R7 K14 ["getValue"]
      235 MOVE                             R8 R4
      236 MOVE                             R9 R1
      237 MOVE                             R10 R2
      238 CALL                             R7 3 1
      239 JUMPIF                           R7 ; [+1]
      240 LOADN                            R7 0
      241 JUMPIFNOT                        R5 ; [+8]
      242 GETUPVAL                         R8 1
      243 GETTABLEKS                       R8 R8 K14 ["getValue"]
      245 MOVE                             R9 R5
      246 MOVE                             R10 R1
      247 MOVE                             R11 R2
      248 CALL                             R8 3 1
      249 JUMPIF                           R8 ; [+1]
      250 LOADN                            R8 0
      251 FASTCALL3                        VECTOR R6 R7 R8
      253 MOVE                             R10 R6
      254 MOVE                             R11 R7
      255 MOVE                             R12 R8
      256 GETIMPORT                        R9 K17 [Vector3.new]
      258 CALL                             R9 3 1
      259 RETURN                           R9 1
      260 GETUPVAL                         R3 1
      261 GETTABLEKS                       R3 R3 K26 ["getDefaultValue"]
      263 GETTABLEKS                       R4 R0 K7 ["Type"]
      265 CALL                             R3 1 -1
      266 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["isEmpty"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K12 [game]
       34 LOADK                            R6 K13 ["TweenService"]
       35 NAMECALL                         R4 R4 K14 ["GetService"]
       37 CALL                             R4 2 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R0 K15 ["LuaFlags"]
       42 GETTABLEKS                       R6 R6 K16 ["GetFFlagFacialAnimationRecordingInStudio"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R0 K15 ["LuaFlags"]
       49 GETTABLEKS                       R7 R7 K17 ["GetFFlagControlRig"]
       51 CALL                             R6 1 1
       52 NEWTABLE                         R7 16 0
       54 DUPCLOSURE                       R8 K18 [PROTO_0]
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R8 R7 K19 ["getDefaultValue"]
       59 DUPCLOSURE                       R8 K20 [PROTO_1]
       60 SETTABLEKS                       R8 R7 K21 ["findNearestKeyframes"]
       62 DUPCLOSURE                       R8 K22 [PROTO_2]
       63 SETTABLEKS                       R8 R7 K23 ["findNearestKeyframesProperly"]
       65 DUPCLOSURE                       R8 K24 [PROTO_3]
       66 SETTABLEKS                       R8 R7 K25 ["findKeyframe"]
       68 DUPCLOSURE                       R8 K26 [PROTO_4]
       69 SETTABLEKS                       R8 R7 K27 ["findInsertIndex"]
       71 DUPCLOSURE                       R8 K28 [PROTO_5]
       72 SETTABLEKS                       R8 R7 K29 ["interpolate"]
       74 DUPCLOSURE                       R8 K30 [PROTO_6]
       75 SETTABLEKS                       R8 R7 K31 ["getNearestTick"]
       77 DUPCLOSURE                       R8 K32 [PROTO_7]
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R8 R7 K33 ["getNearestFrame"]
       81 DUPCLOSURE                       R8 K34 [PROTO_8]
       82 CAPTURE                          VAL R7
       83 SETTABLEKS                       R8 R7 K35 ["snapToFrame"]
       85 DUPCLOSURE                       R8 K36 [PROTO_14]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R8 R7 K37 ["getSlope"]
       90 DUPCLOSURE                       R8 K38 [PROTO_15]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R1
       94 SETTABLEKS                       R8 R7 K39 ["getSlopes"]
       96 DUPCLOSURE                       R8 K40 [PROTO_16]
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R1
       99 SETTABLEKS                       R8 R7 K41 ["blendCurveKeyframes"]
      101 DUPCLOSURE                       R8 K42 [PROTO_17]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R7
      104 SETTABLEKS                       R8 R7 K43 ["blendKeyframes"]
      106 DUPCLOSURE                       R8 K44 [PROTO_18]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R8 R7 K45 ["getValue"]
      113 RETURN                           R7 1
