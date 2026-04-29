PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["lower"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["guessJointSide"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 LOADNIL                          R3
        9 JUMPIFNOTEQKS                    R2 K2 ["left"] ; [+4]
       11 GETIMPORT                        R3 K6 [Enum.DigitsRigDescriptionSide.Left]
       13 JUMP                             ; [+4]
       14 JUMPIFNOTEQKS                    R2 K7 ["right"] ; [+3]
       16 GETIMPORT                        R3 K9 [Enum.DigitsRigDescriptionSide.Right]
       18 DUPTABLE                         R4 K13 [{"finger", "digit", "side"}]
       19 LOADNIL                          R5
       20 SETTABLEKS                       R5 R4 K10 ["finger"]
       22 LOADNIL                          R5
       23 SETTABLEKS                       R5 R4 K11 ["digit"]
       25 SETTABLEKS                       R3 R4 K12 ["side"]
       27 GETUPVAL                         R5 1
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 GETTABLEKS                       R12 R9 K14 ["pattern"]
       33 NAMECALL                         R10 R1 K15 ["find"]
       35 CALL                             R10 2 1
       36 JUMPIFNOT                        R10 ; [+5]
       37 GETTABLEKS                       R10 R9 K10 ["finger"]
       39 SETTABLEKS                       R10 R4 K10 ["finger"]
       41 JUMP                             ; [+2]
       42 FORGLOOP                         R5 2 ; [-12]
       44 LOADK                            R7 K16 ["finger%d(%d)"]
       45 NAMECALL                         R5 R1 K17 ["match"]
       47 CALL                             R5 2 1
       48 JUMPIFNOT                        R5 ; [+10]
       49 FASTCALL1                        TONUMBER R5 ; [+3]
       50 MOVE                             R9 R5
       51 GETIMPORT                        R8 K21 [tonumber]
       53 CALL                             R8 1 1
       54 ORK                              R7 R8 K19 [0]
       55 ADDK                             R6 R7 K18 [1]
       56 SETTABLEKS                       R6 R4 K11 ["digit"]
       58 RETURN                           R4 1
       59 LOADNIL                          R6
       60 LOADK                            R9 K22 ["%d+"]
       61 NAMECALL                         R7 R1 K23 ["gmatch"]
       63 CALL                             R7 2 3
       64 FORGPREP                         R7
       65 FASTCALL1                        TONUMBER R10 ; [+3]
       66 MOVE                             R13 R10
       67 GETIMPORT                        R12 K21 [tonumber]
       69 CALL                             R12 1 1
       70 JUMPIFNOT                        R12 ; [+4]
       71 LOADN                            R13 1
       72 JUMPIFNOTLE                      R13 R12 ; [+2]
       74 MOVE                             R6 R12
       75 FORGLOOP                         R7 1 ; [-11]
       77 SETTABLEKS                       R6 R4 K11 ["digit"]
       79 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 LOADB                            R3 1
        6 SETTABLE                         R3 R2 R0
        7 NEWTABLE                         R2 0 0
        9 LOADK                            R5 K0 ["Motor6D"]
       10 NAMECALL                         R3 R0 K1 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+23]
       14 GETTABLEKS                       R3 R0 K2 ["Part1"]
       16 JUMPIFNOT                        R3 ; [+79]
       17 NAMECALL                         R4 R3 K3 ["GetChildren"]
       19 CALL                             R4 1 3
       20 FORGPREP                         R4
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R9 R10 K4 ["isValidTJoint"]
       24 MOVE                             R10 R8
       25 CALL                             R9 1 1
       26 JUMPIFNOT                        R9 ; [+7]
       27 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       29 MOVE                             R10 R2
       30 MOVE                             R11 R8
       31 GETIMPORT                        R9 K7 [table.insert]
       33 CALL                             R9 2 0
       34 FORGLOOP                         R4 2 ; [-14]
       36 JUMP                             ; [+59]
       37 LOADK                            R5 K8 ["Bone"]
       38 NAMECALL                         R3 R0 K1 ["IsA"]
       40 CALL                             R3 2 1
       41 JUMPIF                           R3 ; [+5]
       42 LOADK                            R5 K9 ["Attachment"]
       43 NAMECALL                         R3 R0 K1 ["IsA"]
       45 CALL                             R3 2 1
       46 JUMPIFNOT                        R3 ; [+20]
       47 NAMECALL                         R3 R0 K3 ["GetChildren"]
       49 CALL                             R3 1 3
       50 FORGPREP                         R3
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R8 R9 K4 ["isValidTJoint"]
       54 MOVE                             R9 R7
       55 CALL                             R8 1 1
       56 JUMPIFNOT                        R8 ; [+7]
       57 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       59 MOVE                             R9 R2
       60 MOVE                             R10 R7
       61 GETIMPORT                        R8 K7 [table.insert]
       63 CALL                             R8 2 0
       64 FORGLOOP                         R3 2 ; [-14]
       66 JUMP                             ; [+29]
       67 LOADK                            R5 K10 ["AnimationConstraint"]
       68 NAMECALL                         R3 R0 K1 ["IsA"]
       70 CALL                             R3 2 1
       71 JUMPIFNOT                        R3 ; [+24]
       72 GETTABLEKS                       R3 R0 K11 ["Parent"]
       74 JUMPIFNOT                        R3 ; [+21]
       75 NAMECALL                         R4 R3 K3 ["GetChildren"]
       77 CALL                             R4 1 3
       78 FORGPREP                         R4
       79 JUMPIFEQ                         R8 R0 ; [+14]
       81 GETUPVAL                         R10 1
       82 GETTABLEKS                       R9 R10 K4 ["isValidTJoint"]
       84 MOVE                             R10 R8
       85 CALL                             R9 1 1
       86 JUMPIFNOT                        R9 ; [+7]
       87 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       89 MOVE                             R10 R2
       90 MOVE                             R11 R8
       91 GETIMPORT                        R9 K7 [table.insert]
       93 CALL                             R9 2 0
       94 FORGLOOP                         R4 2 ; [-16]
       96 MOVE                             R3 R2
       97 LOADNIL                          R4
       98 LOADNIL                          R5
       99 FORGPREP                         R3
      100 GETUPVAL                         R9 0
      101 GETTABLE                         R8 R9 R7
      102 JUMPIF                           R8 ; [+26]
      103 GETUPVAL                         R8 2
      104 GETTABLEKS                       R9 R7 K12 ["Name"]
      106 CALL                             R8 1 1
      107 GETUPVAL                         R10 3
      108 DUPTABLE                         R11 K17 [{"joint", "name", "parse", "depth"}]
      109 SETTABLEKS                       R7 R11 K13 ["joint"]
      111 GETTABLEKS                       R12 R7 K12 ["Name"]
      113 SETTABLEKS                       R12 R11 K14 ["name"]
      115 SETTABLEKS                       R8 R11 K15 ["parse"]
      117 ADDK                             R12 R1 K18 [1]
      118 SETTABLEKS                       R12 R11 K16 ["depth"]
      120 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      122 GETIMPORT                        R9 K7 [table.insert]
      124 CALL                             R9 2 0
      125 GETUPVAL                         R9 4
      126 MOVE                             R10 R7
      127 ADDK                             R11 R1 K18 [1]
      128 CALL                             R9 2 0
      129 FORGLOOP                         R3 2 ; [-30]
      131 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R3
       10 MOVE                             R4 R3
       11 MOVE                             R5 R0
       12 LOADN                            R6 0
       13 CALL                             R4 2 0
       14 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R3 R0
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [tostring]
        5 CALL                             R4 1 1
        6 CONCAT                           R2 R3 R4
        7 RETURN                           R2 1

PROTO_4:
        0 LOADN                            R4 0
        1 GETTABLEKS                       R5 R0 K0 ["parse"]
        3 GETTABLEKS                       R6 R5 K1 ["finger"]
        5 JUMPIFNOTEQ                      R6 R1 ; [+3]
        7 ADDK                             R4 R4 K2 [3]
        8 JUMP                             ; [+5]
        9 GETTABLEKS                       R6 R5 K1 ["finger"]
       11 JUMPIFEQKNIL                     R6 ; [+2]
       13 SUBK                             R4 R4 K3 [5]
       14 GETTABLEKS                       R6 R5 K4 ["digit"]
       16 JUMPIFNOTEQ                      R6 R2 ; [+3]
       18 ADDK                             R4 R4 K5 [2]
       19 JUMP                             ; [+5]
       20 GETTABLEKS                       R6 R5 K4 ["digit"]
       22 JUMPIFEQKNIL                     R6 ; [+2]
       24 SUBK                             R4 R4 K2 [3]
       25 JUMPIFNOT                        R3 ; [+10]
       26 GETTABLEKS                       R6 R5 K6 ["side"]
       28 JUMPIFNOT                        R6 ; [+7]
       29 GETTABLEKS                       R6 R5 K6 ["side"]
       31 JUMPIFNOTEQ                      R6 R3 ; [+3]
       33 ADDK                             R4 R4 K7 [1]
       34 JUMP                             ; [+1]
       35 SUBK                             R4 R4 K8 [10]
       36 GETTABLEKS                       R6 R5 K1 ["finger"]
       38 JUMPIFNOTEQ                      R6 R1 ; [+17]
       40 GETTABLEKS                       R8 R0 K9 ["depth"]
       42 SUB                              R7 R8 R2
       43 FASTCALL1                        MATH_ABS R7 ; [+2]
       44 GETIMPORT                        R6 K12 [math.abs]
       46 CALL                             R6 1 1
       47 LOADN                            R8 0
       48 MULK                             R10 R6 K13 [0.3]
       49 SUBRK                            R9 R7 K10 ["math"]
       50 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       52 GETIMPORT                        R7 K15 [math.max]
       54 CALL                             R7 2 1
       55 ADD                              R4 R4 R7
       56 RETURN                           R4 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["depth"]
        2 GETTABLEKS                       R4 R1 K0 ["depth"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["score"]
        2 GETTABLEKS                       R4 R1 K0 ["score"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R3
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 GETTABLEKS                       R10 R9 K0 ["Name"]
        8 SETTABLE                         R9 R4 R10
        9 FORGLOOP                         R5 2 ; [-4]
       11 MOVE                             R5 R3
       12 LOADNIL                          R6
       13 LOADNIL                          R7
       14 FORGPREP                         R5
       15 MOVE                             R12 R9
       16 LOADNIL                          R13
       17 NAMECALL                         R10 R0 K1 ["SetJoint"]
       19 CALL                             R10 3 0
       20 FORGLOOP                         R5 2 ; [-6]
       22 GETUPVAL                         R5 0
       23 MOVE                             R6 R1
       24 CALL                             R5 1 1
       25 LENGTH                           R6 R5
       26 JUMPIFNOTEQKN                    R6 K2 [0] ; [+2]
       28 RETURN                           R0 0
       29 NEWTABLE                         R6 0 0
       31 NEWTABLE                         R7 0 0
       33 GETUPVAL                         R8 1
       34 LOADNIL                          R9
       35 LOADNIL                          R10
       36 FORGPREP                         R8
       37 NEWTABLE                         R13 0 0
       39 MOVE                             R14 R5
       40 LOADNIL                          R15
       41 LOADNIL                          R16
       42 FORGPREP                         R14
       43 GETTABLEKS                       R20 R18 K3 ["parse"]
       45 GETTABLEKS                       R19 R20 K4 ["finger"]
       47 JUMPIFNOTEQ                      R19 R12 ; [+20]
       49 GETTABLEKS                       R20 R18 K3 ["parse"]
       51 GETTABLEKS                       R19 R20 K5 ["side"]
       53 JUMPIFEQKNIL                     R19 ; [+7]
       55 GETTABLEKS                       R20 R18 K3 ["parse"]
       57 GETTABLEKS                       R19 R20 K5 ["side"]
       59 JUMPIFNOTEQ                      R19 R2 ; [+8]
       61 FASTCALL2                        TABLE_INSERT R13 R18 ; [+5]
       63 MOVE                             R20 R13
       64 MOVE                             R21 R18
       65 GETIMPORT                        R19 K8 [table.insert]
       67 CALL                             R19 2 0
       68 FORGLOOP                         R14 2 ; [-26]
       70 LENGTH                           R14 R13
       71 JUMPIFEQKN                       R14 K2 [0] ; [+53]
       73 GETIMPORT                        R14 K10 [table.sort]
       75 MOVE                             R15 R13
       76 DUPCLOSURE                       R16 K11 [PROTO_5]
       77 CALL                             R14 2 0
       78 GETUPVAL                         R15 2
       79 LENGTH                           R14 R15
       80 LOADN                            R16 1
       81 LENGTH                           R19 R13
       82 SUB                              R18 R19 R14
       83 ADDK                             R17 R18 K12 [1]
       84 FASTCALL2                        MATH_MAX R16 R17 ; [+3]
       86 GETIMPORT                        R15 K15 [math.max]
       88 CALL                             R15 2 1
       89 LOADN                            R16 1
       90 MOVE                             R19 R15
       91 LENGTH                           R17 R13
       92 LOADN                            R18 1
       93 FORNPREP                         R17
       94 GETTABLE                         R20 R13 R19
       95 MOVE                             R21 R16
       96 ADDK                             R16 R16 K12 [1]
       97 MOVE                             R23 R12
       98 FASTCALL1                        TOSTRING R21 ; [+3]
       99 MOVE                             R25 R21
      100 GETIMPORT                        R24 K17 [tostring]
      102 CALL                             R24 1 1
      103 CONCAT                           R22 R23 R24
      104 GETTABLE                         R23 R4 R22
      105 JUMPIFNOT                        R23 ; [+18]
      106 GETTABLEKS                       R25 R20 K18 ["joint"]
      108 GETTABLE                         R24 R6 R25
      109 JUMPIF                           R24 ; [+14]
      110 GETTABLE                         R24 R7 R22
      111 JUMPIF                           R24 ; [+12]
      112 MOVE                             R26 R23
      113 GETTABLEKS                       R27 R20 K18 ["joint"]
      115 NAMECALL                         R24 R0 K1 ["SetJoint"]
      117 CALL                             R24 3 0
      118 GETTABLEKS                       R24 R20 K18 ["joint"]
      120 LOADB                            R25 1
      121 SETTABLE                         R25 R6 R24
      122 LOADB                            R24 1
      123 SETTABLE                         R24 R7 R22
      124 FORNLOOP                         R17
      125 FORGLOOP                         R8 2 ; [-89]
      127 NEWTABLE                         R8 0 0
      129 MOVE                             R9 R5
      130 LOADNIL                          R10
      131 LOADNIL                          R11
      132 FORGPREP                         R9
      133 GETTABLEKS                       R15 R13 K18 ["joint"]
      135 GETTABLE                         R14 R6 R15
      136 JUMPIF                           R14 ; [+7]
      137 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
      139 MOVE                             R15 R8
      140 MOVE                             R16 R13
      141 GETIMPORT                        R14 K8 [table.insert]
      143 CALL                             R14 2 0
      144 FORGLOOP                         R9 2 ; [-12]
      146 LENGTH                           R9 R8
      147 LOADN                            R10 0
      148 JUMPIFNOTLT                      R10 R9 ; [+95]
      150 NEWTABLE                         R9 0 0
      152 GETUPVAL                         R10 1
      153 LOADNIL                          R11
      154 LOADNIL                          R12
      155 FORGPREP                         R10
      156 GETUPVAL                         R15 2
      157 LOADNIL                          R16
      158 LOADNIL                          R17
      159 FORGPREP                         R15
      160 MOVE                             R21 R14
      161 FASTCALL1                        TOSTRING R19 ; [+3]
      162 MOVE                             R23 R19
      163 GETIMPORT                        R22 K17 [tostring]
      165 CALL                             R22 1 1
      166 CONCAT                           R20 R21 R22
      167 GETTABLE                         R21 R7 R20
      168 JUMPIF                           R21 ; [+29]
      169 GETTABLE                         R21 R4 R20
      170 JUMPIFNOT                        R21 ; [+27]
      171 MOVE                             R21 R8
      172 LOADNIL                          R22
      173 LOADNIL                          R23
      174 FORGPREP                         R21
      175 GETUPVAL                         R26 3
      176 MOVE                             R27 R25
      177 MOVE                             R28 R14
      178 MOVE                             R29 R19
      179 MOVE                             R30 R2
      180 CALL                             R26 4 1
      181 DUPTABLE                         R29 K21 [{"joint", "labelName", "score"}]
      182 GETTABLEKS                       R30 R25 K18 ["joint"]
      184 SETTABLEKS                       R30 R29 K18 ["joint"]
      186 SETTABLEKS                       R20 R29 K19 ["labelName"]
      188 SETTABLEKS                       R26 R29 K20 ["score"]
      190 FASTCALL2                        TABLE_INSERT R9 R29 ; [+4]
      192 MOVE                             R28 R9
      193 GETIMPORT                        R27 K8 [table.insert]
      195 CALL                             R27 2 0
      196 FORGLOOP                         R21 2 ; [-22]
      198 FORGLOOP                         R15 2 ; [-39]
      200 FORGLOOP                         R10 2 ; [-45]
      202 GETIMPORT                        R10 K10 [table.sort]
      204 MOVE                             R11 R9
      205 DUPCLOSURE                       R12 K22 [PROTO_6]
      206 CALL                             R10 2 0
      207 MOVE                             R10 R9
      208 LOADNIL                          R11
      209 LOADNIL                          R12
      210 FORGPREP                         R10
      211 GETTABLEKS                       R15 R14 K20 ["score"]
      213 LOADN                            R16 2
      214 JUMPIFLT                         R15 R16 ; [+29]
      216 GETTABLEKS                       R16 R14 K18 ["joint"]
      218 GETTABLE                         R15 R6 R16
      219 JUMPIF                           R15 ; [+22]
      220 GETTABLEKS                       R16 R14 K19 ["labelName"]
      222 GETTABLE                         R15 R7 R16
      223 JUMPIF                           R15 ; [+18]
      224 GETTABLEKS                       R16 R14 K19 ["labelName"]
      226 GETTABLE                         R15 R4 R16
      227 JUMPIFNOT                        R15 ; [+14]
      228 MOVE                             R18 R15
      229 GETTABLEKS                       R19 R14 K18 ["joint"]
      231 NAMECALL                         R16 R0 K1 ["SetJoint"]
      233 CALL                             R16 3 0
      234 GETTABLEKS                       R16 R14 K18 ["joint"]
      236 LOADB                            R17 1
      237 SETTABLE                         R17 R6 R16
      238 GETTABLEKS                       R16 R14 K19 ["labelName"]
      240 LOADB                            R17 1
      241 SETTABLE                         R17 R7 R16
      242 FORGLOOP                         R10 2 ; [-32]
      244 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Automapper"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Types"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["Utils"]
       19 CALL                             R3 1 1
       20 NEWTABLE                         R4 0 8
       22 DUPTABLE                         R5 K10 [{"pattern", "finger"}]
       23 LOADK                            R6 K11 ["thumb"]
       24 SETTABLEKS                       R6 R5 K8 ["pattern"]
       26 LOADK                            R6 K12 ["Thumb"]
       27 SETTABLEKS                       R6 R5 K9 ["finger"]
       29 DUPTABLE                         R6 K10 [{"pattern", "finger"}]
       30 LOADK                            R7 K13 ["index"]
       31 SETTABLEKS                       R7 R6 K8 ["pattern"]
       33 LOADK                            R7 K14 ["Index"]
       34 SETTABLEKS                       R7 R6 K9 ["finger"]
       36 DUPTABLE                         R7 K10 [{"pattern", "finger"}]
       37 LOADK                            R8 K15 ["middle"]
       38 SETTABLEKS                       R8 R7 K8 ["pattern"]
       40 LOADK                            R8 K16 ["Middle"]
       41 SETTABLEKS                       R8 R7 K9 ["finger"]
       43 DUPTABLE                         R8 K10 [{"pattern", "finger"}]
       44 LOADK                            R9 K17 ["ring"]
       45 SETTABLEKS                       R9 R8 K8 ["pattern"]
       47 LOADK                            R9 K18 ["Ring"]
       48 SETTABLEKS                       R9 R8 K9 ["finger"]
       50 DUPTABLE                         R9 K10 [{"pattern", "finger"}]
       51 LOADK                            R10 K19 ["pinky"]
       52 SETTABLEKS                       R10 R9 K8 ["pattern"]
       54 LOADK                            R10 K20 ["Pinky"]
       55 SETTABLEKS                       R10 R9 K9 ["finger"]
       57 DUPTABLE                         R10 K10 [{"pattern", "finger"}]
       58 LOADK                            R11 K21 ["little"]
       59 SETTABLEKS                       R11 R10 K8 ["pattern"]
       61 LOADK                            R11 K20 ["Pinky"]
       62 SETTABLEKS                       R11 R10 K9 ["finger"]
       64 DUPTABLE                         R11 K10 [{"pattern", "finger"}]
       65 LOADK                            R12 K22 ["pinkie"]
       66 SETTABLEKS                       R12 R11 K8 ["pattern"]
       68 LOADK                            R12 K20 ["Pinky"]
       69 SETTABLEKS                       R12 R11 K9 ["finger"]
       71 DUPTABLE                         R12 K10 [{"pattern", "finger"}]
       72 LOADK                            R13 K9 ["finger"]
       73 SETTABLEKS                       R13 R12 K8 ["pattern"]
       75 LOADK                            R13 K16 ["Middle"]
       76 SETTABLEKS                       R13 R12 K9 ["finger"]
       78 SETLIST                          R4 R5 8 [1]
       80 DUPCLOSURE                       R5 K23 [PROTO_0]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R4
       83 DUPCLOSURE                       R6 K24 [PROTO_2]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R5
       86 DUPCLOSURE                       R7 K25 [PROTO_3]
       87 DUPCLOSURE                       R8 K26 [PROTO_4]
       88 NEWTABLE                         R9 0 5
       90 LOADK                            R10 K12 ["Thumb"]
       91 LOADK                            R11 K14 ["Index"]
       92 LOADK                            R12 K16 ["Middle"]
       93 LOADK                            R13 K18 ["Ring"]
       94 LOADK                            R14 K20 ["Pinky"]
       95 SETLIST                          R9 R10 5 [1]
       97 NEWTABLE                         R10 0 3
       99 LOADN                            R11 1
      100 LOADN                            R12 2
      101 LOADN                            R13 3
      102 SETLIST                          R10 R11 3 [1]
      104 DUPCLOSURE                       R11 K27 [PROTO_7]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R8
      109 NEWTABLE                         R12 8 0
      111 SETTABLEKS                       R11 R12 K28 ["setupHand"]
      113 SETTABLEKS                       R5 R12 K29 ["parseFingerName"]
      115 SETTABLEKS                       R8 R12 K30 ["scoreCandidate"]
      117 SETTABLEKS                       R6 R12 K31 ["collectDescendants"]
      119 SETTABLEKS                       R9 R12 K32 ["FINGERS"]
      121 SETTABLEKS                       R10 R12 K33 ["DIGITS"]
      123 RETURN                           R12 1
