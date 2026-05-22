PROTO_0:
        0 NEWTABLE                         R1 0 1
        2 LOADK                            R2 K0 ["Surface"]
        3 SETLIST                          R1 R2 1 [1]
        5 JUMPIFNOT                        R0 ; [+24]
        6 GETTABLEKS                       R2 R0 K1 ["Color"]
        8 JUMPIFNOT                        R2 ; [+21]
        9 GETTABLEKS                       R2 R0 K1 ["Color"]
       11 GETTABLEKS                       R2 R2 K2 ["Extended"]
       13 JUMPIFNOT                        R2 ; [+16]
       14 GETTABLEKS                       R2 R0 K1 ["Color"]
       16 GETTABLEKS                       R2 R2 K2 ["Extended"]
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 FORGPREP                         R2
       21 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       23 MOVE                             R8 R1
       24 MOVE                             R9 R5
       25 GETIMPORT                        R7 K5 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R2 1 ; [-8]
       30 GETIMPORT                        R2 K7 [table.sort]
       32 MOVE                             R3 R1
       33 CALL                             R2 1 0
       34 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["key"]
        2 GETTABLEKS                       R4 R1 K0 ["key"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETTABLEKS                       R3 R0 K0 ["Color"]
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R2 1
        7 JUMPIFNOTEQKS                    R1 K1 ["Surface"] ; [+33]
        9 GETTABLEKS                       R3 R0 K0 ["Color"]
       11 GETTABLEKS                       R3 R3 K1 ["Surface"]
       13 JUMPIFNOT                        R3 ; [+62]
       14 GETTABLEKS                       R3 R0 K0 ["Color"]
       16 GETTABLEKS                       R3 R3 K1 ["Surface"]
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 DUPTABLE                         R10 K4 [{"key", "path"}]
       22 SETTABLEKS                       R6 R10 K2 ["key"]
       24 LOADK                            R12 K5 ["Color.Surface.%*"]
       25 MOVE                             R14 R6
       26 NAMECALL                         R12 R12 K6 ["format"]
       28 CALL                             R12 2 1
       29 MOVE                             R11 R12
       30 SETTABLEKS                       R11 R10 K3 ["path"]
       32 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       34 MOVE                             R9 R2
       35 GETIMPORT                        R8 K9 [table.insert]
       37 CALL                             R8 2 0
       38 FORGLOOP                         R3 1 ; [-18]
       40 JUMP                             ; [+35]
       41 GETTABLEKS                       R3 R0 K0 ["Color"]
       43 GETTABLEKS                       R3 R3 K10 ["Extended"]
       45 JUMPIFNOT                        R3 ; [+5]
       46 GETTABLEKS                       R4 R0 K0 ["Color"]
       48 GETTABLEKS                       R4 R4 K10 ["Extended"]
       50 GETTABLE                         R3 R4 R1
       51 JUMPIFNOT                        R3 ; [+24]
       52 MOVE                             R4 R3
       53 LOADNIL                          R5
       54 LOADNIL                          R6
       55 FORGPREP                         R4
       56 DUPTABLE                         R11 K4 [{"key", "path"}]
       57 SETTABLEKS                       R7 R11 K2 ["key"]
       59 LOADK                            R13 K11 ["Color.Extended.%*.%*"]
       60 MOVE                             R15 R1
       61 MOVE                             R16 R7
       62 NAMECALL                         R13 R13 K6 ["format"]
       64 CALL                             R13 3 1
       65 MOVE                             R12 R13
       66 SETTABLEKS                       R12 R11 K3 ["path"]
       68 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       70 MOVE                             R10 R2
       71 GETIMPORT                        R9 K9 [table.insert]
       73 CALL                             R9 2 0
       74 FORGLOOP                         R4 1 ; [-19]
       76 GETIMPORT                        R3 K13 [table.sort]
       78 MOVE                             R4 R2
       79 DUPCLOSURE                       R5 K14 [PROTO_1]
       80 CALL                             R3 2 0
       81 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["key"]
        2 GETTABLEKS                       R4 R1 K0 ["key"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETTABLEKS                       R3 R0 K0 ["Color"]
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R4 R0 K0 ["Color"]
        9 GETTABLE                         R3 R4 R1
       10 JUMPIFNOT                        R3 ; [+24]
       11 MOVE                             R4 R3
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 DUPTABLE                         R11 K3 [{"key", "path"}]
       16 SETTABLEKS                       R7 R11 K1 ["key"]
       18 LOADK                            R13 K4 ["Color.%*.%*"]
       19 MOVE                             R15 R1
       20 MOVE                             R16 R7
       21 NAMECALL                         R13 R13 K5 ["format"]
       23 CALL                             R13 3 1
       24 MOVE                             R12 R13
       25 SETTABLEKS                       R12 R11 K2 ["path"]
       27 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       29 MOVE                             R10 R2
       30 GETIMPORT                        R9 K8 [table.insert]
       32 CALL                             R9 2 0
       33 FORGLOOP                         R4 1 ; [-19]
       35 GETIMPORT                        R4 K10 [table.sort]
       37 MOVE                             R5 R2
       38 DUPCLOSURE                       R6 K11 [PROTO_3]
       39 CALL                             R4 2 0
       40 RETURN                           R2 1

PROTO_5:
        0 JUMPIFNOTEQKS                    R0 K0 ["__none__"] ; [+10]
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["onChanged"]
        8 LOADNIL                          R2
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K1 ["onChanged"]
       17 LOADNIL                          R2
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOTEQKS                    R0 K0 ["__select__"] ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["onChanged"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["onChanged"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onChanged"]
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["tokens"]
        3 CALL                             R1 1 1
        4 LOADNIL                          R2
        5 GETTABLEKS                       R3 R0 K1 ["currentSourcePath"]
        7 JUMPIFNOT                        R3 ; [+17]
        8 GETIMPORT                        R3 K4 [string.find]
       10 GETTABLEKS                       R4 R0 K1 ["currentSourcePath"]
       12 LOADK                            R5 K5 ["Color.Surface."]
       13 CALL                             R3 2 1
       14 JUMPIFNOT                        R3 ; [+2]
       15 LOADK                            R2 K6 ["Surface"]
       16 JUMP                             ; [+8]
       17 GETIMPORT                        R3 K8 [string.match]
       19 GETTABLEKS                       R4 R0 K1 ["currentSourcePath"]
       21 LOADK                            R5 K9 ["Color%.Extended%.([^.]+)%."]
       22 CALL                             R3 2 1
       23 JUMPIFNOT                        R3 ; [+1]
       24 MOVE                             R2 R3
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K10 ["useState"]
       28 MOVE                             R4 R2
       29 CALL                             R3 1 2
       30 NEWTABLE                         R5 0 1
       32 DUPTABLE                         R6 K13 [{"id", "text"}]
       33 LOADK                            R7 K14 ["__none__"]
       34 SETTABLEKS                       R7 R6 K11 ["id"]
       36 LOADK                            R7 K15 ["(No override)"]
       37 SETTABLEKS                       R7 R6 K12 ["text"]
       39 SETLIST                          R5 R6 1 [1]
       41 MOVE                             R6 R1
       42 LOADNIL                          R7
       43 LOADNIL                          R8
       44 FORGPREP                         R6
       45 DUPTABLE                         R13 K13 [{"id", "text"}]
       46 SETTABLEKS                       R10 R13 K11 ["id"]
       48 SETTABLEKS                       R10 R13 K12 ["text"]
       50 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       52 MOVE                             R12 R5
       53 GETIMPORT                        R11 K18 [table.insert]
       55 CALL                             R11 2 0
       56 FORGLOOP                         R6 2 ; [-12]
       58 NEWTABLE                         R6 0 1
       60 DUPTABLE                         R7 K13 [{"id", "text"}]
       61 LOADK                            R8 K19 ["__select__"]
       62 SETTABLEKS                       R8 R7 K11 ["id"]
       64 LOADK                            R8 K20 ["Select..."]
       65 SETTABLEKS                       R8 R7 K12 ["text"]
       67 SETLIST                          R6 R7 1 [1]
       69 JUMPIFNOT                        R3 ; [+26]
       70 GETUPVAL                         R7 2
       71 GETTABLEKS                       R8 R0 K0 ["tokens"]
       73 MOVE                             R9 R3
       74 CALL                             R7 2 1
       75 MOVE                             R8 R7
       76 LOADNIL                          R9
       77 LOADNIL                          R10
       78 FORGPREP                         R8
       79 DUPTABLE                         R15 K13 [{"id", "text"}]
       80 GETTABLEKS                       R16 R12 K21 ["path"]
       82 SETTABLEKS                       R16 R15 K11 ["id"]
       84 GETTABLEKS                       R16 R12 K22 ["key"]
       86 SETTABLEKS                       R16 R15 K12 ["text"]
       88 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
       90 MOVE                             R14 R6
       91 GETIMPORT                        R13 K18 [table.insert]
       93 CALL                             R13 2 0
       94 FORGLOOP                         R8 2 ; [-16]
       96 GETTABLEKS                       R8 R0 K1 ["currentSourcePath"]
       98 JUMPIFNOTEQKNIL                  R8 ; [+2]
      100 LOADB                            R7 0 +1
      101 LOADB                            R7 1
      102 GETUPVAL                         R8 1
      103 GETTABLEKS                       R8 R8 K23 ["createElement"]
      105 GETUPVAL                         R9 3
      106 DUPTABLE                         R10 K25 [{"tag"}]
      107 LOADK                            R11 K26 ["row gap-small auto-xy align-y-center"]
      108 SETTABLEKS                       R11 R10 K24 ["tag"]
      110 DUPTABLE                         R11 K31 [{"Label", "CategoryDropdown", "ValueDropdown", "ResetButton"}]
      111 GETUPVAL                         R12 1
      112 GETTABLEKS                       R12 R12 K23 ["createElement"]
      114 GETUPVAL                         R13 3
      115 DUPTABLE                         R14 K34 [{"tag", "Size", "LayoutOrder"}]
      116 LOADK                            R15 K35 ["auto-y"]
      117 SETTABLEKS                       R15 R14 K24 ["tag"]
      119 GETIMPORT                        R15 K38 [UDim2.fromOffset]
      121 LOADN                            R16 100
      122 LOADN                            R17 0
      123 CALL                             R15 2 1
      124 SETTABLEKS                       R15 R14 K32 ["Size"]
      126 LOADN                            R15 1
      127 SETTABLEKS                       R15 R14 K33 ["LayoutOrder"]
      129 DUPTABLE                         R15 K40 [{"Text"}]
      130 GETUPVAL                         R16 1
      131 GETTABLEKS                       R16 R16 K23 ["createElement"]
      133 GETUPVAL                         R17 4
      134 DUPTABLE                         R18 K41 [{"Text", "tag"}]
      135 GETTABLEKS                       R19 R0 K42 ["tokenKey"]
      137 SETTABLEKS                       R19 R18 K39 ["Text"]
      139 LOADK                            R19 K43 ["auto-xy text-label-small"]
      140 SETTABLEKS                       R19 R18 K24 ["tag"]
      142 CALL                             R16 2 1
      143 SETTABLEKS                       R16 R15 K39 ["Text"]
      145 CALL                             R12 3 1
      146 SETTABLEKS                       R12 R11 K27 ["Label"]
      148 GETUPVAL                         R12 1
      149 GETTABLEKS                       R12 R12 K23 ["createElement"]
      151 GETUPVAL                         R13 5
      152 GETTABLEKS                       R13 R13 K44 ["Root"]
      154 DUPTABLE                         R14 K51 [{"label", "value", "items", "size", "onItemChanged", "width", "LayoutOrder"}]
      155 LOADK                            R15 K52 [""]
      156 SETTABLEKS                       R15 R14 K45 ["label"]
      158 ORK                              R15 R3 K14 ["__none__"]
      159 SETTABLEKS                       R15 R14 K46 ["value"]
      161 SETTABLEKS                       R5 R14 K47 ["items"]
      163 GETUPVAL                         R15 6
      164 GETTABLEKS                       R15 R15 K53 ["Small"]
      166 SETTABLEKS                       R15 R14 K48 ["size"]
      168 NEWCLOSURE                       R15 P0
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R0
      171 SETTABLEKS                       R15 R14 K49 ["onItemChanged"]
      173 GETIMPORT                        R15 K56 [UDim.new]
      175 LOADN                            R16 0
      176 LOADN                            R17 120
      177 CALL                             R15 2 1
      178 SETTABLEKS                       R15 R14 K50 ["width"]
      180 LOADN                            R15 2
      181 SETTABLEKS                       R15 R14 K33 ["LayoutOrder"]
      183 CALL                             R12 2 1
      184 SETTABLEKS                       R12 R11 K28 ["CategoryDropdown"]
      186 JUMPIFNOT                        R3 ; [+38]
      187 GETUPVAL                         R12 1
      188 GETTABLEKS                       R12 R12 K23 ["createElement"]
      190 GETUPVAL                         R13 5
      191 GETTABLEKS                       R13 R13 K44 ["Root"]
      193 DUPTABLE                         R14 K51 [{"label", "value", "items", "size", "onItemChanged", "width", "LayoutOrder"}]
      194 LOADK                            R15 K52 [""]
      195 SETTABLEKS                       R15 R14 K45 ["label"]
      197 GETTABLEKS                       R16 R0 K1 ["currentSourcePath"]
      199 ORK                              R15 R16 K19 ["__select__"]
      200 SETTABLEKS                       R15 R14 K46 ["value"]
      202 SETTABLEKS                       R6 R14 K47 ["items"]
      204 GETUPVAL                         R15 6
      205 GETTABLEKS                       R15 R15 K53 ["Small"]
      207 SETTABLEKS                       R15 R14 K48 ["size"]
      209 NEWCLOSURE                       R15 P1
      210 CAPTURE                          VAL R0
      211 SETTABLEKS                       R15 R14 K49 ["onItemChanged"]
      213 GETIMPORT                        R15 K56 [UDim.new]
      215 LOADN                            R16 0
      216 LOADN                            R17 140
      217 CALL                             R15 2 1
      218 SETTABLEKS                       R15 R14 K50 ["width"]
      220 LOADN                            R15 3
      221 SETTABLEKS                       R15 R14 K33 ["LayoutOrder"]
      223 CALL                             R12 2 1
      224 JUMP                             ; [+1]
      225 LOADNIL                          R12
      226 SETTABLEKS                       R12 R11 K29 ["ValueDropdown"]
      228 JUMPIFNOT                        R7 ; [+28]
      229 GETUPVAL                         R12 1
      230 GETTABLEKS                       R12 R12 K23 ["createElement"]
      232 GETUPVAL                         R13 7
      233 DUPTABLE                         R14 K59 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      234 LOADK                            R15 K60 ["Reset"]
      235 SETTABLEKS                       R15 R14 K12 ["text"]
      237 GETUPVAL                         R15 6
      238 GETTABLEKS                       R15 R15 K53 ["Small"]
      240 SETTABLEKS                       R15 R14 K48 ["size"]
      242 GETUPVAL                         R15 8
      243 GETTABLEKS                       R15 R15 K61 ["Standard"]
      245 SETTABLEKS                       R15 R14 K57 ["variant"]
      247 NEWCLOSURE                       R15 P2
      248 CAPTURE                          VAL R4
      249 CAPTURE                          VAL R0
      250 SETTABLEKS                       R15 R14 K58 ["onActivated"]
      252 LOADN                            R15 4
      253 SETTABLEKS                       R15 R14 K33 ["LayoutOrder"]
      255 CALL                             R12 2 1
      256 JUMP                             ; [+1]
      257 LOADNIL                          R12
      258 SETTABLEKS                       R12 R11 K30 ["ResetButton"]
      260 CALL                             R8 3 -1
      261 RETURN                           R8 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getTokenOverrides"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+2]
        5 NEWTABLE                         R0 0 0
        7 RETURN                           R0 1

PROTO_10:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 0
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1
       10 GETUPVAL                         R2 1
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R1 R2
       13 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setTokenOverrides"]
        3 GETIMPORT                        R2 K2 [next]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+2]
        8 GETUPVAL                         R1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["path"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"key", "tokenKey", "tokenPath", "tokens", "currentSourcePath", "onChanged"}]
        5 GETTABLEKS                       R4 R0 K8 ["path"]
        7 SETTABLEKS                       R4 R3 K1 ["key"]
        9 GETTABLEKS                       R4 R0 K1 ["key"]
       11 SETTABLEKS                       R4 R3 K2 ["tokenKey"]
       13 GETTABLEKS                       R4 R0 K8 ["path"]
       15 SETTABLEKS                       R4 R3 K3 ["tokenPath"]
       17 GETUPVAL                         R4 2
       18 SETTABLEKS                       R4 R3 K4 ["tokens"]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R6 R0 K8 ["path"]
       23 GETTABLE                         R4 R5 R6
       24 SETTABLEKS                       R4 R3 K5 ["currentSourcePath"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 SETTABLEKS                       R4 R3 K6 ["onChanged"]
       31 CALL                             R1 2 -1
       32 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["useState"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 3
       11 MOVE                             R5 R0
       12 GETUPVAL                         R6 4
       13 CALL                             R4 2 1
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R3
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K1 ["useEffect"]
       19 NEWCLOSURE                       R7 P2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R8 0 1
       24 MOVE                             R9 R2
       25 SETLIST                          R8 R9 1 [1]
       27 CALL                             R6 2 0
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K2 ["createElement"]
       31 GETUPVAL                         R7 5
       32 DUPTABLE                         R8 K4 [{"tag"}]
       33 LOADK                            R9 K5 ["col gap-xsmall auto-xy"]
       34 SETTABLEKS                       R9 R8 K3 ["tag"]
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R9 R9 K6 ["map"]
       39 MOVE                             R10 R4
       40 NEWCLOSURE                       R11 P3
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U7
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 CALL                             R9 2 -1
       47 CALL                             R6 -1 -1
       48 RETURN                           R6 -1

PROTO_16:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

PROTO_17:
        0 DUPTABLE                         R1 K2 [{"name", "story"}]
        1 SETTABLEKS                       R0 R1 K0 ["name"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 SETTABLEKS                       R2 R1 K1 ["story"]
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Button"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["ButtonVariant"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Dropdown"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K9 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["Text"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K9 ["Components"]
       58 GETTABLEKS                       R10 R10 K16 ["View"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Utility"]
       65 GETTABLEKS                       R11 R11 K18 ["Stories"]
       67 GETTABLEKS                       R11 R11 K19 ["TokenOverridesStore"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Providers"]
       74 GETTABLEKS                       R12 R12 K21 ["Style"]
       76 GETTABLEKS                       R12 R12 K22 ["useTokens"]
       78 CALL                             R11 1 1
       79 DUPCLOSURE                       R12 K23 [PROTO_0]
       80 DUPCLOSURE                       R13 K24 [PROTO_2]
       81 DUPCLOSURE                       R14 K25 [PROTO_4]
       82 DUPCLOSURE                       R15 K26 [PROTO_8]
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R5
       92 DUPCLOSURE                       R16 K27 [PROTO_16]
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R15
      100 DUPTABLE                         R17 K30 [{"summary", "stories"}]
      101 LOADK                            R18 K31 ["Configure token overrides that apply to all other stories"]
      102 SETTABLEKS                       R18 R17 K28 ["summary"]
      104 GETTABLEKS                       R18 R2 K32 ["map"]
      106 NEWTABLE                         R19 0 14
      108 LOADK                            R20 K33 ["Surface"]
      109 LOADK                            R21 K34 ["Shift"]
      110 LOADK                            R22 K35 ["OverMedia"]
      111 LOADK                            R23 K36 ["ActionAlert"]
      112 LOADK                            R24 K37 ["ActionEmphasis"]
      113 LOADK                            R25 K38 ["ActionSoftEmphasis"]
      114 LOADK                            R26 K39 ["ActionStandard"]
      115 LOADK                            R27 K40 ["ActionSubtle"]
      116 LOADK                            R28 K41 ["ActionLink"]
      117 LOADK                            R29 K42 ["ActionUtility"]
      118 LOADK                            R30 K43 ["Content"]
      119 LOADK                            R31 K44 ["Stroke"]
      120 LOADK                            R32 K45 ["System"]
      121 LOADK                            R33 K46 ["Common"]
      122 SETLIST                          R19 R20 14 [1]
      124 DUPCLOSURE                       R20 K47 [PROTO_17]
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R15
      132 CALL                             R18 2 1
      133 SETTABLEKS                       R18 R17 K29 ["stories"]
      135 RETURN                           R17 1
