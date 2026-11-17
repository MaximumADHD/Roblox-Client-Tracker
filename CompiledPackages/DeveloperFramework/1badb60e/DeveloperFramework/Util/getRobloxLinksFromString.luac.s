PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["Text"]}]
        1 SETTABLEKS                       R0 R1 K2 ["Text"]
        3 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R2 ; [+25]
        4 LENGTH                           R3 R0
        5 GETTABLE                         R2 R0 R3
        6 GETTABLEKS                       R3 R2 K0 ["IsLink"]
        8 JUMPIFNOT                        R3 ; [+10]
        9 DUPTABLE                         R5 K3 [{[1] = False, ["Text"]}]
       10 SETTABLEKS                       R1 R5 K2 ["Text"]
       12 FASTCALL2                        TABLE_INSERT R0 R5 ; [+4]
       14 MOVE                             R4 R0
       15 GETIMPORT                        R3 K6 [table.insert]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0
       19 LENGTH                           R4 R0
       20 GETTABLE                         R3 R0 R4
       21 GETTABLEKS                       R5 R2 K2 ["Text"]
       23 MOVE                             R6 R1
       24 CONCAT                           R4 R5 R6
       25 SETTABLEKS                       R4 R3 K2 ["Text"]
       27 RETURN                           R0 0
       28 DUPTABLE                         R4 K3 [{[1] = False, ["Text"]}]
       29 SETTABLEKS                       R1 R4 K2 ["Text"]
       31 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       33 MOVE                             R3 R0
       34 GETIMPORT                        R2 K6 [table.insert]
       36 CALL                             R2 2 0
       37 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+2]
        1 MOVE                             R2 R1
        2 JUMP                             ; [+1]
        3 GETUPVAL                         R2 0
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R4 1
        7 LOADN                            R5 1
        8 MOVE                             R6 R0
        9 JUMPIFNOT                        R4 ; [+180]
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
       25 JUMPIFNOT                        R4 ; [+164]
       26 JUMPIFNOT                        R5 ; [+163]
       27 JUMPIFEQKN                       R4 K1 [1] ; [+43]
       29 LOADN                            R14 1
       30 SUBK                             R15 R4 K1 [1]
       31 NAMECALL                         R12 R6 K2 ["sub"]
       33 CALL                             R12 3 1
       34 LENGTH                           R13 R3
       35 LOADN                            R14 0
       36 JUMPIFNOTLT                      R14 R13 ; [+25]
       38 LENGTH                           R14 R3
       39 GETTABLE                         R13 R3 R14
       40 GETTABLEKS                       R14 R13 K3 ["IsLink"]
       42 JUMPIFNOT                        R14 ; [+10]
       43 DUPTABLE                         R16 K6 [{["IsLink"] = False, ["Text"]}]
       44 SETTABLEKS                       R12 R16 K5 ["Text"]
       46 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
       48 MOVE                             R15 R3
       49 GETIMPORT                        R14 K9 [table.insert]
       51 CALL                             R14 2 0
       52 JUMP                             ; [+18]
       53 LENGTH                           R15 R3
       54 GETTABLE                         R14 R3 R15
       55 GETTABLEKS                       R16 R13 K5 ["Text"]
       57 MOVE                             R17 R12
       58 CONCAT                           R15 R16 R17
       59 SETTABLEKS                       R15 R14 K5 ["Text"]
       61 JUMP                             ; [+9]
       62 DUPTABLE                         R15 K6 [{["IsLink"] = False, ["Text"]}]
       63 SETTABLEKS                       R12 R15 K5 ["Text"]
       65 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       67 MOVE                             R14 R3
       68 GETIMPORT                        R13 K9 [table.insert]
       70 CALL                             R13 2 0
       71 LOADNIL                          R12
       72 LOADNIL                          R13
       73 JUMPIFNOT                        R8 ; [+28]
       74 JUMPIFEQKS                       R8 K10 [""] ; [+27]
       76 LOADNIL                          R14
       77 LOADNIL                          R15
       78 LOADNIL                          R16
       79 LOADK                            R19 K11 ["(https?://)(%a*)"]
       80 NAMECALL                         R17 R8 K0 ["find"]
       82 CALL                             R17 2 4
       83 MOVE                             R14 R17
       84 MOVE                             R15 R18
       85 MOVE                             R13 R19
       86 MOVE                             R16 R20
       87 JUMPIFNOT                        R14 ; [+1]
       88 JUMPIF                           R15 ; [+1]
       89 MOVE                             R16 R8
       90 JUMPIFEQKS                       R16 K10 [""] ; [+2]
       92 JUMPIF                           R16 ; [+3]
       93 GETTABLEKS                       R12 R2 K12 ["www"]
       95 JUMP                             ; [+8]
       96 GETIMPORT                        R17 K15 [string.lower]
       98 MOVE                             R18 R16
       99 CALL                             R17 1 1
      100 GETTABLE                         R12 R2 R17
      101 JUMP                             ; [+2]
      102 GETTABLEKS                       R12 R2 K12 ["www"]
      104 MOVE                             R16 R4
      105 MOVE                             R17 R5
      106 NAMECALL                         R14 R6 K2 ["sub"]
      108 CALL                             R14 3 1
      109 JUMPIFNOT                        R13 ; [+2]
      110 MOVE                             R15 R14
      111 JUMP                             ; [+3]
      112 LOADK                            R16 K16 ["https://"]
      113 MOVE                             R17 R14
      114 CONCAT                           R15 R16 R17
      115 JUMPIFNOT                        R12 ; [+20]
      116 DUPTABLE                         R16 K19 [{["IsLink"] = True, ["Text"], ["UrlInfo"]}]
      117 SETTABLEKS                       R14 R16 K5 ["Text"]
      119 DUPTABLE                         R17 K23 [{"Link", "Slug", "SubDomain"}]
      120 SETTABLEKS                       R15 R17 K20 ["Link"]
      122 SETTABLEKS                       R11 R17 K21 ["Slug"]
      124 SETTABLEKS                       R12 R17 K22 ["SubDomain"]
      126 SETTABLEKS                       R17 R16 K18 ["UrlInfo"]
      128 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
      130 MOVE                             R18 R3
      131 MOVE                             R19 R16
      132 GETIMPORT                        R17 K9 [table.insert]
      134 CALL                             R17 2 0
      135 JUMP                             ; [+37]
      136 LENGTH                           R16 R3
      137 LOADN                            R17 0
      138 JUMPIFNOTLT                      R17 R16 ; [+25]
      140 LENGTH                           R17 R3
      141 GETTABLE                         R16 R3 R17
      142 GETTABLEKS                       R17 R16 K3 ["IsLink"]
      144 JUMPIFNOT                        R17 ; [+10]
      145 DUPTABLE                         R19 K6 [{["IsLink"] = False, ["Text"]}]
      146 SETTABLEKS                       R14 R19 K5 ["Text"]
      148 FASTCALL2                        TABLE_INSERT R3 R19 ; [+4]
      150 MOVE                             R18 R3
      151 GETIMPORT                        R17 K9 [table.insert]
      153 CALL                             R17 2 0
      154 JUMP                             ; [+18]
      155 LENGTH                           R18 R3
      156 GETTABLE                         R17 R3 R18
      157 GETTABLEKS                       R19 R16 K5 ["Text"]
      159 MOVE                             R20 R14
      160 CONCAT                           R18 R19 R20
      161 SETTABLEKS                       R18 R17 K5 ["Text"]
      163 JUMP                             ; [+9]
      164 DUPTABLE                         R18 K6 [{["IsLink"] = False, ["Text"]}]
      165 SETTABLEKS                       R14 R18 K5 ["Text"]
      167 FASTCALL2                        TABLE_INSERT R3 R18 ; [+4]
      169 MOVE                             R17 R3
      170 GETIMPORT                        R16 K9 [table.insert]
      172 CALL                             R16 2 0
      173 FASTCALL1                        STRING_LEN R6 ; [+3]
      174 MOVE                             R17 R6
      175 GETIMPORT                        R16 K25 [string.len]
      177 CALL                             R16 1 1
      178 JUMPIFNOTEQ                      R5 R16 ; [+3]
      180 LOADK                            R6 K10 [""]
      181 JUMP                             ; [+8]
      182 ORK                              R20 R5 K26 [0]
      183 ADDK                             R19 R20 K1 [1]
      184 MOVE                             R20 R16
      185 NAMECALL                         R17 R6 K2 ["sub"]
      187 CALL                             R17 3 1
      188 MOVE                             R6 R17
      189 JUMPBACK                         ; [-181]
      190 FASTCALL1                        STRING_LEN R6 ; [+3]
      191 MOVE                             R8 R6
      192 GETIMPORT                        R7 K25 [string.len]
      194 CALL                             R7 1 1
      195 LOADN                            R8 0
      196 JUMPIFNOTLT                      R8 R7 ; [+38]
      198 LENGTH                           R8 R3
      199 LOADN                            R9 0
      200 JUMPIFNOTLT                      R9 R8 ; [+25]
      202 LENGTH                           R9 R3
      203 GETTABLE                         R8 R3 R9
      204 GETTABLEKS                       R9 R8 K3 ["IsLink"]
      206 JUMPIFNOT                        R9 ; [+10]
      207 DUPTABLE                         R11 K6 [{["IsLink"] = False, ["Text"]}]
      208 SETTABLEKS                       R6 R11 K5 ["Text"]
      210 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      212 MOVE                             R10 R3
      213 GETIMPORT                        R9 K9 [table.insert]
      215 CALL                             R9 2 0
      216 RETURN                           R3 1
      217 LENGTH                           R10 R3
      218 GETTABLE                         R9 R3 R10
      219 GETTABLEKS                       R11 R8 K5 ["Text"]
      221 MOVE                             R12 R6
      222 CONCAT                           R10 R11 R12
      223 SETTABLEKS                       R10 R9 K5 ["Text"]
      225 RETURN                           R3 1
      226 DUPTABLE                         R10 K6 [{["IsLink"] = False, ["Text"]}]
      227 SETTABLEKS                       R6 R10 K5 ["Text"]
      229 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
      231 MOVE                             R9 R3
      232 GETIMPORT                        R8 K9 [table.insert]
      234 CALL                             R8 2 0
      235 RETURN                           R3 1

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
