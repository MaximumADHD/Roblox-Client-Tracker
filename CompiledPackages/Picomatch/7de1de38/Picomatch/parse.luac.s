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
      303 JUMPIFEQKB                       R45 FALSE ; [+58]
      305 GETUPVAL                         R45 8
      306 LOADK                            R46 K70 ["(^[*!]|[/()[\\]{}\"])"]
      307 CALL                             R45 1 1
      308 MOVE                             R47 R0
      309 NAMECALL                         R45 R45 K71 ["test"]
      311 CALL                             R45 2 1
      312 JUMPIF                           R45 ; [+49]
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
      361 CLOSEUPVALS                      R45
      362 GETTABLEKS                       R46 R27 K50 ["index"]
      364 JUMPIFEQ                         R46 R4 ; [+2]
      366 LOADB                            R45 0 +1
      367 LOADB                            R45 1
      368 JUMPIF                           R45 ; [+2163]
      369 MOVE                             R45 R35
      370 CALL                             R45 0 1
      371 MOVE                             R32 R45
      372 JUMPIFEQKS                       R32 K76 ["\0"] ; [+2158]
      374 JUMPIFNOTEQKS                    R32 K77 ["\\"] ; [+86]
      376 MOVE                             R45 R34
      377 CALL                             R45 0 1
      378 JUMPIFNOTEQKS                    R45 K78 ["/"] ; [+5]
      380 GETTABLEKS                       R46 R2 K43 ["bash"]
      382 JUMPIFNOTEQKB                    R46 TRUE ; [+2148]
      384 JUMPIFEQKS                       R45 K79 ["."] ; [+2146]
      386 JUMPIFEQKS                       R45 K80 [";"] ; [+2144]
      388 GETUPVAL                         R46 4
      389 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
      391 MOVE                             R47 R45
      392 CALL                             R46 1 1
      393 JUMPIF                           R46 ; [+9]
      394 MOVE                             R46 R32
      395 LOADK                            R47 K77 ["\\"]
      396 CONCAT                           R32 R46 R47
      397 MOVE                             R46 R42
      398 DUPTABLE                         R47 K82 [{["type"] = "text", ["value"]}]
      399 SETTABLEKS                       R32 R47 K19 ["value"]
      401 CALL                             R46 1 0
      402 JUMP                             ; [+2128]
      403 GETUPVAL                         R46 8
      404 LOADK                            R47 K83 ["^\\\\+"]
      405 CALL                             R46 1 1
      406 GETTABLEKS                       R51 R27 K50 ["index"]
      408 ADDK                             R50 R51 K53 [1]
      409 FASTCALL2                        STRING_SUB R0 R50 ; [+4]
      411 MOVE                             R49 R0
      412 GETIMPORT                        R48 K85 [string.sub]
      414 CALL                             R48 2 1
      415 NAMECALL                         R46 R46 K86 ["exec"]
      417 CALL                             R46 2 1
      418 LOADN                            R47 0
      419 JUMPIFEQKNIL                     R46 ; [+19]
      421 GETTABLEN                        R49 R46 1
      422 LENGTH                           R48 R49
      423 LOADN                            R49 2
      424 JUMPIFNOTLT                      R49 R48 ; [+14]
      426 GETTABLEN                        R48 R46 1
      427 LENGTH                           R47 R48
      428 GETTABLEKS                       R48 R27 K50 ["index"]
      430 ADD                              R48 R48 R47
      431 SETTABLEKS                       R48 R27 K50 ["index"]
      433 MODK                             R48 R47 K87 [2]
      434 JUMPIFEQKN                       R48 K51 [0] ; [+4]
      436 MOVE                             R48 R32
      437 LOADK                            R49 K77 ["\\"]
      438 CONCAT                           R32 R48 R49
      439 GETTABLEKS                       R48 R2 K72 ["unescape"]
      441 JUMPIFNOTEQKB                    R48 TRUE ; [+5]
      443 MOVE                             R48 R35
      444 CALL                             R48 0 1
      445 MOVE                             R32 R48
      446 JUMP                             ; [+4]
      447 MOVE                             R48 R32
      448 MOVE                             R49 R35
      449 CALL                             R49 0 1
      450 CONCAT                           R32 R48 R49
      451 GETTABLEKS                       R48 R27 K59 ["brackets"]
      453 JUMPIFNOTEQKN                    R48 K51 [0] ; [+7]
      455 MOVE                             R48 R42
      456 DUPTABLE                         R49 K82 [{["type"] = "text", ["value"]}]
      457 SETTABLEKS                       R32 R49 K19 ["value"]
      459 CALL                             R48 1 0
      460 JUMP                             ; [+2070]
      461 GETTABLEKS                       R45 R27 K59 ["brackets"]
      463 LOADN                            R46 0
      464 JUMPIFNOTLT                      R46 R45 ; [+175]
      466 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+9]
      468 GETTABLEKS                       R45 R31 K19 ["value"]
      470 JUMPIFEQKS                       R45 K89 ["["] ; [+5]
      472 GETTABLEKS                       R45 R31 K19 ["value"]
      474 JUMPIFNOTEQKS                    R45 K90 ["[^"] ; [+165]
      476 GETTABLEKS                       R45 R2 K91 ["posix"]
      478 JUMPIFEQKB                       R45 FALSE ; [+78]
      480 JUMPIFNOTEQKS                    R32 K92 [":"] ; [+76]
      482 GETUPVAL                         R45 7
      483 GETTABLEKS                       R45 R45 K93 ["slice"]
      485 GETTABLEKS                       R46 R31 K19 ["value"]
      487 LOADN                            R47 1
      488 CALL                             R45 2 1
      489 LOADK                            R48 K89 ["["]
      490 NAMECALL                         R46 R45 K94 ["find"]
      492 CALL                             R46 2 1
      493 JUMPIFEQKNIL                     R46 ; [+63]
      495 LOADB                            R46 1
      496 SETTABLEKS                       R46 R31 K91 ["posix"]
      498 LOADK                            R48 K92 [":"]
      499 NAMECALL                         R46 R45 K94 ["find"]
      501 CALL                             R46 2 1
      502 JUMPIFEQKNIL                     R46 ; [+54]
      504 GETUPVAL                         R46 7
      505 GETTABLEKS                       R46 R46 K95 ["lastIndexOf"]
      507 GETTABLEKS                       R47 R31 K19 ["value"]
      509 LOADK                            R48 K89 ["["]
      510 CALL                             R46 2 1
      511 GETUPVAL                         R47 7
      512 GETTABLEKS                       R47 R47 K93 ["slice"]
      514 GETTABLEKS                       R48 R31 K19 ["value"]
      516 LOADN                            R49 1
      517 MOVE                             R50 R46
      518 CALL                             R47 3 1
      519 GETUPVAL                         R48 7
      520 GETTABLEKS                       R48 R48 K93 ["slice"]
      522 GETTABLEKS                       R49 R31 K19 ["value"]
      524 ADDK                             R50 R46 K87 [2]
      525 CALL                             R48 2 1
      526 GETUPVAL                         R50 12
      527 GETTABLE                         R49 R50 R48
      528 JUMPIFNOT                        R49 ; [+28]
      529 MOVE                             R51 R47
      530 MOVE                             R52 R49
      531 CONCAT                           R50 R51 R52
      532 SETTABLEKS                       R50 R31 K19 ["value"]
      534 LOADB                            R50 1
      535 SETTABLEKS                       R50 R27 K56 ["backtrack"]
      537 MOVE                             R50 R35
      538 CALL                             R50 0 0
      539 GETUPVAL                         R50 4
      540 GETTABLEKS                       R50 R50 K24 ["toJSBoolean"]
      542 GETTABLEKS                       R51 R5 K21 ["output"]
      544 CALL                             R50 1 1
      545 JUMPIF                           R50 ; [+1985]
      546 GETUPVAL                         R50 13
      547 GETTABLEKS                       R50 R50 K96 ["indexOf"]
      549 MOVE                             R51 R6
      550 MOVE                             R52 R31
      551 CALL                             R50 2 1
      552 JUMPIFNOTEQKN                    R50 K87 [2] ; [+1978]
      554 SETTABLEKS                       R14 R5 K21 ["output"]
      556 JUMP                             ; [+1974]
      557 JUMPIFNOTEQKS                    R32 K89 ["["] ; [+5]
      559 MOVE                             R45 R34
      560 CALL                             R45 0 1
      561 JUMPIFNOTEQKS                    R45 K92 [":"] ; [+7]
      563 JUMPIFNOTEQKS                    R32 K97 ["-"] ; [+11]
      565 MOVE                             R45 R34
      566 CALL                             R45 0 1
      567 JUMPIFNOTEQKS                    R45 K88 ["]"] ; [+7]
      569 LOADK                            R45 K98 ["\\%s"]
      570 MOVE                             R47 R32
      571 NAMECALL                         R45 R45 K16 ["format"]
      573 CALL                             R45 2 1
      574 MOVE                             R32 R45
      575 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+15]
      577 GETTABLEKS                       R45 R31 K19 ["value"]
      579 JUMPIFEQKS                       R45 K89 ["["] ; [+5]
      581 GETTABLEKS                       R45 R31 K19 ["value"]
      583 JUMPIFNOTEQKS                    R45 K90 ["[^"] ; [+7]
      585 LOADK                            R45 K98 ["\\%s"]
      586 MOVE                             R47 R32
      587 NAMECALL                         R45 R45 K16 ["format"]
      589 CALL                             R45 2 1
      590 MOVE                             R32 R45
      591 GETTABLEKS                       R45 R2 K91 ["posix"]
      593 JUMPIFNOTEQKB                    R45 TRUE ; [+8]
      595 JUMPIFNOTEQKS                    R32 K99 ["!"] ; [+6]
      597 GETTABLEKS                       R45 R31 K19 ["value"]
      599 JUMPIFNOTEQKS                    R45 K89 ["["] ; [+2]
      601 LOADK                            R32 K100 ["^"]
      602 GETTABLEKS                       R46 R31 K19 ["value"]
      604 MOVE                             R47 R32
      605 CONCAT                           R45 R46 R47
      606 SETTABLEKS                       R45 R31 K19 ["value"]
      608 DUPTABLE                         R45 K101 [{"value"}]
      609 SETTABLEKS                       R32 R45 K19 ["value"]
      611 GETTABLEKS                       R47 R27 K21 ["output"]
      613 GETTABLEKS                       R49 R45 K21 ["output"]
      615 JUMPIFEQKNIL                     R49 ; [+4]
      617 GETTABLEKS                       R48 R45 K21 ["output"]
      619 JUMP                             ; [+2]
      620 GETTABLEKS                       R48 R45 K19 ["value"]
      622 CONCAT                           R46 R47 R48
      623 SETTABLEKS                       R46 R27 K21 ["output"]
      625 GETTABLEKS                       R46 R45 K19 ["value"]
      627 ORK                              R47 R46 K20 [""]
      628 GETTABLEKS                       R49 R27 K54 ["consumed"]
      630 MOVE                             R50 R47
      631 CONCAT                           R48 R49 R50
      632 SETTABLEKS                       R48 R27 K54 ["consumed"]
      634 GETTABLEKS                       R48 R27 K50 ["index"]
      636 ADDK                             R48 R48 K51 [0]
      637 SETTABLEKS                       R48 R27 K50 ["index"]
      639 JUMP                             ; [+1891]
      640 GETTABLEKS                       R45 R27 K62 ["quotes"]
      642 JUMPIFNOTEQKN                    R45 K53 [1] ; [+47]
      644 JUMPIFEQKS                       R32 K102 ["\""] ; [+45]
      646 GETUPVAL                         R45 5
      647 GETTABLEKS                       R45 R45 K103 ["escapeRegex"]
      649 MOVE                             R46 R32
      650 CALL                             R45 1 1
      651 MOVE                             R32 R45
      652 GETTABLEKS                       R46 R31 K19 ["value"]
      654 MOVE                             R47 R32
      655 CONCAT                           R45 R46 R47
      656 SETTABLEKS                       R45 R31 K19 ["value"]
      658 DUPTABLE                         R45 K101 [{"value"}]
      659 SETTABLEKS                       R32 R45 K19 ["value"]
      661 GETTABLEKS                       R47 R27 K21 ["output"]
      663 GETTABLEKS                       R49 R45 K21 ["output"]
      665 JUMPIFEQKNIL                     R49 ; [+4]
      667 GETTABLEKS                       R48 R45 K21 ["output"]
      669 JUMP                             ; [+2]
      670 GETTABLEKS                       R48 R45 K19 ["value"]
      672 CONCAT                           R46 R47 R48
      673 SETTABLEKS                       R46 R27 K21 ["output"]
      675 GETTABLEKS                       R46 R45 K19 ["value"]
      677 ORK                              R47 R46 K20 [""]
      678 GETTABLEKS                       R49 R27 K54 ["consumed"]
      680 MOVE                             R50 R47
      681 CONCAT                           R48 R49 R50
      682 SETTABLEKS                       R48 R27 K54 ["consumed"]
      684 GETTABLEKS                       R48 R27 K50 ["index"]
      686 ADDK                             R48 R48 K51 [0]
      687 SETTABLEKS                       R48 R27 K50 ["index"]
      689 JUMP                             ; [+1841]
      690 JUMPIFNOTEQKS                    R32 K102 ["\""] ; [+20]
      692 GETTABLEKS                       R46 R27 K62 ["quotes"]
      694 JUMPIFNOTEQKN                    R46 K53 [1] ; [+3]
      696 LOADN                            R45 0
      697 JUMP                             ; [+1]
      698 LOADN                            R45 1
      699 SETTABLEKS                       R45 R27 K62 ["quotes"]
      701 GETTABLEKS                       R45 R2 K104 ["keepQuotes"]
      703 JUMPIFNOTEQKB                    R45 TRUE ; [+1827]
      705 MOVE                             R45 R42
      706 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
      707 SETTABLEKS                       R32 R46 K19 ["value"]
      709 CALL                             R45 1 0
      710 JUMP                             ; [+1820]
      711 JUMPIFNOTEQKS                    R32 K105 ["("] ; [+19]
      713 GETTABLEKS                       R45 R27 K61 ["parens"]
      715 ADDK                             R45 R45 K53 [1]
      716 SETTABLEKS                       R45 R27 K61 ["parens"]
      718 FASTCALL2K                       TABLE_INSERT R30 K61 ; [+5]
      720 MOVE                             R46 R30
      721 LOADK                            R47 K61 ["parens"]
      722 GETIMPORT                        R45 K108 [table.insert]
      724 CALL                             R45 2 0
      725 MOVE                             R45 R42
      726 DUPTABLE                         R46 K110 [{["type"] = "paren", ["value"]}]
      727 SETTABLEKS                       R32 R46 K19 ["value"]
      729 CALL                             R45 1 0
      730 JUMP                             ; [+1800]
      731 JUMPIFNOTEQKS                    R32 K111 [")"] ; [+70]
      733 GETTABLEKS                       R45 R27 K61 ["parens"]
      735 JUMPIFNOTEQKN                    R45 K51 [0] ; [+21]
      737 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      739 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      741 GETIMPORT                        R45 K4 [error]
      743 GETUPVAL                         R46 0
      744 GETTABLEKS                       R46 R46 K5 ["new"]
      746 LOADK                            R48 K113 ["SyntaxError: "]
      747 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      748 LOADK                            R51 K115 ["opening"]
      749 LOADK                            R52 K105 ["("]
      750 LOADK                            R53 K105 ["("]
      751 NAMECALL                         R49 R49 K16 ["format"]
      753 CALL                             R49 4 1
      754 CONCAT                           R47 R48 R49
      755 CALL                             R46 1 -1
      756 CALL                             R45 -1 0
      757 LENGTH                           R46 R28
      758 GETTABLE                         R45 R28 R46
      759 JUMPIFEQKNIL                     R45 ; [+15]
      761 GETTABLEKS                       R46 R27 K61 ["parens"]
      763 GETTABLEKS                       R48 R45 K61 ["parens"]
      765 ADDK                             R47 R48 K53 [1]
      766 JUMPIFNOTEQ                      R46 R47 ; [+8]
      768 MOVE                             R46 R44
      769 GETIMPORT                        R47 K117 [table.remove]
      771 MOVE                             R48 R28
      772 CALL                             R47 1 1
      773 CALL                             R46 1 0
      774 JUMP                             ; [+1756]
      775 MOVE                             R46 R42
      776 DUPTABLE                         R47 K118 [{["type"] = "paren", ["value"], ["output"]}]
      777 SETTABLEKS                       R32 R47 K19 ["value"]
      779 GETUPVAL                         R49 4
      780 GETTABLEKS                       R49 R49 K24 ["toJSBoolean"]
      782 GETTABLEKS                       R50 R27 K61 ["parens"]
      784 CALL                             R49 1 1
      785 JUMPIFNOT                        R49 ; [+2]
      786 LOADK                            R48 K111 [")"]
      787 JUMP                             ; [+1]
      788 LOADK                            R48 K119 ["\\)"]
      789 SETTABLEKS                       R48 R47 K21 ["output"]
      791 CALL                             R46 1 0
      792 GETTABLEKS                       R46 R27 K61 ["parens"]
      794 SUBK                             R46 R46 K53 [1]
      795 SETTABLEKS                       R46 R27 K61 ["parens"]
      797 GETIMPORT                        R46 K117 [table.remove]
      799 MOVE                             R47 R30
      800 CALL                             R46 1 0
      801 JUMP                             ; [+1729]
      802 JUMPIFNOTEQKS                    R32 K89 ["["] ; [+70]
      804 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      806 JUMPIFEQKB                       R45 TRUE ; [+17]
      808 GETTABLEKS                       R49 R27 K50 ["index"]
      810 ADDK                             R48 R49 K53 [1]
      811 FASTCALL2                        STRING_SUB R0 R48 ; [+4]
      813 MOVE                             R47 R0
      814 GETIMPORT                        R46 K85 [string.sub]
      816 CALL                             R46 2 1
      817 LOADK                            R48 K88 ["]"]
      818 NAMECALL                         R46 R46 K94 ["find"]
      820 CALL                             R46 2 1
      821 NOT                              R45 R46
      822 JUMPIFEQKNIL                     R45 ; [+32]
      824 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      826 JUMPIFEQKB                       R45 TRUE ; [+21]
      828 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      830 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      832 GETIMPORT                        R45 K4 [error]
      834 GETUPVAL                         R46 0
      835 GETTABLEKS                       R46 R46 K5 ["new"]
      837 LOADK                            R48 K113 ["SyntaxError: "]
      838 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      839 LOADK                            R51 K121 ["closing"]
      840 LOADK                            R52 K88 ["]"]
      841 LOADK                            R53 K88 ["]"]
      842 NAMECALL                         R49 R49 K16 ["format"]
      844 CALL                             R49 4 1
      845 CONCAT                           R47 R48 R49
      846 CALL                             R46 1 -1
      847 CALL                             R45 -1 0
      848 LOADK                            R45 K98 ["\\%s"]
      849 MOVE                             R47 R32
      850 NAMECALL                         R45 R45 K16 ["format"]
      852 CALL                             R45 2 1
      853 MOVE                             R32 R45
      854 JUMP                             ; [+12]
      855 GETTABLEKS                       R45 R27 K59 ["brackets"]
      857 ADDK                             R45 R45 K53 [1]
      858 SETTABLEKS                       R45 R27 K59 ["brackets"]
      860 FASTCALL2K                       TABLE_INSERT R30 K59 ; [+5]
      862 MOVE                             R46 R30
      863 LOADK                            R47 K59 ["brackets"]
      864 GETIMPORT                        R45 K108 [table.insert]
      866 CALL                             R45 2 0
      867 MOVE                             R45 R42
      868 DUPTABLE                         R46 K123 [{["type"] = "bracket", ["value"]}]
      869 SETTABLEKS                       R32 R46 K19 ["value"]
      871 CALL                             R45 1 0
      872 JUMP                             ; [+1658]
      873 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+203]
      875 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      877 JUMPIFEQKB                       R45 TRUE ; [+12]
      879 JUMPIFEQKNIL                     R31 ; [+23]
      881 GETTABLEKS                       R45 R31 K17 ["type"]
      883 JUMPIFNOTEQKS                    R45 K122 ["bracket"] ; [+19]
      885 GETTABLEKS                       R46 R31 K19 ["value"]
      887 LENGTH                           R45 R46
      888 JUMPIFNOTEQKN                    R45 K53 [1] ; [+14]
      890 MOVE                             R45 R42
      891 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
      892 SETTABLEKS                       R32 R46 K19 ["value"]
      894 LOADK                            R47 K98 ["\\%s"]
      895 MOVE                             R49 R32
      896 NAMECALL                         R47 R47 K16 ["format"]
      898 CALL                             R47 2 1
      899 SETTABLEKS                       R47 R46 K21 ["output"]
      901 CALL                             R45 1 0
      902 JUMP                             ; [+1628]
      903 GETTABLEKS                       R45 R27 K59 ["brackets"]
      905 JUMPIFNOTEQKN                    R45 K51 [0] ; [+34]
      907 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      909 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      911 GETIMPORT                        R45 K4 [error]
      913 GETUPVAL                         R46 0
      914 GETTABLEKS                       R46 R46 K5 ["new"]
      916 LOADK                            R48 K113 ["SyntaxError: "]
      917 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      918 LOADK                            R51 K115 ["opening"]
      919 LOADK                            R52 K89 ["["]
      920 LOADK                            R53 K89 ["["]
      921 NAMECALL                         R49 R49 K16 ["format"]
      923 CALL                             R49 4 1
      924 CONCAT                           R47 R48 R49
      925 CALL                             R46 1 -1
      926 CALL                             R45 -1 0
      927 MOVE                             R45 R42
      928 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
      929 SETTABLEKS                       R32 R46 K19 ["value"]
      931 LOADK                            R47 K98 ["\\%s"]
      932 MOVE                             R49 R32
      933 NAMECALL                         R47 R47 K16 ["format"]
      935 CALL                             R47 2 1
      936 SETTABLEKS                       R47 R46 K21 ["output"]
      938 CALL                             R45 1 0
      939 JUMP                             ; [+1591]
      940 GETTABLEKS                       R45 R27 K59 ["brackets"]
      942 SUBK                             R45 R45 K53 [1]
      943 SETTABLEKS                       R45 R27 K59 ["brackets"]
      945 GETIMPORT                        R45 K117 [table.remove]
      947 MOVE                             R46 R30
      948 CALL                             R45 1 0
      949 GETUPVAL                         R45 7
      950 GETTABLEKS                       R45 R45 K93 ["slice"]
      952 GETTABLEKS                       R46 R31 K19 ["value"]
      954 LOADN                            R47 2
      955 CALL                             R45 2 1
      956 GETTABLEKS                       R46 R31 K91 ["posix"]
      958 JUMPIFEQKB                       R46 TRUE ; [+21]
      960 LOADN                            R48 1
      961 LOADN                            R49 1
      962 NAMECALL                         R46 R45 K84 ["sub"]
      964 CALL                             R46 3 1
      965 JUMPIFNOTEQKS                    R46 K100 ["^"] ; [+14]
      967 LOADK                            R49 K78 ["/"]
      968 NAMECALL                         R47 R45 K94 ["find"]
      970 CALL                             R47 2 1
      971 NOT                              R46 R47
      972 JUMPIFEQKNIL                     R46 ; [+7]
      974 LOADK                            R46 K125 ["/%s"]
      975 MOVE                             R48 R32
      976 NAMECALL                         R46 R46 K16 ["format"]
      978 CALL                             R46 2 1
      979 MOVE                             R32 R46
      980 GETTABLEKS                       R47 R31 K19 ["value"]
      982 MOVE                             R48 R32
      983 CONCAT                           R46 R47 R48
      984 SETTABLEKS                       R46 R31 K19 ["value"]
      986 DUPTABLE                         R46 K101 [{"value"}]
      987 SETTABLEKS                       R32 R46 K19 ["value"]
      989 GETTABLEKS                       R48 R27 K21 ["output"]
      991 GETTABLEKS                       R50 R46 K21 ["output"]
      993 JUMPIFEQKNIL                     R50 ; [+4]
      995 GETTABLEKS                       R49 R46 K21 ["output"]
      997 JUMP                             ; [+2]
      998 GETTABLEKS                       R49 R46 K19 ["value"]
     1000 CONCAT                           R47 R48 R49
     1001 SETTABLEKS                       R47 R27 K21 ["output"]
     1003 GETTABLEKS                       R47 R46 K19 ["value"]
     1005 ORK                              R48 R47 K20 [""]
     1006 GETTABLEKS                       R50 R27 K54 ["consumed"]
     1008 MOVE                             R51 R48
     1009 CONCAT                           R49 R50 R51
     1010 SETTABLEKS                       R49 R27 K54 ["consumed"]
     1012 GETTABLEKS                       R49 R27 K50 ["index"]
     1014 ADDK                             R49 R49 K51 [0]
     1015 SETTABLEKS                       R49 R27 K50 ["index"]
     1017 GETTABLEKS                       R46 R2 K126 ["literalBrackets"]
     1019 JUMPIFEQKB                       R46 FALSE ; [+1511]
     1021 GETUPVAL                         R46 5
     1022 GETTABLEKS                       R46 R46 K127 ["hasRegexChars"]
     1024 MOVE                             R47 R45
     1025 CALL                             R46 1 1
     1026 JUMPIF                           R46 ; [+1504]
     1027 GETUPVAL                         R46 5
     1028 GETTABLEKS                       R46 R46 K103 ["escapeRegex"]
     1030 GETTABLEKS                       R47 R31 K19 ["value"]
     1032 CALL                             R46 1 1
     1033 GETUPVAL                         R47 7
     1034 GETTABLEKS                       R47 R47 K93 ["slice"]
     1036 GETTABLEKS                       R48 R27 K21 ["output"]
     1038 LOADN                            R49 1
     1039 GETTABLEKS                       R52 R31 K19 ["value"]
     1041 LENGTH                           R51 R52
     1042 MINUS                            R50 R51
     1043 CALL                             R47 3 1
     1044 SETTABLEKS                       R47 R27 K21 ["output"]
     1046 GETTABLEKS                       R47 R2 K126 ["literalBrackets"]
     1048 JUMPIFNOTEQKB                    R47 TRUE ; [+10]
     1050 GETTABLEKS                       R48 R27 K21 ["output"]
     1052 MOVE                             R49 R46
     1053 CONCAT                           R47 R48 R49
     1054 SETTABLEKS                       R47 R27 K21 ["output"]
     1056 SETTABLEKS                       R46 R31 K19 ["value"]
     1058 JUMP                             ; [+1472]
     1059 LOADK                            R47 K128 ["(%s%s|%s)"]
     1060 MOVE                             R49 R7
     1061 MOVE                             R50 R46
     1062 GETTABLEKS                       R51 R31 K19 ["value"]
     1064 NAMECALL                         R47 R47 K16 ["format"]
     1066 CALL                             R47 4 1
     1067 SETTABLEKS                       R47 R31 K19 ["value"]
     1069 GETTABLEKS                       R48 R27 K21 ["output"]
     1071 GETTABLEKS                       R49 R31 K19 ["value"]
     1073 CONCAT                           R47 R48 R49
     1074 SETTABLEKS                       R47 R27 K21 ["output"]
     1076 JUMP                             ; [+1454]
     1077 JUMPIFNOTEQKS                    R32 K129 ["{"] ; [+41]
     1079 GETTABLEKS                       R45 R2 K130 ["nobrace"]
     1081 JUMPIFEQKB                       R45 TRUE ; [+37]
     1083 GETTABLEKS                       R45 R27 K60 ["braces"]
     1085 ADDK                             R45 R45 K53 [1]
     1086 SETTABLEKS                       R45 R27 K60 ["braces"]
     1088 FASTCALL2K                       TABLE_INSERT R30 K60 ; [+5]
     1090 MOVE                             R46 R30
     1091 LOADK                            R47 K60 ["braces"]
     1092 GETIMPORT                        R45 K108 [table.insert]
     1094 CALL                             R45 2 0
     1095 DUPTABLE                         R45 K134 [{["type"] = "brace", ["value"], ["output"] = "(", ["outputIndex"], ["tokensIndex"]}]
     1096 SETTABLEKS                       R32 R45 K19 ["value"]
     1098 GETTABLEKS                       R47 R27 K21 ["output"]
     1100 LENGTH                           R46 R47
     1101 SETTABLEKS                       R46 R45 K132 ["outputIndex"]
     1103 GETTABLEKS                       R47 R27 K64 ["tokens"]
     1105 LENGTH                           R46 R47
     1106 SETTABLEKS                       R46 R45 K133 ["tokensIndex"]
     1108 FASTCALL2                        TABLE_INSERT R29 R45 ; [+5]
     1110 MOVE                             R47 R29
     1111 MOVE                             R48 R45
     1112 GETIMPORT                        R46 K108 [table.insert]
     1114 CALL                             R46 2 0
     1115 MOVE                             R46 R42
     1116 MOVE                             R47 R45
     1117 CALL                             R46 1 0
     1118 JUMP                             ; [+1412]
     1119 JUMPIFNOTEQKS                    R32 K135 ["}"] ; [+151]
     1121 LENGTH                           R46 R29
     1122 GETTABLE                         R45 R29 R46
     1123 GETTABLEKS                       R46 R2 K130 ["nobrace"]
     1125 JUMPIFEQKB                       R46 TRUE ; [+7]
     1127 GETUPVAL                         R46 4
     1128 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1130 MOVE                             R47 R45
     1131 CALL                             R46 1 1
     1132 JUMPIF                           R46 ; [+8]
     1133 MOVE                             R46 R42
     1134 DUPTABLE                         R47 K124 [{["type"] = "text", ["value"], ["output"]}]
     1135 SETTABLEKS                       R32 R47 K19 ["value"]
     1137 SETTABLEKS                       R32 R47 K21 ["output"]
     1139 CALL                             R46 1 0
     1140 JUMP                             ; [+1390]
     1141 LOADK                            R46 K111 [")"]
     1142 GETTABLEKS                       R47 R45 K136 ["dots"]
     1144 JUMPIFNOTEQKB                    R47 TRUE ; [+45]
     1146 GETUPVAL                         R47 13
     1147 GETTABLEKS                       R47 R47 K93 ["slice"]
     1149 MOVE                             R48 R6
     1150 CALL                             R47 1 1
     1151 NEWTABLE                         R48 0 0
     1153 LENGTH                           R51 R47
     1154 LOADN                            R49 1
     1155 LOADN                            R50 -1
     1156 FORNPREP                         R49
     1157 GETIMPORT                        R52 K117 [table.remove]
     1159 MOVE                             R53 R6
     1160 CALL                             R52 1 0
     1161 GETTABLE                         R52 R47 R51
     1162 GETTABLEKS                       R52 R52 K17 ["type"]
     1164 JUMPIFEQKS                       R52 K131 ["brace"] ; [+17]
     1166 GETTABLE                         R52 R47 R51
     1167 GETTABLEKS                       R52 R52 K17 ["type"]
     1169 JUMPIFEQKS                       R52 K136 ["dots"] ; [+11]
     1171 LOADN                            R54 1
     1172 GETTABLE                         R55 R47 R51
     1173 GETTABLEKS                       R55 R55 K19 ["value"]
     1175 FASTCALL3                        TABLE_INSERT R48 R54 R55
     1177 MOVE                             R53 R48
     1178 GETIMPORT                        R52 K108 [table.insert]
     1180 CALL                             R52 3 0
     1181 FORNLOOP                         R49
     1182 GETUPVAL                         R49 14
     1183 MOVE                             R50 R48
     1184 MOVE                             R51 R2
     1185 CALL                             R49 2 1
     1186 MOVE                             R46 R49
     1187 LOADB                            R49 1
     1188 SETTABLEKS                       R49 R27 K56 ["backtrack"]
     1190 GETTABLEKS                       R47 R45 K137 ["comma"]
     1192 JUMPIFEQKB                       R47 TRUE ; [+57]
     1194 GETTABLEKS                       R47 R45 K136 ["dots"]
     1196 JUMPIFEQKB                       R47 TRUE ; [+53]
     1198 GETUPVAL                         R47 7
     1199 GETTABLEKS                       R47 R47 K93 ["slice"]
     1201 GETTABLEKS                       R48 R27 K21 ["output"]
     1203 LOADN                            R49 1
     1204 GETTABLEKS                       R50 R45 K132 ["outputIndex"]
     1206 CALL                             R47 3 1
     1207 GETUPVAL                         R48 13
     1208 GETTABLEKS                       R48 R48 K93 ["slice"]
     1210 GETTABLEKS                       R49 R27 K64 ["tokens"]
     1212 GETTABLEKS                       R50 R45 K133 ["tokensIndex"]
     1214 CALL                             R48 2 1
     1215 LOADK                            R49 K138 ["\\{"]
     1216 SETTABLEKS                       R49 R45 K21 ["output"]
     1218 GETTABLEKS                       R49 R45 K21 ["output"]
     1220 SETTABLEKS                       R49 R45 K19 ["value"]
     1222 LOADK                            R46 K139 ["\\}"]
     1223 MOVE                             R32 R46
     1224 SETTABLEKS                       R47 R27 K21 ["output"]
     1226 GETIMPORT                        R49 K141 [ipairs]
     1228 MOVE                             R50 R48
     1229 CALL                             R49 1 3
     1230 FORGPREP_INEXT                   R49
     1231 GETTABLEKS                       R55 R27 K21 ["output"]
     1233 GETUPVAL                         R57 4
     1234 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     1236 GETTABLEKS                       R58 R53 K21 ["output"]
     1238 CALL                             R57 1 1
     1239 JUMPIFNOT                        R57 ; [+3]
     1240 GETTABLEKS                       R56 R53 K21 ["output"]
     1242 JUMP                             ; [+2]
     1243 GETTABLEKS                       R56 R53 K19 ["value"]
     1245 CONCAT                           R54 R55 R56
     1246 SETTABLEKS                       R54 R27 K21 ["output"]
     1248 FORGLOOP                         R49 2 [inext] ; [-18]
     1250 MOVE                             R47 R42
     1251 DUPTABLE                         R48 K142 [{["type"] = "brace", ["value"], ["output"]}]
     1252 SETTABLEKS                       R32 R48 K19 ["value"]
     1254 SETTABLEKS                       R46 R48 K21 ["output"]
     1256 CALL                             R47 1 0
     1257 GETTABLEKS                       R47 R27 K60 ["braces"]
     1259 SUBK                             R47 R47 K53 [1]
     1260 SETTABLEKS                       R47 R27 K60 ["braces"]
     1262 GETIMPORT                        R47 K117 [table.remove]
     1264 MOVE                             R48 R30
     1265 CALL                             R47 1 0
     1266 GETIMPORT                        R47 K117 [table.remove]
     1268 MOVE                             R48 R29
     1269 CALL                             R47 1 0
     1270 JUMP                             ; [+1260]
     1271 JUMPIFNOTEQKS                    R32 K143 ["|"] ; [+18]
     1273 LENGTH                           R45 R28
     1274 LOADN                            R46 0
     1275 JUMPIFNOTLT                      R46 R45 ; [+8]
     1277 LENGTH                           R46 R28
     1278 GETTABLE                         R45 R28 R46
     1279 GETTABLEKS                       R46 R45 K144 ["conditions"]
     1281 ADDK                             R46 R46 K53 [1]
     1282 SETTABLEKS                       R46 R45 K144 ["conditions"]
     1284 MOVE                             R45 R42
     1285 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
     1286 SETTABLEKS                       R32 R46 K19 ["value"]
     1288 CALL                             R45 1 0
     1289 JUMP                             ; [+1241]
     1290 JUMPIFNOTEQKS                    R32 K145 [","] ; [+26]
     1292 MOVE                             R45 R32
     1293 LENGTH                           R47 R29
     1294 GETTABLE                         R46 R29 R47
     1295 GETUPVAL                         R47 4
     1296 GETTABLEKS                       R47 R47 K24 ["toJSBoolean"]
     1298 MOVE                             R48 R46
     1299 CALL                             R47 1 1
     1300 JUMPIFNOT                        R47 ; [+8]
     1301 LENGTH                           R48 R30
     1302 GETTABLE                         R47 R30 R48
     1303 JUMPIFNOTEQKS                    R47 K60 ["braces"] ; [+5]
     1305 LOADB                            R47 1
     1306 SETTABLEKS                       R47 R46 K137 ["comma"]
     1308 LOADK                            R45 K143 ["|"]
     1309 MOVE                             R47 R42
     1310 DUPTABLE                         R48 K146 [{["type"] = "comma", ["value"], ["output"]}]
     1311 SETTABLEKS                       R32 R48 K19 ["value"]
     1313 SETTABLEKS                       R45 R48 K21 ["output"]
     1315 CALL                             R47 1 0
     1316 JUMP                             ; [+1214]
     1317 JUMPIFNOTEQKS                    R32 K78 ["/"] ; [+37]
     1319 GETTABLEKS                       R45 R31 K17 ["type"]
     1321 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+25]
     1323 GETTABLEKS                       R45 R27 K50 ["index"]
     1325 GETTABLEKS                       R47 R27 K52 ["start"]
     1327 ADDK                             R46 R47 K53 [1]
     1328 JUMPIFNOTEQ                      R45 R46 ; [+18]
     1330 GETTABLEKS                       R46 R27 K50 ["index"]
     1332 ADDK                             R45 R46 K53 [1]
     1333 SETTABLEKS                       R45 R27 K52 ["start"]
     1335 LOADK                            R45 K20 [""]
     1336 SETTABLEKS                       R45 R27 K54 ["consumed"]
     1338 LOADK                            R45 K20 [""]
     1339 SETTABLEKS                       R45 R27 K21 ["output"]
     1341 GETIMPORT                        R45 K117 [table.remove]
     1343 MOVE                             R46 R6
     1344 CALL                             R45 1 0
     1345 MOVE                             R31 R5
     1346 JUMP                             ; [+1184]
     1347 MOVE                             R45 R42
     1348 DUPTABLE                         R46 K148 [{["type"] = "slash", ["value"], ["output"]}]
     1349 SETTABLEKS                       R32 R46 K19 ["value"]
     1351 SETTABLEKS                       R13 R46 K21 ["output"]
     1353 CALL                             R45 1 0
     1354 JUMP                             ; [+1176]
     1355 JUMPIFNOTEQKS                    R32 K79 ["."] ; [+68]
     1357 GETTABLEKS                       R45 R27 K60 ["braces"]
     1359 LOADN                            R46 0
     1360 JUMPIFNOTLT                      R46 R45 ; [+32]
     1362 GETTABLEKS                       R45 R31 K17 ["type"]
     1364 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+28]
     1366 GETTABLEKS                       R45 R31 K19 ["value"]
     1368 JUMPIFNOTEQKS                    R45 K79 ["."] ; [+3]
     1370 SETTABLEKS                       R11 R31 K21 ["output"]
     1372 LENGTH                           R46 R29
     1373 GETTABLE                         R45 R29 R46
     1374 LOADK                            R46 K136 ["dots"]
     1375 SETTABLEKS                       R46 R31 K17 ["type"]
     1377 GETTABLEKS                       R47 R31 K21 ["output"]
     1379 MOVE                             R48 R32
     1380 CONCAT                           R46 R47 R48
     1381 SETTABLEKS                       R46 R31 K21 ["output"]
     1383 GETTABLEKS                       R47 R31 K19 ["value"]
     1385 MOVE                             R48 R32
     1386 CONCAT                           R46 R47 R48
     1387 SETTABLEKS                       R46 R31 K19 ["value"]
     1389 LOADB                            R46 1
     1390 SETTABLEKS                       R46 R45 K136 ["dots"]
     1392 JUMP                             ; [+1138]
     1393 GETTABLEKS                       R46 R27 K60 ["braces"]
     1395 GETTABLEKS                       R47 R27 K61 ["parens"]
     1397 ADD                              R45 R46 R47
     1398 JUMPIFNOTEQKN                    R45 K51 [0] ; [+17]
     1400 GETTABLEKS                       R45 R31 K17 ["type"]
     1402 JUMPIFEQKS                       R45 K18 ["bos"] ; [+13]
     1404 GETTABLEKS                       R45 R31 K17 ["type"]
     1406 JUMPIFEQKS                       R45 K147 ["slash"] ; [+9]
     1408 MOVE                             R45 R42
     1409 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
     1410 SETTABLEKS                       R32 R46 K19 ["value"]
     1412 SETTABLEKS                       R11 R46 K21 ["output"]
     1414 CALL                             R45 1 0
     1415 JUMP                             ; [+1115]
     1416 MOVE                             R45 R42
     1417 DUPTABLE                         R46 K149 [{["type"] = "dot", ["value"], ["output"]}]
     1418 SETTABLEKS                       R32 R46 K19 ["value"]
     1420 SETTABLEKS                       R11 R46 K21 ["output"]
     1422 CALL                             R45 1 0
     1423 JUMP                             ; [+1107]
     1424 JUMPIFNOTEQKS                    R32 K150 ["?"] ; [+132]
     1426 GETUPVAL                         R45 4
     1427 GETTABLEKS                       R45 R45 K24 ["toJSBoolean"]
     1429 MOVE                             R46 R31
     1430 CALL                             R45 1 1
     1431 JUMPIFNOT                        R45 ; [+6]
     1432 GETTABLEKS                       R46 R31 K19 ["value"]
     1434 JUMPIFEQKS                       R46 K105 ["("] ; [+2]
     1436 LOADB                            R45 0 +1
     1437 LOADB                            R45 1
     1438 JUMPIF                           R45 ; [+18]
     1439 GETTABLEKS                       R46 R2 K48 ["noextglob"]
     1441 JUMPIFEQKB                       R46 TRUE ; [+15]
     1443 MOVE                             R46 R34
     1444 CALL                             R46 0 1
     1445 JUMPIFNOTEQKS                    R46 K105 ["("] ; [+11]
     1447 MOVE                             R46 R34
     1448 LOADN                            R47 2
     1449 CALL                             R46 1 1
     1450 JUMPIFEQKS                       R46 K150 ["?"] ; [+6]
     1452 MOVE                             R46 R43
     1453 LOADK                            R47 K151 ["qmark"]
     1454 MOVE                             R48 R32
     1455 CALL                             R46 2 0
     1456 JUMP                             ; [+1074]
     1457 GETUPVAL                         R46 4
     1458 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1460 MOVE                             R47 R31
     1461 CALL                             R46 1 1
     1462 JUMPIFNOT                        R46 ; [+66]
     1463 GETTABLEKS                       R46 R31 K17 ["type"]
     1465 JUMPIFNOTEQKS                    R46 K109 ["paren"] ; [+63]
     1467 MOVE                             R46 R34
     1468 CALL                             R46 0 1
     1469 MOVE                             R47 R32
     1470 JUMPIFNOTEQKS                    R46 K152 ["<"] ; [+14]
     1472 GETUPVAL                         R48 5
     1473 GETTABLEKS                       R48 R48 K153 ["supportsLookbehinds"]
     1475 CALL                             R48 0 1
     1476 JUMPIF                           R48 ; [+8]
     1477 GETIMPORT                        R48 K4 [error]
     1479 GETUPVAL                         R49 0
     1480 GETTABLEKS                       R49 R49 K5 ["new"]
     1482 LOADK                            R50 K154 ["Node.js v10 or higher is required for regex lookbehinds"]
     1483 CALL                             R49 1 -1
     1484 CALL                             R48 -1 0
     1485 GETTABLEKS                       R48 R31 K19 ["value"]
     1487 JUMPIFNOTEQKS                    R48 K105 ["("] ; [+9]
     1489 GETUPVAL                         R48 8
     1490 LOADK                            R49 K155 ["[!=<:]"]
     1491 CALL                             R48 1 1
     1492 MOVE                             R50 R46
     1493 NAMECALL                         R48 R48 K71 ["test"]
     1495 CALL                             R48 2 1
     1496 JUMPIFNOT                        R48 ; [+18]
     1497 JUMPIFNOTEQKS                    R46 K152 ["<"] ; [+23]
     1499 GETUPVAL                         R48 8
     1500 LOADK                            R49 K156 ["<([!=]|\\w+>)"]
     1501 CALL                             R48 1 1
     1502 GETTABLEKS                       R53 R27 K50 ["index"]
     1504 ADDK                             R52 R53 K53 [1]
     1505 FASTCALL2                        STRING_SUB R0 R52 ; [+4]
     1507 MOVE                             R51 R0
     1508 GETIMPORT                        R50 K85 [string.sub]
     1510 CALL                             R50 2 1
     1511 NAMECALL                         R48 R48 K71 ["test"]
     1513 CALL                             R48 2 1
     1514 JUMPIF                           R48 ; [+6]
     1515 LOADK                            R48 K98 ["\\%s"]
     1516 MOVE                             R50 R32
     1517 NAMECALL                         R48 R48 K16 ["format"]
     1519 CALL                             R48 2 1
     1520 MOVE                             R47 R48
     1521 MOVE                             R48 R42
     1522 DUPTABLE                         R49 K124 [{["type"] = "text", ["value"], ["output"]}]
     1523 SETTABLEKS                       R32 R49 K19 ["value"]
     1525 SETTABLEKS                       R47 R49 K21 ["output"]
     1527 CALL                             R48 1 0
     1528 JUMP                             ; [+1002]
     1529 GETTABLEKS                       R46 R2 K42 ["dot"]
     1531 JUMPIFEQKB                       R46 TRUE ; [+17]
     1533 GETTABLEKS                       R46 R31 K17 ["type"]
     1535 JUMPIFEQKS                       R46 K147 ["slash"] ; [+5]
     1537 GETTABLEKS                       R46 R31 K17 ["type"]
     1539 JUMPIFNOTEQKS                    R46 K18 ["bos"] ; [+9]
     1541 MOVE                             R46 R42
     1542 DUPTABLE                         R47 K157 [{["type"] = "qmark", ["value"], ["output"]}]
     1543 SETTABLEKS                       R32 R47 K19 ["value"]
     1545 SETTABLEKS                       R20 R47 K21 ["output"]
     1547 CALL                             R46 1 0
     1548 JUMP                             ; [+982]
     1549 MOVE                             R46 R42
     1550 DUPTABLE                         R47 K157 [{["type"] = "qmark", ["value"], ["output"]}]
     1551 SETTABLEKS                       R32 R47 K19 ["value"]
     1553 SETTABLEKS                       R19 R47 K21 ["output"]
     1555 CALL                             R46 1 0
     1556 JUMP                             ; [+974]
     1557 JUMPIFNOTEQKS                    R32 K99 ["!"] ; [+40]
     1559 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1561 JUMPIFEQKB                       R45 TRUE ; [+25]
     1563 MOVE                             R45 R34
     1564 CALL                             R45 0 1
     1565 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+21]
     1567 MOVE                             R45 R34
     1568 LOADN                            R46 2
     1569 CALL                             R45 1 1
     1570 JUMPIFNOTEQKS                    R45 K150 ["?"] ; [+11]
     1572 GETUPVAL                         R45 8
     1573 LOADK                            R46 K155 ["[!=<:]"]
     1574 CALL                             R45 1 1
     1575 MOVE                             R47 R34
     1576 LOADN                            R48 3
     1577 CALL                             R47 1 -1
     1578 NAMECALL                         R45 R45 K71 ["test"]
     1580 CALL                             R45 -1 1
     1581 JUMPIF                           R45 ; [+5]
     1582 MOVE                             R45 R43
     1583 LOADK                            R46 K158 ["negate"]
     1584 MOVE                             R47 R32
     1585 CALL                             R45 2 0
     1586 JUMP                             ; [+944]
     1587 GETTABLEKS                       R45 R2 K159 ["nonegate"]
     1589 JUMPIFEQKB                       R45 TRUE ; [+8]
     1591 GETTABLEKS                       R45 R27 K50 ["index"]
     1593 JUMPIFNOTEQKN                    R45 K53 [1] ; [+4]
     1595 MOVE                             R45 R39
     1596 CALL                             R45 0 0
     1597 JUMP                             ; [+933]
     1598 JUMPIFNOTEQKS                    R32 K160 ["+"] ; [+68]
     1600 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1602 JUMPIFEQKB                       R45 TRUE ; [+15]
     1604 MOVE                             R45 R34
     1605 CALL                             R45 0 1
     1606 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+11]
     1608 MOVE                             R45 R34
     1609 LOADN                            R46 2
     1610 CALL                             R45 1 1
     1611 JUMPIFEQKS                       R45 K150 ["?"] ; [+6]
     1613 MOVE                             R45 R43
     1614 LOADK                            R46 K161 ["plus"]
     1615 MOVE                             R47 R32
     1616 CALL                             R45 2 0
     1617 JUMP                             ; [+913]
     1618 JUMPIFEQKNIL                     R31 ; [+5]
     1620 GETTABLEKS                       R45 R31 K19 ["value"]
     1622 JUMPIFEQKS                       R45 K105 ["("] ; [+5]
     1624 GETTABLEKS                       R45 R2 K162 ["regex"]
     1626 JUMPIFNOTEQKB                    R45 FALSE ; [+9]
     1628 MOVE                             R45 R42
     1629 DUPTABLE                         R46 K163 [{["type"] = "plus", ["value"], ["output"]}]
     1630 SETTABLEKS                       R32 R46 K19 ["value"]
     1632 SETTABLEKS                       R12 R46 K21 ["output"]
     1634 CALL                             R45 1 0
     1635 JUMP                             ; [+895]
     1636 JUMPIFEQKNIL                     R31 ; [+13]
     1638 GETTABLEKS                       R45 R31 K17 ["type"]
     1640 JUMPIFEQKS                       R45 K122 ["bracket"] ; [+14]
     1642 GETTABLEKS                       R45 R31 K17 ["type"]
     1644 JUMPIFEQKS                       R45 K109 ["paren"] ; [+10]
     1646 GETTABLEKS                       R45 R31 K17 ["type"]
     1648 JUMPIFEQKS                       R45 K131 ["brace"] ; [+6]
     1650 GETTABLEKS                       R45 R27 K61 ["parens"]
     1652 LOADN                            R46 0
     1653 JUMPIFNOTLT                      R46 R45 ; [+7]
     1655 MOVE                             R45 R42
     1656 DUPTABLE                         R46 K164 [{["type"] = "plus", ["value"]}]
     1657 SETTABLEKS                       R32 R46 K19 ["value"]
     1659 CALL                             R45 1 0
     1660 JUMP                             ; [+870]
     1661 MOVE                             R45 R42
     1662 DUPTABLE                         R46 K164 [{["type"] = "plus", ["value"]}]
     1663 SETTABLEKS                       R12 R46 K19 ["value"]
     1665 CALL                             R45 1 0
     1666 JUMP                             ; [+864]
     1667 JUMPIFNOTEQKS                    R32 K165 ["@"] ; [+26]
     1669 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1671 JUMPIFEQKB                       R45 TRUE ; [+16]
     1673 MOVE                             R45 R34
     1674 CALL                             R45 0 1
     1675 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+12]
     1677 MOVE                             R45 R34
     1678 LOADN                            R46 2
     1679 CALL                             R45 1 1
     1680 JUMPIFEQKS                       R45 K150 ["?"] ; [+7]
     1682 MOVE                             R45 R42
     1683 DUPTABLE                         R46 K169 [{["type"] = "at", ["extglob"] = True, ["value"], ["output"] = ""}]
     1684 SETTABLEKS                       R32 R46 K19 ["value"]
     1686 CALL                             R45 1 0
     1687 JUMP                             ; [+843]
     1688 MOVE                             R45 R42
     1689 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
     1690 SETTABLEKS                       R32 R46 K19 ["value"]
     1692 CALL                             R45 1 0
     1693 JUMP                             ; [+837]
     1694 JUMPIFEQKS                       R32 K170 ["*"] ; [+41]
     1696 JUMPIFEQKS                       R32 K171 ["$"] ; [+3]
     1698 JUMPIFNOTEQKS                    R32 K100 ["^"] ; [+7]
     1700 LOADK                            R45 K98 ["\\%s"]
     1701 MOVE                             R47 R32
     1702 NAMECALL                         R45 R45 K16 ["format"]
     1704 CALL                             R45 2 1
     1705 MOVE                             R32 R45
     1706 GETIMPORT                        R45 K173 [string.match]
     1708 GETTABLEKS                       R49 R27 K50 ["index"]
     1710 ADDK                             R48 R49 K53 [1]
     1711 FASTCALL2                        STRING_SUB R0 R48 ; [+4]
     1713 MOVE                             R47 R0
     1714 GETIMPORT                        R46 K85 [string.sub]
     1716 CALL                             R46 2 1
     1717 GETUPVAL                         R47 15
     1718 CALL                             R45 2 1
     1719 JUMPIFEQKNIL                     R45 ; [+10]
     1721 MOVE                             R46 R32
     1722 MOVE                             R47 R45
     1723 CONCAT                           R32 R46 R47
     1724 GETTABLEKS                       R46 R27 K50 ["index"]
     1726 LENGTH                           R47 R45
     1727 ADD                              R46 R46 R47
     1728 SETTABLEKS                       R46 R27 K50 ["index"]
     1730 MOVE                             R46 R42
     1731 DUPTABLE                         R47 K82 [{["type"] = "text", ["value"]}]
     1732 SETTABLEKS                       R32 R47 K19 ["value"]
     1734 CALL                             R46 1 0
     1735 JUMP                             ; [+795]
     1736 JUMPIFEQKNIL                     R31 ; [+43]
     1738 GETTABLEKS                       R45 R31 K17 ["type"]
     1740 JUMPIFEQKS                       R45 K63 ["globstar"] ; [+5]
     1742 GETTABLEKS                       R45 R31 K174 ["star"]
     1744 JUMPIFNOTEQKB                    R45 TRUE ; [+35]
     1746 LOADK                            R45 K174 ["star"]
     1747 SETTABLEKS                       R45 R31 K17 ["type"]
     1749 LOADB                            R45 1
     1750 SETTABLEKS                       R45 R31 K174 ["star"]
     1752 GETTABLEKS                       R46 R31 K19 ["value"]
     1754 MOVE                             R47 R32
     1755 CONCAT                           R45 R46 R47
     1756 SETTABLEKS                       R45 R31 K19 ["value"]
     1758 SETTABLEKS                       R26 R31 K21 ["output"]
     1760 LOADB                            R45 1
     1761 SETTABLEKS                       R45 R27 K56 ["backtrack"]
     1763 LOADB                            R45 1
     1764 SETTABLEKS                       R45 R27 K63 ["globstar"]
     1766 MOVE                             R45 R32
     1767 ORK                              R46 R45 K20 [""]
     1768 GETTABLEKS                       R48 R27 K54 ["consumed"]
     1770 MOVE                             R49 R46
     1771 CONCAT                           R47 R48 R49
     1772 SETTABLEKS                       R47 R27 K54 ["consumed"]
     1774 GETTABLEKS                       R47 R27 K50 ["index"]
     1776 ADDK                             R47 R47 K51 [0]
     1777 SETTABLEKS                       R47 R27 K50 ["index"]
     1779 JUMP                             ; [+751]
     1780 GETTABLEKS                       R48 R27 K50 ["index"]
     1782 ADDK                             R47 R48 K53 [1]
     1783 FASTCALL2                        STRING_SUB R0 R47 ; [+4]
     1785 MOVE                             R46 R0
     1786 GETIMPORT                        R45 K85 [string.sub]
     1788 CALL                             R45 2 1
     1789 GETUPVAL                         R46 4
     1790 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1792 LOADB                            R47 0
     1793 GETTABLEKS                       R48 R2 K48 ["noextglob"]
     1795 JUMPIFEQKB                       R48 TRUE ; [+8]
     1797 GETUPVAL                         R47 8
     1798 LOADK                            R48 K175 ["^\\([^?]"]
     1799 CALL                             R47 1 1
     1800 MOVE                             R49 R45
     1801 NAMECALL                         R47 R47 K71 ["test"]
     1803 CALL                             R47 2 1
     1804 CALL                             R46 1 1
     1805 JUMPIFNOT                        R46 ; [+5]
     1806 MOVE                             R46 R43
     1807 LOADK                            R47 K174 ["star"]
     1808 MOVE                             R48 R32
     1809 CALL                             R46 2 0
     1810 JUMP                             ; [+720]
     1811 GETTABLEKS                       R46 R31 K17 ["type"]
     1813 JUMPIFNOTEQKS                    R46 K174 ["star"] ; [+588]
     1815 GETTABLEKS                       R46 R2 K176 ["noglobstar"]
     1817 JUMPIFNOTEQKB                    R46 TRUE ; [+15]
     1819 MOVE                             R46 R32
     1820 ORK                              R47 R46 K20 [""]
     1821 GETTABLEKS                       R49 R27 K54 ["consumed"]
     1823 MOVE                             R50 R47
     1824 CONCAT                           R48 R49 R50
     1825 SETTABLEKS                       R48 R27 K54 ["consumed"]
     1827 GETTABLEKS                       R48 R27 K50 ["index"]
     1829 ADDK                             R48 R48 K51 [0]
     1830 SETTABLEKS                       R48 R27 K50 ["index"]
     1832 JUMP                             ; [+698]
     1833 GETTABLEKS                       R46 R31 K177 ["prev"]
     1835 GETTABLEKS                       R47 R46 K177 ["prev"]
     1837 LOADB                            R48 1
     1838 GETTABLEKS                       R49 R46 K17 ["type"]
     1840 JUMPIFEQKS                       R49 K147 ["slash"] ; [+7]
     1842 GETTABLEKS                       R49 R46 K17 ["type"]
     1844 JUMPIFEQKS                       R49 K18 ["bos"] ; [+2]
     1846 LOADB                            R48 0 +1
     1847 LOADB                            R48 1
     1848 GETUPVAL                         R50 4
     1849 GETTABLEKS                       R50 R50 K24 ["toJSBoolean"]
     1851 MOVE                             R51 R47
     1852 CALL                             R50 1 1
     1853 JUMPIFNOT                        R50 ; [+12]
     1854 LOADB                            R49 1
     1855 GETTABLEKS                       R50 R47 K17 ["type"]
     1857 JUMPIFEQKS                       R50 K174 ["star"] ; [+9]
     1859 GETTABLEKS                       R50 R47 K17 ["type"]
     1861 JUMPIFEQKS                       R50 K63 ["globstar"] ; [+2]
     1863 LOADB                            R49 0 +1
     1864 LOADB                            R49 1
     1865 JUMP                             ; [+1]
     1866 MOVE                             R49 R47
     1867 GETTABLEKS                       R50 R2 K43 ["bash"]
     1869 JUMPIFNOTEQKB                    R50 TRUE ; [+22]
     1871 JUMPIFNOT                        R48 ; [+14]
     1872 LOADN                            R52 1
     1873 LOADN                            R53 1
     1874 NAMECALL                         R50 R45 K84 ["sub"]
     1876 CALL                             R50 3 1
     1877 JUMPIFEQKNIL                     R50 ; [+14]
     1879 LOADN                            R52 1
     1880 LOADN                            R53 1
     1881 NAMECALL                         R50 R45 K84 ["sub"]
     1883 CALL                             R50 3 1
     1884 JUMPIFEQKS                       R50 K78 ["/"] ; [+7]
     1886 MOVE                             R50 R42
     1887 DUPTABLE                         R51 K178 [{["type"] = "star", ["value"], ["output"] = ""}]
     1888 SETTABLEKS                       R32 R51 K19 ["value"]
     1890 CALL                             R50 1 0
     1891 JUMP                             ; [+639]
     1892 LOADB                            R50 0
     1893 GETTABLEKS                       R51 R27 K60 ["braces"]
     1895 LOADN                            R52 0
     1896 JUMPIFNOTLT                      R52 R51 ; [+12]
     1898 LOADB                            R50 1
     1899 GETTABLEKS                       R51 R46 K17 ["type"]
     1901 JUMPIFEQKS                       R51 K137 ["comma"] ; [+7]
     1903 GETTABLEKS                       R51 R46 K17 ["type"]
     1905 JUMPIFEQKS                       R51 K131 ["brace"] ; [+2]
     1907 LOADB                            R50 0 +1
     1908 LOADB                            R50 1
     1909 LOADB                            R51 0
     1910 LENGTH                           R52 R28
     1911 LOADN                            R53 0
     1912 JUMPIFNOTLT                      R53 R52 ; [+12]
     1914 LOADB                            R51 1
     1915 GETTABLEKS                       R52 R46 K17 ["type"]
     1917 JUMPIFEQKS                       R52 K179 ["pipe"] ; [+7]
     1919 GETTABLEKS                       R52 R46 K17 ["type"]
     1921 JUMPIFEQKS                       R52 K109 ["paren"] ; [+2]
     1923 LOADB                            R51 0 +1
     1924 LOADB                            R51 1
     1925 JUMPIF                           R48 ; [+12]
     1926 GETTABLEKS                       R52 R46 K17 ["type"]
     1928 JUMPIFEQKS                       R52 K109 ["paren"] ; [+9]
     1930 JUMPIF                           R50 ; [+7]
     1931 JUMPIF                           R51 ; [+6]
     1932 MOVE                             R52 R42
     1933 DUPTABLE                         R53 K178 [{["type"] = "star", ["value"], ["output"] = ""}]
     1934 SETTABLEKS                       R32 R53 K19 ["value"]
     1936 CALL                             R52 1 0
     1937 JUMP                             ; [+593]
     1938 GETUPVAL                         R52 7
     1939 GETTABLEKS                       R52 R52 K93 ["slice"]
     1941 MOVE                             R53 R45
     1942 LOADN                            R54 1
     1943 LOADN                            R55 4
     1944 CALL                             R52 3 1
     1945 JUMPIFNOTEQKS                    R52 K180 ["/**"] ; [+37]
     1947 GETTABLEKS                       R55 R27 K50 ["index"]
     1949 ADDK                             R54 R55 K181 [4]
     1950 GETTABLEKS                       R56 R27 K50 ["index"]
     1952 ADDK                             R55 R56 K181 [4]
     1953 NAMECALL                         R52 R0 K84 ["sub"]
     1955 CALL                             R52 3 1
     1956 GETUPVAL                         R53 4
     1957 GETTABLEKS                       R53 R53 K24 ["toJSBoolean"]
     1959 MOVE                             R54 R52
     1960 CALL                             R53 1 1
     1961 JUMPIFNOT                        R53 ; [+2]
     1962 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+20]
     1964 GETUPVAL                         R53 7
     1965 GETTABLEKS                       R53 R53 K93 ["slice"]
     1967 MOVE                             R54 R45
     1968 LOADN                            R55 4
     1969 CALL                             R53 2 1
     1970 MOVE                             R45 R53
     1971 GETTABLEKS                       R54 R27 K54 ["consumed"]
     1973 LOADK                            R55 K180 ["/**"]
     1974 CONCAT                           R53 R54 R55
     1975 SETTABLEKS                       R53 R27 K54 ["consumed"]
     1977 GETTABLEKS                       R53 R27 K50 ["index"]
     1979 ADDK                             R53 R53 K182 [3]
     1980 SETTABLEKS                       R53 R27 K50 ["index"]
     1982 JUMPBACK                         ; [-45]
     1983 GETTABLEKS                       R52 R46 K17 ["type"]
     1985 JUMPIFNOTEQKS                    R52 K18 ["bos"] ; [+56]
     1987 GETTABLEKS                       R53 R27 K50 ["index"]
     1989 JUMPIFEQ                         R53 R4 ; [+2]
     1991 LOADB                            R52 0 +1
     1992 LOADB                            R52 1
     1993 JUMPIFNOT                        R52 ; [+48]
     1994 LOADK                            R52 K63 ["globstar"]
     1995 SETTABLEKS                       R52 R31 K17 ["type"]
     1997 GETTABLEKS                       R53 R31 K19 ["value"]
     1999 MOVE                             R54 R32
     2000 CONCAT                           R52 R53 R54
     2001 SETTABLEKS                       R52 R31 K19 ["value"]
     2003 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2004 MOVE                             R54 R7
     2005 MOVE                             R55 R22
     2006 GETUPVAL                         R57 4
     2007 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     2009 GETTABLEKS                       R58 R2 K42 ["dot"]
     2011 CALL                             R57 1 1
     2012 JUMPIFNOT                        R57 ; [+2]
     2013 MOVE                             R56 R15
     2014 JUMP                             ; [+1]
     2015 MOVE                             R56 R11
     2016 NAMECALL                         R52 R52 K16 ["format"]
     2018 CALL                             R52 4 1
     2019 SETTABLEKS                       R52 R31 K21 ["output"]
     2021 GETTABLEKS                       R52 R31 K21 ["output"]
     2023 SETTABLEKS                       R52 R27 K21 ["output"]
     2025 LOADB                            R52 1
     2026 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2028 MOVE                             R52 R32
     2029 ORK                              R53 R52 K20 [""]
     2030 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2032 MOVE                             R56 R53
     2033 CONCAT                           R54 R55 R56
     2034 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2036 GETTABLEKS                       R54 R27 K50 ["index"]
     2038 ADDK                             R54 R54 K51 [0]
     2039 SETTABLEKS                       R54 R27 K50 ["index"]
     2041 JUMP                             ; [+489]
     2042 GETTABLEKS                       R52 R46 K17 ["type"]
     2044 JUMPIFNOTEQKS                    R52 K147 ["slash"] ; [+105]
     2046 GETTABLEKS                       R52 R46 K177 ["prev"]
     2048 GETTABLEKS                       R52 R52 K17 ["type"]
     2050 JUMPIFEQKS                       R52 K18 ["bos"] ; [+99]
     2052 GETUPVAL                         R52 4
     2053 GETTABLEKS                       R52 R52 K24 ["toJSBoolean"]
     2055 MOVE                             R53 R49
     2056 CALL                             R52 1 1
     2057 JUMPIF                           R52 ; [+92]
     2058 GETTABLEKS                       R53 R27 K50 ["index"]
     2060 JUMPIFEQ                         R53 R4 ; [+2]
     2062 LOADB                            R52 0 +1
     2063 LOADB                            R52 1
     2064 JUMPIFNOT                        R52 ; [+85]
     2065 GETUPVAL                         R52 7
     2066 GETTABLEKS                       R52 R52 K93 ["slice"]
     2068 GETTABLEKS                       R53 R27 K21 ["output"]
     2070 LOADN                            R54 1
     2071 GETTABLEKS                       R58 R46 K21 ["output"]
     2073 GETTABLEKS                       R59 R31 K21 ["output"]
     2075 CONCAT                           R57 R58 R59
     2076 LENGTH                           R56 R57
     2077 MINUS                            R55 R56
     2078 CALL                             R52 3 1
     2079 SETTABLEKS                       R52 R27 K21 ["output"]
     2081 LOADK                            R52 K183 ["(?:%s"]
     2082 GETTABLEKS                       R54 R46 K21 ["output"]
     2084 NAMECALL                         R52 R52 K16 ["format"]
     2086 CALL                             R52 2 1
     2087 SETTABLEKS                       R52 R46 K21 ["output"]
     2089 LOADK                            R52 K63 ["globstar"]
     2090 SETTABLEKS                       R52 R31 K17 ["type"]
     2092 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2093 MOVE                             R57 R7
     2094 MOVE                             R58 R22
     2095 GETUPVAL                         R60 4
     2096 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2098 GETTABLEKS                       R61 R2 K42 ["dot"]
     2100 CALL                             R60 1 1
     2101 JUMPIFNOT                        R60 ; [+2]
     2102 MOVE                             R59 R15
     2103 JUMP                             ; [+1]
     2104 MOVE                             R59 R11
     2105 NAMECALL                         R55 R55 K16 ["format"]
     2107 CALL                             R55 4 1
     2108 MOVE                             R53 R55
     2109 GETTABLEKS                       R55 R2 K184 ["strictSlashes"]
     2111 JUMPIFNOT                        R55 ; [+2]
     2112 LOADK                            R54 K111 [")"]
     2113 JUMP                             ; [+1]
     2114 LOADK                            R54 K185 ["|$)"]
     2115 CONCAT                           R52 R53 R54
     2116 SETTABLEKS                       R52 R31 K21 ["output"]
     2118 GETTABLEKS                       R53 R31 K19 ["value"]
     2120 MOVE                             R54 R32
     2121 CONCAT                           R52 R53 R54
     2122 SETTABLEKS                       R52 R31 K19 ["value"]
     2124 LOADB                            R52 1
     2125 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2127 GETTABLEKS                       R53 R27 K21 ["output"]
     2129 GETTABLEKS                       R54 R46 K21 ["output"]
     2131 GETTABLEKS                       R55 R31 K21 ["output"]
     2133 CONCAT                           R52 R53 R55
     2134 SETTABLEKS                       R52 R27 K21 ["output"]
     2136 MOVE                             R52 R32
     2137 ORK                              R53 R52 K20 [""]
     2138 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2140 MOVE                             R56 R53
     2141 CONCAT                           R54 R55 R56
     2142 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2144 GETTABLEKS                       R54 R27 K50 ["index"]
     2146 ADDK                             R54 R54 K51 [0]
     2147 SETTABLEKS                       R54 R27 K50 ["index"]
     2149 JUMP                             ; [+381]
     2150 GETTABLEKS                       R52 R46 K17 ["type"]
     2152 JUMPIFNOTEQKS                    R52 K147 ["slash"] ; [+114]
     2154 GETTABLEKS                       R52 R46 K177 ["prev"]
     2156 GETTABLEKS                       R52 R52 K17 ["type"]
     2158 JUMPIFEQKS                       R52 K18 ["bos"] ; [+108]
     2160 LOADN                            R54 1
     2161 LOADN                            R55 1
     2162 NAMECALL                         R52 R45 K84 ["sub"]
     2164 CALL                             R52 3 1
     2165 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+101]
     2167 LOADN                            R55 2
     2168 LOADN                            R56 2
     2169 NAMECALL                         R53 R45 K84 ["sub"]
     2171 CALL                             R53 3 1
     2172 JUMPIFEQKNIL                     R53 ; [+3]
     2174 LOADK                            R52 K186 ["|$"]
     2175 JUMP                             ; [+1]
     2176 LOADK                            R52 K20 [""]
     2177 GETUPVAL                         R53 7
     2178 GETTABLEKS                       R53 R53 K93 ["slice"]
     2180 GETTABLEKS                       R54 R27 K21 ["output"]
     2182 LOADN                            R55 1
     2183 GETTABLEKS                       R59 R46 K21 ["output"]
     2185 GETTABLEKS                       R60 R31 K21 ["output"]
     2187 CONCAT                           R58 R59 R60
     2188 LENGTH                           R57 R58
     2189 MINUS                            R56 R57
     2190 CALL                             R53 3 1
     2191 SETTABLEKS                       R53 R27 K21 ["output"]
     2193 LOADK                            R53 K183 ["(?:%s"]
     2194 GETTABLEKS                       R55 R46 K21 ["output"]
     2196 NAMECALL                         R53 R53 K16 ["format"]
     2198 CALL                             R53 2 1
     2199 SETTABLEKS                       R53 R46 K21 ["output"]
     2201 LOADK                            R53 K63 ["globstar"]
     2202 SETTABLEKS                       R53 R31 K17 ["type"]
     2204 LOADK                            R53 K187 ["%s%s|%s%s)"]
     2205 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2206 MOVE                             R57 R7
     2207 MOVE                             R58 R22
     2208 GETUPVAL                         R60 4
     2209 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2211 GETTABLEKS                       R61 R2 K42 ["dot"]
     2213 CALL                             R60 1 1
     2214 JUMPIFNOT                        R60 ; [+2]
     2215 MOVE                             R59 R15
     2216 JUMP                             ; [+1]
     2217 MOVE                             R59 R11
     2218 NAMECALL                         R55 R55 K16 ["format"]
     2220 CALL                             R55 4 1
     2221 MOVE                             R56 R13
     2222 MOVE                             R57 R13
     2223 MOVE                             R58 R52
     2224 NAMECALL                         R53 R53 K16 ["format"]
     2226 CALL                             R53 5 1
     2227 SETTABLEKS                       R53 R31 K21 ["output"]
     2229 GETTABLEKS                       R54 R31 K19 ["value"]
     2231 MOVE                             R55 R32
     2232 CONCAT                           R53 R54 R55
     2233 SETTABLEKS                       R53 R31 K19 ["value"]
     2235 GETTABLEKS                       R54 R27 K21 ["output"]
     2237 GETTABLEKS                       R55 R46 K21 ["output"]
     2239 GETTABLEKS                       R56 R31 K21 ["output"]
     2241 CONCAT                           R53 R54 R56
     2242 SETTABLEKS                       R53 R27 K21 ["output"]
     2244 LOADB                            R53 1
     2245 SETTABLEKS                       R53 R27 K63 ["globstar"]
     2247 MOVE                             R54 R32
     2248 MOVE                             R55 R35
     2249 CALL                             R55 0 1
     2250 CONCAT                           R53 R54 R55
     2251 ORK                              R54 R53 K20 [""]
     2252 GETTABLEKS                       R56 R27 K54 ["consumed"]
     2254 MOVE                             R57 R54
     2255 CONCAT                           R55 R56 R57
     2256 SETTABLEKS                       R55 R27 K54 ["consumed"]
     2258 GETTABLEKS                       R55 R27 K50 ["index"]
     2260 ADDK                             R55 R55 K51 [0]
     2261 SETTABLEKS                       R55 R27 K50 ["index"]
     2263 MOVE                             R53 R42
     2264 DUPTABLE                         R54 K188 [{["type"] = "slash", ["value"] = "/", ["output"] = ""}]
     2265 CALL                             R53 1 0
     2266 JUMP                             ; [+264]
     2267 GETTABLEKS                       R52 R46 K17 ["type"]
     2269 JUMPIFNOTEQKS                    R52 K18 ["bos"] ; [+68]
     2271 LOADN                            R54 1
     2272 LOADN                            R55 1
     2273 NAMECALL                         R52 R45 K84 ["sub"]
     2275 CALL                             R52 3 1
     2276 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+61]
     2278 LOADK                            R52 K63 ["globstar"]
     2279 SETTABLEKS                       R52 R31 K17 ["type"]
     2281 GETTABLEKS                       R53 R31 K19 ["value"]
     2283 MOVE                             R54 R32
     2284 CONCAT                           R52 R53 R54
     2285 SETTABLEKS                       R52 R31 K19 ["value"]
     2287 LOADK                            R52 K189 ["(?:^|%s|%s%s)"]
     2288 MOVE                             R54 R13
     2289 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2290 MOVE                             R57 R7
     2291 MOVE                             R58 R22
     2292 GETUPVAL                         R60 4
     2293 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2295 GETTABLEKS                       R61 R2 K42 ["dot"]
     2297 CALL                             R60 1 1
     2298 JUMPIFNOT                        R60 ; [+2]
     2299 MOVE                             R59 R15
     2300 JUMP                             ; [+1]
     2301 MOVE                             R59 R11
     2302 NAMECALL                         R55 R55 K16 ["format"]
     2304 CALL                             R55 4 1
     2305 MOVE                             R56 R13
     2306 NAMECALL                         R52 R52 K16 ["format"]
     2308 CALL                             R52 4 1
     2309 SETTABLEKS                       R52 R31 K21 ["output"]
     2311 GETTABLEKS                       R52 R31 K21 ["output"]
     2313 SETTABLEKS                       R52 R27 K21 ["output"]
     2315 LOADB                            R52 1
     2316 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2318 MOVE                             R53 R32
     2319 MOVE                             R54 R35
     2320 CALL                             R54 0 1
     2321 CONCAT                           R52 R53 R54
     2322 ORK                              R53 R52 K20 [""]
     2323 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2325 MOVE                             R56 R53
     2326 CONCAT                           R54 R55 R56
     2327 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2329 GETTABLEKS                       R54 R27 K50 ["index"]
     2331 ADDK                             R54 R54 K51 [0]
     2332 SETTABLEKS                       R54 R27 K50 ["index"]
     2334 MOVE                             R52 R42
     2335 DUPTABLE                         R53 K188 [{["type"] = "slash", ["value"] = "/", ["output"] = ""}]
     2336 CALL                             R52 1 0
     2337 JUMP                             ; [+193]
     2338 GETUPVAL                         R52 7
     2339 GETTABLEKS                       R52 R52 K93 ["slice"]
     2341 GETTABLEKS                       R53 R27 K21 ["output"]
     2343 LOADN                            R54 1
     2344 GETTABLEKS                       R57 R31 K21 ["output"]
     2346 LENGTH                           R56 R57
     2347 MINUS                            R55 R56
     2348 CALL                             R52 3 1
     2349 SETTABLEKS                       R52 R27 K21 ["output"]
     2351 LOADK                            R52 K63 ["globstar"]
     2352 SETTABLEKS                       R52 R31 K17 ["type"]
     2354 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2355 MOVE                             R54 R7
     2356 MOVE                             R55 R22
     2357 GETUPVAL                         R57 4
     2358 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     2360 GETTABLEKS                       R58 R2 K42 ["dot"]
     2362 CALL                             R57 1 1
     2363 JUMPIFNOT                        R57 ; [+2]
     2364 MOVE                             R56 R15
     2365 JUMP                             ; [+1]
     2366 MOVE                             R56 R11
     2367 NAMECALL                         R52 R52 K16 ["format"]
     2369 CALL                             R52 4 1
     2370 SETTABLEKS                       R52 R31 K21 ["output"]
     2372 GETTABLEKS                       R53 R31 K19 ["value"]
     2374 MOVE                             R54 R32
     2375 CONCAT                           R52 R53 R54
     2376 SETTABLEKS                       R52 R31 K19 ["value"]
     2378 GETTABLEKS                       R53 R27 K21 ["output"]
     2380 GETTABLEKS                       R54 R31 K21 ["output"]
     2382 CONCAT                           R52 R53 R54
     2383 SETTABLEKS                       R52 R27 K21 ["output"]
     2385 LOADB                            R52 1
     2386 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2388 MOVE                             R52 R32
     2389 ORK                              R53 R52 K20 [""]
     2390 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2392 MOVE                             R56 R53
     2393 CONCAT                           R54 R55 R56
     2394 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2396 GETTABLEKS                       R54 R27 K50 ["index"]
     2398 ADDK                             R54 R54 K51 [0]
     2399 SETTABLEKS                       R54 R27 K50 ["index"]
     2401 JUMP                             ; [+129]
     2402 DUPTABLE                         R46 K190 [{["type"] = "star", ["value"], ["output"]}]
     2403 SETTABLEKS                       R32 R46 K19 ["value"]
     2405 SETTABLEKS                       R26 R46 K21 ["output"]
     2407 GETTABLEKS                       R47 R2 K43 ["bash"]
     2409 JUMPIFNOTEQKB                    R47 TRUE ; [+22]
     2411 LOADK                            R47 K191 [".*?"]
     2412 SETTABLEKS                       R47 R46 K21 ["output"]
     2414 GETTABLEKS                       R47 R31 K17 ["type"]
     2416 JUMPIFEQKS                       R47 K18 ["bos"] ; [+5]
     2418 GETTABLEKS                       R47 R31 K17 ["type"]
     2420 JUMPIFNOTEQKS                    R47 K147 ["slash"] ; [+7]
     2422 MOVE                             R48 R24
     2423 GETTABLEKS                       R49 R46 K21 ["output"]
     2425 CONCAT                           R47 R48 R49
     2426 SETTABLEKS                       R47 R46 K21 ["output"]
     2428 MOVE                             R47 R42
     2429 MOVE                             R48 R46
     2430 CALL                             R47 1 0
     2431 JUMP                             ; [+99]
     2432 JUMPIFEQKNIL                     R31 ; [+19]
     2434 GETTABLEKS                       R47 R31 K17 ["type"]
     2436 JUMPIFEQKS                       R47 K122 ["bracket"] ; [+5]
     2438 GETTABLEKS                       R47 R31 K17 ["type"]
     2440 JUMPIFNOTEQKS                    R47 K109 ["paren"] ; [+11]
     2442 GETTABLEKS                       R47 R2 K162 ["regex"]
     2444 JUMPIFNOTEQKB                    R47 TRUE ; [+7]
     2446 SETTABLEKS                       R32 R46 K21 ["output"]
     2448 MOVE                             R47 R42
     2449 MOVE                             R48 R46
     2450 CALL                             R47 1 0
     2451 JUMP                             ; [+79]
     2452 GETTABLEKS                       R47 R27 K50 ["index"]
     2454 GETTABLEKS                       R48 R27 K52 ["start"]
     2456 JUMPIFEQ                         R47 R48 ; [+9]
     2458 GETTABLEKS                       R47 R31 K17 ["type"]
     2460 JUMPIFEQKS                       R47 K147 ["slash"] ; [+5]
     2462 GETTABLEKS                       R47 R31 K17 ["type"]
     2464 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+63]
     2466 GETTABLEKS                       R47 R31 K17 ["type"]
     2468 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+14]
     2470 GETTABLEKS                       R48 R27 K21 ["output"]
     2472 MOVE                             R49 R17
     2473 CONCAT                           R47 R48 R49
     2474 SETTABLEKS                       R47 R27 K21 ["output"]
     2476 GETTABLEKS                       R48 R31 K21 ["output"]
     2478 MOVE                             R49 R17
     2479 CONCAT                           R47 R48 R49
     2480 SETTABLEKS                       R47 R31 K21 ["output"]
     2482 JUMP                             ; [+29]
     2483 GETTABLEKS                       R47 R2 K42 ["dot"]
     2485 JUMPIFNOTEQKB                    R47 TRUE ; [+14]
     2487 GETTABLEKS                       R48 R27 K21 ["output"]
     2489 MOVE                             R49 R18
     2490 CONCAT                           R47 R48 R49
     2491 SETTABLEKS                       R47 R27 K21 ["output"]
     2493 GETTABLEKS                       R48 R31 K21 ["output"]
     2495 MOVE                             R49 R18
     2496 CONCAT                           R47 R48 R49
     2497 SETTABLEKS                       R47 R31 K21 ["output"]
     2499 JUMP                             ; [+12]
     2500 GETTABLEKS                       R48 R27 K21 ["output"]
     2502 MOVE                             R49 R24
     2503 CONCAT                           R47 R48 R49
     2504 SETTABLEKS                       R47 R27 K21 ["output"]
     2506 GETTABLEKS                       R48 R31 K21 ["output"]
     2508 MOVE                             R49 R24
     2509 CONCAT                           R47 R48 R49
     2510 SETTABLEKS                       R47 R31 K21 ["output"]
     2512 MOVE                             R47 R34
     2513 CALL                             R47 0 1
     2514 JUMPIFEQKS                       R47 K170 ["*"] ; [+13]
     2516 GETTABLEKS                       R48 R27 K21 ["output"]
     2518 MOVE                             R49 R14
     2519 CONCAT                           R47 R48 R49
     2520 SETTABLEKS                       R47 R27 K21 ["output"]
     2522 GETTABLEKS                       R48 R31 K21 ["output"]
     2524 MOVE                             R49 R14
     2525 CONCAT                           R47 R48 R49
     2526 SETTABLEKS                       R47 R31 K21 ["output"]
     2528 MOVE                             R47 R42
     2529 MOVE                             R48 R46
     2530 CALL                             R47 1 0
     2531 JUMPBACK                         ; [-2170]
     2532 GETTABLEKS                       R45 R27 K59 ["brackets"]
     2534 LOADN                            R46 0
     2535 JUMPIFNOTLT                      R46 R45 ; [+40]
     2537 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2539 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2541 GETIMPORT                        R45 K4 [error]
     2543 GETUPVAL                         R46 0
     2544 GETTABLEKS                       R46 R46 K5 ["new"]
     2546 LOADK                            R48 K113 ["SyntaxError: "]
     2547 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2548 LOADK                            R51 K121 ["closing"]
     2549 LOADK                            R52 K88 ["]"]
     2550 LOADK                            R53 K88 ["]"]
     2551 NAMECALL                         R49 R49 K16 ["format"]
     2553 CALL                             R49 4 1
     2554 CONCAT                           R47 R48 R49
     2555 CALL                             R46 1 -1
     2556 CALL                             R45 -1 0
     2557 GETUPVAL                         R45 5
     2558 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2560 GETTABLEKS                       R46 R27 K21 ["output"]
     2562 LOADK                            R47 K89 ["["]
     2563 CALL                             R45 2 1
     2564 SETTABLEKS                       R45 R27 K21 ["output"]
     2566 GETTABLEKS                       R45 R27 K59 ["brackets"]
     2568 SUBK                             R45 R45 K53 [1]
     2569 SETTABLEKS                       R45 R27 K59 ["brackets"]
     2571 GETIMPORT                        R45 K117 [table.remove]
     2573 MOVE                             R46 R30
     2574 CALL                             R45 1 0
     2575 JUMPBACK                         ; [-44]
     2576 GETTABLEKS                       R45 R27 K61 ["parens"]
     2578 LOADN                            R46 0
     2579 JUMPIFNOTLT                      R46 R45 ; [+40]
     2581 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2583 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2585 GETIMPORT                        R45 K4 [error]
     2587 GETUPVAL                         R46 0
     2588 GETTABLEKS                       R46 R46 K5 ["new"]
     2590 LOADK                            R48 K113 ["SyntaxError: "]
     2591 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2592 LOADK                            R51 K121 ["closing"]
     2593 LOADK                            R52 K111 [")"]
     2594 LOADK                            R53 K111 [")"]
     2595 NAMECALL                         R49 R49 K16 ["format"]
     2597 CALL                             R49 4 1
     2598 CONCAT                           R47 R48 R49
     2599 CALL                             R46 1 -1
     2600 CALL                             R45 -1 0
     2601 GETUPVAL                         R45 5
     2602 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2604 GETTABLEKS                       R46 R27 K21 ["output"]
     2606 LOADK                            R47 K105 ["("]
     2607 CALL                             R45 2 1
     2608 SETTABLEKS                       R45 R27 K21 ["output"]
     2610 GETTABLEKS                       R45 R27 K61 ["parens"]
     2612 SUBK                             R45 R45 K53 [1]
     2613 SETTABLEKS                       R45 R27 K61 ["parens"]
     2615 GETIMPORT                        R45 K117 [table.remove]
     2617 MOVE                             R46 R30
     2618 CALL                             R45 1 0
     2619 JUMPBACK                         ; [-44]
     2620 GETTABLEKS                       R45 R27 K60 ["braces"]
     2622 LOADN                            R46 0
     2623 JUMPIFNOTLT                      R46 R45 ; [+40]
     2625 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2627 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2629 GETIMPORT                        R45 K4 [error]
     2631 GETUPVAL                         R46 0
     2632 GETTABLEKS                       R46 R46 K5 ["new"]
     2634 LOADK                            R48 K113 ["SyntaxError: "]
     2635 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2636 LOADK                            R51 K121 ["closing"]
     2637 LOADK                            R52 K135 ["}"]
     2638 LOADK                            R53 K135 ["}"]
     2639 NAMECALL                         R49 R49 K16 ["format"]
     2641 CALL                             R49 4 1
     2642 CONCAT                           R47 R48 R49
     2643 CALL                             R46 1 -1
     2644 CALL                             R45 -1 0
     2645 GETUPVAL                         R45 5
     2646 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2648 GETTABLEKS                       R46 R27 K21 ["output"]
     2650 LOADK                            R47 K129 ["{"]
     2651 CALL                             R45 2 1
     2652 SETTABLEKS                       R45 R27 K21 ["output"]
     2654 GETTABLEKS                       R45 R27 K60 ["braces"]
     2656 SUBK                             R45 R45 K53 [1]
     2657 SETTABLEKS                       R45 R27 K60 ["braces"]
     2659 GETIMPORT                        R45 K117 [table.remove]
     2661 MOVE                             R46 R30
     2662 CALL                             R45 1 0
     2663 JUMPBACK                         ; [-44]
     2664 GETTABLEKS                       R45 R2 K184 ["strictSlashes"]
     2666 JUMPIFEQKB                       R45 TRUE ; [+19]
     2668 GETTABLEKS                       R45 R31 K17 ["type"]
     2670 JUMPIFEQKS                       R45 K174 ["star"] ; [+5]
     2672 GETTABLEKS                       R45 R31 K17 ["type"]
     2674 JUMPIFNOTEQKS                    R45 K122 ["bracket"] ; [+11]
     2676 MOVE                             R45 R42
     2677 DUPTABLE                         R46 K194 [{["type"] = "maybe_slash", ["value"] = "", ["output"]}]
     2678 LOADK                            R47 K195 ["%s?"]
     2679 MOVE                             R49 R13
     2680 NAMECALL                         R47 R47 K16 ["format"]
     2682 CALL                             R47 2 1
     2683 SETTABLEKS                       R47 R46 K21 ["output"]
     2685 CALL                             R45 1 0
     2686 GETTABLEKS                       R45 R27 K56 ["backtrack"]
     2688 JUMPIFNOTEQKB                    R45 TRUE ; [+36]
     2690 LOADK                            R45 K20 [""]
     2691 SETTABLEKS                       R45 R27 K21 ["output"]
     2693 GETIMPORT                        R45 K141 [ipairs]
     2695 GETTABLEKS                       R46 R27 K64 ["tokens"]
     2697 CALL                             R45 1 3
     2698 FORGPREP_INEXT                   R45
     2699 GETTABLEKS                       R51 R27 K21 ["output"]
     2701 GETTABLEKS                       R53 R49 K21 ["output"]
     2703 JUMPIFEQKNIL                     R53 ; [+4]
     2705 GETTABLEKS                       R52 R49 K21 ["output"]
     2707 JUMP                             ; [+2]
     2708 GETTABLEKS                       R52 R49 K19 ["value"]
     2710 CONCAT                           R50 R51 R52
     2711 SETTABLEKS                       R50 R27 K21 ["output"]
     2713 GETTABLEKS                       R50 R49 K196 ["suffix"]
     2715 JUMPIFNOT                        R50 ; [+7]
     2716 GETTABLEKS                       R51 R27 K21 ["output"]
     2718 GETTABLEKS                       R52 R49 K196 ["suffix"]
     2720 CONCAT                           R50 R51 R52
     2721 SETTABLEKS                       R50 R27 K21 ["output"]
     2723 FORGLOOP                         R45 2 [inext] ; [-25]
     2725 CLOSEUPVALS                      R0
     2726 RETURN                           R27 1

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
