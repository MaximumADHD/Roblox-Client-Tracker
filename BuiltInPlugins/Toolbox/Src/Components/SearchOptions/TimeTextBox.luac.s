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
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K7 ["minute"]
       21 JUMPIFNOTLE                      R6 R4 ; [+12]
       23 GETTABLEKS                       R8 R1 K0 ["min"]
       25 MODK                             R9 R8 K2 [60]
       26 ORK                              R7 R9 K1 [0]
       27 FASTCALL2                        MATH_MAX R7 R2 ; [+4]
       29 MOVE                             R8 R2
       30 GETIMPORT                        R6 K8 [math.max]
       32 CALL                             R6 2 1
       33 MOVE                             R2 R6
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K7 ["minute"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["secondRef"]
        3 GETTABLEKS                       R1 R2 K1 ["current"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["minuteRef"]
        9 GETTABLEKS                       R1 R2 K1 ["current"]
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["minute"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K4 ["sec"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R5 R6 K5 ["totalSeconds"]
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K6 ["props"]
       27 GETTABLEKS                       R6 R7 K7 ["defaultValue"]
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
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R7 R8 K2 ["minuteRef"]
       45 GETTABLEKS                       R6 R7 K1 ["current"]
       47 SETTABLEKS                       R1 R6 K9 ["Text"]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R7 R8 K0 ["secondRef"]
       52 GETTABLEKS                       R6 R7 K1 ["current"]
       54 SETTABLEKS                       R2 R6 K9 ["Text"]
       56 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"showSecLabel", "isTextboxFocused"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showSecLabel"]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K1 ["isTextboxFocused"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["secondRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["getClampedMinute"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["minute"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K4 ["props"]
       17 CALL                             R1 2 1
       18 SETTABLEKS                       R1 R0 K3 ["minute"]
       20 GETUPVAL                         R0 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K5 ["getClampedSec"]
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K6 ["sec"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K4 ["props"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K6 ["sec"]
       33 GETUPVAL                         R0 0
       34 LOADN                            R3 60
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K3 ["minute"]
       38 MUL                              R2 R3 R4
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R3 R4 K6 ["sec"]
       42 ADD                              R1 R2 R3
       43 SETTABLEKS                       R1 R0 K7 ["totalSeconds"]
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R0 R1 K8 ["updateTextboxes"]
       48 LOADB                            R1 0
       49 CALL                             R0 1 0
       50 GETUPVAL                         R0 0
       51 DUPTABLE                         R2 K12 [{"hasSeconds", "showSecLabel", "isTextboxFocused"}]
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R6 R7 K0 ["secondRef"]
       55 GETTABLEKS                       R5 R6 K1 ["current"]
       57 GETTABLEKS                       R4 R5 K13 ["Text"]
       59 JUMPIFNOTEQKS                    R4 K14 [""] ; [+2]
       61 LOADB                            R3 0 +1
       62 LOADB                            R3 1
       63 SETTABLEKS                       R3 R2 K9 ["hasSeconds"]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R6 R7 K0 ["secondRef"]
       68 GETTABLEKS                       R5 R6 K1 ["current"]
       70 GETTABLEKS                       R4 R5 K13 ["Text"]
       72 JUMPIFNOTEQKS                    R4 K14 [""] ; [+2]
       74 LOADB                            R3 0 +1
       75 LOADB                            R3 1
       76 SETTABLEKS                       R3 R2 K10 ["showSecLabel"]
       78 LOADB                            R3 0
       79 SETTABLEKS                       R3 R2 K11 ["isTextboxFocused"]
       81 NAMECALL                         R0 R0 K15 ["setState"]
       83 CALL                             R0 2 0
       84 GETUPVAL                         R2 0
       85 GETTABLEKS                       R1 R2 K4 ["props"]
       87 GETTABLEKS                       R0 R1 K16 ["onDurationChange"]
       89 JUMPIFNOT                        R0 ; [+9]
       90 GETUPVAL                         R2 0
       91 GETTABLEKS                       R1 R2 K4 ["props"]
       93 GETTABLEKS                       R0 R1 K16 ["onDurationChange"]
       95 GETUPVAL                         R2 0
       96 GETTABLEKS                       R1 R2 K7 ["totalSeconds"]
       98 CALL                             R0 1 0
       99 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["secondRef"]
        3 GETTABLEKS                       R2 R3 K1 ["current"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["minuteRef"]
        9 GETTABLEKS                       R2 R3 K1 ["current"]
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
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R3 R4 K0 ["secondRef"]
       31 GETTABLEKS                       R2 R3 K1 ["current"]
       33 JUMPIFNOT                        R2 ; [+3]
       34 NAMECALL                         R3 R2 K8 ["CaptureFocus"]
       36 CALL                             R3 1 0
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R4 R5 K2 ["minuteRef"]
       40 GETTABLEKS                       R3 R4 K1 ["current"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K9 ["minute"]
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
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R5 R6 K12 ["props"]
       63 GETTABLEKS                       R4 R5 K13 ["defaultValue"]
       65 DIVK                             R6 R4 K15 [60]
       66 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       67 GETIMPORT                        R5 K18 [math.floor]
       69 CALL                             R5 1 1
       70 ORK                              R3 R5 K14 [0]
       71 SETTABLEKS                       R3 R2 K9 ["minute"]
       73 GETUPVAL                         R6 0
       74 GETTABLEKS                       R5 R6 K0 ["secondRef"]
       76 GETTABLEKS                       R4 R5 K1 ["current"]
       78 GETTABLEKS                       R3 R4 K3 ["Text"]
       80 FASTCALL1                        TONUMBER R3 ; [+2]
       81 GETIMPORT                        R2 K11 [tonumber]
       83 CALL                             R2 1 1
       84 JUMPIF                           R2 ; [+4]
       85 GETUPVAL                         R2 0
       86 LOADN                            R3 0
       87 SETTABLEKS                       R3 R2 K19 ["sec"]
       89 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["secondRef"]
        3 GETTABLEKS                       R0 R1 K1 ["current"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"hasSeconds"}]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R6 R7 K0 ["secondRef"]
       12 GETTABLEKS                       R5 R6 K1 ["current"]
       14 GETTABLEKS                       R4 R5 K4 ["Text"]
       16 JUMPIFNOTEQKS                    R4 K5 [""] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K2 ["hasSeconds"]
       22 NAMECALL                         R0 R0 K6 ["setState"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["secondRef"]
        3 GETTABLEKS                       R2 R3 K1 ["current"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["minuteRef"]
        9 GETTABLEKS                       R2 R3 K1 ["current"]
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKS                    R1 K3 ["Text"] ; [+53]
       15 GETTABLEKS                       R3 R0 K3 ["Text"]
       17 LENGTH                           R2 R3
       18 LOADN                            R3 2
       19 JUMPIFNOTLT                      R3 R2 ; [+16]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["secondRef"]
       24 GETTABLEKS                       R2 R3 K1 ["current"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K4 ["sec"]
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
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R5 R6 K2 ["minuteRef"]
       49 GETTABLEKS                       R4 R5 K1 ["current"]
       51 GETTABLEKS                       R3 R4 K3 ["Text"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["minuteRef"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["secondRef"]
       12 GETTABLEKS                       R2 R0 K3 ["props"]
       14 GETTABLEKS                       R1 R2 K4 ["currentValue"]
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
       31 DUPTABLE                         R2 K15 [{"isTextboxFocused", "showSecLabel"}]
       32 LOADB                            R3 0
       33 SETTABLEKS                       R3 R2 K13 ["isTextboxFocused"]
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R2 K14 ["showSecLabel"]
       38 SETTABLEKS                       R2 R0 K16 ["state"]
       40 DUPCLOSURE                       R2 K17 [PROTO_2]
       41 SETTABLEKS                       R2 R0 K18 ["getClampedMinute"]
       43 NEWCLOSURE                       R2 P1
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R2 R0 K19 ["getClampedSec"]
       47 NEWCLOSURE                       R2 P2
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R2 R0 K20 ["updateTextboxes"]
       51 NEWCLOSURE                       R2 P3
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R2 R0 K21 ["onFocused"]
       55 NEWCLOSURE                       R2 P4
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R2 R0 K22 ["onFocusLost"]
       59 NEWCLOSURE                       R2 P5
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R2 R0 K23 ["onMinuteChanged"]
       63 NEWCLOSURE                       R2 P6
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R2 R0 K24 ["onSecondChange"]
       67 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["updateTextboxes"]
        2 LOADB                            R2 0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["min"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R4 K0 ["min"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+17]
        8 GETTABLEKS                       R2 R1 K2 ["max"]
       10 GETTABLEKS                       R4 R0 K1 ["props"]
       12 GETTABLEKS                       R3 R4 K2 ["max"]
       14 JUMPIFNOTEQ                      R2 R3 ; [+9]
       16 GETTABLEKS                       R2 R1 K3 ["currentValue"]
       18 GETTABLEKS                       R4 R0 K1 ["props"]
       20 GETTABLEKS                       R3 R4 K3 ["currentValue"]
       22 JUMPIFEQ                         R2 R3 ; [+61]
       24 GETTABLEKS                       R4 R0 K1 ["props"]
       26 GETTABLEKS                       R3 R4 K3 ["currentValue"]
       28 MODK                             R4 R3 K5 [60]
       29 ORK                              R2 R4 K4 [0]
       30 GETTABLEKS                       R5 R0 K1 ["props"]
       32 GETTABLEKS                       R4 R5 K3 ["currentValue"]
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
       67 GETTABLEKS                       R6 R0 K15 ["state"]
       69 GETTABLEKS                       R5 R6 K16 ["isTextboxFocused"]
       71 CALL                             R4 1 0
       72 GETTABLEKS                       R5 R0 K1 ["props"]
       74 GETTABLEKS                       R4 R5 K17 ["onDurationChange"]
       76 JUMPIFNOT                        R4 ; [+7]
       77 GETTABLEKS                       R5 R0 K1 ["props"]
       79 GETTABLEKS                       R4 R5 K17 ["onDurationChange"]
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
       46 GETTABLEKS                       R12 R3 K14 ["searchOptions"]
       48 GETTABLEKS                       R11 R12 K15 ["timeTextBox"]
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
       70 GETUPVAL                         R18 0
       71 GETTABLEKS                       R17 R18 K24 ["createElement"]
       73 GETUPVAL                         R18 1
       74 DUPTABLE                         R19 K32 [{"BackgroundTransparency", "BackgroundColor3", "BorderColor3", "BorderSizePixel", "LayoutOrder", "Position", "Size"}]
       75 LOADN                            R20 0
       76 SETTABLEKS                       R20 R19 K25 ["BackgroundTransparency"]
       78 GETTABLEKS                       R20 R11 K33 ["backgroundColor"]
       80 SETTABLEKS                       R20 R19 K26 ["BackgroundColor3"]
       82 JUMPIFNOT                        R5 ; [+3]
       83 GETTABLEKS                       R20 R11 K34 ["selectedBorderColor"]
       85 JUMPIF                           R20 ; [+2]
       86 GETTABLEKS                       R20 R11 K35 ["borderColor"]
       88 SETTABLEKS                       R20 R19 K27 ["BorderColor3"]
       90 LOADN                            R20 1
       91 SETTABLEKS                       R20 R19 K28 ["BorderSizePixel"]
       93 SETTABLEKS                       R14 R19 K29 ["LayoutOrder"]
       95 SETTABLEKS                       R13 R19 K30 ["Position"]
       97 SETTABLEKS                       R12 R19 K31 ["Size"]
       99 DUPTABLE                         R20 K41 [{"Padding", "MinuteTextField", "MinuteLabel", "SecondTextField", "SecondLabel"}]
      100 GETUPVAL                         R22 0
      101 GETTABLEKS                       R21 R22 K24 ["createElement"]
      103 LOADK                            R22 K42 ["UIPadding"]
      104 DUPTABLE                         R23 K47 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      105 GETIMPORT                        R24 K50 [UDim.new]
      107 LOADN                            R25 0
      108 LOADN                            R26 0
      109 CALL                             R24 2 1
      110 SETTABLEKS                       R24 R23 K43 ["PaddingTop"]
      112 GETIMPORT                        R24 K50 [UDim.new]
      114 LOADN                            R25 0
      115 LOADN                            R26 0
      116 CALL                             R24 2 1
      117 SETTABLEKS                       R24 R23 K44 ["PaddingBottom"]
      119 GETIMPORT                        R24 K50 [UDim.new]
      121 LOADN                            R25 0
      122 LOADN                            R26 5
      123 CALL                             R24 2 1
      124 SETTABLEKS                       R24 R23 K45 ["PaddingLeft"]
      126 GETIMPORT                        R24 K50 [UDim.new]
      128 LOADN                            R25 0
      129 LOADN                            R26 5
      130 CALL                             R24 2 1
      131 SETTABLEKS                       R24 R23 K46 ["PaddingRight"]
      133 CALL                             R21 2 1
      134 SETTABLEKS                       R21 R20 K36 ["Padding"]
      136 GETUPVAL                         R22 0
      137 GETTABLEKS                       R21 R22 K24 ["createElement"]
      139 LOADK                            R22 K51 ["TextBox"]
      140 NEWTABLE                         R23 16 0
      142 LOADN                            R24 1
      143 SETTABLEKS                       R24 R23 K25 ["BackgroundTransparency"]
      145 LOADB                            R24 0
      146 SETTABLEKS                       R24 R23 K52 ["ClearTextOnFocus"]
      148 GETUPVAL                         R25 2
      149 GETTABLEKS                       R24 R25 K53 ["FONT"]
      151 SETTABLEKS                       R24 R23 K54 ["Font"]
      153 LOADN                            R24 1
      154 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      156 GETIMPORT                        R24 K56 [UDim2.new]
      158 LOADK                            R25 K57 [0.5]
      159 LOADN                            R26 0
      160 LOADN                            R27 1
      161 LOADN                            R28 0
      162 CALL                             R24 4 1
      163 SETTABLEKS                       R24 R23 K31 ["Size"]
      165 SETTABLEKS                       R10 R23 K58 ["PlaceholderText"]
      167 JUMPIFNOT                        R5 ; [+3]
      168 GETTABLEKS                       R24 R11 K59 ["placeholderTextColor"]
      170 JUMPIF                           R24 ; [+2]
      171 GETTABLEKS                       R24 R11 K60 ["textColor"]
      173 SETTABLEKS                       R24 R23 K61 ["PlaceholderColor3"]
      175 LOADK                            R24 K62 [""]
      176 SETTABLEKS                       R24 R23 K63 ["Text"]
      178 GETTABLEKS                       R24 R11 K60 ["textColor"]
      180 SETTABLEKS                       R24 R23 K64 ["TextColor3"]
      182 GETUPVAL                         R25 2
      183 GETTABLEKS                       R24 R25 K65 ["FONT_SIZE_MEDIUM"]
      185 SETTABLEKS                       R24 R23 K66 ["TextSize"]
      187 GETIMPORT                        R24 K70 [Enum.TextXAlignment.Left]
      189 SETTABLEKS                       R24 R23 K68 ["TextXAlignment"]
      191 LOADN                            R24 2
      192 SETTABLEKS                       R24 R23 K71 ["ZIndex"]
      194 GETUPVAL                         R26 0
      195 GETTABLEKS                       R25 R26 K72 ["Event"]
      197 GETTABLEKS                       R24 R25 K73 ["Changed"]
      199 GETTABLEKS                       R25 R0 K74 ["onMinuteChanged"]
      201 SETTABLE                         R25 R23 R24
      202 GETUPVAL                         R26 0
      203 GETTABLEKS                       R25 R26 K72 ["Event"]
      205 GETTABLEKS                       R24 R25 K75 ["Focused"]
      207 GETTABLEKS                       R25 R0 K76 ["onFocused"]
      209 SETTABLE                         R25 R23 R24
      210 GETUPVAL                         R26 0
      211 GETTABLEKS                       R25 R26 K72 ["Event"]
      213 GETTABLEKS                       R24 R25 K77 ["FocusLost"]
      215 GETTABLEKS                       R25 R0 K78 ["onFocusLost"]
      217 SETTABLE                         R25 R23 R24
      218 GETUPVAL                         R25 0
      219 GETTABLEKS                       R24 R25 K79 ["Ref"]
      221 GETTABLEKS                       R25 R0 K80 ["minuteRef"]
      223 SETTABLE                         R25 R23 R24
      224 CALL                             R21 2 1
      225 SETTABLEKS                       R21 R20 K37 ["MinuteTextField"]
      227 GETUPVAL                         R22 0
      228 GETTABLEKS                       R21 R22 K24 ["createElement"]
      230 LOADK                            R22 K81 ["TextLabel"]
      231 DUPTABLE                         R23 K82 [{"BackgroundTransparency", "Font", "LayoutOrder", "Position", "Size", "Text", "TextColor3", "TextSize", "TextXAlignment"}]
      232 LOADN                            R24 1
      233 SETTABLEKS                       R24 R23 K25 ["BackgroundTransparency"]
      235 GETUPVAL                         R25 2
      236 GETTABLEKS                       R24 R25 K53 ["FONT"]
      238 SETTABLEKS                       R24 R23 K54 ["Font"]
      240 LOADN                            R24 2
      241 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      243 GETIMPORT                        R24 K56 [UDim2.new]
      245 LOADN                            R25 0
      246 LOADN                            R26 15
      247 LOADN                            R27 0
      248 LOADN                            R28 0
      249 CALL                             R24 4 1
      250 SETTABLEKS                       R24 R23 K30 ["Position"]
      252 GETIMPORT                        R24 K56 [UDim2.new]
      254 LOADN                            R25 0
      255 LOADN                            R26 15
      256 LOADN                            R27 1
      257 LOADN                            R28 0
      258 CALL                             R24 4 1
      259 SETTABLEKS                       R24 R23 K31 ["Size"]
      261 SETTABLEKS                       R16 R23 K63 ["Text"]
      263 GETTABLEKS                       R24 R11 K60 ["textColor"]
      265 SETTABLEKS                       R24 R23 K64 ["TextColor3"]
      267 GETUPVAL                         R25 2
      268 GETTABLEKS                       R24 R25 K65 ["FONT_SIZE_MEDIUM"]
      270 SETTABLEKS                       R24 R23 K66 ["TextSize"]
      272 GETIMPORT                        R24 K84 [Enum.TextXAlignment.Center]
      274 SETTABLEKS                       R24 R23 K68 ["TextXAlignment"]
      276 CALL                             R21 2 1
      277 SETTABLEKS                       R21 R20 K38 ["MinuteLabel"]
      279 GETUPVAL                         R22 0
      280 GETTABLEKS                       R21 R22 K24 ["createElement"]
      282 LOADK                            R22 K51 ["TextBox"]
      283 NEWTABLE                         R23 32 0
      285 LOADN                            R24 1
      286 SETTABLEKS                       R24 R23 K25 ["BackgroundTransparency"]
      288 LOADB                            R24 0
      289 SETTABLEKS                       R24 R23 K52 ["ClearTextOnFocus"]
      291 GETUPVAL                         R25 2
      292 GETTABLEKS                       R24 R25 K53 ["FONT"]
      294 SETTABLEKS                       R24 R23 K54 ["Font"]
      296 LOADN                            R24 3
      297 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      299 JUMPIFNOT                        R4 ; [+2]
      300 MOVE                             R24 R7
      301 JUMPIF                           R24 ; [+1]
      302 LOADK                            R24 K62 [""]
      303 SETTABLEKS                       R24 R23 K58 ["PlaceholderText"]
      305 GETTABLEKS                       R24 R11 K59 ["placeholderTextColor"]
      307 SETTABLEKS                       R24 R23 K61 ["PlaceholderColor3"]
      309 GETIMPORT                        R24 K56 [UDim2.new]
      311 LOADK                            R25 K57 [0.5]
      312 LOADN                            R26 0
      313 LOADN                            R27 0
      314 LOADN                            R28 0
      315 CALL                             R24 4 1
      316 SETTABLEKS                       R24 R23 K30 ["Position"]
      318 GETIMPORT                        R24 K56 [UDim2.new]
      320 LOADK                            R25 K57 [0.5]
      321 LOADN                            R26 0
      322 LOADN                            R27 1
      323 LOADN                            R28 0
      324 CALL                             R24 4 1
      325 SETTABLEKS                       R24 R23 K31 ["Size"]
      327 LOADK                            R24 K62 [""]
      328 SETTABLEKS                       R24 R23 K63 ["Text"]
      330 GETTABLEKS                       R24 R11 K60 ["textColor"]
      332 SETTABLEKS                       R24 R23 K64 ["TextColor3"]
      334 GETUPVAL                         R25 2
      335 GETTABLEKS                       R24 R25 K65 ["FONT_SIZE_MEDIUM"]
      337 SETTABLEKS                       R24 R23 K66 ["TextSize"]
      339 GETIMPORT                        R24 K70 [Enum.TextXAlignment.Left]
      341 SETTABLEKS                       R24 R23 K68 ["TextXAlignment"]
      343 LOADN                            R24 2
      344 SETTABLEKS                       R24 R23 K71 ["ZIndex"]
      346 GETUPVAL                         R26 0
      347 GETTABLEKS                       R25 R26 K72 ["Event"]
      349 GETTABLEKS                       R24 R25 K73 ["Changed"]
      351 GETTABLEKS                       R25 R0 K85 ["onSecondChange"]
      353 SETTABLE                         R25 R23 R24
      354 GETUPVAL                         R26 0
      355 GETTABLEKS                       R25 R26 K72 ["Event"]
      357 GETTABLEKS                       R24 R25 K75 ["Focused"]
      359 GETTABLEKS                       R25 R0 K76 ["onFocused"]
      361 SETTABLE                         R25 R23 R24
      362 GETUPVAL                         R26 0
      363 GETTABLEKS                       R25 R26 K72 ["Event"]
      365 GETTABLEKS                       R24 R25 K77 ["FocusLost"]
      367 GETTABLEKS                       R25 R0 K78 ["onFocusLost"]
      369 SETTABLE                         R25 R23 R24
      370 GETUPVAL                         R25 0
      371 GETTABLEKS                       R24 R25 K79 ["Ref"]
      373 GETTABLEKS                       R25 R0 K86 ["secondRef"]
      375 SETTABLE                         R25 R23 R24
      376 CALL                             R21 2 1
      377 SETTABLEKS                       R21 R20 K39 ["SecondTextField"]
      379 GETUPVAL                         R22 0
      380 GETTABLEKS                       R21 R22 K24 ["createElement"]
      382 LOADK                            R22 K81 ["TextLabel"]
      383 DUPTABLE                         R23 K88 [{"BackgroundTransparency", "Font", "LayoutOrder", "Position", "Size", "Text", "TextColor3", "TextSize", "TextTransparency", "TextXAlignment"}]
      384 LOADN                            R24 1
      385 SETTABLEKS                       R24 R23 K25 ["BackgroundTransparency"]
      387 GETUPVAL                         R25 2
      388 GETTABLEKS                       R24 R25 K53 ["FONT"]
      390 SETTABLEKS                       R24 R23 K54 ["Font"]
      392 LOADN                            R24 4
      393 SETTABLEKS                       R24 R23 K29 ["LayoutOrder"]
      395 GETIMPORT                        R24 K56 [UDim2.new]
      397 LOADK                            R25 K57 [0.5]
      398 LOADN                            R26 15
      399 LOADN                            R27 0
      400 LOADN                            R28 0
      401 CALL                             R24 4 1
      402 SETTABLEKS                       R24 R23 K30 ["Position"]
      404 GETIMPORT                        R24 K56 [UDim2.new]
      406 LOADN                            R25 0
      407 LOADN                            R26 15
      408 LOADN                            R27 1
      409 LOADN                            R28 0
      410 CALL                             R24 4 1
      411 SETTABLEKS                       R24 R23 K31 ["Size"]
      413 SETTABLEKS                       R15 R23 K63 ["Text"]
      415 GETTABLEKS                       R24 R11 K60 ["textColor"]
      417 SETTABLEKS                       R24 R23 K64 ["TextColor3"]
      419 GETUPVAL                         R25 2
      420 GETTABLEKS                       R24 R25 K65 ["FONT_SIZE_MEDIUM"]
      422 SETTABLEKS                       R24 R23 K66 ["TextSize"]
      424 JUMPIFNOT                        R4 ; [+2]
      425 LOADN                            R24 0
      426 JUMP                             ; [+1]
      427 LOADN                            R24 1
      428 SETTABLEKS                       R24 R23 K87 ["TextTransparency"]
      430 GETIMPORT                        R24 K84 [Enum.TextXAlignment.Center]
      432 SETTABLEKS                       R24 R23 K68 ["TextXAlignment"]
      434 CALL                             R21 2 1
      435 SETTABLEKS                       R21 R20 K40 ["SecondLabel"]
      437 CALL                             R17 3 -1
      438 RETURN                           R17 -1

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
       14 GETIMPORT                        R4 K6 [require]
       16 GETTABLEKS                       R5 R1 K8 ["Framework"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R3 R4 K9 ["ContextServices"]
       21 GETTABLEKS                       R4 R3 K10 ["withContext"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R8 R0 K11 ["Src"]
       27 GETTABLEKS                       R7 R8 K12 ["Util"]
       29 GETTABLEKS                       R6 R7 K13 ["Constants"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R9 R0 K11 ["Src"]
       36 GETTABLEKS                       R8 R9 K14 ["Components"]
       38 GETTABLEKS                       R7 R8 K15 ["RoundFrame"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R2 K16 ["PureComponent"]
       43 LOADK                            R9 K17 ["TimeTextBox"]
       44 NAMECALL                         R7 R7 K18 ["extend"]
       46 CALL                             R7 2 1
       47 DUPTABLE                         R8 K22 [{"defaultValue", "max", "min"}]
       48 LOADN                            R9 0
       49 SETTABLEKS                       R9 R8 K19 ["defaultValue"]
       51 LOADK                            R9 K23 [∞]
       52 SETTABLEKS                       R9 R8 K20 ["max"]
       54 LOADN                            R9 0
       55 SETTABLEKS                       R9 R8 K21 ["min"]
       57 SETTABLEKS                       R8 R7 K24 ["defaultProps"]
       59 DUPCLOSURE                       R8 K25 [PROTO_0]
       60 DUPCLOSURE                       R9 K26 [PROTO_1]
       61 DUPCLOSURE                       R10 K27 [PROTO_10]
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R10 R7 K28 ["init"]
       65 DUPCLOSURE                       R10 K29 [PROTO_11]
       66 SETTABLEKS                       R10 R7 K30 ["didMount"]
       68 DUPCLOSURE                       R10 K31 [PROTO_12]
       69 SETTABLEKS                       R10 R7 K32 ["didUpdate"]
       71 DUPCLOSURE                       R10 K33 [PROTO_13]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R10 R7 K34 ["render"]
       77 MOVE                             R10 R4
       78 DUPTABLE                         R11 K37 [{"Localization", "Stylizer"}]
       79 GETTABLEKS                       R12 R3 K35 ["Localization"]
       81 SETTABLEKS                       R12 R11 K35 ["Localization"]
       83 GETTABLEKS                       R12 R3 K36 ["Stylizer"]
       85 SETTABLEKS                       R12 R11 K36 ["Stylizer"]
       87 CALL                             R10 1 1
       88 MOVE                             R11 R7
       89 CALL                             R10 1 1
       90 MOVE                             R7 R10
       91 RETURN                           R7 1
