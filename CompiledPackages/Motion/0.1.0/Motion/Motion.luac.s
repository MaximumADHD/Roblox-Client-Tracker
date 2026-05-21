PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["transition"]
        2 JUMPIF                           R1 ; [+4]
        3 DUPTABLE                         R1 K2 [{"default"}]
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K1 ["default"]
        7 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"transition"}]
        1 DUPTABLE                         R3 K3 [{"default"}]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R4 R1 K2 ["default"]
        5 JUMPIF                           R4 ; [+1]
        6 GETUPVAL                         R4 0
        7 SETTABLEKS                       R4 R3 K2 ["default"]
        9 SETTABLEKS                       R3 R2 K0 ["transition"]
       11 MOVE                             R3 R0
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 SETTABLE                         R7 R2 R6
       16 JUMPIFNOT                        R1 ; [+11]
       17 GETTABLE                         R8 R1 R6
       18 JUMPIFNOT                        R8 ; [+9]
       19 GETTABLEKS                       R8 R2 K0 ["transition"]
       21 JUMPIF                           R8 ; [+4]
       22 DUPTABLE                         R8 K3 [{"default"}]
       23 GETUPVAL                         R9 0
       24 SETTABLEKS                       R9 R8 K2 ["default"]
       26 GETTABLE                         R9 R1 R6
       27 SETTABLE                         R9 R8 R6
       28 FORGLOOP                         R3 2 ; [-14]
       30 RETURN                           R2 1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+6]
        7 GETUPVAL                         R3 0
        8 GETTABLE                         R2 R3 R0
        9 JUMPIF                           R2 ; [+3]
       10 GETUPVAL                         R2 1
       11 JUMP                             ; [+1]
       12 MOVE                             R2 R0
       13 DUPTABLE                         R3 K6 [{"duration", "easingStyle", "delay"}]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R4 R2 K3 ["duration"]
       17 JUMPIF                           R4 ; [+3]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K3 ["duration"]
       21 SETTABLEKS                       R4 R3 K3 ["duration"]
       23 JUMPIFNOT                        R2 ; [+3]
       24 GETTABLEKS                       R4 R2 K4 ["easingStyle"]
       26 JUMPIF                           R4 ; [+3]
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K4 ["easingStyle"]
       30 SETTABLEKS                       R4 R3 K4 ["easingStyle"]
       32 JUMPIFNOT                        R2 ; [+3]
       33 GETTABLEKS                       R4 R2 K5 ["delay"]
       35 JUMPIF                           R4 ; [+3]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K5 ["delay"]
       39 SETTABLEKS                       R4 R3 K5 ["delay"]
       41 JUMPIFNOT                        R1 ; [+21]
       42 GETTABLEKS                       R4 R1 K3 ["duration"]
       44 JUMPIFNOT                        R4 ; [+4]
       45 GETTABLEKS                       R4 R1 K3 ["duration"]
       47 SETTABLEKS                       R4 R3 K3 ["duration"]
       49 GETTABLEKS                       R4 R1 K4 ["easingStyle"]
       51 JUMPIFNOT                        R4 ; [+4]
       52 GETTABLEKS                       R4 R1 K4 ["easingStyle"]
       54 SETTABLEKS                       R4 R3 K4 ["easingStyle"]
       56 GETTABLEKS                       R4 R1 K5 ["delay"]
       58 JUMPIFNOT                        R4 ; [+4]
       59 GETTABLEKS                       R4 R1 K5 ["delay"]
       61 SETTABLEKS                       R4 R3 K5 ["delay"]
       63 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLE                         R1 R2 R3
        4 GETUPVAL                         R2 3
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R2 R0 K0 ["transition"]
        4 JUMPIF                           R2 ; [+4]
        5 DUPTABLE                         R2 K2 [{"default"}]
        6 GETUPVAL                         R3 0
        7 SETTABLEKS                       R3 R2 K1 ["default"]
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETTABLE                         R8 R2 R6
       14 JUMPIFEQKNIL                     R8 ; [+3]
       16 MOVE                             R9 R8
       17 JUMP                             ; [+2]
       18 GETTABLEKS                       R9 R2 K1 ["default"]
       20 GETTABLEKS                       R10 R9 K3 ["delay"]
       22 JUMPIFNOT                        R10 ; [+20]
       23 GETTABLEKS                       R10 R9 K3 ["delay"]
       25 LOADN                            R11 0
       26 JUMPIFNOTLT                      R11 R10 ; [+16]
       28 GETIMPORT                        R10 K6 [table.clone]
       30 MOVE                             R11 R9
       31 CALL                             R10 1 1
       32 GETIMPORT                        R11 K8 [task.delay]
       34 GETTABLEKS                       R12 R9 K3 ["delay"]
       36 NEWCLOSURE                       R13 P0
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R10
       41 CALL                             R11 2 0
       42 JUMP                             ; [+4]
       43 MOVE                             R10 R7
       44 GETTABLE                         R11 R0 R6
       45 MOVE                             R12 R9
       46 CALL                             R10 2 0
       47 FORGLOOP                         R3 2 ; [-35]
       49 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Enums"]
       18 GETTABLEKS                       R2 R2 K7 ["TransitionPreset"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K1 [require]
       23 GETIMPORT                        R3 K3 [script]
       25 GETTABLEKS                       R3 R3 K4 ["Parent"]
       27 GETTABLEKS                       R3 R3 K8 ["Utility"]
       29 GETTABLEKS                       R3 R3 K9 ["TimingConfigs"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R2 K10 ["presets"]
       34 GETTABLEKS                       R5 R1 K11 ["Default"]
       36 GETTABLE                         R4 R3 R5
       37 NEWTABLE                         R5 4 0
       39 DUPCLOSURE                       R6 K12 [PROTO_0]
       40 CAPTURE                          VAL R4
       41 DUPCLOSURE                       R7 K13 [PROTO_1]
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R7 R5 K14 ["createState"]
       45 DUPCLOSURE                       R7 K15 [PROTO_2]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R7 R5 K16 ["transition"]
       50 DUPCLOSURE                       R7 K17 [PROTO_4]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R5 K18 ["animate"]
       54 RETURN                           R5 1
