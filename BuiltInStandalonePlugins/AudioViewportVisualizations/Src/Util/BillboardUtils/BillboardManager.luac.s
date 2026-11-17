PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["getTokens"]
        5 CALL                             R0 0 1
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETTABLEKS                       R3 R2 K0 ["icon"]
        5 GETTABLEKS                       R3 R3 K1 ["update"]
        7 GETTABLEKS                       R4 R2 K2 ["iconProps"]
        9 MOVE                             R5 R1
       10 CALL                             R3 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [next]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 JUMPIF                           R1 ; [+5]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["getTokens"]
       12 CALL                             R1 0 1
       13 SETUPVAL                         R1 1
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R1 0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETUPVAL                         R6 0
       20 LOADNIL                          R7
       21 SETTABLE                         R7 R6 R4
       22 GETUPVAL                         R7 3
       23 GETTABLE                         R6 R7 R4
       24 JUMPIFNOT                        R6 ; [+8]
       25 GETTABLEKS                       R7 R6 K3 ["icon"]
       27 GETTABLEKS                       R7 R7 K4 ["update"]
       29 GETTABLEKS                       R8 R6 K5 ["iconProps"]
       31 MOVE                             R9 R0
       32 CALL                             R7 2 0
       33 FORGLOOP                         R1 1 ; [-15]
       35 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+9]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R3 K2 [{"instance", "billboard"}]
        3 SETTABLEKS                       R1 R3 K0 ["instance"]
        5 GETUPVAL                         R4 1
        6 SETTABLEKS                       R4 R3 K1 ["billboard"]
        8 SETTABLE                         R3 R2 R0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["create"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["ROWS_MAX_HEIGHT"]
        6 LOADK                            R4 K2 [0.3]
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CALL                             R2 3 1
       11 GETTABLEKS                       R3 R2 K3 ["instance"]
       13 GETTABLEKS                       R4 R1 K4 ["gui"]
       15 GETTABLEKS                       R4 R4 K5 ["namesHost"]
       17 SETTABLEKS                       R4 R3 K6 ["Parent"]
       19 SETTABLEKS                       R2 R1 K7 ["namesPanel"]
       21 GETTABLEKS                       R3 R1 K8 ["hitAreas"]
       23 GETTABLEKS                       R4 R2 K3 ["instance"]
       25 SETTABLEKS                       R4 R3 K7 ["namesPanel"]
       27 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R2 K0 ["nameEntries"]
        6 GETTABLEKS                       R4 R2 K1 ["namesPanel"]
        8 JUMPIFNOT                        R3 ; [+44]
        9 LENGTH                           R5 R3
       10 LOADN                            R6 0
       11 JUMPIFNOTLT                      R6 R5 ; [+41]
       13 MOVE                             R5 R4
       14 JUMPIF                           R5 ; [+27]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K2 ["create"]
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K3 ["ROWS_MAX_HEIGHT"]
       21 LOADK                            R7 K4 [0.3]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          VAL R0
       25 CALL                             R5 3 1
       26 GETTABLEKS                       R6 R5 K5 ["instance"]
       28 GETTABLEKS                       R7 R2 K6 ["gui"]
       30 GETTABLEKS                       R7 R7 K7 ["namesHost"]
       32 SETTABLEKS                       R7 R6 K8 ["Parent"]
       34 SETTABLEKS                       R5 R2 K1 ["namesPanel"]
       36 GETTABLEKS                       R6 R2 K9 ["hitAreas"]
       38 GETTABLEKS                       R7 R5 K5 ["instance"]
       40 SETTABLEKS                       R7 R6 K1 ["namesPanel"]
       42 GETTABLEKS                       R6 R5 K10 ["update"]
       44 DUPTABLE                         R7 K13 [{"entries", "forceHoveredInstance"}]
       45 SETTABLEKS                       R3 R7 K11 ["entries"]
       47 GETUPVAL                         R8 4
       48 SETTABLEKS                       R8 R7 K12 ["forceHoveredInstance"]
       50 MOVE                             R8 R1
       51 CALL                             R6 2 0
       52 RETURN                           R0 0
       53 JUMPIFNOT                        R4 ; [+11]
       54 GETTABLEKS                       R5 R4 K14 ["destroy"]
       56 CALL                             R5 0 0
       57 LOADNIL                          R5
       58 SETTABLEKS                       R5 R2 K1 ["namesPanel"]
       60 GETTABLEKS                       R5 R2 K9 ["hitAreas"]
       62 LOADNIL                          R6
       63 SETTABLEKS                       R6 R5 K1 ["namesPanel"]
       65 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [next]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 JUMPIF                           R1 ; [+5]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["getTokens"]
       12 CALL                             R1 0 1
       13 SETUPVAL                         R1 1
       14 GETUPVAL                         R0 1
       15 GETUPVAL                         R1 0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETUPVAL                         R6 0
       20 LOADNIL                          R7
       21 SETTABLE                         R7 R6 R4
       22 GETUPVAL                         R6 3
       23 MOVE                             R7 R4
       24 MOVE                             R8 R0
       25 CALL                             R6 2 0
       26 FORGLOOP                         R1 1 ; [-8]
       28 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKNIL                     R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 GETTABLE                         R1 R2 R0
        6 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["members"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 LOADB                            R6 0
        6 GETUPVAL                         R7 0
        7 JUMPIFEQKNIL                     R7 ; [+3]
        9 GETUPVAL                         R7 0
       10 GETTABLE                         R6 R7 R5
       11 JUMPIFNOT                        R6 ; [+2]
       12 LOADB                            R6 1
       13 RETURN                           R6 1
       14 FORGLOOP                         R1 2 ; [-10]
       16 LOADB                            R1 0
       17 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+3]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["billboard"]
        7 GETUPVAL                         R2 0
        8 JUMPIFNOTEQ                      R1 R2 ; [+3]
       10 LOADB                            R1 1
       11 RETURN                           R1 1
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 0
       14 GETTABLE                         R1 R2 R3
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R2 R1 K1 ["cluster"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R2
       20 LOADB                            R3 0
       21 JUMPIFEQKNIL                     R2 ; [+11]
       23 GETIMPORT                        R4 K4 [table.find]
       25 MOVE                             R5 R2
       26 GETTABLEKS                       R6 R0 K0 ["billboard"]
       28 CALL                             R4 2 1
       29 JUMPIFNOTEQKNIL                  R4 ; [+2]
       31 LOADB                            R3 0 +1
       32 LOADB                            R3 1
       33 RETURN                           R3 1

PROTO_10:
        0 LOADB                            R2 1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["get"]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+41]
        8 LOADB                            R2 0
        9 GETUPVAL                         R3 1
       10 JUMPIFEQKNIL                     R3 ; [+3]
       12 GETUPVAL                         R3 1
       13 GETTABLE                         R2 R3 R0
       14 JUMPIF                           R2 ; [+33]
       15 GETUPVAL                         R3 2
       16 JUMPIFNOTEQKNIL                  R3 ; [+3]
       18 LOADB                            R2 0
       19 RETURN                           R2 1
       20 GETTABLEKS                       R3 R1 K1 ["billboard"]
       22 GETUPVAL                         R4 2
       23 JUMPIFNOTEQ                      R3 R4 ; [+3]
       25 LOADB                            R2 1
       26 RETURN                           R2 1
       27 GETUPVAL                         R4 3
       28 GETUPVAL                         R5 2
       29 GETTABLE                         R3 R4 R5
       30 JUMPIFNOT                        R3 ; [+3]
       31 GETTABLEKS                       R4 R3 K2 ["cluster"]
       33 JUMP                             ; [+1]
       34 LOADNIL                          R4
       35 LOADB                            R2 0
       36 JUMPIFEQKNIL                     R4 ; [+11]
       38 GETIMPORT                        R5 K5 [table.find]
       40 MOVE                             R6 R4
       41 GETTABLEKS                       R7 R1 K1 ["billboard"]
       43 CALL                             R5 2 1
       44 JUMPIFNOTEQKNIL                  R5 ; [+2]
       46 LOADB                            R2 0 +1
       47 LOADB                            R2 1
       48 RETURN                           R2 1

PROTO_11:
        0 LOADB                            R2 1
        1 SETTABLE                         R2 R0 R1
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R3 R2 K0 ["representative"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R3
        9 JUMPIFNOT                        R3 ; [+4]
       10 JUMPIFEQ                         R3 R1 ; [+3]
       12 LOADB                            R4 1
       13 SETTABLE                         R4 R0 R3
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 LOADB                            R6 1
        6 SETTABLE                         R6 R5 R3
        7 FORGLOOP                         R0 1 ; [-4]
        9 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["soloed"]
        2 GETTABLEKS                       R3 R1 K0 ["soloed"]
        4 JUMPIFEQ                         R2 R3 ; [+4]
        6 GETTABLEKS                       R2 R0 K0 ["soloed"]
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K1 ["rank"]
       11 GETTABLEKS                       R3 R1 K1 ["rank"]
       13 JUMPIFEQ                         R2 R3 ; [+10]
       15 GETTABLEKS                       R3 R0 K1 ["rank"]
       17 GETTABLEKS                       R4 R1 K1 ["rank"]
       19 JUMPIFLT                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1
       24 GETTABLEKS                       R3 R0 K2 ["key"]
       26 GETTABLEKS                       R4 R1 K2 ["key"]
       28 JUMPIFLT                         R3 R4 ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 RETURN                           R2 1

PROTO_14:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 GETTABLEKS                       R4 R1 K0 ["representative"]
        5 LOADB                            R5 0
        6 JUMPIFEQKNIL                     R4 ; [+5]
        8 JUMPIFNOTEQ                      R4 R0 ; [+2]
       10 LOADB                            R5 0 +1
       11 LOADB                            R5 1
       12 NOT                              R6 R5
       13 JUMPIFNOT                        R6 ; [+6]
       14 GETTABLEKS                       R7 R1 K1 ["occluded"]
       16 JUMPIFNOTEQKB                    R7 TRUE ; [+2]
       18 LOADB                            R6 0 +1
       19 LOADB                            R6 1
       20 GETTABLEKS                       R7 R1 K2 ["cluster"]
       22 JUMPIF                           R7 ; [+5]
       23 NEWTABLE                         R7 0 1
       25 MOVE                             R8 R0
       26 SETLIST                          R7 R8 1 [1]
       28 MOVE                             R8 R7
       29 LOADNIL                          R9
       30 LOADNIL                          R10
       31 FORGPREP                         R8
       32 GETUPVAL                         R14 0
       33 GETTABLE                         R13 R14 R12
       34 JUMPIFNOT                        R13 ; [+129]
       35 GETTABLEKS                       R14 R13 K3 ["members"]
       37 LOADNIL                          R15
       38 LOADNIL                          R16
       39 FORGPREP                         R14
       40 GETUPVAL                         R20 1
       41 GETTABLE                         R19 R20 R18
       42 JUMPIFNOT                        R19 ; [+119]
       43 GETTABLEKS                       R20 R19 K4 ["nameKey"]
       45 JUMPIFNOT                        R20 ; [+116]
       46 LOADB                            R20 1
       47 GETUPVAL                         R21 2
       48 GETTABLEKS                       R21 R21 K5 ["get"]
       50 MOVE                             R22 R18
       51 CALL                             R21 1 1
       52 JUMPIFNOTEQKNIL                  R21 ; [+41]
       54 LOADB                            R20 0
       55 GETUPVAL                         R21 3
       56 JUMPIFEQKNIL                     R21 ; [+3]
       58 GETUPVAL                         R21 3
       59 GETTABLE                         R20 R21 R18
       60 JUMPIF                           R20 ; [+33]
       61 GETUPVAL                         R21 4
       62 JUMPIFNOTEQKNIL                  R21 ; [+3]
       64 LOADB                            R20 0
       65 JUMP                             ; [+28]
       66 GETTABLEKS                       R21 R19 K6 ["billboard"]
       68 GETUPVAL                         R22 4
       69 JUMPIFNOTEQ                      R21 R22 ; [+3]
       71 LOADB                            R20 1
       72 JUMP                             ; [+21]
       73 GETUPVAL                         R22 0
       74 GETUPVAL                         R23 4
       75 GETTABLE                         R21 R22 R23
       76 JUMPIFNOT                        R21 ; [+3]
       77 GETTABLEKS                       R22 R21 K2 ["cluster"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R22
       81 LOADB                            R20 0
       82 JUMPIFEQKNIL                     R22 ; [+11]
       84 GETIMPORT                        R23 K9 [table.find]
       86 MOVE                             R24 R22
       87 GETTABLEKS                       R25 R19 K6 ["billboard"]
       89 CALL                             R23 2 1
       90 JUMPIFNOTEQKNIL                  R23 ; [+2]
       92 LOADB                            R20 0 +1
       93 LOADB                            R20 1
       94 JUMPIFNOT                        R20 ; [+67]
       95 GETUPVAL                         R20 2
       96 GETTABLEKS                       R20 R20 K10 ["heldVolume"]
       98 MOVE                             R21 R18
       99 CALL                             R20 1 1
      100 JUMPIFNOT                        R20 ; [+11]
      101 JUMPIFNOT                        R3 ; [+9]
      102 FASTCALL2                        MATH_MAX R3 R20 ; [+5]
      104 MOVE                             R22 R3
      105 MOVE                             R23 R20
      106 GETIMPORT                        R21 K13 [math.max]
      108 CALL                             R21 2 1
      109 MOVE                             R3 R21
      110 JUMP                             ; [+1]
      111 MOVE                             R3 R20
      112 JUMPIFNOT                        R6 ; [+49]
      113 GETUPVAL                         R21 5
      114 GETTABLEKS                       R21 R21 K14 ["meterVariant"]
      116 MOVE                             R22 R20
      117 CALL                             R21 1 1
      118 GETTABLEKS                       R22 R19 K4 ["nameKey"]
      120 DUPTABLE                         R25 K19 [{"entry", "soloed", "rank", "key"}]
      121 DUPTABLE                         R26 K25 [{["key"], ["name"], ["order"] = 0, ["variant"], ["instance"]}]
      122 FASTCALL1                        TOSTRING R22 ; [+3]
      123 MOVE                             R28 R22
      124 GETIMPORT                        R27 K27 [tostring]
      126 CALL                             R27 1 1
      127 SETTABLEKS                       R27 R26 K18 ["key"]
      129 GETTABLEKS                       R27 R18 K28 ["Name"]
      131 SETTABLEKS                       R27 R26 K20 ["name"]
      133 SETTABLEKS                       R21 R26 K23 ["variant"]
      135 SETTABLEKS                       R18 R26 K24 ["instance"]
      137 SETTABLEKS                       R26 R25 K15 ["entry"]
      139 LOADB                            R26 0
      140 GETUPVAL                         R27 3
      141 JUMPIFEQKNIL                     R27 ; [+3]
      143 GETUPVAL                         R27 3
      144 GETTABLE                         R26 R27 R18
      145 SETTABLEKS                       R26 R25 K16 ["soloed"]
      147 GETUPVAL                         R26 5
      148 GETTABLEKS                       R26 R26 K29 ["variantRank"]
      150 MOVE                             R27 R21
      151 CALL                             R26 1 1
      152 SETTABLEKS                       R26 R25 K17 ["rank"]
      154 SETTABLEKS                       R22 R25 K18 ["key"]
      156 FASTCALL2                        TABLE_INSERT R2 R25 ; [+4]
      158 MOVE                             R24 R2
      159 GETIMPORT                        R23 K31 [table.insert]
      161 CALL                             R23 2 0
      162 FORGLOOP                         R14 2 ; [-123]
      164 FORGLOOP                         R8 2 ; [-133]
      166 GETIMPORT                        R8 K33 [table.sort]
      168 MOVE                             R9 R2
      169 GETUPVAL                         R10 6
      170 CALL                             R8 2 0
      171 NEWTABLE                         R8 0 0
      173 LOADK                            R9 K34 [""]
      174 MOVE                             R10 R2
      175 LOADNIL                          R11
      176 LOADNIL                          R12
      177 FORGPREP                         R10
      178 GETTABLEKS                       R15 R14 K15 ["entry"]
      180 SETTABLEKS                       R13 R15 K21 ["order"]
      182 FASTCALL2                        TABLE_INSERT R8 R15 ; [+5]
      184 MOVE                             R17 R8
      185 MOVE                             R18 R15
      186 GETIMPORT                        R16 K31 [table.insert]
      188 CALL                             R16 2 0
      189 MOVE                             R16 R9
      190 LOADK                            R17 K35 ["%*|%*|%*|%*;"]
      191 GETTABLEKS                       R19 R15 K18 ["key"]
      193 GETTABLEKS                       R20 R15 K20 ["name"]
      195 MOVE                             R21 R13
      196 GETTABLEKS                       R22 R15 K23 ["variant"]
      198 NAMECALL                         R17 R17 K36 ["format"]
      200 CALL                             R17 5 1
      201 CONCAT                           R9 R16 R17
      202 FORGLOOP                         R10 2 ; [-25]
      204 MOVE                             R10 R8
      205 MOVE                             R11 R9
      206 MOVE                             R12 R3
      207 RETURN                           R10 3

PROTO_15:
        0 GETIMPORT                        R0 K1 [next]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 FORGPREP                         R0
       11 GETUPVAL                         R5 0
       12 LOADNIL                          R6
       13 SETTABLE                         R6 R5 R3
       14 GETUPVAL                         R6 1
       15 GETTABLE                         R5 R6 R3
       16 JUMPIFNOT                        R5 ; [+33]
       17 GETUPVAL                         R6 2
       18 MOVE                             R7 R3
       19 MOVE                             R8 R5
       20 CALL                             R6 2 3
       21 GETTABLEKS                       R9 R5 K2 ["nameSignature"]
       23 JUMPIFEQ                         R9 R7 ; [+8]
       25 SETTABLEKS                       R7 R5 K2 ["nameSignature"]
       27 SETTABLEKS                       R6 R5 K3 ["nameEntries"]
       29 GETUPVAL                         R9 3
       30 LOADB                            R10 1
       31 SETTABLE                         R10 R9 R3
       32 GETUPVAL                         R9 4
       33 GETTABLEKS                       R9 R9 K4 ["meterVariant"]
       35 MOVE                             R10 R8
       36 CALL                             R9 1 1
       37 GETTABLEKS                       R10 R5 K5 ["iconProps"]
       39 GETTABLEKS                       R10 R10 K6 ["variant"]
       41 JUMPIFEQ                         R10 R9 ; [+8]
       43 GETTABLEKS                       R10 R5 K5 ["iconProps"]
       45 SETTABLEKS                       R9 R10 K6 ["variant"]
       47 GETUPVAL                         R10 5
       48 LOADB                            R11 1
       49 SETTABLE                         R11 R10 R3
       50 FORGLOOP                         R0 1 ; [-40]
       52 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R5 2
        7 LOADB                            R6 1
        8 SETTABLE                         R6 R5 R3
        9 GETUPVAL                         R5 3
       10 LOADB                            R6 1
       11 SETTABLE                         R6 R5 R3
       12 FORGLOOP                         R0 1 ; [-7]
       14 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["iconProps"]
        6 GETTABLEKS                       R7 R4 K1 ["members"]
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 LOADB                            R12 0
       12 GETUPVAL                         R13 1
       13 JUMPIFEQKNIL                     R13 ; [+3]
       15 GETUPVAL                         R13 1
       16 GETTABLE                         R12 R13 R11
       17 JUMPIFNOT                        R12 ; [+2]
       18 LOADB                            R6 1
       19 JUMP                             ; [+3]
       20 FORGLOOP                         R7 2 ; [-10]
       22 LOADB                            R6 0
       23 GETUPVAL                         R8 2
       24 JUMPIFEQ                         R8 R3 ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 GETTABLEKS                       R8 R5 K2 ["selected"]
       30 JUMPIFNOTEQ                      R8 R6 ; [+5]
       32 GETTABLEKS                       R8 R5 K3 ["hovered"]
       34 JUMPIFEQ                         R8 R7 ; [+8]
       36 SETTABLEKS                       R6 R5 K2 ["selected"]
       38 SETTABLEKS                       R7 R5 K3 ["hovered"]
       40 GETUPVAL                         R8 3
       41 LOADB                            R9 1
       42 SETTABLE                         R9 R8 R3
       43 FORGLOOP                         R0 2 ; [-40]
       45 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R1 0
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K0 ["Active"]
       10 SETUPVAL                         R0 0
       11 JUMPIFNOT                        R0 ; [+3]
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K0 ["Active"]
       15 RETURN                           R0 0

PROTO_20:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 0
        3 GETUPVAL                         R1 2
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 3
        8 LOADB                            R7 1
        9 SETTABLE                         R7 R6 R4
       10 FORGLOOP                         R1 1 ; [-4]
       12 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R1 1
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R0
        3 JUMPIFNOTEQKNIL                  R2 ; [+7]
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R3 R0
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["getEmissionPosition"]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K1 ["create"]
       12 GETUPVAL                         R5 3
       13 ORK                              R6 R3 K2 [{0, 0, 0}]
       14 CALL                             R4 2 1
       15 GETTABLEKS                       R5 R4 K3 ["billboard"]
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 SETTABLEKS                       R6 R5 K4 ["Enabled"]
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K1 ["create"]
       26 GETUPVAL                         R6 5
       27 GETTABLEKS                       R6 R6 K5 ["get"]
       29 CALL                             R6 0 -1
       30 CALL                             R5 -1 1
       31 GETTABLEKS                       R6 R5 K6 ["instance"]
       33 GETTABLEKS                       R7 R4 K7 ["iconHost"]
       35 SETTABLEKS                       R7 R6 K8 ["Parent"]
       37 GETUPVAL                         R6 6
       38 ADDK                             R6 R6 K9 [1]
       39 SETUPVAL                         R6 6
       40 GETTABLEKS                       R6 R4 K3 ["billboard"]
       42 GETUPVAL                         R7 7
       43 DUPTABLE                         R8 K17 [{"gui", "source", "members", "key", "icon", "iconProps", "hitAreas"}]
       44 SETTABLEKS                       R4 R8 K10 ["gui"]
       46 SETTABLEKS                       R0 R8 K11 ["source"]
       48 NEWTABLE                         R9 0 0
       50 SETTABLEKS                       R9 R8 K12 ["members"]
       52 GETUPVAL                         R9 6
       53 SETTABLEKS                       R9 R8 K13 ["key"]
       55 SETTABLEKS                       R5 R8 K14 ["icon"]
       57 DUPTABLE                         R9 K27 [{["merged"] = False, ["selected"] = False, ["hovered"] = False, ["count"] = 0, ["transparency"] = 0.3, ["variant"]}]
       58 GETUPVAL                         R10 8
       59 GETTABLEKS                       R10 R10 K28 ["Standard"]
       61 SETTABLEKS                       R10 R9 K26 ["variant"]
       63 SETTABLEKS                       R9 R8 K15 ["iconProps"]
       65 DUPTABLE                         R9 K30 [{"iconHost", "namesHost"}]
       66 GETTABLEKS                       R10 R4 K7 ["iconHost"]
       68 SETTABLEKS                       R10 R9 K7 ["iconHost"]
       70 GETTABLEKS                       R10 R4 K29 ["namesHost"]
       72 SETTABLEKS                       R10 R9 K29 ["namesHost"]
       74 SETTABLEKS                       R9 R8 K16 ["hitAreas"]
       76 SETTABLE                         R8 R7 R6
       77 GETUPVAL                         R7 0
       78 SETTABLE                         R6 R7 R0
       79 GETUPVAL                         R7 9
       80 LOADB                            R8 1
       81 SETTABLE                         R8 R7 R6
       82 RETURN                           R6 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 MOVE                             R4 R0
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R3 R4 R2
        6 GETTABLEKS                       R3 R3 K0 ["members"]
        8 GETIMPORT                        R4 K3 [table.find]
       10 MOVE                             R5 R3
       11 MOVE                             R6 R0
       12 CALL                             R4 2 1
       13 JUMPIF                           R4 ; [+7]
       14 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       16 MOVE                             R5 R3
       17 MOVE                             R6 R0
       18 GETIMPORT                        R4 K5 [table.insert]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R5 2
       22 GETTABLE                         R4 R5 R0
       23 JUMPIFNOT                        R4 ; [+3]
       24 SETTABLEKS                       R2 R4 K6 ["billboard"]
       26 JUMP                             ; [+5]
       27 GETUPVAL                         R5 2
       28 DUPTABLE                         R6 K7 [{"billboard"}]
       29 SETTABLEKS                       R2 R6 K6 ["billboard"]
       31 SETTABLE                         R6 R5 R0
       32 GETUPVAL                         R5 3
       33 LOADB                            R6 1
       34 SETTABLE                         R6 R5 R2
       35 GETUPVAL                         R7 1
       36 GETTABLE                         R6 R7 R2
       37 JUMPIFNOT                        R6 ; [+3]
       38 GETTABLEKS                       R7 R6 K8 ["representative"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R7
       42 JUMPIFNOT                        R7 ; [+4]
       43 JUMPIFEQ                         R7 R2 ; [+3]
       45 LOADB                            R8 1
       46 SETTABLE                         R8 R5 R7
       47 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 SETTABLE                         R3 R2 R0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["clear"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 JUMPIFNOTEQ                      R2 R0 ; [+3]
       13 LOADNIL                          R2
       14 SETUPVAL                         R2 2
       15 JUMPIF                           R1 ; [+1]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R2 R1 K1 ["billboard"]
       19 GETUPVAL                         R3 3
       20 LOADB                            R4 1
       21 SETTABLE                         R4 R3 R2
       22 GETUPVAL                         R5 4
       23 GETTABLE                         R4 R5 R2
       24 JUMPIFNOT                        R4 ; [+3]
       25 GETTABLEKS                       R5 R4 K2 ["representative"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 JUMPIFNOT                        R5 ; [+4]
       30 JUMPIFEQ                         R5 R2 ; [+3]
       32 LOADB                            R6 1
       33 SETTABLE                         R6 R3 R5
       34 GETUPVAL                         R4 4
       35 GETTABLE                         R3 R4 R2
       36 JUMPIFNOT                        R3 ; [+88]
       37 GETIMPORT                        R4 K5 [table.find]
       39 GETTABLEKS                       R5 R3 K6 ["members"]
       41 MOVE                             R6 R0
       42 CALL                             R4 2 1
       43 JUMPIFNOT                        R4 ; [+6]
       44 GETIMPORT                        R5 K8 [table.remove]
       46 GETTABLEKS                       R6 R3 K6 ["members"]
       48 MOVE                             R7 R4
       49 CALL                             R5 2 0
       50 GETTABLEKS                       R6 R3 K6 ["members"]
       52 LENGTH                           R5 R6
       53 JUMPIFNOTEQKN                    R5 K9 [0] ; [+71]
       55 GETUPVAL                         R6 5
       56 GETTABLEKS                       R7 R3 K10 ["source"]
       58 GETTABLE                         R5 R6 R7
       59 JUMPIFNOTEQ                      R5 R2 ; [+6]
       61 GETUPVAL                         R5 5
       62 GETTABLEKS                       R6 R3 K10 ["source"]
       64 LOADNIL                          R7
       65 SETTABLE                         R7 R5 R6
       66 GETTABLEKS                       R5 R3 K11 ["icon"]
       68 GETTABLEKS                       R5 R5 K12 ["destroy"]
       70 CALL                             R5 0 0
       71 GETTABLEKS                       R5 R3 K13 ["namesPanel"]
       73 JUMPIFNOT                        R5 ; [+5]
       74 GETTABLEKS                       R5 R3 K13 ["namesPanel"]
       76 GETTABLEKS                       R5 R5 K12 ["destroy"]
       78 CALL                             R5 0 0
       79 GETUPVAL                         R5 4
       80 LOADNIL                          R6
       81 SETTABLE                         R6 R5 R2
       82 GETUPVAL                         R5 6
       83 JUMPIFNOTEQ                      R5 R2 ; [+5]
       85 LOADNIL                          R5
       86 SETUPVAL                         R5 6
       87 LOADB                            R5 0
       88 SETUPVAL                         R5 7
       89 GETUPVAL                         R5 8
       90 JUMPIFNOTEQ                      R5 R2 ; [+13]
       92 GETUPVAL                         R5 8
       93 JUMPIFNOTEQKNIL                  R5 ; [+2]
       95 JUMP                             ; [+8]
       96 GETUPVAL                         R5 8
       97 JUMPIFNOT                        R5 ; [+4]
       98 GETUPVAL                         R5 8
       99 LOADB                            R6 0
      100 SETTABLEKS                       R6 R5 K14 ["Active"]
      102 LOADNIL                          R5
      103 SETUPVAL                         R5 8
      104 GETTABLEKS                       R5 R3 K15 ["gui"]
      106 GETTABLEKS                       R5 R5 K12 ["destroy"]
      108 CALL                             R5 0 0
      109 GETTABLEKS                       R5 R3 K16 ["cluster"]
      111 JUMPIFNOT                        R5 ; [+13]
      112 GETTABLEKS                       R5 R3 K16 ["cluster"]
      114 LOADNIL                          R6
      115 LOADNIL                          R7
      116 FORGPREP                         R5
      117 GETUPVAL                         R11 4
      118 GETTABLE                         R10 R11 R9
      119 JUMPIFNOT                        R10 ; [+3]
      120 LOADNIL                          R11
      121 SETTABLEKS                       R11 R10 K2 ["representative"]
      123 FORGLOOP                         R5 2 ; [-7]
      125 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["set"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["meterVariant"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["heldVolume"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 -1
       14 CALL                             R2 -1 1
       15 GETUPVAL                         R4 2
       16 GETTABLE                         R3 R4 R0
       17 JUMPIFNOT                        R3 ; [+26]
       18 GETTABLEKS                       R4 R3 K3 ["nameKey"]
       20 JUMPIFNOT                        R4 ; [+23]
       21 GETTABLEKS                       R4 R3 K1 ["meterVariant"]
       23 JUMPIFEQ                         R4 R2 ; [+20]
       25 SETTABLEKS                       R2 R3 K1 ["meterVariant"]
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R5 R3 K4 ["billboard"]
       30 LOADB                            R6 1
       31 SETTABLE                         R6 R4 R5
       32 GETUPVAL                         R7 4
       33 GETTABLE                         R6 R7 R5
       34 JUMPIFNOT                        R6 ; [+3]
       35 GETTABLEKS                       R7 R6 K5 ["representative"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R7
       39 JUMPIFNOT                        R7 ; [+4]
       40 JUMPIFEQ                         R7 R5 ; [+3]
       42 LOADB                            R8 1
       43 SETTABLE                         R8 R4 R7
       44 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["create"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 SETUPVAL                         R1 0
        6 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["members"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K1 ["getEmissionPosition"]
        8 MOVE                             R7 R5
        9 CALL                             R6 1 1
       10 JUMPIFNOT                        R6 ; [+1]
       11 RETURN                           R6 1
       12 FORGLOOP                         R1 2 ; [-8]
       14 LOADNIL                          R1
       15 RETURN                           R1 1

PROTO_28:
        0 GETTABLEKS                       R3 R1 K0 ["occluded"]
        2 JUMPIFEQ                         R3 R2 ; [+18]
        4 SETTABLEKS                       R2 R1 K0 ["occluded"]
        6 GETUPVAL                         R3 0
        7 LOADB                            R4 1
        8 SETTABLE                         R4 R3 R0
        9 GETUPVAL                         R5 1
       10 GETTABLE                         R4 R5 R0
       11 JUMPIFNOT                        R4 ; [+3]
       12 GETTABLEKS                       R5 R4 K1 ["representative"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R5
       16 JUMPIFNOT                        R5 ; [+4]
       17 JUMPIFEQ                         R5 R0 ; [+3]
       19 LOADB                            R6 1
       20 SETTABLE                         R6 R3 R5
       21 JUMPIFNOT                        R2 ; [+2]
       22 LOADK                            R3 K2 [0.7]
       23 JUMP                             ; [+1]
       24 LOADK                            R3 K3 [0.3]
       25 GETTABLEKS                       R4 R1 K4 ["iconProps"]
       27 GETTABLEKS                       R4 R4 K5 ["transparency"]
       29 JUMPIFEQ                         R4 R3 ; [+8]
       31 GETTABLEKS                       R4 R1 K4 ["iconProps"]
       33 SETTABLEKS                       R3 R4 K5 ["transparency"]
       35 GETUPVAL                         R4 2
       36 LOADB                            R5 1
       37 SETTABLE                         R5 R4 R0
       38 RETURN                           R0 0

PROTO_29:
        0 LOADB                            R3 0
        1 SUB                              R4 R1 R2
        2 GETTABLEKS                       R4 R4 K0 ["Magnitude"]
        4 LOADN                            R5 30
        5 JUMPIFNOTLT                      R5 R4 ; [+9]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["isOccluded"]
       10 MOVE                             R4 R2
       11 MOVE                             R5 R1
       12 GETTABLEKS                       R6 R0 K2 ["source"]
       14 CALL                             R3 3 1
       15 RETURN                           R3 1

PROTO_30:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 GETTABLE                         R5 R6 R0
        3 GETTABLE                         R3 R4 R5
        4 GETTABLEKS                       R3 R3 K0 ["key"]
        6 GETUPVAL                         R5 0
        7 GETUPVAL                         R7 1
        8 GETTABLE                         R6 R7 R1
        9 GETTABLE                         R4 R5 R6
       10 GETTABLEKS                       R4 R4 K0 ["key"]
       12 JUMPIFLT                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_31:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R3 R0 K0 ["CFrame"]
        4 GETTABLEKS                       R3 R3 K1 ["Position"]
        6 NEWTABLE                         R4 0 0
        8 NEWTABLE                         R5 0 0
       10 GETUPVAL                         R6 0
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 FORGPREP                         R6
       14 LOADNIL                          R11
       15 SETTABLEKS                       R11 R10 K2 ["cluster"]
       17 LOADNIL                          R11
       18 SETTABLEKS                       R11 R10 K3 ["representative"]
       20 GETTABLEKS                       R12 R10 K4 ["members"]
       22 LOADNIL                          R13
       23 LOADNIL                          R14
       24 FORGPREP                         R12
       25 LOADB                            R17 0
       26 GETUPVAL                         R18 1
       27 JUMPIFEQKNIL                     R18 ; [+3]
       29 GETUPVAL                         R18 1
       30 GETTABLE                         R17 R18 R16
       31 JUMPIFNOT                        R17 ; [+2]
       32 LOADB                            R11 1
       33 JUMP                             ; [+3]
       34 FORGLOOP                         R12 2 ; [-10]
       36 LOADB                            R11 0
       37 JUMPIF                           R11 ; [+26]
       38 GETTABLE                         R11 R2 R9
       39 JUMPIFNOT                        R11 ; [+24]
       40 DUPTABLE                         R14 K7 [{"center", "cameraDistance"}]
       41 GETTABLEKS                       R15 R11 K5 ["center"]
       43 SETTABLEKS                       R15 R14 K5 ["center"]
       45 GETTABLE                         R16 R1 R9
       46 SUB                              R15 R16 R3
       47 GETTABLEKS                       R15 R15 K8 ["Magnitude"]
       49 SETTABLEKS                       R15 R14 K6 ["cameraDistance"]
       51 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       53 MOVE                             R13 R4
       54 GETIMPORT                        R12 K11 [table.insert]
       56 CALL                             R12 2 0
       57 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       59 MOVE                             R13 R5
       60 MOVE                             R14 R9
       61 GETIMPORT                        R12 K11 [table.insert]
       63 CALL                             R12 2 0
       64 FORGLOOP                         R6 2 ; [-51]
       66 NEWTABLE                         R6 0 0
       68 NEWTABLE                         R7 0 0
       70 GETUPVAL                         R8 2
       71 GETTABLEKS                       R8 R8 K12 ["findClusters"]
       73 MOVE                             R9 R4
       74 CALL                             R8 1 3
       75 FORGPREP                         R8
       76 LENGTH                           R13 R12
       77 LOADN                            R14 2
       78 JUMPIFLT                         R13 R14 ; [+69]
       80 GETUPVAL                         R13 2
       81 GETTABLEKS                       R13 R13 K13 ["centroid"]
       83 MOVE                             R14 R4
       84 MOVE                             R15 R12
       85 CALL                             R13 2 1
       86 GETIMPORT                        R14 K15 [table.sort]
       88 MOVE                             R15 R12
       89 NEWCLOSURE                       R16 P0
       90 CAPTURE                          UPVAL U0
       91 CAPTURE                          VAL R5
       92 CALL                             R14 2 0
       93 GETTABLEN                        R14 R12 1
       94 GETTABLE                         R15 R5 R14
       95 NEWTABLE                         R16 0 0
       97 NEWTABLE                         R17 0 0
       99 MOVE                             R18 R12
      100 LOADNIL                          R19
      101 LOADNIL                          R20
      102 FORGPREP                         R18
      103 GETTABLE                         R23 R5 R22
      104 FASTCALL2                        TABLE_INSERT R16 R23 ; [+5]
      106 MOVE                             R25 R16
      107 MOVE                             R26 R23
      108 GETIMPORT                        R24 K11 [table.insert]
      110 CALL                             R24 2 0
      111 GETUPVAL                         R27 0
      112 GETTABLE                         R26 R27 R23
      113 GETTABLEKS                       R26 R26 K16 ["key"]
      115 FASTCALL2                        TABLE_INSERT R17 R26 ; [+4]
      117 MOVE                             R25 R17
      118 GETIMPORT                        R24 K11 [table.insert]
      120 CALL                             R24 2 0
      121 FORGLOOP                         R18 2 ; [-19]
      123 GETIMPORT                        R18 K18 [table.concat]
      125 MOVE                             R19 R17
      126 LOADK                            R20 K19 [","]
      127 CALL                             R18 2 1
      128 GETUPVAL                         R20 0
      129 GETTABLE                         R19 R20 R15
      130 SETTABLEKS                       R16 R19 K2 ["cluster"]
      132 GETTABLE                         R20 R4 R14
      133 GETTABLEKS                       R20 R20 K5 ["center"]
      135 SUB                              R19 R13 R20
      136 SETTABLE                         R19 R7 R15
      137 MOVE                             R19 R16
      138 LOADNIL                          R20
      139 LOADNIL                          R21
      140 FORGPREP                         R19
      141 GETUPVAL                         R25 0
      142 GETTABLE                         R24 R25 R23
      143 SETTABLEKS                       R15 R24 K3 ["representative"]
      145 SETTABLE                         R18 R6 R23
      146 FORGLOOP                         R19 2 ; [-6]
      148 FORGLOOP                         R8 2 ; [-73]
      150 GETUPVAL                         R8 0
      151 LOADNIL                          R9
      152 LOADNIL                          R10
      153 FORGPREP                         R8
      154 GETTABLE                         R13 R7 R11
      155 JUMPIF                           R13 ; [+2]
      156 GETIMPORT                        R13 K22 [Vector2.zero]
      158 GETTABLEKS                       R14 R12 K23 ["iconOffset"]
      160 JUMPIF                           R14 ; [+2]
      161 GETIMPORT                        R14 K22 [Vector2.zero]
      163 JUMPIFEQ                         R14 R13 ; [+9]
      165 SETTABLEKS                       R13 R12 K23 ["iconOffset"]
      167 GETTABLEKS                       R14 R12 K24 ["gui"]
      169 GETTABLEKS                       R14 R14 K25 ["setOffset"]
      171 MOVE                             R15 R13
      172 CALL                             R14 1 0
      173 LOADB                            R14 0
      174 GETTABLEKS                       R15 R12 K3 ["representative"]
      176 JUMPIFEQKNIL                     R15 ; [+7]
      178 GETTABLEKS                       R15 R12 K3 ["representative"]
      180 JUMPIFNOTEQ                      R15 R11 ; [+2]
      182 LOADB                            R14 0 +1
      183 LOADB                            R14 1
      184 GETTABLEKS                       R16 R12 K26 ["iconHidden"]
      186 JUMPIFEQKB                       R16 TRUE ; [+2]
      188 LOADB                            R15 0 +1
      189 LOADB                            R15 1
      190 JUMPIFEQ                         R15 R14 ; [+10]
      192 SETTABLEKS                       R14 R12 K26 ["iconHidden"]
      194 GETTABLEKS                       R15 R12 K24 ["gui"]
      196 GETTABLEKS                       R15 R15 K27 ["iconHost"]
      198 NOT                              R16 R14
      199 SETTABLEKS                       R16 R15 K28 ["Visible"]
      201 GETTABLE                         R16 R6 R11
      202 ORK                              R15 R16 K29 [""]
      203 GETTABLEKS                       R16 R12 K30 ["clusterSignature"]
      205 JUMPIFEQ                         R16 R15 ; [+6]
      207 SETTABLEKS                       R15 R12 K30 ["clusterSignature"]
      209 GETUPVAL                         R16 3
      210 LOADB                            R17 1
      211 SETTABLE                         R17 R16 R11
      212 GETTABLEKS                       R16 R12 K31 ["iconProps"]
      214 GETTABLEKS                       R18 R12 K2 ["cluster"]
      216 JUMPIFNOT                        R18 ; [+4]
      217 GETTABLEKS                       R18 R12 K2 ["cluster"]
      219 LENGTH                           R17 R18
      220 JUMP                             ; [+1]
      221 LOADN                            R17 0
      222 GETTABLEKS                       R18 R16 K32 ["count"]
      224 JUMPIFEQ                         R18 R17 ; [+13]
      226 LOADN                            R19 0
      227 JUMPIFLT                         R19 R17 ; [+2]
      229 LOADB                            R18 0 +1
      230 LOADB                            R18 1
      231 SETTABLEKS                       R18 R16 K33 ["merged"]
      233 SETTABLEKS                       R17 R16 K32 ["count"]
      235 GETUPVAL                         R18 4
      236 LOADB                            R19 1
      237 SETTABLE                         R19 R18 R11
      238 FORGLOOP                         R8 2 ; [-85]
      240 RETURN                           R0 0

PROTO_32:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["cluster"]
        3 JUMPIFNOT                        R2 ; [+20]
        4 NEWTABLE                         R2 0 0
        6 GETTABLEKS                       R3 R0 K0 ["cluster"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETUPVAL                         R9 0
       12 GETTABLE                         R8 R9 R7
       13 JUMPIFNOT                        R8 ; [+7]
       14 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       16 MOVE                             R10 R2
       17 MOVE                             R11 R8
       18 GETIMPORT                        R9 K3 [table.insert]
       20 CALL                             R9 2 0
       21 FORGLOOP                         R3 2 ; [-11]
       23 MOVE                             R1 R2
       24 DUPTABLE                         R2 K7 [{"source", "members", "soloed", "cluster"}]
       25 GETTABLEKS                       R3 R0 K4 ["source"]
       27 SETTABLEKS                       R3 R2 K4 ["source"]
       29 GETTABLEKS                       R3 R0 K5 ["members"]
       31 SETTABLEKS                       R3 R2 K5 ["members"]
       33 GETTABLEKS                       R4 R0 K5 ["members"]
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 LOADB                            R9 0
       39 GETUPVAL                         R10 1
       40 JUMPIFEQKNIL                     R10 ; [+3]
       42 GETUPVAL                         R10 1
       43 GETTABLE                         R9 R10 R8
       44 JUMPIFNOT                        R9 ; [+2]
       45 LOADB                            R3 1
       46 JUMP                             ; [+3]
       47 FORGLOOP                         R4 2 ; [-10]
       49 LOADB                            R3 0
       50 SETTABLEKS                       R3 R2 K6 ["soloed"]
       52 SETTABLEKS                       R1 R2 K0 ["cluster"]
       54 RETURN                           R2 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K0 ["hitAreas"]
        5 RETURN                           R2 1
        6 LOADNIL                          R2
        7 RETURN                           R2 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getHoverPoint"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 LOADB                            R6 0
        8 JUMPIFNOT                        R2 ; [+21]
        9 GETUPVAL                         R7 0
       10 GETTABLEKS                       R7 R7 K1 ["hitTest"]
       12 MOVE                             R8 R2
       13 MOVE                             R9 R1
       14 DUPTABLE                         R10 K5 [{"rows", "getHitAreas", "iconBottomPadding"}]
       15 GETUPVAL                         R11 1
       16 SETTABLEKS                       R11 R10 K2 ["rows"]
       18 GETUPVAL                         R11 2
       19 SETTABLEKS                       R11 R10 K3 ["getHitAreas"]
       21 GETUPVAL                         R11 3
       22 GETTABLEKS                       R11 R11 K6 ["ICON_HIT_BOTTOM_PADDING"]
       24 SETTABLEKS                       R11 R10 K4 ["iconBottomPadding"]
       26 CALL                             R7 3 3
       27 MOVE                             R4 R7
       28 MOVE                             R5 R8
       29 MOVE                             R6 R9
       30 JUMPIFNOT                        R3 ; [+2]
       31 LOADNIL                          R7
       32 JUMP                             ; [+1]
       33 MOVE                             R7 R4
       34 GETUPVAL                         R8 4
       35 JUMPIFNOTEQ                      R8 R7 ; [+2]
       37 JUMP                             ; [+11]
       38 GETUPVAL                         R8 4
       39 JUMPIFNOT                        R8 ; [+4]
       40 GETUPVAL                         R8 4
       41 LOADB                            R9 0
       42 SETTABLEKS                       R9 R8 K7 ["Active"]
       44 SETUPVAL                         R7 4
       45 JUMPIFNOT                        R7 ; [+3]
       46 LOADB                            R8 1
       47 SETTABLEKS                       R8 R7 K7 ["Active"]
       49 GETUPVAL                         R7 5
       50 JUMPIFEQ                         R7 R4 ; [+36]
       52 GETUPVAL                         R7 5
       53 JUMPIFNOT                        R7 ; [+16]
       54 GETUPVAL                         R7 6
       55 GETUPVAL                         R8 5
       56 LOADB                            R9 1
       57 SETTABLE                         R9 R7 R8
       58 GETUPVAL                         R10 7
       59 GETTABLE                         R9 R10 R8
       60 JUMPIFNOT                        R9 ; [+3]
       61 GETTABLEKS                       R10 R9 K8 ["representative"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R10
       65 JUMPIFNOT                        R10 ; [+4]
       66 JUMPIFEQ                         R10 R8 ; [+3]
       68 LOADB                            R11 1
       69 SETTABLE                         R11 R7 R10
       70 JUMPIFNOT                        R4 ; [+15]
       71 GETUPVAL                         R7 6
       72 LOADB                            R9 1
       73 SETTABLE                         R9 R7 R4
       74 GETUPVAL                         R10 7
       75 GETTABLE                         R9 R10 R4
       76 JUMPIFNOT                        R9 ; [+3]
       77 GETTABLEKS                       R10 R9 K8 ["representative"]
       79 JUMP                             ; [+1]
       80 LOADNIL                          R10
       81 JUMPIFNOT                        R10 ; [+4]
       82 JUMPIFEQ                         R10 R4 ; [+3]
       84 LOADB                            R11 1
       85 SETTABLE                         R11 R7 R10
       86 SETUPVAL                         R4 5
       87 SETUPVAL                         R6 8
       88 GETUPVAL                         R7 9
       89 JUMPIFEQ                         R7 R5 ; [+50]
       91 GETUPVAL                         R8 9
       92 JUMPIFNOT                        R8 ; [+4]
       93 GETUPVAL                         R8 10
       94 GETUPVAL                         R9 9
       95 GETTABLE                         R7 R8 R9
       96 JUMP                             ; [+1]
       97 LOADNIL                          R7
       98 JUMPIFNOT                        R5 ; [+3]
       99 GETUPVAL                         R9 10
      100 GETTABLE                         R8 R9 R5
      101 JUMP                             ; [+1]
      102 LOADNIL                          R8
      103 SETUPVAL                         R5 9
      104 JUMPIFNOT                        R7 ; [+17]
      105 GETUPVAL                         R9 11
      106 GETTABLEKS                       R10 R7 K9 ["billboard"]
      108 LOADB                            R11 1
      109 SETTABLE                         R11 R9 R10
      110 GETUPVAL                         R12 7
      111 GETTABLE                         R11 R12 R10
      112 JUMPIFNOT                        R11 ; [+3]
      113 GETTABLEKS                       R12 R11 K8 ["representative"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R12
      117 JUMPIFNOT                        R12 ; [+4]
      118 JUMPIFEQ                         R12 R10 ; [+3]
      120 LOADB                            R13 1
      121 SETTABLE                         R13 R9 R12
      122 JUMPIFNOT                        R8 ; [+17]
      123 GETUPVAL                         R9 11
      124 GETTABLEKS                       R10 R8 K9 ["billboard"]
      126 LOADB                            R11 1
      127 SETTABLE                         R11 R9 R10
      128 GETUPVAL                         R12 7
      129 GETTABLE                         R11 R12 R10
      130 JUMPIFNOT                        R11 ; [+3]
      131 GETTABLEKS                       R12 R11 K8 ["representative"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R12
      135 JUMPIFNOT                        R12 ; [+4]
      136 JUMPIFEQ                         R12 R10 ; [+3]
      138 LOADB                            R13 1
      139 SETTABLE                         R13 R9 R12
      140 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentCamera"]
        3 NEWTABLE                         R1 0 0
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R9 R7 K1 ["members"]
       13 LOADNIL                          R10
       14 LOADNIL                          R11
       15 FORGPREP                         R9
       16 GETUPVAL                         R14 2
       17 GETTABLEKS                       R14 R14 K2 ["getEmissionPosition"]
       19 MOVE                             R15 R13
       20 CALL                             R14 1 1
       21 JUMPIFNOT                        R14 ; [+2]
       22 MOVE                             R8 R14
       23 JUMP                             ; [+3]
       24 FORGLOOP                         R9 2 ; [-9]
       26 LOADNIL                          R8
       27 JUMPIFNOT                        R8 ; [+13]
       28 SETTABLE                         R8 R1 R6
       29 JUMPIFNOT                        R0 ; [+8]
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R9 R9 K3 ["projectBillboard"]
       33 MOVE                             R10 R6
       34 MOVE                             R11 R8
       35 MOVE                             R12 R0
       36 CALL                             R9 3 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R9
       39 JUMPIFNOT                        R9 ; [+1]
       40 SETTABLE                         R9 R2 R6
       41 FORGLOOP                         R3 2 ; [-31]
       43 GETUPVAL                         R3 4
       44 MOVE                             R4 R0
       45 MOVE                             R5 R2
       46 CALL                             R3 2 0
       47 JUMPIFNOT                        R0 ; [+5]
       48 GETTABLEKS                       R3 R0 K4 ["CFrame"]
       50 GETTABLEKS                       R3 R3 K5 ["Position"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R3
       54 GETUPVAL                         R4 1
       55 LOADNIL                          R5
       56 LOADNIL                          R6
       57 FORGPREP                         R4
       58 GETTABLE                         R9 R1 R7
       59 JUMPIFNOTEQKNIL                  R9 ; [+2]
       61 LOADB                            R10 0 +1
       62 LOADB                            R10 1
       63 SETTABLEKS                       R10 R7 K6 ["Enabled"]
       65 JUMPIFNOT                        R9 ; [+6]
       66 GETTABLEKS                       R10 R8 K7 ["gui"]
       68 GETTABLEKS                       R10 R10 K8 ["setWorldPosition"]
       70 MOVE                             R11 R9
       71 CALL                             R10 1 0
       72 GETTABLE                         R10 R2 R7
       73 JUMPIFNOT                        R9 ; [+1]
       74 JUMPIF                           R3 ; [+37]
       75 GETTABLEKS                       R11 R8 K9 ["occluded"]
       77 JUMPIFEQKB                       R11 FALSE ; [+19]
       79 LOADB                            R11 0
       80 SETTABLEKS                       R11 R8 K9 ["occluded"]
       82 GETUPVAL                         R11 5
       83 LOADB                            R12 1
       84 SETTABLE                         R12 R11 R7
       85 GETUPVAL                         R13 1
       86 GETTABLE                         R12 R13 R7
       87 JUMPIFNOT                        R12 ; [+3]
       88 GETTABLEKS                       R13 R12 K10 ["representative"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R13
       92 JUMPIFNOT                        R13 ; [+4]
       93 JUMPIFEQ                         R13 R7 ; [+3]
       95 LOADB                            R14 1
       96 SETTABLE                         R14 R11 R13
       97 GETTABLEKS                       R11 R8 K11 ["iconProps"]
       99 GETTABLEKS                       R11 R11 K12 ["transparency"]
      101 JUMPIFEQKN                       R11 K13 [0.3] ; [+87]
      103 GETTABLEKS                       R11 R8 K11 ["iconProps"]
      105 LOADK                            R12 K13 [0.3]
      106 SETTABLEKS                       R12 R11 K12 ["transparency"]
      108 GETUPVAL                         R11 6
      109 LOADB                            R12 1
      110 SETTABLE                         R12 R11 R7
      111 JUMP                             ; [+77]
      112 JUMPIFNOT                        R10 ; [+76]
      113 LOADB                            R11 0
      114 GETUPVAL                         R12 7
      115 JUMPIFEQ                         R12 R7 ; [+35]
      117 GETTABLEKS                       R13 R8 K1 ["members"]
      119 LOADNIL                          R14
      120 LOADNIL                          R15
      121 FORGPREP                         R13
      122 LOADB                            R18 0
      123 GETUPVAL                         R19 8
      124 JUMPIFEQKNIL                     R19 ; [+3]
      126 GETUPVAL                         R19 8
      127 GETTABLE                         R18 R19 R17
      128 JUMPIFNOT                        R18 ; [+2]
      129 LOADB                            R12 1
      130 JUMP                             ; [+3]
      131 FORGLOOP                         R13 2 ; [-10]
      133 LOADB                            R12 0
      134 NOT                              R11 R12
      135 JUMPIFNOT                        R11 ; [+15]
      136 LOADB                            R11 0
      137 SUB                              R12 R9 R3
      138 GETTABLEKS                       R12 R12 K14 ["Magnitude"]
      140 LOADN                            R13 30
      141 JUMPIFNOTLT                      R13 R12 ; [+9]
      143 GETUPVAL                         R11 9
      144 GETTABLEKS                       R11 R11 K15 ["isOccluded"]
      146 MOVE                             R12 R3
      147 MOVE                             R13 R9
      148 GETTABLEKS                       R14 R8 K16 ["source"]
      150 CALL                             R11 3 1
      151 GETTABLEKS                       R12 R8 K9 ["occluded"]
      153 JUMPIFEQ                         R12 R11 ; [+18]
      155 SETTABLEKS                       R11 R8 K9 ["occluded"]
      157 GETUPVAL                         R12 5
      158 LOADB                            R13 1
      159 SETTABLE                         R13 R12 R7
      160 GETUPVAL                         R14 1
      161 GETTABLE                         R13 R14 R7
      162 JUMPIFNOT                        R13 ; [+3]
      163 GETTABLEKS                       R14 R13 K10 ["representative"]
      165 JUMP                             ; [+1]
      166 LOADNIL                          R14
      167 JUMPIFNOT                        R14 ; [+4]
      168 JUMPIFEQ                         R14 R7 ; [+3]
      170 LOADB                            R15 1
      171 SETTABLE                         R15 R12 R14
      172 JUMPIFNOT                        R11 ; [+2]
      173 LOADK                            R12 K17 [0.7]
      174 JUMP                             ; [+1]
      175 LOADK                            R12 K13 [0.3]
      176 GETTABLEKS                       R13 R8 K11 ["iconProps"]
      178 GETTABLEKS                       R13 R13 K12 ["transparency"]
      180 JUMPIFEQ                         R13 R12 ; [+8]
      182 GETTABLEKS                       R13 R8 K11 ["iconProps"]
      184 SETTABLEKS                       R12 R13 K12 ["transparency"]
      186 GETUPVAL                         R13 6
      187 LOADB                            R14 1
      188 SETTABLE                         R14 R13 R7
      189 FORGLOOP                         R4 2 ; [-132]
      191 GETUPVAL                         R4 10
      192 MOVE                             R5 R0
      193 MOVE                             R6 R1
      194 MOVE                             R7 R2
      195 CALL                             R4 3 0
      196 GETUPVAL                         R4 11
      197 CALL                             R4 0 0
      198 GETUPVAL                         R4 12
      199 CALL                             R4 0 0
      200 GETUPVAL                         R4 13
      201 CALL                             R4 0 0
      202 GETUPVAL                         R4 14
      203 CALL                             R4 0 0
      204 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOT                        R3 ; [+3]
        3 GETTABLEKS                       R4 R3 K0 ["billboard"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R4
        7 JUMPIFNOT                        R4 ; [+3]
        8 GETUPVAL                         R6 1
        9 GETTABLE                         R5 R6 R4
       10 JUMP                             ; [+1]
       11 LOADNIL                          R5
       12 JUMPIFNOT                        R5 ; [+3]
       13 GETTABLEKS                       R6 R5 K1 ["source"]
       15 JUMP                             ; [+1]
       16 LOADNIL                          R6
       17 GETTABLEKS                       R7 R1 K2 ["Source"]
       19 GETTABLEKS                       R8 R1 K3 ["Path"]
       21 GETTABLEKS                       R9 R2 K3 ["Path"]
       23 JUMPIFNOTEQ                      R8 R9 ; [+3]
       25 JUMPIFEQ                         R6 R7 ; [+22]
       27 JUMPIFNOT                        R7 ; [+3]
       28 GETUPVAL                         R9 2
       29 GETTABLE                         R8 R9 R7
       30 JUMP                             ; [+1]
       31 LOADNIL                          R8
       32 JUMPIFNOT                        R4 ; [+2]
       33 JUMPIFEQ                         R4 R8 ; [+14]
       35 JUMPIFNOT                        R4 ; [+5]
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R9 R9 K4 ["removeInstance"]
       39 MOVE                             R10 R0
       40 CALL                             R9 1 0
       41 JUMPIFNOT                        R7 ; [+6]
       42 GETUPVAL                         R9 4
       43 JUMPIFNOT                        R9 ; [+4]
       44 GETUPVAL                         R9 5
       45 MOVE                             R10 R0
       46 MOVE                             R11 R7
       47 CALL                             R9 2 0
       48 GETUPVAL                         R9 0
       49 GETTABLE                         R8 R9 R0
       50 JUMPIF                           R8 ; [+1]
       51 RETURN                           R0 0
       52 GETTABLEKS                       R9 R1 K3 ["Path"]
       54 GETTABLEKS                       R10 R2 K3 ["Path"]
       56 JUMPIFEQ                         R9 R10 ; [+18]
       58 GETUPVAL                         R9 6
       59 GETTABLEKS                       R10 R8 K0 ["billboard"]
       61 LOADB                            R11 1
       62 SETTABLE                         R11 R9 R10
       63 GETUPVAL                         R12 1
       64 GETTABLE                         R11 R12 R10
       65 JUMPIFNOT                        R11 ; [+3]
       66 GETTABLEKS                       R12 R11 K5 ["representative"]
       68 JUMP                             ; [+1]
       69 LOADNIL                          R12
       70 JUMPIFNOT                        R12 ; [+4]
       71 JUMPIFEQ                         R12 R10 ; [+3]
       73 LOADB                            R13 1
       74 SETTABLE                         R13 R9 R12
       75 GETTABLEKS                       R9 R8 K6 ["nameKey"]
       77 JUMPIF                           R9 ; [+23]
       78 GETUPVAL                         R9 7
       79 ADDK                             R9 R9 K7 [1]
       80 SETUPVAL                         R9 7
       81 GETUPVAL                         R9 7
       82 SETTABLEKS                       R9 R8 K6 ["nameKey"]
       84 GETUPVAL                         R9 6
       85 GETTABLEKS                       R10 R8 K0 ["billboard"]
       87 LOADB                            R11 1
       88 SETTABLE                         R11 R9 R10
       89 GETUPVAL                         R12 1
       90 GETTABLE                         R11 R12 R10
       91 JUMPIFNOT                        R11 ; [+3]
       92 GETTABLEKS                       R12 R11 K5 ["representative"]
       94 JUMP                             ; [+1]
       95 LOADNIL                          R12
       96 JUMPIFNOT                        R12 ; [+4]
       97 JUMPIFEQ                         R12 R10 ; [+3]
       99 LOADB                            R13 1
      100 SETTABLE                         R13 R9 R12
      101 RETURN                           R0 0

PROTO_37:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["ThemeChanged"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["refreshTheme"]
       10 NAMECALL                         R0 R0 K5 ["Connect"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_38:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["cancel"]
       10 CALL                             R2 0 0
       11 GETUPVAL                         R2 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K5 ["selectBillboardRow"]
       16 GETUPVAL                         R3 1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 3
       20 JUMPIFNOT                        R2 ; [+14]
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 3
       23 GETTABLE                         R2 R3 R4
       24 JUMPIFNOT                        R2 ; [+20]
       25 GETUPVAL                         R3 5
       26 JUMPIFNOT                        R3 ; [+18]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K6 ["selectBillboardIcon"]
       30 GETUPVAL                         R4 6
       31 MOVE                             R5 R2
       32 CALL                             R4 1 1
       33 CALL                             R3 1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 7
       36 JUMPIFNOT                        R2 ; [+8]
       37 JUMPIF                           R1 ; [+7]
       38 GETUPVAL                         R2 0
       39 GETTABLEKS                       R2 R2 K7 ["press"]
       41 GETTABLEKS                       R3 R0 K8 ["Position"]
       43 GETUPVAL                         R4 8
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["cancel"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K5 ["release"]
       16 GETTABLEKS                       R3 R0 K6 ["Position"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseWheel]
        4 JUMPIFNOTEQ                      R2 R3 ; [+2]
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 JUMPIFNOT                        R3 ; [+4]
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R2 R3 R4
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 JUMPIFNOT                        R2 ; [+14]
       16 GETTABLEKS                       R3 R2 K4 ["namesPanel"]
       18 JUMPIFNOT                        R3 ; [+11]
       19 GETTABLEKS                       R3 R2 K4 ["namesPanel"]
       21 GETTABLEKS                       R3 R3 K5 ["scrollBy"]
       23 GETTABLEKS                       R6 R0 K7 ["Position"]
       25 GETTABLEKS                       R6 R6 K8 ["Z"]
       27 MINUS                            R5 R6
       28 MULK                             R4 R5 K6 [24]
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R1 R1 K0 ["create"]
        3 LOADK                            R2 K1 ["Billboards"]
        4 CALL                             R1 1 1
        5 SETUPVAL                         R1 0
        6 LOADB                            R1 0
        7 JUMPIFEQKNIL                     R0 ; [+9]
        9 GETTABLEKS                       R2 R0 K2 ["HostDataModelType"]
       11 GETIMPORT                        R3 K6 [Enum.StudioDataModelType.PlayClient]
       13 JUMPIFEQ                         R2 R3 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 SETUPVAL                         R1 2
       18 DUPCLOSURE                       R2 K7 [PROTO_37]
       19 CAPTURE                          UPVAL U3
       20 FASTPCALL                        pcall 1 ; [+2]
       21 GETIMPORT                        R1 K9 [pcall]
       23 CALL                             R1 1 2
       24 JUMPIFNOT                        R1 ; [+7]
       25 GETUPVAL                         R4 4
       26 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       28 MOVE                             R5 R2
       29 GETIMPORT                        R3 K12 [table.insert]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R4 4
       33 GETUPVAL                         R5 5
       34 GETTABLEKS                       R5 R5 K13 ["InputBegan"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 CAPTURE                          UPVAL U10
       42 CAPTURE                          UPVAL U11
       43 CAPTURE                          UPVAL U12
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U13
       46 NAMECALL                         R5 R5 K14 ["Connect"]
       48 CALL                             R5 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R3 K12 [table.insert]
       52 CALL                             R3 -1 0
       53 GETUPVAL                         R4 4
       54 GETUPVAL                         R5 5
       55 GETTABLEKS                       R5 R5 K15 ["InputEnded"]
       57 DUPCLOSURE                       R7 K16 [PROTO_39]
       58 CAPTURE                          UPVAL U6
       59 NAMECALL                         R5 R5 K14 ["Connect"]
       61 CALL                             R5 2 -1
       62 FASTCALL                         TABLE_INSERT ; [+2]
       63 GETIMPORT                        R3 K12 [table.insert]
       65 CALL                             R3 -1 0
       66 GETUPVAL                         R4 4
       67 GETUPVAL                         R5 5
       68 GETTABLEKS                       R5 R5 K17 ["InputChanged"]
       70 NEWCLOSURE                       R7 P3
       71 CAPTURE                          UPVAL U9
       72 CAPTURE                          UPVAL U10
       73 NAMECALL                         R5 R5 K14 ["Connect"]
       75 CALL                             R5 2 -1
       76 FASTCALL                         TABLE_INSERT ; [+2]
       77 GETIMPORT                        R3 K12 [table.insert]
       79 CALL                             R3 -1 0
       80 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 1
       13 JUMPIFNOTEQKNIL                  R0 ; [+2]
       15 JUMP                             ; [+8]
       16 GETUPVAL                         R0 1
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R0 1
       19 LOADB                            R1 0
       20 SETTABLEKS                       R1 R0 K1 ["Active"]
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 1
       24 NEWTABLE                         R0 0 0
       26 SETUPVAL                         R0 2
       27 LOADNIL                          R0
       28 SETUPVAL                         R0 3
       29 LOADNIL                          R0
       30 SETUPVAL                         R0 4
       31 LOADB                            R0 0
       32 SETUPVAL                         R0 5
       33 LOADB                            R0 0
       34 SETUPVAL                         R0 6
       35 GETUPVAL                         R0 7
       36 GETTABLEKS                       R0 R0 K2 ["cancel"]
       38 CALL                             R0 0 0
       39 GETUPVAL                         R0 8
       40 LOADNIL                          R1
       41 LOADNIL                          R2
       42 FORGPREP                         R0
       43 GETTABLEKS                       R5 R4 K3 ["namesPanel"]
       45 JUMPIFNOT                        R5 ; [+5]
       46 GETTABLEKS                       R5 R4 K3 ["namesPanel"]
       48 GETTABLEKS                       R5 R5 K4 ["destroy"]
       50 CALL                             R5 0 0
       51 FORGLOOP                         R0 2 ; [-9]
       53 NEWTABLE                         R0 0 0
       55 SETUPVAL                         R0 8
       56 NEWTABLE                         R0 0 0
       58 SETUPVAL                         R0 9
       59 NEWTABLE                         R0 0 0
       61 SETUPVAL                         R0 10
       62 LOADN                            R0 0
       63 SETUPVAL                         R0 11
       64 LOADNIL                          R0
       65 SETUPVAL                         R0 12
       66 GETUPVAL                         R0 13
       67 GETTABLEKS                       R0 R0 K5 ["reset"]
       69 CALL                             R0 0 0
       70 LOADNIL                          R0
       71 SETUPVAL                         R0 14
       72 NEWTABLE                         R0 0 0
       74 SETUPVAL                         R0 15
       75 NEWTABLE                         R0 0 0
       77 SETUPVAL                         R0 16
       78 NEWTABLE                         R0 0 0
       80 SETUPVAL                         R0 17
       81 GETUPVAL                         R0 18
       82 JUMPIFNOT                        R0 ; [+7]
       83 GETUPVAL                         R0 19
       84 GETTABLEKS                       R0 R0 K4 ["destroy"]
       86 GETUPVAL                         R1 18
       87 CALL                             R0 1 0
       88 LOADNIL                          R0
       89 SETUPVAL                         R0 18
       90 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["MeteringUtil"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["SoundEmitterUtil"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Components"]
       38 GETTABLEKS                       R5 R5 K12 ["AudioIcon"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Components"]
       47 GETTABLEKS                       R6 R6 K13 ["Billboard"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K11 ["Components"]
       56 GETTABLEKS                       R7 R7 K14 ["NamesPanel"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Src"]
       63 GETTABLEKS                       R8 R8 K8 ["Util"]
       65 GETTABLEKS                       R8 R8 K15 ["ContainersUtil"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Src"]
       72 GETTABLEKS                       R9 R9 K8 ["Util"]
       74 GETTABLEKS                       R9 R9 K16 ["BillboardUtils"]
       76 GETTABLEKS                       R9 R9 K17 ["BillboardInput"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K6 ["Src"]
       83 GETTABLEKS                       R10 R10 K8 ["Util"]
       85 GETTABLEKS                       R10 R10 K16 ["BillboardUtils"]
       87 GETTABLEKS                       R10 R10 K18 ["IconClustering"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K6 ["Src"]
       94 GETTABLEKS                       R11 R11 K8 ["Util"]
       96 GETTABLEKS                       R11 R11 K16 ["BillboardUtils"]
       98 GETTABLEKS                       R11 R11 K19 ["MeterHold"]
      100 CALL                             R10 1 1
      101 GETIMPORT                        R11 K5 [require]
      103 GETTABLEKS                       R12 R0 K6 ["Src"]
      105 GETTABLEKS                       R12 R12 K8 ["Util"]
      107 GETTABLEKS                       R12 R12 K16 ["BillboardUtils"]
      109 GETTABLEKS                       R12 R12 K20 ["OcclusionUtil"]
      111 CALL                             R11 1 1
      112 GETIMPORT                        R12 K5 [require]
      114 GETTABLEKS                       R13 R0 K6 ["Src"]
      116 GETTABLEKS                       R13 R13 K8 ["Util"]
      118 GETTABLEKS                       R13 R13 K21 ["StudioColorsUtil"]
      120 CALL                             R12 1 1
      121 GETIMPORT                        R13 K5 [require]
      123 GETTABLEKS                       R14 R0 K6 ["Src"]
      125 GETTABLEKS                       R14 R14 K22 ["Resources"]
      127 GETTABLEKS                       R14 R14 K23 ["Localization"]
      129 GETTABLEKS                       R14 R14 K23 ["Localization"]
      131 CALL                             R13 1 1
      132 GETIMPORT                        R14 K5 [require]
      134 GETTABLEKS                       R15 R0 K24 ["Packages"]
      136 GETTABLEKS                       R15 R15 K25 ["Foundation"]
      138 CALL                             R14 1 1
      139 GETTABLEKS                       R15 R14 K26 ["Enums"]
      141 GETTABLEKS                       R15 R15 K27 ["StatusBadgeVariant"]
      143 GETIMPORT                        R16 K29 [game]
      145 LOADK                            R18 K30 ["Workspace"]
      146 NAMECALL                         R16 R16 K31 ["GetService"]
      148 CALL                             R16 2 1
      149 GETIMPORT                        R17 K29 [game]
      151 LOADK                            R19 K32 ["UserInputService"]
      152 NAMECALL                         R17 R17 K31 ["GetService"]
      154 CALL                             R17 2 1
      155 NEWTABLE                         R18 16 0
      157 NEWTABLE                         R19 0 0
      159 NEWTABLE                         R20 0 0
      161 NEWTABLE                         R21 0 0
      163 LOADNIL                          R22
      164 LOADN                            R23 0
      165 NEWTABLE                         R24 0 0
      167 NEWTABLE                         R25 0 0
      169 NEWTABLE                         R26 0 0
      171 LOADNIL                          R27
      172 NEWTABLE                         R28 0 0
      174 GETTABLEKS                       R29 R10 K33 ["create"]
      176 CALL                             R29 0 1
      177 NEWTABLE                         R30 0 0
      179 LOADNIL                          R31
      180 LOADNIL                          R32
      181 LOADB                            R33 0
      182 LOADNIL                          R34
      183 LOADNIL                          R35
      184 LOADB                            R36 0
      185 GETTABLEKS                       R37 R8 K34 ["createClickAway"]
      187 CALL                             R37 0 1
      188 NEWCLOSURE                       R38 P0
      189 CAPTURE                          REF R27
      190 CAPTURE                          VAL R12
      191 NEWCLOSURE                       R39 P1
      192 CAPTURE                          REF R19
      193 NEWCLOSURE                       R40 P2
      194 CAPTURE                          REF R26
      195 CAPTURE                          REF R27
      196 CAPTURE                          VAL R12
      197 CAPTURE                          REF R19
      198 NEWCLOSURE                       R41 P3
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R5
      201 CAPTURE                          REF R30
      202 NEWCLOSURE                       R42 P4
      203 CAPTURE                          REF R19
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R5
      206 CAPTURE                          REF R30
      207 CAPTURE                          REF R31
      208 NEWCLOSURE                       R43 P5
      209 CAPTURE                          REF R25
      210 CAPTURE                          REF R27
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R42
      213 NEWCLOSURE                       R44 P6
      214 CAPTURE                          REF R35
      215 NEWCLOSURE                       R45 P7
      216 CAPTURE                          REF R35
      217 NEWCLOSURE                       R46 P8
      218 CAPTURE                          REF R32
      219 CAPTURE                          REF R19
      220 NEWCLOSURE                       R47 P9
      221 CAPTURE                          REF R29
      222 CAPTURE                          REF R35
      223 CAPTURE                          REF R32
      224 CAPTURE                          REF R19
      225 NEWCLOSURE                       R48 P10
      226 CAPTURE                          REF R19
      227 NEWCLOSURE                       R49 P11
      228 CAPTURE                          REF R19
      229 CAPTURE                          REF R24
      230 DUPCLOSURE                       R50 K35 [PROTO_13]
      231 NEWCLOSURE                       R51 P13
      232 CAPTURE                          REF R19
      233 CAPTURE                          REF R20
      234 CAPTURE                          REF R29
      235 CAPTURE                          REF R35
      236 CAPTURE                          REF R32
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R50
      239 NEWCLOSURE                       R52 P14
      240 CAPTURE                          REF R24
      241 CAPTURE                          REF R19
      242 CAPTURE                          VAL R51
      243 CAPTURE                          REF R25
      244 CAPTURE                          VAL R2
      245 CAPTURE                          REF R26
      246 DUPCLOSURE                       R53 K36 [PROTO_16]
      247 CAPTURE                          VAL R52
      248 CAPTURE                          VAL R43
      249 CAPTURE                          VAL R40
      250 NEWCLOSURE                       R54 P16
      251 CAPTURE                          REF R27
      252 CAPTURE                          REF R19
      253 CAPTURE                          REF R25
      254 CAPTURE                          REF R26
      255 SETTABLEKS                       R54 R18 K37 ["refreshTheme"]
      257 NEWCLOSURE                       R54 P17
      258 CAPTURE                          REF R19
      259 CAPTURE                          REF R35
      260 CAPTURE                          REF R32
      261 CAPTURE                          REF R26
      262 NEWCLOSURE                       R55 P18
      263 CAPTURE                          REF R34
      264 NEWCLOSURE                       R56 P19
      265 CAPTURE                          REF R35
      266 CAPTURE                          VAL R54
      267 CAPTURE                          REF R19
      268 CAPTURE                          REF R24
      269 SETTABLEKS                       R56 R18 K38 ["setSoloedInstances"]
      271 NEWCLOSURE                       R56 P20
      272 CAPTURE                          REF R20
      273 CAPTURE                          REF R21
      274 NEWCLOSURE                       R57 P21
      275 CAPTURE                          REF R21
      276 CAPTURE                          VAL R3
      277 CAPTURE                          VAL R5
      278 CAPTURE                          REF R22
      279 CAPTURE                          VAL R4
      280 CAPTURE                          VAL R13
      281 CAPTURE                          REF R23
      282 CAPTURE                          REF R19
      283 CAPTURE                          VAL R15
      284 CAPTURE                          REF R26
      285 NEWCLOSURE                       R58 P22
      286 CAPTURE                          VAL R57
      287 CAPTURE                          REF R19
      288 CAPTURE                          REF R20
      289 CAPTURE                          REF R24
      290 NEWCLOSURE                       R59 P23
      291 CAPTURE                          REF R20
      292 CAPTURE                          REF R29
      293 CAPTURE                          REF R31
      294 CAPTURE                          REF R24
      295 CAPTURE                          REF R19
      296 CAPTURE                          REF R21
      297 CAPTURE                          REF R32
      298 CAPTURE                          REF R33
      299 CAPTURE                          REF R34
      300 SETTABLEKS                       R59 R18 K39 ["removeInstance"]
      302 NEWCLOSURE                       R59 P24
      303 CAPTURE                          REF R29
      304 CAPTURE                          VAL R2
      305 CAPTURE                          REF R20
      306 CAPTURE                          REF R24
      307 CAPTURE                          REF R19
      308 SETTABLEKS                       R59 R18 K40 ["setMeter"]
      310 NEWCLOSURE                       R59 P25
      311 CAPTURE                          REF R29
      312 CAPTURE                          VAL R10
      313 SETTABLEKS                       R59 R18 K41 ["_setClockForTesting"]
      315 DUPCLOSURE                       R59 K42 [PROTO_27]
      316 CAPTURE                          VAL R3
      317 NEWCLOSURE                       R60 P27
      318 CAPTURE                          REF R24
      319 CAPTURE                          REF R19
      320 CAPTURE                          REF R26
      321 DUPCLOSURE                       R61 K43 [PROTO_29]
      322 CAPTURE                          VAL R11
      323 NEWCLOSURE                       R62 P29
      324 CAPTURE                          REF R19
      325 CAPTURE                          REF R35
      326 CAPTURE                          VAL R9
      327 CAPTURE                          REF R24
      328 CAPTURE                          REF R26
      329 NEWCLOSURE                       R63 P30
      330 CAPTURE                          REF R19
      331 CAPTURE                          REF R35
      332 NEWCLOSURE                       R64 P31
      333 CAPTURE                          REF R19
      334 NEWCLOSURE                       R65 P32
      335 CAPTURE                          VAL R8
      336 CAPTURE                          REF R30
      337 CAPTURE                          VAL R64
      338 CAPTURE                          VAL R5
      339 CAPTURE                          REF R34
      340 CAPTURE                          REF R32
      341 CAPTURE                          REF R24
      342 CAPTURE                          REF R19
      343 CAPTURE                          REF R33
      344 CAPTURE                          REF R31
      345 CAPTURE                          REF R20
      346 CAPTURE                          REF R25
      347 NEWCLOSURE                       R66 P33
      348 CAPTURE                          VAL R16
      349 CAPTURE                          REF R19
      350 CAPTURE                          VAL R3
      351 CAPTURE                          VAL R8
      352 CAPTURE                          VAL R65
      353 CAPTURE                          REF R24
      354 CAPTURE                          REF R26
      355 CAPTURE                          REF R32
      356 CAPTURE                          REF R35
      357 CAPTURE                          VAL R11
      358 CAPTURE                          VAL R62
      359 CAPTURE                          VAL R54
      360 CAPTURE                          VAL R52
      361 CAPTURE                          VAL R43
      362 CAPTURE                          VAL R40
      363 SETTABLEKS                       R66 R18 K44 ["updateBillboards"]
      365 NEWCLOSURE                       R66 P34
      366 CAPTURE                          REF R20
      367 CAPTURE                          REF R19
      368 CAPTURE                          REF R21
      369 CAPTURE                          VAL R18
      370 CAPTURE                          REF R22
      371 CAPTURE                          VAL R58
      372 CAPTURE                          REF R24
      373 CAPTURE                          REF R23
      374 SETTABLEKS                       R66 R18 K45 ["update"]
      376 NEWCLOSURE                       R66 P35
      377 CAPTURE                          REF R22
      378 CAPTURE                          VAL R7
      379 CAPTURE                          REF R36
      380 CAPTURE                          VAL R18
      381 CAPTURE                          REF R28
      382 CAPTURE                          VAL R17
      383 CAPTURE                          VAL R37
      384 CAPTURE                          REF R31
      385 CAPTURE                          VAL R8
      386 CAPTURE                          REF R32
      387 CAPTURE                          REF R19
      388 CAPTURE                          REF R33
      389 CAPTURE                          VAL R63
      390 CAPTURE                          VAL R56
      391 SETTABLEKS                       R66 R18 K46 ["onOpenView"]
      393 NEWCLOSURE                       R66 P36
      394 CAPTURE                          REF R28
      395 CAPTURE                          REF R34
      396 CAPTURE                          REF R30
      397 CAPTURE                          REF R31
      398 CAPTURE                          REF R32
      399 CAPTURE                          REF R33
      400 CAPTURE                          REF R36
      401 CAPTURE                          VAL R37
      402 CAPTURE                          REF R19
      403 CAPTURE                          REF R20
      404 CAPTURE                          REF R21
      405 CAPTURE                          REF R23
      406 CAPTURE                          REF R27
      407 CAPTURE                          REF R29
      408 CAPTURE                          REF R35
      409 CAPTURE                          REF R24
      410 CAPTURE                          REF R25
      411 CAPTURE                          REF R26
      412 CAPTURE                          REF R22
      413 CAPTURE                          VAL R7
      414 SETTABLEKS                       R66 R18 K47 ["onCloseView"]
      416 CLOSEUPVALS                      R19
      417 RETURN                           R18 1
