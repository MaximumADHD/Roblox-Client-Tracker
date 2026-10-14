PROTO_0:
        0 GETTABLEKS                       R4 R0 K1 ["Transparency"]
        2 SUBRK                            R3 K0 [1] R4
        3 GETTABLEKS                       R5 R0 K2 ["LocalTransparencyModifier"]
        5 SUBRK                            R4 K0 [1] R5
        6 MUL                              R2 R3 R4
        7 SUBRK                            R1 K0 [1] R2
        8 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R4 R0
        1 ADDK                             R2 R1 K0 [1]
        2 LOADN                            R3 -1
        3 FORNPREP                         R2
        4 LOADNIL                          R5
        5 SETTABLE                         R5 R0 R4
        6 FORNLOOP                         R2
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getCamera"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R2 R0 K1 ["FieldOfView"]
        6 FASTCALL1                        MATH_RAD R2 ; [+1]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R0 K2 ["ViewportSize"]
       11 GETTABLEKS                       R4 R2 K3 ["X"]
       13 GETTABLEKS                       R5 R2 K4 ["Y"]
       15 DIV                              R3 R4 R5
       16 DIVK                             R6 R1 K5 [2]
       17 FASTCALL1                        MATH_TAN R6 ; [+1]
       18 GETUPVAL                         R5 3
       19 CALL                             R5 1 1
       20 MULK                             R4 R5 K5 [2]
       21 SETUPVAL                         R4 2
       22 GETUPVAL                         R5 2
       23 MUL                              R4 R3 R5
       24 SETUPVAL                         R4 4
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["getCamera"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R0 R0 K1 ["NearPlaneZ"]
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FieldOfView"]
        3 FASTCALL1                        MATH_RAD R1 ; [+1]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 1 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["ViewportSize"]
        9 GETTABLEKS                       R3 R1 K2 ["X"]
       11 GETTABLEKS                       R4 R1 K3 ["Y"]
       13 DIV                              R2 R3 R4
       14 DIVK                             R5 R0 K4 [2]
       15 FASTCALL1                        MATH_TAN R5 ; [+1]
       16 GETUPVAL                         R4 3
       17 CALL                             R4 1 1
       18 MULK                             R3 R4 K4 [2]
       19 SETUPVAL                         R3 2
       20 GETUPVAL                         R4 2
       21 MUL                              R3 R2 R4
       22 SETUPVAL                         R3 4
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["NearPlaneZ"]
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R0 1
        1 NEWTABLE                         R1 0 0
        3 SETUPVAL                         R1 0
        4 GETIMPORT                        R1 K1 [pairs]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETUPVAL                         R6 0
       10 SETTABLE                         R5 R6 R0
       11 ADDK                             R0 R0 K2 [1]
       12 FORGLOOP                         R1 2 ; [-4]
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 SETTABLE                         R0 R1 R2
        3 LOADN                            R1 1
        4 NEWTABLE                         R2 0 0
        6 SETUPVAL                         R2 2
        7 GETIMPORT                        R2 K1 [pairs]
        9 GETUPVAL                         R3 0
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETUPVAL                         R7 2
       13 SETTABLE                         R6 R7 R1
       14 ADDK                             R1 R1 K2 [1]
       15 FORGLOOP                         R2 2 ; [-4]
       17 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 LOADN                            R0 1
        5 NEWTABLE                         R1 0 0
        7 SETUPVAL                         R1 2
        8 GETIMPORT                        R1 K1 [pairs]
       10 GETUPVAL                         R2 0
       11 CALL                             R1 1 3
       12 FORGPREP_NEXT                    R1
       13 GETUPVAL                         R6 2
       14 SETTABLE                         R5 R6 R0
       15 ADDK                             R0 R0 K2 [1]
       16 FORGLOOP                         R1 2 ; [-4]
       18 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 GETUPVAL                         R3 2
        9 JUMPIFNOT                        R3 ; [+33]
       10 GETUPVAL                         R3 3
       11 LOADK                            R5 K0 ["%*CharacterAdded"]
       12 GETTABLEKS                       R7 R0 K1 ["UserId"]
       14 NAMECALL                         R5 R5 K2 ["format"]
       16 CALL                             R5 2 1
       17 GETTABLEKS                       R6 R0 K3 ["CharacterAdded"]
       19 MOVE                             R8 R1
       20 NAMECALL                         R6 R6 K4 ["Connect"]
       22 CALL                             R6 2 -1
       23 NAMECALL                         R3 R3 K5 ["trackConnection"]
       25 CALL                             R3 -1 0
       26 GETUPVAL                         R3 3
       27 LOADK                            R5 K6 ["%*CharacterRemoving"]
       28 GETTABLEKS                       R7 R0 K1 ["UserId"]
       30 NAMECALL                         R5 R5 K2 ["format"]
       32 CALL                             R5 2 1
       33 GETTABLEKS                       R6 R0 K7 ["CharacterRemoving"]
       35 MOVE                             R8 R2
       36 NAMECALL                         R6 R6 K4 ["Connect"]
       38 CALL                             R6 2 -1
       39 NAMECALL                         R3 R3 K5 ["trackConnection"]
       41 CALL                             R3 -1 0
       42 JUMP                             ; [+12]
       43 GETTABLEKS                       R3 R0 K3 ["CharacterAdded"]
       45 MOVE                             R5 R1
       46 NAMECALL                         R3 R3 K4 ["Connect"]
       48 CALL                             R3 2 0
       49 GETTABLEKS                       R3 R0 K7 ["CharacterRemoving"]
       51 MOVE                             R5 R2
       52 NAMECALL                         R3 R3 K4 ["Connect"]
       54 CALL                             R3 2 0
       55 GETTABLEKS                       R3 R0 K8 ["Character"]
       57 JUMPIFNOT                        R3 ; [+18]
       58 GETTABLEKS                       R3 R0 K8 ["Character"]
       60 GETUPVAL                         R4 0
       61 SETTABLE                         R3 R4 R0
       62 LOADN                            R4 1
       63 NEWTABLE                         R5 0 0
       65 SETUPVAL                         R5 1
       66 GETIMPORT                        R5 K10 [pairs]
       68 GETUPVAL                         R6 0
       69 CALL                             R5 1 3
       70 FORGPREP_NEXT                    R5
       71 GETUPVAL                         R10 1
       72 SETTABLE                         R9 R10 R4
       73 ADDK                             R4 R4 K11 [1]
       74 FORGLOOP                         R5 2 ; [-4]
       76 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 LOADN                            R1 1
        4 NEWTABLE                         R2 0 0
        6 SETUPVAL                         R2 1
        7 GETIMPORT                        R2 K1 [pairs]
        9 GETUPVAL                         R3 0
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETUPVAL                         R7 1
       13 SETTABLE                         R6 R7 R1
       14 ADDK                             R1 R1 K2 [1]
       15 FORGLOOP                         R2 2 ; [-4]
       17 GETUPVAL                         R1 2
       18 JUMPIFNOT                        R1 ; [+20]
       19 GETUPVAL                         R1 3
       20 LOADK                            R3 K3 ["%*CharacterAdded"]
       21 GETTABLEKS                       R5 R0 K4 ["UserId"]
       23 NAMECALL                         R3 R3 K5 ["format"]
       25 CALL                             R3 2 1
       26 NAMECALL                         R1 R1 K6 ["disconnect"]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R1 3
       30 LOADK                            R3 K7 ["%*CharacterRemoving"]
       31 GETTABLEKS                       R5 R0 K4 ["UserId"]
       33 NAMECALL                         R3 R3 K5 ["format"]
       35 CALL                             R3 2 1
       36 NAMECALL                         R1 R1 K6 ["disconnect"]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getCamera"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R0 R0 K1 ["CameraSubject"]
        6 JUMPIFNOT                        R0 ; [+9]
        7 LOADK                            R3 K2 ["Humanoid"]
        8 NAMECALL                         R1 R0 K3 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETTABLEKS                       R1 R0 K4 ["RootPart"]
       14 SETUPVAL                         R1 1
       15 RETURN                           R0 0
       16 JUMPIFNOT                        R0 ; [+7]
       17 LOADK                            R3 K5 ["BasePart"]
       18 NAMECALL                         R1 R0 K3 ["IsA"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+2]
       22 SETUPVAL                         R0 1
       23 RETURN                           R0 0
       24 LOADNIL                          R1
       25 SETUPVAL                         R1 1
       26 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CameraSubject"]
        3 LOADK                            R3 K1 ["Humanoid"]
        4 NAMECALL                         R1 R0 K2 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETTABLEKS                       R1 R0 K3 ["RootPart"]
       10 SETUPVAL                         R1 1
       11 RETURN                           R0 0
       12 LOADK                            R3 K4 ["BasePart"]
       13 NAMECALL                         R1 R0 K2 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+2]
       17 SETUPVAL                         R0 1
       18 RETURN                           R0 0
       19 LOADNIL                          R1
       20 SETUPVAL                         R1 1
       21 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R5 R0 K1 ["Transparency"]
        3 SUBRK                            R4 K0 [1] R5
        4 GETTABLEKS                       R6 R0 K2 ["LocalTransparencyModifier"]
        6 SUBRK                            R5 K0 [1] R6
        7 MUL                              R3 R4 R5
        8 SUBRK                            R2 K0 [1] R3
        9 LOADK                            R3 K3 [0.25]
       10 JUMPIFNOTLT                      R2 R3 ; [+19]
       12 GETUPVAL                         R2 0
       13 JUMPIF                           R2 ; [+3]
       14 GETTABLEKS                       R1 R0 K4 ["CanCollide"]
       16 JUMPIFNOT                        R1 ; [+13]
       17 LOADB                            R1 0
       18 GETUPVAL                         R2 1
       19 NAMECALL                         R4 R0 K5 ["GetRootPart"]
       21 CALL                             R4 1 1
       22 OR                               R3 R4 R0
       23 JUMPIFEQ                         R2 R3 ; [+6]
       25 LOADK                            R4 K6 ["TrussPart"]
       26 NAMECALL                         R2 R0 K7 ["IsA"]
       28 CALL                             R2 2 1
       29 NOT                              R1 R2
       30 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+18]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 SETTABLEKS                       R3 R2 K0 ["FilterDescendantsInstances"]
        6 GETIMPORT                        R2 K2 [workspace]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 GETUPVAL                         R6 1
       11 NAMECALL                         R2 R2 K3 ["Raycast"]
       13 CALL                             R2 4 1
       14 JUMPIFNOT                        R2 ; [+49]
       15 GETTABLEKS                       R3 R2 K4 ["Position"]
       17 LOADB                            R4 1
       18 RETURN                           R3 2
       19 JUMP                             ; [+44]
       20 GETUPVAL                         R3 2
       21 LENGTH                           R2 R3
       22 GETIMPORT                        R3 K2 [workspace]
       24 GETUPVAL                         R5 3
       25 MOVE                             R6 R0
       26 MOVE                             R7 R1
       27 CALL                             R5 2 1
       28 GETUPVAL                         R6 2
       29 LOADB                            R7 0
       30 LOADB                            R8 1
       31 NAMECALL                         R3 R3 K5 ["FindPartOnRayWithIgnoreList"]
       33 CALL                             R3 5 2
       34 JUMPIFNOT                        R3 ; [+19]
       35 GETTABLEKS                       R5 R3 K6 ["CanCollide"]
       37 JUMPIFNOT                        R5 ; [+11]
       38 GETUPVAL                         R5 2
       39 LENGTH                           R8 R5
       40 ADDK                             R6 R2 K7 [1]
       41 LOADN                            R7 -1
       42 FORNPREP                         R6
       43 LOADNIL                          R9
       44 SETTABLE                         R9 R5 R8
       45 FORNLOOP                         R6
       46 MOVE                             R5 R4
       47 LOADB                            R6 1
       48 RETURN                           R5 2
       49 GETUPVAL                         R5 2
       50 GETUPVAL                         R8 2
       51 LENGTH                           R7 R8
       52 ADDK                             R6 R7 K7 [1]
       53 SETTABLE                         R3 R5 R6
       54 JUMPIFNOT                        R3 ; [+1]
       55 JUMPBACK                         ; [-34]
       56 GETUPVAL                         R3 2
       57 LENGTH                           R6 R3
       58 ADDK                             R4 R2 K7 [1]
       59 LOADN                            R5 -1
       60 FORNPREP                         R4
       61 LOADNIL                          R7
       62 SETTABLE                         R7 R3 R6
       63 FORNLOOP                         R4
       64 ADD                              R2 R0 R1
       65 LOADB                            R3 0
       66 RETURN                           R2 2

