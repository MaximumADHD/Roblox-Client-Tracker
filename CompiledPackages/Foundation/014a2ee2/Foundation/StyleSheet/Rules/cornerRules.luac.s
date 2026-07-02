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
        0 DUPTABLE                         R1 K6 [{[1], ["pseudo"] = "UICorner", ["priority"] = 0, ["properties"]}]
        1 SETTABLEKS                       R0 R1 K0 ["tag"]
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 NEWTABLE                         R5 0 0
        7 MOVE                             R6 R4
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 FORGPREP                         R6
       11 SETTABLE                         R3 R5 R10
       12 FORGLOOP                         R6 2 ; [-2]
       14 MOVE                             R2 R5
       15 SETTABLEKS                       R2 R1 K5 ["properties"]
       17 RETURN                           R1 1

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
       13 DUPTABLE                         R13 K8 [{["tag"], ["pseudo"] = "UICorner", ["priority"] = 1, ["properties"], ["attributes"]}]
       14 LOADK                            R15 K9 ["radius-%*"]
       15 GETTABLEKS                       R17 R7 K10 ["name"]
       17 NAMECALL                         R15 R15 K11 ["format"]
       19 CALL                             R15 2 1
       20 MOVE                             R14 R15
       21 SETTABLEKS                       R14 R13 K2 ["tag"]
       23 GETUPVAL                         R15 0
       24 NEWTABLE                         R16 0 0
       26 MOVE                             R17 R15
       27 LOADNIL                          R18
       28 LOADNIL                          R19
       29 FORGPREP                         R17
       30 SETTABLE                         R9 R16 R21
       31 FORGLOOP                         R17 2 ; [-2]
       33 MOVE                             R14 R16
       34 SETTABLEKS                       R14 R13 K7 ["properties"]
       36 SETTABLEKS                       R10 R13 K1 ["attributes"]
       38 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       40 MOVE                             R12 R2
       41 GETIMPORT                        R11 K14 [table.insert]
       43 CALL                             R11 2 0
       44 GETUPVAL                         R11 1
       45 LOADNIL                          R12
       46 LOADNIL                          R13
       47 FORGPREP                         R11
       48 LOADK                            R17 K15 ["radius-%*-%*"]
       49 MOVE                             R19 R14
       50 GETTABLEKS                       R20 R7 K10 ["name"]
       52 NAMECALL                         R17 R17 K11 ["format"]
       54 CALL                             R17 3 1
       55 MOVE                             R16 R17
       56 DUPTABLE                         R19 K18 [{["tag"], ["pseudo"] = "UICorner", ["priority"] = 2, ["properties"], ["attributes"], ["children"]}]
       57 SETTABLEKS                       R16 R19 K2 ["tag"]
       59 NEWTABLE                         R21 0 0
       61 MOVE                             R22 R15
       62 LOADNIL                          R23
       63 LOADNIL                          R24
       64 FORGPREP                         R22
       65 SETTABLE                         R9 R21 R26
       66 FORGLOOP                         R22 2 ; [-2]
       68 MOVE                             R20 R21
       69 SETTABLEKS                       R20 R19 K7 ["properties"]
       71 SETTABLEKS                       R10 R19 K1 ["attributes"]
       73 NEWTABLE                         R20 0 1
       75 DUPTABLE                         R21 K20 [{["tag"], ["pseudo"] = "UICorner", ["priority"] = 0, ["properties"]}]
       76 SETTABLEKS                       R16 R21 K2 ["tag"]
       78 GETUPVAL                         R23 2
       79 GETUPVAL                         R24 0
       80 NEWTABLE                         R25 0 0
       82 MOVE                             R26 R24
       83 LOADNIL                          R27
       84 LOADNIL                          R28
       85 FORGPREP                         R26
       86 SETTABLE                         R23 R25 R30
       87 FORGLOOP                         R26 2 ; [-2]
       89 MOVE                             R22 R25
       90 SETTABLEKS                       R22 R21 K7 ["properties"]
       92 SETLIST                          R20 R21 1 [1]
       94 SETTABLEKS                       R20 R19 K17 ["children"]
       96 FASTCALL2                        TABLE_INSERT R2 R19 ; [+4]
       98 MOVE                             R18 R2
       99 GETIMPORT                        R17 K14 [table.insert]
      101 CALL                             R17 2 0
      102 FORGLOOP                         R11 2 ; [-55]
      104 GETUPVAL                         R11 3
      105 LOADNIL                          R12
      106 LOADNIL                          R13
      107 FORGPREP                         R11
      108 LOADK                            R17 K15 ["radius-%*-%*"]
      109 MOVE                             R19 R14
      110 GETTABLEKS                       R20 R7 K10 ["name"]
      112 NAMECALL                         R17 R17 K11 ["format"]
      114 CALL                             R17 3 1
      115 MOVE                             R16 R17
      116 DUPTABLE                         R19 K22 [{["tag"], ["pseudo"] = "UICorner", ["priority"] = 3, ["properties"], ["attributes"], ["children"]}]
      117 SETTABLEKS                       R16 R19 K2 ["tag"]
      119 NEWTABLE                         R21 0 1
      121 MOVE                             R22 R15
      122 SETLIST                          R21 R22 1 [1]
      124 NEWTABLE                         R22 0 0
      126 MOVE                             R23 R21
      127 LOADNIL                          R24
      128 LOADNIL                          R25
      129 FORGPREP                         R23
      130 SETTABLE                         R9 R22 R27
      131 FORGLOOP                         R23 2 ; [-2]
      133 MOVE                             R20 R22
      134 SETTABLEKS                       R20 R19 K7 ["properties"]
      136 SETTABLEKS                       R10 R19 K1 ["attributes"]
      138 NEWTABLE                         R20 0 1
      140 DUPTABLE                         R21 K20 [{["tag"], ["pseudo"] = "UICorner", ["priority"] = 0, ["properties"]}]
      141 SETTABLEKS                       R16 R21 K2 ["tag"]
      143 GETUPVAL                         R23 2
      144 GETUPVAL                         R24 0
      145 NEWTABLE                         R25 0 0
      147 MOVE                             R26 R24
      148 LOADNIL                          R27
      149 LOADNIL                          R28
      150 FORGPREP                         R26
      151 SETTABLE                         R23 R25 R30
      152 FORGLOOP                         R26 2 ; [-2]
      154 MOVE                             R22 R25
      155 SETTABLEKS                       R22 R21 K7 ["properties"]
      157 SETLIST                          R20 R21 1 [1]
      159 SETTABLEKS                       R20 R19 K17 ["children"]
      161 FASTCALL2                        TABLE_INSERT R2 R19 ; [+4]
      163 MOVE                             R18 R2
      164 GETIMPORT                        R17 K14 [table.insert]
      166 CALL                             R17 2 0
      167 FORGLOOP                         R11 2 ; [-60]
      169 FORGLOOP                         R3 2 ; [-164]
      171 RETURN                           R2 1

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
