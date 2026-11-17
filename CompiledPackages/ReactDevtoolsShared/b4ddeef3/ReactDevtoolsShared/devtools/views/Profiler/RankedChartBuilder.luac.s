PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["value"]
        2 GETTABLEKS                       R4 R0 K0 ["value"]
        4 SUB                              R2 R3 R4
        5 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["commitIndex"]
        2 GETTABLEKS                       R2 R0 K1 ["commitTree"]
        4 GETTABLEKS                       R3 R0 K2 ["profilerStore"]
        6 GETTABLEKS                       R4 R0 K3 ["rootID"]
        8 MOVE                             R7 R4
        9 MOVE                             R8 R1
       10 NAMECALL                         R5 R3 K4 ["getCommitData"]
       12 CALL                             R5 3 1
       13 GETTABLEKS                       R6 R5 K5 ["fiberActualDurations"]
       15 GETTABLEKS                       R7 R5 K6 ["fiberSelfDurations"]
       17 GETTABLEKS                       R8 R2 K7 ["nodes"]
       19 LOADK                            R9 K8 ["%s-%s"]
       20 FASTCALL1                        TOSTRING R4 ; [+3]
       21 MOVE                             R12 R4
       22 GETIMPORT                        R11 K10 [tostring]
       24 CALL                             R11 1 1
       25 FASTCALL1                        TOSTRING R1 ; [+3]
       26 MOVE                             R13 R1
       27 GETIMPORT                        R12 K10 [tostring]
       29 CALL                             R12 1 1
       30 NAMECALL                         R9 R9 K11 ["format"]
       32 CALL                             R9 3 1
       33 GETUPVAL                         R10 0
       34 MOVE                             R12 R9
       35 NAMECALL                         R10 R10 K12 ["has"]
       37 CALL                             R10 2 1
       38 JUMPIFNOT                        R10 ; [+6]
       39 GETUPVAL                         R10 0
       40 MOVE                             R12 R9
       41 NAMECALL                         R10 R10 K13 ["get"]
       43 CALL                             R10 2 1
       44 RETURN                           R10 1
       45 LOADN                            R10 0
       46 NEWTABLE                         R11 0 0
       48 MOVE                             R12 R6
       49 LOADNIL                          R13
       50 LOADNIL                          R14
       51 FORGPREP                         R12
       52 MOVE                             R19 R15
       53 NAMECALL                         R17 R8 K13 ["get"]
       55 CALL                             R17 2 1
       56 JUMPIFNOTEQKNIL                  R17 ; [+13]
       58 GETIMPORT                        R18 K15 [error]
       60 GETIMPORT                        R19 K17 [string.format]
       62 LOADK                            R20 K18 ["Could not find node with id \"%s\" in commit tree"]
       63 FASTCALL1                        TOSTRING R15 ; [+3]
       64 MOVE                             R22 R15
       65 GETIMPORT                        R21 K10 [tostring]
       67 CALL                             R21 1 1
       68 CALL                             R19 2 -1
       69 CALL                             R18 -1 0
       70 GETTABLEKS                       R18 R17 K19 ["displayName"]
       72 GETTABLEKS                       R19 R17 K20 ["key"]
       74 GETTABLEKS                       R20 R17 K21 ["parentID"]
       76 GETTABLEKS                       R21 R17 K22 ["type"]
       78 JUMPIFEQKN                       R20 K23 [0] ; [+83]
       80 MOVE                             R25 R15
       81 NAMECALL                         R23 R7 K13 ["get"]
       83 CALL                             R23 2 1
       84 ORK                              R22 R23 K23 [0]
       85 FASTCALL2                        MATH_MAX R10 R22 ; [+5]
       87 MOVE                             R24 R10
       88 MOVE                             R25 R22
       89 GETIMPORT                        R23 K26 [math.max]
       91 CALL                             R23 2 1
       92 MOVE                             R10 R23
       93 ORK                              R23 R18 K27 ["Anonymous"]
       94 GETUPVAL                         R25 1
       95 GETTABLEKS                       R25 R25 K28 ["toJSBoolean"]
       97 MOVE                             R26 R19
       98 CALL                             R25 1 1
       99 JUMPIFNOT                        R25 ; [+10]
      100 LOADK                            R24 K29 [" key=\"%s\""]
      101 FASTCALL1                        TOSTRING R19 ; [+3]
      102 MOVE                             R27 R19
      103 GETIMPORT                        R26 K10 [tostring]
      105 CALL                             R26 1 1
      106 NAMECALL                         R24 R24 K11 ["format"]
      108 CALL                             R24 2 1
      109 JUMP                             ; [+1]
      110 LOADK                            R24 K30 [""]
      111 LOADK                            R25 K30 [""]
      112 GETUPVAL                         R26 2
      113 JUMPIFNOTEQ                      R21 R26 ; [+3]
      115 LOADK                            R25 K31 [" (ForwardRef)"]
      116 JUMP                             ; [+4]
      117 GETUPVAL                         R26 3
      118 JUMPIFNOTEQ                      R21 R26 ; [+2]
      120 LOADK                            R25 K32 [" (Memo)"]
      121 LOADK                            R26 K33 ["%s%s%s (%sms)"]
      122 FASTCALL1                        TOSTRING R23 ; [+3]
      123 MOVE                             R29 R23
      124 GETIMPORT                        R28 K10 [tostring]
      126 CALL                             R28 1 1
      127 FASTCALL1                        TOSTRING R25 ; [+3]
      128 MOVE                             R30 R25
      129 GETIMPORT                        R29 K10 [tostring]
      131 CALL                             R29 1 1
      132 FASTCALL1                        TOSTRING R24 ; [+3]
      133 MOVE                             R31 R24
      134 GETIMPORT                        R30 K10 [tostring]
      136 CALL                             R30 1 1
      137 GETUPVAL                         R32 4
      138 MOVE                             R33 R22
      139 CALL                             R32 1 -1
      140 FASTCALL                         TOSTRING ; [+2]
      141 GETIMPORT                        R31 K10 [tostring]
      143 CALL                             R31 -1 1
      144 NAMECALL                         R26 R26 K11 ["format"]
      146 CALL                             R26 5 1
      147 DUPTABLE                         R29 K38 [{"id", "label", "name", "value"}]
      148 SETTABLEKS                       R15 R29 K34 ["id"]
      150 SETTABLEKS                       R26 R29 K35 ["label"]
      152 SETTABLEKS                       R23 R29 K36 ["name"]
      154 SETTABLEKS                       R22 R29 K37 ["value"]
      156 FASTCALL2                        TABLE_INSERT R11 R29 ; [+4]
      158 MOVE                             R28 R11
      159 GETIMPORT                        R27 K41 [table.insert]
      161 CALL                             R27 2 0
      162 FORGLOOP                         R12 2 ; [-111]
      164 DUPTABLE                         R12 K43 [{"maxValue", "nodes"}]
      165 SETTABLEKS                       R10 R12 K42 ["maxValue"]
      167 GETUPVAL                         R13 5
      168 GETTABLEKS                       R13 R13 K44 ["sort"]
      170 MOVE                             R14 R11
      171 DUPCLOSURE                       R15 K45 [PROTO_0]
      172 CALL                             R13 2 1
      173 SETTABLEKS                       R13 R12 K7 ["nodes"]
      175 GETUPVAL                         R13 0
      176 MOVE                             R15 R9
      177 MOVE                             R16 R12
      178 NAMECALL                         R13 R13 K46 ["set"]
      180 CALL                             R13 3 0
      181 RETURN                           R12 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clear"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K6 ["Array"]
       20 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       22 GETTABLEKS                       R4 R1 K8 ["Map"]
       24 NEWTABLE                         R5 2 0
       26 GETIMPORT                        R6 K4 [require]
       28 GETIMPORT                        R7 K1 [script]
       30 GETTABLEKS                       R7 R7 K2 ["Parent"]
       32 GETTABLEKS                       R7 R7 K2 ["Parent"]
       34 GETTABLEKS                       R7 R7 K2 ["Parent"]
       36 GETTABLEKS                       R7 R7 K9 ["types"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K4 [require]
       41 GETIMPORT                        R8 K1 [script]
       43 GETTABLEKS                       R8 R8 K2 ["Parent"]
       45 GETTABLEKS                       R8 R8 K2 ["Parent"]
       47 GETTABLEKS                       R8 R8 K2 ["Parent"]
       49 GETTABLEKS                       R8 R8 K2 ["Parent"]
       51 GETTABLEKS                       R8 R8 K9 ["types"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R7 K10 ["ElementTypeForwardRef"]
       56 GETTABLEKS                       R9 R7 K11 ["ElementTypeMemo"]
       58 GETIMPORT                        R10 K4 [require]
       60 GETIMPORT                        R11 K1 [script]
       62 GETTABLEKS                       R11 R11 K2 ["Parent"]
       64 GETTABLEKS                       R11 R11 K12 ["utils"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R10 R10 K13 ["formatDuration"]
       69 GETIMPORT                        R11 K4 [require]
       71 GETIMPORT                        R12 K1 [script]
       73 GETTABLEKS                       R12 R12 K2 ["Parent"]
       75 GETTABLEKS                       R12 R12 K9 ["types"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R4 K14 ["new"]
       80 CALL                             R12 0 1
       81 DUPCLOSURE                       R13 K15 [PROTO_1]
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R2
       88 SETTABLEKS                       R13 R5 K16 ["getChartData"]
       90 DUPCLOSURE                       R14 K17 [PROTO_2]
       91 CAPTURE                          VAL R12
       92 SETTABLEKS                       R14 R5 K18 ["invalidateChartData"]
       94 RETURN                           R5 1
