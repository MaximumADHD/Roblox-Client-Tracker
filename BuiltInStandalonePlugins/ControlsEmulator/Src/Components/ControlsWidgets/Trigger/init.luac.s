PROTO_0:
        0 DIVK                             R3 R1 K1 [2]
        1 DIVRK                            R2 K0 [0.847297860387203] R3
        2 SUBK                             R9 R0 K4 [1]
        3 MUL                              R8 R2 R9
        4 FASTCALL1                        MATH_EXP R8 ; [+2]
        5 GETIMPORT                        R7 K7 [math.exp]
        7 CALL                             R7 1 1
        8 SUBK                             R6 R7 K4 [1]
        9 MULK                             R5 R6 K3 [0.63]
       10 SUBK                             R9 R1 K4 [1]
       11 MUL                              R8 R2 R9
       12 FASTCALL1                        MATH_EXP R8 ; [+2]
       13 GETIMPORT                        R7 K7 [math.exp]
       15 CALL                             R7 1 1
       16 SUBK                             R6 R7 K4 [1]
       17 DIV                              R4 R5 R6
       18 ADDK                             R3 R4 K2 [0.37]
       19 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETTABLEKS                       R3 R0 K1 ["Z"]
        5 GETUPVAL                         R4 1
        6 MUL                              R2 R3 R4
        7 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        8 GETIMPORT                        R1 K4 [math.floor]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K0 ["current"]
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 LOADN                            R4 1
       17 GETUPVAL                         R2 1
       18 LOADN                            R3 1
       19 FORNPREP                         R2
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K0 ["current"]
       23 GETTABLE                         R5 R6 R4
       24 JUMPIFNOT                        R5 ; [+31]
       25 JUMPIFNOTLE                      R4 R1 ; [+15]
       27 GETUPVAL                         R6 3
       28 MOVE                             R8 R5
       29 LOADK                            R9 K5 ["SelectedBlue"]
       30 NAMECALL                         R6 R6 K6 ["HasTag"]
       32 CALL                             R6 3 1
       33 JUMPIF                           R6 ; [+7]
       34 GETUPVAL                         R6 3
       35 MOVE                             R8 R5
       36 LOADK                            R9 K5 ["SelectedBlue"]
       37 NAMECALL                         R6 R6 K7 ["AddTag"]
       39 CALL                             R6 3 0
       40 JUMP                             ; [+15]
       41 JUMPIFNOTLT                      R1 R4 ; [+14]
       43 GETUPVAL                         R6 3
       44 MOVE                             R8 R5
       45 LOADK                            R9 K5 ["SelectedBlue"]
       46 NAMECALL                         R6 R6 K6 ["HasTag"]
       48 CALL                             R6 3 1
       49 JUMPIFNOT                        R6 ; [+6]
       50 GETUPVAL                         R6 3
       51 MOVE                             R8 R5
       52 LOADK                            R9 K5 ["SelectedBlue"]
       53 NAMECALL                         R6 R6 K8 ["RemoveTag"]
       55 CALL                             R6 3 0
       56 FORNLOOP                         R2
       57 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["keyCode"]
        5 GETUPVAL                         R4 3
        6 LOADK                            R5 K1 [{0, 0, 0}]
        7 NAMECALL                         R0 R0 K2 ["SendGamepadEventAsync"]
        9 CALL                             R0 5 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K0 ["current"]
       14 LOADNIL                          R1
       15 JUMPIFNOT                        R0 ; [+21]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K0 ["current"]
       19 JUMPIFNOT                        R2 ; [+17]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K0 ["current"]
       23 GETTABLEKS                       R3 R3 K2 ["AbsolutePosition"]
       25 GETTABLEKS                       R3 R3 K3 ["Y"]
       27 SUB                              R2 R0 R3
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K0 ["current"]
       31 GETTABLEKS                       R3 R3 K4 ["AbsoluteSize"]
       33 GETTABLEKS                       R3 R3 K3 ["Y"]
       35 DIV                              R1 R2 R3
       36 JUMP                             ; [+1]
       37 LOADN                            R1 0
       38 LOADN                            R3 0
       39 LOADN                            R4 0
       40 LOADN                            R7 0
       41 LOADN                            R8 1
       42 FASTCALL3                        MATH_CLAMP R1 R7 R8
       44 MOVE                             R6 R1
       45 GETIMPORT                        R5 K7 [math.clamp]
       47 CALL                             R5 3 1
       48 FASTCALL                         VECTOR ; [+2]
       49 GETIMPORT                        R2 K10 [Vector3.new]
       51 CALL                             R2 3 1
       52 GETIMPORT                        R3 K12 [pcall]
       54 NEWCLOSURE                       R4 P0
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          VAL R2
       59 CALL                             R3 1 0
       60 GETUPVAL                         R3 5
       61 MOVE                             R4 R2
       62 CALL                             R3 1 0
       63 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K1 ["inputState"]
        4 ORK                              R1 R2 K0 [{0, 0, 0}]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+9]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 GETUPVAL                         R2 1
        9 SETTABLE                         R0 R1 R2
       10 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADK                            R1 K0 ["Hover"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 LOADN                            R4 1
        8 GETUPVAL                         R2 1
        9 LOADN                            R3 1
       10 FORNPREP                         R2
       11 LOADK                            R6 K1 ["Bar"]
       12 MOVE                             R7 R4
       13 CONCAT                           R5 R6 R7
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K2 ["createElement"]
       17 LOADK                            R7 K3 ["Frame"]
       18 NEWTABLE                         R8 4 0
       20 GETUPVAL                         R9 2
       21 GETTABLEKS                       R9 R9 K4 ["Tag"]
       23 GETUPVAL                         R10 3
       24 LOADK                            R11 K5 ["HorizontalBar"]
       25 LOADK                            R12 K6 ["data-testid=HorizontalBar"]
       26 MOVE                             R13 R1
       27 CALL                             R10 3 1
       28 SETTABLE                         R10 R8 R9
       29 GETIMPORT                        R9 K9 [UDim2.new]
       31 GETUPVAL                         R11 1
       32 DIVK                             R13 R11 K11 [2]
       33 DIVRK                            R12 K10 [0.847297860387203] R13
       34 SUBK                             R18 R4 K14 [1]
       35 MUL                              R17 R12 R18
       36 FASTCALL1                        MATH_EXP R17 ; [+2]
       37 GETIMPORT                        R16 K17 [math.exp]
       39 CALL                             R16 1 1
       40 SUBK                             R15 R16 K14 [1]
       41 MULK                             R14 R15 K13 [0.63]
       42 SUBK                             R18 R11 K14 [1]
       43 MUL                              R17 R12 R18
       44 FASTCALL1                        MATH_EXP R17 ; [+2]
       45 GETIMPORT                        R16 K17 [math.exp]
       47 CALL                             R16 1 1
       48 SUBK                             R15 R16 K14 [1]
       49 DIV                              R13 R14 R15
       50 ADDK                             R10 R13 K12 [0.37]
       51 LOADN                            R11 0
       52 GETUPVAL                         R12 4
       53 LOADN                            R13 0
       54 CALL                             R9 4 1
       55 SETTABLEKS                       R9 R8 K18 ["Size"]
       57 NEWCLOSURE                       R9 P0
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R9 R8 K19 ["ref"]
       62 SETTABLEKS                       R4 R8 K20 ["LayoutOrder"]
       64 CALL                             R6 2 1
       65 SETTABLE                         R6 R0 R5
       66 FORNLOOP                         R2
       67 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R1 R2 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R2 R0 K4 ["Position"]
        9 GETTABLEKS                       R2 R2 K5 ["Y"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["keyCode"]
        5 GETUPVAL                         R4 3
        6 LOADK                            R5 K1 [{0, 0, 0}]
        7 NAMECALL                         R0 R0 K2 ["SendGamepadEventAsync"]
        9 CALL                             R0 5 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 GETTABLEKS                       R0 R0 K1 ["Z"]
        9 LOADN                            R1 0
       10 JUMPIFNOTLE                      R0 R1 ; [+15]
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K0 ["current"]
       15 JUMPIFNOT                        R0 ; [+10]
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K0 ["current"]
       19 NAMECALL                         R0 R0 K2 ["Disconnect"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 1
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K0 ["current"]
       26 LOADN                            R1 0
       27 LOADN                            R2 0
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K0 ["current"]
       31 GETTABLEKS                       R5 R5 K1 ["Z"]
       33 SUBK                             R4 R5 K3 [0.15]
       34 LOADN                            R5 0
       35 LOADN                            R6 1
       36 FASTCALL                         MATH_CLAMP ; [+2]
       37 GETIMPORT                        R3 K6 [math.clamp]
       39 CALL                             R3 3 1
       40 FASTCALL                         VECTOR ; [+2]
       41 GETIMPORT                        R0 K9 [Vector3.new]
       43 CALL                             R0 3 1
       44 GETIMPORT                        R1 K11 [pcall]
       46 NEWCLOSURE                       R2 P0
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 5
       53 MOVE                             R2 R0
       54 CALL                             R1 1 0
       55 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+47]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["current"]
        9 JUMPIFEQKNIL                     R1 ; [+42]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["current"]
       14 JUMPIFEQKNIL                     R1 ; [+37]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K4 ["current"]
       19 NAMECALL                         R1 R1 K5 ["Disconnect"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K4 ["current"]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K4 ["current"]
       29 NAMECALL                         R1 R1 K5 ["Disconnect"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 1
       33 LOADNIL                          R2
       34 SETTABLEKS                       R2 R1 K4 ["current"]
       36 GETUPVAL                         R1 2
       37 GETUPVAL                         R2 3
       38 GETTABLEKS                       R2 R2 K6 ["Heartbeat"]
       40 NEWCLOSURE                       R4 P0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U8
       47 NAMECALL                         R2 R2 K7 ["Connect"]
       49 CALL                             R2 2 1
       50 SETTABLEKS                       R2 R1 K4 ["current"]
       52 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+40]
        5 GETUPVAL                         R2 1
        6 JUMPIFEQKNIL                     R2 ; [+37]
        8 GETUPVAL                         R2 2
        9 JUMPIFEQKNIL                     R2 ; [+34]
       11 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
       13 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton1]
       15 JUMPIFNOTEQ                      R2 R3 ; [+28]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K0 ["current"]
       20 JUMPIFEQKNIL                     R2 ; [+23]
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R3 R1 K5 ["Position"]
       25 GETTABLEKS                       R3 R3 K6 ["Y"]
       27 CALL                             R2 1 0
       28 GETUPVAL                         R2 0
       29 GETUPVAL                         R3 1
       30 GETUPVAL                         R5 5
       31 NAMECALL                         R3 R3 K7 ["Connect"]
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R2 K0 ["current"]
       36 GETUPVAL                         R2 6
       37 GETUPVAL                         R3 2
       38 GETUPVAL                         R5 7
       39 NAMECALL                         R3 R3 K7 ["Connect"]
       41 CALL                             R3 2 1
       42 SETTABLEKS                       R3 R2 K0 ["current"]
       44 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R0 R1 K0 ["current"]
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["InputChanged"]
        7 GETTABLEKS                       R3 R1 K2 ["InputEnded"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["useRef"]
       12 LOADNIL                          R5
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K3 ["useRef"]
       17 LOADNIL                          R6
       18 CALL                             R5 1 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K0 ["useContext"]
       22 GETUPVAL                         R7 2
       23 CALL                             R6 1 1
       24 GETTABLEKS                       R6 R6 K4 ["gamepadId"]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K3 ["useRef"]
       29 LOADNIL                          R8
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K3 ["useRef"]
       34 NEWTABLE                         R9 0 0
       36 CALL                             R8 1 1
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K3 ["useRef"]
       40 LOADNIL                          R10
       41 CALL                             R9 1 1
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K3 ["useRef"]
       45 LOADK                            R11 K5 [{0, 0, 0}]
       46 CALL                             R10 1 1
       47 GETUPVAL                         R11 0
       48 GETTABLEKS                       R11 R11 K6 ["useState"]
       50 LOADB                            R12 0
       51 CALL                             R11 1 2
       52 GETUPVAL                         R13 0
       53 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       55 NEWCLOSURE                       R14 P0
       56 CAPTURE                          VAL R10
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          VAL R8
       59 CAPTURE                          UPVAL U4
       60 NEWTABLE                         R15 0 0
       62 CALL                             R13 2 1
       63 GETUPVAL                         R14 0
       64 GETTABLEKS                       R14 R14 K7 ["useCallback"]
       66 NEWCLOSURE                       R15 P1
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R7
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R13
       73 NEWTABLE                         R16 0 2
       75 MOVE                             R17 R6
       76 GETTABLEKS                       R18 R0 K8 ["keyCode"]
       78 SETLIST                          R16 R17 2 [1]
       80 CALL                             R14 2 1
       81 GETUPVAL                         R15 0
       82 GETTABLEKS                       R15 R15 K9 ["useMemo"]
       84 NEWCLOSURE                       R16 P2
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R0
       87 NEWTABLE                         R17 0 1
       89 GETTABLEKS                       R18 R0 K10 ["inputState"]
       91 SETLIST                          R17 R18 1 [1]
       93 CALL                             R15 2 0
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R15 R15 K9 ["useMemo"]
       97 NEWCLOSURE                       R16 P3
       98 CAPTURE                          VAL R11
       99 CAPTURE                          UPVAL U3
      100 CAPTURE                          UPVAL U0
      101 CAPTURE                          UPVAL U6
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          VAL R8
      104 NEWTABLE                         R17 0 1
      106 MOVE                             R18 R11
      107 SETLIST                          R17 R18 1 [1]
      109 CALL                             R15 2 1
      110 GETUPVAL                         R16 0
      111 GETTABLEKS                       R16 R16 K7 ["useCallback"]
      113 NEWCLOSURE                       R17 P4
      114 CAPTURE                          VAL R14
      115 NEWTABLE                         R18 0 1
      117 MOVE                             R19 R14
      118 SETLIST                          R18 R19 1 [1]
      120 CALL                             R16 2 1
      121 GETUPVAL                         R17 0
      122 GETTABLEKS                       R17 R17 K7 ["useCallback"]
      124 NEWCLOSURE                       R18 P5
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R9
      128 CAPTURE                          UPVAL U8
      129 CAPTURE                          VAL R10
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R13
      134 NEWTABLE                         R19 0 2
      136 MOVE                             R20 R14
      137 GETTABLEKS                       R21 R0 K10 ["inputState"]
      139 SETLIST                          R19 R20 2 [1]
      141 CALL                             R17 2 1
      142 GETUPVAL                         R18 0
      143 GETTABLEKS                       R18 R18 K7 ["useCallback"]
      145 NEWCLOSURE                       R19 P6
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R17
      154 NEWTABLE                         R20 0 4
      156 MOVE                             R21 R17
      157 MOVE                             R22 R16
      158 GETTABLEKS                       R23 R7 K11 ["current"]
      160 MOVE                             R24 R14
      161 SETLIST                          R20 R21 4 [1]
      163 CALL                             R18 2 1
      164 GETUPVAL                         R19 0
      165 GETTABLEKS                       R19 R19 K12 ["createElement"]
      167 LOADK                            R20 K13 ["Frame"]
      168 NEWTABLE                         R21 8 0
      170 GETTABLEKS                       R22 R0 K14 ["Position"]
      172 SETTABLEKS                       R22 R21 K14 ["Position"]
      174 GETTABLEKS                       R22 R0 K15 ["Size"]
      176 SETTABLEKS                       R22 R21 K15 ["Size"]
      178 GETUPVAL                         R22 0
      179 GETTABLEKS                       R22 R22 K16 ["Tag"]
      181 GETUPVAL                         R23 6
      182 LOADK                            R24 K17 ["TriggerFrame"]
      183 LOADK                            R25 K18 ["data-testid=TriggerFrame"]
      184 CALL                             R23 2 1
      185 SETTABLE                         R23 R21 R22
      186 NEWCLOSURE                       R22 P7
      187 CAPTURE                          VAL R7
      188 SETTABLEKS                       R22 R21 K19 ["ref"]
      190 GETTABLEKS                       R22 R0 K20 ["Visible"]
      192 SETTABLEKS                       R22 R21 K20 ["Visible"]
      194 GETUPVAL                         R22 0
      195 GETTABLEKS                       R22 R22 K21 ["Event"]
      197 GETTABLEKS                       R22 R22 K22 ["InputBegan"]
      199 SETTABLE                         R18 R21 R22
      200 GETUPVAL                         R22 0
      201 GETTABLEKS                       R22 R22 K21 ["Event"]
      203 GETTABLEKS                       R22 R22 K23 ["MouseEnter"]
      205 NEWCLOSURE                       R23 P8
      206 CAPTURE                          VAL R12
      207 SETTABLE                         R23 R21 R22
      208 GETUPVAL                         R22 0
      209 GETTABLEKS                       R22 R22 K21 ["Event"]
      211 GETTABLEKS                       R22 R22 K24 ["MouseLeave"]
      213 NEWCLOSURE                       R23 P9
      214 CAPTURE                          VAL R12
      215 SETTABLE                         R23 R21 R22
      216 MOVE                             R22 R15
      217 CALL                             R19 3 -1
      218 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ControlsEmulator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K8 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R1 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R1 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Util"]
       32 GETTABLEKS                       R5 R5 K15 ["MockableProxyPluginComponents"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R4 R4 K16 ["StudioDeviceEmulator"]
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R6 R1 K13 ["Src"]
       41 GETTABLEKS                       R6 R6 K14 ["Util"]
       43 GETTABLEKS                       R6 R6 K17 ["Constants"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K10 [require]
       48 GETTABLEKS                       R7 R1 K13 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Util"]
       52 GETTABLEKS                       R7 R7 K18 ["RootContainerInputContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K10 [require]
       57 GETTABLEKS                       R8 R1 K13 ["Src"]
       59 GETTABLEKS                       R8 R8 K14 ["Util"]
       61 GETTABLEKS                       R8 R8 K19 ["MappingsContext"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K10 [require]
       66 GETTABLEKS                       R9 R1 K11 ["Packages"]
       68 GETTABLEKS                       R9 R9 K20 ["Framework"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R8 K21 ["Styling"]
       73 GETTABLEKS                       R9 R9 K22 ["joinTags"]
       75 GETTABLEKS                       R10 R5 K23 ["NUMBER_OF_HORIZONTAL_BARS_TRIGGER"]
       77 MULK                             R12 R10 K25 [2]
       78 DIVRK                            R11 K24 [1] R12
       79 DUPCLOSURE                       R12 K26 [PROTO_0]
       80 DUPCLOSURE                       R13 K27 [PROTO_15]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R2
       90 GETTABLEKS                       R14 R3 K28 ["memo"]
       92 MOVE                             R15 R13
       93 CALL                             R14 1 -1
       94 RETURN                           R14 -1
