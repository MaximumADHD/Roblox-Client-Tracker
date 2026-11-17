PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 LOADK                            R4 K0 ["Left"]
        4 CALL                             R2 2 -1
        5 NAMECALL                         R0 R0 K1 ["dispatch"]
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 LOADK                            R4 K2 ["Right"]
       12 CALL                             R2 2 -1
       13 NAMECALL                         R0 R0 K1 ["dispatch"]
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 -1
        4 NAMECALL                         R0 R0 K0 ["dispatch"]
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["dispatch"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Mirrored"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 3
        7 CALL                             R2 1 -1
        8 NAMECALL                         R0 R0 K1 ["dispatch"]
       10 CALL                             R0 -1 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 4
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R4 5
       15 GETTABLEKS                       R4 R4 K2 ["SelectedTangentSide"]
       17 CALL                             R2 2 -1
       18 NAMECALL                         R0 R0 K1 ["dispatch"]
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["PathReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["SelectedObject"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R2 R1 K3 ["SelectedControlPointIndex"]
       12 JUMPIFNOTEQKN                    R2 K4 [0] ; [+2]
       14 RETURN                           R1 1
       15 NEWTABLE                         R3 0 0
       17 GETTABLEKS                       R5 R1 K5 ["ControlPointStates"]
       19 GETTABLE                         R4 R5 R2
       20 GETTABLEKS                       R5 R1 K6 ["SelectedTangentSide"]
       22 JUMPIFNOTEQKNIL                  R5 ; [+135]
       24 GETTABLEKS                       R5 R4 K7 ["Mirrored"]
       26 JUMPIFNOT                        R5 ; [+22]
       27 DUPTABLE                         R7 K12 [{["Icon"] = "", ["OnClick"], ["Text"]}]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R8 R7 K10 ["OnClick"]
       34 GETUPVAL                         R8 1
       35 LOADK                            R10 K13 ["ContextMenu"]
       36 LOADK                            R11 K14 ["BreakTangents"]
       37 NAMECALL                         R8 R8 K15 ["getText"]
       39 CALL                             R8 3 1
       40 SETTABLEKS                       R8 R7 K11 ["Text"]
       42 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       44 MOVE                             R6 R3
       45 GETIMPORT                        R5 K18 [table.insert]
       47 CALL                             R5 2 0
       48 JUMP                             ; [+21]
       49 DUPTABLE                         R7 K12 [{["Icon"] = "", ["OnClick"], ["Text"]}]
       50 NEWCLOSURE                       R8 P1
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R8 R7 K10 ["OnClick"]
       56 GETUPVAL                         R8 1
       57 LOADK                            R10 K13 ["ContextMenu"]
       58 LOADK                            R11 K19 ["MirrorTangents"]
       59 NAMECALL                         R8 R8 K15 ["getText"]
       61 CALL                             R8 3 1
       62 SETTABLEKS                       R8 R7 K11 ["Text"]
       64 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       66 MOVE                             R6 R3
       67 GETIMPORT                        R5 K18 [table.insert]
       69 CALL                             R5 2 0
       70 GETTABLEKS                       R5 R4 K20 ["Sharp"]
       72 JUMPIFNOT                        R5 ; [+22]
       73 DUPTABLE                         R7 K12 [{["Icon"] = "", ["OnClick"], ["Text"]}]
       74 NEWCLOSURE                       R8 P2
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R8 R7 K10 ["OnClick"]
       80 GETUPVAL                         R8 1
       81 LOADK                            R10 K13 ["ContextMenu"]
       82 LOADK                            R11 K21 ["AddTangents"]
       83 NAMECALL                         R8 R8 K15 ["getText"]
       85 CALL                             R8 3 1
       86 SETTABLEKS                       R8 R7 K11 ["Text"]
       88 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       90 MOVE                             R6 R3
       91 GETIMPORT                        R5 K18 [table.insert]
       93 CALL                             R5 2 0
       94 JUMP                             ; [+21]
       95 DUPTABLE                         R7 K12 [{["Icon"] = "", ["OnClick"], ["Text"]}]
       96 NEWCLOSURE                       R8 P3
       97 CAPTURE                          VAL R0
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          VAL R2
      100 SETTABLEKS                       R8 R7 K10 ["OnClick"]
      102 GETUPVAL                         R8 1
      103 LOADK                            R10 K13 ["ContextMenu"]
      104 LOADK                            R11 K22 ["ClearTangents"]
      105 NAMECALL                         R8 R8 K15 ["getText"]
      107 CALL                             R8 3 1
      108 SETTABLEKS                       R8 R7 K11 ["Text"]
      110 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      112 MOVE                             R6 R3
      113 GETIMPORT                        R5 K18 [table.insert]
      115 CALL                             R5 2 0
      116 DUPTABLE                         R7 K12 [{["Icon"] = "", ["OnClick"], ["Text"]}]
      117 NEWCLOSURE                       R8 P4
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U4
      120 CAPTURE                          VAL R2
      121 SETTABLEKS                       R8 R7 K10 ["OnClick"]
      123 GETUPVAL                         R8 1
      124 LOADK                            R10 K13 ["ContextMenu"]
      125 LOADK                            R11 K23 ["DeletePoint"]
      126 NAMECALL                         R8 R8 K15 ["getText"]
      128 CALL                             R8 3 1
      129 SETTABLEKS                       R8 R7 K11 ["Text"]
      131 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      133 MOVE                             R6 R3
      134 GETIMPORT                        R5 K18 [table.insert]
      136 CALL                             R5 2 0
      137 DUPTABLE                         R7 K12 [{["Icon"] = "", ["OnClick"], ["Text"]}]
      138 NEWCLOSURE                       R8 P5
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U5
      141 SETTABLEKS                       R8 R7 K10 ["OnClick"]
      143 GETUPVAL                         R8 1
      144 LOADK                            R10 K13 ["ContextMenu"]
      145 LOADK                            R11 K24 ["ToggleClosed"]
      146 NAMECALL                         R8 R8 K15 ["getText"]
      148 CALL                             R8 3 1
      149 SETTABLEKS                       R8 R7 K11 ["Text"]
      151 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      153 MOVE                             R6 R3
      154 GETIMPORT                        R5 K18 [table.insert]
      156 CALL                             R5 2 0
      157 JUMP                             ; [+24]
      158 DUPTABLE                         R7 K12 [{["Icon"] = "", ["OnClick"], ["Text"]}]
      159 NEWCLOSURE                       R8 P6
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U0
      163 CAPTURE                          VAL R2
      164 CAPTURE                          UPVAL U3
      165 CAPTURE                          VAL R1
      166 SETTABLEKS                       R8 R7 K10 ["OnClick"]
      168 GETUPVAL                         R8 1
      169 LOADK                            R10 K13 ["ContextMenu"]
      170 LOADK                            R11 K25 ["DeleteTangent"]
      171 NAMECALL                         R8 R8 K15 ["getText"]
      173 CALL                             R8 3 1
      174 SETTABLEKS                       R8 R7 K11 ["Text"]
      176 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      178 MOVE                             R6 R3
      179 GETIMPORT                        R5 K18 [table.insert]
      181 CALL                             R5 2 0
      182 GETUPVAL                         R5 6
      183 GETUPVAL                         R6 7
      184 NAMECALL                         R6 R6 K26 ["get"]
      186 CALL                             R6 1 1
      187 MOVE                             R7 R3
      188 LOADK                            R8 K27 ["BaseMenu"]
      189 CALL                             R5 3 0
      190 RETURN                           R1 1

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          VAL R0
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Actions"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["ToggleMirrored"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R0 K3 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Thunks"]
       22 GETIMPORT                        R4 K6 [require]
       24 GETTABLEKS                       R5 R3 K9 ["AddControlPointTangent"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K6 [require]
       29 GETTABLEKS                       R6 R3 K10 ["ClearControlPointTangent"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R3 K11 ["RemoveControlPoint"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R8 R3 K12 ["ToggleClosed"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K6 [require]
       44 GETTABLEKS                       R9 R0 K3 ["Src"]
       46 GETTABLEKS                       R9 R9 K13 ["Util"]
       48 GETTABLEKS                       R9 R9 K14 ["createContextMenu"]
       50 CALL                             R8 1 1
       51 DUPCLOSURE                       R9 K15 [PROTO_8]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 RETURN                           R9 1
