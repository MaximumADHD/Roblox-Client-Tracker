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
        7 DUPTABLE                         R5 K3 [{"conditions", "inner"}]
        8 LOADN                            R6 1
        9 SETTABLEKS                       R6 R5 K1 ["conditions"]
       11 LOADK                            R6 K4 [""]
       12 SETTABLEKS                       R6 R5 K2 ["inner"]
       14 CALL                             R2 3 1
       15 GETUPVAL                         R3 2
       16 SETTABLEKS                       R3 R2 K5 ["prev"]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K6 ["parens"]
       21 SETTABLEKS                       R3 R2 K6 ["parens"]
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K7 ["output"]
       26 SETTABLEKS                       R3 R2 K7 ["output"]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K8 ["toJSBoolean"]
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R7 R7 K9 ["capture"]
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
       61 GETUPVAL                         R7 4
       62 GETTABLEKS                       R7 R7 K8 ["toJSBoolean"]
       64 GETUPVAL                         R8 3
       65 GETTABLEKS                       R8 R8 K7 ["output"]
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
      104 JUMPIFEQKNIL                     R4 ; [+48]
      106 GETUPVAL                         R6 10
      107 GETUPVAL                         R8 7
      108 GETTABLEKS                       R8 R8 K13 ["index"]
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
      127 GETUPVAL                         R4 11
      128 MOVE                             R5 R2
      129 GETUPVAL                         R6 12
      130 GETTABLEKS                       R6 R6 K23 ["assign"]
      132 NEWTABLE                         R7 0 0
      134 GETUPVAL                         R8 13
      135 DUPTABLE                         R9 K25 [{"fastpaths"}]
      136 LOADB                            R10 0
      137 SETTABLEKS                       R10 R9 K24 ["fastpaths"]
      139 CALL                             R6 3 -1
      140 CALL                             R4 -1 1
      141 GETTABLEKS                       R4 R4 K26 ["output"]
      143 LOADK                            R5 K27 [")%s)%s)"]
      144 MOVE                             R7 R4
      145 MOVE                             R8 R3
      146 NAMECALL                         R5 R5 K12 ["format"]
      148 CALL                             R5 3 1
      149 SETTABLEKS                       R5 R0 K0 ["close"]
      151 GETTABLEKS                       R1 R0 K0 ["close"]
      153 GETTABLEKS                       R4 R0 K28 ["prev"]
      155 GETTABLEKS                       R4 R4 K5 ["type"]
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
       84 GETUPVAL                         R8 4
       85 GETTABLEKS                       R8 R8 K24 ["toJSBoolean"]
       87 GETTABLEKS                       R9 R2 K25 ["capture"]
       89 CALL                             R8 1 1
       90 JUMPIFNOT                        R8 ; [+2]
       91 LOADK                            R7 K22 [""]
       92 JUMP                             ; [+1]
       93 LOADK                            R7 K26 ["?:"]
       94 GETUPVAL                         R8 5
       95 GETTABLEKS                       R8 R8 K27 ["isWindows"]
       97 MOVE                             R9 R1
       98 CALL                             R8 1 1
       99 GETUPVAL                         R9 6
      100 GETTABLEKS                       R9 R9 K28 ["globChars"]
      102 MOVE                             R10 R8
      103 CALL                             R9 1 1
      104 GETUPVAL                         R10 6
      105 GETTABLEKS                       R10 R10 K29 ["extglobChars"]
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
      139 GETUPVAL                         R25 4
      140 GETTABLEKS                       R25 R25 K24 ["toJSBoolean"]
      142 GETTABLEKS                       R26 R2 K42 ["dot"]
      144 CALL                             R25 1 1
      145 JUMPIFNOT                        R25 ; [+2]
      146 LOADK                            R24 K22 [""]
      147 JUMP                             ; [+1]
      148 MOVE                             R24 R16
      149 GETUPVAL                         R26 4
      150 GETTABLEKS                       R26 R26 K24 ["toJSBoolean"]
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
      166 GETUPVAL                         R31 4
      167 GETTABLEKS                       R31 R31 K24 ["toJSBoolean"]
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
      181 GETUPVAL                         R27 4
      182 GETTABLEKS                       R27 R27 K24 ["toJSBoolean"]
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
      255 GETUPVAL                         R28 5
      256 GETTABLEKS                       R28 R28 K63 ["removePrefix"]
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
      392 GETUPVAL                         R47 5
      393 GETTABLEKS                       R47 R47 K72 ["wrapOutput"]
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
      410 JUMPIF                           R45 ; [+2280]
      411 MOVE                             R45 R35
      412 CALL                             R45 0 1
      413 MOVE                             R32 R45
      414 JUMPIFEQKS                       R32 K73 ["\0"] ; [+2275]
      416 JUMPIFNOTEQKS                    R32 K74 ["\\"] ; [+92]
      418 MOVE                             R45 R34
      419 CALL                             R45 0 1
      420 JUMPIFNOTEQKS                    R45 K75 ["/"] ; [+5]
      422 GETTABLEKS                       R46 R2 K43 ["bash"]
      424 JUMPIFNOTEQKB                    R46 TRUE ; [+2265]
      426 JUMPIFEQKS                       R45 K76 ["."] ; [+2263]
      428 JUMPIFEQKS                       R45 K77 [";"] ; [+2261]
      430 GETUPVAL                         R46 4
      431 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
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
      447 JUMP                             ; [+2242]
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
      508 JUMP                             ; [+2181]
      509 GETTABLEKS                       R45 R27 K56 ["brackets"]
      511 LOADN                            R46 0
      512 JUMPIFNOTLT                      R46 R45 ; [+175]
      514 JUMPIFNOTEQKS                    R32 K87 ["]"] ; [+9]
      516 GETTABLEKS                       R45 R31 K18 ["value"]
      518 JUMPIFEQKS                       R45 K88 ["["] ; [+5]
      520 GETTABLEKS                       R45 R31 K18 ["value"]
      522 JUMPIFNOTEQKS                    R45 K89 ["[^"] ; [+165]
      524 GETTABLEKS                       R45 R2 K90 ["posix"]
      526 JUMPIFEQKB                       R45 FALSE ; [+78]
      528 JUMPIFNOTEQKS                    R32 K91 [":"] ; [+76]
      530 GETUPVAL                         R45 7
      531 GETTABLEKS                       R45 R45 K92 ["slice"]
      533 GETTABLEKS                       R46 R31 K18 ["value"]
      535 LOADN                            R47 1
      536 CALL                             R45 2 1
      537 LOADK                            R48 K88 ["["]
      538 NAMECALL                         R46 R45 K93 ["find"]
      540 CALL                             R46 2 1
      541 JUMPIFEQKNIL                     R46 ; [+63]
      543 LOADB                            R46 1
      544 SETTABLEKS                       R46 R31 K90 ["posix"]
      546 LOADK                            R48 K91 [":"]
      547 NAMECALL                         R46 R45 K93 ["find"]
      549 CALL                             R46 2 1
      550 JUMPIFEQKNIL                     R46 ; [+54]
      552 GETUPVAL                         R46 7
      553 GETTABLEKS                       R46 R46 K94 ["lastIndexOf"]
      555 GETTABLEKS                       R47 R31 K18 ["value"]
      557 LOADK                            R48 K88 ["["]
      558 CALL                             R46 2 1
      559 GETUPVAL                         R47 7
      560 GETTABLEKS                       R47 R47 K92 ["slice"]
      562 GETTABLEKS                       R48 R31 K18 ["value"]
      564 LOADN                            R49 1
      565 MOVE                             R50 R46
      566 CALL                             R47 3 1
      567 GETUPVAL                         R48 7
      568 GETTABLEKS                       R48 R48 K92 ["slice"]
      570 GETTABLEKS                       R49 R31 K18 ["value"]
      572 ADDK                             R50 R46 K85 [2]
      573 CALL                             R48 2 1
      574 GETUPVAL                         R50 12
      575 GETTABLE                         R49 R50 R48
      576 JUMPIFNOT                        R49 ; [+28]
      577 MOVE                             R51 R47
      578 MOVE                             R52 R49
      579 CONCAT                           R50 R51 R52
      580 SETTABLEKS                       R50 R31 K18 ["value"]
      582 LOADB                            R50 1
      583 SETTABLEKS                       R50 R27 K54 ["backtrack"]
      585 MOVE                             R50 R35
      586 CALL                             R50 0 0
      587 GETUPVAL                         R50 4
      588 GETTABLEKS                       R50 R50 K24 ["toJSBoolean"]
      590 GETTABLEKS                       R51 R5 K19 ["output"]
      592 CALL                             R50 1 1
      593 JUMPIF                           R50 ; [+2096]
      594 GETUPVAL                         R50 13
      595 GETTABLEKS                       R50 R50 K95 ["indexOf"]
      597 MOVE                             R51 R6
      598 MOVE                             R52 R31
      599 CALL                             R50 2 1
      600 JUMPIFNOTEQKN                    R50 K85 [2] ; [+2089]
      602 SETTABLEKS                       R14 R5 K19 ["output"]
      604 JUMP                             ; [+2085]
      605 JUMPIFNOTEQKS                    R32 K88 ["["] ; [+5]
      607 MOVE                             R45 R34
      608 CALL                             R45 0 1
      609 JUMPIFNOTEQKS                    R45 K91 [":"] ; [+7]
      611 JUMPIFNOTEQKS                    R32 K96 ["-"] ; [+11]
      613 MOVE                             R45 R34
      614 CALL                             R45 0 1
      615 JUMPIFNOTEQKS                    R45 K87 ["]"] ; [+7]
      617 LOADK                            R45 K97 ["\\%s"]
      618 MOVE                             R47 R32
      619 NAMECALL                         R45 R45 K16 ["format"]
      621 CALL                             R45 2 1
      622 MOVE                             R32 R45
      623 JUMPIFNOTEQKS                    R32 K87 ["]"] ; [+15]
      625 GETTABLEKS                       R45 R31 K18 ["value"]
      627 JUMPIFEQKS                       R45 K88 ["["] ; [+5]
      629 GETTABLEKS                       R45 R31 K18 ["value"]
      631 JUMPIFNOTEQKS                    R45 K89 ["[^"] ; [+7]
      633 LOADK                            R45 K97 ["\\%s"]
      634 MOVE                             R47 R32
      635 NAMECALL                         R45 R45 K16 ["format"]
      637 CALL                             R45 2 1
      638 MOVE                             R32 R45
      639 GETTABLEKS                       R45 R2 K90 ["posix"]
      641 JUMPIFNOTEQKB                    R45 TRUE ; [+8]
      643 JUMPIFNOTEQKS                    R32 K98 ["!"] ; [+6]
      645 GETTABLEKS                       R45 R31 K18 ["value"]
      647 JUMPIFNOTEQKS                    R45 K88 ["["] ; [+2]
      649 LOADK                            R32 K99 ["^"]
      650 GETTABLEKS                       R46 R31 K18 ["value"]
      652 MOVE                             R47 R32
      653 CONCAT                           R45 R46 R47
      654 SETTABLEKS                       R45 R31 K18 ["value"]
      656 DUPTABLE                         R45 K100 [{"value"}]
      657 SETTABLEKS                       R32 R45 K18 ["value"]
      659 GETTABLEKS                       R47 R27 K19 ["output"]
      661 GETTABLEKS                       R49 R45 K19 ["output"]
      663 JUMPIFEQKNIL                     R49 ; [+4]
      665 GETTABLEKS                       R48 R45 K19 ["output"]
      667 JUMP                             ; [+2]
      668 GETTABLEKS                       R48 R45 K18 ["value"]
      670 CONCAT                           R46 R47 R48
      671 SETTABLEKS                       R46 R27 K19 ["output"]
      673 GETTABLEKS                       R46 R45 K18 ["value"]
      675 ORK                              R47 R46 K22 [""]
      676 GETTABLEKS                       R49 R27 K52 ["consumed"]
      678 MOVE                             R50 R47
      679 CONCAT                           R48 R49 R50
      680 SETTABLEKS                       R48 R27 K52 ["consumed"]
      682 GETTABLEKS                       R48 R27 K50 ["index"]
      684 ADDK                             R48 R48 K86 [0]
      685 SETTABLEKS                       R48 R27 K50 ["index"]
      687 JUMP                             ; [+2002]
      688 GETTABLEKS                       R45 R27 K59 ["quotes"]
      690 JUMPIFNOTEQKN                    R45 K81 [1] ; [+47]
      692 JUMPIFEQKS                       R32 K101 ["\""] ; [+45]
      694 GETUPVAL                         R45 5
      695 GETTABLEKS                       R45 R45 K102 ["escapeRegex"]
      697 MOVE                             R46 R32
      698 CALL                             R45 1 1
      699 MOVE                             R32 R45
      700 GETTABLEKS                       R46 R31 K18 ["value"]
      702 MOVE                             R47 R32
      703 CONCAT                           R45 R46 R47
      704 SETTABLEKS                       R45 R31 K18 ["value"]
      706 DUPTABLE                         R45 K100 [{"value"}]
      707 SETTABLEKS                       R32 R45 K18 ["value"]
      709 GETTABLEKS                       R47 R27 K19 ["output"]
      711 GETTABLEKS                       R49 R45 K19 ["output"]
      713 JUMPIFEQKNIL                     R49 ; [+4]
      715 GETTABLEKS                       R48 R45 K19 ["output"]
      717 JUMP                             ; [+2]
      718 GETTABLEKS                       R48 R45 K18 ["value"]
      720 CONCAT                           R46 R47 R48
      721 SETTABLEKS                       R46 R27 K19 ["output"]
      723 GETTABLEKS                       R46 R45 K18 ["value"]
      725 ORK                              R47 R46 K22 [""]
      726 GETTABLEKS                       R49 R27 K52 ["consumed"]
      728 MOVE                             R50 R47
      729 CONCAT                           R48 R49 R50
      730 SETTABLEKS                       R48 R27 K52 ["consumed"]
      732 GETTABLEKS                       R48 R27 K50 ["index"]
      734 ADDK                             R48 R48 K86 [0]
      735 SETTABLEKS                       R48 R27 K50 ["index"]
      737 JUMP                             ; [+1952]
      738 JUMPIFNOTEQKS                    R32 K101 ["\""] ; [+23]
      740 GETTABLEKS                       R46 R27 K59 ["quotes"]
      742 JUMPIFNOTEQKN                    R46 K81 [1] ; [+3]
      744 LOADN                            R45 0
      745 JUMP                             ; [+1]
      746 LOADN                            R45 1
      747 SETTABLEKS                       R45 R27 K59 ["quotes"]
      749 GETTABLEKS                       R45 R2 K103 ["keepQuotes"]
      751 JUMPIFNOTEQKB                    R45 TRUE ; [+1938]
      753 MOVE                             R45 R42
      754 DUPTABLE                         R46 K78 [{"type", "value"}]
      755 LOADK                            R47 K79 ["text"]
      756 SETTABLEKS                       R47 R46 K17 ["type"]
      758 SETTABLEKS                       R32 R46 K18 ["value"]
      760 CALL                             R45 1 0
      761 JUMP                             ; [+1928]
      762 JUMPIFNOTEQKS                    R32 K104 ["("] ; [+22]
      764 GETTABLEKS                       R45 R27 K58 ["parens"]
      766 ADDK                             R45 R45 K81 [1]
      767 SETTABLEKS                       R45 R27 K58 ["parens"]
      769 FASTCALL2K                       TABLE_INSERT R30 K58 ; [+5]
      771 MOVE                             R46 R30
      772 LOADK                            R47 K58 ["parens"]
      773 GETIMPORT                        R45 K107 [table.insert]
      775 CALL                             R45 2 0
      776 MOVE                             R45 R42
      777 DUPTABLE                         R46 K78 [{"type", "value"}]
      778 LOADK                            R47 K108 ["paren"]
      779 SETTABLEKS                       R47 R46 K17 ["type"]
      781 SETTABLEKS                       R32 R46 K18 ["value"]
      783 CALL                             R45 1 0
      784 JUMP                             ; [+1905]
      785 JUMPIFNOTEQKS                    R32 K109 [")"] ; [+73]
      787 GETTABLEKS                       R45 R27 K58 ["parens"]
      789 JUMPIFNOTEQKN                    R45 K86 [0] ; [+21]
      791 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
      793 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      795 GETIMPORT                        R45 K4 [error]
      797 GETUPVAL                         R46 0
      798 GETTABLEKS                       R46 R46 K5 ["new"]
      800 LOADK                            R48 K111 ["SyntaxError: "]
      801 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      802 LOADK                            R51 K113 ["opening"]
      803 LOADK                            R52 K104 ["("]
      804 LOADK                            R53 K104 ["("]
      805 NAMECALL                         R49 R49 K16 ["format"]
      807 CALL                             R49 4 1
      808 CONCAT                           R47 R48 R49
      809 CALL                             R46 1 -1
      810 CALL                             R45 -1 0
      811 LENGTH                           R46 R28
      812 GETTABLE                         R45 R28 R46
      813 JUMPIFEQKNIL                     R45 ; [+15]
      815 GETTABLEKS                       R46 R27 K58 ["parens"]
      817 GETTABLEKS                       R48 R45 K58 ["parens"]
      819 ADDK                             R47 R48 K81 [1]
      820 JUMPIFNOTEQ                      R46 R47 ; [+8]
      822 MOVE                             R46 R44
      823 GETIMPORT                        R47 K115 [table.remove]
      825 MOVE                             R48 R28
      826 CALL                             R47 1 1
      827 CALL                             R46 1 0
      828 JUMP                             ; [+1861]
      829 MOVE                             R46 R42
      830 DUPTABLE                         R47 K20 [{"type", "value", "output"}]
      831 LOADK                            R48 K108 ["paren"]
      832 SETTABLEKS                       R48 R47 K17 ["type"]
      834 SETTABLEKS                       R32 R47 K18 ["value"]
      836 GETUPVAL                         R49 4
      837 GETTABLEKS                       R49 R49 K24 ["toJSBoolean"]
      839 GETTABLEKS                       R50 R27 K58 ["parens"]
      841 CALL                             R49 1 1
      842 JUMPIFNOT                        R49 ; [+2]
      843 LOADK                            R48 K109 [")"]
      844 JUMP                             ; [+1]
      845 LOADK                            R48 K116 ["\\)"]
      846 SETTABLEKS                       R48 R47 K19 ["output"]
      848 CALL                             R46 1 0
      849 GETTABLEKS                       R46 R27 K58 ["parens"]
      851 SUBK                             R46 R46 K81 [1]
      852 SETTABLEKS                       R46 R27 K58 ["parens"]
      854 GETIMPORT                        R46 K115 [table.remove]
      856 MOVE                             R47 R30
      857 CALL                             R46 1 0
      858 JUMP                             ; [+1831]
      859 JUMPIFNOTEQKS                    R32 K88 ["["] ; [+73]
      861 GETTABLEKS                       R45 R2 K117 ["nobracket"]
      863 JUMPIFEQKB                       R45 TRUE ; [+17]
      865 GETTABLEKS                       R49 R27 K50 ["index"]
      867 ADDK                             R48 R49 K81 [1]
      868 FASTCALL2                        STRING_SUB R0 R48 ; [+4]
      870 MOVE                             R47 R0
      871 GETIMPORT                        R46 K83 [string.sub]
      873 CALL                             R46 2 1
      874 LOADK                            R48 K87 ["]"]
      875 NAMECALL                         R46 R46 K93 ["find"]
      877 CALL                             R46 2 1
      878 NOT                              R45 R46
      879 JUMPIFEQKNIL                     R45 ; [+32]
      881 GETTABLEKS                       R45 R2 K117 ["nobracket"]
      883 JUMPIFEQKB                       R45 TRUE ; [+21]
      885 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
      887 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      889 GETIMPORT                        R45 K4 [error]
      891 GETUPVAL                         R46 0
      892 GETTABLEKS                       R46 R46 K5 ["new"]
      894 LOADK                            R48 K111 ["SyntaxError: "]
      895 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      896 LOADK                            R51 K118 ["closing"]
      897 LOADK                            R52 K87 ["]"]
      898 LOADK                            R53 K87 ["]"]
      899 NAMECALL                         R49 R49 K16 ["format"]
      901 CALL                             R49 4 1
      902 CONCAT                           R47 R48 R49
      903 CALL                             R46 1 -1
      904 CALL                             R45 -1 0
      905 LOADK                            R45 K97 ["\\%s"]
      906 MOVE                             R47 R32
      907 NAMECALL                         R45 R45 K16 ["format"]
      909 CALL                             R45 2 1
      910 MOVE                             R32 R45
      911 JUMP                             ; [+12]
      912 GETTABLEKS                       R45 R27 K56 ["brackets"]
      914 ADDK                             R45 R45 K81 [1]
      915 SETTABLEKS                       R45 R27 K56 ["brackets"]
      917 FASTCALL2K                       TABLE_INSERT R30 K56 ; [+5]
      919 MOVE                             R46 R30
      920 LOADK                            R47 K56 ["brackets"]
      921 GETIMPORT                        R45 K107 [table.insert]
      923 CALL                             R45 2 0
      924 MOVE                             R45 R42
      925 DUPTABLE                         R46 K78 [{"type", "value"}]
      926 LOADK                            R47 K119 ["bracket"]
      927 SETTABLEKS                       R47 R46 K17 ["type"]
      929 SETTABLEKS                       R32 R46 K18 ["value"]
      931 CALL                             R45 1 0
      932 JUMP                             ; [+1757]
      933 JUMPIFNOTEQKS                    R32 K87 ["]"] ; [+209]
      935 GETTABLEKS                       R45 R2 K117 ["nobracket"]
      937 JUMPIFEQKB                       R45 TRUE ; [+12]
      939 JUMPIFEQKNIL                     R31 ; [+26]
      941 GETTABLEKS                       R45 R31 K17 ["type"]
      943 JUMPIFNOTEQKS                    R45 K119 ["bracket"] ; [+22]
      945 GETTABLEKS                       R46 R31 K18 ["value"]
      947 LENGTH                           R45 R46
      948 JUMPIFNOTEQKN                    R45 K81 [1] ; [+17]
      950 MOVE                             R45 R42
      951 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
      952 LOADK                            R47 K79 ["text"]
      953 SETTABLEKS                       R47 R46 K17 ["type"]
      955 SETTABLEKS                       R32 R46 K18 ["value"]
      957 LOADK                            R47 K97 ["\\%s"]
      958 MOVE                             R49 R32
      959 NAMECALL                         R47 R47 K16 ["format"]
      961 CALL                             R47 2 1
      962 SETTABLEKS                       R47 R46 K19 ["output"]
      964 CALL                             R45 1 0
      965 JUMP                             ; [+1724]
      966 GETTABLEKS                       R45 R27 K56 ["brackets"]
      968 JUMPIFNOTEQKN                    R45 K86 [0] ; [+37]
      970 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
      972 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
      974 GETIMPORT                        R45 K4 [error]
      976 GETUPVAL                         R46 0
      977 GETTABLEKS                       R46 R46 K5 ["new"]
      979 LOADK                            R48 K111 ["SyntaxError: "]
      980 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
      981 LOADK                            R51 K113 ["opening"]
      982 LOADK                            R52 K88 ["["]
      983 LOADK                            R53 K88 ["["]
      984 NAMECALL                         R49 R49 K16 ["format"]
      986 CALL                             R49 4 1
      987 CONCAT                           R47 R48 R49
      988 CALL                             R46 1 -1
      989 CALL                             R45 -1 0
      990 MOVE                             R45 R42
      991 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
      992 LOADK                            R47 K79 ["text"]
      993 SETTABLEKS                       R47 R46 K17 ["type"]
      995 SETTABLEKS                       R32 R46 K18 ["value"]
      997 LOADK                            R47 K97 ["\\%s"]
      998 MOVE                             R49 R32
      999 NAMECALL                         R47 R47 K16 ["format"]
     1001 CALL                             R47 2 1
     1002 SETTABLEKS                       R47 R46 K19 ["output"]
     1004 CALL                             R45 1 0
     1005 JUMP                             ; [+1684]
     1006 GETTABLEKS                       R45 R27 K56 ["brackets"]
     1008 SUBK                             R45 R45 K81 [1]
     1009 SETTABLEKS                       R45 R27 K56 ["brackets"]
     1011 GETIMPORT                        R45 K115 [table.remove]
     1013 MOVE                             R46 R30
     1014 CALL                             R45 1 0
     1015 GETUPVAL                         R45 7
     1016 GETTABLEKS                       R45 R45 K92 ["slice"]
     1018 GETTABLEKS                       R46 R31 K18 ["value"]
     1020 LOADN                            R47 2
     1021 CALL                             R45 2 1
     1022 GETTABLEKS                       R46 R31 K90 ["posix"]
     1024 JUMPIFEQKB                       R46 TRUE ; [+21]
     1026 LOADN                            R48 1
     1027 LOADN                            R49 1
     1028 NAMECALL                         R46 R45 K82 ["sub"]
     1030 CALL                             R46 3 1
     1031 JUMPIFNOTEQKS                    R46 K99 ["^"] ; [+14]
     1033 LOADK                            R49 K75 ["/"]
     1034 NAMECALL                         R47 R45 K93 ["find"]
     1036 CALL                             R47 2 1
     1037 NOT                              R46 R47
     1038 JUMPIFEQKNIL                     R46 ; [+7]
     1040 LOADK                            R46 K120 ["/%s"]
     1041 MOVE                             R48 R32
     1042 NAMECALL                         R46 R46 K16 ["format"]
     1044 CALL                             R46 2 1
     1045 MOVE                             R32 R46
     1046 GETTABLEKS                       R47 R31 K18 ["value"]
     1048 MOVE                             R48 R32
     1049 CONCAT                           R46 R47 R48
     1050 SETTABLEKS                       R46 R31 K18 ["value"]
     1052 DUPTABLE                         R46 K100 [{"value"}]
     1053 SETTABLEKS                       R32 R46 K18 ["value"]
     1055 GETTABLEKS                       R48 R27 K19 ["output"]
     1057 GETTABLEKS                       R50 R46 K19 ["output"]
     1059 JUMPIFEQKNIL                     R50 ; [+4]
     1061 GETTABLEKS                       R49 R46 K19 ["output"]
     1063 JUMP                             ; [+2]
     1064 GETTABLEKS                       R49 R46 K18 ["value"]
     1066 CONCAT                           R47 R48 R49
     1067 SETTABLEKS                       R47 R27 K19 ["output"]
     1069 GETTABLEKS                       R47 R46 K18 ["value"]
     1071 ORK                              R48 R47 K22 [""]
     1072 GETTABLEKS                       R50 R27 K52 ["consumed"]
     1074 MOVE                             R51 R48
     1075 CONCAT                           R49 R50 R51
     1076 SETTABLEKS                       R49 R27 K52 ["consumed"]
     1078 GETTABLEKS                       R49 R27 K50 ["index"]
     1080 ADDK                             R49 R49 K86 [0]
     1081 SETTABLEKS                       R49 R27 K50 ["index"]
     1083 GETTABLEKS                       R46 R2 K121 ["literalBrackets"]
     1085 JUMPIFEQKB                       R46 FALSE ; [+1604]
     1087 GETUPVAL                         R46 5
     1088 GETTABLEKS                       R46 R46 K122 ["hasRegexChars"]
     1090 MOVE                             R47 R45
     1091 CALL                             R46 1 1
     1092 JUMPIF                           R46 ; [+1597]
     1093 GETUPVAL                         R46 5
     1094 GETTABLEKS                       R46 R46 K102 ["escapeRegex"]
     1096 GETTABLEKS                       R47 R31 K18 ["value"]
     1098 CALL                             R46 1 1
     1099 GETUPVAL                         R47 7
     1100 GETTABLEKS                       R47 R47 K92 ["slice"]
     1102 GETTABLEKS                       R48 R27 K19 ["output"]
     1104 LOADN                            R49 1
     1105 GETTABLEKS                       R52 R31 K18 ["value"]
     1107 LENGTH                           R51 R52
     1108 MINUS                            R50 R51
     1109 CALL                             R47 3 1
     1110 SETTABLEKS                       R47 R27 K19 ["output"]
     1112 GETTABLEKS                       R47 R2 K121 ["literalBrackets"]
     1114 JUMPIFNOTEQKB                    R47 TRUE ; [+10]
     1116 GETTABLEKS                       R48 R27 K19 ["output"]
     1118 MOVE                             R49 R46
     1119 CONCAT                           R47 R48 R49
     1120 SETTABLEKS                       R47 R27 K19 ["output"]
     1122 SETTABLEKS                       R46 R31 K18 ["value"]
     1124 JUMP                             ; [+1565]
     1125 LOADK                            R47 K123 ["(%s%s|%s)"]
     1126 MOVE                             R49 R7
     1127 MOVE                             R50 R46
     1128 GETTABLEKS                       R51 R31 K18 ["value"]
     1130 NAMECALL                         R47 R47 K16 ["format"]
     1132 CALL                             R47 4 1
     1133 SETTABLEKS                       R47 R31 K18 ["value"]
     1135 GETTABLEKS                       R48 R27 K19 ["output"]
     1137 GETTABLEKS                       R49 R31 K18 ["value"]
     1139 CONCAT                           R47 R48 R49
     1140 SETTABLEKS                       R47 R27 K19 ["output"]
     1142 JUMP                             ; [+1547]
     1143 JUMPIFNOTEQKS                    R32 K124 ["{"] ; [+47]
     1145 GETTABLEKS                       R45 R2 K125 ["nobrace"]
     1147 JUMPIFEQKB                       R45 TRUE ; [+43]
     1149 GETTABLEKS                       R45 R27 K57 ["braces"]
     1151 ADDK                             R45 R45 K81 [1]
     1152 SETTABLEKS                       R45 R27 K57 ["braces"]
     1154 FASTCALL2K                       TABLE_INSERT R30 K57 ; [+5]
     1156 MOVE                             R46 R30
     1157 LOADK                            R47 K57 ["braces"]
     1158 GETIMPORT                        R45 K107 [table.insert]
     1160 CALL                             R45 2 0
     1161 DUPTABLE                         R45 K128 [{"type", "value", "output", "outputIndex", "tokensIndex"}]
     1162 LOADK                            R46 K129 ["brace"]
     1163 SETTABLEKS                       R46 R45 K17 ["type"]
     1165 SETTABLEKS                       R32 R45 K18 ["value"]
     1167 LOADK                            R46 K104 ["("]
     1168 SETTABLEKS                       R46 R45 K19 ["output"]
     1170 GETTABLEKS                       R47 R27 K19 ["output"]
     1172 LENGTH                           R46 R47
     1173 SETTABLEKS                       R46 R45 K126 ["outputIndex"]
     1175 GETTABLEKS                       R47 R27 K61 ["tokens"]
     1177 LENGTH                           R46 R47
     1178 SETTABLEKS                       R46 R45 K127 ["tokensIndex"]
     1180 FASTCALL2                        TABLE_INSERT R29 R45 ; [+5]
     1182 MOVE                             R47 R29
     1183 MOVE                             R48 R45
     1184 GETIMPORT                        R46 K107 [table.insert]
     1186 CALL                             R46 2 0
     1187 MOVE                             R46 R42
     1188 MOVE                             R47 R45
     1189 CALL                             R46 1 0
     1190 JUMP                             ; [+1499]
     1191 JUMPIFNOTEQKS                    R32 K130 ["}"] ; [+157]
     1193 LENGTH                           R46 R29
     1194 GETTABLE                         R45 R29 R46
     1195 GETTABLEKS                       R46 R2 K125 ["nobrace"]
     1197 JUMPIFEQKB                       R46 TRUE ; [+7]
     1199 GETUPVAL                         R46 4
     1200 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1202 MOVE                             R47 R45
     1203 CALL                             R46 1 1
     1204 JUMPIF                           R46 ; [+11]
     1205 MOVE                             R46 R42
     1206 DUPTABLE                         R47 K20 [{"type", "value", "output"}]
     1207 LOADK                            R48 K79 ["text"]
     1208 SETTABLEKS                       R48 R47 K17 ["type"]
     1210 SETTABLEKS                       R32 R47 K18 ["value"]
     1212 SETTABLEKS                       R32 R47 K19 ["output"]
     1214 CALL                             R46 1 0
     1215 JUMP                             ; [+1474]
     1216 LOADK                            R46 K109 [")"]
     1217 GETTABLEKS                       R47 R45 K131 ["dots"]
     1219 JUMPIFNOTEQKB                    R47 TRUE ; [+45]
     1221 GETUPVAL                         R47 13
     1222 GETTABLEKS                       R47 R47 K92 ["slice"]
     1224 MOVE                             R48 R6
     1225 CALL                             R47 1 1
     1226 NEWTABLE                         R48 0 0
     1228 LENGTH                           R51 R47
     1229 LOADN                            R49 1
     1230 LOADN                            R50 255
     1231 FORNPREP                         R49
     1232 GETIMPORT                        R52 K115 [table.remove]
     1234 MOVE                             R53 R6
     1235 CALL                             R52 1 0
     1236 GETTABLE                         R52 R47 R51
     1237 GETTABLEKS                       R52 R52 K17 ["type"]
     1239 JUMPIFEQKS                       R52 K129 ["brace"] ; [+17]
     1241 GETTABLE                         R52 R47 R51
     1242 GETTABLEKS                       R52 R52 K17 ["type"]
     1244 JUMPIFEQKS                       R52 K131 ["dots"] ; [+11]
     1246 LOADN                            R54 1
     1247 GETTABLE                         R55 R47 R51
     1248 GETTABLEKS                       R55 R55 K18 ["value"]
     1250 FASTCALL3                        TABLE_INSERT R48 R54 R55
     1252 MOVE                             R53 R48
     1253 GETIMPORT                        R52 K107 [table.insert]
     1255 CALL                             R52 3 0
     1256 FORNLOOP                         R49
     1257 GETUPVAL                         R49 14
     1258 MOVE                             R50 R48
     1259 MOVE                             R51 R2
     1260 CALL                             R49 2 1
     1261 MOVE                             R46 R49
     1262 LOADB                            R49 1
     1263 SETTABLEKS                       R49 R27 K54 ["backtrack"]
     1265 GETTABLEKS                       R47 R45 K132 ["comma"]
     1267 JUMPIFEQKB                       R47 TRUE ; [+57]
     1269 GETTABLEKS                       R47 R45 K131 ["dots"]
     1271 JUMPIFEQKB                       R47 TRUE ; [+53]
     1273 GETUPVAL                         R47 7
     1274 GETTABLEKS                       R47 R47 K92 ["slice"]
     1276 GETTABLEKS                       R48 R27 K19 ["output"]
     1278 LOADN                            R49 1
     1279 GETTABLEKS                       R50 R45 K126 ["outputIndex"]
     1281 CALL                             R47 3 1
     1282 GETUPVAL                         R48 13
     1283 GETTABLEKS                       R48 R48 K92 ["slice"]
     1285 GETTABLEKS                       R49 R27 K61 ["tokens"]
     1287 GETTABLEKS                       R50 R45 K127 ["tokensIndex"]
     1289 CALL                             R48 2 1
     1290 LOADK                            R49 K133 ["\\{"]
     1291 SETTABLEKS                       R49 R45 K19 ["output"]
     1293 GETTABLEKS                       R49 R45 K19 ["output"]
     1295 SETTABLEKS                       R49 R45 K18 ["value"]
     1297 LOADK                            R46 K134 ["\\}"]
     1298 MOVE                             R32 R46
     1299 SETTABLEKS                       R47 R27 K19 ["output"]
     1301 GETIMPORT                        R49 K136 [ipairs]
     1303 MOVE                             R50 R48
     1304 CALL                             R49 1 3
     1305 FORGPREP_INEXT                   R49
     1306 GETTABLEKS                       R55 R27 K19 ["output"]
     1308 GETUPVAL                         R57 4
     1309 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     1311 GETTABLEKS                       R58 R53 K19 ["output"]
     1313 CALL                             R57 1 1
     1314 JUMPIFNOT                        R57 ; [+3]
     1315 GETTABLEKS                       R56 R53 K19 ["output"]
     1317 JUMP                             ; [+2]
     1318 GETTABLEKS                       R56 R53 K18 ["value"]
     1320 CONCAT                           R54 R55 R56
     1321 SETTABLEKS                       R54 R27 K19 ["output"]
     1323 FORGLOOP                         R49 2 [inext] ; [-18]
     1325 MOVE                             R47 R42
     1326 DUPTABLE                         R48 K20 [{"type", "value", "output"}]
     1327 LOADK                            R49 K129 ["brace"]
     1328 SETTABLEKS                       R49 R48 K17 ["type"]
     1330 SETTABLEKS                       R32 R48 K18 ["value"]
     1332 SETTABLEKS                       R46 R48 K19 ["output"]
     1334 CALL                             R47 1 0
     1335 GETTABLEKS                       R47 R27 K57 ["braces"]
     1337 SUBK                             R47 R47 K81 [1]
     1338 SETTABLEKS                       R47 R27 K57 ["braces"]
     1340 GETIMPORT                        R47 K115 [table.remove]
     1342 MOVE                             R48 R30
     1343 CALL                             R47 1 0
     1344 GETIMPORT                        R47 K115 [table.remove]
     1346 MOVE                             R48 R29
     1347 CALL                             R47 1 0
     1348 JUMP                             ; [+1341]
     1349 JUMPIFNOTEQKS                    R32 K137 ["|"] ; [+21]
     1351 LENGTH                           R45 R28
     1352 LOADN                            R46 0
     1353 JUMPIFNOTLT                      R46 R45 ; [+8]
     1355 LENGTH                           R46 R28
     1356 GETTABLE                         R45 R28 R46
     1357 GETTABLEKS                       R46 R45 K138 ["conditions"]
     1359 ADDK                             R46 R46 K81 [1]
     1360 SETTABLEKS                       R46 R45 K138 ["conditions"]
     1362 MOVE                             R45 R42
     1363 DUPTABLE                         R46 K78 [{"type", "value"}]
     1364 LOADK                            R47 K79 ["text"]
     1365 SETTABLEKS                       R47 R46 K17 ["type"]
     1367 SETTABLEKS                       R32 R46 K18 ["value"]
     1369 CALL                             R45 1 0
     1370 JUMP                             ; [+1319]
     1371 JUMPIFNOTEQKS                    R32 K139 [","] ; [+29]
     1373 MOVE                             R45 R32
     1374 LENGTH                           R47 R29
     1375 GETTABLE                         R46 R29 R47
     1376 GETUPVAL                         R47 4
     1377 GETTABLEKS                       R47 R47 K24 ["toJSBoolean"]
     1379 MOVE                             R48 R46
     1380 CALL                             R47 1 1
     1381 JUMPIFNOT                        R47 ; [+8]
     1382 LENGTH                           R48 R30
     1383 GETTABLE                         R47 R30 R48
     1384 JUMPIFNOTEQKS                    R47 K57 ["braces"] ; [+5]
     1386 LOADB                            R47 1
     1387 SETTABLEKS                       R47 R46 K132 ["comma"]
     1389 LOADK                            R45 K137 ["|"]
     1390 MOVE                             R47 R42
     1391 DUPTABLE                         R48 K20 [{"type", "value", "output"}]
     1392 LOADK                            R49 K132 ["comma"]
     1393 SETTABLEKS                       R49 R48 K17 ["type"]
     1395 SETTABLEKS                       R32 R48 K18 ["value"]
     1397 SETTABLEKS                       R45 R48 K19 ["output"]
     1399 CALL                             R47 1 0
     1400 JUMP                             ; [+1289]
     1401 JUMPIFNOTEQKS                    R32 K75 ["/"] ; [+40]
     1403 GETTABLEKS                       R45 R31 K17 ["type"]
     1405 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+25]
     1407 GETTABLEKS                       R45 R27 K50 ["index"]
     1409 GETTABLEKS                       R47 R27 K51 ["start"]
     1411 ADDK                             R46 R47 K81 [1]
     1412 JUMPIFNOTEQ                      R45 R46 ; [+18]
     1414 GETTABLEKS                       R46 R27 K50 ["index"]
     1416 ADDK                             R45 R46 K81 [1]
     1417 SETTABLEKS                       R45 R27 K51 ["start"]
     1419 LOADK                            R45 K22 [""]
     1420 SETTABLEKS                       R45 R27 K52 ["consumed"]
     1422 LOADK                            R45 K22 [""]
     1423 SETTABLEKS                       R45 R27 K19 ["output"]
     1425 GETIMPORT                        R45 K115 [table.remove]
     1427 MOVE                             R46 R6
     1428 CALL                             R45 1 0
     1429 MOVE                             R31 R5
     1430 JUMP                             ; [+1259]
     1431 MOVE                             R45 R42
     1432 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     1433 LOADK                            R47 K140 ["slash"]
     1434 SETTABLEKS                       R47 R46 K17 ["type"]
     1436 SETTABLEKS                       R32 R46 K18 ["value"]
     1438 SETTABLEKS                       R13 R46 K19 ["output"]
     1440 CALL                             R45 1 0
     1441 JUMP                             ; [+1248]
     1442 JUMPIFNOTEQKS                    R32 K76 ["."] ; [+74]
     1444 GETTABLEKS                       R45 R27 K57 ["braces"]
     1446 LOADN                            R46 0
     1447 JUMPIFNOTLT                      R46 R45 ; [+32]
     1449 GETTABLEKS                       R45 R31 K17 ["type"]
     1451 JUMPIFNOTEQKS                    R45 K42 ["dot"] ; [+28]
     1453 GETTABLEKS                       R45 R31 K18 ["value"]
     1455 JUMPIFNOTEQKS                    R45 K76 ["."] ; [+3]
     1457 SETTABLEKS                       R11 R31 K19 ["output"]
     1459 LENGTH                           R46 R29
     1460 GETTABLE                         R45 R29 R46
     1461 LOADK                            R46 K131 ["dots"]
     1462 SETTABLEKS                       R46 R31 K17 ["type"]
     1464 GETTABLEKS                       R47 R31 K19 ["output"]
     1466 MOVE                             R48 R32
     1467 CONCAT                           R46 R47 R48
     1468 SETTABLEKS                       R46 R31 K19 ["output"]
     1470 GETTABLEKS                       R47 R31 K18 ["value"]
     1472 MOVE                             R48 R32
     1473 CONCAT                           R46 R47 R48
     1474 SETTABLEKS                       R46 R31 K18 ["value"]
     1476 LOADB                            R46 1
     1477 SETTABLEKS                       R46 R45 K131 ["dots"]
     1479 JUMP                             ; [+1210]
     1480 GETTABLEKS                       R46 R27 K57 ["braces"]
     1482 GETTABLEKS                       R47 R27 K58 ["parens"]
     1484 ADD                              R45 R46 R47
     1485 JUMPIFNOTEQKN                    R45 K86 [0] ; [+20]
     1487 GETTABLEKS                       R45 R31 K17 ["type"]
     1489 JUMPIFEQKS                       R45 K21 ["bos"] ; [+16]
     1491 GETTABLEKS                       R45 R31 K17 ["type"]
     1493 JUMPIFEQKS                       R45 K140 ["slash"] ; [+12]
     1495 MOVE                             R45 R42
     1496 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     1497 LOADK                            R47 K79 ["text"]
     1498 SETTABLEKS                       R47 R46 K17 ["type"]
     1500 SETTABLEKS                       R32 R46 K18 ["value"]
     1502 SETTABLEKS                       R11 R46 K19 ["output"]
     1504 CALL                             R45 1 0
     1505 JUMP                             ; [+1184]
     1506 MOVE                             R45 R42
     1507 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     1508 LOADK                            R47 K42 ["dot"]
     1509 SETTABLEKS                       R47 R46 K17 ["type"]
     1511 SETTABLEKS                       R32 R46 K18 ["value"]
     1513 SETTABLEKS                       R11 R46 K19 ["output"]
     1515 CALL                             R45 1 0
     1516 JUMP                             ; [+1173]
     1517 JUMPIFNOTEQKS                    R32 K141 ["?"] ; [+141]
     1519 GETUPVAL                         R45 4
     1520 GETTABLEKS                       R45 R45 K24 ["toJSBoolean"]
     1522 MOVE                             R46 R31
     1523 CALL                             R45 1 1
     1524 JUMPIFNOT                        R45 ; [+6]
     1525 GETTABLEKS                       R46 R31 K18 ["value"]
     1527 JUMPIFEQKS                       R46 K104 ["("] ; [+2]
     1529 LOADB                            R45 0 +1
     1530 LOADB                            R45 1
     1531 JUMPIF                           R45 ; [+18]
     1532 GETTABLEKS                       R46 R2 K48 ["noextglob"]
     1534 JUMPIFEQKB                       R46 TRUE ; [+15]
     1536 MOVE                             R46 R34
     1537 CALL                             R46 0 1
     1538 JUMPIFNOTEQKS                    R46 K104 ["("] ; [+11]
     1540 MOVE                             R46 R34
     1541 LOADN                            R47 2
     1542 CALL                             R46 1 1
     1543 JUMPIFEQKS                       R46 K141 ["?"] ; [+6]
     1545 MOVE                             R46 R43
     1546 LOADK                            R47 K142 ["qmark"]
     1547 MOVE                             R48 R32
     1548 CALL                             R46 2 0
     1549 JUMP                             ; [+1140]
     1550 GETUPVAL                         R46 4
     1551 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1553 MOVE                             R47 R31
     1554 CALL                             R46 1 1
     1555 JUMPIFNOT                        R46 ; [+69]
     1556 GETTABLEKS                       R46 R31 K17 ["type"]
     1558 JUMPIFNOTEQKS                    R46 K108 ["paren"] ; [+66]
     1560 MOVE                             R46 R34
     1561 CALL                             R46 0 1
     1562 MOVE                             R47 R32
     1563 JUMPIFNOTEQKS                    R46 K143 ["<"] ; [+14]
     1565 GETUPVAL                         R48 5
     1566 GETTABLEKS                       R48 R48 K144 ["supportsLookbehinds"]
     1568 CALL                             R48 0 1
     1569 JUMPIF                           R48 ; [+8]
     1570 GETIMPORT                        R48 K4 [error]
     1572 GETUPVAL                         R49 0
     1573 GETTABLEKS                       R49 R49 K5 ["new"]
     1575 LOADK                            R50 K145 ["Node.js v10 or higher is required for regex lookbehinds"]
     1576 CALL                             R49 1 -1
     1577 CALL                             R48 -1 0
     1578 GETTABLEKS                       R48 R31 K18 ["value"]
     1580 JUMPIFNOTEQKS                    R48 K104 ["("] ; [+9]
     1582 GETUPVAL                         R48 8
     1583 LOADK                            R49 K146 ["[!=<:]"]
     1584 CALL                             R48 1 1
     1585 MOVE                             R50 R46
     1586 NAMECALL                         R48 R48 K68 ["test"]
     1588 CALL                             R48 2 1
     1589 JUMPIFNOT                        R48 ; [+18]
     1590 JUMPIFNOTEQKS                    R46 K143 ["<"] ; [+23]
     1592 GETUPVAL                         R48 8
     1593 LOADK                            R49 K147 ["<([!=]|\\w+>)"]
     1594 CALL                             R48 1 1
     1595 GETTABLEKS                       R53 R27 K50 ["index"]
     1597 ADDK                             R52 R53 K81 [1]
     1598 FASTCALL2                        STRING_SUB R0 R52 ; [+4]
     1600 MOVE                             R51 R0
     1601 GETIMPORT                        R50 K83 [string.sub]
     1603 CALL                             R50 2 1
     1604 NAMECALL                         R48 R48 K68 ["test"]
     1606 CALL                             R48 2 1
     1607 JUMPIF                           R48 ; [+6]
     1608 LOADK                            R48 K97 ["\\%s"]
     1609 MOVE                             R50 R32
     1610 NAMECALL                         R48 R48 K16 ["format"]
     1612 CALL                             R48 2 1
     1613 MOVE                             R47 R48
     1614 MOVE                             R48 R42
     1615 DUPTABLE                         R49 K20 [{"type", "value", "output"}]
     1616 LOADK                            R50 K79 ["text"]
     1617 SETTABLEKS                       R50 R49 K17 ["type"]
     1619 SETTABLEKS                       R32 R49 K18 ["value"]
     1621 SETTABLEKS                       R47 R49 K19 ["output"]
     1623 CALL                             R48 1 0
     1624 JUMP                             ; [+1065]
     1625 GETTABLEKS                       R46 R2 K42 ["dot"]
     1627 JUMPIFEQKB                       R46 TRUE ; [+20]
     1629 GETTABLEKS                       R46 R31 K17 ["type"]
     1631 JUMPIFEQKS                       R46 K140 ["slash"] ; [+5]
     1633 GETTABLEKS                       R46 R31 K17 ["type"]
     1635 JUMPIFNOTEQKS                    R46 K21 ["bos"] ; [+12]
     1637 MOVE                             R46 R42
     1638 DUPTABLE                         R47 K20 [{"type", "value", "output"}]
     1639 LOADK                            R48 K142 ["qmark"]
     1640 SETTABLEKS                       R48 R47 K17 ["type"]
     1642 SETTABLEKS                       R32 R47 K18 ["value"]
     1644 SETTABLEKS                       R20 R47 K19 ["output"]
     1646 CALL                             R46 1 0
     1647 JUMP                             ; [+1042]
     1648 MOVE                             R46 R42
     1649 DUPTABLE                         R47 K20 [{"type", "value", "output"}]
     1650 LOADK                            R48 K142 ["qmark"]
     1651 SETTABLEKS                       R48 R47 K17 ["type"]
     1653 SETTABLEKS                       R32 R47 K18 ["value"]
     1655 SETTABLEKS                       R19 R47 K19 ["output"]
     1657 CALL                             R46 1 0
     1658 JUMP                             ; [+1031]
     1659 JUMPIFNOTEQKS                    R32 K98 ["!"] ; [+40]
     1661 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1663 JUMPIFEQKB                       R45 TRUE ; [+25]
     1665 MOVE                             R45 R34
     1666 CALL                             R45 0 1
     1667 JUMPIFNOTEQKS                    R45 K104 ["("] ; [+21]
     1669 MOVE                             R45 R34
     1670 LOADN                            R46 2
     1671 CALL                             R45 1 1
     1672 JUMPIFNOTEQKS                    R45 K141 ["?"] ; [+11]
     1674 GETUPVAL                         R45 8
     1675 LOADK                            R46 K146 ["[!=<:]"]
     1676 CALL                             R45 1 1
     1677 MOVE                             R47 R34
     1678 LOADN                            R48 3
     1679 CALL                             R47 1 -1
     1680 NAMECALL                         R45 R45 K68 ["test"]
     1682 CALL                             R45 -1 1
     1683 JUMPIF                           R45 ; [+5]
     1684 MOVE                             R45 R43
     1685 LOADK                            R46 K148 ["negate"]
     1686 MOVE                             R47 R32
     1687 CALL                             R45 2 0
     1688 JUMP                             ; [+1001]
     1689 GETTABLEKS                       R45 R2 K149 ["nonegate"]
     1691 JUMPIFEQKB                       R45 TRUE ; [+8]
     1693 GETTABLEKS                       R45 R27 K50 ["index"]
     1695 JUMPIFNOTEQKN                    R45 K81 [1] ; [+4]
     1697 MOVE                             R45 R39
     1698 CALL                             R45 0 0
     1699 JUMP                             ; [+990]
     1700 JUMPIFNOTEQKS                    R32 K150 ["+"] ; [+77]
     1702 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1704 JUMPIFEQKB                       R45 TRUE ; [+15]
     1706 MOVE                             R45 R34
     1707 CALL                             R45 0 1
     1708 JUMPIFNOTEQKS                    R45 K104 ["("] ; [+11]
     1710 MOVE                             R45 R34
     1711 LOADN                            R46 2
     1712 CALL                             R45 1 1
     1713 JUMPIFEQKS                       R45 K141 ["?"] ; [+6]
     1715 MOVE                             R45 R43
     1716 LOADK                            R46 K151 ["plus"]
     1717 MOVE                             R47 R32
     1718 CALL                             R45 2 0
     1719 JUMP                             ; [+970]
     1720 JUMPIFEQKNIL                     R31 ; [+5]
     1722 GETTABLEKS                       R45 R31 K18 ["value"]
     1724 JUMPIFEQKS                       R45 K104 ["("] ; [+5]
     1726 GETTABLEKS                       R45 R2 K152 ["regex"]
     1728 JUMPIFNOTEQKB                    R45 FALSE ; [+12]
     1730 MOVE                             R45 R42
     1731 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     1732 LOADK                            R47 K151 ["plus"]
     1733 SETTABLEKS                       R47 R46 K17 ["type"]
     1735 SETTABLEKS                       R32 R46 K18 ["value"]
     1737 SETTABLEKS                       R12 R46 K19 ["output"]
     1739 CALL                             R45 1 0
     1740 JUMP                             ; [+949]
     1741 JUMPIFEQKNIL                     R31 ; [+13]
     1743 GETTABLEKS                       R45 R31 K17 ["type"]
     1745 JUMPIFEQKS                       R45 K119 ["bracket"] ; [+14]
     1747 GETTABLEKS                       R45 R31 K17 ["type"]
     1749 JUMPIFEQKS                       R45 K108 ["paren"] ; [+10]
     1751 GETTABLEKS                       R45 R31 K17 ["type"]
     1753 JUMPIFEQKS                       R45 K129 ["brace"] ; [+6]
     1755 GETTABLEKS                       R45 R27 K58 ["parens"]
     1757 LOADN                            R46 0
     1758 JUMPIFNOTLT                      R46 R45 ; [+10]
     1760 MOVE                             R45 R42
     1761 DUPTABLE                         R46 K78 [{"type", "value"}]
     1762 LOADK                            R47 K151 ["plus"]
     1763 SETTABLEKS                       R47 R46 K17 ["type"]
     1765 SETTABLEKS                       R32 R46 K18 ["value"]
     1767 CALL                             R45 1 0
     1768 JUMP                             ; [+921]
     1769 MOVE                             R45 R42
     1770 DUPTABLE                         R46 K78 [{"type", "value"}]
     1771 LOADK                            R47 K151 ["plus"]
     1772 SETTABLEKS                       R47 R46 K17 ["type"]
     1774 SETTABLEKS                       R12 R46 K18 ["value"]
     1776 CALL                             R45 1 0
     1777 JUMP                             ; [+912]
     1778 JUMPIFNOTEQKS                    R32 K153 ["@"] ; [+38]
     1780 GETTABLEKS                       R45 R2 K48 ["noextglob"]
     1782 JUMPIFEQKB                       R45 TRUE ; [+25]
     1784 MOVE                             R45 R34
     1785 CALL                             R45 0 1
     1786 JUMPIFNOTEQKS                    R45 K104 ["("] ; [+21]
     1788 MOVE                             R45 R34
     1789 LOADN                            R46 2
     1790 CALL                             R45 1 1
     1791 JUMPIFEQKS                       R45 K141 ["?"] ; [+16]
     1793 MOVE                             R45 R42
     1794 DUPTABLE                         R46 K155 [{"type", "extglob", "value", "output"}]
     1795 LOADK                            R47 K156 ["at"]
     1796 SETTABLEKS                       R47 R46 K17 ["type"]
     1798 LOADB                            R47 1
     1799 SETTABLEKS                       R47 R46 K154 ["extglob"]
     1801 SETTABLEKS                       R32 R46 K18 ["value"]
     1803 LOADK                            R47 K22 [""]
     1804 SETTABLEKS                       R47 R46 K19 ["output"]
     1806 CALL                             R45 1 0
     1807 JUMP                             ; [+882]
     1808 MOVE                             R45 R42
     1809 DUPTABLE                         R46 K78 [{"type", "value"}]
     1810 LOADK                            R47 K79 ["text"]
     1811 SETTABLEKS                       R47 R46 K17 ["type"]
     1813 SETTABLEKS                       R32 R46 K18 ["value"]
     1815 CALL                             R45 1 0
     1816 JUMP                             ; [+873]
     1817 JUMPIFEQKS                       R32 K157 ["*"] ; [+44]
     1819 JUMPIFEQKS                       R32 K158 ["$"] ; [+3]
     1821 JUMPIFNOTEQKS                    R32 K99 ["^"] ; [+7]
     1823 LOADK                            R45 K97 ["\\%s"]
     1824 MOVE                             R47 R32
     1825 NAMECALL                         R45 R45 K16 ["format"]
     1827 CALL                             R45 2 1
     1828 MOVE                             R32 R45
     1829 GETIMPORT                        R45 K160 [string.match]
     1831 GETTABLEKS                       R49 R27 K50 ["index"]
     1833 ADDK                             R48 R49 K81 [1]
     1834 FASTCALL2                        STRING_SUB R0 R48 ; [+4]
     1836 MOVE                             R47 R0
     1837 GETIMPORT                        R46 K83 [string.sub]
     1839 CALL                             R46 2 1
     1840 GETUPVAL                         R47 15
     1841 CALL                             R45 2 1
     1842 JUMPIFEQKNIL                     R45 ; [+10]
     1844 MOVE                             R46 R32
     1845 MOVE                             R47 R45
     1846 CONCAT                           R32 R46 R47
     1847 GETTABLEKS                       R46 R27 K50 ["index"]
     1849 LENGTH                           R47 R45
     1850 ADD                              R46 R46 R47
     1851 SETTABLEKS                       R46 R27 K50 ["index"]
     1853 MOVE                             R46 R42
     1854 DUPTABLE                         R47 K78 [{"type", "value"}]
     1855 LOADK                            R48 K79 ["text"]
     1856 SETTABLEKS                       R48 R47 K17 ["type"]
     1858 SETTABLEKS                       R32 R47 K18 ["value"]
     1860 CALL                             R46 1 0
     1861 JUMP                             ; [+828]
     1862 JUMPIFEQKNIL                     R31 ; [+43]
     1864 GETTABLEKS                       R45 R31 K17 ["type"]
     1866 JUMPIFEQKS                       R45 K60 ["globstar"] ; [+5]
     1868 GETTABLEKS                       R45 R31 K161 ["star"]
     1870 JUMPIFNOTEQKB                    R45 TRUE ; [+35]
     1872 LOADK                            R45 K161 ["star"]
     1873 SETTABLEKS                       R45 R31 K17 ["type"]
     1875 LOADB                            R45 1
     1876 SETTABLEKS                       R45 R31 K161 ["star"]
     1878 GETTABLEKS                       R46 R31 K18 ["value"]
     1880 MOVE                             R47 R32
     1881 CONCAT                           R45 R46 R47
     1882 SETTABLEKS                       R45 R31 K18 ["value"]
     1884 SETTABLEKS                       R26 R31 K19 ["output"]
     1886 LOADB                            R45 1
     1887 SETTABLEKS                       R45 R27 K54 ["backtrack"]
     1889 LOADB                            R45 1
     1890 SETTABLEKS                       R45 R27 K60 ["globstar"]
     1892 MOVE                             R45 R32
     1893 ORK                              R46 R45 K22 [""]
     1894 GETTABLEKS                       R48 R27 K52 ["consumed"]
     1896 MOVE                             R49 R46
     1897 CONCAT                           R47 R48 R49
     1898 SETTABLEKS                       R47 R27 K52 ["consumed"]
     1900 GETTABLEKS                       R47 R27 K50 ["index"]
     1902 ADDK                             R47 R47 K86 [0]
     1903 SETTABLEKS                       R47 R27 K50 ["index"]
     1905 JUMP                             ; [+784]
     1906 GETTABLEKS                       R48 R27 K50 ["index"]
     1908 ADDK                             R47 R48 K81 [1]
     1909 FASTCALL2                        STRING_SUB R0 R47 ; [+4]
     1911 MOVE                             R46 R0
     1912 GETIMPORT                        R45 K83 [string.sub]
     1914 CALL                             R45 2 1
     1915 GETUPVAL                         R46 4
     1916 GETTABLEKS                       R46 R46 K24 ["toJSBoolean"]
     1918 LOADB                            R47 0
     1919 GETTABLEKS                       R48 R2 K48 ["noextglob"]
     1921 JUMPIFEQKB                       R48 TRUE ; [+8]
     1923 GETUPVAL                         R47 8
     1924 LOADK                            R48 K162 ["^\\([^?]"]
     1925 CALL                             R47 1 1
     1926 MOVE                             R49 R45
     1927 NAMECALL                         R47 R47 K68 ["test"]
     1929 CALL                             R47 2 1
     1930 CALL                             R46 1 1
     1931 JUMPIFNOT                        R46 ; [+5]
     1932 MOVE                             R46 R43
     1933 LOADK                            R47 K161 ["star"]
     1934 MOVE                             R48 R32
     1935 CALL                             R46 2 0
     1936 JUMP                             ; [+753]
     1937 GETTABLEKS                       R46 R31 K17 ["type"]
     1939 JUMPIFNOTEQKS                    R46 K161 ["star"] ; [+618]
     1941 GETTABLEKS                       R46 R2 K163 ["noglobstar"]
     1943 JUMPIFNOTEQKB                    R46 TRUE ; [+15]
     1945 MOVE                             R46 R32
     1946 ORK                              R47 R46 K22 [""]
     1947 GETTABLEKS                       R49 R27 K52 ["consumed"]
     1949 MOVE                             R50 R47
     1950 CONCAT                           R48 R49 R50
     1951 SETTABLEKS                       R48 R27 K52 ["consumed"]
     1953 GETTABLEKS                       R48 R27 K50 ["index"]
     1955 ADDK                             R48 R48 K86 [0]
     1956 SETTABLEKS                       R48 R27 K50 ["index"]
     1958 JUMP                             ; [+731]
     1959 GETTABLEKS                       R46 R31 K164 ["prev"]
     1961 GETTABLEKS                       R47 R46 K164 ["prev"]
     1963 LOADB                            R48 1
     1964 GETTABLEKS                       R49 R46 K17 ["type"]
     1966 JUMPIFEQKS                       R49 K140 ["slash"] ; [+7]
     1968 GETTABLEKS                       R49 R46 K17 ["type"]
     1970 JUMPIFEQKS                       R49 K21 ["bos"] ; [+2]
     1972 LOADB                            R48 0 +1
     1973 LOADB                            R48 1
     1974 GETUPVAL                         R50 4
     1975 GETTABLEKS                       R50 R50 K24 ["toJSBoolean"]
     1977 MOVE                             R51 R47
     1978 CALL                             R50 1 1
     1979 JUMPIFNOT                        R50 ; [+12]
     1980 LOADB                            R49 1
     1981 GETTABLEKS                       R50 R47 K17 ["type"]
     1983 JUMPIFEQKS                       R50 K161 ["star"] ; [+9]
     1985 GETTABLEKS                       R50 R47 K17 ["type"]
     1987 JUMPIFEQKS                       R50 K60 ["globstar"] ; [+2]
     1989 LOADB                            R49 0 +1
     1990 LOADB                            R49 1
     1991 JUMP                             ; [+1]
     1992 MOVE                             R49 R47
     1993 GETTABLEKS                       R50 R2 K43 ["bash"]
     1995 JUMPIFNOTEQKB                    R50 TRUE ; [+28]
     1997 JUMPIFNOT                        R48 ; [+14]
     1998 LOADN                            R52 1
     1999 LOADN                            R53 1
     2000 NAMECALL                         R50 R45 K82 ["sub"]
     2002 CALL                             R50 3 1
     2003 JUMPIFEQKNIL                     R50 ; [+20]
     2005 LOADN                            R52 1
     2006 LOADN                            R53 1
     2007 NAMECALL                         R50 R45 K82 ["sub"]
     2009 CALL                             R50 3 1
     2010 JUMPIFEQKS                       R50 K75 ["/"] ; [+13]
     2012 MOVE                             R50 R42
     2013 DUPTABLE                         R51 K20 [{"type", "value", "output"}]
     2014 LOADK                            R52 K161 ["star"]
     2015 SETTABLEKS                       R52 R51 K17 ["type"]
     2017 SETTABLEKS                       R32 R51 K18 ["value"]
     2019 LOADK                            R52 K22 [""]
     2020 SETTABLEKS                       R52 R51 K19 ["output"]
     2022 CALL                             R50 1 0
     2023 JUMP                             ; [+666]
     2024 LOADB                            R50 0
     2025 GETTABLEKS                       R51 R27 K57 ["braces"]
     2027 LOADN                            R52 0
     2028 JUMPIFNOTLT                      R52 R51 ; [+12]
     2030 LOADB                            R50 1
     2031 GETTABLEKS                       R51 R46 K17 ["type"]
     2033 JUMPIFEQKS                       R51 K132 ["comma"] ; [+7]
     2035 GETTABLEKS                       R51 R46 K17 ["type"]
     2037 JUMPIFEQKS                       R51 K129 ["brace"] ; [+2]
     2039 LOADB                            R50 0 +1
     2040 LOADB                            R50 1
     2041 LOADB                            R51 0
     2042 LENGTH                           R52 R28
     2043 LOADN                            R53 0
     2044 JUMPIFNOTLT                      R53 R52 ; [+12]
     2046 LOADB                            R51 1
     2047 GETTABLEKS                       R52 R46 K17 ["type"]
     2049 JUMPIFEQKS                       R52 K165 ["pipe"] ; [+7]
     2051 GETTABLEKS                       R52 R46 K17 ["type"]
     2053 JUMPIFEQKS                       R52 K108 ["paren"] ; [+2]
     2055 LOADB                            R51 0 +1
     2056 LOADB                            R51 1
     2057 JUMPIF                           R48 ; [+18]
     2058 GETTABLEKS                       R52 R46 K17 ["type"]
     2060 JUMPIFEQKS                       R52 K108 ["paren"] ; [+15]
     2062 JUMPIF                           R50 ; [+13]
     2063 JUMPIF                           R51 ; [+12]
     2064 MOVE                             R52 R42
     2065 DUPTABLE                         R53 K20 [{"type", "value", "output"}]
     2066 LOADK                            R54 K161 ["star"]
     2067 SETTABLEKS                       R54 R53 K17 ["type"]
     2069 SETTABLEKS                       R32 R53 K18 ["value"]
     2071 LOADK                            R54 K22 [""]
     2072 SETTABLEKS                       R54 R53 K19 ["output"]
     2074 CALL                             R52 1 0
     2075 JUMP                             ; [+614]
     2076 GETUPVAL                         R52 7
     2077 GETTABLEKS                       R52 R52 K92 ["slice"]
     2079 MOVE                             R53 R45
     2080 LOADN                            R54 1
     2081 LOADN                            R55 4
     2082 CALL                             R52 3 1
     2083 JUMPIFNOTEQKS                    R52 K166 ["/**"] ; [+37]
     2085 GETTABLEKS                       R55 R27 K50 ["index"]
     2087 ADDK                             R54 R55 K167 [4]
     2088 GETTABLEKS                       R56 R27 K50 ["index"]
     2090 ADDK                             R55 R56 K167 [4]
     2091 NAMECALL                         R52 R0 K82 ["sub"]
     2093 CALL                             R52 3 1
     2094 GETUPVAL                         R53 4
     2095 GETTABLEKS                       R53 R53 K24 ["toJSBoolean"]
     2097 MOVE                             R54 R52
     2098 CALL                             R53 1 1
     2099 JUMPIFNOT                        R53 ; [+2]
     2100 JUMPIFNOTEQKS                    R52 K75 ["/"] ; [+20]
     2102 GETUPVAL                         R53 7
     2103 GETTABLEKS                       R53 R53 K92 ["slice"]
     2105 MOVE                             R54 R45
     2106 LOADN                            R55 4
     2107 CALL                             R53 2 1
     2108 MOVE                             R45 R53
     2109 GETTABLEKS                       R54 R27 K52 ["consumed"]
     2111 LOADK                            R55 K166 ["/**"]
     2112 CONCAT                           R53 R54 R55
     2113 SETTABLEKS                       R53 R27 K52 ["consumed"]
     2115 GETTABLEKS                       R53 R27 K50 ["index"]
     2117 ADDK                             R53 R53 K168 [3]
     2118 SETTABLEKS                       R53 R27 K50 ["index"]
     2120 JUMPBACK                         ; [-45]
     2121 GETTABLEKS                       R52 R46 K17 ["type"]
     2123 JUMPIFNOTEQKS                    R52 K21 ["bos"] ; [+56]
     2125 GETTABLEKS                       R53 R27 K50 ["index"]
     2127 JUMPIFEQ                         R53 R4 ; [+2]
     2129 LOADB                            R52 0 +1
     2130 LOADB                            R52 1
     2131 JUMPIFNOT                        R52 ; [+48]
     2132 LOADK                            R52 K60 ["globstar"]
     2133 SETTABLEKS                       R52 R31 K17 ["type"]
     2135 GETTABLEKS                       R53 R31 K18 ["value"]
     2137 MOVE                             R54 R32
     2138 CONCAT                           R52 R53 R54
     2139 SETTABLEKS                       R52 R31 K18 ["value"]
     2141 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2142 MOVE                             R54 R7
     2143 MOVE                             R55 R22
     2144 GETUPVAL                         R57 4
     2145 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     2147 GETTABLEKS                       R58 R2 K42 ["dot"]
     2149 CALL                             R57 1 1
     2150 JUMPIFNOT                        R57 ; [+2]
     2151 MOVE                             R56 R15
     2152 JUMP                             ; [+1]
     2153 MOVE                             R56 R11
     2154 NAMECALL                         R52 R52 K16 ["format"]
     2156 CALL                             R52 4 1
     2157 SETTABLEKS                       R52 R31 K19 ["output"]
     2159 GETTABLEKS                       R52 R31 K19 ["output"]
     2161 SETTABLEKS                       R52 R27 K19 ["output"]
     2163 LOADB                            R52 1
     2164 SETTABLEKS                       R52 R27 K60 ["globstar"]
     2166 MOVE                             R52 R32
     2167 ORK                              R53 R52 K22 [""]
     2168 GETTABLEKS                       R55 R27 K52 ["consumed"]
     2170 MOVE                             R56 R53
     2171 CONCAT                           R54 R55 R56
     2172 SETTABLEKS                       R54 R27 K52 ["consumed"]
     2174 GETTABLEKS                       R54 R27 K50 ["index"]
     2176 ADDK                             R54 R54 K86 [0]
     2177 SETTABLEKS                       R54 R27 K50 ["index"]
     2179 JUMP                             ; [+510]
     2180 GETTABLEKS                       R52 R46 K17 ["type"]
     2182 JUMPIFNOTEQKS                    R52 K140 ["slash"] ; [+105]
     2184 GETTABLEKS                       R52 R46 K164 ["prev"]
     2186 GETTABLEKS                       R52 R52 K17 ["type"]
     2188 JUMPIFEQKS                       R52 K21 ["bos"] ; [+99]
     2190 GETUPVAL                         R52 4
     2191 GETTABLEKS                       R52 R52 K24 ["toJSBoolean"]
     2193 MOVE                             R53 R49
     2194 CALL                             R52 1 1
     2195 JUMPIF                           R52 ; [+92]
     2196 GETTABLEKS                       R53 R27 K50 ["index"]
     2198 JUMPIFEQ                         R53 R4 ; [+2]
     2200 LOADB                            R52 0 +1
     2201 LOADB                            R52 1
     2202 JUMPIFNOT                        R52 ; [+85]
     2203 GETUPVAL                         R52 7
     2204 GETTABLEKS                       R52 R52 K92 ["slice"]
     2206 GETTABLEKS                       R53 R27 K19 ["output"]
     2208 LOADN                            R54 1
     2209 GETTABLEKS                       R58 R46 K19 ["output"]
     2211 GETTABLEKS                       R59 R31 K19 ["output"]
     2213 CONCAT                           R57 R58 R59
     2214 LENGTH                           R56 R57
     2215 MINUS                            R55 R56
     2216 CALL                             R52 3 1
     2217 SETTABLEKS                       R52 R27 K19 ["output"]
     2219 LOADK                            R52 K169 ["(?:%s"]
     2220 GETTABLEKS                       R54 R46 K19 ["output"]
     2222 NAMECALL                         R52 R52 K16 ["format"]
     2224 CALL                             R52 2 1
     2225 SETTABLEKS                       R52 R46 K19 ["output"]
     2227 LOADK                            R52 K60 ["globstar"]
     2228 SETTABLEKS                       R52 R31 K17 ["type"]
     2230 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2231 MOVE                             R57 R7
     2232 MOVE                             R58 R22
     2233 GETUPVAL                         R60 4
     2234 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2236 GETTABLEKS                       R61 R2 K42 ["dot"]
     2238 CALL                             R60 1 1
     2239 JUMPIFNOT                        R60 ; [+2]
     2240 MOVE                             R59 R15
     2241 JUMP                             ; [+1]
     2242 MOVE                             R59 R11
     2243 NAMECALL                         R55 R55 K16 ["format"]
     2245 CALL                             R55 4 1
     2246 MOVE                             R53 R55
     2247 GETTABLEKS                       R55 R2 K170 ["strictSlashes"]
     2249 JUMPIFNOT                        R55 ; [+2]
     2250 LOADK                            R54 K109 [")"]
     2251 JUMP                             ; [+1]
     2252 LOADK                            R54 K171 ["|$)"]
     2253 CONCAT                           R52 R53 R54
     2254 SETTABLEKS                       R52 R31 K19 ["output"]
     2256 GETTABLEKS                       R53 R31 K18 ["value"]
     2258 MOVE                             R54 R32
     2259 CONCAT                           R52 R53 R54
     2260 SETTABLEKS                       R52 R31 K18 ["value"]
     2262 LOADB                            R52 1
     2263 SETTABLEKS                       R52 R27 K60 ["globstar"]
     2265 GETTABLEKS                       R53 R27 K19 ["output"]
     2267 GETTABLEKS                       R54 R46 K19 ["output"]
     2269 GETTABLEKS                       R55 R31 K19 ["output"]
     2271 CONCAT                           R52 R53 R55
     2272 SETTABLEKS                       R52 R27 K19 ["output"]
     2274 MOVE                             R52 R32
     2275 ORK                              R53 R52 K22 [""]
     2276 GETTABLEKS                       R55 R27 K52 ["consumed"]
     2278 MOVE                             R56 R53
     2279 CONCAT                           R54 R55 R56
     2280 SETTABLEKS                       R54 R27 K52 ["consumed"]
     2282 GETTABLEKS                       R54 R27 K50 ["index"]
     2284 ADDK                             R54 R54 K86 [0]
     2285 SETTABLEKS                       R54 R27 K50 ["index"]
     2287 JUMP                             ; [+402]
     2288 GETTABLEKS                       R52 R46 K17 ["type"]
     2290 JUMPIFNOTEQKS                    R52 K140 ["slash"] ; [+123]
     2292 GETTABLEKS                       R52 R46 K164 ["prev"]
     2294 GETTABLEKS                       R52 R52 K17 ["type"]
     2296 JUMPIFEQKS                       R52 K21 ["bos"] ; [+117]
     2298 LOADN                            R54 1
     2299 LOADN                            R55 1
     2300 NAMECALL                         R52 R45 K82 ["sub"]
     2302 CALL                             R52 3 1
     2303 JUMPIFNOTEQKS                    R52 K75 ["/"] ; [+110]
     2305 LOADN                            R55 2
     2306 LOADN                            R56 2
     2307 NAMECALL                         R53 R45 K82 ["sub"]
     2309 CALL                             R53 3 1
     2310 JUMPIFEQKNIL                     R53 ; [+3]
     2312 LOADK                            R52 K172 ["|$"]
     2313 JUMP                             ; [+1]
     2314 LOADK                            R52 K22 [""]
     2315 GETUPVAL                         R53 7
     2316 GETTABLEKS                       R53 R53 K92 ["slice"]
     2318 GETTABLEKS                       R54 R27 K19 ["output"]
     2320 LOADN                            R55 1
     2321 GETTABLEKS                       R59 R46 K19 ["output"]
     2323 GETTABLEKS                       R60 R31 K19 ["output"]
     2325 CONCAT                           R58 R59 R60
     2326 LENGTH                           R57 R58
     2327 MINUS                            R56 R57
     2328 CALL                             R53 3 1
     2329 SETTABLEKS                       R53 R27 K19 ["output"]
     2331 LOADK                            R53 K169 ["(?:%s"]
     2332 GETTABLEKS                       R55 R46 K19 ["output"]
     2334 NAMECALL                         R53 R53 K16 ["format"]
     2336 CALL                             R53 2 1
     2337 SETTABLEKS                       R53 R46 K19 ["output"]
     2339 LOADK                            R53 K60 ["globstar"]
     2340 SETTABLEKS                       R53 R31 K17 ["type"]
     2342 LOADK                            R53 K173 ["%s%s|%s%s)"]
     2343 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2344 MOVE                             R57 R7
     2345 MOVE                             R58 R22
     2346 GETUPVAL                         R60 4
     2347 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2349 GETTABLEKS                       R61 R2 K42 ["dot"]
     2351 CALL                             R60 1 1
     2352 JUMPIFNOT                        R60 ; [+2]
     2353 MOVE                             R59 R15
     2354 JUMP                             ; [+1]
     2355 MOVE                             R59 R11
     2356 NAMECALL                         R55 R55 K16 ["format"]
     2358 CALL                             R55 4 1
     2359 MOVE                             R56 R13
     2360 MOVE                             R57 R13
     2361 MOVE                             R58 R52
     2362 NAMECALL                         R53 R53 K16 ["format"]
     2364 CALL                             R53 5 1
     2365 SETTABLEKS                       R53 R31 K19 ["output"]
     2367 GETTABLEKS                       R54 R31 K18 ["value"]
     2369 MOVE                             R55 R32
     2370 CONCAT                           R53 R54 R55
     2371 SETTABLEKS                       R53 R31 K18 ["value"]
     2373 GETTABLEKS                       R54 R27 K19 ["output"]
     2375 GETTABLEKS                       R55 R46 K19 ["output"]
     2377 GETTABLEKS                       R56 R31 K19 ["output"]
     2379 CONCAT                           R53 R54 R56
     2380 SETTABLEKS                       R53 R27 K19 ["output"]
     2382 LOADB                            R53 1
     2383 SETTABLEKS                       R53 R27 K60 ["globstar"]
     2385 MOVE                             R54 R32
     2386 MOVE                             R55 R35
     2387 CALL                             R55 0 1
     2388 CONCAT                           R53 R54 R55
     2389 ORK                              R54 R53 K22 [""]
     2390 GETTABLEKS                       R56 R27 K52 ["consumed"]
     2392 MOVE                             R57 R54
     2393 CONCAT                           R55 R56 R57
     2394 SETTABLEKS                       R55 R27 K52 ["consumed"]
     2396 GETTABLEKS                       R55 R27 K50 ["index"]
     2398 ADDK                             R55 R55 K86 [0]
     2399 SETTABLEKS                       R55 R27 K50 ["index"]
     2401 MOVE                             R53 R42
     2402 DUPTABLE                         R54 K20 [{"type", "value", "output"}]
     2403 LOADK                            R55 K140 ["slash"]
     2404 SETTABLEKS                       R55 R54 K17 ["type"]
     2406 LOADK                            R55 K75 ["/"]
     2407 SETTABLEKS                       R55 R54 K18 ["value"]
     2409 LOADK                            R55 K22 [""]
     2410 SETTABLEKS                       R55 R54 K19 ["output"]
     2412 CALL                             R53 1 0
     2413 JUMP                             ; [+276]
     2414 GETTABLEKS                       R52 R46 K17 ["type"]
     2416 JUMPIFNOTEQKS                    R52 K21 ["bos"] ; [+77]
     2418 LOADN                            R54 1
     2419 LOADN                            R55 1
     2420 NAMECALL                         R52 R45 K82 ["sub"]
     2422 CALL                             R52 3 1
     2423 JUMPIFNOTEQKS                    R52 K75 ["/"] ; [+70]
     2425 LOADK                            R52 K60 ["globstar"]
     2426 SETTABLEKS                       R52 R31 K17 ["type"]
     2428 GETTABLEKS                       R53 R31 K18 ["value"]
     2430 MOVE                             R54 R32
     2431 CONCAT                           R52 R53 R54
     2432 SETTABLEKS                       R52 R31 K18 ["value"]
     2434 LOADK                            R52 K174 ["(?:^|%s|%s%s)"]
     2435 MOVE                             R54 R13
     2436 LOADK                            R55 K44 ["(%s(?:(?!%s%s).)*?)"]
     2437 MOVE                             R57 R7
     2438 MOVE                             R58 R22
     2439 GETUPVAL                         R60 4
     2440 GETTABLEKS                       R60 R60 K24 ["toJSBoolean"]
     2442 GETTABLEKS                       R61 R2 K42 ["dot"]
     2444 CALL                             R60 1 1
     2445 JUMPIFNOT                        R60 ; [+2]
     2446 MOVE                             R59 R15
     2447 JUMP                             ; [+1]
     2448 MOVE                             R59 R11
     2449 NAMECALL                         R55 R55 K16 ["format"]
     2451 CALL                             R55 4 1
     2452 MOVE                             R56 R13
     2453 NAMECALL                         R52 R52 K16 ["format"]
     2455 CALL                             R52 4 1
     2456 SETTABLEKS                       R52 R31 K19 ["output"]
     2458 GETTABLEKS                       R52 R31 K19 ["output"]
     2460 SETTABLEKS                       R52 R27 K19 ["output"]
     2462 LOADB                            R52 1
     2463 SETTABLEKS                       R52 R27 K60 ["globstar"]
     2465 MOVE                             R53 R32
     2466 MOVE                             R54 R35
     2467 CALL                             R54 0 1
     2468 CONCAT                           R52 R53 R54
     2469 ORK                              R53 R52 K22 [""]
     2470 GETTABLEKS                       R55 R27 K52 ["consumed"]
     2472 MOVE                             R56 R53
     2473 CONCAT                           R54 R55 R56
     2474 SETTABLEKS                       R54 R27 K52 ["consumed"]
     2476 GETTABLEKS                       R54 R27 K50 ["index"]
     2478 ADDK                             R54 R54 K86 [0]
     2479 SETTABLEKS                       R54 R27 K50 ["index"]
     2481 MOVE                             R52 R42
     2482 DUPTABLE                         R53 K20 [{"type", "value", "output"}]
     2483 LOADK                            R54 K140 ["slash"]
     2484 SETTABLEKS                       R54 R53 K17 ["type"]
     2486 LOADK                            R54 K75 ["/"]
     2487 SETTABLEKS                       R54 R53 K18 ["value"]
     2489 LOADK                            R54 K22 [""]
     2490 SETTABLEKS                       R54 R53 K19 ["output"]
     2492 CALL                             R52 1 0
     2493 JUMP                             ; [+196]
     2494 GETUPVAL                         R52 7
     2495 GETTABLEKS                       R52 R52 K92 ["slice"]
     2497 GETTABLEKS                       R53 R27 K19 ["output"]
     2499 LOADN                            R54 1
     2500 GETTABLEKS                       R57 R31 K19 ["output"]
     2502 LENGTH                           R56 R57
     2503 MINUS                            R55 R56
     2504 CALL                             R52 3 1
     2505 SETTABLEKS                       R52 R27 K19 ["output"]
     2507 LOADK                            R52 K60 ["globstar"]
     2508 SETTABLEKS                       R52 R31 K17 ["type"]
     2510 LOADK                            R52 K44 ["(%s(?:(?!%s%s).)*?)"]
     2511 MOVE                             R54 R7
     2512 MOVE                             R55 R22
     2513 GETUPVAL                         R57 4
     2514 GETTABLEKS                       R57 R57 K24 ["toJSBoolean"]
     2516 GETTABLEKS                       R58 R2 K42 ["dot"]
     2518 CALL                             R57 1 1
     2519 JUMPIFNOT                        R57 ; [+2]
     2520 MOVE                             R56 R15
     2521 JUMP                             ; [+1]
     2522 MOVE                             R56 R11
     2523 NAMECALL                         R52 R52 K16 ["format"]
     2525 CALL                             R52 4 1
     2526 SETTABLEKS                       R52 R31 K19 ["output"]
     2528 GETTABLEKS                       R53 R31 K18 ["value"]
     2530 MOVE                             R54 R32
     2531 CONCAT                           R52 R53 R54
     2532 SETTABLEKS                       R52 R31 K18 ["value"]
     2534 GETTABLEKS                       R53 R27 K19 ["output"]
     2536 GETTABLEKS                       R54 R31 K19 ["output"]
     2538 CONCAT                           R52 R53 R54
     2539 SETTABLEKS                       R52 R27 K19 ["output"]
     2541 LOADB                            R52 1
     2542 SETTABLEKS                       R52 R27 K60 ["globstar"]
     2544 MOVE                             R52 R32
     2545 ORK                              R53 R52 K22 [""]
     2546 GETTABLEKS                       R55 R27 K52 ["consumed"]
     2548 MOVE                             R56 R53
     2549 CONCAT                           R54 R55 R56
     2550 SETTABLEKS                       R54 R27 K52 ["consumed"]
     2552 GETTABLEKS                       R54 R27 K50 ["index"]
     2554 ADDK                             R54 R54 K86 [0]
     2555 SETTABLEKS                       R54 R27 K50 ["index"]
     2557 JUMP                             ; [+132]
     2558 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     2559 LOADK                            R47 K161 ["star"]
     2560 SETTABLEKS                       R47 R46 K17 ["type"]
     2562 SETTABLEKS                       R32 R46 K18 ["value"]
     2564 SETTABLEKS                       R26 R46 K19 ["output"]
     2566 GETTABLEKS                       R47 R2 K43 ["bash"]
     2568 JUMPIFNOTEQKB                    R47 TRUE ; [+22]
     2570 LOADK                            R47 K175 [".*?"]
     2571 SETTABLEKS                       R47 R46 K19 ["output"]
     2573 GETTABLEKS                       R47 R31 K17 ["type"]
     2575 JUMPIFEQKS                       R47 K21 ["bos"] ; [+5]
     2577 GETTABLEKS                       R47 R31 K17 ["type"]
     2579 JUMPIFNOTEQKS                    R47 K140 ["slash"] ; [+7]
     2581 MOVE                             R48 R24
     2582 GETTABLEKS                       R49 R46 K19 ["output"]
     2584 CONCAT                           R47 R48 R49
     2585 SETTABLEKS                       R47 R46 K19 ["output"]
     2587 MOVE                             R47 R42
     2588 MOVE                             R48 R46
     2589 CALL                             R47 1 0
     2590 JUMP                             ; [+99]
     2591 JUMPIFEQKNIL                     R31 ; [+19]
     2593 GETTABLEKS                       R47 R31 K17 ["type"]
     2595 JUMPIFEQKS                       R47 K119 ["bracket"] ; [+5]
     2597 GETTABLEKS                       R47 R31 K17 ["type"]
     2599 JUMPIFNOTEQKS                    R47 K108 ["paren"] ; [+11]
     2601 GETTABLEKS                       R47 R2 K152 ["regex"]
     2603 JUMPIFNOTEQKB                    R47 TRUE ; [+7]
     2605 SETTABLEKS                       R32 R46 K19 ["output"]
     2607 MOVE                             R47 R42
     2608 MOVE                             R48 R46
     2609 CALL                             R47 1 0
     2610 JUMP                             ; [+79]
     2611 GETTABLEKS                       R47 R27 K50 ["index"]
     2613 GETTABLEKS                       R48 R27 K51 ["start"]
     2615 JUMPIFEQ                         R47 R48 ; [+9]
     2617 GETTABLEKS                       R47 R31 K17 ["type"]
     2619 JUMPIFEQKS                       R47 K140 ["slash"] ; [+5]
     2621 GETTABLEKS                       R47 R31 K17 ["type"]
     2623 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+63]
     2625 GETTABLEKS                       R47 R31 K17 ["type"]
     2627 JUMPIFNOTEQKS                    R47 K42 ["dot"] ; [+14]
     2629 GETTABLEKS                       R48 R27 K19 ["output"]
     2631 MOVE                             R49 R17
     2632 CONCAT                           R47 R48 R49
     2633 SETTABLEKS                       R47 R27 K19 ["output"]
     2635 GETTABLEKS                       R48 R31 K19 ["output"]
     2637 MOVE                             R49 R17
     2638 CONCAT                           R47 R48 R49
     2639 SETTABLEKS                       R47 R31 K19 ["output"]
     2641 JUMP                             ; [+29]
     2642 GETTABLEKS                       R47 R2 K42 ["dot"]
     2644 JUMPIFNOTEQKB                    R47 TRUE ; [+14]
     2646 GETTABLEKS                       R48 R27 K19 ["output"]
     2648 MOVE                             R49 R18
     2649 CONCAT                           R47 R48 R49
     2650 SETTABLEKS                       R47 R27 K19 ["output"]
     2652 GETTABLEKS                       R48 R31 K19 ["output"]
     2654 MOVE                             R49 R18
     2655 CONCAT                           R47 R48 R49
     2656 SETTABLEKS                       R47 R31 K19 ["output"]
     2658 JUMP                             ; [+12]
     2659 GETTABLEKS                       R48 R27 K19 ["output"]
     2661 MOVE                             R49 R24
     2662 CONCAT                           R47 R48 R49
     2663 SETTABLEKS                       R47 R27 K19 ["output"]
     2665 GETTABLEKS                       R48 R31 K19 ["output"]
     2667 MOVE                             R49 R24
     2668 CONCAT                           R47 R48 R49
     2669 SETTABLEKS                       R47 R31 K19 ["output"]
     2671 MOVE                             R47 R34
     2672 CALL                             R47 0 1
     2673 JUMPIFEQKS                       R47 K157 ["*"] ; [+13]
     2675 GETTABLEKS                       R48 R27 K19 ["output"]
     2677 MOVE                             R49 R14
     2678 CONCAT                           R47 R48 R49
     2679 SETTABLEKS                       R47 R27 K19 ["output"]
     2681 GETTABLEKS                       R48 R31 K19 ["output"]
     2683 MOVE                             R49 R14
     2684 CONCAT                           R47 R48 R49
     2685 SETTABLEKS                       R47 R31 K19 ["output"]
     2687 MOVE                             R47 R42
     2688 MOVE                             R48 R46
     2689 CALL                             R47 1 0
     2690 JUMPBACK                         ; [-2287]
     2691 GETTABLEKS                       R45 R27 K56 ["brackets"]
     2693 LOADN                            R46 0
     2694 JUMPIFNOTLT                      R46 R45 ; [+40]
     2696 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
     2698 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2700 GETIMPORT                        R45 K4 [error]
     2702 GETUPVAL                         R46 0
     2703 GETTABLEKS                       R46 R46 K5 ["new"]
     2705 LOADK                            R48 K111 ["SyntaxError: "]
     2706 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2707 LOADK                            R51 K118 ["closing"]
     2708 LOADK                            R52 K87 ["]"]
     2709 LOADK                            R53 K87 ["]"]
     2710 NAMECALL                         R49 R49 K16 ["format"]
     2712 CALL                             R49 4 1
     2713 CONCAT                           R47 R48 R49
     2714 CALL                             R46 1 -1
     2715 CALL                             R45 -1 0
     2716 GETUPVAL                         R45 5
     2717 GETTABLEKS                       R45 R45 K176 ["escapeLast"]
     2719 GETTABLEKS                       R46 R27 K19 ["output"]
     2721 LOADK                            R47 K88 ["["]
     2722 CALL                             R45 2 1
     2723 SETTABLEKS                       R45 R27 K19 ["output"]
     2725 GETTABLEKS                       R45 R27 K56 ["brackets"]
     2727 SUBK                             R45 R45 K81 [1]
     2728 SETTABLEKS                       R45 R27 K56 ["brackets"]
     2730 GETIMPORT                        R45 K115 [table.remove]
     2732 MOVE                             R46 R30
     2733 CALL                             R45 1 0
     2734 JUMPBACK                         ; [-44]
     2735 GETTABLEKS                       R45 R27 K58 ["parens"]
     2737 LOADN                            R46 0
     2738 JUMPIFNOTLT                      R46 R45 ; [+40]
     2740 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
     2742 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2744 GETIMPORT                        R45 K4 [error]
     2746 GETUPVAL                         R46 0
     2747 GETTABLEKS                       R46 R46 K5 ["new"]
     2749 LOADK                            R48 K111 ["SyntaxError: "]
     2750 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2751 LOADK                            R51 K118 ["closing"]
     2752 LOADK                            R52 K109 [")"]
     2753 LOADK                            R53 K109 [")"]
     2754 NAMECALL                         R49 R49 K16 ["format"]
     2756 CALL                             R49 4 1
     2757 CONCAT                           R47 R48 R49
     2758 CALL                             R46 1 -1
     2759 CALL                             R45 -1 0
     2760 GETUPVAL                         R45 5
     2761 GETTABLEKS                       R45 R45 K176 ["escapeLast"]
     2763 GETTABLEKS                       R46 R27 K19 ["output"]
     2765 LOADK                            R47 K104 ["("]
     2766 CALL                             R45 2 1
     2767 SETTABLEKS                       R45 R27 K19 ["output"]
     2769 GETTABLEKS                       R45 R27 K58 ["parens"]
     2771 SUBK                             R45 R45 K81 [1]
     2772 SETTABLEKS                       R45 R27 K58 ["parens"]
     2774 GETIMPORT                        R45 K115 [table.remove]
     2776 MOVE                             R46 R30
     2777 CALL                             R45 1 0
     2778 JUMPBACK                         ; [-44]
     2779 GETTABLEKS                       R45 R27 K57 ["braces"]
     2781 LOADN                            R46 0
     2782 JUMPIFNOTLT                      R46 R45 ; [+40]
     2784 GETTABLEKS                       R45 R2 K110 ["strictBrackets"]
     2786 JUMPIFNOTEQKB                    R45 TRUE ; [+17]
     2788 GETIMPORT                        R45 K4 [error]
     2790 GETUPVAL                         R46 0
     2791 GETTABLEKS                       R46 R46 K5 ["new"]
     2793 LOADK                            R48 K111 ["SyntaxError: "]
     2794 LOADK                            R49 K112 ["Missing %s: \"%s\" - use \"\\%s\" to match literal characters"]
     2795 LOADK                            R51 K118 ["closing"]
     2796 LOADK                            R52 K130 ["}"]
     2797 LOADK                            R53 K130 ["}"]
     2798 NAMECALL                         R49 R49 K16 ["format"]
     2800 CALL                             R49 4 1
     2801 CONCAT                           R47 R48 R49
     2802 CALL                             R46 1 -1
     2803 CALL                             R45 -1 0
     2804 GETUPVAL                         R45 5
     2805 GETTABLEKS                       R45 R45 K176 ["escapeLast"]
     2807 GETTABLEKS                       R46 R27 K19 ["output"]
     2809 LOADK                            R47 K124 ["{"]
     2810 CALL                             R45 2 1
     2811 SETTABLEKS                       R45 R27 K19 ["output"]
     2813 GETTABLEKS                       R45 R27 K57 ["braces"]
     2815 SUBK                             R45 R45 K81 [1]
     2816 SETTABLEKS                       R45 R27 K57 ["braces"]
     2818 GETIMPORT                        R45 K115 [table.remove]
     2820 MOVE                             R46 R30
     2821 CALL                             R45 1 0
     2822 JUMPBACK                         ; [-44]
     2823 GETTABLEKS                       R45 R2 K170 ["strictSlashes"]
     2825 JUMPIFEQKB                       R45 TRUE ; [+25]
     2827 GETTABLEKS                       R45 R31 K17 ["type"]
     2829 JUMPIFEQKS                       R45 K161 ["star"] ; [+5]
     2831 GETTABLEKS                       R45 R31 K17 ["type"]
     2833 JUMPIFNOTEQKS                    R45 K119 ["bracket"] ; [+17]
     2835 MOVE                             R45 R42
     2836 DUPTABLE                         R46 K20 [{"type", "value", "output"}]
     2837 LOADK                            R47 K177 ["maybe_slash"]
     2838 SETTABLEKS                       R47 R46 K17 ["type"]
     2840 LOADK                            R47 K22 [""]
     2841 SETTABLEKS                       R47 R46 K18 ["value"]
     2843 LOADK                            R47 K178 ["%s?"]
     2844 MOVE                             R49 R13
     2845 NAMECALL                         R47 R47 K16 ["format"]
     2847 CALL                             R47 2 1
     2848 SETTABLEKS                       R47 R46 K19 ["output"]
     2850 CALL                             R45 1 0
     2851 GETTABLEKS                       R45 R27 K54 ["backtrack"]
     2853 JUMPIFNOTEQKB                    R45 TRUE ; [+36]
     2855 LOADK                            R45 K22 [""]
     2856 SETTABLEKS                       R45 R27 K19 ["output"]
     2858 GETIMPORT                        R45 K136 [ipairs]
     2860 GETTABLEKS                       R46 R27 K61 ["tokens"]
     2862 CALL                             R45 1 3
     2863 FORGPREP_INEXT                   R45
     2864 GETTABLEKS                       R51 R27 K19 ["output"]
     2866 GETTABLEKS                       R53 R49 K19 ["output"]
     2868 JUMPIFEQKNIL                     R53 ; [+4]
     2870 GETTABLEKS                       R52 R49 K19 ["output"]
     2872 JUMP                             ; [+2]
     2873 GETTABLEKS                       R52 R49 K18 ["value"]
     2875 CONCAT                           R50 R51 R52
     2876 SETTABLEKS                       R50 R27 K19 ["output"]
     2878 GETTABLEKS                       R50 R49 K179 ["suffix"]
     2880 JUMPIFNOT                        R50 ; [+7]
     2881 GETTABLEKS                       R51 R27 K19 ["output"]
     2883 GETTABLEKS                       R52 R49 K179 ["suffix"]
     2885 CONCAT                           R50 R51 R52
     2886 SETTABLEKS                       R50 R27 K19 ["output"]
     2888 FORGLOOP                         R45 2 [inext] ; [-25]
     2890 CLOSEUPVALS                      R0
     2891 RETURN                           R27 1

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
      133 GETUPVAL                         R21 3
      134 GETTABLEKS                       R21 R21 K15 ["toJSBoolean"]
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
      167 GETUPVAL                         R23 5
      168 GETTABLEKS                       R23 R23 K37 ["removePrefix"]
      170 MOVE                             R24 R0
      171 MOVE                             R25 R19
      172 CALL                             R23 2 1
      173 MOVE                             R24 R22
      174 MOVE                             R25 R23
      175 CALL                             R24 1 1
      176 JUMPIFEQKNIL                     R24 ; [+18]
      178 GETUPVAL                         R25 3
      179 GETTABLEKS                       R25 R25 K15 ["toJSBoolean"]
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
