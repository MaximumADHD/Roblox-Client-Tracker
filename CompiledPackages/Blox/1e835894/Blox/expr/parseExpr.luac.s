PROTO_0:
        0 LOADK                            R4 K0 ["^[ \t\n]+"]
        1 MOVE                             R5 R1
        2 NAMECALL                         R2 R0 K1 ["match"]
        4 CALL                             R2 3 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 LENGTH                           R4 R2
        7 ADD                              R3 R1 R4
        8 RETURN                           R3 1
        9 MOVE                             R3 R1
       10 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Lookup"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 2
        6 LOADK                            R7 K1 ["^[ \t\n]+"]
        7 MOVE                             R8 R4
        8 NAMECALL                         R5 R0 K2 ["match"]
       10 CALL                             R5 3 1
       11 JUMPIFNOT                        R5 ; [+3]
       12 LENGTH                           R6 R5
       13 ADD                              R1 R4 R6
       14 JUMP                             ; [+1]
       15 MOVE                             R1 R4
       16 LENGTH                           R5 R0
       17 JUMPIFNOTLE                      R1 R5 ; [+97]
       19 MOVE                             R7 R1
       20 MOVE                             R8 R1
       21 NAMECALL                         R5 R0 K3 ["sub"]
       23 CALL                             R5 3 1
       24 MOVE                             R8 R1
       25 ADDK                             R9 R1 K4 [1]
       26 NAMECALL                         R6 R0 K3 ["sub"]
       28 CALL                             R6 3 1
       29 MOVE                             R9 R1
       30 ADDK                             R10 R1 K5 [2]
       31 NAMECALL                         R7 R0 K3 ["sub"]
       33 CALL                             R7 3 1
       34 LOADNIL                          R8
       35 JUMPIFNOT                        R2 ; [+5]
       36 JUMPIFNOTEQKS                    R5 K6 [","] ; [+4]
       38 LOADK                            R8 K6 [","]
       39 ADDK                             R1 R1 K4 [1]
       40 JUMP                             ; [+19]
       41 GETUPVAL                         R10 1
       42 GETTABLE                         R9 R10 R7
       43 JUMPIFNOT                        R9 ; [+3]
       44 MOVE                             R8 R7
       45 ADDK                             R1 R1 K7 [3]
       46 JUMP                             ; [+13]
       47 GETUPVAL                         R10 1
       48 GETTABLE                         R9 R10 R6
       49 JUMPIFNOT                        R9 ; [+3]
       50 MOVE                             R8 R6
       51 ADDK                             R1 R1 K5 [2]
       52 JUMP                             ; [+7]
       53 GETUPVAL                         R10 1
       54 GETTABLE                         R9 R10 R5
       55 JUMPIFNOT                        R9 ; [+59]
       56 MOVE                             R8 R5
       57 ADDK                             R1 R1 K4 [1]
       58 JUMP                             ; [+1]
       59 JUMP                             ; [+55]
       60 MOVE                             R9 R1
       61 LOADK                            R12 K1 ["^[ \t\n]+"]
       62 MOVE                             R13 R9
       63 NAMECALL                         R10 R0 K2 ["match"]
       65 CALL                             R10 3 1
       66 JUMPIFNOT                        R10 ; [+3]
       67 LENGTH                           R11 R10
       68 ADD                              R1 R9 R11
       69 JUMP                             ; [+1]
       70 MOVE                             R1 R9
       71 GETUPVAL                         R9 0
       72 GETTABLEKS                       R9 R9 K0 ["Lookup"]
       74 MOVE                             R10 R0
       75 MOVE                             R11 R1
       76 CALL                             R9 2 2
       77 LOADK                            R14 K8 ["Expected expression after operator '"]
       78 MOVE                             R15 R8
       79 LOADK                            R16 K9 ["' at offset "]
       80 FASTCALL1                        TOSTRING R1 ; [+3]
       81 MOVE                             R18 R1
       82 GETIMPORT                        R17 K11 [tostring]
       84 CALL                             R17 1 1
       85 CONCAT                           R13 R14 R17
       86 FASTCALL2                        ASSERT R9 R13 ; [+4]
       88 MOVE                             R12 R9
       89 GETIMPORT                        R11 K13 [assert]
       91 CALL                             R11 2 0
       92 DUPTABLE                         R11 K20 [{["type"] = "BinaryExpr", ["operator"], ["left"], ["right"], ["offset"]}]
       93 SETTABLEKS                       R8 R11 K16 ["operator"]
       95 SETTABLEKS                       R3 R11 K17 ["left"]
       97 SETTABLEKS                       R9 R11 K18 ["right"]
       99 GETTABLEKS                       R12 R3 K19 ["offset"]
      101 SETTABLEKS                       R12 R11 K19 ["offset"]
      103 MOVE                             R3 R11
      104 LOADK                            R13 K1 ["^[ \t\n]+"]
      105 MOVE                             R14 R10
      106 NAMECALL                         R11 R0 K2 ["match"]
      108 CALL                             R11 3 1
      109 JUMPIFNOT                        R11 ; [+3]
      110 LENGTH                           R12 R11
      111 ADD                              R1 R10 R12
      112 JUMP                             ; [+1]
      113 MOVE                             R1 R10
      114 JUMPBACK                         ; [-99]
      115 MOVE                             R5 R3
      116 MOVE                             R6 R1
      117 RETURN                           R5 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FnParams"]
        3 MOVE                             R3 R0
        4 ADDK                             R4 R1 K1 [3]
        5 CALL                             R2 2 2
        6 MOVE                             R4 R1
        7 LOADK                            R8 K2 ["Failed to parse function parameters at offset "]
        8 ADDK                             R10 R1 K1 [3]
        9 FASTCALL1                        TOSTRING R10 ; [+2]
       10 GETIMPORT                        R9 K4 [tostring]
       12 CALL                             R9 1 1
       13 CONCAT                           R7 R8 R9
       14 FASTCALL2                        ASSERT R2 R7 ; [+4]
       16 MOVE                             R6 R2
       17 GETIMPORT                        R5 K6 [assert]
       19 CALL                             R5 2 0
       20 MOVE                             R1 R3
       21 MOVE                             R9 R1
       22 MOVE                             R10 R1
       23 NAMECALL                         R7 R0 K7 ["sub"]
       25 CALL                             R7 3 1
       26 JUMPIFEQKS                       R7 K8 [")"] ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 LOADK                            R8 K9 ["Expected ')' after function parameters at offset "]
       31 FASTCALL1                        TOSTRING R1 ; [+3]
       32 MOVE                             R10 R1
       33 GETIMPORT                        R9 K4 [tostring]
       35 CALL                             R9 1 1
       36 CONCAT                           R7 R8 R9
       37 FASTCALL2                        ASSERT R6 R7 ; [+3]
       39 GETIMPORT                        R5 K6 [assert]
       41 CALL                             R5 2 0
       42 ADDK                             R5 R1 K10 [1]
       43 LOADK                            R8 K11 ["^[ \t\n]+"]
       44 MOVE                             R9 R5
       45 NAMECALL                         R6 R0 K12 ["match"]
       47 CALL                             R6 3 1
       48 JUMPIFNOT                        R6 ; [+3]
       49 LENGTH                           R7 R6
       50 ADD                              R1 R5 R7
       51 JUMP                             ; [+1]
       52 MOVE                             R1 R5
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K13 ["Body"]
       56 MOVE                             R6 R0
       57 MOVE                             R7 R1
       58 LOADB                            R8 1
       59 CALL                             R5 3 2
       60 DUPTABLE                         R7 K19 [{["type"] = "Fn", ["params"], ["body"], ["offset"]}]
       61 SETTABLEKS                       R2 R7 K16 ["params"]
       63 SETTABLEKS                       R5 R7 K17 ["body"]
       65 SETTABLEKS                       R4 R7 K18 ["offset"]
       67 MOVE                             R8 R6
       68 RETURN                           R7 2

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADK                            R6 K0 ["^[ \t\n]+"]
        4 MOVE                             R7 R3
        5 NAMECALL                         R4 R0 K1 ["match"]
        7 CALL                             R4 3 1
        8 JUMPIFNOT                        R4 ; [+3]
        9 LENGTH                           R5 R4
       10 ADD                              R1 R3 R5
       11 JUMP                             ; [+1]
       12 MOVE                             R1 R3
       13 MOVE                             R3 R1
       14 LOADB                            R4 0
       15 LENGTH                           R5 R0
       16 JUMPIFNOTLE                      R1 R5 ; [+116]
       18 MOVE                             R7 R1
       19 MOVE                             R8 R1
       20 NAMECALL                         R5 R0 K2 ["sub"]
       22 CALL                             R5 3 1
       23 JUMPIFNOTEQKS                    R5 K3 [")"] ; [+4]
       25 MOVE                             R6 R2
       26 MOVE                             R7 R1
       27 RETURN                           R6 2
       28 JUMPIFNOTEQKS                    R5 K4 [","] ; [+14]
       30 ADDK                             R6 R1 K5 [1]
       31 LOADK                            R9 K0 ["^[ \t\n]+"]
       32 MOVE                             R10 R6
       33 NAMECALL                         R7 R0 K1 ["match"]
       35 CALL                             R7 3 1
       36 JUMPIFNOT                        R7 ; [+3]
       37 LENGTH                           R8 R7
       38 ADD                              R1 R6 R8
       39 JUMP                             ; [+1]
       40 MOVE                             R1 R6
       41 LOADB                            R4 0
       42 JUMP                             ; [+89]
       43 JUMPIFNOTEQKS                    R5 K6 ["."] ; [+29]
       45 MOVE                             R8 R1
       46 ADDK                             R9 R1 K7 [2]
       47 NAMECALL                         R6 R0 K2 ["sub"]
       49 CALL                             R6 3 1
       50 JUMPIFNOTEQKS                    R6 K8 ["..."] ; [+22]
       52 DUPTABLE                         R8 K12 [{["type"] = "VarArgs", ["offset"]}]
       53 SETTABLEKS                       R1 R8 K11 ["offset"]
       55 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       57 MOVE                             R7 R2
       58 GETIMPORT                        R6 K15 [table.insert]
       60 CALL                             R6 2 0
       61 ADDK                             R6 R1 K16 [3]
       62 LOADK                            R9 K0 ["^[ \t\n]+"]
       63 MOVE                             R10 R6
       64 NAMECALL                         R7 R0 K1 ["match"]
       66 CALL                             R7 3 1
       67 JUMPIFNOT                        R7 ; [+3]
       68 LENGTH                           R8 R7
       69 ADD                              R1 R6 R8
       70 JUMP                             ; [+61]
       71 MOVE                             R1 R6
       72 JUMP                             ; [+59]
       73 JUMPIFNOT                        R4 ; [+10]
       74 GETIMPORT                        R6 K18 [error]
       76 LOADK                            R8 K19 ["Expected ',' between function parameters at offset "]
       77 FASTCALL1                        TOSTRING R1 ; [+3]
       78 MOVE                             R10 R1
       79 GETIMPORT                        R9 K21 [tostring]
       81 CALL                             R9 1 1
       82 CONCAT                           R7 R8 R9
       83 CALL                             R6 1 0
       84 GETUPVAL                         R6 0
       85 GETTABLEKS                       R6 R6 K22 ["Id"]
       87 MOVE                             R7 R0
       88 MOVE                             R8 R1
       89 CALL                             R6 2 2
       90 JUMPIFNOT                        R6 ; [+31]
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R8 R8 K23 ["TypeDef"]
       94 MOVE                             R9 R0
       95 MOVE                             R10 R7
       96 CALL                             R8 2 2
       97 DUPTABLE                         R12 K27 [{["type"] = "FnParam", ["name"], ["typeDef"], ["offset"]}]
       98 SETTABLEKS                       R6 R12 K25 ["name"]
      100 SETTABLEKS                       R8 R12 K26 ["typeDef"]
      102 SETTABLEKS                       R1 R12 K11 ["offset"]
      104 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      106 MOVE                             R11 R2
      107 GETIMPORT                        R10 K15 [table.insert]
      109 CALL                             R10 2 0
      110 LOADK                            R12 K0 ["^[ \t\n]+"]
      111 MOVE                             R13 R9
      112 NAMECALL                         R10 R0 K1 ["match"]
      114 CALL                             R10 3 1
      115 JUMPIFNOT                        R10 ; [+3]
      116 LENGTH                           R11 R10
      117 ADD                              R1 R9 R11
      118 JUMP                             ; [+1]
      119 MOVE                             R1 R9
      120 LOADB                            R4 1
      121 JUMP                             ; [+10]
      122 GETIMPORT                        R8 K18 [error]
      124 LOADK                            R10 K28 ["Expected parameter name at offset "]
      125 FASTCALL1                        TOSTRING R1 ; [+3]
      126 MOVE                             R12 R1
      127 GETIMPORT                        R11 K21 [tostring]
      129 CALL                             R11 1 1
      130 CONCAT                           R9 R10 R11
      131 CALL                             R8 1 0
      132 JUMPBACK                         ; [-118]
      133 GETIMPORT                        R5 K18 [error]
      135 LOADK                            R7 K29 ["Unterminated function parameter list starting at offset "]
      136 FASTCALL1                        TOSTRING R3 ; [+3]
      137 MOVE                             R9 R3
      138 GETIMPORT                        R8 K21 [tostring]
      140 CALL                             R8 1 1
      141 CONCAT                           R6 R7 R8
      142 CALL                             R5 1 0
      143 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["Clause"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 2
        7 LOADK                            R7 K1 ["^[ \t\n]+"]
        8 MOVE                             R8 R4
        9 NAMECALL                         R5 R0 K2 ["match"]
       11 CALL                             R5 3 1
       12 JUMPIFNOT                        R5 ; [+3]
       13 LENGTH                           R6 R5
       14 ADD                              R1 R4 R6
       15 JUMP                             ; [+1]
       16 MOVE                             R1 R4
       17 LENGTH                           R5 R0
       18 JUMPIFNOTLE                      R1 R5 ; [+189]
       20 MOVE                             R7 R1
       21 MOVE                             R8 R1
       22 NAMECALL                         R5 R0 K3 ["sub"]
       24 CALL                             R5 3 1
       25 JUMPIFEQKS                       R5 K4 ["."] ; [+3]
       27 JUMPIFNOTEQKS                    R5 K5 [":"] ; [+39]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K6 ["Id"]
       32 MOVE                             R7 R0
       33 ADDK                             R8 R1 K7 [1]
       34 CALL                             R6 2 2
       35 JUMPIF                           R6 ; [+10]
       36 GETIMPORT                        R8 K9 [error]
       38 LOADK                            R10 K10 ["Expected identifier after '.' at offset "]
       39 FASTCALL1                        TOSTRING R1 ; [+3]
       40 MOVE                             R12 R1
       41 GETIMPORT                        R11 K12 [tostring]
       43 CALL                             R11 1 1
       44 CONCAT                           R9 R10 R11
       45 CALL                             R8 1 0
       46 DUPTABLE                         R8 K19 [{["type"] = "MemberAccess", ["object"], ["accessor"], ["member"], ["offset"]}]
       47 SETTABLEKS                       R3 R8 K15 ["object"]
       49 SETTABLEKS                       R5 R8 K16 ["accessor"]
       51 SETTABLEKS                       R6 R8 K17 ["member"]
       53 SETTABLEKS                       R2 R8 K18 ["offset"]
       55 MOVE                             R3 R8
       56 LOADK                            R10 K1 ["^[ \t\n]+"]
       57 MOVE                             R11 R7
       58 NAMECALL                         R8 R0 K2 ["match"]
       60 CALL                             R8 3 1
       61 JUMPIFNOT                        R8 ; [+3]
       62 LENGTH                           R9 R8
       63 ADD                              R1 R7 R9
       64 JUMP                             ; [+142]
       65 MOVE                             R1 R7
       66 JUMP                             ; [+140]
       67 JUMPIFNOTEQKS                    R5 K20 ["["] ; [+54]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R6 R6 K21 ["Lookup"]
       72 MOVE                             R7 R0
       73 ADDK                             R8 R1 K7 [1]
       74 CALL                             R6 2 2
       75 LOADK                            R10 K1 ["^[ \t\n]+"]
       76 MOVE                             R11 R7
       77 NAMECALL                         R8 R0 K2 ["match"]
       79 CALL                             R8 3 1
       80 JUMPIFNOT                        R8 ; [+3]
       81 LENGTH                           R9 R8
       82 ADD                              R1 R7 R9
       83 JUMP                             ; [+1]
       84 MOVE                             R1 R7
       85 MOVE                             R10 R1
       86 MOVE                             R11 R1
       87 NAMECALL                         R8 R0 K3 ["sub"]
       89 CALL                             R8 3 1
       90 JUMPIFEQKS                       R8 K22 ["]"] ; [+11]
       92 GETIMPORT                        R8 K9 [error]
       94 LOADK                            R10 K23 ["Expected ']' after index expression at offset "]
       95 FASTCALL1                        TOSTRING R1 ; [+3]
       96 MOVE                             R12 R1
       97 GETIMPORT                        R11 K12 [tostring]
       99 CALL                             R11 1 1
      100 CONCAT                           R9 R10 R11
      101 CALL                             R8 1 0
      102 DUPTABLE                         R8 K26 [{["type"] = "IndexAccess", ["object"], ["index"], ["offset"]}]
      103 SETTABLEKS                       R3 R8 K15 ["object"]
      105 SETTABLEKS                       R6 R8 K25 ["index"]
      107 SETTABLEKS                       R2 R8 K18 ["offset"]
      109 MOVE                             R3 R8
      110 ADDK                             R8 R1 K7 [1]
      111 LOADK                            R11 K1 ["^[ \t\n]+"]
      112 MOVE                             R12 R8
      113 NAMECALL                         R9 R0 K2 ["match"]
      115 CALL                             R9 3 1
      116 JUMPIFNOT                        R9 ; [+3]
      117 LENGTH                           R10 R9
      118 ADD                              R1 R8 R10
      119 JUMP                             ; [+87]
      120 MOVE                             R1 R8
      121 JUMP                             ; [+85]
      122 JUMPIFNOTEQKS                    R5 K27 ["("] ; [+85]
      124 NEWTABLE                         R6 0 0
      126 ADDK                             R7 R1 K7 [1]
      127 LOADK                            R10 K1 ["^[ \t\n]+"]
      128 MOVE                             R11 R7
      129 NAMECALL                         R8 R0 K2 ["match"]
      131 CALL                             R8 3 1
      132 JUMPIFNOT                        R8 ; [+3]
      133 LENGTH                           R9 R8
      134 ADD                              R1 R7 R9
      135 JUMP                             ; [+1]
      136 MOVE                             R1 R7
      137 LENGTH                           R7 R0
      138 JUMPIFNOTLE                      R1 R7 ; [+58]
      140 MOVE                             R9 R1
      141 MOVE                             R10 R1
      142 NAMECALL                         R7 R0 K3 ["sub"]
      144 CALL                             R7 3 1
      145 JUMPIFNOTEQKS                    R7 K28 [")"] ; [+13]
      147 ADDK                             R8 R1 K7 [1]
      148 LOADK                            R11 K1 ["^[ \t\n]+"]
      149 MOVE                             R12 R8
      150 NAMECALL                         R9 R0 K2 ["match"]
      152 CALL                             R9 3 1
      153 JUMPIFNOT                        R9 ; [+3]
      154 LENGTH                           R10 R9
      155 ADD                              R1 R8 R10
      156 JUMP                             ; [+40]
      157 MOVE                             R1 R8
      158 JUMP                             ; [+38]
      159 JUMPIFNOTEQKS                    R7 K29 [","] ; [+13]
      161 ADDK                             R8 R1 K7 [1]
      162 LOADK                            R11 K1 ["^[ \t\n]+"]
      163 MOVE                             R12 R8
      164 NAMECALL                         R9 R0 K2 ["match"]
      166 CALL                             R9 3 1
      167 JUMPIFNOT                        R9 ; [+3]
      168 LENGTH                           R10 R9
      169 ADD                              R1 R8 R10
      170 JUMP                             ; [+25]
      171 MOVE                             R1 R8
      172 JUMP                             ; [+23]
      173 GETUPVAL                         R8 0
      174 GETTABLEKS                       R8 R8 K30 ["Body"]
      176 MOVE                             R9 R0
      177 MOVE                             R10 R1
      178 CALL                             R8 2 2
      179 FASTCALL2                        TABLE_INSERT R6 R8 ; [+5]
      181 MOVE                             R11 R6
      182 MOVE                             R12 R8
      183 GETIMPORT                        R10 K33 [table.insert]
      185 CALL                             R10 2 0
      186 LOADK                            R12 K1 ["^[ \t\n]+"]
      187 MOVE                             R13 R9
      188 NAMECALL                         R10 R0 K2 ["match"]
      190 CALL                             R10 3 1
      191 JUMPIFNOT                        R10 ; [+3]
      192 LENGTH                           R11 R10
      193 ADD                              R1 R9 R11
      194 JUMP                             ; [+1]
      195 MOVE                             R1 R9
      196 JUMPBACK                         ; [-60]
      197 DUPTABLE                         R7 K37 [{["type"] = "Call", ["callee"], ["args"], ["offset"]}]
      198 SETTABLEKS                       R3 R7 K35 ["callee"]
      200 SETTABLEKS                       R6 R7 K36 ["args"]
      202 SETTABLEKS                       R2 R7 K18 ["offset"]
      204 MOVE                             R3 R7
      205 JUMP                             ; [+1]
      206 JUMP                             ; [+1]
      207 JUMPBACK                         ; [-191]
      208 MOVE                             R5 R3
      209 MOVE                             R6 R1
      210 RETURN                           R5 2

PROTO_5:
        0 MOVE                             R2 R1
        1 LOADK                            R5 K0 ["^[ \t\n]+"]
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R0 K1 ["match"]
        5 CALL                             R3 3 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 LENGTH                           R4 R3
        8 ADD                              R1 R2 R4
        9 JUMP                             ; [+1]
       10 MOVE                             R1 R2
       11 MOVE                             R4 R1
       12 ADDK                             R5 R1 K2 [1]
       13 NAMECALL                         R2 R0 K3 ["sub"]
       15 CALL                             R2 3 1
       16 MOVE                             R5 R1
       17 ADDK                             R6 R1 K4 [2]
       18 NAMECALL                         R3 R0 K3 ["sub"]
       20 CALL                             R3 3 1
       21 MOVE                             R6 R1
       22 ADDK                             R7 R1 K5 [3]
       23 NAMECALL                         R4 R0 K3 ["sub"]
       25 CALL                             R4 3 1
       26 MOVE                             R7 R1
       27 ADDK                             R8 R1 K6 [4]
       28 NAMECALL                         R5 R0 K3 ["sub"]
       30 CALL                             R5 3 1
       31 LOADK                            R8 K7 ["^[%a_]+"]
       32 MOVE                             R9 R1
       33 NAMECALL                         R6 R0 K1 ["match"]
       35 CALL                             R6 3 1
       36 JUMPIFNOTEQKS                    R3 K8 ["fn("] ; [+8]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K9 ["Fn"]
       41 MOVE                             R8 R0
       42 MOVE                             R9 R1
       43 CALL                             R7 2 -1
       44 RETURN                           R7 -1
       45 JUMPIFNOTEQKS                    R4 K10 ["true"] ; [+8]
       47 JUMPIFNOTEQ                      R6 R4 ; [+6]
       49 DUPTABLE                         R7 K16 [{["type"] = "BooleanLiteral", ["value"] = True, ["offset"]}]
       50 SETTABLEKS                       R1 R7 K15 ["offset"]
       52 ADDK                             R8 R1 K6 [4]
       53 RETURN                           R7 2
       54 JUMPIFNOTEQKS                    R5 K17 ["false"] ; [+8]
       56 JUMPIFNOTEQ                      R6 R5 ; [+6]
       58 DUPTABLE                         R7 K19 [{["type"] = "BooleanLiteral", ["value"] = False, ["offset"]}]
       59 SETTABLEKS                       R1 R7 K15 ["offset"]
       61 ADDK                             R8 R1 K20 [5]
       62 RETURN                           R7 2
       63 JUMPIFNOTEQKS                    R3 K21 ["nil"] ; [+8]
       65 JUMPIFNOTEQ                      R6 R3 ; [+6]
       67 DUPTABLE                         R7 K23 [{["type"] = "NilLiteral", ["offset"]}]
       68 SETTABLEKS                       R1 R7 K15 ["offset"]
       70 ADDK                             R8 R1 K5 [3]
       71 RETURN                           R7 2
       72 JUMPIFNOTEQKS                    R3 K24 ["..."] ; [+6]
       74 DUPTABLE                         R7 K26 [{["type"] = "VarArgs", ["offset"]}]
       75 SETTABLEKS                       R1 R7 K15 ["offset"]
       77 ADDK                             R8 R1 K5 [3]
       78 RETURN                           R7 2
       79 MOVE                             R9 R1
       80 MOVE                             R10 R1
       81 NAMECALL                         R7 R0 K3 ["sub"]
       83 CALL                             R7 3 1
       84 JUMPIFNOTEQKS                    R7 K27 ["{"] ; [+8]
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R8 R8 K28 ["TableLiteral"]
       89 MOVE                             R9 R0
       90 MOVE                             R10 R1
       91 CALL                             R8 2 -1
       92 RETURN                           R8 -1
       93 JUMPIFNOTEQKS                    R7 K29 ["`"] ; [+8]
       95 GETUPVAL                         R8 0
       96 GETTABLEKS                       R8 R8 K30 ["TemplateString"]
       98 MOVE                             R9 R0
       99 MOVE                             R10 R1
      100 CALL                             R8 2 -1
      101 RETURN                           R8 -1
      102 JUMPIFEQKS                       R7 K31 ["\""] ; [+5]
      104 JUMPIFEQKS                       R7 K32 ["'"] ; [+3]
      106 JUMPIFNOTEQKS                    R7 K33 ["["] ; [+8]
      108 GETUPVAL                         R8 0
      109 GETTABLEKS                       R8 R8 K34 ["StringLiteral"]
      111 MOVE                             R9 R0
      112 MOVE                             R10 R1
      113 CALL                             R8 2 -1
      114 RETURN                           R8 -1
      115 JUMPIFNOTEQKS                    R7 K35 ["("] ; [+8]
      117 GETUPVAL                         R8 0
      118 GETTABLEKS                       R8 R8 K36 ["ParenExpr"]
      120 MOVE                             R9 R0
      121 MOVE                             R10 R1
      122 CALL                             R8 2 -1
      123 RETURN                           R8 -1
      124 JUMPIFEQKS                       R7 K37 ["-"] ; [+9]
      126 JUMPIFEQKS                       R7 K38 ["+"] ; [+7]
      128 JUMPIFEQKS                       R7 K39 ["#"] ; [+5]
      130 JUMPIFEQKS                       R7 K40 ["&"] ; [+3]
      132 JUMPIFNOTEQKS                    R3 K41 ["not"] ; [+8]
      134 GETUPVAL                         R8 0
      135 GETTABLEKS                       R8 R8 K42 ["UnaryExpr"]
      137 MOVE                             R9 R0
      138 MOVE                             R10 R1
      139 CALL                             R8 2 -1
      140 RETURN                           R8 -1
      141 JUMPIFNOTEQKS                    R2 K43 ["if"] ; [+8]
      143 GETUPVAL                         R8 0
      144 GETTABLEKS                       R8 R8 K44 ["TernaryExpr"]
      146 MOVE                             R9 R0
      147 MOVE                             R10 R1
      148 CALL                             R8 2 -1
      149 RETURN                           R8 -1
      150 LOADK                            R10 K45 ["%d"]
      151 NAMECALL                         R8 R7 K1 ["match"]
      153 CALL                             R8 2 1
      154 JUMPIFNOT                        R8 ; [+7]
      155 GETUPVAL                         R8 0
      156 GETTABLEKS                       R8 R8 K46 ["NumberLiteral"]
      158 MOVE                             R9 R0
      159 MOVE                             R10 R1
      160 CALL                             R8 2 -1
      161 RETURN                           R8 -1
      162 JUMPIFNOT                        R6 ; [+7]
      163 GETUPVAL                         R8 0
      164 GETTABLEKS                       R8 R8 K47 ["Id"]
      166 MOVE                             R9 R0
      167 MOVE                             R10 R1
      168 CALL                             R8 2 -1
      169 RETURN                           R8 -1
      170 LOADNIL                          R8
      171 MOVE                             R9 R1
      172 RETURN                           R8 2

PROTO_6:
        0 MOVE                             R2 R1
        1 ADDK                             R3 R1 K0 [1]
        2 LOADK                            R6 K1 ["^[ \t\n]+"]
        3 MOVE                             R7 R3
        4 NAMECALL                         R4 R0 K2 ["match"]
        6 CALL                             R4 3 1
        7 JUMPIFNOT                        R4 ; [+3]
        8 LENGTH                           R5 R4
        9 ADD                              R1 R3 R5
       10 JUMP                             ; [+1]
       11 MOVE                             R1 R3
       12 NEWTABLE                         R3 0 0
       14 LENGTH                           R4 R0
       15 JUMPIFNOTLE                      R1 R4 ; [+51]
       17 MOVE                             R6 R1
       18 MOVE                             R7 R1
       19 NAMECALL                         R4 R0 K3 ["sub"]
       21 CALL                             R4 3 1
       22 JUMPIFNOTEQKS                    R4 K4 ["}"] ; [+19]
       24 ADDK                             R5 R1 K0 [1]
       25 LOADK                            R8 K1 ["^[ \t\n]+"]
       26 MOVE                             R9 R5
       27 NAMECALL                         R6 R0 K2 ["match"]
       29 CALL                             R6 3 1
       30 JUMPIFNOT                        R6 ; [+3]
       31 LENGTH                           R7 R6
       32 ADD                              R1 R5 R7
       33 JUMP                             ; [+1]
       34 MOVE                             R1 R5
       35 DUPTABLE                         R5 K9 [{["type"] = "TableLiteral", ["properties"], ["offset"]}]
       36 SETTABLEKS                       R3 R5 K7 ["properties"]
       38 SETTABLEKS                       R2 R5 K8 ["offset"]
       40 MOVE                             R6 R1
       41 RETURN                           R5 2
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K10 ["TableEntry"]
       45 MOVE                             R6 R0
       46 MOVE                             R7 R1
       47 CALL                             R5 2 2
       48 JUMPIFNOT                        R5 ; [+17]
       49 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       51 MOVE                             R8 R3
       52 MOVE                             R9 R5
       53 GETIMPORT                        R7 K13 [table.insert]
       55 CALL                             R7 2 0
       56 LOADK                            R9 K1 ["^[ \t\n]+"]
       57 MOVE                             R10 R6
       58 NAMECALL                         R7 R0 K2 ["match"]
       60 CALL                             R7 3 1
       61 JUMPIFNOT                        R7 ; [+3]
       62 LENGTH                           R8 R7
       63 ADD                              R1 R6 R8
       64 JUMP                             ; [+1]
       65 MOVE                             R1 R6
       66 JUMPBACK                         ; [-53]
       67 GETIMPORT                        R4 K15 [error]
       69 LOADK                            R6 K16 ["Unterminated table literal starting at offset "]
       70 FASTCALL1                        TOSTRING R2 ; [+3]
       71 MOVE                             R8 R2
       72 GETIMPORT                        R7 K18 [tostring]
       74 CALL                             R7 1 1
       75 CONCAT                           R5 R6 R7
       76 CALL                             R4 1 0
       77 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R2 R1
        1 LOADK                            R5 K0 ["^[ \t\n]+"]
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R0 K1 ["match"]
        5 CALL                             R3 3 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 LENGTH                           R4 R3
        8 ADD                              R1 R2 R4
        9 JUMP                             ; [+1]
       10 MOVE                             R1 R2
       11 MOVE                             R2 R1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R0 K2 ["sub"]
       16 CALL                             R3 3 1
       17 LOADNIL                          R4
       18 JUMPIFNOTEQKS                    R3 K3 ["["] ; [+41]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K4 ["Body"]
       23 MOVE                             R6 R0
       24 ADDK                             R7 R1 K5 [1]
       25 CALL                             R5 2 2
       26 LOADK                            R9 K0 ["^[ \t\n]+"]
       27 MOVE                             R10 R6
       28 NAMECALL                         R7 R0 K1 ["match"]
       30 CALL                             R7 3 1
       31 JUMPIFNOT                        R7 ; [+3]
       32 LENGTH                           R8 R7
       33 ADD                              R1 R6 R8
       34 JUMP                             ; [+1]
       35 MOVE                             R1 R6
       36 MOVE                             R9 R1
       37 MOVE                             R10 R1
       38 NAMECALL                         R7 R0 K2 ["sub"]
       40 CALL                             R7 3 1
       41 JUMPIFEQKS                       R7 K6 ["]"] ; [+5]
       43 GETIMPORT                        R7 K8 [error]
       45 LOADK                            R8 K9 ["Expected ']' after table key expression"]
       46 CALL                             R7 1 0
       47 MOVE                             R4 R5
       48 ADDK                             R7 R1 K5 [1]
       49 LOADK                            R10 K0 ["^[ \t\n]+"]
       50 MOVE                             R11 R7
       51 NAMECALL                         R8 R0 K1 ["match"]
       53 CALL                             R8 3 1
       54 JUMPIFNOT                        R8 ; [+3]
       55 LENGTH                           R9 R8
       56 ADD                              R1 R7 R9
       57 JUMP                             ; [+28]
       58 MOVE                             R1 R7
       59 JUMP                             ; [+26]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K10 ["Id"]
       63 MOVE                             R6 R0
       64 MOVE                             R7 R1
       65 CALL                             R5 2 2
       66 LOADK                            R9 K0 ["^[ \t\n]+"]
       67 MOVE                             R10 R6
       68 NAMECALL                         R7 R0 K1 ["match"]
       70 CALL                             R7 3 1
       71 JUMPIFNOT                        R7 ; [+3]
       72 LENGTH                           R8 R7
       73 ADD                              R1 R6 R8
       74 JUMP                             ; [+1]
       75 MOVE                             R1 R6
       76 JUMPIFNOT                        R5 ; [+9]
       77 MOVE                             R9 R1
       78 MOVE                             R10 R1
       79 NAMECALL                         R7 R0 K2 ["sub"]
       81 CALL                             R7 3 1
       82 JUMPIFNOTEQKS                    R7 K11 ["="] ; [+3]
       84 GETTABLEKS                       R4 R5 K12 ["name"]
       86 LOADNIL                          R5
       87 JUMPIFNOT                        R4 ; [+51]
       88 MOVE                             R10 R1
       89 MOVE                             R11 R1
       90 NAMECALL                         R8 R0 K2 ["sub"]
       92 CALL                             R8 3 1
       93 JUMPIFEQKS                       R8 K11 ["="] ; [+2]
       95 LOADB                            R7 0 +1
       96 LOADB                            R7 1
       97 FASTCALL2K                       ASSERT R7 K13 ; [+4]
       99 LOADK                            R8 K13 ["Expected '=' after table key"]
      100 GETIMPORT                        R6 K15 [assert]
      102 CALL                             R6 2 0
      103 ADDK                             R6 R1 K5 [1]
      104 LOADK                            R9 K0 ["^[ \t\n]+"]
      105 MOVE                             R10 R6
      106 NAMECALL                         R7 R0 K1 ["match"]
      108 CALL                             R7 3 1
      109 JUMPIFNOT                        R7 ; [+3]
      110 LENGTH                           R8 R7
      111 ADD                              R1 R6 R8
      112 JUMP                             ; [+1]
      113 MOVE                             R1 R6
      114 GETUPVAL                         R6 0
      115 GETTABLEKS                       R6 R6 K4 ["Body"]
      117 MOVE                             R7 R0
      118 MOVE                             R8 R1
      119 CALL                             R6 2 2
      120 DUPTABLE                         R8 K21 [{["type"] = "TableEntry", ["key"], ["value"], ["offset"]}]
      121 SETTABLEKS                       R4 R8 K18 ["key"]
      123 SETTABLEKS                       R6 R8 K19 ["value"]
      125 SETTABLEKS                       R2 R8 K20 ["offset"]
      127 MOVE                             R5 R8
      128 LOADK                            R10 K0 ["^[ \t\n]+"]
      129 MOVE                             R11 R7
      130 NAMECALL                         R8 R0 K1 ["match"]
      132 CALL                             R8 3 1
      133 JUMPIFNOT                        R8 ; [+3]
      134 LENGTH                           R9 R8
      135 ADD                              R1 R7 R9
      136 JUMP                             ; [+24]
      137 MOVE                             R1 R7
      138 JUMP                             ; [+22]
      139 GETUPVAL                         R6 0
      140 GETTABLEKS                       R6 R6 K4 ["Body"]
      142 MOVE                             R7 R0
      143 MOVE                             R8 R1
      144 CALL                             R6 2 2
      145 DUPTABLE                         R8 K23 [{["type"] = "TableValue", ["value"], ["offset"]}]
      146 SETTABLEKS                       R6 R8 K19 ["value"]
      148 SETTABLEKS                       R2 R8 K20 ["offset"]
      150 MOVE                             R5 R8
      151 LOADK                            R10 K0 ["^[ \t\n]+"]
      152 MOVE                             R11 R7
      153 NAMECALL                         R8 R0 K1 ["match"]
      155 CALL                             R8 3 1
      156 JUMPIFNOT                        R8 ; [+3]
      157 LENGTH                           R9 R8
      158 ADD                              R1 R7 R9
      159 JUMP                             ; [+1]
      160 MOVE                             R1 R7
      161 JUMPIF                           R5 ; [+10]
      162 GETIMPORT                        R6 K8 [error]
      164 LOADK                            R8 K24 ["Failed to parse table entry at offset "]
      165 FASTCALL1                        TOSTRING R1 ; [+3]
      166 MOVE                             R10 R1
      167 GETIMPORT                        R9 K26 [tostring]
      169 CALL                             R9 1 1
      170 CONCAT                           R7 R8 R9
      171 CALL                             R6 1 0
      172 MOVE                             R8 R1
      173 MOVE                             R9 R1
      174 NAMECALL                         R6 R0 K2 ["sub"]
      176 CALL                             R6 3 1
      177 JUMPIFNOTEQKS                    R6 K27 [","] ; [+12]
      179 ADDK                             R6 R1 K5 [1]
      180 LOADK                            R9 K0 ["^[ \t\n]+"]
      181 MOVE                             R10 R6
      182 NAMECALL                         R7 R0 K1 ["match"]
      184 CALL                             R7 3 1
      185 JUMPIFNOT                        R7 ; [+3]
      186 LENGTH                           R8 R7
      187 ADD                              R1 R6 R8
      188 JUMP                             ; [+1]
      189 MOVE                             R1 R6
      190 MOVE                             R6 R5
      191 MOVE                             R7 R1
      192 RETURN                           R6 2

PROTO_8:
        0 MOVE                             R2 R1
        1 LOADK                            R5 K0 ["^[ \t\n]+"]
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R0 K1 ["match"]
        5 CALL                             R3 3 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 LENGTH                           R4 R3
        8 ADD                              R1 R2 R4
        9 JUMP                             ; [+1]
       10 MOVE                             R1 R2
       11 LOADK                            R4 K2 ["^[%a_][%w_]*"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R2 R0 K1 ["match"]
       15 CALL                             R2 3 1
       16 JUMPIFNOT                        R2 ; [+8]
       17 DUPTABLE                         R3 K7 [{["type"] = "Id", ["name"], ["offset"]}]
       18 SETTABLEKS                       R2 R3 K5 ["name"]
       20 SETTABLEKS                       R1 R3 K6 ["offset"]
       22 LENGTH                           R5 R2
       23 ADD                              R4 R1 R5
       24 RETURN                           R3 2
       25 LOADNIL                          R3
       26 MOVE                             R4 R1
       27 RETURN                           R3 2

PROTO_9:
        0 MOVE                             R2 R1
        1 LOADK                            R5 K0 ["^[ \t\n]+"]
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R0 K1 ["match"]
        5 CALL                             R3 3 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 LENGTH                           R4 R3
        8 ADD                              R1 R2 R4
        9 JUMP                             ; [+1]
       10 MOVE                             R1 R2
       11 LOADK                            R4 K2 ["^%d+%.?%d*"]
       12 MOVE                             R5 R1
       13 NAMECALL                         R2 R0 K1 ["match"]
       15 CALL                             R2 3 1
       16 JUMPIFNOT                        R2 ; [+13]
       17 DUPTABLE                         R3 K7 [{["type"] = "NumberLiteral", ["value"], ["offset"]}]
       18 FASTCALL1                        TONUMBER R2 ; [+3]
       19 MOVE                             R5 R2
       20 GETIMPORT                        R4 K9 [tonumber]
       22 CALL                             R4 1 1
       23 SETTABLEKS                       R4 R3 K5 ["value"]
       25 SETTABLEKS                       R1 R3 K6 ["offset"]
       27 LENGTH                           R5 R2
       28 ADD                              R4 R1 R5
       29 RETURN                           R3 2
       30 LOADNIL                          R3
       31 MOVE                             R4 R1
       32 RETURN                           R3 2

PROTO_10:
        0 MOVE                             R2 R1
        1 ADDK                             R3 R1 K0 [1]
        2 LOADK                            R6 K1 ["^[ \t\n]+"]
        3 MOVE                             R7 R3
        4 NAMECALL                         R4 R0 K2 ["match"]
        6 CALL                             R4 3 1
        7 JUMPIFNOT                        R4 ; [+3]
        8 LENGTH                           R5 R4
        9 ADD                              R1 R3 R5
       10 JUMP                             ; [+1]
       11 MOVE                             R1 R3
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["Body"]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 LOADB                            R6 1
       18 CALL                             R3 3 2
       19 LOADK                            R7 K1 ["^[ \t\n]+"]
       20 MOVE                             R8 R4
       21 NAMECALL                         R5 R0 K2 ["match"]
       23 CALL                             R5 3 1
       24 JUMPIFNOT                        R5 ; [+3]
       25 LENGTH                           R6 R5
       26 ADD                              R1 R4 R6
       27 JUMP                             ; [+1]
       28 MOVE                             R1 R4
       29 MOVE                             R7 R1
       30 MOVE                             R8 R1
       31 NAMECALL                         R5 R0 K4 ["sub"]
       33 CALL                             R5 3 1
       34 JUMPIFEQKS                       R5 K5 [")"] ; [+11]
       36 GETIMPORT                        R5 K7 [error]
       38 LOADK                            R7 K8 ["Expected ')' after parenthesized expression starting at offset "]
       39 FASTCALL1                        TOSTRING R2 ; [+3]
       40 MOVE                             R9 R2
       41 GETIMPORT                        R8 K10 [tostring]
       43 CALL                             R8 1 1
       44 CONCAT                           R6 R7 R8
       45 CALL                             R5 1 0
       46 DUPTABLE                         R5 K15 [{["type"] = "ParenExpr", ["body"], ["offset"]}]
       47 SETTABLEKS                       R3 R5 K13 ["body"]
       49 SETTABLEKS                       R2 R5 K14 ["offset"]
       51 ADDK                             R6 R1 K0 [1]
       52 RETURN                           R5 2

PROTO_11:
        0 MOVE                             R2 R1
        1 LOADK                            R5 K0 ["^[ \t\n]+"]
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R0 K1 ["match"]
        5 CALL                             R3 3 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 LENGTH                           R4 R3
        8 ADD                              R1 R2 R4
        9 JUMP                             ; [+1]
       10 MOVE                             R1 R2
       11 MOVE                             R2 R1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R0 K2 ["sub"]
       16 CALL                             R3 3 1
       17 MOVE                             R4 R3
       18 JUMPIFEQKS                       R3 K3 ["\""] ; [+9]
       20 JUMPIFEQKS                       R3 K4 ["'"] ; [+7]
       22 JUMPIFEQKS                       R3 K5 ["["] ; [+5]
       24 GETIMPORT                        R5 K7 [error]
       26 LOADK                            R6 K8 ["Expected string literal to start with ' or \" or ["]
       27 CALL                             R5 1 0
       28 ADDK                             R1 R1 K9 [1]
       29 MOVE                             R5 R3
       30 JUMPIFNOTEQKS                    R3 K5 ["["] ; [+23]
       32 LOADK                            R9 K11 ["^=*"]
       33 MOVE                             R10 R1
       34 NAMECALL                         R7 R0 K1 ["match"]
       36 CALL                             R7 3 1
       37 ORK                              R6 R7 K10 [""]
       38 LENGTH                           R8 R6
       39 ADDK                             R7 R8 K9 [1]
       40 ADD                              R1 R1 R7
       41 LOADK                            R3 K12 ["]"]
       42 LOADK                            R7 K13 ["[%*["]
       43 MOVE                             R9 R6
       44 NAMECALL                         R7 R7 K14 ["format"]
       46 CALL                             R7 2 1
       47 MOVE                             R4 R7
       48 LOADK                            R7 K15 ["]%*]"]
       49 MOVE                             R9 R6
       50 NAMECALL                         R7 R7 K14 ["format"]
       52 CALL                             R7 2 1
       53 MOVE                             R5 R7
       54 LOADK                            R6 K10 [""]
       55 LENGTH                           R7 R0
       56 JUMPIFNOTLE                      R1 R7 ; [+69]
       58 MOVE                             R9 R1
       59 MOVE                             R10 R1
       60 NAMECALL                         R7 R0 K2 ["sub"]
       62 CALL                             R7 3 1
       63 JUMPIFNOTEQKS                    R7 K16 ["\\"] ; [+34]
       65 ADDK                             R10 R1 K9 [1]
       66 ADDK                             R11 R1 K9 [1]
       67 NAMECALL                         R8 R0 K2 ["sub"]
       69 CALL                             R8 3 1
       70 JUMPIFEQ                         R8 R3 ; [+3]
       72 JUMPIFNOTEQKS                    R8 K16 ["\\"] ; [+6]
       74 MOVE                             R9 R6
       75 MOVE                             R10 R8
       76 CONCAT                           R6 R9 R10
       77 ADDK                             R1 R1 K17 [2]
       78 JUMP                             ; [+46]
       79 JUMPIFNOTEQKS                    R8 K18 ["n"] ; [+6]
       81 MOVE                             R9 R6
       82 LOADK                            R10 K19 ["\n"]
       83 CONCAT                           R6 R9 R10
       84 ADDK                             R1 R1 K17 [2]
       85 JUMP                             ; [+39]
       86 JUMPIFNOTEQKS                    R8 K20 ["t"] ; [+6]
       88 MOVE                             R9 R6
       89 LOADK                            R10 K21 ["\t"]
       90 CONCAT                           R6 R9 R10
       91 ADDK                             R1 R1 K17 [2]
       92 JUMP                             ; [+32]
       93 MOVE                             R9 R6
       94 MOVE                             R10 R7
       95 CONCAT                           R6 R9 R10
       96 ADDK                             R1 R1 K9 [1]
       97 JUMP                             ; [+27]
       98 JUMPIFNOTEQ                      R7 R3 ; [+22]
      100 MOVE                             R10 R1
      101 LENGTH                           R13 R5
      102 ADD                              R12 R1 R13
      103 SUBK                             R11 R12 K9 [1]
      104 NAMECALL                         R8 R0 K2 ["sub"]
      106 CALL                             R8 3 1
      107 JUMPIFNOTEQ                      R8 R5 ; [+13]
      109 DUPTABLE                         R8 K28 [{["type"] = "StringLiteral", ["value"], ["offset"], ["openQuote"], ["closeQuote"]}]
      110 SETTABLEKS                       R6 R8 K24 ["value"]
      112 SETTABLEKS                       R2 R8 K25 ["offset"]
      114 SETTABLEKS                       R4 R8 K26 ["openQuote"]
      116 SETTABLEKS                       R5 R8 K27 ["closeQuote"]
      118 LENGTH                           R10 R5
      119 ADD                              R9 R1 R10
      120 RETURN                           R8 2
      121 MOVE                             R8 R6
      122 MOVE                             R9 R7
      123 CONCAT                           R6 R8 R9
      124 ADDK                             R1 R1 K9 [1]
      125 JUMPBACK                         ; [-71]
      126 GETIMPORT                        R7 K7 [error]
      128 LOADK                            R9 K29 ["Unterminated string literal starting at offset "]
      129 FASTCALL1                        TOSTRING R2 ; [+3]
      130 MOVE                             R11 R2
      131 GETIMPORT                        R10 K31 [tostring]
      133 CALL                             R10 1 1
      134 CONCAT                           R8 R9 R10
      135 CALL                             R7 1 0
      136 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R2 R1
        1 LOADK                            R5 K0 ["^[ \t\n]+"]
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R0 K1 ["match"]
        5 CALL                             R3 3 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 LENGTH                           R4 R3
        8 ADD                              R1 R2 R4
        9 JUMP                             ; [+1]
       10 MOVE                             R1 R2
       11 MOVE                             R2 R1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R0 K2 ["sub"]
       16 CALL                             R3 3 1
       17 JUMPIFEQKS                       R3 K3 ["`"] ; [+5]
       19 GETIMPORT                        R3 K5 [error]
       21 LOADK                            R4 K6 ["Expected template string to start with `"]
       22 CALL                             R3 1 0
       23 NEWTABLE                         R3 0 0
       25 LOADK                            R4 K7 [""]
       26 ADDK                             R1 R1 K8 [1]
       27 MOVE                             R5 R1
       28 LENGTH                           R6 R0
       29 JUMPIFNOTLE                      R1 R6 ; [+82]
       31 MOVE                             R8 R1
       32 MOVE                             R9 R1
       33 NAMECALL                         R6 R0 K2 ["sub"]
       35 CALL                             R6 3 1
       36 JUMPIFNOTEQKS                    R6 K3 ["`"] ; [+23]
       38 LENGTH                           R7 R4
       39 LOADN                            R8 0
       40 JUMPIFNOTLT                      R8 R7 ; [+12]
       42 DUPTABLE                         R9 K13 [{["type"] = "TemplateStringPart", ["value"], ["offset"]}]
       43 SETTABLEKS                       R4 R9 K11 ["value"]
       45 SETTABLEKS                       R5 R9 K12 ["offset"]
       47 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       49 MOVE                             R8 R3
       50 GETIMPORT                        R7 K16 [table.insert]
       52 CALL                             R7 2 0
       53 DUPTABLE                         R7 K19 [{["type"] = "TemplateString", ["parts"], ["offset"]}]
       54 SETTABLEKS                       R3 R7 K18 ["parts"]
       56 SETTABLEKS                       R2 R7 K12 ["offset"]
       58 ADDK                             R8 R1 K8 [1]
       59 RETURN                           R7 2
       60 JUMPIFNOTEQKS                    R6 K20 ["{"] ; [+46]
       62 LENGTH                           R7 R4
       63 LOADN                            R8 0
       64 JUMPIFNOTLT                      R8 R7 ; [+13]
       66 DUPTABLE                         R9 K13 [{["type"] = "TemplateStringPart", ["value"], ["offset"]}]
       67 SETTABLEKS                       R4 R9 K11 ["value"]
       69 SETTABLEKS                       R5 R9 K12 ["offset"]
       71 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       73 MOVE                             R8 R3
       74 GETIMPORT                        R7 K16 [table.insert]
       76 CALL                             R7 2 0
       77 LOADK                            R4 K7 [""]
       78 GETUPVAL                         R7 0
       79 GETTABLEKS                       R7 R7 K21 ["Body"]
       81 MOVE                             R8 R0
       82 ADDK                             R9 R1 K8 [1]
       83 CALL                             R7 2 2
       84 JUMPIFNOT                        R7 ; [+7]
       85 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       87 MOVE                             R10 R3
       88 MOVE                             R11 R7
       89 GETIMPORT                        R9 K16 [table.insert]
       91 CALL                             R9 2 0
       92 MOVE                             R1 R8
       93 MOVE                             R11 R1
       94 MOVE                             R12 R1
       95 NAMECALL                         R9 R0 K2 ["sub"]
       97 CALL                             R9 3 1
       98 JUMPIFEQKS                       R9 K22 ["}"] ; [+5]
      100 GETIMPORT                        R9 K5 [error]
      102 LOADK                            R10 K23 ["Expected '}' after template string expression"]
      103 CALL                             R9 1 0
      104 ADDK                             R1 R1 K8 [1]
      105 MOVE                             R5 R1
      106 JUMP                             ; [+4]
      107 MOVE                             R7 R4
      108 MOVE                             R8 R6
      109 CONCAT                           R4 R7 R8
      110 ADDK                             R1 R1 K8 [1]
      111 JUMPBACK                         ; [-84]
      112 GETIMPORT                        R6 K5 [error]
      114 LOADK                            R7 K24 ["Unterminated template string"]
      115 CALL                             R6 1 0
      116 RETURN                           R0 0

PROTO_13:
        0 MOVE                             R2 R1
        1 LOADK                            R5 K0 ["^[ \t\n]+"]
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R0 K1 ["match"]
        5 CALL                             R3 3 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 LENGTH                           R4 R3
        8 ADD                              R1 R2 R4
        9 JUMP                             ; [+1]
       10 MOVE                             R1 R2
       11 MOVE                             R4 R1
       12 MOVE                             R5 R1
       13 NAMECALL                         R2 R0 K2 ["sub"]
       15 CALL                             R2 3 1
       16 JUMPIFNOTEQKS                    R2 K3 [":"] ; [+12]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["Id"]
       21 MOVE                             R3 R0
       22 ADDK                             R4 R1 K5 [1]
       23 CALL                             R2 2 2
       24 DUPTABLE                         R4 K9 [{["type"] = "TypeDef", ["name"]}]
       25 SETTABLEKS                       R2 R4 K8 ["name"]
       27 MOVE                             R5 R3
       28 RETURN                           R4 2
       29 LOADNIL                          R2
       30 MOVE                             R3 R1
       31 RETURN                           R2 2

PROTO_14:
        0 MOVE                             R2 R1
        1 LOADK                            R5 K0 ["^[ \t\n]+"]
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R0 K1 ["match"]
        5 CALL                             R3 3 1
        6 JUMPIFNOT                        R3 ; [+3]
        7 LENGTH                           R4 R3
        8 ADD                              R1 R2 R4
        9 JUMP                             ; [+1]
       10 MOVE                             R1 R2
       11 MOVE                             R2 R1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R1
       14 NAMECALL                         R3 R0 K2 ["sub"]
       16 CALL                             R3 3 1
       17 LOADNIL                          R4
       18 JUMPIFNOTEQKS                    R3 K3 ["-"] ; [+4]
       20 LOADK                            R4 K3 ["-"]
       21 ADDK                             R1 R1 K4 [1]
       22 JUMP                             ; [+35]
       23 JUMPIFNOTEQKS                    R3 K5 ["+"] ; [+4]
       25 LOADK                            R4 K5 ["+"]
       26 ADDK                             R1 R1 K4 [1]
       27 JUMP                             ; [+30]
       28 JUMPIFNOTEQKS                    R3 K6 ["#"] ; [+4]
       30 LOADK                            R4 K6 ["#"]
       31 ADDK                             R1 R1 K4 [1]
       32 JUMP                             ; [+25]
       33 JUMPIFNOTEQKS                    R3 K7 ["&"] ; [+4]
       35 LOADK                            R4 K7 ["&"]
       36 ADDK                             R1 R1 K4 [1]
       37 JUMP                             ; [+20]
       38 MOVE                             R7 R1
       39 ADDK                             R8 R1 K8 [2]
       40 NAMECALL                         R5 R0 K2 ["sub"]
       42 CALL                             R5 3 1
       43 JUMPIFNOTEQKS                    R5 K9 ["not"] ; [+4]
       45 LOADK                            R4 K9 ["not"]
       46 ADDK                             R1 R1 K10 [3]
       47 JUMP                             ; [+10]
       48 GETIMPORT                        R5 K12 [error]
       50 LOADK                            R7 K13 ["Unknown unary operator at offset "]
       51 FASTCALL1                        TOSTRING R1 ; [+3]
       52 MOVE                             R9 R1
       53 GETIMPORT                        R8 K15 [tostring]
       55 CALL                             R8 1 1
       56 CONCAT                           R6 R7 R8
       57 CALL                             R5 1 0
       58 MOVE                             R5 R1
       59 LOADK                            R8 K0 ["^[ \t\n]+"]
       60 MOVE                             R9 R5
       61 NAMECALL                         R6 R0 K1 ["match"]
       63 CALL                             R6 3 1
       64 JUMPIFNOT                        R6 ; [+3]
       65 LENGTH                           R7 R6
       66 ADD                              R1 R5 R7
       67 JUMP                             ; [+1]
       68 MOVE                             R1 R5
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K16 ["Lookup"]
       72 MOVE                             R6 R0
       73 MOVE                             R7 R1
       74 CALL                             R5 2 2
       75 DUPTABLE                         R7 K22 [{["type"] = "UnaryExpr", ["operator"], ["operand"], ["offset"]}]
       76 SETTABLEKS                       R4 R7 K19 ["operator"]
       78 SETTABLEKS                       R5 R7 K20 ["operand"]
       80 SETTABLEKS                       R2 R7 K21 ["offset"]
       82 MOVE                             R8 R6
       83 RETURN                           R7 2

PROTO_15:
        0 MOVE                             R2 R1
        1 ADDK                             R3 R1 K0 [2]
        2 LOADK                            R6 K1 ["^[ \t\n]+"]
        3 MOVE                             R7 R3
        4 NAMECALL                         R4 R0 K2 ["match"]
        6 CALL                             R4 3 1
        7 JUMPIFNOT                        R4 ; [+3]
        8 LENGTH                           R5 R4
        9 ADD                              R1 R3 R5
       10 JUMP                             ; [+1]
       11 MOVE                             R1 R3
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["Body"]
       15 MOVE                             R4 R0
       16 MOVE                             R5 R1
       17 CALL                             R3 2 2
       18 LOADK                            R7 K1 ["^[ \t\n]+"]
       19 MOVE                             R8 R4
       20 NAMECALL                         R5 R0 K2 ["match"]
       22 CALL                             R5 3 1
       23 JUMPIFNOT                        R5 ; [+3]
       24 LENGTH                           R6 R5
       25 ADD                              R1 R4 R6
       26 JUMP                             ; [+1]
       27 MOVE                             R1 R4
       28 MOVE                             R7 R1
       29 ADDK                             R8 R1 K4 [3]
       30 NAMECALL                         R5 R0 K5 ["sub"]
       32 CALL                             R5 3 1
       33 JUMPIFEQKS                       R5 K6 ["then"] ; [+5]
       35 GETIMPORT                        R5 K8 [error]
       37 LOADK                            R6 K9 ["Expected 'then' in ternary expression"]
       38 CALL                             R5 1 0
       39 ADDK                             R5 R1 K10 [4]
       40 LOADK                            R8 K1 ["^[ \t\n]+"]
       41 MOVE                             R9 R5
       42 NAMECALL                         R6 R0 K2 ["match"]
       44 CALL                             R6 3 1
       45 JUMPIFNOT                        R6 ; [+3]
       46 LENGTH                           R7 R6
       47 ADD                              R1 R5 R7
       48 JUMP                             ; [+1]
       49 MOVE                             R1 R5
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K3 ["Body"]
       53 MOVE                             R6 R0
       54 MOVE                             R7 R1
       55 CALL                             R5 2 2
       56 LOADK                            R9 K1 ["^[ \t\n]+"]
       57 MOVE                             R10 R6
       58 NAMECALL                         R7 R0 K2 ["match"]
       60 CALL                             R7 3 1
       61 JUMPIFNOT                        R7 ; [+3]
       62 LENGTH                           R8 R7
       63 ADD                              R1 R6 R8
       64 JUMP                             ; [+1]
       65 MOVE                             R1 R6
       66 MOVE                             R9 R1
       67 ADDK                             R10 R1 K4 [3]
       68 NAMECALL                         R7 R0 K5 ["sub"]
       70 CALL                             R7 3 1
       71 JUMPIFEQKS                       R7 K11 ["else"] ; [+5]
       73 GETIMPORT                        R7 K8 [error]
       75 LOADK                            R8 K12 ["Expected 'else' in ternary expression"]
       76 CALL                             R7 1 0
       77 ADDK                             R7 R1 K10 [4]
       78 LOADK                            R10 K1 ["^[ \t\n]+"]
       79 MOVE                             R11 R7
       80 NAMECALL                         R8 R0 K2 ["match"]
       82 CALL                             R8 3 1
       83 JUMPIFNOT                        R8 ; [+3]
       84 LENGTH                           R9 R8
       85 ADD                              R1 R7 R9
       86 JUMP                             ; [+1]
       87 MOVE                             R1 R7
       88 GETUPVAL                         R7 0
       89 GETTABLEKS                       R7 R7 K3 ["Body"]
       91 MOVE                             R8 R0
       92 MOVE                             R9 R1
       93 CALL                             R7 2 2
       94 DUPTABLE                         R9 K19 [{["type"] = "TernaryExpr", ["condition"], ["trueExpr"], ["falseExpr"], ["offset"]}]
       95 SETTABLEKS                       R3 R9 K15 ["condition"]
       97 SETTABLEKS                       R5 R9 K16 ["trueExpr"]
       99 SETTABLEKS                       R7 R9 K17 ["falseExpr"]
      101 SETTABLEKS                       R2 R9 K18 ["offset"]
      103 MOVE                             R10 R8
      104 RETURN                           R9 2

PROTO_16:
        0 LOADK                            R4 K0 ["^[ \t\n]+"]
        1 LOADN                            R5 1
        2 NAMECALL                         R2 R0 K1 ["match"]
        4 CALL                             R2 3 1
        5 JUMPIFNOT                        R2 ; [+3]
        6 LENGTH                           R3 R2
        7 ADDK                             R1 R3 K2 [1]
        8 JUMP                             ; [+1]
        9 LOADN                            R1 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["Body"]
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 NEWTABLE                         R2 0 16
        6 LOADK                            R3 K1 ["+"]
        7 LOADK                            R4 K2 ["-"]
        8 LOADK                            R5 K3 ["*"]
        9 LOADK                            R6 K4 ["/"]
       10 LOADK                            R7 K5 ["%"]
       11 LOADK                            R8 K6 ["^"]
       12 LOADK                            R9 K7 [".."]
       13 LOADK                            R10 K8 ["::"]
       14 LOADK                            R11 K9 ["and"]
       15 LOADK                            R12 K10 ["or"]
       16 LOADK                            R13 K11 ["=="]
       17 LOADK                            R14 K12 ["~="]
       18 LOADK                            R15 K13 ["<"]
       19 LOADK                            R16 K14 [">"]
       20 LOADK                            R17 K15 ["<="]
       21 LOADK                            R18 K16 [">="]
       22 SETLIST                          R2 R3 16 [1]
       24 NEWTABLE                         R3 0 0
       26 MOVE                             R4 R2
       27 LOADNIL                          R5
       28 LOADNIL                          R6
       29 FORGPREP                         R4
       30 LOADB                            R9 1
       31 SETTABLE                         R9 R3 R8
       32 FORGLOOP                         R4 2 ; [-3]
       34 DUPCLOSURE                       R4 K17 [PROTO_1]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R4 R0 K18 ["Body"]
       39 DUPCLOSURE                       R4 K19 [PROTO_2]
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R4 R0 K20 ["Fn"]
       43 DUPCLOSURE                       R4 K21 [PROTO_3]
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R4 R0 K22 ["FnParams"]
       47 DUPCLOSURE                       R4 K23 [PROTO_4]
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R4 R0 K24 ["Lookup"]
       51 DUPCLOSURE                       R4 K25 [PROTO_5]
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R4 R0 K26 ["Clause"]
       55 DUPCLOSURE                       R4 K27 [PROTO_6]
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R4 R0 K28 ["TableLiteral"]
       59 DUPCLOSURE                       R4 K29 [PROTO_7]
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R4 R0 K30 ["TableEntry"]
       63 DUPCLOSURE                       R4 K31 [PROTO_8]
       64 SETTABLEKS                       R4 R0 K32 ["Id"]
       66 DUPCLOSURE                       R4 K33 [PROTO_9]
       67 SETTABLEKS                       R4 R0 K34 ["NumberLiteral"]
       69 DUPCLOSURE                       R4 K35 [PROTO_10]
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R4 R0 K36 ["ParenExpr"]
       73 DUPCLOSURE                       R4 K37 [PROTO_11]
       74 SETTABLEKS                       R4 R0 K38 ["StringLiteral"]
       76 DUPCLOSURE                       R4 K39 [PROTO_12]
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R4 R0 K40 ["TemplateString"]
       80 DUPCLOSURE                       R4 K41 [PROTO_13]
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R4 R0 K42 ["TypeDef"]
       84 DUPCLOSURE                       R4 K43 [PROTO_14]
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R4 R0 K44 ["UnaryExpr"]
       88 DUPCLOSURE                       R4 K45 [PROTO_15]
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R4 R0 K46 ["TernaryExpr"]
       92 DUPCLOSURE                       R4 K47 [PROTO_16]
       93 CAPTURE                          VAL R0
       94 RETURN                           R4 1
