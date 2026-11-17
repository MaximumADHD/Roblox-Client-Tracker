PROTO_0:
        0 ORK                              R5 R3 K0 [{1, 1, 1}]
        1 NEWTABLE                         R6 0 0
        3 NAMECALL                         R7 R0 K1 ["GetFaces"]
        5 CALL                             R7 1 3
        6 FORGPREP                         R7
        7 GETTABLEKS                       R13 R0 K2 ["GetFaceVertices"]
        9 MOVE                             R14 R0
       10 MOVE                             R15 R11
       11 FASTPCALL                        pcall 3 ; [+2]
       12 GETIMPORT                        R12 K4 [pcall]
       14 CALL                             R12 3 2
       15 JUMPIFNOT                        R12 ; [+116]
       16 JUMPIFNOT                        R13 ; [+115]
       17 NEWTABLE                         R14 0 3
       19 NEWTABLE                         R15 0 2
       21 GETTABLEN                        R16 R13 1
       22 GETTABLEN                        R17 R13 2
       23 SETLIST                          R15 R16 2 [1]
       25 NEWTABLE                         R16 0 2
       27 GETTABLEN                        R17 R13 2
       28 GETTABLEN                        R18 R13 3
       29 SETLIST                          R16 R17 2 [1]
       31 NEWTABLE                         R17 0 2
       33 GETTABLEN                        R18 R13 1
       34 GETTABLEN                        R19 R13 3
       35 SETLIST                          R17 R18 2 [1]
       37 SETLIST                          R14 R15 3 [1]
       39 MOVE                             R15 R14
       40 LOADNIL                          R16
       41 LOADNIL                          R17
       42 FORGPREP                         R15
       43 GETTABLEN                        R20 R19 1
       44 GETTABLEN                        R21 R19 2
       45 FASTCALL2                        MATH_MIN R20 R21 ; [+5]
       47 MOVE                             R23 R20
       48 MOVE                             R24 R21
       49 GETIMPORT                        R22 K7 [math.min]
       51 CALL                             R22 2 1
       52 FASTCALL2                        MATH_MAX R20 R21 ; [+5]
       54 MOVE                             R24 R20
       55 MOVE                             R25 R21
       56 GETIMPORT                        R23 K9 [math.max]
       58 CALL                             R23 2 1
       59 MOVE                             R25 R22
       60 LOADK                            R26 K10 [":"]
       61 MOVE                             R27 R23
       62 CONCAT                           R24 R25 R27
       63 GETTABLE                         R25 R6 R24
       64 JUMPIF                           R25 ; [+65]
       65 LOADB                            R25 1
       66 SETTABLE                         R25 R6 R24
       67 GETTABLEKS                       R26 R0 K11 ["GetPosition"]
       69 MOVE                             R27 R0
       70 MOVE                             R28 R20
       71 FASTPCALL                        pcall 3 ; [+2]
       72 GETIMPORT                        R25 K4 [pcall]
       74 CALL                             R25 3 2
       75 GETTABLEKS                       R28 R0 K11 ["GetPosition"]
       77 MOVE                             R29 R0
       78 MOVE                             R30 R21
       79 FASTPCALL                        pcall 3 ; [+2]
       80 GETIMPORT                        R27 K4 [pcall]
       82 CALL                             R27 3 2
       83 JUMPIFNOT                        R25 ; [+46]
       84 JUMPIFNOT                        R27 ; [+45]
       85 JUMPIFNOT                        R26 ; [+44]
       86 JUMPIFNOT                        R28 ; [+43]
       87 MUL                              R29 R26 R5
       88 MUL                              R30 R28 R5
       89 SUB                              R31 R30 R29
       90 GETTABLEKS                       R31 R31 K12 ["Magnitude"]
       92 LOADN                            R32 0
       93 JUMPIFNOTLT                      R32 R31 ; [+36]
       95 GETIMPORT                        R33 K15 [CFrame.new]
       97 LOADK                            R34 K16 [{0, 0, 0}]
       98 SUB                              R35 R30 R29
       99 GETTABLEKS                       R35 R35 K17 ["Unit"]
      101 CALL                             R33 2 1
      102 ADD                              R32 R33 R29
      103 GETIMPORT                        R33 K19 [Instance.new]
      105 LOADK                            R34 K20 ["LineHandleAdornment"]
      106 CALL                             R33 1 1
      107 SETTABLEKS                       R1 R33 K21 ["Adornee"]
      109 SETTABLEKS                       R32 R33 K13 ["CFrame"]
      111 SETTABLEKS                       R31 R33 K22 ["Length"]
      113 GETUPVAL                         R34 0
      114 GETTABLEKS                       R34 R34 K23 ["LINE_THICKNESS"]
      116 SETTABLEKS                       R34 R33 K24 ["Thickness"]
      118 SETTABLEKS                       R2 R33 K25 ["Color3"]
      120 LOADB                            R34 1
      121 SETTABLEKS                       R34 R33 K26 ["AlwaysOnTop"]
      123 SETTABLEKS                       R4 R33 K27 ["ZIndex"]
      125 LOADB                            R34 0
      126 SETTABLEKS                       R34 R33 K28 ["Archivable"]
      128 SETTABLEKS                       R1 R33 K29 ["Parent"]
      130 FORGLOOP                         R15 2 ; [-88]
      132 FORGLOOP                         R7 2 ; [-126]
      134 RETURN                           R0 0