PROTO_15:
        0 GETIMPORT                        R4 K2 [debug.profilebegin]
        2 LOADK                            R5 K3 ["queryPoint"]
        3 CALL                             R4 1 0
        4 GETUPVAL                         R5 0
        5 LENGTH                           R4 R5
        6 GETUPVAL                         R5 1
        7 ADD                              R2 R2 R5
        8 MUL                              R6 R1 R2
        9 ADD                              R5 R0 R6
       10 LOADK                            R6 K4 [∞]
       11 LOADK                            R7 K4 [∞]
       12 MOVE                             R8 R0
       13 LOADN                            R9 0
       14 GETUPVAL                         R10 2
       15 JUMPIFNOT                        R10 ; [+115]
       16 GETUPVAL                         R10 3
       17 GETUPVAL                         R11 0
       18 SETTABLEKS                       R11 R10 K5 ["FilterDescendantsInstances"]
       20 GETIMPORT                        R10 K7 [workspace]
       22 MOVE                             R12 R8
       23 SUB                              R13 R5 R8
       24 GETUPVAL                         R14 3
       25 NAMECALL                         R10 R10 K8 ["Raycast"]
       27 CALL                             R10 4 1
       28 JUMPIFNOT                        R10 ; [+228]
       29 ADDK                             R9 R9 K9 [1]
       30 GETTABLEKS                       R11 R10 K10 ["Instance"]
       32 GETTABLEKS                       R12 R10 K11 ["Position"]
       34 SUB                              R13 R12 R0
       35 GETTABLEKS                       R13 R13 K12 ["Magnitude"]
       37 LOADN                            R14 64
       38 JUMPIFNOTLE                      R14 R9 ; [+3]
       40 MOVE                             R7 R13
       41 JUMP                             ; [+76]
       42 LOADB                            R14 0
       43 GETTABLEKS                       R18 R11 K13 ["Transparency"]
       45 SUBRK                            R17 K9 [1] R18
       46 GETTABLEKS                       R19 R11 K14 ["LocalTransparencyModifier"]
       48 SUBRK                            R18 K9 [1] R19
       49 MUL                              R16 R17 R18
       50 SUBRK                            R15 K9 [1] R16
       51 LOADK                            R16 K15 [0.25]
       52 JUMPIFNOTLT                      R15 R16 ; [+19]
       54 GETUPVAL                         R15 2
       55 JUMPIF                           R15 ; [+3]
       56 GETTABLEKS                       R14 R11 K16 ["CanCollide"]
       58 JUMPIFNOT                        R14 ; [+13]
       59 LOADB                            R14 0
       60 GETUPVAL                         R15 4
       61 NAMECALL                         R17 R11 K17 ["GetRootPart"]
       63 CALL                             R17 1 1
       64 OR                               R16 R17 R11
       65 JUMPIFEQ                         R15 R16 ; [+6]
       67 LOADK                            R17 K18 ["TrussPart"]
       68 NAMECALL                         R15 R11 K19 ["IsA"]
       70 CALL                             R15 2 1
       71 NOT                              R14 R15
       72 JUMPIFNOT                        R14 ; [+45]
       73 GETUPVAL                         R14 5
       74 NEWTABLE                         R15 0 1
       76 MOVE                             R16 R11
       77 SETLIST                          R15 R16 1 [1]
       79 SETTABLEKS                       R15 R14 K5 ["FilterDescendantsInstances"]
       81 GETIMPORT                        R14 K7 [workspace]
       83 MOVE                             R16 R5
       84 SUB                              R17 R12 R5
       85 GETUPVAL                         R18 5
       86 NAMECALL                         R14 R14 K8 ["Raycast"]
       88 CALL                             R14 4 1
       89 JUMPIFNOT                        R14 ; [+27]
       90 JUMPIFNOT                        R3 ; [+18]
       91 GETIMPORT                        R15 K7 [workspace]
       93 MOVE                             R17 R3
       94 SUB                              R18 R5 R3
       95 GETUPVAL                         R19 5
       96 NAMECALL                         R15 R15 K8 ["Raycast"]
       98 CALL                             R15 4 1
       99 JUMPIF                           R15 ; [+10]
      100 GETIMPORT                        R15 K7 [workspace]
      102 MOVE                             R17 R5
      103 SUB                              R18 R3 R5
      104 GETUPVAL                         R19 5
      105 NAMECALL                         R15 R15 K8 ["Raycast"]
      107 CALL                             R15 4 1
      108 JUMP                             ; [+1]
      109 LOADB                            R15 0
      110 JUMPIFNOT                        R15 ; [+2]
      111 MOVE                             R7 R13
      112 JUMP                             ; [+5]
      113 JUMPIFNOTLT                      R2 R6 ; [+4]
      115 MOVE                             R6 R13
      116 JUMP                             ; [+1]
      117 MOVE                             R7 R13
      118 GETUPVAL                         R14 3
      119 MOVE                             R16 R11
      120 NAMECALL                         R14 R14 K20 ["AddToFilter"]
      122 CALL                             R14 2 0
      123 MULK                             R14 R1 K21 [0.001]
      124 SUB                              R8 R12 R14
      125 LOADK                            R14 K4 [∞]
      126 JUMPIFLT                         R7 R14 ; [+130]
      128 JUMPIFNOT                        R11 ; [+128]
      129 JUMPBACK                         ; [-110]
      130 JUMP                             ; [+126]
      131 GETIMPORT                        R10 K7 [workspace]
      133 GETUPVAL                         R12 6
      134 MOVE                             R13 R8
      135 SUB                              R14 R5 R8
      136 CALL                             R12 2 1
      137 GETUPVAL                         R13 0
      138 LOADB                            R14 0
      139 LOADB                            R15 1
      140 NAMECALL                         R10 R10 K22 ["FindPartOnRayWithIgnoreList"]
      142 CALL                             R10 5 2
      143 ADDK                             R9 R9 K9 [1]
      144 JUMPIFNOT                        R10 ; [+99]
      145 LOADN                            R13 64
      146 JUMPIFLE                         R13 R9 ; [+2]
      148 LOADB                            R12 0 +1
      149 LOADB                            R12 1
      150 LOADB                            R13 0
      151 GETTABLEKS                       R17 R10 K13 ["Transparency"]
      153 SUBRK                            R16 K9 [1] R17
      154 GETTABLEKS                       R18 R10 K14 ["LocalTransparencyModifier"]
      156 SUBRK                            R17 K9 [1] R18
      157 MUL                              R15 R16 R17
      158 SUBRK                            R14 K9 [1] R15
      159 LOADK                            R15 K15 [0.25]
      160 JUMPIFNOTLT                      R14 R15 ; [+19]
      162 GETUPVAL                         R14 2
      163 JUMPIF                           R14 ; [+3]
      164 GETTABLEKS                       R13 R10 K16 ["CanCollide"]
      166 JUMPIFNOT                        R13 ; [+13]
      167 LOADB                            R13 0
      168 GETUPVAL                         R14 4
      169 NAMECALL                         R16 R10 K17 ["GetRootPart"]
      171 CALL                             R16 1 1
      172 OR                               R15 R16 R10
      173 JUMPIFEQ                         R14 R15 ; [+6]
      175 LOADK                            R16 K18 ["TrussPart"]
      176 NAMECALL                         R14 R10 K19 ["IsA"]
      178 CALL                             R14 2 1
      179 NOT                              R13 R14
      180 JUMPIF                           R13 ; [+1]
      181 JUMPIFNOT                        R12 ; [+55]
      182 NEWTABLE                         R13 0 1
      184 MOVE                             R14 R10
      185 SETLIST                          R13 R14 1 [1]
      187 GETIMPORT                        R14 K7 [workspace]
      189 GETUPVAL                         R16 6
      190 MOVE                             R17 R5
      191 SUB                              R18 R11 R5
      192 CALL                             R16 2 1
      193 MOVE                             R17 R13
      194 LOADB                            R18 1
      195 NAMECALL                         R14 R14 K23 ["FindPartOnRayWithWhitelist"]
      197 CALL                             R14 4 1
      198 SUB                              R15 R11 R0
      199 GETTABLEKS                       R15 R15 K12 ["Magnitude"]
      201 JUMPIFNOT                        R14 ; [+34]
      202 JUMPIF                           R12 ; [+33]
      203 LOADB                            R16 0
      204 JUMPIFNOT                        R3 ; [+24]
      205 GETIMPORT                        R17 K7 [workspace]
      207 GETUPVAL                         R19 6
      208 MOVE                             R20 R3
      209 SUB                              R21 R5 R3
      210 CALL                             R19 2 1
      211 MOVE                             R20 R13
      212 LOADB                            R21 1
      213 NAMECALL                         R17 R17 K23 ["FindPartOnRayWithWhitelist"]
      215 CALL                             R17 4 1
      216 JUMPIF                           R17 ; [+11]
      217 GETIMPORT                        R17 K7 [workspace]
      219 GETUPVAL                         R19 6
      220 MOVE                             R20 R5
      221 SUB                              R21 R3 R5
      222 CALL                             R19 2 1
      223 MOVE                             R20 R13
      224 LOADB                            R21 1
      225 NAMECALL                         R17 R17 K23 ["FindPartOnRayWithWhitelist"]
      227 CALL                             R17 4 1
      228 MOVE                             R16 R17
      229 JUMPIFNOT                        R16 ; [+2]
      230 MOVE                             R7 R15
      231 JUMP                             ; [+5]
      232 JUMPIFNOTLT                      R2 R6 ; [+4]
      234 MOVE                             R6 R15
      235 JUMP                             ; [+1]
      236 MOVE                             R7 R15
      237 GETUPVAL                         R13 0
      238 GETUPVAL                         R16 0
      239 LENGTH                           R15 R16
      240 ADDK                             R14 R15 K9 [1]
      241 SETTABLE                         R10 R13 R14
      242 MULK                             R13 R1 K21 [0.001]
      243 SUB                              R8 R11 R13
      244 LOADK                            R12 K4 [∞]
      245 JUMPIFLT                         R7 R12 ; [+3]
      247 JUMPIFNOT                        R10 ; [+1]
      248 JUMPBACK                         ; [-118]
      249 GETUPVAL                         R10 0
      250 LENGTH                           R13 R10
      251 ADDK                             R11 R4 K9 [1]
      252 LOADN                            R12 -1
      253 FORNPREP                         R11
      254 LOADNIL                          R14
      255 SETTABLE                         R14 R10 R13
      256 FORNLOOP                         R11
      257 GETIMPORT                        R10 K25 [debug.profileend]
      259 CALL                             R10 0 0
      260 GETUPVAL                         R11 1
      261 SUB                              R10 R6 R11
      262 GETUPVAL                         R12 1
      263 SUB                              R11 R7 R12
      264 RETURN                           R10 2

