PROTO_0:
        0 DUPTABLE                         R3 K13 [{[1], ["baseUrl"], ["operation"], ["pathParams"], ["queryParams"], ["cookies"], ["headers"], ["body"] = , ["formFields"], ["formEncoding"] = "multipart", ["problems"]}]
        1 GETTABLEKS                       R4 R0 K0 ["runtime"]
        3 SETTABLEKS                       R4 R3 K0 ["runtime"]
        5 GETTABLEKS                       R4 R0 K1 ["baseUrl"]
        7 SETTABLEKS                       R4 R3 K1 ["baseUrl"]
        9 SETTABLEKS                       R1 R3 K2 ["operation"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K3 ["pathParams"]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R3 K4 ["queryParams"]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K5 ["cookies"]
       23 NEWTABLE                         R4 0 0
       25 SETTABLEKS                       R4 R3 K6 ["headers"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K9 ["formFields"]
       31 NEWTABLE                         R4 0 0
       33 SETTABLEKS                       R4 R3 K12 ["problems"]
       35 GETUPVAL                         R4 0
       36 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       38 GETIMPORT                        R2 K15 [setmetatable]
       40 CALL                             R2 2 1
       41 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 LOADN                            R4 1
        5 LOADB                            R5 1
        6 CALL                             R1 4 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 1
       10 GETIMPORT                        R1 K4 [string.gsub]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 1
       14 LOADK                            R4 K5 ["{}"]
       15 CALL                             R1 3 1
       16 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+4]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1
        6 FASTCALL1                        TYPE R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K1 [type]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+7]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K3 ["isFormFile"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+1]
       19 RETURN                           R0 1
       20 NEWTABLE                         R1 0 0
       22 MOVE                             R2 R0
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETUPVAL                         R7 2
       27 MOVE                             R8 R6
       28 CALL                             R7 1 1
       29 SETTABLE                         R7 R1 R5
       30 FORGLOOP                         R2 2 ; [-5]
       32 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [string.find]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["[\r\n]"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_4:
        0 LOADB                            R1 1
        1 GETIMPORT                        R2 K1 [next]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFEQKNIL                     R2 ; [+6]
        7 GETTABLEN                        R2 R0 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TOSTRING R5 ; [+3]
        7 MOVE                             R10 R5
        8 GETIMPORT                        R9 K1 [tostring]
       10 CALL                             R9 1 1
       11 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       13 MOVE                             R8 R1
       14 GETIMPORT                        R7 K4 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 1 ; [-12]
       19 GETIMPORT                        R2 K6 [table.sort]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R5 R0 K0 ["json"]
        2 GETTABLEKS                       R5 R5 K1 ["encode"]
        4 MOVE                             R6 R2
        5 FASTPCALL                        pcall 2 ; [+2]
        6 GETIMPORT                        R4 K3 [pcall]
        8 CALL                             R4 2 2
        9 JUMPIF                           R4 ; [+14]
       10 LOADK                            R8 K4 ["\"%*\" > Could not encode as JSON: %*"]
       11 MOVE                             R10 R1
       12 MOVE                             R11 R5
       13 NAMECALL                         R8 R8 K5 ["format"]
       15 CALL                             R8 3 1
       16 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       18 MOVE                             R7 R3
       19 GETIMPORT                        R6 K8 [table.insert]
       21 CALL                             R6 2 0
       22 LOADNIL                          R6
       23 RETURN                           R6 1
       24 GETIMPORT                        R7 K11 [string.find]
       26 MOVE                             R8 R5
       27 GETUPVAL                         R9 0
       28 LOADN                            R10 1
       29 LOADB                            R11 1
       30 CALL                             R7 4 1
       31 JUMPIFNOTEQKNIL                  R7 ; [+3]
       33 MOVE                             R6 R5
       34 RETURN                           R6 1
       35 GETIMPORT                        R6 K13 [string.gsub]
       37 MOVE                             R7 R5
       38 GETUPVAL                         R8 1
       39 LOADK                            R9 K14 ["{}"]
       40 CALL                             R6 3 1
       41 RETURN                           R6 1

PROTO_7:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+18]
        7 GETUPVAL                         R1 0
        8 JUMPIF                           R1 ; [+13]
        9 LOADB                            R1 1
       10 SETUPVAL                         R1 0
       11 GETUPVAL                         R2 1
       12 LOADK                            R3 K3 ["\"%*\" > Expected scalar items, got a nested array or object"]
       13 GETUPVAL                         R5 2
       14 NAMECALL                         R3 R3 K4 ["format"]
       16 CALL                             R3 2 1
       17 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       19 GETIMPORT                        R1 K6 [table.insert]
       21 CALL                             R1 2 0
       22 LOADK                            R1 K7 [""]
       23 RETURN                           R1 1
       24 GETUPVAL                         R1 3
       25 MOVE                             R2 R0
       26 CALL                             R1 1 -1
       27 RETURN                           R1 -1

PROTO_8:
        0 LOADB                            R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CLOSEUPVALS                      R2
        7 RETURN                           R3 1

