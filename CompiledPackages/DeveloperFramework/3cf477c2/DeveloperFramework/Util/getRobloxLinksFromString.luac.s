PROTO_0:
        0 DUPTABLE                         R1 K2 [{"IsLink", "Text"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["IsLink"]
        4 SETTABLEKS                       R0 R1 K1 ["Text"]
        6 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R2 R0
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R2 ; [+29]
        4 LENGTH                           R3 R0
        5 GETTABLE                         R2 R0 R3
        6 GETTABLEKS                       R3 R2 K0 ["IsLink"]
        8 JUMPIFNOT                        R3 ; [+14]
        9 DUPTABLE                         R6 K2 [{"IsLink", "Text"}]
       10 LOADB                            R7 0
       11 SETTABLEKS                       R7 R6 K0 ["IsLink"]
       13 SETTABLEKS                       R1 R6 K1 ["Text"]
       15 MOVE                             R5 R6
       16 FASTCALL2                        TABLE_INSERT R0 R5 ; [+4]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K5 [table.insert]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0
       23 LENGTH                           R4 R0
       24 GETTABLE                         R3 R0 R4
       25 GETTABLEKS                       R5 R2 K1 ["Text"]
       27 MOVE                             R6 R1
       28 CONCAT                           R4 R5 R6
       29 SETTABLEKS                       R4 R3 K1 ["Text"]
       31 RETURN                           R0 0
       32 DUPTABLE                         R5 K2 [{"IsLink", "Text"}]
       33 LOADB                            R6 0
       34 SETTABLEKS                       R6 R5 K0 ["IsLink"]
       36 SETTABLEKS                       R1 R5 K1 ["Text"]
       38 MOVE                             R4 R5
       39 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       41 MOVE                             R3 R0
       42 GETIMPORT                        R2 K5 [table.insert]
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+2]
        1 MOVE                             R2 R1
        2 JUMP                             ; [+1]
        3 GETUPVAL                         R2 0
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R4 1
        7 LOADN                            R5 1
        8 MOVE                             R6 R0
        9 JUMPIFNOT                        R4 ; [+199]
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
       25 JUMPIFNOT                        R4 ; [+183]
       26 JUMPIFNOT                        R5 ; [+182]
       27 JUMPIFEQKN                       R4 K1 [1] ; [+51]
       29 LOADN                            R14 1
       30 SUBK                             R15 R4 K1 [1]
       31 NAMECALL                         R12 R6 K2 ["sub"]
       33 CALL                             R12 3 1
       34 LENGTH                           R13 R3
       35 LOADN                            R14 0
       36 JUMPIFNOTLT                      R14 R13 ; [+29]
       38 LENGTH                           R14 R3
       39 GETTABLE                         R13 R3 R14
       40 GETTABLEKS                       R14 R13 K3 ["IsLink"]
       42 JUMPIFNOT                        R14 ; [+14]
       43 DUPTABLE                         R17 K5 [{"IsLink", "Text"}]
       44 LOADB                            R18 0
       45 SETTABLEKS                       R18 R17 K3 ["IsLink"]
       47 SETTABLEKS                       R12 R17 K4 ["Text"]
       49 MOVE                             R16 R17
       50 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
       52 MOVE                             R15 R3
       53 GETIMPORT                        R14 K8 [table.insert]
       55 CALL                             R14 2 0
       56 JUMP                             ; [+22]
       57 LENGTH                           R15 R3
       58 GETTABLE                         R14 R3 R15
       59 GETTABLEKS                       R16 R13 K4 ["Text"]
       61 MOVE                             R17 R12
       62 CONCAT                           R15 R16 R17
       63 SETTABLEKS                       R15 R14 K4 ["Text"]
       65 JUMP                             ; [+13]
       66 DUPTABLE                         R16 K5 [{"IsLink", "Text"}]
       67 LOADB                            R17 0
       68 SETTABLEKS                       R17 R16 K3 ["IsLink"]
       70 SETTABLEKS                       R12 R16 K4 ["Text"]
       72 MOVE                             R15 R16
       73 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       75 MOVE                             R14 R3
       76 GETIMPORT                        R13 K8 [table.insert]
       78 CALL                             R13 2 0
       79 LOADNIL                          R12
       80 LOADNIL                          R13
       81 JUMPIFNOT                        R8 ; [+28]
       82 JUMPIFEQKS                       R8 K9 [""] ; [+27]
       84 LOADNIL                          R14
       85 LOADNIL                          R15
       86 LOADNIL                          R16
       87 LOADK                            R19 K10 ["(https?://)(%a*)"]
       88 NAMECALL                         R17 R8 K0 ["find"]
       90 CALL                             R17 2 4
       91 MOVE                             R14 R17
       92 MOVE                             R15 R18
       93 MOVE                             R13 R19
       94 MOVE                             R16 R20
       95 JUMPIFNOT                        R14 ; [+1]
       96 JUMPIF                           R15 ; [+1]
       97 MOVE                             R16 R8
       98 JUMPIFEQKS                       R16 K9 [""] ; [+2]
      100 JUMPIF                           R16 ; [+3]
      101 GETTABLEKS                       R12 R2 K11 ["www"]
      103 JUMP                             ; [+8]
      104 GETIMPORT                        R17 K14 [string.lower]
      106 MOVE                             R18 R16
      107 CALL                             R17 1 1
      108 GETTABLE                         R12 R2 R17
      109 JUMP                             ; [+2]
      110 GETTABLEKS                       R12 R2 K11 ["www"]
      112 MOVE                             R16 R4
      113 MOVE                             R17 R5
      114 NAMECALL                         R14 R6 K2 ["sub"]
      116 CALL                             R14 3 1
      117 JUMPIFNOT                        R13 ; [+2]
      118 MOVE                             R15 R14
      119 JUMP                             ; [+3]
      120 LOADK                            R16 K15 ["https://"]
      121 MOVE                             R17 R14
      122 CONCAT                           R15 R16 R17
      123 JUMPIFNOT                        R12 ; [+23]
      124 DUPTABLE                         R16 K17 [{"IsLink", "Text", "UrlInfo"}]
      125 LOADB                            R17 1
      126 SETTABLEKS                       R17 R16 K3 ["IsLink"]
      128 SETTABLEKS                       R14 R16 K4 ["Text"]
      130 DUPTABLE                         R17 K21 [{"Link", "Slug", "SubDomain"}]
      131 SETTABLEKS                       R15 R17 K18 ["Link"]
      133 SETTABLEKS                       R11 R17 K19 ["Slug"]
      135 SETTABLEKS                       R12 R17 K20 ["SubDomain"]
      137 SETTABLEKS                       R17 R16 K16 ["UrlInfo"]
      139 FASTCALL2                        TABLE_INSERT R3 R16 ; [+5]
      141 MOVE                             R18 R3
      142 MOVE                             R19 R16
      143 GETIMPORT                        R17 K8 [table.insert]
      145 CALL                             R17 2 0
      146 JUMP                             ; [+45]
      147 LENGTH                           R16 R3
      148 LOADN                            R17 0
      149 JUMPIFNOTLT                      R17 R16 ; [+29]
      151 LENGTH                           R17 R3
      152 GETTABLE                         R16 R3 R17
      153 GETTABLEKS                       R17 R16 K3 ["IsLink"]
      155 JUMPIFNOT                        R17 ; [+14]
      156 DUPTABLE                         R20 K5 [{"IsLink", "Text"}]
      157 LOADB                            R21 0
      158 SETTABLEKS                       R21 R20 K3 ["IsLink"]
      160 SETTABLEKS                       R14 R20 K4 ["Text"]
      162 MOVE                             R19 R20
      163 FASTCALL2                        TABLE_INSERT R3 R19 ; [+4]
      165 MOVE                             R18 R3
      166 GETIMPORT                        R17 K8 [table.insert]
      168 CALL                             R17 2 0
      169 JUMP                             ; [+22]
      170 LENGTH                           R18 R3
      171 GETTABLE                         R17 R3 R18
      172 GETTABLEKS                       R19 R16 K4 ["Text"]
      174 MOVE                             R20 R14
      175 CONCAT                           R18 R19 R20
      176 SETTABLEKS                       R18 R17 K4 ["Text"]
      178 JUMP                             ; [+13]
      179 DUPTABLE                         R19 K5 [{"IsLink", "Text"}]
      180 LOADB                            R20 0
      181 SETTABLEKS                       R20 R19 K3 ["IsLink"]
      183 SETTABLEKS                       R14 R19 K4 ["Text"]
      185 MOVE                             R18 R19
      186 FASTCALL2                        TABLE_INSERT R3 R18 ; [+4]
      188 MOVE                             R17 R3
      189 GETIMPORT                        R16 K8 [table.insert]
      191 CALL                             R16 2 0
      192 FASTCALL1                        STRING_LEN R6 ; [+3]
      193 MOVE                             R17 R6
      194 GETIMPORT                        R16 K23 [string.len]
      196 CALL                             R16 1 1
      197 JUMPIFNOTEQ                      R5 R16 ; [+3]
      199 LOADK                            R6 K9 [""]
      200 JUMP                             ; [+8]
      201 ORK                              R20 R5 K24 [0]
      202 ADDK                             R19 R20 K1 [1]
      203 MOVE                             R20 R16
      204 NAMECALL                         R17 R6 K2 ["sub"]
      206 CALL                             R17 3 1
      207 MOVE                             R6 R17
      208 JUMPBACK                         ; [-200]
      209 FASTCALL1                        STRING_LEN R6 ; [+3]
      210 MOVE                             R8 R6
      211 GETIMPORT                        R7 K23 [string.len]
      213 CALL                             R7 1 1
      214 LOADN                            R8 0
      215 JUMPIFNOTLT                      R8 R7 ; [+47]
      217 MOVE                             R7 R6
      218 LENGTH                           R8 R3
      219 LOADN                            R9 0
      220 JUMPIFNOTLT                      R9 R8 ; [+29]
      222 LENGTH                           R9 R3
      223 GETTABLE                         R8 R3 R9
      224 GETTABLEKS                       R9 R8 K3 ["IsLink"]
      226 JUMPIFNOT                        R9 ; [+14]
      227 DUPTABLE                         R12 K5 [{"IsLink", "Text"}]
      228 LOADB                            R13 0
      229 SETTABLEKS                       R13 R12 K3 ["IsLink"]
      231 SETTABLEKS                       R7 R12 K4 ["Text"]
      233 MOVE                             R11 R12
      234 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      236 MOVE                             R10 R3
      237 GETIMPORT                        R9 K8 [table.insert]
      239 CALL                             R9 2 0
      240 RETURN                           R3 1
      241 LENGTH                           R10 R3
      242 GETTABLE                         R9 R3 R10
      243 GETTABLEKS                       R11 R8 K4 ["Text"]
      245 MOVE                             R12 R7
      246 CONCAT                           R10 R11 R12
      247 SETTABLEKS                       R10 R9 K4 ["Text"]
      249 RETURN                           R3 1
      250 DUPTABLE                         R11 K5 [{"IsLink", "Text"}]
      251 LOADB                            R12 0
      252 SETTABLEKS                       R12 R11 K3 ["IsLink"]
      254 SETTABLEKS                       R7 R11 K4 ["Text"]
      256 MOVE                             R10 R11
      257 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
      259 MOVE                             R9 R3
      260 GETIMPORT                        R8 K8 [table.insert]
      262 CALL                             R8 2 0
      263 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"create", "devforum", "talenthub", "www"}]
        2 LOADK                            R1 K0 ["create"]
        3 SETTABLEKS                       R1 R0 K0 ["create"]
        5 LOADK                            R1 K1 ["devforum"]
        6 SETTABLEKS                       R1 R0 K1 ["devforum"]
        8 LOADK                            R1 K5 ["talent"]
        9 SETTABLEKS                       R1 R0 K2 ["talenthub"]
       11 LOADK                            R1 K3 ["www"]
       12 SETTABLEKS                       R1 R0 K3 ["www"]
       14 NEWTABLE                         R1 0 9
       16 LOADK                            R2 K6 ["/"]
       17 LOADK                            R3 K7 ["?"]
       18 LOADK                            R4 K8 ["="]
       19 LOADK                            R5 K9 ["_"]
       20 LOADK                            R6 K10 ["-"]
       21 LOADK                            R7 K11 ["~"]
       22 LOADK                            R8 K12 ["%"]
       23 LOADK                            R9 K13 ["+"]
       24 LOADK                            R10 K14 ["&"]
       25 SETLIST                          R1 R2 9 [1]
       27 GETIMPORT                        R2 K17 [table.concat]
       29 MOVE                             R3 R1
       30 LOADK                            R4 K18 ["|%"]
       31 CALL                             R2 2 1
       32 LOADK                            R4 K19 ["(h*t*p*s?:*/*%a*)(.?)(roblox.com)([/+%w|%"]
       33 MOVE                             R5 R2
       34 LOADK                            R6 K20 ["]*)"]
       35 CONCAT                           R3 R4 R6
       36 DUPCLOSURE                       R4 K21 [PROTO_0]
       37 DUPCLOSURE                       R5 K22 [PROTO_1]
       38 DUPCLOSURE                       R6 K23 [PROTO_2]
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 RETURN                           R6 1
