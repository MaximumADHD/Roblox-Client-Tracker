PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+19]
        2 LOADK                            R4 K0 ["GuiObject"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+14]
        7 LOADK                            R4 K0 ["GuiObject"]
        8 NAMECALL                         R2 R1 K1 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+9]
       12 GETTABLEKS                       R3 R0 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R4 R1 K2 ["LayoutOrder"]
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 GETTABLEKS                       R3 R0 K3 ["Name"]
       23 GETTABLEKS                       R4 R1 K3 ["Name"]
       25 JUMPIFLT                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R2 K0 ["IgnoreInstances"]
        6 JUMPIFNOT                        R3 ; [+10]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R4 R2 K0 ["IgnoreInstances"]
       10 GETTABLEKS                       R5 R0 K1 ["ClassName"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+3]
       14 NEWTABLE                         R3 0 0
       16 RETURN                           R3 1
       17 GETTABLEKS                       R4 R2 K2 ["InstanceProperties"]
       19 JUMPIFNOT                        R4 ; [+6]
       20 GETTABLEKS                       R4 R2 K2 ["InstanceProperties"]
       22 GETTABLEKS                       R5 R0 K1 ["ClassName"]
       24 GETTABLE                         R3 R4 R5
       25 JUMPIF                           R3 ; [+1]
       26 LOADNIL                          R3
       27 LOADK                            R4 K3 [""]
       28 NEWTABLE                         R5 0 0
       30 JUMPIFNOT                        R3 ; [+98]
       31 GETIMPORT                        R6 K5 [ipairs]
       33 MOVE                             R7 R3
       34 CALL                             R6 1 3
       35 FORGPREP_INEXT                   R6
       36 GETTABLE                         R11 R0 R10
       37 FASTCALL1                        TYPEOF R11 ; [+3]
       38 MOVE                             R13 R11
       39 GETIMPORT                        R12 K7 [typeof]
       41 CALL                             R12 1 1
       42 JUMPIFNOTEQKS                    R12 K8 ["string"] ; [+8]
       44 LOADK                            R12 K9 ["%q"]
       45 MOVE                             R14 R11
       46 NAMECALL                         R12 R12 K10 ["format"]
       48 CALL                             R12 2 1
       49 MOVE                             R11 R12
       50 JUMP                             ; [+57]
       51 FASTCALL1                        TYPEOF R11 ; [+3]
       52 MOVE                             R13 R11
       53 GETIMPORT                        R12 K7 [typeof]
       55 CALL                             R12 1 1
       56 JUMPIFEQKS                       R12 K11 ["number"] ; [+29]
       58 FASTCALL1                        TYPEOF R11 ; [+3]
       59 MOVE                             R13 R11
       60 GETIMPORT                        R12 K7 [typeof]
       62 CALL                             R12 1 1
       63 JUMPIFEQKS                       R12 K12 ["boolean"] ; [+22]
       65 FASTCALL1                        TYPEOF R11 ; [+3]
       66 MOVE                             R13 R11
       67 GETIMPORT                        R12 K7 [typeof]
       69 CALL                             R12 1 1
       70 JUMPIFEQKS                       R12 K13 ["userdata"] ; [+15]
       72 FASTCALL1                        TYPEOF R11 ; [+3]
       73 MOVE                             R13 R11
       74 GETIMPORT                        R12 K7 [typeof]
       76 CALL                             R12 1 1
       77 JUMPIFEQKS                       R12 K14 ["function"] ; [+8]
       79 FASTCALL1                        TYPEOF R11 ; [+3]
       80 MOVE                             R13 R11
       81 GETIMPORT                        R12 K7 [typeof]
       83 CALL                             R12 1 1
       84 JUMPIFNOTEQKS                    R12 K15 ["table"] ; [+8]
       86 FASTCALL1                        TOSTRING R11 ; [+3]
       87 MOVE                             R13 R11
       88 GETIMPORT                        R12 K17 [tostring]
       90 CALL                             R12 1 1
       91 MOVE                             R11 R12
       92 JUMP                             ; [+15]
       93 LOADK                            R12 K18 ["%s(%s)"]
       94 FASTCALL1                        TYPEOF R11 ; [+3]
       95 MOVE                             R15 R11
       96 GETIMPORT                        R14 K7 [typeof]
       98 CALL                             R14 1 1
       99 FASTCALL1                        TOSTRING R11 ; [+3]
      100 MOVE                             R16 R11
      101 GETIMPORT                        R15 K17 [tostring]
      103 CALL                             R15 1 1
      104 NAMECALL                         R12 R12 K10 ["format"]
      106 CALL                             R12 3 1
      107 MOVE                             R11 R12
      108 MOVE                             R13 R5
      109 LOADK                            R14 K19 ["%s=%s"]
      110 MOVE                             R16 R10
      111 MOVE                             R17 R11
      112 NAMECALL                         R14 R14 K10 ["format"]
      114 CALL                             R14 3 -1
      115 FASTCALL                         TABLE_INSERT ; [+1]
      116 GETUPVAL                         R12 1
      117 CALL                             R12 -1 0
      118 FORGLOOP                         R6 2 [inext] ; [-83]
      120 LOADK                            R6 K20 [" %s"]
      121 GETUPVAL                         R8 2
      122 MOVE                             R9 R5
      123 LOADK                            R10 K21 [" "]
      124 CALL                             R8 2 -1
      125 NAMECALL                         R6 R6 K10 ["format"]
      127 CALL                             R6 -1 1
      128 MOVE                             R4 R6
      129 LOADK                            R6 K3 [""]
      130 GETTABLEKS                       R7 R2 K22 ["Tags"]
      132 JUMPIFNOT                        R7 ; [+39]
      133 NEWTABLE                         R7 0 0
      135 GETTABLEKS                       R8 R2 K22 ["Tags"]
      137 LOADNIL                          R9
      138 LOADNIL                          R10
      139 FORGPREP                         R8
      140 MOVE                             R15 R12
      141 NAMECALL                         R13 R0 K23 ["HasTag"]
      143 CALL                             R13 2 1
      144 JUMPIFNOT                        R13 ; [+10]
      145 LOADK                            R15 K24 [".%*"]
      146 MOVE                             R17 R12
      147 NAMECALL                         R15 R15 K10 ["format"]
      149 CALL                             R15 2 1
      150 FASTCALL2                        TABLE_INSERT R7 R15 ; [+3]
      152 MOVE                             R14 R7
      153 GETUPVAL                         R13 1
      154 CALL                             R13 2 0
      155 FORGLOOP                         R8 2 ; [-16]
      157 LENGTH                           R8 R7
      158 LOADN                            R9 0
      159 JUMPIFNOTLT                      R9 R8 ; [+11]
      161 LOADK                            R8 K25 [" %*"]
      162 GETUPVAL                         R10 2
      163 MOVE                             R11 R7
      164 LOADK                            R12 K21 [" "]
      165 CALL                             R10 2 1
      166 NAMECALL                         R8 R8 K10 ["format"]
      168 CALL                             R8 2 1
      169 MOVE                             R6 R8
      170 JUMP                             ; [+1]
      171 LOADK                            R6 K3 [""]
      172 NAMECALL                         R8 R0 K26 ["GetChildren"]
      174 CALL                             R8 1 1
      175 LENGTH                           R7 R8
      176 JUMPIFNOTEQKN                    R7 K27 [0] ; [+16]
      178 NEWTABLE                         R7 0 1
      180 LOADK                            R8 K28 ["<%s #%s%s%s/>"]
      181 GETTABLEKS                       R10 R0 K1 ["ClassName"]
      183 GETTABLEKS                       R11 R0 K29 ["Name"]
      185 MOVE                             R12 R6
      186 MOVE                             R13 R4
      187 NAMECALL                         R8 R8 K10 ["format"]
      189 CALL                             R8 5 -1
      190 SETLIST                          R7 R8 -1 [1]
      192 RETURN                           R7 1
      193 NEWTABLE                         R7 0 1
      195 LOADK                            R8 K30 ["<%s #%s%s%s>"]
      196 GETTABLEKS                       R10 R0 K1 ["ClassName"]
      198 GETTABLEKS                       R11 R0 K29 ["Name"]
      200 MOVE                             R12 R6
      201 MOVE                             R13 R4
      202 NAMECALL                         R8 R8 K10 ["format"]
      204 CALL                             R8 5 -1
      205 SETLIST                          R7 R8 -1 [1]
      207 NEWTABLE                         R8 0 0
      209 LOADB                            R9 0
      210 GETIMPORT                        R10 K5 [ipairs]
      212 NAMECALL                         R11 R0 K26 ["GetChildren"]
      214 CALL                             R11 1 -1
      215 CALL                             R10 -1 3
      216 FORGPREP_INEXT                   R10
      217 FASTCALL2                        TABLE_INSERT R8 R14 ; [+4]
      219 MOVE                             R16 R8
      220 MOVE                             R17 R14
      221 GETUPVAL                         R15 1
      222 CALL                             R15 2 0
      223 LOADK                            R17 K31 ["UIListLayout"]
      224 NAMECALL                         R15 R14 K32 ["IsA"]
      226 CALL                             R15 2 1
      227 JUMPIFNOT                        R15 ; [+7]
      228 GETTABLEKS                       R15 R14 K33 ["SortOrder"]
      230 GETIMPORT                        R16 K36 [Enum.SortOrder.LayoutOrder]
      232 JUMPIFNOTEQ                      R15 R16 ; [+2]
      234 LOADB                            R9 1
      235 FORGLOOP                         R10 2 [inext] ; [-19]
      237 GETUPVAL                         R10 3
      238 MOVE                             R11 R8
      239 NEWCLOSURE                       R12 P0
      240 CAPTURE                          REF R9
      241 CALL                             R10 2 0
      242 GETIMPORT                        R10 K5 [ipairs]
      244 MOVE                             R11 R8
      245 CALL                             R10 1 3
      246 FORGPREP_INEXT                   R10
      247 GETUPVAL                         R15 4
      248 MOVE                             R16 R14
      249 MOVE                             R17 R2
      250 CALL                             R15 2 1
      251 GETIMPORT                        R16 K5 [ipairs]
      253 MOVE                             R17 R15
      254 CALL                             R16 1 3
      255 FORGPREP_INEXT                   R16
      256 LOADK                            R24 K37 ["\t"]
      257 MOVE                             R25 R20
      258 CONCAT                           R23 R24 R25
      259 FASTCALL2                        TABLE_INSERT R7 R23 ; [+3]
      261 MOVE                             R22 R7
      262 GETUPVAL                         R21 1
      263 CALL                             R21 2 0
      264 FORGLOOP                         R16 2 [inext] ; [-9]
      266 FORGLOOP                         R10 2 [inext] ; [-20]
      268 MOVE                             R11 R7
      269 LOADK                            R12 K38 ["</%s>"]
      270 GETTABLEKS                       R14 R0 K1 ["ClassName"]
      272 NAMECALL                         R12 R12 K10 ["format"]
      274 CALL                             R12 2 -1
      275 FASTCALL                         TABLE_INSERT ; [+1]
      276 GETUPVAL                         R10 1
      277 CALL                             R10 -1 0
      278 CLOSEUPVALS                      R9
      279 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 LOADK                            R4 K0 ["\n"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["includes"]
       16 GETIMPORT                        R3 K9 [table.concat]
       18 GETIMPORT                        R4 K11 [table.insert]
       20 GETIMPORT                        R5 K13 [table.sort]
       22 DUPCLOSURE                       R6 K14 [PROTO_1]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R6
       28 DUPCLOSURE                       R7 K15 [PROTO_2]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R6
       31 RETURN                           R7 1