PROTO_1:
        0 ORK                              R5 R2 K0 [{1, 1, 1}]
        1 ORK                              R6 R3 K0 [{1, 1, 1}]
        2 NEWTABLE                         R7 0 0
        4 NAMECALL                         R8 R0 K1 ["GetVertices"]
        6 CALL                             R8 1 3
        7 FORGPREP                         R8
        8 GETTABLEKS                       R14 R0 K2 ["GetPosition"]
       10 MOVE                             R15 R0
       11 MOVE                             R16 R12
       12 FASTPCALL                        pcall 3 ; [+2]
       13 GETIMPORT                        R13 K4 [pcall]
       15 CALL                             R13 3 2
       16 JUMPIFNOT                        R13 ; [+8]
       17 JUMPIFNOT                        R14 ; [+7]
       18 MUL                              R17 R14 R5
       19 FASTCALL2                        TABLE_INSERT R7 R17 ; [+4]
       21 MOVE                             R16 R7
       22 GETIMPORT                        R15 K7 [table.insert]
       24 CALL                             R15 2 0
       25 FORGLOOP                         R8 2 ; [-18]
       27 NEWTABLE                         R8 0 0
       29 NAMECALL                         R9 R1 K1 ["GetVertices"]
       31 CALL                             R9 1 3
       32 FORGPREP                         R9
       33 GETTABLEKS                       R15 R1 K2 ["GetPosition"]
       35 MOVE                             R16 R1
       36 MOVE                             R17 R13
       37 FASTPCALL                        pcall 3 ; [+2]
       38 GETIMPORT                        R14 K4 [pcall]
       40 CALL                             R14 3 2
       41 JUMPIFNOT                        R14 ; [+21]
       42 JUMPIFNOT                        R15 ; [+20]
       43 MUL                              R16 R15 R6
       44 LOADK                            R17 K8 [Infinity]
       45 MOVE                             R18 R7
       46 LOADNIL                          R19
       47 LOADNIL                          R20
       48 FORGPREP                         R18
       49 SUB                              R23 R16 R22
       50 GETTABLEKS                       R23 R23 K9 ["Magnitude"]
       52 JUMPIFNOTLT                      R23 R17 ; [+2]
       54 MOVE                             R17 R23
       55 JUMPIFLT                         R17 R4 ; [+3]
       57 FORGLOOP                         R18 2 ; [-9]
       59 JUMPIFNOTLE                      R4 R17 ; [+3]
       61 LOADB                            R18 1
       62 SETTABLE                         R18 R8 R13
       63 FORGLOOP                         R9 2 ; [-31]
       65 RETURN                           R8 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["adornee"]
        2 GETTABLEKS                       R2 R0 K1 ["editableMesh"]
        4 GETTABLEKS                       R3 R0 K2 ["secondaryEditableMesh"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R2
        8 MOVE                             R6 R1
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K3 ["COLOR_OVERLAY_PRIMARY"]
       12 GETTABLEKS                       R8 R0 K4 ["scale"]
       14 LOADN                            R9 0
       15 CALL                             R4 5 0
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 2
       19 MOVE                             R5 R2
       20 MOVE                             R6 R3
       21 GETTABLEKS                       R7 R0 K4 ["scale"]
       23 GETTABLEKS                       R8 R0 K5 ["secondaryScale"]
       25 LOADK                            R9 K6 [0.3]
       26 CALL                             R4 5 1
       27 GETTABLEKS                       R6 R0 K5 ["secondaryScale"]
       29 ORK                              R5 R6 K7 [{1, 1, 1}]
       30 NEWTABLE                         R6 0 0
       32 NAMECALL                         R7 R3 K8 ["GetFaces"]
       34 CALL                             R7 1 3
       35 FORGPREP                         R7
       36 GETTABLEKS                       R13 R3 K9 ["GetFaceVertices"]
       38 MOVE                             R14 R3
       39 MOVE                             R15 R11
       40 FASTPCALL                        pcall 3 ; [+2]
       41 GETIMPORT                        R12 K11 [pcall]
       43 CALL                             R12 3 2
       44 JUMPIFNOT                        R12 ; [+128]
       45 JUMPIFNOT                        R13 ; [+127]
       46 NEWTABLE                         R14 0 3
       48 NEWTABLE                         R15 0 2
       50 GETTABLEN                        R16 R13 1
       51 GETTABLEN                        R17 R13 2
       52 SETLIST                          R15 R16 2 [1]
       54 NEWTABLE                         R16 0 2
       56 GETTABLEN                        R17 R13 2
       57 GETTABLEN                        R18 R13 3
       58 SETLIST                          R16 R17 2 [1]
       60 NEWTABLE                         R17 0 2
       62 GETTABLEN                        R18 R13 1
       63 GETTABLEN                        R19 R13 3
       64 SETLIST                          R17 R18 2 [1]
       66 SETLIST                          R14 R15 3 [1]
       68 MOVE                             R15 R14
       69 LOADNIL                          R16
       70 LOADNIL                          R17
       71 FORGPREP                         R15
       72 GETTABLEN                        R20 R19 1
       73 GETTABLEN                        R21 R19 2
       74 FASTCALL2                        MATH_MIN R20 R21 ; [+5]
       76 MOVE                             R23 R20
       77 MOVE                             R24 R21
       78 GETIMPORT                        R22 K14 [math.min]
       80 CALL                             R22 2 1
       81 FASTCALL2                        MATH_MAX R20 R21 ; [+5]
       83 MOVE                             R24 R20
       84 MOVE                             R25 R21
       85 GETIMPORT                        R23 K16 [math.max]
       87 CALL                             R23 2 1
       88 MOVE                             R25 R22
       89 LOADK                            R26 K17 [":"]
       90 MOVE                             R27 R23
       91 CONCAT                           R24 R25 R27
       92 GETTABLE                         R25 R6 R24
       93 JUMPIF                           R25 ; [+77]
       94 LOADB                            R25 1
       95 SETTABLE                         R25 R6 R24
       96 GETTABLEKS                       R26 R3 K18 ["GetPosition"]
       98 MOVE                             R27 R3
       99 MOVE                             R28 R20
      100 FASTPCALL                        pcall 3 ; [+2]
      101 GETIMPORT                        R25 K11 [pcall]
      103 CALL                             R25 3 2
      104 GETTABLEKS                       R28 R3 K18 ["GetPosition"]
      106 MOVE                             R29 R3
      107 MOVE                             R30 R21
      108 FASTPCALL                        pcall 3 ; [+2]
      109 GETIMPORT                        R27 K11 [pcall]
      111 CALL                             R27 3 2
      112 JUMPIFNOT                        R25 ; [+58]
      113 JUMPIFNOT                        R27 ; [+57]
      114 JUMPIFNOT                        R26 ; [+56]
      115 JUMPIFNOT                        R28 ; [+55]
      116 GETTABLE                         R29 R4 R20
      117 JUMPIF                           R29 ; [+1]
      118 GETTABLE                         R29 R4 R21
      119 JUMPIFNOT                        R29 ; [+4]
      120 GETUPVAL                         R30 1
      121 GETTABLEKS                       R30 R30 K19 ["COLOR_OVERLAY_DIVERGENT"]
      123 JUMP                             ; [+3]
      124 GETUPVAL                         R30 1
      125 GETTABLEKS                       R30 R30 K20 ["COLOR_OVERLAY_SECONDARY"]
      127 MUL                              R31 R26 R5
      128 MUL                              R32 R28 R5
      129 SUB                              R33 R32 R31
      130 GETTABLEKS                       R33 R33 K21 ["Magnitude"]
      132 LOADN                            R34 0
      133 JUMPIFNOTLT                      R34 R33 ; [+37]
      135 GETIMPORT                        R35 K24 [CFrame.new]
      137 LOADK                            R36 K25 [{0, 0, 0}]
      138 SUB                              R37 R32 R31
      139 GETTABLEKS                       R37 R37 K26 ["Unit"]
      141 CALL                             R35 2 1
      142 ADD                              R34 R35 R31
      143 GETIMPORT                        R35 K28 [Instance.new]
      145 LOADK                            R36 K29 ["LineHandleAdornment"]
      146 CALL                             R35 1 1
      147 SETTABLEKS                       R1 R35 K30 ["Adornee"]
      149 SETTABLEKS                       R34 R35 K22 ["CFrame"]
      151 SETTABLEKS                       R33 R35 K31 ["Length"]
      153 GETUPVAL                         R36 1
      154 GETTABLEKS                       R36 R36 K32 ["LINE_THICKNESS"]
      156 SETTABLEKS                       R36 R35 K33 ["Thickness"]
      158 SETTABLEKS                       R30 R35 K34 ["Color3"]
      160 LOADB                            R36 1
      161 SETTABLEKS                       R36 R35 K35 ["AlwaysOnTop"]
      163 LOADN                            R36 2
      164 SETTABLEKS                       R36 R35 K36 ["ZIndex"]
      166 LOADB                            R36 0
      167 SETTABLEKS                       R36 R35 K37 ["Archivable"]
      169 SETTABLEKS                       R1 R35 K38 ["Parent"]
      171 FORGLOOP                         R15 2 ; [-100]
      173 FORGLOOP                         R7 2 ; [-138]
      175 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Visualization"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 1 0
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R4 K8 [PROTO_1]
       17 DUPCLOSURE                       R5 K9 [PROTO_2]
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R4
       21 SETTABLEKS                       R5 R2 K10 ["build"]
       23 RETURN                           R2 1
