PROTO_0:
        0 GETTABLEN                        R4 R0 1
        1 GETTABLEN                        R5 R0 1
        2 MUL                              R3 R4 R5
        3 GETTABLEN                        R5 R0 2
        4 GETTABLEN                        R6 R0 2
        5 MUL                              R4 R5 R6
        6 ADD                              R2 R3 R4
        7 GETTABLEN                        R4 R0 3
        8 GETTABLEN                        R5 R0 3
        9 MUL                              R3 R4 R5
       10 ADD                              R1 R2 R3
       11 LOADB                            R2 1
       12 GETTABLEN                        R4 R0 4
       13 FASTCALL1                        MATH_ABS R4 ; [+2]
       14 GETIMPORT                        R3 K2 [math.abs]
       16 CALL                             R3 1 1
       17 LOADK                            R4 K3 [0.999999]
       18 JUMPIFLE                         R4 R3 ; [+6]
       20 LOADK                            R3 K4 [1E-12]
       21 JUMPIFLE                         R1 R3 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1

PROTO_1:
        0 GETTABLE                         R3 R1 R2
        1 JUMPIFNOT                        R3 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R3 1
        4 SETTABLE                         R3 R1 R2
        5 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R2
        9 GETIMPORT                        R3 K2 [table.insert]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["effectorChainPoseNames"]
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R0 0
        8 MOVE                             R4 R3
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLE                         R9 R1 R8
       13 JUMPIFNOT                        R9 ; [+1]
       14 JUMP                             ; [+9]
       15 LOADB                            R9 1
       16 SETTABLE                         R9 R1 R8
       17 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       19 MOVE                             R10 R0
       20 MOVE                             R11 R8
       21 GETIMPORT                        R9 K3 [table.insert]
       23 CALL                             R9 2 0
       24 FORGLOOP                         R4 2 ; [-13]
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["effectorChainPoseNames"]
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R0 0
        8 LOADNIL                          R4
        9 MOVE                             R5 R3
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLE                         R10 R1 R9
       14 JUMPIFNOT                        R10 ; [+2]
       15 MOVE                             R4 R8
       16 JUMP                             ; [+2]
       17 FORGLOOP                         R5 2 ; [-5]
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 RETURN                           R0 0
       22 MOVE                             R7 R4
       23 LENGTH                           R5 R3
       24 LOADN                            R6 1
       25 FORNPREP                         R5
       26 GETTABLE                         R8 R3 R7
       27 GETTABLE                         R9 R1 R8
       28 JUMPIFNOT                        R9 ; [+1]
       29 JUMP                             ; [+9]
       30 LOADB                            R9 1
       31 SETTABLE                         R9 R1 R8
       32 FASTCALL2                        TABLE_INSERT R0 R8 ; [+5]
       34 MOVE                             R10 R0
       35 MOVE                             R11 R8
       36 GETIMPORT                        R9 K3 [table.insert]
       38 CALL                             R9 2 0
       39 FORNLOOP                         R5
       40 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 GETTABLE                         R2 R0 R1
        5 JUMPIFNOTEQKNIL                  R2 ; [+3]
        7 LOADB                            R3 0
        8 RETURN                           R3 1
        9 MOVE                             R3 R2
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETUPVAL                         R8 0
       14 GETTABLEKS                       R8 R8 K0 ["isNearIdentityQuaternion"]
       16 MOVE                             R9 R7
       17 CALL                             R8 1 1
       18 JUMPIF                           R8 ; [+2]
       19 LOADB                            R8 1
       20 RETURN                           R8 1
       21 FORGLOOP                         R3 2 ; [-9]
       23 LOADB                            R3 0
       24 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["primaryJointByEffector"]
        2 JUMPIFEQKNIL                     R3 ; [+5]
        4 GETTABLEKS                       R3 R0 K0 ["primaryJointByEffector"]
        6 GETTABLE                         R2 R3 R1
        7 JUMP                             ; [+1]
        8 LOADNIL                          R2
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 RETURN                           R3 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADB                            R3 0
        3 RETURN                           R3 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["effectorChainPoseNames"]
        7 MOVE                             R4 R0
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+3]
       11 LOADB                            R4 0
       12 RETURN                           R4 1
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R1
       15 CALL                             R4 1 1
       16 JUMPIFEQKNIL                     R2 ; [+5]
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R2
       20 CALL                             R5 1 1
       21 JUMP                             ; [+2]
       22 NEWTABLE                         R5 0 0
       24 MOVE                             R6 R3
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 FORGPREP                         R6
       28 GETTABLE                         R11 R4 R10
       29 JUMPIFEQKNIL                     R11 ; [+20]
       31 GETTABLE                         R12 R5 R10
       32 JUMPIFEQKNIL                     R12 ; [+17]
       34 GETTABLEKS                       R14 R11 K1 ["CFrame"]
       36 GETTABLEKS                       R14 R14 K2 ["Position"]
       38 GETTABLEKS                       R15 R12 K1 ["CFrame"]
       40 GETTABLEKS                       R15 R15 K2 ["Position"]
       42 SUB                              R13 R14 R15
       43 GETTABLEKS                       R13 R13 K3 ["Magnitude"]
       45 LOADK                            R14 K4 [0.0001]
       46 JUMPIFNOTLE                      R14 R13 ; [+3]
       48 LOADB                            R13 1
       49 RETURN                           R13 1
       50 FORGLOOP                         R6 2 ; [-23]
       52 LOADB                            R6 0
       53 RETURN                           R6 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 NEWTABLE                         R1 0 0
        4 RETURN                           R1 1
        5 NEWTABLE                         R1 0 0
        7 NEWTABLE                         R2 0 0
        9 GETTABLEKS                       R3 R0 K0 ["postLocalByEffector"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETIMPORT                        R8 K2 [next]
       16 MOVE                             R9 R7
       17 CALL                             R8 1 1
       18 JUMPIFEQKNIL                     R8 ; [+13]
       20 GETTABLE                         R8 R2 R6
       21 JUMPIFNOT                        R8 ; [+1]
       22 JUMP                             ; [+9]
       23 LOADB                            R8 1
       24 SETTABLE                         R8 R2 R6
       25 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       27 MOVE                             R9 R1
       28 MOVE                             R10 R6
       29 GETIMPORT                        R8 K5 [table.insert]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-19]
       34 GETIMPORT                        R3 K7 [table.sort]
       36 MOVE                             R4 R1
       37 CALL                             R3 1 0
       38 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R4 0 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R4 1
        5 GETTABLEKS                       R5 R1 K0 ["localRotationDeltaByEffector"]
        7 MOVE                             R6 R0
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 FORGPREP                         R6
       11 GETUPVAL                         R11 0
       12 MOVE                             R12 R5
       13 MOVE                             R13 R10
       14 CALL                             R11 2 1
       15 GETTABLEKS                       R14 R1 K1 ["primaryJointByEffector"]
       17 JUMPIFEQKNIL                     R14 ; [+5]
       19 GETTABLEKS                       R14 R1 K1 ["primaryJointByEffector"]
       21 GETTABLE                         R13 R14 R10
       22 JUMP                             ; [+1]
       23 LOADNIL                          R13
       24 JUMPIFNOTEQKNIL                  R13 ; [+2]
       26 LOADB                            R12 0 +1
       27 LOADB                            R12 1
       28 JUMPIFNOT                        R12 ; [+7]
       29 NOT                              R12 R11
       30 JUMPIF                           R12 ; [+5]
       31 GETUPVAL                         R12 1
       32 MOVE                             R13 R10
       33 MOVE                             R14 R2
       34 MOVE                             R15 R3
       35 CALL                             R12 3 1
       36 JUMPIFNOT                        R11 ; [+4]
       37 JUMPIFNOT                        R12 ; [+3]
       38 LOADK                            R13 K2 ["move+rotate"]
       39 SETTABLE                         R13 R4 R10
       40 JUMP                             ; [+7]
       41 JUMPIFNOT                        R11 ; [+3]
       42 LOADK                            R13 K3 ["rotate"]
       43 SETTABLE                         R13 R4 R10
       44 JUMP                             ; [+3]
       45 JUMPIFNOT                        R12 ; [+2]
       46 LOADK                            R13 K4 ["move"]
       47 SETTABLE                         R13 R4 R10
       48 FORGLOOP                         R6 2 ; [-38]
       50 RETURN                           R4 1

