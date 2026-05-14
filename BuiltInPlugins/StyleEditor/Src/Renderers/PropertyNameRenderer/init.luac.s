PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 JUMPIFNOTEQKS                    R5 K0 ["UICorner"] ; [+3]
        6 LOADB                            R6 1
        7 RETURN                           R6 1
        8 FORGLOOP                         R1 2 ; [-5]
       10 LOADB                            R1 0
       11 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R8 R8 K0 ["allProperties"]
        7 GETTABLE                         R7 R8 R6
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETTABLE                         R8 R7 R1
       10 JUMPIFEQKNIL                     R8 ; [+3]
       12 LOADB                            R8 1
       13 RETURN                           R8 1
       14 FORGLOOP                         R2 2 ; [-11]
       16 LOADB                            R2 0
       17 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CanMatchAnyClass"]
        3 JUMPIFNOT                        R1 ; [+11]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["possiblePropertyTypes"]
        7 GETTABLE                         R1 R2 R0
        8 JUMPIFNOTEQKNIL                  R1 ; [+87]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["DoesNotExist"]
       13 RETURN                           R1 1
       14 JUMP                             ; [+81]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K3 ["PossibleClasses"]
       18 MOVE                             R3 R2
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R9 R9 K4 ["allProperties"]
       25 GETTABLE                         R8 R9 R7
       26 JUMPIFNOT                        R8 ; [+5]
       27 GETTABLE                         R9 R8 R0
       28 JUMPIFEQKNIL                     R9 ; [+3]
       30 LOADB                            R1 1
       31 JUMP                             ; [+3]
       32 FORGLOOP                         R3 2 ; [-11]
       34 LOADB                            R1 0
       35 JUMPIF                           R1 ; [+4]
       36 GETUPVAL                         R1 2
       37 GETTABLEKS                       R1 R1 K5 ["DoesNotExistOnType"]
       39 RETURN                           R1 1
       40 GETUPVAL                         R1 3
       41 JUMPIFNOT                        R1 ; [+54]
       42 GETUPVAL                         R2 0
       43 GETTABLEKS                       R2 R2 K3 ["PossibleClasses"]
       45 MOVE                             R3 R2
       46 LOADNIL                          R4
       47 LOADNIL                          R5
       48 FORGPREP                         R3
       49 JUMPIFNOTEQKS                    R7 K6 ["UICorner"] ; [+3]
       51 LOADB                            R1 1
       52 JUMP                             ; [+3]
       53 FORGLOOP                         R3 2 ; [-5]
       55 LOADB                            R1 0
       56 JUMPIFNOT                        R1 ; [+39]
       57 JUMPIFNOTEQKS                    R0 K7 ["CornerRadius"] ; [+18]
       59 GETUPVAL                         R1 4
       60 LOADNIL                          R2
       61 LOADNIL                          R3
       62 FORGPREP                         R1
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R7 R7 K8 ["Properties"]
       66 GETTABLE                         R6 R7 R5
       67 JUMPIFEQKNIL                     R6 ; [+5]
       69 GETUPVAL                         R6 2
       70 GETTABLEKS                       R6 R6 K9 ["ConflictsWithProperty"]
       72 RETURN                           R6 1
       73 FORGLOOP                         R1 2 ; [-11]
       75 JUMP                             ; [+20]
       76 GETUPVAL                         R1 4
       77 LOADNIL                          R2
       78 LOADNIL                          R3
       79 FORGPREP                         R1
       80 JUMPIFNOTEQ                      R0 R5 ; [+13]
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K8 ["Properties"]
       85 GETTABLEKS                       R6 R7 K7 ["CornerRadius"]
       87 JUMPIFEQKNIL                     R6 ; [+8]
       89 GETUPVAL                         R6 2
       90 GETTABLEKS                       R6 R6 K9 ["ConflictsWithProperty"]
       92 RETURN                           R6 1
       93 JUMP                             ; [+2]
       94 FORGLOOP                         R1 2 ; [-15]
       96 GETUPVAL                         R2 5
       97 GETTABLEKS                       R2 R2 K10 ["Value"]
       99 JUMPIFNOTEQ                      R2 R0 ; [+2]
      101 LOADB                            R1 0 +1
      102 LOADB                            R1 1
      103 LOADB                            R2 0
      104 GETUPVAL                         R4 0
      105 GETTABLEKS                       R4 R4 K8 ["Properties"]
      107 GETTABLE                         R3 R4 R0
      108 JUMPIFEQKNIL                     R3 ; [+2]
      110 MOVE                             R2 R1
      111 JUMPIFNOT                        R2 ; [+4]
      112 GETUPVAL                         R3 2
      113 GETTABLEKS                       R3 R3 K11 ["AlreadyDefined"]
      115 RETURN                           R3 1
      116 GETUPVAL                         R3 2
      117 GETTABLEKS                       R3 R3 K12 ["None"]
      119 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"text", "error"}]
        5 SETTABLEKS                       R0 R3 K0 ["text"]
        7 SETTABLEKS                       R1 R3 K1 ["error"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"text", "error"}]
        5 SETTABLEKS                       R0 R3 K0 ["text"]
        7 SETTABLEKS                       R1 R3 K1 ["error"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["None"]
        6 JUMPIFNOTEQ                      R2 R3 ; [+12]
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["Value"]
       11 JUMPIFEQ                         R3 R0 ; [+7]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["OnChanged"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K1 ["Value"]
       22 GETUPVAL                         R4 0
       23 MOVE                             R5 R3
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 3
       26 DUPTABLE                         R6 K5 [{"text", "error"}]
       27 SETTABLEKS                       R3 R6 K3 ["text"]
       29 SETTABLEKS                       R4 R6 K4 ["error"]
       31 CALL                             R5 1 0
       32 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Value"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 2
        7 DUPTABLE                         R3 K3 [{"text", "error"}]
        8 SETTABLEKS                       R0 R3 K1 ["text"]
       10 SETTABLEKS                       R1 R3 K2 ["error"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R2 1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["Value"]
        4 JUMPIFEQ                         R0 R3 ; [+9]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["Properties"]
        9 GETTABLE                         R3 R4 R0
       10 JUMPIFEQKNIL                     R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["CanMatchAnyClass"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["getPropertyNames"]
        9 LOADK                            R3 K2 [""]
       10 CALL                             R2 1 1
       11 MOVE                             R1 R2
       12 JUMP                             ; [+24]
       13 NEWTABLE                         R2 0 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["PossibleClasses"]
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K1 ["getPropertyNames"]
       24 MOVE                             R9 R7
       25 CALL                             R8 1 3
       26 FORGPREP                         R8
       27 LOADB                            R13 1
       28 SETTABLE                         R13 R2 R12
       29 FORGLOOP                         R8 2 ; [-3]
       31 FORGLOOP                         R3 2 ; [-11]
       33 GETUPVAL                         R3 2
       34 MOVE                             R4 R2
       35 CALL                             R3 1 1
       36 MOVE                             R1 R3
       37 GETUPVAL                         R2 3
       38 MOVE                             R3 R1
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U0
       42 CALL                             R2 2 1
       43 GETUPVAL                         R3 5
       44 MOVE                             R4 R2
       45 MOVE                             R5 R0
       46 CALL                             R3 2 1
       47 GETUPVAL                         R4 6
       48 JUMPIFNOT                        R4 ; [+66]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K0 ["CanMatchAnyClass"]
       52 JUMPIF                           R4 ; [+62]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K3 ["PossibleClasses"]
       56 MOVE                             R6 R5
       57 LOADNIL                          R7
       58 LOADNIL                          R8
       59 FORGPREP                         R6
       60 JUMPIFNOTEQKS                    R10 K4 ["UICorner"] ; [+3]
       62 LOADB                            R4 1
       63 JUMP                             ; [+3]
       64 FORGLOOP                         R6 2 ; [-5]
       66 LOADB                            R4 0
       67 JUMPIFNOT                        R4 ; [+47]
       68 NEWTABLE                         R4 0 0
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K6 ["Properties"]
       73 GETTABLEKS                       R5 R6 K5 ["CornerRadius"]
       75 JUMPIFEQKNIL                     R5 ; [+10]
       77 GETUPVAL                         R5 7
       78 LOADNIL                          R6
       79 LOADNIL                          R7
       80 FORGPREP                         R5
       81 LOADB                            R10 1
       82 SETTABLE                         R10 R4 R9
       83 FORGLOOP                         R5 2 ; [-3]
       85 JUMP                             ; [+16]
       86 GETUPVAL                         R5 7
       87 LOADNIL                          R6
       88 LOADNIL                          R7
       89 FORGPREP                         R5
       90 GETUPVAL                         R11 0
       91 GETTABLEKS                       R11 R11 K6 ["Properties"]
       93 GETTABLE                         R10 R11 R9
       94 JUMPIFEQKNIL                     R10 ; [+5]
       96 LOADB                            R10 1
       97 SETTABLEKS                       R10 R4 K5 ["CornerRadius"]
       99 JUMP                             ; [+2]
      100 FORGLOOP                         R5 2 ; [-11]
      102 MOVE                             R5 R3
      103 LOADNIL                          R6
      104 LOADNIL                          R7
      105 FORGPREP                         R5
      106 GETTABLEKS                       R11 R9 K7 ["Id"]
      108 GETTABLE                         R10 R4 R11
      109 JUMPIFNOT                        R10 ; [+3]
      110 LOADB                            R10 1
      111 SETTABLEKS                       R10 R9 K8 ["Disabled"]
      113 FORGLOOP                         R5 2 ; [-8]
      115 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getPropertySchema"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Value"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETTABLEKS                       R1 R1 K1 ["StyleRuleInfo"]
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R2 K2 ["Localization"]
        8 LOADK                            R6 K3 ["Table"]
        9 LOADK                            R7 K4 ["PropertyNamePlaceholder"]
       10 NAMECALL                         R4 R3 K5 ["getText"]
       12 CALL                             R4 3 1
       13 GETUPVAL                         R5 1
       14 JUMPIFNOT                        R5 ; [+30]
       15 JUMPIFNOT                        R1 ; [+29]
       16 GETTABLEKS                       R5 R1 K6 ["Instance"]
       18 JUMPIFNOT                        R5 ; [+26]
       19 GETTABLEKS                       R5 R1 K6 ["Instance"]
       21 LOADK                            R7 K7 ["StyleRule"]
       22 NAMECALL                         R5 R5 K8 ["IsA"]
       24 CALL                             R5 2 1
       25 JUMPIFNOT                        R5 ; [+19]
       26 GETTABLEKS                       R6 R1 K9 ["PossibleClasses"]
       28 LENGTH                           R5 R6
       29 JUMPIFNOTEQKN                    R5 K10 [1] ; [+15]
       31 GETTABLEKS                       R6 R1 K9 ["PossibleClasses"]
       33 GETTABLEN                        R5 R6 1
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K11 ["ClassName"]
       37 JUMPIFNOTEQ                      R5 R6 ; [+7]
       39 LOADK                            R7 K3 ["Table"]
       40 LOADK                            R8 K12 ["ConditionNamePlaceholder"]
       41 NAMECALL                         R5 R3 K5 ["getText"]
       43 CALL                             R5 3 1
       44 MOVE                             R4 R5
       45 JUMPIF                           R1 ; [+52]
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R5 R5 K13 ["createElement"]
       49 GETUPVAL                         R6 4
       50 NEWTABLE                         R7 0 0
       52 DUPTABLE                         R8 K15 [{"Input"}]
       53 GETUPVAL                         R9 3
       54 GETTABLEKS                       R9 R9 K13 ["createElement"]
       56 GETUPVAL                         R10 5
       57 NEWTABLE                         R11 8 0
       59 LOADB                            R12 1
       60 SETTABLEKS                       R12 R11 K16 ["Disabled"]
       62 GETTABLEKS                       R13 R0 K17 ["AutomaticSize"]
       64 JUMPIFNOT                        R13 ; [+10]
       65 GETIMPORT                        R12 K20 [UDim2.new]
       67 LOADN                            R13 1
       68 LOADN                            R14 0
       69 LOADN                            R15 0
       70 GETTABLEKS                       R17 R0 K22 ["MinimumHeight"]
       72 ORK                              R16 R17 K21 [24]
       73 CALL                             R12 4 1
       74 JUMP                             ; [+5]
       75 GETIMPORT                        R12 K24 [UDim2.fromScale]
       77 LOADN                            R13 1
       78 LOADN                            R14 1
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K25 ["Size"]
       82 GETTABLEKS                       R12 R0 K26 ["Value"]
       84 SETTABLEKS                       R12 R11 K27 ["Text"]
       86 SETTABLEKS                       R4 R11 K28 ["PlaceholderText"]
       88 GETUPVAL                         R12 3
       89 GETTABLEKS                       R12 R12 K29 ["Tag"]
       91 LOADK                            R13 K30 ["PropertyCellDisabled"]
       92 SETTABLE                         R13 R11 R12
       93 CALL                             R9 2 1
       94 SETTABLEKS                       R9 R8 K14 ["Input"]
       96 CALL                             R5 3 -1
       97 RETURN                           R5 -1
       98 JUMPIFNOTEQKNIL                  R1 ; [+2]
      100 LOADB                            R6 0 +1
      101 LOADB                            R6 1
      102 FASTCALL2K                       ASSERT R6 K31 ; [+4]
      104 LOADK                            R7 K31 ["expecting valid StyleRuleInfo"]
      105 GETIMPORT                        R5 K33 [assert]
      107 CALL                             R5 2 0
      108 GETUPVAL                         R5 6
      109 DUPTABLE                         R6 K36 [{"text", "error"}]
      110 GETTABLEKS                       R7 R0 K26 ["Value"]
      112 SETTABLEKS                       R7 R6 K34 ["text"]
      114 GETUPVAL                         R7 7
      115 GETTABLEKS                       R7 R7 K37 ["None"]
      117 SETTABLEKS                       R7 R6 K35 ["error"]
      119 CALL                             R5 1 2
      120 NEWCLOSURE                       R7 P0
      121 CAPTURE                          VAL R1
      122 CAPTURE                          UPVAL U8
      123 CAPTURE                          UPVAL U7
      124 CAPTURE                          UPVAL U9
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          VAL R0
      127 NEWCLOSURE                       R8 P1
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R6
      130 NEWCLOSURE                       R9 P2
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R6
      133 NEWCLOSURE                       R10 P3
      134 CAPTURE                          VAL R7
      135 CAPTURE                          UPVAL U7
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R6
      138 GETUPVAL                         R11 11
      139 NEWCLOSURE                       R12 P4
      140 CAPTURE                          VAL R0
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R6
      143 NEWTABLE                         R13 0 2
      145 GETTABLEKS                       R14 R0 K0 ["Schema"]
      147 GETTABLEKS                       R15 R0 K26 ["Value"]
      149 SETLIST                          R13 R14 2 [1]
      151 CALL                             R11 2 0
      152 NEWCLOSURE                       R11 P5
      153 CAPTURE                          VAL R1
      154 CAPTURE                          UPVAL U8
      155 CAPTURE                          UPVAL U12
      156 CAPTURE                          UPVAL U13
      157 CAPTURE                          VAL R0
      158 CAPTURE                          UPVAL U14
      159 CAPTURE                          UPVAL U9
      160 CAPTURE                          UPVAL U10
      161 GETUPVAL                         R12 8
      162 GETTABLEKS                       R12 R12 K38 ["getPossiblePropertyTypes"]
      164 GETTABLEKS                       R13 R5 K34 ["text"]
      166 CALL                             R12 1 1
      167 NEWTABLE                         R13 0 0
      169 LENGTH                           R14 R12
      170 LOADN                            R15 0
      171 JUMPIFNOTLT                      R15 R14 ; [+11]
      173 MOVE                             R15 R13
      174 GETIMPORT                        R16 K41 [table.concat]
      176 MOVE                             R17 R12
      177 LOADK                            R18 K42 [", "]
      178 CALL                             R16 2 -1
      179 FASTCALL                         TABLE_INSERT ; [+2]
      180 GETIMPORT                        R14 K44 [table.insert]
      182 CALL                             R14 -1 0
      183 GETTABLEKS                       R14 R1 K45 ["CanMatchAnyClass"]
      185 JUMPIF                           R14 ; [+25]
      186 GETUPVAL                         R14 13
      187 GETTABLEKS                       R15 R1 K9 ["PossibleClasses"]
      189 NEWCLOSURE                       R16 P6
      190 CAPTURE                          UPVAL U8
      191 CAPTURE                          VAL R0
      192 CALL                             R14 2 1
      193 GETIMPORT                        R15 K41 [table.concat]
      195 MOVE                             R16 R14
      196 LOADK                            R17 K42 [", "]
      197 CALL                             R15 2 1
      198 MOVE                             R17 R13
      199 LOADK                            R20 K46 ["Label"]
      200 LOADK                            R21 K47 ["PropertyAppliesTo"]
      201 DUPTABLE                         R22 K49 [{"classList"}]
      202 SETTABLEKS                       R15 R22 K48 ["classList"]
      204 NAMECALL                         R18 R3 K5 ["getText"]
      206 CALL                             R18 4 -1
      207 FASTCALL                         TABLE_INSERT ; [+2]
      208 GETIMPORT                        R16 K44 [table.insert]
      210 CALL                             R16 -1 0
      211 GETTABLEKS                       R15 R5 K35 ["error"]
      213 GETUPVAL                         R16 7
      214 GETTABLEKS                       R16 R16 K37 ["None"]
      216 JUMPIFNOTEQ                      R15 R16 ; [+2]
      218 LOADB                            R14 0 +1
      219 LOADB                            R14 1
      220 DUPTABLE                         R15 K51 [{"type"}]
      221 GETIMPORT                        R16 K41 [table.concat]
      223 GETTABLEKS                       R17 R1 K9 ["PossibleClasses"]
      225 LOADK                            R18 K42 [", "]
      226 CALL                             R16 2 1
      227 SETTABLEKS                       R16 R15 K50 ["type"]
      229 GETUPVAL                         R16 9
      230 JUMPIFNOT                        R16 ; [+29]
      231 GETTABLEKS                       R16 R5 K35 ["error"]
      233 GETUPVAL                         R17 7
      234 GETTABLEKS                       R17 R17 K52 ["ConflictsWithProperty"]
      236 JUMPIFNOTEQ                      R16 R17 ; [+23]
      238 GETTABLEKS                       R16 R5 K34 ["text"]
      240 JUMPIFNOTEQKS                    R16 K53 ["CornerRadius"] ; [+16]
      242 GETUPVAL                         R16 10
      243 LOADNIL                          R17
      244 LOADNIL                          R18
      245 FORGPREP                         R16
      246 GETTABLEKS                       R22 R1 K54 ["Properties"]
      248 GETTABLE                         R21 R22 R20
      249 JUMPIFEQKNIL                     R21 ; [+4]
      251 SETTABLEKS                       R20 R15 K55 ["otherProperty"]
      253 JUMP                             ; [+6]
      254 FORGLOOP                         R16 2 ; [-9]
      256 JUMP                             ; [+3]
      257 LOADK                            R16 K53 ["CornerRadius"]
      258 SETTABLEKS                       R16 R15 K55 ["otherProperty"]
      260 GETUPVAL                         R16 15
      261 MOVE                             R17 R3
      262 GETTABLEKS                       R18 R5 K35 ["error"]
      264 MOVE                             R19 R15
      265 CALL                             R16 3 1
      266 GETUPVAL                         R17 3
      267 GETTABLEKS                       R17 R17 K13 ["createElement"]
      269 GETUPVAL                         R18 4
      270 NEWTABLE                         R19 0 0
      272 DUPTABLE                         R20 K57 [{"Input", "Tooltip"}]
      273 GETUPVAL                         R21 3
      274 GETTABLEKS                       R21 R21 K13 ["createElement"]
      276 GETUPVAL                         R22 5
      277 NEWTABLE                         R23 16 0
      279 GETTABLEKS                       R24 R0 K16 ["Disabled"]
      281 SETTABLEKS                       R24 R23 K16 ["Disabled"]
      283 DUPTABLE                         R24 K59 [{"ItemHeight"}]
      284 GETTABLEKS                       R25 R0 K0 ["Schema"]
      286 GETTABLEKS                       R25 R25 K58 ["ItemHeight"]
      288 SETTABLEKS                       R25 R24 K58 ["ItemHeight"]
      290 SETTABLEKS                       R24 R23 K60 ["DropdownMenuProps"]
      292 SETTABLEKS                       R9 R23 K61 ["OnTextChanged"]
      294 SETTABLEKS                       R10 R23 K62 ["OnFocusLost"]
      296 GETTABLEKS                       R25 R0 K17 ["AutomaticSize"]
      298 JUMPIFNOT                        R25 ; [+10]
      299 GETIMPORT                        R24 K20 [UDim2.new]
      301 LOADN                            R25 1
      302 LOADN                            R26 0
      303 LOADN                            R27 0
      304 GETTABLEKS                       R29 R0 K22 ["MinimumHeight"]
      306 ORK                              R28 R29 K21 [24]
      307 CALL                             R24 4 1
      308 JUMP                             ; [+5]
      309 GETIMPORT                        R24 K24 [UDim2.fromScale]
      311 LOADN                            R25 1
      312 LOADN                            R26 1
      313 CALL                             R24 2 1
      314 SETTABLEKS                       R24 R23 K25 ["Size"]
      316 GETTABLEKS                       R24 R5 K34 ["text"]
      318 SETTABLEKS                       R24 R23 K27 ["Text"]
      320 SETTABLEKS                       R11 R23 K63 ["GetAutocompleteItems"]
      322 SETTABLEKS                       R4 R23 K28 ["PlaceholderText"]
      324 GETUPVAL                         R24 3
      325 GETTABLEKS                       R24 R24 K29 ["Tag"]
      327 JUMPIFNOT                        R14 ; [+6]
      328 GETTABLEKS                       R26 R0 K0 ["Schema"]
      330 GETTABLEKS                       R26 R26 K65 ["ErrorStyle"]
      332 ORK                              R25 R26 K64 ["PropertyCellError"]
      333 JUMP                             ; [+1]
      334 LOADNIL                          R25
      335 SETTABLE                         R25 R23 R24
      336 CALL                             R21 2 1
      337 SETTABLEKS                       R21 R20 K14 ["Input"]
      339 LOADB                            R21 0
      340 GETTABLEKS                       R23 R5 K34 ["text"]
      342 LENGTH                           R22 R23
      343 LOADN                            R23 0
      344 JUMPIFNOTLT                      R23 R22 ; [+20]
      346 GETUPVAL                         R21 3
      347 GETTABLEKS                       R21 R21 K13 ["createElement"]
      349 GETUPVAL                         R22 16
      350 DUPTABLE                         R23 K67 [{"Text", "MaxWidth"}]
      351 JUMPIFNOT                        R14 ; [+2]
      352 MOVE                             R24 R16
      353 JUMP                             ; [+5]
      354 GETIMPORT                        R24 K41 [table.concat]
      356 MOVE                             R25 R13
      357 LOADK                            R26 K68 ["\n"]
      358 CALL                             R24 2 1
      359 SETTABLEKS                       R24 R23 K27 ["Text"]
      361 GETUPVAL                         R24 17
      362 SETTABLEKS                       R24 R23 K66 ["MaxWidth"]
      364 CALL                             R21 2 1
      365 SETTABLEKS                       R21 R20 K56 ["Tooltip"]
      367 CALL                             R17 3 -1
      368 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useState"]
       18 GETTABLEKS                       R3 R1 K8 ["useEffect"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K5 ["Packages"]
       24 GETTABLEKS                       R5 R5 K9 ["Framework"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R5 R4 K10 ["UI"]
       29 GETTABLEKS                       R5 R5 K11 ["Tooltip"]
       31 GETTABLEKS                       R6 R4 K10 ["UI"]
       33 GETTABLEKS                       R6 R6 K12 ["Pane"]
       35 GETTABLEKS                       R7 R4 K10 ["UI"]
       37 GETTABLEKS                       R7 R7 K13 ["TextInput"]
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R9 R0 K5 ["Packages"]
       43 GETTABLEKS                       R9 R9 K14 ["Dash"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R8 K15 ["filter"]
       48 GETTABLEKS                       R10 R8 K16 ["keys"]
       50 GETIMPORT                        R11 K4 [require]
       52 GETIMPORT                        R12 K1 [script]
       54 GETTABLEKS                       R12 R12 K17 ["localizePropertyNameError"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K4 [require]
       59 GETTABLEKS                       R13 R0 K18 ["Src"]
       61 GETTABLEKS                       R13 R13 K19 ["Renderers"]
       63 GETTABLEKS                       R13 R13 K20 ["RendererTypes"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K4 [require]
       68 GETTABLEKS                       R14 R0 K18 ["Src"]
       70 GETTABLEKS                       R14 R14 K21 ["Util"]
       72 GETTABLEKS                       R14 R14 K22 ["getAutocompleteItems"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K4 [require]
       77 GETTABLEKS                       R15 R0 K18 ["Src"]
       79 GETTABLEKS                       R15 R15 K23 ["Enums"]
       81 GETTABLEKS                       R15 R15 K24 ["PropertyNameValidationError"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K4 [require]
       86 GETTABLEKS                       R16 R0 K18 ["Src"]
       88 GETTABLEKS                       R16 R16 K21 ["Util"]
       90 GETTABLEKS                       R16 R16 K25 ["StyleSchema"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K4 [require]
       95 GETTABLEKS                       R17 R0 K18 ["Src"]
       97 GETTABLEKS                       R17 R17 K26 ["Hooks"]
       99 GETTABLEKS                       R17 R17 K27 ["useFrameworkContext"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K4 [require]
      104 GETTABLEKS                       R18 R0 K18 ["Src"]
      106 GETTABLEKS                       R18 R18 K21 ["Util"]
      108 GETTABLEKS                       R18 R18 K28 ["StyleQueryHelpers"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K4 [require]
      113 GETTABLEKS                       R19 R0 K18 ["Src"]
      115 GETTABLEKS                       R19 R19 K29 ["Resources"]
      117 GETTABLEKS                       R19 R19 K30 ["PluginStyles"]
      119 CALL                             R18 1 1
      120 LOADK                            R21 K31 ["TooltipMaxWidth"]
      121 NAMECALL                         R19 R18 K32 ["GetAttribute"]
      123 CALL                             R19 2 1
      124 GETIMPORT                        R20 K4 [require]
      126 GETTABLEKS                       R21 R0 K18 ["Src"]
      128 GETTABLEKS                       R21 R21 K33 ["Flags"]
      130 GETTABLEKS                       R21 R21 K34 ["getFFlagStyleQuery"]
      132 CALL                             R20 1 1
      133 CALL                             R20 0 1
      134 GETIMPORT                        R21 K4 [require]
      136 GETTABLEKS                       R22 R0 K18 ["Src"]
      138 GETTABLEKS                       R22 R22 K33 ["Flags"]
      140 GETTABLEKS                       R22 R22 K35 ["getEngineFeatureEnableIRCStudioBeta"]
      142 CALL                             R21 1 1
      143 CALL                             R21 0 1
      144 GETIMPORT                        R22 K4 [require]
      146 GETTABLEKS                       R23 R0 K18 ["Src"]
      148 GETTABLEKS                       R23 R23 K36 ["Types"]
      150 CALL                             R22 1 1
      151 NEWTABLE                         R23 0 4
      153 LOADK                            R24 K37 ["TopLeftRadius"]
      154 LOADK                            R25 K38 ["TopRightRadius"]
      155 LOADK                            R26 K39 ["BottomLeftRadius"]
      156 LOADK                            R27 K40 ["BottomRightRadius"]
      157 SETLIST                          R23 R24 4 [1]
      159 DUPCLOSURE                       R24 K41 [PROTO_0]
      160 DUPCLOSURE                       R25 K42 [PROTO_1]
      161 CAPTURE                          VAL R15
      162 DUPCLOSURE                       R26 K43 [PROTO_10]
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R17
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R7
      169 CAPTURE                          VAL R2
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R15
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R19
      181 RETURN                           R26 1