PROTO_16:
        0 GETIMPORT                        R2 K2 [debug.profilebegin]
        2 LOADK                            R3 K3 ["queryViewport"]
        3 CALL                             R2 1 0
        4 GETTABLEKS                       R2 R0 K4 ["Position"]
        6 GETTABLEKS                       R3 R0 K5 ["rightVector"]
        8 GETTABLEKS                       R4 R0 K6 ["upVector"]
       10 GETTABLEKS                       R6 R0 K7 ["lookVector"]
       12 MINUS                            R5 R6
       13 GETUPVAL                         R7 1
       14 JUMPIFNOT                        R7 ; [+5]
       15 GETUPVAL                         R6 2
       16 NAMECALL                         R6 R6 K8 ["getCamera"]
       18 CALL                             R6 1 1
       19 JUMP                             ; [+1]
       20 GETUPVAL                         R6 0
       21 SETUPVAL                         R6 0
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K9 ["ViewportSize"]
       25 LOADK                            R7 K10 [∞]
       26 LOADK                            R8 K10 [∞]
       27 LOADN                            R11 0
       28 LOADN                            R9 1
       29 LOADN                            R10 1
       30 FORNPREP                         R9
       31 SUBK                             R14 R11 K11 [0.5]
       32 GETUPVAL                         R15 3
       33 MUL                              R13 R14 R15
       34 MUL                              R12 R3 R13
       35 LOADN                            R15 0
       36 LOADN                            R13 1
       37 LOADN                            R14 1
       38 FORNPREP                         R13
       39 SUBK                             R18 R15 K11 [0.5]
       40 GETUPVAL                         R19 4
       41 MUL                              R17 R18 R19
       42 MUL                              R16 R4 R17
       43 GETUPVAL                         R19 5
       44 ADD                              R20 R12 R16
       45 MUL                              R18 R19 R20
       46 ADD                              R17 R2 R18
       47 GETUPVAL                         R18 0
       48 GETTABLEKS                       R21 R6 K12 ["x"]
       50 MUL                              R20 R21 R11
       51 GETTABLEKS                       R22 R6 K13 ["y"]
       53 MUL                              R21 R22 R15
       54 NAMECALL                         R18 R18 K14 ["ViewportPointToRay"]
       56 CALL                             R18 3 1
       57 GETTABLEKS                       R18 R18 K15 ["Origin"]
       59 GETUPVAL                         R19 6
       60 MOVE                             R20 R17
       61 MOVE                             R21 R5
       62 MOVE                             R22 R1
       63 MOVE                             R23 R18
       64 CALL                             R19 4 2
       65 JUMPIFNOTLT                      R20 R7 ; [+2]
       67 MOVE                             R7 R20
       68 JUMPIFNOTLT                      R19 R8 ; [+2]
       70 MOVE                             R8 R19
       71 FORNLOOP                         R13
       72 FORNLOOP                         R9
       73 GETIMPORT                        R9 K17 [debug.profileend]
       75 CALL                             R9 0 0
       76 MOVE                             R9 R8
       77 MOVE                             R10 R7
       78 RETURN                           R9 2

