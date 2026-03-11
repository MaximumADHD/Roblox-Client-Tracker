PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+59]
        4 GETTABLEKS                       R3 R1 K0 ["Position"]
        6 GETTABLEKS                       R2 R3 K1 ["Y"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K2 ["getAbsoluteY"]
       11 CALL                             R4 0 1
       12 SUB                              R3 R2 R4
       13 GETUPVAL                         R4 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K3 ["getClosestBox"]
       17 MOVE                             R6 R2
       18 CALL                             R5 1 1
       19 SETTABLEKS                       R5 R4 K4 ["draggingIndex"]
       21 GETUPVAL                         R4 1
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K5 ["getOffset"]
       25 MOVE                             R6 R2
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R7 R8 K4 ["draggingIndex"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K6 ["clickOffsetY"]
       32 GETUPVAL                         R4 1
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R5 R6 K4 ["draggingIndex"]
       36 SETTABLEKS                       R5 R4 K7 ["blankIndex"]
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K4 ["draggingIndex"]
       41 LOADN                            R5 0
       42 JUMPIFNOTLT                      R5 R4 ; [+20]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R4 R5 K4 ["draggingIndex"]
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R6 R7 K8 ["tileList"]
       50 LENGTH                           R5 R6
       51 JUMPIFNOTLE                      R4 R5 ; [+11]
       53 GETUPVAL                         R4 1
       54 DUPTABLE                         R6 K11 [{"isDragging", "dragPositionY"}]
       55 LOADB                            R7 1
       56 SETTABLEKS                       R7 R6 K9 ["isDragging"]
       58 SETTABLEKS                       R3 R6 K10 ["dragPositionY"]
       60 NAMECALL                         R4 R4 K12 ["setState"]
       62 CALL                             R4 2 0
       63 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+48]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["draggingIndex"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["blankIndex"]
       10 JUMPIFEQ                         R2 R3 ; [+33]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K2 ["onOrderChanged"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K0 ["draggingIndex"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R4 R5 K1 ["blankIndex"]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K3 ["props"]
       25 GETTABLEKS                       R2 R3 K4 ["OnOrderChanged"]
       27 JUMPIFNOT                        R2 ; [+12]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K3 ["props"]
       31 GETTABLEKS                       R2 R3 K4 ["OnOrderChanged"]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R3 R4 K0 ["draggingIndex"]
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R4 R5 K1 ["blankIndex"]
       39 CALL                             R2 2 0
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K5 ["destroyMotors"]
       43 CALL                             R2 0 0
       44 GETUPVAL                         R2 1
       45 DUPTABLE                         R4 K7 [{"isDragging"}]
       46 LOADB                            R5 0
       47 SETTABLEKS                       R5 R4 K6 ["isDragging"]
       49 NAMECALL                         R2 R2 K8 ["setState"]
       51 CALL                             R2 2 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R3 R1 K1 ["UserInputType"]
        5 GETIMPORT                        R4 K4 [Enum.UserInputType.MouseMovement]
        7 JUMPIFNOTEQ                      R3 R4 ; [+28]
        9 GETTABLEKS                       R3 R2 K5 ["isDragging"]
       11 JUMPIFNOT                        R3 ; [+24]
       12 GETTABLEKS                       R4 R1 K6 ["Position"]
       14 GETTABLEKS                       R3 R4 K7 ["Y"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K8 ["getAbsoluteY"]
       19 CALL                             R5 0 1
       20 SUB                              R4 R3 R5
       21 GETUPVAL                         R5 0
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K9 ["getClosestBox"]
       25 MOVE                             R7 R3
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K10 ["blankIndex"]
       29 GETUPVAL                         R5 0
       30 DUPTABLE                         R7 K12 [{"dragPositionY"}]
       31 SETTABLEKS                       R4 R7 K11 ["dragPositionY"]
       33 NAMECALL                         R5 R5 K13 ["setState"]
       35 CALL                             R5 2 0
       36 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.remove]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["tileList"]
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["tileList"]
       10 FASTCALL3                        TABLE_INSERT R4 R1 R2
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 GETIMPORT                        R3 K5 [table.insert]
       16 CALL                             R3 3 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["frameRef"]
        3 JUMPIF                           R2 ; [+2]
        4 LOADN                            R2 0
        5 RETURN                           R2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["frameRef"]
        9 NAMECALL                         R2 R2 K1 ["getValue"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+17]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K2 ["numBoxesToDisplay"]
       16 GETTABLEKS                       R5 R2 K3 ["AbsoluteSize"]
       18 GETTABLEKS                       R4 R5 K4 ["Y"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K5 ["getAbsoluteY"]
       23 CALL                             R5 0 1
       24 SUBK                             R9 R1 K6 [1]
       25 MUL                              R8 R4 R9
       26 DIV                              R7 R8 R3
       27 SUB                              R8 R0 R5
       28 SUB                              R6 R7 R8
       29 RETURN                           R6 1
       30 LOADN                            R3 0
       31 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["frameRef"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADN                            R1 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["frameRef"]
        9 NAMECALL                         R1 R1 K1 ["getValue"]
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+20]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K2 ["numBoxesToDisplay"]
       16 GETTABLEKS                       R4 R1 K3 ["AbsoluteSize"]
       18 GETTABLEKS                       R3 R4 K4 ["Y"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K5 ["getAbsoluteY"]
       23 CALL                             R4 0 1
       24 SUB                              R8 R0 R4
       25 DIV                              R9 R3 R2
       26 DIV                              R7 R8 R9
       27 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       28 GETIMPORT                        R6 K9 [math.floor]
       30 CALL                             R6 1 1
       31 ADDK                             R5 R6 K6 [1]
       32 RETURN                           R5 1
       33 LOADN                            R2 0
       34 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["frameRef"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADN                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["frameRef"]
        9 NAMECALL                         R0 R0 K1 ["getValue"]
       11 CALL                             R0 1 1
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETTABLEKS                       R2 R0 K2 ["AbsolutePosition"]
       15 GETTABLEKS                       R1 R2 K3 ["Y"]
       17 RETURN                           R1 1
       18 LOADN                            R1 0
       19 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["frameRef"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADN                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["frameRef"]
        9 NAMECALL                         R0 R0 K1 ["getValue"]
       11 CALL                             R0 1 1
       12 JUMPIFNOT                        R0 ; [+25]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K2 ["tileList"]
       16 LENGTH                           R2 R3
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K3 ["props"]
       20 GETTABLEKS                       R3 R4 K4 ["Capacity"]
       22 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       24 GETIMPORT                        R1 K7 [math.min]
       26 CALL                             R1 2 1
       27 GETTABLEKS                       R3 R0 K8 ["AbsoluteSize"]
       29 GETTABLEKS                       R2 R3 K9 ["Y"]
       31 SUBK                             R5 R1 K10 [1]
       32 MUL                              R4 R2 R5
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K11 ["numBoxesToDisplay"]
       36 DIV                              R3 R4 R5
       37 RETURN                           R3 1
       38 LOADN                            R1 0
       39 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["otterMotors"]
        3 JUMPIFNOT                        R0 ; [+12]
        4 GETIMPORT                        R0 K2 [ipairs]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R1 R3 K0 ["otterMotors"]
        9 CALL                             R0 1 3
       10 FORGPREP_INEXT                   R0
       11 NAMECALL                         R5 R4 K3 ["destroy"]
       13 CALL                             R5 1 0
       14 FORGLOOP                         R0 2 [inext] ; [-4]
       16 GETUPVAL                         R0 0
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K0 ["otterMotors"]
       21 GETUPVAL                         R0 0
       22 NEWTABLE                         R1 0 0
       24 SETTABLEKS                       R1 R0 K4 ["updateOtterMotorBindings"]
       26 GETUPVAL                         R0 0
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K5 ["otterMotorBindings"]
       31 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["updateOtterMotorBindings"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 0
        8 DUPTABLE                         R3 K2 [{"isAnimating"}]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K1 ["isAnimating"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isAnimating"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isAnimating"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K1 [next]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["otterMotors"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+9]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["otterMotors"]
       10 LENGTH                           R1 R2
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["maxDragIndex"]
       14 JUMPIFEQ                         R1 R2 ; [+68]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K4 ["destroyMotors"]
       19 CALL                             R1 0 0
       20 LOADN                            R3 1
       21 MOVE                             R1 R0
       22 LOADN                            R2 1
       23 FORNPREP                         R1
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K2 ["otterMotors"]
       27 LENGTH                           R4 R5
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R5 R6 K5 ["numBoxesToDisplay"]
       31 JUMPIFEQ                         R4 R5 ; [+51]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R4 R5 K2 ["otterMotors"]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R5 R6 K6 ["createSingleMotor"]
       39 SUBK                             R7 R3 K7 [1]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R8 R9 K5 ["numBoxesToDisplay"]
       43 DIV                              R6 R7 R8
       44 CALL                             R5 1 1
       45 SETTABLE                         R5 R4 R3
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R4 R5 K8 ["otterMotorBindings"]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K9 ["updateOtterMotorBindings"]
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R6 R7 K10 ["createBinding"]
       55 SUBK                             R8 R3 K7 [1]
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R9 R10 K5 ["numBoxesToDisplay"]
       59 DIV                              R7 R8 R9
       60 CALL                             R6 1 2
       61 SETTABLE                         R6 R4 R3
       62 SETTABLE                         R7 R5 R3
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R5 R6 K2 ["otterMotors"]
       66 GETTABLE                         R4 R5 R3
       67 NEWCLOSURE                       R6 P0
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          VAL R3
       70 NAMECALL                         R4 R4 K11 ["onStep"]
       72 CALL                             R4 2 0
       73 GETUPVAL                         R6 0
       74 GETTABLEKS                       R5 R6 K2 ["otterMotors"]
       76 GETTABLE                         R4 R5 R3
       77 NEWCLOSURE                       R6 P1
       78 CAPTURE                          UPVAL U0
       79 NAMECALL                         R4 R4 K12 ["onComplete"]
       81 CALL                             R4 2 0
       82 FORNLOOP                         R1
       83 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["state"]
        3 GETTABLEKS                       R0 R1 K1 ["isDragging"]
        5 JUMPIFNOT                        R0 ; [+17]
        6 LOADB                            R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["draggingIndex"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["maxDragIndex"]
       13 JUMPIFNOTLE                      R1 R2 ; [+9]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R1 R2 K2 ["draggingIndex"]
       18 LOADN                            R2 0
       19 JUMPIFLT                         R2 R1 ; [+2]
       21 LOADB                            R0 0 +1
       22 LOADB                            R0 1
       23 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getDefaultTileProps"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R5 R4 K1 ["TileComponent"]
        5 GETTABLEKS                       R6 R4 K2 ["GetTileProps"]
        7 JUMPIF                           R6 ; [+3]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K3 ["getTileProps"]
       11 MOVE                             R7 R6
       12 MOVE                             R8 R3
       13 CALL                             R7 1 1
       14 GETUPVAL                         R9 1
       15 GETTABLEKS                       R8 R9 K4 ["createElement"]
       17 GETUPVAL                         R9 2
       18 DUPTABLE                         R10 K10 [{"key", "Size", "Position", "LayoutOrder", "ZIndex"}]
       19 GETUPVAL                         R12 3
       20 JUMPIFNOT                        R12 ; [+16]
       21 GETUPVAL                         R12 4
       22 JUMPIFNOT                        R12 ; [+14]
       23 GETUPVAL                         R14 0
       24 GETTABLEKS                       R13 R14 K0 ["props"]
       26 GETTABLEKS                       R12 R13 K11 ["GetTileId"]
       28 JUMPIFNOT                        R12 ; [+8]
       29 GETUPVAL                         R13 0
       30 GETTABLEKS                       R12 R13 K0 ["props"]
       32 GETTABLEKS                       R11 R12 K11 ["GetTileId"]
       34 MOVE                             R12 R3
       35 CALL                             R11 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R11
       38 SETTABLEKS                       R11 R10 K5 ["key"]
       40 GETIMPORT                        R11 K14 [UDim2.new]
       42 LOADN                            R12 1
       43 LOADN                            R13 0
       44 GETUPVAL                         R16 0
       45 GETTABLEKS                       R15 R16 K16 ["numBoxesToDisplay"]
       47 DIVRK                            R14 R15 K15 [1]
       48 LOADN                            R15 0
       49 CALL                             R11 4 1
       50 SETTABLEKS                       R11 R10 K6 ["Size"]
       52 SETTABLEKS                       R0 R10 K7 ["Position"]
       54 SETTABLEKS                       R2 R10 K8 ["LayoutOrder"]
       56 SETTABLEKS                       R1 R10 K9 ["ZIndex"]
       58 DUPTABLE                         R11 K18 [{"BoxContent"}]
       59 GETUPVAL                         R13 1
       60 GETTABLEKS                       R12 R13 K4 ["createElement"]
       62 MOVE                             R13 R5
       63 JUMPIF                           R13 ; [+1]
       64 GETUPVAL                         R13 5
       65 MOVE                             R14 R7
       66 CALL                             R12 2 1
       67 SETTABLEKS                       R12 R11 K17 ["BoxContent"]
       69 CALL                             R8 3 -1
       70 RETURN                           R8 -1

PROTO_15:
        0 GETIMPORT                        R3 K2 [UDim2.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 SUBK                             R7 R1 K3 [1]
        5 GETUPVAL                         R9 0
        6 GETTABLEKS                       R8 R9 K4 ["numBoxesToDisplay"]
        8 DIV                              R6 R7 R8
        9 LOADN                            R7 0
       10 CALL                             R3 4 1
       11 GETUPVAL                         R4 1
       12 JUMPIFNOT                        R4 ; [+33]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K5 ["otterMotors"]
       16 GETTABLE                         R4 R5 R0
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K6 ["spring"]
       20 SUBK                             R8 R1 K3 [1]
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R9 R10 K4 ["numBoxesToDisplay"]
       24 DIV                              R7 R8 R9
       25 DUPTABLE                         R8 K8 [{"frequency"}]
       26 SETTABLEKS                       R2 R8 K7 ["frequency"]
       28 CALL                             R6 2 -1
       29 NAMECALL                         R4 R4 K9 ["setGoal"]
       31 CALL                             R4 -1 0
       32 GETIMPORT                        R4 K2 [UDim2.new]
       34 LOADN                            R5 0
       35 LOADN                            R6 0
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R8 R9 K10 ["otterMotorBindings"]
       39 GETTABLE                         R7 R8 R0
       40 NAMECALL                         R7 R7 K11 ["getValue"]
       42 CALL                             R7 1 1
       43 LOADN                            R8 0
       44 CALL                             R4 4 1
       45 MOVE                             R3 R4
       46 RETURN                           R3 1

PROTO_16:
        0 LOADB                            R2 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 JUMPIFNOT                        R1 ; [+6]
        3 LENGTH                           R3 R0
        4 LENGTH                           R4 R1
        5 JUMPIFEQ                         R3 R4 ; [+3]
        7 LOADB                            R2 1
        8 JUMP                             ; [+22]
        9 NEWTABLE                         R3 0 0
       11 GETIMPORT                        R4 K1 [ipairs]
       13 MOVE                             R5 R0
       14 CALL                             R4 1 3
       15 FORGPREP_INEXT                   R4
       16 LOADB                            R9 1
       17 SETTABLE                         R9 R3 R8
       18 FORGLOOP                         R4 2 [inext] ; [-3]
       20 GETIMPORT                        R4 K1 [ipairs]
       22 MOVE                             R5 R1
       23 CALL                             R4 1 3
       24 FORGPREP_INEXT                   R4
       25 GETTABLE                         R9 R3 R8
       26 JUMPIF                           R9 ; [+2]
       27 LOADB                            R2 1
       28 JUMP                             ; [+2]
       29 FORGLOOP                         R4 2 [inext] ; [-5]
       31 JUMPIFNOT                        R2 ; [+20]
       32 GETUPVAL                         R3 0
       33 NEWTABLE                         R4 0 0
       35 SETTABLEKS                       R4 R3 K2 ["tileList"]
       37 GETIMPORT                        R3 K1 [ipairs]
       39 MOVE                             R4 R1
       40 CALL                             R3 1 3
       41 FORGPREP_INEXT                   R3
       42 GETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       44 JUMPIF                           R8 ; [+1]
       45 MOVE                             R8 R6
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K2 ["tileList"]
       49 SETTABLE                         R7 R9 R8
       50 FORGLOOP                         R3 2 [inext] ; [-9]
       52 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R3 K3 [{"isDragging", "isAnimating", "dragPositionY"}]
        1 LOADB                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["isDragging"]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["isAnimating"]
        7 LOADN                            R4 0
        8 SETTABLEKS                       R4 R3 K2 ["dragPositionY"]
       10 NAMECALL                         R1 R0 K4 ["setState"]
       12 CALL                             R1 2 0
       13 LOADN                            R1 0
       14 SETTABLEKS                       R1 R0 K5 ["draggingIndex"]
       16 LOADN                            R1 0
       17 SETTABLEKS                       R1 R0 K6 ["blankIndex"]
       19 LOADN                            R1 0
       20 SETTABLEKS                       R1 R0 K7 ["clickOffsetY"]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R1 R2 K8 ["createRef"]
       25 CALL                             R1 0 1
       26 SETTABLEKS                       R1 R0 K9 ["frameRef"]
       28 LOADN                            R1 0
       29 SETTABLEKS                       R1 R0 K10 ["numBoxesToDisplay"]
       31 NEWTABLE                         R1 0 0
       33 SETTABLEKS                       R1 R0 K11 ["otterMotors"]
       35 NEWTABLE                         R1 0 0
       37 SETTABLEKS                       R1 R0 K12 ["otterMotorBindings"]
       39 NEWTABLE                         R1 0 0
       41 SETTABLEKS                       R1 R0 K13 ["updateOtterMotorBindings"]
       43 NEWTABLE                         R1 0 0
       45 SETTABLEKS                       R1 R0 K14 ["tileList"]
       47 NEWCLOSURE                       R1 P0
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R1 R0 K15 ["onInputBegan"]
       52 NEWCLOSURE                       R1 P1
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R0
       55 SETTABLEKS                       R1 R0 K16 ["onInputEnded"]
       57 NEWCLOSURE                       R1 P2
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R1 R0 K17 ["onInputChanged"]
       61 NEWCLOSURE                       R1 P3
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R1 R0 K18 ["onOrderChanged"]
       65 NEWCLOSURE                       R1 P4
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R1 R0 K19 ["getOffset"]
       69 NEWCLOSURE                       R1 P5
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R1 R0 K20 ["getClosestBox"]
       73 NEWCLOSURE                       R1 P6
       74 CAPTURE                          VAL R0
       75 SETTABLEKS                       R1 R0 K21 ["getAbsoluteY"]
       77 NEWCLOSURE                       R1 P7
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R1 R0 K22 ["getMaxY"]
       81 NEWCLOSURE                       R1 P8
       82 CAPTURE                          VAL R0
       83 SETTABLEKS                       R1 R0 K23 ["destroyMotors"]
       85 NEWCLOSURE                       R1 P9
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U2
       88 CAPTURE                          UPVAL U0
       89 SETTABLEKS                       R1 R0 K24 ["createOtterMotors"]
       91 NEWCLOSURE                       R1 P10
       92 CAPTURE                          VAL R0
       93 SETTABLEKS                       R1 R0 K25 ["isDragInBounds"]
       95 NEWCLOSURE                       R1 P11
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R1 R0 K26 ["getTileProps"]
       99 NEWCLOSURE                       R1 P12
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U0
      102 CAPTURE                          UPVAL U3
      103 CAPTURE                          UPVAL U4
      104 CAPTURE                          UPVAL U5
      105 CAPTURE                          UPVAL U6
      106 SETTABLEKS                       R1 R0 K27 ["createBoxContainer"]
      108 NEWCLOSURE                       R1 P13
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U2
      111 SETTABLEKS                       R1 R0 K28 ["updateMotorAndGetPosition"]
      113 NEWCLOSURE                       R1 P14
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R1 R0 K29 ["doUpdate"]
      117 GETTABLEKS                       R1 R0 K29 ["doUpdate"]
      119 GETTABLEKS                       R2 R0 K14 ["tileList"]
      121 GETTABLEKS                       R4 R0 K30 ["props"]
      123 GETTABLEKS                       R3 R4 K31 ["TileList"]
      125 CALL                             R1 2 0
      126 RETURN                           R0 0

PROTO_18:
        0 DUPTABLE                         R2 K2 [{"Tile", "Style"}]
        1 MOVE                             R3 R1
        2 JUMPIF                           R3 ; [+4]
        3 DUPTABLE                         R3 K4 [{"Text"}]
        4 LOADK                            R4 K5 [""]
        5 SETTABLEKS                       R4 R3 K3 ["Text"]
        7 SETTABLEKS                       R3 R2 K0 ["Tile"]
        9 GETTABLEKS                       R4 R0 K6 ["props"]
       11 GETTABLEKS                       R3 R4 K7 ["Stylizer"]
       13 SETTABLEKS                       R3 R2 K1 ["Style"]
       15 RETURN                           R2 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["destroyMotors"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["doUpdate"]
        2 GETTABLEKS                       R3 R0 K1 ["tileList"]
        4 GETTABLEKS                       R4 R1 K2 ["TileList"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+4]
        2 GETIMPORT                        R1 K1 [print]
        4 LOADK                            R2 K2 ["Error: Otter not found, disabling animations. Please re-run manage_libraries.py"]
        5 CALL                             R1 1 0
        6 GETTABLEKS                       R1 R0 K3 ["props"]
        8 GETTABLEKS                       R2 R0 K4 ["state"]
       10 GETTABLEKS                       R3 R1 K5 ["AnchorPoint"]
       12 GETTABLEKS                       R4 R1 K6 ["LayoutOrder"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R6 R1 K7 ["Size"]
       17 GETIMPORT                        R7 K10 [UDim2.new]
       19 LOADN                            R8 1
       20 LOADN                            R9 0
       21 LOADN                            R10 1
       22 LOADN                            R11 0
       23 CALL                             R7 4 -1
       24 CALL                             R5 -1 1
       25 GETTABLEKS                       R6 R1 K11 ["Position"]
       27 GETTABLEKS                       R7 R1 K12 ["ShowEmptyBoxes"]
       29 LOADN                            R9 1
       30 GETTABLEKS                       R10 R1 K13 ["Capacity"]
       32 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       34 GETIMPORT                        R8 K16 [math.max]
       36 CALL                             R8 2 1
       37 GETTABLEKS                       R9 R1 K17 ["AnimationSpeed"]
       39 GETTABLEKS                       R10 R2 K18 ["dragPositionY"]
       41 GETTABLEKS                       R11 R0 K19 ["blankIndex"]
       43 SETTABLEKS                       R8 R0 K20 ["numBoxesToDisplay"]
       45 SETTABLEKS                       R8 R0 K21 ["maxDragIndex"]
       47 GETTABLEKS                       R13 R0 K22 ["tileList"]
       49 LENGTH                           R12 R13
       50 JUMPIFNOTLT                      R12 R8 ; [+12]
       52 JUMPIF                           R7 ; [+5]
       53 GETTABLEKS                       R13 R0 K22 ["tileList"]
       55 LENGTH                           R12 R13
       56 SETTABLEKS                       R12 R0 K20 ["numBoxesToDisplay"]
       58 GETTABLEKS                       R13 R0 K22 ["tileList"]
       60 LENGTH                           R12 R13
       61 SETTABLEKS                       R12 R0 K21 ["maxDragIndex"]
       63 GETTABLEKS                       R13 R0 K22 ["tileList"]
       65 LENGTH                           R12 R13
       66 LOADN                            R13 0
       67 JUMPIFNOTLT                      R13 R12 ; [+12]
       69 LOADN                            R14 1
       70 GETTABLEKS                       R16 R0 K22 ["tileList"]
       72 LENGTH                           R15 R16
       73 FASTCALL3                        MATH_CLAMP R11 R14 R15
       75 MOVE                             R13 R11
       76 GETIMPORT                        R12 K24 [math.clamp]
       78 CALL                             R12 3 1
       79 MOVE                             R11 R12
       80 GETUPVAL                         R12 0
       81 JUMPIFNOT                        R12 ; [+6]
       82 GETTABLEKS                       R12 R0 K25 ["createOtterMotors"]
       84 GETTABLEKS                       R14 R0 K22 ["tileList"]
       86 LENGTH                           R13 R14
       87 CALL                             R12 1 0
       88 NEWTABLE                         R12 0 0
       90 LOADN                            R13 1
       91 GETIMPORT                        R14 K27 [ipairs]
       93 GETTABLEKS                       R15 R0 K22 ["tileList"]
       95 CALL                             R14 1 3
       96 FORGPREP_INEXT                   R14
       97 LENGTH                           R19 R12
       98 GETTABLEKS                       R20 R0 K20 ["numBoxesToDisplay"]
      100 JUMPIFEQ                         R19 R20 ; [+91]
      102 GETTABLEKS                       R19 R0 K28 ["isDragInBounds"]
      104 CALL                             R19 0 1
      105 JUMPIFNOT                        R19 ; [+64]
      106 GETTABLEKS                       R19 R0 K29 ["draggingIndex"]
      108 JUMPIFNOTEQ                      R17 R19 ; [+36]
      110 GETTABLEKS                       R20 R0 K30 ["clickOffsetY"]
      112 ADD                              R19 R10 R20
      113 LOADN                            R22 0
      114 GETTABLEKS                       R23 R0 K31 ["getMaxY"]
      116 CALL                             R23 0 1
      117 FASTCALL3                        MATH_CLAMP R19 R22 R23
      119 MOVE                             R21 R19
      120 GETIMPORT                        R20 K24 [math.clamp]
      122 CALL                             R20 3 1
      123 MOVE                             R19 R20
      124 GETTABLEKS                       R20 R0 K32 ["createBoxContainer"]
      126 GETIMPORT                        R21 K10 [UDim2.new]
      128 LOADN                            R22 0
      129 LOADN                            R23 0
      130 LOADN                            R24 0
      131 MOVE                             R25 R19
      132 CALL                             R21 4 1
      133 LOADN                            R22 100
      134 LOADN                            R23 1
      135 MOVE                             R24 R18
      136 CALL                             R20 4 1
      137 FASTCALL2                        TABLE_INSERT R12 R20 ; [+5]
      139 MOVE                             R22 R12
      140 MOVE                             R23 R20
      141 GETIMPORT                        R21 K35 [table.insert]
      143 CALL                             R21 2 0
      144 JUMP                             ; [+45]
      145 JUMPIFNOTEQ                      R13 R11 ; [+2]
      147 ADDK                             R13 R13 K36 [1]
      148 GETTABLEKS                       R19 R0 K37 ["updateMotorAndGetPosition"]
      150 MOVE                             R20 R17
      151 MOVE                             R21 R13
      152 MOVE                             R22 R9
      153 CALL                             R19 3 1
      154 GETTABLEKS                       R20 R0 K32 ["createBoxContainer"]
      156 MOVE                             R21 R19
      157 LOADN                            R22 99
      158 ADDK                             R23 R13 K36 [1]
      159 MOVE                             R24 R18
      160 CALL                             R20 4 1
      161 FASTCALL2                        TABLE_INSERT R12 R20 ; [+5]
      163 MOVE                             R22 R12
      164 MOVE                             R23 R20
      165 GETIMPORT                        R21 K35 [table.insert]
      167 CALL                             R21 2 0
      168 ADDK                             R13 R13 K36 [1]
      169 JUMP                             ; [+20]
      170 GETTABLEKS                       R19 R0 K37 ["updateMotorAndGetPosition"]
      172 MOVE                             R20 R17
      173 MOVE                             R21 R17
      174 MOVE                             R22 R9
      175 CALL                             R19 3 1
      176 GETTABLEKS                       R20 R0 K32 ["createBoxContainer"]
      178 MOVE                             R21 R19
      179 LOADN                            R22 99
      180 ADDK                             R23 R17 K36 [1]
      181 MOVE                             R24 R18
      182 CALL                             R20 4 1
      183 FASTCALL2                        TABLE_INSERT R12 R20 ; [+5]
      185 MOVE                             R22 R12
      186 MOVE                             R23 R20
      187 GETIMPORT                        R21 K35 [table.insert]
      189 CALL                             R21 2 0
      190 FORGLOOP                         R14 2 [inext] ; [-94]
      192 LENGTH                           R14 R12
      193 GETTABLEKS                       R15 R0 K20 ["numBoxesToDisplay"]
      195 JUMPIFNOTLT                      R14 R15 ; [+33]
      197 JUMPIFNOT                        R7 ; [+31]
      198 LENGTH                           R17 R12
      199 ADDK                             R16 R17 K36 [1]
      200 GETTABLEKS                       R14 R0 K20 ["numBoxesToDisplay"]
      202 LOADN                            R15 1
      203 FORNPREP                         R14
      204 GETIMPORT                        R17 K10 [UDim2.new]
      206 LOADN                            R18 0
      207 LOADN                            R19 0
      208 SUBK                             R21 R16 K36 [1]
      209 GETTABLEKS                       R22 R0 K20 ["numBoxesToDisplay"]
      211 DIV                              R20 R21 R22
      212 LOADN                            R21 0
      213 CALL                             R17 4 1
      214 GETTABLEKS                       R18 R0 K32 ["createBoxContainer"]
      216 MOVE                             R19 R17
      217 LOADN                            R20 99
      218 ADDK                             R21 R16 K36 [1]
      219 LOADNIL                          R22
      220 CALL                             R18 4 1
      221 FASTCALL2                        TABLE_INSERT R12 R18 ; [+5]
      223 MOVE                             R20 R12
      224 MOVE                             R21 R18
      225 GETIMPORT                        R19 K35 [table.insert]
      227 CALL                             R19 2 0
      228 FORNLOOP                         R14
      229 GETUPVAL                         R15 2
      230 GETTABLEKS                       R14 R15 K38 ["createElement"]
      232 LOADK                            R15 K39 ["TextButton"]
      233 NEWTABLE                         R16 16 0
      235 SETTABLEKS                       R3 R16 K5 ["AnchorPoint"]
      237 SETTABLEKS                       R4 R16 K6 ["LayoutOrder"]
      239 SETTABLEKS                       R6 R16 K11 ["Position"]
      241 GETIMPORT                        R17 K10 [UDim2.new]
      243 LOADN                            R18 0
      244 GETTABLEKS                       R20 R5 K40 ["X"]
      246 GETTABLEKS                       R19 R20 K41 ["Offset"]
      248 LOADN                            R20 0
      249 GETTABLEKS                       R24 R5 K42 ["Y"]
      251 GETTABLEKS                       R23 R24 K41 ["Offset"]
      253 GETTABLEKS                       R24 R0 K20 ["numBoxesToDisplay"]
      255 MUL                              R22 R23 R24
      256 DIV                              R21 R22 R8
      257 CALL                             R17 4 1
      258 SETTABLEKS                       R17 R16 K7 ["Size"]
      260 LOADN                            R17 0
      261 SETTABLEKS                       R17 R16 K43 ["BorderSizePixel"]
      263 LOADN                            R17 1
      264 SETTABLEKS                       R17 R16 K44 ["BackgroundTransparency"]
      266 GETUPVAL                         R18 2
      267 GETTABLEKS                       R17 R18 K45 ["Ref"]
      269 GETTABLEKS                       R18 R0 K46 ["frameRef"]
      271 SETTABLE                         R18 R16 R17
      272 GETUPVAL                         R19 2
      273 GETTABLEKS                       R18 R19 K47 ["Event"]
      275 GETTABLEKS                       R17 R18 K48 ["InputBegan"]
      277 GETTABLEKS                       R18 R0 K49 ["onInputBegan"]
      279 SETTABLE                         R18 R16 R17
      280 GETUPVAL                         R19 2
      281 GETTABLEKS                       R18 R19 K47 ["Event"]
      283 GETTABLEKS                       R17 R18 K50 ["InputEnded"]
      285 GETTABLEKS                       R18 R0 K51 ["onInputEnded"]
      287 SETTABLE                         R18 R16 R17
      288 GETUPVAL                         R19 2
      289 GETTABLEKS                       R18 R19 K47 ["Event"]
      291 GETTABLEKS                       R17 R18 K52 ["InputChanged"]
      293 GETTABLEKS                       R18 R0 K53 ["onInputChanged"]
      295 SETTABLE                         R18 R16 R17
      296 LOADK                            R17 K54 [""]
      297 SETTABLEKS                       R17 R16 K55 ["Text"]
      299 MOVE                             R17 R12
      300 CALL                             R14 3 -1
      301 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["Otter"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R6 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R6 K10 ["Otter"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Util"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K6 [require]
       48 GETTABLEKS                       R8 R0 K12 ["Util"]
       50 GETTABLEKS                       R7 R8 K13 ["Typecheck"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R5 K14 ["isInputMainPress"]
       55 GETTABLEKS                       R8 R5 K15 ["prioritize"]
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R12 R0 K2 ["UI"]
       61 GETTABLEKS                       R11 R12 K16 ["Components"]
       63 GETTABLEKS                       R10 R11 K17 ["Pane"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K6 [require]
       68 GETIMPORT                        R12 K1 [script]
       70 GETTABLEKS                       R11 R12 K18 ["TileBox"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K6 [require]
       75 GETTABLEKS                       R13 R0 K19 ["SharedFlags"]
       77 GETTABLEKS                       R12 R13 K20 ["getFFlagDevFrameworkFixMissingKeyErrors"]
       79 CALL                             R11 1 1
       80 CALL                             R11 0 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R14 R0 K12 ["Util"]
       85 GETTABLEKS                       R13 R14 K21 ["isRoact17"]
       87 CALL                             R12 1 1
       88 MOVE                             R13 R1
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R13 R1 K22 ["PureComponent"]
       92 LOADK                            R15 K23 ["DraggableTileList"]
       93 NAMECALL                         R13 R13 K24 ["extend"]
       95 CALL                             R13 2 1
       96 GETTABLEKS                       R14 R6 K25 ["wrap"]
       98 MOVE                             R15 R13
       99 GETIMPORT                        R16 K1 [script]
      101 CALL                             R14 2 0
      102 DUPTABLE                         R14 K31 [{"ShowEmptyBoxes", "LayoutOrder", "Capacity", "AnimationSpeed", "Position"}]
      103 LOADB                            R15 0
      104 SETTABLEKS                       R15 R14 K26 ["ShowEmptyBoxes"]
      106 LOADN                            R15 1
      107 SETTABLEKS                       R15 R14 K27 ["LayoutOrder"]
      109 LOADN                            R15 10
      110 SETTABLEKS                       R15 R14 K28 ["Capacity"]
      112 LOADN                            R15 10
      113 SETTABLEKS                       R15 R14 K29 ["AnimationSpeed"]
      115 GETIMPORT                        R15 K34 [UDim2.new]
      117 LOADN                            R16 0
      118 LOADN                            R17 0
      119 LOADN                            R18 0
      120 LOADN                            R19 0
      121 CALL                             R15 4 1
      122 SETTABLEKS                       R15 R14 K30 ["Position"]
      124 SETTABLEKS                       R14 R13 K35 ["defaultProps"]
      126 DUPCLOSURE                       R14 K36 [PROTO_17]
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R10
      134 SETTABLEKS                       R14 R13 K37 ["init"]
      136 DUPCLOSURE                       R14 K38 [PROTO_18]
      137 SETTABLEKS                       R14 R13 K39 ["getDefaultTileProps"]
      139 DUPCLOSURE                       R14 K40 [PROTO_19]
      140 SETTABLEKS                       R14 R13 K41 ["willUnmount"]
      142 DUPCLOSURE                       R14 K42 [PROTO_20]
      143 SETTABLEKS                       R14 R13 K43 ["willUpdate"]
      145 DUPCLOSURE                       R14 K44 [PROTO_21]
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R14 R13 K45 ["render"]
      151 MOVE                             R14 R3
      152 DUPTABLE                         R15 K47 [{"Stylizer"}]
      153 GETTABLEKS                       R16 R2 K46 ["Stylizer"]
      155 SETTABLEKS                       R16 R15 K46 ["Stylizer"]
      157 CALL                             R14 1 1
      158 MOVE                             R15 R13
      159 CALL                             R14 1 1
      160 MOVE                             R13 R14
      161 RETURN                           R13 1
