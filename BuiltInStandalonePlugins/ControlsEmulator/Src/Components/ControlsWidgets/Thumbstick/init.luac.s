PROTO_0:
        0 GETTABLEKS                       R4 R0 K1 ["X"]
        2 GETTABLEKS                       R4 R4 K2 ["Offset"]
        4 POWK                             R3 R4 K0 [2]
        5 GETTABLEKS                       R5 R0 K3 ["Y"]
        7 GETTABLEKS                       R5 R5 K2 ["Offset"]
        9 POWK                             R4 R5 K0 [2]
       10 ADD                              R2 R3 R4
       11 FASTCALL1                        MATH_SQRT R2 ; [+2]
       12 GETIMPORT                        R1 K6 [math.sqrt]
       14 CALL                             R1 1 1
       15 LOADN                            R3 0
       16 JUMPIFNOTLT                      R3 R1 ; [+11]
       18 GETTABLEKS                       R4 R0 K1 ["X"]
       20 GETTABLEKS                       R4 R4 K2 ["Offset"]
       22 DIV                              R3 R4 R1
       23 FASTCALL1                        MATH_ABS R3 ; [+2]
       24 GETIMPORT                        R2 K8 [math.abs]
       26 CALL                             R2 1 1
       27 JUMP                             ; [+1]
       28 LOADN                            R2 0
       29 LOADN                            R4 0
       30 JUMPIFNOTLT                      R4 R1 ; [+11]
       32 GETTABLEKS                       R5 R0 K3 ["Y"]
       34 GETTABLEKS                       R5 R5 K2 ["Offset"]
       36 DIV                              R4 R5 R1
       37 FASTCALL1                        MATH_ABS R4 ; [+2]
       38 GETIMPORT                        R3 K8 [math.abs]
       40 CALL                             R3 1 1
       41 RETURN                           R2 2
       42 LOADN                            R3 0
       43 RETURN                           R2 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DIVK                             R0 R1 K0 [2]
        2 MOVE                             R1 R0
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["relativeStickSize"]
        7 MUL                              R2 R3 R4
        8 RETURN                           R1 2

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["inputState"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+9]
        5 GETIMPORT                        R0 K3 [UDim2.new]
        7 LOADN                            R1 0
        8 LOADN                            R2 0
        9 LOADN                            R3 0
       10 LOADN                            R4 0
       11 CALL                             R0 4 -1
       12 RETURN                           R0 -1
       13 GETIMPORT                        R0 K3 [UDim2.new]
       15 LOADN                            R1 0
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["inputState"]
       19 GETTABLEKS                       R4 R4 K4 ["X"]
       21 GETUPVAL                         R5 1
       22 MUL                              R3 R4 R5
       23 GETUPVAL                         R5 1
       24 MINUS                            R4 R5
       25 GETUPVAL                         R5 1
       26 FASTCALL                         MATH_CLAMP ; [+2]
       27 GETIMPORT                        R2 K7 [math.clamp]
       29 CALL                             R2 3 1
       30 LOADN                            R3 0
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K0 ["inputState"]
       34 GETTABLEKS                       R7 R7 K8 ["Y"]
       36 MINUS                            R6 R7
       37 GETUPVAL                         R7 1
       38 MUL                              R5 R6 R7
       39 GETUPVAL                         R7 1
       40 MINUS                            R6 R7
       41 GETUPVAL                         R7 1
       42 FASTCALL                         MATH_CLAMP ; [+2]
       43 GETIMPORT                        R4 K7 [math.clamp]
       45 CALL                             R4 3 1
       46 CALL                             R0 4 1
       47 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 ADD                              R3 R0 R4
        2 GETTABLEKS                       R7 R3 K1 ["X"]
        4 GETTABLEKS                       R7 R7 K2 ["Offset"]
        6 POWK                             R6 R7 K0 [2]
        7 GETTABLEKS                       R8 R3 K3 ["Y"]
        9 GETTABLEKS                       R8 R8 K2 ["Offset"]
       11 POWK                             R7 R8 K0 [2]
       12 ADD                              R5 R6 R7
       13 FASTCALL1                        MATH_SQRT R5 ; [+2]
       14 GETIMPORT                        R4 K6 [math.sqrt]
       16 CALL                             R4 1 1
       17 LOADN                            R6 0
       18 JUMPIFNOTLT                      R6 R4 ; [+11]
       20 GETTABLEKS                       R7 R3 K1 ["X"]
       22 GETTABLEKS                       R7 R7 K2 ["Offset"]
       24 DIV                              R6 R7 R4
       25 FASTCALL1                        MATH_ABS R6 ; [+2]
       26 GETIMPORT                        R5 K8 [math.abs]
       28 CALL                             R5 1 1
       29 JUMP                             ; [+1]
       30 LOADN                            R5 0
       31 LOADN                            R7 0
       32 JUMPIFNOTLT                      R7 R4 ; [+11]
       34 GETTABLEKS                       R8 R3 K3 ["Y"]
       36 GETTABLEKS                       R8 R8 K2 ["Offset"]
       38 DIV                              R7 R8 R4
       39 FASTCALL1                        MATH_ABS R7 ; [+2]
       40 GETIMPORT                        R6 K8 [math.abs]
       42 CALL                             R6 1 1
       43 JUMP                             ; [+1]
       44 LOADN                            R6 0
       45 MOVE                             R1 R5
       46 MOVE                             R2 R6
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K1 ["X"]
       50 GETTABLEKS                       R6 R6 K2 ["Offset"]
       52 GETTABLEKS                       R7 R0 K1 ["X"]
       54 GETTABLEKS                       R7 R7 K2 ["Offset"]
       56 ADD                              R5 R6 R7
       57 GETUPVAL                         R8 1
       58 MINUS                            R7 R8
       59 MUL                              R6 R7 R1
       60 GETUPVAL                         R8 1
       61 MUL                              R7 R8 R1
       62 FASTCALL                         MATH_CLAMP ; [+2]
       63 GETIMPORT                        R4 K10 [math.clamp]
       65 CALL                             R4 3 1
       66 GETUPVAL                         R5 1
       67 ADD                              R3 R4 R5
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R7 R7 K3 ["Y"]
       71 GETTABLEKS                       R7 R7 K2 ["Offset"]
       73 GETTABLEKS                       R8 R0 K3 ["Y"]
       75 GETTABLEKS                       R8 R8 K2 ["Offset"]
       77 ADD                              R6 R7 R8
       78 GETUPVAL                         R9 1
       79 MINUS                            R8 R9
       80 MUL                              R7 R8 R2
       81 GETUPVAL                         R9 1
       82 MUL                              R8 R9 R2
       83 FASTCALL                         MATH_CLAMP ; [+2]
       84 GETIMPORT                        R5 K10 [math.clamp]
       86 CALL                             R5 3 1
       87 GETUPVAL                         R6 1
       88 ADD                              R4 R5 R6
       89 GETIMPORT                        R5 K13 [UDim2.new]
       91 LOADN                            R6 0
       92 MOVE                             R7 R3
       93 LOADN                            R8 0
       94 MOVE                             R9 R4
       95 CALL                             R5 4 -1
       96 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R6 R0 K1 ["X"]
        2 GETTABLEKS                       R6 R6 K2 ["Offset"]
        4 POWK                             R5 R6 K0 [2]
        5 GETTABLEKS                       R7 R0 K3 ["Y"]
        7 GETTABLEKS                       R7 R7 K2 ["Offset"]
        9 POWK                             R6 R7 K0 [2]
       10 ADD                              R4 R5 R6
       11 FASTCALL1                        MATH_SQRT R4 ; [+2]
       12 GETIMPORT                        R3 K6 [math.sqrt]
       14 CALL                             R3 1 1
       15 LOADN                            R5 0
       16 JUMPIFNOTLT                      R5 R3 ; [+11]
       18 GETTABLEKS                       R6 R0 K1 ["X"]
       20 GETTABLEKS                       R6 R6 K2 ["Offset"]
       22 DIV                              R5 R6 R3
       23 FASTCALL1                        MATH_ABS R5 ; [+2]
       24 GETIMPORT                        R4 K8 [math.abs]
       26 CALL                             R4 1 1
       27 JUMP                             ; [+1]
       28 LOADN                            R4 0
       29 LOADN                            R6 0
       30 JUMPIFNOTLT                      R6 R3 ; [+11]
       32 GETTABLEKS                       R7 R0 K3 ["Y"]
       34 GETTABLEKS                       R7 R7 K2 ["Offset"]
       36 DIV                              R6 R7 R3
       37 FASTCALL1                        MATH_ABS R6 ; [+2]
       38 GETIMPORT                        R5 K8 [math.abs]
       40 CALL                             R5 1 1
       41 JUMP                             ; [+1]
       42 LOADN                            R5 0
       43 MOVE                             R1 R4
       44 MOVE                             R2 R5
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K1 ["X"]
       48 GETTABLEKS                       R5 R5 K2 ["Offset"]
       50 GETTABLEKS                       R6 R0 K1 ["X"]
       52 GETTABLEKS                       R6 R6 K2 ["Offset"]
       54 ADD                              R4 R5 R6
       55 GETUPVAL                         R7 1
       56 MINUS                            R6 R7
       57 MUL                              R5 R6 R1
       58 GETUPVAL                         R7 1
       59 MUL                              R6 R7 R1
       60 FASTCALL                         MATH_CLAMP ; [+2]
       61 GETIMPORT                        R3 K10 [math.clamp]
       63 CALL                             R3 3 1
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R6 R6 K3 ["Y"]
       67 GETTABLEKS                       R6 R6 K2 ["Offset"]
       69 GETTABLEKS                       R7 R0 K3 ["Y"]
       71 GETTABLEKS                       R7 R7 K2 ["Offset"]
       73 ADD                              R5 R6 R7
       74 GETUPVAL                         R8 1
       75 MINUS                            R7 R8
       76 MUL                              R6 R7 R2
       77 GETUPVAL                         R8 1
       78 MUL                              R7 R8 R2
       79 FASTCALL                         MATH_CLAMP ; [+2]
       80 GETIMPORT                        R4 K10 [math.clamp]
       82 CALL                             R4 3 1
       83 GETUPVAL                         R7 1
       84 DIV                              R6 R3 R7
       85 LOADN                            R7 255
       86 LOADN                            R8 1
       87 FASTCALL                         MATH_CLAMP ; [+2]
       88 GETIMPORT                        R5 K10 [math.clamp]
       90 CALL                             R5 3 1
       91 MINUS                            R8 R4
       92 GETUPVAL                         R9 1
       93 DIV                              R7 R8 R9
       94 LOADN                            R8 255
       95 LOADN                            R9 1
       96 FASTCALL                         MATH_CLAMP ; [+2]
       97 GETIMPORT                        R6 K10 [math.clamp]
       99 CALL                             R6 3 1
      100 LOADN                            R10 0
      101 FASTCALL3                        VECTOR R5 R6 R10
      103 MOVE                             R8 R5
      104 MOVE                             R9 R6
      105 GETIMPORT                        R7 K13 [Vector3.new]
      107 CALL                             R7 3 1
      108 RETURN                           R7 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["keyCode"]
        5 GETUPVAL                         R4 3
        6 LOADK                            R5 K1 [{0, 0, 0}]
        7 NAMECALL                         R0 R0 K2 ["SendGamepadEventAsync"]
        9 CALL                             R0 5 0
       10 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R1 R2 ; [+60]
        6 GETUPVAL                         R1 0
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K4 ["current"]
       10 GETUPVAL                         R1 1
       11 GETIMPORT                        R2 K7 [UDim2.new]
       13 LOADN                            R3 0
       14 GETTABLEKS                       R5 R0 K8 ["Position"]
       16 GETTABLEKS                       R5 R5 K9 ["X"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K4 ["current"]
       21 SUB                              R4 R5 R6
       22 LOADN                            R5 0
       23 GETTABLEKS                       R7 R0 K8 ["Position"]
       25 GETTABLEKS                       R7 R7 K10 ["Y"]
       27 GETUPVAL                         R8 3
       28 GETTABLEKS                       R8 R8 K4 ["current"]
       30 SUB                              R6 R7 R8
       31 CALL                             R2 4 1
       32 SETTABLEKS                       R2 R1 K4 ["current"]
       34 GETUPVAL                         R1 4
       35 GETTABLEKS                       R1 R1 K4 ["current"]
       37 JUMPIFNOT                        R1 ; [+14]
       38 GETUPVAL                         R1 5
       39 GETTABLEKS                       R1 R1 K4 ["current"]
       41 JUMPIFNOT                        R1 ; [+10]
       42 GETUPVAL                         R1 4
       43 GETTABLEKS                       R1 R1 K4 ["current"]
       45 GETUPVAL                         R2 6
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R3 R3 K4 ["current"]
       49 CALL                             R2 1 1
       50 SETTABLEKS                       R2 R1 K8 ["Position"]
       52 GETUPVAL                         R1 7
       53 GETUPVAL                         R2 1
       54 GETTABLEKS                       R2 R2 K4 ["current"]
       56 CALL                             R1 1 1
       57 GETIMPORT                        R2 K12 [pcall]
       59 NEWCLOSURE                       R3 P0
       60 CAPTURE                          UPVAL U8
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          VAL R1
       64 CALL                             R2 1 0
       65 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R4 2
        3 GETUPVAL                         R5 3
        4 GETTABLEKS                       R5 R5 K0 ["keyCode"]
        6 GETTABLE                         R3 R4 R5
        7 GETUPVAL                         R4 4
        8 GETTABLEKS                       R4 R4 K1 ["VECTOR_PRESSED"]
       10 LOADK                            R5 K2 [{0, 0, 0}]
       11 NAMECALL                         R0 R0 K3 ["SendGamepadEventAsync"]
       13 CALL                             R0 5 0
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R4 2
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K0 ["keyCode"]
       20 GETTABLE                         R3 R4 R5
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K4 ["VECTOR_RELEASED"]
       24 LOADK                            R5 K2 [{0, 0, 0}]
       25 NAMECALL                         R0 R0 K3 ["SendGamepadEventAsync"]
       27 CALL                             R0 5 0
       28 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R3 R3 K0 ["keyCode"]
        5 LOADK                            R4 K1 [{0, 0, 0}]
        6 LOADK                            R5 K1 [{0, 0, 0}]
        7 NAMECALL                         R0 R0 K2 ["SendGamepadEventAsync"]
        9 CALL                             R0 5 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+92]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["current"]
        9 JUMPIFEQKNIL                     R1 ; [+87]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K4 ["current"]
       14 JUMPIFEQKNIL                     R1 ; [+82]
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
       37 GETTABLEKS                       R1 R1 K4 ["current"]
       39 JUMPIFNOT                        R1 ; [+57]
       40 GETUPVAL                         R1 3
       41 GETTABLEKS                       R1 R1 K4 ["current"]
       43 JUMPIFNOT                        R1 ; [+53]
       44 GETUPVAL                         R1 2
       45 GETTABLEKS                       R1 R1 K4 ["current"]
       47 LOADK                            R3 K6 ["Active"]
       48 NAMECALL                         R1 R1 K7 ["RemoveTag"]
       50 CALL                             R1 2 0
       51 GETUPVAL                         R1 3
       52 GETTABLEKS                       R1 R1 K4 ["current"]
       54 LOADK                            R3 K6 ["Active"]
       55 NAMECALL                         R1 R1 K7 ["RemoveTag"]
       57 CALL                             R1 2 0
       58 GETUPVAL                         R1 4
       59 GETTABLEKS                       R1 R1 K4 ["current"]
       61 JUMPIFNOT                        R1 ; [+14]
       62 GETUPVAL                         R1 4
       63 LOADB                            R2 0
       64 SETTABLEKS                       R2 R1 K4 ["current"]
       66 GETIMPORT                        R1 K9 [pcall]
       68 NEWCLOSURE                       R2 P0
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U7
       72 CAPTURE                          UPVAL U8
       73 CAPTURE                          UPVAL U9
       74 CALL                             R1 1 0
       75 RETURN                           R0 0
       76 GETIMPORT                        R1 K9 [pcall]
       78 NEWCLOSURE                       R2 P1
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          UPVAL U8
       82 CALL                             R1 1 0
       83 GETUPVAL                         R1 10
       84 GETUPVAL                         R2 11
       85 SETTABLEKS                       R2 R1 K4 ["current"]
       87 GETUPVAL                         R1 2
       88 GETTABLEKS                       R1 R1 K4 ["current"]
       90 GETUPVAL                         R2 12
       91 GETUPVAL                         R3 10
       92 GETTABLEKS                       R3 R3 K4 ["current"]
       94 CALL                             R2 1 1
       95 SETTABLEKS                       R2 R1 K10 ["Position"]
       97 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+103]
        5 GETUPVAL                         R2 1
        6 JUMPIFEQKNIL                     R2 ; [+100]
        8 GETUPVAL                         R2 2
        9 JUMPIFEQKNIL                     R2 ; [+97]
       11 GETTABLEKS                       R2 R1 K1 ["UserInputType"]
       13 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton1]
       15 JUMPIFNOTEQ                      R2 R3 ; [+91]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K0 ["current"]
       20 JUMPIFEQKNIL                     R2 ; [+86]
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R2 R2 K0 ["current"]
       25 JUMPIFEQKNIL                     R2 ; [+81]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R3 R1 K5 ["Position"]
       30 GETTABLEKS                       R3 R3 K6 ["X"]
       32 SETTABLEKS                       R3 R2 K0 ["current"]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R3 R1 K5 ["Position"]
       37 GETTABLEKS                       R3 R3 K7 ["Y"]
       39 SETTABLEKS                       R3 R2 K0 ["current"]
       41 GETUPVAL                         R2 5
       42 LOADB                            R3 1
       43 SETTABLEKS                       R3 R2 K0 ["current"]
       45 GETUPVAL                         R2 6
       46 GETTABLEKS                       R2 R2 K0 ["current"]
       48 JUMPIFNOT                        R2 ; [+58]
       49 GETUPVAL                         R2 7
       50 GETTABLEKS                       R2 R2 K0 ["current"]
       52 JUMPIFNOT                        R2 ; [+54]
       53 GETUPVAL                         R2 6
       54 GETTABLEKS                       R2 R2 K0 ["current"]
       56 LOADK                            R4 K8 ["Active"]
       57 NAMECALL                         R2 R2 K9 ["AddTag"]
       59 CALL                             R2 2 0
       60 GETUPVAL                         R2 7
       61 GETTABLEKS                       R2 R2 K0 ["current"]
       63 LOADK                            R4 K8 ["Active"]
       64 NAMECALL                         R2 R2 K9 ["AddTag"]
       66 CALL                             R2 2 0
       67 GETUPVAL                         R2 0
       68 GETUPVAL                         R3 1
       69 NEWCLOSURE                       R5 P0
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U8
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          UPVAL U9
       77 CAPTURE                          UPVAL U10
       78 CAPTURE                          UPVAL U11
       79 CAPTURE                          UPVAL U12
       80 CAPTURE                          UPVAL U13
       81 NAMECALL                         R3 R3 K10 ["Connect"]
       83 CALL                             R3 2 1
       84 SETTABLEKS                       R3 R2 K0 ["current"]
       86 GETUPVAL                         R2 14
       87 GETUPVAL                         R3 2
       88 NEWCLOSURE                       R5 P1
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          UPVAL U14
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          UPVAL U5
       94 CAPTURE                          UPVAL U11
       95 CAPTURE                          UPVAL U12
       96 CAPTURE                          UPVAL U15
       97 CAPTURE                          UPVAL U13
       98 CAPTURE                          UPVAL U16
       99 CAPTURE                          UPVAL U8
      100 CAPTURE                          UPVAL U17
      101 CAPTURE                          UPVAL U9
      102 NAMECALL                         R3 R3 K10 ["Connect"]
      104 CALL                             R3 2 1
      105 SETTABLEKS                       R3 R2 K0 ["current"]
      107 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R0 R1 K0 ["current"]
        4 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R0 R1 K0 ["current"]
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 DUPTABLE                         R2 K4 [{"relativeSocketSize", "relativeStickSize"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K5 ["DEFAULT_THUMBSTICK_SOCKET_SIZE_RELATIVE"]
        9 SETTABLEKS                       R3 R2 K2 ["relativeSocketSize"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K6 ["DEFAULT_THUMBSTICK_SIZE_RELATIVE"]
       14 SETTABLEKS                       R3 R2 K3 ["relativeStickSize"]
       16 MOVE                             R3 R0
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K7 ["useState"]
       21 LOADN                            R3 1
       22 CALL                             R2 1 2
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K7 ["useState"]
       26 LOADB                            R5 0
       27 CALL                             R4 1 2
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 NEWTABLE                         R8 0 2
       36 MOVE                             R9 R2
       37 GETTABLEKS                       R10 R1 K3 ["relativeStickSize"]
       39 SETLIST                          R8 R9 2 [1]
       41 CALL                             R6 2 2
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R8 R8 K9 ["useContext"]
       45 GETUPVAL                         R9 3
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R8 R8 K10 ["gamepadId"]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R9 R9 K11 ["useRef"]
       52 LOADNIL                          R10
       53 CALL                             R9 1 1
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K11 ["useRef"]
       57 LOADNIL                          R11
       58 CALL                             R10 1 1
       59 GETUPVAL                         R11 2
       60 GETTABLEKS                       R11 R11 K11 ["useRef"]
       62 LOADN                            R12 0
       63 CALL                             R11 1 1
       64 GETUPVAL                         R12 2
       65 GETTABLEKS                       R12 R12 K11 ["useRef"]
       67 LOADN                            R13 0
       68 CALL                             R12 1 1
       69 GETUPVAL                         R13 2
       70 GETTABLEKS                       R13 R13 K11 ["useRef"]
       72 LOADB                            R14 0
       73 CALL                             R13 1 1
       74 GETUPVAL                         R14 2
       75 GETTABLEKS                       R14 R14 K11 ["useRef"]
       77 GETUPVAL                         R15 4
       78 CALL                             R14 1 1
       79 GETUPVAL                         R15 2
       80 GETTABLEKS                       R15 R15 K11 ["useRef"]
       82 LOADNIL                          R16
       83 CALL                             R15 1 1
       84 GETUPVAL                         R16 2
       85 GETTABLEKS                       R16 R16 K11 ["useRef"]
       87 LOADNIL                          R17
       88 CALL                             R16 1 1
       89 GETUPVAL                         R17 2
       90 GETTABLEKS                       R17 R17 K9 ["useContext"]
       92 GETUPVAL                         R18 5
       93 CALL                             R17 1 1
       94 GETTABLEKS                       R18 R17 K12 ["InputChanged"]
       96 GETTABLEKS                       R19 R17 K13 ["InputEnded"]
       98 GETUPVAL                         R20 2
       99 GETTABLEKS                       R20 R20 K8 ["useMemo"]
      101 NEWCLOSURE                       R21 P1
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R6
      104 NEWTABLE                         R22 0 2
      106 GETTABLEKS                       R23 R1 K14 ["inputState"]
      108 MOVE                             R24 R6
      109 SETLIST                          R22 R23 2 [1]
      111 CALL                             R20 2 1
      112 GETUPVAL                         R21 2
      113 GETTABLEKS                       R21 R21 K15 ["useCallback"]
      115 NEWCLOSURE                       R22 P2
      116 CAPTURE                          VAL R20
      117 CAPTURE                          VAL R6
      118 NEWTABLE                         R23 0 2
      120 MOVE                             R24 R20
      121 MOVE                             R25 R6
      122 SETLIST                          R23 R24 2 [1]
      124 CALL                             R21 2 1
      125 GETUPVAL                         R22 2
      126 GETTABLEKS                       R22 R22 K15 ["useCallback"]
      128 NEWCLOSURE                       R23 P3
      129 CAPTURE                          VAL R20
      130 CAPTURE                          VAL R6
      131 CALL                             R22 1 1
      132 GETUPVAL                         R23 2
      133 GETTABLEKS                       R23 R23 K15 ["useCallback"]
      135 NEWCLOSURE                       R24 P4
      136 CAPTURE                          VAL R3
      137 NEWTABLE                         R25 0 1
      139 MOVE                             R26 R3
      140 SETLIST                          R25 R26 1 [1]
      142 CALL                             R23 2 1
      143 GETUPVAL                         R24 2
      144 GETTABLEKS                       R24 R24 K15 ["useCallback"]
      146 NEWCLOSURE                       R25 P5
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R11
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R22
      158 CAPTURE                          UPVAL U6
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R1
      161 CAPTURE                          VAL R10
      162 CAPTURE                          UPVAL U7
      163 CAPTURE                          UPVAL U1
      164 CAPTURE                          UPVAL U4
      165 NEWTABLE                         R26 0 6
      167 MOVE                             R27 R18
      168 MOVE                             R28 R19
      169 MOVE                             R29 R8
      170 GETTABLEKS                       R30 R1 K16 ["keyCode"]
      172 MOVE                             R31 R22
      173 MOVE                             R32 R21
      174 SETLIST                          R26 R27 6 [1]
      176 CALL                             R24 2 1
      177 GETUPVAL                         R25 2
      178 GETTABLEKS                       R25 R25 K17 ["createElement"]
      180 LOADK                            R26 K18 ["Frame"]
      181 NEWTABLE                         R27 8 0
      183 GETUPVAL                         R28 2
      184 GETTABLEKS                       R28 R28 K19 ["Tag"]
      186 GETUPVAL                         R29 8
      187 LOADK                            R30 K20 ["Widget-Thumbstick"]
      188 LOADK                            R31 K21 ["X-Circle"]
      189 LOADK                            R32 K22 ["data-testid=Widget-Thumbstick"]
      190 GETTABLEKS                       R34 R1 K14 ["inputState"]
      192 JUMPIF                           R34 ; [+3]
      193 GETTABLEKS                       R34 R1 K23 ["clickInputState"]
      195 JUMPIFNOT                        R34 ; [+2]
      196 LOADK                            R33 K24 ["Active"]
      197 JUMP                             ; [+1]
      198 LOADNIL                          R33
      199 CALL                             R29 4 1
      200 SETTABLE                         R29 R27 R28
      201 GETTABLEKS                       R28 R1 K25 ["Position"]
      203 SETTABLEKS                       R28 R27 K25 ["Position"]
      205 NEWCLOSURE                       R28 P6
      206 CAPTURE                          VAL R16
      207 SETTABLEKS                       R28 R27 K26 ["ref"]
      209 GETIMPORT                        R28 K29 [UDim2.new]
      211 GETTABLEKS                       R29 R1 K2 ["relativeSocketSize"]
      213 LOADN                            R30 0
      214 GETTABLEKS                       R31 R1 K2 ["relativeSocketSize"]
      216 LOADN                            R32 0
      217 CALL                             R28 4 1
      218 SETTABLEKS                       R28 R27 K30 ["Size"]
      220 GETUPVAL                         R28 2
      221 GETTABLEKS                       R28 R28 K31 ["Change"]
      223 GETTABLEKS                       R28 R28 K32 ["AbsoluteSize"]
      225 SETTABLE                         R23 R27 R28
      226 DUPTABLE                         R28 K34 [{"Stick"}]
      227 GETUPVAL                         R29 2
      228 GETTABLEKS                       R29 R29 K17 ["createElement"]
      230 LOADK                            R30 K18 ["Frame"]
      231 NEWTABLE                         R31 8 0
      233 GETIMPORT                        R32 K29 [UDim2.new]
      235 LOADN                            R33 0
      236 MOVE                             R34 R7
      237 LOADN                            R35 0
      238 MOVE                             R36 R7
      239 CALL                             R32 4 1
      240 SETTABLEKS                       R32 R31 K30 ["Size"]
      242 MOVE                             R32 R21
      243 GETTABLEKS                       R33 R14 K35 ["current"]
      245 CALL                             R32 1 1
      246 SETTABLEKS                       R32 R31 K25 ["Position"]
      248 NEWCLOSURE                       R32 P7
      249 CAPTURE                          VAL R15
      250 SETTABLEKS                       R32 R31 K26 ["ref"]
      252 GETUPVAL                         R32 2
      253 GETTABLEKS                       R32 R32 K19 ["Tag"]
      255 GETUPVAL                         R33 8
      256 LOADK                            R34 K21 ["X-Circle"]
      257 LOADK                            R35 K36 ["data-testid=Widget-Thumbstick-Stick"]
      258 GETTABLEKS                       R37 R1 K14 ["inputState"]
      260 JUMPIF                           R37 ; [+3]
      261 GETTABLEKS                       R37 R1 K23 ["clickInputState"]
      263 JUMPIFNOT                        R37 ; [+2]
      264 LOADK                            R36 K24 ["Active"]
      265 JUMP                             ; [+1]
      266 LOADNIL                          R36
      267 JUMPIFNOT                        R4 ; [+2]
      268 LOADK                            R37 K37 ["Hovered"]
      269 JUMP                             ; [+1]
      270 LOADNIL                          R37
      271 CALL                             R33 4 1
      272 SETTABLE                         R33 R31 R32
      273 GETUPVAL                         R32 2
      274 GETTABLEKS                       R32 R32 K38 ["Event"]
      276 GETTABLEKS                       R32 R32 K39 ["InputBegan"]
      278 SETTABLE                         R24 R31 R32
      279 GETUPVAL                         R32 2
      280 GETTABLEKS                       R32 R32 K38 ["Event"]
      282 GETTABLEKS                       R32 R32 K40 ["MouseEnter"]
      284 NEWCLOSURE                       R33 P8
      285 CAPTURE                          VAL R5
      286 SETTABLE                         R33 R31 R32
      287 GETUPVAL                         R32 2
      288 GETTABLEKS                       R32 R32 K38 ["Event"]
      290 GETTABLEKS                       R32 R32 K41 ["MouseLeave"]
      292 NEWCLOSURE                       R33 P9
      293 CAPTURE                          VAL R5
      294 SETTABLE                         R33 R31 R32
      295 CALL                             R29 2 1
      296 SETTABLEKS                       R29 R28 K33 ["Stick"]
      298 CALL                             R25 3 -1
      299 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["RootContainerInputContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K7 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["MockableProxyPluginComponents"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R4 R4 K13 ["StudioDeviceEmulator"]
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K10 ["Packages"]
       47 GETTABLEKS                       R6 R6 K14 ["Framework"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R5 K15 ["Styling"]
       52 GETTABLEKS                       R6 R6 K16 ["joinTags"]
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K10 ["Packages"]
       58 GETTABLEKS                       R8 R8 K17 ["React"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R9 R0 K6 ["Src"]
       65 GETTABLEKS                       R9 R9 K7 ["Util"]
       67 GETTABLEKS                       R9 R9 K18 ["MappingsContext"]
       69 CALL                             R8 1 1
       70 GETTABLEKS                       R9 R2 K19 ["THUMBSTICK_KEYCODE_TO_THUMBSTICK_CLICK"]
       72 GETIMPORT                        R10 K22 [UDim2.new]
       74 LOADN                            R11 0
       75 LOADN                            R12 0
       76 LOADN                            R13 0
       77 LOADN                            R14 0
       78 CALL                             R10 4 1
       79 DUPCLOSURE                       R11 K23 [PROTO_0]
       80 DUPCLOSURE                       R12 K24 [PROTO_16]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R6
       90 GETTABLEKS                       R13 R7 K25 ["memo"]
       92 MOVE                             R14 R12
       93 CALL                             R13 1 -1
       94 RETURN                           R13 -1
