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
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["Z"]
        6 FASTCALL                         MATH_MAX ; [+2]
        7 GETIMPORT                        R1 K5 [math.max]
        9 CALL                             R1 3 1
       10 LOADN                            R2 0
       11 JUMPIFNOTLT                      R2 R1 ; [+10]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K6 ["RADIUS_SCALE"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K7 ["RADIUS_REFERENCE_HEIGHT"]
       19 DIV                              R4 R1 R5
       20 MUL                              R2 R3 R4
       21 RETURN                           R2 1
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K6 ["RADIUS_SCALE"]
       25 RETURN                           R2 1

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 JUMPIFNOT                        R8 ; [+9]
        9 DUPTABLE                         R11 K3 [{[1], ["parentJoint"] = }]
       10 SETTABLEKS                       R8 R11 K0 ["node"]
       12 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       14 MOVE                             R10 R3
       15 GETIMPORT                        R9 K6 [table.insert]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R4 2 ; [-11]
       20 LENGTH                           R4 R3
       21 LOADN                            R5 0
       22 JUMPIFNOTLT                      R5 R4 ; [+59]
       24 GETIMPORT                        R4 K8 [table.remove]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 1
       28 JUMPIFNOT                        R4 ; [+52]
       29 GETTABLEKS                       R5 R4 K0 ["node"]
       31 JUMPIFNOT                        R5 ; [+49]
       32 GETTABLEKS                       R6 R5 K9 ["joint"]
       34 GETTABLEKS                       R7 R4 K1 ["parentJoint"]
       36 GETTABLE                         R8 R1 R6
       37 NEWTABLE                         R9 0 0
       39 GETTABLEKS                       R10 R5 K10 ["children"]
       41 LOADNIL                          R11
       42 LOADNIL                          R12
       43 FORGPREP                         R10
       44 JUMPIFNOT                        R14 ; [+19]
       45 GETTABLEKS                       R17 R14 K9 ["joint"]
       47 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
       49 MOVE                             R16 R9
       50 GETIMPORT                        R15 K6 [table.insert]
       52 CALL                             R15 2 0
       53 DUPTABLE                         R17 K11 [{"node", "parentJoint"}]
       54 SETTABLEKS                       R14 R17 K0 ["node"]
       56 SETTABLEKS                       R6 R17 K1 ["parentJoint"]
       58 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
       60 MOVE                             R16 R3
       61 GETIMPORT                        R15 K6 [table.insert]
       63 CALL                             R15 2 0
       64 FORGLOOP                         R10 2 ; [-21]
       66 DUPTABLE                         R12 K15 [{"jointInstance", "parentJoint", "label", "childJoints"}]
       67 SETTABLEKS                       R6 R12 K12 ["jointInstance"]
       69 SETTABLEKS                       R7 R12 K1 ["parentJoint"]
       71 SETTABLEKS                       R8 R12 K13 ["label"]
       73 SETTABLEKS                       R9 R12 K14 ["childJoints"]
       75 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       77 MOVE                             R11 R2
       78 GETIMPORT                        R10 K6 [table.insert]
       80 CALL                             R10 2 0
       81 JUMPBACK                         ; [-62]
       82 RETURN                           R2 1

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
        3 MOVE                             R3 R2
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 JUMPIFEQ                         R6 R0 ; [+3]
        9 LOADNIL                          R8
       10 SETTABLE                         R8 R2 R6
       11 FORGLOOP                         R3 2 ; [-5]
       13 SETTABLE                         R1 R2 R0
       14 GETUPVAL                         R2 1
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

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
        1 JUMPIFNOT                        R0 ; [+30]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["GetBoundingBox"]
        5 CALL                             R0 1 2
        6 GETTABLEKS                       R4 R1 K1 ["X"]
        8 GETTABLEKS                       R5 R1 K2 ["Y"]
       10 GETTABLEKS                       R6 R1 K3 ["Z"]
       12 FASTCALL                         MATH_MAX ; [+2]
       13 GETIMPORT                        R3 K6 [math.max]
       15 CALL                             R3 3 1
       16 LOADN                            R4 0
       17 JUMPIFNOTLT                      R4 R3 ; [+10]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K7 ["RADIUS_SCALE"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K8 ["RADIUS_REFERENCE_HEIGHT"]
       25 DIV                              R5 R3 R6
       26 MUL                              R2 R4 R5
       27 RETURN                           R2 1
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K7 ["RADIUS_SCALE"]
       31 RETURN                           R2 1
       32 GETUPVAL                         R0 1
       33 GETTABLEKS                       R0 R0 K7 ["RADIUS_SCALE"]
       35 RETURN                           R0 1

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
       51 MOVE                             R10 R1
       52 CALL                             R9 1 0
       53 NEWTABLE                         R9 0 0
       55 GETUPVAL                         R10 4
       56 GETTABLEKS                       R10 R10 K11 ["useRef"]
       58 NEWTABLE                         R11 0 0
       60 CALL                             R10 1 1
       61 GETUPVAL                         R11 4
       62 GETTABLEKS                       R11 R11 K11 ["useRef"]
       64 LOADNIL                          R12
       65 CALL                             R11 1 1
       66 GETUPVAL                         R12 4
       67 GETTABLEKS                       R12 R12 K11 ["useRef"]
       69 LOADNIL                          R13
       70 CALL                             R12 1 1
       71 GETUPVAL                         R13 4
       72 GETTABLEKS                       R13 R13 K11 ["useRef"]
       74 NEWTABLE                         R14 0 0
       76 CALL                             R13 1 1
       77 GETUPVAL                         R14 4
       78 GETTABLEKS                       R14 R14 K12 ["useState"]
       80 LOADNIL                          R15
       81 CALL                             R14 1 2
       82 NEWCLOSURE                       R16 P0
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R15
       85 GETUPVAL                         R17 4
       86 GETTABLEKS                       R17 R17 K13 ["useEffect"]
       88 NEWCLOSURE                       R18 P1
       89 CAPTURE                          VAL R10
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R15
       94 NEWTABLE                         R19 0 2
       96 MOVE                             R20 R1
       97 MOVE                             R21 R2
       98 SETLIST                          R19 R20 2 [1]
      100 CALL                             R17 2 0
      101 GETUPVAL                         R17 4
      102 GETTABLEKS                       R17 R17 K14 ["useCallback"]
      104 NEWCLOSURE                       R18 P2
      105 CAPTURE                          VAL R10
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R11
      110 NEWTABLE                         R19 0 0
      112 CALL                             R17 2 1
      113 GETUPVAL                         R18 4
      114 GETTABLEKS                       R18 R18 K13 ["useEffect"]
      116 NEWCLOSURE                       R19 P3
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R14
      119 NEWTABLE                         R20 0 2
      121 MOVE                             R21 R14
      122 GETTABLEKS                       R22 R0 K15 ["onHoveredJointChanged"]
      124 SETLIST                          R20 R21 2 [1]
      126 CALL                             R18 2 0
      127 GETUPVAL                         R18 4
      128 GETTABLEKS                       R18 R18 K14 ["useCallback"]
      130 NEWCLOSURE                       R19 P4
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R17
      133 NEWTABLE                         R20 0 1
      135 MOVE                             R21 R17
      136 SETLIST                          R20 R21 1 [1]
      138 CALL                             R18 2 1
      139 GETUPVAL                         R19 4
      140 GETTABLEKS                       R19 R19 K14 ["useCallback"]
      142 NEWCLOSURE                       R20 P5
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R17
      145 NEWTABLE                         R21 0 1
      147 MOVE                             R22 R17
      148 SETLIST                          R21 R22 1 [1]
      150 CALL                             R19 2 1
      151 GETUPVAL                         R20 4
      152 GETTABLEKS                       R20 R20 K16 ["useMemo"]
      154 NEWCLOSURE                       R21 P6
      155 CAPTURE                          VAL R1
      156 CAPTURE                          UPVAL U6
      157 NEWTABLE                         R22 0 1
      159 MOVE                             R23 R1
      160 SETLIST                          R22 R23 1 [1]
      162 CALL                             R20 2 1
      163 GETUPVAL                         R21 4
      164 GETTABLEKS                       R21 R21 K14 ["useCallback"]
      166 NEWCLOSURE                       R22 P7
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U5
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R13
      171 NEWTABLE                         R23 0 1
      173 GETTABLEKS                       R24 R0 K17 ["onJointClicked"]
      175 SETLIST                          R23 R24 1 [1]
      177 CALL                             R21 2 1
      178 GETUPVAL                         R22 7
      179 MOVE                             R23 R4
      180 MOVE                             R24 R6
      181 CALL                             R22 2 1
      182 GETUPVAL                         R23 5
      183 CALL                             R23 0 1
      184 JUMPIFNOT                        R23 ; [+19]
      185 NEWTABLE                         R23 0 0
      187 SETTABLEKS                       R23 R13 K18 ["current"]
      189 MOVE                             R23 R22
      190 LOADNIL                          R24
      191 LOADNIL                          R25
      192 FORGPREP                         R23
      193 GETTABLEKS                       R28 R13 K18 ["current"]
      195 GETTABLEKS                       R29 R27 K19 ["jointInstance"]
      197 GETTABLEKS                       R29 R29 K20 ["Name"]
      199 GETTABLEKS                       R30 R27 K19 ["jointInstance"]
      201 SETTABLE                         R30 R28 R29
      202 FORGLOOP                         R23 2 ; [-10]
      204 MOVE                             R23 R22
      205 LOADNIL                          R24
      206 LOADNIL                          R25
      207 FORGPREP                         R23
      208 GETUPVAL                         R28 4
      209 GETTABLEKS                       R28 R28 K21 ["createElement"]
      211 GETUPVAL                         R29 8
      212 DUPTABLE                         R30 K36 [{"jointInstance", "parentJoint", "DEPRECATED_jointLabel", "mappedLookup", "otherMappedLookup", "childJoints", "DEPRECATED_rigDescriptor", "selectedJointInstance", "onJointClicked", "standardRadius", "DEPRECATED_applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation", "globalHoveredJointName", "mannequinHoveredJointName", "onJointHoverEnter", "onJointHoverLeave"}]
      213 GETTABLEKS                       R31 R27 K19 ["jointInstance"]
      215 SETTABLEKS                       R31 R30 K19 ["jointInstance"]
      217 GETTABLEKS                       R31 R27 K22 ["parentJoint"]
      219 SETTABLEKS                       R31 R30 K22 ["parentJoint"]
      221 GETTABLEKS                       R31 R27 K37 ["label"]
      223 SETTABLEKS                       R31 R30 K23 ["DEPRECATED_jointLabel"]
      225 SETTABLEKS                       R7 R30 K24 ["mappedLookup"]
      227 SETTABLEKS                       R8 R30 K25 ["otherMappedLookup"]
      229 GETTABLEKS                       R31 R27 K26 ["childJoints"]
      231 SETTABLEKS                       R31 R30 K26 ["childJoints"]
      233 SETTABLEKS                       R2 R30 K27 ["DEPRECATED_rigDescriptor"]
      235 SETTABLEKS                       R3 R30 K2 ["selectedJointInstance"]
      237 GETUPVAL                         R32 5
      238 CALL                             R32 0 1
      239 JUMPIFNOT                        R32 ; [+2]
      240 MOVE                             R31 R21
      241 JUMP                             ; [+2]
      242 GETTABLEKS                       R31 R0 K17 ["onJointClicked"]
      244 SETTABLEKS                       R31 R30 K17 ["onJointClicked"]
      246 SETTABLEKS                       R20 R30 K28 ["standardRadius"]
      248 GETTABLEKS                       R31 R0 K38 ["applyTposeAdjustment"]
      250 SETTABLEKS                       R31 R30 K29 ["DEPRECATED_applyTposeAdjustment"]
      252 GETTABLEKS                       R31 R0 K30 ["updatePositions"]
      254 SETTABLEKS                       R31 R30 K30 ["updatePositions"]
      256 GETTABLEKS                       R31 R0 K31 ["DEPRECATED_isPlayingAnimation"]
      258 SETTABLEKS                       R31 R30 K31 ["DEPRECATED_isPlayingAnimation"]
      260 SETTABLEKS                       R14 R30 K32 ["globalHoveredJointName"]
      262 GETTABLEKS                       R31 R0 K33 ["mannequinHoveredJointName"]
      264 SETTABLEKS                       R31 R30 K33 ["mannequinHoveredJointName"]
      266 SETTABLEKS                       R18 R30 K34 ["onJointHoverEnter"]
      268 SETTABLEKS                       R19 R30 K35 ["onJointHoverLeave"]
      270 CALL                             R28 2 1
      271 FASTCALL2                        TABLE_INSERT R9 R28 ; [+5]
      273 MOVE                             R30 R9
      274 MOVE                             R31 R28
      275 GETIMPORT                        R29 K40 [table.insert]
      277 CALL                             R29 2 0
      278 FORGLOOP                         R23 2 ; [-71]
      280 GETUPVAL                         R24 2
      281 CALL                             R24 0 1
      282 JUMPIFNOT                        R24 ; [+15]
      283 GETUPVAL                         R23 4
      284 GETTABLEKS                       R23 R23 K21 ["createElement"]
      286 GETUPVAL                         R24 9
      287 NEWTABLE                         R25 0 0
      289 GETUPVAL                         R26 4
      290 GETTABLEKS                       R26 R26 K21 ["createElement"]
      292 LOADK                            R27 K41 ["Folder"]
      293 LOADNIL                          R28
      294 MOVE                             R29 R9
      295 CALL                             R26 3 -1
      296 CALL                             R23 -1 1
      297 RETURN                           R23 1
      298 GETUPVAL                         R23 4
      299 GETTABLEKS                       R23 R23 K21 ["createElement"]
      301 LOADK                            R24 K41 ["Folder"]
      302 LOADNIL                          R25
      303 MOVE                             R26 R9
      304 CALL                             R23 3 1
      305 RETURN                           R23 1

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
       89 GETTABLEKS                       R11 R11 K22 ["getFFlagAdaptiveAnimationHoverFix"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K5 [require]
       94 GETTABLEKS                       R12 R0 K9 ["Src"]
       96 GETTABLEKS                       R12 R12 K21 ["Flags"]
       98 GETTABLEKS                       R12 R12 K23 ["getFFlagAdaptiveAnimationHandRigQoL"]
      100 CALL                             R11 1 1
      101 DUPCLOSURE                       R12 K24 [PROTO_1]
      102 DUPCLOSURE                       R13 K25 [PROTO_6]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R2
      106 DUPCLOSURE                       R14 K26 [PROTO_7]
      107 DUPCLOSURE                       R15 K27 [PROTO_8]
      108 CAPTURE                          VAL R14
      109 DUPCLOSURE                       R16 K28 [PROTO_9]
      110 DUPCLOSURE                       R17 K29 [PROTO_10]
      111 DUPCLOSURE                       R18 K30 [PROTO_11]
      112 CAPTURE                          VAL R8
      113 DUPCLOSURE                       R19 K31 [PROTO_12]
      114 DUPCLOSURE                       R20 K32 [PROTO_22]
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R13
      125 DUPTABLE                         R21 K36 [{"JointAdornments", "getChildJointNames", "_test"}]
      126 SETTABLEKS                       R20 R21 K33 ["JointAdornments"]
      128 SETTABLEKS                       R15 R21 K34 ["getChildJointNames"]
      130 DUPTABLE                         R22 K42 [{"findNodeByJoint", "findClosestJoint", "processHoverEnter", "calculateStandardRadius", "buildCompositeEntries"}]
      131 SETTABLEKS                       R14 R22 K37 ["findNodeByJoint"]
      133 SETTABLEKS                       R16 R22 K38 ["findClosestJoint"]
      135 SETTABLEKS                       R17 R22 K39 ["processHoverEnter"]
      137 SETTABLEKS                       R18 R22 K40 ["calculateStandardRadius"]
      139 SETTABLEKS                       R19 R22 K41 ["buildCompositeEntries"]
      141 SETTABLEKS                       R22 R21 K35 ["_test"]
      143 RETURN                           R21 1
