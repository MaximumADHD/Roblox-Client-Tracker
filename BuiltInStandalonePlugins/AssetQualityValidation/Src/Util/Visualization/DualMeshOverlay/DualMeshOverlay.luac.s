PROTO_0:
        0 ORK                              R5 R3 K0 [{1, 1, 1}]
        1 NEWTABLE                         R6 0 0
        3 NAMECALL                         R7 R0 K1 ["GetFaces"]
        5 CALL                             R7 1 3
        6 FORGPREP                         R7
        7 GETIMPORT                        R12 K3 [pcall]
        9 GETTABLEKS                       R13 R0 K4 ["GetFaceVertices"]
       11 MOVE                             R14 R0
       12 MOVE                             R15 R11
       13 CALL                             R12 3 2
       14 JUMPIFNOT                        R12 ; [+114]
       15 JUMPIFNOT                        R13 ; [+113]
       16 NEWTABLE                         R14 0 3
       18 NEWTABLE                         R15 0 2
       20 GETTABLEN                        R16 R13 1
       21 GETTABLEN                        R17 R13 2
       22 SETLIST                          R15 R16 2 [1]
       24 NEWTABLE                         R16 0 2
       26 GETTABLEN                        R17 R13 2
       27 GETTABLEN                        R18 R13 3
       28 SETLIST                          R16 R17 2 [1]
       30 NEWTABLE                         R17 0 2
       32 GETTABLEN                        R18 R13 1
       33 GETTABLEN                        R19 R13 3
       34 SETLIST                          R17 R18 2 [1]
       36 SETLIST                          R14 R15 3 [1]
       38 MOVE                             R15 R14
       39 LOADNIL                          R16
       40 LOADNIL                          R17
       41 FORGPREP                         R15
       42 GETTABLEN                        R20 R19 1
       43 GETTABLEN                        R21 R19 2
       44 FASTCALL2                        MATH_MIN R20 R21 ; [+5]
       46 MOVE                             R23 R20
       47 MOVE                             R24 R21
       48 GETIMPORT                        R22 K7 [math.min]
       50 CALL                             R22 2 1
       51 FASTCALL2                        MATH_MAX R20 R21 ; [+5]
       53 MOVE                             R24 R20
       54 MOVE                             R25 R21
       55 GETIMPORT                        R23 K9 [math.max]
       57 CALL                             R23 2 1
       58 MOVE                             R25 R22
       59 LOADK                            R26 K10 [":"]
       60 MOVE                             R27 R23
       61 CONCAT                           R24 R25 R27
       62 GETTABLE                         R25 R6 R24
       63 JUMPIF                           R25 ; [+63]
       64 LOADB                            R25 1
       65 SETTABLE                         R25 R6 R24
       66 GETIMPORT                        R25 K3 [pcall]
       68 GETTABLEKS                       R26 R0 K11 ["GetPosition"]
       70 MOVE                             R27 R0
       71 MOVE                             R28 R20
       72 CALL                             R25 3 2
       73 GETIMPORT                        R27 K3 [pcall]
       75 GETTABLEKS                       R28 R0 K11 ["GetPosition"]
       77 MOVE                             R29 R0
       78 MOVE                             R30 R21
       79 CALL                             R27 3 2
       80 JUMPIFNOT                        R25 ; [+46]
       81 JUMPIFNOT                        R27 ; [+45]
       82 JUMPIFNOT                        R26 ; [+44]
       83 JUMPIFNOT                        R28 ; [+43]
       84 MUL                              R29 R26 R5
       85 MUL                              R30 R28 R5
       86 SUB                              R31 R30 R29
       87 GETTABLEKS                       R31 R31 K12 ["Magnitude"]
       89 LOADN                            R32 0
       90 JUMPIFNOTLT                      R32 R31 ; [+36]
       92 GETIMPORT                        R33 K15 [CFrame.new]
       94 LOADK                            R34 K16 [{0, 0, 0}]
       95 SUB                              R35 R30 R29
       96 GETTABLEKS                       R35 R35 K17 ["Unit"]
       98 CALL                             R33 2 1
       99 ADD                              R32 R33 R29
      100 GETIMPORT                        R33 K19 [Instance.new]
      102 LOADK                            R34 K20 ["LineHandleAdornment"]
      103 CALL                             R33 1 1
      104 SETTABLEKS                       R1 R33 K21 ["Adornee"]
      106 SETTABLEKS                       R32 R33 K13 ["CFrame"]
      108 SETTABLEKS                       R31 R33 K22 ["Length"]
      110 GETUPVAL                         R34 0
      111 GETTABLEKS                       R34 R34 K23 ["LINE_THICKNESS"]
      113 SETTABLEKS                       R34 R33 K24 ["Thickness"]
      115 SETTABLEKS                       R2 R33 K25 ["Color3"]
      117 LOADB                            R34 1
      118 SETTABLEKS                       R34 R33 K26 ["AlwaysOnTop"]
      120 SETTABLEKS                       R4 R33 K27 ["ZIndex"]
      122 LOADB                            R34 0
      123 SETTABLEKS                       R34 R33 K28 ["Archivable"]
      125 SETTABLEKS                       R1 R33 K29 ["Parent"]
      127 FORGLOOP                         R15 2 ; [-86]
      129 FORGLOOP                         R7 2 ; [-123]
      131 RETURN                           R0 0

