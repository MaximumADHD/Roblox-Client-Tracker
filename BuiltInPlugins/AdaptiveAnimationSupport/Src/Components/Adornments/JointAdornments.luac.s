PROTO_0:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+1]
        5 JUMPIF                           R1 ; [+2]
        6 LOADK                            R2 K3 ["Dark"]
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R1 K4 ["Theme"]
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETTABLEKS                       R3 R2 K5 ["Name"]
       13 RETURN                           R3 1
       14 LOADK                            R3 K3 ["Dark"]
       15 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [pcall]
        3 DUPCLOSURE                       R3 K2 [PROTO_0]
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R2 ; [+1]
        6 JUMPIF                           R3 ; [+2]
        7 LOADK                            R1 K3 ["Dark"]
        8 JUMP                             ; [+7]
        9 GETTABLEKS                       R4 R3 K4 ["Theme"]
       11 JUMPIFNOT                        R4 ; [+3]
       12 GETTABLEKS                       R1 R4 K5 ["Name"]
       14 JUMP                             ; [+1]
       15 LOADK                            R1 K3 ["Dark"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_2]
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+1]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K3 ["ThemeChanged"]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R2 R2 K4 ["Connect"]
       13 CALL                             R2 2 1
       14 NEWCLOSURE                       R3 P2
       15 CAPTURE                          VAL R2
       16 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 NEWTABLE                         R5 0 0
       12 CALL                             R3 2 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["createElement"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["FoundationProvider"]
       19 DUPTABLE                         R5 K5 [{"theme"}]
       20 SETTABLEKS                       R1 R5 K4 ["theme"]
       22 GETTABLEKS                       R6 R0 K6 ["children"]
       24 CALL                             R3 3 -1
       25 RETURN                           R3 -1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
        8 MOVE                             R9 R2
        9 MOVE                             R10 R7
       10 GETIMPORT                        R8 K2 [table.insert]
       12 CALL                             R8 2 0
       13 FORGLOOP                         R3 2 ; [-8]
       15 LENGTH                           R3 R2
       16 LOADN                            R4 0
       17 JUMPIFNOTLT                      R4 R3 ; [+27]
       19 GETIMPORT                        R3 K4 [table.remove]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+5]
       24 GETTABLEKS                       R4 R3 K5 ["joint"]
       26 JUMPIFNOTEQ                      R4 R1 ; [+2]
       28 RETURN                           R3 1
       29 JUMPIFNOT                        R3 ; [+14]
       30 GETTABLEKS                       R4 R3 K6 ["children"]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       37 MOVE                             R10 R2
       38 MOVE                             R11 R8
       39 GETIMPORT                        R9 K2 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R4 2 ; [-8]
       44 JUMPBACK                         ; [-30]
       45 LOADNIL                          R3
       46 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+3]
        5 NEWTABLE                         R3 0 0
        7 RETURN                           R3 1
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R2 K0 ["children"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R11 R8 K1 ["joint"]
       17 GETTABLEKS                       R11 R11 K2 ["Name"]
       19 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       21 MOVE                             R10 R3
       22 GETIMPORT                        R9 K5 [table.insert]
       24 CALL                             R9 2 0
       25 FORGLOOP                         R4 2 ; [-11]
       27 RETURN                           R3 1

PROTO_9:
        0 LOADNIL                          R1
        1 LOADK                            R2 K0 [∞]
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 JUMPIFNOTLT                      R7 R2 ; [+3]
        8 MOVE                             R1 R6
        9 MOVE                             R2 R7
       10 FORGLOOP                         R3 2 ; [-5]
       12 RETURN                           R1 1

PROTO_10:
        0 JUMPIFNOT                        R3 ; [+10]
        1 MOVE                             R4 R0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 JUMPIFEQ                         R7 R1 ; [+3]
        7 LOADNIL                          R9
        8 SETTABLE                         R9 R0 R7
        9 FORGLOOP                         R4 2 ; [-5]
       11 SETTABLE                         R2 R0 R1
       12 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+11]
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R0 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["Z"]
        7 FASTCALL                         MATH_MAX ; [+2]
        8 GETIMPORT                        R2 K5 [math.max]
       10 CALL                             R2 3 1
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R2 R0 K1 ["Y"]
       14 LOADN                            R3 0
       15 JUMPIFNOTLT                      R3 R2 ; [+20]
       17 JUMPIFNOT                        R1 ; [+9]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["RADIUS_SCALE"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K7 ["RADIUS_REFERENCE_HEIGHT"]
       24 DIV                              R5 R2 R6
       25 MUL                              R3 R4 R5
       26 RETURN                           R3 1
       27 DIVK                             R5 R2 K9 [6]
       28 MULK                             R4 R5 K8 [0.1]
       29 LOADK                            R5 K10 [0.05]
       30 LOADN                            R6 2
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R3 K12 [math.clamp]
       34 CALL                             R3 3 1
       35 RETURN                           R3 1
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K6 ["RADIUS_SCALE"]
       39 RETURN                           R3 1

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 JUMPIFNOT                        R8 ; [+12]
        9 DUPTABLE                         R11 K2 [{"node", "parentJoint"}]
       10 SETTABLEKS                       R8 R11 K0 ["node"]
       12 LOADNIL                          R12
       13 SETTABLEKS                       R12 R11 K1 ["parentJoint"]
       15 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       17 MOVE                             R10 R3
       18 GETIMPORT                        R9 K5 [table.insert]
       20 CALL                             R9 2 0
       21 FORGLOOP                         R4 2 ; [-14]
       23 LENGTH                           R4 R3
       24 LOADN                            R5 0
       25 JUMPIFNOTLT                      R5 R4 ; [+59]
       27 GETIMPORT                        R4 K7 [table.remove]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 JUMPIFNOT                        R4 ; [+52]
       32 GETTABLEKS                       R5 R4 K0 ["node"]
       34 JUMPIFNOT                        R5 ; [+49]
       35 GETTABLEKS                       R6 R5 K8 ["joint"]
       37 GETTABLEKS                       R7 R4 K1 ["parentJoint"]
       39 GETTABLE                         R8 R1 R6
       40 NEWTABLE                         R9 0 0
       42 GETTABLEKS                       R10 R5 K9 ["children"]
       44 LOADNIL                          R11
       45 LOADNIL                          R12
       46 FORGPREP                         R10
       47 JUMPIFNOT                        R14 ; [+19]
       48 GETTABLEKS                       R17 R14 K8 ["joint"]
       50 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
       52 MOVE                             R16 R9
       53 GETIMPORT                        R15 K5 [table.insert]
       55 CALL                             R15 2 0
       56 DUPTABLE                         R17 K2 [{"node", "parentJoint"}]
       57 SETTABLEKS                       R14 R17 K0 ["node"]
       59 SETTABLEKS                       R6 R17 K1 ["parentJoint"]
       61 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
       63 MOVE                             R16 R3
       64 GETIMPORT                        R15 K5 [table.insert]
       66 CALL                             R15 2 0
       67 FORGLOOP                         R10 2 ; [-21]
       69 DUPTABLE                         R12 K13 [{"jointInstance", "parentJoint", "label", "childJoints"}]
       70 SETTABLEKS                       R6 R12 K10 ["jointInstance"]
       72 SETTABLEKS                       R7 R12 K1 ["parentJoint"]
       74 SETTABLEKS                       R8 R12 K11 ["label"]
       76 SETTABLEKS                       R9 R12 K12 ["childJoints"]
       78 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       80 MOVE                             R11 R2
       81 GETIMPORT                        R10 K5 [table.insert]
       83 CALL                             R10 2 0
       84 JUMPBACK                         ; [-62]
       85 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+14]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 JUMPIFNOT                        R0 ; [+10]
       12 GETIMPORT                        R0 K3 [task.cancel]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 2
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K0 ["current"]
       22 GETUPVAL                         R0 3
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K0 ["current"]
       26 GETUPVAL                         R0 4
       27 LOADNIL                          R1
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 LOADNIL                          R2
        8 LOADK                            R3 K1 [∞]
        9 MOVE                             R4 R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 JUMPIFNOTLT                      R8 R3 ; [+3]
       15 MOVE                             R2 R7
       16 MOVE                             R3 R8
       17 FORGLOOP                         R4 2 ; [-5]
       19 MOVE                             R0 R2
       20 JUMPIFNOTEQKNIL                  R0 ; [+8]
       22 GETUPVAL                         R0 2
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K0 ["current"]
       26 GETUPVAL                         R0 3
       27 LOADNIL                          R1
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADNIL                          R2
        4 LOADK                            R3 K1 [∞]
        5 MOVE                             R4 R1
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 JUMPIFNOTLT                      R8 R3 ; [+3]
       11 MOVE                             R2 R7
       12 MOVE                             R3 R8
       13 FORGLOOP                         R4 2 ; [-5]
       15 MOVE                             R0 R2
       16 GETUPVAL                         R1 1
       17 CALL                             R1 0 1
       18 JUMPIF                           R1 ; [+7]
       19 GETUPVAL                         R1 2
       20 SETTABLEKS                       R0 R1 K0 ["current"]
       22 GETUPVAL                         R1 3
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 JUMPIFEQKNIL                     R0 ; [+22]
       28 GETUPVAL                         R1 4
       29 GETTABLEKS                       R1 R1 K0 ["current"]
       31 JUMPIFNOT                        R1 ; [+10]
       32 GETIMPORT                        R1 K4 [task.cancel]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K0 ["current"]
       37 CALL                             R1 1 0
       38 GETUPVAL                         R1 4
       39 LOADNIL                          R2
       40 SETTABLEKS                       R2 R1 K0 ["current"]
       42 GETUPVAL                         R1 2
       43 SETTABLEKS                       R0 R1 K0 ["current"]
       45 GETUPVAL                         R1 3
       46 MOVE                             R2 R0
       47 CALL                             R1 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R1 4
       50 GETIMPORT                        R2 K6 [task.defer]
       52 NEWCLOSURE                       R3 P0
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CALL                             R2 1 1
       58 SETTABLEKS                       R2 R1 K0 ["current"]
       60 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onHoveredJointChanged"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onHoveredJointChanged"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+10]
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 JUMPIFEQ                         R7 R0 ; [+3]
       12 LOADNIL                          R9
       13 SETTABLE                         R9 R2 R7
       14 FORGLOOP                         R4 2 ; [-5]
       16 SETTABLE                         R1 R2 R0
       17 GETUPVAL                         R2 2
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+47]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["GetBoundingBox"]
        5 CALL                             R0 1 2
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+11]
        9 GETTABLEKS                       R5 R1 K1 ["X"]
       11 GETTABLEKS                       R6 R1 K2 ["Y"]
       13 GETTABLEKS                       R7 R1 K3 ["Z"]
       15 FASTCALL                         MATH_MAX ; [+2]
       16 GETIMPORT                        R4 K6 [math.max]
       18 CALL                             R4 3 1
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R4 R1 K2 ["Y"]
       22 LOADN                            R5 0
       23 JUMPIFNOTLT                      R5 R4 ; [+21]
       25 JUMPIFNOT                        R3 ; [+9]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K7 ["RADIUS_SCALE"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K8 ["RADIUS_REFERENCE_HEIGHT"]
       32 DIV                              R6 R4 R7
       33 MUL                              R2 R5 R6
       34 RETURN                           R2 1
       35 DIVK                             R7 R4 K10 [6]
       36 MULK                             R6 R7 K9 [0.1]
       37 LOADK                            R7 K11 [0.05]
       38 LOADN                            R8 2
       39 FASTCALL                         MATH_CLAMP ; [+2]
       40 GETIMPORT                        R5 K13 [math.clamp]
       42 CALL                             R5 3 1
       43 MOVE                             R2 R5
       44 RETURN                           R2 1
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R2 R2 K7 ["RADIUS_SCALE"]
       48 RETURN                           R2 1
       49 GETUPVAL                         R0 2
       50 GETTABLEKS                       R0 R0 K7 ["RADIUS_SCALE"]
       52 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onJointClicked"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+16]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["current"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K1 ["current"]
       15 GETTABLE                         R2 R3 R1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R2
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["onJointClicked"]
       21 OR                               R4 R2 R0
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["onJointClicked"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["rigModel"]
        2 GETTABLEKS                       R2 R0 K1 ["rigDescriptor"]
        4 GETTABLEKS                       R3 R0 K2 ["selectedJointInstance"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R2
       11 GETTABLEKS                       R7 R0 K3 ["overrideLabels"]
       13 CALL                             R5 2 1
       14 GETTABLEKS                       R6 R5 K4 ["labelMap"]
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 GETUPVAL                         R9 2
       19 CALL                             R9 0 1
       20 JUMPIFNOT                        R9 ; [+25]
       21 GETTABLEKS                       R9 R0 K5 ["isMappingMode"]
       23 JUMPIFNOT                        R9 ; [+5]
       24 GETTABLEKS                       R7 R5 K6 ["mapped"]
       26 GETTABLEKS                       R8 R5 K7 ["otherMapped"]
       28 JUMP                             ; [+21]
       29 GETIMPORT                        R9 K10 [table.clone]
       31 GETTABLEKS                       R10 R5 K6 ["mapped"]
       33 CALL                             R9 1 1
       34 GETTABLEKS                       R10 R5 K7 ["otherMapped"]
       36 LOADNIL                          R11
       37 LOADNIL                          R12
       38 FORGPREP                         R10
       39 LOADB                            R15 1
       40 SETTABLE                         R15 R9 R13
       41 FORGLOOP                         R10 1 ; [-3]
       43 MOVE                             R7 R9
       44 LOADNIL                          R8
       45 JUMP                             ; [+4]
       46 GETTABLEKS                       R7 R5 K6 ["mapped"]
       48 GETTABLEKS                       R8 R5 K7 ["otherMapped"]
       50 GETUPVAL                         R9 3
       51 CALL                             R9 0 1
       52 JUMPIFNOT                        R9 ; [+3]
       53 GETUPVAL                         R9 4
       54 MOVE                             R10 R1
       55 CALL                             R9 1 0
       56 NEWTABLE                         R9 0 0
       58 GETUPVAL                         R10 5
       59 GETTABLEKS                       R10 R10 K11 ["useRef"]
       61 NEWTABLE                         R11 0 0
       63 CALL                             R10 1 1
       64 GETUPVAL                         R11 5
       65 GETTABLEKS                       R11 R11 K11 ["useRef"]
       67 LOADNIL                          R12
       68 CALL                             R11 1 1
       69 GETUPVAL                         R12 5
       70 GETTABLEKS                       R12 R12 K11 ["useRef"]
       72 LOADNIL                          R13
       73 CALL                             R12 1 1
       74 GETUPVAL                         R13 5
       75 GETTABLEKS                       R13 R13 K11 ["useRef"]
       77 NEWTABLE                         R14 0 0
       79 CALL                             R13 1 1
       80 GETUPVAL                         R14 5
       81 GETTABLEKS                       R14 R14 K12 ["useState"]
       83 LOADNIL                          R15
       84 CALL                             R14 1 2
       85 NEWCLOSURE                       R16 P0
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R15
       88 GETUPVAL                         R17 5
       89 GETTABLEKS                       R17 R17 K13 ["useEffect"]
       91 NEWCLOSURE                       R18 P1
       92 CAPTURE                          VAL R10
       93 CAPTURE                          UPVAL U6
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R15
       97 NEWTABLE                         R19 0 2
       99 MOVE                             R20 R1
      100 MOVE                             R21 R2
      101 SETLIST                          R19 R20 2 [1]
      103 CALL                             R17 2 0
      104 GETUPVAL                         R17 5
      105 GETTABLEKS                       R17 R17 K14 ["useCallback"]
      107 NEWCLOSURE                       R18 P2
      108 CAPTURE                          VAL R10
      109 CAPTURE                          UPVAL U6
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R11
      113 NEWTABLE                         R19 0 0
      115 CALL                             R17 2 1
      116 GETUPVAL                         R18 5
      117 GETTABLEKS                       R18 R18 K13 ["useEffect"]
      119 NEWCLOSURE                       R19 P3
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R14
      122 NEWTABLE                         R20 0 2
      124 MOVE                             R21 R14
      125 GETTABLEKS                       R22 R0 K15 ["onHoveredJointChanged"]
      127 SETLIST                          R20 R21 2 [1]
      129 CALL                             R18 2 0
      130 GETUPVAL                         R18 5
      131 GETTABLEKS                       R18 R18 K14 ["useCallback"]
      133 NEWCLOSURE                       R19 P4
      134 CAPTURE                          VAL R10
      135 CAPTURE                          UPVAL U3
      136 CAPTURE                          VAL R17
      137 NEWTABLE                         R20 0 1
      139 MOVE                             R21 R17
      140 SETLIST                          R20 R21 1 [1]
      142 CALL                             R18 2 1
      143 GETUPVAL                         R19 5
      144 GETTABLEKS                       R19 R19 K14 ["useCallback"]
      146 NEWCLOSURE                       R20 P5
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R17
      149 NEWTABLE                         R21 0 1
      151 MOVE                             R22 R17
      152 SETLIST                          R21 R22 1 [1]
      154 CALL                             R19 2 1
      155 GETUPVAL                         R20 5
      156 GETTABLEKS                       R20 R20 K16 ["useMemo"]
      158 NEWCLOSURE                       R21 P6
      159 CAPTURE                          VAL R1
      160 CAPTURE                          UPVAL U3
      161 CAPTURE                          UPVAL U7
      162 NEWTABLE                         R22 0 1
      164 MOVE                             R23 R1
      165 SETLIST                          R22 R23 1 [1]
      167 CALL                             R20 2 1
      168 GETUPVAL                         R21 5
      169 GETTABLEKS                       R21 R21 K14 ["useCallback"]
      171 NEWCLOSURE                       R22 P7
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U6
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R13
      176 NEWTABLE                         R23 0 1
      178 GETTABLEKS                       R24 R0 K17 ["onJointClicked"]
      180 SETLIST                          R23 R24 1 [1]
      182 CALL                             R21 2 1
      183 GETUPVAL                         R22 8
      184 MOVE                             R23 R4
      185 MOVE                             R24 R6
      186 CALL                             R22 2 1
      187 GETUPVAL                         R23 6
      188 CALL                             R23 0 1
      189 JUMPIFNOT                        R23 ; [+19]
      190 NEWTABLE                         R23 0 0
      192 SETTABLEKS                       R23 R13 K18 ["current"]
      194 MOVE                             R23 R22
      195 LOADNIL                          R24
      196 LOADNIL                          R25
      197 FORGPREP                         R23
      198 GETTABLEKS                       R28 R13 K18 ["current"]
      200 GETTABLEKS                       R29 R27 K19 ["jointInstance"]
      202 GETTABLEKS                       R29 R29 K20 ["Name"]
      204 GETTABLEKS                       R30 R27 K19 ["jointInstance"]
      206 SETTABLE                         R30 R28 R29
      207 FORGLOOP                         R23 2 ; [-10]
      209 MOVE                             R23 R22
      210 LOADNIL                          R24
      211 LOADNIL                          R25
      212 FORGPREP                         R23
      213 GETUPVAL                         R28 5
      214 GETTABLEKS                       R28 R28 K21 ["createElement"]
      216 GETUPVAL                         R29 9
      217 DUPTABLE                         R30 K36 [{"jointInstance", "parentJoint", "DEPRECATED_jointLabel", "mappedLookup", "otherMappedLookup", "childJoints", "DEPRECATED_rigDescriptor", "selectedJointInstance", "onJointClicked", "standardRadius", "DEPRECATED_applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation", "globalHoveredJointName", "mannequinHoveredJointName", "onJointHoverEnter", "onJointHoverLeave"}]
      218 GETTABLEKS                       R31 R27 K19 ["jointInstance"]
      220 SETTABLEKS                       R31 R30 K19 ["jointInstance"]
      222 GETTABLEKS                       R31 R27 K22 ["parentJoint"]
      224 SETTABLEKS                       R31 R30 K22 ["parentJoint"]
      226 GETTABLEKS                       R31 R27 K37 ["label"]
      228 SETTABLEKS                       R31 R30 K23 ["DEPRECATED_jointLabel"]
      230 SETTABLEKS                       R7 R30 K24 ["mappedLookup"]
      232 SETTABLEKS                       R8 R30 K25 ["otherMappedLookup"]
      234 GETTABLEKS                       R31 R27 K26 ["childJoints"]
      236 SETTABLEKS                       R31 R30 K26 ["childJoints"]
      238 SETTABLEKS                       R2 R30 K27 ["DEPRECATED_rigDescriptor"]
      240 SETTABLEKS                       R3 R30 K2 ["selectedJointInstance"]
      242 GETUPVAL                         R32 6
      243 CALL                             R32 0 1
      244 JUMPIFNOT                        R32 ; [+2]
      245 MOVE                             R31 R21
      246 JUMP                             ; [+2]
      247 GETTABLEKS                       R31 R0 K17 ["onJointClicked"]
      249 SETTABLEKS                       R31 R30 K17 ["onJointClicked"]
      251 SETTABLEKS                       R20 R30 K28 ["standardRadius"]
      253 GETTABLEKS                       R31 R0 K38 ["applyTposeAdjustment"]
      255 SETTABLEKS                       R31 R30 K29 ["DEPRECATED_applyTposeAdjustment"]
      257 GETTABLEKS                       R31 R0 K30 ["updatePositions"]
      259 SETTABLEKS                       R31 R30 K30 ["updatePositions"]
      261 GETTABLEKS                       R31 R0 K31 ["DEPRECATED_isPlayingAnimation"]
      263 SETTABLEKS                       R31 R30 K31 ["DEPRECATED_isPlayingAnimation"]
      265 SETTABLEKS                       R14 R30 K32 ["globalHoveredJointName"]
      267 GETTABLEKS                       R31 R0 K33 ["mannequinHoveredJointName"]
      269 SETTABLEKS                       R31 R30 K33 ["mannequinHoveredJointName"]
      271 SETTABLEKS                       R18 R30 K34 ["onJointHoverEnter"]
      273 SETTABLEKS                       R19 R30 K35 ["onJointHoverLeave"]
      275 CALL                             R28 2 1
      276 FASTCALL2                        TABLE_INSERT R9 R28 ; [+5]
      278 MOVE                             R30 R9
      279 MOVE                             R31 R28
      280 GETIMPORT                        R29 K40 [table.insert]
      282 CALL                             R29 2 0
      283 FORGLOOP                         R23 2 ; [-71]
      285 GETUPVAL                         R24 2
      286 CALL                             R24 0 1
      287 JUMPIFNOT                        R24 ; [+15]
      288 GETUPVAL                         R23 5
      289 GETTABLEKS                       R23 R23 K21 ["createElement"]
      291 GETUPVAL                         R24 10
      292 NEWTABLE                         R25 0 0
      294 GETUPVAL                         R26 5
      295 GETTABLEKS                       R26 R26 K21 ["createElement"]
      297 LOADK                            R27 K41 ["Folder"]
      298 LOADNIL                          R28
      299 MOVE                             R29 R9
      300 CALL                             R26 3 -1
      301 CALL                             R23 -1 1
      302 RETURN                           R23 1
      303 GETUPVAL                         R23 5
      304 GETTABLEKS                       R23 R23 K21 ["createElement"]
      306 LOADK                            R24 K41 ["Folder"]
      307 LOADNIL                          R25
      308 MOVE                             R26 R9
      309 CALL                             R23 3 1
      310 RETURN                           R23 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Hooks"]
       29 GETTABLEKS                       R4 R4 K12 ["useRig"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Components"]
       38 GETTABLEKS                       R5 R5 K13 ["Adornments"]
       40 GETTABLEKS                       R5 R5 K14 ["JointAdornmentComposite"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R4 K15 ["Component"]
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R0 K9 ["Src"]
       49 GETTABLEKS                       R7 R7 K10 ["Components"]
       51 GETTABLEKS                       R7 R7 K11 ["Hooks"]
       53 GETTABLEKS                       R7 R7 K16 ["useMappedInstances"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K9 ["Src"]
       60 GETTABLEKS                       R8 R8 K17 ["Types"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R0 K9 ["Src"]
       67 GETTABLEKS                       R9 R9 K18 ["Resources"]
       69 GETTABLEKS                       R9 R9 K19 ["Constants"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R0 K9 ["Src"]
       76 GETTABLEKS                       R10 R10 K10 ["Components"]
       78 GETTABLEKS                       R10 R10 K11 ["Hooks"]
       80 GETTABLEKS                       R10 R10 K20 ["useModelTransparency"]
       82 CALL                             R9 1 1
       83 GETIMPORT                        R10 K5 [require]
       85 GETTABLEKS                       R11 R0 K9 ["Src"]
       87 GETTABLEKS                       R11 R11 K21 ["Flags"]
       89 GETTABLEKS                       R11 R11 K22 ["getFFlagAdaptiveAnimationQoL"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K5 [require]
       94 GETTABLEKS                       R12 R0 K9 ["Src"]
       96 GETTABLEKS                       R12 R12 K21 ["Flags"]
       98 GETTABLEKS                       R12 R12 K23 ["getFFlagAdaptiveAnimationHoverFix"]
      100 CALL                             R11 1 1
      101 GETIMPORT                        R12 K5 [require]
      103 GETTABLEKS                       R13 R0 K9 ["Src"]
      105 GETTABLEKS                       R13 R13 K21 ["Flags"]
      107 GETTABLEKS                       R13 R13 K24 ["getFFlagAdaptiveAnimationHandRigQoL"]
      109 CALL                             R12 1 1
      110 DUPCLOSURE                       R13 K25 [PROTO_1]
      111 DUPCLOSURE                       R14 K26 [PROTO_6]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R2
      115 DUPCLOSURE                       R15 K27 [PROTO_7]
      116 DUPCLOSURE                       R16 K28 [PROTO_8]
      117 CAPTURE                          VAL R15
      118 DUPCLOSURE                       R17 K29 [PROTO_9]
      119 DUPCLOSURE                       R18 K30 [PROTO_10]
      120 DUPCLOSURE                       R19 K31 [PROTO_11]
      121 CAPTURE                          VAL R8
      122 DUPCLOSURE                       R20 K32 [PROTO_12]
      123 DUPCLOSURE                       R21 K33 [PROTO_22]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R14
      135 DUPTABLE                         R22 K37 [{"JointAdornments", "getChildJointNames", "_test"}]
      136 SETTABLEKS                       R21 R22 K34 ["JointAdornments"]
      138 SETTABLEKS                       R16 R22 K35 ["getChildJointNames"]
      140 DUPTABLE                         R23 K43 [{"findNodeByJoint", "findClosestJoint", "processHoverEnter", "calculateStandardRadius", "buildCompositeEntries"}]
      141 SETTABLEKS                       R15 R23 K38 ["findNodeByJoint"]
      143 SETTABLEKS                       R17 R23 K39 ["findClosestJoint"]
      145 SETTABLEKS                       R18 R23 K40 ["processHoverEnter"]
      147 SETTABLEKS                       R19 R23 K41 ["calculateStandardRadius"]
      149 SETTABLEKS                       R20 R23 K42 ["buildCompositeEntries"]
      151 SETTABLEKS                       R23 R22 K36 ["_test"]
      153 RETURN                           R22 1