PROTO_9:
        0 NEWTABLE                         R2 0 0
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K2 ["table"] ; [+10]
        9 MOVE                             R4 R2
       10 MOVE                             R5 R1
       11 MOVE                             R6 R0
       12 CALL                             R5 1 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R3 K4 [table.insert]
       16 CALL                             R3 -1 0
       17 RETURN                           R2 1
       18 LOADB                            R3 1
       19 GETIMPORT                        R4 K6 [next]
       21 MOVE                             R5 R0
       22 CALL                             R4 1 1
       23 JUMPIFEQKNIL                     R4 ; [+6]
       25 GETTABLEN                        R4 R0 1
       26 JUMPIFNOTEQKNIL                  R4 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 JUMPIFNOT                        R3 ; [+15]
       31 MOVE                             R3 R0
       32 LOADNIL                          R4
       33 LOADNIL                          R5
       34 FORGPREP                         R3
       35 MOVE                             R9 R2
       36 MOVE                             R10 R1
       37 MOVE                             R11 R7
       38 CALL                             R10 1 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R8 K4 [table.insert]
       42 CALL                             R8 -1 0
       43 FORGLOOP                         R3 2 ; [-9]
       45 RETURN                           R2 1
       46 GETUPVAL                         R3 0
       47 MOVE                             R4 R0
       48 CALL                             R3 1 3
       49 FORGPREP                         R3
       50 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       52 MOVE                             R9 R2
       53 MOVE                             R10 R7
       54 GETIMPORT                        R8 K4 [table.insert]
       56 CALL                             R8 2 0
       57 MOVE                             R9 R2
       58 MOVE                             R10 R1
       59 GETTABLE                         R11 R0 R7
       60 CALL                             R10 1 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R8 K4 [table.insert]
       64 CALL                             R8 -1 0
       65 FORGLOOP                         R3 2 ; [-16]
       67 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K2 [{"key", "value"}]
        2 SETTABLEKS                       R0 R4 K0 ["key"]
        4 SETTABLEKS                       R1 R4 K1 ["value"]
        6 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
        8 GETIMPORT                        R2 K5 [table.insert]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_11:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+16]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 1
       11 DUPTABLE                         R5 K5 [{"key", "value"}]
       12 SETTABLEKS                       R0 R5 K3 ["key"]
       14 SETTABLEKS                       R2 R5 K4 ["value"]
       16 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       18 GETIMPORT                        R3 K7 [table.insert]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0
       22 LOADB                            R2 1
       23 GETIMPORT                        R3 K9 [next]
       25 MOVE                             R4 R1
       26 CALL                             R3 1 1
       27 JUMPIFEQKNIL                     R3 ; [+6]
       29 GETTABLEN                        R3 R1 1
       30 JUMPIFNOTEQKNIL                  R3 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 JUMPIFNOT                        R2 ; [+15]
       35 MOVE                             R2 R1
       36 LOADNIL                          R3
       37 LOADNIL                          R4
       38 FORGPREP                         R2
       39 GETUPVAL                         R7 2
       40 LOADK                            R8 K10 ["%*[]"]
       41 MOVE                             R10 R0
       42 NAMECALL                         R8 R8 K11 ["format"]
       44 CALL                             R8 2 1
       45 MOVE                             R9 R6
       46 CALL                             R7 2 0
       47 FORGLOOP                         R2 2 ; [-9]
       49 RETURN                           R0 0
       50 GETUPVAL                         R2 3
       51 MOVE                             R3 R1
       52 CALL                             R2 1 3
       53 FORGPREP                         R2
       54 GETUPVAL                         R7 2
       55 LOADK                            R8 K12 ["%*[%*]"]
       56 MOVE                             R10 R0
       57 MOVE                             R11 R6
       58 NAMECALL                         R8 R8 K11 ["format"]
       60 CALL                             R8 3 1
       61 GETTABLE                         R9 R1 R6
       62 CALL                             R7 2 0
       63 FORGLOOP                         R2 2 ; [-10]
       65 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R5 0 0
        2 LOADB                            R7 0
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          REF R7
        5 CAPTURE                          VAL R4
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U0
        8 CLOSEUPVALS                      R7
        9 NEWCLOSURE                       R7 P1
       10 CAPTURE                          VAL R5
       11 JUMPIFNOTEQKS                    R3 K0 ["json"] ; [+57]
       13 GETTABLEKS                       R11 R0 K0 ["json"]
       15 GETTABLEKS                       R11 R11 K1 ["encode"]
       17 MOVE                             R12 R2
       18 FASTPCALL                        pcall 2 ; [+2]
       19 GETIMPORT                        R10 K3 [pcall]
       21 CALL                             R10 2 2
       22 JUMPIF                           R10 ; [+14]
       23 LOADK                            R14 K4 ["\"%*\" > Could not encode as JSON: %*"]
       24 MOVE                             R16 R1
       25 MOVE                             R17 R11
       26 NAMECALL                         R14 R14 K5 ["format"]
       28 CALL                             R14 3 1
       29 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       31 MOVE                             R13 R4
       32 GETIMPORT                        R12 K8 [table.insert]
       34 CALL                             R12 2 0
       35 LOADNIL                          R8
       36 JUMP                             ; [+18]
       37 GETIMPORT                        R12 K11 [string.find]
       39 MOVE                             R13 R11
       40 GETUPVAL                         R14 1
       41 LOADN                            R15 1
       42 LOADB                            R16 1
       43 CALL                             R12 4 1
       44 JUMPIFNOTEQKNIL                  R12 ; [+3]
       46 MOVE                             R8 R11
       47 JUMP                             ; [+7]
       48 GETIMPORT                        R12 K13 [string.gsub]
       50 MOVE                             R13 R11
       51 GETUPVAL                         R14 2
       52 LOADK                            R15 K14 ["{}"]
       53 CALL                             R12 3 1
       54 MOVE                             R8 R12
       55 JUMPIFEQKNIL                     R8 ; [+12]
       57 DUPTABLE                         R11 K17 [{"key", "value"}]
       58 SETTABLEKS                       R1 R11 K15 ["key"]
       60 SETTABLEKS                       R8 R11 K16 ["value"]
       62 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       64 MOVE                             R10 R5
       65 GETIMPORT                        R9 K8 [table.insert]
       67 CALL                             R9 2 0
       68 RETURN                           R5 1
       69 GETUPVAL                         R8 3
       70 MOVE                             R9 R2
       71 CALL                             R8 1 1
       72 MOVE                             R2 R8
       73 FASTCALL1                        TYPE R2 ; [+3]
       74 MOVE                             R9 R2
       75 GETIMPORT                        R8 K19 [type]
       77 CALL                             R8 1 1
       78 JUMPIFEQKS                       R8 K6 ["table"] ; [+16]
       80 MOVE                             R8 R6
       81 MOVE                             R9 R2
       82 CALL                             R8 1 1
       83 DUPTABLE                         R11 K17 [{"key", "value"}]
       84 SETTABLEKS                       R1 R11 K15 ["key"]
       86 SETTABLEKS                       R8 R11 K16 ["value"]
       88 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       90 MOVE                             R10 R5
       91 GETIMPORT                        R9 K8 [table.insert]
       93 CALL                             R9 2 0
       94 RETURN                           R5 1
       95 LOADB                            R8 1
       96 GETIMPORT                        R10 K21 [next]
       98 MOVE                             R11 R2
       99 CALL                             R10 1 1
      100 JUMPIFEQKNIL                     R10 ; [+6]
      102 GETTABLEN                        R10 R2 1
      103 JUMPIFNOTEQKNIL                  R10 ; [+2]
      105 LOADB                            R8 0 +1
      106 LOADB                            R8 1
      107 JUMPIFNOT                        R8 ; [+62]
      108 JUMPIFEQKNIL                     R3 ; [+4]
      110 GETUPVAL                         R9 4
      111 GETTABLE                         R8 R9 R3
      112 JUMP                             ; [+1]
      113 LOADNIL                          R8
      114 JUMPIFNOTEQKNIL                  R8 ; [+22]
      116 MOVE                             R9 R2
      117 LOADNIL                          R10
      118 LOADNIL                          R11
      119 FORGPREP                         R9
      120 MOVE                             R14 R6
      121 MOVE                             R15 R13
      122 CALL                             R14 1 1
      123 DUPTABLE                         R17 K17 [{"key", "value"}]
      124 SETTABLEKS                       R1 R17 K15 ["key"]
      126 SETTABLEKS                       R14 R17 K16 ["value"]
      128 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
      130 MOVE                             R16 R5
      131 GETIMPORT                        R15 K8 [table.insert]
      133 CALL                             R15 2 0
      134 FORGLOOP                         R9 2 ; [-15]
      136 RETURN                           R5 1
      137 NEWTABLE                         R9 0 0
      139 MOVE                             R10 R2
      140 LOADNIL                          R11
      141 LOADNIL                          R12
      142 FORGPREP                         R10
      143 MOVE                             R16 R9
      144 MOVE                             R17 R6
      145 MOVE                             R18 R14
      146 CALL                             R17 1 -1
      147 FASTCALL                         TABLE_INSERT ; [+2]
      148 GETIMPORT                        R15 K8 [table.insert]
      150 CALL                             R15 -1 0
      151 FORGLOOP                         R10 2 ; [-9]
      153 GETIMPORT                        R10 K23 [table.concat]
      155 MOVE                             R11 R9
      156 MOVE                             R12 R8
      157 CALL                             R10 2 1
      158 DUPTABLE                         R13 K17 [{"key", "value"}]
      159 SETTABLEKS                       R1 R13 K15 ["key"]
      161 SETTABLEKS                       R10 R13 K16 ["value"]
      163 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      165 MOVE                             R12 R5
      166 GETIMPORT                        R11 K8 [table.insert]
      168 CALL                             R11 2 0
      169 RETURN                           R5 1
      170 JUMPIFNOTEQKS                    R3 K24 ["deepObject"] ; [+22]
      172 NEWCLOSURE                       R8 P2
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R5
      175 CAPTURE                          VAL R8
      176 CAPTURE                          UPVAL U5
      177 GETUPVAL                         R9 5
      178 MOVE                             R10 R2
      179 CALL                             R9 1 3
      180 FORGPREP                         R9
      181 MOVE                             R14 R8
      182 LOADK                            R15 K25 ["%*[%*]"]
      183 MOVE                             R17 R1
      184 MOVE                             R18 R13
      185 NAMECALL                         R15 R15 K5 ["format"]
      187 CALL                             R15 3 1
      188 GETTABLE                         R16 R2 R13
      189 CALL                             R14 2 0
      190 FORGLOOP                         R9 2 ; [-10]
      192 RETURN                           R5 1
      193 JUMPIFEQKNIL                     R3 ; [+4]
      195 GETUPVAL                         R9 4
      196 GETTABLE                         R8 R9 R3
      197 JUMP                             ; [+1]
      198 LOADNIL                          R8
      199 JUMPIFNOTEQKNIL                  R8 ; [+22]
      201 GETUPVAL                         R9 5
      202 MOVE                             R10 R2
      203 CALL                             R9 1 3
      204 FORGPREP                         R9
      205 MOVE                             R14 R6
      206 GETTABLE                         R15 R2 R13
      207 CALL                             R14 1 1
      208 DUPTABLE                         R17 K17 [{"key", "value"}]
      209 SETTABLEKS                       R13 R17 K15 ["key"]
      211 SETTABLEKS                       R14 R17 K16 ["value"]
      213 FASTCALL2                        TABLE_INSERT R5 R17 ; [+4]
      215 MOVE                             R16 R5
      216 GETIMPORT                        R15 K8 [table.insert]
      218 CALL                             R15 2 0
      219 FORGLOOP                         R9 2 ; [-15]
      221 RETURN                           R5 1
      222 NEWTABLE                         R9 0 0
      224 GETUPVAL                         R10 5
      225 MOVE                             R11 R2
      226 CALL                             R10 1 3
      227 FORGPREP                         R10
      228 FASTCALL2                        TABLE_INSERT R9 R14 ; [+5]
      230 MOVE                             R16 R9
      231 MOVE                             R17 R14
      232 GETIMPORT                        R15 K8 [table.insert]
      234 CALL                             R15 2 0
      235 MOVE                             R16 R9
      236 MOVE                             R17 R6
      237 GETTABLE                         R18 R2 R14
      238 CALL                             R17 1 -1
      239 FASTCALL                         TABLE_INSERT ; [+2]
      240 GETIMPORT                        R15 K8 [table.insert]
      242 CALL                             R15 -1 0
      243 FORGLOOP                         R10 2 ; [-16]
      245 GETIMPORT                        R10 K23 [table.concat]
      247 MOVE                             R11 R9
      248 MOVE                             R12 R8
      249 CALL                             R10 2 1
      250 DUPTABLE                         R13 K17 [{"key", "value"}]
      251 SETTABLEKS                       R1 R13 K15 ["key"]
      253 SETTABLEKS                       R10 R13 K16 ["value"]
      255 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      257 MOVE                             R12 R5
      258 GETIMPORT                        R11 K8 [table.insert]
      260 CALL                             R11 2 0
      261 RETURN                           R5 1

