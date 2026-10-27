PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["escapeRegex"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R3 R1 K0 ["expandRange"]
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K2 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["function"] ; [+11]
        8 GETTABLEKS                       R2 R1 K0 ["expandRange"]
       10 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       11 MOVE                             R4 R0
       12 GETIMPORT                        R3 K6 [table.unpack]
       14 CALL                             R3 1 1
       15 MOVE                             R4 R1
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K7 ["sort"]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 0
       23 LOADK                            R2 K8 ["[%s]"]
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K9 ["join"]
       27 MOVE                             R5 R0
       28 LOADK                            R6 K10 ["-"]
       29 CALL                             R4 2 -1
       30 NAMECALL                         R2 R2 K11 ["format"]
       32 CALL                             R2 -1 1
       33 GETIMPORT                        R3 K13 [pcall]
       35 NEWCLOSURE                       R4 P0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R2
       38 CALL                             R3 1 1
       39 JUMPIF                           R3 ; [+13]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K9 ["join"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K14 ["map"]
       46 MOVE                             R6 R0
       47 DUPCLOSURE                       R7 K15 [PROTO_1]
       48 CAPTURE                          UPVAL U2
       49 CALL                             R5 2 1
       50 LOADK                            R6 K16 [".."]
       51 CALL                             R4 2 -1
       52 RETURN                           R4 -1
       53 RETURN                           R2 1

PROTO_3:
        0 LOADK                            R2 K0 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 4 -1
        7 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 CALL                             R3 2 -1
        4 RETURN                           R3 -1

PROTO_5:
        0 LOADK                            R1 K0 ["(%s(?:(?!%s%s).)*?)"]
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K1 ["toJSBoolean"]
        6 GETTABLEKS                       R7 R0 K2 ["dot"]
        8 CALL                             R6 1 1
        9 JUMPIFNOT                        R6 ; [+2]
       10 GETUPVAL                         R5 3
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R5 4
       13 NAMECALL                         R1 R1 K3 ["format"]
       15 CALL                             R1 4 -1
       16 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["index"]
        3 GETUPVAL                         R2 1
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 RETURN                           R0 1

PROTO_7:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 MOVE                             R1 R0
        3 JUMP                             ; [+1]
        4 LOADN                            R1 1
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K0 ["index"]
        9 ADD                              R4 R5 R1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K0 ["index"]
       13 ADD                              R5 R6 R1
       14 FASTCALL                         STRING_SUB ; [+2]
       15 GETIMPORT                        R2 K3 [string.sub]
       17 CALL                             R2 3 1
       18 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["index"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["index"]
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["index"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["index"]
       13 FASTCALL                         STRING_SUB ; [+2]
       14 GETIMPORT                        R1 K5 [string.sub]
       16 CALL                             R1 3 1
       17 ORK                              R0 R1 K2 [""]
       18 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K1 ["index"]
        4 ADDK                             R2 R3 K0 [1]
        5 FASTCALL2                        STRING_SUB R1 R2 ; [+3]
        7 GETIMPORT                        R0 K4 [string.sub]
        9 CALL                             R0 2 1
       10 RETURN                           R0 1

PROTO_10:
        0 ORK                              R2 R0 K0 [""]
        1 ORK                              R3 R1 K1 [0]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R6 R4 K2 ["consumed"]
        5 MOVE                             R7 R2
        6 CONCAT                           R5 R6 R7
        7 SETTABLEKS                       R5 R4 K2 ["consumed"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R5 R4 K3 ["index"]
       12 ADD                              R5 R5 R3
       13 SETTABLEKS                       R5 R4 K3 ["index"]
       15 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R1 K0 ["output"]
        3 GETTABLEKS                       R5 R0 K0 ["output"]
        5 JUMPIFEQKNIL                     R5 ; [+4]
        7 GETTABLEKS                       R4 R0 K0 ["output"]
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R4 R0 K1 ["value"]
       12 CONCAT                           R2 R3 R4
       13 SETTABLEKS                       R2 R1 K0 ["output"]
       15 GETTABLEKS                       R1 R0 K1 ["value"]
       17 ORK                              R2 R1 K2 [""]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R5 R3 K3 ["consumed"]
       21 MOVE                             R6 R2
       22 CONCAT                           R4 R5 R6
       23 SETTABLEKS                       R4 R3 K3 ["consumed"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R4 R3 K4 ["index"]
       28 ADDK                             R4 R4 K5 [0]
       29 SETTABLEKS                       R4 R3 K4 ["index"]
       31 RETURN                           R0 0

PROTO_12:
        0 LOADN                            R0 1
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIFNOTEQKS                    R1 K0 ["!"] ; [+21]
        5 GETUPVAL                         R1 0
        6 LOADN                            R2 2
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K1 ["("] ; [+6]
       10 GETUPVAL                         R1 0
       11 LOADN                            R2 3
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K2 ["?"] ; [+11]
       15 GETUPVAL                         R1 1
       16 CALL                             R1 0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R2 R1 K3 ["start"]
       20 ADDK                             R2 R2 K4 [1]
       21 SETTABLEKS                       R2 R1 K3 ["start"]
       23 ADDK                             R0 R0 K4 [1]
       24 JUMPBACK                         ; [-24]
       25 MODK                             R1 R0 K5 [2]
       26 JUMPIFNOTEQKN                    R1 K6 [0] ; [+3]
       28 LOADB                            R1 0
       29 RETURN                           R1 1
       30 GETUPVAL                         R1 2
       31 LOADB                            R2 1
       32 SETTABLEKS                       R2 R1 K7 ["negated"]
       34 GETUPVAL                         R1 2
       35 GETTABLEKS                       R2 R1 K3 ["start"]
       37 ADDK                             R2 R2 K4 [1]
       38 SETTABLEKS                       R2 R1 K3 ["start"]
       40 LOADB                            R1 1
       41 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLE                         R2 R1 R0
        2 ADDK                             R2 R2 K0 [1]
        3 SETTABLE                         R2 R1 R0
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R1 K3 [table.insert]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLE                         R2 R1 R0
        2 SUBK                             R2 R2 K0 [1]
        3 SETTABLE                         R2 R1 R0
        4 GETIMPORT                        R1 K3 [table.remove]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["type"]
        3 JUMPIFNOTEQKS                    R1 K1 ["globstar"] ; [+89]
        5 LOADB                            R1 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["braces"]
        9 LOADN                            R3 0
       10 JUMPIFNOTLT                      R3 R2 ; [+12]
       12 LOADB                            R1 1
       13 GETTABLEKS                       R2 R0 K0 ["type"]
       15 JUMPIFEQKS                       R2 K3 ["comma"] ; [+7]
       17 GETTABLEKS                       R2 R0 K0 ["type"]
       19 JUMPIFEQKS                       R2 K4 ["brace"] ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 LOADB                            R2 1
       24 GETTABLEKS                       R3 R0 K5 ["extglob"]
       26 JUMPIFEQKB                       R3 TRUE ; [+19]
       28 GETUPVAL                         R4 2
       29 LENGTH                           R3 R4
       30 JUMPIFEQKN                       R3 K6 [0] ; [+13]
       32 LOADB                            R2 1
       33 GETTABLEKS                       R3 R0 K0 ["type"]
       35 JUMPIFEQKS                       R3 K7 ["pipe"] ; [+10]
       37 GETTABLEKS                       R3 R0 K0 ["type"]
       39 JUMPIFEQKS                       R3 K8 ["paren"] ; [+2]
       41 LOADB                            R2 0 +1
       42 LOADB                            R2 1
       43 JUMP                             ; [+2]
       44 GETUPVAL                         R3 2
       45 LENGTH                           R2 R3
       46 GETTABLEKS                       R3 R0 K0 ["type"]
       48 JUMPIFEQKS                       R3 K9 ["slash"] ; [+44]
       50 GETTABLEKS                       R3 R0 K0 ["type"]
       52 JUMPIFEQKS                       R3 K8 ["paren"] ; [+40]
       54 JUMPIF                           R1 ; [+38]
       55 JUMPIF                           R2 ; [+37]
       56 GETUPVAL                         R3 1
       57 GETUPVAL                         R4 3
       58 GETTABLEKS                       R4 R4 K10 ["slice"]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K11 ["output"]
       63 LOADN                            R6 0
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R9 R9 K11 ["output"]
       67 LENGTH                           R8 R9
       68 MINUS                            R7 R8
       69 CALL                             R4 3 1
       70 SETTABLEKS                       R4 R3 K11 ["output"]
       72 GETUPVAL                         R3 0
       73 LOADK                            R4 K12 ["star"]
       74 SETTABLEKS                       R4 R3 K0 ["type"]
       76 GETUPVAL                         R3 0
       77 LOADK                            R4 K13 ["*"]
       78 SETTABLEKS                       R4 R3 K14 ["value"]
       80 GETUPVAL                         R3 0
       81 GETUPVAL                         R4 4
       82 SETTABLEKS                       R4 R3 K11 ["output"]
       84 GETUPVAL                         R3 1
       85 GETTABLEKS                       R5 R3 K11 ["output"]
       87 GETUPVAL                         R6 0
       88 GETTABLEKS                       R6 R6 K11 ["output"]
       90 CONCAT                           R4 R5 R6
       91 SETTABLEKS                       R4 R3 K11 ["output"]
       93 GETUPVAL                         R2 2
       94 LENGTH                           R1 R2
       95 JUMPIFEQKN                       R1 K6 [0] ; [+16]
       97 GETTABLEKS                       R1 R0 K0 ["type"]
       99 JUMPIFEQKS                       R1 K8 ["paren"] ; [+12]
      101 GETUPVAL                         R2 2
      102 GETUPVAL                         R4 2
      103 LENGTH                           R3 R4
      104 GETTABLE                         R1 R2 R3
      105 GETTABLEKS                       R3 R1 K15 ["inner"]
      107 GETTABLEKS                       R4 R0 K14 ["value"]
      109 CONCAT                           R2 R3 R4
      110 SETTABLEKS                       R2 R1 K15 ["inner"]
      112 GETUPVAL                         R1 5
      113 GETTABLEKS                       R1 R1 K16 ["toJSBoolean"]
      115 GETTABLEKS                       R2 R0 K14 ["value"]
      117 CALL                             R1 1 1
      118 JUMPIF                           R1 ; [+7]
      119 GETUPVAL                         R1 5
      120 GETTABLEKS                       R1 R1 K16 ["toJSBoolean"]
      122 GETTABLEKS                       R2 R0 K11 ["output"]
      124 CALL                             R1 1 1
      125 JUMPIFNOT                        R1 ; [+31]
      126 GETUPVAL                         R1 1
      127 GETTABLEKS                       R3 R1 K11 ["output"]
      129 GETTABLEKS                       R5 R0 K11 ["output"]
      131 JUMPIFEQKNIL                     R5 ; [+4]
      133 GETTABLEKS                       R4 R0 K11 ["output"]
      135 JUMP                             ; [+2]
      136 GETTABLEKS                       R4 R0 K14 ["value"]
      138 CONCAT                           R2 R3 R4
      139 SETTABLEKS                       R2 R1 K11 ["output"]
      141 GETTABLEKS                       R1 R0 K14 ["value"]
      143 ORK                              R2 R1 K17 [""]
      144 GETUPVAL                         R3 1
      145 GETTABLEKS                       R5 R3 K18 ["consumed"]
      147 MOVE                             R6 R2
      148 CONCAT                           R4 R5 R6
      149 SETTABLEKS                       R4 R3 K18 ["consumed"]
      151 GETUPVAL                         R3 1
      152 GETTABLEKS                       R4 R3 K19 ["index"]
      154 ADDK                             R4 R4 K6 [0]
      155 SETTABLEKS                       R4 R3 K19 ["index"]
      157 GETUPVAL                         R1 0
      158 JUMPIFEQKNIL                     R1 ; [+29]
      160 GETUPVAL                         R1 0
      161 GETTABLEKS                       R1 R1 K0 ["type"]
      163 JUMPIFNOTEQKS                    R1 K20 ["text"] ; [+24]
      165 GETTABLEKS                       R1 R0 K0 ["type"]
      167 JUMPIFNOTEQKS                    R1 K20 ["text"] ; [+20]
      169 GETUPVAL                         R1 0
      170 GETTABLEKS                       R3 R1 K14 ["value"]
      172 GETTABLEKS                       R4 R0 K14 ["value"]
      174 CONCAT                           R2 R3 R4
      175 SETTABLEKS                       R2 R1 K14 ["value"]
      177 GETUPVAL                         R1 0
      178 GETUPVAL                         R5 0
      179 GETTABLEKS                       R5 R5 K11 ["output"]
      181 ORK                              R3 R5 K17 [""]
      182 GETTABLEKS                       R4 R0 K14 ["value"]
      184 CONCAT                           R2 R3 R4
      185 SETTABLEKS                       R2 R1 K11 ["output"]
      187 RETURN                           R0 0
      188 GETUPVAL                         R1 0
      189 SETTABLEKS                       R1 R0 K21 ["prev"]
      191 GETUPVAL                         R2 6
      192 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
      194 MOVE                             R3 R0
      195 GETIMPORT                        R1 K24 [table.insert]
      197 CALL                             R1 2 0
      198 SETUPVAL                         R0 0
      199 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["assign"]
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R5 1
        6 GETTABLE                         R4 R5 R1
        7 DUPTABLE                         R5 K5 [{["conditions"] = 1, ["inner"] = ""}]
        8 CALL                             R2 3 1
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K6 ["prev"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K7 ["parens"]
       15 SETTABLEKS                       R3 R2 K7 ["parens"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K8 ["output"]
       20 SETTABLEKS                       R3 R2 K8 ["output"]
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R6 R6 K9 ["toJSBoolean"]
       25 GETUPVAL                         R7 5
       26 GETTABLEKS                       R7 R7 K10 ["capture"]
       28 CALL                             R6 1 1
       29 JUMPIFNOT                        R6 ; [+2]
       30 LOADK                            R4 K11 ["("]
       31 JUMP                             ; [+1]
       32 LOADK                            R4 K4 [""]
       33 GETTABLEKS                       R5 R2 K12 ["open"]
       35 CONCAT                           R3 R4 R5
       36 GETUPVAL                         R4 3
       37 GETTABLEKS                       R5 R4 K7 ["parens"]
       39 ADDK                             R5 R5 K2 [1]
       40 SETTABLEKS                       R5 R4 K7 ["parens"]
       42 GETUPVAL                         R5 6
       43 FASTCALL2K                       TABLE_INSERT R5 K7 ; [+4]
       45 LOADK                            R6 K7 ["parens"]
       46 GETIMPORT                        R4 K15 [table.insert]
       48 CALL                             R4 2 0
       49 GETUPVAL                         R4 7
       50 DUPTABLE                         R5 K18 [{"type", "value", "output"}]
       51 SETTABLEKS                       R0 R5 K16 ["type"]
       53 SETTABLEKS                       R1 R5 K17 ["value"]
       55 GETUPVAL                         R7 4
       56 GETTABLEKS                       R7 R7 K9 ["toJSBoolean"]
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K8 ["output"]
       61 CALL                             R7 1 1
       62 JUMPIFNOT                        R7 ; [+2]
       63 LOADK                            R6 K4 [""]
       64 JUMP                             ; [+1]
       65 GETUPVAL                         R6 8
       66 SETTABLEKS                       R6 R5 K8 ["output"]
       68 CALL                             R4 1 0
       69 GETUPVAL                         R4 7
       70 DUPTABLE                         R5 K22 [{["type"] = "paren", ["extglob"] = True, ["value"], ["output"]}]
       71 GETUPVAL                         R6 9
       72 CALL                             R6 0 1
       73 SETTABLEKS                       R6 R5 K17 ["value"]
       75 SETTABLEKS                       R3 R5 K8 ["output"]
       77 CALL                             R4 1 0
       78 GETUPVAL                         R5 10
       79 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       81 MOVE                             R6 R2
       82 GETIMPORT                        R4 K15 [table.insert]
       84 CALL                             R4 2 0
       85 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 1
        1 GETUPVAL                         R3 2
        2 GETTABLEKS                       R3 R3 K1 ["index"]
        4 ADDK                             R2 R3 K0 [1]
        5 FASTCALL2                        STRING_SUB R1 R2 ; [+3]
        7 GETIMPORT                        R0 K4 [string.sub]
        9 CALL                             R0 2 1
       10 SETUPVAL                         R0 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["close"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["toJSBoolean"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K2 ["capture"]
        8 CALL                             R4 1 1
        9 JUMPIFNOT                        R4 ; [+2]
       10 LOADK                            R3 K3 [")"]
       11 JUMP                             ; [+1]
       12 LOADK                            R3 K4 [""]
       13 CONCAT                           R1 R2 R3
       14 LOADNIL                          R2
       15 GETTABLEKS                       R3 R0 K5 ["type"]
       17 JUMPIFNOTEQKS                    R3 K6 ["negate"] ; [+142]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R4 R0 K7 ["inner"]
       22 JUMPIFEQKNIL                     R4 ; [+35]
       24 GETTABLEKS                       R5 R0 K7 ["inner"]
       26 LENGTH                           R4 R5
       27 LOADN                            R5 1
       28 JUMPIFNOTLT                      R5 R4 ; [+29]
       30 GETTABLEKS                       R4 R0 K7 ["inner"]
       32 LOADK                            R6 K8 ["/"]
       33 LOADN                            R7 1
       34 LOADB                            R8 1
       35 NAMECALL                         R4 R4 K9 ["find"]
       37 CALL                             R4 4 1
       38 JUMPIFEQKNIL                     R4 ; [+19]
       40 GETUPVAL                         R4 1
       41 LOADK                            R5 K10 ["(%s(?:(?!%s%s).)*?)"]
       42 GETUPVAL                         R7 3
       43 GETUPVAL                         R8 4
       44 GETUPVAL                         R10 0
       45 GETTABLEKS                       R10 R10 K1 ["toJSBoolean"]
       47 GETTABLEKS                       R11 R4 K11 ["dot"]
       49 CALL                             R10 1 1
       50 JUMPIFNOT                        R10 ; [+2]
       51 GETUPVAL                         R9 5
       52 JUMP                             ; [+1]
       53 GETUPVAL                         R9 6
       54 NAMECALL                         R5 R5 K12 ["format"]
       56 CALL                             R5 4 1
       57 MOVE                             R3 R5
       58 GETUPVAL                         R4 2
       59 JUMPIFNOTEQ                      R3 R4 ; [+27]
       61 GETUPVAL                         R5 7
       62 GETTABLEKS                       R5 R5 K13 ["index"]
       64 GETUPVAL                         R6 8
       65 JUMPIFEQ                         R5 R6 ; [+2]
       67 LOADB                            R4 0 +1
       68 LOADB                            R4 1
       69 JUMPIF                           R4 ; [+17]
       70 GETUPVAL                         R4 9
       71 LOADK                            R5 K14 ["^\\)+$"]
       72 CALL                             R4 1 1
       73 GETUPVAL                         R7 10
       74 GETUPVAL                         R9 7
       75 GETTABLEKS                       R9 R9 K13 ["index"]
       77 ADDK                             R8 R9 K15 [1]
       78 FASTCALL2                        STRING_SUB R7 R8 ; [+3]
       80 GETIMPORT                        R6 K18 [string.sub]
       82 CALL                             R6 2 1
       83 NAMECALL                         R4 R4 K19 ["test"]
       85 CALL                             R4 2 1
       86 JUMPIFNOT                        R4 ; [+9]
       87 LOADK                            R4 K20 [")$))%s"]
       88 MOVE                             R6 R3
       89 NAMECALL                         R4 R4 K12 ["format"]
       91 CALL                             R4 2 1
       92 SETTABLEKS                       R4 R0 K0 ["close"]
       94 GETTABLEKS                       R1 R0 K0 ["close"]
       96 GETTABLEKS                       R4 R0 K7 ["inner"]
       98 LOADK                            R6 K21 ["*"]
       99 LOADN                            R7 1
      100 LOADB                            R8 1
      101 NAMECALL                         R4 R4 K9 ["find"]
      103 CALL                             R4 4 1
      104 JUMPIFEQKNIL                     R4 ; [+45]
      106 GETUPVAL                         R6 10
      107 GETUPVAL                         R8 7
      108 GETTABLEKS                       R8 R8 K13 ["index"]
      110 ADDK                             R7 R8 K15 [1]
      111 FASTCALL2                        STRING_SUB R6 R7 ; [+3]
      113 GETIMPORT                        R5 K18 [string.sub]
      115 CALL                             R5 2 1
      116 MOVE                             R2 R5
      117 MOVE                             R4 R2
      118 JUMPIFNOT                        R4 ; [+31]
      119 GETUPVAL                         R4 9
      120 LOADK                            R5 K22 ["^\\.[^\\\\/.]+$"]
      121 CALL                             R4 1 1
      122 MOVE                             R6 R2
      123 NAMECALL                         R4 R4 K19 ["test"]
      125 CALL                             R4 2 1
      126 JUMPIFNOT                        R4 ; [+23]
      127 GETUPVAL                         R4 11
      128 MOVE                             R5 R2
      129 GETUPVAL                         R6 12
      130 GETTABLEKS                       R6 R6 K23 ["assign"]
      132 NEWTABLE                         R7 0 0
      134 GETUPVAL                         R8 13
      135 DUPTABLE                         R9 K26 [{["fastpaths"] = False}]
      136 CALL                             R6 3 -1
      137 CALL                             R4 -1 1
      138 GETTABLEKS                       R4 R4 K27 ["output"]
      140 LOADK                            R5 K28 [")%s)%s)"]
      141 MOVE                             R7 R4
      142 MOVE                             R8 R3
      143 NAMECALL                         R5 R5 K12 ["format"]
      145 CALL                             R5 3 1
      146 SETTABLEKS                       R5 R0 K0 ["close"]
      148 GETTABLEKS                       R1 R0 K0 ["close"]
      150 GETTABLEKS                       R4 R0 K29 ["prev"]
      152 GETTABLEKS                       R4 R4 K5 ["type"]
      154 JUMPIFNOTEQKS                    R4 K30 ["bos"] ; [+5]
      156 GETUPVAL                         R4 7
      157 LOADB                            R5 1
      158 SETTABLEKS                       R5 R4 K31 ["negatedExtglob"]
      160 GETUPVAL                         R3 14
      161 DUPTABLE                         R4 K36 [{["type"] = "paren", ["extglob"] = True, ["value"], ["output"]}]
      162 GETUPVAL                         R5 15
      163 SETTABLEKS                       R5 R4 K35 ["value"]
      165 SETTABLEKS                       R1 R4 K27 ["output"]
      167 CALL                             R3 1 0
      168 GETUPVAL                         R3 7
      169 GETTABLEKS                       R4 R3 K37 ["parens"]
      171 SUBK                             R4 R4 K15 [1]
      172 SETTABLEKS                       R4 R3 K37 ["parens"]
      174 GETIMPORT                        R3 K40 [table.remove]
      176 GETUPVAL                         R4 16
      177 CALL                             R3 1 0
      178 CLOSEUPVALS                      R2
      179 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOTEQKS                    R3 K0 ["\\"] ; [+4]
        2 LOADB                            R6 1
        3 SETUPVAL                         R6 0
        4 RETURN                           R0 1
        5 JUMPIFNOTEQKS                    R3 K1 ["?"] ; [+40]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R6 R6 K2 ["toJSBoolean"]
       10 MOVE                             R7 R1
       11 CALL                             R6 1 1
       12 JUMPIFNOT                        R6 ; [+13]
       13 MOVE                             R7 R1
       14 MOVE                             R8 R3
       15 JUMPIFEQKNIL                     R4 ; [+7]
       17 GETIMPORT                        R9 K5 [string.rep]
       19 GETUPVAL                         R10 2
       20 LENGTH                           R11 R4
       21 CALL                             R9 2 1
       22 JUMP                             ; [+1]
       23 LOADK                            R9 K6 [""]
       24 CONCAT                           R6 R7 R9
       25 RETURN                           R6 1
       26 JUMPIFNOTEQKN                    R5 K7 [0] ; [+13]
       28 GETUPVAL                         R7 3
       29 JUMPIFEQKNIL                     R4 ; [+7]
       31 GETIMPORT                        R8 K5 [string.rep]
       33 GETUPVAL                         R9 2
       34 LENGTH                           R10 R4
       35 CALL                             R8 2 1
       36 JUMP                             ; [+1]
       37 LOADK                            R8 K6 [""]
       38 CONCAT                           R6 R7 R8
       39 RETURN                           R6 1
       40 GETIMPORT                        R6 K5 [string.rep]
       42 GETUPVAL                         R7 2
       43 LENGTH                           R8 R2
       44 CALL                             R6 2 -1
       45 RETURN                           R6 -1
       46 JUMPIFNOTEQKS                    R3 K8 ["."] ; [+7]
       48 GETIMPORT                        R6 K5 [string.rep]
       50 GETUPVAL                         R7 4
       51 LENGTH                           R8 R2
       52 CALL                             R6 2 -1
       53 RETURN                           R6 -1
       54 JUMPIFNOTEQKS                    R3 K9 ["*"] ; [+18]
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R6 R6 K2 ["toJSBoolean"]
       59 MOVE                             R7 R1
       60 CALL                             R6 1 1
       61 JUMPIFNOT                        R6 ; [+9]
       62 MOVE                             R7 R1
       63 MOVE                             R8 R3
       64 JUMPIFEQKNIL                     R4 ; [+3]
       66 GETUPVAL                         R9 5
       67 JUMP                             ; [+1]
       68 LOADK                            R9 K6 [""]
       69 CONCAT                           R6 R7 R9
       70 RETURN                           R6 1
       71 GETUPVAL                         R6 5
       72 RETURN                           R6 1
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K2 ["toJSBoolean"]
       76 MOVE                             R8 R1
       77 CALL                             R7 1 1
       78 JUMPIFNOT                        R7 ; [+2]
       79 MOVE                             R6 R0
       80 RETURN                           R6 1
       81 LOADK                            R6 K10 ["\\%s"]
       82 MOVE                             R8 R0
       83 NAMECALL                         R6 R6 K11 ["format"]
       85 CALL                             R6 2 1
       86 RETURN                           R6 1

PROTO_20:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+9]
        7 GETIMPORT                        R2 K4 [error]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K5 ["new"]
       12 LOADK                            R4 K6 ["TypeError: Expected a string"]
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 0
       15 GETUPVAL                         R3 1
       16 GETTABLE                         R2 R3 R0
       17 OR                               R0 R2 R0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K7 ["assign"]
       21 NEWTABLE                         R3 0 0
       23 MOVE                             R4 R1
       24 CALL                             R2 2 1
       25 GETTABLEKS                       R5 R2 K8 ["maxLength"]
       27 FASTCALL1                        TYPEOF R5 ; [+2]
       28 GETIMPORT                        R4 K1 [typeof]
       30 CALL                             R4 1 1
       31 JUMPIFNOTEQKS                    R4 K9 ["number"] ; [+10]
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R5 R2 K8 ["maxLength"]
       36 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       38 GETIMPORT                        R3 K12 [math.min]
       40 CALL                             R3 2 1
       41 JUMP                             ; [+1]
       42 GETUPVAL                         R3 3
       43 LENGTH                           R4 R0
       44 JUMPIFNOTLT                      R3 R4 ; [+22]
       46 GETIMPORT                        R5 K4 [error]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K5 ["new"]
       51 LOADK                            R7 K13 ["SyntaxError: Input length: %s, exceeds maximum allowed length: %s"]
       52 FASTCALL1                        TOSTRING R4 ; [+3]
       53 MOVE                             R10 R4
       54 GETIMPORT                        R9 K15 [tostring]
       56 CALL                             R9 1 1
       57 FASTCALL1                        TOSTRING R3 ; [+3]
       58 MOVE                             R11 R3
       59 GETIMPORT                        R10 K15 [tostring]
       61 CALL                             R10 1 1
       62 NAMECALL                         R7 R7 K16 ["format"]
       64 CALL                             R7 3 -1
       65 CALL                             R6 -1 -1
       66 CALL                             R5 -1 0
       67 DUPTABLE                         R5 K22 [{["type"] = "bos", ["value"] = "", ["output"]}]
       68 GETTABLEKS                       R7 R2 K23 ["prepend"]
       70 ORK                              R6 R7 K20 [""]
       71 SETTABLEKS                       R6 R5 K21 ["output"]
       73 NEWTABLE                         R6 0 1
       75 MOVE                             R7 R5
       76 SETLIST                          R6 R7 1 [1]
       78 GETUPVAL                         R8 4
       79 GETTABLEKS                       R8 R8 K24 ["toJSBoolean"]
       81 GETTABLEKS                       R9 R2 K25 ["capture"]
       83 CALL                             R8 1 1
       84 JUMPIFNOT                        R8 ; [+2]
       85 LOADK                            R7 K20 [""]
       86 JUMP                             ; [+1]
       87 LOADK                            R7 K26 ["?:"]
       88 GETUPVAL                         R8 5
       89 GETTABLEKS                       R8 R8 K27 ["isWindows"]
       91 MOVE                             R9 R1
       92 CALL                             R8 1 1
       93 GETUPVAL                         R9 6
       94 GETTABLEKS                       R9 R9 K28 ["globChars"]
       96 MOVE                             R10 R8
       97 CALL                             R9 1 1
       98 GETUPVAL                         R10 6
       99 GETTABLEKS                       R10 R10 K29 ["extglobChars"]
      101 MOVE                             R11 R9
      102 CALL                             R10 1 1
      103 GETTABLEKS                       R11 R9 K30 ["DOT_LITERAL"]
      105 GETTABLEKS                       R12 R9 K31 ["PLUS_LITERAL"]
      107 GETTABLEKS                       R13 R9 K32 ["SLASH_LITERAL"]
      109 GETTABLEKS                       R14 R9 K33 ["ONE_CHAR"]
      111 GETTABLEKS                       R15 R9 K34 ["DOTS_SLASH"]
      113 GETTABLEKS                       R16 R9 K35 ["NO_DOT"]
      115 GETTABLEKS                       R17 R9 K36 ["NO_DOT_SLASH"]
      117 GETTABLEKS                       R18 R9 K37 ["NO_DOTS_SLASH"]
      119 GETTABLEKS                       R19 R9 K38 ["QMARK"]
      121 GETTABLEKS                       R20 R9 K39 ["QMARK_NO_DOT"]
      123 GETTABLEKS                       R21 R9 K40 ["STAR"]
      125 GETTABLEKS                       R22 R9 K41 ["START_ANCHOR"]
      127 NEWCLOSURE                       R23 P0
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R22
      130 CAPTURE                          UPVAL U4
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R11
      133 GETUPVAL                         R25 4
      134 GETTABLEKS                       R25 R25 K24 ["toJSBoolean"]
      136 GETTABLEKS                       R26 R2 K42 ["dot"]
      138 CALL                             R25 1 1
      139 JUMPIFNOT                        R25 ; [+2]
      140 LOADK                            R24 K20 [""]
      141 JUMP                             ; [+1]
      142 MOVE                             R24 R16
      143 GETUPVAL                         R26 4
      144 GETTABLEKS                       R26 R26 K24 ["toJSBoolean"]
      146 GETTABLEKS                       R27 R2 K42 ["dot"]
      148 CALL                             R26 1 1
      149 JUMPIFNOT                        R26 ; [+2]
      150 MOVE                             R25 R19
      151 JUMP                             ; [+1]
      152 MOVE                             R25 R20
      153 GETTABLEKS                       R27 R2 K43 ["bash"]
      155 JUMPIFNOTEQKB                    R27 TRUE ; [+18]
      157 LOADK                            R26 K44 ["(%s(?:(?!%s%s).)*?)"]
      158 MOVE                             R28 R7
      159 MOVE                             R29 R22
      160 GETUPVAL                         R31 4
      161 GETTABLEKS                       R31 R31 K24 ["toJSBoolean"]
      163 GETTABLEKS                       R32 R2 K42 ["dot"]
      165 CALL                             R31 1 1
      166 JUMPIFNOT                        R31 ; [+2]
      167 MOVE                             R30 R15
      168 JUMP                             ; [+1]
      169 MOVE                             R30 R11
      170 NAMECALL                         R26 R26 K16 ["format"]
      172 CALL                             R26 4 1
      173 JUMP                             ; [+1]
      174 MOVE                             R26 R21
      175 GETUPVAL                         R27 4
      176 GETTABLEKS                       R27 R27 K24 ["toJSBoolean"]
      178 GETTABLEKS                       R28 R2 K25 ["capture"]
      180 CALL                             R27 1 1
      181 JUMPIFNOT                        R27 ; [+6]
      182 LOADK                            R27 K45 ["(%s)"]
      183 MOVE                             R29 R26
      184 NAMECALL                         R27 R27 K16 ["format"]
      186 CALL                             R27 2 1
      187 MOVE                             R26 R27
      188 GETTABLEKS                       R28 R2 K46 ["noext"]
      190 FASTCALL1                        TYPEOF R28 ; [+2]
      191 GETIMPORT                        R27 K1 [typeof]
      193 CALL                             R27 1 1
      194 JUMPIFNOTEQKS                    R27 K47 ["boolean"] ; [+5]
      196 GETTABLEKS                       R27 R2 K46 ["noext"]
      198 SETTABLEKS                       R27 R2 K48 ["noextglob"]
      200 DUPTABLE                         R27 K65 [{["input"], ["index"] = 0, ["start"] = 1, ["dot"], ["consumed"] = "", ["output"] = "", ["prefix"] = "", ["backtrack"] = False, ["negated"] = False, ["brackets"] = 0, ["braces"] = 0, ["parens"] = 0, ["quotes"] = 0, ["globstar"] = False, ["tokens"]}]
      201 SETTABLEKS                       R0 R27 K49 ["input"]
      203 GETTABLEKS                       R29 R2 K42 ["dot"]
      205 JUMPIFEQKB                       R29 TRUE ; [+2]
      207 LOADB                            R28 0 +1
      208 LOADB                            R28 1
      209 SETTABLEKS                       R28 R27 K42 ["dot"]
      211 SETTABLEKS                       R6 R27 K64 ["tokens"]
      213 GETUPVAL                         R28 5
      214 GETTABLEKS                       R28 R28 K66 ["removePrefix"]
      216 MOVE                             R29 R0
      217 MOVE                             R30 R27
      218 CALL                             R28 2 1
      219 MOVE                             R0 R28
      220 LENGTH                           R4 R0
      221 NEWTABLE                         R28 0 0
      223 NEWTABLE                         R29 0 0
      225 NEWTABLE                         R30 0 0
      227 MOVE                             R31 R5
      228 LOADNIL                          R32
      229 NEWCLOSURE                       R33 P1
      230 CAPTURE                          VAL R27
      231 CAPTURE                          REF R4
      232 NEWCLOSURE                       R34 P2
      233 CAPTURE                          REF R0
      234 CAPTURE                          VAL R27
      235 SETTABLEKS                       R34 R27 K67 ["peek"]
      237 GETTABLEKS                       R34 R27 K67 ["peek"]
      239 NEWCLOSURE                       R35 P3
      240 CAPTURE                          VAL R27
      241 CAPTURE                          REF R0
      242 SETTABLEKS                       R35 R27 K68 ["advance"]
      244 GETTABLEKS                       R35 R27 K68 ["advance"]
      246 NEWCLOSURE                       R36 P4
      247 CAPTURE                          REF R0
      248 CAPTURE                          VAL R27
      249 NEWCLOSURE                       R37 P5
      250 CAPTURE                          VAL R27
      251 NEWCLOSURE                       R38 P6
      252 CAPTURE                          VAL R27
      253 NEWCLOSURE                       R39 P7
      254 CAPTURE                          VAL R34
      255 CAPTURE                          VAL R35
      256 CAPTURE                          VAL R27
      257 NEWCLOSURE                       R40 P8
      258 CAPTURE                          VAL R27
      259 CAPTURE                          VAL R30
      260 NEWCLOSURE                       R41 P9
      261 CAPTURE                          VAL R27
      262 CAPTURE                          VAL R30
      263 NEWCLOSURE                       R42 P10
      264 CAPTURE                          REF R31
      265 CAPTURE                          VAL R27
      266 CAPTURE                          VAL R28
      267 CAPTURE                          UPVAL U7
      268 CAPTURE                          REF R26
      269 CAPTURE                          UPVAL U4
      270 CAPTURE                          VAL R6
      271 NEWCLOSURE                       R43 P11
      272 CAPTURE                          UPVAL U2
      273 CAPTURE                          VAL R10
      274 CAPTURE                          REF R31
      275 CAPTURE                          VAL R27
      276 CAPTURE                          UPVAL U4
      277 CAPTURE                          VAL R2
      278 CAPTURE                          VAL R30
      279 CAPTURE                          VAL R42
      280 CAPTURE                          VAL R14
      281 CAPTURE                          VAL R35
      282 CAPTURE                          VAL R28
      283 NEWCLOSURE                       R44 P12
      284 CAPTURE                          UPVAL U4
      285 CAPTURE                          VAL R2
      286 CAPTURE                          REF R26
      287 CAPTURE                          VAL R7
      288 CAPTURE                          VAL R22
      289 CAPTURE                          VAL R15
      290 CAPTURE                          VAL R11
      291 CAPTURE                          VAL R27
      292 CAPTURE                          REF R4
      293 CAPTURE                          UPVAL U8
      294 CAPTURE                          REF R0
      295 CAPTURE                          UPVAL U9
      296 CAPTURE                          UPVAL U2
      297 CAPTURE                          VAL R1
      298 CAPTURE                          VAL R42
      299 CAPTURE                          REF R32
      300 CAPTURE                          VAL R30
      301 GETTABLEKS                       R45 R2 K69 ["fastpaths"]
      303 JUMPIFEQKB                       R45 FALSE ; [+57]
      305 GETUPVAL                         R45 8
      306 LOADK                            R46 K70 ["(^[*!]|[/()[\\]{}\"])"]
      307 CALL                             R45 1 1
      308 MOVE                             R47 R0
      309 NAMECALL                         R45 R45 K71 ["test"]
      311 CALL                             R45 2 1
      312 JUMPIF                           R45 ; [+48]
      313 LOADB                            R45 0
      314 GETUPVAL                         R46 10
      315 MOVE                             R47 R0
      316 GETUPVAL                         R48 11
      317 NEWCLOSURE                       R49 P13
      318 CAPTURE                          REF R45
      319 CAPTURE                          UPVAL U4
      320 CAPTURE                          VAL R19
      321 CAPTURE                          VAL R25
      322 CAPTURE                          VAL R11
      323 CAPTURE                          REF R26
      324 CALL                             R46 3 1
      325 JUMPIFNOTEQKB                    R45 TRUE ; [+14]
      327 GETTABLEKS                       R47 R2 K72 ["unescape"]
      329 JUMPIFNOTEQKB                    R47 TRUE ; [+6]
      331 GETIMPORT                        R47 K4 [error]
      333 LOADK                            R48 K73 ["not implemented"]
      334 CALL                             R47 1 0
      335 JUMP                             ; [+4]
      336 GETIMPORT                        R47 K4 [error]
      338 LOADK                            R48 K73 ["not implemented"]
      339 CALL                             R47 1 0
      340 JUMPIFNOTEQ                      R46 R0 ; [+9]
      342 GETTABLEKS                       R47 R2 K74 ["contains"]
      344 JUMPIFNOTEQKB                    R47 TRUE ; [+5]
      346 SETTABLEKS                       R0 R27 K21 ["output"]
      348 CLOSEUPVALS                      R0
      349 RETURN                           R27 1
      350 GETUPVAL                         R47 5
      351 GETTABLEKS                       R47 R47 K75 ["wrapOutput"]
      353 MOVE                             R48 R46
      354 MOVE                             R49 R27
      355 MOVE                             R50 R1
      356 CALL                             R47 3 1
      357 SETTABLEKS                       R47 R27 K21 ["output"]
      359 CLOSEUPVALS                      R0
      360 RETURN                           R27 1
      361 GETTABLEKS                       R46 R27 K50 ["index"]
      363 JUMPIFEQ                         R46 R4 ; [+2]
      365 LOADB                            R45 0 +1
      366 LOADB                            R45 1
      367 JUMPIF                           R45 ; [+2163]
      368 MOVE                             R45 R35
      369 CALL                             R45 0 1
      370 MOVE                             R32 R45
      371 JUMPIFEQKS                       R32 K76 ["\0"] ; [+2158]
      373 JUMPIFNOTEQKS                    R32 K77 ["\\"] ; [+86]
      375 MOVE                             R45 R34
      376 CALL                             R45 0 1
      377 JUMPIFNOTEQKS                    R45 K78 ["/"] ; [+5]
      379 GETTABLEKS                       R46 R2 K43 ["bash"]
      381 JUMPIFNOTEQKB                    R46 TRUE ; [+2148]
      383 JUMPIFEQKS                       R45 K79 ["."] ; [+2146]
      385 JUMPIFEQKS                       R45 K80 [";"] ; [+2144]
      387 GETUPVAL                         R46 4
      388 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
      390 MOVE                             R47 R45
      391 CALL                             R46 1 1
      392 JUMPIF                           R46 ; [+9]
      393 MOVE                             R46 R32
      394 LOADK                            R47 K77 ["\\"]
      395 CONCAT                           R32 R46 R47
      396 MOVE                             R46 R42
      397 DUPTABLE                         R47 K82 [{["type"] = "text", ["value"]}]
      398 SETTABLEKS                       R32 R47 K19 ["value"]
      400 CALL                             R46 1 0
      401 JUMP                             ; [+2128]
      402 GETUPVAL                         R46 8
      403 LOADK                            R47 K83 ["^\\\\+"]
      404 CALL                             R46 1 1
      405 GETTABLEKS                       R51 R27 K50 ["index"]
      407 ADDK                             R50 R51 K53 [1]
      408 FASTCALL2                        STRING_SUB R0 R50 ; [+4]
      410 MOVE                             R49 R0
      411 GETIMPORT                        R48 K85 [string.sub]
      413 CALL                             R48 2 1
      414 NAMECALL                         R46 R46 K86 ["exec"]
      416 CALL                             R46 2 1
      417 LOADN                            R47 0
      418 JUMPIFEQKNIL                     R46 ; [+19]
      420 GETTABLEN                        R49 R46 1
      421 LENGTH                           R48 R49
      422 LOADN                            R49 2
      423 JUMPIFNOTLT                      R49 R48 ; [+14]
      425 GETTABLEN                        R48 R46 1
      426 LENGTH                           R47 R48
      427 GETTABLEKS                       R48 R27 K50 ["index"]
      429 ADD                              R48 R48 R47
      430 SETTABLEKS                       R48 R27 K50 ["index"]
      432 MODK                             R48 R47 K87 [2]
      433 JUMPIFEQKN                       R48 K51 [0] ; [+4]
      435 MOVE                             R48 R32
      436 LOADK                            R49 K77 ["\\"]
      437 CONCAT                           R32 R48 R49
      438 GETTABLEKS                       R48 R2 K72 ["unescape"]
      440 JUMPIFNOTEQKB                    R48 TRUE ; [+5]
      442 MOVE                             R48 R35
      443 CALL                             R48 0 1
      444 MOVE                             R32 R48
      445 JUMP                             ; [+4]
      446 MOVE                             R48 R32
      447 MOVE                             R49 R35
      448 CALL                             R49 0 1
      449 CONCAT                           R32 R48 R49
      450 GETTABLEKS                       R48 R27 K59 ["brackets"]
      452 JUMPIFNOTEQKN                    R48 K51 [0] ; [+7]
      454 MOVE                             R48 R42
      455 DUPTABLE                         R49 K82 [{["type"] = "text", ["value"]}]
      456 SETTABLEKS                       R32 R49 K19 ["value"]
      458 CALL                             R48 1 0
      459 JUMP                             ; [+2070]
      460 GETTABLEKS                       R45 R27 K59 ["brackets"]
      462 LOADN                            R46 0
      463 JUMPIFNOTLT                      R46 R45 ; [+175]
      465 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+9]
      467 GETTABLEKS                       R45 R31 K19 ["value"]
      469 JUMPIFEQKS                       R45 K89 ["["] ; [+5]
      471 GETTABLEKS                       R45 R31 K19 ["value"]
      473 JUMPIFNOTEQKS                    R45 K90 ["[^"] ; [+165]
      475 GETTABLEKS                       R45 R2 K91 ["posix"]
      477 JUMPIFEQKB                       R45 FALSE ; [+78]
      479 JUMPIFNOTEQKS                    R32 K92 [":"] ; [+76]
      481 GETUPVAL                         R45 7
      482 GETTABLEKS                       R45 R45 K93 ["slice"]
      484 GETTABLEKS                       R46 R31 K19 ["value"]
      486 LOADN                            R47 1
      487 CALL                             R45 2 1
      488 LOADK                            R48 K89 ["["]
      489 NAMECALL                         R46 R45 K94 ["find"]
      491 CALL                             R46 2 1
      492 JUMPIFEQKNIL                     R46 ; [+63]
      494 LOADB                            R46 1
      495 SETTABLEKS                       R46 R31 K91 ["posix"]
      497 LOADK                            R48 K92 [":"]
      498 NAMECALL                         R46 R45 K94 ["find"]
      500 CALL                             R46 2 1
      501 JUMPIFEQKNIL                     R46 ; [+54]
      503 GETUPVAL                         R46 7
      504 GETTABLEKS                       R46 R46 K95 ["lastIndexOf"]
      506 GETTABLEKS                       R47 R31 K19 ["value"]
      508 LOADK                            R48 K89 ["["]
      509 CALL                             R46 2 1
      510 GETUPVAL                         R47 7
      511 GETTABLEKS                       R47 R47 K93 ["slice"]
      513 GETTABLEKS                       R48 R31 K19 ["value"]
      515 LOADN                            R49 1
      516 MOVE                             R50 R46
      517 CALL                             R47 3 1
      518 GETUPVAL                         R48 7
      519 GETTABLEKS                       R48 R48 K93 ["slice"]
      521 GETTABLEKS                       R49 R31 K19 ["value"]
      523 ADDK                             R50 R46 K87 [2]
      524 CALL                             R48 2 1
      525 GETUPVAL                         R50 12
      526 GETTABLE                         R49 R50 R48
      527 JUMPIFNOT                        R49 ; [+28]
      528 MOVE                             R51 R47
      529 MOVE                             R52 R49
      530 CONCAT                           R50 R51 R52
      531 SETTABLEKS                       R50 R31 K19 ["value"]
      533 LOADB                            R50 1
      534 SETTABLEKS                       R50 R27 K56 ["backtrack"]
      536 MOVE                             R50 R35
      537 CALL                             R50 0 0
      538 GETUPVAL                         R50 4
      539 GETTABLEKS                       R50 R50 K24 ["toJSBoolean"]
      541 GETTABLEKS                       R51 R5 K21 ["output"]
      543 CALL                             R50 1 1
      544 JUMPIF                           R50 ; [+1985]
      545 GETUPVAL                         R50 13
      546 GETTABLEKS                       R50 R50 K96 ["indexOf"]
      548 MOVE                             R51 R6
      549 MOVE                             R52 R31
      550 CALL                             R50 2 1
      551 JUMPIFNOTEQKN                    R50 K87 [2] ; [+1978]
      553 SETTABLEKS                       R14 R5 K21 ["output"]
      555 JUMP                             ; [+1974]
      556 JUMPIFNOTEQKS                    R32 K89 ["["] ; [+5]
      558 MOVE                             R45 R34
      559 CALL                             R45 0 1
      560 JUMPIFNOTEQKS                    R45 K92 [":"] ; [+7]
      562 JUMPIFNOTEQKS                    R32 K97 ["-"] ; [+11]
      564 MOVE                             R45 R34
      565 CALL                             R45 0 1
      566 JUMPIFNOTEQKS                    R45 K88 ["]"] ; [+7]
      568 LOADK                            R45 K98 ["\\%s"]
      569 MOVE                             R47 R32
      570 NAMECALL                         R45 R45 K16 ["format"]
      572 CALL                             R45 2 1
      573 MOVE                             R32 R45
      574 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+15]
      576 GETTABLEKS                       R45 R31 K19 ["value"]
      578 JUMPIFEQKS                       R45 K89 ["["] ; [+5]
      580 GETTABLEKS                       R45 R31 K19 ["value"]
      582 JUMPIFNOTEQKS                    R45 K90 ["[^"] ; [+7]
      584 LOADK                            R45 K98 ["\\%s"]
      585 MOVE                             R47 R32
      586 NAMECALL                         R45 R45 K16 ["format"]
      588 CALL                             R45 2 1
      589 MOVE                             R32 R45
      590 GETTABLEKS                       R45 R2 K91 ["posix"]
      592 JUMPIFNOTEQKB                    R45 TRUE ; [+8]
      594 JUMPIFNOTEQKS                    R32 K99 ["!"] ; [+6]
      596 GETTABLEKS                       R45 R31 K19 ["value"]
      598 JUMPIFNOTEQKS                    R45 K89 ["["] ; [+2]
      600 LOADK                            R32 K100 ["^"]
      601 GETTABLEKS                       R46 R31 K19 ["value"]
      603 MOVE                             R47 R32
      604 CONCAT                           R45 R46 R47
      605 SETTABLEKS                       R45 R31 K19 ["value"]
      607 DUPTABLE                         R45 K101 [{"value"}]
      608 SETTABLEKS                       R32 R45 K19 ["value"]
      610 GETTABLEKS                       R47 R27 K21 ["output"]
      612 GETTABLEKS                       R49 R45 K21 ["output"]
      614 JUMPIFEQKNIL                     R49 ; [+4]
      616 GETTABLEKS                       R48 R45 K21 ["output"]
      618 JUMP                             ; [+2]
      619 GETTABLEKS                       R48 R45 K19 ["value"]
      621 CONCAT                           R46 R47 R48
      622 SETTABLEKS                       R46 R27 K21 ["output"]
      624 GETTABLEKS                       R46 R45 K19 ["value"]
      626 ORK                              R47 R46 K20 [""]
      627 GETTABLEKS                       R49 R27 K54 ["consumed"]
      629 MOVE                             R50 R47
      630 CONCAT                           R48 R49 R50
      631 SETTABLEKS                       R48 R27 K54 ["consumed"]
      633 GETTABLEKS                       R48 R27 K50 ["index"]
      635 ADDK                             R48 R48 K51 [0]
      636 SETTABLEKS                       R48 R27 K50 ["index"]
      638 JUMP                             ; [+1891]
      639 GETTABLEKS                       R45 R27 K62 ["quotes"]
      641 JUMPIFNOTEQKN                    R45 K53 [1] ; [+47]
      643 JUMPIFEQKS                       R32 K102 ["\""] ; [+45]
      645 GETUPVAL                         R45 5
      646 GETTABLEKS                       R45 R45 K103 ["escapeRegex"]
      648 MOVE                             R46 R32
      649 CALL                             R45 1 1
      650 MOVE                             R32 R45
      651 GETTABLEKS                       R46 R31 K19 ["value"]
      653 MOVE                             R47 R32
      654 CONCAT                           R45 R46 R47
      655 SETTABLEKS                       R45 R31 K19 ["value"]
      657 DUPTABLE                         R45 K101 [{"value"}]
      658 SETTABLEKS                       R32 R45 K19 ["value"]
      660 GETTABLEKS                       R47 R27 K21 ["output"]
      662 GETTABLEKS                       R49 R45 K21 ["output"]
      664 JUMPIFEQKNIL                     R49 ; [+4]
      666 GETTABLEKS                       R48 R45 K21 ["output"]
      668 JUMP                             ; [+2]
      669 GETTABLEKS                       R48 R45 K19 ["value"]
      671 CONCAT                           R46 R47 R48
      672 SETTABLEKS                       R46 R27 K21 ["output"]
      674 GETTABLEKS                       R46 R45 K19 ["value"]
      676 ORK                              R47 R46 K20 [""]
      677 GETTABLEKS                       R49 R27 K54 ["consumed"]
      679 MOVE                             R50 R47
      680 CONCAT                           R48 R49 R50
      681 SETTABLEKS                       R48 R27 K54 ["consumed"]
      683 GETTABLEKS                       R48 R27 K50 ["index"]
      685 ADDK                             R48 R48 K51 [0]
      686 SETTABLEKS                       R48 R27 K50 ["index"]
      688 JUMP                             ; [+1841]
      689 JUMPIFNOTEQKS                    R32 K102 ["\""] ; [+20]
      691 GETTABLEKS                       R46 R27 K62 ["quotes"]
      693 JUMPIFNOTEQKN                    R46 K53 [1] ; [+3]
      695 LOADN                            R45 0
      696 JUMP                             ; [+1]
      697 LOADN                            R45 1
      698 SETTABLEKS                       R45 R27 K62 ["quotes"]
      700 GETTABLEKS                       R45 R2 K104 ["keepQuotes"]
      702 JUMPIFNOTEQKB                    R45 TRUE ; [+1827]
      704 MOVE                             R45 R42
      705 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
      706 SETTABLEKS                       R32 R46 K19 ["value"]
      708 CALL                             R45 1 0
      709 JUMP                             ; [+1820]
      710 JUMPIFNOTEQKS                    R32 K105 ["("] ; [+19]
      712 GETTABLEKS                       R45 R27 K61 ["parens"]
      714 ADDK                             R45 R45 K53 [1]
      715 SETTABLEKS                       R45 R27 K61 ["parens"]
      717 FASTCALL2K                       TABLE_INSERT R30 K61 ; [+5]
      719 MOVE                             R46 R30
      720 LOADK                            R47 K61 ["parens"]
      721 GETIMPORT                        R45 K108 [table.insert]
      723 CALL                             R45 2 0
      724 MOVE                             R45 R42
      725 DUPTABLE                         R46 K110 [{["type"] = "paren", ["value"]}]
      726 SETTABLEKS                       R32 R46 K19 ["value"]
      728 CALL                             R45 1 0
      729 JUMP                             ; [+1800]
      730 JUMPIFNOTEQKS                    R32 K111 [")"] ; [+70]
      732 GETTABLEKS                       R45 R27 K61 ["parens"]
      734 JUMPIFNOTEQKN                    R45 K51 [0] ; [+21]
      736 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      738 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      740 GETIMPORT                        R45 K4 [error]
      742 GETUPVAL                         R46 0
      743 GETTABLEKS                       R46 R46 K5 ["new"]
      745 LOADK                            R48 K113 ["SyntaxError: "]
      746 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      747 LOADK                            R51 K115 ["opening"]
      748 LOADK                            R52 K105 ["("]
      749 LOADK                            R53 K105 ["("]
      750 NAMECALL                         R49 R49 K16 ["format"]
      752 CALL                             R49 4 1
      753 CONCAT                           R47 R48 R49
      754 CALL                             R46 1 -1
      755 CALL                             R45 -1 0
      756 LENGTH                           R46 R28
      757 GETTABLE                         R45 R28 R46
      758 JUMPIFEQKNIL                     R45 ; [+15]
      760 GETTABLEKS                       R46 R27 K61 ["parens"]
      762 GETTABLEKS                       R48 R45 K61 ["parens"]
      764 ADDK                             R47 R48 K53 [1]
      765 JUMPIFNOTEQ                      R46 R47 ; [+8]
      767 MOVE                             R46 R44
      768 GETIMPORT                        R47 K117 [table.remove]
      770 MOVE                             R48 R28
      771 CALL                             R47 1 1
      772 CALL                             R46 1 0
      773 JUMP                             ; [+1756]
      774 MOVE                             R46 R42
      775 DUPTABLE                         R47 K118 [{["type"] = "paren", ["value"], ["output"]}]
      776 SETTABLEKS                       R32 R47 K19 ["value"]
      778 GETUPVAL                         R49 4
      779 GETTABLEKS                       R49 R49 K24 ["toJSBoolean"]
      781 GETTABLEKS                       R50 R27 K61 ["parens"]
      783 CALL                             R49 1 1
      784 JUMPIFNOT                        R49 ; [+2]
      785 LOADK                            R48 K111 [")"]
      786 JUMP                             ; [+1]
      787 LOADK                            R48 K119 ["\\)"]
      788 SETTABLEKS                       R48 R47 K21 ["output"]
      790 CALL                             R46 1 0
      791 GETTABLEKS                       R46 R27 K61 ["parens"]
      793 SUBK                             R46 R46 K53 [1]
      794 SETTABLEKS                       R46 R27 K61 ["parens"]
      796 GETIMPORT                        R46 K117 [table.remove]
      798 MOVE                             R47 R30
      799 CALL                             R46 1 0
      800 JUMP                             ; [+1729]
      801 JUMPIFNOTEQKS                    R32 K89 ["["] ; [+70]
      803 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      805 JUMPIFEQKB                       R45 TRUE ; [+17]
      807 GETTABLEKS                       R49 R27 K50 ["index"]
      809 ADDK                             R48 R49 K53 [1]
      810 FASTCALL2                        STRING_SUB R0 R48 ; [+4]
      812 MOVE                             R47 R0
      813 GETIMPORT                        R46 K85 [string.sub]
      815 CALL                             R46 2 1
      816 LOADK                            R48 K88 ["]"]
      817 NAMECALL                         R46 R46 K94 ["find"]
      819 CALL                             R46 2 1
      820 NOT                              R45 R46
      821 JUMPIFEQKNIL                     R45 ; [+32]
      823 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      825 JUMPIFEQKB                       R45 TRUE ; [+21]
      827 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      829 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      831 GETIMPORT                        R45 K4 [error]
      833 GETUPVAL                         R46 0
      834 GETTABLEKS                       R46 R46 K5 ["new"]
      836 LOADK                            R48 K113 ["SyntaxError: "]
      837 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      838 LOADK                            R51 K121 ["closing"]
      839 LOADK                            R52 K88 ["]"]
      840 LOADK                            R53 K88 ["]"]
      841 NAMECALL                         R49 R49 K16 ["format"]
      843 CALL                             R49 4 1
      844 CONCAT                           R47 R48 R49
      845 CALL                             R46 1 -1
      846 CALL                             R45 -1 0
      847 LOADK                            R45 K98 ["\\%s"]
      848 MOVE                             R47 R32
      849 NAMECALL                         R45 R45 K16 ["format"]
      851 CALL                             R45 2 1
      852 MOVE                             R32 R45
      853 JUMP                             ; [+12]
      854 GETTABLEKS                       R45 R27 K59 ["brackets"]
      856 ADDK                             R45 R45 K53 [1]
      857 SETTABLEKS                       R45 R27 K59 ["brackets"]
      859 FASTCALL2K                       TABLE_INSERT R30 K59 ; [+5]
      861 MOVE                             R46 R30
      862 LOADK                            R47 K59 ["brackets"]
      863 GETIMPORT                        R45 K108 [table.insert]
      865 CALL                             R45 2 0
      866 MOVE                             R45 R42
      867 DUPTABLE                         R46 K123 [{["type"] = "bracket", ["value"]}]
      868 SETTABLEKS                       R32 R46 K19 ["value"]
      870 CALL                             R45 1 0
      871 JUMP                             ; [+1658]
      872 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+203]
      874 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      876 JUMPIFEQKB                       R45 TRUE ; [+12]
      878 JUMPIFEQKNIL                     R31 ; [+23]
      880 GETTABLEKS                       R45 R31 K17 ["type"]
      882 JUMPIFNOTEQKS                    R45 K122 ["bracket"] ; [+19]
      884 GETTABLEKS                       R46 R31 K19 ["value"]
      886 LENGTH                           R45 R46
      887 JUMPIFNOTEQKN                    R45 K53 [1] ; [+14]
      889 MOVE                             R45 R42
      890 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
      891 SETTABLEKS                       R32 R46 K19 ["value"]
      893 LOADK                            R47 K98 ["\\%s"]
      894 MOVE                             R49 R32
      895 NAMECALL                         R47 R47 K16 ["format"]
      897 CALL                             R47 2 1
      898 SETTABLEKS                       R47 R46 K21 ["output"]
      900 CALL                             R45 1 0
      901 JUMP                             ; [+1628]
      902 GETTABLEKS                       R45 R27 K59 ["brackets"]
      904 JUMPIFNOTEQKN                    R45 K51 [0] ; [+34]
      906 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      908 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      910 GETIMPORT                        R45 K4 [error]
      912 GETUPVAL                         R46 0
      913 GETTABLEKS                       R46 R46 K5 ["new"]
      915 LOADK                            R48 K113 ["SyntaxError: "]
      916 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      917 LOADK                            R51 K115 ["opening"]
      918 LOADK                            R52 K89 ["["]
      919 LOADK                            R53 K89 ["["]
      920 NAMECALL                         R49 R49 K16 ["format"]
      922 CALL                             R49 4 1
      923 CONCAT                           R47 R48 R49
      924 CALL                             R46 1 -1
      925 CALL                             R45 -1 0
      926 MOVE                             R45 R42
      927 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
      928 SETTABLEKS                       R32 R46 K19 ["value"]
      930 LOADK                            R47 K98 ["\\%s"]
      931 MOVE                             R49 R32
      932 NAMECALL                         R47 R47 K16 ["format"]
      934 CALL                             R47 2 1
      935 SETTABLEKS                       R47 R46 K21 ["output"]
      937 CALL                             R45 1 0
      938 JUMP                             ; [+1591]
      939 GETTABLEKS                       R45 R27 K59 ["brackets"]
      941 SUBK                             R45 R45 K53 [1]
      942 SETTABLEKS                       R45 R27 K59 ["brackets"]
      944 GETIMPORT                        R45 K117 [table.remove]
      946 MOVE                             R46 R30
      947 CALL                             R45 1 0
      948 GETUPVAL                         R45 7
      949 GETTABLEKS                       R45 R45 K93 ["slice"]
      951 GETTABLEKS                       R46 R31 K19 ["value"]
      953 LOADN                            R47 2
      954 CALL                             R45 2 1
      955 GETTABLEKS                       R46 R31 K91 ["posix"]
      957 JUMPIFEQKB                       R46 TRUE ; [+21]
      959 LOADN                            R48 1
      960 LOADN                            R49 1
      961 NAMECALL                         R46 R45 K84 ["sub"]
      963 CALL                             R46 3 1
      964 JUMPIFNOTEQKS                    R46 K100 ["^"] ; [+14]
      966 LOADK                            R49 K78 ["/"]
      967 NAMECALL                         R47 R45 K94 ["find"]
      969 CALL                             R47 2 1
      970 NOT                              R46 R47
      971 JUMPIFEQKNIL                     R46 ; [+7]
      973 LOADK                            R46 K125 ["/%s"]
      974 MOVE                             R48 R32
      975 NAMECALL                         R46 R46 K16 ["format"]
      977 CALL                             R46 2 1
      978 MOVE                             R32 R46
      979 GETTABLEKS                       R47 R31 K19 ["value"]
      981 MOVE                             R48 R32
      982 CONCAT                           R46 R47 R48
      983 SETTABLEKS                       R46 R31 K19 ["value"]
      985 DUPTABLE                         R46 K101 [{"value"}]
      986 SETTABLEKS                       R32 R46 K19 ["value"]
      988 GETTABLEKS                       R48 R27 K21 ["output"]
      990 GETTABLEKS                       R50 R46 K21 ["output"]
      992 JUMPIFEQKNIL                     R50 ; [+4]
      994 GETTABLEKS                       R49 R46 K21 ["output"]
      996 JUMP                             ; [+2]
      997 GETTABLEKS                       R49 R46 K19 ["value"]
      999 CONCAT                           R47 R48 R49
     1000 SETTABLEKS                       R47 R27 K21 ["output"]
     1002 GETTABLEKS                       R47 R46 K19 ["value"]
     1004 ORK                              R48 R47 K20 [""]
     1005 GETTABLEKS                       R50 R27 K54 ["consumed"]
     1007 MOVE                             R51 R48
     1008 CONCAT                           R49 R50 R51
     1009 SETTABLEKS                       R49 R27 K54 ["consumed"]
     1011 GETTABLEKS                       R49 R27 K50 ["index"]
     1013 ADDK                             R49 R49 K51 [0]
     1014 SETTABLEKS                       R49 R27 K50 ["index"]
     1016 GETTABLEKS                       R46 R2 K126 ["literalBrackets"]
     1018 JUMPIFEQKB                       R46 FALSE ; [+1511]
     1020 GETUPVAL                         R46 5
     1021 GETTABLEKS                       R46 R46 K127 ["hasRegexChars"]
     1023 MOVE                             R47 R45
     1024 CALL                             R46 1 1
     1025 JUMPIF                           R46 ; [+1504]
     1026 GETUPVAL                         R46 5
     1027 GETTABLEKS                       R46 R46 K103 ["escapeRegex"]
     1029 GETTABLEKS                       R47 R31 K19 ["value"]
     1031 CALL                             R46 1 1
     1032 GETUPVAL                         R47 7
     1033 GETTABLEKS                       R47 R47 K93 ["slice"]
     1035 GETTABLEKS                       R48 R27 K21 ["output"]
     1037 LOADN                            R49 1
     1038 GETTABLEKS                       R52 R31 K19 ["value"]
     1040 LENGTH                           R51 R52
     1041 MINUS                            R50 R51
     1042 CALL                             R47 3 1
     1043 SETTABLEKS                       R47 R27 K21 ["output"]
     1045 GETTABLEKS                       R47 R2 K126 ["literalBrackets"]
     1047 JUMPIFNOTEQKB                    R47 TRUE ; [+10]
     1049 GETTABLEKS                       R48 R27 K21 ["output"]
     1051 MOVE                             R49 R46
     1052 CONCAT                           R47 R48 R49
     1053 SETTABLEKS                       R47 R27 K21 ["output"]
     1055 SETTABLEKS                       R46 R31 K19 ["value"]
     1057 JUMP                             ; [+1472]
     1058 LOADK                            R47 K128 ["(%s%s|%s)"]
     1059 MOVE                             R49 R7
     1060 MOVE                             R50 R46
     1061 GETTABLEKS                       R51 R31 K19 ["value"]
     1063 NAMECALL                         R47 R47 K16 ["format"]
     1065 CALL                             R47 4 1
     1066 SETTABLEKS                       R47 R31 K19 ["value"]
     1068 GETTABLEKS                       R48 R27 K21 ["output"]
     1070 GETTABLEKS                       R49 R31 K19 ["value"]
     1072 CONCAT                           R47 R48 R49
     1073 SETTABLEKS                       R47 R27 K21 ["output"]
     1075 JUMP                             ; [+1454]
     1076 JUMPIFNOTEQKS                    R32 K129 ["{"] ; [+41]
     1078 GETTABLEKS                       R45 R2 K130 ["nobrace"]
     1080 JUMPIFEQKB                       R45 TRUE ; [+37]
     1082 GETTABLEKS                       R45 R27 K60 ["braces"]
     1084 ADDK                             R45 R45 K53 [1]
     1085 SETTABLEKS                       R45 R27 K60 ["braces"]
     1087 FASTCALL2K                       TABLE_INSERT R30 K60 ; [+5]
     1089 MOVE                             R46 R30
     1090 LOADK                            R47 K60 ["braces"]
     1091 GETIMPORT                        R45 K108 [table.insert]
     1093 CALL                             R45 2 0
     1094 DUPTABLE                         R45 K134 [{["type"] = "brace", ["value"], ["output"] = "(", ["outputIndex"], ["tokensIndex"]}]
     1095 SETTABLEKS                       R32 R45 K19 ["value"]
     1097 GETTABLEKS                       R47 R27 K21 ["output"]
     1099 LENGTH                           R46 R47
     1100 SETTABLEKS                       R46 R45 K132 ["outputIndex"]
     1102 GETTABLEKS                       R47 R27 K64 ["tokens"]
     1104 LENGTH                           R46 R47
     1105 SETTABLEKS                       R46 R45 K133 ["tokensIndex"]
     1107 FASTCALL2                        TABLE_INSERT R29 R45 ; [+5]
     1109 MOVE                             R47 R29
     1110 MOVE                             R48 R45
     1111 GETIMPORT                        R46 K108 [table.insert]
     1113 CALL                             R46 2 0
     1114 MOVE                             R46 R42
     1115 MOVE                             R47 R45
     1116 CALL                             R46 1 0
     1117 JUMP                             ; [+1412]
     1118 JUMPIFNOTEQKS                    R32 K135 ["}"] ; [+151]
     1120 LENGTH                           R46 R29
     1121 GETTABLE                         R45 R29 R46
     1122 GETTABLEKS                       R46 R2 K130 ["nobrace"]
     1124 JUMPIFEQKB                       R46 TRUE ; [+7]
     1126 GETUPVAL                         R46 4
     1127 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1129 MOVE                             R47 R45
     1130 CALL                             R46 1 1
     1131 JUMPIF                           R46 ; [+8]
     1132 MOVE                             R46 R42
     1133 DUPTABLE                         R47 K124 [{["type"] = "text", ["value"], ["output"]}]
     1134 SETTABLEKS                       R32 R47 K19 ["value"]
     1136 SETTABLEKS                       R32 R47 K21 ["output"]
     1138 CALL                             R46 1 0
     1139 JUMP                             ; [+1390]
     1140 LOADK                            R46 K111 [")"]
     1141 GETTABLEKS                       R47 R45 K136 ["dots"]
     1143 JUMPIFNOTEQKB                    R47 TRUE ; [+45]
     1145 GETUPVAL                         R47 13
     1146 GETTABLEKS                       R47 R47 K93 ["slice"]
     1148 MOVE                             R48 R6
     1149 CALL                             R47 1 1
     1150 NEWTABLE                         R48 0 0
     1152 LENGTH                           R51 R47
     1153 LOADN                            R49 1
     1154 LOADN                            R50 -1
     1155 FORNPREP                         R49
     1156 GETIMPORT                        R52 K117 [table.remove]
     1158 MOVE                             R53 R6
     1159 CALL                             R52 1 0
     1160 GETTABLE                         R52 R47 R51
     1161 GETTABLEKS                       R52 R52 K17 ["type"]
     1163 JUMPIFEQKS                       R52 K131 ["brace"] ; [+17]
     1165 GETTABLE                         R52 R47 R51
     1166 GETTABLEKS                       R52 R52 K17 ["type"]
     1168 JUMPIFEQKS                       R52 K136 ["dots"] ; [+11]
     1170 LOADN                            R54 1
     1171 GETTABLE                         R55 R47 R51
     1172 GETTABLEKS                       R55 R55 K19 ["value"]
     1174 FASTCALL3                        TABLE_INSERT R48 R54 R55
     1176 MOVE                             R53 R48
     1177 GETIMPORT                        R52 K108 [table.insert]
     1179 CALL                             R52 3 0
     1180 FORNLOOP                         R49
     1181 GETUPVAL                         R49 14
     1182 MOVE                             R50 R48
     1183 MOVE                             R51 R2
     1184 CALL                             R49 2 1
     1185 MOVE                             R46 R49
     1186 LOADB                            R49 1
     1187 SETTABLEKS                       R49 R27 K56 ["backtrack"]
     1189 GETTABLEKS                       R47 R45 K137 ["comma"]
     1191 JUMPIFEQKB                       R47 TRUE ; [+57]
     1193 GETTABLEKS                       R47 R45 K136 ["dots"]
     1195 JUMPIFEQKB                       R47 TRUE ; [+53]
     1197 GETUPVAL                         R47 7
     1198 GETTABLEKS                       R47 R47 K93 ["slice"]
     1200 GETTABLEKS                       R48 R27 K21 ["output"]
     1202 LOADN                            R49 1
     1203 GETTABLEKS                       R50 R45 K132 ["outputIndex"]
     1205 CALL                             R47 3 1
     1206 GETUPVAL                         R48 13
     1207 GETTABLEKS                       R48 R48 K93 ["slice"]
     1209 GETTABLEKS                       R49 R27 K64 ["tokens"]
     1211 GETTABLEKS                       R50 R45 K133 ["tokensIndex"]
     1213 CALL                             R48 2 1
     1214 LOADK                            R49 K138 ["\\{"]
     1215 SETTABLEKS                       R49 R45 K21 ["output"]
     1217 GETTABLEKS                       R49 R45 K21 ["output"]
     1219 SETTABLEKS                       R49 R45 K19 ["value"]
     1221 LOADK                            R46 K139 ["\\}"]
     1222 MOVE                             R32 R46
     1223 SETTABLEKS                       R47 R27 K21 ["output"]
     1225 GETIMPORT                        R49 K141 [ipairs]
     1227 MOVE                             R50 R48
     1228 CALL                             R49 1 3
     1229 FORGPREP_INEXT                   R49
     1230 GETTABLEKS                       R55 R27 K21 ["output"]
     1232 GETUPVAL                         R57 4
     1233 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     1235 GETTABLEKS                       R58 R53 K21 ["output"]
     1237 CALL                             R57 1 1
     1238 JUMPIFNOT                        R57 ; [+3]
     1239 GETTABLEKS                       R56 R53 K21 ["output"]
     1241 JUMP                             ; [+2]
     1242 GETTABLEKS                       R56 R53 K19 ["value"]
     1244 CONCAT                           R54 R55 R56
     1245 SETTABLEKS                       R54 R27 K21 ["output"]
     1247 FORGLOOP                         R49 2 [inext] ; [-18]
     1249 MOVE                             R47 R42
     1250 DUPTABLE                         R48 K142 [{["type"] = "brace", ["value"], ["output"]}]
     1251 SETTABLEKS                       R32 R48 K19 ["value"]
     1253 SETTABLEKS                       R46 R48 K21 ["output"]
     1255 CALL                             R47 1 0
     1256 GETTABLEKS                       R47 R27 K60 ["braces"]
     1258 SUBK                             R47 R47 K53 [1]
     1259 SETTABLEKS                       R47 R27 K60 ["braces"]
     1261 GETIMPORT                        R47 K117 [table.remove]
     1263 MOVE                             R48 R30
     1264 CALL                             R47 1 0
     1265 GETIMPORT                        R47 K117 [table.remove]
     1267 MOVE                             R48 R29
     1268 CALL                             R47 1 0
     1269 JUMP                             ; [+1260]
     1270 JUMPIFNOTEQKS                    R32 K143 ["|"] ; [+18]
     1272 LENGTH                           R45 R28
     1273 LOADN                            R46 0
     1274 JUMPIFNOTLT                      R46 R45 ; [+8]
     1276 LENGTH                           R46 R28
     1277 GETTABLE                         R45 R28 R46
     1278 GETTABLEKS                       R46 R45 K144 ["conditions"]
     1280 ADDK                             R46 R46 K53 [1]
     1281 SETTABLEKS                       R46 R45 K144 ["conditions"]
     1283 MOVE                             R45 R42
     1284 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
     1285 SETTABLEKS                       R32 R46 K19 ["value"]
     1287 CALL                             R45 1 0
     1288 JUMP                             ; [+1241]
     1289 JUMPIFNOTEQKS                    R32 K145 [","] ; [+26]
     1291 MOVE                             R45 R32
     1292 LENGTH                           R47 R29
     1293 GETTABLE                         R46 R29 R47
     1294 GETUPVAL                         R47 4
     1295 GETTABLEKS                       R47 R47 K24 ["toJSBoolean"]
     1297 MOVE                             R48 R46
     1298 CALL                             R47 1 1
     1299 JUMPIFNOT                        R47 ; [+8]
     1300 LENGTH                           R48 R30
     1301 GETTABLE                         R47 R30 R48
     1302 JUMPIFNOTEQKS                    R47 K60 ["braces"] ; [+5]
     1304 LOADB                            R47 1
     1305 SETTABLEKS                       R47 R46 K137 ["comma"]
     1307 LOADK                            R45 K143 ["|"]
     1308 MOVE                             R47 R42
     1309 DUPTABLE                         R48 K146 [{["type"] = "comma", ["value"], ["output"]}]
     1310 SETTABLEKS                       R32 R48 K19 ["value"]
     1312 SETTABLEKS                       R45 R48 K21 ["output"]
     1314 CALL                             R47 1 0
     1315 JUMP                             ; [+1214]
     1316 JUMPIFNOTEQKS                    R32 K78 ["/"] ; [+37]
     1318 GETTABLEKS                       R45 R31 K17 ["type"]
     1320 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+25]
     1322 GETTABLEKS                       R45 R27 K50 ["index"]
     1324 GETTABLEKS                       R47 R27 K52 ["start"]
     1326 ADDK                             R46 R47 K53 [1]
     1327 JUMPIFNOTEQ                      R45 R46 ; [+18]
     1329 GETTABLEKS                       R46 R27 K50 ["index"]
     1331 ADDK                             R45 R46 K53 [1]
     1332 SETTABLEKS                       R45 R27 K52 ["start"]
     1334 LOADK                            R45 K20 [""]
     1335 SETTABLEKS                       R45 R27 K54 ["consumed"]
     1337 LOADK                            R45 K20 [""]
     1338 SETTABLEKS                       R45 R27 K21 ["output"]
     1340 GETIMPORT                        R45 K117 [table.remove]
     1342 MOVE                             R46 R6
     1343 CALL                             R45 1 0
     1344 MOVE                             R31 R5
     1345 JUMP                             ; [+1184]
     1346 MOVE                             R45 R42
     1347 DUPTABLE                         R46 K148 [{["type"] = "slash", ["value"], ["output"]}]
     1348 SETTABLEKS                       R32 R46 K19 ["value"]
     1350 SETTABLEKS                       R13 R46 K21 ["output"]
     1352 CALL                             R45 1 0
     1353 JUMP                             ; [+1176]
     1354 JUMPIFNOTEQKS                    R32 K79 ["."] ; [+68]
     1356 GETTABLEKS                       R45 R27 K60 ["braces"]
     1358 LOADN                            R46 0
     1359 JUMPIFNOTLT                      R46 R45 ; [+32]
     1361 GETTABLEKS                       R45 R31 K17 ["type"]
     1363 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+28]
     1365 GETTABLEKS                       R45 R31 K19 ["value"]
     1367 JUMPIFNOTEQKS                    R45 K79 ["."] ; [+3]
     1369 SETTABLEKS                       R11 R31 K21 ["output"]
     1371 LENGTH                           R46 R29
     1372 GETTABLE                         R45 R29 R46
     1373 LOADK                            R46 K136 ["dots"]
     1374 SETTABLEKS                       R46 R31 K17 ["type"]
     1376 GETTABLEKS                       R47 R31 K21 ["output"]
     1378 MOVE                             R48 R32
     1379 CONCAT                           R46 R47 R48
     1380 SETTABLEKS                       R46 R31 K21 ["output"]
     1382 GETTABLEKS                       R47 R31 K19 ["value"]
     1384 MOVE                             R48 R32
     1385 CONCAT                           R46 R47 R48
     1386 SETTABLEKS                       R46 R31 K19 ["value"]
     1388 LOADB                            R46 1
     1389 SETTABLEKS                       R46 R45 K136 ["dots"]
     1391 JUMP                             ; [+1138]
     1392 GETTABLEKS                       R46 R27 K60 ["braces"]
     1394 GETTABLEKS                       R47 R27 K61 ["parens"]
     1396 ADD                              R45 R46 R47
     1397 JUMPIFNOTEQKN                    R45 K51 [0] ; [+17]
     1399 GETTABLEKS                       R45 R31 K17 ["type"]
     1401 JUMPIFEQKS                       R45 K18 ["bos"] ; [+13]
     1403 GETTABLEKS                       R45 R31 K17 ["type"]
     1405 JUMPIFEQKS                       R45 K147 ["slash"] ; [+9]
     1407 MOVE                             R45 R42
     1408 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
     1409 SETTABLEKS                       R32 R46 K19 ["value"]
     1411 SETTABLEKS                       R11 R46 K21 ["output"]
     1413 CALL                             R45 1 0
     1414 JUMP                             ; [+1115]
     1415 MOVE                             R45 R42
     1416 DUPTABLE                         R46 K149 [{["type"] = "dot", ["value"], ["output"]}]
     1417 SETTABLEKS                       R32 R46 K19 ["value"]
     1419 SETTABLEKS                       R11 R46 K21 ["output"]
     1421 CALL                             R45 1 0
     1422 JUMP                             ; [+1107]
     1423 JUMPIFNOTEQKS                    R32 K150 ["?"] ; [+132]
     1425 GETUPVAL                         R45 4
     1426 GETTABLEKS                       R45 R45 K24 ["toJSBoolean"]
     1428 MOVE                             R46 R31
     1429 CALL                             R45 1 1
     1430 JUMPIFNOT                        R45 ; [+6]
     1431 GETTABLEKS                       R46 R31 K19 ["value"]
     1433 JUMPIFEQKS                       R46 K105 ["("] ; [+2]
     1435 LOADB                            R45 0 +1
     1436 LOADB                            R45 1
     1437 JUMPIF                           R45 ; [+18]
     1438 GETTABLEKS                       R46 R2 K48 ["noextglob"]
     1440 JUMPIFEQKB                       R46 TRUE ; [+15]
     1442 MOVE                             R46 R34
     1443 CALL                             R46 0 1
     1444 JUMPIFNOTEQKS                    R46 K105 ["("] ; [+11]
     1446 MOVE                             R46 R34
     1447 LOADN                            R47 2
     1448 CALL                             R46 1 1
     1449 JUMPIFEQKS                       R46 K150 ["?"] ; [+6]
     1451 MOVE                             R46 R43
     1452 LOADK                            R47 K151 ["qmark"]
     1453 MOVE                             R48 R32
     1454 CALL                             R46 2 0
     1455 JUMP                             ; [+1074]
     1456 GETUPVAL                         R46 4
     1457 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1459 MOVE                             R47 R31
     1460 CALL                             R46 1 1
     1461 JUMPIFNOT                        R46 ; [+66]
     1462 GETTABLEKS                       R46 R31 K17 ["type"]
     1464 JUMPIFNOTEQKS                    R46 K109 ["paren"] ; [+63]
     1466 MOVE                             R46 R34
     1467 CALL                             R46 0 1
     1468 MOVE                             R47 R32
     1469 JUMPIFNOTEQKS                    R46 K152 ["<"] ; [+14]
     1471 GETUPVAL                         R48 5
     1472 GETTABLEKS                       R48 R48 K153 ["supportsLookbehinds"]
     1474 CALL                             R48 0 1
     1475 JUMPIF                           R48 ; [+8]
     1476 GETIMPORT                        R48 K4 [error]
     1478 GETUPVAL                         R49 0
     1479 GETTABLEKS                       R49 R49 K5 ["new"]
     1481 LOADK                            R50 K154 ["Node.js v10 or higher is required for regex lookbehinds"]
     1482 CALL                             R49 1 -1
     1483 CALL                             R48 -1 0
     1484 GETTABLEKS                       R48 R31 K19 ["value"]
     1486 JUMPIFNOTEQKS                    R48 K105 ["("] ; [+9]
     1488 GETUPVAL                         R48 8
     1489 LOADK                            R49 K155 ["[!=<:]"]
     1490 CALL                             R48 1 1
     1491 MOVE                             R50 R46
     1492 NAMECALL                         R48 R48 K71 ["test"]
     1494 CALL                             R48 2 1
     1495 JUMPIFNOT                        R48 ; [+18]
     1496 JUMPIFNOTEQKS                    R46 K152 ["<"] ; [+23]
     1498 GETUPVAL                         R48 8
     1499 LOADK                            R49 K156 ["<([!=]|\\w+>)"]
     1500 CALL                             R48 1 1
     1501 GETTABLEKS                       R53 R27 K50 ["index"]
     1503 ADDK                             R52 R53 K53 [1]
     1504 FASTCALL2                        STRING_SUB R0 R52 ; [+4]
     1506 MOVE                             R51 R0
     1507 GETIMPORT                        R50 K85 [string.sub]
     1509 CALL                             R50 2 1
     1510 NAMECALL                         R48 R48 K71 ["test"]
     1512 CALL                             R48 2 1
     1513 JUMPIF                           R48 ; [+6]
     1514 LOADK                            R48 K98 ["\\%s"]
     1515 MOVE                             R50 R32
     1516 NAMECALL                         R48 R48 K16 ["format"]
     1518 CALL                             R48 2 1
     1519 MOVE                             R47 R48
     1520 MOVE                             R48 R42
     1521 DUPTABLE                         R49 K124 [{["type"] = "text", ["value"], ["output"]}]
     1522 SETTABLEKS                       R32 R49 K19 ["value"]
     1524 SETTABLEKS                       R47 R49 K21 ["output"]
     1526 CALL                             R48 1 0
     1527 JUMP                             ; [+1002]
     1528 GETTABLEKS                       R46 R2 K42 ["dot"]
     1530 JUMPIFEQKB                       R46 TRUE ; [+17]
     1532 GETTABLEKS                       R46 R31 K17 ["type"]
     1534 JUMPIFEQKS                       R46 K147 ["slash"] ; [+5]
     1536 GETTABLEKS                       R46 R31 K17 ["type"]
     1538 JUMPIFNOTEQKS                    R46 K18 ["bos"] ; [+9]
     1540 MOVE                             R46 R42
     1541 DUPTABLE                         R47 K157 [{["type"] = "qmark", ["value"], ["output"]}]
     1542 SETTABLEKS                       R32 R47 K19 ["value"]
     1544 SETTABLEKS                       R20 R47 K21 ["output"]
     1546 CALL                             R46 1 0
     1547 JUMP                             ; [+982]
     1548 MOVE                             R46 R42
     1549 DUPTABLE                         R47 K157 [{["type"] = "qmark", ["value"], ["output"]}]
     1550 SETTABLEKS                       R32 R47 K19 ["value"]
     1552 SETTABLEKS                       R19 R47 K21 ["output"]
     1554 CALL                             R46 1 0
     1555 JUMP                             ; [+974]
     1556 JUMPIFNOTEQKS                    R32 K99 ["!"] ; [+40]
     1558 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1560 JUMPIFEQKB                       R45 TRUE ; [+25]
     1562 MOVE                             R45 R34
     1563 CALL                             R45 0 1
     1564 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+21]
     1566 MOVE                             R45 R34
     1567 LOADN                            R46 2
     1568 CALL                             R45 1 1
     1569 JUMPIFNOTEQKS                    R45 K150 ["?"] ; [+11]
     1571 GETUPVAL                         R45 8
     1572 LOADK                            R46 K155 ["[!=<:]"]
     1573 CALL                             R45 1 1
     1574 MOVE                             R47 R34
     1575 LOADN                            R48 3
     1576 CALL                             R47 1 -1
     1577 NAMECALL                         R45 R45 K71 ["test"]
     1579 CALL                             R45 -1 1
     1580 JUMPIF                           R45 ; [+5]
     1581 MOVE                             R45 R43
     1582 LOADK                            R46 K158 ["negate"]
     1583 MOVE                             R47 R32
     1584 CALL                             R45 2 0
     1585 JUMP                             ; [+944]
     1586 GETTABLEKS                       R45 R2 K159 ["nonegate"]
     1588 JUMPIFEQKB                       R45 TRUE ; [+8]
     1590 GETTABLEKS                       R45 R27 K50 ["index"]
     1592 JUMPIFNOTEQKN                    R45 K53 [1] ; [+4]
     1594 MOVE                             R45 R39
     1595 CALL                             R45 0 0
     1596 JUMP                             ; [+933]
     1597 JUMPIFNOTEQKS                    R32 K160 ["+"] ; [+68]
     1599 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1601 JUMPIFEQKB                       R45 TRUE ; [+15]
     1603 MOVE                             R45 R34
     1604 CALL                             R45 0 1
     1605 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+11]
     1607 MOVE                             R45 R34
     1608 LOADN                            R46 2
     1609 CALL                             R45 1 1
     1610 JUMPIFEQKS                       R45 K150 ["?"] ; [+6]
     1612 MOVE                             R45 R43
     1613 LOADK                            R46 K161 ["plus"]
     1614 MOVE                             R47 R32
     1615 CALL                             R45 2 0
     1616 JUMP                             ; [+913]
     1617 JUMPIFEQKNIL                     R31 ; [+5]
     1619 GETTABLEKS                       R45 R31 K19 ["value"]
     1621 JUMPIFEQKS                       R45 K105 ["("] ; [+5]
     1623 GETTABLEKS                       R45 R2 K162 ["regex"]
     1625 JUMPIFNOTEQKB                    R45 FALSE ; [+9]
     1627 MOVE                             R45 R42
     1628 DUPTABLE                         R46 K163 [{["type"] = "plus", ["value"], ["output"]}]
     1629 SETTABLEKS                       R32 R46 K19 ["value"]
     1631 SETTABLEKS                       R12 R46 K21 ["output"]
     1633 CALL                             R45 1 0
     1634 JUMP                             ; [+895]
     1635 JUMPIFEQKNIL                     R31 ; [+13]
     1637 GETTABLEKS                       R45 R31 K17 ["type"]
     1639 JUMPIFEQKS                       R45 K122 ["bracket"] ; [+14]
     1641 GETTABLEKS                       R45 R31 K17 ["type"]
     1643 JUMPIFEQKS                       R45 K109 ["paren"] ; [+10]
     1645 GETTABLEKS                       R45 R31 K17 ["type"]
     1647 JUMPIFEQKS                       R45 K131 ["brace"] ; [+6]
     1649 GETTABLEKS                       R45 R27 K61 ["parens"]
     1651 LOADN                            R46 0
     1652 JUMPIFNOTLT                      R46 R45 ; [+7]
     1654 MOVE                             R45 R42
     1655 DUPTABLE                         R46 K164 [{["type"] = "plus", ["value"]}]
     1656 SETTABLEKS                       R32 R46 K19 ["value"]
     1658 CALL                             R45 1 0
     1659 JUMP                             ; [+870]
     1660 MOVE                             R45 R42
     1661 DUPTABLE                         R46 K164 [{["type"] = "plus", ["value"]}]
     1662 SETTABLEKS                       R12 R46 K19 ["value"]
     1664 CALL                             R45 1 0
     1665 JUMP                             ; [+864]
     1666 JUMPIFNOTEQKS                    R32 K165 ["@"] ; [+26]
     1668 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1670 JUMPIFEQKB                       R45 TRUE ; [+16]
     1672 MOVE                             R45 R34
     1673 CALL                             R45 0 1
     1674 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+12]
     1676 MOVE                             R45 R34
     1677 LOADN                            R46 2
     1678 CALL                             R45 1 1
     1679 JUMPIFEQKS                       R45 K150 ["?"] ; [+7]
     1681 MOVE                             R45 R42
     1682 DUPTABLE                         R46 K169 [{["type"] = "at", ["extglob"] = True, ["value"], ["output"] = ""}]
     1683 SETTABLEKS                       R32 R46 K19 ["value"]
     1685 CALL                             R45 1 0
     1686 JUMP                             ; [+843]
     1687 MOVE                             R45 R42
     1688 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
     1689 SETTABLEKS                       R32 R46 K19 ["value"]
     1691 CALL                             R45 1 0
     1692 JUMP                             ; [+837]
     1693 JUMPIFEQKS                       R32 K170 ["*"] ; [+41]
     1695 JUMPIFEQKS                       R32 K171 ["$"] ; [+3]
     1697 JUMPIFNOTEQKS                    R32 K100 ["^"] ; [+7]
     1699 LOADK                            R45 K98 ["\\%s"]
     1700 MOVE                             R47 R32
     1701 NAMECALL                         R45 R45 K16 ["format"]
     1703 CALL                             R45 2 1
     1704 MOVE                             R32 R45
     1705 GETIMPORT                        R45 K173 [string.match]
     1707 GETTABLEKS                       R49 R27 K50 ["index"]
     1709 ADDK                             R48 R49 K53 [1]
     1710 FASTCALL2                        STRING_SUB R0 R48 ; [+4]
     1712 MOVE                             R47 R0
     1713 GETIMPORT                        R46 K85 [string.sub]
     1715 CALL                             R46 2 1
     1716 GETUPVAL                         R47 15
     1717 CALL                             R45 2 1
     1718 JUMPIFEQKNIL                     R45 ; [+10]
     1720 MOVE                             R46 R32
     1721 MOVE                             R47 R45
     1722 CONCAT                           R32 R46 R47
     1723 GETTABLEKS                       R46 R27 K50 ["index"]
     1725 LENGTH                           R47 R45
     1726 ADD                              R46 R46 R47
     1727 SETTABLEKS                       R46 R27 K50 ["index"]
     1729 MOVE                             R46 R42
     1730 DUPTABLE                         R47 K82 [{["type"] = "text", ["value"]}]
     1731 SETTABLEKS                       R32 R47 K19 ["value"]
     1733 CALL                             R46 1 0
     1734 JUMP                             ; [+795]
     1735 JUMPIFEQKNIL                     R31 ; [+43]
     1737 GETTABLEKS                       R45 R31 K17 ["type"]
     1739 JUMPIFEQKS                       R45 K63 ["globstar"] ; [+5]
     1741 GETTABLEKS                       R45 R31 K174 ["star"]
     1743 JUMPIFNOTEQKB                    R45 TRUE ; [+35]
     1745 LOADK                            R45 K174 ["star"]
     1746 SETTABLEKS                       R45 R31 K17 ["type"]
     1748 LOADB                            R45 1
     1749 SETTABLEKS                       R45 R31 K174 ["star"]
     1751 GETTABLEKS                       R46 R31 K19 ["value"]
     1753 MOVE                             R47 R32
     1754 CONCAT                           R45 R46 R47
     1755 SETTABLEKS                       R45 R31 K19 ["value"]
     1757 SETTABLEKS                       R26 R31 K21 ["output"]
     1759 LOADB                            R45 1
     1760 SETTABLEKS                       R45 R27 K56 ["backtrack"]
     1762 LOADB                            R45 1
     1763 SETTABLEKS                       R45 R27 K63 ["globstar"]
     1765 MOVE                             R45 R32
     1766 ORK                              R46 R45 K20 [""]
     1767 GETTABLEKS                       R48 R27 K54 ["consumed"]
     1769 MOVE                             R49 R46
     1770 CONCAT                           R47 R48 R49
     1771 SETTABLEKS                       R47 R27 K54 ["consumed"]
     1773 GETTABLEKS                       R47 R27 K50 ["index"]
     1775 ADDK                             R47 R47 K51 [0]
     1776 SETTABLEKS                       R47 R27 K50 ["index"]
     1778 JUMP                             ; [+751]
     1779 GETTABLEKS                       R48 R27 K50 ["index"]
     1781 ADDK                             R47 R48 K53 [1]
     1782 FASTCALL2                        STRING_SUB R0 R47 ; [+4]
     1784 MOVE                             R46 R0
     1785 GETIMPORT                        R45 K85 [string.sub]
     1787 CALL                             R45 2 1
     1788 GETUPVAL                         R46 4
     1789 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1791 LOADB                            R47 0
     1792 GETTABLEKS                       R48 R2 K48 ["noextglob"]
     1794 JUMPIFEQKB                       R48 TRUE ; [+8]
     1796 GETUPVAL                         R47 8
     1797 LOADK                            R48 K175 ["^\\([^?]"]
     1798 CALL                             R47 1 1
     1799 MOVE                             R49 R45
     1800 NAMECALL                         R47 R47 K71 ["test"]
     1802 CALL                             R47 2 1
     1803 CALL                             R46 1 1
     1804 JUMPIFNOT                        R46 ; [+5]
     1805 MOVE                             R46 R43
     1806 LOADK                            R47 K174 ["star"]
     1807 MOVE                             R48 R32
     1808 CALL                             R46 2 0
     1809 JUMP                             ; [+720]
     1810 GETTABLEKS                       R46 R31 K17 ["type"]
     1812 JUMPIFNOTEQKS                    R46 K174 ["star"] ; [+588]
     1814 GETTABLEKS                       R46 R2 K176 ["noglobstar"]
     1816 JUMPIFNOTEQKB                    R46 TRUE ; [+15]
     1818 MOVE                             R46 R32
     1819 ORK                              R47 R46 K20 [""]
     1820 GETTABLEKS                       R49 R27 K54 ["consumed"]
     1822 MOVE                             R50 R47
     1823 CONCAT                           R48 R49 R50
     1824 SETTABLEKS                       R48 R27 K54 ["consumed"]
     1826 GETTABLEKS                       R48 R27 K50 ["index"]
     1828 ADDK                             R48 R48 K51 [0]
     1829 SETTABLEKS                       R48 R27 K50 ["index"]
     1831 JUMP                             ; [+698]
     1832 GETTABLEKS                       R46 R31 K177 ["prev"]
     1834 GETTABLEKS                       R47 R46 K177 ["prev"]
     1836 LOADB                            R48 1
     1837 GETTABLEKS                       R49 R46 K17 ["type"]
     1839 JUMPIFEQKS                       R49 K147 ["slash"] ; [+7]
     1841 GETTABLEKS                       R49 R46 K17 ["type"]
     1843 JUMPIFEQKS                       R49 K18 ["bos"] ; [+2]
     1845 LOADB                            R48 0 +1
     1846 LOADB                            R48 1
     1847 GETUPVAL                         R50 4
     1848 GETTABLEKS                       R50 R50 K24 ["toJSBoolean"]
     1850 MOVE                             R51 R47
     1851 CALL                             R50 1 1
     1852 JUMPIFNOT                        R50 ; [+12]
     1853 LOADB                            R49 1
     1854 GETTABLEKS                       R50 R47 K17 ["type"]
     1856 JUMPIFEQKS                       R50 K174 ["star"] ; [+9]
     1858 GETTABLEKS                       R50 R47 K17 ["type"]
     1860 JUMPIFEQKS                       R50 K63 ["globstar"] ; [+2]
     1862 LOADB                            R49 0 +1
     1863 LOADB                            R49 1
     1864 JUMP                             ; [+1]
     1865 MOVE                             R49 R47
     1866 GETTABLEKS                       R50 R2 K43 ["bash"]
     1868 JUMPIFNOTEQKB                    R50 TRUE ; [+22]
     1870 JUMPIFNOT                        R48 ; [+14]
     1871 LOADN                            R52 1
     1872 LOADN                            R53 1
     1873 NAMECALL                         R50 R45 K84 ["sub"]
     1875 CALL                             R50 3 1
     1876 JUMPIFEQKNIL                     R50 ; [+14]
     1878 LOADN                            R52 1
     1879 LOADN                            R53 1
     1880 NAMECALL                         R50 R45 K84 ["sub"]
     1882 CALL                             R50 3 1
     1883 JUMPIFEQKS                       R50 K78 ["/"] ; [+7]
     1885 MOVE                             R50 R42
     1886 DUPTABLE                         R51 K178 [{["type"] = "star", ["value"], ["output"] = ""}]
     1887 SETTABLEKS                       R32 R51 K19 ["value"]
     1889 CALL                             R50 1 0
     1890 JUMP                             ; [+639]
     1891 LOADB                            R50 0
     1892 GETTABLEKS                       R51 R27 K60 ["braces"]
     1894 LOADN                            R52 0
     1895 JUMPIFNOTLT                      R52 R51 ; [+12]
     1897 LOADB                            R50 1
     1898 GETTABLEKS                       R51 R46 K17 ["type"]
     1900 JUMPIFEQKS                       R51 K137 ["comma"] ; [+7]
     1902 GETTABLEKS                       R51 R46 K17 ["type"]
     1904 JUMPIFEQKS                       R51 K131 ["brace"] ; [+2]
     1906 LOADB                            R50 0 +1
     1907 LOADB                            R50 1
     1908 LOADB                            R51 0
     1909 LENGTH                           R52 R28
     1910 LOADN                            R53 0
     1911 JUMPIFNOTLT                      R53 R52 ; [+12]
     1913 LOADB                            R51 1
     1914 GETTABLEKS                       R52 R46 K17 ["type"]
     1916 JUMPIFEQKS                       R52 K179 ["pipe"] ; [+7]
     1918 GETTABLEKS                       R52 R46 K17 ["type"]
     1920 JUMPIFEQKS                       R52 K109 ["paren"] ; [+2]
     1922 LOADB                            R51 0 +1
     1923 LOADB                            R51 1
     1924 JUMPIF                           R48 ; [+12]
     1925 GETTABLEKS                       R52 R46 K17 ["type"]
     1927 JUMPIFEQKS                       R52 K109 ["paren"] ; [+9]
     1929 JUMPIF                           R50 ; [+7]
     1930 JUMPIF                           R51 ; [+6]
     1931 MOVE                             R52 R42
     1932 DUPTABLE                         R53 K178 [{["type"] = "star", ["value"], ["output"] = ""}]
     1933 SETTABLEKS                       R32 R53 K19 ["value"]
     1935 CALL                             R52 1 0
     1936 JUMP                             ; [+593]
     1937 GETUPVAL                         R52 7
     1938 GETTABLEKS                       R52 R52 K93 ["slice"]
     1940 MOVE                             R53 R45
     1941 LOADN                            R54 1
     1942 LOADN                            R55 4
     1943 CALL                             R52 3 1
     1944 JUMPIFNOTEQKS                    R52 K180 ["/**"] ; [+37]
     1946 GETTABLEKS                       R55 R27 K50 ["index"]
     1948 ADDK                             R54 R55 K181 [4]
     1949 GETTABLEKS                       R56 R27 K50 ["index"]
     1951 ADDK                             R55 R56 K181 [4]
     1952 NAMECALL                         R52 R0 K84 ["sub"]
     1954 CALL                             R52 3 1
     1955 GETUPVAL                         R53 4
     1956 GETTABLEKS                       R53 R53 K24 ["toJSBoolean"]
     1958 MOVE                             R54 R52
     1959 CALL                             R53 1 1
     1960 JUMPIFNOT                        R53 ; [+2]
     1961 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+20]
     1963 GETUPVAL                         R53 7
     1964 GETTABLEKS                       R53 R53 K93 ["slice"]
     1966 MOVE                             R54 R45
     1967 LOADN                            R55 4
     1968 CALL                             R53 2 1
     1969 MOVE                             R45 R53
     1970 GETTABLEKS                       R54 R27 K54 ["consumed"]
     1972 LOADK                            R55 K180 ["/**"]
     1973 CONCAT                           R53 R54 R55
     1974 SETTABLEKS                       R53 R27 K54 ["consumed"]
     1976 GETTABLEKS                       R53 R27 K50 ["index"]
     1978 ADDK                             R53 R53 K182 [3]
     1979 SETTABLEKS                       R53 R27 K50 ["index"]
     1981 JUMPBACK                         ; [-45]
     1982 GETTABLEKS                       R52 R46 K17 ["type"]
     1984 JUMPIFNOTEQKS                    R52 K18 ["bos"] ; [+56]
     1986 GETTABLEKS                       R53 R27 K50 ["index"]
     1988 JUMPIFEQ                         R53 R4 ; [+2]
     1990 LOADB                            R52 0 +1
     1991 LOADB                            R52 1
     1992 JUMPIFNOT                        R52 ; [+48]
     1993 LOADK                            R52 K63 ["globstar"]
     1994 SETTABLEKS                       R52 R31 K17 ["type"]
     1996 GETTABLEKS                       R53 R31 K19 ["value"]
     1998 MOVE                             R54 R32
     1999 CONCAT                           R52 R53 R54
     2000 SETTABLEKS                       R52 R31 K19 ["value"]
     2002 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2003 MOVE                             R54 R7
     2004 MOVE                             R55 R22
     2005 GETUPVAL                         R57 4
     2006 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     2008 GETTABLEKS                       R58 R2 K42 ["dot"]
     2010 CALL                             R57 1 1
     2011 JUMPIFNOT                        R57 ; [+2]
     2012 MOVE                             R56 R15
     2013 JUMP                             ; [+1]
     2014 MOVE                             R56 R11
     2015 NAMECALL                         R52 R52 K16 ["format"]
     2017 CALL                             R52 4 1
     2018 SETTABLEKS                       R52 R31 K21 ["output"]
     2020 GETTABLEKS                       R52 R31 K21 ["output"]
     2022 SETTABLEKS                       R52 R27 K21 ["output"]
     2024 LOADB                            R52 1
     2025 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2027 MOVE                             R52 R32
     2028 ORK                              R53 R52 K20 [""]
     2029 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2031 MOVE                             R56 R53
     2032 CONCAT                           R54 R55 R56
     2033 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2035 GETTABLEKS                       R54 R27 K50 ["index"]
     2037 ADDK                             R54 R54 K51 [0]
     2038 SETTABLEKS                       R54 R27 K50 ["index"]
     2040 JUMP                             ; [+489]
     2041 GETTABLEKS                       R52 R46 K17 ["type"]
     2043 JUMPIFNOTEQKS                    R52 K147 ["slash"] ; [+105]
     2045 GETTABLEKS                       R52 R46 K177 ["prev"]
     2047 GETTABLEKS                       R52 R52 K17 ["type"]
     2049 JUMPIFEQKS                       R52 K18 ["bos"] ; [+99]
     2051 GETUPVAL                         R52 4
     2052 GETTABLEKS                       R52 R52 K24 ["toJSBoolean"]
     2054 MOVE                             R53 R49
     2055 CALL                             R52 1 1
     2056 JUMPIF                           R52 ; [+92]
     2057 GETTABLEKS                       R53 R27 K50 ["index"]
     2059 JUMPIFEQ                         R53 R4 ; [+2]
     2061 LOADB                            R52 0 +1
     2062 LOADB                            R52 1
     2063 JUMPIFNOT                        R52 ; [+85]
     2064 GETUPVAL                         R52 7
     2065 GETTABLEKS                       R52 R52 K93 ["slice"]
     2067 GETTABLEKS                       R53 R27 K21 ["output"]
     2069 LOADN                            R54 1
     2070 GETTABLEKS                       R58 R46 K21 ["output"]
     2072 GETTABLEKS                       R59 R31 K21 ["output"]
     2074 CONCAT                           R57 R58 R59
     2075 LENGTH                           R56 R57
     2076 MINUS                            R55 R56
     2077 CALL                             R52 3 1
     2078 SETTABLEKS                       R52 R27 K21 ["output"]
     2080 LOADK                            R52 K183 ["(?:%s"]
     2081 GETTABLEKS                       R54 R46 K21 ["output"]
     2083 NAMECALL                         R52 R52 K16 ["format"]
     2085 CALL                             R52 2 1
     2086 SETTABLEKS                       R52 R46 K21 ["output"]
     2088 LOADK                            R52 K63 ["globstar"]
     2089 SETTABLEKS                       R52 R31 K17 ["type"]
     2091 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2092 MOVE                             R57 R7
     2093 MOVE                             R58 R22
     2094 GETUPVAL                         R60 4
     2095 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2097 GETTABLEKS                       R61 R2 K42 ["dot"]
     2099 CALL                             R60 1 1
     2100 JUMPIFNOT                        R60 ; [+2]
     2101 MOVE                             R59 R15
     2102 JUMP                             ; [+1]
     2103 MOVE                             R59 R11
     2104 NAMECALL                         R55 R55 K16 ["format"]
     2106 CALL                             R55 4 1
     2107 MOVE                             R53 R55
     2108 GETTABLEKS                       R55 R2 K184 ["strictSlashes"]
     2110 JUMPIFNOT                        R55 ; [+2]
     2111 LOADK                            R54 K111 [")"]
     2112 JUMP                             ; [+1]
     2113 LOADK                            R54 K185 ["|$)"]
     2114 CONCAT                           R52 R53 R54
     2115 SETTABLEKS                       R52 R31 K21 ["output"]
     2117 GETTABLEKS                       R53 R31 K19 ["value"]
     2119 MOVE                             R54 R32
     2120 CONCAT                           R52 R53 R54
     2121 SETTABLEKS                       R52 R31 K19 ["value"]
     2123 LOADB                            R52 1
     2124 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2126 GETTABLEKS                       R53 R27 K21 ["output"]
     2128 GETTABLEKS                       R54 R46 K21 ["output"]
     2130 GETTABLEKS                       R55 R31 K21 ["output"]
     2132 CONCAT                           R52 R53 R55
     2133 SETTABLEKS                       R52 R27 K21 ["output"]
     2135 MOVE                             R52 R32
     2136 ORK                              R53 R52 K20 [""]
     2137 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2139 MOVE                             R56 R53
     2140 CONCAT                           R54 R55 R56
     2141 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2143 GETTABLEKS                       R54 R27 K50 ["index"]
     2145 ADDK                             R54 R54 K51 [0]
     2146 SETTABLEKS                       R54 R27 K50 ["index"]
     2148 JUMP                             ; [+381]
     2149 GETTABLEKS                       R52 R46 K17 ["type"]
     2151 JUMPIFNOTEQKS                    R52 K147 ["slash"] ; [+114]
     2153 GETTABLEKS                       R52 R46 K177 ["prev"]
     2155 GETTABLEKS                       R52 R52 K17 ["type"]
     2157 JUMPIFEQKS                       R52 K18 ["bos"] ; [+108]
     2159 LOADN                            R54 1
     2160 LOADN                            R55 1
     2161 NAMECALL                         R52 R45 K84 ["sub"]
     2163 CALL                             R52 3 1
     2164 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+101]
     2166 LOADN                            R55 2
     2167 LOADN                            R56 2
     2168 NAMECALL                         R53 R45 K84 ["sub"]
     2170 CALL                             R53 3 1
     2171 JUMPIFEQKNIL                     R53 ; [+3]
     2173 LOADK                            R52 K186 ["|$"]
     2174 JUMP                             ; [+1]
     2175 LOADK                            R52 K20 [""]
     2176 GETUPVAL                         R53 7
     2177 GETTABLEKS                       R53 R53 K93 ["slice"]
     2179 GETTABLEKS                       R54 R27 K21 ["output"]
     2181 LOADN                            R55 1
     2182 GETTABLEKS                       R59 R46 K21 ["output"]
     2184 GETTABLEKS                       R60 R31 K21 ["output"]
     2186 CONCAT                           R58 R59 R60
     2187 LENGTH                           R57 R58
     2188 MINUS                            R56 R57
     2189 CALL                             R53 3 1
     2190 SETTABLEKS                       R53 R27 K21 ["output"]
     2192 LOADK                            R53 K183 ["(?:%s"]
     2193 GETTABLEKS                       R55 R46 K21 ["output"]
     2195 NAMECALL                         R53 R53 K16 ["format"]
     2197 CALL                             R53 2 1
     2198 SETTABLEKS                       R53 R46 K21 ["output"]
     2200 LOADK                            R53 K63 ["globstar"]
     2201 SETTABLEKS                       R53 R31 K17 ["type"]
     2203 LOADK                            R53 K187 ["%s%s|%s%s)"]
     2204 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2205 MOVE                             R57 R7
     2206 MOVE                             R58 R22
     2207 GETUPVAL                         R60 4
     2208 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2210 GETTABLEKS                       R61 R2 K42 ["dot"]
     2212 CALL                             R60 1 1
     2213 JUMPIFNOT                        R60 ; [+2]
     2214 MOVE                             R59 R15
     2215 JUMP                             ; [+1]
     2216 MOVE                             R59 R11
     2217 NAMECALL                         R55 R55 K16 ["format"]
     2219 CALL                             R55 4 1
     2220 MOVE                             R56 R13
     2221 MOVE                             R57 R13
     2222 MOVE                             R58 R52
     2223 NAMECALL                         R53 R53 K16 ["format"]
     2225 CALL                             R53 5 1
     2226 SETTABLEKS                       R53 R31 K21 ["output"]
     2228 GETTABLEKS                       R54 R31 K19 ["value"]
     2230 MOVE                             R55 R32
     2231 CONCAT                           R53 R54 R55
     2232 SETTABLEKS                       R53 R31 K19 ["value"]
     2234 GETTABLEKS                       R54 R27 K21 ["output"]
     2236 GETTABLEKS                       R55 R46 K21 ["output"]
     2238 GETTABLEKS                       R56 R31 K21 ["output"]
     2240 CONCAT                           R53 R54 R56
     2241 SETTABLEKS                       R53 R27 K21 ["output"]
     2243 LOADB                            R53 1
     2244 SETTABLEKS                       R53 R27 K63 ["globstar"]
     2246 MOVE                             R54 R32
     2247 MOVE                             R55 R35
     2248 CALL                             R55 0 1
     2249 CONCAT                           R53 R54 R55
     2250 ORK                              R54 R53 K20 [""]
     2251 GETTABLEKS                       R56 R27 K54 ["consumed"]
     2253 MOVE                             R57 R54
     2254 CONCAT                           R55 R56 R57
     2255 SETTABLEKS                       R55 R27 K54 ["consumed"]
     2257 GETTABLEKS                       R55 R27 K50 ["index"]
     2259 ADDK                             R55 R55 K51 [0]
     2260 SETTABLEKS                       R55 R27 K50 ["index"]
     2262 MOVE                             R53 R42
     2263 DUPTABLE                         R54 K188 [{["type"] = "slash", ["value"] = "/", ["output"] = ""}]
     2264 CALL                             R53 1 0
     2265 JUMP                             ; [+264]
     2266 GETTABLEKS                       R52 R46 K17 ["type"]
     2268 JUMPIFNOTEQKS                    R52 K18 ["bos"] ; [+68]
     2270 LOADN                            R54 1
     2271 LOADN                            R55 1
     2272 NAMECALL                         R52 R45 K84 ["sub"]
     2274 CALL                             R52 3 1
     2275 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+61]
     2277 LOADK                            R52 K63 ["globstar"]
     2278 SETTABLEKS                       R52 R31 K17 ["type"]
     2280 GETTABLEKS                       R53 R31 K19 ["value"]
     2282 MOVE                             R54 R32
     2283 CONCAT                           R52 R53 R54
     2284 SETTABLEKS                       R52 R31 K19 ["value"]
     2286 LOADK                            R52 K189 ["(?:^|%s|%s%s)"]
     2287 MOVE                             R54 R13
     2288 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2289 MOVE                             R57 R7
     2290 MOVE                             R58 R22
     2291 GETUPVAL                         R60 4
     2292 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2294 GETTABLEKS                       R61 R2 K42 ["dot"]
     2296 CALL                             R60 1 1
     2297 JUMPIFNOT                        R60 ; [+2]
     2298 MOVE                             R59 R15
     2299 JUMP                             ; [+1]
     2300 MOVE                             R59 R11
     2301 NAMECALL                         R55 R55 K16 ["format"]
     2303 CALL                             R55 4 1
     2304 MOVE                             R56 R13
     2305 NAMECALL                         R52 R52 K16 ["format"]
     2307 CALL                             R52 4 1
     2308 SETTABLEKS                       R52 R31 K21 ["output"]
     2310 GETTABLEKS                       R52 R31 K21 ["output"]
     2312 SETTABLEKS                       R52 R27 K21 ["output"]
     2314 LOADB                            R52 1
     2315 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2317 MOVE                             R53 R32
     2318 MOVE                             R54 R35
     2319 CALL                             R54 0 1
     2320 CONCAT                           R52 R53 R54
     2321 ORK                              R53 R52 K20 [""]
     2322 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2324 MOVE                             R56 R53
     2325 CONCAT                           R54 R55 R56
     2326 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2328 GETTABLEKS                       R54 R27 K50 ["index"]
     2330 ADDK                             R54 R54 K51 [0]
     2331 SETTABLEKS                       R54 R27 K50 ["index"]
     2333 MOVE                             R52 R42
     2334 DUPTABLE                         R53 K188 [{["type"] = "slash", ["value"] = "/", ["output"] = ""}]
     2335 CALL                             R52 1 0
     2336 JUMP                             ; [+193]
     2337 GETUPVAL                         R52 7
     2338 GETTABLEKS                       R52 R52 K93 ["slice"]
     2340 GETTABLEKS                       R53 R27 K21 ["output"]
     2342 LOADN                            R54 1
     2343 GETTABLEKS                       R57 R31 K21 ["output"]
     2345 LENGTH                           R56 R57
     2346 MINUS                            R55 R56
     2347 CALL                             R52 3 1
     2348 SETTABLEKS                       R52 R27 K21 ["output"]
     2350 LOADK                            R52 K63 ["globstar"]
     2351 SETTABLEKS                       R52 R31 K17 ["type"]
     2353 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2354 MOVE                             R54 R7
     2355 MOVE                             R55 R22
     2356 GETUPVAL                         R57 4
     2357 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     2359 GETTABLEKS                       R58 R2 K42 ["dot"]
     2361 CALL                             R57 1 1
     2362 JUMPIFNOT                        R57 ; [+2]
     2363 MOVE                             R56 R15
     2364 JUMP                             ; [+1]
     2365 MOVE                             R56 R11
     2366 NAMECALL                         R52 R52 K16 ["format"]
     2368 CALL                             R52 4 1
     2369 SETTABLEKS                       R52 R31 K21 ["output"]
     2371 GETTABLEKS                       R53 R31 K19 ["value"]
     2373 MOVE                             R54 R32
     2374 CONCAT                           R52 R53 R54
     2375 SETTABLEKS                       R52 R31 K19 ["value"]
     2377 GETTABLEKS                       R53 R27 K21 ["output"]
     2379 GETTABLEKS                       R54 R31 K21 ["output"]
     2381 CONCAT                           R52 R53 R54
     2382 SETTABLEKS                       R52 R27 K21 ["output"]
     2384 LOADB                            R52 1
     2385 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2387 MOVE                             R52 R32
     2388 ORK                              R53 R52 K20 [""]
     2389 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2391 MOVE                             R56 R53
     2392 CONCAT                           R54 R55 R56
     2393 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2395 GETTABLEKS                       R54 R27 K50 ["index"]
     2397 ADDK                             R54 R54 K51 [0]
     2398 SETTABLEKS                       R54 R27 K50 ["index"]
     2400 JUMP                             ; [+129]
     2401 DUPTABLE                         R46 K190 [{["type"] = "star", ["value"], ["output"]}]
     2402 SETTABLEKS                       R32 R46 K19 ["value"]
     2404 SETTABLEKS                       R26 R46 K21 ["output"]
     2406 GETTABLEKS                       R47 R2 K43 ["bash"]
     2408 JUMPIFNOTEQKB                    R47 TRUE ; [+22]
     2410 LOADK                            R47 K191 [".*?"]
     2411 SETTABLEKS                       R47 R46 K21 ["output"]
     2413 GETTABLEKS                       R47 R31 K17 ["type"]
     2415 JUMPIFEQKS                       R47 K18 ["bos"] ; [+5]
     2417 GETTABLEKS                       R47 R31 K17 ["type"]
     2419 JUMPIFNOTEQKS                    R47 K147 ["slash"] ; [+7]
     2421 MOVE                             R48 R24
     2422 GETTABLEKS                       R49 R46 K21 ["output"]
     2424 CONCAT                           R47 R48 R49
     2425 SETTABLEKS                       R47 R46 K21 ["output"]
     2427 MOVE                             R47 R42
     2428 MOVE                             R48 R46
     2429 CALL                             R47 1 0
     2430 JUMP                             ; [+99]
     2431 JUMPIFEQKNIL                     R31 ; [+19]
     2433 GETTABLEKS                       R47 R31 K17 ["type"]
     2435 JUMPIFEQKS                       R47 K122 ["bracket"] ; [+5]
     2437 GETTABLEKS                       R47 R31 K17 ["type"]
     2439 JUMPIFNOTEQKS                    R47 K109 ["paren"] ; [+11]
     2441 GETTABLEKS                       R47 R2 K162 ["regex"]
     2443 JUMPIFNOTEQKB                    R47 TRUE ; [+7]
     2445 SETTABLEKS                       R32 R46 K21 ["output"]
     2447 MOVE                             R47 R42
     2448 MOVE                             R48 R46
     2449 CALL                             R47 1 0
     2450 JUMP                             ; [+79]
     2451 GETTABLEKS                       R47 R27 K50 ["index"]
     2453 GETTABLEKS                       R48 R27 K52 ["start"]
     2455 JUMPIFEQ                         R47 R48 ; [+9]
     2457 GETTABLEKS                       R47 R31 K17 ["type"]
     2459 JUMPIFEQKS                       R47 K147 ["slash"] ; [+5]
     2461 GETTABLEKS                       R47 R31 K17 ["type"]
     2463 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+63]
     2465 GETTABLEKS                       R47 R31 K17 ["type"]
     2467 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+14]
     2469 GETTABLEKS                       R48 R27 K21 ["output"]
     2471 MOVE                             R49 R17
     2472 CONCAT                           R47 R48 R49
     2473 SETTABLEKS                       R47 R27 K21 ["output"]
     2475 GETTABLEKS                       R48 R31 K21 ["output"]
     2477 MOVE                             R49 R17
     2478 CONCAT                           R47 R48 R49
     2479 SETTABLEKS                       R47 R31 K21 ["output"]
     2481 JUMP                             ; [+29]
     2482 GETTABLEKS                       R47 R2 K42 ["dot"]
     2484 JUMPIFNOTEQKB                    R47 TRUE ; [+14]
     2486 GETTABLEKS                       R48 R27 K21 ["output"]
     2488 MOVE                             R49 R18
     2489 CONCAT                           R47 R48 R49
     2490 SETTABLEKS                       R47 R27 K21 ["output"]
     2492 GETTABLEKS                       R48 R31 K21 ["output"]
     2494 MOVE                             R49 R18
     2495 CONCAT                           R47 R48 R49
     2496 SETTABLEKS                       R47 R31 K21 ["output"]
     2498 JUMP                             ; [+12]
     2499 GETTABLEKS                       R48 R27 K21 ["output"]
     2501 MOVE                             R49 R24
     2502 CONCAT                           R47 R48 R49
     2503 SETTABLEKS                       R47 R27 K21 ["output"]
     2505 GETTABLEKS                       R48 R31 K21 ["output"]
     2507 MOVE                             R49 R24
     2508 CONCAT                           R47 R48 R49
     2509 SETTABLEKS                       R47 R31 K21 ["output"]
     2511 MOVE                             R47 R34
     2512 CALL                             R47 0 1
     2513 JUMPIFEQKS                       R47 K170 ["*"] ; [+13]
     2515 GETTABLEKS                       R48 R27 K21 ["output"]
     2517 MOVE                             R49 R14
     2518 CONCAT                           R47 R48 R49
     2519 SETTABLEKS                       R47 R27 K21 ["output"]
     2521 GETTABLEKS                       R48 R31 K21 ["output"]
     2523 MOVE                             R49 R14
     2524 CONCAT                           R47 R48 R49
     2525 SETTABLEKS                       R47 R31 K21 ["output"]
     2527 MOVE                             R47 R42
     2528 MOVE                             R48 R46
     2529 CALL                             R47 1 0
     2530 JUMPBACK                         ; [-2170]
     2531 GETTABLEKS                       R45 R27 K59 ["brackets"]
     2533 LOADN                            R46 0
     2534 JUMPIFNOTLT                      R46 R45 ; [+40]
     2536 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2538 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2540 GETIMPORT                        R45 K4 [error]
     2542 GETUPVAL                         R46 0
     2543 GETTABLEKS                       R46 R46 K5 ["new"]
     2545 LOADK                            R48 K113 ["SyntaxError: "]
     2546 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2547 LOADK                            R51 K121 ["closing"]
     2548 LOADK                            R52 K88 ["]"]
     2549 LOADK                            R53 K88 ["]"]
     2550 NAMECALL                         R49 R49 K16 ["format"]
     2552 CALL                             R49 4 1
     2553 CONCAT                           R47 R48 R49
     2554 CALL                             R46 1 -1
     2555 CALL                             R45 -1 0
     2556 GETUPVAL                         R45 5
     2557 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2559 GETTABLEKS                       R46 R27 K21 ["output"]
     2561 LOADK                            R47 K89 ["["]
     2562 CALL                             R45 2 1
     2563 SETTABLEKS                       R45 R27 K21 ["output"]
     2565 GETTABLEKS                       R45 R27 K59 ["brackets"]
     2567 SUBK                             R45 R45 K53 [1]
     2568 SETTABLEKS                       R45 R27 K59 ["brackets"]
     2570 GETIMPORT                        R45 K117 [table.remove]
     2572 MOVE                             R46 R30
     2573 CALL                             R45 1 0
     2574 JUMPBACK                         ; [-44]
     2575 GETTABLEKS                       R45 R27 K61 ["parens"]
     2577 LOADN                            R46 0
     2578 JUMPIFNOTLT                      R46 R45 ; [+40]
     2580 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2582 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2584 GETIMPORT                        R45 K4 [error]
     2586 GETUPVAL                         R46 0
     2587 GETTABLEKS                       R46 R46 K5 ["new"]
     2589 LOADK                            R48 K113 ["SyntaxError: "]
     2590 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2591 LOADK                            R51 K121 ["closing"]
     2592 LOADK                            R52 K111 [")"]
     2593 LOADK                            R53 K111 [")"]
     2594 NAMECALL                         R49 R49 K16 ["format"]
     2596 CALL                             R49 4 1
     2597 CONCAT                           R47 R48 R49
     2598 CALL                             R46 1 -1
     2599 CALL                             R45 -1 0
     2600 GETUPVAL                         R45 5
     2601 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2603 GETTABLEKS                       R46 R27 K21 ["output"]
     2605 LOADK                            R47 K105 ["("]
     2606 CALL                             R45 2 1
     2607 SETTABLEKS                       R45 R27 K21 ["output"]
     2609 GETTABLEKS                       R45 R27 K61 ["parens"]
     2611 SUBK                             R45 R45 K53 [1]
     2612 SETTABLEKS                       R45 R27 K61 ["parens"]
     2614 GETIMPORT                        R45 K117 [table.remove]
     2616 MOVE                             R46 R30
     2617 CALL                             R45 1 0
     2618 JUMPBACK                         ; [-44]
     2619 GETTABLEKS                       R45 R27 K60 ["braces"]
     2621 LOADN                            R46 0
     2622 JUMPIFNOTLT                      R46 R45 ; [+40]
     2624 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2626 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2628 GETIMPORT                        R45 K4 [error]
     2630 GETUPVAL                         R46 0
     2631 GETTABLEKS                       R46 R46 K5 ["new"]
     2633 LOADK                            R48 K113 ["SyntaxError: "]
     2634 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2635 LOADK                            R51 K121 ["closing"]
     2636 LOADK                            R52 K135 ["}"]
     2637 LOADK                            R53 K135 ["}"]
     2638 NAMECALL                         R49 R49 K16 ["format"]
     2640 CALL                             R49 4 1
     2641 CONCAT                           R47 R48 R49
     2642 CALL                             R46 1 -1
     2643 CALL                             R45 -1 0
     2644 GETUPVAL                         R45 5
     2645 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2647 GETTABLEKS                       R46 R27 K21 ["output"]
     2649 LOADK                            R47 K129 ["{"]
     2650 CALL                             R45 2 1
     2651 SETTABLEKS                       R45 R27 K21 ["output"]
     2653 GETTABLEKS                       R45 R27 K60 ["braces"]
     2655 SUBK                             R45 R45 K53 [1]
     2656 SETTABLEKS                       R45 R27 K60 ["braces"]
     2658 GETIMPORT                        R45 K117 [table.remove]
     2660 MOVE                             R46 R30
     2661 CALL                             R45 1 0
     2662 JUMPBACK                         ; [-44]
     2663 GETTABLEKS                       R45 R2 K184 ["strictSlashes"]
     2665 JUMPIFEQKB                       R45 TRUE ; [+19]
     2667 GETTABLEKS                       R45 R31 K17 ["type"]
     2669 JUMPIFEQKS                       R45 K174 ["star"] ; [+5]
     2671 GETTABLEKS                       R45 R31 K17 ["type"]
     2673 JUMPIFNOTEQKS                    R45 K122 ["bracket"] ; [+11]
     2675 MOVE                             R45 R42
     2676 DUPTABLE                         R46 K194 [{["type"] = "maybe_slash", ["value"] = "", ["output"]}]
     2677 LOADK                            R47 K195 ["%s?"]
     2678 MOVE                             R49 R13
     2679 NAMECALL                         R47 R47 K16 ["format"]
     2681 CALL                             R47 2 1
     2682 SETTABLEKS                       R47 R46 K21 ["output"]
     2684 CALL                             R45 1 0
     2685 GETTABLEKS                       R45 R27 K56 ["backtrack"]
     2687 JUMPIFNOTEQKB                    R45 TRUE ; [+36]
     2689 LOADK                            R45 K20 [""]
     2690 SETTABLEKS                       R45 R27 K21 ["output"]
     2692 GETIMPORT                        R45 K141 [ipairs]
     2694 GETTABLEKS                       R46 R27 K64 ["tokens"]
     2696 CALL                             R45 1 3
     2697 FORGPREP_INEXT                   R45
     2698 GETTABLEKS                       R51 R27 K21 ["output"]
     2700 GETTABLEKS                       R53 R49 K21 ["output"]
     2702 JUMPIFEQKNIL                     R53 ; [+4]
     2704 GETTABLEKS                       R52 R49 K21 ["output"]
     2706 JUMP                             ; [+2]
     2707 GETTABLEKS                       R52 R49 K19 ["value"]
     2709 CONCAT                           R50 R51 R52
     2710 SETTABLEKS                       R50 R27 K21 ["output"]
     2712 GETTABLEKS                       R50 R49 K196 ["suffix"]
     2714 JUMPIFNOT                        R50 ; [+7]
     2715 GETTABLEKS                       R51 R27 K21 ["output"]
     2717 GETTABLEKS                       R52 R49 K196 ["suffix"]
     2719 CONCAT                           R50 R51 R52
     2720 SETTABLEKS                       R50 R27 K21 ["output"]
     2722 FORGLOOP                         R45 2 [inext] ; [-25]
     2724 CLOSEUPVALS                      R0
     2725 RETURN                           R27 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["noglobstar"]
        2 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1
        6 LOADK                            R1 K1 ["(%s(?:(?!%s%s).)*?)"]
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R6 R6 K2 ["toJSBoolean"]
       12 GETTABLEKS                       R7 R0 K3 ["dot"]
       14 CALL                             R6 1 1
       15 JUMPIFNOT                        R6 ; [+2]
       16 GETUPVAL                         R5 4
       17 JUMP                             ; [+1]
       18 GETUPVAL                         R5 5
       19 NAMECALL                         R1 R1 K4 ["format"]
       21 CALL                             R1 4 -1
       22 RETURN                           R1 -1

