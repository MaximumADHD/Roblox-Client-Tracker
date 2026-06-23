PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 SETTABLE                         R0 R2 R7
        7 FORGLOOP                         R3 2 ; [-2]
        9 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"tag", "pseudo", "priority", "properties"}]
        1 SETTABLEKS                       R0 R1 K0 ["tag"]
        3 LOADK                            R2 K5 ["UICorner"]
        4 SETTABLEKS                       R2 R1 K1 ["pseudo"]
        6 LOADN                            R2 0
        7 SETTABLEKS                       R2 R1 K2 ["priority"]
        9 GETUPVAL                         R3 0
       10 GETUPVAL                         R4 1
       11 NEWTABLE                         R5 0 0
       13 MOVE                             R6 R4
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 SETTABLE                         R3 R5 R10
       18 FORGLOOP                         R6 2 ; [-2]
       20 MOVE                             R2 R5
       21 SETTABLEKS                       R2 R1 K3 ["properties"]
       23 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 MOVE                             R8 R1
        7 MOVE                             R9 R7
        8 CALL                             R8 1 1
        9 GETTABLEKS                       R9 R8 K0 ["cornerValue"]
       11 GETTABLEKS                       R10 R8 K1 ["attributes"]
       13 DUPTABLE                         R13 K6 [{"tag", "pseudo", "priority", "properties", "attributes"}]
       14 LOADK                            R15 K7 ["radius-%*"]
       15 GETTABLEKS                       R17 R7 K8 ["name"]
       17 NAMECALL                         R15 R15 K9 ["format"]
       19 CALL                             R15 2 1
       20 MOVE                             R14 R15
       21 SETTABLEKS                       R14 R13 K2 ["tag"]
       23 LOADK                            R14 K10 ["UICorner"]
       24 SETTABLEKS                       R14 R13 K3 ["pseudo"]
       26 LOADN                            R14 1
       27 SETTABLEKS                       R14 R13 K4 ["priority"]
       29 GETUPVAL                         R15 0
       30 NEWTABLE                         R16 0 0
       32 MOVE                             R17 R15
       33 LOADNIL                          R18
       34 LOADNIL                          R19
       35 FORGPREP                         R17
       36 SETTABLE                         R9 R16 R21
       37 FORGLOOP                         R17 2 ; [-2]
       39 MOVE                             R14 R16
       40 SETTABLEKS                       R14 R13 K5 ["properties"]
       42 SETTABLEKS                       R10 R13 K1 ["attributes"]
       44 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       46 MOVE                             R12 R2
       47 GETIMPORT                        R11 K13 [table.insert]
       49 CALL                             R11 2 0
       50 GETUPVAL                         R11 1
       51 LOADNIL                          R12
       52 LOADNIL                          R13
       53 FORGPREP                         R11
       54 LOADK                            R17 K14 ["radius-%*-%*"]
       55 MOVE                             R19 R14
       56 GETTABLEKS                       R20 R7 K8 ["name"]
       58 NAMECALL                         R17 R17 K9 ["format"]
       60 CALL                             R17 3 1
       61 MOVE                             R16 R17
       62 DUPTABLE                         R19 K16 [{"tag", "pseudo", "priority", "properties", "attributes", "children"}]
       63 SETTABLEKS                       R16 R19 K2 ["tag"]
       65 LOADK                            R20 K10 ["UICorner"]
       66 SETTABLEKS                       R20 R19 K3 ["pseudo"]
       68 LOADN                            R20 2
       69 SETTABLEKS                       R20 R19 K4 ["priority"]
       71 NEWTABLE                         R21 0 0
       73 MOVE                             R22 R15
       74 LOADNIL                          R23
       75 LOADNIL                          R24
       76 FORGPREP                         R22
       77 SETTABLE                         R9 R21 R26
       78 FORGLOOP                         R22 2 ; [-2]
       80 MOVE                             R20 R21
       81 SETTABLEKS                       R20 R19 K5 ["properties"]
       83 SETTABLEKS                       R10 R19 K1 ["attributes"]
       85 NEWTABLE                         R20 0 1
       87 DUPTABLE                         R21 K17 [{"tag", "pseudo", "priority", "properties"}]
       88 SETTABLEKS                       R16 R21 K2 ["tag"]
       90 LOADK                            R22 K10 ["UICorner"]
       91 SETTABLEKS                       R22 R21 K3 ["pseudo"]
       93 LOADN                            R22 0
       94 SETTABLEKS                       R22 R21 K4 ["priority"]
       96 GETUPVAL                         R23 2
       97 GETUPVAL                         R24 0
       98 NEWTABLE                         R25 0 0
      100 MOVE                             R26 R24
      101 LOADNIL                          R27
      102 LOADNIL                          R28
      103 FORGPREP                         R26
      104 SETTABLE                         R23 R25 R30
      105 FORGLOOP                         R26 2 ; [-2]
      107 MOVE                             R22 R25
      108 SETTABLEKS                       R22 R21 K5 ["properties"]
      110 SETLIST                          R20 R21 1 [1]
      112 SETTABLEKS                       R20 R19 K15 ["children"]
      114 FASTCALL2                        TABLE_INSERT R2 R19 ; [+4]
      116 MOVE                             R18 R2
      117 GETIMPORT                        R17 K13 [table.insert]
      119 CALL                             R17 2 0
      120 FORGLOOP                         R11 2 ; [-67]
      122 GETUPVAL                         R11 3
      123 LOADNIL                          R12
      124 LOADNIL                          R13
      125 FORGPREP                         R11
      126 LOADK                            R17 K14 ["radius-%*-%*"]
      127 MOVE                             R19 R14
      128 GETTABLEKS                       R20 R7 K8 ["name"]
      130 NAMECALL                         R17 R17 K9 ["format"]
      132 CALL                             R17 3 1
      133 MOVE                             R16 R17
      134 DUPTABLE                         R19 K16 [{"tag", "pseudo", "priority", "properties", "attributes", "children"}]
      135 SETTABLEKS                       R16 R19 K2 ["tag"]
      137 LOADK                            R20 K10 ["UICorner"]
      138 SETTABLEKS                       R20 R19 K3 ["pseudo"]
      140 LOADN                            R20 3
      141 SETTABLEKS                       R20 R19 K4 ["priority"]
      143 NEWTABLE                         R21 0 1
      145 MOVE                             R22 R15
      146 SETLIST                          R21 R22 1 [1]
      148 NEWTABLE                         R22 0 0
      150 MOVE                             R23 R21
      151 LOADNIL                          R24
      152 LOADNIL                          R25
      153 FORGPREP                         R23
      154 SETTABLE                         R9 R22 R27
      155 FORGLOOP                         R23 2 ; [-2]
      157 MOVE                             R20 R22
      158 SETTABLEKS                       R20 R19 K5 ["properties"]
      160 SETTABLEKS                       R10 R19 K1 ["attributes"]
      162 NEWTABLE                         R20 0 1
      164 DUPTABLE                         R21 K17 [{"tag", "pseudo", "priority", "properties"}]
      165 SETTABLEKS                       R16 R21 K2 ["tag"]
      167 LOADK                            R22 K10 ["UICorner"]
      168 SETTABLEKS                       R22 R21 K3 ["pseudo"]
      170 LOADN                            R22 0
      171 SETTABLEKS                       R22 R21 K4 ["priority"]
      173 GETUPVAL                         R23 2
      174 GETUPVAL                         R24 0
      175 NEWTABLE                         R25 0 0
      177 MOVE                             R26 R24
      178 LOADNIL                          R27
      179 LOADNIL                          R28
      180 FORGPREP                         R26
      181 SETTABLE                         R23 R25 R30
      182 FORGLOOP                         R26 2 ; [-2]
      184 MOVE                             R22 R25
      185 SETTABLEKS                       R22 R21 K5 ["properties"]
      187 SETLIST                          R20 R21 1 [1]
      189 SETTABLEKS                       R20 R19 K15 ["children"]
      191 FASTCALL2                        TABLE_INSERT R2 R19 ; [+4]
      193 MOVE                             R18 R2
      194 GETIMPORT                        R17 K13 [table.insert]
      196 CALL                             R17 2 0
      197 FORGLOOP                         R11 2 ; [-72]
      199 FORGLOOP                         R3 2 ; [-194]
      201 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["CornerProperty"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K12 [UDim.new]
       25 LOADN                            R4 0
       26 LOADN                            R5 0
       27 CALL                             R3 2 1
       28 NEWTABLE                         R4 0 4
       30 GETTABLEKS                       R5 R1 K13 ["TopLeft"]
       32 GETTABLEKS                       R6 R1 K14 ["TopRight"]
       34 GETTABLEKS                       R7 R1 K15 ["BottomRight"]
       36 GETTABLEKS                       R8 R1 K16 ["BottomLeft"]
       38 SETLIST                          R4 R5 4 [1]
       40 NEWTABLE                         R5 4 0
       42 GETTABLEKS                       R6 R1 K13 ["TopLeft"]
       44 SETTABLEKS                       R6 R5 K17 ["top-left"]
       46 GETTABLEKS                       R6 R1 K14 ["TopRight"]
       48 SETTABLEKS                       R6 R5 K18 ["top-right"]
       50 GETTABLEKS                       R6 R1 K15 ["BottomRight"]
       52 SETTABLEKS                       R6 R5 K19 ["bottom-right"]
       54 GETTABLEKS                       R6 R1 K16 ["BottomLeft"]
       56 SETTABLEKS                       R6 R5 K20 ["bottom-left"]
       58 DUPTABLE                         R6 K25 [{"top", "bottom", "left", "right"}]
       59 NEWTABLE                         R7 0 2
       61 GETTABLEKS                       R8 R1 K13 ["TopLeft"]
       63 GETTABLEKS                       R9 R1 K14 ["TopRight"]
       65 SETLIST                          R7 R8 2 [1]
       67 SETTABLEKS                       R7 R6 K21 ["top"]
       69 NEWTABLE                         R7 0 2
       71 GETTABLEKS                       R8 R1 K16 ["BottomLeft"]
       73 GETTABLEKS                       R9 R1 K15 ["BottomRight"]
       75 SETLIST                          R7 R8 2 [1]
       77 SETTABLEKS                       R7 R6 K22 ["bottom"]
       79 NEWTABLE                         R7 0 2
       81 GETTABLEKS                       R8 R1 K13 ["TopLeft"]
       83 GETTABLEKS                       R9 R1 K16 ["BottomLeft"]
       85 SETLIST                          R7 R8 2 [1]
       87 SETTABLEKS                       R7 R6 K23 ["left"]
       89 NEWTABLE                         R7 0 2
       91 GETTABLEKS                       R8 R1 K14 ["TopRight"]
       93 GETTABLEKS                       R9 R1 K15 ["BottomRight"]
       95 SETLIST                          R7 R8 2 [1]
       97 SETTABLEKS                       R7 R6 K24 ["right"]
       99 DUPCLOSURE                       R7 K26 [PROTO_0]
      100 DUPCLOSURE                       R8 K27 [PROTO_1]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R4
      103 DUPCLOSURE                       R9 K28 [PROTO_2]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R5
      108 RETURN                           R9 1