PROTO_13:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 RETURN                           R0 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R6 R0 K0 ["runtime"]
        6 MOVE                             R7 R1
        7 MOVE                             R8 R2
        8 MOVE                             R9 R3
        9 GETTABLEKS                       R10 R0 K1 ["problems"]
       11 CALL                             R5 5 3
       12 FORGPREP                         R5
       13 GETTABLEKS                       R11 R0 K2 ["queryParams"]
       15 DUPTABLE                         R12 K6 [{"key", "value", "allowReserved"}]
       16 GETTABLEKS                       R13 R9 K3 ["key"]
       18 SETTABLEKS                       R13 R12 K3 ["key"]
       20 GETTABLEKS                       R13 R9 K4 ["value"]
       22 SETTABLEKS                       R13 R12 K4 ["value"]
       24 JUMPIFEQKB                       R4 TRUE ; [+2]
       26 LOADB                            R13 0 +1
       27 LOADB                            R13 1
       28 SETTABLEKS                       R13 R12 K5 ["allowReserved"]
       30 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       32 GETIMPORT                        R10 K9 [table.insert]
       34 CALL                             R10 2 0
       35 FORGLOOP                         R5 2 ; [-23]
       37 RETURN                           R0 1

PROTO_14:
        0 JUMPIFNOTEQKNIL                  R2 ; [+14]
        2 GETTABLEKS                       R4 R0 K0 ["problems"]
        4 LOADK                            R5 K1 ["\"%*\" > Expected a path segment, got nil"]
        5 MOVE                             R7 R1
        6 NAMECALL                         R5 R5 K2 ["format"]
        8 CALL                             R5 2 1
        9 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       11 GETIMPORT                        R3 K5 [table.insert]
       13 CALL                             R3 2 0
       14 RETURN                           R0 1
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R2
       17 CALL                             R3 1 1
       18 MOVE                             R2 R3
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R2
       21 GETTABLEKS                       R6 R0 K0 ["problems"]
       23 LOADB                            R7 0
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          REF R7
       26 CAPTURE                          VAL R6
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U2
       29 CLOSEUPVALS                      R7
       30 CALL                             R3 2 1
       31 MOVE                             R4 R3
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETUPVAL                         R9 3
       36 MOVE                             R10 R8
       37 CALL                             R9 1 1
       38 SETTABLE                         R9 R3 R7
       39 FORGLOOP                         R4 2 ; [-5]
       41 GETIMPORT                        R4 K7 [table.concat]
       43 MOVE                             R5 R3
       44 LOADK                            R6 K8 [","]
       45 CALL                             R4 2 1
       46 JUMPIFEQKS                       R4 K9 [""] ; [+5]
       48 JUMPIFEQKS                       R4 K10 ["."] ; [+3]
       50 JUMPIFNOTEQKS                    R4 K11 [".."] ; [+14]
       52 GETTABLEKS                       R6 R0 K0 ["problems"]
       54 LOADK                            R7 K12 ["\"%*\" > Expected a path segment, got \"%*\""]
       55 MOVE                             R9 R1
       56 MOVE                             R10 R4
       57 NAMECALL                         R7 R7 K2 ["format"]
       59 CALL                             R7 3 1
       60 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       62 GETIMPORT                        R5 K5 [table.insert]
       64 CALL                             R5 2 0
       65 GETTABLEKS                       R6 R0 K13 ["pathParams"]
       67 DUPTABLE                         R7 K16 [{"key", "value"}]
       68 SETTABLEKS                       R1 R7 K14 ["key"]
       70 SETTABLEKS                       R4 R7 K15 ["value"]
       72 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       74 GETIMPORT                        R5 K5 [table.insert]
       76 CALL                             R5 2 0
       77 RETURN                           R0 1

PROTO_15:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 RETURN                           R0 1
        3 LOADNIL                          R4
        4 JUMPIFNOTEQKS                    R3 K0 ["json"] ; [+48]
        6 GETTABLEKS                       R5 R0 K1 ["runtime"]
        8 GETTABLEKS                       R6 R0 K2 ["problems"]
       10 GETTABLEKS                       R8 R5 K0 ["json"]
       12 GETTABLEKS                       R8 R8 K3 ["encode"]
       14 MOVE                             R9 R2
       15 FASTPCALL                        pcall 2 ; [+2]
       16 GETIMPORT                        R7 K5 [pcall]
       18 CALL                             R7 2 2
       19 JUMPIF                           R7 ; [+14]
       20 LOADK                            R11 K6 ["\"%*\" > Could not encode as JSON: %*"]
       21 MOVE                             R13 R1
       22 MOVE                             R14 R8
       23 NAMECALL                         R11 R11 K7 ["format"]
       25 CALL                             R11 3 1
       26 FASTCALL2                        TABLE_INSERT R6 R11 ; [+4]
       28 MOVE                             R10 R6
       29 GETIMPORT                        R9 K10 [table.insert]
       31 CALL                             R9 2 0
       32 LOADNIL                          R4
       33 JUMP                             ; [+38]
       34 GETIMPORT                        R9 K13 [string.find]
       36 MOVE                             R10 R8
       37 GETUPVAL                         R11 0
       38 LOADN                            R12 1
       39 LOADB                            R13 1
       40 CALL                             R9 4 1
       41 JUMPIFNOTEQKNIL                  R9 ; [+3]
       43 MOVE                             R4 R8
       44 JUMP                             ; [+27]
       45 GETIMPORT                        R9 K15 [string.gsub]
       47 MOVE                             R10 R8
       48 GETUPVAL                         R11 1
       49 LOADK                            R12 K16 ["{}"]
       50 CALL                             R9 3 1
       51 MOVE                             R4 R9
       52 JUMP                             ; [+19]
       53 GETIMPORT                        R5 K18 [table.concat]
       55 GETUPVAL                         R6 2
       56 GETUPVAL                         R7 3
       57 MOVE                             R8 R2
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R9 R0 K2 ["problems"]
       61 LOADB                            R10 0
       62 NEWCLOSURE                       R8 P0
       63 CAPTURE                          REF R10
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U4
       67 CLOSEUPVALS                      R10
       68 CALL                             R6 2 1
       69 LOADK                            R7 K19 [","]
       70 CALL                             R5 2 1
       71 MOVE                             R4 R5
       72 JUMPIFNOTEQKNIL                  R4 ; [+2]
       74 RETURN                           R0 1
       75 GETIMPORT                        R6 K13 [string.find]
       77 MOVE                             R7 R1
       78 LOADK                            R8 K20 ["[\r\n]"]
       79 CALL                             R6 2 1
       80 JUMPIFNOTEQKNIL                  R6 ; [+2]
       82 LOADB                            R5 0 +1
       83 LOADB                            R5 1
       84 JUMPIF                           R5 ; [+10]
       85 GETIMPORT                        R7 K13 [string.find]
       87 MOVE                             R8 R4
       88 LOADK                            R9 K20 ["[\r\n]"]
       89 CALL                             R7 2 1
       90 JUMPIFNOTEQKNIL                  R7 ; [+2]
       92 LOADB                            R5 0 +1
       93 LOADB                            R5 1
       94 JUMPIFNOT                        R5 ; [+13]
       95 GETTABLEKS                       R6 R0 K2 ["problems"]
       97 LOADK                            R7 K21 ["\"%*\" > Header must not contain a line break"]
       98 MOVE                             R9 R1
       99 NAMECALL                         R7 R7 K7 ["format"]
      101 CALL                             R7 2 1
      102 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
      104 GETIMPORT                        R5 K10 [table.insert]
      106 CALL                             R5 2 0
      107 RETURN                           R0 1
      108 GETTABLEKS                       R5 R0 K22 ["headers"]
      110 SETTABLE                         R4 R5 R1
      111 RETURN                           R0 1

