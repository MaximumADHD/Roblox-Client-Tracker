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
      368 JUMPIF                           R45 ; [+2184]
      369 MOVE                             R45 R35
      370 CALL                             R45 0 1
      371 MOVE                             R32 R45
      372 JUMPIFEQKS                       R32 K76 ["\0"] ; [+2179]
      374 JUMPIFNOTEQKS                    R32 K77 ["\\"] ; [+86]
      376 MOVE                             R45 R34
      377 CALL                             R45 0 1
      378 JUMPIFNOTEQKS                    R45 K78 ["/"] ; [+5]
      380 GETTABLEKS                       R46 R2 K43 ["bash"]
      382 JUMPIFNOTEQKB                    R46 TRUE ; [+2169]
      384 JUMPIFEQKS                       R45 K79 ["."] ; [+2167]
      386 JUMPIFEQKS                       R45 K80 [";"] ; [+2165]
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
      402 JUMP                             ; [+2149]
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
      460 JUMP                             ; [+2091]
      461 GETTABLEKS                       R45 R27 K59 ["brackets"]
      463 LOADN                            R46 0
      464 JUMPIFNOTLT                      R46 R45 ; [+179]
      466 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+9]
      468 GETTABLEKS                       R45 R31 K19 ["value"]
      470 JUMPIFEQKS                       R45 K89 ["["] ; [+5]
      472 GETTABLEKS                       R45 R31 K19 ["value"]
      474 JUMPIFNOTEQKS                    R45 K90 ["[^"] ; [+169]
      476 GETTABLEKS                       R45 R2 K91 ["posix"]
      478 JUMPIFEQKB                       R45 FALSE ; [+82]
      480 JUMPIFNOTEQKS                    R32 K92 [":"] ; [+80]
      482 GETUPVAL                         R45 7
      483 GETTABLEKS                       R45 R45 K93 ["slice"]
      485 GETTABLEKS                       R46 R31 K19 ["value"]
      487 LOADN                            R47 1
      488 CALL                             R45 2 1
      489 LOADK                            R48 K89 ["["]
      490 LOADN                            R49 1
      491 LOADB                            R50 1
      492 NAMECALL                         R46 R45 K94 ["find"]
      494 CALL                             R46 4 1
      495 JUMPIFEQKNIL                     R46 ; [+65]
      497 LOADB                            R46 1
      498 SETTABLEKS                       R46 R31 K91 ["posix"]
      500 LOADK                            R48 K92 [":"]
      501 LOADN                            R49 1
      502 LOADB                            R50 1
      503 NAMECALL                         R46 R45 K94 ["find"]
      505 CALL                             R46 4 1
      506 JUMPIFEQKNIL                     R46 ; [+54]
      508 GETUPVAL                         R46 7
      509 GETTABLEKS                       R46 R46 K95 ["lastIndexOf"]
      511 GETTABLEKS                       R47 R31 K19 ["value"]
      513 LOADK                            R48 K89 ["["]
      514 CALL                             R46 2 1
      515 GETUPVAL                         R47 7
      516 GETTABLEKS                       R47 R47 K93 ["slice"]
      518 GETTABLEKS                       R48 R31 K19 ["value"]
      520 LOADN                            R49 1
      521 MOVE                             R50 R46
      522 CALL                             R47 3 1
      523 GETUPVAL                         R48 7
      524 GETTABLEKS                       R48 R48 K93 ["slice"]
      526 GETTABLEKS                       R49 R31 K19 ["value"]
      528 ADDK                             R50 R46 K87 [2]
      529 CALL                             R48 2 1
      530 GETUPVAL                         R50 12
      531 GETTABLE                         R49 R50 R48
      532 JUMPIFNOT                        R49 ; [+28]
      533 MOVE                             R51 R47
      534 MOVE                             R52 R49
      535 CONCAT                           R50 R51 R52
      536 SETTABLEKS                       R50 R31 K19 ["value"]
      538 LOADB                            R50 1
      539 SETTABLEKS                       R50 R27 K56 ["backtrack"]
      541 MOVE                             R50 R35
      542 CALL                             R50 0 0
      543 GETUPVAL                         R50 4
      544 GETTABLEKS                       R50 R50 K24 ["toJSBoolean"]
      546 GETTABLEKS                       R51 R5 K21 ["output"]
      548 CALL                             R50 1 1
      549 JUMPIF                           R50 ; [+2002]
      550 GETUPVAL                         R50 13
      551 GETTABLEKS                       R50 R50 K96 ["indexOf"]
      553 MOVE                             R51 R6
      554 MOVE                             R52 R31
      555 CALL                             R50 2 1
      556 JUMPIFNOTEQKN                    R50 K87 [2] ; [+1995]
      558 SETTABLEKS                       R14 R5 K21 ["output"]
      560 JUMP                             ; [+1991]
      561 JUMPIFNOTEQKS                    R32 K89 ["["] ; [+5]
      563 MOVE                             R45 R34
      564 CALL                             R45 0 1
      565 JUMPIFNOTEQKS                    R45 K92 [":"] ; [+7]
      567 JUMPIFNOTEQKS                    R32 K97 ["-"] ; [+11]
      569 MOVE                             R45 R34
      570 CALL                             R45 0 1
      571 JUMPIFNOTEQKS                    R45 K88 ["]"] ; [+7]
      573 LOADK                            R45 K98 ["\\%s"]
      574 MOVE                             R47 R32
      575 NAMECALL                         R45 R45 K16 ["format"]
      577 CALL                             R45 2 1
      578 MOVE                             R32 R45
      579 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+15]
      581 GETTABLEKS                       R45 R31 K19 ["value"]
      583 JUMPIFEQKS                       R45 K89 ["["] ; [+5]
      585 GETTABLEKS                       R45 R31 K19 ["value"]
      587 JUMPIFNOTEQKS                    R45 K90 ["[^"] ; [+7]
      589 LOADK                            R45 K98 ["\\%s"]
      590 MOVE                             R47 R32
      591 NAMECALL                         R45 R45 K16 ["format"]
      593 CALL                             R45 2 1
      594 MOVE                             R32 R45
      595 GETTABLEKS                       R45 R2 K91 ["posix"]
      597 JUMPIFNOTEQKB                    R45 TRUE ; [+8]
      599 JUMPIFNOTEQKS                    R32 K99 ["!"] ; [+6]
      601 GETTABLEKS                       R45 R31 K19 ["value"]
      603 JUMPIFNOTEQKS                    R45 K89 ["["] ; [+2]
      605 LOADK                            R32 K100 ["^"]
      606 GETTABLEKS                       R46 R31 K19 ["value"]
      608 MOVE                             R47 R32
      609 CONCAT                           R45 R46 R47
      610 SETTABLEKS                       R45 R31 K19 ["value"]
      612 DUPTABLE                         R45 K101 [{"value"}]
      613 SETTABLEKS                       R32 R45 K19 ["value"]
      615 GETTABLEKS                       R47 R27 K21 ["output"]
      617 GETTABLEKS                       R49 R45 K21 ["output"]
      619 JUMPIFEQKNIL                     R49 ; [+4]
      621 GETTABLEKS                       R48 R45 K21 ["output"]
      623 JUMP                             ; [+2]
      624 GETTABLEKS                       R48 R45 K19 ["value"]
      626 CONCAT                           R46 R47 R48
      627 SETTABLEKS                       R46 R27 K21 ["output"]
      629 GETTABLEKS                       R46 R45 K19 ["value"]
      631 ORK                              R47 R46 K20 [""]
      632 GETTABLEKS                       R49 R27 K54 ["consumed"]
      634 MOVE                             R50 R47
      635 CONCAT                           R48 R49 R50
      636 SETTABLEKS                       R48 R27 K54 ["consumed"]
      638 GETTABLEKS                       R48 R27 K50 ["index"]
      640 ADDK                             R48 R48 K51 [0]
      641 SETTABLEKS                       R48 R27 K50 ["index"]
      643 JUMP                             ; [+1908]
      644 GETTABLEKS                       R45 R27 K62 ["quotes"]
      646 JUMPIFNOTEQKN                    R45 K53 [1] ; [+47]
      648 JUMPIFEQKS                       R32 K102 ["\""] ; [+45]
      650 GETUPVAL                         R45 5
      651 GETTABLEKS                       R45 R45 K103 ["escapeRegex"]
      653 MOVE                             R46 R32
      654 CALL                             R45 1 1
      655 MOVE                             R32 R45
      656 GETTABLEKS                       R46 R31 K19 ["value"]
      658 MOVE                             R47 R32
      659 CONCAT                           R45 R46 R47
      660 SETTABLEKS                       R45 R31 K19 ["value"]
      662 DUPTABLE                         R45 K101 [{"value"}]
      663 SETTABLEKS                       R32 R45 K19 ["value"]
      665 GETTABLEKS                       R47 R27 K21 ["output"]
      667 GETTABLEKS                       R49 R45 K21 ["output"]
      669 JUMPIFEQKNIL                     R49 ; [+4]
      671 GETTABLEKS                       R48 R45 K21 ["output"]
      673 JUMP                             ; [+2]
      674 GETTABLEKS                       R48 R45 K19 ["value"]
      676 CONCAT                           R46 R47 R48
      677 SETTABLEKS                       R46 R27 K21 ["output"]
      679 GETTABLEKS                       R46 R45 K19 ["value"]
      681 ORK                              R47 R46 K20 [""]
      682 GETTABLEKS                       R49 R27 K54 ["consumed"]
      684 MOVE                             R50 R47
      685 CONCAT                           R48 R49 R50
      686 SETTABLEKS                       R48 R27 K54 ["consumed"]
      688 GETTABLEKS                       R48 R27 K50 ["index"]
      690 ADDK                             R48 R48 K51 [0]
      691 SETTABLEKS                       R48 R27 K50 ["index"]
      693 JUMP                             ; [+1858]
      694 JUMPIFNOTEQKS                    R32 K102 ["\""] ; [+20]
      696 GETTABLEKS                       R46 R27 K62 ["quotes"]
      698 JUMPIFNOTEQKN                    R46 K53 [1] ; [+3]
      700 LOADN                            R45 0
      701 JUMP                             ; [+1]
      702 LOADN                            R45 1
      703 SETTABLEKS                       R45 R27 K62 ["quotes"]
      705 GETTABLEKS                       R45 R2 K104 ["keepQuotes"]
      707 JUMPIFNOTEQKB                    R45 TRUE ; [+1844]
      709 MOVE                             R45 R42
      710 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
      711 SETTABLEKS                       R32 R46 K19 ["value"]
      713 CALL                             R45 1 0
      714 JUMP                             ; [+1837]
      715 JUMPIFNOTEQKS                    R32 K105 ["("] ; [+19]
      717 GETTABLEKS                       R45 R27 K61 ["parens"]
      719 ADDK                             R45 R45 K53 [1]
      720 SETTABLEKS                       R45 R27 K61 ["parens"]
      722 FASTCALL2K                       TABLE_INSERT R30 K61 ; [+5]
      724 MOVE                             R46 R30
      725 LOADK                            R47 K61 ["parens"]
      726 GETIMPORT                        R45 K108 [table.insert]
      728 CALL                             R45 2 0
      729 MOVE                             R45 R42
      730 DUPTABLE                         R46 K110 [{["type"] = "paren", ["value"]}]
      731 SETTABLEKS                       R32 R46 K19 ["value"]
      733 CALL                             R45 1 0
      734 JUMP                             ; [+1817]
      735 JUMPIFNOTEQKS                    R32 K111 [")"] ; [+70]
      737 GETTABLEKS                       R45 R27 K61 ["parens"]
      739 JUMPIFNOTEQKN                    R45 K51 [0] ; [+21]
      741 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      743 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      745 GETIMPORT                        R45 K4 [error]
      747 GETUPVAL                         R46 0
      748 GETTABLEKS                       R46 R46 K5 ["new"]
      750 LOADK                            R48 K113 ["SyntaxError: "]
      751 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      752 LOADK                            R51 K115 ["opening"]
      753 LOADK                            R52 K105 ["("]
      754 LOADK                            R53 K105 ["("]
      755 NAMECALL                         R49 R49 K16 ["format"]
      757 CALL                             R49 4 1
      758 CONCAT                           R47 R48 R49
      759 CALL                             R46 1 -1
      760 CALL                             R45 -1 0
      761 LENGTH                           R46 R28
      762 GETTABLE                         R45 R28 R46
      763 JUMPIFEQKNIL                     R45 ; [+15]
      765 GETTABLEKS                       R46 R27 K61 ["parens"]
      767 GETTABLEKS                       R48 R45 K61 ["parens"]
      769 ADDK                             R47 R48 K53 [1]
      770 JUMPIFNOTEQ                      R46 R47 ; [+8]
      772 MOVE                             R46 R44
      773 GETIMPORT                        R47 K117 [table.remove]
      775 MOVE                             R48 R28
      776 CALL                             R47 1 1
      777 CALL                             R46 1 0
      778 JUMP                             ; [+1773]
      779 MOVE                             R46 R42
      780 DUPTABLE                         R47 K118 [{["type"] = "paren", ["value"], ["output"]}]
      781 SETTABLEKS                       R32 R47 K19 ["value"]
      783 GETUPVAL                         R49 4
      784 GETTABLEKS                       R49 R49 K24 ["toJSBoolean"]
      786 GETTABLEKS                       R50 R27 K61 ["parens"]
      788 CALL                             R49 1 1
      789 JUMPIFNOT                        R49 ; [+2]
      790 LOADK                            R48 K111 [")"]
      791 JUMP                             ; [+1]
      792 LOADK                            R48 K119 ["\\)"]
      793 SETTABLEKS                       R48 R47 K21 ["output"]
      795 CALL                             R46 1 0
      796 GETTABLEKS                       R46 R27 K61 ["parens"]
      798 SUBK                             R46 R46 K53 [1]
      799 SETTABLEKS                       R46 R27 K61 ["parens"]
      801 GETIMPORT                        R46 K117 [table.remove]
      803 MOVE                             R47 R30
      804 CALL                             R46 1 0
      805 JUMP                             ; [+1746]
      806 JUMPIFNOTEQKS                    R32 K89 ["["] ; [+71]
      808 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      810 JUMPIFEQKB                       R45 TRUE ; [+18]
      812 GETTABLEKS                       R48 R27 K50 ["index"]
      814 ADDK                             R47 R48 K53 [1]
      815 FASTCALL2                        STRING_SUB R0 R47 ; [+4]
      817 MOVE                             R46 R0
      818 GETIMPORT                        R45 K85 [string.sub]
      820 CALL                             R45 2 1
      821 LOADK                            R47 K88 ["]"]
      822 LOADN                            R48 1
      823 LOADB                            R49 1
      824 NAMECALL                         R45 R45 K94 ["find"]
      826 CALL                             R45 4 1
      827 JUMPIFNOTEQKNIL                  R45 ; [+32]
      829 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      831 JUMPIFEQKB                       R45 TRUE ; [+21]
      833 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      835 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      837 GETIMPORT                        R45 K4 [error]
      839 GETUPVAL                         R46 0
      840 GETTABLEKS                       R46 R46 K5 ["new"]
      842 LOADK                            R48 K113 ["SyntaxError: "]
      843 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      844 LOADK                            R51 K121 ["closing"]
      845 LOADK                            R52 K88 ["]"]
      846 LOADK                            R53 K88 ["]"]
      847 NAMECALL                         R49 R49 K16 ["format"]
      849 CALL                             R49 4 1
      850 CONCAT                           R47 R48 R49
      851 CALL                             R46 1 -1
      852 CALL                             R45 -1 0
      853 LOADK                            R45 K98 ["\\%s"]
      854 MOVE                             R47 R32
      855 NAMECALL                         R45 R45 K16 ["format"]
      857 CALL                             R45 2 1
      858 MOVE                             R32 R45
      859 JUMP                             ; [+12]
      860 GETTABLEKS                       R45 R27 K59 ["brackets"]
      862 ADDK                             R45 R45 K53 [1]
      863 SETTABLEKS                       R45 R27 K59 ["brackets"]
      865 FASTCALL2K                       TABLE_INSERT R30 K59 ; [+5]
      867 MOVE                             R46 R30
      868 LOADK                            R47 K59 ["brackets"]
      869 GETIMPORT                        R45 K108 [table.insert]
      871 CALL                             R45 2 0
      872 MOVE                             R45 R42
      873 DUPTABLE                         R46 K123 [{["type"] = "bracket", ["value"]}]
      874 SETTABLEKS                       R32 R46 K19 ["value"]
      876 CALL                             R45 1 0
      877 JUMP                             ; [+1674]
      878 JUMPIFNOTEQKS                    R32 K88 ["]"] ; [+204]
      880 GETTABLEKS                       R45 R2 K120 ["nobracket"]
      882 JUMPIFEQKB                       R45 TRUE ; [+12]
      884 JUMPIFEQKNIL                     R31 ; [+23]
      886 GETTABLEKS                       R45 R31 K17 ["type"]
      888 JUMPIFNOTEQKS                    R45 K122 ["bracket"] ; [+19]
      890 GETTABLEKS                       R46 R31 K19 ["value"]
      892 LENGTH                           R45 R46
      893 JUMPIFNOTEQKN                    R45 K53 [1] ; [+14]
      895 MOVE                             R45 R42
      896 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
      897 SETTABLEKS                       R32 R46 K19 ["value"]
      899 LOADK                            R47 K98 ["\\%s"]
      900 MOVE                             R49 R32
      901 NAMECALL                         R47 R47 K16 ["format"]
      903 CALL                             R47 2 1
      904 SETTABLEKS                       R47 R46 K21 ["output"]
      906 CALL                             R45 1 0
      907 JUMP                             ; [+1644]
      908 GETTABLEKS                       R45 R27 K59 ["brackets"]
      910 JUMPIFNOTEQKN                    R45 K51 [0] ; [+34]
      912 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
      914 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      916 GETIMPORT                        R45 K4 [error]
      918 GETUPVAL                         R46 0
      919 GETTABLEKS                       R46 R46 K5 ["new"]
      921 LOADK                            R48 K113 ["SyntaxError: "]
      922 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      923 LOADK                            R51 K115 ["opening"]
      924 LOADK                            R52 K89 ["["]
      925 LOADK                            R53 K89 ["["]
      926 NAMECALL                         R49 R49 K16 ["format"]
      928 CALL                             R49 4 1
      929 CONCAT                           R47 R48 R49
      930 CALL                             R46 1 -1
      931 CALL                             R45 -1 0
      932 MOVE                             R45 R42
      933 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
      934 SETTABLEKS                       R32 R46 K19 ["value"]
      936 LOADK                            R47 K98 ["\\%s"]
      937 MOVE                             R49 R32
      938 NAMECALL                         R47 R47 K16 ["format"]
      940 CALL                             R47 2 1
      941 SETTABLEKS                       R47 R46 K21 ["output"]
      943 CALL                             R45 1 0
      944 JUMP                             ; [+1607]
      945 GETTABLEKS                       R45 R27 K59 ["brackets"]
      947 SUBK                             R45 R45 K53 [1]
      948 SETTABLEKS                       R45 R27 K59 ["brackets"]
      950 GETIMPORT                        R45 K117 [table.remove]
      952 MOVE                             R46 R30
      953 CALL                             R45 1 0
      954 GETUPVAL                         R45 7
      955 GETTABLEKS                       R45 R45 K93 ["slice"]
      957 GETTABLEKS                       R46 R31 K19 ["value"]
      959 LOADN                            R47 2
      960 CALL                             R45 2 1
      961 GETTABLEKS                       R46 R31 K91 ["posix"]
      963 JUMPIFEQKB                       R46 TRUE ; [+22]
      965 LOADN                            R48 1
      966 LOADN                            R49 1
      967 NAMECALL                         R46 R45 K84 ["sub"]
      969 CALL                             R46 3 1
      970 JUMPIFNOTEQKS                    R46 K100 ["^"] ; [+15]
      972 LOADK                            R48 K78 ["/"]
      973 LOADN                            R49 1
      974 LOADB                            R50 1
      975 NAMECALL                         R46 R45 K94 ["find"]
      977 CALL                             R46 4 1
      978 JUMPIFNOTEQKNIL                  R46 ; [+7]
      980 LOADK                            R46 K125 ["/%s"]
      981 MOVE                             R48 R32
      982 NAMECALL                         R46 R46 K16 ["format"]
      984 CALL                             R46 2 1
      985 MOVE                             R32 R46
      986 GETTABLEKS                       R47 R31 K19 ["value"]
      988 MOVE                             R48 R32
      989 CONCAT                           R46 R47 R48
      990 SETTABLEKS                       R46 R31 K19 ["value"]
      992 DUPTABLE                         R46 K101 [{"value"}]
      993 SETTABLEKS                       R32 R46 K19 ["value"]
      995 GETTABLEKS                       R48 R27 K21 ["output"]
      997 GETTABLEKS                       R50 R46 K21 ["output"]
      999 JUMPIFEQKNIL                     R50 ; [+4]
     1001 GETTABLEKS                       R49 R46 K21 ["output"]
     1003 JUMP                             ; [+2]
     1004 GETTABLEKS                       R49 R46 K19 ["value"]
     1006 CONCAT                           R47 R48 R49
     1007 SETTABLEKS                       R47 R27 K21 ["output"]
     1009 GETTABLEKS                       R47 R46 K19 ["value"]
     1011 ORK                              R48 R47 K20 [""]
     1012 GETTABLEKS                       R50 R27 K54 ["consumed"]
     1014 MOVE                             R51 R48
     1015 CONCAT                           R49 R50 R51
     1016 SETTABLEKS                       R49 R27 K54 ["consumed"]
     1018 GETTABLEKS                       R49 R27 K50 ["index"]
     1020 ADDK                             R49 R49 K51 [0]
     1021 SETTABLEKS                       R49 R27 K50 ["index"]
     1023 GETTABLEKS                       R46 R2 K126 ["literalBrackets"]
     1025 JUMPIFEQKB                       R46 FALSE ; [+1526]
     1027 GETUPVAL                         R46 5
     1028 GETTABLEKS                       R46 R46 K127 ["hasRegexChars"]
     1030 MOVE                             R47 R45
     1031 CALL                             R46 1 1
     1032 JUMPIF                           R46 ; [+1519]
     1033 GETUPVAL                         R46 5
     1034 GETTABLEKS                       R46 R46 K103 ["escapeRegex"]
     1036 GETTABLEKS                       R47 R31 K19 ["value"]
     1038 CALL                             R46 1 1
     1039 GETUPVAL                         R47 7
     1040 GETTABLEKS                       R47 R47 K93 ["slice"]
     1042 GETTABLEKS                       R48 R27 K21 ["output"]
     1044 LOADN                            R49 1
     1045 GETTABLEKS                       R52 R31 K19 ["value"]
     1047 LENGTH                           R51 R52
     1048 MINUS                            R50 R51
     1049 CALL                             R47 3 1
     1050 SETTABLEKS                       R47 R27 K21 ["output"]
     1052 GETTABLEKS                       R47 R2 K126 ["literalBrackets"]
     1054 JUMPIFNOTEQKB                    R47 TRUE ; [+10]
     1056 GETTABLEKS                       R48 R27 K21 ["output"]
     1058 MOVE                             R49 R46
     1059 CONCAT                           R47 R48 R49
     1060 SETTABLEKS                       R47 R27 K21 ["output"]
     1062 SETTABLEKS                       R46 R31 K19 ["value"]
     1064 JUMP                             ; [+1487]
     1065 LOADK                            R47 K128 ["(%s%s|%s)"]
     1066 MOVE                             R49 R7
     1067 MOVE                             R50 R46
     1068 GETTABLEKS                       R51 R31 K19 ["value"]
     1070 NAMECALL                         R47 R47 K16 ["format"]
     1072 CALL                             R47 4 1
     1073 SETTABLEKS                       R47 R31 K19 ["value"]
     1075 GETTABLEKS                       R48 R27 K21 ["output"]
     1077 GETTABLEKS                       R49 R31 K19 ["value"]
     1079 CONCAT                           R47 R48 R49
     1080 SETTABLEKS                       R47 R27 K21 ["output"]
     1082 JUMP                             ; [+1469]
     1083 JUMPIFNOTEQKS                    R32 K129 ["{"] ; [+41]
     1085 GETTABLEKS                       R45 R2 K130 ["nobrace"]
     1087 JUMPIFEQKB                       R45 TRUE ; [+37]
     1089 GETTABLEKS                       R45 R27 K60 ["braces"]
     1091 ADDK                             R45 R45 K53 [1]
     1092 SETTABLEKS                       R45 R27 K60 ["braces"]
     1094 FASTCALL2K                       TABLE_INSERT R30 K60 ; [+5]
     1096 MOVE                             R46 R30
     1097 LOADK                            R47 K60 ["braces"]
     1098 GETIMPORT                        R45 K108 [table.insert]
     1100 CALL                             R45 2 0
     1101 DUPTABLE                         R45 K134 [{["type"] = "brace", ["value"], ["output"] = "(", ["outputIndex"], ["tokensIndex"]}]
     1102 SETTABLEKS                       R32 R45 K19 ["value"]
     1104 GETTABLEKS                       R47 R27 K21 ["output"]
     1106 LENGTH                           R46 R47
     1107 SETTABLEKS                       R46 R45 K132 ["outputIndex"]
     1109 GETTABLEKS                       R47 R27 K64 ["tokens"]
     1111 LENGTH                           R46 R47
     1112 SETTABLEKS                       R46 R45 K133 ["tokensIndex"]
     1114 FASTCALL2                        TABLE_INSERT R29 R45 ; [+5]
     1116 MOVE                             R47 R29
     1117 MOVE                             R48 R45
     1118 GETIMPORT                        R46 K108 [table.insert]
     1120 CALL                             R46 2 0
     1121 MOVE                             R46 R42
     1122 MOVE                             R47 R45
     1123 CALL                             R46 1 0
     1124 JUMP                             ; [+1427]
     1125 JUMPIFNOTEQKS                    R32 K135 ["}"] ; [+151]
     1127 LENGTH                           R46 R29
     1128 GETTABLE                         R45 R29 R46
     1129 GETTABLEKS                       R46 R2 K130 ["nobrace"]
     1131 JUMPIFEQKB                       R46 TRUE ; [+7]
     1133 GETUPVAL                         R46 4
     1134 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1136 MOVE                             R47 R45
     1137 CALL                             R46 1 1
     1138 JUMPIF                           R46 ; [+8]
     1139 MOVE                             R46 R42
     1140 DUPTABLE                         R47 K124 [{["type"] = "text", ["value"], ["output"]}]
     1141 SETTABLEKS                       R32 R47 K19 ["value"]
     1143 SETTABLEKS                       R32 R47 K21 ["output"]
     1145 CALL                             R46 1 0
     1146 JUMP                             ; [+1405]
     1147 LOADK                            R46 K111 [")"]
     1148 GETTABLEKS                       R47 R45 K136 ["dots"]
     1150 JUMPIFNOTEQKB                    R47 TRUE ; [+45]
     1152 GETUPVAL                         R47 13
     1153 GETTABLEKS                       R47 R47 K93 ["slice"]
     1155 MOVE                             R48 R6
     1156 CALL                             R47 1 1
     1157 NEWTABLE                         R48 0 0
     1159 LENGTH                           R51 R47
     1160 LOADN                            R49 1
     1161 LOADN                            R50 -1
     1162 FORNPREP                         R49
     1163 GETIMPORT                        R52 K117 [table.remove]
     1165 MOVE                             R53 R6
     1166 CALL                             R52 1 0
     1167 GETTABLE                         R52 R47 R51
     1168 GETTABLEKS                       R52 R52 K17 ["type"]
     1170 JUMPIFEQKS                       R52 K131 ["brace"] ; [+17]
     1172 GETTABLE                         R52 R47 R51
     1173 GETTABLEKS                       R52 R52 K17 ["type"]
     1175 JUMPIFEQKS                       R52 K136 ["dots"] ; [+11]
     1177 LOADN                            R54 1
     1178 GETTABLE                         R55 R47 R51
     1179 GETTABLEKS                       R55 R55 K19 ["value"]
     1181 FASTCALL3                        TABLE_INSERT R48 R54 R55
     1183 MOVE                             R53 R48
     1184 GETIMPORT                        R52 K108 [table.insert]
     1186 CALL                             R52 3 0
     1187 FORNLOOP                         R49
     1188 GETUPVAL                         R49 14
     1189 MOVE                             R50 R48
     1190 MOVE                             R51 R2
     1191 CALL                             R49 2 1
     1192 MOVE                             R46 R49
     1193 LOADB                            R49 1
     1194 SETTABLEKS                       R49 R27 K56 ["backtrack"]
     1196 GETTABLEKS                       R47 R45 K137 ["comma"]
     1198 JUMPIFEQKB                       R47 TRUE ; [+57]
     1200 GETTABLEKS                       R47 R45 K136 ["dots"]
     1202 JUMPIFEQKB                       R47 TRUE ; [+53]
     1204 GETUPVAL                         R47 7
     1205 GETTABLEKS                       R47 R47 K93 ["slice"]
     1207 GETTABLEKS                       R48 R27 K21 ["output"]
     1209 LOADN                            R49 1
     1210 GETTABLEKS                       R50 R45 K132 ["outputIndex"]
     1212 CALL                             R47 3 1
     1213 GETUPVAL                         R48 13
     1214 GETTABLEKS                       R48 R48 K93 ["slice"]
     1216 GETTABLEKS                       R49 R27 K64 ["tokens"]
     1218 GETTABLEKS                       R50 R45 K133 ["tokensIndex"]
     1220 CALL                             R48 2 1
     1221 LOADK                            R49 K138 ["\\{"]
     1222 SETTABLEKS                       R49 R45 K21 ["output"]
     1224 GETTABLEKS                       R49 R45 K21 ["output"]
     1226 SETTABLEKS                       R49 R45 K19 ["value"]
     1228 LOADK                            R46 K139 ["\\}"]
     1229 MOVE                             R32 R46
     1230 SETTABLEKS                       R47 R27 K21 ["output"]
     1232 GETIMPORT                        R49 K141 [ipairs]
     1234 MOVE                             R50 R48
     1235 CALL                             R49 1 3
     1236 FORGPREP_INEXT                   R49
     1237 GETTABLEKS                       R55 R27 K21 ["output"]
     1239 GETUPVAL                         R57 4
     1240 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     1242 GETTABLEKS                       R58 R53 K21 ["output"]
     1244 CALL                             R57 1 1
     1245 JUMPIFNOT                        R57 ; [+3]
     1246 GETTABLEKS                       R56 R53 K21 ["output"]
     1248 JUMP                             ; [+2]
     1249 GETTABLEKS                       R56 R53 K19 ["value"]
     1251 CONCAT                           R54 R55 R56
     1252 SETTABLEKS                       R54 R27 K21 ["output"]
     1254 FORGLOOP                         R49 2 [inext] ; [-18]
     1256 MOVE                             R47 R42
     1257 DUPTABLE                         R48 K142 [{["type"] = "brace", ["value"], ["output"]}]
     1258 SETTABLEKS                       R32 R48 K19 ["value"]
     1260 SETTABLEKS                       R46 R48 K21 ["output"]
     1262 CALL                             R47 1 0
     1263 GETTABLEKS                       R47 R27 K60 ["braces"]
     1265 SUBK                             R47 R47 K53 [1]
     1266 SETTABLEKS                       R47 R27 K60 ["braces"]
     1268 GETIMPORT                        R47 K117 [table.remove]
     1270 MOVE                             R48 R30
     1271 CALL                             R47 1 0
     1272 GETIMPORT                        R47 K117 [table.remove]
     1274 MOVE                             R48 R29
     1275 CALL                             R47 1 0
     1276 JUMP                             ; [+1275]
     1277 JUMPIFNOTEQKS                    R32 K143 ["|"] ; [+18]
     1279 LENGTH                           R45 R28
     1280 LOADN                            R46 0
     1281 JUMPIFNOTLT                      R46 R45 ; [+8]
     1283 LENGTH                           R46 R28
     1284 GETTABLE                         R45 R28 R46
     1285 GETTABLEKS                       R46 R45 K144 ["conditions"]
     1287 ADDK                             R46 R46 K53 [1]
     1288 SETTABLEKS                       R46 R45 K144 ["conditions"]
     1290 MOVE                             R45 R42
     1291 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
     1292 SETTABLEKS                       R32 R46 K19 ["value"]
     1294 CALL                             R45 1 0
     1295 JUMP                             ; [+1256]
     1296 JUMPIFNOTEQKS                    R32 K145 [","] ; [+26]
     1298 MOVE                             R45 R32
     1299 LENGTH                           R47 R29
     1300 GETTABLE                         R46 R29 R47
     1301 GETUPVAL                         R47 4
     1302 GETTABLEKS                       R47 R47 K24 ["toJSBoolean"]
     1304 MOVE                             R48 R46
     1305 CALL                             R47 1 1
     1306 JUMPIFNOT                        R47 ; [+8]
     1307 LENGTH                           R48 R30
     1308 GETTABLE                         R47 R30 R48
     1309 JUMPIFNOTEQKS                    R47 K60 ["braces"] ; [+5]
     1311 LOADB                            R47 1
     1312 SETTABLEKS                       R47 R46 K137 ["comma"]
     1314 LOADK                            R45 K143 ["|"]
     1315 MOVE                             R47 R42
     1316 DUPTABLE                         R48 K146 [{["type"] = "comma", ["value"], ["output"]}]
     1317 SETTABLEKS                       R32 R48 K19 ["value"]
     1319 SETTABLEKS                       R45 R48 K21 ["output"]
     1321 CALL                             R47 1 0
     1322 JUMP                             ; [+1229]
     1323 JUMPIFNOTEQKS                    R32 K78 ["/"] ; [+37]
     1325 GETTABLEKS                       R45 R31 K17 ["type"]
     1327 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+25]
     1329 GETTABLEKS                       R45 R27 K50 ["index"]
     1331 GETTABLEKS                       R47 R27 K52 ["start"]
     1333 ADDK                             R46 R47 K53 [1]
     1334 JUMPIFNOTEQ                      R45 R46 ; [+18]
     1336 GETTABLEKS                       R46 R27 K50 ["index"]
     1338 ADDK                             R45 R46 K53 [1]
     1339 SETTABLEKS                       R45 R27 K52 ["start"]
     1341 LOADK                            R45 K20 [""]
     1342 SETTABLEKS                       R45 R27 K54 ["consumed"]
     1344 LOADK                            R45 K20 [""]
     1345 SETTABLEKS                       R45 R27 K21 ["output"]
     1347 GETIMPORT                        R45 K117 [table.remove]
     1349 MOVE                             R46 R6
     1350 CALL                             R45 1 0
     1351 MOVE                             R31 R5
     1352 JUMP                             ; [+1199]
     1353 MOVE                             R45 R42
     1354 DUPTABLE                         R46 K148 [{["type"] = "slash", ["value"], ["output"]}]
     1355 SETTABLEKS                       R32 R46 K19 ["value"]
     1357 SETTABLEKS                       R13 R46 K21 ["output"]
     1359 CALL                             R45 1 0
     1360 JUMP                             ; [+1191]
     1361 JUMPIFNOTEQKS                    R32 K79 ["."] ; [+68]
     1363 GETTABLEKS                       R45 R27 K60 ["braces"]
     1365 LOADN                            R46 0
     1366 JUMPIFNOTLT                      R46 R45 ; [+32]
     1368 GETTABLEKS                       R45 R31 K17 ["type"]
     1370 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+28]
     1372 GETTABLEKS                       R45 R31 K19 ["value"]
     1374 JUMPIFNOTEQKS                    R45 K79 ["."] ; [+3]
     1376 SETTABLEKS                       R11 R31 K21 ["output"]
     1378 LENGTH                           R46 R29
     1379 GETTABLE                         R45 R29 R46
     1380 LOADK                            R46 K136 ["dots"]
     1381 SETTABLEKS                       R46 R31 K17 ["type"]
     1383 GETTABLEKS                       R47 R31 K21 ["output"]
     1385 MOVE                             R48 R32
     1386 CONCAT                           R46 R47 R48
     1387 SETTABLEKS                       R46 R31 K21 ["output"]
     1389 GETTABLEKS                       R47 R31 K19 ["value"]
     1391 MOVE                             R48 R32
     1392 CONCAT                           R46 R47 R48
     1393 SETTABLEKS                       R46 R31 K19 ["value"]
     1395 LOADB                            R46 1
     1396 SETTABLEKS                       R46 R45 K136 ["dots"]
     1398 JUMP                             ; [+1153]
     1399 GETTABLEKS                       R46 R27 K60 ["braces"]
     1401 GETTABLEKS                       R47 R27 K61 ["parens"]
     1403 ADD                              R45 R46 R47
     1404 JUMPIFNOTEQKN                    R45 K51 [0] ; [+17]
     1406 GETTABLEKS                       R45 R31 K17 ["type"]
     1408 JUMPIFEQKS                       R45 K18 ["bos"] ; [+13]
     1410 GETTABLEKS                       R45 R31 K17 ["type"]
     1412 JUMPIFEQKS                       R45 K147 ["slash"] ; [+9]
     1414 MOVE                             R45 R42
     1415 DUPTABLE                         R46 K124 [{["type"] = "text", ["value"], ["output"]}]
     1416 SETTABLEKS                       R32 R46 K19 ["value"]
     1418 SETTABLEKS                       R11 R46 K21 ["output"]
     1420 CALL                             R45 1 0
     1421 JUMP                             ; [+1130]
     1422 MOVE                             R45 R42
     1423 DUPTABLE                         R46 K149 [{["type"] = "dot", ["value"], ["output"]}]
     1424 SETTABLEKS                       R32 R46 K19 ["value"]
     1426 SETTABLEKS                       R11 R46 K21 ["output"]
     1428 CALL                             R45 1 0
     1429 JUMP                             ; [+1122]
     1430 JUMPIFNOTEQKS                    R32 K150 ["?"] ; [+136]
     1432 GETUPVAL                         R45 4
     1433 GETTABLEKS                       R45 R45 K24 ["toJSBoolean"]
     1435 MOVE                             R46 R31
     1436 CALL                             R45 1 1
     1437 JUMPIFNOT                        R45 ; [+6]
     1438 GETTABLEKS                       R46 R31 K19 ["value"]
     1440 JUMPIFEQKS                       R46 K105 ["("] ; [+2]
     1442 LOADB                            R45 0 +1
     1443 LOADB                            R45 1
     1444 JUMPIF                           R45 ; [+22]
     1445 GETUPVAL                         R46 4
     1446 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1448 GETTABLEKS                       R47 R2 K48 ["noextglob"]
     1450 CALL                             R46 1 1
     1451 JUMPIFEQKB                       R46 TRUE ; [+15]
     1453 MOVE                             R46 R34
     1454 CALL                             R46 0 1
     1455 JUMPIFNOTEQKS                    R46 K105 ["("] ; [+11]
     1457 MOVE                             R46 R34
     1458 LOADN                            R47 2
     1459 CALL                             R46 1 1
     1460 JUMPIFEQKS                       R46 K150 ["?"] ; [+6]
     1462 MOVE                             R46 R43
     1463 LOADK                            R47 K151 ["qmark"]
     1464 MOVE                             R48 R32
     1465 CALL                             R46 2 0
     1466 JUMP                             ; [+1085]
     1467 GETUPVAL                         R46 4
     1468 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1470 MOVE                             R47 R31
     1471 CALL                             R46 1 1
     1472 JUMPIFNOT                        R46 ; [+66]
     1473 GETTABLEKS                       R46 R31 K17 ["type"]
     1475 JUMPIFNOTEQKS                    R46 K109 ["paren"] ; [+63]
     1477 MOVE                             R46 R34
     1478 CALL                             R46 0 1
     1479 MOVE                             R47 R32
     1480 JUMPIFNOTEQKS                    R46 K152 ["<"] ; [+14]
     1482 GETUPVAL                         R48 5
     1483 GETTABLEKS                       R48 R48 K153 ["supportsLookbehinds"]
     1485 CALL                             R48 0 1
     1486 JUMPIF                           R48 ; [+8]
     1487 GETIMPORT                        R48 K4 [error]
     1489 GETUPVAL                         R49 0
     1490 GETTABLEKS                       R49 R49 K5 ["new"]
     1492 LOADK                            R50 K154 ["Node.js v10 or higher is required for regex lookbehinds"]
     1493 CALL                             R49 1 -1
     1494 CALL                             R48 -1 0
     1495 GETTABLEKS                       R48 R31 K19 ["value"]
     1497 JUMPIFNOTEQKS                    R48 K105 ["("] ; [+9]
     1499 GETUPVAL                         R48 8
     1500 LOADK                            R49 K155 ["[!=<:]"]
     1501 CALL                             R48 1 1
     1502 MOVE                             R50 R46
     1503 NAMECALL                         R48 R48 K71 ["test"]
     1505 CALL                             R48 2 1
     1506 JUMPIFNOT                        R48 ; [+18]
     1507 JUMPIFNOTEQKS                    R46 K152 ["<"] ; [+23]
     1509 GETUPVAL                         R48 8
     1510 LOADK                            R49 K156 ["<([!=]|\\w+>)"]
     1511 CALL                             R48 1 1
     1512 GETTABLEKS                       R53 R27 K50 ["index"]
     1514 ADDK                             R52 R53 K53 [1]
     1515 FASTCALL2                        STRING_SUB R0 R52 ; [+4]
     1517 MOVE                             R51 R0
     1518 GETIMPORT                        R50 K85 [string.sub]
     1520 CALL                             R50 2 1
     1521 NAMECALL                         R48 R48 K71 ["test"]
     1523 CALL                             R48 2 1
     1524 JUMPIF                           R48 ; [+6]
     1525 LOADK                            R48 K98 ["\\%s"]
     1526 MOVE                             R50 R32
     1527 NAMECALL                         R48 R48 K16 ["format"]
     1529 CALL                             R48 2 1
     1530 MOVE                             R47 R48
     1531 MOVE                             R48 R42
     1532 DUPTABLE                         R49 K124 [{["type"] = "text", ["value"], ["output"]}]
     1533 SETTABLEKS                       R32 R49 K19 ["value"]
     1535 SETTABLEKS                       R47 R49 K21 ["output"]
     1537 CALL                             R48 1 0
     1538 JUMP                             ; [+1013]
     1539 GETTABLEKS                       R46 R2 K42 ["dot"]
     1541 JUMPIFEQKB                       R46 TRUE ; [+17]
     1543 GETTABLEKS                       R46 R31 K17 ["type"]
     1545 JUMPIFEQKS                       R46 K147 ["slash"] ; [+5]
     1547 GETTABLEKS                       R46 R31 K17 ["type"]
     1549 JUMPIFNOTEQKS                    R46 K18 ["bos"] ; [+9]
     1551 MOVE                             R46 R42
     1552 DUPTABLE                         R47 K157 [{["type"] = "qmark", ["value"], ["output"]}]
     1553 SETTABLEKS                       R32 R47 K19 ["value"]
     1555 SETTABLEKS                       R20 R47 K21 ["output"]
     1557 CALL                             R46 1 0
     1558 JUMP                             ; [+993]
     1559 MOVE                             R46 R42
     1560 DUPTABLE                         R47 K157 [{["type"] = "qmark", ["value"], ["output"]}]
     1561 SETTABLEKS                       R32 R47 K19 ["value"]
     1563 SETTABLEKS                       R19 R47 K21 ["output"]
     1565 CALL                             R46 1 0
     1566 JUMP                             ; [+985]
     1567 JUMPIFNOTEQKS                    R32 K99 ["!"] ; [+44]
     1569 GETUPVAL                         R45 4
     1570 GETTABLEKS                       R45 R45 K24 ["toJSBoolean"]
     1572 GETTABLEKS                       R46 R2 K48 ["noextglob"]
     1574 CALL                             R45 1 1
     1575 JUMPIFEQKB                       R45 TRUE ; [+25]
     1577 MOVE                             R45 R34
     1578 CALL                             R45 0 1
     1579 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+21]
     1581 MOVE                             R45 R34
     1582 LOADN                            R46 2
     1583 CALL                             R45 1 1
     1584 JUMPIFNOTEQKS                    R45 K150 ["?"] ; [+11]
     1586 GETUPVAL                         R45 8
     1587 LOADK                            R46 K155 ["[!=<:]"]
     1588 CALL                             R45 1 1
     1589 MOVE                             R47 R34
     1590 LOADN                            R48 3
     1591 CALL                             R47 1 -1
     1592 NAMECALL                         R45 R45 K71 ["test"]
     1594 CALL                             R45 -1 1
     1595 JUMPIF                           R45 ; [+5]
     1596 MOVE                             R45 R43
     1597 LOADK                            R46 K158 ["negate"]
     1598 MOVE                             R47 R32
     1599 CALL                             R45 2 0
     1600 JUMP                             ; [+951]
     1601 GETTABLEKS                       R45 R2 K159 ["nonegate"]
     1603 JUMPIFEQKB                       R45 TRUE ; [+8]
     1605 GETTABLEKS                       R45 R27 K50 ["index"]
     1607 JUMPIFNOTEQKN                    R45 K53 [1] ; [+4]
     1609 MOVE                             R45 R39
     1610 CALL                             R45 0 0
     1611 JUMP                             ; [+940]
     1612 JUMPIFNOTEQKS                    R32 K160 ["+"] ; [+72]
     1614 GETUPVAL                         R45 4
     1615 GETTABLEKS                       R45 R45 K24 ["toJSBoolean"]
     1617 GETTABLEKS                       R46 R2 K48 ["noextglob"]
     1619 CALL                             R45 1 1
     1620 JUMPIFEQKB                       R45 TRUE ; [+15]
     1622 MOVE                             R45 R34
     1623 CALL                             R45 0 1
     1624 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+11]
     1626 MOVE                             R45 R34
     1627 LOADN                            R46 2
     1628 CALL                             R45 1 1
     1629 JUMPIFEQKS                       R45 K150 ["?"] ; [+6]
     1631 MOVE                             R45 R43
     1632 LOADK                            R46 K161 ["plus"]
     1633 MOVE                             R47 R32
     1634 CALL                             R45 2 0
     1635 JUMP                             ; [+916]
     1636 JUMPIFEQKNIL                     R31 ; [+5]
     1638 GETTABLEKS                       R45 R31 K19 ["value"]
     1640 JUMPIFEQKS                       R45 K105 ["("] ; [+5]
     1642 GETTABLEKS                       R45 R2 K162 ["regex"]
     1644 JUMPIFNOTEQKB                    R45 FALSE ; [+9]
     1646 MOVE                             R45 R42
     1647 DUPTABLE                         R46 K163 [{["type"] = "plus", ["value"], ["output"]}]
     1648 SETTABLEKS                       R32 R46 K19 ["value"]
     1650 SETTABLEKS                       R12 R46 K21 ["output"]
     1652 CALL                             R45 1 0
     1653 JUMP                             ; [+898]
     1654 JUMPIFEQKNIL                     R31 ; [+13]
     1656 GETTABLEKS                       R45 R31 K17 ["type"]
     1658 JUMPIFEQKS                       R45 K122 ["bracket"] ; [+14]
     1660 GETTABLEKS                       R45 R31 K17 ["type"]
     1662 JUMPIFEQKS                       R45 K109 ["paren"] ; [+10]
     1664 GETTABLEKS                       R45 R31 K17 ["type"]
     1666 JUMPIFEQKS                       R45 K131 ["brace"] ; [+6]
     1668 GETTABLEKS                       R45 R27 K61 ["parens"]
     1670 LOADN                            R46 0
     1671 JUMPIFNOTLT                      R46 R45 ; [+7]
     1673 MOVE                             R45 R42
     1674 DUPTABLE                         R46 K164 [{["type"] = "plus", ["value"]}]
     1675 SETTABLEKS                       R32 R46 K19 ["value"]
     1677 CALL                             R45 1 0
     1678 JUMP                             ; [+873]
     1679 MOVE                             R45 R42
     1680 DUPTABLE                         R46 K164 [{["type"] = "plus", ["value"]}]
     1681 SETTABLEKS                       R12 R46 K19 ["value"]
     1683 CALL                             R45 1 0
     1684 JUMP                             ; [+867]
     1685 JUMPIFNOTEQKS                    R32 K165 ["@"] ; [+30]
     1687 GETUPVAL                         R45 4
     1688 GETTABLEKS                       R45 R45 K24 ["toJSBoolean"]
     1690 GETTABLEKS                       R46 R2 K48 ["noextglob"]
     1692 CALL                             R45 1 1
     1693 JUMPIFEQKB                       R45 TRUE ; [+16]
     1695 MOVE                             R45 R34
     1696 CALL                             R45 0 1
     1697 JUMPIFNOTEQKS                    R45 K105 ["("] ; [+12]
     1699 MOVE                             R45 R34
     1700 LOADN                            R46 2
     1701 CALL                             R45 1 1
     1702 JUMPIFEQKS                       R45 K150 ["?"] ; [+7]
     1704 MOVE                             R45 R42
     1705 DUPTABLE                         R46 K169 [{["type"] = "at", ["extglob"] = True, ["value"], ["output"] = ""}]
     1706 SETTABLEKS                       R32 R46 K19 ["value"]
     1708 CALL                             R45 1 0
     1709 JUMP                             ; [+842]
     1710 MOVE                             R45 R42
     1711 DUPTABLE                         R46 K82 [{["type"] = "text", ["value"]}]
     1712 SETTABLEKS                       R32 R46 K19 ["value"]
     1714 CALL                             R45 1 0
     1715 JUMP                             ; [+836]
     1716 JUMPIFEQKS                       R32 K170 ["*"] ; [+41]
     1718 JUMPIFEQKS                       R32 K171 ["$"] ; [+3]
     1720 JUMPIFNOTEQKS                    R32 K100 ["^"] ; [+7]
     1722 LOADK                            R45 K98 ["\\%s"]
     1723 MOVE                             R47 R32
     1724 NAMECALL                         R45 R45 K16 ["format"]
     1726 CALL                             R45 2 1
     1727 MOVE                             R32 R45
     1728 GETIMPORT                        R45 K173 [string.match]
     1730 GETTABLEKS                       R49 R27 K50 ["index"]
     1732 ADDK                             R48 R49 K53 [1]
     1733 FASTCALL2                        STRING_SUB R0 R48 ; [+4]
     1735 MOVE                             R47 R0
     1736 GETIMPORT                        R46 K85 [string.sub]
     1738 CALL                             R46 2 1
     1739 GETUPVAL                         R47 15
     1740 CALL                             R45 2 1
     1741 JUMPIFEQKNIL                     R45 ; [+10]
     1743 MOVE                             R46 R32
     1744 MOVE                             R47 R45
     1745 CONCAT                           R32 R46 R47
     1746 GETTABLEKS                       R46 R27 K50 ["index"]
     1748 LENGTH                           R47 R45
     1749 ADD                              R46 R46 R47
     1750 SETTABLEKS                       R46 R27 K50 ["index"]
     1752 MOVE                             R46 R42
     1753 DUPTABLE                         R47 K82 [{["type"] = "text", ["value"]}]
     1754 SETTABLEKS                       R32 R47 K19 ["value"]
     1756 CALL                             R46 1 0
     1757 JUMP                             ; [+794]
     1758 JUMPIFEQKNIL                     R31 ; [+43]
     1760 GETTABLEKS                       R45 R31 K17 ["type"]
     1762 JUMPIFEQKS                       R45 K63 ["globstar"] ; [+5]
     1764 GETTABLEKS                       R45 R31 K174 ["star"]
     1766 JUMPIFNOTEQKB                    R45 TRUE ; [+35]
     1768 LOADK                            R45 K174 ["star"]
     1769 SETTABLEKS                       R45 R31 K17 ["type"]
     1771 LOADB                            R45 1
     1772 SETTABLEKS                       R45 R31 K174 ["star"]
     1774 GETTABLEKS                       R46 R31 K19 ["value"]
     1776 MOVE                             R47 R32
     1777 CONCAT                           R45 R46 R47
     1778 SETTABLEKS                       R45 R31 K19 ["value"]
     1780 SETTABLEKS                       R26 R31 K21 ["output"]
     1782 LOADB                            R45 1
     1783 SETTABLEKS                       R45 R27 K56 ["backtrack"]
     1785 LOADB                            R45 1
     1786 SETTABLEKS                       R45 R27 K63 ["globstar"]
     1788 MOVE                             R45 R32
     1789 ORK                              R46 R45 K20 [""]
     1790 GETTABLEKS                       R48 R27 K54 ["consumed"]
     1792 MOVE                             R49 R46
     1793 CONCAT                           R47 R48 R49
     1794 SETTABLEKS                       R47 R27 K54 ["consumed"]
     1796 GETTABLEKS                       R47 R27 K50 ["index"]
     1798 ADDK                             R47 R47 K51 [0]
     1799 SETTABLEKS                       R47 R27 K50 ["index"]
     1801 JUMP                             ; [+750]
     1802 GETTABLEKS                       R48 R27 K50 ["index"]
     1804 ADDK                             R47 R48 K53 [1]
     1805 FASTCALL2                        STRING_SUB R0 R47 ; [+4]
     1807 MOVE                             R46 R0
     1808 GETIMPORT                        R45 K85 [string.sub]
     1810 CALL                             R45 2 1
     1811 GETUPVAL                         R46 4
     1812 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1814 GETTABLEKS                       R47 R2 K48 ["noextglob"]
     1816 CALL                             R46 1 1
     1817 JUMPIFEQKB                       R46 TRUE ; [+14]
     1819 GETUPVAL                         R46 8
     1820 LOADK                            R47 K175 ["^\\([^?]"]
     1821 CALL                             R46 1 1
     1822 MOVE                             R48 R45
     1823 NAMECALL                         R46 R46 K71 ["test"]
     1825 CALL                             R46 2 1
     1826 JUMPIFNOT                        R46 ; [+5]
     1827 MOVE                             R46 R43
     1828 LOADK                            R47 K174 ["star"]
     1829 MOVE                             R48 R32
     1830 CALL                             R46 2 0
     1831 JUMP                             ; [+720]
     1832 GETTABLEKS                       R46 R31 K17 ["type"]
     1834 JUMPIFNOTEQKS                    R46 K174 ["star"] ; [+588]
     1836 GETTABLEKS                       R46 R2 K176 ["noglobstar"]
     1838 JUMPIFNOTEQKB                    R46 TRUE ; [+15]
     1840 MOVE                             R46 R32
     1841 ORK                              R47 R46 K20 [""]
     1842 GETTABLEKS                       R49 R27 K54 ["consumed"]
     1844 MOVE                             R50 R47
     1845 CONCAT                           R48 R49 R50
     1846 SETTABLEKS                       R48 R27 K54 ["consumed"]
     1848 GETTABLEKS                       R48 R27 K50 ["index"]
     1850 ADDK                             R48 R48 K51 [0]
     1851 SETTABLEKS                       R48 R27 K50 ["index"]
     1853 JUMP                             ; [+698]
     1854 GETTABLEKS                       R46 R31 K177 ["prev"]
     1856 GETTABLEKS                       R47 R46 K177 ["prev"]
     1858 LOADB                            R48 1
     1859 GETTABLEKS                       R49 R46 K17 ["type"]
     1861 JUMPIFEQKS                       R49 K147 ["slash"] ; [+7]
     1863 GETTABLEKS                       R49 R46 K17 ["type"]
     1865 JUMPIFEQKS                       R49 K18 ["bos"] ; [+2]
     1867 LOADB                            R48 0 +1
     1868 LOADB                            R48 1
     1869 GETUPVAL                         R50 4
     1870 GETTABLEKS                       R50 R50 K24 ["toJSBoolean"]
     1872 MOVE                             R51 R47
     1873 CALL                             R50 1 1
     1874 JUMPIFNOT                        R50 ; [+12]
     1875 LOADB                            R49 1
     1876 GETTABLEKS                       R50 R47 K17 ["type"]
     1878 JUMPIFEQKS                       R50 K174 ["star"] ; [+9]
     1880 GETTABLEKS                       R50 R47 K17 ["type"]
     1882 JUMPIFEQKS                       R50 K63 ["globstar"] ; [+2]
     1884 LOADB                            R49 0 +1
     1885 LOADB                            R49 1
     1886 JUMP                             ; [+1]
     1887 MOVE                             R49 R47
     1888 GETTABLEKS                       R50 R2 K43 ["bash"]
     1890 JUMPIFNOTEQKB                    R50 TRUE ; [+22]
     1892 JUMPIFNOT                        R48 ; [+14]
     1893 LOADN                            R52 1
     1894 LOADN                            R53 1
     1895 NAMECALL                         R50 R45 K84 ["sub"]
     1897 CALL                             R50 3 1
     1898 JUMPIFEQKNIL                     R50 ; [+14]
     1900 LOADN                            R52 1
     1901 LOADN                            R53 1
     1902 NAMECALL                         R50 R45 K84 ["sub"]
     1904 CALL                             R50 3 1
     1905 JUMPIFEQKS                       R50 K78 ["/"] ; [+7]
     1907 MOVE                             R50 R42
     1908 DUPTABLE                         R51 K178 [{["type"] = "star", ["value"], ["output"] = ""}]
     1909 SETTABLEKS                       R32 R51 K19 ["value"]
     1911 CALL                             R50 1 0
     1912 JUMP                             ; [+639]
     1913 LOADB                            R50 0
     1914 GETTABLEKS                       R51 R27 K60 ["braces"]
     1916 LOADN                            R52 0
     1917 JUMPIFNOTLT                      R52 R51 ; [+12]
     1919 LOADB                            R50 1
     1920 GETTABLEKS                       R51 R46 K17 ["type"]
     1922 JUMPIFEQKS                       R51 K137 ["comma"] ; [+7]
     1924 GETTABLEKS                       R51 R46 K17 ["type"]
     1926 JUMPIFEQKS                       R51 K131 ["brace"] ; [+2]
     1928 LOADB                            R50 0 +1
     1929 LOADB                            R50 1
     1930 LOADB                            R51 0
     1931 LENGTH                           R52 R28
     1932 LOADN                            R53 0
     1933 JUMPIFNOTLT                      R53 R52 ; [+12]
     1935 LOADB                            R51 1
     1936 GETTABLEKS                       R52 R46 K17 ["type"]
     1938 JUMPIFEQKS                       R52 K179 ["pipe"] ; [+7]
     1940 GETTABLEKS                       R52 R46 K17 ["type"]
     1942 JUMPIFEQKS                       R52 K109 ["paren"] ; [+2]
     1944 LOADB                            R51 0 +1
     1945 LOADB                            R51 1
     1946 JUMPIF                           R48 ; [+12]
     1947 GETTABLEKS                       R52 R46 K17 ["type"]
     1949 JUMPIFEQKS                       R52 K109 ["paren"] ; [+9]
     1951 JUMPIF                           R50 ; [+7]
     1952 JUMPIF                           R51 ; [+6]
     1953 MOVE                             R52 R42
     1954 DUPTABLE                         R53 K178 [{["type"] = "star", ["value"], ["output"] = ""}]
     1955 SETTABLEKS                       R32 R53 K19 ["value"]
     1957 CALL                             R52 1 0
     1958 JUMP                             ; [+593]
     1959 GETUPVAL                         R52 7
     1960 GETTABLEKS                       R52 R52 K93 ["slice"]
     1962 MOVE                             R53 R45
     1963 LOADN                            R54 1
     1964 LOADN                            R55 4
     1965 CALL                             R52 3 1
     1966 JUMPIFNOTEQKS                    R52 K180 ["/**"] ; [+37]
     1968 GETTABLEKS                       R55 R27 K50 ["index"]
     1970 ADDK                             R54 R55 K181 [4]
     1971 GETTABLEKS                       R56 R27 K50 ["index"]
     1973 ADDK                             R55 R56 K181 [4]
     1974 NAMECALL                         R52 R0 K84 ["sub"]
     1976 CALL                             R52 3 1
     1977 GETUPVAL                         R53 4
     1978 GETTABLEKS                       R53 R53 K24 ["toJSBoolean"]
     1980 MOVE                             R54 R52
     1981 CALL                             R53 1 1
     1982 JUMPIFNOT                        R53 ; [+2]
     1983 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+20]
     1985 GETUPVAL                         R53 7
     1986 GETTABLEKS                       R53 R53 K93 ["slice"]
     1988 MOVE                             R54 R45
     1989 LOADN                            R55 4
     1990 CALL                             R53 2 1
     1991 MOVE                             R45 R53
     1992 GETTABLEKS                       R54 R27 K54 ["consumed"]
     1994 LOADK                            R55 K180 ["/**"]
     1995 CONCAT                           R53 R54 R55
     1996 SETTABLEKS                       R53 R27 K54 ["consumed"]
     1998 GETTABLEKS                       R53 R27 K50 ["index"]
     2000 ADDK                             R53 R53 K182 [3]
     2001 SETTABLEKS                       R53 R27 K50 ["index"]
     2003 JUMPBACK                         ; [-45]
     2004 GETTABLEKS                       R52 R46 K17 ["type"]
     2006 JUMPIFNOTEQKS                    R52 K18 ["bos"] ; [+56]
     2008 GETTABLEKS                       R53 R27 K50 ["index"]
     2010 JUMPIFEQ                         R53 R4 ; [+2]
     2012 LOADB                            R52 0 +1
     2013 LOADB                            R52 1
     2014 JUMPIFNOT                        R52 ; [+48]
     2015 LOADK                            R52 K63 ["globstar"]
     2016 SETTABLEKS                       R52 R31 K17 ["type"]
     2018 GETTABLEKS                       R53 R31 K19 ["value"]
     2020 MOVE                             R54 R32
     2021 CONCAT                           R52 R53 R54
     2022 SETTABLEKS                       R52 R31 K19 ["value"]
     2024 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2025 MOVE                             R54 R7
     2026 MOVE                             R55 R22
     2027 GETUPVAL                         R57 4
     2028 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     2030 GETTABLEKS                       R58 R2 K42 ["dot"]
     2032 CALL                             R57 1 1
     2033 JUMPIFNOT                        R57 ; [+2]
     2034 MOVE                             R56 R15
     2035 JUMP                             ; [+1]
     2036 MOVE                             R56 R11
     2037 NAMECALL                         R52 R52 K16 ["format"]
     2039 CALL                             R52 4 1
     2040 SETTABLEKS                       R52 R31 K21 ["output"]
     2042 GETTABLEKS                       R52 R31 K21 ["output"]
     2044 SETTABLEKS                       R52 R27 K21 ["output"]
     2046 LOADB                            R52 1
     2047 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2049 MOVE                             R52 R32
     2050 ORK                              R53 R52 K20 [""]
     2051 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2053 MOVE                             R56 R53
     2054 CONCAT                           R54 R55 R56
     2055 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2057 GETTABLEKS                       R54 R27 K50 ["index"]
     2059 ADDK                             R54 R54 K51 [0]
     2060 SETTABLEKS                       R54 R27 K50 ["index"]
     2062 JUMP                             ; [+489]
     2063 GETTABLEKS                       R52 R46 K17 ["type"]
     2065 JUMPIFNOTEQKS                    R52 K147 ["slash"] ; [+105]
     2067 GETTABLEKS                       R52 R46 K177 ["prev"]
     2069 GETTABLEKS                       R52 R52 K17 ["type"]
     2071 JUMPIFEQKS                       R52 K18 ["bos"] ; [+99]
     2073 GETUPVAL                         R52 4
     2074 GETTABLEKS                       R52 R52 K24 ["toJSBoolean"]
     2076 MOVE                             R53 R49
     2077 CALL                             R52 1 1
     2078 JUMPIF                           R52 ; [+92]
     2079 GETTABLEKS                       R53 R27 K50 ["index"]
     2081 JUMPIFEQ                         R53 R4 ; [+2]
     2083 LOADB                            R52 0 +1
     2084 LOADB                            R52 1
     2085 JUMPIFNOT                        R52 ; [+85]
     2086 GETUPVAL                         R52 7
     2087 GETTABLEKS                       R52 R52 K93 ["slice"]
     2089 GETTABLEKS                       R53 R27 K21 ["output"]
     2091 LOADN                            R54 1
     2092 GETTABLEKS                       R58 R46 K21 ["output"]
     2094 GETTABLEKS                       R59 R31 K21 ["output"]
     2096 CONCAT                           R57 R58 R59
     2097 LENGTH                           R56 R57
     2098 MINUS                            R55 R56
     2099 CALL                             R52 3 1
     2100 SETTABLEKS                       R52 R27 K21 ["output"]
     2102 LOADK                            R52 K183 ["(?:%s"]
     2103 GETTABLEKS                       R54 R46 K21 ["output"]
     2105 NAMECALL                         R52 R52 K16 ["format"]
     2107 CALL                             R52 2 1
     2108 SETTABLEKS                       R52 R46 K21 ["output"]
     2110 LOADK                            R52 K63 ["globstar"]
     2111 SETTABLEKS                       R52 R31 K17 ["type"]
     2113 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2114 MOVE                             R57 R7
     2115 MOVE                             R58 R22
     2116 GETUPVAL                         R60 4
     2117 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2119 GETTABLEKS                       R61 R2 K42 ["dot"]
     2121 CALL                             R60 1 1
     2122 JUMPIFNOT                        R60 ; [+2]
     2123 MOVE                             R59 R15
     2124 JUMP                             ; [+1]
     2125 MOVE                             R59 R11
     2126 NAMECALL                         R55 R55 K16 ["format"]
     2128 CALL                             R55 4 1
     2129 MOVE                             R53 R55
     2130 GETTABLEKS                       R55 R2 K184 ["strictSlashes"]
     2132 JUMPIFNOT                        R55 ; [+2]
     2133 LOADK                            R54 K111 [")"]
     2134 JUMP                             ; [+1]
     2135 LOADK                            R54 K185 ["|$)"]
     2136 CONCAT                           R52 R53 R54
     2137 SETTABLEKS                       R52 R31 K21 ["output"]
     2139 GETTABLEKS                       R53 R31 K19 ["value"]
     2141 MOVE                             R54 R32
     2142 CONCAT                           R52 R53 R54
     2143 SETTABLEKS                       R52 R31 K19 ["value"]
     2145 LOADB                            R52 1
     2146 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2148 GETTABLEKS                       R53 R27 K21 ["output"]
     2150 GETTABLEKS                       R54 R46 K21 ["output"]
     2152 GETTABLEKS                       R55 R31 K21 ["output"]
     2154 CONCAT                           R52 R53 R55
     2155 SETTABLEKS                       R52 R27 K21 ["output"]
     2157 MOVE                             R52 R32
     2158 ORK                              R53 R52 K20 [""]
     2159 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2161 MOVE                             R56 R53
     2162 CONCAT                           R54 R55 R56
     2163 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2165 GETTABLEKS                       R54 R27 K50 ["index"]
     2167 ADDK                             R54 R54 K51 [0]
     2168 SETTABLEKS                       R54 R27 K50 ["index"]
     2170 JUMP                             ; [+381]
     2171 GETTABLEKS                       R52 R46 K17 ["type"]
     2173 JUMPIFNOTEQKS                    R52 K147 ["slash"] ; [+114]
     2175 GETTABLEKS                       R52 R46 K177 ["prev"]
     2177 GETTABLEKS                       R52 R52 K17 ["type"]
     2179 JUMPIFEQKS                       R52 K18 ["bos"] ; [+108]
     2181 LOADN                            R54 1
     2182 LOADN                            R55 1
     2183 NAMECALL                         R52 R45 K84 ["sub"]
     2185 CALL                             R52 3 1
     2186 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+101]
     2188 LOADN                            R55 2
     2189 LOADN                            R56 2
     2190 NAMECALL                         R53 R45 K84 ["sub"]
     2192 CALL                             R53 3 1
     2193 JUMPIFEQKNIL                     R53 ; [+3]
     2195 LOADK                            R52 K186 ["|$"]
     2196 JUMP                             ; [+1]
     2197 LOADK                            R52 K20 [""]
     2198 GETUPVAL                         R53 7
     2199 GETTABLEKS                       R53 R53 K93 ["slice"]
     2201 GETTABLEKS                       R54 R27 K21 ["output"]
     2203 LOADN                            R55 1
     2204 GETTABLEKS                       R59 R46 K21 ["output"]
     2206 GETTABLEKS                       R60 R31 K21 ["output"]
     2208 CONCAT                           R58 R59 R60
     2209 LENGTH                           R57 R58
     2210 MINUS                            R56 R57
     2211 CALL                             R53 3 1
     2212 SETTABLEKS                       R53 R27 K21 ["output"]
     2214 LOADK                            R53 K183 ["(?:%s"]
     2215 GETTABLEKS                       R55 R46 K21 ["output"]
     2217 NAMECALL                         R53 R53 K16 ["format"]
     2219 CALL                             R53 2 1
     2220 SETTABLEKS                       R53 R46 K21 ["output"]
     2222 LOADK                            R53 K63 ["globstar"]
     2223 SETTABLEKS                       R53 R31 K17 ["type"]
     2225 LOADK                            R53 K187 ["%s%s|%s%s)"]
     2226 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2227 MOVE                             R57 R7
     2228 MOVE                             R58 R22
     2229 GETUPVAL                         R60 4
     2230 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2232 GETTABLEKS                       R61 R2 K42 ["dot"]
     2234 CALL                             R60 1 1
     2235 JUMPIFNOT                        R60 ; [+2]
     2236 MOVE                             R59 R15
     2237 JUMP                             ; [+1]
     2238 MOVE                             R59 R11
     2239 NAMECALL                         R55 R55 K16 ["format"]
     2241 CALL                             R55 4 1
     2242 MOVE                             R56 R13
     2243 MOVE                             R57 R13
     2244 MOVE                             R58 R52
     2245 NAMECALL                         R53 R53 K16 ["format"]
     2247 CALL                             R53 5 1
     2248 SETTABLEKS                       R53 R31 K21 ["output"]
     2250 GETTABLEKS                       R54 R31 K19 ["value"]
     2252 MOVE                             R55 R32
     2253 CONCAT                           R53 R54 R55
     2254 SETTABLEKS                       R53 R31 K19 ["value"]
     2256 GETTABLEKS                       R54 R27 K21 ["output"]
     2258 GETTABLEKS                       R55 R46 K21 ["output"]
     2260 GETTABLEKS                       R56 R31 K21 ["output"]
     2262 CONCAT                           R53 R54 R56
     2263 SETTABLEKS                       R53 R27 K21 ["output"]
     2265 LOADB                            R53 1
     2266 SETTABLEKS                       R53 R27 K63 ["globstar"]
     2268 MOVE                             R54 R32
     2269 MOVE                             R55 R35
     2270 CALL                             R55 0 1
     2271 CONCAT                           R53 R54 R55
     2272 ORK                              R54 R53 K20 [""]
     2273 GETTABLEKS                       R56 R27 K54 ["consumed"]
     2275 MOVE                             R57 R54
     2276 CONCAT                           R55 R56 R57
     2277 SETTABLEKS                       R55 R27 K54 ["consumed"]
     2279 GETTABLEKS                       R55 R27 K50 ["index"]
     2281 ADDK                             R55 R55 K51 [0]
     2282 SETTABLEKS                       R55 R27 K50 ["index"]
     2284 MOVE                             R53 R42
     2285 DUPTABLE                         R54 K188 [{["type"] = "slash", ["value"] = "/", ["output"] = ""}]
     2286 CALL                             R53 1 0
     2287 JUMP                             ; [+264]
     2288 GETTABLEKS                       R52 R46 K17 ["type"]
     2290 JUMPIFNOTEQKS                    R52 K18 ["bos"] ; [+68]
     2292 LOADN                            R54 1
     2293 LOADN                            R55 1
     2294 NAMECALL                         R52 R45 K84 ["sub"]
     2296 CALL                             R52 3 1
     2297 JUMPIFNOTEQKS                    R52 K78 ["/"] ; [+61]
     2299 LOADK                            R52 K63 ["globstar"]
     2300 SETTABLEKS                       R52 R31 K17 ["type"]
     2302 GETTABLEKS                       R53 R31 K19 ["value"]
     2304 MOVE                             R54 R32
     2305 CONCAT                           R52 R53 R54
     2306 SETTABLEKS                       R52 R31 K19 ["value"]
     2308 LOADK                            R52 K189 ["(?:^|%s|%s%s)"]
     2309 MOVE                             R54 R13
     2310 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2311 MOVE                             R57 R7
     2312 MOVE                             R58 R22
     2313 GETUPVAL                         R60 4
     2314 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2316 GETTABLEKS                       R61 R2 K42 ["dot"]
     2318 CALL                             R60 1 1
     2319 JUMPIFNOT                        R60 ; [+2]
     2320 MOVE                             R59 R15
     2321 JUMP                             ; [+1]
     2322 MOVE                             R59 R11
     2323 NAMECALL                         R55 R55 K16 ["format"]
     2325 CALL                             R55 4 1
     2326 MOVE                             R56 R13
     2327 NAMECALL                         R52 R52 K16 ["format"]
     2329 CALL                             R52 4 1
     2330 SETTABLEKS                       R52 R31 K21 ["output"]
     2332 GETTABLEKS                       R52 R31 K21 ["output"]
     2334 SETTABLEKS                       R52 R27 K21 ["output"]
     2336 LOADB                            R52 1
     2337 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2339 MOVE                             R53 R32
     2340 MOVE                             R54 R35
     2341 CALL                             R54 0 1
     2342 CONCAT                           R52 R53 R54
     2343 ORK                              R53 R52 K20 [""]
     2344 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2346 MOVE                             R56 R53
     2347 CONCAT                           R54 R55 R56
     2348 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2350 GETTABLEKS                       R54 R27 K50 ["index"]
     2352 ADDK                             R54 R54 K51 [0]
     2353 SETTABLEKS                       R54 R27 K50 ["index"]
     2355 MOVE                             R52 R42
     2356 DUPTABLE                         R53 K188 [{["type"] = "slash", ["value"] = "/", ["output"] = ""}]
     2357 CALL                             R52 1 0
     2358 JUMP                             ; [+193]
     2359 GETUPVAL                         R52 7
     2360 GETTABLEKS                       R52 R52 K93 ["slice"]
     2362 GETTABLEKS                       R53 R27 K21 ["output"]
     2364 LOADN                            R54 1
     2365 GETTABLEKS                       R57 R31 K21 ["output"]
     2367 LENGTH                           R56 R57
     2368 MINUS                            R55 R56
     2369 CALL                             R52 3 1
     2370 SETTABLEKS                       R52 R27 K21 ["output"]
     2372 LOADK                            R52 K63 ["globstar"]
     2373 SETTABLEKS                       R52 R31 K17 ["type"]
     2375 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2376 MOVE                             R54 R7
     2377 MOVE                             R55 R22
     2378 GETUPVAL                         R57 4
     2379 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     2381 GETTABLEKS                       R58 R2 K42 ["dot"]
     2383 CALL                             R57 1 1
     2384 JUMPIFNOT                        R57 ; [+2]
     2385 MOVE                             R56 R15
     2386 JUMP                             ; [+1]
     2387 MOVE                             R56 R11
     2388 NAMECALL                         R52 R52 K16 ["format"]
     2390 CALL                             R52 4 1
     2391 SETTABLEKS                       R52 R31 K21 ["output"]
     2393 GETTABLEKS                       R53 R31 K19 ["value"]
     2395 MOVE                             R54 R32
     2396 CONCAT                           R52 R53 R54
     2397 SETTABLEKS                       R52 R31 K19 ["value"]
     2399 GETTABLEKS                       R53 R27 K21 ["output"]
     2401 GETTABLEKS                       R54 R31 K21 ["output"]
     2403 CONCAT                           R52 R53 R54
     2404 SETTABLEKS                       R52 R27 K21 ["output"]
     2406 LOADB                            R52 1
     2407 SETTABLEKS                       R52 R27 K63 ["globstar"]
     2409 MOVE                             R52 R32
     2410 ORK                              R53 R52 K20 [""]
     2411 GETTABLEKS                       R55 R27 K54 ["consumed"]
     2413 MOVE                             R56 R53
     2414 CONCAT                           R54 R55 R56
     2415 SETTABLEKS                       R54 R27 K54 ["consumed"]
     2417 GETTABLEKS                       R54 R27 K50 ["index"]
     2419 ADDK                             R54 R54 K51 [0]
     2420 SETTABLEKS                       R54 R27 K50 ["index"]
     2422 JUMP                             ; [+129]
     2423 DUPTABLE                         R46 K190 [{["type"] = "star", ["value"], ["output"]}]
     2424 SETTABLEKS                       R32 R46 K19 ["value"]
     2426 SETTABLEKS                       R26 R46 K21 ["output"]
     2428 GETTABLEKS                       R47 R2 K43 ["bash"]
     2430 JUMPIFNOTEQKB                    R47 TRUE ; [+22]
     2432 LOADK                            R47 K191 [".*?"]
     2433 SETTABLEKS                       R47 R46 K21 ["output"]
     2435 GETTABLEKS                       R47 R31 K17 ["type"]
     2437 JUMPIFEQKS                       R47 K18 ["bos"] ; [+5]
     2439 GETTABLEKS                       R47 R31 K17 ["type"]
     2441 JUMPIFNOTEQKS                    R47 K147 ["slash"] ; [+7]
     2443 MOVE                             R48 R24
     2444 GETTABLEKS                       R49 R46 K21 ["output"]
     2446 CONCAT                           R47 R48 R49
     2447 SETTABLEKS                       R47 R46 K21 ["output"]
     2449 MOVE                             R47 R42
     2450 MOVE                             R48 R46
     2451 CALL                             R47 1 0
     2452 JUMP                             ; [+99]
     2453 JUMPIFEQKNIL                     R31 ; [+19]
     2455 GETTABLEKS                       R47 R31 K17 ["type"]
     2457 JUMPIFEQKS                       R47 K122 ["bracket"] ; [+5]
     2459 GETTABLEKS                       R47 R31 K17 ["type"]
     2461 JUMPIFNOTEQKS                    R47 K109 ["paren"] ; [+11]
     2463 GETTABLEKS                       R47 R2 K162 ["regex"]
     2465 JUMPIFNOTEQKB                    R47 TRUE ; [+7]
     2467 SETTABLEKS                       R32 R46 K21 ["output"]
     2469 MOVE                             R47 R42
     2470 MOVE                             R48 R46
     2471 CALL                             R47 1 0
     2472 JUMP                             ; [+79]
     2473 GETTABLEKS                       R47 R27 K50 ["index"]
     2475 GETTABLEKS                       R48 R27 K52 ["start"]
     2477 JUMPIFEQ                         R47 R48 ; [+9]
     2479 GETTABLEKS                       R47 R31 K17 ["type"]
     2481 JUMPIFEQKS                       R47 K147 ["slash"] ; [+5]
     2483 GETTABLEKS                       R47 R31 K17 ["type"]
     2485 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+63]
     2487 GETTABLEKS                       R47 R31 K17 ["type"]
     2489 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+14]
     2491 GETTABLEKS                       R48 R27 K21 ["output"]
     2493 MOVE                             R49 R17
     2494 CONCAT                           R47 R48 R49
     2495 SETTABLEKS                       R47 R27 K21 ["output"]
     2497 GETTABLEKS                       R48 R31 K21 ["output"]
     2499 MOVE                             R49 R17
     2500 CONCAT                           R47 R48 R49
     2501 SETTABLEKS                       R47 R31 K21 ["output"]
     2503 JUMP                             ; [+29]
     2504 GETTABLEKS                       R47 R2 K42 ["dot"]
     2506 JUMPIFNOTEQKB                    R47 TRUE ; [+14]
     2508 GETTABLEKS                       R48 R27 K21 ["output"]
     2510 MOVE                             R49 R18
     2511 CONCAT                           R47 R48 R49
     2512 SETTABLEKS                       R47 R27 K21 ["output"]
     2514 GETTABLEKS                       R48 R31 K21 ["output"]
     2516 MOVE                             R49 R18
     2517 CONCAT                           R47 R48 R49
     2518 SETTABLEKS                       R47 R31 K21 ["output"]
     2520 JUMP                             ; [+12]
     2521 GETTABLEKS                       R48 R27 K21 ["output"]
     2523 MOVE                             R49 R24
     2524 CONCAT                           R47 R48 R49
     2525 SETTABLEKS                       R47 R27 K21 ["output"]
     2527 GETTABLEKS                       R48 R31 K21 ["output"]
     2529 MOVE                             R49 R24
     2530 CONCAT                           R47 R48 R49
     2531 SETTABLEKS                       R47 R31 K21 ["output"]
     2533 MOVE                             R47 R34
     2534 CALL                             R47 0 1
     2535 JUMPIFEQKS                       R47 K170 ["*"] ; [+13]
     2537 GETTABLEKS                       R48 R27 K21 ["output"]
     2539 MOVE                             R49 R14
     2540 CONCAT                           R47 R48 R49
     2541 SETTABLEKS                       R47 R27 K21 ["output"]
     2543 GETTABLEKS                       R48 R31 K21 ["output"]
     2545 MOVE                             R49 R14
     2546 CONCAT                           R47 R48 R49
     2547 SETTABLEKS                       R47 R31 K21 ["output"]
     2549 MOVE                             R47 R42
     2550 MOVE                             R48 R46
     2551 CALL                             R47 1 0
     2552 JUMPBACK                         ; [-2191]
     2553 GETTABLEKS                       R45 R27 K59 ["brackets"]
     2555 LOADN                            R46 0
     2556 JUMPIFNOTLT                      R46 R45 ; [+40]
     2558 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2560 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2562 GETIMPORT                        R45 K4 [error]
     2564 GETUPVAL                         R46 0
     2565 GETTABLEKS                       R46 R46 K5 ["new"]
     2567 LOADK                            R48 K113 ["SyntaxError: "]
     2568 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2569 LOADK                            R51 K121 ["closing"]
     2570 LOADK                            R52 K88 ["]"]
     2571 LOADK                            R53 K88 ["]"]
     2572 NAMECALL                         R49 R49 K16 ["format"]
     2574 CALL                             R49 4 1
     2575 CONCAT                           R47 R48 R49
     2576 CALL                             R46 1 -1
     2577 CALL                             R45 -1 0
     2578 GETUPVAL                         R45 5
     2579 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2581 GETTABLEKS                       R46 R27 K21 ["output"]
     2583 LOADK                            R47 K89 ["["]
     2584 CALL                             R45 2 1
     2585 SETTABLEKS                       R45 R27 K21 ["output"]
     2587 GETTABLEKS                       R45 R27 K59 ["brackets"]
     2589 SUBK                             R45 R45 K53 [1]
     2590 SETTABLEKS                       R45 R27 K59 ["brackets"]
     2592 GETIMPORT                        R45 K117 [table.remove]
     2594 MOVE                             R46 R30
     2595 CALL                             R45 1 0
     2596 JUMPBACK                         ; [-44]
     2597 GETTABLEKS                       R45 R27 K61 ["parens"]
     2599 LOADN                            R46 0
     2600 JUMPIFNOTLT                      R46 R45 ; [+40]
     2602 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2604 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2606 GETIMPORT                        R45 K4 [error]
     2608 GETUPVAL                         R46 0
     2609 GETTABLEKS                       R46 R46 K5 ["new"]
     2611 LOADK                            R48 K113 ["SyntaxError: "]
     2612 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2613 LOADK                            R51 K121 ["closing"]
     2614 LOADK                            R52 K111 [")"]
     2615 LOADK                            R53 K111 [")"]
     2616 NAMECALL                         R49 R49 K16 ["format"]
     2618 CALL                             R49 4 1
     2619 CONCAT                           R47 R48 R49
     2620 CALL                             R46 1 -1
     2621 CALL                             R45 -1 0
     2622 GETUPVAL                         R45 5
     2623 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2625 GETTABLEKS                       R46 R27 K21 ["output"]
     2627 LOADK                            R47 K105 ["("]
     2628 CALL                             R45 2 1
     2629 SETTABLEKS                       R45 R27 K21 ["output"]
     2631 GETTABLEKS                       R45 R27 K61 ["parens"]
     2633 SUBK                             R45 R45 K53 [1]
     2634 SETTABLEKS                       R45 R27 K61 ["parens"]
     2636 GETIMPORT                        R45 K117 [table.remove]
     2638 MOVE                             R46 R30
     2639 CALL                             R45 1 0
     2640 JUMPBACK                         ; [-44]
     2641 GETTABLEKS                       R45 R27 K60 ["braces"]
     2643 LOADN                            R46 0
     2644 JUMPIFNOTLT                      R46 R45 ; [+40]
     2646 GETTABLEKS                       R45 R2 K112 ["strictBrackets"]
     2648 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2650 GETIMPORT                        R45 K4 [error]
     2652 GETUPVAL                         R46 0
     2653 GETTABLEKS                       R46 R46 K5 ["new"]
     2655 LOADK                            R48 K113 ["SyntaxError: "]
     2656 LOADK                            R49 K114 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2657 LOADK                            R51 K121 ["closing"]
     2658 LOADK                            R52 K135 ["}"]
     2659 LOADK                            R53 K135 ["}"]
     2660 NAMECALL                         R49 R49 K16 ["format"]
     2662 CALL                             R49 4 1
     2663 CONCAT                           R47 R48 R49
     2664 CALL                             R46 1 -1
     2665 CALL                             R45 -1 0
     2666 GETUPVAL                         R45 5
     2667 GETTABLEKS                       R45 R45 K192 ["escapeLast"]
     2669 GETTABLEKS                       R46 R27 K21 ["output"]
     2671 LOADK                            R47 K129 ["{"]
     2672 CALL                             R45 2 1
     2673 SETTABLEKS                       R45 R27 K21 ["output"]
     2675 GETTABLEKS                       R45 R27 K60 ["braces"]
     2677 SUBK                             R45 R45 K53 [1]
     2678 SETTABLEKS                       R45 R27 K60 ["braces"]
     2680 GETIMPORT                        R45 K117 [table.remove]
     2682 MOVE                             R46 R30
     2683 CALL                             R45 1 0
     2684 JUMPBACK                         ; [-44]
     2685 GETTABLEKS                       R45 R2 K184 ["strictSlashes"]
     2687 JUMPIFEQKB                       R45 TRUE ; [+19]
     2689 GETTABLEKS                       R45 R31 K17 ["type"]
     2691 JUMPIFEQKS                       R45 K174 ["star"] ; [+5]
     2693 GETTABLEKS                       R45 R31 K17 ["type"]
     2695 JUMPIFNOTEQKS                    R45 K122 ["bracket"] ; [+11]
     2697 MOVE                             R45 R42
     2698 DUPTABLE                         R46 K194 [{["type"] = "maybe_slash", ["value"] = "", ["output"]}]
     2699 LOADK                            R47 K195 ["%s?"]
     2700 MOVE                             R49 R13
     2701 NAMECALL                         R47 R47 K16 ["format"]
     2703 CALL                             R47 2 1
     2704 SETTABLEKS                       R47 R46 K21 ["output"]
     2706 CALL                             R45 1 0
     2707 GETTABLEKS                       R45 R27 K56 ["backtrack"]
     2709 JUMPIFNOTEQKB                    R45 TRUE ; [+36]
     2711 LOADK                            R45 K20 [""]
     2712 SETTABLEKS                       R45 R27 K21 ["output"]
     2714 GETIMPORT                        R45 K141 [ipairs]
     2716 GETTABLEKS                       R46 R27 K64 ["tokens"]
     2718 CALL                             R45 1 3
     2719 FORGPREP_INEXT                   R45
     2720 GETTABLEKS                       R51 R27 K21 ["output"]
     2722 GETTABLEKS                       R53 R49 K21 ["output"]
     2724 JUMPIFEQKNIL                     R53 ; [+4]
     2726 GETTABLEKS                       R52 R49 K21 ["output"]
     2728 JUMP                             ; [+2]
     2729 GETTABLEKS                       R52 R49 K19 ["value"]
     2731 CONCAT                           R50 R51 R52
     2732 SETTABLEKS                       R50 R27 K21 ["output"]
     2734 GETTABLEKS                       R50 R49 K196 ["suffix"]
     2736 JUMPIFNOT                        R50 ; [+7]
     2737 GETTABLEKS                       R51 R27 K21 ["output"]
     2739 GETTABLEKS                       R52 R49 K196 ["suffix"]
     2741 CONCAT                           R50 R51 R52
     2742 SETTABLEKS                       R50 R27 K21 ["output"]
     2744 FORGLOOP                         R45 2 [inext] ; [-25]
     2746 CLOSEUPVALS                      R0
     2747 RETURN                           R27 1

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
