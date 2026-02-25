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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Mirrored"]
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
       14 GETUPVAL                         R5 5
       15 GETTABLEKS                       R4 R5 K2 ["SelectedTangentSide"]
       17 CALL                             R2 2 -1
       18 NAMECALL                         R0 R0 K1 ["dispatch"]
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["PathReducer"]
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
       22 JUMPIFNOTEQKNIL                  R5 ; [+153]
       24 GETTABLEKS                       R5 R4 K7 ["Mirrored"]
       26 JUMPIFNOT                        R5 ; [+25]
       27 DUPTABLE                         R7 K11 [{"Icon", "OnClick", "Text"}]
       28 LOADK                            R8 K12 [""]
       29 SETTABLEKS                       R8 R7 K8 ["Icon"]
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R8 R7 K9 ["OnClick"]
       37 GETUPVAL                         R8 1
       38 LOADK                            R10 K13 ["ContextMenu"]
       39 LOADK                            R11 K14 ["BreakTangents"]
       40 NAMECALL                         R8 R8 K15 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K10 ["Text"]
       45 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       47 MOVE                             R6 R3
       48 GETIMPORT                        R5 K18 [table.insert]
       50 CALL                             R5 2 0
       51 JUMP                             ; [+24]
       52 DUPTABLE                         R7 K11 [{"Icon", "OnClick", "Text"}]
       53 LOADK                            R8 K12 [""]
       54 SETTABLEKS                       R8 R7 K8 ["Icon"]
       56 NEWCLOSURE                       R8 P1
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R8 R7 K9 ["OnClick"]
       62 GETUPVAL                         R8 1
       63 LOADK                            R10 K13 ["ContextMenu"]
       64 LOADK                            R11 K19 ["MirrorTangents"]
       65 NAMECALL                         R8 R8 K15 ["getText"]
       67 CALL                             R8 3 1
       68 SETTABLEKS                       R8 R7 K10 ["Text"]
       70 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       72 MOVE                             R6 R3
       73 GETIMPORT                        R5 K18 [table.insert]
       75 CALL                             R5 2 0
       76 GETTABLEKS                       R5 R4 K20 ["Sharp"]
       78 JUMPIFNOT                        R5 ; [+25]
       79 DUPTABLE                         R7 K11 [{"Icon", "OnClick", "Text"}]
       80 LOADK                            R8 K12 [""]
       81 SETTABLEKS                       R8 R7 K8 ["Icon"]
       83 NEWCLOSURE                       R8 P2
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          VAL R2
       87 SETTABLEKS                       R8 R7 K9 ["OnClick"]
       89 GETUPVAL                         R8 1
       90 LOADK                            R10 K13 ["ContextMenu"]
       91 LOADK                            R11 K21 ["AddTangents"]
       92 NAMECALL                         R8 R8 K15 ["getText"]
       94 CALL                             R8 3 1
       95 SETTABLEKS                       R8 R7 K10 ["Text"]
       97 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       99 MOVE                             R6 R3
      100 GETIMPORT                        R5 K18 [table.insert]
      102 CALL                             R5 2 0
      103 JUMP                             ; [+24]
      104 DUPTABLE                         R7 K11 [{"Icon", "OnClick", "Text"}]
      105 LOADK                            R8 K12 [""]
      106 SETTABLEKS                       R8 R7 K8 ["Icon"]
      108 NEWCLOSURE                       R8 P3
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          VAL R2
      112 SETTABLEKS                       R8 R7 K9 ["OnClick"]
      114 GETUPVAL                         R8 1
      115 LOADK                            R10 K13 ["ContextMenu"]
      116 LOADK                            R11 K22 ["ClearTangents"]
      117 NAMECALL                         R8 R8 K15 ["getText"]
      119 CALL                             R8 3 1
      120 SETTABLEKS                       R8 R7 K10 ["Text"]
      122 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      124 MOVE                             R6 R3
      125 GETIMPORT                        R5 K18 [table.insert]
      127 CALL                             R5 2 0
      128 DUPTABLE                         R7 K11 [{"Icon", "OnClick", "Text"}]
      129 LOADK                            R8 K12 [""]
      130 SETTABLEKS                       R8 R7 K8 ["Icon"]
      132 NEWCLOSURE                       R8 P4
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U4
      135 CAPTURE                          VAL R2
      136 SETTABLEKS                       R8 R7 K9 ["OnClick"]
      138 GETUPVAL                         R8 1
      139 LOADK                            R10 K13 ["ContextMenu"]
      140 LOADK                            R11 K23 ["DeletePoint"]
      141 NAMECALL                         R8 R8 K15 ["getText"]
      143 CALL                             R8 3 1
      144 SETTABLEKS                       R8 R7 K10 ["Text"]
      146 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      148 MOVE                             R6 R3
      149 GETIMPORT                        R5 K18 [table.insert]
      151 CALL                             R5 2 0
      152 DUPTABLE                         R7 K11 [{"Icon", "OnClick", "Text"}]
      153 LOADK                            R8 K12 [""]
      154 SETTABLEKS                       R8 R7 K8 ["Icon"]
      156 NEWCLOSURE                       R8 P5
      157 CAPTURE                          VAL R0
      158 CAPTURE                          UPVAL U5
      159 SETTABLEKS                       R8 R7 K9 ["OnClick"]
      161 GETUPVAL                         R8 1
      162 LOADK                            R10 K13 ["ContextMenu"]
      163 LOADK                            R11 K24 ["ToggleClosed"]
      164 NAMECALL                         R8 R8 K15 ["getText"]
      166 CALL                             R8 3 1
      167 SETTABLEKS                       R8 R7 K10 ["Text"]
      169 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      171 MOVE                             R6 R3
      172 GETIMPORT                        R5 K18 [table.insert]
      174 CALL                             R5 2 0
      175 JUMP                             ; [+27]
      176 DUPTABLE                         R7 K11 [{"Icon", "OnClick", "Text"}]
      177 LOADK                            R8 K12 [""]
      178 SETTABLEKS                       R8 R7 K8 ["Icon"]
      180 NEWCLOSURE                       R8 P6
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R0
      183 CAPTURE                          UPVAL U0
      184 CAPTURE                          VAL R2
      185 CAPTURE                          UPVAL U3
      186 CAPTURE                          VAL R1
      187 SETTABLEKS                       R8 R7 K9 ["OnClick"]
      189 GETUPVAL                         R8 1
      190 LOADK                            R10 K13 ["ContextMenu"]
      191 LOADK                            R11 K25 ["DeleteTangent"]
      192 NAMECALL                         R8 R8 K15 ["getText"]
      194 CALL                             R8 3 1
      195 SETTABLEKS                       R8 R7 K10 ["Text"]
      197 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
      199 MOVE                             R6 R3
      200 GETIMPORT                        R5 K18 [table.insert]
      202 CALL                             R5 2 0
      203 GETUPVAL                         R5 6
      204 GETUPVAL                         R6 7
      205 NAMECALL                         R6 R6 K26 ["get"]
      207 CALL                             R6 1 1
      208 MOVE                             R7 R3
      209 LOADK                            R8 K27 ["BaseMenu"]
      210 CALL                             R5 3 0
      211 RETURN                           R1 1

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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R2 K4 ["Actions"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["ToggleMirrored"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R4 R0 K3 ["Src"]
       20 GETTABLEKS                       R3 R4 K8 ["Thunks"]
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
       44 GETTABLEKS                       R11 R0 K3 ["Src"]
       46 GETTABLEKS                       R10 R11 K13 ["Util"]
       48 GETTABLEKS                       R9 R10 K14 ["createContextMenu"]
       50 CALL                             R8 1 1
       51 DUPCLOSURE                       R9 K15 [PROTO_8]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R8
       58 RETURN                           R9 1