PROTO_16:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 RETURN                           R0 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R5 R0 K0 ["runtime"]
        6 MOVE                             R6 R1
        7 MOVE                             R7 R2
        8 MOVE                             R8 R3
        9 GETTABLEKS                       R9 R0 K1 ["problems"]
       11 CALL                             R4 5 3
       12 FORGPREP                         R4
       13 GETIMPORT                        R9 K4 [string.find]
       15 GETTABLEKS                       R10 R8 K5 ["key"]
       17 LOADK                            R11 K6 ["[%c%s;,=\"\\]"]
       18 CALL                             R9 2 1
       19 JUMPIFEQKNIL                     R9 ; [+16]
       21 GETTABLEKS                       R10 R0 K1 ["problems"]
       23 LOADK                            R11 K7 ["\"%*\" > Cookie name \"%*\" has characters a cookie name cannot hold"]
       24 MOVE                             R13 R1
       25 GETTABLEKS                       R14 R8 K5 ["key"]
       27 NAMECALL                         R11 R11 K8 ["format"]
       29 CALL                             R11 3 1
       30 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       32 GETIMPORT                        R9 K11 [table.insert]
       34 CALL                             R9 2 0
       35 JUMP                             ; [+37]
       36 GETIMPORT                        R9 K4 [string.find]
       38 GETTABLEKS                       R10 R8 K12 ["value"]
       40 LOADK                            R11 K13 ["%c"]
       41 CALL                             R9 2 1
       42 JUMPIFEQKNIL                     R9 ; [+14]
       44 GETTABLEKS                       R10 R0 K1 ["problems"]
       46 LOADK                            R11 K14 ["\"%*\" > Cookie value must not contain control characters"]
       47 MOVE                             R13 R1
       48 NAMECALL                         R11 R11 K8 ["format"]
       50 CALL                             R11 2 1
       51 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       53 GETIMPORT                        R9 K11 [table.insert]
       55 CALL                             R9 2 0
       56 JUMP                             ; [+16]
       57 GETTABLEKS                       R10 R0 K15 ["cookies"]
       59 DUPTABLE                         R11 K16 [{"key", "value"}]
       60 GETTABLEKS                       R12 R8 K5 ["key"]
       62 SETTABLEKS                       R12 R11 K5 ["key"]
       64 GETTABLEKS                       R12 R8 K12 ["value"]
       66 SETTABLEKS                       R12 R11 K12 ["value"]
       68 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       70 GETIMPORT                        R9 K11 [table.insert]
       72 CALL                             R9 2 0
       73 FORGLOOP                         R4 2 ; [-61]
       75 RETURN                           R0 1

PROTO_17:
        0 JUMPIFEQKNIL                     R2 ; [+16]
        2 GETTABLEKS                       R4 R3 K0 ["validate"]
        4 JUMPIFEQKNIL                     R4 ; [+12]
        6 GETTABLEKS                       R4 R3 K0 ["validate"]
        8 MOVE                             R5 R2
        9 GETTABLEKS                       R6 R0 K1 ["problems"]
       11 LOADK                            R7 K2 ["\"%*\" > "]
       12 MOVE                             R9 R1
       13 NAMECALL                         R7 R7 K3 ["format"]
       15 CALL                             R7 2 1
       16 CALL                             R4 3 0
       17 RETURN                           R0 1

PROTO_18:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R1
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETUPVAL                         R9 0
        7 MOVE                             R10 R0
        8 GETTABLEKS                       R11 R8 K0 ["name"]
       10 GETTABLEKS                       R12 R8 K1 ["value"]
       12 LOADNIL                          R13
       13 MOVE                             R14 R2
       14 CALL                             R9 5 3
       15 FORGPREP                         R9
       16 GETIMPORT                        R14 K4 [string.gsub]
       18 GETUPVAL                         R15 1
       19 GETTABLEKS                       R16 R13 K5 ["key"]
       21 CALL                             R15 1 1
       22 LOADK                            R16 K6 ["%%20"]
       23 LOADK                            R17 K7 ["+"]
       24 CALL                             R14 3 1
       25 GETIMPORT                        R15 K4 [string.gsub]
       27 GETUPVAL                         R16 1
       28 GETTABLEKS                       R17 R13 K1 ["value"]
       30 CALL                             R16 1 1
       31 LOADK                            R17 K6 ["%%20"]
       32 LOADK                            R18 K7 ["+"]
       33 CALL                             R15 3 1
       34 LOADK                            R18 K8 ["%*=%*"]
       35 MOVE                             R20 R14
       36 MOVE                             R21 R15
       37 NAMECALL                         R18 R18 K9 ["format"]
       39 CALL                             R18 3 1
       40 FASTCALL2                        TABLE_INSERT R3 R18 ; [+4]
       42 MOVE                             R17 R3
       43 GETIMPORT                        R16 K12 [table.insert]
       45 CALL                             R16 2 0
       46 FORGLOOP                         R9 2 ; [-31]
       48 FORGLOOP                         R4 2 ; [-43]
       50 GETIMPORT                        R4 K14 [table.concat]
       52 MOVE                             R5 R3
       53 LOADK                            R6 K15 ["&"]
       54 CALL                             R4 2 -1
       55 RETURN                           R4 -1

