PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        4 GETTABLEKS                       R0 R0 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R0 R0 K4 ["CameraType"]
        8 GETIMPORT                        R1 K7 [Enum.CameraType.Attach]
       10 JUMPIFEQ                         R0 R1 ; [+5]
       12 GETIMPORT                        R1 K9 [Enum.CameraType.Scriptable]
       14 JUMPIFNOTEQ                      R0 R1 ; [+3]
       16 LOADB                            R1 1
       17 RETURN                           R1 1
       18 LOADB                            R1 0
       19 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        MATH_ABS R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K2 [math.abs]
        4 CALL                             R2 1 1
        5 LOADK                            R3 K3 [0.001]
        6 JUMPIFNOTLT                      R3 R2 ; [+31]
        8 ADDK                             R3 R0 K4 [0.48]
        9 DIV                              R2 R3 R1
       10 SUBK                             R4 R0 K4 [0.48]
       11 DIV                              R3 R4 R1
       12 JUMPIFNOTLT                      R3 R2 ; [+4]
       14 MOVE                             R4 R3
       15 MOVE                             R3 R2
       16 MOVE                             R2 R4
       17 GETUPVAL                         R4 0
       18 JUMPIFNOTLT                      R4 R2 ; [+2]
       20 SETUPVAL                         R2 0
       21 GETUPVAL                         R4 1
       22 JUMPIFNOTLT                      R3 R4 ; [+2]
       24 SETUPVAL                         R3 1
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R5 1
       27 JUMPIFNOTLT                      R5 R4 ; [+3]
       29 LOADN                            R4 0
       30 RETURN                           R4 1
       31 GETUPVAL                         R4 1
       32 LOADN                            R5 0
       33 JUMPIFNOTLT                      R4 R5 ; [+16]
       35 LOADN                            R4 0
       36 RETURN                           R4 1
       37 JUMP                             ; [+12]
       38 MINUS                            R3 R0
       39 SUBK                             R2 R3 K4 [0.48]
       40 LOADN                            R3 0
       41 JUMPIFLT                         R3 R2 ; [+6]
       43 MINUS                            R3 R0
       44 ADDK                             R2 R3 K4 [0.48]
       45 LOADN                            R3 0
       46 JUMPIFNOTLT                      R2 R3 ; [+3]
       48 LOADN                            R2 0
       49 RETURN                           R2 1
       50 LOADNIL                          R2
       51 RETURN                           R2 1

PROTO_2:
        0 LOADN                            R2 -100
        1 LOADN                            R3 100
        2 MINUS                            R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          REF R2
        5 CAPTURE                          REF R3
        6 MOVE                             R6 R5
        7 GETTABLEKS                       R7 R4 K0 ["X"]
        9 GETTABLEKS                       R8 R1 K0 ["X"]
       11 CALL                             R6 2 1
       12 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       14 CLOSEUPVALS                      R2
       15 RETURN                           R0 0
       16 MOVE                             R6 R5
       17 GETTABLEKS                       R7 R4 K2 ["Y"]
       19 GETTABLEKS                       R8 R1 K2 ["Y"]
       21 CALL                             R6 2 1
       22 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       24 CLOSEUPVALS                      R2
       25 RETURN                           R0 0
       26 MOVE                             R6 R5
       27 GETTABLEKS                       R7 R4 K3 ["Z"]
       29 GETTABLEKS                       R8 R1 K3 ["Z"]
       31 CALL                             R6 2 1
       32 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       34 CLOSEUPVALS                      R2
       35 RETURN                           R0 0
       36 LOADN                            R6 0
       37 JUMPIFNOTLT                      R6 R2 ; [+5]
       39 MUL                              R7 R1 R2
       40 ADD                              R6 R0 R7
       41 CLOSEUPVALS                      R2
       42 RETURN                           R6 1
       43 MUL                              R7 R1 R3
       44 ADD                              R6 R0 R7
       45 CLOSEUPVALS                      R2
       46 RETURN                           R6 1

PROTO_3:
        0 NEWTABLE                         R0 0 3
        2 LOADK                            R1 K0 ["n"]
        3 LOADK                            R2 K1 ["0"]
        4 LOADK                            R3 K2 ["p"]
        5 SETLIST                          R0 R1 3 [1]
        7 NEWTABLE                         R1 0 0
        9 LOADN                            R4 -1
       10 LOADN                            R2 1
       11 LOADN                            R3 1
       12 FORNPREP                         R2
       13 LOADN                            R7 -1
       14 LOADN                            R5 1
       15 LOADN                            R6 1
       16 FORNPREP                         R5
       17 LOADN                            R10 -1
       18 LOADN                            R8 1
       19 LOADN                            R9 1
       20 FORNPREP                         R8
       21 ADDK                             R15 R4 K3 [2]
       22 GETTABLE                         R12 R0 R15
       23 ADDK                             R15 R7 K3 [2]
       24 GETTABLE                         R13 R0 R15
       25 ADDK                             R15 R10 K3 [2]
       26 GETTABLE                         R14 R0 R15
       27 CONCAT                           R11 R12 R14
       28 GETIMPORT                        R12 K6 [CFrame.new]
       30 FASTCALL                         VECTOR ; [+2]
       31 GETIMPORT                        R13 K8 [Vector3.new]
       33 CALL                             R13 0 1
       34 FASTCALL3                        VECTOR R4 R7 R10
       36 MOVE                             R16 R4
       37 MOVE                             R17 R7
       38 MOVE                             R18 R10
       39 GETIMPORT                        R15 K8 [Vector3.new]
       41 CALL                             R15 3 1
       42 GETTABLEKS                       R15 R15 K9 ["Unit"]
       44 MINUS                            R14 R15
       45 CALL                             R12 2 1
       46 SETTABLE                         R12 R1 R11
       47 FORNLOOP                         R8
       48 FORNLOOP                         R5
       49 FORNLOOP                         R2
       50 GETIMPORT                        R2 K11 [CFrame.fromEulerAnglesYXZ]
       52 LOADK                            R3 K12 [-1.5707963267949]
       53 LOADK                            R4 K13 [3.14159265358979]
       54 LOADN                            R5 0
       55 CALL                             R2 3 1
       56 SETTABLEKS                       R2 R1 K14 ["0p0"]
       58 GETIMPORT                        R2 K16 [CFrame.fromEulerAnglesXYZ]
       60 LOADK                            R3 K12 [-1.5707963267949]
       61 LOADK                            R4 K13 [3.14159265358979]
       62 LOADN                            R5 0
       63 CALL                             R2 3 1
       64 SETTABLEKS                       R2 R1 K17 ["0n0"]
       66 RETURN                           R1 1

PROTO_4:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Decal"] ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Hover"]
        9 GETTABLEKS                       R3 R0 K3 ["Name"]
       11 GETTABLE                         R1 R2 R3
       12 SETTABLEKS                       R1 R0 K4 ["Texture"]
       14 RETURN                           R0 0
       15 LOADK                            R1 K5 [0.3]
       16 SETTABLEKS                       R1 R0 K6 ["Transparency"]
       18 RETURN                           R0 0

