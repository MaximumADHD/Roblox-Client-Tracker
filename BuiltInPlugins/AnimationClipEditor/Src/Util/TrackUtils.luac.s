PROTO_0:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R1 0
        3 RETURN                           R1 1
        4 RETURN                           R0 1

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+50]
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["List"]
        6 GETTABLEKS                       R3 R3 K1 ["join"]
        8 MOVE                             R4 R2
        9 NEWTABLE                         R5 0 1
       11 MOVE                             R6 R1
       12 SETLIST                          R5 R6 1 [1]
       14 CALL                             R3 2 1
       15 MOVE                             R2 R3
       16 LOADB                            R3 1
       17 GETTABLEKS                       R4 R0 K2 ["Components"]
       19 JUMPIFEQKNIL                     R4 ; [+5]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R4 R0 K2 ["Components"]
       24 CALL                             R3 1 1
       25 JUMPIF                           R3 ; [+2]
       26 GETUPVAL                         R4 2
       27 JUMPIF                           R4 ; [+6]
       28 GETUPVAL                         R4 3
       29 MOVE                             R5 R0
       30 MOVE                             R6 R1
       31 MOVE                             R7 R2
       32 MOVE                             R8 R3
       33 CALL                             R4 4 0
       34 GETTABLEKS                       R4 R0 K2 ["Components"]
       36 JUMPIFEQKNIL                     R4 ; [+14]
       38 GETIMPORT                        R4 K4 [pairs]
       40 GETTABLEKS                       R5 R0 K2 ["Components"]
       42 CALL                             R4 1 3
       43 FORGPREP_NEXT                    R4
       44 GETUPVAL                         R9 4
       45 MOVE                             R10 R8
       46 MOVE                             R11 R7
       47 MOVE                             R12 R2
       48 CALL                             R9 3 0
       49 FORGLOOP                         R4 2 ; [-6]
       51 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 LOADB                            R5 0 +1
        3 LOADB                            R5 1
        4 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        6 LOADK                            R6 K0 ["func must not be nil"]
        7 GETIMPORT                        R4 K2 [assert]
        9 CALL                             R4 2 0
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 MOVE                             R5 R4
       17 MOVE                             R6 R1
       18 MOVE                             R7 R0
       19 NEWTABLE                         R8 0 0
       21 CALL                             R5 3 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Components"]
        2 JUMPIF                           R1 ; [+3]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["Type"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["TRACK_TYPES"]
       11 GETTABLEKS                       R2 R2 K3 ["IkData"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+14]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K4 ["Dictionary"]
       18 GETTABLEKS                       R1 R1 K5 ["keys"]
       20 GETTABLEKS                       R2 R0 K0 ["Components"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K8 [table.sort]
       25 MOVE                             R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R1 1
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K9 ["COMPONENT_TRACK_TYPES"]
       31 GETTABLEKS                       R3 R0 K1 ["Type"]
       33 GETTABLE                         R1 R2 R3
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K4 ["Dictionary"]
       37 GETTABLEKS                       R2 R2 K10 ["join"]
       39 NEWTABLE                         R3 0 0
       41 GETTABLEKS                       R4 R1 K11 ["_Order"]
       43 CALL                             R2 2 1
       44 GETTABLEKS                       R3 R1 K12 ["_OptionalOrder"]
       46 JUMPIF                           R3 ; [+2]
       47 NEWTABLE                         R3 0 0
       49 LOADNIL                          R4
       50 LOADNIL                          R5
       51 FORGPREP                         R3
       52 GETTABLEKS                       R9 R0 K0 ["Components"]
       54 GETTABLE                         R8 R9 R7
       55 JUMPIFNOT                        R8 ; [+7]
       56 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       58 MOVE                             R9 R2
       59 MOVE                             R10 R7
       60 GETIMPORT                        R8 K14 [table.insert]
       62 CALL                             R8 2 0
       63 FORGLOOP                         R3 2 ; [-12]
       65 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+16]
        3 ORK                              R1 R1 K0 [0]
        4 ORK                              R2 R2 K1 [∞]
        5 MOVE                             R4 R0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 JUMPIFNOTLE                      R1 R8 ; [+6]
       11 JUMPIFNOTLE                      R8 R2 ; [+4]
       13 MOVE                             R9 R3
       14 MOVE                             R10 R8
       15 CALL                             R9 1 0
       16 FORGLOOP                         R4 2 ; [-8]
       18 RETURN                           R0 0
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K2 ["findNearestKeyframes"]
       22 MOVE                             R5 R0
       23 MOVE                             R6 R1
       24 CALL                             R4 2 2
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K2 ["findNearestKeyframes"]
       28 MOVE                             R7 R0
       29 MOVE                             R8 R2
       30 CALL                             R6 2 1
       31 JUMPIFNOT                        R5 ; [+2]
       32 MOVE                             R7 R5
       33 JUMPIF                           R7 ; [+1]
       34 MOVE                             R7 R4
       35 MOVE                             R10 R7
       36 MOVE                             R8 R6
       37 LOADN                            R9 1
       38 FORNPREP                         R8
       39 GETTABLE                         R11 R0 R10
       40 JUMPIFNOTLE                      R1 R11 ; [+7]
       42 JUMPIFNOTLE                      R11 R2 ; [+5]
       44 MOVE                             R12 R3
       45 MOVE                             R13 R11
       46 GETTABLE                         R14 R0 R10
       47 CALL                             R12 2 0
       48 FORNLOOP                         R8
       49 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["Keyframes"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["findNearestKeyframesProperly"]
        5 MOVE                             R3 R1
        6 GETUPVAL                         R5 1
        7 ADDK                             R4 R5 K2 [1]
        8 CALL                             R2 2 3
        9 OR                               R4 R2 R4
       10 JUMPIFNOT                        R4 ; [+2]
       11 GETTABLE                         R5 R1 R4
       12 JUMPIF                           R5 ; [+1]
       13 LOADNIL                          R5
       14 JUMPIFNOT                        R5 ; [+12]
       15 GETUPVAL                         R7 2
       16 JUMPIFNOT                        R7 ; [+8]
       17 GETUPVAL                         R7 2
       18 FASTCALL2                        MATH_MIN R7 R5 ; [+4]
       20 MOVE                             R8 R5
       21 GETIMPORT                        R6 K5 [math.min]
       23 CALL                             R6 2 1
       24 JUMPIF                           R6 ; [+1]
       25 MOVE                             R6 R5
       26 SETUPVAL                         R6 2
       27 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R2
        1 GETIMPORT                        R3 K1 [pairs]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 3
        5 FORGPREP_NEXT                    R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K2 ["traverseTracks"]
        9 LOADNIL                          R9
       10 MOVE                             R10 R7
       11 NEWCLOSURE                       R11 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          REF R2
       15 LOADB                            R12 1
       16 CALL                             R8 4 0
       17 FORGLOOP                         R3 2 ; [-12]
       19 OR                               R3 R2 R1
       20 CLOSEUPVALS                      R2
       21 RETURN                           R3 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Keyframes"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["findNearestKeyframesProperly"]
        5 MOVE                             R3 R1
        6 GETUPVAL                         R5 1
        7 SUBK                             R4 R5 K2 [1]
        8 CALL                             R2 2 2
        9 OR                               R3 R2 R3
       10 JUMPIFNOT                        R3 ; [+2]
       11 GETTABLE                         R4 R1 R3
       12 JUMPIF                           R4 ; [+1]
       13 LOADNIL                          R4
       14 JUMPIFNOT                        R4 ; [+15]
       15 GETUPVAL                         R5 1
       16 JUMPIFNOTLT                      R4 R5 ; [+13]
       18 GETUPVAL                         R6 2
       19 JUMPIFNOT                        R6 ; [+8]
       20 GETUPVAL                         R6 2
       21 FASTCALL2                        MATH_MAX R6 R4 ; [+4]
       23 MOVE                             R7 R4
       24 GETIMPORT                        R5 K5 [math.max]
       26 CALL                             R5 2 1
       27 JUMPIF                           R5 ; [+1]
       28 MOVE                             R5 R4
       29 SETUPVAL                         R5 2
       30 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R2
        1 GETIMPORT                        R3 K1 [pairs]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 3
        5 FORGPREP_NEXT                    R3
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K2 ["traverseTracks"]
        9 LOADNIL                          R9
       10 MOVE                             R10 R7
       11 NEWCLOSURE                       R11 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 CAPTURE                          REF R2
       15 LOADB                            R12 1
       16 CALL                             R8 4 0
       17 FORGLOOP                         R3 2 ; [-12]
       19 OR                               R3 R2 R1
       20 CLOSEUPVALS                      R2
       21 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETUPVAL                         R1 2
        7 LOADB                            R2 1
        8 SETTABLE                         R2 R1 R0
        9 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
        2 GETUPVAL                         R5 0
        3 JUMPIFNOT                        R5 ; [+4]
        4 GETUPVAL                         R5 0
        5 GETUPVAL                         R6 1
        6 GETTABLE                         R4 R5 R6
        7 JUMPIF                           R4 ; [+1]
        8 LOADNIL                          R4
        9 GETIMPORT                        R5 K2 [ipairs]
       11 MOVE                             R6 R2
       12 CALL                             R5 1 3
       13 FORGPREP_INEXT                   R5
       14 JUMPIFNOT                        R4 ; [+9]
       15 GETTABLEKS                       R11 R4 K3 ["Components"]
       17 JUMPIFNOT                        R11 ; [+4]
       18 GETTABLEKS                       R11 R4 K3 ["Components"]
       20 GETTABLE                         R10 R11 R9
       21 JUMPIF                           R10 ; [+3]
       22 GETTABLE                         R10 R4 R9
       23 JUMPIF                           R10 ; [+1]
       24 LOADNIL                          R10
       25 MOVE                             R4 R10
       26 FORGLOOP                         R5 2 [inext] ; [-13]
       28 JUMPIFNOT                        R4 ; [+3]
       29 GETTABLEKS                       R5 R4 K4 ["Selection"]
       31 JUMPIF                           R5 ; [+2]
       32 NEWTABLE                         R5 0 0
       34 JUMPIFNOT                        R3 ; [+15]
       35 GETUPVAL                         R6 2
       36 MOVE                             R7 R3
       37 CALL                             R6 1 1
       38 JUMPIF                           R6 ; [+11]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K5 ["traverseKeyframeRange"]
       42 MOVE                             R7 R3
       43 GETUPVAL                         R8 4
       44 GETUPVAL                         R9 5
       45 NEWCLOSURE                       R10 P0
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R5
       48 CAPTURE                          UPVAL U7
       49 CALL                             R6 4 0
       50 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R5 0 0
        2 NEWTABLE                         R6 0 0
        4 GETIMPORT                        R7 K1 [pairs]
        6 MOVE                             R8 R0
        7 CALL                             R7 1 3
        8 FORGPREP_NEXT                    R7
        9 GETTABLEKS                       R12 R11 K2 ["Instance"]
       11 GETTABLEKS                       R14 R11 K3 ["Name"]
       13 OR                               R13 R14 R10
       14 GETUPVAL                         R14 0
       15 GETTABLEKS                       R14 R14 K4 ["traverseTracks"]
       17 MOVE                             R15 R13
       18 MOVE                             R16 R11
       19 NEWCLOSURE                       R17 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R12
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R6
       28 LOADB                            R18 1
       29 CALL                             R14 4 0
       30 FORGLOOP                         R7 2 ; [-22]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K5 ["Dictionary"]
       35 GETTABLEKS                       R7 R7 K6 ["keys"]
       37 MOVE                             R8 R5
       38 CALL                             R7 1 1
       39 MOVE                             R8 R7
       40 MOVE                             R9 R6
       41 RETURN                           R8 2

PROTO_12:
        0 SUB                              R7 R0 R1
        1 MUL                              R6 R7 R3
        2 SUB                              R7 R2 R1
        3 DIV                              R5 R6 R7
        4 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        5 GETIMPORT                        R4 K2 [math.floor]
        7 CALL                             R4 1 1
        8 RETURN                           R4 1

PROTO_13:
        0 SUB                              R6 R2 R1
        1 DIV                              R5 R4 R6
        2 GETTABLEKS                       R7 R0 K0 ["X"]
        4 SUB                              R6 R7 R3
        5 DIV                              R8 R6 R5
        6 ADD                              R7 R1 R8
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K1 ["getNearestTick"]
       10 MOVE                             R9 R7
       11 CALL                             R8 1 -1
       12 RETURN                           R8 -1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getKeyframesExtents"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 2
        7 JUMPIFNOTEQ                      R3 R4 ; [+20]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K1 ["findKeyframe"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+6]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K1 ["findKeyframe"]
       19 MOVE                             R6 R0
       20 MOVE                             R7 R2
       21 CALL                             R5 2 1
       22 JUMPIFEQKNIL                     R5 ; [+3]
       24 LOADN                            R6 1
       25 RETURN                           R6 1
       26 LOADN                            R6 0
       27 RETURN                           R6 1
       28 SUB                              R6 R4 R3
       29 ADDK                             R5 R6 K2 [1]
       30 RETURN                           R5 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["findNearestKeyframes"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 2
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 JUMPIFEQKNIL                     R4 ; [+3]
       10 MOVE                             R5 R4
       11 JUMP                             ; [+1]
       12 MOVE                             R5 R3
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K0 ["findNearestKeyframes"]
       16 MOVE                             R8 R0
       17 MOVE                             R9 R2
       18 CALL                             R7 2 1
       19 MOVE                             R6 R7
       20 JUMPIFNOT                        R5 ; [+8]
       21 JUMPIFNOT                        R6 ; [+7]
       22 GETTABLE                         R7 R0 R5
       23 JUMPIFNOTLE                      R1 R7 ; [+5]
       25 GETTABLE                         R7 R0 R6
       26 JUMPIFNOTLE                      R1 R7 ; [+2]
       28 RETURN                           R5 2
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 RETURN                           R7 2

PROTO_16:
        0 LOADN                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Expanded"]
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETIMPORT                        R2 K2 [pairs]
        6 GETTABLEKS                       R3 R0 K3 ["Components"]
        8 CALL                             R2 1 3
        9 FORGPREP_NEXT                    R2
       10 GETUPVAL                         R7 0
       11 MOVE                             R8 R6
       12 CALL                             R7 1 1
       13 ADD                              R1 R1 R7
       14 FORGLOOP                         R2 2 ; [-5]
       16 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["Components"]
        2 JUMPIFNOT                        R1 ; [+20]
        3 DUPCLOSURE                       R1 K1 [PROTO_16]
        4 CAPTURE                          VAL R1
        5 LOADN                            R3 1
        6 GETTABLEKS                       R4 R0 K2 ["Expanded"]
        8 JUMPIFNOT                        R4 ; [+12]
        9 GETIMPORT                        R4 K4 [pairs]
       11 GETTABLEKS                       R5 R0 K0 ["Components"]
       13 CALL                             R4 1 3
       14 FORGPREP_NEXT                    R4
       15 MOVE                             R9 R1
       16 MOVE                             R10 R8
       17 CALL                             R9 1 1
       18 ADD                              R3 R3 R9
       19 FORGLOOP                         R4 2 ; [-5]
       21 MOVE                             R2 R3
       22 RETURN                           R2 1
       23 GETTABLEKS                       R1 R0 K5 ["Type"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K6 ["TRACK_TYPES"]
       28 GETTABLEKS                       R2 R2 K7 ["CFrame"]
       30 JUMPIFNOTEQ                      R1 R2 ; [+3]
       32 LOADN                            R2 3
       33 RETURN                           R2 1
       34 LOADN                            R2 2
       35 RETURN                           R2 1

PROTO_18:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETTABLEKS                       R1 R0 K0 ["Type"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["getDefaultValue"]
        7 GETTABLEKS                       R2 R0 K0 ["Type"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_19:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R7 R6 K2 ["Name"]
        7 JUMPIFNOTEQ                      R7 R0 ; [+4]
        9 GETTABLEKS                       R7 R6 K3 ["Type"]
       11 RETURN                           R7 1
       12 FORGLOOP                         R2 2 ; [-8]
       14 LOADNIL                          R2
       15 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+12]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getComponentFromPath"]
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETTABLEKS                       R3 R2 K1 ["Type"]
       12 RETURN                           R3 1
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 GETIMPORT                        R2 K3 [pairs]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 3
       19 FORGPREP_NEXT                    R2
       20 GETTABLEKS                       R7 R6 K4 ["Name"]
       22 GETTABLEN                        R8 R0 1
       23 JUMPIFNOTEQ                      R7 R8 ; [+27]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K5 ["getRelativePath"]
       28 MOVE                             R8 R0
       29 CALL                             R7 1 1
       30 MOVE                             R8 R6
       31 GETIMPORT                        R9 K7 [ipairs]
       33 MOVE                             R10 R7
       34 CALL                             R9 1 3
       35 FORGPREP_INEXT                   R9
       36 GETTABLEKS                       R14 R8 K8 ["Components"]
       38 JUMPIFNOT                        R14 ; [+7]
       39 GETTABLEKS                       R15 R8 K8 ["Components"]
       41 GETTABLE                         R14 R15 R13
       42 JUMPIFNOT                        R14 ; [+3]
       43 GETTABLEKS                       R14 R8 K8 ["Components"]
       45 GETTABLE                         R8 R14 R13
       46 FORGLOOP                         R9 2 [inext] ; [-11]
       48 GETTABLEKS                       R9 R8 K1 ["Type"]
       50 RETURN                           R9 1
       51 FORGLOOP                         R2 2 ; [-32]
       53 LOADNIL                          R2
       54 RETURN                           R2 1

PROTO_21:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R7 R6 K2 ["Name"]
        7 GETTABLEN                        R8 R0 1
        8 JUMPIFNOTEQ                      R7 R8 ; [+28]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K3 ["getRelativePath"]
       13 MOVE                             R8 R0
       14 CALL                             R7 1 1
       15 MOVE                             R8 R6
       16 GETIMPORT                        R9 K5 [ipairs]
       18 MOVE                             R10 R7
       19 CALL                             R9 1 3
       20 FORGPREP_INEXT                   R9
       21 GETTABLEKS                       R14 R8 K6 ["Components"]
       23 JUMPIFNOT                        R14 ; [+8]
       24 GETTABLEKS                       R15 R8 K6 ["Components"]
       26 GETTABLE                         R14 R15 R13
       27 JUMPIFNOT                        R14 ; [+4]
       28 GETTABLEKS                       R14 R8 K6 ["Components"]
       30 GETTABLE                         R8 R14 R13
       31 JUMP                             ; [+2]
       32 LOADNIL                          R14
       33 RETURN                           R14 1
       34 FORGLOOP                         R9 2 [inext] ; [-14]
       36 RETURN                           R8 1
       37 FORGLOOP                         R2 2 ; [-33]
       39 LOADNIL                          R2
       40 RETURN                           R2 1

PROTO_22:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 FASTCALL1                        ASSERT R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [assert]
        8 CALL                             R1 1 0
        9 GETTABLEKS                       R1 R0 K2 ["Type"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["TRACK_TYPES"]
       14 GETTABLEKS                       R2 R2 K4 ["CFrame"]
       16 JUMPIFNOTEQ                      R1 R2 ; [+25]
       18 GETTABLEKS                       R1 R0 K5 ["Components"]
       20 JUMPIF                           R1 ; [+2]
       21 LOADNIL                          R1
       22 RETURN                           R1 1
       23 GETTABLEKS                       R2 R0 K5 ["Components"]
       25 FASTCALL1                        ASSERT R2 ; [+2]
       26 GETIMPORT                        R1 K1 [assert]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K6 ["getEulerAnglesOrder"]
       32 GETTABLEKS                       R3 R0 K5 ["Components"]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K7 ["PROPERTY_KEYS"]
       37 GETTABLEKS                       R4 R4 K8 ["Rotation"]
       39 GETTABLE                         R2 R3 R4
       40 CALL                             R1 1 -1
       41 RETURN                           R1 -1
       42 GETTABLEKS                       R1 R0 K2 ["Type"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K3 ["TRACK_TYPES"]
       47 GETTABLEKS                       R2 R2 K9 ["EulerAngles"]
       49 JUMPIFNOTEQ                      R1 R2 ; [+4]
       51 GETTABLEKS                       R1 R0 K10 ["EulerAnglesOrder"]
       53 RETURN                           R1 1
       54 LOADNIL                          R1
       55 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["Components"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R2 R0 K0 ["Components"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["PROPERTY_KEYS"]
        8 GETTABLEKS                       R3 R3 K2 ["Rotation"]
       10 GETTABLE                         R1 R2 R3
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETTABLEKS                       R2 R1 K3 ["Type"]
       14 JUMPIF                           R2 ; [+1]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_24:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLEKS                       R7 R6 K2 ["Name"]
        7 JUMPIFNOTEQ                      R7 R0 ; [+7]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K3 ["getRotationType"]
       12 MOVE                             R8 R6
       13 CALL                             R7 1 -1
       14 RETURN                           R7 -1
       15 FORGLOOP                         R2 2 ; [-11]
       17 LOADNIL                          R2
       18 RETURN                           R2 1

PROTO_25:
        0 LOADN                            R4 0
        1 SUBK                             R5 R1 K0 [1]
        2 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
        4 GETIMPORT                        R3 K3 [math.max]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K4 ["SUMMARY_TRACK_HEIGHT"]
       10 SUB                              R2 R2 R4
       11 LENGTH                           R4 R0
       12 GETIMPORT                        R5 K6 [ipairs]
       14 MOVE                             R6 R0
       15 CALL                             R5 1 3
       16 FORGPREP_INEXT                   R5
       17 JUMPIFNOTLE                      R1 R8 ; [+23]
       19 LOADN                            R10 0
       20 JUMPIFLE                         R2 R10 ; [+22]
       22 ADDK                             R3 R3 K0 [1]
       23 GETTABLEKS                       R10 R9 K7 ["Expanded"]
       25 JUMPIFNOT                        R10 ; [+11]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K8 ["TRACK_HEIGHT"]
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K9 ["getExpandedSize"]
       32 MOVE                             R13 R9
       33 CALL                             R12 1 1
       34 MUL                              R10 R11 R12
       35 SUB                              R2 R2 R10
       36 JUMP                             ; [+4]
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K8 ["TRACK_HEIGHT"]
       40 SUB                              R2 R2 R10
       41 FORGLOOP                         R5 2 [inext] ; [-25]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K8 ["TRACK_HEIGHT"]
       46 DIV                              R5 R2 R6
       47 LOADN                            R6 0
       48 JUMPIFNOTLT                      R6 R5 ; [+3]
       50 ADDK                             R5 R4 K0 [1]
       51 RETURN                           R5 1
       52 SUBK                             R5 R1 K0 [1]
       53 JUMPIFNOTEQ                      R3 R5 ; [+3]
       55 LOADN                            R5 0
       56 RETURN                           R5 1
       57 LOADN                            R6 0
       58 FASTCALL2                        MATH_MAX R6 R3 ; [+4]
       60 MOVE                             R7 R3
       61 GETIMPORT                        R5 K3 [math.max]
       63 CALL                             R5 2 1
       64 RETURN                           R5 1

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SUMMARY_TRACK_HEIGHT"]
        3 JUMPIFNOTLT                      R1 R3 ; [+11]
        5 MOVE                             R3 R2
        6 MOVE                             R4 R1
        7 GETTABLEKS                       R5 R0 K1 ["Type"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K2 ["getRotationType"]
       12 MOVE                             R7 R0
       13 CALL                             R6 1 -1
       14 RETURN                           R3 -1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["SUMMARY_TRACK_HEIGHT"]
       18 SUB                              R1 R1 R3
       19 GETTABLEKS                       R3 R0 K3 ["Expanded"]
       21 JUMPIFNOT                        R3 ; [+57]
       22 GETUPVAL                         R4 2
       23 CALL                             R4 0 1
       24 JUMPIFNOT                        R4 ; [+6]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K4 ["getSortedComponents"]
       28 MOVE                             R4 R0
       29 CALL                             R3 1 1
       30 JUMP                             ; [+8]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K5 ["COMPONENT_TRACK_TYPES"]
       34 GETTABLEKS                       R5 R0 K1 ["Type"]
       36 GETTABLE                         R3 R4 R5
       37 GETTABLEKS                       R3 R3 K6 ["_Order"]
       39 GETIMPORT                        R4 K8 [ipairs]
       41 MOVE                             R5 R3
       42 CALL                             R4 1 3
       43 FORGPREP_INEXT                   R4
       44 LOADNIL                          R9
       45 LOADNIL                          R10
       46 GETTABLEKS                       R12 R0 K9 ["Components"]
       48 GETTABLE                         R11 R12 R8
       49 JUMPIFNOT                        R11 ; [+27]
       50 GETUPVAL                         R11 3
       51 GETTABLEKS                       R13 R0 K9 ["Components"]
       53 GETTABLE                         R12 R13 R8
       54 MOVE                             R13 R1
       55 GETUPVAL                         R14 4
       56 GETTABLEKS                       R14 R14 K10 ["List"]
       58 GETTABLEKS                       R14 R14 K11 ["join"]
       60 MOVE                             R15 R2
       61 NEWTABLE                         R16 0 1
       63 MOVE                             R17 R8
       64 SETLIST                          R16 R17 1 [1]
       66 CALL                             R14 2 -1
       67 CALL                             R11 -1 3
       68 MOVE                             R9 R11
       69 MOVE                             R1 R12
       70 MOVE                             R10 R13
       71 JUMPIFNOT                        R9 ; [+5]
       72 MOVE                             R11 R9
       73 MOVE                             R12 R1
       74 MOVE                             R13 R10
       75 LOADNIL                          R14
       76 RETURN                           R11 4
       77 FORGLOOP                         R4 2 [inext] ; [-34]
       79 LOADNIL                          R3
       80 MOVE                             R4 R1
       81 LOADNIL                          R5
       82 LOADNIL                          R6
       83 RETURN                           R3 4

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SUMMARY_TRACK_HEIGHT"]
        3 JUMPIFNOTLT                      R2 R3 ; [+7]
        5 LOADN                            R3 0
        6 NEWTABLE                         R4 0 0
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 RETURN                           R3 4
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["SUMMARY_TRACK_HEIGHT"]
       14 SUB                              R2 R2 R3
       15 DUPCLOSURE                       R3 K1 [PROTO_26]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U3
       21 LOADN                            R5 0
       22 SUBK                             R6 R1 K2 [1]
       23 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       25 GETIMPORT                        R4 K5 [math.max]
       27 CALL                             R4 2 1
       28 LOADNIL                          R5
       29 LOADNIL                          R6
       30 GETIMPORT                        R7 K7 [ipairs]
       32 MOVE                             R8 R0
       33 CALL                             R7 1 3
       34 FORGPREP_INEXT                   R7
       35 JUMPIFNOTLE                      R1 R10 ; [+23]
       37 LOADNIL                          R12
       38 MOVE                             R13 R3
       39 MOVE                             R14 R11
       40 MOVE                             R15 R2
       41 NEWTABLE                         R16 0 1
       43 GETTABLEKS                       R17 R11 K8 ["Name"]
       45 SETLIST                          R16 R17 1 [1]
       47 CALL                             R13 3 4
       48 MOVE                             R12 R13
       49 MOVE                             R2 R14
       50 MOVE                             R5 R15
       51 MOVE                             R6 R16
       52 ADDK                             R4 R4 K2 [1]
       53 JUMPIFNOT                        R12 ; [+5]
       54 MOVE                             R13 R4
       55 MOVE                             R14 R12
       56 MOVE                             R15 R5
       57 MOVE                             R16 R6
       58 RETURN                           R13 4
       59 FORGLOOP                         R7 2 [inext] ; [-25]
       61 LENGTH                           R8 R0
       62 ADDK                             R7 R8 K2 [1]
       63 NEWTABLE                         R8 0 0
       65 LOADNIL                          R9
       66 LOADNIL                          R10
       67 RETURN                           R7 4

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SUMMARY_TRACK_HEIGHT"]
        3 JUMPIFNOTLT                      R1 R3 ; [+7]
        5 MOVE                             R3 R2
        6 GETTABLEKS                       R4 R0 K1 ["Index"]
        8 MOVE                             R5 R1
        9 MOVE                             R6 R0
       10 RETURN                           R3 4
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["SUMMARY_TRACK_HEIGHT"]
       14 SUB                              R1 R1 R3
       15 GETTABLEKS                       R3 R0 K2 ["Expanded"]
       17 JUMPIF                           R3 ; [+5]
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 MOVE                             R5 R1
       21 LOADNIL                          R6
       22 RETURN                           R3 4
       23 GETTABLEKS                       R3 R0 K3 ["Components"]
       25 JUMPIF                           R3 ; [+11]
       26 LOADN                            R4 2
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["SUMMARY_TRACK_HEIGHT"]
       30 MUL                              R3 R4 R5
       31 SUB                              R1 R1 R3
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 MOVE                             R5 R1
       35 LOADNIL                          R6
       36 RETURN                           R3 4
       37 GETUPVAL                         R4 1
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+6]
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R3 R3 K4 ["getSortedComponents"]
       43 MOVE                             R4 R0
       44 CALL                             R3 1 1
       45 JUMP                             ; [+8]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K5 ["COMPONENT_TRACK_TYPES"]
       49 GETTABLEKS                       R5 R0 K6 ["Type"]
       51 GETTABLE                         R3 R4 R5
       52 GETTABLEKS                       R3 R3 K7 ["_Order"]
       54 GETIMPORT                        R4 K9 [ipairs]
       56 MOVE                             R5 R3
       57 CALL                             R4 1 3
       58 FORGPREP_INEXT                   R4
       59 GETTABLEKS                       R10 R0 K3 ["Components"]
       61 GETTABLE                         R9 R10 R8
       62 JUMPIFNOT                        R9 ; [+31]
       63 LOADNIL                          R9
       64 LOADNIL                          R10
       65 LOADNIL                          R11
       66 GETUPVAL                         R12 3
       67 GETTABLEKS                       R14 R0 K3 ["Components"]
       69 GETTABLE                         R13 R14 R8
       70 MOVE                             R14 R1
       71 GETUPVAL                         R15 4
       72 GETTABLEKS                       R15 R15 K10 ["List"]
       74 GETTABLEKS                       R15 R15 K11 ["join"]
       76 MOVE                             R16 R2
       77 NEWTABLE                         R17 0 1
       79 MOVE                             R18 R8
       80 SETLIST                          R17 R18 1 [1]
       82 CALL                             R15 2 -1
       83 CALL                             R12 -1 4
       84 MOVE                             R9 R12
       85 MOVE                             R10 R13
       86 MOVE                             R1 R14
       87 MOVE                             R11 R15
       88 JUMPIFNOT                        R10 ; [+5]
       89 MOVE                             R12 R9
       90 MOVE                             R13 R10
       91 MOVE                             R14 R1
       92 MOVE                             R15 R11
       93 RETURN                           R12 4
       94 FORGLOOP                         R4 2 [inext] ; [-36]
       96 LOADNIL                          R4
       97 LOADNIL                          R5
       98 MOVE                             R6 R1
       99 LOADNIL                          R7
      100 RETURN                           R4 4

PROTO_29:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SUMMARY_TRACK_HEIGHT"]
        3 JUMPIFNOTLT                      R2 R3 ; [+7]
        5 DUPTABLE                         R3 K4 [{["Index"] = 0, ["Path"]}]
        6 NEWTABLE                         R4 0 0
        8 SETTABLEKS                       R4 R3 K3 ["Path"]
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["SUMMARY_TRACK_HEIGHT"]
       14 SUB                              R2 R2 R3
       15 DUPCLOSURE                       R3 K5 [PROTO_28]
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U3
       21 LOADNIL                          R4
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 GETIMPORT                        R7 K7 [ipairs]
       26 MOVE                             R8 R0
       27 CALL                             R7 1 3
       28 FORGPREP_INEXT                   R7
       29 JUMPIFNOTLE                      R1 R10 ; [+33]
       31 MOVE                             R12 R3
       32 MOVE                             R13 R11
       33 MOVE                             R14 R2
       34 NEWTABLE                         R15 0 1
       36 GETTABLEKS                       R16 R11 K8 ["Name"]
       38 SETLIST                          R15 R16 1 [1]
       40 CALL                             R12 3 4
       41 MOVE                             R4 R12
       42 MOVE                             R5 R13
       43 MOVE                             R2 R14
       44 MOVE                             R6 R15
       45 JUMPIFNOT                        R5 ; [+17]
       46 DUPTABLE                         R12 K11 [{"Index", "Path", "ComponentType", "RotationType"}]
       47 SETTABLEKS                       R5 R12 K1 ["Index"]
       49 SETTABLEKS                       R4 R12 K3 ["Path"]
       51 GETTABLEKS                       R13 R6 K12 ["Type"]
       53 SETTABLEKS                       R13 R12 K9 ["ComponentType"]
       55 GETUPVAL                         R13 2
       56 GETTABLEKS                       R13 R13 K13 ["getRotationType"]
       58 MOVE                             R14 R6
       59 CALL                             R13 1 1
       60 SETTABLEKS                       R13 R12 K10 ["RotationType"]
       62 RETURN                           R12 1
       63 FORGLOOP                         R7 2 [inext] ; [-35]
       65 DUPTABLE                         R7 K14 [{"Index", "Path"}]
       66 LENGTH                           R9 R0
       67 ADDK                             R8 R9 K15 [1]
       68 SETTABLEKS                       R8 R7 K1 ["Index"]
       70 NEWTABLE                         R8 0 0
       72 SETTABLEKS                       R8 R7 K3 ["Path"]
       74 RETURN                           R7 1

PROTO_30:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETTABLEKS                       R7 R6 K2 ["Name"]
        7 JUMPIFNOTEQ                      R1 R7 ; [+2]
        9 RETURN                           R5 1
       10 FORGLOOP                         R2 2 [inext] ; [-6]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["SUMMARY_TRACK_HEIGHT"]
        3 MOVE                             R4 R1
        4 JUMPIFNOTLT                      R4 R2 ; [+22]
        6 GETTABLE                         R5 R0 R4
        7 GETTABLEKS                       R6 R5 K1 ["Expanded"]
        9 JUMPIFNOT                        R6 ; [+11]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K2 ["TRACK_HEIGHT"]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K3 ["getExpandedSize"]
       16 MOVE                             R9 R5
       17 CALL                             R8 1 1
       18 MUL                              R6 R7 R8
       19 ADD                              R3 R3 R6
       20 JUMP                             ; [+4]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K2 ["TRACK_HEIGHT"]
       24 ADD                              R3 R3 R6
       25 ADDK                             R4 R4 K4 [1]
       26 JUMPBACK                         ; [-23]
       27 RETURN                           R3 1

PROTO_32:
        0 GETTABLEKS                       R4 R0 K0 ["Name"]
        2 GETTABLEKS                       R5 R0 K1 ["Instance"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+7]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["getDefaultValue"]
        9 MOVE                             R7 R0
       10 CALL                             R6 1 -1
       11 RETURN                           R6 -1
       12 GETTABLEKS                       R8 R2 K3 ["Instances"]
       14 GETTABLE                         R7 R8 R5
       15 GETTABLEKS                       R7 R7 K4 ["Tracks"]
       17 GETTABLE                         R6 R7 R4
       18 JUMPIFNOT                        R6 ; [+8]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K5 ["getValue"]
       22 MOVE                             R8 R6
       23 MOVE                             R9 R1
       24 MOVE                             R10 R3
       25 CALL                             R7 3 -1
       26 RETURN                           R7 -1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K2 ["getDefaultValue"]
       30 MOVE                             R8 R0
       31 CALL                             R7 1 -1
       32 RETURN                           R7 -1

PROTO_33:
        0 GETTABLEKS                       R7 R3 K0 ["Instances"]
        2 GETTABLE                         R6 R7 R1
        3 GETIMPORT                        R7 K2 [ipairs]
        5 MOVE                             R8 R0
        6 CALL                             R7 1 3
        7 FORGPREP_INEXT                   R7
        8 JUMPIFNOTEQKN                    R10 K3 [1] ; [+4]
       10 GETTABLEKS                       R12 R6 K4 ["Tracks"]
       12 JUMPIF                           R12 ; [+2]
       13 GETTABLEKS                       R12 R6 K5 ["Components"]
       15 GETTABLE                         R6 R12 R11
       16 JUMPIF                           R6 ; [+6]
       17 GETUPVAL                         R12 0
       18 GETTABLEKS                       R12 R12 K6 ["getDefaultValue"]
       20 MOVE                             R13 R4
       21 CALL                             R12 1 -1
       22 RETURN                           R12 -1
       23 FORGLOOP                         R7 2 [inext] ; [-16]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K7 ["getValue"]
       28 MOVE                             R8 R6
       29 MOVE                             R9 R2
       30 MOVE                             R10 R5
       31 CALL                             R7 3 -1
       32 RETURN                           R7 -1

PROTO_34:
        0 NEWTABLE                         R4 0 3
        2 DUPTABLE                         R5 K5 [{[1], ["Key"] = "X", ["Value"], ["Type"]}]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K6 ["PROPERTY_KEYS"]
        6 GETTABLEKS                       R6 R6 K2 ["X"]
        8 SETTABLEKS                       R6 R5 K0 ["Name"]
       10 SETTABLEKS                       R0 R5 K3 ["Value"]
       12 SETTABLEKS                       R3 R5 K4 ["Type"]
       14 DUPTABLE                         R6 K8 [{[1], ["Key"] = "Y", ["Value"], ["Type"]}]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K6 ["PROPERTY_KEYS"]
       18 GETTABLEKS                       R7 R7 K7 ["Y"]
       20 SETTABLEKS                       R7 R6 K0 ["Name"]
       22 SETTABLEKS                       R1 R6 K3 ["Value"]
       24 SETTABLEKS                       R3 R6 K4 ["Type"]
       26 DUPTABLE                         R7 K10 [{[1], ["Key"] = "Z", ["Value"], ["Type"]}]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K6 ["PROPERTY_KEYS"]
       30 GETTABLEKS                       R8 R8 K9 ["Z"]
       32 SETTABLEKS                       R8 R7 K0 ["Name"]
       34 SETTABLEKS                       R2 R7 K3 ["Value"]
       36 SETTABLEKS                       R3 R7 K4 ["Type"]
       38 SETLIST                          R4 R5 3 [1]
       40 RETURN                           R4 1

PROTO_35:
        0 GETTABLEKS                       R4 R0 K0 ["Type"]
        2 GETTABLEKS                       R6 R0 K1 ["EulerAnglesOrder"]
        4 OR                               R5 R6 R3
        5 LOADNIL                          R6
        6 DUPCLOSURE                       R7 K2 [PROTO_34]
        7 CAPTURE                          UPVAL U0
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K3 ["TRACK_TYPES"]
       11 GETTABLEKS                       R8 R8 K4 ["CFrame"]
       13 JUMPIFNOTEQ                      R4 R8 ; [+67]
       15 GETTABLEKS                       R8 R1 K5 ["Position"]
       17 MOVE                             R11 R5
       18 NAMECALL                         R9 R1 K6 ["ToEulerAngles"]
       20 CALL                             R9 2 3
       21 FASTCALL1                        MATH_DEG R9 ; [+3]
       22 MOVE                             R13 R9
       23 GETIMPORT                        R12 K9 [math.deg]
       25 CALL                             R12 1 1
       26 JUMPIFNOTEQKN                    R12 K10 [0] ; [+3]
       28 LOADN                            R9 0
       29 JUMP                             ; [+1]
       30 MOVE                             R9 R12
       31 FASTCALL1                        MATH_DEG R10 ; [+3]
       32 MOVE                             R13 R10
       33 GETIMPORT                        R12 K9 [math.deg]
       35 CALL                             R12 1 1
       36 JUMPIFNOTEQKN                    R12 K10 [0] ; [+3]
       38 LOADN                            R10 0
       39 JUMP                             ; [+1]
       40 MOVE                             R10 R12
       41 FASTCALL1                        MATH_DEG R11 ; [+3]
       42 MOVE                             R13 R11
       43 GETIMPORT                        R12 K9 [math.deg]
       45 CALL                             R12 1 1
       46 JUMPIFNOTEQKN                    R12 K10 [0] ; [+3]
       48 LOADN                            R11 0
       49 JUMP                             ; [+1]
       50 MOVE                             R11 R12
       51 DUPTABLE                         R12 K12 [{"Position", "Rotation"}]
       52 MOVE                             R13 R7
       53 GETTABLEKS                       R14 R8 K13 ["X"]
       55 GETTABLEKS                       R15 R8 K14 ["Y"]
       57 GETTABLEKS                       R16 R8 K15 ["Z"]
       59 GETUPVAL                         R17 0
       60 GETTABLEKS                       R17 R17 K3 ["TRACK_TYPES"]
       62 GETTABLEKS                       R17 R17 K16 ["Number"]
       64 CALL                             R13 4 1
       65 SETTABLEKS                       R13 R12 K5 ["Position"]
       67 MOVE                             R13 R7
       68 MOVE                             R14 R9
       69 MOVE                             R15 R10
       70 MOVE                             R16 R11
       71 GETUPVAL                         R17 0
       72 GETTABLEKS                       R17 R17 K3 ["TRACK_TYPES"]
       74 GETTABLEKS                       R17 R17 K17 ["Angle"]
       76 CALL                             R13 4 1
       77 SETTABLEKS                       R13 R12 K11 ["Rotation"]
       79 MOVE                             R6 R12
       80 RETURN                           R6 1
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R8 R8 K3 ["TRACK_TYPES"]
       84 GETTABLEKS                       R8 R8 K5 ["Position"]
       86 JUMPIFNOTEQ                      R4 R8 ; [+16]
       88 MOVE                             R8 R7
       89 GETTABLEKS                       R9 R1 K13 ["X"]
       91 GETTABLEKS                       R10 R1 K14 ["Y"]
       93 GETTABLEKS                       R11 R1 K15 ["Z"]
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R12 R12 K3 ["TRACK_TYPES"]
       98 GETTABLEKS                       R12 R12 K16 ["Number"]
      100 CALL                             R8 4 1
      101 MOVE                             R6 R8
      102 RETURN                           R6 1
      103 GETUPVAL                         R8 0
      104 GETTABLEKS                       R8 R8 K3 ["TRACK_TYPES"]
      106 GETTABLEKS                       R8 R8 K18 ["EulerAngles"]
      108 JUMPIFNOTEQ                      R4 R8 ; [+43]
      110 MOVE                             R8 R7
      111 GETTABLEKS                       R11 R1 K13 ["X"]
      113 FASTCALL1                        MATH_DEG R11 ; [+2]
      114 GETIMPORT                        R10 K9 [math.deg]
      116 CALL                             R10 1 1
      117 JUMPIFNOTEQKN                    R10 K10 [0] ; [+3]
      119 LOADN                            R9 0
      120 JUMP                             ; [+1]
      121 MOVE                             R9 R10
      122 GETTABLEKS                       R12 R1 K14 ["Y"]
      124 FASTCALL1                        MATH_DEG R12 ; [+2]
      125 GETIMPORT                        R11 K9 [math.deg]
      127 CALL                             R11 1 1
      128 JUMPIFNOTEQKN                    R11 K10 [0] ; [+3]
      130 LOADN                            R10 0
      131 JUMP                             ; [+1]
      132 MOVE                             R10 R11
      133 GETTABLEKS                       R13 R1 K15 ["Z"]
      135 FASTCALL1                        MATH_DEG R13 ; [+2]
      136 GETIMPORT                        R12 K9 [math.deg]
      138 CALL                             R12 1 1
      139 JUMPIFNOTEQKN                    R12 K10 [0] ; [+3]
      141 LOADN                            R11 0
      142 JUMP                             ; [+1]
      143 MOVE                             R11 R12
      144 GETUPVAL                         R12 0
      145 GETTABLEKS                       R12 R12 K3 ["TRACK_TYPES"]
      147 GETTABLEKS                       R12 R12 K17 ["Angle"]
      149 CALL                             R8 4 1
      150 MOVE                             R6 R8
      151 RETURN                           R6 1
      152 GETUPVAL                         R8 0
      153 GETTABLEKS                       R8 R8 K3 ["TRACK_TYPES"]
      155 GETTABLEKS                       R8 R8 K19 ["Quaternion"]
      157 JUMPIFNOTEQ                      R4 R8 ; [+44]
      159 MOVE                             R10 R5
      160 NAMECALL                         R8 R1 K6 ["ToEulerAngles"]
      162 CALL                             R8 2 3
      163 MOVE                             R11 R7
      164 FASTCALL1                        MATH_DEG R8 ; [+3]
      165 MOVE                             R14 R8
      166 GETIMPORT                        R13 K9 [math.deg]
      168 CALL                             R13 1 1
      169 JUMPIFNOTEQKN                    R13 K10 [0] ; [+3]
      171 LOADN                            R12 0
      172 JUMP                             ; [+1]
      173 MOVE                             R12 R13
      174 FASTCALL1                        MATH_DEG R9 ; [+3]
      175 MOVE                             R15 R9
      176 GETIMPORT                        R14 K9 [math.deg]
      178 CALL                             R14 1 1
      179 JUMPIFNOTEQKN                    R14 K10 [0] ; [+3]
      181 LOADN                            R13 0
      182 JUMP                             ; [+1]
      183 MOVE                             R13 R14
      184 FASTCALL1                        MATH_DEG R10 ; [+3]
      185 MOVE                             R16 R10
      186 GETIMPORT                        R15 K9 [math.deg]
      188 CALL                             R15 1 1
      189 JUMPIFNOTEQKN                    R15 K10 [0] ; [+3]
      191 LOADN                            R14 0
      192 JUMP                             ; [+1]
      193 MOVE                             R14 R15
      194 GETUPVAL                         R15 0
      195 GETTABLEKS                       R15 R15 K3 ["TRACK_TYPES"]
      197 GETTABLEKS                       R15 R15 K17 ["Angle"]
      199 CALL                             R11 4 1
      200 MOVE                             R6 R11
      201 RETURN                           R6 1
      202 GETUPVAL                         R8 0
      203 GETTABLEKS                       R8 R8 K3 ["TRACK_TYPES"]
      205 GETTABLEKS                       R8 R8 K20 ["Facs"]
      207 JUMPIFNOTEQ                      R4 R8 ; [+25]
      209 NEWTABLE                         R8 0 1
      211 DUPTABLE                         R9 K25 [{["Name"] = "V", ["Key"] = "Value", ["Value"], [4]}]
      212 LOADN                            R12 0
      213 LOADN                            R13 1
      214 FASTCALL3                        MATH_CLAMP R1 R12 R13
      216 MOVE                             R11 R1
      217 GETIMPORT                        R10 K27 [math.clamp]
      219 CALL                             R10 3 1
      220 SETTABLEKS                       R10 R9 K24 ["Value"]
      222 GETUPVAL                         R10 0
      223 GETTABLEKS                       R10 R10 K3 ["TRACK_TYPES"]
      225 GETTABLEKS                       R10 R10 K20 ["Facs"]
      227 SETTABLEKS                       R10 R9 K0 ["Type"]
      229 SETLIST                          R8 R9 1 [1]
      231 MOVE                             R6 R8
      232 RETURN                           R6 1
      233 GETUPVAL                         R8 0
      234 GETTABLEKS                       R8 R8 K3 ["TRACK_TYPES"]
      236 GETTABLEKS                       R8 R8 K17 ["Angle"]
      238 JUMPIFNOTEQ                      R4 R8 ; [+31]
      240 NEWTABLE                         R8 0 1
      242 DUPTABLE                         R9 K28 [{"Name", "Key", "Value", "Type"}]
      243 SETTABLEKS                       R2 R9 K21 ["Name"]
      245 SETTABLEKS                       R2 R9 K23 ["Key"]
      247 FASTCALL1                        MATH_DEG R1 ; [+3]
      248 MOVE                             R12 R1
      249 GETIMPORT                        R11 K9 [math.deg]
      251 CALL                             R11 1 1
      252 JUMPIFNOTEQKN                    R11 K10 [0] ; [+3]
      254 LOADN                            R10 0
      255 JUMP                             ; [+1]
      256 MOVE                             R10 R11
      257 SETTABLEKS                       R10 R9 K24 ["Value"]
      259 GETUPVAL                         R10 0
      260 GETTABLEKS                       R10 R10 K3 ["TRACK_TYPES"]
      262 GETTABLEKS                       R10 R10 K17 ["Angle"]
      264 SETTABLEKS                       R10 R9 K0 ["Type"]
      266 SETLIST                          R8 R9 1 [1]
      268 MOVE                             R6 R8
      269 RETURN                           R6 1
      270 NEWTABLE                         R8 0 1
      272 DUPTABLE                         R9 K28 [{"Name", "Key", "Value", "Type"}]
      273 GETUPVAL                         R11 1
      274 CALL                             R11 0 1
      275 JUMPIFNOT                        R11 ; [+9]
      276 LOADN                            R12 1
      277 LOADN                            R13 1
      278 FASTCALL3                        STRING_SUB R2 R12 R13
      280 MOVE                             R11 R2
      281 GETIMPORT                        R10 K31 [string.sub]
      283 CALL                             R10 3 1
      284 JUMP                             ; [+1]
      285 MOVE                             R10 R2
      286 SETTABLEKS                       R10 R9 K21 ["Name"]
      288 SETTABLEKS                       R2 R9 K23 ["Key"]
      290 SETTABLEKS                       R1 R9 K24 ["Value"]
      292 GETUPVAL                         R10 0
      293 GETTABLEKS                       R10 R10 K3 ["TRACK_TYPES"]
      295 GETTABLEKS                       R10 R10 K16 ["Number"]
      297 SETTABLEKS                       R10 R9 K0 ["Type"]
      299 SETLIST                          R8 R9 1 [1]
      301 MOVE                             R6 R8
      302 RETURN                           R6 1

PROTO_36:
        0 GETTABLEKS                       R3 R0 K0 ["Type"]
        2 LOADNIL                          R4
        3 GETTABLEKS                       R6 R0 K1 ["EulerAnglesOrder"]
        5 OR                               R5 R6 R2
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["TRACK_TYPES"]
        9 GETTABLEKS                       R6 R6 K3 ["CFrame"]
       11 JUMPIFNOTEQ                      R3 R6 ; [+47]
       13 GETTABLEKS                       R6 R1 K4 ["Position"]
       15 GETTABLEKS                       R7 R1 K5 ["Rotation"]
       17 GETTABLEN                        R9 R7 1
       18 GETTABLEKS                       R9 R9 K6 ["Value"]
       20 FASTCALL1                        MATH_RAD R9 ; [+2]
       21 GETIMPORT                        R8 K9 [math.rad]
       23 CALL                             R8 1 1
       24 GETTABLEN                        R10 R7 2
       25 GETTABLEKS                       R10 R10 K6 ["Value"]
       27 FASTCALL1                        MATH_RAD R10 ; [+2]
       28 GETIMPORT                        R9 K9 [math.rad]
       30 CALL                             R9 1 1
       31 GETTABLEN                        R11 R7 3
       32 GETTABLEKS                       R11 R11 K6 ["Value"]
       34 FASTCALL1                        MATH_RAD R11 ; [+2]
       35 GETIMPORT                        R10 K9 [math.rad]
       37 CALL                             R10 1 1
       38 GETIMPORT                        R11 K11 [CFrame.new]
       40 GETTABLEN                        R12 R6 1
       41 GETTABLEKS                       R12 R12 K6 ["Value"]
       43 GETTABLEN                        R13 R6 2
       44 GETTABLEKS                       R13 R13 K6 ["Value"]
       46 GETTABLEN                        R14 R6 3
       47 GETTABLEKS                       R14 R14 K6 ["Value"]
       49 CALL                             R11 3 1
       50 GETIMPORT                        R12 K13 [CFrame.fromEulerAngles]
       52 MOVE                             R13 R8
       53 MOVE                             R14 R9
       54 MOVE                             R15 R10
       55 MOVE                             R16 R5
       56 CALL                             R12 4 1
       57 MUL                              R4 R11 R12
       58 RETURN                           R4 1
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K2 ["TRACK_TYPES"]
       62 GETTABLEKS                       R6 R6 K4 ["Position"]
       64 JUMPIFNOTEQ                      R3 R6 ; [+16]
       66 GETTABLEN                        R7 R1 1
       67 GETTABLEKS                       R7 R7 K6 ["Value"]
       69 GETTABLEN                        R8 R1 2
       70 GETTABLEKS                       R8 R8 K6 ["Value"]
       72 GETTABLEN                        R9 R1 3
       73 GETTABLEKS                       R9 R9 K6 ["Value"]
       75 FASTCALL                         VECTOR ; [+2]
       76 GETIMPORT                        R6 K15 [Vector3.new]
       78 CALL                             R6 3 1
       79 MOVE                             R4 R6
       80 RETURN                           R4 1
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R6 R6 K2 ["TRACK_TYPES"]
       84 GETTABLEKS                       R6 R6 K16 ["EulerAngles"]
       86 JUMPIFNOTEQ                      R3 R6 ; [+28]
       88 GETTABLEN                        R8 R1 1
       89 GETTABLEKS                       R8 R8 K6 ["Value"]
       91 FASTCALL1                        MATH_RAD R8 ; [+2]
       92 GETIMPORT                        R7 K9 [math.rad]
       94 CALL                             R7 1 1
       95 GETTABLEN                        R9 R1 2
       96 GETTABLEKS                       R9 R9 K6 ["Value"]
       98 FASTCALL1                        MATH_RAD R9 ; [+2]
       99 GETIMPORT                        R8 K9 [math.rad]
      101 CALL                             R8 1 1
      102 GETTABLEN                        R10 R1 3
      103 GETTABLEKS                       R10 R10 K6 ["Value"]
      105 FASTCALL1                        MATH_RAD R10 ; [+2]
      106 GETIMPORT                        R9 K9 [math.rad]
      108 CALL                             R9 1 1
      109 FASTCALL                         VECTOR ; [+2]
      110 GETIMPORT                        R6 K15 [Vector3.new]
      112 CALL                             R6 3 1
      113 MOVE                             R4 R6
      114 RETURN                           R4 1
      115 GETUPVAL                         R6 0
      116 GETTABLEKS                       R6 R6 K2 ["TRACK_TYPES"]
      118 GETTABLEKS                       R6 R6 K17 ["Quaternion"]
      120 JUMPIFNOTEQ                      R3 R6 ; [+28]
      122 GETIMPORT                        R6 K13 [CFrame.fromEulerAngles]
      124 GETTABLEN                        R8 R1 1
      125 GETTABLEKS                       R8 R8 K6 ["Value"]
      127 FASTCALL1                        MATH_RAD R8 ; [+2]
      128 GETIMPORT                        R7 K9 [math.rad]
      130 CALL                             R7 1 1
      131 GETTABLEN                        R9 R1 2
      132 GETTABLEKS                       R9 R9 K6 ["Value"]
      134 FASTCALL1                        MATH_RAD R9 ; [+2]
      135 GETIMPORT                        R8 K9 [math.rad]
      137 CALL                             R8 1 1
      138 GETTABLEN                        R10 R1 3
      139 GETTABLEKS                       R10 R10 K6 ["Value"]
      141 FASTCALL1                        MATH_RAD R10 ; [+2]
      142 GETIMPORT                        R9 K9 [math.rad]
      144 CALL                             R9 1 1
      145 MOVE                             R10 R5
      146 CALL                             R6 4 1
      147 MOVE                             R4 R6
      148 RETURN                           R4 1
      149 GETUPVAL                         R6 0
      150 GETTABLEKS                       R6 R6 K2 ["TRACK_TYPES"]
      152 GETTABLEKS                       R6 R6 K18 ["Number"]
      154 JUMPIFNOTEQ                      R3 R6 ; [+5]
      156 GETTABLEN                        R6 R1 1
      157 GETTABLEKS                       R4 R6 K6 ["Value"]
      159 RETURN                           R4 1
      160 GETUPVAL                         R6 0
      161 GETTABLEKS                       R6 R6 K2 ["TRACK_TYPES"]
      163 GETTABLEKS                       R6 R6 K19 ["Angle"]
      165 JUMPIFNOTEQ                      R3 R6 ; [+10]
      167 GETTABLEN                        R7 R1 1
      168 GETTABLEKS                       R7 R7 K6 ["Value"]
      170 FASTCALL1                        MATH_RAD R7 ; [+2]
      171 GETIMPORT                        R6 K9 [math.rad]
      173 CALL                             R6 1 1
      174 MOVE                             R4 R6
      175 RETURN                           R4 1
      176 GETUPVAL                         R6 0
      177 GETTABLEKS                       R6 R6 K2 ["TRACK_TYPES"]
      179 GETTABLEKS                       R6 R6 K20 ["Facs"]
      181 JUMPIFNOTEQ                      R3 R6 ; [+11]
      183 GETTABLEN                        R7 R1 1
      184 GETTABLEKS                       R7 R7 K6 ["Value"]
      186 LOADN                            R8 0
      187 LOADN                            R9 1
      188 FASTCALL                         MATH_CLAMP ; [+2]
      189 GETIMPORT                        R6 K22 [math.clamp]
      191 CALL                             R6 3 1
      192 MOVE                             R4 R6
      193 RETURN                           R4 1

PROTO_37:
        0 NEWTABLE                         R4 2 0
        2 GETTABLEKS                       R5 R0 K0 ["Metadata"]
        4 GETTABLEKS                       R5 R5 K1 ["StartTick"]
        6 GETTABLEKS                       R7 R0 K0 ["Metadata"]
        8 GETTABLEKS                       R7 R7 K2 ["EndTick"]
       10 FASTCALL2                        MATH_MAX R7 R3 ; [+4]
       12 MOVE                             R8 R3
       13 GETIMPORT                        R6 K5 [math.max]
       15 CALL                             R6 2 1
       16 SUB                              R7 R6 R5
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K6 ["LENGTH_PADDING"]
       20 MUL                              R8 R7 R9
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R11 R11 K7 ["MAX_ANIMATION_LENGTH"]
       24 FASTCALL2                        MATH_MIN R8 R11 ; [+4]
       26 MOVE                             R10 R8
       27 GETIMPORT                        R9 K9 [math.min]
       29 CALL                             R9 2 1
       30 MOVE                             R8 R9
       31 SUBRK                            R10 K10 [1] R2
       32 MUL                              R9 R8 R10
       33 FASTCALL2K                       MATH_MAX R9 K10 ; [+5]
       35 MOVE                             R11 R9
       36 LOADK                            R12 K10 [1]
       37 GETIMPORT                        R10 K5 [math.max]
       39 CALL                             R10 2 1
       40 MOVE                             R9 R10
       41 SUB                              R12 R8 R9
       42 MUL                              R11 R12 R1
       43 ADD                              R10 R5 R11
       44 SETTABLEKS                       R10 R4 K11 ["Start"]
       46 GETTABLEKS                       R11 R4 K11 ["Start"]
       48 ADD                              R10 R11 R9
       49 SETTABLEKS                       R10 R4 K12 ["End"]
       51 RETURN                           R4 1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["Keyframes"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["List"]
        7 GETTABLEKS                       R1 R1 K2 ["join"]
        9 NEWTABLE                         R2 0 0
       11 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K4 [pairs]
       16 MOVE                             R3 R1
       17 CALL                             R2 1 3
       18 FORGPREP_NEXT                    R2
       19 GETTABLEKS                       R8 R0 K5 ["Data"]
       21 GETTABLE                         R7 R8 R6
       22 GETTABLEKS                       R8 R7 K6 ["EasingStyle"]
       24 GETTABLEKS                       R9 R7 K7 ["EasingDirection"]
       26 LENGTH                           R10 R1
       27 JUMPIFNOTLT                      R5 R10 ; [+52]
       29 ADDK                             R11 R5 K8 [1]
       30 GETTABLE                         R10 R1 R11
       31 GETTABLEKS                       R12 R0 K5 ["Data"]
       33 GETTABLE                         R11 R12 R10
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R12 R12 K9 ["generateCurve"]
       37 GETTABLEKS                       R13 R0 K10 ["Type"]
       39 MOVE                             R14 R8
       40 MOVE                             R15 R9
       41 MOVE                             R16 R6
       42 MOVE                             R17 R7
       43 MOVE                             R18 R10
       44 MOVE                             R19 R11
       45 CALL                             R12 7 1
       46 JUMPIFNOT                        R12 ; [+45]
       47 GETUPVAL                         R13 2
       48 MOVE                             R14 R12
       49 CALL                             R13 1 1
       50 JUMPIF                           R13 ; [+41]
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R13 R13 K1 ["List"]
       54 GETTABLEKS                       R13 R13 K2 ["join"]
       56 GETTABLEKS                       R14 R0 K0 ["Keyframes"]
       58 GETUPVAL                         R15 0
       59 GETTABLEKS                       R15 R15 K11 ["Dictionary"]
       61 GETTABLEKS                       R15 R15 K12 ["keys"]
       63 MOVE                             R16 R12
       64 CALL                             R15 1 -1
       65 CALL                             R13 -1 1
       66 SETTABLEKS                       R13 R0 K0 ["Keyframes"]
       68 GETUPVAL                         R13 0
       69 GETTABLEKS                       R13 R13 K11 ["Dictionary"]
       71 GETTABLEKS                       R13 R13 K2 ["join"]
       73 GETTABLEKS                       R14 R0 K5 ["Data"]
       75 MOVE                             R15 R12
       76 CALL                             R13 2 1
       77 SETTABLEKS                       R13 R0 K5 ["Data"]
       79 JUMP                             ; [+12]
       80 LOADNIL                          R10
       81 SETTABLEKS                       R10 R7 K6 ["EasingStyle"]
       83 LOADNIL                          R10
       84 SETTABLEKS                       R10 R7 K7 ["EasingDirection"]
       86 GETUPVAL                         R11 3
       87 GETTABLEKS                       R11 R11 K13 ["POSE_EASING_STYLE_TO_KEY_INTERPOLATION"]
       89 GETTABLE                         R10 R11 R8
       90 SETTABLEKS                       R10 R7 K14 ["InterpolationMode"]
       92 FORGLOOP                         R2 2 ; [-74]
       94 GETIMPORT                        R2 K17 [table.sort]
       96 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
       98 CALL                             R2 1 0
       99 LOADB                            R2 1
      100 SETTABLEKS                       R2 R0 K18 ["IsCurveTrack"]
      102 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["COMPONENT_TRACK_TYPES"]
        3 GETTABLEKS                       R3 R0 K1 ["Type"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+77]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R0 K2 ["Components"]
       11 GETIMPORT                        R2 K4 [pairs]
       13 GETTABLEKS                       R3 R1 K5 ["_Order"]
       15 CALL                             R2 1 3
       16 FORGPREP_NEXT                    R2
       17 GETTABLE                         R7 R1 R6
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K6 ["PROPERTY_KEYS"]
       21 GETTABLEKS                       R8 R8 K7 ["Rotation"]
       23 JUMPIFEQ                         R6 R8 ; [+11]
       25 GETUPVAL                         R8 1
       26 CALL                             R8 0 1
       27 JUMPIFNOT                        R8 ; [+10]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K6 ["PROPERTY_KEYS"]
       31 GETTABLEKS                       R8 R8 K8 ["OffsetRot"]
       33 JUMPIFNOTEQ                      R6 R8 ; [+4]
       35 GETUPVAL                         R8 2
       36 JUMPIFNOT                        R8 ; [+1]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R8 R0 K2 ["Components"]
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R9 R9 K9 ["track"]
       43 MOVE                             R10 R7
       44 CALL                             R9 1 1
       45 SETTABLE                         R9 R8 R6
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K6 ["PROPERTY_KEYS"]
       49 GETTABLEKS                       R8 R8 K7 ["Rotation"]
       51 JUMPIFEQ                         R6 R8 ; [+11]
       53 GETUPVAL                         R8 1
       54 CALL                             R8 0 1
       55 JUMPIFNOT                        R8 ; [+20]
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K6 ["PROPERTY_KEYS"]
       59 GETTABLEKS                       R8 R8 K8 ["OffsetRot"]
       61 JUMPIFNOTEQ                      R6 R8 ; [+14]
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R8 R8 K10 ["TRACK_TYPES"]
       66 GETTABLEKS                       R8 R8 K11 ["EulerAngles"]
       68 JUMPIFNOTEQ                      R7 R8 ; [+7]
       70 GETTABLEKS                       R9 R0 K2 ["Components"]
       72 GETTABLE                         R8 R9 R6
       73 GETUPVAL                         R9 4
       74 SETTABLEKS                       R9 R8 K12 ["EulerAnglesOrder"]
       76 GETUPVAL                         R8 5
       77 GETTABLEKS                       R10 R0 K2 ["Components"]
       79 GETTABLE                         R9 R10 R6
       80 CALL                             R8 1 0
       81 FORGLOOP                         R2 2 ; [-65]
       83 RETURN                           R0 0
       84 GETUPVAL                         R3 6
       85 GETTABLEKS                       R3 R3 K13 ["Keyframes"]
       87 JUMPIFNOT                        R3 ; [+12]
       88 GETUPVAL                         R2 7
       89 GETTABLEKS                       R2 R2 K14 ["List"]
       91 GETTABLEKS                       R2 R2 K15 ["join"]
       93 NEWTABLE                         R3 0 0
       95 GETUPVAL                         R4 6
       96 GETTABLEKS                       R4 R4 K13 ["Keyframes"]
       98 CALL                             R2 2 1
       99 JUMPIF                           R2 ; [+2]
      100 NEWTABLE                         R2 0 0
      102 SETTABLEKS                       R2 R0 K13 ["Keyframes"]
      104 NEWTABLE                         R2 0 0
      106 SETTABLEKS                       R2 R0 K16 ["Data"]
      108 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["COMPONENT_TRACK_TYPES"]
        3 GETTABLEKS                       R3 R0 K1 ["Type"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+57]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R0 K2 ["Components"]
       11 GETIMPORT                        R2 K4 [pairs]
       13 GETTABLEKS                       R3 R1 K5 ["_Order"]
       15 CALL                             R2 1 3
       16 FORGPREP_NEXT                    R2
       17 GETTABLE                         R7 R1 R6
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K6 ["PROPERTY_KEYS"]
       21 GETTABLEKS                       R8 R8 K7 ["Rotation"]
       23 JUMPIFNOTEQ                      R6 R8 ; [+4]
       25 GETUPVAL                         R8 1
       26 JUMPIFNOT                        R8 ; [+1]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R8 R0 K2 ["Components"]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K8 ["track"]
       33 MOVE                             R10 R7
       34 CALL                             R9 1 1
       35 SETTABLE                         R9 R8 R6
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K6 ["PROPERTY_KEYS"]
       39 GETTABLEKS                       R8 R8 K7 ["Rotation"]
       41 JUMPIFNOTEQ                      R6 R8 ; [+14]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K9 ["TRACK_TYPES"]
       46 GETTABLEKS                       R8 R8 K10 ["EulerAngles"]
       48 JUMPIFNOTEQ                      R7 R8 ; [+7]
       50 GETTABLEKS                       R9 R0 K2 ["Components"]
       52 GETTABLE                         R8 R9 R6
       53 GETUPVAL                         R9 3
       54 SETTABLEKS                       R9 R8 K11 ["EulerAnglesOrder"]
       56 GETUPVAL                         R8 4
       57 GETTABLEKS                       R10 R0 K2 ["Components"]
       59 GETTABLE                         R9 R10 R6
       60 CALL                             R8 1 0
       61 FORGLOOP                         R2 2 ; [-45]
       63 RETURN                           R0 0
       64 GETUPVAL                         R3 5
       65 GETTABLEKS                       R3 R3 K12 ["Keyframes"]
       67 JUMPIFNOT                        R3 ; [+12]
       68 GETUPVAL                         R2 6
       69 GETTABLEKS                       R2 R2 K13 ["List"]
       71 GETTABLEKS                       R2 R2 K14 ["join"]
       73 NEWTABLE                         R3 0 0
       75 GETUPVAL                         R4 5
       76 GETTABLEKS                       R4 R4 K12 ["Keyframes"]
       78 CALL                             R2 2 1
       79 JUMPIF                           R2 ; [+2]
       80 NEWTABLE                         R2 0 0
       82 SETTABLEKS                       R2 R0 K12 ["Keyframes"]
       84 NEWTABLE                         R2 0 0
       86 SETTABLEKS                       R2 R0 K15 ["Data"]
       88 RETURN                           R0 0

PROTO_41:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 GETTABLEKS                       R4 R0 K0 ["Type"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K1 ["TRACK_TYPES"]
       14 GETTABLEKS                       R5 R5 K2 ["CFrame"]
       16 JUMPIFNOTEQ                      R4 R5 ; [+201]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 GETUPVAL                         R5 1
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+4]
       29 MOVE                             R5 R3
       30 MOVE                             R6 R0
       31 CALL                             R5 1 0
       32 JUMP                             ; [+3]
       33 MOVE                             R5 R4
       34 MOVE                             R6 R0
       35 CALL                             R5 1 0
       36 GETIMPORT                        R5 K4 [pairs]
       38 GETTABLEKS                       R6 R0 K5 ["Keyframes"]
       40 JUMPIF                           R6 ; [+2]
       41 NEWTABLE                         R6 0 0
       43 CALL                             R5 1 3
       44 FORGPREP_NEXT                    R5
       45 GETTABLEKS                       R11 R0 K6 ["Data"]
       47 GETTABLE                         R10 R11 R9
       48 GETTABLEKS                       R10 R10 K7 ["Value"]
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R11 R11 K1 ["TRACK_TYPES"]
       53 GETTABLEKS                       R11 R11 K8 ["Quaternion"]
       55 JUMPIFNOTEQ                      R1 R11 ; [+66]
       57 GETTABLEKS                       R11 R10 K9 ["Position"]
       59 GETTABLEKS                       R13 R10 K9 ["Position"]
       61 SUB                              R12 R10 R13
       62 GETTABLEKS                       R13 R0 K10 ["Components"]
       64 GETTABLEKS                       R13 R13 K9 ["Position"]
       66 GETTABLEKS                       R14 R0 K10 ["Components"]
       68 GETTABLEKS                       R14 R14 K11 ["Rotation"]
       70 GETIMPORT                        R15 K13 [ipairs]
       72 GETUPVAL                         R18 0
       73 GETTABLEKS                       R18 R18 K14 ["COMPONENT_TRACK_TYPES"]
       75 GETUPVAL                         R19 0
       76 GETTABLEKS                       R19 R19 K1 ["TRACK_TYPES"]
       78 GETTABLEKS                       R19 R19 K9 ["Position"]
       80 GETTABLE                         R16 R18 R19
       81 GETTABLEKS                       R16 R16 K15 ["_Order"]
       83 CALL                             R15 1 3
       84 FORGPREP_INEXT                   R15
       85 GETTABLEKS                       R21 R13 K10 ["Components"]
       87 GETTABLE                         R20 R21 R19
       88 GETTABLEKS                       R20 R20 K6 ["Data"]
       90 GETUPVAL                         R21 3
       91 GETTABLEKS                       R21 R21 K16 ["Dictionary"]
       93 GETTABLEKS                       R21 R21 K17 ["join"]
       95 GETTABLEKS                       R23 R0 K6 ["Data"]
       97 GETTABLE                         R22 R23 R9
       98 DUPTABLE                         R23 K18 [{"Value"}]
       99 GETTABLE                         R24 R11 R19
      100 SETTABLEKS                       R24 R23 K7 ["Value"]
      102 CALL                             R21 2 1
      103 SETTABLE                         R21 R20 R9
      104 FORGLOOP                         R15 2 [inext] ; [-20]
      106 GETTABLEKS                       R15 R14 K6 ["Data"]
      108 GETUPVAL                         R16 3
      109 GETTABLEKS                       R16 R16 K16 ["Dictionary"]
      111 GETTABLEKS                       R16 R16 K17 ["join"]
      113 GETTABLEKS                       R18 R0 K6 ["Data"]
      115 GETTABLE                         R17 R18 R9
      116 DUPTABLE                         R18 K18 [{"Value"}]
      117 SETTABLEKS                       R12 R18 K7 ["Value"]
      119 CALL                             R16 2 1
      120 SETTABLE                         R16 R15 R9
      121 JUMP                             ; [+58]
      122 GETTABLEKS                       R11 R10 K9 ["Position"]
      124 MOVE                             R15 R2
      125 NAMECALL                         R13 R10 K19 ["ToEulerAngles"]
      127 CALL                             R13 2 -1
      128 FASTCALL                         VECTOR ; [+2]
      129 GETIMPORT                        R12 K22 [Vector3.new]
      131 CALL                             R12 -1 1
      132 GETIMPORT                        R13 K4 [pairs]
      134 GETTABLEKS                       R14 R0 K10 ["Components"]
      136 CALL                             R13 1 3
      137 FORGPREP_NEXT                    R13
      138 GETUPVAL                         R19 0
      139 GETTABLEKS                       R19 R19 K23 ["PROPERTY_KEYS"]
      141 GETTABLEKS                       R19 R19 K9 ["Position"]
      143 JUMPIFNOTEQ                      R16 R19 ; [+3]
      145 MOVE                             R18 R11
      146 JUMPIF                           R18 ; [+1]
      147 MOVE                             R18 R12
      148 GETIMPORT                        R19 K4 [pairs]
      150 GETTABLEKS                       R20 R17 K10 ["Components"]
      152 CALL                             R19 1 3
      153 FORGPREP_NEXT                    R19
      154 GETTABLEKS                       R24 R23 K6 ["Data"]
      156 GETUPVAL                         R25 3
      157 GETTABLEKS                       R25 R25 K16 ["Dictionary"]
      159 GETTABLEKS                       R25 R25 K17 ["join"]
      161 GETTABLEKS                       R27 R0 K6 ["Data"]
      163 GETTABLE                         R26 R27 R9
      164 DUPTABLE                         R27 K18 [{"Value"}]
      165 GETTABLE                         R28 R18 R22
      166 SETTABLEKS                       R28 R27 K7 ["Value"]
      168 CALL                             R25 2 1
      169 SETTABLE                         R25 R24 R9
      170 FORGLOOP                         R19 2 ; [-17]
      172 LOADNIL                          R19
      173 SETTABLEKS                       R19 R17 K5 ["Keyframes"]
      175 LOADNIL                          R19
      176 SETTABLEKS                       R19 R17 K6 ["Data"]
      178 FORGLOOP                         R13 2 ; [-41]
      180 FORGLOOP                         R5 2 ; [-136]
      182 GETIMPORT                        R5 K4 [pairs]
      184 GETTABLEKS                       R6 R0 K10 ["Components"]
      186 CALL                             R5 1 3
      187 FORGPREP_NEXT                    R5
      188 GETUPVAL                         R10 4
      189 GETTABLEKS                       R10 R10 K24 ["adjustCurves"]
      191 MOVE                             R11 R9
      192 CALL                             R10 1 0
      193 GETIMPORT                        R10 K4 [pairs]
      195 GETTABLEKS                       R11 R9 K10 ["Components"]
      197 JUMPIF                           R11 ; [+2]
      198 NEWTABLE                         R11 0 0
      200 CALL                             R10 1 3
      201 FORGPREP_NEXT                    R10
      202 GETUPVAL                         R15 4
      203 GETTABLEKS                       R15 R15 K24 ["adjustCurves"]
      205 MOVE                             R16 R14
      206 CALL                             R15 1 0
      207 FORGLOOP                         R10 2 ; [-6]
      209 FORGLOOP                         R5 2 ; [-22]
      211 LOADNIL                          R5
      212 SETTABLEKS                       R5 R0 K5 ["Keyframes"]
      214 LOADNIL                          R5
      215 SETTABLEKS                       R5 R0 K6 ["Data"]
      217 RETURN                           R0 0
      218 GETUPVAL                         R4 1
      219 CALL                             R4 0 1
      220 JUMPIFNOT                        R4 ; [+13]
      221 GETTABLEKS                       R4 R0 K0 ["Type"]
      223 GETUPVAL                         R5 0
      224 GETTABLEKS                       R5 R5 K1 ["TRACK_TYPES"]
      226 GETTABLEKS                       R5 R5 K25 ["IkTarget"]
      228 JUMPIFNOTEQ                      R4 R5 ; [+5]
      230 MOVE                             R4 R3
      231 MOVE                             R5 R0
      232 CALL                             R4 1 0
      233 RETURN                           R0 0
      234 GETUPVAL                         R4 1
      235 CALL                             R4 0 1
      236 JUMPIFNOT                        R4 ; [+14]
      237 GETTABLEKS                       R4 R0 K0 ["Type"]
      239 GETUPVAL                         R5 0
      240 GETTABLEKS                       R5 R5 K1 ["TRACK_TYPES"]
      242 GETTABLEKS                       R5 R5 K26 ["IkData"]
      244 JUMPIFNOTEQ                      R4 R5 ; [+6]
      246 NEWTABLE                         R4 0 0
      248 SETTABLEKS                       R4 R0 K10 ["Components"]
      250 RETURN                           R0 0
      251 GETTABLEKS                       R4 R0 K0 ["Type"]
      253 GETUPVAL                         R5 0
      254 GETTABLEKS                       R5 R5 K1 ["TRACK_TYPES"]
      256 GETTABLEKS                       R5 R5 K27 ["Facs"]
      258 JUMPIFNOTEQ                      R4 R5 ; [+20]
      260 GETTABLEKS                       R4 R0 K5 ["Keyframes"]
      262 JUMPIF                           R4 ; [+2]
      263 NEWTABLE                         R4 0 0
      265 SETTABLEKS                       R4 R0 K5 ["Keyframes"]
      267 GETTABLEKS                       R4 R0 K6 ["Data"]
      269 JUMPIF                           R4 ; [+2]
      270 NEWTABLE                         R4 0 0
      272 SETTABLEKS                       R4 R0 K6 ["Data"]
      274 GETUPVAL                         R4 4
      275 GETTABLEKS                       R4 R4 K24 ["adjustCurves"]
      277 MOVE                             R5 R0
      278 CALL                             R4 1 0
      279 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["COMPONENT_TRACK_TYPES"]
        3 GETTABLEKS                       R6 R0 K1 ["Type"]
        5 GETTABLE                         R4 R5 R6
        6 SETTABLEKS                       R1 R0 K2 ["Instance"]
        8 JUMPIFNOT                        R4 ; [+64]
        9 NEWTABLE                         R5 0 0
       11 SETTABLEKS                       R5 R0 K3 ["Components"]
       13 GETTABLEKS                       R6 R0 K3 ["Components"]
       15 FASTCALL1                        ASSERT R6 ; [+2]
       16 GETIMPORT                        R5 K5 [assert]
       18 CALL                             R5 1 0
       19 GETIMPORT                        R5 K7 [ipairs]
       21 GETTABLEKS                       R6 R4 K8 ["_Order"]
       23 CALL                             R5 1 3
       24 FORGPREP_INEXT                   R5
       25 GETTABLE                         R10 R4 R9
       26 LOADNIL                          R11
       27 GETUPVAL                         R12 0
       28 GETTABLEKS                       R12 R12 K9 ["PROPERTY_KEYS"]
       30 GETTABLEKS                       R12 R12 K10 ["Rotation"]
       32 JUMPIFNOTEQ                      R9 R12 ; [+17]
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R12 R12 K11 ["trackListEntry"]
       37 MOVE                             R13 R2
       38 CALL                             R12 1 1
       39 MOVE                             R11 R12
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R12 R12 K12 ["TRACK_TYPES"]
       43 GETTABLEKS                       R12 R12 K13 ["EulerAngles"]
       45 JUMPIFNOTEQ                      R2 R12 ; [+10]
       47 SETTABLEKS                       R3 R11 K14 ["EulerAnglesOrder"]
       49 JUMP                             ; [+6]
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R12 R12 K11 ["trackListEntry"]
       53 MOVE                             R13 R10
       54 CALL                             R12 1 1
       55 MOVE                             R11 R12
       56 SETTABLEKS                       R9 R11 K15 ["Name"]
       58 GETTABLEKS                       R12 R0 K3 ["Components"]
       60 SETTABLE                         R11 R12 R9
       61 GETUPVAL                         R12 2
       62 GETTABLEKS                       R12 R12 K16 ["createTrackListEntryComponents"]
       64 GETTABLEKS                       R14 R0 K3 ["Components"]
       66 GETTABLE                         R13 R14 R9
       67 MOVE                             R14 R1
       68 MOVE                             R15 R2
       69 MOVE                             R16 R3
       70 CALL                             R12 4 0
       71 FORGLOOP                         R5 2 [inext] ; [-47]
       73 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 ADDK                             R0 R1 K0 [1]
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_44:
        0 GETTABLEKS                       R1 R0 K0 ["Data"]
        2 JUMPIFNOT                        R1 ; [+84]
        3 GETIMPORT                        R1 K2 [pairs]
        5 GETTABLEKS                       R2 R0 K0 ["Data"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETUPVAL                         R6 0
       10 JUMPIFNOTLE                      R6 R4 ; [+74]
       12 GETUPVAL                         R6 1
       13 JUMPIFNOTLE                      R4 R6 ; [+71]
       15 GETUPVAL                         R7 2
       16 GETTABLE                         R6 R7 R4
       17 JUMPIFNOT                        R6 ; [+49]
       18 GETUPVAL                         R7 2
       19 GETTABLE                         R6 R7 R4
       20 GETUPVAL                         R9 2
       21 GETTABLE                         R8 R9 R4
       22 GETTABLEKS                       R8 R8 K4 ["Count"]
       24 ADDK                             R7 R8 K3 [1]
       25 SETTABLEKS                       R7 R6 K4 ["Count"]
       27 GETUPVAL                         R7 2
       28 GETTABLE                         R6 R7 R4
       29 GETUPVAL                         R9 2
       30 GETTABLE                         R8 R9 R4
       31 GETTABLEKS                       R8 R8 K4 ["Count"]
       33 GETUPVAL                         R9 3
       34 JUMPIFEQ                         R8 R9 ; [+2]
       36 LOADB                            R7 0 +1
       37 LOADB                            R7 1
       38 SETTABLEKS                       R7 R6 K5 ["Complete"]
       40 GETUPVAL                         R7 2
       41 GETTABLE                         R6 R7 R4
       42 GETTABLEKS                       R6 R6 K6 ["EasingStyle"]
       44 GETTABLEKS                       R7 R5 K6 ["EasingStyle"]
       46 JUMPIFEQ                         R6 R7 ; [+6]
       48 GETUPVAL                         R7 2
       49 GETTABLE                         R6 R7 R4
       50 LOADNIL                          R7
       51 SETTABLEKS                       R7 R6 K6 ["EasingStyle"]
       53 GETUPVAL                         R7 2
       54 GETTABLE                         R6 R7 R4
       55 GETTABLEKS                       R6 R6 K7 ["InterpolationMode"]
       57 GETTABLEKS                       R7 R5 K7 ["InterpolationMode"]
       59 JUMPIFEQ                         R6 R7 ; [+25]
       61 GETUPVAL                         R7 2
       62 GETTABLE                         R6 R7 R4
       63 LOADNIL                          R7
       64 SETTABLEKS                       R7 R6 K7 ["InterpolationMode"]
       66 JUMP                             ; [+18]
       67 GETUPVAL                         R6 2
       68 DUPTABLE                         R7 K8 [{["Count"] = 1, ["Complete"], ["EasingStyle"], ["InterpolationMode"]}]
       69 GETUPVAL                         R9 3
       70 JUMPIFEQKN                       R9 K3 [1] ; [+2]
       72 LOADB                            R8 0 +1
       73 LOADB                            R8 1
       74 SETTABLEKS                       R8 R7 K5 ["Complete"]
       76 GETTABLEKS                       R8 R5 K6 ["EasingStyle"]
       78 SETTABLEKS                       R8 R7 K6 ["EasingStyle"]
       80 GETTABLEKS                       R8 R5 K7 ["InterpolationMode"]
       82 SETTABLEKS                       R8 R7 K7 ["InterpolationMode"]
       84 SETTABLE                         R7 R6 R4
       85 FORGLOOP                         R1 2 ; [-77]
       87 RETURN                           R0 0

PROTO_45:
        0 OR                               R2 R2 R1
        1 NEWTABLE                         R3 0 0
        3 LOADN                            R4 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K0 ["traverseTracks"]
        7 LOADNIL                          R6
        8 MOVE                             R7 R0
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          REF R4
       11 LOADB                            R9 1
       12 CALL                             R5 4 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["traverseTracks"]
       16 LOADNIL                          R6
       17 MOVE                             R7 R0
       18 NEWCLOSURE                       R8 P1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          REF R2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          REF R4
       23 LOADB                            R9 1
       24 CALL                             R5 4 0
       25 CLOSEUPVALS                      R2
       26 RETURN                           R3 1

PROTO_46:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 LOADNIL                          R2
        5 GETIMPORT                        R3 K1 [ipairs]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 3
        9 FORGPREP_INEXT                   R3
       10 GETTABLEKS                       R8 R7 K2 ["Name"]
       12 GETTABLEN                        R9 R1 1
       13 JUMPIFNOTEQ                      R8 R9 ; [+3]
       15 MOVE                             R2 R7
       16 JUMP                             ; [+2]
       17 FORGLOOP                         R3 2 [inext] ; [-8]
       19 JUMPIF                           R2 ; [+2]
       20 LOADNIL                          R3
       21 RETURN                           R3 1
       22 GETIMPORT                        R3 K1 [ipairs]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 3
       26 FORGPREP_INEXT                   R3
       27 LOADN                            R8 1
       28 JUMPIFNOTLT                      R8 R6 ; [+7]
       30 GETTABLEKS                       R8 R2 K3 ["Components"]
       32 GETTABLE                         R2 R8 R7
       33 JUMPIF                           R2 ; [+2]
       34 LOADNIL                          R8
       35 RETURN                           R8 1
       36 FORGLOOP                         R3 2 [inext] ; [-10]
       38 RETURN                           R2 1

PROTO_47:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["COMPONENT_TRACK_TYPES"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+33]
        5 GETIMPORT                        R3 K2 [ipairs]
        7 GETTABLEKS                       R4 R2 K3 ["_Order"]
        9 CALL                             R3 1 3
       10 FORGPREP_INEXT                   R3
       11 GETTABLE                         R8 R2 R7
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K4 ["PROPERTY_KEYS"]
       15 GETTABLEKS                       R9 R9 K5 ["Rotation"]
       17 JUMPIFNOTEQ                      R7 R9 ; [+2]
       19 GETUPVAL                         R8 1
       20 GETUPVAL                         R9 2
       21 MOVE                             R10 R8
       22 GETUPVAL                         R11 3
       23 GETTABLEKS                       R11 R11 K6 ["List"]
       25 GETTABLEKS                       R11 R11 K7 ["join"]
       27 MOVE                             R12 R1
       28 NEWTABLE                         R13 0 1
       30 MOVE                             R14 R7
       31 SETLIST                          R13 R14 1 [1]
       33 CALL                             R11 2 -1
       34 CALL                             R9 -1 0
       35 FORGLOOP                         R3 2 [inext] ; [-25]
       37 RETURN                           R0 0
       38 GETUPVAL                         R3 4
       39 MOVE                             R4 R0
       40 MOVE                             R5 R1
       41 CALL                             R3 2 0
       42 RETURN                           R0 0

PROTO_48:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R3
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 MOVE                             R4 R3
        7 MOVE                             R5 R0
        8 NEWTABLE                         R6 0 0
       10 CALL                             R4 2 0
       11 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["TRACK_TYPES"]
        3 GETTABLEKS                       R3 R3 K1 ["CFrame"]
        5 JUMPIFNOTEQ                      R0 R3 ; [+66]
        7 GETTABLEKS                       R3 R2 K2 ["Position"]
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["TRACK_TYPES"]
       13 GETTABLEKS                       R5 R5 K2 ["Position"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K3 ["List"]
       18 GETTABLEKS                       R6 R6 K4 ["join"]
       20 MOVE                             R7 R1
       21 NEWTABLE                         R8 0 1
       23 GETUPVAL                         R9 0
       24 GETTABLEKS                       R9 R9 K5 ["PROPERTY_KEYS"]
       26 GETTABLEKS                       R9 R9 K2 ["Position"]
       28 SETLIST                          R8 R9 1 [1]
       30 CALL                             R6 2 1
       31 MOVE                             R7 R3
       32 CALL                             R4 3 0
       33 GETUPVAL                         R5 3
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K0 ["TRACK_TYPES"]
       37 GETTABLEKS                       R6 R6 K6 ["Quaternion"]
       39 JUMPIFNOTEQ                      R5 R6 ; [+3]
       41 SUB                              R4 R2 R3
       42 JUMP                             ; [+8]
       43 GETUPVAL                         R7 4
       44 NAMECALL                         R5 R2 K7 ["ToEulerAngles"]
       46 CALL                             R5 2 -1
       47 FASTCALL                         VECTOR ; [+2]
       48 GETIMPORT                        R4 K10 [Vector3.new]
       50 CALL                             R4 -1 1
       51 GETUPVAL                         R5 1
       52 GETUPVAL                         R6 3
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R7 R7 K3 ["List"]
       56 GETTABLEKS                       R7 R7 K4 ["join"]
       58 MOVE                             R8 R1
       59 NEWTABLE                         R9 0 1
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K5 ["PROPERTY_KEYS"]
       64 GETTABLEKS                       R10 R10 K11 ["Rotation"]
       66 SETLIST                          R9 R10 1 [1]
       68 CALL                             R7 2 1
       69 MOVE                             R8 R4
       70 CALL                             R5 3 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K0 ["TRACK_TYPES"]
       75 GETTABLEKS                       R3 R3 K2 ["Position"]
       77 JUMPIFNOTEQ                      R0 R3 ; [+77]
       79 GETUPVAL                         R3 1
       80 GETUPVAL                         R4 0
       81 GETTABLEKS                       R4 R4 K0 ["TRACK_TYPES"]
       83 GETTABLEKS                       R4 R4 K12 ["Number"]
       85 GETUPVAL                         R5 2
       86 GETTABLEKS                       R5 R5 K3 ["List"]
       88 GETTABLEKS                       R5 R5 K4 ["join"]
       90 MOVE                             R6 R1
       91 NEWTABLE                         R7 0 1
       93 GETUPVAL                         R8 0
       94 GETTABLEKS                       R8 R8 K5 ["PROPERTY_KEYS"]
       96 GETTABLEKS                       R8 R8 K13 ["X"]
       98 SETLIST                          R7 R8 1 [1]
      100 CALL                             R5 2 1
      101 GETTABLEKS                       R6 R2 K13 ["X"]
      103 CALL                             R3 3 0
      104 GETUPVAL                         R3 1
      105 GETUPVAL                         R4 0
      106 GETTABLEKS                       R4 R4 K0 ["TRACK_TYPES"]
      108 GETTABLEKS                       R4 R4 K12 ["Number"]
      110 GETUPVAL                         R5 2
      111 GETTABLEKS                       R5 R5 K3 ["List"]
      113 GETTABLEKS                       R5 R5 K4 ["join"]
      115 MOVE                             R6 R1
      116 NEWTABLE                         R7 0 1
      118 GETUPVAL                         R8 0
      119 GETTABLEKS                       R8 R8 K5 ["PROPERTY_KEYS"]
      121 GETTABLEKS                       R8 R8 K14 ["Y"]
      123 SETLIST                          R7 R8 1 [1]
      125 CALL                             R5 2 1
      126 GETTABLEKS                       R6 R2 K14 ["Y"]
      128 CALL                             R3 3 0
      129 GETUPVAL                         R3 1
      130 GETUPVAL                         R4 0
      131 GETTABLEKS                       R4 R4 K0 ["TRACK_TYPES"]
      133 GETTABLEKS                       R4 R4 K12 ["Number"]
      135 GETUPVAL                         R5 2
      136 GETTABLEKS                       R5 R5 K3 ["List"]
      138 GETTABLEKS                       R5 R5 K4 ["join"]
      140 MOVE                             R6 R1
      141 NEWTABLE                         R7 0 1
      143 GETUPVAL                         R8 0
      144 GETTABLEKS                       R8 R8 K5 ["PROPERTY_KEYS"]
      146 GETTABLEKS                       R8 R8 K15 ["Z"]
      148 SETLIST                          R7 R8 1 [1]
      150 CALL                             R5 2 1
      151 GETTABLEKS                       R6 R2 K15 ["Z"]
      153 CALL                             R3 3 0
      154 RETURN                           R0 0
      155 GETUPVAL                         R3 0
      156 GETTABLEKS                       R3 R3 K0 ["TRACK_TYPES"]
      158 GETTABLEKS                       R3 R3 K16 ["EulerAngles"]
      160 JUMPIFNOTEQ                      R0 R3 ; [+77]
      162 GETUPVAL                         R3 1
      163 GETUPVAL                         R4 0
      164 GETTABLEKS                       R4 R4 K0 ["TRACK_TYPES"]
      166 GETTABLEKS                       R4 R4 K17 ["Angle"]
      168 GETUPVAL                         R5 2
      169 GETTABLEKS                       R5 R5 K3 ["List"]
      171 GETTABLEKS                       R5 R5 K4 ["join"]
      173 MOVE                             R6 R1
      174 NEWTABLE                         R7 0 1
      176 GETUPVAL                         R8 0
      177 GETTABLEKS                       R8 R8 K5 ["PROPERTY_KEYS"]
      179 GETTABLEKS                       R8 R8 K13 ["X"]
      181 SETLIST                          R7 R8 1 [1]
      183 CALL                             R5 2 1
      184 GETTABLEKS                       R6 R2 K13 ["X"]
      186 CALL                             R3 3 0
      187 GETUPVAL                         R3 1
      188 GETUPVAL                         R4 0
      189 GETTABLEKS                       R4 R4 K0 ["TRACK_TYPES"]
      191 GETTABLEKS                       R4 R4 K17 ["Angle"]
      193 GETUPVAL                         R5 2
      194 GETTABLEKS                       R5 R5 K3 ["List"]
      196 GETTABLEKS                       R5 R5 K4 ["join"]
      198 MOVE                             R6 R1
      199 NEWTABLE                         R7 0 1
      201 GETUPVAL                         R8 0
      202 GETTABLEKS                       R8 R8 K5 ["PROPERTY_KEYS"]
      204 GETTABLEKS                       R8 R8 K14 ["Y"]
      206 SETLIST                          R7 R8 1 [1]
      208 CALL                             R5 2 1
      209 GETTABLEKS                       R6 R2 K14 ["Y"]
      211 CALL                             R3 3 0
      212 GETUPVAL                         R3 1
      213 GETUPVAL                         R4 0
      214 GETTABLEKS                       R4 R4 K0 ["TRACK_TYPES"]
      216 GETTABLEKS                       R4 R4 K17 ["Angle"]
      218 GETUPVAL                         R5 2
      219 GETTABLEKS                       R5 R5 K3 ["List"]
      221 GETTABLEKS                       R5 R5 K4 ["join"]
      223 MOVE                             R6 R1
      224 NEWTABLE                         R7 0 1
      226 GETUPVAL                         R8 0
      227 GETTABLEKS                       R8 R8 K5 ["PROPERTY_KEYS"]
      229 GETTABLEKS                       R8 R8 K15 ["Z"]
      231 SETLIST                          R7 R8 1 [1]
      233 CALL                             R5 2 1
      234 GETTABLEKS                       R6 R2 K15 ["Z"]
      236 CALL                             R3 3 0
      237 RETURN                           R0 0
      238 GETUPVAL                         R3 5
      239 MOVE                             R4 R0
      240 MOVE                             R5 R1
      241 MOVE                             R6 R2
      242 CALL                             R3 3 0
      243 RETURN                           R0 0

PROTO_50:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R5
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R3
        5 CAPTURE                          VAL R4
        6 CAPTURE                          VAL R2
        7 MOVE                             R6 R5
        8 MOVE                             R7 R0
        9 NEWTABLE                         R8 0 0
       11 MOVE                             R9 R1
       12 CALL                             R6 3 0
       13 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["findNearestKeyframesProperly"]
        3 GETTABLEKS                       R4 R0 K1 ["Keyframes"]
        5 MOVE                             R5 R1
        6 CALL                             R3 2 3
        7 JUMPIFNOT                        R2 ; [+1]
        8 OR                               R4 R4 R3
        9 JUMPIFNOT                        R4 ; [+4]
       10 GETTABLEKS                       R7 R0 K1 ["Keyframes"]
       12 GETTABLE                         R6 R7 R4
       13 JUMPIF                           R6 ; [+1]
       14 LOADNIL                          R6
       15 JUMPIFNOT                        R6 ; [+4]
       16 GETTABLEKS                       R8 R0 K2 ["Data"]
       18 GETTABLE                         R7 R8 R6
       19 JUMPIF                           R7 ; [+1]
       20 LOADNIL                          R7
       21 RETURN                           R7 1

PROTO_52:
        0 GETTABLEKS                       R1 R0 K0 ["Z"]
        2 GETTABLEKS                       R2 R0 K1 ["Y"]
        4 GETTABLEKS                       R3 R0 K2 ["X"]
        6 RETURN                           R1 3

PROTO_53:
        0 GETTABLEKS                       R1 R0 K0 ["Y"]
        2 GETTABLEKS                       R2 R0 K1 ["Z"]
        4 GETTABLEKS                       R3 R0 K2 ["X"]
        6 RETURN                           R1 3

PROTO_54:
        0 GETTABLEKS                       R1 R0 K0 ["Z"]
        2 GETTABLEKS                       R2 R0 K1 ["X"]
        4 GETTABLEKS                       R3 R0 K2 ["Y"]
        6 RETURN                           R1 3

PROTO_55:
        0 GETTABLEKS                       R1 R0 K0 ["X"]
        2 GETTABLEKS                       R2 R0 K1 ["Z"]
        4 GETTABLEKS                       R3 R0 K2 ["Y"]
        6 RETURN                           R1 3

PROTO_56:
        0 GETTABLEKS                       R1 R0 K0 ["Y"]
        2 GETTABLEKS                       R2 R0 K1 ["X"]
        4 GETTABLEKS                       R3 R0 K2 ["Z"]
        6 RETURN                           R1 3

PROTO_57:
        0 GETTABLEKS                       R1 R0 K0 ["X"]
        2 GETTABLEKS                       R2 R0 K1 ["Y"]
        4 GETTABLEKS                       R3 R0 K2 ["Z"]
        6 RETURN                           R1 3

PROTO_58:
        0 FASTCALL3                        VECTOR R2 R1 R0
        2 MOVE                             R4 R2
        3 MOVE                             R5 R1
        4 MOVE                             R6 R0
        5 GETIMPORT                        R3 K2 [Vector3.new]
        7 CALL                             R3 3 1
        8 RETURN                           R3 1

PROTO_59:
        0 FASTCALL3                        VECTOR R2 R0 R1
        2 MOVE                             R4 R2
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 GETIMPORT                        R3 K2 [Vector3.new]
        7 CALL                             R3 3 1
        8 RETURN                           R3 1

PROTO_60:
        0 FASTCALL3                        VECTOR R1 R2 R0
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 MOVE                             R6 R0
        5 GETIMPORT                        R3 K2 [Vector3.new]
        7 CALL                             R3 3 1
        8 RETURN                           R3 1

PROTO_61:
        0 FASTCALL3                        VECTOR R0 R2 R1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R2
        4 MOVE                             R6 R1
        5 GETIMPORT                        R3 K2 [Vector3.new]
        7 CALL                             R3 3 1
        8 RETURN                           R3 1

PROTO_62:
        0 FASTCALL3                        VECTOR R1 R0 R2
        2 MOVE                             R4 R1
        3 MOVE                             R5 R0
        4 MOVE                             R6 R2
        5 GETIMPORT                        R3 K2 [Vector3.new]
        7 CALL                             R3 3 1
        8 RETURN                           R3 1

PROTO_63:
        0 FASTCALL3                        VECTOR R0 R1 R2
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 GETIMPORT                        R3 K2 [Vector3.new]
        7 CALL                             R3 3 1
        8 RETURN                           R3 1

PROTO_64:
        0 SUB                              R5 R0 R1
        1 DIVK                             R4 R5 K1 [6.28318530717959]
        2 ADDK                             R3 R4 K0 [0.5]
        3 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        4 GETIMPORT                        R2 K4 [math.floor]
        6 CALL                             R2 1 1
        7 MULK                             R5 R2 K6 [3.14159265358979]
        8 MULK                             R4 R5 K5 [2]
        9 ADD                              R3 R1 R4
       10 RETURN                           R3 1

PROTO_65:
        0 GETUPVAL                         R5 0
        1 NAMECALL                         R3 R1 K0 ["ToEulerAngles"]
        3 CALL                             R3 2 -1
        4 FASTCALL                         VECTOR ; [+2]
        5 GETIMPORT                        R2 K3 [Vector3.new]
        7 CALL                             R2 -1 1
        8 JUMPIF                           R0 ; [+1]
        9 RETURN                           R2 1
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R5 0
       12 GETTABLE                         R3 R4 R5
       13 MOVE                             R4 R2
       14 CALL                             R3 1 3
       15 GETUPVAL                         R7 1
       16 GETUPVAL                         R8 0
       17 GETTABLE                         R6 R7 R8
       18 MOVE                             R7 R0
       19 CALL                             R6 1 3
       20 ADDK                             R9 R3 K4 [3.14159265358979]
       21 SUBRK                            R10 K4 [3.14159265358979] R4
       22 ADDK                             R11 R5 K4 [3.14159265358979]
       23 DUPCLOSURE                       R12 K5 [PROTO_64]
       24 MOVE                             R13 R3
       25 SUB                              R17 R6 R13
       26 DIVK                             R16 R17 K7 [6.28318530717959]
       27 ADDK                             R15 R16 K6 [0.5]
       28 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       29 GETIMPORT                        R14 K10 [math.floor]
       31 CALL                             R14 1 1
       32 MULK                             R16 R14 K4 [3.14159265358979]
       33 MULK                             R15 R16 K11 [2]
       34 ADD                              R3 R13 R15
       35 MOVE                             R13 R9
       36 SUB                              R17 R6 R13
       37 DIVK                             R16 R17 K7 [6.28318530717959]
       38 ADDK                             R15 R16 K6 [0.5]
       39 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       40 GETIMPORT                        R14 K10 [math.floor]
       42 CALL                             R14 1 1
       43 MULK                             R16 R14 K4 [3.14159265358979]
       44 MULK                             R15 R16 K11 [2]
       45 ADD                              R9 R13 R15
       46 MOVE                             R13 R4
       47 SUB                              R17 R7 R13
       48 DIVK                             R16 R17 K7 [6.28318530717959]
       49 ADDK                             R15 R16 K6 [0.5]
       50 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       51 GETIMPORT                        R14 K10 [math.floor]
       53 CALL                             R14 1 1
       54 MULK                             R16 R14 K4 [3.14159265358979]
       55 MULK                             R15 R16 K11 [2]
       56 ADD                              R4 R13 R15
       57 MOVE                             R13 R10
       58 SUB                              R17 R7 R13
       59 DIVK                             R16 R17 K7 [6.28318530717959]
       60 ADDK                             R15 R16 K6 [0.5]
       61 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       62 GETIMPORT                        R14 K10 [math.floor]
       64 CALL                             R14 1 1
       65 MULK                             R16 R14 K4 [3.14159265358979]
       66 MULK                             R15 R16 K11 [2]
       67 ADD                              R10 R13 R15
       68 MOVE                             R13 R5
       69 SUB                              R17 R8 R13
       70 DIVK                             R16 R17 K7 [6.28318530717959]
       71 ADDK                             R15 R16 K6 [0.5]
       72 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       73 GETIMPORT                        R14 K10 [math.floor]
       75 CALL                             R14 1 1
       76 MULK                             R16 R14 K4 [3.14159265358979]
       77 MULK                             R15 R16 K11 [2]
       78 ADD                              R5 R13 R15
       79 MOVE                             R13 R11
       80 SUB                              R17 R8 R13
       81 DIVK                             R16 R17 K7 [6.28318530717959]
       82 ADDK                             R15 R16 K6 [0.5]
       83 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       84 GETIMPORT                        R14 K10 [math.floor]
       86 CALL                             R14 1 1
       87 MULK                             R16 R14 K4 [3.14159265358979]
       88 MULK                             R15 R16 K11 [2]
       89 ADD                              R11 R13 R15
       90 SUB                              R16 R6 R3
       91 SUB                              R17 R6 R3
       92 MUL                              R15 R16 R17
       93 SUB                              R17 R7 R4
       94 SUB                              R18 R7 R4
       95 MUL                              R16 R17 R18
       96 ADD                              R14 R15 R16
       97 SUB                              R16 R8 R5
       98 SUB                              R17 R8 R5
       99 MUL                              R15 R16 R17
      100 ADD                              R13 R14 R15
      101 SUB                              R17 R6 R9
      102 SUB                              R18 R6 R9
      103 MUL                              R16 R17 R18
      104 SUB                              R18 R7 R10
      105 SUB                              R19 R7 R10
      106 MUL                              R17 R18 R19
      107 ADD                              R15 R16 R17
      108 SUB                              R17 R8 R11
      109 SUB                              R18 R8 R11
      110 MUL                              R16 R17 R18
      111 ADD                              R14 R15 R16
      112 JUMPIFNOTLE                      R13 R14 ; [+9]
      114 GETUPVAL                         R16 2
      115 GETUPVAL                         R17 0
      116 GETTABLE                         R15 R16 R17
      117 MOVE                             R16 R3
      118 MOVE                             R17 R4
      119 MOVE                             R18 R5
      120 CALL                             R15 3 -1
      121 RETURN                           R15 -1
      122 GETUPVAL                         R16 2
      123 GETUPVAL                         R17 0
      124 GETTABLE                         R15 R16 R17
      125 MOVE                             R16 R9
      126 MOVE                             R17 R10
      127 MOVE                             R18 R11
      128 CALL                             R15 3 -1
      129 RETURN                           R15 -1

PROTO_66:
        0 NEWTABLE                         R2 8 0
        2 GETIMPORT                        R3 K3 [Enum.RotationOrder.XYZ]
        4 DUPCLOSURE                       R4 K4 [PROTO_52]
        5 SETTABLE                         R4 R2 R3
        6 GETIMPORT                        R3 K6 [Enum.RotationOrder.XZY]
        8 DUPCLOSURE                       R4 K7 [PROTO_53]
        9 SETTABLE                         R4 R2 R3
       10 GETIMPORT                        R3 K9 [Enum.RotationOrder.YXZ]
       12 DUPCLOSURE                       R4 K10 [PROTO_54]
       13 SETTABLE                         R4 R2 R3
       14 GETIMPORT                        R3 K12 [Enum.RotationOrder.YZX]
       16 DUPCLOSURE                       R4 K13 [PROTO_55]
       17 SETTABLE                         R4 R2 R3
       18 GETIMPORT                        R3 K15 [Enum.RotationOrder.ZXY]
       20 DUPCLOSURE                       R4 K16 [PROTO_56]
       21 SETTABLE                         R4 R2 R3
       22 GETIMPORT                        R3 K18 [Enum.RotationOrder.ZYX]
       24 DUPCLOSURE                       R4 K19 [PROTO_57]
       25 SETTABLE                         R4 R2 R3
       26 NEWTABLE                         R3 8 0
       28 GETIMPORT                        R4 K3 [Enum.RotationOrder.XYZ]
       30 DUPCLOSURE                       R5 K20 [PROTO_58]
       31 SETTABLE                         R5 R3 R4
       32 GETIMPORT                        R4 K6 [Enum.RotationOrder.XZY]
       34 DUPCLOSURE                       R5 K21 [PROTO_59]
       35 SETTABLE                         R5 R3 R4
       36 GETIMPORT                        R4 K9 [Enum.RotationOrder.YXZ]
       38 DUPCLOSURE                       R5 K22 [PROTO_60]
       39 SETTABLE                         R5 R3 R4
       40 GETIMPORT                        R4 K12 [Enum.RotationOrder.YZX]
       42 DUPCLOSURE                       R5 K23 [PROTO_61]
       43 SETTABLE                         R5 R3 R4
       44 GETIMPORT                        R4 K15 [Enum.RotationOrder.ZXY]
       46 DUPCLOSURE                       R5 K24 [PROTO_62]
       47 SETTABLE                         R5 R3 R4
       48 GETIMPORT                        R4 K18 [Enum.RotationOrder.ZYX]
       50 DUPCLOSURE                       R5 K25 [PROTO_63]
       51 SETTABLE                         R5 R3 R4
       52 NEWCLOSURE                       R4 P12
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K26 ["COMPONENT_TRACK_TYPES"]
       59 GETUPVAL                         R7 0
       60 GETTABLEKS                       R7 R7 K27 ["TRACK_TYPES"]
       62 GETTABLEKS                       R7 R7 K28 ["EulerAngles"]
       64 GETTABLE                         R5 R6 R7
       65 GETTABLEKS                       R5 R5 K29 ["_Order"]
       67 NEWTABLE                         R6 0 0
       69 SETTABLEKS                       R6 R0 K30 ["Components"]
       71 GETTABLEKS                       R7 R0 K30 ["Components"]
       73 FASTCALL1                        ASSERT R7 ; [+2]
       74 GETIMPORT                        R6 K32 [assert]
       76 CALL                             R6 1 0
       77 SETTABLEKS                       R1 R0 K33 ["EulerAnglesOrder"]
       79 GETIMPORT                        R6 K35 [ipairs]
       81 MOVE                             R7 R5
       82 CALL                             R6 1 3
       83 FORGPREP_INEXT                   R6
       84 GETUPVAL                         R13 0
       85 GETTABLEKS                       R13 R13 K26 ["COMPONENT_TRACK_TYPES"]
       87 GETUPVAL                         R14 0
       88 GETTABLEKS                       R14 R14 K27 ["TRACK_TYPES"]
       90 GETTABLEKS                       R14 R14 K28 ["EulerAngles"]
       92 GETTABLE                         R12 R13 R14
       93 GETTABLE                         R11 R12 R10
       94 GETUPVAL                         R12 1
       95 GETTABLEKS                       R12 R12 K36 ["track"]
       97 MOVE                             R13 R11
       98 CALL                             R12 1 1
       99 GETUPVAL                         R13 2
      100 GETTABLEKS                       R13 R13 K37 ["List"]
      102 GETTABLEKS                       R13 R13 K38 ["join"]
      104 GETTABLEKS                       R14 R0 K39 ["Keyframes"]
      106 CALL                             R13 1 1
      107 SETTABLEKS                       R13 R12 K39 ["Keyframes"]
      109 NEWTABLE                         R13 0 0
      111 SETTABLEKS                       R13 R12 K40 ["Data"]
      113 LOADB                            R13 1
      114 SETTABLEKS                       R13 R12 K41 ["IsCurveTrack"]
      116 GETTABLEKS                       R13 R0 K30 ["Components"]
      118 SETTABLE                         R12 R13 R10
      119 FORGLOOP                         R6 2 [inext] ; [-36]
      121 LOADNIL                          R6
      122 GETTABLEKS                       R7 R0 K39 ["Keyframes"]
      124 JUMPIFNOT                        R7 ; [+119]
      125 GETTABLEKS                       R7 R0 K40 ["Data"]
      127 JUMPIFNOT                        R7 ; [+116]
      128 GETIMPORT                        R7 K35 [ipairs]
      130 GETTABLEKS                       R8 R0 K39 ["Keyframes"]
      132 CALL                             R7 1 3
      133 FORGPREP_INEXT                   R7
      134 GETTABLEKS                       R13 R0 K40 ["Data"]
      136 GETTABLE                         R12 R13 R11
      137 JUMPIFNOT                        R12 ; [+30]
      138 MOVE                             R13 R4
      139 MOVE                             R14 R6
      140 GETTABLEKS                       R15 R12 K42 ["Value"]
      142 CALL                             R13 2 1
      143 MOVE                             R6 R13
      144 GETIMPORT                        R13 K35 [ipairs]
      146 MOVE                             R14 R5
      147 CALL                             R13 1 3
      148 FORGPREP_INEXT                   R13
      149 GETUPVAL                         R18 1
      150 GETTABLEKS                       R18 R18 K43 ["keyframe"]
      152 CALL                             R18 0 1
      153 GETTABLE                         R19 R6 R17
      154 SETTABLEKS                       R19 R18 K42 ["Value"]
      156 GETTABLEKS                       R19 R12 K44 ["InterpolationMode"]
      158 SETTABLEKS                       R19 R18 K44 ["InterpolationMode"]
      160 GETTABLEKS                       R20 R0 K30 ["Components"]
      162 GETTABLE                         R19 R20 R17
      163 GETTABLEKS                       R19 R19 K40 ["Data"]
      165 SETTABLE                         R18 R19 R11
      166 FORGLOOP                         R13 2 [inext] ; [-18]
      168 FORGLOOP                         R7 2 [inext] ; [-35]
      170 GETIMPORT                        R7 K35 [ipairs]
      172 MOVE                             R8 R5
      173 CALL                             R7 1 3
      174 FORGPREP_INEXT                   R7
      175 GETTABLEKS                       R13 R0 K30 ["Components"]
      177 GETTABLE                         R12 R13 R11
      178 GETIMPORT                        R13 K35 [ipairs]
      180 GETTABLEKS                       R14 R0 K39 ["Keyframes"]
      182 CALL                             R13 1 3
      183 FORGPREP_INEXT                   R13
      184 GETTABLEKS                       R19 R0 K39 ["Keyframes"]
      186 SUBK                             R20 R16 K45 [1]
      187 GETTABLE                         R18 R19 R20
      188 GETTABLEKS                       R20 R0 K39 ["Keyframes"]
      190 ADDK                             R21 R16 K45 [1]
      191 GETTABLE                         R19 R20 R21
      192 GETTABLEKS                       R21 R0 K40 ["Data"]
      194 GETTABLE                         R20 R21 R17
      195 GETTABLEKS                       R22 R12 K40 ["Data"]
      197 GETTABLE                         R21 R22 R17
      198 GETTABLEKS                       R22 R20 K46 ["LeftSlope"]
      200 JUMPIFEQKNIL                     R22 ; [+15]
      202 JUMPIFNOT                        R18 ; [+13]
      203 GETTABLEKS                       R23 R12 K40 ["Data"]
      205 GETTABLE                         R22 R23 R18
      206 GETTABLEKS                       R22 R22 K42 ["Value"]
      208 GETTABLE                         R24 R6 R11
      209 SUB                              R23 R24 R22
      210 GETTABLEKS                       R25 R20 K46 ["LeftSlope"]
      212 MUL                              R24 R25 R23
      213 SETTABLEKS                       R24 R21 K46 ["LeftSlope"]
      215 JUMP                             ; [+3]
      216 LOADNIL                          R22
      217 SETTABLEKS                       R22 R21 K46 ["LeftSlope"]
      219 GETTABLEKS                       R22 R20 K47 ["RightSlope"]
      221 JUMPIFEQKNIL                     R22 ; [+15]
      223 JUMPIFNOT                        R19 ; [+13]
      224 GETTABLEKS                       R23 R12 K40 ["Data"]
      226 GETTABLE                         R22 R23 R19
      227 GETTABLEKS                       R22 R22 K42 ["Value"]
      229 GETTABLE                         R24 R6 R11
      230 SUB                              R23 R22 R24
      231 GETTABLEKS                       R25 R20 K47 ["RightSlope"]
      233 MUL                              R24 R25 R23
      234 SETTABLEKS                       R24 R21 K47 ["RightSlope"]
      236 JUMP                             ; [+3]
      237 LOADNIL                          R22
      238 SETTABLEKS                       R22 R21 K47 ["RightSlope"]
      240 FORGLOOP                         R13 2 [inext] ; [-57]
      242 FORGLOOP                         R7 2 [inext] ; [-68]
      244 LOADNIL                          R7
      245 SETTABLEKS                       R7 R0 K39 ["Keyframes"]
      247 LOADNIL                          R7
      248 SETTABLEKS                       R7 R0 K40 ["Data"]
      250 GETUPVAL                         R7 0
      251 GETTABLEKS                       R7 R7 K27 ["TRACK_TYPES"]
      253 GETTABLEKS                       R7 R7 K28 ["EulerAngles"]
      255 SETTABLEKS                       R7 R0 K48 ["Type"]
      257 RETURN                           R0 0

PROTO_67:
        0 GETTABLEKS                       R1 R0 K0 ["Keyframes"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R3 R0 K0 ["Keyframes"]
        6 LENGTH                           R2 R3
        7 ADD                              R1 R1 R2
        8 SETUPVAL                         R1 0
        9 RETURN                           R0 0

PROTO_68:
        0 LOADN                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["traverseTracks"]
        4 LOADNIL                          R3
        5 MOVE                             R4 R0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          REF R1
        8 LOADB                            R6 1
        9 CALL                             R2 4 0
       10 CLOSEUPVALS                      R1
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["KeyframeUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["PathUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["Constants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["CurveUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K9 ["Util"]
       56 GETTABLEKS                       R7 R7 K14 ["isEmpty"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K9 ["Util"]
       65 GETTABLEKS                       R8 R8 K15 ["Templates"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Src"]
       72 GETTABLEKS                       R9 R9 K16 ["Types"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K17 ["LuaFlags"]
       79 GETTABLEKS                       R10 R10 K18 ["GetFFlagFixDynamicTrackSelection"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K17 ["LuaFlags"]
       86 GETTABLEKS                       R11 R11 K19 ["GetFFlagControlRig"]
       88 CALL                             R10 1 1
       89 NEWTABLE                         R11 64 0
       91 DUPCLOSURE                       R12 K20 [PROTO_0]
       92 DUPCLOSURE                       R13 K21 [PROTO_2]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R6
       95 SETTABLEKS                       R13 R11 K22 ["traverseTracks"]
       97 DUPCLOSURE                       R13 K23 [PROTO_3]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R1
      100 SETTABLEKS                       R13 R11 K24 ["getSortedComponents"]
      102 DUPCLOSURE                       R13 K25 [PROTO_4]
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R2
      105 SETTABLEKS                       R13 R11 K26 ["traverseKeyframeRange"]
      107 DUPCLOSURE                       R13 K27 [PROTO_6]
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R2
      110 SETTABLEKS                       R13 R11 K28 ["getNextKeyframe"]
      112 DUPCLOSURE                       R13 K29 [PROTO_8]
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R2
      115 SETTABLEKS                       R13 R11 K30 ["getPreviousKeyframe"]
      117 DUPCLOSURE                       R13 K31 [PROTO_11]
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R13 R11 K32 ["getSummaryKeyframes"]
      123 DUPCLOSURE                       R13 K33 [PROTO_12]
      124 SETTABLEKS                       R13 R11 K34 ["getScaledKeyframePosition"]
      126 DUPCLOSURE                       R13 K35 [PROTO_13]
      127 CAPTURE                          VAL R2
      128 SETTABLEKS                       R13 R11 K36 ["getKeyframeFromPosition"]
      130 DUPCLOSURE                       R13 K37 [PROTO_14]
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R2
      133 SETTABLEKS                       R13 R11 K38 ["countVisibleKeyframes"]
      135 DUPCLOSURE                       R13 K39 [PROTO_15]
      136 CAPTURE                          VAL R2
      137 SETTABLEKS                       R13 R11 K40 ["getKeyframesExtents"]
      139 DUPCLOSURE                       R13 K41 [PROTO_17]
      140 CAPTURE                          VAL R4
      141 SETTABLEKS                       R13 R11 K42 ["getExpandedSize"]
      143 DUPCLOSURE                       R13 K43 [PROTO_18]
      144 CAPTURE                          VAL R2
      145 SETTABLEKS                       R13 R11 K44 ["getDefaultValue"]
      147 DUPCLOSURE                       R13 K45 [PROTO_19]
      148 SETTABLEKS                       R13 R11 K46 ["getTrackTypeFromName"]
      150 DUPCLOSURE                       R13 K47 [PROTO_20]
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R3
      154 SETTABLEKS                       R13 R11 K48 ["getComponentTypeFromPath"]
      156 DUPCLOSURE                       R13 K49 [PROTO_21]
      157 CAPTURE                          VAL R3
      158 SETTABLEKS                       R13 R11 K50 ["getComponentFromPath"]
      160 DUPCLOSURE                       R13 K51 [PROTO_22]
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R11
      163 SETTABLEKS                       R13 R11 K52 ["getEulerAnglesOrder"]
      165 DUPCLOSURE                       R13 K53 [PROTO_23]
      166 CAPTURE                          VAL R4
      167 SETTABLEKS                       R13 R11 K54 ["getRotationType"]
      169 DUPCLOSURE                       R13 K55 [PROTO_24]
      170 CAPTURE                          VAL R11
      171 SETTABLEKS                       R13 R11 K56 ["getRotationTypeFromName"]
      173 MOVE                             R13 R9
      174 CALL                             R13 0 1
      175 JUMPIF                           R13 ; [+12]
      176 DUPCLOSURE                       R13 K57 [PROTO_25]
      177 CAPTURE                          VAL R4
      178 CAPTURE                          VAL R11
      179 SETTABLEKS                       R13 R11 K58 ["getTrackFromPosition"]
      181 DUPCLOSURE                       R13 K59 [PROTO_27]
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R10
      185 CAPTURE                          VAL R1
      186 SETTABLEKS                       R13 R11 K60 ["getTrackInfoFromPosition"]
      188 MOVE                             R13 R9
      189 CALL                             R13 0 1
      190 JUMPIFNOT                        R13 ; [+7]
      191 DUPCLOSURE                       R13 K61 [PROTO_29]
      192 CAPTURE                          VAL R4
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R1
      196 SETTABLEKS                       R13 R11 K60 ["getTrackInfoFromPosition"]
      198 DUPCLOSURE                       R13 K62 [PROTO_30]
      199 SETTABLEKS                       R13 R11 K63 ["getTrackIndex"]
      201 DUPCLOSURE                       R13 K64 [PROTO_31]
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R11
      204 SETTABLEKS                       R13 R11 K65 ["getTrackYPosition"]
      206 DUPCLOSURE                       R13 K66 [PROTO_32]
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R2
      209 SETTABLEKS                       R13 R11 K67 ["getCurrentValue"]
      211 DUPCLOSURE                       R13 K68 [PROTO_33]
      212 CAPTURE                          VAL R2
      213 SETTABLEKS                       R13 R11 K69 ["getCurrentValueForPath"]
      215 DUPCLOSURE                       R13 K70 [PROTO_35]
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R10
      218 SETTABLEKS                       R13 R11 K71 ["getItemsForProperty"]
      220 DUPCLOSURE                       R13 K72 [PROTO_36]
      221 CAPTURE                          VAL R4
      222 SETTABLEKS                       R13 R11 K73 ["getPropertyForItems"]
      224 DUPCLOSURE                       R13 K74 [PROTO_37]
      225 CAPTURE                          VAL R4
      226 SETTABLEKS                       R13 R11 K75 ["getZoomRange"]
      228 DUPCLOSURE                       R13 K76 [PROTO_38]
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R5
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R4
      233 SETTABLEKS                       R13 R11 K77 ["adjustCurves"]
      235 DUPCLOSURE                       R13 K78 [PROTO_41]
      236 CAPTURE                          VAL R4
      237 CAPTURE                          VAL R10
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R1
      240 CAPTURE                          VAL R11
      241 SETTABLEKS                       R13 R11 K79 ["splitTrackComponents"]
      243 DUPCLOSURE                       R13 K80 [PROTO_42]
      244 CAPTURE                          VAL R4
      245 CAPTURE                          VAL R7
      246 CAPTURE                          VAL R11
      247 SETTABLEKS                       R13 R11 K81 ["createTrackListEntryComponents"]
      249 DUPCLOSURE                       R13 K82 [PROTO_45]
      250 CAPTURE                          VAL R11
      251 SETTABLEKS                       R13 R11 K83 ["getComponentsInfo"]
      253 DUPCLOSURE                       R13 K84 [PROTO_46]
      254 SETTABLEKS                       R13 R11 K85 ["findTrackEntry"]
      256 DUPCLOSURE                       R13 K86 [PROTO_48]
      257 CAPTURE                          VAL R4
      258 CAPTURE                          VAL R1
      259 SETTABLEKS                       R13 R11 K87 ["traverseComponents"]
      261 DUPCLOSURE                       R13 K88 [PROTO_50]
      262 CAPTURE                          VAL R4
      263 CAPTURE                          VAL R1
      264 SETTABLEKS                       R13 R11 K89 ["traverseValue"]
      266 DUPCLOSURE                       R13 K90 [PROTO_51]
      267 CAPTURE                          VAL R2
      268 SETTABLEKS                       R13 R11 K91 ["findPreviousKeyframe"]
      270 DUPCLOSURE                       R13 K92 [PROTO_66]
      271 CAPTURE                          VAL R4
      272 CAPTURE                          VAL R7
      273 CAPTURE                          VAL R1
      274 SETTABLEKS                       R13 R11 K93 ["convertTrackToEulerAngles"]
      276 DUPCLOSURE                       R13 K94 [PROTO_68]
      277 CAPTURE                          VAL R11
      278 SETTABLEKS                       R13 R11 K95 ["countKeyframes"]
      280 RETURN                           R11 1
