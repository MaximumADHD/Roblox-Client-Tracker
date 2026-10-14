PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+11]
        2 GETTABLEKS                       R2 R0 K0 ["X"]
        4 LOADN                            R3 0
        5 JUMPIFLE                         R2 R3 ; [+6]
        7 GETTABLEKS                       R2 R0 K1 ["Y"]
        9 LOADN                            R3 0
       10 JUMPIFNOTLE                      R2 R3 ; [+2]
       12 RETURN                           R1 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 ADDK                             R7 R1 K0 [1]
        2 GETTABLE                         R5 R6 R7
        3 FASTCALL2                        TABLE_INSERT R5 R0 ; [+4]
        5 MOVE                             R6 R0
        6 GETIMPORT                        R4 K3 [table.insert]
        8 CALL                             R4 2 0
        9 GETUPVAL                         R4 1
       10 SETTABLE                         R3 R4 R0
       11 GETUPVAL                         R4 2
       12 SETTABLE                         R2 R4 R0
       13 GETUPVAL                         R4 3
       14 NEWTABLE                         R5 0 0
       16 SETTABLE                         R5 R4 R0
       17 GETUPVAL                         R4 4
       18 NEWTABLE                         R5 0 0
       20 SETTABLE                         R5 R4 R0
       21 GETUPVAL                         R4 5
       22 NEWTABLE                         R5 0 0
       24 SETTABLE                         R5 R4 R0
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R3 K2 [table.insert]
        7 CALL                             R3 2 0
        8 GETUPVAL                         R5 1
        9 GETTABLE                         R4 R5 R1
       10 FASTCALL2                        TABLE_INSERT R4 R0 ; [+4]
       12 MOVE                             R5 R0
       13 GETIMPORT                        R3 K2 [table.insert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R4 2
       17 GETTABLE                         R3 R4 R0
       18 SETTABLE                         R2 R3 R1
       19 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R4 R2
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 0 0
        6 LOADN                            R8 1
        7 GETTABLEKS                       R9 R1 K1 ["maxLayer"]
        9 ADDK                             R6 R9 K0 [1]
       10 LOADN                            R7 1
       11 FORNPREP                         R6
       12 NEWTABLE                         R9 0 0
       14 SETTABLE                         R9 R5 R8
       15 FORNLOOP                         R6
       16 NEWTABLE                         R6 0 0
       18 NEWTABLE                         R7 0 0
       20 NEWTABLE                         R8 0 0
       22 NEWTABLE                         R9 0 0
       24 NEWTABLE                         R10 0 0
       26 NEWCLOSURE                       R11 P0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R6
       29 CAPTURE                          VAL R7
       30 CAPTURE                          VAL R8
       31 CAPTURE                          VAL R9
       32 CAPTURE                          VAL R10
       33 GETTABLEKS                       R12 R0 K2 ["nodeIds"]
       35 LOADNIL                          R13
       36 LOADNIL                          R14
       37 FORGPREP                         R12
       38 MOVE                             R17 R11
       39 MOVE                             R18 R16
       40 GETTABLEKS                       R20 R1 K3 ["layerOf"]
       42 GETTABLE                         R19 R20 R16
       43 GETTABLE                         R21 R4 R16
       44 GETTABLEKS                       R22 R3 K4 ["defaultNodeSize"]
       46 JUMPIFEQKNIL                     R21 ; [+11]
       48 GETTABLEKS                       R23 R21 K5 ["X"]
       50 LOADN                            R24 0
       51 JUMPIFLE                         R23 R24 ; [+6]
       53 GETTABLEKS                       R23 R21 K6 ["Y"]
       55 LOADN                            R24 0
       56 JUMPIFNOTLE                      R23 R24 ; [+3]
       58 MOVE                             R20 R22
       59 JUMP                             ; [+1]
       60 MOVE                             R20 R21
       61 LOADB                            R21 0
       62 CALL                             R17 4 0
       63 FORGLOOP                         R12 2 ; [-26]
       65 NEWCLOSURE                       R12 P1
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R10
       69 LOADN                            R13 0
       70 GETIMPORT                        R14 K9 [Vector2.new]
       72 GETUPVAL                         R15 0
       73 GETTABLEKS                       R15 R15 K10 ["DUMMY_WIDTH"]
       75 LOADN                            R16 0
       76 CALL                             R14 2 1
       77 GETTABLEKS                       R15 R0 K11 ["edges"]
       79 LOADNIL                          R16
       80 LOADNIL                          R17
       81 FORGPREP                         R15
       82 GETTABLEKS                       R21 R1 K3 ["layerOf"]
       84 GETTABLEKS                       R22 R19 K12 ["from"]
       86 GETTABLE                         R20 R21 R22
       87 GETTABLEKS                       R22 R1 K3 ["layerOf"]
       89 GETTABLEKS                       R23 R19 K13 ["to"]
       91 GETTABLE                         R21 R22 R23
       92 SUB                              R22 R21 R20
       93 LOADN                            R23 1
       94 JUMPIFNOTLE                      R22 R23 ; [+27]
       96 SUB                              R22 R21 R20
       97 JUMPIFNOTEQKN                    R22 K0 [1] ; [+81]
       99 GETTABLEKS                       R22 R19 K12 ["from"]
      101 GETTABLEKS                       R23 R19 K13 ["to"]
      103 GETTABLEKS                       R24 R19 K14 ["toPort"]
      105 GETTABLE                         R26 R8 R22
      106 FASTCALL2                        TABLE_INSERT R26 R23 ; [+4]
      108 MOVE                             R27 R23
      109 GETIMPORT                        R25 K17 [table.insert]
      111 CALL                             R25 2 0
      112 GETTABLE                         R26 R9 R23
      113 FASTCALL2                        TABLE_INSERT R26 R22 ; [+4]
      115 MOVE                             R27 R22
      116 GETIMPORT                        R25 K17 [table.insert]
      118 CALL                             R25 2 0
      119 GETTABLE                         R25 R10 R22
      120 SETTABLE                         R24 R25 R23
      121 JUMP                             ; [+57]
      122 GETTABLEKS                       R22 R19 K12 ["from"]
      124 ADDK                             R25 R20 K0 [1]
      125 SUBK                             R23 R21 K0 [1]
      126 LOADN                            R24 1
      127 FORNPREP                         R23
      128 ADDK                             R13 R13 K0 [1]
      129 LOADK                            R27 K18 ["dummy:"]
      130 MOVE                             R28 R13
      131 CONCAT                           R26 R27 R28
      132 MOVE                             R27 R11
      133 MOVE                             R28 R26
      134 MOVE                             R29 R25
      135 MOVE                             R30 R14
      136 LOADB                            R31 1
      137 CALL                             R27 4 0
      138 MOVE                             R27 R22
      139 GETUPVAL                         R28 1
      140 GETTABLE                         R30 R8 R27
      141 FASTCALL2                        TABLE_INSERT R30 R26 ; [+4]
      143 MOVE                             R31 R26
      144 GETIMPORT                        R29 K17 [table.insert]
      146 CALL                             R29 2 0
      147 GETTABLE                         R30 R9 R26
      148 FASTCALL2                        TABLE_INSERT R30 R27 ; [+4]
      150 MOVE                             R31 R27
      151 GETIMPORT                        R29 K17 [table.insert]
      153 CALL                             R29 2 0
      154 GETTABLE                         R29 R10 R27
      155 SETTABLE                         R28 R29 R26
      156 MOVE                             R22 R26
      157 FORNLOOP                         R23
      158 MOVE                             R23 R22
      159 GETTABLEKS                       R24 R19 K13 ["to"]
      161 GETTABLEKS                       R25 R19 K14 ["toPort"]
      163 GETTABLE                         R27 R8 R23
      164 FASTCALL2                        TABLE_INSERT R27 R24 ; [+4]
      166 MOVE                             R28 R24
      167 GETIMPORT                        R26 K17 [table.insert]
      169 CALL                             R26 2 0
      170 GETTABLE                         R27 R9 R24
      171 FASTCALL2                        TABLE_INSERT R27 R23 ; [+4]
      173 MOVE                             R28 R23
      174 GETIMPORT                        R26 K17 [table.insert]
      176 CALL                             R26 2 0
      177 GETTABLE                         R26 R10 R23
      178 SETTABLE                         R25 R26 R24
      179 FORGLOOP                         R15 2 ; [-98]
      181 DUPTABLE                         R15 K25 [{"layers", "isDummy", "downAdj", "upAdj", "portOffset", "realSize"}]
      182 SETTABLEKS                       R5 R15 K19 ["layers"]
      184 SETTABLEKS                       R6 R15 K20 ["isDummy"]
      186 SETTABLEKS                       R8 R15 K21 ["downAdj"]
      188 SETTABLEKS                       R9 R15 K22 ["upAdj"]
      190 SETTABLEKS                       R10 R15 K23 ["portOffset"]
      192 SETTABLEKS                       R7 R15 K24 ["realSize"]
      194 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Organize"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Organize"]
       18 GETTABLEKS                       R3 R3 K8 ["Types"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["CENTERED_PORT_OFFSET"]
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 DUPCLOSURE                       R5 K11 [PROTO_3]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R3
       27 RETURN                           R5 1
