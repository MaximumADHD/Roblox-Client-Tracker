PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R4 R0
        2 JUMPIFNOTEQKN                    R4 K0 [0] ; [+3]
        4 LOADN                            R4 0
        5 RETURN                           R4 1
        6 GETIMPORT                        R4 K3 [Font.fromEnum]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K4 ["measureLineHeight"]
       13 MOVE                             R6 R4
       14 MOVE                             R7 R2
       15 CALL                             R5 2 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K5 ["buildSegments"]
       19 MOVE                             R7 R0
       20 CALL                             R6 1 1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K6 ["measureSegments"]
       24 MOVE                             R8 R6
       25 MOVE                             R9 R4
       26 MOVE                             R10 R2
       27 CALL                             R7 3 0
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K7 ["layoutSegments"]
       31 MOVE                             R8 R6
       32 MOVE                             R9 R1
       33 CALL                             R7 2 1
       34 LOADN                            R10 1
       35 LENGTH                           R11 R7
       36 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       38 GETIMPORT                        R9 K10 [math.max]
       40 CALL                             R9 2 1
       41 MUL                              R8 R9 R5
       42 RETURN                           R8 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 JUMPIFNOTEQKS                    R2 K1 ["HEADING"] ; [+34]
        4 GETTABLEKS                       R4 R0 K2 ["attributes"]
        6 JUMPIFNOT                        R4 ; [+10]
        7 GETTABLEKS                       R4 R0 K2 ["attributes"]
        9 GETTABLEKS                       R4 R4 K3 ["depth"]
       11 JUMPIFNOT                        R4 ; [+5]
       12 GETTABLEKS                       R3 R0 K2 ["attributes"]
       14 GETTABLEKS                       R3 R3 K3 ["depth"]
       16 JUMP                             ; [+1]
       17 LOADN                            R3 1
       18 LOADN                            R6 1
       19 LOADN                            R7 6
       20 FASTCALL3                        MATH_CLAMP R3 R6 R7
       22 MOVE                             R5 R3
       23 GETIMPORT                        R4 K6 [math.clamp]
       25 CALL                             R4 3 1
       26 MOVE                             R3 R4
       27 GETUPVAL                         R5 0
       28 GETTABLE                         R4 R5 R3
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R6 R0 K7 ["children"]
       32 MOVE                             R7 R1
       33 MOVE                             R8 R4
       34 GETUPVAL                         R9 2
       35 CALL                             R5 4 1
       36 RETURN                           R5 1
       37 JUMPIFNOTEQKS                    R2 K8 ["PARAGRAPH"] ; [+9]
       39 GETUPVAL                         R3 1
       40 GETTABLEKS                       R4 R0 K7 ["children"]
       42 MOVE                             R5 R1
       43 LOADN                            R6 18
       44 GETUPVAL                         R7 2
       45 CALL                             R3 4 1
       46 RETURN                           R3 1
       47 JUMPIFNOTEQKS                    R2 K9 ["CODE_BLOCK"] ; [+26]
       49 GETTABLEKS                       R4 R0 K11 ["text"]
       51 ORK                              R3 R4 K10 [""]
       52 LOADN                            R4 1
       53 LOADK                            R7 K12 ["\n"]
       54 NAMECALL                         R5 R3 K13 ["gmatch"]
       56 CALL                             R5 2 3
       57 FORGPREP                         R5
       58 ADDK                             R4 R4 K14 [1]
       59 FORGLOOP                         R5 1 ; [-2]
       61 GETIMPORT                        R5 K17 [Font.fromEnum]
       63 GETUPVAL                         R6 3
       64 CALL                             R5 1 1
       65 GETUPVAL                         R6 4
       66 GETTABLEKS                       R6 R6 K18 ["measureLineHeight"]
       68 MOVE                             R7 R5
       69 LOADN                            R8 15
       70 CALL                             R6 2 1
       71 MUL                              R8 R4 R6
       72 ADDK                             R7 R8 K19 [20]
       73 RETURN                           R7 1
       74 JUMPIFNOTEQKS                    R2 K20 ["TABLE"] ; [+20]
       76 GETTABLEKS                       R3 R0 K7 ["children"]
       78 JUMPIF                           R3 ; [+2]
       79 NEWTABLE                         R3 0 0
       81 LENGTH                           R4 R3
       82 GETIMPORT                        R5 K17 [Font.fromEnum]
       84 GETUPVAL                         R6 2
       85 CALL                             R5 1 1
       86 GETUPVAL                         R6 4
       87 GETTABLEKS                       R6 R6 K18 ["measureLineHeight"]
       89 MOVE                             R7 R5
       90 LOADN                            R8 18
       91 CALL                             R6 2 1
       92 ADDK                             R7 R6 K21 [12]
       93 MUL                              R8 R4 R7
       94 RETURN                           R8 1
       95 JUMPIFNOTEQKS                    R2 K22 ["LIST"] ; [+46]
       97 GETTABLEKS                       R3 R0 K7 ["children"]
       99 JUMPIF                           R3 ; [+2]
      100 NEWTABLE                         R3 0 0
      102 LOADN                            R4 0
      103 SUBK                             R5 R1 K19 [20]
      104 MOVE                             R6 R3
      105 LOADNIL                          R7
      106 LOADNIL                          R8
      107 FORGPREP                         R6
      108 GETTABLEKS                       R11 R10 K2 ["attributes"]
      110 JUMPIFNOT                        R11 ; [+4]
      111 GETTABLEKS                       R11 R10 K2 ["attributes"]
      113 GETTABLEKS                       R11 R11 K23 ["checkbox"]
      115 JUMPIFNOT                        R11 ; [+2]
      116 LOADN                            R12 30
      117 JUMP                             ; [+1]
      118 LOADN                            R12 20
      119 SUB                              R13 R5 R12
      120 GETUPVAL                         R14 1
      121 GETTABLEKS                       R15 R10 K7 ["children"]
      123 MOVE                             R16 R13
      124 LOADN                            R17 18
      125 GETUPVAL                         R18 2
      126 CALL                             R14 4 1
      127 FASTCALL2K                       MATH_MAX R14 K19 ; [+5]
      129 MOVE                             R16 R14
      130 LOADK                            R17 K19 [20]
      131 GETIMPORT                        R15 K25 [math.max]
      133 CALL                             R15 2 1
      134 ADD                              R4 R4 R15
      135 LENGTH                           R15 R3
      136 JUMPIFNOTLT                      R9 R15 ; [+2]
      138 ADDK                             R4 R4 K26 [4]
      139 FORGLOOP                         R6 2 ; [-32]
      141 RETURN                           R4 1
      142 JUMPIFNOTEQKS                    R2 K27 ["DIVIDER"] ; [+3]
      144 LOADN                            R3 2
      145 RETURN                           R3 1
      146 JUMPIFNOTEQKS                    R2 K28 ["QUOTE"] ; [+10]
      148 GETUPVAL                         R3 1
      149 GETTABLEKS                       R4 R0 K7 ["children"]
      151 SUBK                             R5 R1 K29 [28]
      152 LOADN                            R6 18
      153 GETUPVAL                         R7 2
      154 CALL                             R3 4 1
      155 ADDK                             R4 R3 K30 [16]
      156 RETURN                           R4 1
      157 JUMPIFNOTEQKS                    R2 K31 ["IMAGE"] ; [+3]
      159 LOADN                            R3 150
      160 RETURN                           R3 1
      161 JUMPIFNOTEQKS                    R2 K32 ["COMPONENT"] ; [+3]
      163 LOADN                            R3 100
      164 RETURN                           R3 1
      165 LOADN                            R3 40
      166 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["BloxCodeEditor"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["RichTextHitTest"]
       14 NEWTABLE                         R3 1 0
       16 NEWTABLE                         R4 0 6
       18 LOADN                            R5 48
       19 LOADN                            R6 36
       20 LOADN                            R7 28
       21 LOADN                            R8 22
       22 LOADN                            R9 20
       23 LOADN                            R10 18
       24 SETLIST                          R4 R5 6 [1]
       26 GETIMPORT                        R5 K11 [Enum.Font.BuilderSans]
       28 GETIMPORT                        R6 K13 [Enum.Font.Code]
       30 DUPCLOSURE                       R7 K14 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 DUPCLOSURE                       R8 K15 [PROTO_1]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R8 R3 K16 ["measureBlock"]
       40 RETURN                           R3 1
