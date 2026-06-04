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
       17 JUMPIFNOTLE                      R1 R5 ; [+100]
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
       55 JUMPIFNOT                        R9 ; [+62]
       56 MOVE                             R8 R5
       57 ADDK                             R1 R1 K4 [1]
       58 JUMP                             ; [+1]
       59 JUMP                             ; [+58]
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
       92 DUPTABLE                         R11 K19 [{"type", "operator", "left", "right", "offset"}]
       93 LOADK                            R12 K20 ["BinaryExpr"]
       94 SETTABLEKS                       R12 R11 K14 ["type"]
       96 SETTABLEKS                       R8 R11 K15 ["operator"]
       98 SETTABLEKS                       R3 R11 K16 ["left"]
      100 SETTABLEKS                       R9 R11 K17 ["right"]
      102 GETTABLEKS                       R12 R3 K18 ["offset"]
      104 SETTABLEKS                       R12 R11 K18 ["offset"]
      106 MOVE                             R3 R11
      107 LOADK                            R13 K1 ["^[ \t\n]+"]
      108 MOVE                             R14 R10
      109 NAMECALL                         R11 R0 K2 ["match"]
      111 CALL                             R11 3 1
      112 JUMPIFNOT                        R11 ; [+3]
      113 LENGTH                           R12 R11
      114 ADD                              R1 R10 R12
      115 JUMP                             ; [+1]
      116 MOVE                             R1 R10
      117 JUMPBACK                         ; [-102]
      118 MOVE                             R5 R3
      119 MOVE                             R6 R1
      120 RETURN                           R5 2

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
       60 DUPTABLE                         R7 K18 [{"type", "params", "body", "offset"}]
       61 LOADK                            R8 K19 ["Fn"]
       62 SETTABLEKS                       R8 R7 K14 ["type"]
       64 SETTABLEKS                       R2 R7 K15 ["params"]
       66 SETTABLEKS                       R5 R7 K16 ["body"]
       68 SETTABLEKS                       R4 R7 K17 ["offset"]
       70 MOVE                             R8 R6
       71 RETURN                           R7 2

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
       16 JUMPIFNOTLE                      R1 R5 ; [+122]
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
       42 JUMP                             ; [+95]
       43 JUMPIFNOTEQKS                    R5 K6 ["."] ; [+32]
       45 MOVE                             R8 R1
       46 ADDK                             R9 R1 K7 [2]
       47 NAMECALL                         R6 R0 K2 ["sub"]
       49 CALL                             R6 3 1
       50 JUMPIFNOTEQKS                    R6 K8 ["..."] ; [+25]
       52 DUPTABLE                         R8 K11 [{"type", "offset"}]
       53 LOADK                            R9 K12 ["VarArgs"]
       54 SETTABLEKS                       R9 R8 K9 ["type"]
       56 SETTABLEKS                       R1 R8 K10 ["offset"]
       58 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       60 MOVE                             R7 R2
       61 GETIMPORT                        R6 K15 [table.insert]
       63 CALL                             R6 2 0
       64 ADDK                             R6 R1 K16 [3]
       65 LOADK                            R9 K0 ["^[ \t\n]+"]
       66 MOVE                             R10 R6
       67 NAMECALL                         R7 R0 K1 ["match"]
       69 CALL                             R7 3 1
       70 JUMPIFNOT                        R7 ; [+3]
       71 LENGTH                           R8 R7
       72 ADD                              R1 R6 R8
       73 JUMP                             ; [+64]
       74 MOVE                             R1 R6
       75 JUMP                             ; [+62]
       76 JUMPIFNOT                        R4 ; [+10]
       77 GETIMPORT                        R6 K18 [error]
       79 LOADK                            R8 K19 ["Expected ',' between function parameters at offset "]
       80 FASTCALL1                        TOSTRING R1 ; [+3]
       81 MOVE                             R10 R1
       82 GETIMPORT                        R9 K21 [tostring]
       84 CALL                             R9 1 1
       85 CONCAT                           R7 R8 R9
       86 CALL                             R6 1 0
       87 GETUPVAL                         R6 0
       88 GETTABLEKS                       R6 R6 K22 ["Id"]
       90 MOVE                             R7 R0
       91 MOVE                             R8 R1
       92 CALL                             R6 2 2
       93 JUMPIFNOT                        R6 ; [+34]
       94 GETUPVAL                         R8 0
       95 GETTABLEKS                       R8 R8 K23 ["TypeDef"]
       97 MOVE                             R9 R0
       98 MOVE                             R10 R7
       99 CALL                             R8 2 2
      100 DUPTABLE                         R12 K26 [{"type", "name", "typeDef", "offset"}]
      101 LOADK                            R13 K27 ["FnParam"]
      102 SETTABLEKS                       R13 R12 K9 ["type"]
      104 SETTABLEKS                       R6 R12 K24 ["name"]
      106 SETTABLEKS                       R8 R12 K25 ["typeDef"]
      108 SETTABLEKS                       R1 R12 K10 ["offset"]
      110 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
      112 MOVE                             R11 R2
      113 GETIMPORT                        R10 K15 [table.insert]
      115 CALL                             R10 2 0
      116 LOADK                            R12 K0 ["^[ \t\n]+"]
      117 MOVE                             R13 R9
      118 NAMECALL                         R10 R0 K1 ["match"]
      120 CALL                             R10 3 1
      121 JUMPIFNOT                        R10 ; [+3]
      122 LENGTH                           R11 R10
      123 ADD                              R1 R9 R11
      124 JUMP                             ; [+1]
      125 MOVE                             R1 R9
      126 LOADB                            R4 1
      127 JUMP                             ; [+10]
      128 GETIMPORT                        R8 K18 [error]
      130 LOADK                            R10 K28 ["Expected parameter name at offset "]
      131 FASTCALL1                        TOSTRING R1 ; [+3]
      132 MOVE                             R12 R1
      133 GETIMPORT                        R11 K21 [tostring]
      135 CALL                             R11 1 1
      136 CONCAT                           R9 R10 R11
      137 CALL                             R8 1 0
      138 JUMPBACK                         ; [-124]
      139 GETIMPORT                        R5 K18 [error]
      141 LOADK                            R7 K29 ["Unterminated function parameter list starting at offset "]
      142 FASTCALL1                        TOSTRING R3 ; [+3]
      143 MOVE                             R9 R3
      144 GETIMPORT                        R8 K21 [tostring]
      146 CALL                             R8 1 1
      147 CONCAT                           R6 R7 R8
      148 CALL                             R5 1 0
      149 RETURN                           R0 0

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
       18 JUMPIFNOTLE                      R1 R5 ; [+198]
       20 MOVE                             R7 R1
       21 MOVE                             R8 R1
       22 NAMECALL                         R5 R0 K3 ["sub"]
       24 CALL                             R5 3 1
       25 JUMPIFEQKS                       R5 K4 ["."] ; [+3]
       27 JUMPIFNOTEQKS                    R5 K5 [":"] ; [+42]
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
       46 DUPTABLE                         R8 K18 [{"type", "object", "accessor", "member", "offset"}]
       47 LOADK                            R9 K19 ["MemberAccess"]
       48 SETTABLEKS                       R9 R8 K13 ["type"]
       50 SETTABLEKS                       R3 R8 K14 ["object"]
       52 SETTABLEKS                       R5 R8 K15 ["accessor"]
       54 SETTABLEKS                       R6 R8 K16 ["member"]
       56 SETTABLEKS                       R2 R8 K17 ["offset"]
       58 MOVE                             R3 R8
       59 LOADK                            R10 K1 ["^[ \t\n]+"]
       60 MOVE                             R11 R7
       61 NAMECALL                         R8 R0 K2 ["match"]
       63 CALL                             R8 3 1
       64 JUMPIFNOT                        R8 ; [+3]
       65 LENGTH                           R9 R8
       66 ADD                              R1 R7 R9
       67 JUMP                             ; [+148]
       68 MOVE                             R1 R7
       69 JUMP                             ; [+146]
       70 JUMPIFNOTEQKS                    R5 K20 ["["] ; [+57]
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K21 ["Lookup"]
       75 MOVE                             R7 R0
       76 ADDK                             R8 R1 K7 [1]
       77 CALL                             R6 2 2
       78 LOADK                            R10 K1 ["^[ \t\n]+"]
       79 MOVE                             R11 R7
       80 NAMECALL                         R8 R0 K2 ["match"]
       82 CALL                             R8 3 1
       83 JUMPIFNOT                        R8 ; [+3]
       84 LENGTH                           R9 R8
       85 ADD                              R1 R7 R9
       86 JUMP                             ; [+1]
       87 MOVE                             R1 R7
       88 MOVE                             R10 R1
       89 MOVE                             R11 R1
       90 NAMECALL                         R8 R0 K3 ["sub"]
       92 CALL                             R8 3 1
       93 JUMPIFEQKS                       R8 K22 ["]"] ; [+11]
       95 GETIMPORT                        R8 K9 [error]
       97 LOADK                            R10 K23 ["Expected ']' after index expression at offset "]
       98 FASTCALL1                        TOSTRING R1 ; [+3]
       99 MOVE                             R12 R1
      100 GETIMPORT                        R11 K12 [tostring]
      102 CALL                             R11 1 1
      103 CONCAT                           R9 R10 R11
      104 CALL                             R8 1 0
      105 DUPTABLE                         R8 K25 [{"type", "object", "index", "offset"}]
      106 LOADK                            R9 K26 ["IndexAccess"]
      107 SETTABLEKS                       R9 R8 K13 ["type"]
      109 SETTABLEKS                       R3 R8 K14 ["object"]
      111 SETTABLEKS                       R6 R8 K24 ["index"]
      113 SETTABLEKS                       R2 R8 K17 ["offset"]
      115 MOVE                             R3 R8
      116 ADDK                             R8 R1 K7 [1]
      117 LOADK                            R11 K1 ["^[ \t\n]+"]
      118 MOVE                             R12 R8
      119 NAMECALL                         R9 R0 K2 ["match"]
      121 CALL                             R9 3 1
      122 JUMPIFNOT                        R9 ; [+3]
      123 LENGTH                           R10 R9
      124 ADD                              R1 R8 R10
      125 JUMP                             ; [+90]
      126 MOVE                             R1 R8
      127 JUMP                             ; [+88]
      128 JUMPIFNOTEQKS                    R5 K27 ["("] ; [+88]
      130 NEWTABLE                         R6 0 0
      132 ADDK                             R7 R1 K7 [1]
      133 LOADK                            R10 K1 ["^[ \t\n]+"]
      134 MOVE                             R11 R7
      135 NAMECALL                         R8 R0 K2 ["match"]
      137 CALL                             R8 3 1
      138 JUMPIFNOT                        R8 ; [+3]
      139 LENGTH                           R9 R8
      140 ADD                              R1 R7 R9
      141 JUMP                             ; [+1]
      142 MOVE                             R1 R7
      143 LENGTH                           R7 R0
      144 JUMPIFNOTLE                      R1 R7 ; [+58]
      146 MOVE                             R9 R1
      147 MOVE                             R10 R1
      148 NAMECALL                         R7 R0 K3 ["sub"]
      150 CALL                             R7 3 1
      151 JUMPIFNOTEQKS                    R7 K28 [")"] ; [+13]
      153 ADDK                             R8 R1 K7 [1]
      154 LOADK                            R11 K1 ["^[ \t\n]+"]
      155 MOVE                             R12 R8
      156 NAMECALL                         R9 R0 K2 ["match"]
      158 CALL                             R9 3 1
      159 JUMPIFNOT                        R9 ; [+3]
      160 LENGTH                           R10 R9
      161 ADD                              R1 R8 R10
      162 JUMP                             ; [+40]
      163 MOVE                             R1 R8
      164 JUMP                             ; [+38]
      165 JUMPIFNOTEQKS                    R7 K29 [","] ; [+13]
      167 ADDK                             R8 R1 K7 [1]
      168 LOADK                            R11 K1 ["^[ \t\n]+"]
      169 MOVE                             R12 R8
      170 NAMECALL                         R9 R0 K2 ["match"]
      172 CALL                             R9 3 1
      173 JUMPIFNOT                        R9 ; [+3]
      174 LENGTH                           R10 R9
      175 ADD                              R1 R8 R10
      176 JUMP                             ; [+25]
      177 MOVE                             R1 R8
      178 JUMP                             ; [+23]
      179 GETUPVAL                         R8 0
      180 GETTABLEKS                       R8 R8 K30 ["Body"]
      182 MOVE                             R9 R0
      183 MOVE                             R10 R1
      184 CALL                             R8 2 2
      185 FASTCALL2                        TABLE_INSERT R6 R8 ; [+5]
      187 MOVE                             R11 R6
      188 MOVE                             R12 R8
      189 GETIMPORT                        R10 K33 [table.insert]
      191 CALL                             R10 2 0
      192 LOADK                            R12 K1 ["^[ \t\n]+"]
      193 MOVE                             R13 R9
      194 NAMECALL                         R10 R0 K2 ["match"]
      196 CALL                             R10 3 1
      197 JUMPIFNOT                        R10 ; [+3]
      198 LENGTH                           R11 R10
      199 ADD                              R1 R9 R11
      200 JUMP                             ; [+1]
      201 MOVE                             R1 R9
      202 JUMPBACK                         ; [-60]
      203 DUPTABLE                         R7 K36 [{"type", "callee", "args", "offset"}]
      204 LOADK                            R8 K37 ["Call"]
      205 SETTABLEKS                       R8 R7 K13 ["type"]
      207 SETTABLEKS                       R3 R7 K34 ["callee"]
      209 SETTABLEKS                       R6 R7 K35 ["args"]
      211 SETTABLEKS                       R2 R7 K17 ["offset"]
      213 MOVE                             R3 R7
      214 JUMP                             ; [+1]
      215 JUMP                             ; [+1]
      216 JUMPBACK                         ; [-200]
      217 MOVE                             R5 R3
      218 MOVE                             R6 R1
      219 RETURN                           R5 2

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
       45 JUMPIFNOTEQKS                    R4 K10 ["true"] ; [+14]
       47 JUMPIFNOTEQ                      R6 R4 ; [+12]
       49 DUPTABLE                         R7 K14 [{"type", "value", "offset"}]
       50 LOADK                            R8 K15 ["BooleanLiteral"]
       51 SETTABLEKS                       R8 R7 K11 ["type"]
       53 LOADB                            R8 1
       54 SETTABLEKS                       R8 R7 K12 ["value"]
       56 SETTABLEKS                       R1 R7 K13 ["offset"]
       58 ADDK                             R8 R1 K6 [4]
       59 RETURN                           R7 2
       60 JUMPIFNOTEQKS                    R5 K16 ["false"] ; [+14]
       62 JUMPIFNOTEQ                      R6 R5 ; [+12]
       64 DUPTABLE                         R7 K14 [{"type", "value", "offset"}]
       65 LOADK                            R8 K15 ["BooleanLiteral"]
       66 SETTABLEKS                       R8 R7 K11 ["type"]
       68 LOADB                            R8 0
       69 SETTABLEKS                       R8 R7 K12 ["value"]
       71 SETTABLEKS                       R1 R7 K13 ["offset"]
       73 ADDK                             R8 R1 K17 [5]
       74 RETURN                           R7 2
       75 JUMPIFNOTEQKS                    R3 K18 ["nil"] ; [+11]
       77 JUMPIFNOTEQ                      R6 R3 ; [+9]
       79 DUPTABLE                         R7 K19 [{"type", "offset"}]
       80 LOADK                            R8 K20 ["NilLiteral"]
       81 SETTABLEKS                       R8 R7 K11 ["type"]
       83 SETTABLEKS                       R1 R7 K13 ["offset"]
       85 ADDK                             R8 R1 K5 [3]
       86 RETURN                           R7 2
       87 JUMPIFNOTEQKS                    R3 K21 ["..."] ; [+9]
       89 DUPTABLE                         R7 K19 [{"type", "offset"}]
       90 LOADK                            R8 K22 ["VarArgs"]
       91 SETTABLEKS                       R8 R7 K11 ["type"]
       93 SETTABLEKS                       R1 R7 K13 ["offset"]
       95 ADDK                             R8 R1 K5 [3]
       96 RETURN                           R7 2
       97 MOVE                             R9 R1
       98 MOVE                             R10 R1
       99 NAMECALL                         R7 R0 K3 ["sub"]
      101 CALL                             R7 3 1
      102 JUMPIFNOTEQKS                    R7 K23 ["{"] ; [+8]
      104 GETUPVAL                         R8 0
      105 GETTABLEKS                       R8 R8 K24 ["TableLiteral"]
      107 MOVE                             R9 R0
      108 MOVE                             R10 R1
      109 CALL                             R8 2 -1
      110 RETURN                           R8 -1
      111 JUMPIFNOTEQKS                    R7 K25 ["`"] ; [+8]
      113 GETUPVAL                         R8 0
      114 GETTABLEKS                       R8 R8 K26 ["TemplateString"]
      116 MOVE                             R9 R0
      117 MOVE                             R10 R1
      118 CALL                             R8 2 -1
      119 RETURN                           R8 -1
      120 JUMPIFEQKS                       R7 K27 ["\""] ; [+5]
      122 JUMPIFEQKS                       R7 K28 ["'"] ; [+3]
      124 JUMPIFNOTEQKS                    R7 K29 ["["] ; [+8]
      126 GETUPVAL                         R8 0
      127 GETTABLEKS                       R8 R8 K30 ["StringLiteral"]
      129 MOVE                             R9 R0
      130 MOVE                             R10 R1
      131 CALL                             R8 2 -1
      132 RETURN                           R8 -1
      133 JUMPIFNOTEQKS                    R7 K31 ["("] ; [+8]
      135 GETUPVAL                         R8 0
      136 GETTABLEKS                       R8 R8 K32 ["ParenExpr"]
      138 MOVE                             R9 R0
      139 MOVE                             R10 R1
      140 CALL                             R8 2 -1
      141 RETURN                           R8 -1
      142 JUMPIFEQKS                       R7 K33 ["-"] ; [+9]
      144 JUMPIFEQKS                       R7 K34 ["+"] ; [+7]
      146 JUMPIFEQKS                       R7 K35 ["#"] ; [+5]
      148 JUMPIFEQKS                       R7 K36 ["&"] ; [+3]
      150 JUMPIFNOTEQKS                    R3 K37 ["not"] ; [+8]
      152 GETUPVAL                         R8 0
      153 GETTABLEKS                       R8 R8 K38 ["UnaryExpr"]
      155 MOVE                             R9 R0
      156 MOVE                             R10 R1
      157 CALL                             R8 2 -1
      158 RETURN                           R8 -1
      159 JUMPIFNOTEQKS                    R2 K39 ["if"] ; [+8]
      161 GETUPVAL                         R8 0
      162 GETTABLEKS                       R8 R8 K40 ["TernaryExpr"]
      164 MOVE                             R9 R0
      165 MOVE                             R10 R1
      166 CALL                             R8 2 -1
      167 RETURN                           R8 -1
      168 LOADK                            R10 K41 ["%d"]
      169 NAMECALL                         R8 R7 K1 ["match"]
      171 CALL                             R8 2 1
      172 JUMPIFNOT                        R8 ; [+7]
      173 GETUPVAL                         R8 0
      174 GETTABLEKS                       R8 R8 K42 ["NumberLiteral"]
      176 MOVE                             R9 R0
      177 MOVE                             R10 R1
      178 CALL                             R8 2 -1
      179 RETURN                           R8 -1
      180 JUMPIFNOT                        R6 ; [+7]
      181 GETUPVAL                         R8 0
      182 GETTABLEKS                       R8 R8 K43 ["Id"]
      184 MOVE                             R9 R0
      185 MOVE                             R10 R1
      186 CALL                             R8 2 -1
      187 RETURN                           R8 -1
      188 LOADNIL                          R8
      189 MOVE                             R9 R1
      190 RETURN                           R8 2

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
       15 JUMPIFNOTLE                      R1 R4 ; [+54]
       17 MOVE                             R6 R1
       18 MOVE                             R7 R1
       19 NAMECALL                         R4 R0 K3 ["sub"]
       21 CALL                             R4 3 1
       22 JUMPIFNOTEQKS                    R4 K4 ["}"] ; [+22]
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
       35 DUPTABLE                         R5 K8 [{"type", "properties", "offset"}]
       36 LOADK                            R6 K9 ["TableLiteral"]
       37 SETTABLEKS                       R6 R5 K5 ["type"]
       39 SETTABLEKS                       R3 R5 K6 ["properties"]
       41 SETTABLEKS                       R2 R5 K7 ["offset"]
       43 MOVE                             R6 R1
       44 RETURN                           R5 2
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K10 ["TableEntry"]
       48 MOVE                             R6 R0
       49 MOVE                             R7 R1
       50 CALL                             R5 2 2
       51 JUMPIFNOT                        R5 ; [+17]
       52 FASTCALL2                        TABLE_INSERT R3 R5 ; [+5]
       54 MOVE                             R8 R3
       55 MOVE                             R9 R5
       56 GETIMPORT                        R7 K13 [table.insert]
       58 CALL                             R7 2 0
       59 LOADK                            R9 K1 ["^[ \t\n]+"]
       60 MOVE                             R10 R6
       61 NAMECALL                         R7 R0 K2 ["match"]
       63 CALL                             R7 3 1
       64 JUMPIFNOT                        R7 ; [+3]
       65 LENGTH                           R8 R7
       66 ADD                              R1 R6 R8
       67 JUMP                             ; [+1]
       68 MOVE                             R1 R6
       69 JUMPBACK                         ; [-56]
       70 GETIMPORT                        R4 K15 [error]
       72 LOADK                            R6 K16 ["Unterminated table literal starting at offset "]
       73 FASTCALL1                        TOSTRING R2 ; [+3]
       74 MOVE                             R8 R2
       75 GETIMPORT                        R7 K18 [tostring]
       77 CALL                             R7 1 1
       78 CONCAT                           R5 R6 R7
       79 CALL                             R4 1 0
       80 RETURN                           R0 0

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
       87 JUMPIFNOT                        R4 ; [+54]
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
      120 DUPTABLE                         R8 K20 [{"type", "key", "value", "offset"}]
      121 LOADK                            R9 K21 ["TableEntry"]
      122 SETTABLEKS                       R9 R8 K16 ["type"]
      124 SETTABLEKS                       R4 R8 K17 ["key"]
      126 SETTABLEKS                       R6 R8 K18 ["value"]
      128 SETTABLEKS                       R2 R8 K19 ["offset"]
      130 MOVE                             R5 R8
      131 LOADK                            R10 K0 ["^[ \t\n]+"]
      132 MOVE                             R11 R7
      133 NAMECALL                         R8 R0 K1 ["match"]
      135 CALL                             R8 3 1
      136 JUMPIFNOT                        R8 ; [+3]
      137 LENGTH                           R9 R8
      138 ADD                              R1 R7 R9
      139 JUMP                             ; [+27]
      140 MOVE                             R1 R7
      141 JUMP                             ; [+25]
      142 GETUPVAL                         R6 0
      143 GETTABLEKS                       R6 R6 K4 ["Body"]
      145 MOVE                             R7 R0
      146 MOVE                             R8 R1
      147 CALL                             R6 2 2
      148 DUPTABLE                         R8 K22 [{"type", "value", "offset"}]
      149 LOADK                            R9 K23 ["TableValue"]
      150 SETTABLEKS                       R9 R8 K16 ["type"]
      152 SETTABLEKS                       R6 R8 K18 ["value"]
      154 SETTABLEKS                       R2 R8 K19 ["offset"]
      156 MOVE                             R5 R8
      157 LOADK                            R10 K0 ["^[ \t\n]+"]
      158 MOVE                             R11 R7
      159 NAMECALL                         R8 R0 K1 ["match"]
      161 CALL                             R8 3 1
      162 JUMPIFNOT                        R8 ; [+3]
      163 LENGTH                           R9 R8
      164 ADD                              R1 R7 R9
      165 JUMP                             ; [+1]
      166 MOVE                             R1 R7
      167 JUMPIF                           R5 ; [+10]
      168 GETIMPORT                        R6 K8 [error]
      170 LOADK                            R8 K24 ["Failed to parse table entry at offset "]
      171 FASTCALL1                        TOSTRING R1 ; [+3]
      172 MOVE                             R10 R1
      173 GETIMPORT                        R9 K26 [tostring]
      175 CALL                             R9 1 1
      176 CONCAT                           R7 R8 R9
      177 CALL                             R6 1 0
      178 MOVE                             R8 R1
      179 MOVE                             R9 R1
      180 NAMECALL                         R6 R0 K2 ["sub"]
      182 CALL                             R6 3 1
      183 JUMPIFNOTEQKS                    R6 K27 [","] ; [+12]
      185 ADDK                             R6 R1 K5 [1]
      186 LOADK                            R9 K0 ["^[ \t\n]+"]
      187 MOVE                             R10 R6
      188 NAMECALL                         R7 R0 K1 ["match"]
      190 CALL                             R7 3 1
      191 JUMPIFNOT                        R7 ; [+3]
      192 LENGTH                           R8 R7
      193 ADD                              R1 R6 R8
      194 JUMP                             ; [+1]
      195 MOVE                             R1 R6
      196 MOVE                             R6 R5
      197 MOVE                             R7 R1
      198 RETURN                           R6 2

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
       16 JUMPIFNOT                        R2 ; [+11]
       17 DUPTABLE                         R3 K6 [{"type", "name", "offset"}]
       18 LOADK                            R4 K7 ["Id"]
       19 SETTABLEKS                       R4 R3 K3 ["type"]
       21 SETTABLEKS                       R2 R3 K4 ["name"]
       23 SETTABLEKS                       R1 R3 K5 ["offset"]
       25 LENGTH                           R5 R2
       26 ADD                              R4 R1 R5
       27 RETURN                           R3 2
       28 LOADNIL                          R3
       29 MOVE                             R4 R1
       30 RETURN                           R3 2

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
       16 JUMPIFNOT                        R2 ; [+16]
       17 DUPTABLE                         R3 K6 [{"type", "value", "offset"}]
       18 LOADK                            R4 K7 ["NumberLiteral"]
       19 SETTABLEKS                       R4 R3 K3 ["type"]
       21 FASTCALL1                        TONUMBER R2 ; [+3]
       22 MOVE                             R5 R2
       23 GETIMPORT                        R4 K9 [tonumber]
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K4 ["value"]
       28 SETTABLEKS                       R1 R3 K5 ["offset"]
       30 LENGTH                           R5 R2
       31 ADD                              R4 R1 R5
       32 RETURN                           R3 2
       33 LOADNIL                          R3
       34 MOVE                             R4 R1
       35 RETURN                           R3 2

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
       46 DUPTABLE                         R5 K14 [{"type", "body", "offset"}]
       47 LOADK                            R6 K15 ["ParenExpr"]
       48 SETTABLEKS                       R6 R5 K11 ["type"]
       50 SETTABLEKS                       R3 R5 K12 ["body"]
       52 SETTABLEKS                       R2 R5 K13 ["offset"]
       54 ADDK                             R6 R1 K0 [1]
       55 RETURN                           R5 2

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
       56 JUMPIFNOTLE                      R1 R7 ; [+72]
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
       78 JUMP                             ; [+49]
       79 JUMPIFNOTEQKS                    R8 K18 ["n"] ; [+6]
       81 MOVE                             R9 R6
       82 LOADK                            R10 K19 ["\n"]
       83 CONCAT                           R6 R9 R10
       84 ADDK                             R1 R1 K17 [2]
       85 JUMP                             ; [+42]
       86 JUMPIFNOTEQKS                    R8 K20 ["t"] ; [+6]
       88 MOVE                             R9 R6
       89 LOADK                            R10 K21 ["\t"]
       90 CONCAT                           R6 R9 R10
       91 ADDK                             R1 R1 K17 [2]
       92 JUMP                             ; [+35]
       93 MOVE                             R9 R6
       94 MOVE                             R10 R7
       95 CONCAT                           R6 R9 R10
       96 ADDK                             R1 R1 K9 [1]
       97 JUMP                             ; [+30]
       98 JUMPIFNOTEQ                      R7 R3 ; [+25]
      100 MOVE                             R10 R1
      101 LENGTH                           R13 R5
      102 ADD                              R12 R1 R13
      103 SUBK                             R11 R12 K9 [1]
      104 NAMECALL                         R8 R0 K2 ["sub"]
      106 CALL                             R8 3 1
      107 JUMPIFNOTEQ                      R8 R5 ; [+16]
      109 DUPTABLE                         R8 K27 [{"type", "value", "offset", "openQuote", "closeQuote"}]
      110 LOADK                            R9 K28 ["StringLiteral"]
      111 SETTABLEKS                       R9 R8 K22 ["type"]
      113 SETTABLEKS                       R6 R8 K23 ["value"]
      115 SETTABLEKS                       R2 R8 K24 ["offset"]
      117 SETTABLEKS                       R4 R8 K25 ["openQuote"]
      119 SETTABLEKS                       R5 R8 K26 ["closeQuote"]
      121 LENGTH                           R10 R5
      122 ADD                              R9 R1 R10
      123 RETURN                           R8 2
      124 MOVE                             R8 R6
      125 MOVE                             R9 R7
      126 CONCAT                           R6 R8 R9
      127 ADDK                             R1 R1 K9 [1]
      128 JUMPBACK                         ; [-74]
      129 GETIMPORT                        R7 K7 [error]
      131 LOADK                            R9 K29 ["Unterminated string literal starting at offset "]
      132 FASTCALL1                        TOSTRING R2 ; [+3]
      133 MOVE                             R11 R2
      134 GETIMPORT                        R10 K31 [tostring]
      136 CALL                             R10 1 1
      137 CONCAT                           R8 R9 R10
      138 CALL                             R7 1 0
      139 RETURN                           R0 0

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
       29 JUMPIFNOTLE                      R1 R6 ; [+91]
       31 MOVE                             R8 R1
       32 MOVE                             R9 R1
       33 NAMECALL                         R6 R0 K2 ["sub"]
       35 CALL                             R6 3 1
       36 JUMPIFNOTEQKS                    R6 K3 ["`"] ; [+29]
       38 LENGTH                           R7 R4
       39 LOADN                            R8 0
       40 JUMPIFNOTLT                      R8 R7 ; [+15]
       42 DUPTABLE                         R9 K12 [{"type", "value", "offset"}]
       43 LOADK                            R10 K13 ["TemplateStringPart"]
       44 SETTABLEKS                       R10 R9 K9 ["type"]
       46 SETTABLEKS                       R4 R9 K10 ["value"]
       48 SETTABLEKS                       R5 R9 K11 ["offset"]
       50 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       52 MOVE                             R8 R3
       53 GETIMPORT                        R7 K16 [table.insert]
       55 CALL                             R7 2 0
       56 DUPTABLE                         R7 K18 [{"type", "parts", "offset"}]
       57 LOADK                            R8 K19 ["TemplateString"]
       58 SETTABLEKS                       R8 R7 K9 ["type"]
       60 SETTABLEKS                       R3 R7 K17 ["parts"]
       62 SETTABLEKS                       R2 R7 K11 ["offset"]
       64 ADDK                             R8 R1 K8 [1]
       65 RETURN                           R7 2
       66 JUMPIFNOTEQKS                    R6 K20 ["{"] ; [+49]
       68 LENGTH                           R7 R4
       69 LOADN                            R8 0
       70 JUMPIFNOTLT                      R8 R7 ; [+16]
       72 DUPTABLE                         R9 K12 [{"type", "value", "offset"}]
       73 LOADK                            R10 K13 ["TemplateStringPart"]
       74 SETTABLEKS                       R10 R9 K9 ["type"]
       76 SETTABLEKS                       R4 R9 K10 ["value"]
       78 SETTABLEKS                       R5 R9 K11 ["offset"]
       80 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       82 MOVE                             R8 R3
       83 GETIMPORT                        R7 K16 [table.insert]
       85 CALL                             R7 2 0
       86 LOADK                            R4 K7 [""]
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R7 R7 K21 ["Body"]
       90 MOVE                             R8 R0
       91 ADDK                             R9 R1 K8 [1]
       92 CALL                             R7 2 2
       93 JUMPIFNOT                        R7 ; [+7]
       94 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       96 MOVE                             R10 R3
       97 MOVE                             R11 R7
       98 GETIMPORT                        R9 K16 [table.insert]
      100 CALL                             R9 2 0
      101 MOVE                             R1 R8
      102 MOVE                             R11 R1
      103 MOVE                             R12 R1
      104 NAMECALL                         R9 R0 K2 ["sub"]
      106 CALL                             R9 3 1
      107 JUMPIFEQKS                       R9 K22 ["}"] ; [+5]
      109 GETIMPORT                        R9 K5 [error]
      111 LOADK                            R10 K23 ["Expected '}' after template string expression"]
      112 CALL                             R9 1 0
      113 ADDK                             R1 R1 K8 [1]
      114 MOVE                             R5 R1
      115 JUMP                             ; [+4]
      116 MOVE                             R7 R4
      117 MOVE                             R8 R6
      118 CONCAT                           R4 R7 R8
      119 ADDK                             R1 R1 K8 [1]
      120 JUMPBACK                         ; [-93]
      121 GETIMPORT                        R6 K5 [error]
      123 LOADK                            R7 K24 ["Unterminated template string"]
      124 CALL                             R6 1 0
      125 RETURN                           R0 0

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
       16 JUMPIFNOTEQKS                    R2 K3 [":"] ; [+15]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K4 ["Id"]
       21 MOVE                             R3 R0
       22 ADDK                             R4 R1 K5 [1]
       23 CALL                             R2 2 2
       24 DUPTABLE                         R4 K8 [{"type", "name"}]
       25 LOADK                            R5 K9 ["TypeDef"]
       26 SETTABLEKS                       R5 R4 K6 ["type"]
       28 SETTABLEKS                       R2 R4 K7 ["name"]
       30 MOVE                             R5 R3
       31 RETURN                           R4 2
       32 LOADNIL                          R2
       33 MOVE                             R3 R1
       34 RETURN                           R2 2

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
       75 DUPTABLE                         R7 K21 [{"type", "operator", "operand", "offset"}]
       76 LOADK                            R8 K22 ["UnaryExpr"]
       77 SETTABLEKS                       R8 R7 K17 ["type"]
       79 SETTABLEKS                       R4 R7 K18 ["operator"]
       81 SETTABLEKS                       R5 R7 K19 ["operand"]
       83 SETTABLEKS                       R2 R7 K20 ["offset"]
       85 MOVE                             R8 R6
       86 RETURN                           R7 2

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
       94 DUPTABLE                         R9 K18 [{"type", "condition", "trueExpr", "falseExpr", "offset"}]
       95 LOADK                            R10 K19 ["TernaryExpr"]
       96 SETTABLEKS                       R10 R9 K13 ["type"]
       98 SETTABLEKS                       R3 R9 K14 ["condition"]
      100 SETTABLEKS                       R5 R9 K15 ["trueExpr"]
      102 SETTABLEKS                       R7 R9 K16 ["falseExpr"]
      104 SETTABLEKS                       R2 R9 K17 ["offset"]
      106 MOVE                             R10 R8
      107 RETURN                           R9 2

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
