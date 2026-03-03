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
       44 GETTABLEKS                       R5 R4 K10 ["finger"]
       46 JUMPIFNOTEQKNIL                  R5 ; [+29]
       48 LOADK                            R7 K16 ["finger(%d)(%d)"]
       49 NAMECALL                         R5 R1 K17 ["match"]
       51 CALL                             R5 2 2
       52 JUMPIFNOT                        R5 ; [+23]
       53 FASTCALL1                        TONUMBER R5 ; [+3]
       54 MOVE                             R8 R5
       55 GETIMPORT                        R7 K19 [tonumber]
       57 CALL                             R7 1 1
       58 FASTCALL1                        TONUMBER R6 ; [+3]
       59 MOVE                             R9 R6
       60 GETIMPORT                        R8 K19 [tonumber]
       62 CALL                             R8 1 1
       63 JUMPIFNOT                        R7 ; [+12]
       64 GETUPVAL                         R10 2
       65 GETTABLE                         R9 R10 R7
       66 JUMPIFNOT                        R9 ; [+9]
       67 GETUPVAL                         R10 2
       68 GETTABLE                         R9 R10 R7
       69 SETTABLEKS                       R9 R4 K10 ["finger"]
       71 JUMPIFNOT                        R8 ; [+3]
       72 ADDK                             R9 R8 K20 [1]
       73 SETTABLEKS                       R9 R4 K11 ["digit"]
       75 RETURN                           R4 1
       76 LOADNIL                          R5
       77 LOADK                            R8 K21 ["%d+"]
       78 NAMECALL                         R6 R1 K22 ["gmatch"]
       80 CALL                             R6 2 3
       81 FORGPREP                         R6
       82 FASTCALL1                        TONUMBER R9 ; [+3]
       83 MOVE                             R12 R9
       84 GETIMPORT                        R11 K19 [tonumber]
       86 CALL                             R11 1 1
       87 JUMPIFNOT                        R11 ; [+7]
       88 LOADN                            R12 1
       89 JUMPIFNOTLE                      R12 R11 ; [+5]
       91 LOADN                            R12 3
       92 JUMPIFNOTLE                      R11 R12 ; [+2]
       94 MOVE                             R5 R11
       95 FORGLOOP                         R6 1 ; [-14]
       97 SETTABLEKS                       R5 R4 K11 ["digit"]
       99 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 LOADK                            R5 K0 ["Motor6D"]
        3 NAMECALL                         R3 R0 K1 ["IsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+23]
        7 GETTABLEKS                       R3 R0 K2 ["Part1"]
        9 JUMPIFNOT                        R3 ; [+79]
       10 NAMECALL                         R4 R3 K3 ["GetChildren"]
       12 CALL                             R4 1 3
       13 FORGPREP                         R4
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R9 R10 K4 ["isValidTJoint"]
       17 MOVE                             R10 R8
       18 CALL                             R9 1 1
       19 JUMPIFNOT                        R9 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K7 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R4 2 ; [-14]
       29 JUMP                             ; [+59]
       30 LOADK                            R5 K8 ["Bone"]
       31 NAMECALL                         R3 R0 K1 ["IsA"]
       33 CALL                             R3 2 1
       34 JUMPIF                           R3 ; [+5]
       35 LOADK                            R5 K9 ["Attachment"]
       36 NAMECALL                         R3 R0 K1 ["IsA"]
       38 CALL                             R3 2 1
       39 JUMPIFNOT                        R3 ; [+20]
       40 NAMECALL                         R3 R0 K3 ["GetChildren"]
       42 CALL                             R3 1 3
       43 FORGPREP                         R3
       44 GETUPVAL                         R9 0
       45 GETTABLEKS                       R8 R9 K4 ["isValidTJoint"]
       47 MOVE                             R9 R7
       48 CALL                             R8 1 1
       49 JUMPIFNOT                        R8 ; [+7]
       50 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       52 MOVE                             R9 R2
       53 MOVE                             R10 R7
       54 GETIMPORT                        R8 K7 [table.insert]
       56 CALL                             R8 2 0
       57 FORGLOOP                         R3 2 ; [-14]
       59 JUMP                             ; [+29]
       60 LOADK                            R5 K10 ["AnimationConstraint"]
       61 NAMECALL                         R3 R0 K1 ["IsA"]
       63 CALL                             R3 2 1
       64 JUMPIFNOT                        R3 ; [+24]
       65 GETTABLEKS                       R3 R0 K11 ["Parent"]
       67 JUMPIFNOT                        R3 ; [+21]
       68 NAMECALL                         R4 R3 K3 ["GetChildren"]
       70 CALL                             R4 1 3
       71 FORGPREP                         R4
       72 JUMPIFEQ                         R8 R0 ; [+14]
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R9 R10 K4 ["isValidTJoint"]
       77 MOVE                             R10 R8
       78 CALL                             R9 1 1
       79 JUMPIFNOT                        R9 ; [+7]
       80 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       82 MOVE                             R10 R2
       83 MOVE                             R11 R8
       84 GETIMPORT                        R9 K7 [table.insert]
       86 CALL                             R9 2 0
       87 FORGLOOP                         R4 2 ; [-16]
       89 MOVE                             R3 R2
       90 LOADNIL                          R4
       91 LOADNIL                          R5
       92 FORGPREP                         R3
       93 GETUPVAL                         R8 1
       94 GETTABLEKS                       R9 R7 K12 ["Name"]
       96 CALL                             R8 1 1
       97 GETUPVAL                         R10 2
       98 DUPTABLE                         R11 K17 [{"joint", "name", "parse", "depth"}]
       99 SETTABLEKS                       R7 R11 K13 ["joint"]
      101 GETTABLEKS                       R12 R7 K12 ["Name"]
      103 SETTABLEKS                       R12 R11 K14 ["name"]
      105 SETTABLEKS                       R8 R11 K15 ["parse"]
      107 ADDK                             R12 R1 K18 [1]
      108 SETTABLEKS                       R12 R11 K16 ["depth"]
      110 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      112 GETIMPORT                        R9 K7 [table.insert]
      114 CALL                             R9 2 0
      115 GETUPVAL                         R9 3
      116 MOVE                             R10 R7
      117 ADDK                             R11 R1 K18 [1]
      118 CALL                             R9 2 0
      119 FORGLOOP                         R3 2 ; [-27]
      121 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 MOVE                             R3 R2
        8 MOVE                             R4 R0
        9 LOADN                            R5 0
       10 CALL                             R3 2 0
       11 RETURN                           R1 1

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
        0 GETTABLEKS                       R3 R0 K0 ["score"]
        2 GETTABLEKS                       R4 R1 K0 ["score"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_6:
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
       22 NEWTABLE                         R6 0 0
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R6
       28 CAPTURE                          VAL R7
       29 MOVE                             R8 R7
       30 MOVE                             R9 R1
       31 LOADN                            R10 0
       32 CALL                             R8 2 0
       33 MOVE                             R5 R6
       34 LENGTH                           R6 R5
       35 JUMPIFNOTEQKN                    R6 K2 [0] ; [+2]
       37 RETURN                           R0 0
       38 NEWTABLE                         R6 0 0
       40 GETUPVAL                         R7 2
       41 LOADNIL                          R8
       42 LOADNIL                          R9
       43 FORGPREP                         R7
       44 GETUPVAL                         R12 3
       45 LOADNIL                          R13
       46 LOADNIL                          R14
       47 FORGPREP                         R12
       48 MOVE                             R18 R11
       49 FASTCALL1                        TOSTRING R16 ; [+3]
       50 MOVE                             R20 R16
       51 GETIMPORT                        R19 K4 [tostring]
       53 CALL                             R19 1 1
       54 CONCAT                           R17 R18 R19
       55 GETTABLE                         R18 R4 R17
       56 JUMPIFNOT                        R18 ; [+27]
       57 MOVE                             R18 R5
       58 LOADNIL                          R19
       59 LOADNIL                          R20
       60 FORGPREP                         R18
       61 GETUPVAL                         R23 4
       62 MOVE                             R24 R22
       63 MOVE                             R25 R11
       64 MOVE                             R26 R16
       65 MOVE                             R27 R2
       66 CALL                             R23 4 1
       67 DUPTABLE                         R26 K8 [{"joint", "labelName", "score"}]
       68 GETTABLEKS                       R27 R22 K5 ["joint"]
       70 SETTABLEKS                       R27 R26 K5 ["joint"]
       72 SETTABLEKS                       R17 R26 K6 ["labelName"]
       74 SETTABLEKS                       R23 R26 K7 ["score"]
       76 FASTCALL2                        TABLE_INSERT R6 R26 ; [+4]
       78 MOVE                             R25 R6
       79 GETIMPORT                        R24 K11 [table.insert]
       81 CALL                             R24 2 0
       82 FORGLOOP                         R18 2 ; [-22]
       84 FORGLOOP                         R12 2 ; [-37]
       86 FORGLOOP                         R7 2 ; [-43]
       88 GETIMPORT                        R7 K13 [table.sort]
       90 MOVE                             R8 R6
       91 DUPCLOSURE                       R9 K14 [PROTO_5]
       92 CALL                             R7 2 0
       93 NEWTABLE                         R7 0 0
       95 NEWTABLE                         R8 0 0
       97 MOVE                             R9 R6
       98 LOADNIL                          R10
       99 LOADNIL                          R11
      100 FORGPREP                         R9
      101 GETTABLEKS                       R14 R13 K7 ["score"]
      103 LOADN                            R15 2
      104 JUMPIFLT                         R14 R15 ; [+29]
      106 GETTABLEKS                       R15 R13 K5 ["joint"]
      108 GETTABLE                         R14 R7 R15
      109 JUMPIF                           R14 ; [+22]
      110 GETTABLEKS                       R15 R13 K6 ["labelName"]
      112 GETTABLE                         R14 R8 R15
      113 JUMPIF                           R14 ; [+18]
      114 GETTABLEKS                       R15 R13 K6 ["labelName"]
      116 GETTABLE                         R14 R4 R15
      117 JUMPIFNOT                        R14 ; [+14]
      118 MOVE                             R17 R14
      119 GETTABLEKS                       R18 R13 K5 ["joint"]
      121 NAMECALL                         R15 R0 K1 ["SetJoint"]
      123 CALL                             R15 3 0
      124 GETTABLEKS                       R15 R13 K5 ["joint"]
      126 LOADB                            R16 1
      127 SETTABLE                         R16 R7 R15
      128 GETTABLEKS                       R15 R13 K6 ["labelName"]
      130 LOADB                            R16 1
      131 SETTABLE                         R16 R8 R15
      132 FORGLOOP                         R9 2 ; [-32]
      134 RETURN                           R0 0

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
       20 NEWTABLE                         R4 0 7
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
       71 SETLIST                          R4 R5 7 [1]
       73 NEWTABLE                         R5 8 0
       75 LOADN                            R6 0
       76 LOADK                            R7 K12 ["Thumb"]
       77 SETTABLE                         R7 R5 R6
       78 LOADK                            R6 K14 ["Index"]
       79 SETTABLEN                        R6 R5 1
       80 LOADK                            R6 K16 ["Middle"]
       81 SETTABLEN                        R6 R5 2
       82 LOADK                            R6 K18 ["Ring"]
       83 SETTABLEN                        R6 R5 3
       84 LOADK                            R6 K20 ["Pinky"]
       85 SETTABLEN                        R6 R5 4
       86 DUPCLOSURE                       R6 K23 [PROTO_0]
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R5
       90 DUPCLOSURE                       R7 K24 [PROTO_2]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R6
       93 DUPCLOSURE                       R8 K25 [PROTO_3]
       94 DUPCLOSURE                       R9 K26 [PROTO_4]
       95 NEWTABLE                         R10 0 5
       97 LOADK                            R11 K12 ["Thumb"]
       98 LOADK                            R12 K14 ["Index"]
       99 LOADK                            R13 K16 ["Middle"]
      100 LOADK                            R14 K18 ["Ring"]
      101 LOADK                            R15 K20 ["Pinky"]
      102 SETLIST                          R10 R11 5 [1]
      104 NEWTABLE                         R11 0 3
      106 LOADN                            R12 1
      107 LOADN                            R13 2
      108 LOADN                            R14 3
      109 SETLIST                          R11 R12 3 [1]
      111 DUPCLOSURE                       R12 K27 [PROTO_6]
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R9
      117 NEWTABLE                         R13 8 0
      119 SETTABLEKS                       R12 R13 K28 ["setupHand"]
      121 SETTABLEKS                       R6 R13 K29 ["parseFingerName"]
      123 SETTABLEKS                       R9 R13 K30 ["scoreCandidate"]
      125 SETTABLEKS                       R7 R13 K31 ["collectDescendants"]
      127 SETTABLEKS                       R10 R13 K32 ["FINGERS"]
      129 SETTABLEKS                       R11 R13 K33 ["DIGITS"]
      131 RETURN                           R13 1