PROTO_19:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 RETURN                           R0 1
        3 GETTABLEKS                       R4 R1 K0 ["validate"]
        5 JUMPIFEQKNIL                     R4 ; [+8]
        7 GETTABLEKS                       R4 R1 K0 ["validate"]
        9 MOVE                             R5 R2
       10 GETTABLEKS                       R6 R0 K1 ["problems"]
       12 LOADK                            R7 K2 ["body > "]
       13 CALL                             R4 3 0
       14 GETTABLEKS                       R4 R1 K3 ["toRequest"]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 JUMPIFNOTEQKNIL                  R4 ; [+2]
       20 RETURN                           R0 1
       21 FASTCALL1                        TYPE R4 ; [+3]
       22 MOVE                             R6 R4
       23 GETIMPORT                        R5 K5 [type]
       25 CALL                             R5 1 1
       26 JUMPIFNOTEQKS                    R5 K6 ["table"] ; [+37]
       28 JUMPIFNOTEQKS                    R3 K7 ["application/x-www-form-urlencoded"] ; [+35]
       30 NEWTABLE                         R5 0 0
       32 GETUPVAL                         R6 0
       33 MOVE                             R7 R4
       34 CALL                             R6 1 3
       35 FORGPREP                         R6
       36 DUPTABLE                         R13 K10 [{"name", "value"}]
       37 SETTABLEKS                       R10 R13 K8 ["name"]
       39 GETTABLE                         R14 R4 R10
       40 SETTABLEKS                       R14 R13 K9 ["value"]
       42 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       44 MOVE                             R12 R5
       45 GETIMPORT                        R11 K12 [table.insert]
       47 CALL                             R11 2 0
       48 FORGLOOP                         R6 2 ; [-13]
       50 GETUPVAL                         R6 1
       51 GETTABLEKS                       R7 R0 K13 ["runtime"]
       53 MOVE                             R8 R5
       54 GETTABLEKS                       R9 R0 K1 ["problems"]
       56 CALL                             R6 3 1
       57 SETTABLEKS                       R6 R0 K14 ["body"]
       59 GETTABLEKS                       R6 R0 K15 ["headers"]
       61 SETTABLEKS                       R3 R6 K16 ["Content-Type"]
       63 RETURN                           R0 1
       64 GETUPVAL                         R5 2
       65 JUMPIFNOTEQ                      R4 R5 ; [+14]
       67 JUMPIFNOTEQKS                    R3 K7 ["application/x-www-form-urlencoded"] ; [+3]
       69 LOADK                            R5 K17 [""]
       70 JUMP                             ; [+1]
       71 LOADK                            R5 K18 ["{}"]
       72 SETTABLEKS                       R5 R0 K14 ["body"]
       74 GETTABLEKS                       R5 R0 K15 ["headers"]
       76 ORK                              R6 R3 K19 ["application/json"]
       77 SETTABLEKS                       R6 R5 K16 ["Content-Type"]
       79 RETURN                           R0 1
       80 FASTCALL1                        TYPE R4 ; [+3]
       81 MOVE                             R6 R4
       82 GETIMPORT                        R5 K5 [type]
       84 CALL                             R5 1 1
       85 JUMPIFEQKS                       R5 K6 ["table"] ; [+16]
       87 FASTCALL1                        TYPE R4 ; [+3]
       88 MOVE                             R6 R4
       89 GETIMPORT                        R5 K5 [type]
       91 CALL                             R5 1 1
       92 JUMPIFEQKS                       R5 K20 ["buffer"] ; [+62]
       94 JUMPIFEQKNIL                     R3 ; [+7]
       96 GETUPVAL                         R5 3
       97 GETTABLEKS                       R5 R5 K21 ["isJsonType"]
       99 MOVE                             R6 R3
      100 CALL                             R5 1 1
      101 JUMPIFNOT                        R5 ; [+53]
      102 GETTABLEKS                       R6 R0 K13 ["runtime"]
      104 GETTABLEKS                       R7 R0 K1 ["problems"]
      106 GETTABLEKS                       R9 R6 K22 ["json"]
      108 GETTABLEKS                       R9 R9 K23 ["encode"]
      110 MOVE                             R10 R4
      111 FASTPCALL                        pcall 2 ; [+2]
      112 GETIMPORT                        R8 K25 [pcall]
      114 CALL                             R8 2 2
      115 JUMPIF                           R8 ; [+13]
      116 LOADK                            R12 K26 ["\"body\" > Could not encode as JSON: %*"]
      117 MOVE                             R14 R9
      118 NAMECALL                         R12 R12 K27 ["format"]
      120 CALL                             R12 2 1
      121 FASTCALL2                        TABLE_INSERT R7 R12 ; [+4]
      123 MOVE                             R11 R7
      124 GETIMPORT                        R10 K12 [table.insert]
      126 CALL                             R10 2 0
      127 LOADNIL                          R5
      128 JUMP                             ; [+18]
      129 GETIMPORT                        R10 K30 [string.find]
      131 MOVE                             R11 R9
      132 GETUPVAL                         R12 2
      133 LOADN                            R13 1
      134 LOADB                            R14 1
      135 CALL                             R10 4 1
      136 JUMPIFNOTEQKNIL                  R10 ; [+3]
      138 MOVE                             R5 R9
      139 JUMP                             ; [+7]
      140 GETIMPORT                        R10 K32 [string.gsub]
      142 MOVE                             R11 R9
      143 GETUPVAL                         R12 4
      144 LOADK                            R13 K18 ["{}"]
      145 CALL                             R10 3 1
      146 MOVE                             R5 R10
      147 SETTABLEKS                       R5 R0 K14 ["body"]
      149 GETTABLEKS                       R5 R0 K15 ["headers"]
      151 ORK                              R6 R3 K19 ["application/json"]
      152 SETTABLEKS                       R6 R5 K16 ["Content-Type"]
      154 RETURN                           R0 1
      155 FASTCALL1                        TYPE R4 ; [+3]
      156 MOVE                             R6 R4
      157 GETIMPORT                        R5 K5 [type]
      159 CALL                             R5 1 1
      160 JUMPIFNOTEQKS                    R5 K20 ["buffer"] ; [+14]
      162 GETIMPORT                        R5 K34 [buffer.tostring]
      164 MOVE                             R6 R4
      165 CALL                             R5 1 1
      166 SETTABLEKS                       R5 R0 K14 ["body"]
      168 JUMPIFEQKNIL                     R3 ; [+15]
      170 GETTABLEKS                       R5 R0 K15 ["headers"]
      172 SETTABLEKS                       R3 R5 K16 ["Content-Type"]
      174 RETURN                           R0 1
      175 GETUPVAL                         R5 5
      176 MOVE                             R6 R4
      177 CALL                             R5 1 1
      178 SETTABLEKS                       R5 R0 K14 ["body"]
      180 GETTABLEKS                       R5 R0 K15 ["headers"]
      182 SETTABLEKS                       R3 R5 K16 ["Content-Type"]
      184 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 CALL                             R4 4 1
        6 RETURN                           R4 1

PROTO_21:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 CALL                             R4 4 1
        6 RETURN                           R4 1

PROTO_22:
        0 SETTABLEKS                       R1 R0 K0 ["formEncoding"]
        2 RETURN                           R0 1

PROTO_23:
        0 JUMPIFNOTEQKNIL                  R2 ; [+2]
        2 RETURN                           R0 1
        3 JUMPIFEQKNIL                     R4 ; [+4]
        5 GETUPVAL                         R6 0
        6 GETTABLE                         R5 R6 R4
        7 JUMP                             ; [+1]
        8 LOADNIL                          R5
        9 JUMPIFEQKNIL                     R5 ; [+58]
       11 FASTCALL1                        TYPE R2 ; [+3]
       12 MOVE                             R7 R2
       13 GETIMPORT                        R6 K1 [type]
       15 CALL                             R6 1 1
       16 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+51]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K3 ["isFormFile"]
       21 MOVE                             R7 R2
       22 CALL                             R6 1 1
       23 JUMPIF                           R6 ; [+44]
       24 LOADB                            R6 1
       25 GETIMPORT                        R8 K5 [next]
       27 MOVE                             R9 R2
       28 CALL                             R8 1 1
       29 JUMPIFEQKNIL                     R8 ; [+6]
       31 GETTABLEN                        R8 R2 1
       32 JUMPIFNOTEQKNIL                  R8 ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 JUMPIFNOT                        R6 ; [+31]
       37 GETTABLEKS                       R7 R0 K6 ["problems"]
       39 LOADB                            R8 0
       40 NEWCLOSURE                       R6 P0
       41 CAPTURE                          REF R8
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U2
       45 CLOSEUPVALS                      R8
       46 NEWTABLE                         R7 0 0
       48 MOVE                             R8 R2
       49 LOADNIL                          R9
       50 LOADNIL                          R10
       51 FORGPREP                         R8
       52 MOVE                             R14 R7
       53 MOVE                             R15 R6
       54 MOVE                             R16 R12
       55 CALL                             R15 1 -1
       56 FASTCALL                         TABLE_INSERT ; [+2]
       57 GETIMPORT                        R13 K8 [table.insert]
       59 CALL                             R13 -1 0
       60 FORGLOOP                         R8 2 ; [-9]
       62 GETIMPORT                        R8 K10 [table.concat]
       64 MOVE                             R9 R7
       65 MOVE                             R10 R5
       66 CALL                             R8 2 1
       67 MOVE                             R2 R8
       68 GETTABLEKS                       R7 R0 K11 ["formFields"]
       70 DUPTABLE                         R8 K15 [{"name", "value", "contentType"}]
       71 SETTABLEKS                       R1 R8 K12 ["name"]
       73 SETTABLEKS                       R2 R8 K13 ["value"]
       75 SETTABLEKS                       R3 R8 K14 ["contentType"]
       77 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       79 GETIMPORT                        R6 K8 [table.insert]
       81 CALL                             R6 2 0
       82 RETURN                           R0 1