PROTO_17:
        0 GETIMPORT                        R3 K2 [debug.profilebegin]
        2 LOADK                            R4 K3 ["testPromotion"]
        3 CALL                             R3 1 0
        4 GETTABLEKS                       R3 R0 K4 ["Position"]
        6 GETTABLEKS                       R4 R0 K5 ["rightVector"]
        8 GETTABLEKS                       R5 R0 K6 ["upVector"]
       10 GETTABLEKS                       R7 R0 K7 ["lookVector"]
       12 MINUS                            R6 R7
       13 GETIMPORT                        R7 K2 [debug.profilebegin]
       15 LOADK                            R8 K8 ["extrapolate"]
       16 CALL                             R7 1 0
       17 GETUPVAL                         R8 0
       18 MOVE                             R9 R3
       19 GETTABLEKS                       R11 R2 K10 ["posVelocity"]
       21 MULK                             R10 R11 K9 [1.25]
       22 CALL                             R8 2 1
       23 SUB                              R7 R8 R3
       24 GETTABLEKS                       R7 R7 K11 ["Magnitude"]
       26 GETTABLEKS                       R8 R2 K10 ["posVelocity"]
       28 GETTABLEKS                       R8 R8 K12 ["magnitude"]
       30 LOADN                            R11 0
       31 LOADK                            R13 K9 [1.25]
       32 GETTABLEKS                       R15 R2 K13 ["rotVelocity"]
       34 GETTABLEKS                       R15 R15 K12 ["magnitude"]
       36 DIV                              R16 R7 R8
       37 ADD                              R14 R15 R16
       38 FASTCALL2                        MATH_MIN R13 R14 ; [+2]
       40 GETUPVAL                         R12 1
       41 CALL                             R12 2 1
       42 MOVE                             R9 R12
       43 LOADK                            R10 K14 [0.0625]
       44 FORNPREP                         R9
       45 GETTABLEKS                       R12 R2 K8 ["extrapolate"]
       47 MOVE                             R13 R11
       48 CALL                             R12 1 1
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R14 R12 K4 ["Position"]
       52 GETTABLEKS                       R16 R12 K7 ["lookVector"]
       54 MINUS                            R15 R16
       55 MOVE                             R16 R1
       56 CALL                             R13 3 1
       57 JUMPIFNOTLE                      R1 R13 ; [+3]
       59 LOADB                            R13 0
       60 RETURN                           R13 1
       61 FORNLOOP                         R9
       62 GETIMPORT                        R9 K16 [debug.profileend]
       64 CALL                             R9 0 0
       65 GETIMPORT                        R7 K2 [debug.profilebegin]
       67 LOADK                            R8 K17 ["testOffsets"]
       68 CALL                             R7 1 0
       69 GETIMPORT                        R7 K19 [ipairs]
       71 GETUPVAL                         R8 3
       72 CALL                             R7 1 3
       73 FORGPREP_INEXT                   R7
       74 GETUPVAL                         R12 0
       75 MOVE                             R13 R3
       76 GETTABLEKS                       R16 R11 K20 ["x"]
       78 MUL                              R15 R4 R16
       79 GETTABLEKS                       R17 R11 K21 ["y"]
       81 MUL                              R16 R5 R17
       82 ADD                              R14 R15 R16
       83 CALL                             R12 2 1
       84 GETUPVAL                         R13 2
       85 MOVE                             R14 R12
       86 MUL                              R17 R6 R1
       87 ADD                              R16 R3 R17
       88 SUB                              R15 R16 R12
       89 GETTABLEKS                       R15 R15 K22 ["Unit"]
       91 MOVE                             R16 R1
       92 CALL                             R13 3 1
       93 JUMPIFNOTEQKN                    R13 K23 [∞] ; [+3]
       95 LOADB                            R13 0
       96 RETURN                           R13 1
       97 FORGLOOP                         R7 2 [inext] ; [-24]
       99 GETIMPORT                        R7 K16 [debug.profileend]
      101 CALL                             R7 0 0
      102 GETIMPORT                        R7 K16 [debug.profileend]
      104 CALL                             R7 0 0
      105 LOADB                            R7 1
      106 RETURN                           R7 1