PROTO_22:
        0 JUMPIFNOTEQKS                    R0 K0 ["*"] ; [+9]
        2 LOADK                            R1 K1 ["%s%s%s"]
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K2 ["format"]
        8 CALL                             R1 4 -1
        9 RETURN                           R1 -1
       10 JUMPIFNOTEQKS                    R0 K3 [".*"] ; [+9]
       12 LOADK                            R1 K1 ["%s%s%s"]
       13 GETUPVAL                         R3 3
       14 GETUPVAL                         R4 1
       15 GETUPVAL                         R5 2
       16 NAMECALL                         R1 R1 K2 ["format"]
       18 CALL                             R1 4 -1
       19 RETURN                           R1 -1
       20 JUMPIFNOTEQKS                    R0 K4 ["*.*"] ; [+11]
       22 LOADK                            R1 K5 ["%s%s%s%s%s"]
       23 GETUPVAL                         R3 0
       24 GETUPVAL                         R4 2
       25 GETUPVAL                         R5 3
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R7 2
       28 NAMECALL                         R1 R1 K2 ["format"]
       30 CALL                             R1 6 -1
       31 RETURN                           R1 -1
       32 JUMPIFNOTEQKS                    R0 K6 ["*/*"] ; [+12]
       34 LOADK                            R1 K7 ["%s%s%s%s%s%s"]
       35 GETUPVAL                         R3 0
       36 GETUPVAL                         R4 2
       37 GETUPVAL                         R5 4
       38 GETUPVAL                         R6 1
       39 GETUPVAL                         R7 5
       40 GETUPVAL                         R8 2
       41 NAMECALL                         R1 R1 K2 ["format"]
       43 CALL                             R1 7 -1
       44 RETURN                           R1 -1
       45 JUMPIFNOTEQKS                    R0 K8 ["**"] ; [+28]
       47 GETUPVAL                         R2 0
       48 GETUPVAL                         R4 6
       49 GETTABLEKS                       R5 R4 K9 ["noglobstar"]
       51 JUMPIFNOTEQKB                    R5 TRUE ; [+3]
       53 GETUPVAL                         R3 2
       54 JUMP                             ; [+17]
       55 LOADK                            R5 K10 ["(%s(?:(?!%s%s).)*?)"]
       56 GETUPVAL                         R7 7
       57 GETUPVAL                         R8 8
       58 GETUPVAL                         R10 9
       59 GETTABLEKS                       R10 R10 K11 ["toJSBoolean"]
       61 GETTABLEKS                       R11 R4 K12 ["dot"]
       63 CALL                             R10 1 1
       64 JUMPIFNOT                        R10 ; [+2]
       65 GETUPVAL                         R9 10
       66 JUMP                             ; [+1]
       67 GETUPVAL                         R9 3
       68 NAMECALL                         R5 R5 K2 ["format"]
       70 CALL                             R5 4 1
       71 MOVE                             R3 R5
       72 CONCAT                           R1 R2 R3
       73 RETURN                           R1 1
       74 JUMPIFNOTEQKS                    R0 K13 ["**/*"] ; [+35]
       76 LOADK                            R1 K14 ["(?:%s%s%s)?%s%s%s"]
       77 GETUPVAL                         R3 0
       78 GETUPVAL                         R5 6
       79 GETTABLEKS                       R6 R5 K9 ["noglobstar"]
       81 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
       83 GETUPVAL                         R4 2
       84 JUMP                             ; [+17]
       85 LOADK                            R6 K10 ["(%s(?:(?!%s%s).)*?)"]
       86 GETUPVAL                         R8 7
       87 GETUPVAL                         R9 8
       88 GETUPVAL                         R11 9
       89 GETTABLEKS                       R11 R11 K11 ["toJSBoolean"]
       91 GETTABLEKS                       R12 R5 K12 ["dot"]
       93 CALL                             R11 1 1
       94 JUMPIFNOT                        R11 ; [+2]
       95 GETUPVAL                         R10 10
       96 JUMP                             ; [+1]
       97 GETUPVAL                         R10 3
       98 NAMECALL                         R6 R6 K2 ["format"]
      100 CALL                             R6 4 1
      101 MOVE                             R4 R6
      102 GETUPVAL                         R5 4
      103 GETUPVAL                         R6 5
      104 GETUPVAL                         R7 1
      105 GETUPVAL                         R8 2
      106 NAMECALL                         R1 R1 K2 ["format"]
      108 CALL                             R1 7 -1
      109 RETURN                           R1 -1
      110 JUMPIFNOTEQKS                    R0 K15 ["**/*.*"] ; [+37]
      112 LOADK                            R1 K16 ["(?:%s%s%s)?%s%s%s%s%s"]
      113 GETUPVAL                         R3 0
      114 GETUPVAL                         R5 6
      115 GETTABLEKS                       R6 R5 K9 ["noglobstar"]
      117 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
      119 GETUPVAL                         R4 2
      120 JUMP                             ; [+17]
      121 LOADK                            R6 K10 ["(%s(?:(?!%s%s).)*?)"]
      122 GETUPVAL                         R8 7
      123 GETUPVAL                         R9 8
      124 GETUPVAL                         R11 9
      125 GETTABLEKS                       R11 R11 K11 ["toJSBoolean"]
      127 GETTABLEKS                       R12 R5 K12 ["dot"]
      129 CALL                             R11 1 1
      130 JUMPIFNOT                        R11 ; [+2]
      131 GETUPVAL                         R10 10
      132 JUMP                             ; [+1]
      133 GETUPVAL                         R10 3
      134 NAMECALL                         R6 R6 K2 ["format"]
      136 CALL                             R6 4 1
      137 MOVE                             R4 R6
      138 GETUPVAL                         R5 4
      139 GETUPVAL                         R6 5
      140 GETUPVAL                         R7 2
      141 GETUPVAL                         R8 3
      142 GETUPVAL                         R9 1
      143 GETUPVAL                         R10 2
      144 NAMECALL                         R1 R1 K2 ["format"]
      146 CALL                             R1 9 -1
      147 RETURN                           R1 -1
      148 JUMPIFNOTEQKS                    R0 K17 ["**/.*"] ; [+35]
      150 LOADK                            R1 K14 ["(?:%s%s%s)?%s%s%s"]
      151 GETUPVAL                         R3 0
      152 GETUPVAL                         R5 6
      153 GETTABLEKS                       R6 R5 K9 ["noglobstar"]
      155 JUMPIFNOTEQKB                    R6 TRUE ; [+3]
      157 GETUPVAL                         R4 2
      158 JUMP                             ; [+17]
      159 LOADK                            R6 K10 ["(%s(?:(?!%s%s).)*?)"]
      160 GETUPVAL                         R8 7
      161 GETUPVAL                         R9 8
      162 GETUPVAL                         R11 9
      163 GETTABLEKS                       R11 R11 K11 ["toJSBoolean"]
      165 GETTABLEKS                       R12 R5 K12 ["dot"]
      167 CALL                             R11 1 1
      168 JUMPIFNOT                        R11 ; [+2]
      169 GETUPVAL                         R10 10
      170 JUMP                             ; [+1]
      171 GETUPVAL                         R10 3
      172 NAMECALL                         R6 R6 K2 ["format"]
      174 CALL                             R6 4 1
      175 MOVE                             R4 R6
      176 GETUPVAL                         R5 4
      177 GETUPVAL                         R6 3
      178 GETUPVAL                         R7 1
      179 GETUPVAL                         R8 2
      180 NAMECALL                         R1 R1 K2 ["format"]
      182 CALL                             R1 7 -1
      183 RETURN                           R1 -1
      184 GETUPVAL                         R1 11
      185 LOADK                            R2 K18 ["^(.*?)\\.(\\w+)$"]
      186 CALL                             R1 1 1
      187 MOVE                             R3 R0
      188 NAMECALL                         R1 R1 K19 ["exec"]
      190 CALL                             R1 2 1
      191 GETUPVAL                         R2 9
      192 GETTABLEKS                       R2 R2 K11 ["toJSBoolean"]
      194 MOVE                             R3 R1
      195 CALL                             R2 1 1
      196 JUMPIF                           R2 ; [+2]
      197 LOADNIL                          R2
      198 RETURN                           R2 1
      199 GETUPVAL                         R2 12
      200 GETTABLEN                        R3 R1 2
      201 CALL                             R2 1 1
      202 GETUPVAL                         R3 9
      203 GETTABLEKS                       R3 R3 K11 ["toJSBoolean"]
      205 MOVE                             R4 R2
      206 CALL                             R3 1 1
      207 JUMPIF                           R3 ; [+2]
      208 LOADNIL                          R3
      209 RETURN                           R3 1
      210 MOVE                             R4 R2
      211 GETUPVAL                         R5 3
      212 GETTABLEN                        R6 R1 3
      213 CONCAT                           R3 R4 R6
      214 RETURN                           R3 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["assign"]
        3 NEWTABLE                         R3 0 0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R5 R2 K1 ["maxLength"]
        9 FASTCALL1                        TYPEOF R5 ; [+2]
       10 GETIMPORT                        R4 K3 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K4 ["number"] ; [+10]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R5 R2 K1 ["maxLength"]
       18 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       20 GETIMPORT                        R3 K7 [math.min]
       22 CALL                             R3 2 1
       23 JUMP                             ; [+1]
       24 GETUPVAL                         R3 1
       25 LENGTH                           R4 R0
       26 JUMPIFNOTLT                      R3 R4 ; [+22]
       28 GETIMPORT                        R5 K9 [error]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K10 ["new"]
       33 LOADK                            R7 K11 ["SyntaxError: Input length: %s, exceeds maximum allowed length: %s"]
       34 FASTCALL1                        TOSTRING R4 ; [+3]
       35 MOVE                             R10 R4
       36 GETIMPORT                        R9 K13 [tostring]
       38 CALL                             R9 1 1
       39 FASTCALL1                        TOSTRING R3 ; [+3]
       40 MOVE                             R11 R3
       41 GETIMPORT                        R10 K13 [tostring]
       43 CALL                             R10 1 1
       44 NAMECALL                         R7 R7 K14 ["format"]
       46 CALL                             R7 3 -1
       47 CALL                             R6 -1 -1
       48 CALL                             R5 -1 0
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R6 R6 K15 ["toJSBoolean"]
       52 GETUPVAL                         R8 4
       53 GETTABLE                         R7 R8 R0
       54 CALL                             R6 1 1
       55 JUMPIFNOT                        R6 ; [+3]
       56 GETUPVAL                         R6 4
       57 GETTABLE                         R5 R6 R0
       58 JUMPIF                           R5 ; [+1]
       59 MOVE                             R5 R0
       60 MOVE                             R0 R5
       61 GETUPVAL                         R5 5
       62 GETTABLEKS                       R5 R5 K16 ["isWindows"]
       64 MOVE                             R6 R1
       65 CALL                             R5 1 1
       66 GETUPVAL                         R6 6
       67 GETTABLEKS                       R6 R6 K17 ["globChars"]
       69 MOVE                             R7 R5
       70 CALL                             R6 1 1
       71 GETTABLEKS                       R7 R6 K18 ["DOT_LITERAL"]
       73 GETTABLEKS                       R8 R6 K19 ["SLASH_LITERAL"]
       75 GETTABLEKS                       R9 R6 K20 ["ONE_CHAR"]
       77 GETTABLEKS                       R10 R6 K21 ["DOTS_SLASH"]
       79 GETTABLEKS                       R11 R6 K22 ["NO_DOT"]
       81 GETTABLEKS                       R12 R6 K23 ["NO_DOTS"]
       83 GETTABLEKS                       R13 R6 K24 ["NO_DOTS_SLASH"]
       85 GETTABLEKS                       R14 R6 K25 ["STAR"]
       87 GETTABLEKS                       R15 R6 K26 ["START_ANCHOR"]
       89 GETUPVAL                         R17 3
       90 GETTABLEKS                       R17 R17 K15 ["toJSBoolean"]
       92 GETTABLEKS                       R18 R2 K27 ["dot"]
       94 CALL                             R17 1 1
       95 JUMPIFNOT                        R17 ; [+2]
       96 MOVE                             R16 R12
       97 JUMP                             ; [+1]
       98 MOVE                             R16 R11
       99 GETUPVAL                         R18 3
      100 GETTABLEKS                       R18 R18 K15 ["toJSBoolean"]
      102 GETTABLEKS                       R19 R2 K27 ["dot"]
      104 CALL                             R18 1 1
      105 JUMPIFNOT                        R18 ; [+2]
      106 MOVE                             R17 R13
      107 JUMP                             ; [+1]
      108 MOVE                             R17 R11
      109 GETUPVAL                         R19 3
      110 GETTABLEKS                       R19 R19 K15 ["toJSBoolean"]
      112 GETTABLEKS                       R20 R2 K28 ["capture"]
      114 CALL                             R19 1 1
      115 JUMPIFNOT                        R19 ; [+2]
      116 LOADK                            R18 K29 [""]
      117 JUMP                             ; [+1]
      118 LOADK                            R18 K30 ["?:"]
      119 DUPTABLE                         R19 K34 [{["negated"] = False, ["prefix"] = ""}]
      120 GETTABLEKS                       R21 R2 K35 ["bash"]
      122 JUMPIFNOTEQKB                    R21 TRUE ; [+3]
      124 LOADK                            R20 K36 [".*?"]
      125 JUMP                             ; [+1]
      126 MOVE                             R20 R14
      127 GETUPVAL                         R21 3
      128 GETTABLEKS                       R21 R21 K15 ["toJSBoolean"]
      130 GETTABLEKS                       R22 R2 K28 ["capture"]
      132 CALL                             R21 1 1
      133 JUMPIFNOT                        R21 ; [+6]
      134 LOADK                            R21 K37 ["(%s)"]
      135 MOVE                             R23 R20
      136 NAMECALL                         R21 R21 K14 ["format"]
      138 CALL                             R21 2 1
      139 MOVE                             R20 R21
      140 NEWCLOSURE                       R21 P0
      141 CAPTURE                          REF R20
      142 CAPTURE                          VAL R18
      143 CAPTURE                          VAL R15
      144 CAPTURE                          UPVAL U3
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R7
      147 NEWCLOSURE                       R22 P1
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R9
      150 CAPTURE                          REF R20
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R15
      157 CAPTURE                          UPVAL U3
      158 CAPTURE                          VAL R10
      159 CAPTURE                          UPVAL U7
      160 CAPTURE                          VAL R22
      161 GETUPVAL                         R23 5
      162 GETTABLEKS                       R23 R23 K38 ["removePrefix"]
      164 MOVE                             R24 R0
      165 MOVE                             R25 R19
      166 CALL                             R23 2 1
      167 MOVE                             R24 R22
      168 MOVE                             R25 R23
      169 CALL                             R24 1 1
      170 JUMPIFEQKNIL                     R24 ; [+18]
      172 GETUPVAL                         R25 3
      173 GETTABLEKS                       R25 R25 K15 ["toJSBoolean"]
      175 MOVE                             R26 R24
      176 CALL                             R25 1 1
      177 JUMPIFNOT                        R25 ; [+11]
      178 GETTABLEKS                       R25 R2 K39 ["strictSlashes"]
      180 JUMPIFEQKB                       R25 TRUE ; [+8]
      182 MOVE                             R25 R24
      183 LOADK                            R26 K40 ["%s?"]
      184 MOVE                             R28 R8
      185 NAMECALL                         R26 R26 K14 ["format"]
      187 CALL                             R26 2 1
      188 CONCAT                           R24 R25 R26
      189 CLOSEUPVALS                      R20
      190 RETURN                           R24 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       16 GETTABLEKS                       R5 R2 K8 ["Error"]
       18 GETTABLEKS                       R6 R2 K9 ["Object"]
       20 GETTABLEKS                       R7 R2 K10 ["String"]
       22 GETIMPORT                        R8 K4 [require]
       24 GETTABLEKS                       R9 R0 K11 ["stringUtils"]
       26 CALL                             R8 1 1
       27 GETTABLEKS                       R8 R8 K12 ["stringReplace"]
       29 GETIMPORT                        R9 K4 [require]
       31 GETTABLEKS                       R10 R1 K13 ["RegExp"]
       33 CALL                             R9 1 1
       34 GETIMPORT                        R10 K4 [require]
       36 GETTABLEKS                       R11 R0 K14 ["constants"]
       38 CALL                             R10 1 1
       39 GETIMPORT                        R11 K4 [require]
       41 GETTABLEKS                       R12 R0 K15 ["utils"]
       43 CALL                             R11 1 1
       44 GETTABLEKS                       R12 R10 K16 ["MAX_LENGTH"]
       46 GETTABLEKS                       R13 R10 K17 ["POSIX_REGEX_SOURCE"]
       48 GETTABLEKS                       R14 R10 K18 ["REGEX_NON_SPECIAL_CHARS"]
       50 GETTABLEKS                       R15 R10 K19 ["REGEX_SPECIAL_CHARS_BACKREF"]
       52 GETTABLEKS                       R16 R10 K20 ["REPLACEMENTS"]
       54 DUPCLOSURE                       R17 K21 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R11
       58 DUPCLOSURE                       R18 K22 [PROTO_3]
       59 LOADNIL                          R19
       60 NEWTABLE                         R21 1 0
       62 DUPTABLE                         R22 K24 [{"__call"}]
       63 NEWCLOSURE                       R23 P2
       64 CAPTURE                          REF R19
       65 SETTABLEKS                       R23 R22 K23 ["__call"]
       67 FASTCALL2                        SETMETATABLE R21 R22 ; [+3]
       69 GETIMPORT                        R20 K26 [setmetatable]
       71 CALL                             R20 2 1
       72 DUPCLOSURE                       R19 K27 [PROTO_20]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R16
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R20
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R17
       88 CAPTURE                          VAL R14
       89 DUPCLOSURE                       R21 K28 [PROTO_23]
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R16
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 SETTABLEKS                       R21 R20 K29 ["fastpaths"]
      100 CLOSEUPVALS                      R19
      101 RETURN                           R20 1