PROTO_9:
        0 NEWTABLE                         R4 0 0
        2 NEWTABLE                         R5 0 0
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["editKindByEffector"]
        7 MOVE                             R7 R0
        8 MOVE                             R8 R1
        9 MOVE                             R9 R2
       10 MOVE                             R10 R3
       11 CALL                             R6 4 1
       12 JUMPIFEQKNIL                     R1 ; [+4]
       14 GETTABLEKS                       R7 R1 K1 ["localRotationDeltaByEffector"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R7
       18 JUMPIFEQKNIL                     R1 ; [+83]
       20 MOVE                             R8 R0
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 GETTABLE                         R13 R6 R12
       25 JUMPIFEQKS                       R13 K2 ["rotate"] ; [+3]
       27 JUMPIFNOTEQKS                    R13 K3 ["move+rotate"] ; [+35]
       29 MOVE                             R14 R7
       30 JUMPIFNOT                        R14 ; [+1]
       31 GETTABLE                         R14 R7 R12
       32 JUMPIFEQKNIL                     R14 ; [+25]
       34 MOVE                             R15 R14
       35 LOADNIL                          R16
       36 LOADNIL                          R17
       37 FORGPREP                         R15
       38 GETUPVAL                         R20 0
       39 GETTABLEKS                       R20 R20 K4 ["isNearIdentityQuaternion"]
       41 MOVE                             R21 R19
       42 CALL                             R20 1 1
       43 JUMPIF                           R20 ; [+12]
       44 GETTABLE                         R20 R5 R18
       45 JUMPIFNOT                        R20 ; [+1]
       46 JUMP                             ; [+9]
       47 LOADB                            R20 1
       48 SETTABLE                         R20 R5 R18
       49 FASTCALL2                        TABLE_INSERT R4 R18 ; [+5]
       51 MOVE                             R21 R4
       52 MOVE                             R22 R18
       53 GETIMPORT                        R20 K7 [table.insert]
       55 CALL                             R20 2 0
       56 FORGLOOP                         R15 2 ; [-19]
       58 GETUPVAL                         R15 1
       59 MOVE                             R16 R4
       60 MOVE                             R17 R5
       61 MOVE                             R18 R12
       62 CALL                             R15 3 0
       63 FORGLOOP                         R8 2 ; [-40]
       65 GETTABLEKS                       R8 R1 K8 ["primaryJointByEffector"]
       67 JUMPIFEQKNIL                     R8 ; [+29]
       69 GETTABLEKS                       R8 R1 K8 ["primaryJointByEffector"]
       71 LOADNIL                          R9
       72 LOADNIL                          R10
       73 FORGPREP                         R8
       74 JUMPIFNOTEQKS                    R12 K9 ["HumanoidRootPart"] ; [+20]
       76 GETTABLE                         R13 R6 R11
       77 JUMPIFEQKS                       R13 K2 ["rotate"] ; [+3]
       79 JUMPIFNOTEQKS                    R13 K3 ["move+rotate"] ; [+15]
       81 GETTABLEKS                       R14 R5 K9 ["HumanoidRootPart"]
       83 JUMPIFNOT                        R14 ; [+1]
       84 JUMP                             ; [+10]
       85 LOADB                            R14 1
       86 SETTABLEKS                       R14 R5 K9 ["HumanoidRootPart"]
       88 FASTCALL2K                       TABLE_INSERT R4 K9 ; [+5]
       90 MOVE                             R15 R4
       91 LOADK                            R16 K9 ["HumanoidRootPart"]
       92 GETIMPORT                        R14 K7 [table.insert]
       94 CALL                             R14 2 0
       95 FORGLOOP                         R8 2 ; [-22]
       97 GETIMPORT                        R8 K11 [table.sort]
       99 MOVE                             R9 R4
      100 CALL                             R8 1 0
      101 RETURN                           R4 1
      102 JUMPIFEQKNIL                     R2 ; [+5]
      104 GETUPVAL                         R8 2
      105 MOVE                             R9 R2
      106 CALL                             R8 1 1
      107 JUMP                             ; [+2]
      108 NEWTABLE                         R8 0 0
      110 JUMPIFEQKNIL                     R3 ; [+5]
      112 GETUPVAL                         R9 2
      113 MOVE                             R10 R3
      114 CALL                             R9 1 1
      115 JUMP                             ; [+2]
      116 NEWTABLE                         R9 0 0
      118 MOVE                             R10 R0
      119 LOADNIL                          R11
      120 LOADNIL                          R12
      121 FORGPREP                         R10
      122 GETUPVAL                         R15 3
      123 GETTABLEKS                       R15 R15 K12 ["effectorChainPoseNames"]
      125 MOVE                             R16 R14
      126 CALL                             R15 1 1
      127 JUMPIFEQKNIL                     R15 ; [+53]
      129 MOVE                             R16 R15
      130 LOADNIL                          R17
      131 LOADNIL                          R18
      132 FORGPREP                         R16
      133 GETTABLE                         R21 R8 R20
      134 JUMPIFEQKNIL                     R21 ; [+39]
      136 GETTABLE                         R22 R9 R20
      137 GETTABLEKS                       R24 R21 K13 ["CFrame"]
      139 GETTABLEKS                       R25 R21 K13 ["CFrame"]
      141 GETTABLEKS                       R25 R25 K14 ["Position"]
      143 SUB                              R23 R24 R25
      144 JUMPIFEQKNIL                     R22 ; [+9]
      146 GETTABLEKS                       R25 R22 K13 ["CFrame"]
      148 GETTABLEKS                       R26 R22 K13 ["CFrame"]
      150 GETTABLEKS                       R26 R26 K14 ["Position"]
      152 SUB                              R24 R25 R26
      153 JUMP                             ; [+1]
      154 LOADNIL                          R24
      155 JUMPIFEQKNIL                     R24 ; [+6]
      157 MOVE                             R27 R23
      158 NAMECALL                         R25 R24 K15 ["FuzzyEq"]
      160 CALL                             R25 2 1
      161 JUMPIF                           R25 ; [+12]
      162 GETTABLE                         R25 R5 R20
      163 JUMPIFNOT                        R25 ; [+1]
      164 JUMP                             ; [+9]
      165 LOADB                            R25 1
      166 SETTABLE                         R25 R5 R20
      167 FASTCALL2                        TABLE_INSERT R4 R20 ; [+5]
      169 MOVE                             R26 R4
      170 MOVE                             R27 R20
      171 GETIMPORT                        R25 K7 [table.insert]
      173 CALL                             R25 2 0
      174 FORGLOOP                         R16 2 ; [-42]
      176 GETUPVAL                         R16 1
      177 MOVE                             R17 R4
      178 MOVE                             R18 R5
      179 MOVE                             R19 R14
      180 CALL                             R16 3 0
      181 FORGLOOP                         R10 2 ; [-60]
      183 GETIMPORT                        R10 K11 [table.sort]
      185 MOVE                             R11 R4
      186 CALL                             R10 1 0
      187 RETURN                           R4 1

PROTO_10:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R2 2
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 JUMPIFEQKNIL                     R1 ; [+5]
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R1
       10 CALL                             R5 1 1
       11 JUMP                             ; [+2]
       12 NEWTABLE                         R5 0 0
       14 NEWTABLE                         R6 0 0
       16 NEWTABLE                         R7 0 0
       18 NEWTABLE                         R8 0 0
       20 NEWTABLE                         R9 0 0
       22 MOVE                             R10 R2
       23 LOADNIL                          R11
       24 LOADNIL                          R12
       25 FORGPREP                         R10
       26 GETTABLE                         R15 R6 R14
       27 JUMPIFNOT                        R15 ; [+1]
       28 JUMP                             ; [+9]
       29 LOADB                            R15 1
       30 SETTABLE                         R15 R6 R14
       31 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
       33 MOVE                             R16 R8
       34 MOVE                             R17 R14
       35 GETIMPORT                        R15 K2 [table.insert]
       37 CALL                             R15 2 0
       38 FORGLOOP                         R10 2 ; [-13]
       40 MOVE                             R10 R3
       41 LOADNIL                          R11
       42 LOADNIL                          R12
       43 FORGPREP                         R10
       44 GETTABLE                         R15 R7 R14
       45 JUMPIFNOT                        R15 ; [+1]
       46 JUMP                             ; [+9]
       47 LOADB                            R15 1
       48 SETTABLE                         R15 R7 R14
       49 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       51 MOVE                             R16 R9
       52 MOVE                             R17 R14
       53 GETIMPORT                        R15 K2 [table.insert]
       55 CALL                             R15 2 0
       56 FORGLOOP                         R10 2 ; [-13]
       58 GETUPVAL                         R10 1
       59 LOADNIL                          R11
       60 LOADNIL                          R12
       61 FORGPREP                         R10
       62 GETTABLE                         R15 R4 R14
       63 JUMPIFEQKNIL                     R15 ; [+79]
       65 GETTABLE                         R16 R5 R14
       66 GETTABLEKS                       R17 R15 K3 ["CFrame"]
       68 GETTABLEKS                       R18 R17 K4 ["Position"]
       70 JUMPIFNOTEQKNIL                  R16 ; [+26]
       72 GETTABLE                         R19 R6 R14
       73 JUMPIFNOT                        R19 ; [+1]
       74 JUMP                             ; [+9]
       75 LOADB                            R19 1
       76 SETTABLE                         R19 R6 R14
       77 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
       79 MOVE                             R20 R8
       80 MOVE                             R21 R14
       81 GETIMPORT                        R19 K2 [table.insert]
       83 CALL                             R19 2 0
       84 GETTABLE                         R19 R7 R14
       85 JUMPIFNOT                        R19 ; [+1]
       86 JUMP                             ; [+56]
       87 LOADB                            R19 1
       88 SETTABLE                         R19 R7 R14
       89 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
       91 MOVE                             R20 R9
       92 MOVE                             R21 R14
       93 GETIMPORT                        R19 K2 [table.insert]
       95 CALL                             R19 2 0
       96 JUMP                             ; [+46]
       97 GETTABLEKS                       R19 R16 K3 ["CFrame"]
       99 GETTABLEKS                       R22 R19 K4 ["Position"]
      101 SUB                              R21 R18 R22
      102 GETTABLEKS                       R21 R21 K5 ["Magnitude"]
      104 LOADK                            R22 K6 [0.0001]
      105 JUMPIFLE                         R22 R21 ; [+2]
      107 LOADB                            R20 0 +1
      108 LOADB                            R20 1
      109 GETTABLEKS                       R23 R19 K4 ["Position"]
      111 SUB                              R22 R19 R23
      112 SUB                              R24 R17 R18
      113 NAMECALL                         R22 R22 K7 ["FuzzyEq"]
      115 CALL                             R22 2 1
      116 NOT                              R21 R22
      117 JUMPIFNOT                        R20 ; [+12]
      118 GETTABLE                         R22 R6 R14
      119 JUMPIFNOT                        R22 ; [+1]
      120 JUMP                             ; [+9]
      121 LOADB                            R22 1
      122 SETTABLE                         R22 R6 R14
      123 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
      125 MOVE                             R23 R8
      126 MOVE                             R24 R14
      127 GETIMPORT                        R22 K2 [table.insert]
      129 CALL                             R22 2 0
      130 JUMPIFNOT                        R21 ; [+12]
      131 GETTABLE                         R22 R7 R14
      132 JUMPIFNOT                        R22 ; [+1]
      133 JUMP                             ; [+9]
      134 LOADB                            R22 1
      135 SETTABLE                         R22 R7 R14
      136 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
      138 MOVE                             R23 R9
      139 MOVE                             R24 R14
      140 GETIMPORT                        R22 K2 [table.insert]
      142 CALL                             R22 2 0
      143 FORGLOOP                         R10 2 ; [-82]
      145 GETIMPORT                        R10 K9 [table.sort]
      147 MOVE                             R11 R8
      148 CALL                             R10 1 0
      149 GETIMPORT                        R10 K9 [table.sort]
      151 MOVE                             R11 R9
      152 CALL                             R10 1 0
      153 RETURN                           R8 2

PROTO_11:
        0 NEWTABLE                         R4 0 0
        2 NEWTABLE                         R5 0 0
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R4 1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K0 ["editKindByEffector"]
       10 MOVE                             R7 R0
       11 MOVE                             R8 R1
       12 MOVE                             R9 R2
       13 MOVE                             R10 R3
       14 CALL                             R6 4 1
       15 MOVE                             R7 R0
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 FORGPREP                         R7
       19 GETTABLE                         R12 R6 R11
       20 JUMPIFEQKS                       R12 K1 ["move"] ; [+3]
       22 JUMPIFNOTEQKS                    R12 K2 ["move+rotate"] ; [+29]
       24 GETTABLEKS                       R13 R1 K3 ["primaryJointByEffector"]
       26 JUMPIFEQKNIL                     R13 ; [+20]
       28 GETTABLEKS                       R14 R1 K3 ["primaryJointByEffector"]
       30 GETTABLE                         R13 R14 R11
       31 JUMPIFNOTEQKS                    R13 K4 ["HumanoidRootPart"] ; [+15]
       33 GETTABLEKS                       R14 R5 K4 ["HumanoidRootPart"]
       35 JUMPIFNOT                        R14 ; [+1]
       36 JUMP                             ; [+10]
       37 LOADB                            R14 1
       38 SETTABLEKS                       R14 R5 K4 ["HumanoidRootPart"]
       40 FASTCALL2K                       TABLE_INSERT R4 K4 ; [+5]
       42 MOVE                             R15 R4
       43 LOADK                            R16 K4 ["HumanoidRootPart"]
       44 GETIMPORT                        R14 K7 [table.insert]
       46 CALL                             R14 2 0
       47 GETUPVAL                         R13 1
       48 MOVE                             R14 R4
       49 MOVE                             R15 R5
       50 MOVE                             R16 R11
       51 CALL                             R13 3 0
       52 FORGLOOP                         R7 2 ; [-34]
       54 GETIMPORT                        R7 K9 [table.sort]
       56 MOVE                             R8 R4
       57 CALL                             R7 1 0
       58 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["Posing"]
       15 GETTABLEKS                       R2 R2 K9 ["DragEditSnapshot"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Util"]
       22 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       24 GETTABLEKS                       R3 R3 K8 ["Posing"]
       26 GETTABLEKS                       R3 R3 K10 ["KeyframePoses"]
       28 CALL                             R2 1 1
       29 NEWTABLE                         R3 8 0
       31 DUPCLOSURE                       R4 K11 [PROTO_0]
       32 SETTABLEKS                       R4 R3 K12 ["isNearIdentityQuaternion"]
       34 DUPCLOSURE                       R4 K13 [PROTO_1]
       35 GETTABLEKS                       R5 R2 K14 ["poseMap"]
       37 DUPCLOSURE                       R6 K15 [PROTO_2]
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R7 K16 [PROTO_3]
       40 CAPTURE                          VAL R1
       41 DUPCLOSURE                       R8 K17 [PROTO_4]
       42 CAPTURE                          VAL R3
       43 DUPCLOSURE                       R9 K18 [PROTO_5]
       44 DUPCLOSURE                       R10 K19 [PROTO_6]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 DUPCLOSURE                       R11 K20 [PROTO_7]
       48 SETTABLEKS                       R11 R3 K21 ["effectorsFromRotationIntent"]
       50 DUPCLOSURE                       R11 K22 [PROTO_8]
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R10
       53 SETTABLEKS                       R11 R3 K23 ["editKindByEffector"]
       55 DUPCLOSURE                       R11 K24 [PROTO_9]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R11 R3 K25 ["rotateJointNamesForEdit"]
       62 NEWTABLE                         R11 0 3
       64 LOADK                            R12 K26 ["LowerTorso"]
       65 LOADK                            R13 K27 ["Torso"]
       66 LOADK                            R14 K28 ["HumanoidRootPart"]
       67 SETLIST                          R11 R12 3 [1]
       69 SETTABLEKS                       R11 R3 K29 ["ROOT_CHANNEL_POSES"]
       71 GETTABLEKS                       R11 R3 K29 ["ROOT_CHANNEL_POSES"]
       73 DUPCLOSURE                       R12 K30 [PROTO_10]
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R11
       76 SETTABLEKS                       R12 R3 K31 ["includeRootChannels"]
       78 DUPCLOSURE                       R12 K32 [PROTO_11]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R12 R3 K33 ["moveJointNamesForEdit"]
       83 RETURN                           R3 1
