PROTO_0:
        0 MODK                             R2 R0 K1 [60]
        1 ORK                              R1 R2 K0 [0]
        2 RETURN                           R1 1

PROTO_1:
        0 DIVK                             R3 R0 K1 [60]
        1 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        2 GETIMPORT                        R2 K4 [math.floor]
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [0]
        6 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["min"]
        2 DIVK                             R6 R4 K2 [60]
        3 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        4 GETIMPORT                        R5 K5 [math.floor]
        6 CALL                             R5 1 1
        7 ORK                              R3 R5 K1 [0]
        8 FASTCALL2K                       MATH_MAX R3 K1 ; [+4]
       10 LOADK                            R4 K1 [0]
       11 GETIMPORT                        R2 K7 [math.max]
       13 CALL                             R2 2 1
       14 GETTABLEKS                       R4 R1 K6 ["max"]
       16 DIVK                             R6 R4 K2 [60]
       17 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       18 GETIMPORT                        R5 K5 [math.floor]
       20 CALL                             R5 1 1
       21 ORK                              R3 R5 K1 [0]
       22 FASTCALL3                        MATH_CLAMP R0 R2 R3
       24 MOVE                             R5 R0
       25 MOVE                             R6 R2
       26 MOVE                             R7 R3
       27 GETIMPORT                        R4 K9 [math.clamp]
       29 CALL                             R4 3 1
       30 RETURN                           R4 1