PROTO_5:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        4 JUMPIFNOTEQKS                    R1 K1 ["Decal"] ; [+10]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Normal"]
        9 GETTABLEKS                       R3 R0 K3 ["Name"]
       11 GETTABLE                         R1 R2 R3
       12 SETTABLEKS                       R1 R0 K4 ["Texture"]
       14 RETURN                           R0 0
       15 LOADN                            R1 1
       16 SETTABLEKS                       R1 R0 K5 ["Transparency"]
       18 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R1 0
        1 JUMPIFNOTLE                      R1 R0 ; [+3]
        3 LOADK                            R1 K0 ["p"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K1 ["n"]
        6 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R5 R0 K0 ["X"]
        2 FASTCALL1                        MATH_ABS R5 ; [+2]
        3 GETIMPORT                        R4 K3 [math.abs]
        5 CALL                             R4 1 1
        6 MOVE                             R1 R4
        7 GETTABLEKS                       R5 R0 K4 ["Y"]
        9 FASTCALL1                        MATH_ABS R5 ; [+2]
       10 GETIMPORT                        R4 K3 [math.abs]
       12 CALL                             R4 1 1
       13 MOVE                             R2 R4
       14 GETTABLEKS                       R4 R0 K5 ["Z"]
       16 FASTCALL1                        MATH_ABS R4 ; [+2]
       17 GETIMPORT                        R3 K3 [math.abs]
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K6 [PROTO_6]
       21 ADD                              R6 R1 R2
       22 ADD                              R5 R6 R3
       23 LOADK                            R6 K7 [1.056]
       24 JUMPIFNOTLT                      R6 R5 ; [+27]
       26 GETTABLEKS                       R9 R0 K0 ["X"]
       28 LOADN                            R10 0
       29 JUMPIFNOTLE                      R10 R9 ; [+3]
       31 LOADK                            R6 K8 ["p"]
       32 JUMP                             ; [+1]
       33 LOADK                            R6 K9 ["n"]
       34 GETTABLEKS                       R9 R0 K4 ["Y"]
       36 LOADN                            R10 0
       37 JUMPIFNOTLE                      R10 R9 ; [+3]
       39 LOADK                            R7 K8 ["p"]
       40 JUMP                             ; [+1]
       41 LOADK                            R7 K9 ["n"]
       42 GETTABLEKS                       R9 R0 K5 ["Z"]
       44 LOADN                            R10 0
       45 JUMPIFNOTLE                      R10 R9 ; [+3]
       47 LOADK                            R8 K8 ["p"]
       48 JUMP                             ; [+1]
       49 LOADK                            R8 K9 ["n"]
       50 CONCAT                           R5 R6 R8
       51 RETURN                           R5 1
       52 JUMPIFNOTLT                      R2 R1 ; [+14]
       54 JUMPIFNOTLT                      R3 R1 ; [+12]
       56 GETTABLEKS                       R8 R0 K0 ["X"]
       58 LOADN                            R9 0
       59 JUMPIFNOTLE                      R9 R8 ; [+3]
       61 LOADK                            R6 K8 ["p"]
       62 JUMP                             ; [+1]
       63 LOADK                            R6 K9 ["n"]
       64 LOADK                            R7 K10 ["00"]
       65 CONCAT                           R5 R6 R7
       66 RETURN                           R5 1
       67 JUMPIFNOTLT                      R1 R2 ; [+15]
       69 JUMPIFNOTLT                      R3 R2 ; [+13]
       71 LOADK                            R6 K11 ["0"]
       72 GETTABLEKS                       R9 R0 K4 ["Y"]
       74 LOADN                            R10 0
       75 JUMPIFNOTLE                      R10 R9 ; [+3]
       77 LOADK                            R7 K8 ["p"]
       78 JUMP                             ; [+1]
       79 LOADK                            R7 K9 ["n"]
       80 LOADK                            R8 K11 ["0"]
       81 CONCAT                           R5 R6 R8
       82 RETURN                           R5 1
       83 LOADK                            R6 K10 ["00"]
       84 GETTABLEKS                       R8 R0 K5 ["Z"]
       86 LOADN                            R9 0
       87 JUMPIFNOTLE                      R9 R8 ; [+3]
       89 LOADK                            R7 K8 ["p"]
       90 JUMP                             ; [+1]
       91 LOADK                            R7 K9 ["n"]
       92 CONCAT                           R5 R6 R7
       93 RETURN                           R5 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frame"]
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetGuiInset"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["AbsolutePosition"]
        7 GETTABLEKS                       R5 R5 K2 ["X"]
        9 SUB                              R4 R0 R5
       10 GETTABLEKS                       R5 R2 K2 ["X"]
       12 SUB                              R3 R4 R5
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K1 ["AbsolutePosition"]
       16 GETTABLEKS                       R6 R6 K3 ["Y"]
       18 SUB                              R5 R1 R6
       19 GETTABLEKS                       R6 R2 K3 ["Y"]
       21 SUB                              R4 R5 R6
       22 RETURN                           R3 2

PROTO_11:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["Workspace"]
        4 GETTABLEKS                       R3 R3 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R3 R3 K4 ["CameraType"]
        8 GETIMPORT                        R4 K7 [Enum.CameraType.Attach]
       10 JUMPIFEQ                         R3 R4 ; [+5]
       12 GETIMPORT                        R4 K9 [Enum.CameraType.Scriptable]
       14 JUMPIFNOTEQ                      R3 R4 ; [+3]
       16 LOADB                            R2 1
       17 JUMP                             ; [+1]
       18 LOADB                            R2 0
       19 JUMPIFNOT                        R2 ; [+1]
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 0
       22 NAMECALL                         R4 R4 K10 ["GetGuiInset"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K11 ["AbsolutePosition"]
       28 GETTABLEKS                       R7 R7 K12 ["X"]
       30 SUB                              R6 R0 R7
       31 GETTABLEKS                       R7 R4 K12 ["X"]
       33 SUB                              R5 R6 R7
       34 GETUPVAL                         R8 1
       35 GETTABLEKS                       R8 R8 K11 ["AbsolutePosition"]
       37 GETTABLEKS                       R8 R8 K13 ["Y"]
       39 SUB                              R7 R1 R8
       40 GETTABLEKS                       R8 R4 K13 ["Y"]
       42 SUB                              R6 R7 R8
       43 MOVE                             R2 R5
       44 MOVE                             R3 R6
       45 GETUPVAL                         R4 2
       46 GETUPVAL                         R7 3
       47 DIV                              R6 R2 R7
       48 GETUPVAL                         R8 3
       49 DIV                              R7 R3 R8
       50 LOADN                            R8 0
       51 NAMECALL                         R4 R4 K14 ["ViewportPointToRay"]
       53 CALL                             R4 4 1
       54 GETUPVAL                         R5 4
       55 GETTABLEKS                       R6 R4 K15 ["Origin"]
       57 GETTABLEKS                       R7 R4 K16 ["Direction"]
       59 CALL                             R5 2 1
       60 JUMPIFNOT                        R5 ; [+47]
       61 GETUPVAL                         R6 5
       62 MOVE                             R7 R5
       63 CALL                             R6 1 1
       64 GETUPVAL                         R8 6
       65 GETTABLE                         R7 R8 R6
       66 GETUPVAL                         R8 7
       67 JUMPIFEQ                         R8 R7 ; [+61]
       69 GETUPVAL                         R8 7
       70 JUMPIF                           R8 ; [+1]
       71 JUMP                             ; [+16]
       72 GETTABLEKS                       R9 R8 K17 ["ClassName"]
       74 JUMPIFNOTEQKS                    R9 K18 ["Decal"] ; [+10]
       76 GETUPVAL                         R10 8
       77 GETTABLEKS                       R10 R10 K19 ["Normal"]
       79 GETTABLEKS                       R11 R8 K20 ["Name"]
       81 GETTABLE                         R9 R10 R11
       82 SETTABLEKS                       R9 R8 K21 ["Texture"]
       84 JUMP                             ; [+3]
       85 LOADN                            R9 1
       86 SETTABLEKS                       R9 R8 K22 ["Transparency"]
       88 JUMPIF                           R7 ; [+1]
       89 JUMP                             ; [+16]
       90 GETTABLEKS                       R8 R7 K17 ["ClassName"]
       92 JUMPIFNOTEQKS                    R8 K18 ["Decal"] ; [+10]
       94 GETUPVAL                         R9 8
       95 GETTABLEKS                       R9 R9 K23 ["Hover"]
       97 GETTABLEKS                       R10 R7 K20 ["Name"]
       99 GETTABLE                         R8 R9 R10
      100 SETTABLEKS                       R8 R7 K21 ["Texture"]
      102 JUMP                             ; [+3]
      103 LOADK                            R8 K24 [0.3]
      104 SETTABLEKS                       R8 R7 K22 ["Transparency"]
      106 SETUPVAL                         R7 7
      107 RETURN                           R0 0
      108 GETUPVAL                         R6 7
      109 JUMPIF                           R6 ; [+1]
      110 JUMP                             ; [+16]
      111 GETTABLEKS                       R7 R6 K17 ["ClassName"]
      113 JUMPIFNOTEQKS                    R7 K18 ["Decal"] ; [+10]
      115 GETUPVAL                         R8 8
      116 GETTABLEKS                       R8 R8 K19 ["Normal"]
      118 GETTABLEKS                       R9 R6 K20 ["Name"]
      120 GETTABLE                         R7 R8 R9
      121 SETTABLEKS                       R7 R6 K21 ["Texture"]
      123 JUMP                             ; [+3]
      124 LOADN                            R7 1
      125 SETTABLEKS                       R7 R6 K22 ["Transparency"]
      127 LOADNIL                          R6
      128 SETUPVAL                         R6 7
      129 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R5 0
        1 MOVE                             R7 R0
        2 NAMECALL                         R5 R5 K1 ["Dot"]
        4 CALL                             R5 2 1
        5 FASTCALL1                        MATH_ABS R5 ; [+2]
        6 GETIMPORT                        R4 K4 [math.abs]
        8 CALL                             R4 1 1
        9 SUBK                             R3 R4 K0 [1]
       10 FASTCALL1                        MATH_ABS R3 ; [+2]
       11 GETIMPORT                        R2 K4 [math.abs]
       13 CALL                             R2 1 1
       14 LOADK                            R3 K5 [0.001]
       15 JUMPIFLT                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K0 ["LookVector"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 GETUPVAL                         R3 2
       11 LOADK                            R10 K2 [{1, 0, 0}]
       12 NAMECALL                         R8 R1 K3 ["Dot"]
       14 CALL                             R8 2 1
       15 FASTCALL1                        MATH_ABS R8 ; [+2]
       16 GETIMPORT                        R7 K6 [math.abs]
       18 CALL                             R7 1 1
       19 SUBK                             R6 R7 K1 [1]
       20 FASTCALL1                        MATH_ABS R6 ; [+2]
       21 GETIMPORT                        R5 K6 [math.abs]
       23 CALL                             R5 1 1
       24 LOADK                            R6 K7 [0.001]
       25 JUMPIFLT                         R5 R6 ; [+2]
       27 LOADB                            R4 0 +1
       28 LOADB                            R4 1
       29 JUMPIF                           R4 ; [+37]
       30 LOADK                            R10 K8 [{0, 1, 0}]
       31 NAMECALL                         R8 R1 K3 ["Dot"]
       33 CALL                             R8 2 1
       34 FASTCALL1                        MATH_ABS R8 ; [+2]
       35 GETIMPORT                        R7 K6 [math.abs]
       37 CALL                             R7 1 1
       38 SUBK                             R6 R7 K1 [1]
       39 FASTCALL1                        MATH_ABS R6 ; [+2]
       40 GETIMPORT                        R5 K6 [math.abs]
       42 CALL                             R5 1 1
       43 LOADK                            R6 K7 [0.001]
       44 JUMPIFLT                         R5 R6 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 JUMPIF                           R4 ; [+18]
       49 LOADK                            R10 K9 [{0, 0, 1}]
       50 NAMECALL                         R8 R1 K3 ["Dot"]
       52 CALL                             R8 2 1
       53 FASTCALL1                        MATH_ABS R8 ; [+2]
       54 GETIMPORT                        R7 K6 [math.abs]
       56 CALL                             R7 1 1
       57 SUBK                             R6 R7 K1 [1]
       58 FASTCALL1                        MATH_ABS R6 ; [+2]
       59 GETIMPORT                        R5 K6 [math.abs]
       61 CALL                             R5 1 1
       62 LOADK                            R6 K7 [0.001]
       63 JUMPIFLT                         R5 R6 ; [+2]
       65 LOADB                            R4 0 +1
       66 LOADB                            R4 1
       67 SETTABLEKS                       R4 R3 K10 ["Visible"]
       69 RETURN                           R0 0

PROTO_14:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 JUMP                             ; [+16]
        3 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        5 JUMPIFNOTEQKS                    R1 K1 ["Decal"] ; [+10]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["Normal"]
       10 GETTABLEKS                       R3 R0 K3 ["Name"]
       12 GETTABLE                         R1 R2 R3
       13 SETTABLEKS                       R1 R0 K4 ["Texture"]
       15 JUMP                             ; [+3]
       16 LOADN                            R1 1
       17 SETTABLEKS                       R1 R0 K5 ["Transparency"]
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 0
       21 GETUPVAL                         R0 2
       22 LOADB                            R1 0
       23 SETTABLEKS                       R1 R0 K6 ["Visible"]
       25 LOADB                            R0 0
       26 SETUPVAL                         R0 3
       27 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        5 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        7 JUMPIFNOTEQ                      R1 R2 ; [+67]
        9 GETTABLEKS                       R1 R0 K4 ["Position"]
       11 GETTABLEKS                       R1 R1 K5 ["X"]
       13 GETTABLEKS                       R2 R0 K4 ["Position"]
       15 GETTABLEKS                       R2 R2 K6 ["Y"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K5 ["X"]
       20 SUB                              R5 R6 R1
       21 FASTCALL1                        MATH_ABS R5 ; [+2]
       22 GETIMPORT                        R4 K9 [math.abs]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K6 ["Y"]
       28 SUB                              R6 R7 R2
       29 FASTCALL1                        MATH_ABS R6 ; [+2]
       30 GETIMPORT                        R5 K9 [math.abs]
       32 CALL                             R5 1 1
       33 ADD                              R3 R4 R5
       34 LOADN                            R4 5
       35 JUMPIFNOTLT                      R4 R3 ; [+39]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K5 ["X"]
       40 GETTABLEKS                       R6 R6 K10 ["Offset"]
       42 ADD                              R5 R6 R1
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K5 ["X"]
       46 SUB                              R4 R5 R6
       47 GETUPVAL                         R7 1
       48 GETTABLEKS                       R7 R7 K6 ["Y"]
       50 GETTABLEKS                       R7 R7 K10 ["Offset"]
       52 ADD                              R6 R7 R2
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K6 ["Y"]
       56 SUB                              R5 R6 R7
       57 GETUPVAL                         R6 2
       58 GETIMPORT                        R7 K13 [UDim2.new]
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K5 ["X"]
       63 GETTABLEKS                       R8 R8 K14 ["Scale"]
       65 MOVE                             R9 R4
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K6 ["Y"]
       69 GETTABLEKS                       R10 R10 K14 ["Scale"]
       71 MOVE                             R11 R5
       72 CALL                             R7 4 1
       73 SETTABLEKS                       R7 R6 K4 ["Position"]
       75 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R2 K1 [game]
        2 GETTABLEKS                       R2 R2 K2 ["Workspace"]
        4 GETTABLEKS                       R2 R2 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R2 R2 K4 ["ViewportSize"]
        8 GETTABLE                         R1 R2 R0
        9 LOADK                            R2 K5 [0.5]
       10 LOADK                            R3 K5 [0.5]
       11 GETUPVAL                         R4 0
       12 JUMPIFNOTLT                      R4 R1 ; [+19]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K6 ["AbsolutePosition"]
       17 GETTABLE                         R5 R6 R0
       18 LOADN                            R6 0
       19 GETUPVAL                         R8 0
       20 SUB                              R7 R1 R8
       21 FASTCALL                         MATH_CLAMP ; [+2]
       22 GETIMPORT                        R4 K9 [math.clamp]
       24 CALL                             R4 3 1
       25 GETUPVAL                         R6 0
       26 SUB                              R5 R1 R6
       27 DIV                              R2 R4 R5
       28 GETUPVAL                         R7 0
       29 MUL                              R6 R2 R7
       30 ADD                              R5 R4 R6
       31 DIV                              R3 R5 R1
       32 GETUPVAL                         R4 2
       33 LOADK                            R7 K10 ["ViewSelector_Position"]
       34 MOVE                             R8 R0
       35 CONCAT                           R6 R7 R8
       36 MOVE                             R7 R2
       37 NAMECALL                         R4 R4 K11 ["SetSetting"]
       39 CALL                             R4 3 0
       40 RETURN                           R2 2

PROTO_18:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETIMPORT                        R4 K2 [game]
        6 GETTABLEKS                       R4 R4 K3 ["Workspace"]
        8 GETTABLEKS                       R4 R4 K4 ["CurrentCamera"]
       10 GETTABLEKS                       R4 R4 K5 ["ViewportSize"]
       12 GETTABLEKS                       R3 R4 K0 ["X"]
       14 LOADK                            R4 K6 [0.5]
       15 LOADK                            R5 K6 [0.5]
       16 GETUPVAL                         R6 0
       17 JUMPIFNOTLT                      R6 R3 ; [+20]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K7 ["AbsolutePosition"]
       22 GETTABLEKS                       R7 R8 K0 ["X"]
       24 LOADN                            R8 0
       25 GETUPVAL                         R10 0
       26 SUB                              R9 R3 R10
       27 FASTCALL                         MATH_CLAMP ; [+2]
       28 GETIMPORT                        R6 K10 [math.clamp]
       30 CALL                             R6 3 1
       31 GETUPVAL                         R8 0
       32 SUB                              R7 R3 R8
       33 DIV                              R4 R6 R7
       34 GETUPVAL                         R9 0
       35 MUL                              R8 R4 R9
       36 ADD                              R7 R6 R8
       37 DIV                              R5 R7 R3
       38 GETUPVAL                         R6 2
       39 LOADK                            R8 K11 ["ViewSelector_PositionX"]
       40 MOVE                             R9 R4
       41 NAMECALL                         R6 R6 K12 ["SetSetting"]
       43 CALL                             R6 3 0
       44 MOVE                             R1 R4
       45 MOVE                             R2 R5
       46 GETIMPORT                        R6 K2 [game]
       48 GETTABLEKS                       R6 R6 K3 ["Workspace"]
       50 GETTABLEKS                       R6 R6 K4 ["CurrentCamera"]
       52 GETTABLEKS                       R6 R6 K5 ["ViewportSize"]
       54 GETTABLEKS                       R5 R6 K13 ["Y"]
       56 LOADK                            R6 K6 [0.5]
       57 LOADK                            R7 K6 [0.5]
       58 GETUPVAL                         R8 0
       59 JUMPIFNOTLT                      R8 R5 ; [+20]
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R10 R10 K7 ["AbsolutePosition"]
       64 GETTABLEKS                       R9 R10 K13 ["Y"]
       66 LOADN                            R10 0
       67 GETUPVAL                         R12 0
       68 SUB                              R11 R5 R12
       69 FASTCALL                         MATH_CLAMP ; [+2]
       70 GETIMPORT                        R8 K10 [math.clamp]
       72 CALL                             R8 3 1
       73 GETUPVAL                         R10 0
       74 SUB                              R9 R5 R10
       75 DIV                              R6 R8 R9
       76 GETUPVAL                         R11 0
       77 MUL                              R10 R6 R11
       78 ADD                              R9 R8 R10
       79 DIV                              R7 R9 R5
       80 GETUPVAL                         R8 2
       81 LOADK                            R10 K14 ["ViewSelector_PositionY"]
       82 MOVE                             R11 R6
       83 NAMECALL                         R8 R8 K12 ["SetSetting"]
       85 CALL                             R8 3 0
       86 MOVE                             R3 R6
       87 MOVE                             R4 R7
       88 GETUPVAL                         R5 1
       89 GETIMPORT                        R6 K17 [Vector2.new]
       91 MOVE                             R7 R1
       92 MOVE                             R8 R3
       93 CALL                             R6 2 1
       94 SETTABLEKS                       R6 R5 K18 ["AnchorPoint"]
       96 GETUPVAL                         R5 1
       97 GETIMPORT                        R6 K20 [UDim2.new]
       99 MOVE                             R7 R2
      100 LOADN                            R8 0
      101 MOVE                             R9 R4
      102 LOADN                            R10 0
      103 CALL                             R6 4 1
      104 SETTABLEKS                       R6 R5 K21 ["Position"]
      106 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+7]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+4]
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 0
       10 GETUPVAL                         R1 1
       11 CALL                             R1 0 0
       12 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 MOVE                             R3 R0
        3 MOVE                             R4 R1
        4 CALL                             R2 2 1
        5 SETUPVAL                         R2 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K3 ["Position"]
        9 SETUPVAL                         R2 1
       10 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["InterpolateView"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["X"]
        6 SUB                              R4 R5 R0
        7 FASTCALL1                        MATH_ABS R4 ; [+2]
        8 GETIMPORT                        R3 K3 [math.abs]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K4 ["Y"]
       14 SUB                              R5 R6 R1
       15 FASTCALL1                        MATH_ABS R5 ; [+2]
       16 GETIMPORT                        R4 K3 [math.abs]
       18 CALL                             R4 1 1
       19 ADD                              R2 R3 R4
       20 LOADNIL                          R3
       21 SETUPVAL                         R3 0
       22 LOADN                            R3 5
       23 JUMPIFNOTLE                      R2 R3 ; [+14]
       25 GETUPVAL                         R3 1
       26 JUMPIFNOT                        R3 ; [+13]
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K5 ["Name"]
       31 GETTABLE                         R3 R4 R5
       32 GETUPVAL                         R4 3
       33 MOVE                             R6 R3
       34 NAMECALL                         R4 R4 K6 ["InterpolateView"]
       36 CALL                             R4 2 0
       37 RETURN                           R0 0
       38 GETUPVAL                         R3 4
       39 CALL                             R3 0 0
       40 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["CFrame"]
        3 MUL                              R2 R3 R1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["LookVector"]
        7 NAMECALL                         R3 R1 K2 ["Dot"]
        9 CALL                             R3 2 1
       10 LOADN                            R4 0
       11 JUMPIFNOTLT                      R3 R4 ; [+8]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K4 ["ZIndex"]
       16 ADDK                             R3 R4 K3 [1]
       17 SETTABLEKS                       R3 R0 K4 ["ZIndex"]
       19 JUMP                             ; [+6]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K4 ["ZIndex"]
       23 SUBK                             R3 R4 K3 [1]
       24 SETTABLEKS                       R3 R0 K4 ["ZIndex"]
       26 GETUPVAL                         R3 3
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K5 ["WorldToViewportPoint"]
       30 CALL                             R3 2 2
       31 JUMPIFNOT                        R4 ; [+19]
       32 LOADB                            R5 1
       33 SETTABLEKS                       R5 R0 K6 ["Visible"]
       35 GETIMPORT                        R5 K9 [UDim2.new]
       37 LOADN                            R6 0
       38 GETTABLEKS                       R8 R3 K10 ["X"]
       40 GETUPVAL                         R9 4
       41 MUL                              R7 R8 R9
       42 LOADN                            R8 0
       43 GETTABLEKS                       R10 R3 K11 ["Y"]
       45 GETUPVAL                         R11 4
       46 MUL                              R9 R10 R11
       47 CALL                             R5 4 1
       48 SETTABLEKS                       R5 R0 K12 ["Position"]
       50 RETURN                           R0 0
       51 LOADB                            R5 0
       52 SETTABLEKS                       R5 R0 K6 ["Visible"]
       54 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        4 GETTABLEKS                       R0 R0 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R1 R0 K4 ["CFrame"]
        8 GETUPVAL                         R2 0
        9 GETIMPORT                        R3 K6 [CFrame.fromMatrix]
       11 GETTABLEKS                       R6 R1 K8 ["LookVector"]
       13 MINUS                            R5 R6
       14 MULK                             R4 R5 K7 [1.9]
       15 GETTABLEKS                       R5 R1 K9 ["RightVector"]
       17 GETTABLEKS                       R6 R1 K10 ["UpVector"]
       19 GETTABLEKS                       R8 R1 K8 ["LookVector"]
       21 MINUS                            R7 R8
       22 CALL                             R3 4 1
       23 SETTABLEKS                       R3 R2 K4 ["CFrame"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K4 ["CFrame"]
       28 GETUPVAL                         R3 1
       29 JUMPIFEQ                         R2 R3 ; [+33]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K4 ["CFrame"]
       34 SETUPVAL                         R2 1
       35 GETUPVAL                         R2 2
       36 GETUPVAL                         R3 1
       37 LOADK                            R5 K11 [{-1, -1, -1}]
       38 NAMECALL                         R3 R3 K12 ["VectorToWorldSpace"]
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R2 K13 ["LightDirection"]
       43 NEWCLOSURE                       R2 P0
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U4
       49 MOVE                             R3 R2
       50 GETUPVAL                         R4 5
       51 LOADK                            R5 K14 [{0.576, -0.48, -0.48}]
       52 CALL                             R3 2 0
       53 MOVE                             R3 R2
       54 GETUPVAL                         R4 6
       55 LOADK                            R5 K15 [{-0.48, 0.576, -0.48}]
       56 CALL                             R3 2 0
       57 MOVE                             R3 R2
       58 GETUPVAL                         R4 7
       59 LOADK                            R5 K16 [{-0.48, -0.48, 0.576}]
       60 CALL                             R3 2 0
       61 GETUPVAL                         R3 8
       62 CALL                             R3 0 0
       63 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R1 R0 K0 ["RightVector"]
        5 GETTABLEKS                       R2 R0 K1 ["UpVector"]
        7 MINUS                            R5 R1
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R6 R6 K2 ["Y"]
       11 MUL                              R4 R5 R6
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K3 ["X"]
       15 MUL                              R5 R2 R6
       16 ADD                              R3 R4 R5
       17 GETIMPORT                        R4 K6 [CFrame.fromAxisAngle]
       19 MOVE                             R5 R3
       20 LOADK                            R6 K7 [1.5707963267949]
       21 CALL                             R4 2 1
       22 GETTABLEKS                       R6 R0 K8 ["LookVector"]
       24 MUL                              R5 R4 R6
       25 MINUS                            R7 R5
       26 MULK                             R6 R7 K9 [2]
       27 GETUPVAL                         R7 2
       28 MOVE                             R8 R6
       29 MOVE                             R9 R5
       30 CALL                             R7 2 1
       31 JUMPIFNOT                        R7 ; [+10]
       32 GETUPVAL                         R8 3
       33 MOVE                             R9 R7
       34 CALL                             R8 1 1
       35 GETUPVAL                         R10 4
       36 GETTABLE                         R9 R10 R8
       37 GETUPVAL                         R10 5
       38 MOVE                             R12 R9
       39 NAMECALL                         R10 R10 K10 ["InterpolateView"]
       41 CALL                             R10 2 0
       42 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Color3.fromRGB]
        3 LOADN                            R2 79
        4 LOADN                            R3 178
        5 LOADN                            R4 229
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K3 ["ImageColor3"]
        9 GETUPVAL                         R0 0
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K4 ["ImageTransparency"]
       13 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [Color3.fromRGB]
        3 LOADN                            R2 247
        4 LOADN                            R3 249
        5 LOADN                            R4 255
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K3 ["ImageColor3"]
        9 GETUPVAL                         R0 0
       10 LOADK                            R1 K4 [0.6]
       11 SETTABLEKS                       R1 R0 K5 ["ImageTransparency"]
       13 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["MouseButton1Click"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R2 R2 K1 ["Connect"]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R0 K2 ["MouseButton1Up"]
       14 GETUPVAL                         R4 5
       15 NAMECALL                         R2 R2 K1 ["Connect"]
       17 CALL                             R2 2 0
       18 GETTABLEKS                       R2 R0 K3 ["MouseEnter"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R2 R2 K1 ["Connect"]
       24 CALL                             R2 2 0
       25 GETTABLEKS                       R2 R0 K4 ["MouseLeave"]
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          VAL R0
       29 NAMECALL                         R2 R2 K1 ["Connect"]
       31 CALL                             R2 2 0
       32 RETURN                           R0 0

PROTO_29:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R3 R3 K2 ["Workspace"]
        4 GETTABLEKS                       R3 R3 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R3 R3 K4 ["ViewportSize"]
        8 GETTABLE                         R2 R3 R0
        9 LOADK                            R3 K5 [0.5]
       10 LOADK                            R4 K5 [0.5]
       11 GETUPVAL                         R5 0
       12 JUMPIFNOTLT                      R5 R2 ; [+16]
       14 GETUPVAL                         R5 1
       15 LOADK                            R8 K6 ["ViewSelector_Position"]
       16 MOVE                             R9 R0
       17 CONCAT                           R7 R8 R9
       18 NAMECALL                         R5 R5 K7 ["GetSetting"]
       20 CALL                             R5 2 1
       21 OR                               R3 R5 R1
       22 GETUPVAL                         R7 0
       23 SUB                              R6 R2 R7
       24 MUL                              R5 R3 R6
       25 GETUPVAL                         R8 0
       26 MUL                              R7 R3 R8
       27 ADD                              R6 R5 R7
       28 DIV                              R4 R6 R2
       29 RETURN                           R3 2

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 GETUPVAL                         R1 1
        6 JUMPIF                           R1 ; [+16]
        7 GETUPVAL                         R1 2
        8 LOADK                            R3 K2 ["rbxasset://models/ViewSelector/ViewSelector.rbxm"]
        9 NAMECALL                         R1 R1 K3 ["LoadLocalAsset"]
       11 CALL                             R1 2 1
       12 LOADK                            R4 K4 ["Panel"]
       13 NAMECALL                         R2 R1 K5 ["WaitForChild"]
       15 CALL                             R2 2 1
       16 SETUPVAL                         R2 1
       17 GETIMPORT                        R2 K7 [pcall]
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 CALL                             R2 1 0
       23 GETIMPORT                        R1 K9 [ipairs]
       25 GETUPVAL                         R2 1
       26 NAMECALL                         R2 R2 K10 ["GetChildren"]
       28 CALL                             R2 1 -1
       29 CALL                             R1 -1 3
       30 FORGPREP_INEXT                   R1
       31 GETTABLEKS                       R6 R5 K11 ["Name"]
       33 JUMPIFEQKS                       R6 K12 ["CamSpeed"] ; [+12]
       35 NAMECALL                         R6 R5 K13 ["Clone"]
       37 CALL                             R6 1 1
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K14 ["frame"]
       41 NAMECALL                         R7 R7 K15 ["getValue"]
       43 CALL                             R7 1 1
       44 SETTABLEKS                       R7 R6 K16 ["Parent"]
       46 FORGLOOP                         R1 2 [inext] ; [-16]
       48 LOADNIL                          R1
       49 LOADNIL                          R2
       50 LOADNIL                          R3
       51 LOADNIL                          R4
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K14 ["frame"]
       55 NAMECALL                         R5 R5 K15 ["getValue"]
       57 CALL                             R5 1 1
       58 LOADK                            R8 K17 ["Viewport"]
       59 NAMECALL                         R6 R5 K5 ["WaitForChild"]
       61 CALL                             R6 2 1
       62 GETTABLEKS                       R7 R6 K18 ["AbsoluteSize"]
       64 GETTABLEKS                       R7 R7 K19 ["X"]
       66 LOADK                            R10 K20 ["EventReceiver"]
       67 NAMECALL                         R8 R6 K5 ["WaitForChild"]
       69 CALL                             R8 2 1
       70 LOADK                            R11 K21 ["Model"]
       71 NAMECALL                         R9 R6 K5 ["WaitForChild"]
       73 CALL                             R9 2 1
       74 LOADK                            R12 K19 ["X"]
       75 NAMECALL                         R10 R5 K5 ["WaitForChild"]
       77 CALL                             R10 2 1
       78 LOADK                            R13 K22 ["Y"]
       79 NAMECALL                         R11 R5 K5 ["WaitForChild"]
       81 CALL                             R11 2 1
       82 LOADK                            R14 K23 ["Z"]
       83 NAMECALL                         R12 R5 K5 ["WaitForChild"]
       85 CALL                             R12 2 1
       86 LOADK                            R15 K24 ["ArrowButtons"]
       87 NAMECALL                         R13 R5 K5 ["WaitForChild"]
       89 CALL                             R13 2 1
       90 LOADB                            R14 0
       91 SETTABLEKS                       R14 R13 K25 ["Visible"]
       93 LOADB                            R14 0
       94 GETIMPORT                        R15 K28 [Instance.new]
       96 LOADK                            R16 K29 ["Camera"]
       97 CALL                             R15 1 1
       98 SETTABLEKS                       R6 R15 K16 ["Parent"]
      100 GETIMPORT                        R16 K31 [CFrame.new]
      102 LOADK                            R17 K32 [{0, 0, 0}]
      103 LOADK                            R18 K33 [{0, 0, -1}]
      104 CALL                             R16 2 1
      105 SETTABLEKS                       R16 R15 K30 ["CFrame"]
      107 LOADN                            R16 70
      108 SETTABLEKS                       R16 R15 K34 ["FieldOfView"]
      110 SETTABLEKS                       R15 R6 K35 ["CurrentCamera"]
      112 NAMECALL                         R16 R9 K10 ["GetChildren"]
      114 CALL                             R16 1 1
      115 LOADN                            R19 1
      116 LENGTH                           R17 R16
      117 LOADN                            R18 1
      118 FORNPREP                         R17
      119 GETTABLE                         R20 R16 R19
      120 GETTABLEKS                       R21 R20 K36 ["ClassName"]
      122 JUMPIFEQKS                       R21 K37 ["Part"] ; [+5]
      124 GETTABLEKS                       R21 R20 K36 ["ClassName"]
      126 JUMPIFNOTEQKS                    R21 K38 ["MeshPart"] ; [+11]
      128 GETTABLEKS                       R21 R9 K30 ["CFrame"]
      130 GETTABLEKS                       R23 R20 K30 ["CFrame"]
      132 NAMECALL                         R21 R21 K39 ["ToObjectSpace"]
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K30 ["CFrame"]
      137 JUMP                             ; [+12]
      138 GETTABLEKS                       R21 R20 K36 ["ClassName"]
      140 JUMPIFNOTEQKS                    R21 K40 ["Decal"] ; [+9]
      142 GETUPVAL                         R22 4
      143 GETTABLEKS                       R22 R22 K41 ["Normal"]
      145 GETTABLEKS                       R23 R20 K11 ["Name"]
      147 GETTABLE                         R21 R22 R23
      148 SETTABLEKS                       R21 R20 K42 ["Texture"]
      150 FORNLOOP                         R17
      151 GETIMPORT                        R17 K31 [CFrame.new]
      153 CALL                             R17 0 1
      154 SETTABLEKS                       R17 R9 K30 ["CFrame"]
      156 NEWCLOSURE                       R17 P1
      157 CAPTURE                          UPVAL U5
      158 CAPTURE                          VAL R6
      159 NEWCLOSURE                       R18 P2
      160 CAPTURE                          UPVAL U5
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R7
      164 CAPTURE                          UPVAL U6
      165 CAPTURE                          UPVAL U7
      166 CAPTURE                          VAL R9
      167 CAPTURE                          REF R4
      168 CAPTURE                          UPVAL U4
      169 NEWCLOSURE                       R19 P3
      170 CAPTURE                          REF R14
      171 CAPTURE                          REF R1
      172 CAPTURE                          VAL R13
      173 NEWCLOSURE                       R20 P4
      174 CAPTURE                          REF R14
      175 CAPTURE                          VAL R19
      176 NEWCLOSURE                       R21 P5
      177 CAPTURE                          REF R4
      178 CAPTURE                          UPVAL U4
      179 CAPTURE                          VAL R13
      180 CAPTURE                          REF R14
      181 NEWCLOSURE                       R22 P6
      182 CAPTURE                          REF R2
      183 CAPTURE                          REF R3
      184 CAPTURE                          VAL R5
      185 NEWCLOSURE                       R23 P7
      186 CAPTURE                          VAL R7
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R0
      189 NEWCLOSURE                       R24 P8
      190 CAPTURE                          REF R2
      191 CAPTURE                          VAL R23
      192 NEWCLOSURE                       R25 P9
      193 CAPTURE                          REF R2
      194 CAPTURE                          REF R3
      195 CAPTURE                          VAL R5
      196 DUPCLOSURE                       R26 K43 [PROTO_21]
      197 CAPTURE                          UPVAL U8
      198 NEWCLOSURE                       R27 P11
      199 CAPTURE                          REF R2
      200 CAPTURE                          REF R4
      201 CAPTURE                          UPVAL U9
      202 CAPTURE                          UPVAL U8
      203 CAPTURE                          VAL R23
      204 NEWCLOSURE                       R28 P12
      205 CAPTURE                          VAL R15
      206 CAPTURE                          REF R1
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R11
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R19
      214 NEWCLOSURE                       R29 P13
      215 CAPTURE                          REF R1
      216 CAPTURE                          UPVAL U6
      217 CAPTURE                          UPVAL U7
      218 CAPTURE                          UPVAL U9
      219 CAPTURE                          UPVAL U8
      220 CAPTURE                          VAL R27
      221 GETUPVAL                         R30 10
      222 LOADK                            R32 K44 ["ViewSelectorAfterCamera"]
      223 GETIMPORT                        R34 K48 [Enum.RenderPriority.Camera]
      225 GETTABLEKS                       R34 R34 K49 ["Value"]
      227 ADDK                             R33 R34 K45 [1]
      228 MOVE                             R34 R28
      229 NAMECALL                         R30 R30 K50 ["BindToRenderStep"]
      231 CALL                             R30 4 0
      232 MOVE                             R30 R28
      233 CALL                             R30 0 0
      234 NEWCLOSURE                       R30 P14
      235 CAPTURE                          VAL R7
      236 CAPTURE                          VAL R0
      237 GETIMPORT                        R34 K52 [game]
      239 GETTABLEKS                       R34 R34 K53 ["Workspace"]
      241 GETTABLEKS                       R34 R34 K35 ["CurrentCamera"]
      243 GETTABLEKS                       R34 R34 K54 ["ViewportSize"]
      245 GETTABLEKS                       R33 R34 K19 ["X"]
      247 LOADK                            R34 K55 [0.5]
      248 LOADK                            R35 K55 [0.5]
      249 JUMPIFNOTLT                      R7 R33 ; [+11]
      251 LOADK                            R38 K56 ["ViewSelector_PositionX"]
      252 NAMECALL                         R36 R0 K57 ["GetSetting"]
      254 CALL                             R36 2 1
      255 ORK                              R34 R36 K45 [1]
      256 SUB                              R37 R33 R7
      257 MUL                              R36 R34 R37
      258 MUL                              R38 R34 R7
      259 ADD                              R37 R36 R38
      260 DIV                              R35 R37 R33
      261 MOVE                             R31 R34
      262 MOVE                             R32 R35
      263 GETIMPORT                        R36 K52 [game]
      265 GETTABLEKS                       R36 R36 K53 ["Workspace"]
      267 GETTABLEKS                       R36 R36 K35 ["CurrentCamera"]
      269 GETTABLEKS                       R36 R36 K54 ["ViewportSize"]
      271 GETTABLEKS                       R35 R36 K22 ["Y"]
      273 LOADK                            R36 K55 [0.5]
      274 LOADK                            R37 K55 [0.5]
      275 JUMPIFNOTLT                      R7 R35 ; [+11]
      277 LOADK                            R40 K59 ["ViewSelector_PositionY"]
      278 NAMECALL                         R38 R0 K57 ["GetSetting"]
      280 CALL                             R38 2 1
      281 ORK                              R36 R38 K58 [0]
      282 SUB                              R39 R35 R7
      283 MUL                              R38 R36 R39
      284 MUL                              R40 R36 R7
      285 ADD                              R39 R38 R40
      286 DIV                              R37 R39 R35
      287 MOVE                             R33 R36
      288 MOVE                             R34 R37
      289 GETIMPORT                        R35 K61 [Vector2.new]
      291 MOVE                             R36 R31
      292 MOVE                             R37 R33
      293 CALL                             R35 2 1
      294 SETTABLEKS                       R35 R5 K62 ["AnchorPoint"]
      296 GETIMPORT                        R35 K64 [UDim2.new]
      298 MOVE                             R36 R32
      299 LOADN                            R37 0
      300 MOVE                             R38 R34
      301 LOADN                            R39 0
      302 CALL                             R35 4 1
      303 SETTABLEKS                       R35 R5 K65 ["Position"]
      305 GETTABLEKS                       R30 R8 K66 ["MouseMoved"]
      307 MOVE                             R32 R18
      308 NAMECALL                         R30 R30 K67 ["Connect"]
      310 CALL                             R30 2 0
      311 GETTABLEKS                       R30 R8 K68 ["MouseEnter"]
      313 MOVE                             R32 R20
      314 NAMECALL                         R30 R30 K67 ["Connect"]
      316 CALL                             R30 2 0
      317 GETTABLEKS                       R30 R8 K69 ["MouseLeave"]
      319 MOVE                             R32 R21
      320 NAMECALL                         R30 R30 K67 ["Connect"]
      322 CALL                             R30 2 0
      323 GETTABLEKS                       R30 R8 K70 ["MouseButton1Down"]
      325 MOVE                             R32 R25
      326 NAMECALL                         R30 R30 K67 ["Connect"]
      328 CALL                             R30 2 0
      329 GETTABLEKS                       R30 R8 K71 ["MouseButton1Up"]
      331 MOVE                             R32 R27
      332 NAMECALL                         R30 R30 K67 ["Connect"]
      334 CALL                             R30 2 0
      335 GETUPVAL                         R30 11
      336 GETTABLEKS                       R30 R30 K72 ["InputChanged"]
      338 MOVE                             R32 R22
      339 NAMECALL                         R30 R30 K67 ["Connect"]
      341 CALL                             R30 2 0
      342 GETUPVAL                         R30 11
      343 GETTABLEKS                       R30 R30 K73 ["InputEnded"]
      345 MOVE                             R32 R24
      346 NAMECALL                         R30 R30 K67 ["Connect"]
      348 CALL                             R30 2 0
      349 MOVE                             R30 R29
      350 LOADK                            R33 K74 ["RightArrow"]
      351 NAMECALL                         R31 R13 K5 ["WaitForChild"]
      353 CALL                             R31 2 1
      354 GETIMPORT                        R32 K61 [Vector2.new]
      356 LOADN                            R33 1
      357 LOADN                            R34 0
      358 CALL                             R32 2 -1
      359 CALL                             R30 -1 0
      360 MOVE                             R30 R29
      361 LOADK                            R33 K75 ["LeftArrow"]
      362 NAMECALL                         R31 R13 K5 ["WaitForChild"]
      364 CALL                             R31 2 1
      365 GETIMPORT                        R32 K61 [Vector2.new]
      367 LOADN                            R33 -1
      368 LOADN                            R34 0
      369 CALL                             R32 2 -1
      370 CALL                             R30 -1 0
      371 MOVE                             R30 R29
      372 LOADK                            R33 K76 ["UpArrow"]
      373 NAMECALL                         R31 R13 K5 ["WaitForChild"]
      375 CALL                             R31 2 1
      376 GETIMPORT                        R32 K61 [Vector2.new]
      378 LOADN                            R33 0
      379 LOADN                            R34 1
      380 CALL                             R32 2 -1
      381 CALL                             R30 -1 0
      382 MOVE                             R30 R29
      383 LOADK                            R33 K77 ["DownArrow"]
      384 NAMECALL                         R31 R13 K5 ["WaitForChild"]
      386 CALL                             R31 2 1
      387 GETIMPORT                        R32 K61 [Vector2.new]
      389 LOADN                            R33 0
      390 LOADN                            R34 -1
      391 CALL                             R32 2 -1
      392 CALL                             R30 -1 0
      393 CLOSEUPVALS                      R1
      394 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ViewSelectorAfterCamera"]
        2 NAMECALL                         R1 R1 K1 ["UnbindFromRenderStep"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 DUPTABLE                         R3 K8 [{["ref"], ["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"] = True}]
        5 GETTABLEKS                       R4 R0 K9 ["frame"]
        7 SETTABLEKS                       R4 R3 K2 ["ref"]
        9 GETIMPORT                        R4 K12 [UDim2.new]
       11 LOADN                            R5 0
       12 LOADN                            R6 128
       13 LOADN                            R7 0
       14 LOADN                            R8 128
       15 CALL                             R4 4 1
       16 SETTABLEKS                       R4 R3 K3 ["Size"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioCameraUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["RunService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K10 [game]
       29 LOADK                            R6 K13 ["GuiService"]
       30 NAMECALL                         R4 R4 K12 ["GetService"]
       32 CALL                             R4 2 1
       33 GETIMPORT                        R5 K10 [game]
       35 LOADK                            R7 K14 ["ContentProvider"]
       36 NAMECALL                         R5 R5 K12 ["GetService"]
       38 CALL                             R5 2 1
       39 GETIMPORT                        R6 K10 [game]
       41 LOADK                            R8 K15 ["UserInputService"]
       42 NAMECALL                         R6 R6 K12 ["GetService"]
       44 CALL                             R6 2 1
       45 GETIMPORT                        R7 K10 [game]
       47 LOADK                            R9 K16 ["InsertService"]
       48 NAMECALL                         R7 R7 K12 ["GetService"]
       50 CALL                             R7 2 1
       51 GETIMPORT                        R8 K10 [game]
       53 LOADK                            R10 K17 ["StudioService"]
       54 NAMECALL                         R8 R8 K12 ["GetService"]
       56 CALL                             R8 2 1
       57 GETIMPORT                        R9 K10 [game]
       59 LOADK                            R11 K18 ["StudioCameraService"]
       60 NAMECALL                         R9 R9 K12 ["GetService"]
       62 CALL                             R9 2 1
       63 DUPCLOSURE                       R10 K19 [PROTO_0]
       64 DUPCLOSURE                       R11 K20 [PROTO_2]
       65 DUPCLOSURE                       R12 K21 [PROTO_3]
       66 CALL                             R12 0 1
       67 DUPTABLE                         R13 K24 [{"Normal", "Hover"}]
       68 NEWTABLE                         R14 8 0
       70 LOADK                            R15 K25 ["rbxasset://textures/ViewSelector/front.png"]
       71 SETTABLEKS                       R15 R14 K26 ["00n"]
       73 LOADK                            R15 K27 ["rbxasset://textures/ViewSelector/back.png"]
       74 SETTABLEKS                       R15 R14 K28 ["00p"]
       76 LOADK                            R15 K29 ["rbxasset://textures/ViewSelector/bottom.png"]
       77 SETTABLEKS                       R15 R14 K30 ["0n0"]
       79 LOADK                            R15 K31 ["rbxasset://textures/ViewSelector/top.png"]
       80 SETTABLEKS                       R15 R14 K32 ["0p0"]
       82 LOADK                            R15 K33 ["rbxasset://textures/ViewSelector/left.png"]
       83 SETTABLEKS                       R15 R14 K34 ["n00"]
       85 LOADK                            R15 K35 ["rbxasset://textures/ViewSelector/right.png"]
       86 SETTABLEKS                       R15 R14 K36 ["p00"]
       88 SETTABLEKS                       R14 R13 K22 ["Normal"]
       90 NEWTABLE                         R14 8 0
       92 LOADK                            R15 K37 ["rbxasset://textures/ViewSelector/front_hover.png"]
       93 SETTABLEKS                       R15 R14 K26 ["00n"]
       95 LOADK                            R15 K38 ["rbxasset://textures/ViewSelector/back_hover.png"]
       96 SETTABLEKS                       R15 R14 K28 ["00p"]
       98 LOADK                            R15 K39 ["rbxasset://textures/ViewSelector/bottom_hover.png"]
       99 SETTABLEKS                       R15 R14 K30 ["0n0"]
      101 LOADK                            R15 K40 ["rbxasset://textures/ViewSelector/top_hover.png"]
      102 SETTABLEKS                       R15 R14 K32 ["0p0"]
      104 LOADK                            R15 K41 ["rbxasset://textures/ViewSelector/left_hover.png"]
      105 SETTABLEKS                       R15 R14 K34 ["n00"]
      107 LOADK                            R15 K42 ["rbxasset://textures/ViewSelector/right_hover.png"]
      108 SETTABLEKS                       R15 R14 K36 ["p00"]
      110 SETTABLEKS                       R14 R13 K23 ["Hover"]
      112 DUPCLOSURE                       R14 K43 [PROTO_4]
      113 CAPTURE                          VAL R13
      114 DUPCLOSURE                       R15 K44 [PROTO_5]
      115 CAPTURE                          VAL R13
      116 DUPCLOSURE                       R16 K45 [PROTO_7]
      117 GETTABLEKS                       R17 R1 K46 ["Component"]
      119 LOADK                            R19 K47 ["ViewSelector"]
      120 NAMECALL                         R17 R17 K48 ["extend"]
      122 CALL                             R17 2 1
      123 DUPCLOSURE                       R18 K49 [PROTO_8]
      124 CAPTURE                          VAL R1
      125 SETTABLEKS                       R18 R17 K50 ["init"]
      127 LOADNIL                          R18
      128 NEWCLOSURE                       R19 P7
      129 CAPTURE                          REF R18
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R6
      140 SETTABLEKS                       R19 R17 K51 ["didMount"]
      142 DUPCLOSURE                       R19 K52 [PROTO_32]
      143 CAPTURE                          VAL R3
      144 SETTABLEKS                       R19 R17 K53 ["willUnmount"]
      146 DUPCLOSURE                       R19 K54 [PROTO_33]
      147 CAPTURE                          VAL R1
      148 SETTABLEKS                       R19 R17 K55 ["render"]
      150 CLOSEUPVALS                      R18
      151 RETURN                           R17 1
