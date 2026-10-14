PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["Text"]}]
        1 SETTABLEKS                       R0 R1 K2 ["Text"]
        3 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R2 ; [+26]
        4 LENGTH                           R3 R0
        5 GETTABLE                         R2 R0 R3
        6 GETTABLEKS                       R3 R2 K0 ["IsLink"]
        8 JUMPIFNOT                        R3 ; [+11]
        9 DUPTABLE                         R6 K3 [{[1] = False, ["Text"]}]
       10 SETTABLEKS                       R1 R6 K2 ["Text"]
       12 MOVE                             R5 R6
       13 FASTCALL2                        TABLE_INSERT R0 R5 ; [+4]
       15 MOVE                             R4 R0
       16 GETIMPORT                        R3 K6 [table.insert]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0
       20 LENGTH                           R4 R0
       21 GETTABLE                         R3 R0 R4
       22 GETTABLEKS                       R5 R2 K2 ["Text"]
       24 MOVE                             R6 R1
       25 CONCAT                           R4 R5 R6
       26 SETTABLEKS                       R4 R3 K2 ["Text"]
       28 RETURN                           R0 0
       29 DUPTABLE                         R5 K3 [{[1] = False, ["Text"]}]
       30 SETTABLEKS                       R1 R5 K2 ["Text"]
       32 MOVE                             R4 R5
       33 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       35 MOVE                             R3 R0
       36 GETIMPORT                        R2 K6 [table.insert]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+2]
        1 MOVE                             R2 R1
        2 JUMP                             ; [+1]
        3 GETUPVAL                         R2 0
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R4 1
        7 LOADN                            R5 1
        8 MOVE                             R6 R0
        9 JUMPIFNOT                        R4 ; [+184]
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 LOADNIL                          R9
       13 LOADNIL                          R10
       14 LOADNIL                          R11
       15 GETUPVAL                         R14 1
       16 NAMECALL                         R12 R6 K0 ["find"]
       18 CALL                             R12 2 6
       19 MOVE                             R4 R12
       20 MOVE                             R5 R13
       21 MOVE                             R8 R14
       22 MOVE                             R10 R15
       23 MOVE                             R10 R16
       24 MOVE                             R11 R17
       25 JUMPIFNOT                        R4 ; [+168]
       26 JUMPIFNOT                        R5 ; [+167]
       27 JUMPIFEQKN                       R4 K1 [1] ; [+45]
       29 LOADN                            R14 1
       30 SUBK                             R15 R4 K1 [1]
       31 NAMECALL                         R12 R6 K2 ["sub"]
       33 CALL                             R12 3 1
       34 LENGTH                           R13 R3
       35 LOADN                            R14 0
       36 JUMPIFNOTLT                      R14 R13 ; [+26]
       38 LENGTH                           R14 R3
       39 GETTABLE                         R13 R3 R14
       40 GETTABLEKS                       R14 R13 K3 ["IsLink"]
       42 JUMPIFNOT                        R14 ; [+11]
       43 DUPTABLE                         R17 K6 [{["IsLink"] = False, ["Text"]}]
       44 SETTABLEKS                       R12 R17 K5 ["Text"]
       46 MOVE                             R16 R17
       47 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
       49 MOVE                             R15 R3
       50 GETIMPORT                        R14 K9 [table.insert]
       52 CALL                             R14 2 0
       53 JUMP                             ; [+19]
       54 LENGTH                           R15 R3
       55 GETTABLE                         R14 R3 R15
       56 GETTABLEKS                       R16 R13 K5 ["Text"]
       58 MOVE                             R17 R12
       59 CONCAT                           R15 R16 R17
       60 SETTABLEKS                       R15 R14 K5 ["Text"]
       62 JUMP                             ; [+10]
       63 DUPTABLE                         R16 K6 [{["IsLink"] = False, ["Text"]}]
       64 SETTABLEKS                       R12 R16 K5 ["Text"]
       66 MOVE                             R15 R16
       67 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       69 MOVE                             R14 R3
       70 GETIMPORT                        R13 K9 [table.insert]
       72 CALL                             R13 2 0
       73 LOADNIL                          R12
       74 LOADNIL                          R13
       75 JUMPIFNOT                        R8 ; [+28]
       76 JUMPIFEQKS                       R8 K10 [""] ; [+27]
       78 LOADNIL                          R14
       79 LOADNIL                          R15
       80 LOADNIL                          R16
       81 LOADK                            R19 K11 ["(https?://)(%a*)"]
       82 NAMECALL                         R17 R8 K0 ["find"]
       84 CALL                             R17 2 4
       85 MOVE                             R14 R17
       86 MOVE                             R15 R18
       87 MOVE                             R13 R19
       88 MOVE                             R16 R20
       89 JUMPIFNOT                        R14 ; [+1]
       90 JUMPIF                           R15 ; [+1]
       91 MOVE                             R16 R8
       92 JUMPIFEQKS                       R16 K10 [""] ; [+2]
       94 JUMPIF                           R16 ; [+3]
       95 GETTABLEKS                       R12 R2 K12 ["www"]
       97 JUMP                             ; [+8]
       98 GETIMPORT                        R17 K15 [string.lower]
      100 MOVE                             R18 R16
      101 CALL                             R17 1 1
      102 GETTABLE                         R12 R2 R17
      103 JUMP                             ; [+2]
      104 GETTABLEKS                       R12 R2 K12 ["www"]
      106 MOVE                             R16 R4
      107 MOVE                             R17 R5
      108 NAMECALL                         R14 R6 K2 ["sub"]
      110 CALL                             R14 3 1
      111 JUMPIFNOT                        R13 ; [+2]
      112 MOVE                             R15 R14
      113 JUMP                             ; [+3]
      114 LOADK                            R16 K16 ["https://"]
      115 MOVE                             R17 R14
      116 CONCAT                           R15 R16 R17
      117 JUMPIFNOT                        R12 ; [+20]
      118 DUPTABLE                         R16 K19 [{["IsLink"] = True, ["Text"], ["UrlInfo"]}]
      119 SETTABLEKS                       R14 R16 K5 ["Text"]
      121 DUPTABLE                         R17 K23 [{"Link", "Slug", "SubDomain"}]
      122 SETTABLEKS                       R15 R17 K20 ["Link"]
      124 SETTABLEKS                       R11 R17 K21 ["Slug"]
      126 SETTABLEKS                       R12 R17 K22 ["SubDomain"]
      128 SETTABLEKS                       R17 R16 K18 ["UrlInfo"]
      130 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
      132 MOVE                             R18 R3
      133 MOVE                             R19 R16
      134 GETIMPORT                        R17 K9 [table.insert]
      136 CALL                             R17 2 0
      137 JUMP                             ; [+39]
      138 LENGTH                           R16 R3
      139 LOADN                            R17 0
      140 JUMPIFNOTLT                      R17 R16 ; [+26]
      142 LENGTH                           R17 R3
      143 GETTABLE                         R16 R3 R17
      144 GETTABLEKS                       R17 R16 K3 ["IsLink"]
      146 JUMPIFNOT                        R17 ; [+11]
      147 DUPTABLE                         R20 K6 [{["IsLink"] = False, ["Text"]}]
      148 SETTABLEKS                       R14 R20 K5 ["Text"]
      150 MOVE                             R19 R20
      151 FASTCALL2                        TABLE_INSERT R3 R19 ; [+4]
      153 MOVE                             R18 R3
      154 GETIMPORT                        R17 K9 [table.insert]
      156 CALL                             R17 2 0
      157 JUMP                             ; [+19]
      158 LENGTH                           R18 R3
      159 GETTABLE                         R17 R3 R18
      160 GETTABLEKS                       R19 R16 K5 ["Text"]
      162 MOVE                             R20 R14
      163 CONCAT                           R18 R19 R20
      164 SETTABLEKS                       R18 R17 K5 ["Text"]
      166 JUMP                             ; [+10]
      167 DUPTABLE                         R19 K6 [{["IsLink"] = False, ["Text"]}]
      168 SETTABLEKS                       R14 R19 K5 ["Text"]
      170 MOVE                             R18 R19
      171 FASTCALL2                        TABLE_INSERT R3 R18 ; [+4]
      173 MOVE                             R17 R3
      174 GETIMPORT                        R16 K9 [table.insert]
      176 CALL                             R16 2 0
      177 FASTCALL1                        STRING_LEN R6 ; [+3]
      178 MOVE                             R17 R6
      179 GETIMPORT                        R16 K25 [string.len]
      181 CALL                             R16 1 1
      182 JUMPIFNOTEQ                      R5 R16 ; [+3]
      184 LOADK                            R6 K10 [""]
      185 JUMP                             ; [+8]
      186 ORK                              R20 R5 K26 [0]
      187 ADDK                             R19 R20 K1 [1]
      188 MOVE                             R20 R16
      189 NAMECALL                         R17 R6 K2 ["sub"]
      191 CALL                             R17 3 1
      192 MOVE                             R6 R17
      193 JUMPBACK                         ; [-185]
      194 FASTCALL1                        STRING_LEN R6 ; [+3]
      195 MOVE                             R8 R6
      196 GETIMPORT                        R7 K25 [string.len]
      198 CALL                             R7 1 1
      199 LOADN                            R8 0
      200 JUMPIFNOTLT                      R8 R7 ; [+41]
      202 MOVE                             R7 R6
      203 LENGTH                           R8 R3
      204 LOADN                            R9 0
      205 JUMPIFNOTLT                      R9 R8 ; [+26]
      207 LENGTH                           R9 R3
      208 GETTABLE                         R8 R3 R9
      209 GETTABLEKS                       R9 R8 K3 ["IsLink"]
      211 JUMPIFNOT                        R9 ; [+11]
      212 DUPTABLE                         R12 K6 [{["IsLink"] = False, ["Text"]}]
      213 SETTABLEKS                       R7 R12 K5 ["Text"]
      215 MOVE                             R11 R12
      216 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      218 MOVE                             R10 R3
      219 GETIMPORT                        R9 K9 [table.insert]
      221 CALL                             R9 2 0
      222 RETURN                           R3 1
      223 LENGTH                           R10 R3
      224 GETTABLE                         R9 R3 R10
      225 GETTABLEKS                       R11 R8 K5 ["Text"]
      227 MOVE                             R12 R7
      228 CONCAT                           R10 R11 R12
      229 SETTABLEKS                       R10 R9 K5 ["Text"]
      231 RETURN                           R3 1
      232 DUPTABLE                         R11 K6 [{["IsLink"] = False, ["Text"]}]
      233 SETTABLEKS                       R7 R11 K5 ["Text"]
      235 MOVE                             R10 R11
      236 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
      238 MOVE                             R9 R3
      239 GETIMPORT                        R8 K9 [table.insert]
      241 CALL                             R8 2 0
      242 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{[1] = "create", ["devforum"] = "devforum", ["talenthub"] = "talent", ["www"] = "www"}]
        2 NEWTABLE                         R1 0 9
        4 LOADK                            R2 K6 ["/"]
        5 LOADK                            R3 K7 ["?"]
        6 LOADK                            R4 K8 ["="]
        7 LOADK                            R5 K9 ["_"]
        8 LOADK                            R6 K10 ["-"]
        9 LOADK                            R7 K11 ["~"]
       10 LOADK                            R8 K12 ["%"]
       11 LOADK                            R9 K13 ["+"]
       12 LOADK                            R10 K14 ["&"]
       13 SETLIST                          R1 R2 9 [1]
       15 GETIMPORT                        R2 K17 [table.concat]
       17 MOVE                             R3 R1
       18 LOADK                            R4 K18 ["|%"]
       19 CALL                             R2 2 1
       20 LOADK                            R4 K19 ["(h*t*p*s?:*/*%a*)(.?)(roblox.com)([/+%w|%"]
       21 MOVE                             R5 R2
       22 LOADK                            R6 K20 ["]*)"]
       23 CONCAT                           R3 R4 R6
       24 DUPCLOSURE                       R4 K21 [PROTO_0]
       25 DUPCLOSURE                       R5 K22 [PROTO_1]
       26 DUPCLOSURE                       R6 K23 [PROTO_2]
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 RETURN                           R6 1