PROTO_1:
        0 ORK                              R5 R2 K0 [{1, 1, 1}]
        1 ORK                              R6 R3 K0 [{1, 1, 1}]
        2 NEWTABLE                         R7 0 0
        4 NAMECALL                         R8 R0 K1 ["GetVertices"]
        6 CALL                             R8 1 3
        7 FORGPREP                         R8
        8 GETIMPORT                        R13 K3 [pcall]
       10 GETTABLEKS                       R14 R0 K4 ["GetPosition"]
       12 MOVE                             R15 R0
       13 MOVE                             R16 R12
       14 CALL                             R13 3 2
       15 JUMPIFNOT                        R13 ; [+8]
       16 JUMPIFNOT                        R14 ; [+7]
       17 MUL                              R17 R14 R5
       18 FASTCALL2                        TABLE_INSERT R7 R17 ; [+4]
       20 MOVE                             R16 R7
       21 GETIMPORT                        R15 K7 [table.insert]
       23 CALL                             R15 2 0
       24 FORGLOOP                         R8 2 ; [-17]
       26 NEWTABLE                         R8 0 0
       28 NAMECALL                         R9 R1 K1 ["GetVertices"]
       30 CALL                             R9 1 3
       31 FORGPREP                         R9
       32 GETIMPORT                        R14 K3 [pcall]
       34 GETTABLEKS                       R15 R1 K4 ["GetPosition"]
       36 MOVE                             R16 R1
       37 MOVE                             R17 R13
       38 CALL                             R14 3 2
       39 JUMPIFNOT                        R14 ; [+21]
       40 JUMPIFNOT                        R15 ; [+20]
       41 MUL                              R16 R15 R6
       42 LOADK                            R17 K8 [∞]
       43 MOVE                             R18 R7
       44 LOADNIL                          R19
       45 LOADNIL                          R20
       46 FORGPREP                         R18
       47 SUB                              R23 R16 R22
       48 GETTABLEKS                       R23 R23 K9 ["Magnitude"]
       50 JUMPIFNOTLT                      R23 R17 ; [+2]
       52 MOVE                             R17 R23
       53 JUMPIFLT                         R17 R4 ; [+3]
       55 FORGLOOP                         R18 2 ; [-9]
       57 JUMPIFNOTLE                      R4 R17 ; [+3]
       59 LOADB                            R18 1
       60 SETTABLE                         R18 R8 R13
       61 FORGLOOP                         R9 2 ; [-30]
       63 RETURN                           R8 1

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
       36 GETIMPORT                        R12 K10 [pcall]
       38 GETTABLEKS                       R13 R3 K11 ["GetFaceVertices"]
       40 MOVE                             R14 R3
       41 MOVE                             R15 R11
       42 CALL                             R12 3 2
       43 JUMPIFNOT                        R12 ; [+126]
       44 JUMPIFNOT                        R13 ; [+125]
       45 NEWTABLE                         R14 0 3
       47 NEWTABLE                         R15 0 2
       49 GETTABLEN                        R16 R13 1
       50 GETTABLEN                        R17 R13 2
       51 SETLIST                          R15 R16 2 [1]
       53 NEWTABLE                         R16 0 2
       55 GETTABLEN                        R17 R13 2
       56 GETTABLEN                        R18 R13 3
       57 SETLIST                          R16 R17 2 [1]
       59 NEWTABLE                         R17 0 2
       61 GETTABLEN                        R18 R13 1
       62 GETTABLEN                        R19 R13 3
       63 SETLIST                          R17 R18 2 [1]
       65 SETLIST                          R14 R15 3 [1]
       67 MOVE                             R15 R14
       68 LOADNIL                          R16
       69 LOADNIL                          R17
       70 FORGPREP                         R15
       71 GETTABLEN                        R20 R19 1
       72 GETTABLEN                        R21 R19 2
       73 FASTCALL2                        MATH_MIN R20 R21 ; [+5]
       75 MOVE                             R23 R20
       76 MOVE                             R24 R21
       77 GETIMPORT                        R22 K14 [math.min]
       79 CALL                             R22 2 1
       80 FASTCALL2                        MATH_MAX R20 R21 ; [+5]
       82 MOVE                             R24 R20
       83 MOVE                             R25 R21
       84 GETIMPORT                        R23 K16 [math.max]
       86 CALL                             R23 2 1
       87 MOVE                             R25 R22
       88 LOADK                            R26 K17 [":"]
       89 MOVE                             R27 R23
       90 CONCAT                           R24 R25 R27
       91 GETTABLE                         R25 R6 R24
       92 JUMPIF                           R25 ; [+75]
       93 LOADB                            R25 1
       94 SETTABLE                         R25 R6 R24
       95 GETIMPORT                        R25 K10 [pcall]
       97 GETTABLEKS                       R26 R3 K18 ["GetPosition"]
       99 MOVE                             R27 R3
      100 MOVE                             R28 R20
      101 CALL                             R25 3 2
      102 GETIMPORT                        R27 K10 [pcall]
      104 GETTABLEKS                       R28 R3 K18 ["GetPosition"]
      106 MOVE                             R29 R3
      107 MOVE                             R30 R21
      108 CALL                             R27 3 2
      109 JUMPIFNOT                        R25 ; [+58]
      110 JUMPIFNOT                        R27 ; [+57]
      111 JUMPIFNOT                        R26 ; [+56]
      112 JUMPIFNOT                        R28 ; [+55]
      113 GETTABLE                         R29 R4 R20
      114 JUMPIF                           R29 ; [+1]
      115 GETTABLE                         R29 R4 R21
      116 JUMPIFNOT                        R29 ; [+4]
      117 GETUPVAL                         R30 1
      118 GETTABLEKS                       R30 R30 K19 ["COLOR_OVERLAY_DIVERGENT"]
      120 JUMP                             ; [+3]
      121 GETUPVAL                         R30 1
      122 GETTABLEKS                       R30 R30 K20 ["COLOR_OVERLAY_SECONDARY"]
      124 MUL                              R31 R26 R5
      125 MUL                              R32 R28 R5
      126 SUB                              R33 R32 R31
      127 GETTABLEKS                       R33 R33 K21 ["Magnitude"]
      129 LOADN                            R34 0
      130 JUMPIFNOTLT                      R34 R33 ; [+37]
      132 GETIMPORT                        R35 K24 [CFrame.new]
      134 LOADK                            R36 K25 [{0, 0, 0}]
      135 SUB                              R37 R32 R31
      136 GETTABLEKS                       R37 R37 K26 ["Unit"]
      138 CALL                             R35 2 1
      139 ADD                              R34 R35 R31
      140 GETIMPORT                        R35 K28 [Instance.new]
      142 LOADK                            R36 K29 ["LineHandleAdornment"]
      143 CALL                             R35 1 1
      144 SETTABLEKS                       R1 R35 K30 ["Adornee"]
      146 SETTABLEKS                       R34 R35 K22 ["CFrame"]
      148 SETTABLEKS                       R33 R35 K31 ["Length"]
      150 GETUPVAL                         R36 1
      151 GETTABLEKS                       R36 R36 K32 ["LINE_THICKNESS"]
      153 SETTABLEKS                       R36 R35 K33 ["Thickness"]
      155 SETTABLEKS                       R30 R35 K34 ["Color3"]
      157 LOADB                            R36 1
      158 SETTABLEKS                       R36 R35 K35 ["AlwaysOnTop"]
      160 LOADN                            R36 2
      161 SETTABLEKS                       R36 R35 K36 ["ZIndex"]
      163 LOADB                            R36 0
      164 SETTABLEKS                       R36 R35 K37 ["Archivable"]
      166 SETTABLEKS                       R1 R35 K38 ["Parent"]
      168 FORGLOOP                         R15 2 ; [-98]
      170 FORGLOOP                         R7 2 ; [-135]
      172 RETURN                           R0 0

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