PROTO_18:
        0 GETIMPORT                        R3 K2 [debug.profilebegin]
        2 LOADK                            R4 K3 ["popper"]
        3 CALL                             R3 1 0
        4 GETUPVAL                         R4 1
        5 JUMPIFNOT                        R4 ; [+5]
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R3 R3 K4 ["GetRootPart"]
        9 CALL                             R3 1 1
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 1
       12 SETUPVAL                         R3 0
       13 MOVE                             R3 R1
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R0
       16 MOVE                             R6 R1
       17 CALL                             R4 2 2
       18 JUMPIFNOTLT                      R5 R3 ; [+2]
       20 MOVE                             R3 R5
       21 JUMPIFNOTLT                      R4 R3 ; [+8]
       23 GETUPVAL                         R6 3
       24 MOVE                             R7 R0
       25 MOVE                             R8 R1
       26 MOVE                             R9 R2
       27 CALL                             R6 3 1
       28 JUMPIFNOT                        R6 ; [+1]
       29 MOVE                             R3 R4
       30 LOADNIL                          R6
       31 SETUPVAL                         R6 0
       32 GETIMPORT                        R6 K6 [debug.profileend]
       34 CALL                             R6 0 0
       35 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K8 ["Parent"]
       15 GETTABLEKS                       R2 R2 K8 ["Parent"]
       17 LOADK                            R4 K9 ["CommonUtils"]
       18 NAMECALL                         R2 R2 K10 ["WaitForChild"]
       20 CALL                             R2 2 -1
       21 CALL                             R1 -1 1
       22 GETTABLEKS                       R2 R1 K11 ["get"]
       24 LOADK                            R3 K12 ["FlagUtil"]
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R3 R1 K11 ["get"]
       28 LOADK                            R4 K13 ["CameraWrapper"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K11 ["get"]
       32 LOADK                            R5 K14 ["ConnectionUtil"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R2 K15 ["getUserFlag"]
       36 LOADK                            R6 K16 ["UserRaycastUpdateAPI2"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R2 K15 ["getUserFlag"]
       40 LOADK                            R7 K17 ["UserCurrentCameraUpdate2"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R2 K15 ["getUserFlag"]
       44 LOADK                            R8 K18 ["UserPlayerConnectionMemoryLeak"]
       45 CALL                             R7 1 1
       46 JUMPIFNOT                        R6 ; [+4]
       47 GETTABLEKS                       R8 R3 K19 ["new"]
       49 CALL                             R8 0 1
       50 JUMP                             ; [+1]
       51 LOADNIL                          R8
       52 JUMPIFNOT                        R6 ; [+2]
       53 LOADNIL                          R9
       54 JUMP                             ; [+6]
       55 GETIMPORT                        R9 K1 [game]
       57 GETTABLEKS                       R9 R9 K20 ["Workspace"]
       59 GETTABLEKS                       R9 R9 K21 ["CurrentCamera"]
       61 JUMPIFNOT                        R6 ; [+3]
       62 NAMECALL                         R10 R8 K22 ["Enable"]
       64 CALL                             R10 1 0
       65 GETIMPORT                        R10 K25 [math.min]
       67 GETIMPORT                        R11 K27 [math.tan]
       69 GETIMPORT                        R12 K29 [math.rad]
       71 GETIMPORT                        R13 K31 [Ray.new]
       73 GETIMPORT                        R14 K33 [RaycastParams.new]
       75 CALL                             R14 0 1
       76 LOADB                            R15 1
       77 SETTABLEKS                       R15 R14 K34 ["IgnoreWater"]
       79 GETIMPORT                        R15 K38 [Enum.RaycastFilterType.Exclude]
       81 SETTABLEKS                       R15 R14 K39 ["FilterType"]
       83 LOADB                            R15 1
       84 SETTABLEKS                       R15 R14 K40 ["RespectCanCollide"]
       86 GETIMPORT                        R15 K33 [RaycastParams.new]
       88 CALL                             R15 0 1
       89 LOADB                            R16 1
       90 SETTABLEKS                       R16 R15 K34 ["IgnoreWater"]
       92 GETIMPORT                        R16 K42 [Enum.RaycastFilterType.Include]
       94 SETTABLEKS                       R16 R15 K39 ["FilterType"]
       96 JUMPIFNOT                        R7 ; [+4]
       97 GETTABLEKS                       R16 R4 K19 ["new"]
       99 CALL                             R16 0 1
      100 JUMP                             ; [+1]
      101 LOADNIL                          R16
      102 DUPCLOSURE                       R17 K43 [PROTO_0]
      103 DUPCLOSURE                       R18 K44 [PROTO_1]
      104 LOADNIL                          R19
      105 LOADNIL                          R20
      106 LOADNIL                          R21
      107 JUMPIFNOT                        R6 ; [+50]
      108 NEWCLOSURE                       R22 P2
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R12
      111 CAPTURE                          REF R21
      112 CAPTURE                          VAL R11
      113 CAPTURE                          REF R20
      114 LOADK                            R25 K45 ["FieldOfView"]
      115 MOVE                             R26 R22
      116 NAMECALL                         R23 R8 K46 ["Connect"]
      118 CALL                             R23 3 0
      119 LOADK                            R25 K47 ["ViewportSize"]
      120 MOVE                             R26 R22
      121 NAMECALL                         R23 R8 K46 ["Connect"]
      123 CALL                             R23 3 0
      124 NAMECALL                         R23 R8 K48 ["getCamera"]
      126 CALL                             R23 1 1
      127 GETTABLEKS                       R25 R23 K45 ["FieldOfView"]
      129 FASTCALL1                        MATH_RAD R25 ; [+1]
      130 MOVE                             R24 R12
      131 CALL                             R24 1 1
      132 GETTABLEKS                       R25 R23 K47 ["ViewportSize"]
      134 GETTABLEKS                       R27 R25 K49 ["X"]
      136 GETTABLEKS                       R28 R25 K50 ["Y"]
      138 DIV                              R26 R27 R28
      139 DIVK                             R28 R24 K51 [2]
      140 FASTCALL1                        MATH_TAN R28 ; [+1]
      141 MOVE                             R27 R11
      142 CALL                             R27 1 1
      143 MULK                             R21 R27 K51 [2]
      144 MUL                              R20 R26 R21
      145 NAMECALL                         R23 R8 K48 ["getCamera"]
      147 CALL                             R23 1 1
      148 GETTABLEKS                       R19 R23 K52 ["NearPlaneZ"]
      150 LOADK                            R25 K52 ["NearPlaneZ"]
      151 NEWCLOSURE                       R26 P3
      152 CAPTURE                          REF R19
      153 CAPTURE                          VAL R8
      154 NAMECALL                         R23 R8 K46 ["Connect"]
      156 CALL                             R23 3 0
      157 JUMP                             ; [+52]
      158 NEWCLOSURE                       R22 P4
      159 CAPTURE                          REF R9
      160 CAPTURE                          VAL R12
      161 CAPTURE                          REF R21
      162 CAPTURE                          VAL R11
      163 CAPTURE                          REF R20
      164 LOADK                            R25 K45 ["FieldOfView"]
      165 NAMECALL                         R23 R9 K53 ["GetPropertyChangedSignal"]
      167 CALL                             R23 2 1
      168 MOVE                             R25 R22
      169 NAMECALL                         R23 R23 K46 ["Connect"]
      171 CALL                             R23 2 0
      172 LOADK                            R25 K47 ["ViewportSize"]
      173 NAMECALL                         R23 R9 K53 ["GetPropertyChangedSignal"]
      175 CALL                             R23 2 1
      176 MOVE                             R25 R22
      177 NAMECALL                         R23 R23 K46 ["Connect"]
      179 CALL                             R23 2 0
      180 GETTABLEKS                       R24 R9 K45 ["FieldOfView"]
      182 FASTCALL1                        MATH_RAD R24 ; [+1]
      183 MOVE                             R23 R12
      184 CALL                             R23 1 1
      185 GETTABLEKS                       R24 R9 K47 ["ViewportSize"]
      187 GETTABLEKS                       R26 R24 K49 ["X"]
      189 GETTABLEKS                       R27 R24 K50 ["Y"]
      191 DIV                              R25 R26 R27
      192 DIVK                             R27 R23 K51 [2]
      193 FASTCALL1                        MATH_TAN R27 ; [+1]
      194 MOVE                             R26 R11
      195 CALL                             R26 1 1
      196 MULK                             R21 R26 K51 [2]
      197 MUL                              R20 R25 R21
      198 GETTABLEKS                       R19 R9 K52 ["NearPlaneZ"]
      200 LOADK                            R25 K52 ["NearPlaneZ"]
      201 NAMECALL                         R23 R9 K53 ["GetPropertyChangedSignal"]
      203 CALL                             R23 2 1
      204 NEWCLOSURE                       R25 P5
      205 CAPTURE                          REF R19
      206 CAPTURE                          REF R9
      207 NAMECALL                         R23 R23 K46 ["Connect"]
      209 CALL                             R23 2 0
      210 NEWTABLE                         R22 0 0
      212 NEWTABLE                         R23 0 0
      214 NEWCLOSURE                       R24 P6
      215 CAPTURE                          REF R22
      216 CAPTURE                          VAL R23
      217 NEWCLOSURE                       R25 P7
      218 CAPTURE                          VAL R23
      219 CAPTURE                          REF R22
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R16
      222 NEWCLOSURE                       R26 P8
      223 CAPTURE                          VAL R23
      224 CAPTURE                          REF R22
      225 CAPTURE                          VAL R7
      226 CAPTURE                          VAL R16
      227 GETTABLEKS                       R27 R0 K54 ["PlayerAdded"]
      229 MOVE                             R29 R25
      230 NAMECALL                         R27 R27 K46 ["Connect"]
      232 CALL                             R27 2 0
      233 GETTABLEKS                       R27 R0 K55 ["PlayerRemoving"]
      235 MOVE                             R29 R26
      236 NAMECALL                         R27 R27 K46 ["Connect"]
      238 CALL                             R27 2 0
      239 GETIMPORT                        R27 K57 [ipairs]
      241 NAMECALL                         R28 R0 K58 ["GetPlayers"]
      243 CALL                             R28 1 -1
      244 CALL                             R27 -1 3
      245 FORGPREP_INEXT                   R27
      246 MOVE                             R32 R25
      247 MOVE                             R33 R31
      248 CALL                             R32 1 0
      249 FORGLOOP                         R27 2 [inext] ; [-4]
      251 LOADN                            R27 1
      252 NEWTABLE                         R22 0 0
      254 GETIMPORT                        R28 K60 [pairs]
      256 MOVE                             R29 R23
      257 CALL                             R28 1 3
      258 FORGPREP_NEXT                    R28
      259 SETTABLE                         R32 R22 R27
      260 ADDK                             R27 R27 K61 [1]
      261 FORGLOOP                         R28 2 ; [-3]
      263 LOADNIL                          R23
      264 LOADNIL                          R24
      265 JUMPIFNOT                        R6 ; [+8]
      266 LOADK                            R27 K62 ["CameraSubject"]
      267 NEWCLOSURE                       R28 P9
      268 CAPTURE                          VAL R8
      269 CAPTURE                          REF R24
      270 NAMECALL                         R25 R8 K46 ["Connect"]
      272 CALL                             R25 3 0
      273 JUMP                             ; [+10]
      274 LOADK                            R27 K62 ["CameraSubject"]
      275 NAMECALL                         R25 R9 K53 ["GetPropertyChangedSignal"]
      277 CALL                             R25 2 1
      278 NEWCLOSURE                       R27 P10
      279 CAPTURE                          REF R9
      280 CAPTURE                          REF R24
      281 NAMECALL                         R25 R25 K46 ["Connect"]
      283 CALL                             R25 2 0
      284 NEWCLOSURE                       R25 P11
      285 CAPTURE                          VAL R5
      286 CAPTURE                          REF R23
      287 NEWTABLE                         R26 0 5
      289 GETIMPORT                        R27 K64 [Vector2.new]
      291 LOADK                            R28 K65 [0.4]
      292 LOADN                            R29 0
      293 CALL                             R27 2 1
      294 GETIMPORT                        R28 K64 [Vector2.new]
      296 LOADK                            R29 K66 [-0.4]
      297 LOADN                            R30 0
      298 CALL                             R28 2 1
      299 GETIMPORT                        R29 K64 [Vector2.new]
      301 LOADN                            R30 0
      302 LOADK                            R31 K66 [-0.4]
      303 CALL                             R29 2 1
      304 GETIMPORT                        R30 K64 [Vector2.new]
      306 LOADN                            R31 0
      307 LOADK                            R32 K65 [0.4]
      308 CALL                             R30 2 1
      309 GETIMPORT                        R31 K64 [Vector2.new]
      311 LOADN                            R32 0
      312 LOADK                            R33 K67 [0.2]
      313 CALL                             R31 2 -1
      314 SETLIST                          R26 R27 -1 [1]
      316 NEWCLOSURE                       R27 P12
      317 CAPTURE                          VAL R5
      318 CAPTURE                          VAL R14
      319 CAPTURE                          REF R22
      320 CAPTURE                          VAL R13
      321 NEWCLOSURE                       R28 P13
      322 CAPTURE                          REF R22
      323 CAPTURE                          REF R19
      324 CAPTURE                          VAL R5
      325 CAPTURE                          VAL R14
      326 CAPTURE                          REF R23
      327 CAPTURE                          VAL R15
      328 CAPTURE                          VAL R13
      329 NEWCLOSURE                       R29 P14
      330 CAPTURE                          REF R9
      331 CAPTURE                          VAL R6
      332 CAPTURE                          VAL R8
      333 CAPTURE                          REF R20
      334 CAPTURE                          REF R21
      335 CAPTURE                          REF R19
      336 CAPTURE                          VAL R28
      337 DUPCLOSURE                       R30 K68 [PROTO_17]
      338 CAPTURE                          VAL R27
      339 CAPTURE                          VAL R10
      340 CAPTURE                          VAL R28
      341 CAPTURE                          VAL R26
      342 NEWCLOSURE                       R31 P16
      343 CAPTURE                          REF R23
      344 CAPTURE                          REF R24
      345 CAPTURE                          VAL R29
      346 CAPTURE                          VAL R30
      347 CLOSEUPVALS                      R9
      348 RETURN                           R31 1