PROTO_3:
        0 LOADN                            R2 0
        1 LOADN                            R3 59
        2 GETTABLEKS                       R5 R1 K0 ["min"]
        4 DIVK                             R7 R5 K2 [60]
        5 FASTCALL1                        MATH_FLOOR R7 ; [+2]
        6 GETIMPORT                        R6 K5 [math.floor]
        8 CALL                             R6 1 1
        9 ORK                              R4 R6 K1 [0]
       10 GETTABLEKS                       R6 R1 K6 ["max"]
       12 DIVK                             R8 R6 K2 [60]
       13 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       14 GETIMPORT                        R7 K5 [math.floor]
       16 CALL                             R7 1 1
       17 ORK                              R5 R7 K1 [0]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K7 ["minute"]
       21 JUMPIFNOTLE                      R6 R4 ; [+12]
       23 GETTABLEKS                       R8 R1 K0 ["min"]
       25 MODK                             R9 R8 K2 [60]
       26 ORK                              R7 R9 K1 [0]
       27 FASTCALL2                        MATH_MAX R7 R2 ; [+4]
       29 MOVE                             R8 R2
       30 GETIMPORT                        R6 K8 [math.max]
       32 CALL                             R6 2 1
       33 MOVE                             R2 R6
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K7 ["minute"]
       37 JUMPIFNOTLE                      R5 R6 ; [+12]
       39 GETTABLEKS                       R8 R1 K6 ["max"]
       41 MODK                             R9 R8 K2 [60]
       42 ORK                              R7 R9 K1 [0]
       43 FASTCALL2                        MATH_MIN R7 R3 ; [+4]
       45 MOVE                             R8 R3
       46 GETIMPORT                        R6 K9 [math.min]
       48 CALL                             R6 2 1
       49 MOVE                             R3 R6
       50 FASTCALL3                        MATH_CLAMP R0 R2 R3
       52 MOVE                             R7 R0
       53 MOVE                             R8 R2
       54 MOVE                             R9 R3
       55 GETIMPORT                        R6 K11 [math.clamp]
       57 CALL                             R6 3 1
       58 RETURN                           R6 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["secondRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["minuteRef"]
        9 GETTABLEKS                       R1 R1 K1 ["current"]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["minute"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K4 ["sec"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K5 ["totalSeconds"]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K6 ["props"]
       27 GETTABLEKS                       R6 R6 K7 ["defaultValue"]
       29 JUMPIFNOTEQ                      R5 R6 ; [+4]
       31 LOADK                            R1 K8 [""]
       32 LOADK                            R2 K8 [""]
       33 JUMP                             ; [+8]
       34 MOVE                             R1 R3
       35 LOADN                            R7 0
       36 JUMPIFNOTLT                      R7 R4 ; [+3]
       38 MOVE                             R6 R4
       39 JUMPIF                           R6 ; [+1]
       40 LOADK                            R6 K8 [""]
       41 MOVE                             R2 R6
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K2 ["minuteRef"]
       45 GETTABLEKS                       R6 R6 K1 ["current"]
       47 SETTABLEKS                       R1 R6 K9 ["Text"]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K0 ["secondRef"]
       52 GETTABLEKS                       R6 R6 K1 ["current"]
       54 SETTABLEKS                       R2 R6 K9 ["Text"]
       56 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = True, ["isTextboxFocused"] = True}]
        2 NAMECALL                         R0 R0 K4 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["secondRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["getClampedMinute"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["minute"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K4 ["props"]
       17 CALL                             R1 2 1
       18 SETTABLEKS                       R1 R0 K3 ["minute"]
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K5 ["getClampedSec"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K6 ["sec"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K4 ["props"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K6 ["sec"]
       33 GETUPVAL                         R0 0
       34 LOADN                            R3 60
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K3 ["minute"]
       38 MUL                              R2 R3 R4
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K6 ["sec"]
       42 ADD                              R1 R2 R3
       43 SETTABLEKS                       R1 R0 K7 ["totalSeconds"]
       45 GETUPVAL                         R0 0
       46 GETTABLEKS                       R0 R0 K8 ["updateTextboxes"]
       48 LOADB                            R1 0
       49 CALL                             R0 1 0
       50 GETUPVAL                         R0 0
       51 DUPTABLE                         R2 K13 [{["hasSeconds"], ["showSecLabel"], ["isTextboxFocused"] = False}]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K0 ["secondRef"]
       55 GETTABLEKS                       R4 R4 K1 ["current"]
       57 GETTABLEKS                       R4 R4 K14 ["Text"]
       59 JUMPIFNOTEQKS                    R4 K15 [""] ; [+2]
       61 LOADB                            R3 0 +1
       62 LOADB                            R3 1
       63 SETTABLEKS                       R3 R2 K9 ["hasSeconds"]
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R4 R4 K0 ["secondRef"]
       68 GETTABLEKS                       R4 R4 K1 ["current"]
       70 GETTABLEKS                       R4 R4 K14 ["Text"]
       72 JUMPIFNOTEQKS                    R4 K15 [""] ; [+2]
       74 LOADB                            R3 0 +1
       75 LOADB                            R3 1
       76 SETTABLEKS                       R3 R2 K10 ["showSecLabel"]
       78 NAMECALL                         R0 R0 K16 ["setState"]
       80 CALL                             R0 2 0
       81 GETUPVAL                         R0 0
       82 GETTABLEKS                       R0 R0 K4 ["props"]
       84 GETTABLEKS                       R0 R0 K17 ["onDurationChange"]
       86 JUMPIFNOT                        R0 ; [+9]
       87 GETUPVAL                         R0 0
       88 GETTABLEKS                       R0 R0 K4 ["props"]
       90 GETTABLEKS                       R0 R0 K17 ["onDurationChange"]
       92 GETUPVAL                         R1 0
       93 GETTABLEKS                       R1 R1 K7 ["totalSeconds"]
       95 CALL                             R0 1 0
       96 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["secondRef"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["minuteRef"]
        9 GETTABLEKS                       R2 R2 K1 ["current"]
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKS                    R1 K3 ["Text"] ; [+75]
       15 GETTABLEKS                       R3 R0 K3 ["Text"]
       17 LENGTH                           R2 R3
       18 LOADN                            R3 2
       19 JUMPIFLT                         R3 R2 ; [+8]
       21 GETIMPORT                        R2 K6 [string.find]
       23 GETTABLEKS                       R3 R0 K3 ["Text"]
       25 LOADK                            R4 K7 ["\t"]
       26 CALL                             R2 2 1
       27 JUMPIFNOT                        R2 ; [+24]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K0 ["secondRef"]
       31 GETTABLEKS                       R2 R2 K1 ["current"]
       33 JUMPIFNOT                        R2 ; [+3]
       34 NAMECALL                         R3 R2 K8 ["CaptureFocus"]
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K2 ["minuteRef"]
       40 GETTABLEKS                       R3 R3 K1 ["current"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K9 ["minute"]
       45 FASTCALL1                        TONUMBER R5 ; [+2]
       46 GETIMPORT                        R4 K11 [tonumber]
       48 CALL                             R4 1 1
       49 SETTABLEKS                       R4 R3 K3 ["Text"]
       51 RETURN                           R0 0
       52 GETUPVAL                         R2 0
       53 GETTABLEKS                       R4 R0 K3 ["Text"]
       55 FASTCALL1                        TONUMBER R4 ; [+2]
       56 GETIMPORT                        R3 K11 [tonumber]
       58 CALL                             R3 1 1
       59 JUMPIF                           R3 ; [+11]
       60 GETUPVAL                         R4 0
       61 GETTABLEKS                       R4 R4 K12 ["props"]
       63 GETTABLEKS                       R4 R4 K13 ["defaultValue"]
       65 DIVK                             R6 R4 K15 [60]
       66 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       67 GETIMPORT                        R5 K18 [math.floor]
       69 CALL                             R5 1 1
       70 ORK                              R3 R5 K14 [0]
       71 SETTABLEKS                       R3 R2 K9 ["minute"]
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R3 R3 K0 ["secondRef"]
       76 GETTABLEKS                       R3 R3 K1 ["current"]
       78 GETTABLEKS                       R3 R3 K3 ["Text"]
       80 FASTCALL1                        TONUMBER R3 ; [+2]
       81 GETIMPORT                        R2 K11 [tonumber]
       83 CALL                             R2 1 1
       84 JUMPIF                           R2 ; [+4]
       85 GETUPVAL                         R2 0
       86 LOADN                            R3 0
       87 SETTABLEKS                       R3 R2 K19 ["sec"]
       89 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["secondRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"hasSeconds"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["secondRef"]
       12 GETTABLEKS                       R4 R4 K1 ["current"]
       14 GETTABLEKS                       R4 R4 K4 ["Text"]
       16 JUMPIFNOTEQKS                    R4 K5 [""] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K2 ["hasSeconds"]
       22 NAMECALL                         R0 R0 K6 ["setState"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["secondRef"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["minuteRef"]
        9 GETTABLEKS                       R2 R2 K1 ["current"]
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKS                    R1 K3 ["Text"] ; [+53]
       15 GETTABLEKS                       R3 R0 K3 ["Text"]
       17 LENGTH                           R2 R3
       18 LOADN                            R3 2
       19 JUMPIFNOTLT                      R3 R2 ; [+16]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K0 ["secondRef"]
       24 GETTABLEKS                       R2 R2 K1 ["current"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K4 ["sec"]
       29 FASTCALL1                        TONUMBER R4 ; [+2]
       30 GETIMPORT                        R3 K6 [tonumber]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R2 K3 ["Text"]
       35 RETURN                           R0 0
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R5 R0 K3 ["Text"]
       39 FASTCALL1                        TONUMBER R5 ; [+2]
       40 GETIMPORT                        R4 K6 [tonumber]
       42 CALL                             R4 1 1
       43 ORK                              R3 R4 K7 [0]
       44 SETTABLEKS                       R3 R2 K4 ["sec"]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K2 ["minuteRef"]
       49 GETTABLEKS                       R3 R3 K1 ["current"]
       51 GETTABLEKS                       R3 R3 K3 ["Text"]
       53 FASTCALL1                        TONUMBER R3 ; [+2]
       54 GETIMPORT                        R2 K6 [tonumber]
       56 CALL                             R2 1 1
       57 JUMPIF                           R2 ; [+4]
       58 GETUPVAL                         R2 0
       59 LOADN                            R3 0
       60 SETTABLEKS                       R3 R2 K8 ["minute"]
       62 GETIMPORT                        R2 K10 [spawn]
       64 NEWCLOSURE                       R3 P0
       65 CAPTURE                          UPVAL U0
       66 CALL                             R2 1 0
       67 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["minuteRef"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["secondRef"]
       12 GETTABLEKS                       R1 R0 K3 ["props"]
       14 GETTABLEKS                       R1 R1 K4 ["currentValue"]
       16 MODK                             R3 R1 K6 [60]
       17 ORK                              R2 R3 K5 [0]
       18 SETTABLEKS                       R2 R0 K7 ["sec"]
       20 DIVK                             R4 R1 K6 [60]
       21 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       22 GETIMPORT                        R3 K10 [math.floor]
       24 CALL                             R3 1 1
       25 ORK                              R2 R3 K5 [0]
       26 SETTABLEKS                       R2 R0 K11 ["minute"]
       28 ORK                              R2 R1 K5 [0]
       29 SETTABLEKS                       R2 R0 K12 ["totalSeconds"]
       31 DUPTABLE                         R2 K16 [{["isTextboxFocused"] = False, ["showSecLabel"] = False}]
       32 SETTABLEKS                       R2 R0 K17 ["state"]
       34 DUPCLOSURE                       R2 K18 [PROTO_2]
       35 SETTABLEKS                       R2 R0 K19 ["getClampedMinute"]
       37 NEWCLOSURE                       R2 P1
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R2 R0 K20 ["getClampedSec"]
       41 NEWCLOSURE                       R2 P2
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R2 R0 K21 ["updateTextboxes"]
       45 NEWCLOSURE                       R2 P3
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R2 R0 K22 ["onFocused"]
       49 NEWCLOSURE                       R2 P4
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R2 R0 K23 ["onFocusLost"]
       53 NEWCLOSURE                       R2 P5
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R2 R0 K24 ["onMinuteChanged"]
       57 NEWCLOSURE                       R2 P6
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R2 R0 K25 ["onSecondChange"]
       61 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["updateTextboxes"]
        2 LOADB                            R2 0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["min"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R3 K0 ["min"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+17]
        8 GETTABLEKS                       R2 R1 K2 ["max"]
       10 GETTABLEKS                       R3 R0 K1 ["props"]
       12 GETTABLEKS                       R3 R3 K2 ["max"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+9]
       16 GETTABLEKS                       R2 R1 K3 ["currentValue"]
       18 GETTABLEKS                       R3 R0 K1 ["props"]
       20 GETTABLEKS                       R3 R3 K3 ["currentValue"]
       22 JUMPIFEQ                         R2 R3 ; [+61]
       24 GETTABLEKS                       R3 R0 K1 ["props"]
       26 GETTABLEKS                       R3 R3 K3 ["currentValue"]
       28 MODK                             R4 R3 K5 [60]
       29 ORK                              R2 R4 K4 [0]
       30 GETTABLEKS                       R4 R0 K1 ["props"]
       32 GETTABLEKS                       R4 R4 K3 ["currentValue"]
       34 DIVK                             R6 R4 K5 [60]
       35 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       36 GETIMPORT                        R5 K8 [math.floor]
       38 CALL                             R5 1 1
       39 ORK                              R3 R5 K4 [0]
       40 GETTABLEKS                       R4 R0 K9 ["getClampedMinute"]
       42 MOVE                             R5 R3
       43 GETTABLEKS                       R6 R0 K1 ["props"]
       45 CALL                             R4 2 1
       46 SETTABLEKS                       R4 R0 K10 ["minute"]
       48 GETTABLEKS                       R4 R0 K11 ["getClampedSec"]
       50 MOVE                             R5 R2
       51 GETTABLEKS                       R6 R0 K1 ["props"]
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R0 K12 ["sec"]
       56 LOADN                            R6 60
       57 GETTABLEKS                       R7 R0 K10 ["minute"]
       59 MUL                              R5 R6 R7
       60 GETTABLEKS                       R6 R0 K12 ["sec"]
       62 ADD                              R4 R5 R6
       63 SETTABLEKS                       R4 R0 K13 ["totalSeconds"]
       65 GETTABLEKS                       R4 R0 K14 ["updateTextboxes"]
       67 GETTABLEKS                       R5 R0 K15 ["state"]
       69 GETTABLEKS                       R5 R5 K16 ["isTextboxFocused"]
       71 CALL                             R4 1 0
       72 GETTABLEKS                       R4 R0 K1 ["props"]
       74 GETTABLEKS                       R4 R4 K17 ["onDurationChange"]
       76 JUMPIFNOT                        R4 ; [+7]
       77 GETTABLEKS                       R4 R0 K1 ["props"]
       79 GETTABLEKS                       R4 R4 K17 ["onDurationChange"]
       81 GETTABLEKS                       R5 R0 K13 ["totalSeconds"]
       83 CALL                             R4 1 0
       84 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R2 K3 ["showSecLabel"]
        8 MOVE                             R5 R4
        9 JUMPIF                           R5 ; [+7]
       10 GETTABLEKS                       R6 R0 K4 ["sec"]
       12 LOADN                            R7 0
       13 JUMPIFLT                         R7 R6 ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 MOVE                             R4 R5
       18 GETTABLEKS                       R5 R2 K5 ["isTextboxFocused"]
       20 GETTABLEKS                       R7 R1 K6 ["defaultValue"]
       22 MODK                             R8 R7 K8 [60]
       23 ORK                              R6 R8 K7 [0]
       24 JUMPIFNOT                        R5 ; [+2]
       25 LOADK                            R7 K9 ["0"]
       26 JUMP                             ; [+1]
       27 MOVE                             R7 R6
       28 GETTABLEKS                       R9 R1 K6 ["defaultValue"]
       30 DIVK                             R11 R9 K8 [60]
       31 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       32 GETIMPORT                        R10 K12 [math.floor]
       34 CALL                             R10 1 1
       35 ORK                              R8 R10 K7 [0]
       36 GETTABLEKS                       R10 R2 K13 ["hasSeconds"]
       38 JUMPIFNOT                        R10 ; [+2]
       39 LOADK                            R9 K9 ["0"]
       40 JUMP                             ; [+1]
       41 MOVE                             R9 R8
       42 JUMPIFNOT                        R5 ; [+2]
       43 MOVE                             R10 R9
       44 JUMPIF                           R10 ; [+1]
       45 MOVE                             R10 R8
       46 GETTABLEKS                       R11 R3 K14 ["searchOptions"]
       48 GETTABLEKS                       R11 R11 K15 ["timeTextBox"]
       50 GETTABLEKS                       R12 R1 K16 ["size"]
       52 GETTABLEKS                       R13 R1 K17 ["position"]
       54 GETTABLEKS                       R14 R1 K18 ["layoutOrder"]
       56 GETTABLEKS                       R15 R1 K19 ["Localization"]
       58 LOADK                            R17 K20 ["General"]
       59 LOADK                            R18 K21 ["AbbreviatedSeconds"]
       60 NAMECALL                         R15 R15 K22 ["getText"]
       62 CALL                             R15 3 1
       63 GETTABLEKS                       R16 R1 K19 ["Localization"]
       65 LOADK                            R18 K20 ["General"]
       66 LOADK                            R19 K23 ["AbbreviatedMinutes"]
       67 NAMECALL                         R16 R16 K22 ["getText"]
       69 CALL                             R16 3 1
       70 GETUPVAL                         R17 0
       71 GETTABLEKS                       R17 R17 K24 ["createElement"]
       73 GETUPVAL                         R18 1
       74 DUPTABLE                         R19 K33 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["LayoutOrder"], ["Position"], ["Size"]}]
       75 GETTABLEKS                       R20 R11 K34 ["backgroundColor"]
       77 SETTABLEKS                       R20 R19 K26 ["BackgroundColor3"]
       79 JUMPIFNOT                        R5 ; [+3]
       80 GETTABLEKS                       R20 R11 K35 ["selectedBorderColor"]
       82 JUMPIF                           R20 ; [+2]
       83 GETTABLEKS                       R20 R11 K36 ["borderColor"]
       85 SETTABLEKS                       R20 R19 K27 ["BorderColor3"]
       87 SETTABLEKS                       R14 R19 K30 ["LayoutOrder"]
       89 SETTABLEKS                       R13 R19 K31 ["Position"]
       91 SETTABLEKS                       R12 R19 K32 ["Size"]
       93 DUPTABLE                         R20 K42 [{"Padding", "MinuteTextField", "MinuteLabel", "SecondTextField", "SecondLabel"}]
       94 GETUPVAL                         R21 0
       95 GETTABLEKS                       R21 R21 K24 ["createElement"]
       97 LOADK                            R22 K43 ["UIPadding"]
       98 DUPTABLE                         R23 K48 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       99 GETIMPORT                        R24 K51 [UDim.new]
      101 LOADN                            R25 0
      102 LOADN                            R26 0
      103 CALL                             R24 2 1
      104 SETTABLEKS                       R24 R23 K44 ["PaddingTop"]
      106 GETIMPORT                        R24 K51 [UDim.new]
      108 LOADN                            R25 0
      109 LOADN                            R26 0
      110 CALL                             R24 2 1
      111 SETTABLEKS                       R24 R23 K45 ["PaddingBottom"]
      113 GETIMPORT                        R24 K51 [UDim.new]
      115 LOADN                            R25 0
      116 LOADN                            R26 5
      117 CALL                             R24 2 1
      118 SETTABLEKS                       R24 R23 K46 ["PaddingLeft"]
      120 GETIMPORT                        R24 K51 [UDim.new]
      122 LOADN                            R25 0
      123 LOADN                            R26 5
      124 CALL                             R24 2 1
      125 SETTABLEKS                       R24 R23 K47 ["PaddingRight"]
      127 CALL                             R21 2 1
      128 SETTABLEKS                       R21 R20 K37 ["Padding"]
      130 GETUPVAL                         R21 0
      131 GETTABLEKS                       R21 R21 K24 ["createElement"]
      133 LOADK                            R22 K52 ["TextBox"]
      134 NEWTABLE                         R23 16 0
      136 LOADN                            R24 1
      137 SETTABLEKS                       R24 R23 K25 ["BackgroundTransparency"]
      139 LOADB                            R24 0
      140 SETTABLEKS                       R24 R23 K53 ["ClearTextOnFocus"]
      142 GETUPVAL                         R24 2
      143 GETTABLEKS                       R24 R24 K54 ["FONT"]
      145 SETTABLEKS                       R24 R23 K55 ["Font"]
      147 LOADN                            R24 1
      148 SETTABLEKS                       R24 R23 K30 ["LayoutOrder"]
      150 GETIMPORT                        R24 K57 [UDim2.new]
      152 LOADK                            R25 K58 [0.5]
      153 LOADN                            R26 0
      154 LOADN                            R27 1
      155 LOADN                            R28 0
      156 CALL                             R24 4 1
      157 SETTABLEKS                       R24 R23 K32 ["Size"]
      159 SETTABLEKS                       R10 R23 K59 ["PlaceholderText"]
      161 JUMPIFNOT                        R5 ; [+3]
      162 GETTABLEKS                       R24 R11 K60 ["placeholderTextColor"]
      164 JUMPIF                           R24 ; [+2]
      165 GETTABLEKS                       R24 R11 K61 ["textColor"]
      167 SETTABLEKS                       R24 R23 K62 ["PlaceholderColor3"]
      169 LOADK                            R24 K63 [""]
      170 SETTABLEKS                       R24 R23 K64 ["Text"]
      172 GETTABLEKS                       R24 R11 K61 ["textColor"]
      174 SETTABLEKS                       R24 R23 K65 ["TextColor3"]
      176 GETUPVAL                         R24 2
      177 GETTABLEKS                       R24 R24 K66 ["FONT_SIZE_MEDIUM"]
      179 SETTABLEKS                       R24 R23 K67 ["TextSize"]
      181 GETIMPORT                        R24 K71 [Enum.TextXAlignment.Left]
      183 SETTABLEKS                       R24 R23 K69 ["TextXAlignment"]
      185 LOADN                            R24 2
      186 SETTABLEKS                       R24 R23 K72 ["ZIndex"]
      188 GETUPVAL                         R24 0
      189 GETTABLEKS                       R24 R24 K73 ["Event"]
      191 GETTABLEKS                       R24 R24 K74 ["Changed"]
      193 GETTABLEKS                       R25 R0 K75 ["onMinuteChanged"]
      195 SETTABLE                         R25 R23 R24
      196 GETUPVAL                         R24 0
      197 GETTABLEKS                       R24 R24 K73 ["Event"]
      199 GETTABLEKS                       R24 R24 K76 ["Focused"]
      201 GETTABLEKS                       R25 R0 K77 ["onFocused"]
      203 SETTABLE                         R25 R23 R24
      204 GETUPVAL                         R24 0
      205 GETTABLEKS                       R24 R24 K73 ["Event"]
      207 GETTABLEKS                       R24 R24 K78 ["FocusLost"]
      209 GETTABLEKS                       R25 R0 K79 ["onFocusLost"]
      211 SETTABLE                         R25 R23 R24
      212 GETUPVAL                         R24 0
      213 GETTABLEKS                       R24 R24 K80 ["Ref"]
      215 GETTABLEKS                       R25 R0 K81 ["minuteRef"]
      217 SETTABLE                         R25 R23 R24
      218 CALL                             R21 2 1
      219 SETTABLEKS                       R21 R20 K38 ["MinuteTextField"]
      221 GETUPVAL                         R21 0
      222 GETTABLEKS                       R21 R21 K24 ["createElement"]
      224 LOADK                            R22 K82 ["TextLabel"]
      225 DUPTABLE                         R23 K84 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 2, ["Position"], ["Size"], ["Text"], ["TextColor3"], ["TextSize"], ["TextXAlignment"]}]
      226 GETUPVAL                         R24 2
      227 GETTABLEKS                       R24 R24 K54 ["FONT"]
      229 SETTABLEKS                       R24 R23 K55 ["Font"]
      231 GETIMPORT                        R24 K57 [UDim2.new]
      233 LOADN                            R25 0
      234 LOADN                            R26 15
      235 LOADN                            R27 0
      236 LOADN                            R28 0
      237 CALL                             R24 4 1
      238 SETTABLEKS                       R24 R23 K31 ["Position"]
      240 GETIMPORT                        R24 K57 [UDim2.new]
      242 LOADN                            R25 0
      243 LOADN                            R26 15
      244 LOADN                            R27 1
      245 LOADN                            R28 0
      246 CALL                             R24 4 1
      247 SETTABLEKS                       R24 R23 K32 ["Size"]
      249 SETTABLEKS                       R16 R23 K64 ["Text"]
      251 GETTABLEKS                       R24 R11 K61 ["textColor"]
      253 SETTABLEKS                       R24 R23 K65 ["TextColor3"]
      255 GETUPVAL                         R24 2
      256 GETTABLEKS                       R24 R24 K66 ["FONT_SIZE_MEDIUM"]
      258 SETTABLEKS                       R24 R23 K67 ["TextSize"]
      260 GETIMPORT                        R24 K86 [Enum.TextXAlignment.Center]
      262 SETTABLEKS                       R24 R23 K69 ["TextXAlignment"]
      264 CALL                             R21 2 1
      265 SETTABLEKS                       R21 R20 K39 ["MinuteLabel"]
      267 GETUPVAL                         R21 0
      268 GETTABLEKS                       R21 R21 K24 ["createElement"]
      270 LOADK                            R22 K52 ["TextBox"]
      271 NEWTABLE                         R23 32 0
      273 LOADN                            R24 1
      274 SETTABLEKS                       R24 R23 K25 ["BackgroundTransparency"]
      276 LOADB                            R24 0
      277 SETTABLEKS                       R24 R23 K53 ["ClearTextOnFocus"]
      279 GETUPVAL                         R24 2
      280 GETTABLEKS                       R24 R24 K54 ["FONT"]
      282 SETTABLEKS                       R24 R23 K55 ["Font"]
      284 LOADN                            R24 3
      285 SETTABLEKS                       R24 R23 K30 ["LayoutOrder"]
      287 JUMPIFNOT                        R4 ; [+2]
      288 MOVE                             R24 R7
      289 JUMPIF                           R24 ; [+1]
      290 LOADK                            R24 K63 [""]
      291 SETTABLEKS                       R24 R23 K59 ["PlaceholderText"]
      293 GETTABLEKS                       R24 R11 K60 ["placeholderTextColor"]
      295 SETTABLEKS                       R24 R23 K62 ["PlaceholderColor3"]
      297 GETIMPORT                        R24 K57 [UDim2.new]
      299 LOADK                            R25 K58 [0.5]
      300 LOADN                            R26 0
      301 LOADN                            R27 0
      302 LOADN                            R28 0
      303 CALL                             R24 4 1
      304 SETTABLEKS                       R24 R23 K31 ["Position"]
      306 GETIMPORT                        R24 K57 [UDim2.new]
      308 LOADK                            R25 K58 [0.5]
      309 LOADN                            R26 0
      310 LOADN                            R27 1
      311 LOADN                            R28 0
      312 CALL                             R24 4 1
      313 SETTABLEKS                       R24 R23 K32 ["Size"]
      315 LOADK                            R24 K63 [""]
      316 SETTABLEKS                       R24 R23 K64 ["Text"]
      318 GETTABLEKS                       R24 R11 K61 ["textColor"]
      320 SETTABLEKS                       R24 R23 K65 ["TextColor3"]
      322 GETUPVAL                         R24 2
      323 GETTABLEKS                       R24 R24 K66 ["FONT_SIZE_MEDIUM"]
      325 SETTABLEKS                       R24 R23 K67 ["TextSize"]
      327 GETIMPORT                        R24 K71 [Enum.TextXAlignment.Left]
      329 SETTABLEKS                       R24 R23 K69 ["TextXAlignment"]
      331 LOADN                            R24 2
      332 SETTABLEKS                       R24 R23 K72 ["ZIndex"]
      334 GETUPVAL                         R24 0
      335 GETTABLEKS                       R24 R24 K73 ["Event"]
      337 GETTABLEKS                       R24 R24 K74 ["Changed"]
      339 GETTABLEKS                       R25 R0 K87 ["onSecondChange"]
      341 SETTABLE                         R25 R23 R24
      342 GETUPVAL                         R24 0
      343 GETTABLEKS                       R24 R24 K73 ["Event"]
      345 GETTABLEKS                       R24 R24 K76 ["Focused"]
      347 GETTABLEKS                       R25 R0 K77 ["onFocused"]
      349 SETTABLE                         R25 R23 R24
      350 GETUPVAL                         R24 0
      351 GETTABLEKS                       R24 R24 K73 ["Event"]
      353 GETTABLEKS                       R24 R24 K78 ["FocusLost"]
      355 GETTABLEKS                       R25 R0 K79 ["onFocusLost"]
      357 SETTABLE                         R25 R23 R24
      358 GETUPVAL                         R24 0
      359 GETTABLEKS                       R24 R24 K80 ["Ref"]
      361 GETTABLEKS                       R25 R0 K88 ["secondRef"]
      363 SETTABLE                         R25 R23 R24
      364 CALL                             R21 2 1
      365 SETTABLEKS                       R21 R20 K40 ["SecondTextField"]
      367 GETUPVAL                         R21 0
      368 GETTABLEKS                       R21 R21 K24 ["createElement"]
      370 LOADK                            R22 K82 ["TextLabel"]
      371 DUPTABLE                         R23 K91 [{["BackgroundTransparency"] = 1, ["Font"], ["LayoutOrder"] = 4, ["Position"], ["Size"], ["Text"], ["TextColor3"], ["TextSize"], ["TextTransparency"], ["TextXAlignment"]}]
      372 GETUPVAL                         R24 2
      373 GETTABLEKS                       R24 R24 K54 ["FONT"]
      375 SETTABLEKS                       R24 R23 K55 ["Font"]
      377 GETIMPORT                        R24 K57 [UDim2.new]
      379 LOADK                            R25 K58 [0.5]
      380 LOADN                            R26 15
      381 LOADN                            R27 0
      382 LOADN                            R28 0
      383 CALL                             R24 4 1
      384 SETTABLEKS                       R24 R23 K31 ["Position"]
      386 GETIMPORT                        R24 K57 [UDim2.new]
      388 LOADN                            R25 0
      389 LOADN                            R26 15
      390 LOADN                            R27 1
      391 LOADN                            R28 0
      392 CALL                             R24 4 1
      393 SETTABLEKS                       R24 R23 K32 ["Size"]
      395 SETTABLEKS                       R15 R23 K64 ["Text"]
      397 GETTABLEKS                       R24 R11 K61 ["textColor"]
      399 SETTABLEKS                       R24 R23 K65 ["TextColor3"]
      401 GETUPVAL                         R24 2
      402 GETTABLEKS                       R24 R24 K66 ["FONT_SIZE_MEDIUM"]
      404 SETTABLEKS                       R24 R23 K67 ["TextSize"]
      406 JUMPIFNOT                        R4 ; [+2]
      407 LOADN                            R24 0
      408 JUMP                             ; [+1]
      409 LOADN                            R24 1
      410 SETTABLEKS                       R24 R23 K90 ["TextTransparency"]
      412 GETIMPORT                        R24 K86 [Enum.TextXAlignment.Center]
      414 SETTABLEKS                       R24 R23 K69 ["TextXAlignment"]
      416 CALL                             R21 2 1
      417 SETTABLEKS                       R21 R20 K41 ["SecondLabel"]
      419 CALL                             R17 3 -1
      420 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K9 ["ContextServices"]
       21 GETTABLEKS                       R4 R3 K10 ["withContext"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Src"]
       27 GETTABLEKS                       R6 R6 K12 ["Util"]
       29 GETTABLEKS                       R6 R6 K13 ["Constants"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R0 K11 ["Src"]
       36 GETTABLEKS                       R7 R7 K14 ["Components"]
       38 GETTABLEKS                       R7 R7 K15 ["RoundFrame"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R2 K16 ["PureComponent"]
       43 LOADK                            R9 K17 ["TimeTextBox"]
       44 NAMECALL                         R7 R7 K18 ["extend"]
       46 CALL                             R7 2 1
       47 DUPTABLE                         R8 K24 [{["defaultValue"] = 0, ["max"] = ∞, ["min"] = 0}]
       48 SETTABLEKS                       R8 R7 K25 ["defaultProps"]
       50 DUPCLOSURE                       R8 K26 [PROTO_0]
       51 DUPCLOSURE                       R9 K27 [PROTO_1]
       52 DUPCLOSURE                       R10 K28 [PROTO_10]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R10 R7 K29 ["init"]
       56 DUPCLOSURE                       R10 K30 [PROTO_11]
       57 SETTABLEKS                       R10 R7 K31 ["didMount"]
       59 DUPCLOSURE                       R10 K32 [PROTO_12]
       60 SETTABLEKS                       R10 R7 K33 ["didUpdate"]
       62 DUPCLOSURE                       R10 K34 [PROTO_13]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R10 R7 K35 ["render"]
       68 MOVE                             R10 R4
       69 DUPTABLE                         R11 K38 [{"Localization", "Stylizer"}]
       70 GETTABLEKS                       R12 R3 K36 ["Localization"]
       72 SETTABLEKS                       R12 R11 K36 ["Localization"]
       74 GETTABLEKS                       R12 R3 K37 ["Stylizer"]
       76 SETTABLEKS                       R12 R11 K37 ["Stylizer"]
       78 CALL                             R10 1 1
       79 MOVE                             R11 R7
       80 CALL                             R10 1 1
       81 MOVE                             R7 R10
       82 RETURN                           R7 1
