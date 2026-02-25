PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R2 R3 R0
        3 SETTABLE                         R2 R1 R0
        4 GETUPVAL                         R1 2
        5 ADDK                             R1 R1 K0 [1]
        6 SETUPVAL                         R1 2
        7 GETUPVAL                         R1 3
        8 JUMPIFNOT                        R1 ; [+9]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["onAnimationComplete"]
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R1 R2 K1 ["onAnimationComplete"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 2
       19 GETUPVAL                         R2 4
       20 JUMPIFNOTEQ                      R1 R2 ; [+12]
       22 GETUPVAL                         R1 3
       23 JUMPIFNOT                        R1 ; [+9]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R1 R2 K1 ["onAnimationComplete"]
       27 JUMPIFNOT                        R1 ; [+5]
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R1 R2 K1 ["onAnimationComplete"]
       31 LOADB                            R2 1
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLE                         R2 R3 R0
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 3
        6 ADDK                             R1 R1 K0 [1]
        7 SETUPVAL                         R1 3
        8 GETUPVAL                         R1 4
        9 JUMPIFNOT                        R1 ; [+9]
       10 GETUPVAL                         R2 4
       11 GETTABLEKS                       R1 R2 K1 ["onAnimationComplete"]
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R1 R2 K1 ["onAnimationComplete"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 3
       20 GETUPVAL                         R2 5
       21 JUMPIFNOTEQ                      R1 R2 ; [+12]
       23 GETUPVAL                         R1 4
       24 JUMPIFNOT                        R1 ; [+9]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R1 R2 K1 ["onAnimationComplete"]
       28 JUMPIFNOT                        R1 ; [+5]
       29 GETUPVAL                         R2 4
       30 GETTABLEKS                       R1 R2 K1 ["onAnimationComplete"]
       32 LOADB                            R2 1
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R0 R1
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 3
        8 GETUPVAL                         R3 1
        9 GETTABLE                         R1 R2 R3
       10 GETUPVAL                         R2 4
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 LOADN                            R2 0
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R4 0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 JUMPIFEQKS                       R7 K0 ["transition"] ; [+5]
       11 GETTABLE                         R9 R0 R7
       12 JUMPIFEQKNIL                     R9 ; [+2]
       14 ADDK                             R2 R2 K1 [1]
       15 FORGLOOP                         R4 1 ; [-7]
       17 LOADN                            R4 0
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          REF R4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          REF R2
       24 GETUPVAL                         R6 0
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 FORGPREP                         R6
       28 JUMPIFEQKS                       R9 K0 ["transition"] ; [+85]
       30 GETTABLE                         R11 R0 R9
       31 JUMPIFEQKNIL                     R11 ; [+82]
       33 GETUPVAL                         R13 1
       34 GETTABLEKS                       R12 R13 K2 ["current"]
       36 GETTABLE                         R11 R12 R9
       37 JUMPIFNOT                        R11 ; [+14]
       38 GETUPVAL                         R13 1
       39 GETTABLEKS                       R12 R13 K2 ["current"]
       41 GETTABLE                         R11 R12 R9
       42 JUMPIFNOT                        R11 ; [+4]
       43 GETIMPORT                        R12 K5 [task.cancel]
       45 MOVE                             R13 R11
       46 CALL                             R12 1 0
       47 GETUPVAL                         R13 1
       48 GETTABLEKS                       R12 R13 K2 ["current"]
       50 LOADNIL                          R13
       51 SETTABLE                         R13 R12 R9
       52 GETTABLEKS                       R11 R0 K0 ["transition"]
       54 JUMPIF                           R11 ; [+10]
       55 NEWTABLE                         R11 1 0
       57 GETUPVAL                         R13 2
       58 GETTABLEKS                       R12 R13 K6 ["Default"]
       60 GETUPVAL                         R14 3
       61 GETTABLEKS                       R13 R14 K7 ["getDefaultTransition"]
       63 CALL                             R13 0 1
       64 SETTABLE                         R13 R11 R12
       65 GETTABLE                         R12 R11 R9
       66 JUMPIF                           R12 ; [+9]
       67 GETUPVAL                         R14 2
       68 GETTABLEKS                       R13 R14 K6 ["Default"]
       70 GETTABLE                         R12 R11 R13
       71 JUMPIF                           R12 ; [+4]
       72 GETUPVAL                         R13 3
       73 GETTABLEKS                       R12 R13 K7 ["getDefaultTransition"]
       75 CALL                             R12 0 1
       76 GETIMPORT                        R13 K10 [table.clone]
       78 MOVE                             R14 R12
       79 CALL                             R13 1 1
       80 NEWCLOSURE                       R14 P1
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R0
       84 CAPTURE                          REF R4
       85 CAPTURE                          VAL R1
       86 CAPTURE                          REF R2
       87 SETTABLEKS                       R14 R13 K11 ["onComplete"]
       89 GETTABLEKS                       R15 R13 K13 ["delay"]
       91 ORK                              R14 R15 K12 [0]
       92 LOADN                            R15 0
       93 JUMPIFNOTLT                      R15 R14 ; [+16]
       95 GETIMPORT                        R15 K14 [task.delay]
       97 MOVE                             R16 R14
       98 NEWCLOSURE                       R17 P2
       99 CAPTURE                          UPVAL U1
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R13
      104 CALL                             R15 2 1
      105 GETUPVAL                         R17 1
      106 GETTABLEKS                       R16 R17 K2 ["current"]
      108 SETTABLE                         R15 R16 R9
      109 JUMP                             ; [+4]
      110 MOVE                             R15 R10
      111 GETTABLE                         R16 R0 R9
      112 MOVE                             R17 R13
      113 CALL                             R15 2 0
      114 FORGLOOP                         R6 2 ; [-87]
      116 CLOSEUPVALS                      R2
      117 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["useRef"]
        7 NEWTABLE                         R4 0 0
        9 CALL                             R3 1 1
       10 MOVE                             R4 R0
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 FASTCALL1                        TYPE R8 ; [+3]
       15 MOVE                             R10 R8
       16 GETIMPORT                        R9 K2 [type]
       18 CALL                             R9 1 1
       19 JUMPIFNOTEQKS                    R9 K3 ["table"] ; [+3]
       21 JUMPIFEQKS                       R7 K4 ["transition"] ; [+6]
       23 GETUPVAL                         R9 1
       24 MOVE                             R10 R8
       25 CALL                             R9 1 2
       26 SETTABLE                         R9 R1 R7
       27 SETTABLE                         R10 R2 R7
       28 FORGLOOP                         R4 2 ; [-15]
       30 NEWCLOSURE                       R4 P0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 MOVE                             R5 R1
       36 MOVE                             R6 R4
       37 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R2 K5 ["React"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K6 ["useAnimatedValue"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R6 R1 K7 ["Types"]
       23 CALL                             R5 1 1
       24 GETIMPORT                        R6 K4 [require]
       26 GETTABLEKS                       R7 R0 K8 ["TimingConfigs"]
       28 CALL                             R6 1 1
       29 GETIMPORT                        R7 K4 [require]
       31 GETTABLEKS                       R9 R1 K9 ["Enums"]
       33 GETTABLEKS                       R8 R9 K10 ["TransitionPreset"]
       35 CALL                             R7 1 1
       36 DUPCLOSURE                       R8 K11 [PROTO_4]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R6
       41 RETURN                           R8 1
