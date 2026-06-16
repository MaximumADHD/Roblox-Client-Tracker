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
       43 LOADN                            R6 15
       44 GETUPVAL                         R7 2
       45 CALL                             R3 4 1
       46 RETURN                           R3 1
       47 JUMPIFNOTEQKS                    R2 K9 ["CODE_BLOCK"] ; [+23]
       49 GETTABLEKS                       R4 R0 K11 ["text"]
       51 ORK                              R3 R4 K10 [""]
       52 LOADN                            R4 1
       53 LOADK                            R7 K12 ["\n"]
       54 NAMECALL                         R5 R3 K13 ["gmatch"]
       56 CALL                             R5 2 3
       57 FORGPREP                         R5
       58 ADDK                             R4 R4 K14 [1]
       59 FORGLOOP                         R5 1 ; [-2]
       61 GETUPVAL                         R5 3
       62 GETUPVAL                         R6 4
       63 GETTABLEKS                       R6 R6 K15 ["measureLineHeight"]
       65 MOVE                             R7 R5
       66 LOADN                            R8 15
       67 CALL                             R6 2 1
       68 MUL                              R8 R4 R6
       69 ADDK                             R7 R8 K16 [20]
       70 RETURN                           R7 1
       71 JUMPIFNOTEQKS                    R2 K17 ["TABLE"] ; [+20]
       73 GETTABLEKS                       R3 R0 K7 ["children"]
       75 JUMPIF                           R3 ; [+2]
       76 NEWTABLE                         R3 0 0
       78 LENGTH                           R4 R3
       79 GETIMPORT                        R5 K20 [Font.fromEnum]
       81 GETUPVAL                         R6 2
       82 CALL                             R5 1 1
       83 GETUPVAL                         R6 4
       84 GETTABLEKS                       R6 R6 K15 ["measureLineHeight"]
       86 MOVE                             R7 R5
       87 LOADN                            R8 15
       88 CALL                             R6 2 1
       89 ADDK                             R7 R6 K21 [12]
       90 MUL                              R8 R4 R7
       91 RETURN                           R8 1
       92 JUMPIFNOTEQKS                    R2 K22 ["LIST"] ; [+46]
       94 GETTABLEKS                       R3 R0 K7 ["children"]
       96 JUMPIF                           R3 ; [+2]
       97 NEWTABLE                         R3 0 0
       99 LOADN                            R4 0
      100 SUBK                             R5 R1 K16 [20]
      101 MOVE                             R6 R3
      102 LOADNIL                          R7
      103 LOADNIL                          R8
      104 FORGPREP                         R6
      105 GETTABLEKS                       R11 R10 K2 ["attributes"]
      107 JUMPIFNOT                        R11 ; [+4]
      108 GETTABLEKS                       R11 R10 K2 ["attributes"]
      110 GETTABLEKS                       R11 R11 K23 ["checkbox"]
      112 JUMPIFNOT                        R11 ; [+2]
      113 LOADN                            R12 30
      114 JUMP                             ; [+1]
      115 LOADN                            R12 20
      116 SUB                              R13 R5 R12
      117 GETUPVAL                         R14 1
      118 GETTABLEKS                       R15 R10 K7 ["children"]
      120 MOVE                             R16 R13
      121 LOADN                            R17 15
      122 GETUPVAL                         R18 2
      123 CALL                             R14 4 1
      124 FASTCALL2K                       MATH_MAX R14 K16 ; [+5]
      126 MOVE                             R16 R14
      127 LOADK                            R17 K16 [20]
      128 GETIMPORT                        R15 K25 [math.max]
      130 CALL                             R15 2 1
      131 ADD                              R4 R4 R15
      132 LENGTH                           R15 R3
      133 JUMPIFNOTLT                      R9 R15 ; [+2]
      135 ADDK                             R4 R4 K26 [4]
      136 FORGLOOP                         R6 2 ; [-32]
      138 RETURN                           R4 1
      139 JUMPIFNOTEQKS                    R2 K27 ["DIVIDER"] ; [+3]
      141 LOADN                            R3 2
      142 RETURN                           R3 1
      143 JUMPIFNOTEQKS                    R2 K28 ["QUOTE"] ; [+10]
      145 GETUPVAL                         R3 1
      146 GETTABLEKS                       R4 R0 K7 ["children"]
      148 SUBK                             R5 R1 K29 [28]
      149 LOADN                            R6 15
      150 GETUPVAL                         R7 2
      151 CALL                             R3 4 1
      152 ADDK                             R4 R3 K30 [16]
      153 RETURN                           R4 1
      154 JUMPIFNOTEQKS                    R2 K31 ["IMAGE"] ; [+3]
      156 LOADN                            R3 150
      157 RETURN                           R3 1
      158 JUMPIFNOTEQKS                    R2 K32 ["COMPONENT"] ; [+3]
      160 LOADN                            R3 100
      161 RETURN                           R3 1
      162 LOADN                            R3 40
      163 RETURN                           R3 1

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
       18 LOADN                            R5 20
       19 LOADN                            R6 18
       20 LOADN                            R7 15
       21 LOADN                            R8 15
       22 LOADN                            R9 15
       23 LOADN                            R10 15
       24 SETLIST                          R4 R5 6 [1]
       26 GETIMPORT                        R5 K11 [Enum.Font.BuilderSans]
       28 GETIMPORT                        R6 K13 [Font.new]
       30 LOADK                            R7 K14 ["rbxasset://fonts/families/BuilderMono.json"]
       31 GETIMPORT                        R8 K17 [Enum.FontWeight.Regular]
       33 GETIMPORT                        R9 K20 [Enum.FontStyle.Normal]
       35 CALL                             R6 3 1
       36 DUPCLOSURE                       R7 K21 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 DUPCLOSURE                       R8 K22 [PROTO_1]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R8 R3 K23 ["measureBlock"]
       46 RETURN                           R3 1
