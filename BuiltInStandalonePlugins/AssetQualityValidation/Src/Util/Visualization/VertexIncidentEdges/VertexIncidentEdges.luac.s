PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["editableMesh"]
        2 GETTABLEKS                       R2 R0 K1 ["adornee"]
        4 GETTABLEKS                       R4 R0 K3 ["scale"]
        6 ORK                              R3 R4 K2 [{1, 1, 1}]
        7 GETTABLEKS                       R4 R0 K4 ["indices"]
        9 JUMPIFNOT                        R4 ; [+3]
       10 GETTABLEKS                       R4 R0 K5 ["vertexIds"]
       12 JUMPIF                           R4 ; [+1]
       13 RETURN                           R0 0
       14 NEWTABLE                         R4 0 0
       16 GETTABLEKS                       R5 R0 K4 ["indices"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETTABLEKS                       R11 R0 K5 ["vertexIds"]
       23 ADDK                             R12 R9 K6 [1]
       24 GETTABLE                         R10 R11 R12
       25 JUMPIFNOT                        R10 ; [+2]
       26 LOADB                            R11 1
       27 SETTABLE                         R11 R4 R10
       28 FORGLOOP                         R5 2 ; [-8]
       30 NEWTABLE                         R5 0 0
       32 NAMECALL                         R6 R1 K7 ["GetFaces"]
       34 CALL                             R6 1 3
       35 FORGPREP                         R6
       36 GETTABLEKS                       R12 R1 K8 ["GetFaceVertices"]
       38 MOVE                             R13 R1
       39 MOVE                             R14 R10
       40 FASTPCALL                        pcall 3 ; [+2]
       41 GETIMPORT                        R11 K10 [pcall]
       43 CALL                             R11 3 2
       44 JUMPIFNOT                        R11 ; [+98]
       45 JUMPIFNOT                        R12 ; [+97]
       46 NEWTABLE                         R13 0 3
       48 NEWTABLE                         R14 0 2
       50 GETTABLEN                        R15 R12 1
       51 GETTABLEN                        R16 R12 2
       52 SETLIST                          R14 R15 2 [1]
       54 NEWTABLE                         R15 0 2
       56 GETTABLEN                        R16 R12 2
       57 GETTABLEN                        R17 R12 3
       58 SETLIST                          R15 R16 2 [1]
       60 NEWTABLE                         R16 0 2
       62 GETTABLEN                        R17 R12 1
       63 GETTABLEN                        R18 R12 3
       64 SETLIST                          R16 R17 2 [1]
       66 SETLIST                          R13 R14 3 [1]
       68 MOVE                             R14 R13
       69 LOADNIL                          R15
       70 LOADNIL                          R16
       71 FORGPREP                         R14
       72 GETTABLEN                        R19 R18 1
       73 GETTABLEN                        R20 R18 2
       74 FASTCALL2                        MATH_MIN R19 R20 ; [+5]
       76 MOVE                             R22 R19
       77 MOVE                             R23 R20
       78 GETIMPORT                        R21 K13 [math.min]
       80 CALL                             R21 2 1
       81 FASTCALL2                        MATH_MAX R19 R20 ; [+5]
       83 MOVE                             R23 R19
       84 MOVE                             R24 R20
       85 GETIMPORT                        R22 K15 [math.max]
       87 CALL                             R22 2 1
       88 MOVE                             R24 R21
       89 LOADK                            R25 K16 [":"]
       90 MOVE                             R26 R22
       91 CONCAT                           R23 R24 R26
       92 GETTABLE                         R24 R4 R19
       93 JUMPIF                           R24 ; [+1]
       94 GETTABLE                         R24 R4 R20
       95 GETTABLE                         R25 R5 R23
       96 JUMPIF                           R25 ; [+35]
       97 GETTABLEKS                       R26 R1 K17 ["GetPosition"]
       99 MOVE                             R27 R1
      100 MOVE                             R28 R19
      101 FASTPCALL                        pcall 3 ; [+2]
      102 GETIMPORT                        R25 K10 [pcall]
      104 CALL                             R25 3 2
      105 GETTABLEKS                       R28 R1 K17 ["GetPosition"]
      107 MOVE                             R29 R1
      108 MOVE                             R30 R20
      109 FASTPCALL                        pcall 3 ; [+2]
      110 GETIMPORT                        R27 K10 [pcall]
      112 CALL                             R27 3 2
      113 JUMPIFNOT                        R25 ; [+27]
      114 JUMPIFNOT                        R27 ; [+26]
      115 JUMPIFNOT                        R26 ; [+25]
      116 JUMPIFNOT                        R28 ; [+24]
      117 DUPTABLE                         R29 K21 [{"pos1", "pos2", "isError"}]
      118 MUL                              R30 R26 R3
      119 SETTABLEKS                       R30 R29 K18 ["pos1"]
      121 MUL                              R30 R28 R3
      122 SETTABLEKS                       R30 R29 K19 ["pos2"]
      124 JUMPIFEQKB                       R24 TRUE ; [+2]
      126 LOADB                            R30 0 +1
      127 LOADB                            R30 1
      128 SETTABLEKS                       R30 R29 K20 ["isError"]
      130 SETTABLE                         R29 R5 R23
      131 JUMP                             ; [+9]
      132 JUMPIFNOT                        R24 ; [+8]
      133 GETTABLE                         R25 R5 R23
      134 GETTABLEKS                       R25 R25 K20 ["isError"]
      136 JUMPIF                           R25 ; [+4]
      137 GETTABLE                         R25 R5 R23
      138 LOADB                            R26 1
      139 SETTABLEKS                       R26 R25 K20 ["isError"]
      141 FORGLOOP                         R14 2 ; [-70]
      143 FORGLOOP                         R6 2 ; [-108]
      145 MOVE                             R6 R5
      146 LOADNIL                          R7
      147 LOADNIL                          R8
      148 FORGPREP                         R6
      149 GETTABLEKS                       R11 R10 K18 ["pos1"]
      151 GETTABLEKS                       R12 R10 K19 ["pos2"]
      153 SUB                              R13 R12 R11
      154 GETTABLEKS                       R13 R13 K22 ["Magnitude"]
      156 LOADN                            R14 0
      157 JUMPIFNOTLT                      R14 R13 ; [+52]
      159 GETIMPORT                        R15 K25 [CFrame.new]
      161 LOADK                            R16 K26 [{0, 0, 0}]
      162 SUB                              R17 R12 R11
      163 GETTABLEKS                       R17 R17 K27 ["Unit"]
      165 CALL                             R15 2 1
      166 ADD                              R14 R15 R11
      167 GETIMPORT                        R15 K29 [Instance.new]
      169 LOADK                            R16 K30 ["LineHandleAdornment"]
      170 CALL                             R15 1 1
      171 SETTABLEKS                       R2 R15 K31 ["Adornee"]
      173 SETTABLEKS                       R14 R15 K23 ["CFrame"]
      175 SETTABLEKS                       R13 R15 K32 ["Length"]
      177 GETUPVAL                         R16 0
      178 GETTABLEKS                       R16 R16 K33 ["LINE_THICKNESS"]
      180 SETTABLEKS                       R16 R15 K34 ["Thickness"]
      182 GETTABLEKS                       R17 R10 K20 ["isError"]
      184 JUMPIFNOT                        R17 ; [+4]
      185 GETUPVAL                         R16 0
      186 GETTABLEKS                       R16 R16 K35 ["COLOR_EDGE_ERROR"]
      188 JUMP                             ; [+3]
      189 GETUPVAL                         R16 0
      190 GETTABLEKS                       R16 R16 K36 ["COLOR_EDGE_DEFAULT"]
      192 SETTABLEKS                       R16 R15 K37 ["Color3"]
      194 LOADB                            R16 1
      195 SETTABLEKS                       R16 R15 K38 ["AlwaysOnTop"]
      197 GETTABLEKS                       R17 R10 K20 ["isError"]
      199 JUMPIFNOT                        R17 ; [+2]
      200 LOADN                            R16 1
      201 JUMP                             ; [+1]
      202 LOADN                            R16 0
      203 SETTABLEKS                       R16 R15 K39 ["ZIndex"]
      205 LOADB                            R16 0
      206 SETTABLEKS                       R16 R15 K40 ["Archivable"]
      208 SETTABLEKS                       R2 R15 K41 ["Parent"]
      210 FORGLOOP                         R6 2 ; [-62]
      212 RETURN                           R0 0

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
       16 SETTABLEKS                       R3 R2 K8 ["build"]
       18 RETURN                           R2 1
