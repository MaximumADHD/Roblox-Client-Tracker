PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["set"]
        5 CALL                             R3 3 0
        6 GETUPVAL                         R3 1
        7 MOVE                             R5 R0
        8 NAMECALL                         R3 R3 K1 ["get"]
       10 CALL                             R3 2 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+13]
       13 GETIMPORT                        R4 K3 [error]
       15 GETIMPORT                        R5 K6 [string.format]
       17 LOADK                            R6 K7 ["Could not find node with id \"%s\" in commit tree"]
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R8 R0
       20 GETIMPORT                        R7 K9 [tostring]
       22 CALL                             R7 1 1
       23 CALL                             R5 2 -1
       24 CALL                             R4 -1 0
       25 GETTABLEKS                       R4 R3 K10 ["children"]
       27 GETTABLEKS                       R5 R3 K11 ["displayName"]
       29 GETTABLEKS                       R6 R3 K12 ["hocDisplayNames"]
       31 GETTABLEKS                       R7 R3 K13 ["key"]
       33 GETTABLEKS                       R8 R3 K14 ["treeBaseDuration"]
       35 GETUPVAL                         R10 2
       36 MOVE                             R12 R0
       37 NAMECALL                         R10 R10 K1 ["get"]
       39 CALL                             R10 2 1
       40 ORK                              R9 R10 K15 [0]
       41 GETUPVAL                         R11 3
       42 MOVE                             R13 R0
       43 NAMECALL                         R11 R11 K1 ["get"]
       45 CALL                             R11 2 1
       46 ORK                              R10 R11 K15 [0]
       47 GETUPVAL                         R11 2
       48 MOVE                             R13 R0
       49 NAMECALL                         R11 R11 K16 ["has"]
       51 CALL                             R11 2 1
       52 ORK                              R12 R5 K17 ["Anonymous"]
       53 GETUPVAL                         R15 4
       54 GETTABLEKS                       R14 R15 K18 ["toJSBoolean"]
       56 MOVE                             R15 R7
       57 CALL                             R14 1 1
       58 JUMPIFNOT                        R14 ; [+10]
       59 LOADK                            R13 K19 [" key=\"%s\""]
       60 FASTCALL1                        TOSTRING R7 ; [+3]
       61 MOVE                             R16 R7
       62 GETIMPORT                        R15 K9 [tostring]
       64 CALL                             R15 1 1
       65 NAMECALL                         R13 R13 K5 ["format"]
       67 CALL                             R13 2 1
       68 JUMP                             ; [+1]
       69 LOADK                            R13 K20 [""]
       70 LOADK                            R14 K20 [""]
       71 JUMPIFEQKNIL                     R6 ; [+15]
       73 LENGTH                           R15 R6
       74 LOADN                            R16 0
       75 JUMPIFNOTLT                      R16 R15 ; [+11]
       77 GETIMPORT                        R15 K6 [string.format]
       79 LOADK                            R16 K21 [" (%s)"]
       80 GETTABLEN                        R18 R6 1
       81 FASTCALL1                        TOSTRING R18 ; [+2]
       82 GETIMPORT                        R17 K9 [tostring]
       84 CALL                             R17 1 1
       85 CALL                             R15 2 1
       86 MOVE                             R14 R15
       87 GETIMPORT                        R15 K6 [string.format]
       89 LOADK                            R16 K22 ["%s%s%s%s"]
       90 FASTCALL1                        TOSTRING R12 ; [+3]
       91 MOVE                             R18 R12
       92 GETIMPORT                        R17 K9 [tostring]
       94 CALL                             R17 1 1
       95 FASTCALL1                        TOSTRING R14 ; [+3]
       96 MOVE                             R19 R14
       97 GETIMPORT                        R18 K9 [tostring]
       99 CALL                             R18 1 1
      100 FASTCALL1                        TOSTRING R13 ; [+3]
      101 MOVE                             R20 R13
      102 GETIMPORT                        R19 K9 [tostring]
      104 CALL                             R19 1 1
      105 JUMPIFNOT                        R11 ; [+19]
      106 GETIMPORT                        R20 K6 [string.format]
      108 LOADK                            R21 K23 [" (%sms of %sms)"]
      109 GETUPVAL                         R23 5
      110 MOVE                             R24 R10
      111 CALL                             R23 1 -1
      112 FASTCALL                         TOSTRING ; [+2]
      113 GETIMPORT                        R22 K9 [tostring]
      115 CALL                             R22 -1 1
      116 GETUPVAL                         R24 5
      117 MOVE                             R25 R9
      118 CALL                             R24 1 -1
      119 FASTCALL                         TOSTRING ; [+2]
      120 GETIMPORT                        R23 K9 [tostring]
      122 CALL                             R23 -1 1
      123 CALL                             R20 3 1
      124 JUMP                             ; [+1]
      125 LOADK                            R20 K20 [""]
      126 CALL                             R15 5 1
      127 GETUPVAL                         R17 6
      128 FASTCALL2                        MATH_MAX R17 R2 ; [+4]
      130 MOVE                             R18 R2
      131 GETIMPORT                        R16 K26 [math.max]
      133 CALL                             R16 2 1
      134 SETUPVAL                         R16 6
      135 GETUPVAL                         R17 7
      136 FASTCALL2                        MATH_MAX R17 R10 ; [+4]
      138 MOVE                             R18 R10
      139 GETIMPORT                        R16 K26 [math.max]
      141 CALL                             R16 2 1
      142 SETUPVAL                         R16 7
      143 DUPTABLE                         R16 K34 [{"actualDuration", "didRender", "id", "label", "name", "offset", "selfDuration", "treeBaseDuration"}]
      144 SETTABLEKS                       R9 R16 K27 ["actualDuration"]
      146 SETTABLEKS                       R11 R16 K28 ["didRender"]
      148 SETTABLEKS                       R0 R16 K29 ["id"]
      150 SETTABLEKS                       R15 R16 K30 ["label"]
      152 SETTABLEKS                       R12 R16 K31 ["name"]
      154 SUB                              R17 R1 R8
      155 SETTABLEKS                       R17 R16 K32 ["offset"]
      157 SETTABLEKS                       R10 R16 K33 ["selfDuration"]
      159 SETTABLEKS                       R8 R16 K14 ["treeBaseDuration"]
      161 GETUPVAL                         R18 8
      162 LENGTH                           R17 R18
      163 JUMPIFNOTLT                      R17 R2 ; [+13]
      165 GETUPVAL                         R18 8
      166 NEWTABLE                         R19 0 1
      168 MOVE                             R20 R16
      169 SETLIST                          R19 R20 1 [1]
      171 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
      173 GETIMPORT                        R17 K37 [table.insert]
      175 CALL                             R17 2 0
      176 JUMP                             ; [+9]
      177 GETUPVAL                         R19 8
      178 SUBK                             R20 R2 K38 [1]
      179 GETTABLE                         R18 R19 R20
      180 FASTCALL2                        TABLE_INSERT R18 R16 ; [+4]
      182 MOVE                             R19 R16
      183 GETIMPORT                        R17 K37 [table.insert]
      185 CALL                             R17 2 0
      186 LENGTH                           R17 R4
      187 LOADN                            R18 1
      188 JUMPIFNOTLE                      R18 R17 ; [+12]
      190 GETTABLE                         R18 R4 R17
      191 GETUPVAL                         R19 9
      192 MOVE                             R20 R18
      193 MOVE                             R21 R1
      194 MOVE                             R22 R2
      195 CALL                             R19 3 1
      196 GETTABLEKS                       R20 R19 K14 ["treeBaseDuration"]
      198 SUB                              R1 R1 R20
      199 SUBK                             R17 R17 K38 [1]
      200 JUMPBACK                         ; [-14]
      201 RETURN                           R16 1

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
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R10 R11 K14 ["new"]
       48 CALL                             R10 0 1
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R11 R12 K14 ["new"]
       52 CALL                             R11 0 1
       53 NEWTABLE                         R12 0 0
       55 LOADN                            R13 0
       56 LOADN                            R14 0
       57 NEWCLOSURE                       R15 P0
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          REF R13
       65 CAPTURE                          REF R14
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R15
       68 LOADN                            R16 0
       69 GETTABLEKS                       R17 R8 K15 ["size"]
       71 LOADN                            R18 0
       72 JUMPIFNOTLT                      R18 R17 ; [+94]
       74 MOVE                             R19 R4
       75 NAMECALL                         R17 R8 K13 ["get"]
       77 CALL                             R17 2 1
       78 JUMPIFNOTEQKNIL                  R17 ; [+13]
       80 GETIMPORT                        R18 K17 [error]
       82 GETIMPORT                        R19 K19 [string.format]
       84 LOADK                            R20 K20 ["Could not find root node with id \"%s\" in commit tree"]
       85 FASTCALL1                        TOSTRING R4 ; [+3]
       86 MOVE                             R22 R4
       87 GETIMPORT                        R21 K10 [tostring]
       89 CALL                             R21 1 1
       90 CALL                             R19 2 -1
       91 CALL                             R18 -1 0
       92 GETTABLEKS                       R19 R17 K21 ["children"]
       94 LENGTH                           R18 R19
       95 LOADN                            R19 1
       96 JUMPIFNOTLE                      R19 R18 ; [+32]
       98 GETTABLEKS                       R20 R17 K21 ["children"]
      100 GETTABLE                         R19 R20 R18
      101 MOVE                             R22 R19
      102 NAMECALL                         R20 R8 K13 ["get"]
      104 CALL                             R20 2 1
      105 JUMPIFNOTEQKNIL                  R20 ; [+13]
      107 GETIMPORT                        R21 K17 [error]
      109 GETIMPORT                        R22 K19 [string.format]
      111 LOADK                            R23 K22 ["Could not find node with id \"%s\" in commit tree"]
      112 FASTCALL1                        TOSTRING R19 ; [+3]
      113 MOVE                             R25 R19
      114 GETIMPORT                        R24 K10 [tostring]
      116 CALL                             R24 1 1
      117 CALL                             R22 2 -1
      118 CALL                             R21 -1 0
      119 GETTABLEKS                       R21 R20 K23 ["treeBaseDuration"]
      121 ADD                              R16 R16 R21
      122 MOVE                             R21 R15
      123 MOVE                             R22 R19
      124 MOVE                             R23 R16
      125 LOADN                            R24 2
      126 CALL                             R21 3 0
      127 SUBK                             R18 R18 K24 [1]
      128 JUMPBACK                         ; [-34]
      129 MOVE                             R18 R6
      130 LOADNIL                          R19
      131 LOADNIL                          R20
      132 FORGPREP                         R18
      133 MOVE                             R25 R21
      134 NAMECALL                         R23 R8 K13 ["get"]
      136 CALL                             R23 2 1
      137 JUMPIFEQKNIL                     R23 ; [+27]
      139 GETTABLEKS                       R24 R23 K25 ["parentID"]
      141 JUMPIFEQKN                       R24 K26 [0] ; [+23]
      143 MOVE                             R27 R24
      144 NAMECALL                         R25 R11 K12 ["has"]
      146 CALL                             R25 2 1
      147 JUMPIFNOT                        R25 ; [+1]
      148 JUMP                             ; [+16]
      149 MOVE                             R27 R24
      150 NAMECALL                         R25 R11 K27 ["add"]
      152 CALL                             R25 2 0
      153 MOVE                             R27 R24
      154 NAMECALL                         R25 R8 K13 ["get"]
      156 CALL                             R25 2 1
      157 MOVE                             R23 R25
      158 JUMPIFEQKNIL                     R23 ; [+4]
      160 GETTABLEKS                       R24 R23 K25 ["parentID"]
      162 JUMP                             ; [+1]
      163 LOADN                            R24 0
      164 JUMPBACK                         ; [-24]
      165 FORGLOOP                         R18 2 ; [-33]
      167 DUPTABLE                         R17 K34 [{"baseDuration", "depth", "idToDepthMap", "maxSelfDuration", "renderPathNodes", "rows"}]
      168 SETTABLEKS                       R16 R17 K28 ["baseDuration"]
      170 SETTABLEKS                       R13 R17 K29 ["depth"]
      172 SETTABLEKS                       R10 R17 K30 ["idToDepthMap"]
      174 SETTABLEKS                       R14 R17 K31 ["maxSelfDuration"]
      176 SETTABLEKS                       R11 R17 K32 ["renderPathNodes"]
      178 SETTABLEKS                       R12 R17 K33 ["rows"]
      180 GETUPVAL                         R18 0
      181 MOVE                             R20 R9
      182 MOVE                             R21 R17
      183 NAMECALL                         R18 R18 K35 ["set"]
      185 CALL                             R18 3 0
      186 CLOSEUPVALS                      R13
      187 RETURN                           R17 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clear"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K6 ["Boolean"]
       20 GETTABLEKS                       R3 R1 K7 ["Map"]
       22 GETTABLEKS                       R4 R1 K8 ["Set"]
       24 NEWTABLE                         R5 2 0
       26 GETIMPORT                        R6 K4 [require]
       28 GETIMPORT                        R11 K1 [script]
       30 GETTABLEKS                       R10 R11 K2 ["Parent"]
       32 GETTABLEKS                       R9 R10 K2 ["Parent"]
       34 GETTABLEKS                       R8 R9 K2 ["Parent"]
       36 GETTABLEKS                       R7 R8 K9 ["types"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R8 K4 [require]
       41 GETIMPORT                        R11 K1 [script]
       43 GETTABLEKS                       R10 R11 K2 ["Parent"]
       45 GETTABLEKS                       R9 R10 K10 ["utils"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R7 R8 K11 ["formatDuration"]
       50 GETIMPORT                        R8 K4 [require]
       52 GETIMPORT                        R11 K1 [script]
       54 GETTABLEKS                       R10 R11 K2 ["Parent"]
       56 GETTABLEKS                       R9 R10 K9 ["types"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R3 K12 ["new"]
       61 CALL                             R9 0 1
       62 DUPCLOSURE                       R10 K13 [PROTO_1]
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R7
       68 SETTABLEKS                       R10 R5 K14 ["getChartData"]
       70 DUPCLOSURE                       R11 K15 [PROTO_2]
       71 CAPTURE                          VAL R9
       72 SETTABLEKS                       R11 R5 K16 ["invalidateChartData"]
       74 RETURN                           R5 1
