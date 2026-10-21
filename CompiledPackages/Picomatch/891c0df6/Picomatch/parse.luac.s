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
      367 JUMPIF                           R45 ; [+2169]
      368 MOVE                             R45 R35
      369 CALL                             R45 0 1
      370 MOVE                             R32 R45
      371 JUMPIFEQKS                       R32 K76 ["\0"] ; [+2164]
      373 JUMPIFNOTEQKS                    R32 K77 ["\\"] ; [+86]
      375 MOVE                             R45 R34
      376 CALL                             R45 0 1
      377 JUMPIFNOTEQKS                    R45 K78 ["/"] ; [+5]
      379 GETTABLEKS                       R46 R2 K43 ["bash"]
      381 JUMPIFNOTEQKB                    R46 TRUE ; [+2154]
      383 JUMPIFEQKS                       R45 K79 ["."] ; [+2152]
      385 JUMPIFEQKS                       R45 K80 [";"] ; [+2150]
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
      401 JUMP                             ; [+2134]
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
      459 JUMP                             ; [+2076]
      460 GETTABLEKS                       R45 R27 K59 ["brackets"]
      462 LOADN                            R46 0
      463 JUMPIFNOTLT                      R46 R45 ; [+179]
      465 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+9]
      467 GETTABLEKS                       R45 R31 K19 ["value"]
      469 JUMPIFEQKS                       R45 K89 ["["] ; [+5]
      471 GETTABLEKS                       R45 R31 K19 ["value"]
      473 JUMPIFNOTEQKS                    R45 K90 ["[^"] ; [+169]
      475 GETTABLEKS                       R45 R2 K91 ["posix"]
      477 JUMPIFEQKB                       R45 FALSE ; [+82]
      479 JUMPIFNOTEQKS                    R32 K92 [":"] ; [+80]
      481 GETUPVAL                         R45 7
      482 GETTABLEKS                       R45 R45 K93 ["slice"]
      484 GETTABLEKS                       R46 R31 K19 ["value"]
      486 LOADN                            R47 1
      487 CALL                             R45 2 1
      488 LOADK                            R48 K89 ["["]
      489 LOADN                            R49 1
      490 LOADB                            R50 1
      491 NAMECALL                         R46 R45 K94 ["find"]
      493 CALL                             R46 4 1
      494 JUMPIFEQKNIL                     R46 ; [+65]
      496 LOADB                            R46 1
      497 SETTABLEKS                       R46 R31 K91 ["posix"]
      499 LOADK                            R48 K92 [":"]
      500 LOADN                            R49 1
      501 LOADB                            R50 1
      502 NAMECALL                         R46 R45 K94 ["find"]
      504 CALL                             R46 4 1
      505 JUMPIFEQKNIL                     R46 ; [+54]
      507 GETUPVAL                         R46 7
      508 GETTABLEKS                       R46 R46 K95 ["lastIndexOf"]
      510 GETTABLEKS                       R47 R31 K19 ["value"]
      512 LOADK                            R48 K89 ["["]
      513 CALL                             R46 2 1
      514 GETUPVAL                         R47 7
      515 GETTABLEKS                       R47 R47 K93 ["slice"]
      517 GETTABLEKS                       R48 R31 K19 ["value"]
      519 LOADN                            R49 1
      520 MOVE                             R50 R46
      521 CALL                             R47 3 1
      522 GETUPVAL                         R48 7
      523 GETTABLEKS                       R48 R48 K93 ["slice"]
      525 GETTABLEKS                       R49 R31 K19 ["value"]
      527 ADDK                             R50 R46 K87 [2]
      528 CALL                             R48 2 1
      529 GETUPVAL                         R50 12
      530 GETTABLE                         R49 R50 R48
      531 JUMPIFNOT                        R49 ; [+28]
      532 MOVE                             R51 R47
      533 MOVE                             R52 R49
      534 CONCAT                           R50 R51 R52
      535 SETTABLEKS                       R50 R31 K19 ["value"]
      537 LOADB                            R50 1
      538 SETTABLEKS                       R50 R27 K56 ["backtrack"]
      540 MOVE                             R50 R35
      541 CALL                             R50 0 0
      542 GETUPVAL                         R50 4
      543 GETTABLEKS                       R50 R50 K24 ["toJSBoolean"]
      545 GETTABLEKS                       R51 R5 K21 ["output"]
      547 CALL                             R50 1 1
      548 JUMPIF                           R50 ; [+1987]
      549 GETUPVAL                         R50 13
      550 GETTABLEKS                       R50 R50 K96 ["indexOf"]
      552 MOVE                             R51 R6
      553 MOVE                             R52 R31
      554 CALL                             R50 2 1
      555 JUMPIFNOTEQKN                    R50 K87 [2] ; [+1980]
      557 SETTABLEKS                       R14 R5 K21 ["output"]
      559 JUMP                             ; [+1976]
      560 JUMPIFNOTEQKS                    R32 K89 ["["] ; [+5]
      562 MOVE                             R45 R34
      563 CALL                             R45 0 1
      564 JUMPIFNOTEQKS                    R45 K92 [":"] ; [+7]
      566 JUMPIFNOTEQKS                    R32 K97 ["-"] ; [+11]
      568 MOVE                             R45 R34
      569 CALL                             R45 0 1
      570 JUMPIFNOTEQKS                    R45 K88 ["]"] ; [+7]
      572 LOADK                            R45 K98 ["\\%s"]
      573 MOVE                             R47 R32
      574 NAMECALL                         R45 R45 K16 ["format"]
      576 CALL                             R45 2 1
      577 MOVE                             R32 R45
      578 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+15]
      580 GETTABLEKS                       R45 R31 K19 ["value"]
      582 JUMPIFEQKS                       R45 K89 ["["] ; [+5]
      584 GETTABLEKS                       R45 R31 K19 ["value"]
      586 JUMPIFNOTEQKS                    R45 K90 ["[^"] ; [+7]
      588 LOADK                            R45 K98 ["\\%s"]
      589 MOVE                             R47 R32
      590 NAMECALL                         R45 R45 K16 ["format"]
      592 CALL                             R45 2 1
      593 MOVE                             R32 R45
      594 GETTABLEKS                       R45 R2 K91 ["posix"]
      596 JUMPIFNOTEQKB                    R45 TRUE ; [+8]
      598 JUMPIFNOTEQKS                    R32 K99 ["!"] ; [+6]
      600 GETTABLEKS                       R45 R31 K19 ["value"]
      602 JUMPIFNOTEQKS                    R45 K89 ["["] ; [+2]
      604 LOADK                            R32 K100 ["^"]
      605 GETTABLEKS                       R46 R31 K19 ["value"]
      607 MOVE                             R47 R32
      608 CONCAT                           R45 R46 R47
      609 SETTABLEKS                       R45 R31 K19 ["value"]
      611 DUPTABLE                         R45 K101 [{"value"}]
      612 SETTABLEKS                       R32 R45 K19 ["value"]
      614 GETTABLEKS                       R47 R27 K21 ["output"]
      616 GETTABLEKS                       R49 R45 K21 ["output"]
      618 JUMPIFEQKNIL                     R49 ; [+4]
      620 GETTABLEKS                       R48 R45 K21 ["output"]
      622 JUMP                             ; [+2]
      623 GETTABLEKS                       R48 R45 K19 ["value"]
      625 CONCAT                           R46 R47 R48
      626 SETTABLEKS                       R46 R27 K21 ["output"]
      628 GETTABLEKS                       R46 R45 K19 ["value"]
      630 ORK                              R47 R46 K20 [""]
      631 GETTABLEKS                       R49 R27 K54 ["consumed"]
      633 MOVE                             R50 R47
      634 CONCAT                           R48 R49 R50
      635 SETTABLEKS                       R48 R27 K54 ["consumed"]
      637 GETTABLEKS                       R48 R27 K50 ["index"]
      639 ADDK                             R48 R48 K51 [0]
      640 SETTABLEKS                       R48 R27 K50 ["index"]
      642 JUMP                             ; [+1893]
      643 GETTABLEKS                       R45 R27 K62 ["quotes"]
      645 JUMPIFNOTEQKN                    R45 K53 [1] ; [+47]
      647 JUMPIFEQKS                       R32 K102 ["\""] ; [+45]
      649 GETUPVAL                         R45 5
      650 GETTABLEKS                       R45 R45 K103 ["escapeRegex"]
      652 MOVE                             R46 R32
      653 CALL                             R45 1 1
      654 MOVE                             R32 R45
      655 GETTABLEKS                       R46 R31 K19 ["value"]
      657 MOVE                             R47 R32
      658 CONCAT                           R45 R46 R47
      659 SETTABLEKS                       R45 R31 K19 ["value"]
      661 DUPTABLE                         R45 K101 [{"value"}]
      662 SETTABLEKS                       R32 R45 K19 ["value"]
      664 GETTABLEKS                       R47 R27 K21 ["output"]
      666 GETTABLEKS                       R49 R45 K21 ["output"]
      668 JUMPIFEQKNIL                     R49 ; [+4]
      670 GETTABLEKS                       R48 R45 K21 ["output"]
      672 JUMP                             ; [+2]
      673 GETTABLEKS                       R48 R45 K19 ["value"]
      675 CONCAT                           R46 R47 R48
      676 SETTABLEKS                       R46 R27 K21 ["output"]
      678 GETTABLEKS                       R46 R45 K19 ["value"]
      680 ORK                              R47 R46 K20 [""]
      681 GETTABLEKS                       R49 R27 K54 ["consumed"]
      683 MOVE                             R50 R47
      684 CONCAT                           R48 R49 R50
      685 SETTABLEKS                       R48 R27 K54 ["consumed"]
      687 GETTABLEKS                       R48 R27 K50 ["index"]
      689 ADDK                             R48 R48 K51 [0]
      690 SETTABLEKS                       R48 R27 K50 ["index"]
      692 JUMP                             ; [+1843]
      693 JUMPIFNOTEQKS                    R32 K102 ["\""] ; [+20]
      695 GETTABLEKS                       R46 R27 K62 ["quotes"]
      697 JUMPIFNOTEQKN                    R46 K53 [1] ; [+3]
      699 LOADN                            R45 0
      700 JUMP                             ; [+1]
      701 LOADN                            R45 1
      702 SETTABLEKS                       R45 R27 K62 ["quotes"]
      704 GETTABLEKS                       R45 R2 K104 ["keepQuotes"]
      706 JUMPIFNOTEQKB                    R45 TRUE ; [+1829]
      708 MOVE                             R45 R42
      709 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
      710 SETTABLEKS                       R32 R46 K19 ["value"]
      712 CALL                             R45 1 0
      713 JUMP                             ; [+1822]
      714 JUMPIFNOTEQKS                    R32 K105 ["("] ; [+19]
      716 GETTABLEKS                       R45 R27 K61 ["parens"]
      718 ADDK                             R45 R45 K53 [1]
      719 SETTABLEKS                       R45 R27 K61 ["parens"]
      721 FASTCALL2K                       TABLE_INSERT R30 K61 ; [+5]
      723 MOVE                             R46 R30
      724 LOADK                            R47 K61 ["parens"]
      725 GETIMPORT                        R45 K108 [table.insert]
      727 CALL                             R45 2 0
      728 MOVE                             R45 R42
      729 DUPTABLE                         R46 K110 [{["type"] = "paren", ["value"]}]
      730 SETTABLEKS                       R32 R46 K19 ["value"]
      732 CALL                             R45 1 0
      733 JUMP                             ; [+1802]
      734 JUMPIFNOTEQKS                    R32 K111 [")"] ; [+70]
      736 GETTABLEKS                       R45 R27 K61 ["parens"]
      738 JUMPIFNOTEQKN                    R45 K51 [0] ; [+21]
      740 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      742 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      744 GETIMPORT                        R45 K4 [error]
      746 GETUPVAL                         R46 0
      747 GETTABLEKS                       R46 R46 K5 ["new"]
      749 LOADK                            R48 K113 ["SyntaxError: "]
      750 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      751 LOADK                            R51 K115 ["opening"]
      752 LOADK                            R52 K105 ["("]
      753 LOADK                            R53 K105 ["("]
      754 NAMECALL                         R49 R49 K16 ["format"]
      756 CALL                             R49 4 1
      757 CONCAT                           R47 R48 R49
      758 CALL                             R46 1 -1
      759 CALL                             R45 -1 0
      760 LENGTH                           R46 R28
      761 GETTABLE                         R45 R28 R46
      762 JUMPIFEQKNIL                     R45 ; [+15]
      764 GETTABLEKS                       R46 R27 K61 ["parens"]
      766 GETTABLEKS                       R48 R45 K61 ["parens"]
      768 ADDK                             R47 R48 K53 [1]
      769 JUMPIFNOTEQ                      R46 R47 ; [+8]
      771 MOVE                             R46 R44
      772 GETIMPORT                        R47 K117 [table.remove]
      774 MOVE                             R48 R28
      775 CALL                             R47 1 1
      776 CALL                             R46 1 0
      777 JUMP                             ; [+1758]
      778 MOVE                             R46 R42
      779 DUPTABLE                         R47 K118 [{["type"] = "paren", ["value"], ["output"]}]
      780 SETTABLEKS                       R32 R47 K19 ["value"]
      782 GETUPVAL                         R49 4
      783 GETTABLEKS                       R49 R49 K24 ["toJSBoolean"]
      785 GETTABLEKS                       R50 R27 K61 ["parens"]
      787 CALL                             R49 1 1
      788 JUMPIFNOT                        R49 ; [+2]
      789 LOADK                            R48 K111 [")"]
      790 JUMP                             ; [+1]
      791 LOADK                            R48 K119 ["\\)"]
      792 SETTABLEKS                       R48 R47 K21 ["output"]
      794 CALL                             R46 1 0
      795 GETTABLEKS                       R46 R27 K61 ["parens"]
      797 SUBK                             R46 R46 K53 [1]
      798 SETTABLEKS                       R46 R27 K61 ["parens"]
      800 GETIMPORT                        R46 K117 [table.remove]
      802 MOVE                             R47 R30
      803 CALL                             R46 1 0
      804 JUMP                             ; [+1731]
      805 JUMPIFNOTEQKS                    R32 K89 ["["] ; [+71]
      807 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      809 JUMPIFEQKB                       R45 TRUE ; [+18]
      811 GETTABLEKS                       R48 R27 K50 ["index"]
      813 ADDK                             R47 R48 K53 [1]
      814 FASTCALL2                        STRING_SUB R0 R47 ; [+4]
      816 MOVE                             R46 R0
      817 GETIMPORT                        R45 K85 [string.sub]
      819 CALL                             R45 2 1
      820 LOADK                            R47 K88 ["]"]
      821 LOADN                            R48 1
      822 LOADB                            R49 1
      823 NAMECALL                         R45 R45 K94 ["find"]
      825 CALL                             R45 4 1
      826 JUMPIFNOTEQKNIL                  R45 ; [+32]
      828 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      830 JUMPIFEQKB                       R45 TRUE ; [+21]
      832 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      834 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      836 GETIMPORT                        R45 K4 [error]
      838 GETUPVAL                         R46 0
      839 GETTABLEKS                       R46 R46 K5 ["new"]
      841 LOADK                            R48 K113 ["SyntaxError: "]
      842 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      843 LOADK                            R51 K121 ["closing"]
      844 LOADK                            R52 K88 ["]"]
      845 LOADK                            R53 K88 ["]"]
      846 NAMECALL                         R49 R49 K16 ["format"]
      848 CALL                             R49 4 1
      849 CONCAT                           R47 R48 R49
      850 CALL                             R46 1 -1
      851 CALL                             R45 -1 0
      852 LOADK                            R45 K98 ["\\%s"]
      853 MOVE                             R47 R32
      854 NAMECALL                         R45 R45 K16 ["format"]
      856 CALL                             R45 2 1
      857 MOVE                             R32 R45
      858 JUMP                             ; [+12]
      859 GETTABLEKS                       R45 R27 K59 ["brackets"]
      861 ADDK                             R45 R45 K53 [1]
      862 SETTABLEKS                       R45 R27 K59 ["brackets"]
      864 FASTCALL2K                       TABLE_INSERT R30 K59 ; [+5]
      866 MOVE                             R46 R30
      867 LOADK                            R47 K59 ["brackets"]
      868 GETIMPORT                        R45 K108 [table.insert]
      870 CALL                             R45 2 0
      871 MOVE                             R45 R42
      872 DUPTABLE                         R46 K123 [{["type"] = "bracket", ["value"]}]
      873 SETTABLEKS                       R32 R46 K19 ["value"]
      875 CALL                             R45 1 0
      876 JUMP                             ; [+1659]
      877 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+204]
      879 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      881 JUMPIFEQKB                       R45 TRUE ; [+12]
      883 JUMPIFEQKNIL                     R31 ; [+23]
      885 GETTABLEKS                       R45 R31 K17 ["type"]
      887 JUMPIFNOTEQKS                    R45 K122 ["bracket"] ; [+19]
      889 GETTABLEKS                       R46 R31 K19 ["value"]
      891 LENGTH                           R45 R46
      892 JUMPIFNOTEQKN                    R45 K53 [1] ; [+14]
      894 MOVE                             R45 R42
      895 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
      896 SETTABLEKS                       R32 R46 K19 ["value"]
      898 LOADK                            R47 K98 ["\\%s"]
      899 MOVE                             R49 R32
      900 NAMECALL                         R47 R47 K16 ["format"]
      902 CALL                             R47 2 1
      903 SETTABLEKS                       R47 R46 K21 ["output"]
      905 CALL                             R45 1 0
      906 JUMP                             ; [+1629]
      907 GETTABLEKS                       R45 R27 K59 ["brackets"]
      909 JUMPIFNOTEQKN                    R45 K51 [0] ; [+34]
      911 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      913 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      915 GETIMPORT                        R45 K4 [error]
      917 GETUPVAL                         R46 0
      918 GETTABLEKS                       R46 R46 K5 ["new"]
      920 LOADK                            R48 K113 ["SyntaxError: "]
      921 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      922 LOADK                            R51 K115 ["opening"]
      923 LOADK                            R52 K89 ["["]
      924 LOADK                            R53 K89 ["["]
      925 NAMECALL                         R49 R49 K16 ["format"]
      927 CALL                             R49 4 1
      928 CONCAT                           R47 R48 R49
      929 CALL                             R46 1 -1
      930 CALL                             R45 -1 0
      931 MOVE                             R45 R42
      932 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
      933 SETTABLEKS                       R32 R46 K19 ["value"]
      935 LOADK                            R47 K98 ["\\%s"]
      936 MOVE                             R49 R32
      937 NAMECALL                         R47 R47 K16 ["format"]
      939 CALL                             R47 2 1
      940 SETTABLEKS                       R47 R46 K21 ["output"]
      942 CALL                             R45 1 0
      943 JUMP                             ; [+1592]
      944 GETTABLEKS                       R45 R27 K59 ["brackets"]
      946 SUBK                             R45 R45 K53 [1]
      947 SETTABLEKS                       R45 R27 K59 ["brackets"]
      949 GETIMPORT                        R45 K117 [table.remove]
      951 MOVE                             R46 R30
      952 CALL                             R45 1 0
      953 GETUPVAL                         R45 7
      954 GETTABLEKS                       R45 R45 K93 ["slice"]
      956 GETTABLEKS                       R46 R31 K19 ["value"]
      958 LOADN                            R47 2
      959 CALL                             R45 2 1
      960 GETTABLEKS                       R46 R31 K91 ["posix"]
      962 JUMPIFEQKB                       R46 TRUE ; [+22]
      964 LOADN                            R48 1
      965 LOADN                            R49 1
      966 NAMECALL                         R46 R45 K84 ["sub"]
      968 CALL                             R46 3 1
      969 JUMPIFNOTEQKS                    R46 K100 ["^"] ; [+15]
      971 LOADK                            R48 K78 ["/"]
      972 LOADN                            R49 1
      973 LOADB                            R50 1
      974 NAMECALL                         R46 R45 K94 ["find"]
      976 CALL                             R46 4 1
      977 JUMPIFNOTEQKNIL                  R46 ; [+7]
      979 LOADK                            R46 K125 ["/%s"]
      980 MOVE                             R48 R32
      981 NAMECALL                         R46 R46 K16 ["format"]
      983 CALL                             R46 2 1
      984 MOVE                             R32 R46
      985 GETTABLEKS                       R47 R31 K19 ["value"]
      987 MOVE                             R48 R32
      988 CONCAT                           R46 R47 R48
      989 SETTABLEKS                       R46 R31 K19 ["value"]
      991 DUPTABLE                         R46 K101 [{"value"}]
      992 SETTABLEKS                       R32 R46 K19 ["value"]
      994 GETTABLEKS                       R48 R27 K21 ["output"]
      996 GETTABLEKS                       R50 R46 K21 ["output"]
      998 JUMPIFEQKNIL                     R50 ; [+4]
     1000 GETTABLEKS                       R49 R46 K21 ["output"]
     1002 JUMP                             ; [+2]
     1003 GETTABLEKS                       R49 R46 K19 ["value"]
     1005 CONCAT                           R47 R48 R49
     1006 SETTABLEKS                       R47 R27 K21 ["output"]
     1008 GETTABLEKS                       R47 R46 K19 ["value"]
     1010 ORK                              R48 R47 K20 [""]
     1011 GETTABLEKS                       R50 R27 K54 ["consumed"]
     1013 MOVE                             R51 R48
     1014 CONCAT                           R49 R50 R51
     1015 SETTABLEKS                       R49 R27 K54 ["consumed"]
     1017 GETTABLEKS                       R49 R27 K50 ["index"]
     1019 ADDK                             R49 R49 K51 [0]
     1020 SETTABLEKS                       R49 R27 K50 ["index"]
     1022 GETTABLEKS                       R46 R2 K126 ["literalBrackets"]
     1024 JUMPIFEQKB                       R46 FALSE ; [+1511]
     1026 GETUPVAL                         R46 5
     1027 GETTABLEKS                       R46 R46 K127 ["hasRegexChars"]
     1029 MOVE                             R47 R45
     1030 CALL                             R46 1 1
     1031 JUMPIF                           R46 ; [+1504]
     1032 GETUPVAL                         R46 5
     1033 GETTABLEKS                       R46 R46 K103 ["escapeRegex"]
     1035 GETTABLEKS                       R47 R31 K19 ["value"]
     1037 CALL                             R46 1 1
     1038 GETUPVAL                         R47 7
     1039 GETTABLEKS                       R47 R47 K93 ["slice"]
     1041 GETTABLEKS                       R48 R27 K21 ["output"]
     1043 LOADN                            R49 1
     1044 GETTABLEKS                       R52 R31 K19 ["value"]
     1046 LENGTH                           R51 R52
     1047 MINUS                            R50 R51
     1048 CALL                             R47 3 1
     1049 SETTABLEKS                       R47 R27 K21 ["output"]
     1051 GETTABLEKS                       R47 R2 K126 ["literalBrackets"]
     1053 JUMPIFNOTEQKB                    R47 TRUE ; [+10]
     1055 GETTABLEKS                       R48 R27 K21 ["output"]
     1057 MOVE                             R49 R46
     1058 CONCAT                           R47 R48 R49
     1059 SETTABLEKS                       R47 R27 K21 ["output"]
     1061 SETTABLEKS                       R46 R31 K19 ["value"]
     1063 JUMP                             ; [+1472]
     1064 LOADK                            R47 K128 ["(%s%s|%s)"]
     1065 MOVE                             R49 R7
     1066 MOVE                             R50 R46
     1067 GETTABLEKS                       R51 R31 K19 ["value"]
     1069 NAMECALL                         R47 R47 K16 ["format"]
     1071 CALL                             R47 4 1
     1072 SETTABLEKS                       R47 R31 K19 ["value"]
     1074 GETTABLEKS                       R48 R27 K21 ["output"]
     1076 GETTABLEKS                       R49 R31 K19 ["value"]
     1078 CONCAT                           R47 R48 R49
     1079 SETTABLEKS                       R47 R27 K21 ["output"]
     1081 JUMP                             ; [+1454]
     1082 JUMPIFNOTEQKS                    R32 K129 ["{"] ; [+41]
     1084 GETTABLEKS                       R45 R2 K130 ["nobrace"]
     1086 JUMPIFEQKB                       R45 TRUE ; [+37]
     1088 GETTABLEKS                       R45 R27 K60 ["braces"]
     1090 ADDK                             R45 R45 K53 [1]
     1091 SETTABLEKS                       R45 R27 K60 ["braces"]
     1093 FASTCALL2K                       TABLE_INSERT R30 K60 ; [+5]
     1095 MOVE                             R46 R30
     1096 LOADK                            R47 K60 ["braces"]
     1097 GETIMPORT                        R45 K108 [table.insert]
     1099 CALL                             R45 2 0
     1100 DUPTABLE                         R45 K134 [{["type"] = "brace", ["value"], ["output"] = "(", ["outputIndex"], ["tokensIndex"]}]
     1101 SETTABLEKS                       R32 R45 K19 ["value"]
     1103 GETTABLEKS                       R47 R27 K21 ["output"]
     1105 LENGTH                           R46 R47
     1106 SETTABLEKS                       R46 R45 K132 ["outputIndex"]
     1108 GETTABLEKS                       R47 R27 K64 ["tokens"]
     1110 LENGTH                           R46 R47
     1111 SETTABLEKS                       R46 R45 K133 ["tokensIndex"]
     1113 FASTCALL2                        TABLE_INSERT R29 R45 ; [+5]
     1115 MOVE                             R47 R29
     1116 MOVE                             R48 R45
     1117 GETIMPORT                        R46 K108 [table.insert]
     1119 CALL                             R46 2 0
     1120 MOVE                             R46 R42
     1121 MOVE                             R47 R45
     1122 CALL                             R46 1 0
     1123 JUMP                             ; [+1412]
     1124 JUMPIFNOTEQKS                    R32 K135 ["}"] ; [+151]
     1126 LENGTH                           R46 R29
     1127 GETTABLE                         R45 R29 R46
     1128 GETTABLEKS                       R46 R2 K130 ["nobrace"]
     1130 JUMPIFEQKB                       R46 TRUE ; [+7]
     1132 GETUPVAL                         R46 4
     1133 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1135 MOVE                             R47 R45
     1136 CALL                             R46 1 1
     1137 JUMPIF                           R46 ; [+8]
     1138 MOVE                             R46 R42
     1139 DUPTABLE                         R47 K124 [{["type"] = "text", ["value"], ["output"]}]
     1140 SETTABLEKS                       R32 R47 K19 ["value"]
     1142 SETTABLEKS                       R32 R47 K21 ["output"]
     1144 CALL                             R46 1 0
     1145 JUMP                             ; [+1390]
     1146 LOADK                            R46 K111 [")"]
     1147 GETTABLEKS                       R47 R45 K136 ["dots"]
     1149 JUMPIFNOTEQKB                    R47 TRUE ; [+45]
     1151 GETUPVAL                         R47 13
     1152 GETTABLEKS                       R47 R47 K93 ["slice"]
     1154 MOVE                             R48 R6
     1155 CALL                             R47 1 1
     1156 NEWTABLE                         R48 0 0
     1158 LENGTH                           R51 R47
     1159 LOADN                            R49 1
     1160 LOADN                            R50 -1
     1161 FORNPREP                         R49
     1162 GETIMPORT                        R52 K117 [table.remove]
     1164 MOVE                             R53 R6
     1165 CALL                             R52 1 0
     1166 GETTABLE                         R52 R47 R51
     1167 GETTABLEKS                       R52 R52 K17 ["type"]
     1169 JUMPIFEQKS                       R52 K131 ["brace"] ; [+17]
     1171 GETTABLE                         R52 R47 R51
     1172 GETTABLEKS                       R52 R52 K17 ["type"]
     1174 JUMPIFEQKS                       R52 K136 ["dots"] ; [+11]
     1176 LOADN                            R54 1
     1177 GETTABLE                         R55 R47 R51
     1178 GETTABLEKS                       R55 R55 K19 ["value"]
     1180 FASTCALL3                        TABLE_INSERT R48 R54 R55
     1182 MOVE                             R53 R48
     1183 GETIMPORT                        R52 K108 [table.insert]
     1185 CALL                             R52 3 0
     1186 FORNLOOP                         R49
     1187 GETUPVAL                         R49 14
     1188 MOVE                             R50 R48
     1189 MOVE                             R51 R2
     1190 CALL                             R49 2 1
     1191 MOVE                             R46 R49
     1192 LOADB                            R49 1
     1193 SETTABLEKS                       R49 R27 K56 ["backtrack"]
     1195 GETTABLEKS                       R47 R45 K137 ["comma"]
     1197 JUMPIFEQKB                       R47 TRUE ; [+57]
     1199 GETTABLEKS                       R47 R45 K136 ["dots"]
     1201 JUMPIFEQKB                       R47 TRUE ; [+53]
     1203 GETUPVAL                         R47 7
     1204 GETTABLEKS                       R47 R47 K93 ["slice"]
     1206 GETTABLEKS                       R48 R27 K21 ["output"]
     1208 LOADN                            R49 1
     1209 GETTABLEKS                       R50 R45 K132 ["outputIndex"]
     1211 CALL                             R47 3 1
     1212 GETUPVAL                         R48 13
     1213 GETTABLEKS                       R48 R48 K93 ["slice"]
     1215 GETTABLEKS                       R49 R27 K64 ["tokens"]
     1217 GETTABLEKS                       R50 R45 K133 ["tokensIndex"]
     1219 CALL                             R48 2 1
     1220 LOADK                            R49 K138 ["\\{"]
     1221 SETTABLEKS                       R49 R45 K21 ["output"]
     1223 GETTABLEKS                       R49 R45 K21 ["output"]
     1225 SETTABLEKS                       R49 R45 K19 ["value"]
     1227 LOADK                            R46 K139 ["\\}"]
     1228 MOVE                             R32 R46
     1229 SETTABLEKS                       R47 R27 K21 ["output"]
     1231 GETIMPORT                        R49 K141 [ipairs]
     1233 MOVE                             R50 R48
     1234 CALL                             R49 1 3
     1235 FORGPREP_INEXT                   R49
     1236 GETTABLEKS                       R55 R27 K21 ["output"]
     1238 GETUPVAL                         R57 4
     1239 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     1241 GETTABLEKS                       R58 R53 K21 ["output"]
     1243 CALL                             R57 1 1
     1244 JUMPIFNOT                        R57 ; [+3]
     1245 GETTABLEKS                       R56 R53 K21 ["output"]
     1247 JUMP                             ; [+2]
     1248 GETTABLEKS                       R56 R53 K19 ["value"]
     1250 CONCAT                           R54 R55 R56
     1251 SETTABLEKS                       R54 R27 K21 ["output"]
     1253 FORGLOOP                         R49 2 [inext] ; [-18]
     1255 MOVE                             R47 R42
     1256 DUPTABLE                         R48 K142 [{["type"] = "brace", ["value"], ["output"]}]
     1257 SETTABLEKS                       R32 R48 K19 ["value"]
     1259 SETTABLEKS                       R46 R48 K21 ["output"]
     1261 CALL                             R47 1 0
     1262 GETTABLEKS                       R47 R27 K60 ["braces"]
     1264 SUBK                             R47 R47 K53 [1]
     1265 SETTABLEKS                       R47 R27 K60 ["braces"]
     1267 GETIMPORT                        R47 K117 [table.remove]
     1269 MOVE                             R48 R30
     1270 CALL                             R47 1 0
     1271 GETIMPORT                        R47 K117 [table.remove]
     1273 MOVE                             R48 R29
     1274 CALL                             R47 1 0
     1275 JUMP                             ; [+1260]
     1276 JUMPIFNOTEQKS                    R32 K143 ["|"] ; [+18]
     1278 LENGTH                           R45 R28
     1279 LOADN                            R46 0
     1280 JUMPIFNOTLT                      R46 R45 ; [+8]
     1282 LENGTH                           R46 R28
     1283 GETTABLE                         R45 R28 R46
     1284 GETTABLEKS                       R46 R45 K144 ["conditions"]
     1286 ADDK                             R46 R46 K53 [1]
     1287 SETTABLEKS                       R46 R45 K144 ["conditions"]
     1289 MOVE                             R45 R42
     1290 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
     1291 SETTABLEKS                       R32 R46 K19 ["value"]
     1293 CALL                             R45 1 0
     1294 JUMP                             ; [+1241]
     1295 JUMPIFNOTEQKS                    R32 K145 [","] ; [+26]
     1297 MOVE                             R45 R32
     1298 LENGTH                           R47 R29
     1299 GETTABLE                         R46 R29 R47
     1300 GETUPVAL                         R47 4
     1301 GETTABLEKS                       R47 R47 K24 ["toJSBoolean"]
     1303 MOVE                             R48 R46
     1304 CALL                             R47 1 1
     1305 JUMPIFNOT                        R47 ; [+8]
     1306 LENGTH                           R48 R30
     1307 GETTABLE                         R47 R30 R48
     1308 JUMPIFNOTEQKS                    R47 K60 ["braces"] ; [+5]
     1310 LOADB                            R47 1
     1311 SETTABLEKS                       R47 R46 K137 ["comma"]
     1313 LOADK                            R45 K143 ["|"]
     1314 MOVE                             R47 R42
     1315 DUPTABLE                         R48 K146 [{["type"] = "comma", ["value"], ["output"]}]
     1316 SETTABLEKS                       R32 R48 K19 ["value"]
     1318 SETTABLEKS                       R45 R48 K21 ["output"]
     1320 CALL                             R47 1 0
     1321 JUMP                             ; [+1214]
     1322 JUMPIFNOTEQKS                    R32 K78 ["/"] ; [+37]
     1324 GETTABLEKS                       R45 R31 K17 ["type"]
     1326 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+25]
     1328 GETTABLEKS                       R45 R27 K50 ["index"]
     1330 GETTABLEKS                       R47 R27 K52 ["start"]
     1332 ADDK                             R46 R47 K53 [1]
     1333 JUMPIFNOTEQ                      R45 R46 ; [+18]
     1335 GETTABLEKS                       R46 R27 K50 ["index"]
     1337 ADDK                             R45 R46 K53 [1]
     1338 SETTABLEKS                       R45 R27 K52 ["start"]
     1340 LOADK                            R45 K20 [""]
     1341 SETTABLEKS                       R45 R27 K54 ["consumed"]
     1343 LOADK                            R45 K20 [""]
     1344 SETTABLEKS                       R45 R27 K21 ["output"]
     1346 GETIMPORT                        R45 K117 [table.remove]
     1348 MOVE                             R46 R6
     1349 CALL                             R45 1 0
     1350 MOVE                             R31 R5
     1351 JUMP                             ; [+1184]
     1352 MOVE                             R45 R42
     1353 DUPTABLE                         R46 K148 [{["type"] = "slash", ["value"], ["output"]}]
     1354 SETTABLEKS                       R32 R46 K19 ["value"]
     1356 SETTABLEKS                       R13 R46 K21 ["output"]
     1358 CALL                             R45 1 0
     1359 JUMP                             ; [+1176]
     1360 JUMPIFNOTEQKS                    R32 K79 ["."] ; [+68]
     1362 GETTABLEKS                       R45 R27 K60 ["braces"]
     1364 LOADN                            R46 0
     1365 JUMPIFNOTLT                      R46 R45 ; [+32]
     1367 GETTABLEKS                       R45 R31 K17 ["type"]
     1369 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+28]
     1371 GETTABLEKS                       R45 R31 K19 ["value"]
     1373 JUMPIFNOTEQKS                    R45 K79 ["."] ; [+3]
     1375 SETTABLEKS                       R11 R31 K21 ["output"]
     1377 LENGTH                           R46 R29
     1378 GETTABLE                         R45 R29 R46
     1379 LOADK                            R46 K136 ["dots"]
     1380 SETTABLEKS                       R46 R31 K17 ["type"]
     1382 GETTABLEKS                       R47 R31 K21 ["output"]
     1384 MOVE                             R48 R32
     1385 CONCAT                           R46 R47 R48
     1386 SETTABLEKS                       R46 R31 K21 ["output"]
     1388 GETTABLEKS                       R47 R31 K19 ["value"]
     1390 MOVE                             R48 R32
     1391 CONCAT                           R46 R47 R48
     1392 SETTABLEKS                       R46 R31 K19 ["value"]
     1394 LOADB                            R46 1
     1395 SETTABLEKS                       R46 R45 K136 ["dots"]
     1397 JUMP                             ; [+1138]
     1398 GETTABLEKS                       R46 R27 K60 ["braces"]
     1400 GETTABLEKS                       R47 R27 K61 ["parens"]
     1402 ADD                              R45 R46 R47
     1403 JUMPIFNOTEQKN                    R45 K51 [0] ; [+17]
     1405 GETTABLEKS                       R45 R31 K17 ["type"]
     1407 JUMPIFEQKS                       R45 K18 ["bos"] ; [+13]
     1409 GETTABLEKS                       R45 R31 K17 ["type"]
     1411 JUMPIFEQKS                       R45 K147 ["slash"] ; [+9]
     1413 MOVE                             R45 R42
     1414 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
     1415 SETTABLEKS                       R32 R46 K19 ["value"]
     1417 SETTABLEKS                       R11 R46 K21 ["output"]
     1419 CALL                             R45 1 0
     1420 JUMP                             ; [+1115]
     1421 MOVE                             R45 R42
     1422 DUPTABLE                         R46 K149 [{["type"] = "dot", ["value"], ["output"]}]
     1423 SETTABLEKS                       R32 R46 K19 ["value"]
     1425 SETTABLEKS                       R11 R46 K21 ["output"]
     1427 CALL                             R45 1 0
     1428 JUMP                             ; [+1107]
     1429 JUMPIFNOTEQKS                    R32 K150 ["?"] ; [+132]
     1431 GETUPVAL                         R45 4
     1432 GETTABLEKS                       R45 R45 K24 ["toJSBoolean"]
     1434 MOVE                             R46 R31
     1435 CALL                             R45 1 1
     1436 JUMPIFNOT                        R45 ; [+6]
     1437 GETTABLEKS                       R46 R31 K19 ["value"]
     1439 JUMPIFEQKS                       R46 K105 ["("] ; [+2]
     1441 LOADB                            R45 0 +1
     1442 LOADB                            R45 1
     1443 JUMPIF                           R45 ; [+18]
     1444 GETTABLEKS                       R46 R2 K48 ["noextglob"]
     1446 JUMPIFEQKB                       R46 TRUE ; [+15]
     1448 MOVE                             R46 R34
     1449 CALL                             R46 0 1
     1450 JUMPIFNOTEQKS                    R46 K105 ["("] ; [+11]
     1452 MOVE                             R46 R34
     1453 LOADN                            R47 2
     1454 CALL                             R46 1 1
     1455 JUMPIFEQKS                       R46 K150 ["?"] ; [+6]
     1457 MOVE                             R46 R43
     1458 LOADK                            R47 K151 ["qmark"]
     1459 MOVE                             R48 R32
     1460 CALL                             R46 2 0
     1461 JUMP                             ; [+1074]
     1462 GETUPVAL                         R46 4
     1463 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1465 MOVE                             R47 R31
     1466 CALL                             R46 1 1
     1467 JUMPIFNOT                        R46 ; [+66]
     1468 GETTABLEKS                       R46 R31 K17 ["type"]
     1470 JUMPIFNOTEQKS                    R46 K109 ["paren"] ; [+63]
     1472 MOVE                             R46 R34
     1473 CALL                             R46 0 1
     1474 MOVE                             R47 R32
     1475 JUMPIFNOTEQKS                    R46 K152 ["<"] ; [+14]
     1477 GETUPVAL                         R48 5
     1478 GETTABLEKS                       R48 R48 K153 ["supportsLookbehinds"]
     1480 CALL                             R48 0 1
     1481 JUMPIF                           R48 ; [+8]
     1482 GETIMPORT                        R48 K4 [error]
     1484 GETUPVAL                         R49 0
     1485 GETTABLEKS                       R49 R49 K5 ["new"]
     1487 LOADK                            R50 K154 ["Node.js v10 or higher is required for regex lookbehinds"]
     1488 CALL                             R49 1 -1
     1489 CALL                             R48 -1 0
     1490 GETTABLEKS                       R48 R31 K19 ["value"]
     1492 JUMPIFNOTEQKS                    R48 K105 ["("] ; [+9]
     1494 GETUPVAL                         R48 8
     1495 LOADK                            R49 K155 ["[!=<:]"]
     1496 CALL                             R48 1 1
     1497 MOVE                             R50 R46
     1498 NAMECALL                         R48 R48 K71 ["test"]
     1500 CALL                             R48 2 1
     1501 JUMPIFNOT                        R48 ; [+18]
     1502 JUMPIFNOTEQKS                    R46 K152 ["<"] ; [+23]
     1504 GETUPVAL                         R48 8
     1505 LOADK                            R49 K156 ["<([!=]|\\w+>)"]
     1506 CALL                             R48 1 1
     1507 GETTABLEKS                       R53 R27 K50 ["index"]
     1509 ADDK                             R52 R53 K53 [1]
     1510 FASTCALL2                        STRING_SUB R0 R52 ; [+4]
     1512 MOVE                             R51 R0
     1513 GETIMPORT                        R50 K85 [string.sub]
     1515 CALL                             R50 2 1
     1516 NAMECALL                         R48 R48 K71 ["test"]
     1518 CALL                             R48 2 1
     1519 JUMPIF                           R48 ; [+6]
     1520 LOADK                            R48 K98 ["\\%s"]
     1521 MOVE                             R50 R32
     1522 NAMECALL                         R48 R48 K16 ["format"]
     1524 CALL                             R48 2 1
     1525 MOVE                             R47 R48
     1526 MOVE                             R48 R42
     1527 DUPTABLE                         R49 K124 [{["type"] = "text", ["value"], ["output"]}]
     1528 SETTABLEKS                       R32 R49 K19 ["value"]
     1530 SETTABLEKS                       R47 R49 K21 ["output"]
     1532 CALL                             R48 1 0
     1533 JUMP                             ; [+1002]
     1534 GETTABLEKS                       R46 R2 K42 ["dot"]
     1536 JUMPIFEQKB                       R46 TRUE ; [+17]
     1538 GETTABLEKS                       R46 R31 K17 ["type"]
     1540 JUMPIFEQKS                       R46 K147 ["slash"] ; [+5]
     1542 GETTABLEKS                       R46 R31 K17 ["type"]
     1544 JUMPIFNOTEQKS                    R46 K18 ["bos"] ; [+9]
     1546 MOVE                             R46 R42
     1547 DUPTABLE                         R47 K157 [{["type"] = "qmark", ["value"], ["output"]}]
     1548 SETTABLEKS                       R32 R47 K19 ["value"]
     1550 SETTABLEKS                       R20 R47 K21 ["output"]
     1552 CALL                             R46 1 0
     1553 JUMP                             ; [+982]
     1554 MOVE                             R46 R42
     1555 DUPTABLE                         R47 K157 [{["type"] = "qmark", ["value"], ["output"]}]
     1556 SETTABLEKS                       R32 R47 K19 ["value"]
     1558 SETTABLEKS                       R19 R47 K21 ["output"]
     1560 CALL                             R46 1 0
     1561 JUMP                             ; [+974]
     1562 JUMPIFNOTEQKS                    R32 K99 ["!"] ; [+40]
     1564 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1566 JUMPIFEQKB                       R45 TRUE ; [+25]
     1568 MOVE                             R45 R34
     1569 CALL                             R45 0 1
     1570 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+21]
     1572 MOVE                             R45 R34
     1573 LOADN                            R46 2
     1574 CALL                             R45 1 1
     1575 JUMPIFNOTEQKS                    R45 K150 ["?"] ; [+11]
     1577 GETUPVAL                         R45 8
     1578 LOADK                            R46 K155 ["[!=<:]"]
     1579 CALL                             R45 1 1
     1580 MOVE                             R47 R34
     1581 LOADN                            R48 3
     1582 CALL                             R47 1 -1
     1583 NAMECALL                         R45 R45 K71 ["test"]
     1585 CALL                             R45 -1 1
     1586 JUMPIF                           R45 ; [+5]
     1587 MOVE                             R45 R43
     1588 LOADK                            R46 K158 ["negate"]
     1589 MOVE                             R47 R32
     1590 CALL                             R45 2 0
     1591 JUMP                             ; [+944]
     1592 GETTABLEKS                       R45 R2 K159 ["nonegate"]
     1594 JUMPIFEQKB                       R45 TRUE ; [+8]
     1596 GETTABLEKS                       R45 R27 K50 ["index"]
     1598 JUMPIFNOTEQKN                    R45 K53 [1] ; [+4]
     1600 MOVE                             R45 R39
     1601 CALL                             R45 0 0
     1602 JUMP                             ; [+933]
     1603 JUMPIFNOTEQKS                    R32 K160 ["+"] ; [+68]
     1605 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1607 JUMPIFEQKB                       R45 TRUE ; [+15]
     1609 MOVE                             R45 R34
     1610 CALL                             R45 0 1
     1611 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+11]
     1613 MOVE                             R45 R34
     1614 LOADN                            R46 2
     1615 CALL                             R45 1 1
     1616 JUMPIFEQKS                       R45 K150 ["?"] ; [+6]
     1618 MOVE                             R45 R43
     1619 LOADK                            R46 K161 ["plus"]
     1620 MOVE                             R47 R32
     1621 CALL                             R45 2 0
     1622 JUMP                             ; [+913]
     1623 JUMPIFEQKNIL                     R31 ; [+5]
     1625 GETTABLEKS                       R45 R31 K19 ["value"]
     1627 JUMPIFEQKS                       R45 K105 ["("] ; [+5]
     1629 GETTABLEKS                       R45 R2 K162 ["regex"]
     1631 JUMPIFNOTEQKB                    R45 FALSE ; [+9]
     1633 MOVE                             R45 R42
     1634 DUPTABLE                         R46 K163 [{["type"] = "plus", ["value"], ["output"]}]
     1635 SETTABLEKS                       R32 R46 K19 ["value"]
     1637 SETTABLEKS                       R12 R46 K21 ["output"]
     1639 CALL                             R45 1 0
     1640 JUMP                             ; [+895]
     1641 JUMPIFEQKNIL                     R31 ; [+13]
     1643 GETTABLEKS                       R45 R31 K17 ["type"]
     1645 JUMPIFEQKS                       R45 K122 ["bracket"] ; [+14]
     1647 GETTABLEKS                       R45 R31 K17 ["type"]
     1649 JUMPIFEQKS                       R45 K109 ["paren"] ; [+10]
     1651 GETTABLEKS                       R45 R31 K17 ["type"]
     1653 JUMPIFEQKS                       R45 K131 ["brace"] ; [+6]
     1655 GETTABLEKS                       R45 R27 K61 ["parens"]
     1657 LOADN                            R46 0
     1658 JUMPIFNOTLT                      R46 R45 ; [+7]
     1660 MOVE                             R45 R42
     1661 DUPTABLE                         R46 K164 [{["type"] = "plus", ["value"]}]
     1662 SETTABLEKS                       R32 R46 K19 ["value"]
     1664 CALL                             R45 1 0
     1665 JUMP                             ; [+870]
     1666 MOVE                             R45 R42
     1667 DUPTABLE                         R46 K164 [{["type"] = "plus", ["value"]}]
     1668 SETTABLEKS                       R12 R46 K19 ["value"]
     1670 CALL                             R45 1 0
     1671 JUMP                             ; [+864]
     1672 JUMPIFNOTEQKS                    R32 K165 ["@"] ; [+26]
     1674 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1676 JUMPIFEQKB                       R45 TRUE ; [+16]
     1678 MOVE                             R45 R34
     1679 CALL                             R45 0 1
     1680 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+12]
     1682 MOVE                             R45 R34
     1683 LOADN                            R46 2
     1684 CALL                             R45 1 1
     1685 JUMPIFEQKS                       R45 K150 ["?"] ; [+7]
     1687 MOVE                             R45 R42
     1688 DUPTABLE                         R46 K169 [{["type"] = "at", ["extglob"] = True, ["value"], ["output"] = ""}]
     1689 SETTABLEKS                       R32 R46 K19 ["value"]
     1691 CALL                             R45 1 0
     1692 JUMP                             ; [+843]
     1693 MOVE                             R45 R42
     1694 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
     1695 SETTABLEKS                       R32 R46 K19 ["value"]
     1697 CALL                             R45 1 0
     1698 JUMP                             ; [+837]
     1699 JUMPIFEQKS                       R32 K170 ["*"] ; [+41]
     1701 JUMPIFEQKS                       R32 K171 ["$"] ; [+3]
     1703 JUMPIFNOTEQKS                    R32 K100 ["^"] ; [+7]
     1705 LOADK                            R45 K98 ["\\%s"]
     1706 MOVE                             R47 R32
     1707 NAMECALL                         R45 R45 K16 ["format"]
     1709 CALL                             R45 2 1
     1710 MOVE                             R32 R45
     1711 GETIMPORT                        R45 K173 [string.match]
     1713 GETTABLEKS                       R49 R27 K50 ["index"]
     1715 ADDK                             R48 R49 K53 [1]
     1716 FASTCALL2                        STRING_SUB R0 R48 ; [+4]
     1718 MOVE                             R47 R0
     1719 GETIMPORT                        R46 K85 [string.sub]
     1721 CALL                             R46 2 1
     1722 GETUPVAL                         R47 15
     1723 CALL                             R45 2 1
     1724 JUMPIFEQKNIL                     R45 ; [+10]
     1726 MOVE                             R46 R32
     1727 MOVE                             R47 R45
     1728 CONCAT                           R32 R46 R47
     1729 GETTABLEKS                       R46 R27 K50 ["index"]
     1731 LENGTH                           R47 R45
     1732 ADD                              R46 R46 R47
     1733 SETTABLEKS                       R46 R27 K50 ["index"]
     1735 MOVE                             R46 R42
     1736 DUPTABLE                         R47 K82 [{["type"] = "text", ["value"]}]
     1737 SETTABLEKS                       R32 R47 K19 ["value"]
     1739 CALL                             R46 1 0
     1740 JUMP                             ; [+795]
     1741 JUMPIFEQKNIL                     R31 ; [+43]
     1743 GETTABLEKS                       R45 R31 K17 ["type"]
     1745 JUMPIFEQKS                       R45 K63 ["globstar"] ; [+5]
     1747 GETTABLEKS                       R45 R31 K174 ["star"]
     1749 JUMPIFNOTEQKB                    R45 TRUE ; [+35]
     1751 LOADK                            R45 K174 ["star"]
     1752 SETTABLEKS                       R45 R31 K17 ["type"]
     1754 LOADB                            R45 1
     1755 SETTABLEKS                       R45 R31 K174 ["star"]
     1757 GETTABLEKS                       R46 R31 K19 ["value"]
     1759 MOVE                             R47 R32
     1760 CONCAT                           R45 R46 R47
     1761 SETTABLEKS                       R45 R31 K19 ["value"]
     1763 SETTABLEKS                       R26 R31 K21 ["output"]
     1765 LOADB                            R45 1
     1766 SETTABLEKS                       R45 R27 K56 ["backtrack"]
     1768 LOADB                            R45 1
     1769 SETTABLEKS                       R45 R27 K63 ["globstar"]
     1771 MOVE                             R45 R32
     1772 ORK                              R46 R45 K20 [""]
     1773 GETTABLEKS                       R48 R27 K54 ["consumed"]
     1775 MOVE                             R49 R46
     1776 CONCAT                           R47 R48 R49
     1777 SETTABLEKS                       R47 R27 K54 ["consumed"]
     1779 GETTABLEKS                       R47 R27 K50 ["index"]
     1781 ADDK                             R47 R47 K51 [0]
     1782 SETTABLEKS                       R47 R27 K50 ["index"]
     1784 JUMP                             ; [+751]
     1785 GETTABLEKS                       R48 R27 K50 ["index"]
     1787 ADDK                             R47 R48 K53 [1]
     1788 FASTCALL2                        STRING_SUB R0 R47 ; [+4]
     1790 MOVE                             R46 R0
     1791 GETIMPORT                        R45 K85 [string.sub]
     1793 CALL                             R45 2 1
     1794 GETUPVAL                         R46 4
     1795 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1797 LOADB                            R47 0
     1798 GETTABLEKS                       R48 R2 K48 ["noextglob"]
     1800 JUMPIFEQKB                       R48 TRUE ; [+8]
     1802 GETUPVAL                         R47 8
     1803 LOADK                            R48 K175 ["^\\([^?]"]
     1804 CALL                             R47 1 1
     1805 MOVE                             R49 R45
     1806 NAMECALL                         R47 R47 K71 ["test"]
     1808 CALL                             R47 2 1
     1809 CALL                             R46 1 1
     1810 JUMPIFNOT                        R46 ; [+5]
     1811 MOVE                             R46 R43
     1812 LOADK                            R47 K174 ["star"]
     1813 MOVE                             R48 R32
     1814 CALL                             R46 2 0
     1815 JUMP                             ; [+720]
     1816 GETTABLEKS                       R46 R31 K17 ["type"]
     1818 JUMPIFNOTEQKS                    R46 K174 ["star"] ; [+588]
     1820 GETTABLEKS                       R46 R2 K176 ["noglobstar"]
     1822 JUMPIFNOTEQKB                    R46 TRUE ; [+15]
     1824 MOVE                             R46 R32
     1825 ORK                              R47 R46 K20 [""]
     1826 GETTABLEKS                       R49 R27 K54 ["consumed"]
     1828 MOVE                             R50 R47
     1829 CONCAT                           R48 R49 R50
     1830 SETTABLEKS                       R48 R27 K54 ["consumed"]
     1832 GETTABLEKS                       R48 R27 K50 ["index"]
     1834 ADDK                             R48 R48 K51 [0]
     1835 SETTABLEKS                       R48 R27 K50 ["index"]
     1837 JUMP                             ; [+698]
     1838 GETTABLEKS                       R46 R31 K177 ["prev"]
     1840 GETTABLEKS                       R47 R46 K177 ["prev"]
     1842 LOADB                            R48 1
     1843 GETTABLEKS                       R49 R46 K17 ["type"]
     1845 JUMPIFEQKS                       R49 K147 ["slash"] ; [+7]
     1847 GETTABLEKS                       R49 R46 K17 ["type"]
     1849 JUMPIFEQKS                       R49 K18 ["bos"] ; [+2]
     1851 LOADB                            R48 0 +1
     1852 LOADB                            R48 1
     1853 GETUPVAL                         R50 4
     1854 GETTABLEKS                       R50 R50 K24 ["toJSBoolean"]
     1856 MOVE                             R51 R47
     1857 CALL                             R50 1 1
     1858 JUMPIFNOT                        R50 ; [+12]
     1859 LOADB                            R49 1
     1860 GETTABLEKS                       R50 R47 K17 ["type"]
     1862 JUMPIFEQKS                       R50 K174 ["star"] ; [+9]
     1864 GETTABLEKS                       R50 R47 K17 ["type"]
     1866 JUMPIFEQKS                       R50 K63 ["globstar"] ; [+2]
     1868 LOADB                            R49 0 +1
     1869 LOADB                            R49 1
     1870 JUMP                             ; [+1]
     1871 MOVE                             R49 R47
     1872 GETTABLEKS                       R50 R2 K43 ["bash"]
     1874 JUMPIFNOTEQKB                    R50 TRUE ; [+22]
     1876 JUMPIFNOT                        R48 ; [+14]
     1877 LOADN                            R52 1
     1878 LOADN                            R53 1
     1879 NAMECALL                         R50 R45 K84 ["sub"]
     1881 CALL                             R50 3 1
     1882 JUMPIFEQKNIL                     R50 ; [+14]
     1884 LOADN                            R52 1
     1885 LOADN                            R53 1
     1886 NAMECALL                         R50 R45 K84 ["sub"]
     1888 CALL                             R50 3 1
     1889 JUMPIFEQKS                       R50 K78 ["/"] ; [+7]
     1891 MOVE                             R50 R42
     1892 DUPTABLE                         R51 K178 [{["type"] = "star", ["value"], ["output"] = ""}]
     1893 SETTABLEKS                       R32 R51 K19 ["value"]
     1895 CALL                             R50 1 0
     1896 JUMP                             ; [+639]
     1897 LOADB                            R50 0
     1898 GETTABLEKS                       R51 R27 K60 ["braces"]
     1900 LOADN                            R52 0
     1901 JUMPIFNOTLT                      R52 R51 ; [+12]
     1903 LOADB                            R50 1
     1904 GETTABLEKS                       R51 R46 K17 ["type"]
     1906 JUMPIFEQKS                       R51 K137 ["comma"] ; [+7]
     1908 GETTABLEKS                       R51 R46 K17 ["type"]
     1910 JUMPIFEQKS                       R51 K131 ["brace"] ; [+2]
     1912 LOADB                            R50 0 +1
     1913 LOADB                            R50 1
     1914 LOADB                            R51 0
     1915 LENGTH                           R52 R28
     1916 LOADN                            R53 0
     1917 JUMPIFNOTLT                      R53 R52 ; [+12]
     1919 LOADB                            R51 1
     1920 GETTABLEKS                       R52 R46 K17 ["type"]
     1922 JUMPIFEQKS                       R52 K179 ["pipe"] ; [+7]
     1924 GETTABLEKS                       R52 R46 K17 ["type"]
     1926 JUMPIFEQKS                       R52 K109 ["paren"] ; [+2]
     1928 LOADB                            R51 0 +1
     1929 LOADB                            R51 1
     1930 JUMPIF                           R48 ; [+12]
     1931 GETTABLEKS                       R52 R46 K17 ["type"]
     1933 JUMPIFEQKS                       R52 K109 ["paren"] ; [+9]
     1935 JUMPIF                           R50 ; [+7]
     1936 JUMPIF                           R51 ; [+6]
     1937 MOVE                             R52 R42
     1938 DUPTABLE                         R53 K178 [{["type"] = "star", ["value"], ["output"] = ""}]
     1939 SETTABLEKS                       R32 R53 K19 ["value"]
     1941 CALL                             R52 1 0
     1942 JUMP                             ; [+593]
     1943 GETUPVAL                         R52 7
     1944 GETTABLEKS                       R52 R52 K93 ["slice"]
     1946 MOVE                             R53 R45
     1947 LOADN                            R54 1
     1948 LOADN                            R55 4
     1949 CALL                             R52 3 1
     1950 JUMPIFNOTEQKS                    R52 K180 ["/**"] ; [+37]
     1952 GETTABLEKS                       R55 R27 K50 ["index"]
     1954 ADDK                             R54 R55 K181 [4]
     1955 GETTABLEKS                       R56 R27 K50 ["index"]
     1957 ADDK                             R55 R56 K181 [4]
     1958 NAMECALL                         R52 R0 K84 ["sub"]
     1960 CALL                             R52 3 1
     1961 GETUPVAL                         R53 4
     1962 GETTABLEKS                       R53 R53 K24 ["toJSBoolean"]
     1964 MOVE                             R54 R52
     1965 CALL                             R53 1 1
     1966 JUMPIFNOT                        R53 ; [+2]
     1967 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+20]
     1969 GETUPVAL                         R53 7
     1970 GETTABLEKS                       R53 R53 K93 ["slice"]
     1972 MOVE                             R54 R45
     1973 LOADN                            R55 4
     1974 CALL                             R53 2 1
     1975 MOVE                             R45 R53
     1976 GETTABLEKS                       R54 R27 K54 ["consumed"]
     1978 LOADK                            R55 K180 ["/**"]
     1979 CONCAT                           R53 R54 R55
     1980 SETTABLEKS                       R53 R27 K54 ["consumed"]
     1982 GETTABLEKS                       R53 R27 K50 ["index"]
     1984 ADDK                             R53 R53 K182 [3]
     1985 SETTABLEKS                       R53 R27 K50 ["index"]
     1987 JUMPBACK                         ; [-45]
     1988 GETTABLEKS                       R52 R46 K17 ["type"]
     1990 JUMPIFNOTEQKS                    R52 K18 ["bos"] ; [+56]
     1992 GETTABLEKS                       R53 R27 K50 ["index"]
     1994 JUMPIFEQ                         R53 R4 ; [+2]
     1996 LOADB                            R52 0 +1
     1997 LOADB                            R52 1
     1998 JUMPIFNOT                        R52 ; [+48]
     1999 LOADK                            R52 K63 ["globstar"]
     2000 SETTABLEKS                       R52 R31 K17 ["type"]
     2002 GETTABLEKS                       R53 R31 K19 ["value"]
     2004 MOVE                             R54 R32
     2005 CONCAT                           R52 R53 R54
     2006 SETTABLEKS                       R52 R31 K19 ["value"]
     2008 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2009 MOVE                             R54 R7
     2010 MOVE                             R55 R22
     2011 GETUPVAL                         R57 4
     2012 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     2014 GETTABLEKS                       R58 R2 K42 ["dot"]
     2016 CALL                             R57 1 1
     2017 JUMPIFNOT                        R57 ; [+2]
     2018 MOVE                             R56 R15
     2019 JUMP                             ; [+1]
     2020 MOVE                             R56 R11
     2021 NAMECALL                         R52 R52 K16 ["format"]
     2023 CALL                             R52 4 1
     2024 SETTABLEKS                       R52 R31 K21 ["output"]
     2026 GETTABLEKS                       R52 R31 K21 ["output"]
     2028 SETTABLEKS                       R52 R27 K21 ["output"]
     2030 LOADB                            R52 1
     2031 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2033 MOVE                             R52 R32
     2034 ORK                              R53 R52 K20 [""]
     2035 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2037 MOVE                             R56 R53
     2038 CONCAT                           R54 R55 R56
     2039 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2041 GETTABLEKS                       R54 R27 K50 ["index"]
     2043 ADDK                             R54 R54 K51 [0]
     2044 SETTABLEKS                       R54 R27 K50 ["index"]
     2046 JUMP                             ; [+489]
     2047 GETTABLEKS                       R52 R46 K17 ["type"]
     2049 JUMPIFNOTEQKS                    R52 K147 ["slash"] ; [+105]
     2051 GETTABLEKS                       R52 R46 K177 ["prev"]
     2053 GETTABLEKS                       R52 R52 K17 ["type"]
     2055 JUMPIFEQKS                       R52 K18 ["bos"] ; [+99]
     2057 GETUPVAL                         R52 4
     2058 GETTABLEKS                       R52 R52 K24 ["toJSBoolean"]
     2060 MOVE                             R53 R49
     2061 CALL                             R52 1 1
     2062 JUMPIF                           R52 ; [+92]
     2063 GETTABLEKS                       R53 R27 K50 ["index"]
     2065 JUMPIFEQ                         R53 R4 ; [+2]
     2067 LOADB                            R52 0 +1
     2068 LOADB                            R52 1
     2069 JUMPIFNOT                        R52 ; [+85]
     2070 GETUPVAL                         R52 7
     2071 GETTABLEKS                       R52 R52 K93 ["slice"]
     2073 GETTABLEKS                       R53 R27 K21 ["output"]
     2075 LOADN                            R54 1
     2076 GETTABLEKS                       R58 R46 K21 ["output"]
     2078 GETTABLEKS                       R59 R31 K21 ["output"]
     2080 CONCAT                           R57 R58 R59
     2081 LENGTH                           R56 R57
     2082 MINUS                            R55 R56
     2083 CALL                             R52 3 1
     2084 SETTABLEKS                       R52 R27 K21 ["output"]
     2086 LOADK                            R52 K183 ["(?:%s"]
     2087 GETTABLEKS                       R54 R46 K21 ["output"]
     2089 NAMECALL                         R52 R52 K16 ["format"]
     2091 CALL                             R52 2 1
     2092 SETTABLEKS                       R52 R46 K21 ["output"]
     2094 LOADK                            R52 K63 ["globstar"]
     2095 SETTABLEKS                       R52 R31 K17 ["type"]
     2097 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2098 MOVE                             R57 R7
     2099 MOVE                             R58 R22
     2100 GETUPVAL                         R60 4
     2101 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2103 GETTABLEKS                       R61 R2 K42 ["dot"]
     2105 CALL                             R60 1 1
     2106 JUMPIFNOT                        R60 ; [+2]
     2107 MOVE                             R59 R15
     2108 JUMP                             ; [+1]
     2109 MOVE                             R59 R11
     2110 NAMECALL                         R55 R55 K16 ["format"]
     2112 CALL                             R55 4 1
     2113 MOVE                             R53 R55
     2114 GETTABLEKS                       R55 R2 K184 ["strictSlashes"]
     2116 JUMPIFNOT                        R55 ; [+2]
     2117 LOADK                            R54 K111 [")"]
     2118 JUMP                             ; [+1]
     2119 LOADK                            R54 K185 ["|$)"]
     2120 CONCAT                           R52 R53 R54
     2121 SETTABLEKS                       R52 R31 K21 ["output"]
     2123 GETTABLEKS                       R53 R31 K19 ["value"]
     2125 MOVE                             R54 R32
     2126 CONCAT                           R52 R53 R54
     2127 SETTABLEKS                       R52 R31 K19 ["value"]
     2129 LOADB                            R52 1
     2130 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2132 GETTABLEKS                       R53 R27 K21 ["output"]
     2134 GETTABLEKS                       R54 R46 K21 ["output"]
     2136 GETTABLEKS                       R55 R31 K21 ["output"]
     2138 CONCAT                           R52 R53 R55
     2139 SETTABLEKS                       R52 R27 K21 ["output"]
     2141 MOVE                             R52 R32
     2142 ORK                              R53 R52 K20 [""]
     2143 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2145 MOVE                             R56 R53
     2146 CONCAT                           R54 R55 R56
     2147 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2149 GETTABLEKS                       R54 R27 K50 ["index"]
     2151 ADDK                             R54 R54 K51 [0]
     2152 SETTABLEKS                       R54 R27 K50 ["index"]
     2154 JUMP                             ; [+381]
     2155 GETTABLEKS                       R52 R46 K17 ["type"]
     2157 JUMPIFNOTEQKS                    R52 K147 ["slash"] ; [+114]
     2159 GETTABLEKS                       R52 R46 K177 ["prev"]
     2161 GETTABLEKS                       R52 R52 K17 ["type"]
     2163 JUMPIFEQKS                       R52 K18 ["bos"] ; [+108]
     2165 LOADN                            R54 1
     2166 LOADN                            R55 1
     2167 NAMECALL                         R52 R45 K84 ["sub"]
     2169 CALL                             R52 3 1
     2170 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+101]
     2172 LOADN                            R55 2
     2173 LOADN                            R56 2
     2174 NAMECALL                         R53 R45 K84 ["sub"]
     2176 CALL                             R53 3 1
     2177 JUMPIFEQKNIL                     R53 ; [+3]
     2179 LOADK                            R52 K186 ["|$"]
     2180 JUMP                             ; [+1]
     2181 LOADK                            R52 K20 [""]
     2182 GETUPVAL                         R53 7
     2183 GETTABLEKS                       R53 R53 K93 ["slice"]
     2185 GETTABLEKS                       R54 R27 K21 ["output"]
     2187 LOADN                            R55 1
     2188 GETTABLEKS                       R59 R46 K21 ["output"]
     2190 GETTABLEKS                       R60 R31 K21 ["output"]
     2192 CONCAT                           R58 R59 R60
     2193 LENGTH                           R57 R58
     2194 MINUS                            R56 R57
     2195 CALL                             R53 3 1
     2196 SETTABLEKS                       R53 R27 K21 ["output"]
     2198 LOADK                            R53 K183 ["(?:%s"]
     2199 GETTABLEKS                       R55 R46 K21 ["output"]
     2201 NAMECALL                         R53 R53 K16 ["format"]
     2203 CALL                             R53 2 1
     2204 SETTABLEKS                       R53 R46 K21 ["output"]
     2206 LOADK                            R53 K63 ["globstar"]
     2207 SETTABLEKS                       R53 R31 K17 ["type"]
     2209 LOADK                            R53 K187 ["%s%s|%s%s)"]
     2210 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2211 MOVE                             R57 R7
     2212 MOVE                             R58 R22
     2213 GETUPVAL                         R60 4
     2214 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2216 GETTABLEKS                       R61 R2 K42 ["dot"]
     2218 CALL                             R60 1 1
     2219 JUMPIFNOT                        R60 ; [+2]
     2220 MOVE                             R59 R15
     2221 JUMP                             ; [+1]
     2222 MOVE                             R59 R11
     2223 NAMECALL                         R55 R55 K16 ["format"]
     2225 CALL                             R55 4 1
     2226 MOVE                             R56 R13
     2227 MOVE                             R57 R13
     2228 MOVE                             R58 R52
     2229 NAMECALL                         R53 R53 K16 ["format"]
     2231 CALL                             R53 5 1
     2232 SETTABLEKS                       R53 R31 K21 ["output"]
     2234 GETTABLEKS                       R54 R31 K19 ["value"]
     2236 MOVE                             R55 R32
     2237 CONCAT                           R53 R54 R55
     2238 SETTABLEKS                       R53 R31 K19 ["value"]
     2240 GETTABLEKS                       R54 R27 K21 ["output"]
     2242 GETTABLEKS                       R55 R46 K21 ["output"]
     2244 GETTABLEKS                       R56 R31 K21 ["output"]
     2246 CONCAT                           R53 R54 R56
     2247 SETTABLEKS                       R53 R27 K21 ["output"]
     2249 LOADB                            R53 1
     2250 SETTABLEKS                       R53 R27 K63 ["globstar"]
     2252 MOVE                             R54 R32
     2253 MOVE                             R55 R35
     2254 CALL                             R55 0 1
     2255 CONCAT                           R53 R54 R55
     2256 ORK                              R54 R53 K20 [""]
     2257 GETTABLEKS                       R56 R27 K54 ["consumed"]
     2259 MOVE                             R57 R54
     2260 CONCAT                           R55 R56 R57
     2261 SETTABLEKS                       R55 R27 K54 ["consumed"]
     2263 GETTABLEKS                       R55 R27 K50 ["index"]
     2265 ADDK                             R55 R55 K51 [0]
     2266 SETTABLEKS                       R55 R27 K50 ["index"]
     2268 MOVE                             R53 R42
     2269 DUPTABLE                         R54 K188 [{["type"] = "slash", ["value"] = "/", ["output"] = ""}]
     2270 CALL                             R53 1 0
     2271 JUMP                             ; [+264]
     2272 GETTABLEKS                       R52 R46 K17 ["type"]
     2274 JUMPIFNOTEQKS                    R52 K18 ["bos"] ; [+68]
     2276 LOADN                            R54 1
     2277 LOADN                            R55 1
     2278 NAMECALL                         R52 R45 K84 ["sub"]
     2280 CALL                             R52 3 1
     2281 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+61]
     2283 LOADK                            R52 K63 ["globstar"]
     2284 SETTABLEKS                       R52 R31 K17 ["type"]
     2286 GETTABLEKS                       R53 R31 K19 ["value"]
     2288 MOVE                             R54 R32
     2289 CONCAT                           R52 R53 R54
     2290 SETTABLEKS                       R52 R31 K19 ["value"]
     2292 LOADK                            R52 K189 ["(?:^|%s|%s%s)"]
     2293 MOVE                             R54 R13
     2294 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2295 MOVE                             R57 R7
     2296 MOVE                             R58 R22
     2297 GETUPVAL                         R60 4
     2298 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2300 GETTABLEKS                       R61 R2 K42 ["dot"]
     2302 CALL                             R60 1 1
     2303 JUMPIFNOT                        R60 ; [+2]
     2304 MOVE                             R59 R15
     2305 JUMP                             ; [+1]
     2306 MOVE                             R59 R11
     2307 NAMECALL                         R55 R55 K16 ["format"]
     2309 CALL                             R55 4 1
     2310 MOVE                             R56 R13
     2311 NAMECALL                         R52 R52 K16 ["format"]
     2313 CALL                             R52 4 1
     2314 SETTABLEKS                       R52 R31 K21 ["output"]
     2316 GETTABLEKS                       R52 R31 K21 ["output"]
     2318 SETTABLEKS                       R52 R27 K21 ["output"]
     2320 LOADB                            R52 1
     2321 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2323 MOVE                             R53 R32
     2324 MOVE                             R54 R35
     2325 CALL                             R54 0 1
     2326 CONCAT                           R52 R53 R54
     2327 ORK                              R53 R52 K20 [""]
     2328 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2330 MOVE                             R56 R53
     2331 CONCAT                           R54 R55 R56
     2332 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2334 GETTABLEKS                       R54 R27 K50 ["index"]
     2336 ADDK                             R54 R54 K51 [0]
     2337 SETTABLEKS                       R54 R27 K50 ["index"]
     2339 MOVE                             R52 R42
     2340 DUPTABLE                         R53 K188 [{["type"] = "slash", ["value"] = "/", ["output"] = ""}]
     2341 CALL                             R52 1 0
     2342 JUMP                             ; [+193]
     2343 GETUPVAL                         R52 7
     2344 GETTABLEKS                       R52 R52 K93 ["slice"]
     2346 GETTABLEKS                       R53 R27 K21 ["output"]
     2348 LOADN                            R54 1
     2349 GETTABLEKS                       R57 R31 K21 ["output"]
     2351 LENGTH                           R56 R57
     2352 MINUS                            R55 R56
     2353 CALL                             R52 3 1
     2354 SETTABLEKS                       R52 R27 K21 ["output"]
     2356 LOADK                            R52 K63 ["globstar"]
     2357 SETTABLEKS                       R52 R31 K17 ["type"]
     2359 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2360 MOVE                             R54 R7
     2361 MOVE                             R55 R22
     2362 GETUPVAL                         R57 4
     2363 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     2365 GETTABLEKS                       R58 R2 K42 ["dot"]
     2367 CALL                             R57 1 1
     2368 JUMPIFNOT                        R57 ; [+2]
     2369 MOVE                             R56 R15
     2370 JUMP                             ; [+1]
     2371 MOVE                             R56 R11
     2372 NAMECALL                         R52 R52 K16 ["format"]
     2374 CALL                             R52 4 1
     2375 SETTABLEKS                       R52 R31 K21 ["output"]
     2377 GETTABLEKS                       R53 R31 K19 ["value"]
     2379 MOVE                             R54 R32
     2380 CONCAT                           R52 R53 R54
     2381 SETTABLEKS                       R52 R31 K19 ["value"]
     2383 GETTABLEKS                       R53 R27 K21 ["output"]
     2385 GETTABLEKS                       R54 R31 K21 ["output"]
     2387 CONCAT                           R52 R53 R54
     2388 SETTABLEKS                       R52 R27 K21 ["output"]
     2390 LOADB                            R52 1
     2391 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2393 MOVE                             R52 R32
     2394 ORK                              R53 R52 K20 [""]
     2395 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2397 MOVE                             R56 R53
     2398 CONCAT                           R54 R55 R56
     2399 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2401 GETTABLEKS                       R54 R27 K50 ["index"]
     2403 ADDK                             R54 R54 K51 [0]
     2404 SETTABLEKS                       R54 R27 K50 ["index"]
     2406 JUMP                             ; [+129]
     2407 DUPTABLE                         R46 K190 [{["type"] = "star", ["value"], ["output"]}]
     2408 SETTABLEKS                       R32 R46 K19 ["value"]
     2410 SETTABLEKS                       R26 R46 K21 ["output"]
     2412 GETTABLEKS                       R47 R2 K43 ["bash"]
     2414 JUMPIFNOTEQKB                    R47 TRUE ; [+22]
     2416 LOADK                            R47 K191 [".*?"]
     2417 SETTABLEKS                       R47 R46 K21 ["output"]
     2419 GETTABLEKS                       R47 R31 K17 ["type"]
     2421 JUMPIFEQKS                       R47 K18 ["bos"] ; [+5]
     2423 GETTABLEKS                       R47 R31 K17 ["type"]
     2425 JUMPIFNOTEQKS                    R47 K147 ["slash"] ; [+7]
     2427 MOVE                             R48 R24
     2428 GETTABLEKS                       R49 R46 K21 ["output"]
     2430 CONCAT                           R47 R48 R49
     2431 SETTABLEKS                       R47 R46 K21 ["output"]
     2433 MOVE                             R47 R42
     2434 MOVE                             R48 R46
     2435 CALL                             R47 1 0
     2436 JUMP                             ; [+99]
     2437 JUMPIFEQKNIL                     R31 ; [+19]
     2439 GETTABLEKS                       R47 R31 K17 ["type"]
     2441 JUMPIFEQKS                       R47 K122 ["bracket"] ; [+5]
     2443 GETTABLEKS                       R47 R31 K17 ["type"]
     2445 JUMPIFNOTEQKS                    R47 K109 ["paren"] ; [+11]
     2447 GETTABLEKS                       R47 R2 K162 ["regex"]
     2449 JUMPIFNOTEQKB                    R47 TRUE ; [+7]
     2451 SETTABLEKS                       R32 R46 K21 ["output"]
     2453 MOVE                             R47 R42
     2454 MOVE                             R48 R46
     2455 CALL                             R47 1 0
     2456 JUMP                             ; [+79]
     2457 GETTABLEKS                       R47 R27 K50 ["index"]
     2459 GETTABLEKS                       R48 R27 K52 ["start"]
     2461 JUMPIFEQ                         R47 R48 ; [+9]
     2463 GETTABLEKS                       R47 R31 K17 ["type"]
     2465 JUMPIFEQKS                       R47 K147 ["slash"] ; [+5]
     2467 GETTABLEKS                       R47 R31 K17 ["type"]
     2469 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+63]
     2471 GETTABLEKS                       R47 R31 K17 ["type"]
     2473 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+14]
     2475 GETTABLEKS                       R48 R27 K21 ["output"]
     2477 MOVE                             R49 R17
     2478 CONCAT                           R47 R48 R49
     2479 SETTABLEKS                       R47 R27 K21 ["output"]
     2481 GETTABLEKS                       R48 R31 K21 ["output"]
     2483 MOVE                             R49 R17
     2484 CONCAT                           R47 R48 R49
     2485 SETTABLEKS                       R47 R31 K21 ["output"]
     2487 JUMP                             ; [+29]
     2488 GETTABLEKS                       R47 R2 K42 ["dot"]
     2490 JUMPIFNOTEQKB                    R47 TRUE ; [+14]
     2492 GETTABLEKS                       R48 R27 K21 ["output"]
     2494 MOVE                             R49 R18
     2495 CONCAT                           R47 R48 R49
     2496 SETTABLEKS                       R47 R27 K21 ["output"]
     2498 GETTABLEKS                       R48 R31 K21 ["output"]
     2500 MOVE                             R49 R18
     2501 CONCAT                           R47 R48 R49
     2502 SETTABLEKS                       R47 R31 K21 ["output"]
     2504 JUMP                             ; [+12]
     2505 GETTABLEKS                       R48 R27 K21 ["output"]
     2507 MOVE                             R49 R24
     2508 CONCAT                           R47 R48 R49
     2509 SETTABLEKS                       R47 R27 K21 ["output"]
     2511 GETTABLEKS                       R48 R31 K21 ["output"]
     2513 MOVE                             R49 R24
     2514 CONCAT                           R47 R48 R49
     2515 SETTABLEKS                       R47 R31 K21 ["output"]
     2517 MOVE                             R47 R34
     2518 CALL                             R47 0 1
     2519 JUMPIFEQKS                       R47 K170 ["*"] ; [+13]
     2521 GETTABLEKS                       R48 R27 K21 ["output"]
     2523 MOVE                             R49 R14
     2524 CONCAT                           R47 R48 R49
     2525 SETTABLEKS                       R47 R27 K21 ["output"]
     2527 GETTABLEKS                       R48 R31 K21 ["output"]
     2529 MOVE                             R49 R14
     2530 CONCAT                           R47 R48 R49
     2531 SETTABLEKS                       R47 R31 K21 ["output"]
     2533 MOVE                             R47 R42
     2534 MOVE                             R48 R46
     2535 CALL                             R47 1 0
     2536 JUMPBACK                         ; [-2176]
     2537 GETTABLEKS                       R45 R27 K59 ["brackets"]
     2539 LOADN                            R46 0
     2540 JUMPIFNOTLT                      R46 R45 ; [+40]
     2542 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2544 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2546 GETIMPORT                        R45 K4 [error]
     2548 GETUPVAL                         R46 0
     2549 GETTABLEKS                       R46 R46 K5 ["new"]
     2551 LOADK                            R48 K113 ["SyntaxError: "]
     2552 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2553 LOADK                            R51 K121 ["closing"]
     2554 LOADK                            R52 K88 ["]"]
     2555 LOADK                            R53 K88 ["]"]
     2556 NAMECALL                         R49 R49 K16 ["format"]
     2558 CALL                             R49 4 1
     2559 CONCAT                           R47 R48 R49
     2560 CALL                             R46 1 -1
     2561 CALL                             R45 -1 0
     2562 GETUPVAL                         R45 5
     2563 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2565 GETTABLEKS                       R46 R27 K21 ["output"]
     2567 LOADK                            R47 K89 ["["]
     2568 CALL                             R45 2 1
     2569 SETTABLEKS                       R45 R27 K21 ["output"]
     2571 GETTABLEKS                       R45 R27 K59 ["brackets"]
     2573 SUBK                             R45 R45 K53 [1]
     2574 SETTABLEKS                       R45 R27 K59 ["brackets"]
     2576 GETIMPORT                        R45 K117 [table.remove]
     2578 MOVE                             R46 R30
     2579 CALL                             R45 1 0
     2580 JUMPBACK                         ; [-44]
     2581 GETTABLEKS                       R45 R27 K61 ["parens"]
     2583 LOADN                            R46 0
     2584 JUMPIFNOTLT                      R46 R45 ; [+40]
     2586 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2588 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2590 GETIMPORT                        R45 K4 [error]
     2592 GETUPVAL                         R46 0
     2593 GETTABLEKS                       R46 R46 K5 ["new"]
     2595 LOADK                            R48 K113 ["SyntaxError: "]
     2596 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2597 LOADK                            R51 K121 ["closing"]
     2598 LOADK                            R52 K111 [")"]
     2599 LOADK                            R53 K111 [")"]
     2600 NAMECALL                         R49 R49 K16 ["format"]
     2602 CALL                             R49 4 1
     2603 CONCAT                           R47 R48 R49
     2604 CALL                             R46 1 -1
     2605 CALL                             R45 -1 0
     2606 GETUPVAL                         R45 5
     2607 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2609 GETTABLEKS                       R46 R27 K21 ["output"]
     2611 LOADK                            R47 K105 ["("]
     2612 CALL                             R45 2 1
     2613 SETTABLEKS                       R45 R27 K21 ["output"]
     2615 GETTABLEKS                       R45 R27 K61 ["parens"]
     2617 SUBK                             R45 R45 K53 [1]
     2618 SETTABLEKS                       R45 R27 K61 ["parens"]
     2620 GETIMPORT                        R45 K117 [table.remove]
     2622 MOVE                             R46 R30
     2623 CALL                             R45 1 0
     2624 JUMPBACK                         ; [-44]
     2625 GETTABLEKS                       R45 R27 K60 ["braces"]
     2627 LOADN                            R46 0
     2628 JUMPIFNOTLT                      R46 R45 ; [+40]
     2630 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2632 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2634 GETIMPORT                        R45 K4 [error]
     2636 GETUPVAL                         R46 0
     2637 GETTABLEKS                       R46 R46 K5 ["new"]
     2639 LOADK                            R48 K113 ["SyntaxError: "]
     2640 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2641 LOADK                            R51 K121 ["closing"]
     2642 LOADK                            R52 K135 ["}"]
     2643 LOADK                            R53 K135 ["}"]
     2644 NAMECALL                         R49 R49 K16 ["format"]
     2646 CALL                             R49 4 1
     2647 CONCAT                           R47 R48 R49
     2648 CALL                             R46 1 -1
     2649 CALL                             R45 -1 0
     2650 GETUPVAL                         R45 5
     2651 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2653 GETTABLEKS                       R46 R27 K21 ["output"]
     2655 LOADK                            R47 K129 ["{"]
     2656 CALL                             R45 2 1
     2657 SETTABLEKS                       R45 R27 K21 ["output"]
     2659 GETTABLEKS                       R45 R27 K60 ["braces"]
     2661 SUBK                             R45 R45 K53 [1]
     2662 SETTABLEKS                       R45 R27 K60 ["braces"]
     2664 GETIMPORT                        R45 K117 [table.remove]
     2666 MOVE                             R46 R30
     2667 CALL                             R45 1 0
     2668 JUMPBACK                         ; [-44]
     2669 GETTABLEKS                       R45 R2 K184 ["strictSlashes"]
     2671 JUMPIFEQKB                       R45 TRUE ; [+19]
     2673 GETTABLEKS                       R45 R31 K17 ["type"]
     2675 JUMPIFEQKS                       R45 K174 ["star"] ; [+5]
     2677 GETTABLEKS                       R45 R31 K17 ["type"]
     2679 JUMPIFNOTEQKS                    R45 K122 ["bracket"] ; [+11]
     2681 MOVE                             R45 R42
     2682 DUPTABLE                         R46 K194 [{["type"] = "maybe_slash", ["value"] = "", ["output"]}]
     2683 LOADK                            R47 K195 ["%s?"]
     2684 MOVE                             R49 R13
     2685 NAMECALL                         R47 R47 K16 ["format"]
     2687 CALL                             R47 2 1
     2688 SETTABLEKS                       R47 R46 K21 ["output"]
     2690 CALL                             R45 1 0
     2691 GETTABLEKS                       R45 R27 K56 ["backtrack"]
     2693 JUMPIFNOTEQKB                    R45 TRUE ; [+36]
     2695 LOADK                            R45 K20 [""]
     2696 SETTABLEKS                       R45 R27 K21 ["output"]
     2698 GETIMPORT                        R45 K141 [ipairs]
     2700 GETTABLEKS                       R46 R27 K64 ["tokens"]
     2702 CALL                             R45 1 3
     2703 FORGPREP_INEXT                   R45
     2704 GETTABLEKS                       R51 R27 K21 ["output"]
     2706 GETTABLEKS                       R53 R49 K21 ["output"]
     2708 JUMPIFEQKNIL                     R53 ; [+4]
     2710 GETTABLEKS                       R52 R49 K21 ["output"]
     2712 JUMP                             ; [+2]
     2713 GETTABLEKS                       R52 R49 K19 ["value"]
     2715 CONCAT                           R50 R51 R52
     2716 SETTABLEKS                       R50 R27 K21 ["output"]
     2718 GETTABLEKS                       R50 R49 K196 ["suffix"]
     2720 JUMPIFNOT                        R50 ; [+7]
     2721 GETTABLEKS                       R51 R27 K21 ["output"]
     2723 GETTABLEKS                       R52 R49 K196 ["suffix"]
     2725 CONCAT                           R50 R51 R52
     2726 SETTABLEKS                       R50 R27 K21 ["output"]
     2728 FORGLOOP                         R45 2 [inext] ; [-25]
     2730 CLOSEUPVALS                      R0
     2731 RETURN                           R27 1

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