PROTO_24:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%W"]
        4 LOADK                            R4 K4 ["%%%0"]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_25:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R9 K0 ["%*=%*"]
        7 GETUPVAL                         R11 0
        8 GETTABLEKS                       R12 R6 K1 ["key"]
       10 CALL                             R11 1 1
       11 GETUPVAL                         R12 0
       12 GETTABLEKS                       R13 R6 K2 ["value"]
       14 GETTABLEKS                       R14 R6 K3 ["allowReserved"]
       16 CALL                             R12 2 1
       17 NAMECALL                         R9 R9 K4 ["format"]
       19 CALL                             R9 3 1
       20 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       22 MOVE                             R8 R1
       23 GETIMPORT                        R7 K7 [table.insert]
       25 CALL                             R7 2 0
       26 FORGLOOP                         R2 2 ; [-21]
       28 GETIMPORT                        R2 K9 [table.concat]
       30 MOVE                             R3 R1
       31 LOADK                            R4 K10 ["&"]
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_26:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [coroutine.resume]
        3 MOVE                             R2 R0
        4 GETVARARGS                       R3 -1
        5 CALL                             R1 -1 2
        6 JUMPIF                           R1 ; [+5]
        7 GETIMPORT                        R3 K4 [error]
        9 MOVE                             R4 R2
       10 LOADN                            R5 0
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["value"]
        3 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["runtime"]
        3 GETTABLEKS                       R2 R2 K1 ["json"]
        5 GETTABLEKS                       R2 R2 K2 ["encode"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 GETIMPORT                        R3 K5 [string.find]
       11 MOVE                             R4 R2
       12 GETUPVAL                         R5 1
       13 LOADN                            R6 1
       14 LOADB                            R7 1
       15 CALL                             R3 4 1
       16 JUMPIFNOTEQKNIL                  R3 ; [+3]
       18 MOVE                             R1 R2
       19 RETURN                           R1 1
       20 GETIMPORT                        R3 K7 [string.gsub]
       22 MOVE                             R4 R2
       23 GETUPVAL                         R5 2
       24 LOADK                            R6 K8 ["{}"]
       25 CALL                             R3 3 1
       26 MOVE                             R1 R3
       27 RETURN                           R1 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["operation"]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R1 K1 ["pathTemplate"]
        6 GETTABLEKS                       R4 R0 K2 ["pathParams"]
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETIMPORT                        R9 K5 [string.gsub]
       13 MOVE                             R10 R3
       14 GETTABLEKS                       R12 R8 K6 ["key"]
       16 GETIMPORT                        R13 K5 [string.gsub]
       18 MOVE                             R14 R12
       19 LOADK                            R15 K7 ["%W"]
       20 LOADK                            R16 K8 ["%%%0"]
       21 CALL                             R13 3 1
       22 MOVE                             R11 R13
       23 NEWCLOSURE                       R12 P0
       24 CAPTURE                          VAL R8
       25 CALL                             R9 3 1
       26 MOVE                             R3 R9
       27 FORGLOOP                         R4 2 ; [-17]
       29 GETIMPORT                        R4 K10 [string.gmatch]
       31 MOVE                             R5 R3
       32 LOADK                            R6 K11 ["{[^{}/]+}"]
       33 CALL                             R4 2 3
       34 FORGPREP                         R4
       35 LOADK                            R11 K12 ["\"%*\" > Path parameter was not set"]
       36 MOVE                             R13 R7
       37 NAMECALL                         R11 R11 K13 ["format"]
       39 CALL                             R11 2 1
       40 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       42 MOVE                             R10 R2
       43 GETIMPORT                        R9 K16 [table.insert]
       45 CALL                             R9 2 0
       46 FORGLOOP                         R4 1 ; [-12]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R5 R0 K17 ["baseUrl"]
       51 MOVE                             R6 R3
       52 CALL                             R4 2 1
       53 GETTABLEKS                       R6 R0 K18 ["queryParams"]
       55 LENGTH                           R5 R6
       56 LOADN                            R6 0
       57 JUMPIFNOTLT                      R6 R5 ; [+11]
       59 MOVE                             R5 R4
       60 LOADK                            R6 K19 ["?%*"]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R9 R0 K18 ["queryParams"]
       64 CALL                             R8 1 1
       65 NAMECALL                         R6 R6 K13 ["format"]
       67 CALL                             R6 2 1
       68 CONCAT                           R4 R5 R6
       69 GETIMPORT                        R5 K21 [table.clone]
       71 GETTABLEKS                       R6 R0 K22 ["headers"]
       73 CALL                             R5 1 1
       74 GETTABLEKS                       R7 R0 K23 ["cookies"]
       76 LENGTH                           R6 R7
       77 LOADN                            R7 0
       78 JUMPIFNOTLT                      R7 R6 ; [+48]
       80 NEWTABLE                         R6 0 0
       82 GETTABLEKS                       R7 R0 K23 ["cookies"]
       84 LOADNIL                          R8
       85 LOADNIL                          R9
       86 FORGPREP                         R7
       87 LOADK                            R14 K24 ["%*=%*"]
       88 GETTABLEKS                       R16 R11 K6 ["key"]
       90 GETUPVAL                         R17 2
       91 GETTABLEKS                       R18 R11 K25 ["value"]
       93 CALL                             R17 1 1
       94 NAMECALL                         R14 R14 K13 ["format"]
       96 CALL                             R14 3 1
       97 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       99 MOVE                             R13 R6
      100 GETIMPORT                        R12 K16 [table.insert]
      102 CALL                             R12 2 0
      103 FORGLOOP                         R7 2 ; [-17]
      105 GETTABLEKS                       R7 R5 K26 ["Cookie"]
      107 JUMPIFEQKNIL                     R7 ; [+12]
      109 LOADK                            R8 K27 ["%*; %*"]
      110 MOVE                             R10 R7
      111 GETIMPORT                        R11 K29 [table.concat]
      113 MOVE                             R12 R6
      114 LOADK                            R13 K30 ["; "]
      115 CALL                             R11 2 1
      116 NAMECALL                         R8 R8 K13 ["format"]
      118 CALL                             R8 3 1
      119 JUMP                             ; [+5]
      120 GETIMPORT                        R8 K29 [table.concat]
      122 MOVE                             R9 R6
      123 LOADK                            R10 K30 ["; "]
      124 CALL                             R8 2 1
      125 SETTABLEKS                       R8 R5 K26 ["Cookie"]
      127 GETTABLEKS                       R6 R0 K31 ["body"]
      129 JUMPIFNOTEQKNIL                  R6 ; [+46]
      131 GETTABLEKS                       R8 R0 K32 ["formFields"]
      133 LENGTH                           R7 R8
      134 LOADN                            R8 0
      135 JUMPIFNOTLT                      R8 R7 ; [+40]
      137 GETTABLEKS                       R7 R0 K33 ["formEncoding"]
      139 JUMPIFNOTEQKS                    R7 K34 ["urlencoded"] ; [+13]
      141 GETUPVAL                         R7 3
      142 GETTABLEKS                       R8 R0 K35 ["runtime"]
      144 GETTABLEKS                       R9 R0 K32 ["formFields"]
      146 MOVE                             R10 R2
      147 CALL                             R7 3 1
      148 MOVE                             R6 R7
      149 LOADK                            R7 K36 ["application/x-www-form-urlencoded"]
      150 SETTABLEKS                       R7 R5 K37 ["Content-Type"]
      152 JUMP                             ; [+23]
      153 GETUPVAL                         R7 4
      154 GETTABLEKS                       R7 R7 K38 ["buildBoundary"]
      156 CALL                             R7 0 1
      157 GETUPVAL                         R8 4
      158 GETTABLEKS                       R8 R8 K39 ["buildBody"]
      160 GETTABLEKS                       R9 R0 K32 ["formFields"]
      162 MOVE                             R10 R7
      163 NEWCLOSURE                       R11 P1
      164 CAPTURE                          VAL R0
      165 CAPTURE                          UPVAL U5
      166 CAPTURE                          UPVAL U6
      167 CALL                             R8 3 1
      168 MOVE                             R6 R8
      169 LOADK                            R8 K40 ["multipart/form-data; boundary=\"%*\""]
      170 MOVE                             R10 R7
      171 NAMECALL                         R8 R8 K13 ["format"]
      173 CALL                             R8 2 1
      174 SETTABLEKS                       R8 R5 K37 ["Content-Type"]
      176 DUPTABLE                         R7 K43 [{"method", "url", "headers", "body", "operation"}]
      177 GETTABLEKS                       R8 R1 K41 ["method"]
      179 SETTABLEKS                       R8 R7 K41 ["method"]
      181 SETTABLEKS                       R4 R7 K42 ["url"]
      183 SETTABLEKS                       R5 R7 K22 ["headers"]
      185 SETTABLEKS                       R6 R7 K31 ["body"]
      187 DUPTABLE                         R8 K46 [{"method", "pathTemplate", "operationId", "security"}]
      188 GETTABLEKS                       R9 R1 K41 ["method"]
      190 SETTABLEKS                       R9 R8 K41 ["method"]
      192 GETTABLEKS                       R9 R1 K1 ["pathTemplate"]
      194 SETTABLEKS                       R9 R8 K1 ["pathTemplate"]
      196 GETTABLEKS                       R9 R1 K44 ["operationId"]
      198 SETTABLEKS                       R9 R8 K44 ["operationId"]
      200 GETTABLEKS                       R9 R1 K45 ["security"]
      202 SETTABLEKS                       R9 R8 K45 ["security"]
      204 SETTABLEKS                       R8 R7 K0 ["operation"]
      206 MOVE                             R8 R2
      207 RETURN                           R7 2

PROTO_30:
        0 RETURN                           R0 0

PROTO_31:
        0 DUPTABLE                         R1 K3 [{[1] = False, ["errorDetails"]}]
        1 DUPTABLE                         R2 K6 [{"kind", "validationErrors"}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K7 ["InvalidRequest"]
        5 SETTABLEKS                       R3 R2 K4 ["kind"]
        7 SETTABLEKS                       R0 R2 K5 ["validationErrors"]
        9 SETTABLEKS                       R2 R1 K2 ["errorDetails"]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 DUPCLOSURE                       R2 K8 [PROTO_30]
       15 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 LOADB                            R1 1
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_33:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 JUMPIF                           R1 ; [+2]
        4 GETUPVAL                         R1 2
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R2 4
        9 GETTABLEKS                       R2 R2 K0 ["runtime"]
       11 GETTABLEKS                       R2 R2 K1 ["json"]
       13 MOVE                             R3 R0
       14 GETUPVAL                         R4 5
       15 GETUPVAL                         R5 6
       16 CALL                             R1 4 1
       17 GETUPVAL                         R2 1
       18 JUMPIF                           R2 ; [+8]
       19 GETUPVAL                         R2 2
       20 JUMPIFNOT                        R2 ; [+1]
       21 RETURN                           R0 0
       22 LOADB                            R2 1
       23 SETUPVAL                         R2 2
       24 GETUPVAL                         R2 7
       25 MOVE                             R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_34:
        0 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 LOADB                            R0 1
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_36:
        0 LOADNIL                          R4
        1 LOADNIL                          R5
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R7 R1
        4 GETIMPORT                        R6 K1 [type]
        6 CALL                             R6 1 1
        7 JUMPIFNOTEQKS                    R6 K2 ["function"] ; [+3]
        9 MOVE                             R5 R1
       10 JUMP                             ; [+2]
       11 MOVE                             R4 R1
       12 MOVE                             R5 R2
       13 FASTCALL1                        TYPE R5 ; [+3]
       14 MOVE                             R9 R5
       15 GETIMPORT                        R8 K1 [type]
       17 CALL                             R8 1 1
       18 JUMPIFEQKS                       R8 K2 ["function"] ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       24 LOADK                            R8 K3 ["send requires a callback"]
       25 GETIMPORT                        R6 K5 [assert]
       27 CALL                             R6 2 0
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          REF R5
       31 GETTABLEKS                       R8 R0 K6 ["problems"]
       33 LENGTH                           R7 R8
       34 LOADN                            R8 0
       35 JUMPIFNOTLT                      R8 R7 ; [+10]
       37 MOVE                             R7 R6
       38 GETIMPORT                        R8 K9 [table.clone]
       40 GETTABLEKS                       R9 R0 K6 ["problems"]
       42 CALL                             R8 1 -1
       43 CALL                             R7 -1 1
       44 CLOSEUPVALS                      R4
       45 RETURN                           R7 1
       46 GETUPVAL                         R8 1
       47 MOVE                             R9 R0
       48 FASTPCALL                        pcall 2 ; [+2]
       49 GETIMPORT                        R7 K11 [pcall]
       51 CALL                             R7 2 3
       52 JUMPIF                           R7 ; [+13]
       53 MOVE                             R10 R6
       54 NEWTABLE                         R11 0 1
       56 FASTCALL1                        TOSTRING R8 ; [+3]
       57 MOVE                             R13 R8
       58 GETIMPORT                        R12 K13 [tostring]
       60 CALL                             R12 1 1
       61 SETLIST                          R11 R12 1 [1]
       63 CALL                             R10 1 1
       64 CLOSEUPVALS                      R4
       65 RETURN                           R10 1
       66 LENGTH                           R10 R9
       67 LOADN                            R11 0
       68 JUMPIFNOTLT                      R11 R10 ; [+6]
       70 MOVE                             R10 R6
       71 MOVE                             R11 R9
       72 CALL                             R10 1 1
       73 CLOSEUPVALS                      R4
       74 RETURN                           R10 1
       75 LOADB                            R10 0
       76 LOADB                            R11 0
       77 NEWCLOSURE                       R12 P1
       78 CAPTURE                          REF R10
       79 CAPTURE                          REF R11
       80 CAPTURE                          REF R5
       81 LOADB                            R13 0
       82 GETTABLEKS                       R15 R0 K14 ["runtime"]
       84 GETTABLEKS                       R15 R15 K15 ["request"]
       86 MOVE                             R16 R8
       87 NEWCLOSURE                       R17 P2
       88 CAPTURE                          REF R13
       89 CAPTURE                          REF R10
       90 CAPTURE                          REF R11
       91 CAPTURE                          UPVAL U2
       92 CAPTURE                          VAL R0
       93 CAPTURE                          REF R4
       94 CAPTURE                          VAL R3
       95 CAPTURE                          REF R5
       96 FASTPCALL                        pcall 3 ; [+2]
       97 GETIMPORT                        R14 K11 [pcall]
       99 CALL                             R14 3 2
      100 JUMPIF                           R14 ; [+32]
      101 JUMPIFNOT                        R13 ; [+5]
      102 GETIMPORT                        R16 K17 [error]
      104 MOVE                             R17 R15
      105 LOADN                            R18 0
      106 CALL                             R16 2 0
      107 DUPTABLE                         R16 K21 [{["success"] = False, ["errorDetails"]}]
      108 DUPTABLE                         R17 K24 [{"kind", "networkError"}]
      109 GETUPVAL                         R18 0
      110 GETTABLEKS                       R18 R18 K25 ["Network"]
      112 SETTABLEKS                       R18 R17 K22 ["kind"]
      114 FASTCALL1                        TOSTRING R15 ; [+3]
      115 MOVE                             R19 R15
      116 GETIMPORT                        R18 K13 [tostring]
      118 CALL                             R18 1 1
      119 SETTABLEKS                       R18 R17 K23 ["networkError"]
      121 SETTABLEKS                       R17 R16 K20 ["errorDetails"]
      123 JUMPIF                           R10 ; [+6]
      124 JUMPIFNOT                        R11 ; [+1]
      125 JUMP                             ; [+4]
      126 LOADB                            R11 1
      127 MOVE                             R17 R5
      128 MOVE                             R18 R16
      129 CALL                             R17 1 0
      130 DUPCLOSURE                       R16 K26 [PROTO_34]
      131 CLOSEUPVALS                      R4
      132 RETURN                           R16 1
      133 NEWCLOSURE                       R16 P4
      134 CAPTURE                          REF R10
      135 CAPTURE                          REF R11
      136 CAPTURE                          VAL R15
      137 CLOSEUPVALS                      R4
      138 RETURN                           R16 1

PROTO_37:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["runtime"]
        6 GETTABLEKS                       R1 R1 K1 ["defer"]
        8 JUMPIF                           R1 ; [+1]
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R2 4
       11 MOVE                             R3 R0
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_38:
        0 GETIMPORT                        R3 K2 [coroutine.running]
        2 CALL                             R3 0 1
        3 LOADNIL                          R4
        4 LOADB                            R5 0
        5 GETUPVAL                         R6 0
        6 MOVE                             R7 R0
        7 MOVE                             R8 R1
        8 NEWCLOSURE                       R9 P0
        9 CAPTURE                          REF R4
       10 CAPTURE                          REF R5
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R3
       14 MOVE                             R10 R2
       15 CALL                             R6 4 0
       16 JUMPIFEQKNIL                     R4 ; [+3]
       18 CLOSEUPVALS                      R4
       19 RETURN                           R4 1
       20 LOADB                            R5 1
       21 GETIMPORT                        R6 K4 [coroutine.yield]
       23 CALL                             R6 0 -1
       24 CLOSEUPVALS                      R4
       25 RETURN                           R6 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETUPVAL                         R4 2
        3 MOVE                             R5 R1
        4 GETUPVAL                         R6 3
        5 CALL                             R2 4 1
        6 RETURN                           R2 1

PROTO_41:
        0 DUPTABLE                         R3 K2 [{"sendAsync", "send"}]
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 SETTABLEKS                       R4 R3 K0 ["sendAsync"]
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 SETTABLEKS                       R4 R3 K1 ["send"]
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["./Multipart"]
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K1 [require]
        7 LOADK                            R2 K3 ["./Types"]
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K1 [require]
       11 LOADK                            R3 K4 ["./emptyObject"]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K1 [require]
       15 LOADK                            R4 K5 ["./formatScalar"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K1 [require]
       19 LOADK                            R5 K6 ["./interpretResponse"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K1 [require]
       23 LOADK                            R6 K7 ["./resolveUrl"]
       24 CALL                             R5 1 1
       25 GETIMPORT                        R6 K1 [require]
       27 LOADK                            R7 K8 ["./urlEncode"]
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R1 K9 ["ERROR_KIND"]
       31 NEWTABLE                         R8 16 0
       33 SETTABLEKS                       R8 R8 K10 ["__index"]
       35 DUPCLOSURE                       R9 K11 [PROTO_0]
       36 CAPTURE                          VAL R8
       37 SETTABLEKS                       R9 R8 K12 ["new"]
       39 DUPTABLE                         R9 K21 [{["csv"] = ",", ["ssv"] = " ", ["tsv"] = "\t", ["pipes"] = "|"}]
       40 LOADK                            R10 K22 ["\"%*\""]
       41 MOVE                             R12 R2
       42 NAMECALL                         R10 R10 K23 ["format"]
       44 CALL                             R10 2 1
       45 DUPCLOSURE                       R11 K24 [PROTO_1]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R10
       48 DUPCLOSURE                       R12 K25 [PROTO_2]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R12
       52 DUPCLOSURE                       R13 K26 [PROTO_3]
       53 DUPCLOSURE                       R14 K27 [PROTO_4]
       54 DUPCLOSURE                       R15 K28 [PROTO_5]
       55 DUPCLOSURE                       R16 K29 [PROTO_6]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R10
       58 DUPCLOSURE                       R17 K30 [PROTO_8]
       59 CAPTURE                          VAL R3
       60 DUPCLOSURE                       R18 K31 [PROTO_9]
       61 CAPTURE                          VAL R15
       62 DUPCLOSURE                       R19 K32 [PROTO_12]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R15
       69 DUPCLOSURE                       R20 K33 [PROTO_13]
       70 CAPTURE                          VAL R19
       71 SETTABLEKS                       R20 R8 K34 ["addQueryParameter"]
       73 DUPCLOSURE                       R20 K35 [PROTO_14]
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R18
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R6
       78 SETTABLEKS                       R20 R8 K36 ["addPathParameter"]
       80 DUPCLOSURE                       R20 K37 [PROTO_15]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R18
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R20 R8 K38 ["addHeaderParameter"]
       88 DUPCLOSURE                       R20 K39 [PROTO_16]
       89 CAPTURE                          VAL R19
       90 SETTABLEKS                       R20 R8 K40 ["addCookieParameter"]
       92 DUPCLOSURE                       R20 K41 [PROTO_17]
       93 SETTABLEKS                       R20 R8 K42 ["validate"]
       95 DUPCLOSURE                       R20 K43 [PROTO_18]
       96 CAPTURE                          VAL R19
       97 CAPTURE                          VAL R6
       98 DUPCLOSURE                       R21 K44 [PROTO_19]
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R20
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R3
      105 DUPCLOSURE                       R22 K45 [PROTO_20]
      106 CAPTURE                          VAL R21
      107 SETTABLEKS                       R22 R8 K46 ["setBody"]
      109 DUPCLOSURE                       R22 K47 [PROTO_21]
      110 CAPTURE                          VAL R21
      111 SETTABLEKS                       R22 R8 K48 ["setRequestBody"]
      113 DUPCLOSURE                       R22 K49 [PROTO_22]
      114 SETTABLEKS                       R22 R8 K50 ["setFormEncoding"]
      116 DUPCLOSURE                       R22 K51 [PROTO_23]
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R3
      120 SETTABLEKS                       R22 R8 K52 ["addFormParameter"]
      122 DUPCLOSURE                       R22 K53 [PROTO_24]
      123 DUPCLOSURE                       R23 K54 [PROTO_25]
      124 CAPTURE                          VAL R6
      125 DUPCLOSURE                       R24 K55 [PROTO_26]
      126 DUPCLOSURE                       R25 K56 [PROTO_29]
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R23
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R20
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R10
      134 DUPCLOSURE                       R26 K57 [PROTO_36]
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R25
      137 CAPTURE                          VAL R4
      138 DUPCLOSURE                       R27 K58 [PROTO_38]
      139 CAPTURE                          VAL R26
      140 CAPTURE                          VAL R24
      141 SETTABLEKS                       R27 R8 K59 ["sendAsync"]
      143 SETTABLEKS                       R26 R8 K60 ["send"]
      145 DUPCLOSURE                       R28 K61 [PROTO_41]
      146 CAPTURE                          VAL R27
      147 CAPTURE                          VAL R26
      148 SETTABLEKS                       R28 R8 K62 ["returns"]
      150 RETURN                           R8 1
