PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["escapeRegex"]
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
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K7 ["sort"]
       21 MOVE                             R3 R0
       22 CALL                             R2 1 0
       23 LOADK                            R2 K8 ["[%s]"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K9 ["join"]
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
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K9 ["join"]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R5 R6 K14 ["map"]
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
        3 GETUPVAL                         R7 2
        4 GETTABLEKS                       R6 R7 K1 ["toJSBoolean"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["index"]
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
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K0 ["index"]
        9 ADD                              R4 R5 R1
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K0 ["index"]
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
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["index"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["index"]
       13 FASTCALL                         STRING_SUB ; [+2]
       14 GETIMPORT                        R1 K5 [string.sub]
       16 CALL                             R1 3 1
       17 ORK                              R0 R1 K2 [""]
       18 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K1 ["index"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["type"]
        3 JUMPIFNOTEQKS                    R1 K1 ["globstar"] ; [+89]
        5 LOADB                            R1 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["braces"]
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
       57 GETUPVAL                         R5 3
       58 GETTABLEKS                       R4 R5 K10 ["slice"]
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R5 R6 K11 ["output"]
       63 LOADN                            R6 0
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R9 R10 K11 ["output"]
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
       87 GETUPVAL                         R7 0
       88 GETTABLEKS                       R6 R7 K11 ["output"]
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
      112 GETUPVAL                         R2 5
      113 GETTABLEKS                       R1 R2 K16 ["toJSBoolean"]
      115 GETTABLEKS                       R2 R0 K14 ["value"]
      117 CALL                             R1 1 1
      118 JUMPIF                           R1 ; [+7]
      119 GETUPVAL                         R2 5
      120 GETTABLEKS                       R1 R2 K16 ["toJSBoolean"]
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
      160 GETUPVAL                         R2 0
      161 GETTABLEKS                       R1 R2 K0 ["type"]
      163 JUMPIFNOTEQKS                    R1 K20 ["text"] ; [+24]
      165 GETTABLEKS                       R1 R0 K0 ["type"]
      167 JUMPIFNOTEQKS                    R1 K20 ["text"] ; [+20]
      169 GETUPVAL                         R1 0
      170 GETTABLEKS                       R3 R1 K14 ["value"]
      172 GETTABLEKS                       R4 R0 K14 ["value"]
      174 CONCAT                           R2 R3 R4
      175 SETTABLEKS                       R2 R1 K14 ["value"]
      177 GETUPVAL                         R1 0
      178 GETUPVAL                         R6 0
      179 GETTABLEKS                       R5 R6 K11 ["output"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["assign"]
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R5 1
        6 GETTABLE                         R4 R5 R1
        7 DUPTABLE                         R5 K3 [{"conditions", "inner"}]
        8 LOADN                            R6 1
        9 SETTABLEKS                       R6 R5 K1 ["conditions"]
       11 LOADK                            R6 K4 [""]
       12 SETTABLEKS                       R6 R5 K2 ["inner"]
       14 CALL                             R2 3 1
       15 GETUPVAL                         R3 2
       16 SETTABLEKS                       R3 R2 K5 ["prev"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K6 ["parens"]
       21 SETTABLEKS                       R3 R2 K6 ["parens"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K7 ["output"]
       26 SETTABLEKS                       R3 R2 K7 ["output"]
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R6 R7 K8 ["toJSBoolean"]
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R7 R8 K9 ["capture"]
       34 CALL                             R6 1 1
       35 JUMPIFNOT                        R6 ; [+2]
       36 LOADK                            R4 K10 ["("]
       37 JUMP                             ; [+1]
       38 LOADK                            R4 K4 [""]
       39 GETTABLEKS                       R5 R2 K11 ["open"]
       41 CONCAT                           R3 R4 R5
       42 GETUPVAL                         R4 3
       43 GETTABLEKS                       R5 R4 K6 ["parens"]
       45 ADDK                             R5 R5 K12 [1]
       46 SETTABLEKS                       R5 R4 K6 ["parens"]
       48 GETUPVAL                         R5 6
       49 FASTCALL2K                       TABLE_INSERT R5 K6 ; [+4]
       51 LOADK                            R6 K6 ["parens"]
       52 GETIMPORT                        R4 K15 [table.insert]
       54 CALL                             R4 2 0
       55 GETUPVAL                         R4 7
       56 DUPTABLE                         R5 K18 [{"type", "value", "output"}]
       57 SETTABLEKS                       R0 R5 K16 ["type"]
       59 SETTABLEKS                       R1 R5 K17 ["value"]
       61 GETUPVAL                         R8 4
       62 GETTABLEKS                       R7 R8 K8 ["toJSBoolean"]
       64 GETUPVAL                         R9 3
       65 GETTABLEKS                       R8 R9 K7 ["output"]
       67 CALL                             R7 1 1
       68 JUMPIFNOT                        R7 ; [+2]
       69 LOADK                            R6 K4 [""]
       70 JUMP                             ; [+1]
       71 GETUPVAL                         R6 8
       72 SETTABLEKS                       R6 R5 K7 ["output"]
       74 CALL                             R4 1 0
       75 GETUPVAL                         R4 7
       76 DUPTABLE                         R5 K20 [{"type", "extglob", "value", "output"}]
       77 LOADK                            R6 K21 ["paren"]
       78 SETTABLEKS                       R6 R5 K16 ["type"]
       80 LOADB                            R6 1
       81 SETTABLEKS                       R6 R5 K19 ["extglob"]
       83 GETUPVAL                         R6 9
       84 CALL                             R6 0 1
       85 SETTABLEKS                       R6 R5 K17 ["value"]
       87 SETTABLEKS                       R3 R5 K7 ["output"]
       89 CALL                             R4 1 0
       90 GETUPVAL                         R5 10
       91 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       93 MOVE                             R6 R2
       94 GETIMPORT                        R4 K15 [table.insert]
       96 CALL                             R4 2 0
       97 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 1
        1 GETUPVAL                         R4 2
        2 GETTABLEKS                       R3 R4 K1 ["index"]
        4 ADDK                             R2 R3 K0 [1]
        5 FASTCALL2                        STRING_SUB R1 R2 ; [+3]
        7 GETIMPORT                        R0 K4 [string.sub]
        9 CALL                             R0 2 1
       10 SETUPVAL                         R0 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["close"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["toJSBoolean"]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K2 ["capture"]
        8 CALL                             R4 1 1
        9 JUMPIFNOT                        R4 ; [+2]
       10 LOADK                            R3 K3 [")"]
       11 JUMP                             ; [+1]
       12 LOADK                            R3 K4 [""]
       13 CONCAT                           R1 R2 R3
       14 LOADNIL                          R2
       15 GETTABLEKS                       R3 R0 K5 ["type"]
       17 JUMPIFNOTEQKS                    R3 K6 ["negate"] ; [+145]
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
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R10 R11 K1 ["toJSBoolean"]
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
       61 GETUPVAL                         R6 7
       62 GETTABLEKS                       R5 R6 K13 ["index"]
       64 GETUPVAL                         R6 8
       65 JUMPIFEQ                         R5 R6 ; [+2]
       67 LOADB                            R4 0 +1
       68 LOADB                            R4 1
       69 JUMPIF                           R4 ; [+17]
       70 GETUPVAL                         R4 9
       71 LOADK                            R5 K14 ["^\\)+$"]
       72 CALL                             R4 1 1
       73 GETUPVAL                         R7 10
       74 GETUPVAL                         R10 7
       75 GETTABLEKS                       R9 R10 K13 ["index"]
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
      104 JUMPIFEQKNIL                     R4 ; [+48]
      106 GETUPVAL                         R6 10
      107 GETUPVAL                         R9 7
      108 GETTABLEKS                       R8 R9 K13 ["index"]
      110 ADDK                             R7 R8 K15 [1]
      111 FASTCALL2                        STRING_SUB R6 R7 ; [+3]
      113 GETIMPORT                        R5 K18 [string.sub]
      115 CALL                             R5 2 1
      116 MOVE                             R2 R5
      117 MOVE                             R4 R2
      118 JUMPIFNOT                        R4 ; [+34]
      119 GETUPVAL                         R4 9
      120 LOADK                            R5 K22 ["^\\.[^\\\\/.]+$"]
      121 CALL                             R4 1 1
      122 MOVE                             R6 R2
      123 NAMECALL                         R4 R4 K19 ["test"]
      125 CALL                             R4 2 1
      126 JUMPIFNOT                        R4 ; [+26]
      127 GETUPVAL                         R5 11
      128 MOVE                             R6 R2
      129 GETUPVAL                         R8 12
      130 GETTABLEKS                       R7 R8 K23 ["assign"]
      132 NEWTABLE                         R8 0 0
      134 GETUPVAL                         R9 13
      135 DUPTABLE                         R10 K25 [{"fastpaths"}]
      136 LOADB                            R11 0
      137 SETTABLEKS                       R11 R10 K24 ["fastpaths"]
      139 CALL                             R7 3 -1
      140 CALL                             R5 -1 1
      141 GETTABLEKS                       R4 R5 K26 ["output"]
      143 LOADK                            R5 K27 [")%s)%s)"]
      144 MOVE                             R7 R4
      145 MOVE                             R8 R3
      146 NAMECALL                         R5 R5 K12 ["format"]
      148 CALL                             R5 3 1
      149 SETTABLEKS                       R5 R0 K0 ["close"]
      151 GETTABLEKS                       R1 R0 K0 ["close"]
      153 GETTABLEKS                       R5 R0 K28 ["prev"]
      155 GETTABLEKS                       R4 R5 K5 ["type"]
      157 JUMPIFNOTEQKS                    R4 K29 ["bos"] ; [+5]
      159 GETUPVAL                         R4 7
      160 LOADB                            R5 1
      161 SETTABLEKS                       R5 R4 K30 ["negatedExtglob"]
      163 GETUPVAL                         R3 14
      164 DUPTABLE                         R4 K33 [{"type", "extglob", "value", "output"}]
      165 LOADK                            R5 K34 ["paren"]
      166 SETTABLEKS                       R5 R4 K5 ["type"]
      168 LOADB                            R5 1
      169 SETTABLEKS                       R5 R4 K31 ["extglob"]
      171 GETUPVAL                         R5 15
      172 SETTABLEKS                       R5 R4 K32 ["value"]
      174 SETTABLEKS                       R1 R4 K26 ["output"]
      176 CALL                             R3 1 0
      177 GETUPVAL                         R3 7
      178 GETTABLEKS                       R4 R3 K35 ["parens"]
      180 SUBK                             R4 R4 K15 [1]
      181 SETTABLEKS                       R4 R3 K35 ["parens"]
      183 GETIMPORT                        R3 K38 [table.remove]
      185 GETUPVAL                         R4 16
      186 CALL                             R3 1 0
      187 CLOSEUPVALS                      R2
      188 RETURN                           R0 0

PROTO_19:
        0 JUMPIFNOTEQKS                    R3 K0 ["\\"] ; [+4]
        2 LOADB                            R6 1
        3 SETUPVAL                         R6 0
        4 RETURN                           R0 1
        5 JUMPIFNOTEQKS                    R3 K1 ["?"] ; [+40]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K2 ["toJSBoolean"]
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
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R6 R7 K2 ["toJSBoolean"]
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
       73 GETUPVAL                         R8 1
       74 GETTABLEKS                       R7 R8 K2 ["toJSBoolean"]
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
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K5 ["new"]
       12 LOADK                            R4 K6 ["TypeError: Expected a string"]
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 0
       15 GETUPVAL                         R3 1
       16 GETTABLE                         R2 R3 R0
       17 OR                               R0 R2 R0
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R2 R3 K7 ["assign"]
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
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R6 R7 K5 ["new"]
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
       67 DUPTABLE                         R5 K20 [{"type", "value", "output"}]
       68 LOADK                            R6 K21 ["bos"]
       69 SETTABLEKS                       R6 R5 K17 ["type"]
       71 LOADK                            R6 K22 [""]
       72 SETTABLEKS                       R6 R5 K18 ["value"]
       74 GETTABLEKS                       R7 R2 K23 ["prepend"]
       76 ORK                              R6 R7 K22 [""]
       77 SETTABLEKS                       R6 R5 K19 ["output"]
       79 NEWTABLE                         R6 0 1
       81 MOVE                             R7 R5
       82 SETLIST                          R6 R7 1 [1]
       84 GETUPVAL                         R9 4
       85 GETTABLEKS                       R8 R9 K24 ["toJSBoolean"]
       87 GETTABLEKS                       R9 R2 K25 ["capture"]
       89 CALL                             R8 1 1
       90 JUMPIFNOT                        R8 ; [+2]
       91 LOADK                            R7 K22 [""]
       92 JUMP                             ; [+1]
       93 LOADK                            R7 K26 ["?:"]
       94 GETUPVAL                         R9 5
       95 GETTABLEKS                       R8 R9 K27 ["isWindows"]
       97 MOVE                             R9 R1
       98 CALL                             R8 1 1
       99 GETUPVAL                         R10 6
      100 GETTABLEKS                       R9 R10 K28 ["globChars"]
      102 MOVE                             R10 R8
      103 CALL                             R9 1 1
      104 GETUPVAL                         R11 6
      105 GETTABLEKS                       R10 R11 K29 ["extglobChars"]
      107 MOVE                             R11 R9
      108 CALL                             R10 1 1
      109 GETTABLEKS                       R11 R9 K30 ["DOT_LITERAL"]
      111 GETTABLEKS                       R12 R9 K31 ["PLUS_LITERAL"]
      113 GETTABLEKS                       R13 R9 K32 ["SLASH_LITERAL"]
      115 GETTABLEKS                       R14 R9 K33 ["ONE_CHAR"]
      117 GETTABLEKS                       R15 R9 K34 ["DOTS_SLASH"]
      119 GETTABLEKS                       R16 R9 K35 ["NO_DOT"]
      121 GETTABLEKS                       R17 R9 K36 ["NO_DOT_SLASH"]
      123 GETTABLEKS                       R18 R9 K37 ["NO_DOTS_SLASH"]
      125 GETTABLEKS                       R19 R9 K38 ["QMARK"]
      127 GETTABLEKS                       R20 R9 K39 ["QMARK_NO_DOT"]
      129 GETTABLEKS                       R21 R9 K40 ["STAR"]
      131 GETTABLEKS                       R22 R9 K41 ["START_ANCHOR"]
      133 NEWCLOSURE                       R23 P0
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R22
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R11
      139 GETUPVAL                         R26 4
      140 GETTABLEKS                       R25 R26 K24 ["toJSBoolean"]
      142 GETTABLEKS                       R26 R2 K42 ["dot"]
      144 CALL                             R25 1 1
      145 JUMPIFNOT                        R25 ; [+2]
      146 LOADK                            R24 K22 [""]
      147 JUMP                             ; [+1]
      148 MOVE                             R24 R16
      149 GETUPVAL                         R27 4
      150 GETTABLEKS                       R26 R27 K24 ["toJSBoolean"]
      152 GETTABLEKS                       R27 R2 K42 ["dot"]
      154 CALL                             R26 1 1
      155 JUMPIFNOT                        R26 ; [+2]
      156 MOVE                             R25 R19
      157 JUMP                             ; [+1]
      158 MOVE                             R25 R20
      159 GETTABLEKS                       R27 R2 K43 ["bash"]
      161 JUMPIFNOTEQKB                    R27 TRUE ; [+18]
      163 LOADK                            R26 K44 ["(%s(?:(?!%s%s).)*?)"]
      164 MOVE                             R28 R7
      165 MOVE                             R29 R22
      166 GETUPVAL                         R32 4
      167 GETTABLEKS                       R31 R32 K24 ["toJSBoolean"]
      169 GETTABLEKS                       R32 R2 K42 ["dot"]
      171 CALL                             R31 1 1
      172 JUMPIFNOT                        R31 ; [+2]
      173 MOVE                             R30 R15
      174 JUMP                             ; [+1]
      175 MOVE                             R30 R11
      176 NAMECALL                         R26 R26 K16 ["format"]
      178 CALL                             R26 4 1
      179 JUMP                             ; [+1]
      180 MOVE                             R26 R21
      181 GETUPVAL                         R28 4
      182 GETTABLEKS                       R27 R28 K24 ["toJSBoolean"]
      184 GETTABLEKS                       R28 R2 K25 ["capture"]
      186 CALL                             R27 1 1
      187 JUMPIFNOT                        R27 ; [+6]
      188 LOADK                            R27 K45 ["(%s)"]
      189 MOVE                             R29 R26
      190 NAMECALL                         R27 R27 K16 ["format"]
      192 CALL                             R27 2 1
      193 MOVE                             R26 R27
      194 GETTABLEKS                       R28 R2 K46 ["noext"]
      196 FASTCALL1                        TYPEOF R28 ; [+2]
      197 GETIMPORT                        R27 K1 [typeof]
      199 CALL                             R27 1 1
      200 JUMPIFNOTEQKS                    R27 K47 ["boolean"] ; [+5]
      202 GETTABLEKS                       R27 R2 K46 ["noext"]
      204 SETTABLEKS                       R27 R2 K48 ["noextglob"]
      206 DUPTABLE                         R27 K62 [{"input", "index", "start", "dot", "consumed", "output", "prefix", "backtrack", "negated", "brackets", "braces", "parens", "quotes", "globstar", "tokens"}]
      207 SETTABLEKS                       R0 R27 K49 ["input"]
      209 LOADN                            R28 0
      210 SETTABLEKS                       R28 R27 K50 ["index"]
      212 LOADN                            R28 1
      213 SETTABLEKS                       R28 R27 K51 ["start"]
      215 GETTABLEKS                       R29 R2 K42 ["dot"]
      217 JUMPIFEQKB                       R29 TRUE ; [+2]
      219 LOADB                            R28 0 +1
      220 LOADB                            R28 1
      221 SETTABLEKS                       R28 R27 K42 ["dot"]
      223 LOADK                            R28 K22 [""]
      224 SETTABLEKS                       R28 R27 K52 ["consumed"]
      226 LOADK                            R28 K22 [""]
      227 SETTABLEKS                       R28 R27 K19 ["output"]
      229 LOADK                            R28 K22 [""]
      230 SETTABLEKS                       R28 R27 K53 ["prefix"]
      232 LOADB                            R28 0
      233 SETTABLEKS                       R28 R27 K54 ["backtrack"]
      235 LOADB                            R28 0
      236 SETTABLEKS                       R28 R27 K55 ["negated"]
      238 LOADN                            R28 0
      239 SETTABLEKS                       R28 R27 K56 ["brackets"]
      241 LOADN                            R28 0
      242 SETTABLEKS                       R28 R27 K57 ["braces"]
      244 LOADN                            R28 0
      245 SETTABLEKS                       R28 R27 K58 ["parens"]
      247 LOADN                            R28 0
      248 SETTABLEKS                       R28 R27 K59 ["quotes"]
      250 LOADB                            R28 0
      251 SETTABLEKS                       R28 R27 K60 ["globstar"]
      253 SETTABLEKS                       R6 R27 K61 ["tokens"]
      255 GETUPVAL                         R29 5
      256 GETTABLEKS                       R28 R29 K63 ["removePrefix"]
      258 MOVE                             R29 R0
      259 MOVE                             R30 R27
      260 CALL                             R28 2 1
      261 MOVE                             R0 R28
      262 LENGTH                           R4 R0
      263 NEWTABLE                         R28 0 0
      265 NEWTABLE                         R29 0 0
      267 NEWTABLE                         R30 0 0
      269 MOVE                             R31 R5
      270 LOADNIL                          R32
      271 NEWCLOSURE                       R33 P1
      272 CAPTURE                          VAL R27
      273 CAPTURE                          REF R4
      274 NEWCLOSURE                       R34 P2
      275 CAPTURE                          REF R0
      276 CAPTURE                          VAL R27
      277 SETTABLEKS                       R34 R27 K64 ["peek"]
      279 GETTABLEKS                       R34 R27 K64 ["peek"]
      281 NEWCLOSURE                       R35 P3
      282 CAPTURE                          VAL R27
      283 CAPTURE                          REF R0
      284 SETTABLEKS                       R35 R27 K65 ["advance"]
      286 GETTABLEKS                       R35 R27 K65 ["advance"]
      288 NEWCLOSURE                       R36 P4
      289 CAPTURE                          REF R0
      290 CAPTURE                          VAL R27
      291 NEWCLOSURE                       R37 P5
      292 CAPTURE                          VAL R27
      293 NEWCLOSURE                       R38 P6
      294 CAPTURE                          VAL R27
      295 NEWCLOSURE                       R39 P7
      296 CAPTURE                          VAL R34
      297 CAPTURE                          VAL R35
      298 CAPTURE                          VAL R27
      299 NEWCLOSURE                       R40 P8
      300 CAPTURE                          VAL R27
      301 CAPTURE                          VAL R30
      302 NEWCLOSURE                       R41 P9
      303 CAPTURE                          VAL R27
      304 CAPTURE                          VAL R30
      305 NEWCLOSURE                       R42 P10
      306 CAPTURE                          REF R31
      307 CAPTURE                          VAL R27
      308 CAPTURE                          VAL R28
      309 CAPTURE                          UPVAL U7
      310 CAPTURE                          REF R26
      311 CAPTURE                          UPVAL U4
      312 CAPTURE                          VAL R6
      313 NEWCLOSURE                       R43 P11
      314 CAPTURE                          UPVAL U2
      315 CAPTURE                          VAL R10
      316 CAPTURE                          REF R31
      317 CAPTURE                          VAL R27
      318 CAPTURE                          UPVAL U4
      319 CAPTURE                          VAL R2
      320 CAPTURE                          VAL R30
      321 CAPTURE                          VAL R42
      322 CAPTURE                          VAL R14
      323 CAPTURE                          VAL R35
      324 CAPTURE                          VAL R28
      325 NEWCLOSURE                       R44 P12
      326 CAPTURE                          UPVAL U4
      327 CAPTURE                          VAL R2
      328 CAPTURE                          REF R26
      329 CAPTURE                          VAL R7
      330 CAPTURE                          VAL R22
      331 CAPTURE                          VAL R15
      332 CAPTURE                          VAL R11
      333 CAPTURE                          VAL R27
      334 CAPTURE                          REF R4
      335 CAPTURE                          UPVAL U8
      336 CAPTURE                          REF R0
      337 CAPTURE                          UPVAL U9
      338 CAPTURE                          UPVAL U2
      339 CAPTURE                          VAL R1
      340 CAPTURE                          VAL R42
      341 CAPTURE                          REF R32
      342 CAPTURE                          VAL R30
      343 GETTABLEKS                       R45 R2 K66 ["fastpaths"]
      345 JUMPIFEQKB                       R45 FALSE ; [+58]
      347 GETUPVAL                         R45 8
      348 LOADK                            R46 K67 ["(^[*!]|[/()[\\]{}\"])"]
      349 CALL                             R45 1 1
      350 MOVE                             R47 R0
      351 NAMECALL                         R45 R45 K68 ["test"]
      353 CALL                             R45 2 1
      354 JUMPIF                           R45 ; [+49]
      355 LOADB                            R45 0
      356 GETUPVAL                         R46 10
      357 MOVE                             R47 R0
      358 GETUPVAL                         R48 11
      359 NEWCLOSURE                       R49 P13
      360 CAPTURE                          REF R45
      361 CAPTURE                          UPVAL U4
      362 CAPTURE                          VAL R19
      363 CAPTURE                          VAL R25
      364 CAPTURE                          VAL R11
      365 CAPTURE                          REF R26
      366 CALL                             R46 3 1
      367 JUMPIFNOTEQKB                    R45 TRUE ; [+14]
      369 GETTABLEKS                       R47 R2 K69 ["unescape"]
      371 JUMPIFNOTEQKB                    R47 TRUE ; [+6]
      373 GETIMPORT                        R47 K4 [error]
      375 LOADK                            R48 K70 ["not implemented"]
      376 CALL                             R47 1 0
      377 JUMP                             ; [+4]
      378 GETIMPORT                        R47 K4 [error]
      380 LOADK                            R48 K70 ["not implemented"]
      381 CALL                             R47 1 0
      382 JUMPIFNOTEQ                      R46 R0 ; [+9]
      384 GETTABLEKS                       R47 R2 K71 ["contains"]
      386 JUMPIFNOTEQKB                    R47 TRUE ; [+5]
      388 SETTABLEKS                       R0 R27 K19 ["output"]
      390 CLOSEUPVALS                      R0
      391 RETURN                           R27 1
      392 GETUPVAL                         R48 5
      393 GETTABLEKS                       R47 R48 K72 ["wrapOutput"]
      395 MOVE                             R48 R46
      396 MOVE                             R49 R27
      397 MOVE                             R50 R1
      398 CALL                             R47 3 1
      399 SETTABLEKS                       R47 R27 K19 ["output"]
      401 CLOSEUPVALS                      R0
      402 RETURN                           R27 1
      403 CLOSEUPVALS                      R45
      404 GETTABLEKS                       R46 R27 K50 ["index"]
      406 JUMPIFEQ                         R46 R4 ; [+2]
      408 LOADB                            R45 0 +1
      409 LOADB                            R45 1
      410 JUMPIF                           R45 ; [+2286]
      411 MOVE                             R45 R35
      412 CALL                             R45 0 1
      413 MOVE                             R32 R45
      414 JUMPIFEQKS                       R32 K73 ["\0"] ; [+2281]
      416 JUMPIFNOTEQKS                    R32 K74 ["\\"] ; [+92]
      418 MOVE                             R45 R34
      419 CALL                             R45 0 1
      420 JUMPIFNOTEQKS                    R45 K75 ["/"] ; [+5]
      422 GETTABLEKS                       R46 R2 K43 ["bash"]
      424 JUMPIFNOTEQKB                    R46 TRUE ; [+2271]
      426 JUMPIFEQKS                       R45 K76 ["."] ; [+2269]
      428 JUMPIFEQKS                       R45 K77 [";"] ; [+2267]
      430 GETUPVAL                         R47 4
      431 GETTABLEKS                       R46 R47 K24 ["toJSBoolean"]
      433 MOVE                             R47 R45
      434 CALL                             R46 1 1
      435 JUMPIF                           R46 ; [+12]
      436 MOVE                             R46 R32
      437 LOADK                            R47 K74 ["\\"]
      438 CONCAT                           R32 R46 R47
      439 MOVE                             R46 R42
      440 DUPTABLE                         R47 K78 [{"type", "value"}]
      441 LOADK                            R48 K79 ["text"]
      442 SETTABLEKS                       R48 R47 K17 ["type"]
      444 SETTABLEKS                       R32 R47 K18 ["value"]
      446 CALL                             R46 1 0
      447 JUMP                             ; [+2248]
      448 GETUPVAL                         R46 8
      449 LOADK                            R47 K80 ["^\\\\+"]
      450 CALL                             R46 1 1
      451 GETTABLEKS                       R51 R27 K50 ["index"]
      453 ADDK                             R50 R51 K81 [1]
      454 FASTCALL2                        STRING_SUB R0 R50 ; [+4]
      456 MOVE                             R49 R0
      457 GETIMPORT                        R48 K83 [string.sub]
      459 CALL                             R48 2 1
      460 NAMECALL                         R46 R46 K84 ["exec"]
      462 CALL                             R46 2 1
      463 LOADN                            R47 0
      464 JUMPIFEQKNIL                     R46 ; [+19]
      466 GETTABLEN                        R49 R46 1
      467 LENGTH                           R48 R49
      468 LOADN                            R49 2
      469 JUMPIFNOTLT                      R49 R48 ; [+14]
      471 GETTABLEN                        R48 R46 1
      472 LENGTH                           R47 R48
      473 GETTABLEKS                       R48 R27 K50 ["index"]
      475 ADD                              R48 R48 R47
      476 SETTABLEKS                       R48 R27 K50 ["index"]
      478 MODK                             R48 R47 K85 [2]
      479 JUMPIFEQKN                       R48 K86 [0] ; [+4]
      481 MOVE                             R48 R32
      482 LOADK                            R49 K74 ["\\"]
      483 CONCAT                           R32 R48 R49
      484 GETTABLEKS                       R48 R2 K69 ["unescape"]
      486 JUMPIFNOTEQKB                    R48 TRUE ; [+5]
      488 MOVE                             R48 R35
      489 CALL                             R48 0 1
      490 MOVE                             R32 R48
      491 JUMP                             ; [+4]
      492 MOVE                             R48 R32
      493 MOVE                             R49 R35
      494 CALL                             R49 0 1
      495 CONCAT                           R32 R48 R49
      496 GETTABLEKS                       R48 R27 K56 ["brackets"]
      498 JUMPIFNOTEQKN                    R48 K86 [0] ; [+10]
      500 MOVE                             R48 R42
      501 DUPTABLE                         R49 K78 [{"type", "value"}]
      502 LOADK                            R50 K79 ["text"]
      503 SETTABLEKS                       R50 R49 K17 ["type"]
      505 SETTABLEKS                       R32 R49 K18 ["value"]
      507 CALL                             R48 1 0
      508 JUMP                             ; [+2187]
      509 GETTABLEKS                       R45 R27 K56 ["brackets"]
      511 LOADN                            R46 0
      512 JUMPIFNOTLT                      R46 R45 ; [+179]
      514 JUMPIFNOTEQKS                    R32 K87 ["]"] ; [+9]
      516 GETTABLEKS                       R45 R31 K18 ["value"]
      518 JUMPIFEQKS                       R45 K88 ["["] ; [+5]
      520 GETTABLEKS                       R45 R31 K18 ["value"]
      522 JUMPIFNOTEQKS                    R45 K89 ["[^"] ; [+169]
      524 GETTABLEKS                       R45 R2 K90 ["posix"]
      526 JUMPIFEQKB                       R45 FALSE ; [+82]
      528 JUMPIFNOTEQKS                    R32 K91 [":"] ; [+80]
      530 GETUPVAL                         R46 7
      531 GETTABLEKS                       R45 R46 K92 ["slice"]
      533 GETTABLEKS                       R46 R31 K18 ["value"]
      535 LOADN                            R47 1
      536 CALL                             R45 2 1
      537 LOADK                            R48 K88 ["["]
      538 LOADN                            R49 1
      539 LOADB                            R50 1
      540 NAMECALL                         R46 R45 K93 ["find"]
      542 CALL                             R46 4 1
      543 JUMPIFEQKNIL                     R46 ; [+65]
      545 LOADB                            R46 1
      546 SETTABLEKS                       R46 R31 K90 ["posix"]
      548 LOADK                            R48 K91 [":"]
      549 LOADN                            R49 1
      550 LOADB                            R50 1
      551 NAMECALL                         R46 R45 K93 ["find"]
      553 CALL                             R46 4 1
      554 JUMPIFEQKNIL                     R46 ; [+54]
      556 GETUPVAL                         R47 7
      557 GETTABLEKS                       R46 R47 K94 ["lastIndexOf"]
      559 GETTABLEKS                       R47 R31 K18 ["value"]
      561 LOADK                            R48 K88 ["["]
      562 CALL                             R46 2 1
      563 GETUPVAL                         R48 7
      564 GETTABLEKS                       R47 R48 K92 ["slice"]
      566 GETTABLEKS                       R48 R31 K18 ["value"]
      568 LOADN                            R49 1
      569 MOVE                             R50 R46
      570 CALL                             R47 3 1
      571 GETUPVAL                         R49 7
      572 GETTABLEKS                       R48 R49 K92 ["slice"]
      574 GETTABLEKS                       R49 R31 K18 ["value"]
      576 ADDK                             R50 R46 K85 [2]
      577 CALL                             R48 2 1
      578 GETUPVAL                         R50 12
      579 GETTABLE                         R49 R50 R48
      580 JUMPIFNOT                        R49 ; [+28]
      581 MOVE                             R51 R47
      582 MOVE                             R52 R49
      583 CONCAT                           R50 R51 R52
      584 SETTABLEKS                       R50 R31 K18 ["value"]
      586 LOADB                            R50 1
      587 SETTABLEKS                       R50 R27 K54 ["backtrack"]
      589 MOVE                             R50 R35
      590 CALL                             R50 0 0
      591 GETUPVAL                         R51 4
      592 GETTABLEKS                       R50 R51 K24 ["toJSBoolean"]
      594 GETTABLEKS                       R51 R5 K19 ["output"]
      596 CALL                             R50 1 1
      597 JUMPIF                           R50 ; [+2098]
      598 GETUPVAL                         R51 13
      599 GETTABLEKS                       R50 R51 K95 ["indexOf"]
      601 MOVE                             R51 R6
      602 MOVE                             R52 R31
      603 CALL                             R50 2 1
      604 JUMPIFNOTEQKN                    R50 K85 [2] ; [+2091]
      606 SETTABLEKS                       R14 R5 K19 ["output"]
      608 JUMP                             ; [+2087]
      609 JUMPIFNOTEQKS                    R32 K88 ["["] ; [+5]
      611 MOVE                             R45 R34
      612 CALL                             R45 0 1
      613 JUMPIFNOTEQKS                    R45 K91 [":"] ; [+7]
      615 JUMPIFNOTEQKS                    R32 K96 ["-"] ; [+11]
      617 MOVE                             R45 R34
      618 CALL                             R45 0 1
      619 JUMPIFNOTEQKS                    R45 K87 ["]"] ; [+7]
      621 LOADK                            R45 K97 ["\\%s"]
      622 MOVE                             R47 R32
      623 NAMECALL                         R45 R45 K16 ["format"]
      625 CALL                             R45 2 1
      626 MOVE                             R32 R45
      627 JUMPIFNOTEQKS                    R32 K87 ["]"] ; [+15]
      629 GETTABLEKS                       R45 R31 K18 ["value"]
      631 JUMPIFEQKS                       R45 K88 ["["] ; [+5]
      633 GETTABLEKS                       R45 R31 K18 ["value"]
      635 JUMPIFNOTEQKS                    R45 K89 ["[^"] ; [+7]
      637 LOADK                            R45 K97 ["\\%s"]
      638 MOVE                             R47 R32
      639 NAMECALL                         R45 R45 K16 ["format"]
      641 CALL                             R45 2 1
      642 MOVE                             R32 R45
      643 GETTABLEKS                       R45 R2 K90 ["posix"]
      645 JUMPIFNOTEQKB                    R45 TRUE ; [+8]
      647 JUMPIFNOTEQKS                    R32 K98 ["!"] ; [+6]
      649 GETTABLEKS                       R45 R31 K18 ["value"]
      651 JUMPIFNOTEQKS                    R45 K88 ["["] ; [+2]
      653 LOADK                            R32 K99 ["^"]
      654 GETTABLEKS                       R46 R31 K18 ["value"]
      656 MOVE                             R47 R32
      657 CONCAT                           R45 R46 R47
      658 SETTABLEKS                       R45 R31 K18 ["value"]
      660 DUPTABLE                         R45 K100 [{"value"}]
      661 SETTABLEKS                       R32 R45 K18 ["value"]
      663 GETTABLEKS                       R47 R27 K19 ["output"]
      665 GETTABLEKS                       R49 R45 K19 ["output"]
      667 JUMPIFEQKNIL                     R49 ; [+4]
      669 GETTABLEKS                       R48 R45 K19 ["output"]
      671 JUMP                             ; [+2]
      672 GETTABLEKS                       R48 R45 K18 ["value"]
      674 CONCAT                           R46 R47 R48
      675 SETTABLEKS                       R46 R27 K19 ["output"]
      677 GETTABLEKS                       R46 R45 K18 ["value"]
      679 ORK                              R47 R46 K22 [""]
      680 GETTABLEKS                       R49 R27 K52 ["consumed"]
      682 MOVE                             R50 R47
      683 CONCAT                           R48 R49 R50
      684 SETTABLEKS                       R48 R27 K52 ["consumed"]
      686 GETTABLEKS                       R48 R27 K50 ["index"]
      688 ADDK                             R48 R48 K86 [0]
      689 SETTABLEKS                       R48 R27 K50 ["index"]
      691 JUMP                             ; [+2004]
      692 GETTABLEKS                       R45 R27 K59 ["quotes"]
      694 JUMPIFNOTEQKN                    R45 K81 [1] ; [+47]
      696 JUMPIFEQKS                       R32 K101 ["\""] ; [+45]
      698 GETUPVAL                         R46 5
      699 GETTABLEKS                       R45 R46 K102 ["escapeRegex"]
      701 MOVE                             R46 R32
      702 CALL                             R45 1 1
      703 MOVE                             R32 R45
      704 GETTABLEKS                       R46 R31 K18 ["value"]
      706 MOVE                             R47 R32
      707 CONCAT                           R45 R46 R47
      708 SETTABLEKS                       R45 R31 K18 ["value"]
      710 DUPTABLE                         R45 K100 [{"value"}]
      711 SETTABLEKS                       R32 R45 K18 ["value"]
      713 GETTABLEKS                       R47 R27 K19 ["output"]
      715 GETTABLEKS                       R49 R45 K19 ["output"]
      717 JUMPIFEQKNIL                     R49 ; [+4]
      719 GETTABLEKS                       R48 R45 K19 ["output"]
      721 JUMP                             ; [+2]
      722 GETTABLEKS                       R48 R45 K18 ["value"]
      724 CONCAT                           R46 R47 R48
      725 SETTABLEKS                       R46 R27 K19 ["output"]
      727 GETTABLEKS                       R46 R45 K18 ["value"]
      729 ORK                              R47 R46 K22 [""]
      730 GETTABLEKS                       R49 R27 K52 ["consumed"]
      732 MOVE                             R50 R47
      733 CONCAT                           R48 R49 R50
      734 SETTABLEKS                       R48 R27 K52 ["consumed"]
      736 GETTABLEKS                       R48 R27 K50 ["index"]
      738 ADDK                             R48 R48 K86 [0]
      739 SETTABLEKS                       R48 R27 K50 ["index"]
      741 JUMP                             ; [+1954]
      742 JUMPIFNOTEQKS                    R32 K101 ["\""] ; [+23]
      744 GETTABLEKS                       R46 R27 K59 ["quotes"]
      746 JUMPIFNOTEQKN                    R46 K81 [1] ; [+3]
      748 LOADN                            R45 0
      749 JUMP                             ; [+1]
      750 LOADN                            R45 1
      751 SETTABLEKS                       R45 R27 K59 ["quotes"]
      753 GETTABLEKS                       R45 R2 K103 ["keepQuotes"]
      755 JUMPIFNOTEQKB                    R45 TRUE ; [+1940]
      757 MOVE                             R45 R42
      758 DUPTABLE                         R46 K78 [{"type", "value"}]
      759 LOADK                            R47 K79 ["text"]
      760 SETTABLEKS                       R47 R46 K17 ["type"]
      762 SETTABLEKS                       R32 R46 K18 ["value"]
      764 CALL                             R45 1 0
      765 JUMP                             ; [+1930]
      766 JUMPIFNOTEQKS                    R32 K104 ["("] ; [+22]
      768 GETTABLEKS                       R45 R27 K58 ["parens"]
      770 ADDK                             R45 R45 K81 [1]
      771 SETTABLEKS                       R45 R27 K58 ["parens"]
      773 FASTCALL2K                       TABLE_INSERT R30 K58 ; [+5]
      775 MOVE                             R46 R30
      776 LOADK                            R47 K58 ["parens"]
      777 GETIMPORT                        R45 K107 [table.insert]
      779 CALL                             R45 2 0
      780 MOVE                             R45 R42
      781 DUPTABLE                         R46 K78 [{"type", "value"}]
      782 LOADK                            R47 K108 ["paren"]
      783 SETTABLEKS                       R47 R46 K17 ["type"]
      785 SETTABLEKS                       R32 R46 K18 ["value"]
      787 CALL                             R45 1 0
      788 JUMP                             ; [+1907]
      789 JUMPIFNOTEQKS                    R32 K109 [")"] ; [+73]
      791 GETTABLEKS                       R45 R27 K58 ["parens"]
      793 JUMPIFNOTEQKN                    R45 K86 [0] ; [+21]
      795 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
      797 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      799 GETIMPORT                        R45 K4 [error]
      801 GETUPVAL                         R47 0
      802 GETTABLEKS                       R46 R47 K5 ["new"]
      804 LOADK                            R48 K111 ["SyntaxError: "]
      805 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      806 LOADK                            R51 K113 ["opening"]
      807 LOADK                            R52 K104 ["("]
      808 LOADK                            R53 K104 ["("]
      809 NAMECALL                         R49 R49 K16 ["format"]
      811 CALL                             R49 4 1
      812 CONCAT                           R47 R48 R49
      813 CALL                             R46 1 -1
      814 CALL                             R45 -1 0
      815 LENGTH                           R46 R28
      816 GETTABLE                         R45 R28 R46
      817 JUMPIFEQKNIL                     R45 ; [+15]
      819 GETTABLEKS                       R46 R27 K58 ["parens"]
      821 GETTABLEKS                       R48 R45 K58 ["parens"]
      823 ADDK                             R47 R48 K81 [1]
      824 JUMPIFNOTEQ                      R46 R47 ; [+8]
      826 MOVE                             R46 R44
      827 GETIMPORT                        R47 K115 [table.remove]
      829 MOVE                             R48 R28
      830 CALL                             R47 1 1
      831 CALL                             R46 1 0
      832 JUMP                             ; [+1863]
      833 MOVE                             R46 R42
      834 DUPTABLE                         R47 K20 [{"type", "value", "output"}]
      835 LOADK                            R48 K108 ["paren"]
      836 SETTABLEKS                       R48 R47 K17 ["type"]
      838 SETTABLEKS                       R32 R47 K18 ["value"]
      840 GETUPVAL                         R50 4
      841 GETTABLEKS                       R49 R50 K24 ["toJSBoolean"]
      843 GETTABLEKS                       R50 R27 K58 ["parens"]
      845 CALL                             R49 1 1
      846 JUMPIFNOT                        R49 ; [+2]
      847 LOADK                            R48 K109 [")"]
      848 JUMP                             ; [+1]
      849 LOADK                            R48 K116 ["\\)"]
      850 SETTABLEKS                       R48 R47 K19 ["output"]
      852 CALL                             R46 1 0
      853 GETTABLEKS                       R46 R27 K58 ["parens"]
      855 SUBK                             R46 R46 K81 [1]
      856 SETTABLEKS                       R46 R27 K58 ["parens"]
      858 GETIMPORT                        R46 K115 [table.remove]
      860 MOVE                             R47 R30
      861 CALL                             R46 1 0
      862 JUMP                             ; [+1833]
      863 JUMPIFNOTEQKS                    R32 K88 ["["] ; [+74]
      865 GETTABLEKS                       R45 R2 K117 ["nobracket"]
      867 JUMPIFEQKB                       R45 TRUE ; [+18]
      869 GETTABLEKS                       R48 R27 K50 ["index"]
      871 ADDK                             R47 R48 K81 [1]
      872 FASTCALL2                        STRING_SUB R0 R47 ; [+4]
      874 MOVE                             R46 R0
      875 GETIMPORT                        R45 K83 [string.sub]
      877 CALL                             R45 2 1
      878 LOADK                            R47 K87 ["]"]
      879 LOADN                            R48 1
      880 LOADB                            R49 1
      881 NAMECALL                         R45 R45 K93 ["find"]
      883 CALL                             R45 4 1
      884 JUMPIFNOTEQKNIL                  R45 ; [+32]
      886 GETTABLEKS                       R45 R2 K117 ["nobracket"]
      888 JUMPIFEQKB                       R45 TRUE ; [+21]
      890 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
      892 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      894 GETIMPORT                        R45 K4 [error]
      896 GETUPVAL                         R47 0
      897 GETTABLEKS                       R46 R47 K5 ["new"]
      899 LOADK                            R48 K111 ["SyntaxError: "]
      900 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      901 LOADK                            R51 K118 ["closing"]
      902 LOADK                            R52 K87 ["]"]
      903 LOADK                            R53 K87 ["]"]
      904 NAMECALL                         R49 R49 K16 ["format"]
      906 CALL                             R49 4 1
      907 CONCAT                           R47 R48 R49
      908 CALL                             R46 1 -1
      909 CALL                             R45 -1 0
      910 LOADK                            R45 K97 ["\\%s"]
      911 MOVE                             R47 R32
      912 NAMECALL                         R45 R45 K16 ["format"]
      914 CALL                             R45 2 1
      915 MOVE                             R32 R45
      916 JUMP                             ; [+12]
      917 GETTABLEKS                       R45 R27 K56 ["brackets"]
      919 ADDK                             R45 R45 K81 [1]
      920 SETTABLEKS                       R45 R27 K56 ["brackets"]
      922 FASTCALL2K                       TABLE_INSERT R30 K56 ; [+5]
      924 MOVE                             R46 R30
      925 LOADK                            R47 K56 ["brackets"]
      926 GETIMPORT                        R45 K107 [table.insert]
      928 CALL                             R45 2 0
      929 MOVE                             R45 R42
      930 DUPTABLE                         R46 K78 [{"type", "value"}]
      931 LOADK                            R47 K119 ["bracket"]
      932 SETTABLEKS                       R47 R46 K17 ["type"]
      934 SETTABLEKS                       R32 R46 K18 ["value"]
      936 CALL                             R45 1 0
      937 JUMP                             ; [+1758]
      938 JUMPIFNOTEQKS                    R32 K87 ["]"] ; [+210]
      940 GETTABLEKS                       R45 R2 K117 ["nobracket"]
      942 JUMPIFEQKB                       R45 TRUE ; [+12]
      944 JUMPIFEQKNIL                     R31 ; [+26]
      946 GETTABLEKS                       R45 R31 K17 ["type"]
      948 JUMPIFNOTEQKS                    R45 K119 ["bracket"] ; [+22]
      950 GETTABLEKS                       R46 R31 K18 ["value"]
      952 LENGTH                           R45 R46
      953 JUMPIFNOTEQKN                    R45 K81 [1] ; [+17]
      955 MOVE                             R45 R42
      956 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
      957 LOADK                            R47 K79 ["text"]
      958 SETTABLEKS                       R47 R46 K17 ["type"]
      960 SETTABLEKS                       R32 R46 K18 ["value"]
      962 LOADK                            R47 K97 ["\\%s"]
      963 MOVE                             R49 R32
      964 NAMECALL                         R47 R47 K16 ["format"]
      966 CALL                             R47 2 1
      967 SETTABLEKS                       R47 R46 K19 ["output"]
      969 CALL                             R45 1 0
      970 JUMP                             ; [+1725]
      971 GETTABLEKS                       R45 R27 K56 ["brackets"]
      973 JUMPIFNOTEQKN                    R45 K86 [0] ; [+37]
      975 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
      977 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      979 GETIMPORT                        R45 K4 [error]
      981 GETUPVAL                         R47 0
      982 GETTABLEKS                       R46 R47 K5 ["new"]
      984 LOADK                            R48 K111 ["SyntaxError: "]
      985 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      986 LOADK                            R51 K113 ["opening"]
      987 LOADK                            R52 K88 ["["]
      988 LOADK                            R53 K88 ["["]
      989 NAMECALL                         R49 R49 K16 ["format"]
      991 CALL                             R49 4 1
      992 CONCAT                           R47 R48 R49
      993 CALL                             R46 1 -1
      994 CALL                             R45 -1 0
      995 MOVE                             R45 R42
      996 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
      997 LOADK                            R47 K79 ["text"]
      998 SETTABLEKS                       R47 R46 K17 ["type"]
     1000 SETTABLEKS                       R32 R46 K18 ["value"]
     1002 LOADK                            R47 K97 ["\\%s"]
     1003 MOVE                             R49 R32
     1004 NAMECALL                         R47 R47 K16 ["format"]
     1006 CALL                             R47 2 1
     1007 SETTABLEKS                       R47 R46 K19 ["output"]
     1009 CALL                             R45 1 0
     1010 JUMP                             ; [+1685]
     1011 GETTABLEKS                       R45 R27 K56 ["brackets"]
     1013 SUBK                             R45 R45 K81 [1]
     1014 SETTABLEKS                       R45 R27 K56 ["brackets"]
     1016 GETIMPORT                        R45 K115 [table.remove]
     1018 MOVE                             R46 R30
     1019 CALL                             R45 1 0
     1020 GETUPVAL                         R46 7
     1021 GETTABLEKS                       R45 R46 K92 ["slice"]
     1023 GETTABLEKS                       R46 R31 K18 ["value"]
     1025 LOADN                            R47 2
     1026 CALL                             R45 2 1
     1027 GETTABLEKS                       R46 R31 K90 ["posix"]
     1029 JUMPIFEQKB                       R46 TRUE ; [+22]
     1031 LOADN                            R48 1
     1032 LOADN                            R49 1
     1033 NAMECALL                         R46 R45 K82 ["sub"]
     1035 CALL                             R46 3 1
     1036 JUMPIFNOTEQKS                    R46 K99 ["^"] ; [+15]
     1038 LOADK                            R48 K75 ["/"]
     1039 LOADN                            R49 1
     1040 LOADB                            R50 1
     1041 NAMECALL                         R46 R45 K93 ["find"]
     1043 CALL                             R46 4 1
     1044 JUMPIFNOTEQKNIL                  R46 ; [+7]
     1046 LOADK                            R46 K120 ["/%s"]
     1047 MOVE                             R48 R32
     1048 NAMECALL                         R46 R46 K16 ["format"]
     1050 CALL                             R46 2 1
     1051 MOVE                             R32 R46
     1052 GETTABLEKS                       R47 R31 K18 ["value"]
     1054 MOVE                             R48 R32
     1055 CONCAT                           R46 R47 R48
     1056 SETTABLEKS                       R46 R31 K18 ["value"]
     1058 DUPTABLE                         R46 K100 [{"value"}]
     1059 SETTABLEKS                       R32 R46 K18 ["value"]
     1061 GETTABLEKS                       R48 R27 K19 ["output"]
     1063 GETTABLEKS                       R50 R46 K19 ["output"]
     1065 JUMPIFEQKNIL                     R50 ; [+4]
     1067 GETTABLEKS                       R49 R46 K19 ["output"]
     1069 JUMP                             ; [+2]
     1070 GETTABLEKS                       R49 R46 K18 ["value"]
     1072 CONCAT                           R47 R48 R49
     1073 SETTABLEKS                       R47 R27 K19 ["output"]
     1075 GETTABLEKS                       R47 R46 K18 ["value"]
     1077 ORK                              R48 R47 K22 [""]
     1078 GETTABLEKS                       R50 R27 K52 ["consumed"]
     1080 MOVE                             R51 R48
     1081 CONCAT                           R49 R50 R51
     1082 SETTABLEKS                       R49 R27 K52 ["consumed"]
     1084 GETTABLEKS                       R49 R27 K50 ["index"]
     1086 ADDK                             R49 R49 K86 [0]
     1087 SETTABLEKS                       R49 R27 K50 ["index"]
     1089 GETTABLEKS                       R46 R2 K121 ["literalBrackets"]
     1091 JUMPIFEQKB                       R46 FALSE ; [+1604]
     1093 GETUPVAL                         R47 5
     1094 GETTABLEKS                       R46 R47 K122 ["hasRegexChars"]
     1096 MOVE                             R47 R45
     1097 CALL                             R46 1 1
     1098 JUMPIF                           R46 ; [+1597]
     1099 GETUPVAL                         R47 5
     1100 GETTABLEKS                       R46 R47 K102 ["escapeRegex"]
     1102 GETTABLEKS                       R47 R31 K18 ["value"]
     1104 CALL                             R46 1 1
     1105 GETUPVAL                         R48 7
     1106 GETTABLEKS                       R47 R48 K92 ["slice"]
     1108 GETTABLEKS                       R48 R27 K19 ["output"]
     1110 LOADN                            R49 1
     1111 GETTABLEKS                       R52 R31 K18 ["value"]
     1113 LENGTH                           R51 R52
     1114 MINUS                            R50 R51
     1115 CALL                             R47 3 1
     1116 SETTABLEKS                       R47 R27 K19 ["output"]
     1118 GETTABLEKS                       R47 R2 K121 ["literalBrackets"]
     1120 JUMPIFNOTEQKB                    R47 TRUE ; [+10]
     1122 GETTABLEKS                       R48 R27 K19 ["output"]
     1124 MOVE                             R49 R46
     1125 CONCAT                           R47 R48 R49
     1126 SETTABLEKS                       R47 R27 K19 ["output"]
     1128 SETTABLEKS                       R46 R31 K18 ["value"]
     1130 JUMP                             ; [+1565]
     1131 LOADK                            R47 K123 ["(%s%s|%s)"]
     1132 MOVE                             R49 R7
     1133 MOVE                             R50 R46
     1134 GETTABLEKS                       R51 R31 K18 ["value"]
     1136 NAMECALL                         R47 R47 K16 ["format"]
     1138 CALL                             R47 4 1
     1139 SETTABLEKS                       R47 R31 K18 ["value"]
     1141 GETTABLEKS                       R48 R27 K19 ["output"]
     1143 GETTABLEKS                       R49 R31 K18 ["value"]
     1145 CONCAT                           R47 R48 R49
     1146 SETTABLEKS                       R47 R27 K19 ["output"]
     1148 JUMP                             ; [+1547]
     1149 JUMPIFNOTEQKS                    R32 K124 ["{"] ; [+47]
     1151 GETTABLEKS                       R45 R2 K125 ["nobrace"]
     1153 JUMPIFEQKB                       R45 TRUE ; [+43]
     1155 GETTABLEKS                       R45 R27 K57 ["braces"]
     1157 ADDK                             R45 R45 K81 [1]
     1158 SETTABLEKS                       R45 R27 K57 ["braces"]
     1160 FASTCALL2K                       TABLE_INSERT R30 K57 ; [+5]
     1162 MOVE                             R46 R30
     1163 LOADK                            R47 K57 ["braces"]
     1164 GETIMPORT                        R45 K107 [table.insert]
     1166 CALL                             R45 2 0
     1167 DUPTABLE                         R45 K128 [{"type", "value", "output", "outputIndex", "tokensIndex"}]
     1168 LOADK                            R46 K129 ["brace"]
     1169 SETTABLEKS                       R46 R45 K17 ["type"]
     1171 SETTABLEKS                       R32 R45 K18 ["value"]
     1173 LOADK                            R46 K104 ["("]
     1174 SETTABLEKS                       R46 R45 K19 ["output"]
     1176 GETTABLEKS                       R47 R27 K19 ["output"]
     1178 LENGTH                           R46 R47
     1179 SETTABLEKS                       R46 R45 K126 ["outputIndex"]
     1181 GETTABLEKS                       R47 R27 K61 ["tokens"]
     1183 LENGTH                           R46 R47
     1184 SETTABLEKS                       R46 R45 K127 ["tokensIndex"]
     1186 FASTCALL2                        TABLE_INSERT R29 R45 ; [+5]
     1188 MOVE                             R47 R29
     1189 MOVE                             R48 R45
     1190 GETIMPORT                        R46 K107 [table.insert]
     1192 CALL                             R46 2 0
     1193 MOVE                             R46 R42
     1194 MOVE                             R47 R45
     1195 CALL                             R46 1 0
     1196 JUMP                             ; [+1499]
     1197 JUMPIFNOTEQKS                    R32 K130 ["}"] ; [+157]
     1199 LENGTH                           R46 R29
     1200 GETTABLE                         R45 R29 R46
     1201 GETTABLEKS                       R46 R2 K125 ["nobrace"]
     1203 JUMPIFEQKB                       R46 TRUE ; [+7]
     1205 GETUPVAL                         R47 4
     1206 GETTABLEKS                       R46 R47 K24 ["toJSBoolean"]
     1208 MOVE                             R47 R45
     1209 CALL                             R46 1 1
     1210 JUMPIF                           R46 ; [+11]
     1211 MOVE                             R46 R42
     1212 DUPTABLE                         R47 K20 [{"type", "value", "output"}]
     1213 LOADK                            R48 K79 ["text"]
     1214 SETTABLEKS                       R48 R47 K17 ["type"]
     1216 SETTABLEKS                       R32 R47 K18 ["value"]
     1218 SETTABLEKS                       R32 R47 K19 ["output"]
     1220 CALL                             R46 1 0
     1221 JUMP                             ; [+1474]
     1222 LOADK                            R46 K109 [")"]
     1223 GETTABLEKS                       R47 R45 K131 ["dots"]
     1225 JUMPIFNOTEQKB                    R47 TRUE ; [+45]
     1227 GETUPVAL                         R48 13
     1228 GETTABLEKS                       R47 R48 K92 ["slice"]
     1230 MOVE                             R48 R6
     1231 CALL                             R47 1 1
     1232 NEWTABLE                         R48 0 0
     1234 LENGTH                           R51 R47
     1235 LOADN                            R49 1
     1236 LOADN                            R50 255
     1237 FORNPREP                         R49
     1238 GETIMPORT                        R52 K115 [table.remove]
     1240 MOVE                             R53 R6
     1241 CALL                             R52 1 0
     1242 GETTABLE                         R53 R47 R51
     1243 GETTABLEKS                       R52 R53 K17 ["type"]
     1245 JUMPIFEQKS                       R52 K129 ["brace"] ; [+17]
     1247 GETTABLE                         R53 R47 R51
     1248 GETTABLEKS                       R52 R53 K17 ["type"]
     1250 JUMPIFEQKS                       R52 K131 ["dots"] ; [+11]
     1252 LOADN                            R54 1
     1253 GETTABLE                         R56 R47 R51
     1254 GETTABLEKS                       R55 R56 K18 ["value"]
     1256 FASTCALL3                        TABLE_INSERT R48 R54 R55
     1258 MOVE                             R53 R48
     1259 GETIMPORT                        R52 K107 [table.insert]
     1261 CALL                             R52 3 0
     1262 FORNLOOP                         R49
     1263 GETUPVAL                         R49 14
     1264 MOVE                             R50 R48
     1265 MOVE                             R51 R2
     1266 CALL                             R49 2 1
     1267 MOVE                             R46 R49
     1268 LOADB                            R49 1
     1269 SETTABLEKS                       R49 R27 K54 ["backtrack"]
     1271 GETTABLEKS                       R47 R45 K132 ["comma"]
     1273 JUMPIFEQKB                       R47 TRUE ; [+57]
     1275 GETTABLEKS                       R47 R45 K131 ["dots"]
     1277 JUMPIFEQKB                       R47 TRUE ; [+53]
     1279 GETUPVAL                         R48 7
     1280 GETTABLEKS                       R47 R48 K92 ["slice"]
     1282 GETTABLEKS                       R48 R27 K19 ["output"]
     1284 LOADN                            R49 1
     1285 GETTABLEKS                       R50 R45 K126 ["outputIndex"]
     1287 CALL                             R47 3 1
     1288 GETUPVAL                         R49 13
     1289 GETTABLEKS                       R48 R49 K92 ["slice"]
     1291 GETTABLEKS                       R49 R27 K61 ["tokens"]
     1293 GETTABLEKS                       R50 R45 K127 ["tokensIndex"]
     1295 CALL                             R48 2 1
     1296 LOADK                            R49 K133 ["\\{"]
     1297 SETTABLEKS                       R49 R45 K19 ["output"]
     1299 GETTABLEKS                       R49 R45 K19 ["output"]
     1301 SETTABLEKS                       R49 R45 K18 ["value"]
     1303 LOADK                            R46 K134 ["\\}"]
     1304 MOVE                             R32 R46
     1305 SETTABLEKS                       R47 R27 K19 ["output"]
     1307 GETIMPORT                        R49 K136 [ipairs]
     1309 MOVE                             R50 R48
     1310 CALL                             R49 1 3
     1311 FORGPREP_INEXT                   R49
     1312 GETTABLEKS                       R55 R27 K19 ["output"]
     1314 GETUPVAL                         R58 4
     1315 GETTABLEKS                       R57 R58 K24 ["toJSBoolean"]
     1317 GETTABLEKS                       R58 R53 K19 ["output"]
     1319 CALL                             R57 1 1
     1320 JUMPIFNOT                        R57 ; [+3]
     1321 GETTABLEKS                       R56 R53 K19 ["output"]
     1323 JUMP                             ; [+2]
     1324 GETTABLEKS                       R56 R53 K18 ["value"]
     1326 CONCAT                           R54 R55 R56
     1327 SETTABLEKS                       R54 R27 K19 ["output"]
     1329 FORGLOOP                         R49 2 [inext] ; [-18]
     1331 MOVE                             R47 R42
     1332 DUPTABLE                         R48 K20 [{"type", "value", "output"}]
     1333 LOADK                            R49 K129 ["brace"]
     1334 SETTABLEKS                       R49 R48 K17 ["type"]
     1336 SETTABLEKS                       R32 R48 K18 ["value"]
     1338 SETTABLEKS                       R46 R48 K19 ["output"]
     1340 CALL                             R47 1 0
     1341 GETTABLEKS                       R47 R27 K57 ["braces"]
     1343 SUBK                             R47 R47 K81 [1]
     1344 SETTABLEKS                       R47 R27 K57 ["braces"]
     1346 GETIMPORT                        R47 K115 [table.remove]
     1348 MOVE                             R48 R30
     1349 CALL                             R47 1 0
     1350 GETIMPORT                        R47 K115 [table.remove]
     1352 MOVE                             R48 R29
     1353 CALL                             R47 1 0
     1354 JUMP                             ; [+1341]
     1355 JUMPIFNOTEQKS                    R32 K137 ["|"] ; [+21]
     1357 LENGTH                           R45 R28
     1358 LOADN                            R46 0
     1359 JUMPIFNOTLT                      R46 R45 ; [+8]
     1361 LENGTH                           R46 R28
     1362 GETTABLE                         R45 R28 R46
     1363 GETTABLEKS                       R46 R45 K138 ["conditions"]
     1365 ADDK                             R46 R46 K81 [1]
     1366 SETTABLEKS                       R46 R45 K138 ["conditions"]
     1368 MOVE                             R45 R42
     1369 DUPTABLE                         R46 K78 [{"type", "value"}]
     1370 LOADK                            R47 K79 ["text"]
     1371 SETTABLEKS                       R47 R46 K17 ["type"]
     1373 SETTABLEKS                       R32 R46 K18 ["value"]
     1375 CALL                             R45 1 0
     1376 JUMP                             ; [+1319]
     1377 JUMPIFNOTEQKS                    R32 K139 [","] ; [+29]
     1379 MOVE                             R45 R32
     1380 LENGTH                           R47 R29
     1381 GETTABLE                         R46 R29 R47
     1382 GETUPVAL                         R48 4
     1383 GETTABLEKS                       R47 R48 K24 ["toJSBoolean"]
     1385 MOVE                             R48 R46
     1386 CALL                             R47 1 1
     1387 JUMPIFNOT                        R47 ; [+8]
     1388 LENGTH                           R48 R30
     1389 GETTABLE                         R47 R30 R48
     1390 JUMPIFNOTEQKS                    R47 K57 ["braces"] ; [+5]
     1392 LOADB                            R47 1
     1393 SETTABLEKS                       R47 R46 K132 ["comma"]
     1395 LOADK                            R45 K137 ["|"]
     1396 MOVE                             R47 R42
     1397 DUPTABLE                         R48 K20 [{"type", "value", "output"}]
     1398 LOADK                            R49 K132 ["comma"]
     1399 SETTABLEKS                       R49 R48 K17 ["type"]
     1401 SETTABLEKS                       R32 R48 K18 ["value"]
     1403 SETTABLEKS                       R45 R48 K19 ["output"]
     1405 CALL                             R47 1 0
     1406 JUMP                             ; [+1289]
     1407 JUMPIFNOTEQKS                    R32 K75 ["/"] ; [+40]
     1409 GETTABLEKS                       R45 R31 K17 ["type"]
     1411 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+25]
     1413 GETTABLEKS                       R45 R27 K50 ["index"]
     1415 GETTABLEKS                       R47 R27 K51 ["start"]
     1417 ADDK                             R46 R47 K81 [1]
     1418 JUMPIFNOTEQ                      R45 R46 ; [+18]
     1420 GETTABLEKS                       R46 R27 K50 ["index"]
     1422 ADDK                             R45 R46 K81 [1]
     1423 SETTABLEKS                       R45 R27 K51 ["start"]
     1425 LOADK                            R45 K22 [""]
     1426 SETTABLEKS                       R45 R27 K52 ["consumed"]
     1428 LOADK                            R45 K22 [""]
     1429 SETTABLEKS                       R45 R27 K19 ["output"]
     1431 GETIMPORT                        R45 K115 [table.remove]
     1433 MOVE                             R46 R6
     1434 CALL                             R45 1 0
     1435 MOVE                             R31 R5
     1436 JUMP                             ; [+1259]
     1437 MOVE                             R45 R42
     1438 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     1439 LOADK                            R47 K140 ["slash"]
     1440 SETTABLEKS                       R47 R46 K17 ["type"]
     1442 SETTABLEKS                       R32 R46 K18 ["value"]
     1444 SETTABLEKS                       R13 R46 K19 ["output"]
     1446 CALL                             R45 1 0
     1447 JUMP                             ; [+1248]
     1448 JUMPIFNOTEQKS                    R32 K76 ["."] ; [+74]
     1450 GETTABLEKS                       R45 R27 K57 ["braces"]
     1452 LOADN                            R46 0
     1453 JUMPIFNOTLT                      R46 R45 ; [+32]
     1455 GETTABLEKS                       R45 R31 K17 ["type"]
     1457 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+28]
     1459 GETTABLEKS                       R45 R31 K18 ["value"]
     1461 JUMPIFNOTEQKS                    R45 K76 ["."] ; [+3]
     1463 SETTABLEKS                       R11 R31 K19 ["output"]
     1465 LENGTH                           R46 R29
     1466 GETTABLE                         R45 R29 R46
     1467 LOADK                            R46 K131 ["dots"]
     1468 SETTABLEKS                       R46 R31 K17 ["type"]
     1470 GETTABLEKS                       R47 R31 K19 ["output"]
     1472 MOVE                             R48 R32
     1473 CONCAT                           R46 R47 R48
     1474 SETTABLEKS                       R46 R31 K19 ["output"]
     1476 GETTABLEKS                       R47 R31 K18 ["value"]
     1478 MOVE                             R48 R32
     1479 CONCAT                           R46 R47 R48
     1480 SETTABLEKS                       R46 R31 K18 ["value"]
     1482 LOADB                            R46 1
     1483 SETTABLEKS                       R46 R45 K131 ["dots"]
     1485 JUMP                             ; [+1210]
     1486 GETTABLEKS                       R46 R27 K57 ["braces"]
     1488 GETTABLEKS                       R47 R27 K58 ["parens"]
     1490 ADD                              R45 R46 R47
     1491 JUMPIFNOTEQKN                    R45 K86 [0] ; [+20]
     1493 GETTABLEKS                       R45 R31 K17 ["type"]
     1495 JUMPIFEQKS                       R45 K21 ["bos"] ; [+16]
     1497 GETTABLEKS                       R45 R31 K17 ["type"]
     1499 JUMPIFEQKS                       R45 K140 ["slash"] ; [+12]
     1501 MOVE                             R45 R42
     1502 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     1503 LOADK                            R47 K79 ["text"]
     1504 SETTABLEKS                       R47 R46 K17 ["type"]
     1506 SETTABLEKS                       R32 R46 K18 ["value"]
     1508 SETTABLEKS                       R11 R46 K19 ["output"]
     1510 CALL                             R45 1 0
     1511 JUMP                             ; [+1184]
     1512 MOVE                             R45 R42
     1513 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     1514 LOADK                            R47 K42 ["dot"]
     1515 SETTABLEKS                       R47 R46 K17 ["type"]
     1517 SETTABLEKS                       R32 R46 K18 ["value"]
     1519 SETTABLEKS                       R11 R46 K19 ["output"]
     1521 CALL                             R45 1 0
     1522 JUMP                             ; [+1173]
     1523 JUMPIFNOTEQKS                    R32 K141 ["?"] ; [+141]
     1525 GETUPVAL                         R46 4
     1526 GETTABLEKS                       R45 R46 K24 ["toJSBoolean"]
     1528 MOVE                             R46 R31
     1529 CALL                             R45 1 1
     1530 JUMPIFNOT                        R45 ; [+6]
     1531 GETTABLEKS                       R46 R31 K18 ["value"]
     1533 JUMPIFEQKS                       R46 K104 ["("] ; [+2]
     1535 LOADB                            R45 0 +1
     1536 LOADB                            R45 1
     1537 JUMPIF                           R45 ; [+18]
     1538 GETTABLEKS                       R46 R2 K48 ["noextglob"]
     1540 JUMPIFEQKB                       R46 TRUE ; [+15]
     1542 MOVE                             R46 R34
     1543 CALL                             R46 0 1
     1544 JUMPIFNOTEQKS                    R46 K104 ["("] ; [+11]
     1546 MOVE                             R46 R34
     1547 LOADN                            R47 2
     1548 CALL                             R46 1 1
     1549 JUMPIFEQKS                       R46 K141 ["?"] ; [+6]
     1551 MOVE                             R46 R43
     1552 LOADK                            R47 K142 ["qmark"]
     1553 MOVE                             R48 R32
     1554 CALL                             R46 2 0
     1555 JUMP                             ; [+1140]
     1556 GETUPVAL                         R47 4
     1557 GETTABLEKS                       R46 R47 K24 ["toJSBoolean"]
     1559 MOVE                             R47 R31
     1560 CALL                             R46 1 1
     1561 JUMPIFNOT                        R46 ; [+69]
     1562 GETTABLEKS                       R46 R31 K17 ["type"]
     1564 JUMPIFNOTEQKS                    R46 K108 ["paren"] ; [+66]
     1566 MOVE                             R46 R34
     1567 CALL                             R46 0 1
     1568 MOVE                             R47 R32
     1569 JUMPIFNOTEQKS                    R46 K143 ["<"] ; [+14]
     1571 GETUPVAL                         R49 5
     1572 GETTABLEKS                       R48 R49 K144 ["supportsLookbehinds"]
     1574 CALL                             R48 0 1
     1575 JUMPIF                           R48 ; [+8]
     1576 GETIMPORT                        R48 K4 [error]
     1578 GETUPVAL                         R50 0
     1579 GETTABLEKS                       R49 R50 K5 ["new"]
     1581 LOADK                            R50 K145 ["Node.js v10 or higher is required for regex lookbehinds"]
     1582 CALL                             R49 1 -1
     1583 CALL                             R48 -1 0
     1584 GETTABLEKS                       R48 R31 K18 ["value"]
     1586 JUMPIFNOTEQKS                    R48 K104 ["("] ; [+9]
     1588 GETUPVAL                         R48 8
     1589 LOADK                            R49 K146 ["[!=<:]"]
     1590 CALL                             R48 1 1
     1591 MOVE                             R50 R46
     1592 NAMECALL                         R48 R48 K68 ["test"]
     1594 CALL                             R48 2 1
     1595 JUMPIFNOT                        R48 ; [+18]
     1596 JUMPIFNOTEQKS                    R46 K143 ["<"] ; [+23]
     1598 GETUPVAL                         R48 8
     1599 LOADK                            R49 K147 ["<([!=]|\\w+>)"]
     1600 CALL                             R48 1 1
     1601 GETTABLEKS                       R53 R27 K50 ["index"]
     1603 ADDK                             R52 R53 K81 [1]
     1604 FASTCALL2                        STRING_SUB R0 R52 ; [+4]
     1606 MOVE                             R51 R0
     1607 GETIMPORT                        R50 K83 [string.sub]
     1609 CALL                             R50 2 1
     1610 NAMECALL                         R48 R48 K68 ["test"]
     1612 CALL                             R48 2 1
     1613 JUMPIF                           R48 ; [+6]
     1614 LOADK                            R48 K97 ["\\%s"]
     1615 MOVE                             R50 R32
     1616 NAMECALL                         R48 R48 K16 ["format"]
     1618 CALL                             R48 2 1
     1619 MOVE                             R47 R48
     1620 MOVE                             R48 R42
     1621 DUPTABLE                         R49 K20 [{"type", "value", "output"}]
     1622 LOADK                            R50 K79 ["text"]
     1623 SETTABLEKS                       R50 R49 K17 ["type"]
     1625 SETTABLEKS                       R32 R49 K18 ["value"]
     1627 SETTABLEKS                       R47 R49 K19 ["output"]
     1629 CALL                             R48 1 0
     1630 JUMP                             ; [+1065]
     1631 GETTABLEKS                       R46 R2 K42 ["dot"]
     1633 JUMPIFEQKB                       R46 TRUE ; [+20]
     1635 GETTABLEKS                       R46 R31 K17 ["type"]
     1637 JUMPIFEQKS                       R46 K140 ["slash"] ; [+5]
     1639 GETTABLEKS                       R46 R31 K17 ["type"]
     1641 JUMPIFNOTEQKS                    R46 K21 ["bos"] ; [+12]
     1643 MOVE                             R46 R42
     1644 DUPTABLE                         R47 K20 [{"type", "value", "output"}]
     1645 LOADK                            R48 K142 ["qmark"]
     1646 SETTABLEKS                       R48 R47 K17 ["type"]
     1648 SETTABLEKS                       R32 R47 K18 ["value"]
     1650 SETTABLEKS                       R20 R47 K19 ["output"]
     1652 CALL                             R46 1 0
     1653 JUMP                             ; [+1042]
     1654 MOVE                             R46 R42
     1655 DUPTABLE                         R47 K20 [{"type", "value", "output"}]
     1656 LOADK                            R48 K142 ["qmark"]
     1657 SETTABLEKS                       R48 R47 K17 ["type"]
     1659 SETTABLEKS                       R32 R47 K18 ["value"]
     1661 SETTABLEKS                       R19 R47 K19 ["output"]
     1663 CALL                             R46 1 0
     1664 JUMP                             ; [+1031]
     1665 JUMPIFNOTEQKS                    R32 K98 ["!"] ; [+40]
     1667 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1669 JUMPIFEQKB                       R45 TRUE ; [+25]
     1671 MOVE                             R45 R34
     1672 CALL                             R45 0 1
     1673 JUMPIFNOTEQKS                    R45 K104 ["("] ; [+21]
     1675 MOVE                             R45 R34
     1676 LOADN                            R46 2
     1677 CALL                             R45 1 1
     1678 JUMPIFNOTEQKS                    R45 K141 ["?"] ; [+11]
     1680 GETUPVAL                         R45 8
     1681 LOADK                            R46 K146 ["[!=<:]"]
     1682 CALL                             R45 1 1
     1683 MOVE                             R47 R34
     1684 LOADN                            R48 3
     1685 CALL                             R47 1 -1
     1686 NAMECALL                         R45 R45 K68 ["test"]
     1688 CALL                             R45 -1 1
     1689 JUMPIF                           R45 ; [+5]
     1690 MOVE                             R45 R43
     1691 LOADK                            R46 K148 ["negate"]
     1692 MOVE                             R47 R32
     1693 CALL                             R45 2 0
     1694 JUMP                             ; [+1001]
     1695 GETTABLEKS                       R45 R2 K149 ["nonegate"]
     1697 JUMPIFEQKB                       R45 TRUE ; [+8]
     1699 GETTABLEKS                       R45 R27 K50 ["index"]
     1701 JUMPIFNOTEQKN                    R45 K81 [1] ; [+4]
     1703 MOVE                             R45 R39
     1704 CALL                             R45 0 0
     1705 JUMP                             ; [+990]
     1706 JUMPIFNOTEQKS                    R32 K150 ["+"] ; [+77]
     1708 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1710 JUMPIFEQKB                       R45 TRUE ; [+15]
     1712 MOVE                             R45 R34
     1713 CALL                             R45 0 1
     1714 JUMPIFNOTEQKS                    R45 K104 ["("] ; [+11]
     1716 MOVE                             R45 R34
     1717 LOADN                            R46 2
     1718 CALL                             R45 1 1
     1719 JUMPIFEQKS                       R45 K141 ["?"] ; [+6]
     1721 MOVE                             R45 R43
     1722 LOADK                            R46 K151 ["plus"]
     1723 MOVE                             R47 R32
     1724 CALL                             R45 2 0
     1725 JUMP                             ; [+970]
     1726 JUMPIFEQKNIL                     R31 ; [+5]
     1728 GETTABLEKS                       R45 R31 K18 ["value"]
     1730 JUMPIFEQKS                       R45 K104 ["("] ; [+5]
     1732 GETTABLEKS                       R45 R2 K152 ["regex"]
     1734 JUMPIFNOTEQKB                    R45 FALSE ; [+12]
     1736 MOVE                             R45 R42
     1737 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     1738 LOADK                            R47 K151 ["plus"]
     1739 SETTABLEKS                       R47 R46 K17 ["type"]
     1741 SETTABLEKS                       R32 R46 K18 ["value"]
     1743 SETTABLEKS                       R12 R46 K19 ["output"]
     1745 CALL                             R45 1 0
     1746 JUMP                             ; [+949]
     1747 JUMPIFEQKNIL                     R31 ; [+13]
     1749 GETTABLEKS                       R45 R31 K17 ["type"]
     1751 JUMPIFEQKS                       R45 K119 ["bracket"] ; [+14]
     1753 GETTABLEKS                       R45 R31 K17 ["type"]
     1755 JUMPIFEQKS                       R45 K108 ["paren"] ; [+10]
     1757 GETTABLEKS                       R45 R31 K17 ["type"]
     1759 JUMPIFEQKS                       R45 K129 ["brace"] ; [+6]
     1761 GETTABLEKS                       R45 R27 K58 ["parens"]
     1763 LOADN                            R46 0
     1764 JUMPIFNOTLT                      R46 R45 ; [+10]
     1766 MOVE                             R45 R42
     1767 DUPTABLE                         R46 K78 [{"type", "value"}]
     1768 LOADK                            R47 K151 ["plus"]
     1769 SETTABLEKS                       R47 R46 K17 ["type"]
     1771 SETTABLEKS                       R32 R46 K18 ["value"]
     1773 CALL                             R45 1 0
     1774 JUMP                             ; [+921]
     1775 MOVE                             R45 R42
     1776 DUPTABLE                         R46 K78 [{"type", "value"}]
     1777 LOADK                            R47 K151 ["plus"]
     1778 SETTABLEKS                       R47 R46 K17 ["type"]
     1780 SETTABLEKS                       R12 R46 K18 ["value"]
     1782 CALL                             R45 1 0
     1783 JUMP                             ; [+912]
     1784 JUMPIFNOTEQKS                    R32 K153 ["@"] ; [+38]
     1786 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1788 JUMPIFEQKB                       R45 TRUE ; [+25]
     1790 MOVE                             R45 R34
     1791 CALL                             R45 0 1
     1792 JUMPIFNOTEQKS                    R45 K104 ["("] ; [+21]
     1794 MOVE                             R45 R34
     1795 LOADN                            R46 2
     1796 CALL                             R45 1 1
     1797 JUMPIFEQKS                       R45 K141 ["?"] ; [+16]
     1799 MOVE                             R45 R42
     1800 DUPTABLE                         R46 K155 [{"type", "extglob", "value", "output"}]
     1801 LOADK                            R47 K156 ["at"]
     1802 SETTABLEKS                       R47 R46 K17 ["type"]
     1804 LOADB                            R47 1
     1805 SETTABLEKS                       R47 R46 K154 ["extglob"]
     1807 SETTABLEKS                       R32 R46 K18 ["value"]
     1809 LOADK                            R47 K22 [""]
     1810 SETTABLEKS                       R47 R46 K19 ["output"]
     1812 CALL                             R45 1 0
     1813 JUMP                             ; [+882]
     1814 MOVE                             R45 R42
     1815 DUPTABLE                         R46 K78 [{"type", "value"}]
     1816 LOADK                            R47 K79 ["text"]
     1817 SETTABLEKS                       R47 R46 K17 ["type"]
     1819 SETTABLEKS                       R32 R46 K18 ["value"]
     1821 CALL                             R45 1 0
     1822 JUMP                             ; [+873]
     1823 JUMPIFEQKS                       R32 K157 ["*"] ; [+44]
     1825 JUMPIFEQKS                       R32 K158 ["$"] ; [+3]
     1827 JUMPIFNOTEQKS                    R32 K99 ["^"] ; [+7]
     1829 LOADK                            R45 K97 ["\\%s"]
     1830 MOVE                             R47 R32
     1831 NAMECALL                         R45 R45 K16 ["format"]
     1833 CALL                             R45 2 1
     1834 MOVE                             R32 R45
     1835 GETIMPORT                        R45 K160 [string.match]
     1837 GETTABLEKS                       R49 R27 K50 ["index"]
     1839 ADDK                             R48 R49 K81 [1]
     1840 FASTCALL2                        STRING_SUB R0 R48 ; [+4]
     1842 MOVE                             R47 R0
     1843 GETIMPORT                        R46 K83 [string.sub]
     1845 CALL                             R46 2 1
     1846 GETUPVAL                         R47 15
     1847 CALL                             R45 2 1
     1848 JUMPIFEQKNIL                     R45 ; [+10]
     1850 MOVE                             R46 R32
     1851 MOVE                             R47 R45
     1852 CONCAT                           R32 R46 R47
     1853 GETTABLEKS                       R46 R27 K50 ["index"]
     1855 LENGTH                           R47 R45
     1856 ADD                              R46 R46 R47
     1857 SETTABLEKS                       R46 R27 K50 ["index"]
     1859 MOVE                             R46 R42
     1860 DUPTABLE                         R47 K78 [{"type", "value"}]
     1861 LOADK                            R48 K79 ["text"]
     1862 SETTABLEKS                       R48 R47 K17 ["type"]
     1864 SETTABLEKS                       R32 R47 K18 ["value"]
     1866 CALL                             R46 1 0
     1867 JUMP                             ; [+828]
     1868 JUMPIFEQKNIL                     R31 ; [+43]
     1870 GETTABLEKS                       R45 R31 K17 ["type"]
     1872 JUMPIFEQKS                       R45 K60 ["globstar"] ; [+5]
     1874 GETTABLEKS                       R45 R31 K161 ["star"]
     1876 JUMPIFNOTEQKB                    R45 TRUE ; [+35]
     1878 LOADK                            R45 K161 ["star"]
     1879 SETTABLEKS                       R45 R31 K17 ["type"]
     1881 LOADB                            R45 1
     1882 SETTABLEKS                       R45 R31 K161 ["star"]
     1884 GETTABLEKS                       R46 R31 K18 ["value"]
     1886 MOVE                             R47 R32
     1887 CONCAT                           R45 R46 R47
     1888 SETTABLEKS                       R45 R31 K18 ["value"]
     1890 SETTABLEKS                       R26 R31 K19 ["output"]
     1892 LOADB                            R45 1
     1893 SETTABLEKS                       R45 R27 K54 ["backtrack"]
     1895 LOADB                            R45 1
     1896 SETTABLEKS                       R45 R27 K60 ["globstar"]
     1898 MOVE                             R45 R32
     1899 ORK                              R46 R45 K22 [""]
     1900 GETTABLEKS                       R48 R27 K52 ["consumed"]
     1902 MOVE                             R49 R46
     1903 CONCAT                           R47 R48 R49
     1904 SETTABLEKS                       R47 R27 K52 ["consumed"]
     1906 GETTABLEKS                       R47 R27 K50 ["index"]
     1908 ADDK                             R47 R47 K86 [0]
     1909 SETTABLEKS                       R47 R27 K50 ["index"]
     1911 JUMP                             ; [+784]
     1912 GETTABLEKS                       R48 R27 K50 ["index"]
     1914 ADDK                             R47 R48 K81 [1]
     1915 FASTCALL2                        STRING_SUB R0 R47 ; [+4]
     1917 MOVE                             R46 R0
     1918 GETIMPORT                        R45 K83 [string.sub]
     1920 CALL                             R45 2 1
     1921 GETUPVAL                         R47 4
     1922 GETTABLEKS                       R46 R47 K24 ["toJSBoolean"]
     1924 LOADB                            R47 0
     1925 GETTABLEKS                       R48 R2 K48 ["noextglob"]
     1927 JUMPIFEQKB                       R48 TRUE ; [+8]
     1929 GETUPVAL                         R47 8
     1930 LOADK                            R48 K162 ["^\\([^?]"]
     1931 CALL                             R47 1 1
     1932 MOVE                             R49 R45
     1933 NAMECALL                         R47 R47 K68 ["test"]
     1935 CALL                             R47 2 1
     1936 CALL                             R46 1 1
     1937 JUMPIFNOT                        R46 ; [+5]
     1938 MOVE                             R46 R43
     1939 LOADK                            R47 K161 ["star"]
     1940 MOVE                             R48 R32
     1941 CALL                             R46 2 0
     1942 JUMP                             ; [+753]
     1943 GETTABLEKS                       R46 R31 K17 ["type"]
     1945 JUMPIFNOTEQKS                    R46 K161 ["star"] ; [+618]
     1947 GETTABLEKS                       R46 R2 K163 ["noglobstar"]
     1949 JUMPIFNOTEQKB                    R46 TRUE ; [+15]
     1951 MOVE                             R46 R32
     1952 ORK                              R47 R46 K22 [""]
     1953 GETTABLEKS                       R49 R27 K52 ["consumed"]
     1955 MOVE                             R50 R47
     1956 CONCAT                           R48 R49 R50
     1957 SETTABLEKS                       R48 R27 K52 ["consumed"]
     1959 GETTABLEKS                       R48 R27 K50 ["index"]
     1961 ADDK                             R48 R48 K86 [0]
     1962 SETTABLEKS                       R48 R27 K50 ["index"]
     1964 JUMP                             ; [+731]
     1965 GETTABLEKS                       R46 R31 K164 ["prev"]
     1967 GETTABLEKS                       R47 R46 K164 ["prev"]
     1969 LOADB                            R48 1
     1970 GETTABLEKS                       R49 R46 K17 ["type"]
     1972 JUMPIFEQKS                       R49 K140 ["slash"] ; [+7]
     1974 GETTABLEKS                       R49 R46 K17 ["type"]
     1976 JUMPIFEQKS                       R49 K21 ["bos"] ; [+2]
     1978 LOADB                            R48 0 +1
     1979 LOADB                            R48 1
     1980 GETUPVAL                         R51 4
     1981 GETTABLEKS                       R50 R51 K24 ["toJSBoolean"]
     1983 MOVE                             R51 R47
     1984 CALL                             R50 1 1
     1985 JUMPIFNOT                        R50 ; [+12]
     1986 LOADB                            R49 1
     1987 GETTABLEKS                       R50 R47 K17 ["type"]
     1989 JUMPIFEQKS                       R50 K161 ["star"] ; [+9]
     1991 GETTABLEKS                       R50 R47 K17 ["type"]
     1993 JUMPIFEQKS                       R50 K60 ["globstar"] ; [+2]
     1995 LOADB                            R49 0 +1
     1996 LOADB                            R49 1
     1997 JUMP                             ; [+1]
     1998 MOVE                             R49 R47
     1999 GETTABLEKS                       R50 R2 K43 ["bash"]
     2001 JUMPIFNOTEQKB                    R50 TRUE ; [+28]
     2003 JUMPIFNOT                        R48 ; [+14]
     2004 LOADN                            R52 1
     2005 LOADN                            R53 1
     2006 NAMECALL                         R50 R45 K82 ["sub"]
     2008 CALL                             R50 3 1
     2009 JUMPIFEQKNIL                     R50 ; [+20]
     2011 LOADN                            R52 1
     2012 LOADN                            R53 1
     2013 NAMECALL                         R50 R45 K82 ["sub"]
     2015 CALL                             R50 3 1
     2016 JUMPIFEQKS                       R50 K75 ["/"] ; [+13]
     2018 MOVE                             R50 R42
     2019 DUPTABLE                         R51 K20 [{"type", "value", "output"}]
     2020 LOADK                            R52 K161 ["star"]
     2021 SETTABLEKS                       R52 R51 K17 ["type"]
     2023 SETTABLEKS                       R32 R51 K18 ["value"]
     2025 LOADK                            R52 K22 [""]
     2026 SETTABLEKS                       R52 R51 K19 ["output"]
     2028 CALL                             R50 1 0
     2029 JUMP                             ; [+666]
     2030 LOADB                            R50 0
     2031 GETTABLEKS                       R51 R27 K57 ["braces"]
     2033 LOADN                            R52 0
     2034 JUMPIFNOTLT                      R52 R51 ; [+12]
     2036 LOADB                            R50 1
     2037 GETTABLEKS                       R51 R46 K17 ["type"]
     2039 JUMPIFEQKS                       R51 K132 ["comma"] ; [+7]
     2041 GETTABLEKS                       R51 R46 K17 ["type"]
     2043 JUMPIFEQKS                       R51 K129 ["brace"] ; [+2]
     2045 LOADB                            R50 0 +1
     2046 LOADB                            R50 1
     2047 LOADB                            R51 0
     2048 LENGTH                           R52 R28
     2049 LOADN                            R53 0
     2050 JUMPIFNOTLT                      R53 R52 ; [+12]
     2052 LOADB                            R51 1
     2053 GETTABLEKS                       R52 R46 K17 ["type"]
     2055 JUMPIFEQKS                       R52 K165 ["pipe"] ; [+7]
     2057 GETTABLEKS                       R52 R46 K17 ["type"]
     2059 JUMPIFEQKS                       R52 K108 ["paren"] ; [+2]
     2061 LOADB                            R51 0 +1
     2062 LOADB                            R51 1
     2063 JUMPIF                           R48 ; [+18]
     2064 GETTABLEKS                       R52 R46 K17 ["type"]
     2066 JUMPIFEQKS                       R52 K108 ["paren"] ; [+15]
     2068 JUMPIF                           R50 ; [+13]
     2069 JUMPIF                           R51 ; [+12]
     2070 MOVE                             R52 R42
     2071 DUPTABLE                         R53 K20 [{"type", "value", "output"}]
     2072 LOADK                            R54 K161 ["star"]
     2073 SETTABLEKS                       R54 R53 K17 ["type"]
     2075 SETTABLEKS                       R32 R53 K18 ["value"]
     2077 LOADK                            R54 K22 [""]
     2078 SETTABLEKS                       R54 R53 K19 ["output"]
     2080 CALL                             R52 1 0
     2081 JUMP                             ; [+614]
     2082 GETUPVAL                         R53 7
     2083 GETTABLEKS                       R52 R53 K92 ["slice"]
     2085 MOVE                             R53 R45
     2086 LOADN                            R54 1
     2087 LOADN                            R55 4
     2088 CALL                             R52 3 1
     2089 JUMPIFNOTEQKS                    R52 K166 ["/**"] ; [+37]
     2091 GETTABLEKS                       R55 R27 K50 ["index"]
     2093 ADDK                             R54 R55 K167 [4]
     2094 GETTABLEKS                       R56 R27 K50 ["index"]
     2096 ADDK                             R55 R56 K167 [4]
     2097 NAMECALL                         R52 R0 K82 ["sub"]
     2099 CALL                             R52 3 1
     2100 GETUPVAL                         R54 4
     2101 GETTABLEKS                       R53 R54 K24 ["toJSBoolean"]
     2103 MOVE                             R54 R52
     2104 CALL                             R53 1 1
     2105 JUMPIFNOT                        R53 ; [+2]
     2106 JUMPIFNOTEQKS                    R52 K75 ["/"] ; [+20]
     2108 GETUPVAL                         R54 7
     2109 GETTABLEKS                       R53 R54 K92 ["slice"]
     2111 MOVE                             R54 R45
     2112 LOADN                            R55 4
     2113 CALL                             R53 2 1
     2114 MOVE                             R45 R53
     2115 GETTABLEKS                       R54 R27 K52 ["consumed"]
     2117 LOADK                            R55 K166 ["/**"]
     2118 CONCAT                           R53 R54 R55
     2119 SETTABLEKS                       R53 R27 K52 ["consumed"]
     2121 GETTABLEKS                       R53 R27 K50 ["index"]
     2123 ADDK                             R53 R53 K168 [3]
     2124 SETTABLEKS                       R53 R27 K50 ["index"]
     2126 JUMPBACK                         ; [-45]
     2127 GETTABLEKS                       R52 R46 K17 ["type"]
     2129 JUMPIFNOTEQKS                    R52 K21 ["bos"] ; [+56]
     2131 GETTABLEKS                       R53 R27 K50 ["index"]
     2133 JUMPIFEQ                         R53 R4 ; [+2]
     2135 LOADB                            R52 0 +1
     2136 LOADB                            R52 1
     2137 JUMPIFNOT                        R52 ; [+48]
     2138 LOADK                            R52 K60 ["globstar"]
     2139 SETTABLEKS                       R52 R31 K17 ["type"]
     2141 GETTABLEKS                       R53 R31 K18 ["value"]
     2143 MOVE                             R54 R32
     2144 CONCAT                           R52 R53 R54
     2145 SETTABLEKS                       R52 R31 K18 ["value"]
     2147 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2148 MOVE                             R54 R7
     2149 MOVE                             R55 R22
     2150 GETUPVAL                         R58 4
     2151 GETTABLEKS                       R57 R58 K24 ["toJSBoolean"]
     2153 GETTABLEKS                       R58 R2 K42 ["dot"]
     2155 CALL                             R57 1 1
     2156 JUMPIFNOT                        R57 ; [+2]
     2157 MOVE                             R56 R15
     2158 JUMP                             ; [+1]
     2159 MOVE                             R56 R11
     2160 NAMECALL                         R52 R52 K16 ["format"]
     2162 CALL                             R52 4 1
     2163 SETTABLEKS                       R52 R31 K19 ["output"]
     2165 GETTABLEKS                       R52 R31 K19 ["output"]
     2167 SETTABLEKS                       R52 R27 K19 ["output"]
     2169 LOADB                            R52 1
     2170 SETTABLEKS                       R52 R27 K60 ["globstar"]
     2172 MOVE                             R52 R32
     2173 ORK                              R53 R52 K22 [""]
     2174 GETTABLEKS                       R55 R27 K52 ["consumed"]
     2176 MOVE                             R56 R53
     2177 CONCAT                           R54 R55 R56
     2178 SETTABLEKS                       R54 R27 K52 ["consumed"]
     2180 GETTABLEKS                       R54 R27 K50 ["index"]
     2182 ADDK                             R54 R54 K86 [0]
     2183 SETTABLEKS                       R54 R27 K50 ["index"]
     2185 JUMP                             ; [+510]
     2186 GETTABLEKS                       R52 R46 K17 ["type"]
     2188 JUMPIFNOTEQKS                    R52 K140 ["slash"] ; [+105]
     2190 GETTABLEKS                       R53 R46 K164 ["prev"]
     2192 GETTABLEKS                       R52 R53 K17 ["type"]
     2194 JUMPIFEQKS                       R52 K21 ["bos"] ; [+99]
     2196 GETUPVAL                         R53 4
     2197 GETTABLEKS                       R52 R53 K24 ["toJSBoolean"]
     2199 MOVE                             R53 R49
     2200 CALL                             R52 1 1
     2201 JUMPIF                           R52 ; [+92]
     2202 GETTABLEKS                       R53 R27 K50 ["index"]
     2204 JUMPIFEQ                         R53 R4 ; [+2]
     2206 LOADB                            R52 0 +1
     2207 LOADB                            R52 1
     2208 JUMPIFNOT                        R52 ; [+85]
     2209 GETUPVAL                         R53 7
     2210 GETTABLEKS                       R52 R53 K92 ["slice"]
     2212 GETTABLEKS                       R53 R27 K19 ["output"]
     2214 LOADN                            R54 1
     2215 GETTABLEKS                       R58 R46 K19 ["output"]
     2217 GETTABLEKS                       R59 R31 K19 ["output"]
     2219 CONCAT                           R57 R58 R59
     2220 LENGTH                           R56 R57
     2221 MINUS                            R55 R56
     2222 CALL                             R52 3 1
     2223 SETTABLEKS                       R52 R27 K19 ["output"]
     2225 LOADK                            R52 K169 ["(?:%s"]
     2226 GETTABLEKS                       R54 R46 K19 ["output"]
     2228 NAMECALL                         R52 R52 K16 ["format"]
     2230 CALL                             R52 2 1
     2231 SETTABLEKS                       R52 R46 K19 ["output"]
     2233 LOADK                            R52 K60 ["globstar"]
     2234 SETTABLEKS                       R52 R31 K17 ["type"]
     2236 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2237 MOVE                             R57 R7
     2238 MOVE                             R58 R22
     2239 GETUPVAL                         R61 4
     2240 GETTABLEKS                       R60 R61 K24 ["toJSBoolean"]
     2242 GETTABLEKS                       R61 R2 K42 ["dot"]
     2244 CALL                             R60 1 1
     2245 JUMPIFNOT                        R60 ; [+2]
     2246 MOVE                             R59 R15
     2247 JUMP                             ; [+1]
     2248 MOVE                             R59 R11
     2249 NAMECALL                         R55 R55 K16 ["format"]
     2251 CALL                             R55 4 1
     2252 MOVE                             R53 R55
     2253 GETTABLEKS                       R55 R2 K170 ["strictSlashes"]
     2255 JUMPIFNOT                        R55 ; [+2]
     2256 LOADK                            R54 K109 [")"]
     2257 JUMP                             ; [+1]
     2258 LOADK                            R54 K171 ["|$)"]
     2259 CONCAT                           R52 R53 R54
     2260 SETTABLEKS                       R52 R31 K19 ["output"]
     2262 GETTABLEKS                       R53 R31 K18 ["value"]
     2264 MOVE                             R54 R32
     2265 CONCAT                           R52 R53 R54
     2266 SETTABLEKS                       R52 R31 K18 ["value"]
     2268 LOADB                            R52 1
     2269 SETTABLEKS                       R52 R27 K60 ["globstar"]
     2271 GETTABLEKS                       R53 R27 K19 ["output"]
     2273 GETTABLEKS                       R54 R46 K19 ["output"]
     2275 GETTABLEKS                       R55 R31 K19 ["output"]
     2277 CONCAT                           R52 R53 R55
     2278 SETTABLEKS                       R52 R27 K19 ["output"]
     2280 MOVE                             R52 R32
     2281 ORK                              R53 R52 K22 [""]
     2282 GETTABLEKS                       R55 R27 K52 ["consumed"]
     2284 MOVE                             R56 R53
     2285 CONCAT                           R54 R55 R56
     2286 SETTABLEKS                       R54 R27 K52 ["consumed"]
     2288 GETTABLEKS                       R54 R27 K50 ["index"]
     2290 ADDK                             R54 R54 K86 [0]
     2291 SETTABLEKS                       R54 R27 K50 ["index"]
     2293 JUMP                             ; [+402]
     2294 GETTABLEKS                       R52 R46 K17 ["type"]
     2296 JUMPIFNOTEQKS                    R52 K140 ["slash"] ; [+123]
     2298 GETTABLEKS                       R53 R46 K164 ["prev"]
     2300 GETTABLEKS                       R52 R53 K17 ["type"]
     2302 JUMPIFEQKS                       R52 K21 ["bos"] ; [+117]
     2304 LOADN                            R54 1
     2305 LOADN                            R55 1
     2306 NAMECALL                         R52 R45 K82 ["sub"]
     2308 CALL                             R52 3 1
     2309 JUMPIFNOTEQKS                    R52 K75 ["/"] ; [+110]
     2311 LOADN                            R55 2
     2312 LOADN                            R56 2
     2313 NAMECALL                         R53 R45 K82 ["sub"]
     2315 CALL                             R53 3 1
     2316 JUMPIFEQKNIL                     R53 ; [+3]
     2318 LOADK                            R52 K172 ["|$"]
     2319 JUMP                             ; [+1]
     2320 LOADK                            R52 K22 [""]
     2321 GETUPVAL                         R54 7
     2322 GETTABLEKS                       R53 R54 K92 ["slice"]
     2324 GETTABLEKS                       R54 R27 K19 ["output"]
     2326 LOADN                            R55 1
     2327 GETTABLEKS                       R59 R46 K19 ["output"]
     2329 GETTABLEKS                       R60 R31 K19 ["output"]
     2331 CONCAT                           R58 R59 R60
     2332 LENGTH                           R57 R58
     2333 MINUS                            R56 R57
     2334 CALL                             R53 3 1
     2335 SETTABLEKS                       R53 R27 K19 ["output"]
     2337 LOADK                            R53 K169 ["(?:%s"]
     2338 GETTABLEKS                       R55 R46 K19 ["output"]
     2340 NAMECALL                         R53 R53 K16 ["format"]
     2342 CALL                             R53 2 1
     2343 SETTABLEKS                       R53 R46 K19 ["output"]
     2345 LOADK                            R53 K60 ["globstar"]
     2346 SETTABLEKS                       R53 R31 K17 ["type"]
     2348 LOADK                            R53 K173 ["%s%s|%s%s)"]
     2349 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2350 MOVE                             R57 R7
     2351 MOVE                             R58 R22
     2352 GETUPVAL                         R61 4
     2353 GETTABLEKS                       R60 R61 K24 ["toJSBoolean"]
     2355 GETTABLEKS                       R61 R2 K42 ["dot"]
     2357 CALL                             R60 1 1
     2358 JUMPIFNOT                        R60 ; [+2]
     2359 MOVE                             R59 R15
     2360 JUMP                             ; [+1]
     2361 MOVE                             R59 R11
     2362 NAMECALL                         R55 R55 K16 ["format"]
     2364 CALL                             R55 4 1
     2365 MOVE                             R56 R13
     2366 MOVE                             R57 R13
     2367 MOVE                             R58 R52
     2368 NAMECALL                         R53 R53 K16 ["format"]
     2370 CALL                             R53 5 1
     2371 SETTABLEKS                       R53 R31 K19 ["output"]
     2373 GETTABLEKS                       R54 R31 K18 ["value"]
     2375 MOVE                             R55 R32
     2376 CONCAT                           R53 R54 R55
     2377 SETTABLEKS                       R53 R31 K18 ["value"]
     2379 GETTABLEKS                       R54 R27 K19 ["output"]
     2381 GETTABLEKS                       R55 R46 K19 ["output"]
     2383 GETTABLEKS                       R56 R31 K19 ["output"]
     2385 CONCAT                           R53 R54 R56
     2386 SETTABLEKS                       R53 R27 K19 ["output"]
     2388 LOADB                            R53 1
     2389 SETTABLEKS                       R53 R27 K60 ["globstar"]
     2391 MOVE                             R54 R32
     2392 MOVE                             R55 R35
     2393 CALL                             R55 0 1
     2394 CONCAT                           R53 R54 R55
     2395 ORK                              R54 R53 K22 [""]
     2396 GETTABLEKS                       R56 R27 K52 ["consumed"]
     2398 MOVE                             R57 R54
     2399 CONCAT                           R55 R56 R57
     2400 SETTABLEKS                       R55 R27 K52 ["consumed"]
     2402 GETTABLEKS                       R55 R27 K50 ["index"]
     2404 ADDK                             R55 R55 K86 [0]
     2405 SETTABLEKS                       R55 R27 K50 ["index"]
     2407 MOVE                             R53 R42
     2408 DUPTABLE                         R54 K20 [{"type", "value", "output"}]
     2409 LOADK                            R55 K140 ["slash"]
     2410 SETTABLEKS                       R55 R54 K17 ["type"]
     2412 LOADK                            R55 K75 ["/"]
     2413 SETTABLEKS                       R55 R54 K18 ["value"]
     2415 LOADK                            R55 K22 [""]
     2416 SETTABLEKS                       R55 R54 K19 ["output"]
     2418 CALL                             R53 1 0
     2419 JUMP                             ; [+276]
     2420 GETTABLEKS                       R52 R46 K17 ["type"]
     2422 JUMPIFNOTEQKS                    R52 K21 ["bos"] ; [+77]
     2424 LOADN                            R54 1
     2425 LOADN                            R55 1
     2426 NAMECALL                         R52 R45 K82 ["sub"]
     2428 CALL                             R52 3 1
     2429 JUMPIFNOTEQKS                    R52 K75 ["/"] ; [+70]
     2431 LOADK                            R52 K60 ["globstar"]
     2432 SETTABLEKS                       R52 R31 K17 ["type"]
     2434 GETTABLEKS                       R53 R31 K18 ["value"]
     2436 MOVE                             R54 R32
     2437 CONCAT                           R52 R53 R54
     2438 SETTABLEKS                       R52 R31 K18 ["value"]
     2440 LOADK                            R52 K174 ["(?:^|%s|%s%s)"]
     2441 MOVE                             R54 R13
     2442 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2443 MOVE                             R57 R7
     2444 MOVE                             R58 R22
     2445 GETUPVAL                         R61 4
     2446 GETTABLEKS                       R60 R61 K24 ["toJSBoolean"]
     2448 GETTABLEKS                       R61 R2 K42 ["dot"]
     2450 CALL                             R60 1 1
     2451 JUMPIFNOT                        R60 ; [+2]
     2452 MOVE                             R59 R15
     2453 JUMP                             ; [+1]
     2454 MOVE                             R59 R11
     2455 NAMECALL                         R55 R55 K16 ["format"]
     2457 CALL                             R55 4 1
     2458 MOVE                             R56 R13
     2459 NAMECALL                         R52 R52 K16 ["format"]
     2461 CALL                             R52 4 1
     2462 SETTABLEKS                       R52 R31 K19 ["output"]
     2464 GETTABLEKS                       R52 R31 K19 ["output"]
     2466 SETTABLEKS                       R52 R27 K19 ["output"]
     2468 LOADB                            R52 1
     2469 SETTABLEKS                       R52 R27 K60 ["globstar"]
     2471 MOVE                             R53 R32
     2472 MOVE                             R54 R35
     2473 CALL                             R54 0 1
     2474 CONCAT                           R52 R53 R54
     2475 ORK                              R53 R52 K22 [""]
     2476 GETTABLEKS                       R55 R27 K52 ["consumed"]
     2478 MOVE                             R56 R53
     2479 CONCAT                           R54 R55 R56
     2480 SETTABLEKS                       R54 R27 K52 ["consumed"]
     2482 GETTABLEKS                       R54 R27 K50 ["index"]
     2484 ADDK                             R54 R54 K86 [0]
     2485 SETTABLEKS                       R54 R27 K50 ["index"]
     2487 MOVE                             R52 R42
     2488 DUPTABLE                         R53 K20 [{"type", "value", "output"}]
     2489 LOADK                            R54 K140 ["slash"]
     2490 SETTABLEKS                       R54 R53 K17 ["type"]
     2492 LOADK                            R54 K75 ["/"]
     2493 SETTABLEKS                       R54 R53 K18 ["value"]
     2495 LOADK                            R54 K22 [""]
     2496 SETTABLEKS                       R54 R53 K19 ["output"]
     2498 CALL                             R52 1 0
     2499 JUMP                             ; [+196]
     2500 GETUPVAL                         R53 7
     2501 GETTABLEKS                       R52 R53 K92 ["slice"]
     2503 GETTABLEKS                       R53 R27 K19 ["output"]
     2505 LOADN                            R54 1
     2506 GETTABLEKS                       R57 R31 K19 ["output"]
     2508 LENGTH                           R56 R57
     2509 MINUS                            R55 R56
     2510 CALL                             R52 3 1
     2511 SETTABLEKS                       R52 R27 K19 ["output"]
     2513 LOADK                            R52 K60 ["globstar"]
     2514 SETTABLEKS                       R52 R31 K17 ["type"]
     2516 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2517 MOVE                             R54 R7
     2518 MOVE                             R55 R22
     2519 GETUPVAL                         R58 4
     2520 GETTABLEKS                       R57 R58 K24 ["toJSBoolean"]
     2522 GETTABLEKS                       R58 R2 K42 ["dot"]
     2524 CALL                             R57 1 1
     2525 JUMPIFNOT                        R57 ; [+2]
     2526 MOVE                             R56 R15
     2527 JUMP                             ; [+1]
     2528 MOVE                             R56 R11
     2529 NAMECALL                         R52 R52 K16 ["format"]
     2531 CALL                             R52 4 1
     2532 SETTABLEKS                       R52 R31 K19 ["output"]
     2534 GETTABLEKS                       R53 R31 K18 ["value"]
     2536 MOVE                             R54 R32
     2537 CONCAT                           R52 R53 R54
     2538 SETTABLEKS                       R52 R31 K18 ["value"]
     2540 GETTABLEKS                       R53 R27 K19 ["output"]
     2542 GETTABLEKS                       R54 R31 K19 ["output"]
     2544 CONCAT                           R52 R53 R54
     2545 SETTABLEKS                       R52 R27 K19 ["output"]
     2547 LOADB                            R52 1
     2548 SETTABLEKS                       R52 R27 K60 ["globstar"]
     2550 MOVE                             R52 R32
     2551 ORK                              R53 R52 K22 [""]
     2552 GETTABLEKS                       R55 R27 K52 ["consumed"]
     2554 MOVE                             R56 R53
     2555 CONCAT                           R54 R55 R56
     2556 SETTABLEKS                       R54 R27 K52 ["consumed"]
     2558 GETTABLEKS                       R54 R27 K50 ["index"]
     2560 ADDK                             R54 R54 K86 [0]
     2561 SETTABLEKS                       R54 R27 K50 ["index"]
     2563 JUMP                             ; [+132]
     2564 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     2565 LOADK                            R47 K161 ["star"]
     2566 SETTABLEKS                       R47 R46 K17 ["type"]
     2568 SETTABLEKS                       R32 R46 K18 ["value"]
     2570 SETTABLEKS                       R26 R46 K19 ["output"]
     2572 GETTABLEKS                       R47 R2 K43 ["bash"]
     2574 JUMPIFNOTEQKB                    R47 TRUE ; [+22]
     2576 LOADK                            R47 K175 [".*?"]
     2577 SETTABLEKS                       R47 R46 K19 ["output"]
     2579 GETTABLEKS                       R47 R31 K17 ["type"]
     2581 JUMPIFEQKS                       R47 K21 ["bos"] ; [+5]
     2583 GETTABLEKS                       R47 R31 K17 ["type"]
     2585 JUMPIFNOTEQKS                    R47 K140 ["slash"] ; [+7]
     2587 MOVE                             R48 R24
     2588 GETTABLEKS                       R49 R46 K19 ["output"]
     2590 CONCAT                           R47 R48 R49
     2591 SETTABLEKS                       R47 R46 K19 ["output"]
     2593 MOVE                             R47 R42
     2594 MOVE                             R48 R46
     2595 CALL                             R47 1 0
     2596 JUMP                             ; [+99]
     2597 JUMPIFEQKNIL                     R31 ; [+19]
     2599 GETTABLEKS                       R47 R31 K17 ["type"]
     2601 JUMPIFEQKS                       R47 K119 ["bracket"] ; [+5]
     2603 GETTABLEKS                       R47 R31 K17 ["type"]
     2605 JUMPIFNOTEQKS                    R47 K108 ["paren"] ; [+11]
     2607 GETTABLEKS                       R47 R2 K152 ["regex"]
     2609 JUMPIFNOTEQKB                    R47 TRUE ; [+7]
     2611 SETTABLEKS                       R32 R46 K19 ["output"]
     2613 MOVE                             R47 R42
     2614 MOVE                             R48 R46
     2615 CALL                             R47 1 0
     2616 JUMP                             ; [+79]
     2617 GETTABLEKS                       R47 R27 K50 ["index"]
     2619 GETTABLEKS                       R48 R27 K51 ["start"]
     2621 JUMPIFEQ                         R47 R48 ; [+9]
     2623 GETTABLEKS                       R47 R31 K17 ["type"]
     2625 JUMPIFEQKS                       R47 K140 ["slash"] ; [+5]
     2627 GETTABLEKS                       R47 R31 K17 ["type"]
     2629 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+63]
     2631 GETTABLEKS                       R47 R31 K17 ["type"]
     2633 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+14]
     2635 GETTABLEKS                       R48 R27 K19 ["output"]
     2637 MOVE                             R49 R17
     2638 CONCAT                           R47 R48 R49
     2639 SETTABLEKS                       R47 R27 K19 ["output"]
     2641 GETTABLEKS                       R48 R31 K19 ["output"]
     2643 MOVE                             R49 R17
     2644 CONCAT                           R47 R48 R49
     2645 SETTABLEKS                       R47 R31 K19 ["output"]
     2647 JUMP                             ; [+29]
     2648 GETTABLEKS                       R47 R2 K42 ["dot"]
     2650 JUMPIFNOTEQKB                    R47 TRUE ; [+14]
     2652 GETTABLEKS                       R48 R27 K19 ["output"]
     2654 MOVE                             R49 R18
     2655 CONCAT                           R47 R48 R49
     2656 SETTABLEKS                       R47 R27 K19 ["output"]
     2658 GETTABLEKS                       R48 R31 K19 ["output"]
     2660 MOVE                             R49 R18
     2661 CONCAT                           R47 R48 R49
     2662 SETTABLEKS                       R47 R31 K19 ["output"]
     2664 JUMP                             ; [+12]
     2665 GETTABLEKS                       R48 R27 K19 ["output"]
     2667 MOVE                             R49 R24
     2668 CONCAT                           R47 R48 R49
     2669 SETTABLEKS                       R47 R27 K19 ["output"]
     2671 GETTABLEKS                       R48 R31 K19 ["output"]
     2673 MOVE                             R49 R24
     2674 CONCAT                           R47 R48 R49
     2675 SETTABLEKS                       R47 R31 K19 ["output"]
     2677 MOVE                             R47 R34
     2678 CALL                             R47 0 1
     2679 JUMPIFEQKS                       R47 K157 ["*"] ; [+13]
     2681 GETTABLEKS                       R48 R27 K19 ["output"]
     2683 MOVE                             R49 R14
     2684 CONCAT                           R47 R48 R49
     2685 SETTABLEKS                       R47 R27 K19 ["output"]
     2687 GETTABLEKS                       R48 R31 K19 ["output"]
     2689 MOVE                             R49 R14
     2690 CONCAT                           R47 R48 R49
     2691 SETTABLEKS                       R47 R31 K19 ["output"]
     2693 MOVE                             R47 R42
     2694 MOVE                             R48 R46
     2695 CALL                             R47 1 0
     2696 JUMPBACK                         ; [-2293]
     2697 GETTABLEKS                       R45 R27 K56 ["brackets"]
     2699 LOADN                            R46 0
     2700 JUMPIFNOTLT                      R46 R45 ; [+40]
     2702 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
     2704 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2706 GETIMPORT                        R45 K4 [error]
     2708 GETUPVAL                         R47 0
     2709 GETTABLEKS                       R46 R47 K5 ["new"]
     2711 LOADK                            R48 K111 ["SyntaxError: "]
     2712 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2713 LOADK                            R51 K118 ["closing"]
     2714 LOADK                            R52 K87 ["]"]
     2715 LOADK                            R53 K87 ["]"]
     2716 NAMECALL                         R49 R49 K16 ["format"]
     2718 CALL                             R49 4 1
     2719 CONCAT                           R47 R48 R49
     2720 CALL                             R46 1 -1
     2721 CALL                             R45 -1 0
     2722 GETUPVAL                         R46 5
     2723 GETTABLEKS                       R45 R46 K176 ["escapeLast"]
     2725 GETTABLEKS                       R46 R27 K19 ["output"]
     2727 LOADK                            R47 K88 ["["]
     2728 CALL                             R45 2 1
     2729 SETTABLEKS                       R45 R27 K19 ["output"]
     2731 GETTABLEKS                       R45 R27 K56 ["brackets"]
     2733 SUBK                             R45 R45 K81 [1]
     2734 SETTABLEKS                       R45 R27 K56 ["brackets"]
     2736 GETIMPORT                        R45 K115 [table.remove]
     2738 MOVE                             R46 R30
     2739 CALL                             R45 1 0
     2740 JUMPBACK                         ; [-44]
     2741 GETTABLEKS                       R45 R27 K58 ["parens"]
     2743 LOADN                            R46 0
     2744 JUMPIFNOTLT                      R46 R45 ; [+40]
     2746 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
     2748 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2750 GETIMPORT                        R45 K4 [error]
     2752 GETUPVAL                         R47 0
     2753 GETTABLEKS                       R46 R47 K5 ["new"]
     2755 LOADK                            R48 K111 ["SyntaxError: "]
     2756 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2757 LOADK                            R51 K118 ["closing"]
     2758 LOADK                            R52 K109 [")"]
     2759 LOADK                            R53 K109 [")"]
     2760 NAMECALL                         R49 R49 K16 ["format"]
     2762 CALL                             R49 4 1
     2763 CONCAT                           R47 R48 R49
     2764 CALL                             R46 1 -1
     2765 CALL                             R45 -1 0
     2766 GETUPVAL                         R46 5
     2767 GETTABLEKS                       R45 R46 K176 ["escapeLast"]
     2769 GETTABLEKS                       R46 R27 K19 ["output"]
     2771 LOADK                            R47 K104 ["("]
     2772 CALL                             R45 2 1
     2773 SETTABLEKS                       R45 R27 K19 ["output"]
     2775 GETTABLEKS                       R45 R27 K58 ["parens"]
     2777 SUBK                             R45 R45 K81 [1]
     2778 SETTABLEKS                       R45 R27 K58 ["parens"]
     2780 GETIMPORT                        R45 K115 [table.remove]
     2782 MOVE                             R46 R30
     2783 CALL                             R45 1 0
     2784 JUMPBACK                         ; [-44]
     2785 GETTABLEKS                       R45 R27 K57 ["braces"]
     2787 LOADN                            R46 0
     2788 JUMPIFNOTLT                      R46 R45 ; [+40]
     2790 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
     2792 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2794 GETIMPORT                        R45 K4 [error]
     2796 GETUPVAL                         R47 0
     2797 GETTABLEKS                       R46 R47 K5 ["new"]
     2799 LOADK                            R48 K111 ["SyntaxError: "]
     2800 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2801 LOADK                            R51 K118 ["closing"]
     2802 LOADK                            R52 K130 ["}"]
     2803 LOADK                            R53 K130 ["}"]
     2804 NAMECALL                         R49 R49 K16 ["format"]
     2806 CALL                             R49 4 1
     2807 CONCAT                           R47 R48 R49
     2808 CALL                             R46 1 -1
     2809 CALL                             R45 -1 0
     2810 GETUPVAL                         R46 5
     2811 GETTABLEKS                       R45 R46 K176 ["escapeLast"]
     2813 GETTABLEKS                       R46 R27 K19 ["output"]
     2815 LOADK                            R47 K124 ["{"]
     2816 CALL                             R45 2 1
     2817 SETTABLEKS                       R45 R27 K19 ["output"]
     2819 GETTABLEKS                       R45 R27 K57 ["braces"]
     2821 SUBK                             R45 R45 K81 [1]
     2822 SETTABLEKS                       R45 R27 K57 ["braces"]
     2824 GETIMPORT                        R45 K115 [table.remove]
     2826 MOVE                             R46 R30
     2827 CALL                             R45 1 0
     2828 JUMPBACK                         ; [-44]
     2829 GETTABLEKS                       R45 R2 K170 ["strictSlashes"]
     2831 JUMPIFEQKB                       R45 TRUE ; [+25]
     2833 GETTABLEKS                       R45 R31 K17 ["type"]
     2835 JUMPIFEQKS                       R45 K161 ["star"] ; [+5]
     2837 GETTABLEKS                       R45 R31 K17 ["type"]
     2839 JUMPIFNOTEQKS                    R45 K119 ["bracket"] ; [+17]
     2841 MOVE                             R45 R42
     2842 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     2843 LOADK                            R47 K177 ["maybe_slash"]
     2844 SETTABLEKS                       R47 R46 K17 ["type"]
     2846 LOADK                            R47 K22 [""]
     2847 SETTABLEKS                       R47 R46 K18 ["value"]
     2849 LOADK                            R47 K178 ["%s?"]
     2850 MOVE                             R49 R13
     2851 NAMECALL                         R47 R47 K16 ["format"]
     2853 CALL                             R47 2 1
     2854 SETTABLEKS                       R47 R46 K19 ["output"]
     2856 CALL                             R45 1 0
     2857 GETTABLEKS                       R45 R27 K54 ["backtrack"]
     2859 JUMPIFNOTEQKB                    R45 TRUE ; [+36]
     2861 LOADK                            R45 K22 [""]
     2862 SETTABLEKS                       R45 R27 K19 ["output"]
     2864 GETIMPORT                        R45 K136 [ipairs]
     2866 GETTABLEKS                       R46 R27 K61 ["tokens"]
     2868 CALL                             R45 1 3
     2869 FORGPREP_INEXT                   R45
     2870 GETTABLEKS                       R51 R27 K19 ["output"]
     2872 GETTABLEKS                       R53 R49 K19 ["output"]
     2874 JUMPIFEQKNIL                     R53 ; [+4]
     2876 GETTABLEKS                       R52 R49 K19 ["output"]
     2878 JUMP                             ; [+2]
     2879 GETTABLEKS                       R52 R49 K18 ["value"]
     2881 CONCAT                           R50 R51 R52
     2882 SETTABLEKS                       R50 R27 K19 ["output"]
     2884 GETTABLEKS                       R50 R49 K179 ["suffix"]
     2886 JUMPIFNOT                        R50 ; [+7]
     2887 GETTABLEKS                       R51 R27 K19 ["output"]
     2889 GETTABLEKS                       R52 R49 K179 ["suffix"]
     2891 CONCAT                           R50 R51 R52
     2892 SETTABLEKS                       R50 R27 K19 ["output"]
     2894 FORGLOOP                         R45 2 [inext] ; [-25]
     2896 CLOSEUPVALS                      R0
     2897 RETURN                           R27 1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["noglobstar"]
        2 JUMPIFNOTEQKB                    R1 TRUE ; [+3]
        4 GETUPVAL                         R1 0
        5 RETURN                           R1 1
        6 LOADK                            R1 K1 ["(%s(?:(?!%s%s).)*?)"]
        7 GETUPVAL                         R3 1
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R7 3
       10 GETTABLEKS                       R6 R7 K2 ["toJSBoolean"]
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
       58 GETUPVAL                         R11 9
       59 GETTABLEKS                       R10 R11 K11 ["toJSBoolean"]
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
       88 GETUPVAL                         R12 9
       89 GETTABLEKS                       R11 R12 K11 ["toJSBoolean"]
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
      124 GETUPVAL                         R12 9
      125 GETTABLEKS                       R11 R12 K11 ["toJSBoolean"]
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
      162 GETUPVAL                         R12 9
      163 GETTABLEKS                       R11 R12 K11 ["toJSBoolean"]
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
      191 GETUPVAL                         R3 9
      192 GETTABLEKS                       R2 R3 K11 ["toJSBoolean"]
      194 MOVE                             R3 R1
      195 CALL                             R2 1 1
      196 JUMPIF                           R2 ; [+2]
      197 LOADNIL                          R2
      198 RETURN                           R2 1
      199 GETUPVAL                         R2 12
      200 GETTABLEN                        R3 R1 2
      201 CALL                             R2 1 1
      202 GETUPVAL                         R4 9
      203 GETTABLEKS                       R3 R4 K11 ["toJSBoolean"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["assign"]
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
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R6 R7 K10 ["new"]
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
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R6 R7 K15 ["toJSBoolean"]
       52 GETUPVAL                         R8 4
       53 GETTABLE                         R7 R8 R0
       54 CALL                             R6 1 1
       55 JUMPIFNOT                        R6 ; [+3]
       56 GETUPVAL                         R6 4
       57 GETTABLE                         R5 R6 R0
       58 JUMPIF                           R5 ; [+1]
       59 MOVE                             R5 R0
       60 MOVE                             R0 R5
       61 GETUPVAL                         R6 5
       62 GETTABLEKS                       R5 R6 K16 ["isWindows"]
       64 MOVE                             R6 R1
       65 CALL                             R5 1 1
       66 GETUPVAL                         R7 6
       67 GETTABLEKS                       R6 R7 K17 ["globChars"]
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
       89 GETUPVAL                         R18 3
       90 GETTABLEKS                       R17 R18 K15 ["toJSBoolean"]
       92 GETTABLEKS                       R18 R2 K27 ["dot"]
       94 CALL                             R17 1 1
       95 JUMPIFNOT                        R17 ; [+2]
       96 MOVE                             R16 R12
       97 JUMP                             ; [+1]
       98 MOVE                             R16 R11
       99 GETUPVAL                         R19 3
      100 GETTABLEKS                       R18 R19 K15 ["toJSBoolean"]
      102 GETTABLEKS                       R19 R2 K27 ["dot"]
      104 CALL                             R18 1 1
      105 JUMPIFNOT                        R18 ; [+2]
      106 MOVE                             R17 R13
      107 JUMP                             ; [+1]
      108 MOVE                             R17 R11
      109 GETUPVAL                         R20 3
      110 GETTABLEKS                       R19 R20 K15 ["toJSBoolean"]
      112 GETTABLEKS                       R20 R2 K28 ["capture"]
      114 CALL                             R19 1 1
      115 JUMPIFNOT                        R19 ; [+2]
      116 LOADK                            R18 K29 [""]
      117 JUMP                             ; [+1]
      118 LOADK                            R18 K30 ["?:"]
      119 DUPTABLE                         R19 K33 [{"negated", "prefix"}]
      120 LOADB                            R20 0
      121 SETTABLEKS                       R20 R19 K31 ["negated"]
      123 LOADK                            R20 K29 [""]
      124 SETTABLEKS                       R20 R19 K32 ["prefix"]
      126 GETTABLEKS                       R21 R2 K34 ["bash"]
      128 JUMPIFNOTEQKB                    R21 TRUE ; [+3]
      130 LOADK                            R20 K35 [".*?"]
      131 JUMP                             ; [+1]
      132 MOVE                             R20 R14
      133 GETUPVAL                         R22 3
      134 GETTABLEKS                       R21 R22 K15 ["toJSBoolean"]
      136 GETTABLEKS                       R22 R2 K28 ["capture"]
      138 CALL                             R21 1 1
      139 JUMPIFNOT                        R21 ; [+6]
      140 LOADK                            R21 K36 ["(%s)"]
      141 MOVE                             R23 R20
      142 NAMECALL                         R21 R21 K14 ["format"]
      144 CALL                             R21 2 1
      145 MOVE                             R20 R21
      146 NEWCLOSURE                       R21 P0
      147 CAPTURE                          REF R20
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R15
      150 CAPTURE                          UPVAL U3
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R7
      153 NEWCLOSURE                       R22 P1
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R9
      156 CAPTURE                          REF R20
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R15
      163 CAPTURE                          UPVAL U3
      164 CAPTURE                          VAL R10
      165 CAPTURE                          UPVAL U7
      166 CAPTURE                          VAL R22
      167 GETUPVAL                         R24 5
      168 GETTABLEKS                       R23 R24 K37 ["removePrefix"]
      170 MOVE                             R24 R0
      171 MOVE                             R25 R19
      172 CALL                             R23 2 1
      173 MOVE                             R24 R22
      174 MOVE                             R25 R23
      175 CALL                             R24 1 1
      176 JUMPIFEQKNIL                     R24 ; [+18]
      178 GETUPVAL                         R26 3
      179 GETTABLEKS                       R25 R26 K15 ["toJSBoolean"]
      181 MOVE                             R26 R24
      182 CALL                             R25 1 1
      183 JUMPIFNOT                        R25 ; [+11]
      184 GETTABLEKS                       R25 R2 K38 ["strictSlashes"]
      186 JUMPIFEQKB                       R25 TRUE ; [+8]
      188 MOVE                             R25 R24
      189 LOADK                            R26 K39 ["%s?"]
      190 MOVE                             R28 R8
      191 NAMECALL                         R26 R26 K14 ["format"]
      193 CALL                             R26 2 1
      194 CONCAT                           R24 R25 R26
      195 CLOSEUPVALS                      R20
      196 RETURN                           R24 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       16 GETTABLEKS                       R5 R2 K8 ["Error"]
       18 GETTABLEKS                       R6 R2 K9 ["Object"]
       20 GETTABLEKS                       R7 R2 K10 ["String"]
       22 GETIMPORT                        R9 K4 [require]
       24 GETTABLEKS                       R10 R0 K11 ["stringUtils"]
       26 CALL                             R9 1 1
       27 GETTABLEKS                       R8 R9 K12 ["stringReplace"]
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
