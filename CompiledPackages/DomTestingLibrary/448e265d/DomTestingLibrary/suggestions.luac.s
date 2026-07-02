PROTO_0:
        0 LOADK                            R3 K0 ["([\\%.%*%+\\%-%?%^%${}%(%)|%[%]])"]
        1 LOADK                            R4 K1 ["\\%1"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R3 R0 K0 ["lower"]
        3 CALL                             R3 1 1
        4 LOADK                            R6 K1 ["([\\%.%*%+\\%-%?%^%${}%(%)|%[%]])"]
        5 LOADK                            R7 K2 ["\\%1"]
        6 NAMECALL                         R4 R3 K3 ["gsub"]
        8 CALL                             R4 3 1
        9 MOVE                             R2 R4
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_2:
        0 LOADN                            R3 1
        1 LOADN                            R4 2
        2 FASTCALL3                        TABLE_UNPACK R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K2 [table.unpack]
        7 CALL                             R1 3 2
        8 LOADK                            R3 K3 ["%s: %s"]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K5 [tostring]
       13 CALL                             R5 1 1
       14 FASTCALL1                        TOSTRING R2 ; [+3]
       15 MOVE                             R7 R2
       16 GETIMPORT                        R6 K5 [tostring]
       18 CALL                             R6 1 1
       19 NAMECALL                         R3 R3 K6 ["format"]
       21 CALL                             R3 3 -1
       22 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toJSBoolean"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["warn"]
        9 LOADK                            R1 K1 [""]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R1 2
       12 LOADN                            R2 1
       13 LOADN                            R3 2
       14 FASTCALL                         TABLE_UNPACK ; [+2]
       15 GETIMPORT                        R0 K5 [table.unpack]
       17 CALL                             R0 3 2
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R2 K7 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K8 ["string"] ; [+8]
       25 LOADK                            R2 K9 ["'%s'"]
       26 MOVE                             R4 R0
       27 NAMECALL                         R2 R2 K10 ["format"]
       29 CALL                             R2 2 1
       30 MOVE                             R0 R2
       31 JUMP                             ; [0]
       32 JUMPIFEQKNIL                     R1 ; [+22]
       34 LOADK                            R2 K11 [", { %s }"]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R4 R4 K12 ["join"]
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K13 ["map"]
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R6 R6 K14 ["entries"]
       44 MOVE                             R7 R1
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K15 [PROTO_2]
       47 CALL                             R5 2 1
       48 LOADK                            R6 K16 [", "]
       49 CALL                             R4 2 -1
       50 NAMECALL                         R2 R2 K10 ["format"]
       52 CALL                             R2 -1 1
       53 MOVE                             R1 R2
       54 JUMP                             ; [+1]
       55 LOADK                            R1 K1 [""]
       56 LOADK                            R2 K17 ["%s(%s%s)"]
       57 GETUPVAL                         R4 5
       58 FASTCALL1                        TOSTRING R0 ; [+3]
       59 MOVE                             R6 R0
       60 GETIMPORT                        R5 K19 [tostring]
       62 CALL                             R5 1 1
       63 FASTCALL1                        TOSTRING R1 ; [+3]
       64 MOVE                             R7 R1
       65 GETIMPORT                        R6 K19 [tostring]
       67 CALL                             R6 1 1
       68 NAMECALL                         R2 R2 K10 ["format"]
       70 CALL                             R2 4 -1
       71 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R4 R3 K0 ["variant"]
        2 GETTABLEKS                       R5 R3 K1 ["name"]
        4 NEWTABLE                         R6 1 0
        6 NEWTABLE                         R7 0 1
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K2 ["includes"]
       11 NEWTABLE                         R10 0 2
       13 LOADK                            R11 K3 ["Role"]
       14 LOADK                            R12 K4 ["TestId"]
       15 SETLIST                          R10 R11 2 [1]
       17 MOVE                             R11 R0
       18 CALL                             R9 2 1
       19 JUMPIFNOT                        R9 ; [+2]
       20 MOVE                             R8 R2
       21 JUMP                             ; [+11]
       22 GETUPVAL                         R8 1
       23 NAMECALL                         R10 R2 K5 ["lower"]
       25 CALL                             R10 1 1
       26 LOADK                            R13 K6 ["([\\%.%*%+\\%-%?%^%${}%(%)|%[%]])"]
       27 LOADK                            R14 K7 ["\\%1"]
       28 NAMECALL                         R11 R10 K8 ["gsub"]
       30 CALL                             R11 3 1
       31 MOVE                             R9 R11
       32 CALL                             R8 1 1
       33 SETLIST                          R7 R8 1 [1]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K9 ["toJSBoolean"]
       38 MOVE                             R9 R5
       39 CALL                             R8 1 1
       40 JUMPIFNOT                        R8 ; [+13]
       41 GETUPVAL                         R8 1
       42 NAMECALL                         R10 R5 K5 ["lower"]
       44 CALL                             R10 1 1
       45 LOADK                            R13 K6 ["([\\%.%*%+\\%-%?%^%${}%(%)|%[%]])"]
       46 LOADK                            R14 K7 ["\\%1"]
       47 NAMECALL                         R11 R10 K8 ["gsub"]
       49 CALL                             R11 3 1
       50 MOVE                             R9 R11
       51 CALL                             R8 1 1
       52 SETTABLEKS                       R8 R6 K1 ["name"]
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R9 R9 K10 ["keys"]
       57 MOVE                             R10 R6
       58 CALL                             R9 1 1
       59 LENGTH                           R8 R9
       60 LOADN                            R9 0
       61 JUMPIFNOTLT                      R9 R8 ; [+8]
       63 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
       65 MOVE                             R9 R7
       66 MOVE                             R10 R6
       67 GETIMPORT                        R8 K13 [table.insert]
       69 CALL                             R8 2 0
       70 LOADK                            R8 K14 ["%sBy%s"]
       71 MOVE                             R10 R4
       72 MOVE                             R11 R0
       73 NAMECALL                         R8 R8 K15 ["format"]
       75 CALL                             R8 3 1
       76 DUPTABLE                         R9 K22 [{["queryName"], ["queryMethod"], ["queryArgs"], [4], ["warning"] = "", ["toString"]}]
       77 SETTABLEKS                       R0 R9 K16 ["queryName"]
       79 SETTABLEKS                       R8 R9 K17 ["queryMethod"]
       81 SETTABLEKS                       R7 R9 K18 ["queryArgs"]
       83 SETTABLEKS                       R4 R9 K0 ["variant"]
       85 NEWCLOSURE                       R10 P0
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R7
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          VAL R8
       92 SETTABLEKS                       R10 R9 K21 ["toString"]
       94 RETURN                           R9 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        3 MOVE                             R5 R2
        4 CALL                             R4 1 1
        5 JUMPIFNOT                        R4 ; [+18]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        9 MOVE                             R5 R1
       10 CALL                             R4 1 1
       11 NOT                              R3 R4
       12 JUMPIF                           R3 ; [+12]
       13 NAMECALL                         R4 R1 K1 ["lower"]
       15 CALL                             R4 1 1
       16 NAMECALL                         R5 R0 K1 ["lower"]
       18 CALL                             R5 1 1
       19 JUMPIFEQ                         R4 R5 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1
       24 LOADB                            R3 0
       25 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PlaceholderText"]
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Text"]
        3 RETURN                           R0 1

PROTO_8:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADK                            R3 K0 ["get"]
        3 JUMP                             ; [+1]
        4 MOVE                             R3 R1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["includes"]
        8 GETUPVAL                         R5 1
        9 CALL                             R5 0 1
       10 GETTABLEKS                       R5 R5 K2 ["defaultIgnore"]
       12 GETTABLEKS                       R6 R0 K3 ["ClassName"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R4 ; [+2]
       16 LOADNIL                          R4
       17 RETURN                           R4 1
       18 GETIMPORT                        R4 K5 [pcall]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 CALL                             R4 1 2
       23 JUMPIFNOT                        R4 ; [+36]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K6 ["toJSBoolean"]
       27 MOVE                             R8 R5
       28 CALL                             R7 1 1
       29 JUMPIFNOT                        R7 ; [+19]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K6 ["toJSBoolean"]
       33 MOVE                             R8 R2
       34 CALL                             R7 1 1
       35 NOT                              R6 R7
       36 JUMPIF                           R6 ; [+13]
       37 NAMECALL                         R7 R2 K7 ["lower"]
       39 CALL                             R7 1 1
       40 LOADK                            R8 K8 ["PlaceholderText"]
       41 NAMECALL                         R8 R8 K7 ["lower"]
       43 CALL                             R8 1 1
       44 JUMPIFEQ                         R7 R8 ; [+2]
       46 LOADB                            R6 0 +1
       47 LOADB                            R6 1
       48 JUMP                             ; [+1]
       49 LOADB                            R6 0
       50 JUMPIFNOT                        R6 ; [+9]
       51 GETUPVAL                         R6 3
       52 LOADK                            R7 K8 ["PlaceholderText"]
       53 MOVE                             R8 R0
       54 MOVE                             R9 R5
       55 DUPTABLE                         R10 K10 [{"variant"}]
       56 SETTABLEKS                       R3 R10 K9 ["variant"]
       58 CALL                             R6 4 1
       59 RETURN                           R6 1
       60 GETUPVAL                         R6 4
       61 GETUPVAL                         R7 5
       62 MOVE                             R8 R0
       63 CALL                             R7 1 -1
       64 CALL                             R6 -1 1
       65 GETUPVAL                         R8 2
       66 GETTABLEKS                       R8 R8 K6 ["toJSBoolean"]
       68 MOVE                             R9 R6
       69 CALL                             R8 1 1
       70 JUMPIFNOT                        R8 ; [+19]
       71 GETUPVAL                         R8 2
       72 GETTABLEKS                       R8 R8 K6 ["toJSBoolean"]
       74 MOVE                             R9 R2
       75 CALL                             R8 1 1
       76 NOT                              R7 R8
       77 JUMPIF                           R7 ; [+13]
       78 NAMECALL                         R8 R2 K7 ["lower"]
       80 CALL                             R8 1 1
       81 LOADK                            R9 K11 ["Text"]
       82 NAMECALL                         R9 R9 K7 ["lower"]
       84 CALL                             R9 1 1
       85 JUMPIFEQ                         R8 R9 ; [+2]
       87 LOADB                            R7 0 +1
       88 LOADB                            R7 1
       89 JUMP                             ; [+1]
       90 LOADB                            R7 0
       91 JUMPIFNOT                        R7 ; [+9]
       92 GETUPVAL                         R7 3
       93 LOADK                            R8 K11 ["Text"]
       94 MOVE                             R9 R0
       95 MOVE                             R10 R6
       96 DUPTABLE                         R11 K10 [{"variant"}]
       97 SETTABLEKS                       R3 R11 K9 ["variant"]
       99 CALL                             R7 4 1
      100 RETURN                           R7 1
      101 GETIMPORT                        R7 K5 [pcall]
      103 NEWCLOSURE                       R8 P1
      104 CAPTURE                          VAL R0
      105 CALL                             R7 1 2
      106 JUMPIFNOT                        R7 ; [+38]
      107 GETUPVAL                         R10 2
      108 GETTABLEKS                       R10 R10 K6 ["toJSBoolean"]
      110 MOVE                             R11 R8
      111 CALL                             R10 1 1
      112 JUMPIFNOT                        R10 ; [+19]
      113 GETUPVAL                         R10 2
      114 GETTABLEKS                       R10 R10 K6 ["toJSBoolean"]
      116 MOVE                             R11 R2
      117 CALL                             R10 1 1
      118 NOT                              R9 R10
      119 JUMPIF                           R9 ; [+13]
      120 NAMECALL                         R10 R2 K7 ["lower"]
      122 CALL                             R10 1 1
      123 LOADK                            R11 K12 ["DisplayValue"]
      124 NAMECALL                         R11 R11 K7 ["lower"]
      126 CALL                             R11 1 1
      127 JUMPIFEQ                         R10 R11 ; [+2]
      129 LOADB                            R9 0 +1
      130 LOADB                            R9 1
      131 JUMP                             ; [+1]
      132 LOADB                            R9 0
      133 JUMPIFNOT                        R9 ; [+11]
      134 GETUPVAL                         R9 3
      135 LOADK                            R10 K12 ["DisplayValue"]
      136 MOVE                             R11 R0
      137 GETUPVAL                         R12 4
      138 MOVE                             R13 R8
      139 CALL                             R12 1 1
      140 DUPTABLE                         R13 K10 [{"variant"}]
      141 SETTABLEKS                       R3 R13 K9 ["variant"]
      143 CALL                             R9 4 1
      144 RETURN                           R9 1
      145 GETUPVAL                         R9 6
      146 MOVE                             R10 R0
      147 CALL                             R9 1 1
      148 JUMPIFNOT                        R9 ; [+36]
      149 GETUPVAL                         R11 2
      150 GETTABLEKS                       R11 R11 K6 ["toJSBoolean"]
      152 MOVE                             R12 R9
      153 CALL                             R11 1 1
      154 JUMPIFNOT                        R11 ; [+19]
      155 GETUPVAL                         R11 2
      156 GETTABLEKS                       R11 R11 K6 ["toJSBoolean"]
      158 MOVE                             R12 R2
      159 CALL                             R11 1 1
      160 NOT                              R10 R11
      161 JUMPIF                           R10 ; [+13]
      162 NAMECALL                         R11 R2 K7 ["lower"]
      164 CALL                             R11 1 1
      165 LOADK                            R12 K13 ["TestId"]
      166 NAMECALL                         R12 R12 K7 ["lower"]
      168 CALL                             R12 1 1
      169 JUMPIFEQ                         R11 R12 ; [+2]
      171 LOADB                            R10 0 +1
      172 LOADB                            R10 1
      173 JUMP                             ; [+1]
      174 LOADB                            R10 0
      175 JUMPIFNOT                        R10 ; [+9]
      176 GETUPVAL                         R10 3
      177 LOADK                            R11 K13 ["TestId"]
      178 MOVE                             R12 R0
      179 MOVE                             R13 R9
      180 DUPTABLE                         R14 K10 [{"variant"}]
      181 SETTABLEKS                       R3 R14 K9 ["variant"]
      183 CALL                             R10 4 1
      184 RETURN                           R10 1
      185 LOADNIL                          R10
      186 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETTABLEKS                       R4 R1 K8 ["Object"]
       18 GETTABLEKS                       R5 R1 K9 ["console"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K10 ["LuauRegExp"]
       24 CALL                             R6 1 1
       25 GETIMPORT                        R7 K4 [require]
       27 GETIMPORT                        R9 K1 [script]
       29 GETTABLEKS                       R9 R9 K2 ["Parent"]
       31 GETTABLEKS                       R8 R9 K11 ["get-node-test-id"]
       33 CALL                             R7 1 1
       34 GETTABLEKS                       R7 R7 K12 ["getNodeTestId"]
       36 GETIMPORT                        R8 K4 [require]
       38 GETIMPORT                        R9 K1 [script]
       40 GETTABLEKS                       R9 R9 K2 ["Parent"]
       42 GETTABLEKS                       R9 R9 K13 ["types"]
       44 GETTABLEKS                       R9 R9 K14 ["suggestions"]
       46 CALL                             R8 1 1
       47 NEWTABLE                         R9 1 0
       49 GETIMPORT                        R10 K4 [require]
       51 GETIMPORT                        R11 K1 [script]
       53 GETTABLEKS                       R11 R11 K2 ["Parent"]
       55 GETTABLEKS                       R11 R11 K15 ["matches"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R10 R10 K16 ["getDefaultNormalizer"]
       60 GETIMPORT                        R11 K4 [require]
       62 GETIMPORT                        R13 K1 [script]
       64 GETTABLEKS                       R13 R13 K2 ["Parent"]
       66 GETTABLEKS                       R12 R13 K17 ["get-node-text"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R11 R11 K18 ["getNodeText"]
       71 GETIMPORT                        R12 K4 [require]
       73 GETIMPORT                        R13 K1 [script]
       75 GETTABLEKS                       R13 R13 K2 ["Parent"]
       77 GETTABLEKS                       R13 R13 K19 ["config"]
       79 CALL                             R12 1 1
       80 GETTABLEKS                       R12 R12 K20 ["getConfig"]
       82 MOVE                             R13 R10
       83 CALL                             R13 0 1
       84 DUPCLOSURE                       R14 K21 [PROTO_0]
       85 DUPCLOSURE                       R15 K22 [PROTO_1]
       86 CAPTURE                          VAL R6
       87 DUPCLOSURE                       R16 K23 [PROTO_4]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R5
       93 DUPCLOSURE                       R17 K24 [PROTO_5]
       94 CAPTURE                          VAL R3
       95 DUPCLOSURE                       R18 K25 [PROTO_8]
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R16
      100 CAPTURE                          VAL R13
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R7
      103 SETTABLEKS                       R18 R9 K26 ["getSuggestedQuery"]
      105 RETURN                           R9 1
