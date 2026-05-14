PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 2
        4 CALL                             R3 0 1
        5 GETUPVAL                         R4 3
        6 CALL                             R4 0 1
        7 GETTABLEKS                       R5 R4 K0 ["Localization"]
        9 NEWTABLE                         R6 0 0
       11 GETTABLEKS                       R8 R0 K1 ["TokenInfo"]
       13 GETTABLEKS                       R8 R8 K2 ["Error"]
       15 GETUPVAL                         R9 4
       16 GETTABLEKS                       R9 R9 K3 ["None"]
       18 JUMPIFNOTEQ                      R8 R9 ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 JUMPIFNOT                        R7 ; [+77]
       23 GETUPVAL                         R9 5
       24 GETTABLEKS                       R10 R0 K1 ["TokenInfo"]
       26 GETTABLEKS                       R10 R10 K2 ["Error"]
       28 GETTABLE                         R8 R9 R10
       29 JUMPIF                           R8 ; [+3]
       30 GETUPVAL                         R8 5
       31 GETTABLEKS                       R8 R8 K4 ["Unknown"]
       33 LOADK                            R11 K5 ["Label"]
       34 MOVE                             R12 R8
       35 DUPTABLE                         R13 K8 [{"expectedType", "actualType"}]
       36 GETTABLEKS                       R15 R0 K1 ["TokenInfo"]
       38 GETTABLEKS                       R15 R15 K9 ["ExpectedTypes"]
       40 JUMPIFNOT                        R15 ; [+9]
       41 GETIMPORT                        R14 K12 [table.concat]
       43 GETTABLEKS                       R15 R0 K1 ["TokenInfo"]
       45 GETTABLEKS                       R15 R15 K9 ["ExpectedTypes"]
       47 LOADK                            R16 K13 [", "]
       48 CALL                             R14 2 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R14
       51 SETTABLEKS                       R14 R13 K6 ["expectedType"]
       53 GETTABLEKS                       R15 R0 K1 ["TokenInfo"]
       55 GETTABLEKS                       R15 R15 K14 ["Value"]
       57 FASTCALL1                        TYPEOF R15 ; [+2]
       58 GETIMPORT                        R14 K16 [typeof]
       60 CALL                             R14 1 1
       61 SETTABLEKS                       R14 R13 K7 ["actualType"]
       63 NAMECALL                         R9 R5 K17 ["getText"]
       65 CALL                             R9 4 1
       66 DUPTABLE                         R10 K19 [{"ErrorLabel"}]
       67 GETUPVAL                         R11 6
       68 GETTABLEKS                       R11 R11 K20 ["createElement"]
       70 GETUPVAL                         R12 7
       71 NEWTABLE                         R13 4 0
       73 MOVE                             R14 R3
       74 CALL                             R14 0 1
       75 SETTABLEKS                       R14 R13 K21 ["LayoutOrder"]
       77 GETIMPORT                        R14 K24 [UDim2.fromOffset]
       79 LOADN                            R15 0
       80 GETUPVAL                         R16 8
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K25 ["Size"]
       84 SETTABLEKS                       R9 R13 K26 ["Text"]
       86 GETUPVAL                         R14 6
       87 GETTABLEKS                       R14 R14 K27 ["Tag"]
       89 GETUPVAL                         R15 9
       90 LOADK                            R16 K28 ["X-FitX"]
       91 GETTABLEKS                       R17 R0 K29 ["ErrorStyle"]
       93 CALL                             R15 2 1
       94 SETTABLE                         R15 R13 R14
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K18 ["ErrorLabel"]
       98 MOVE                             R6 R10
       99 JUMP                             ; [+131]
      100 DUPTABLE                         R8 K33 [{"ValuePreview", "TypeLabel", "SourceContainer"}]
      101 GETUPVAL                         R9 6
      102 GETTABLEKS                       R9 R9 K20 ["createElement"]
      104 GETUPVAL                         R10 10
      105 DUPTABLE                         R11 K35 [{"LayoutOrder", "TokenValue"}]
      106 MOVE                             R12 R3
      107 CALL                             R12 0 1
      108 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
      110 GETTABLEKS                       R12 R0 K1 ["TokenInfo"]
      112 GETTABLEKS                       R12 R12 K14 ["Value"]
      114 SETTABLEKS                       R12 R11 K34 ["TokenValue"]
      116 CALL                             R9 2 1
      117 SETTABLEKS                       R9 R8 K30 ["ValuePreview"]
      119 GETUPVAL                         R9 6
      120 GETTABLEKS                       R9 R9 K20 ["createElement"]
      122 GETUPVAL                         R10 7
      123 NEWTABLE                         R11 4 0
      125 MOVE                             R12 R3
      126 CALL                             R12 0 1
      127 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
      129 GETIMPORT                        R12 K24 [UDim2.fromOffset]
      131 LOADN                            R13 0
      132 GETUPVAL                         R14 8
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K25 ["Size"]
      136 GETIMPORT                        R12 K38 [string.format]
      138 LOADK                            R13 K39 ["%s"]
      139 GETTABLEKS                       R15 R0 K1 ["TokenInfo"]
      141 GETTABLEKS                       R15 R15 K14 ["Value"]
      143 FASTCALL1                        TYPEOF R15 ; [+2]
      144 GETIMPORT                        R14 K16 [typeof]
      146 CALL                             R14 1 1
      147 CALL                             R12 2 1
      148 SETTABLEKS                       R12 R11 K26 ["Text"]
      150 GETUPVAL                         R12 6
      151 GETTABLEKS                       R12 R12 K27 ["Tag"]
      153 LOADK                            R13 K28 ["X-FitX"]
      154 SETTABLE                         R13 R11 R12
      155 CALL                             R9 2 1
      156 SETTABLEKS                       R9 R8 K31 ["TypeLabel"]
      158 GETTABLEKS                       R9 R0 K1 ["TokenInfo"]
      160 GETTABLEKS                       R9 R9 K40 ["Source"]
      162 JUMPIFNOT                        R9 ; [+65]
      163 GETUPVAL                         R9 6
      164 GETTABLEKS                       R9 R9 K20 ["createElement"]
      166 GETUPVAL                         R10 11
      167 NEWTABLE                         R11 2 0
      169 MOVE                             R12 R3
      170 CALL                             R12 0 1
      171 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
      173 GETUPVAL                         R12 6
      174 GETTABLEKS                       R12 R12 K27 ["Tag"]
      176 LOADK                            R13 K41 ["X-Fit X-Row"]
      177 SETTABLE                         R13 R11 R12
      178 DUPTABLE                         R12 K44 [{"LeadingLabel", "SourceLink"}]
      179 GETUPVAL                         R13 6
      180 GETTABLEKS                       R13 R13 K20 ["createElement"]
      182 GETUPVAL                         R14 7
      183 NEWTABLE                         R15 4 0
      185 LOADN                            R16 1
      186 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      188 GETIMPORT                        R16 K24 [UDim2.fromOffset]
      190 LOADN                            R17 0
      191 GETUPVAL                         R18 8
      192 CALL                             R16 2 1
      193 SETTABLEKS                       R16 R15 K25 ["Size"]
      195 LOADK                            R18 K5 ["Label"]
      196 LOADK                            R19 K45 ["TokenDefinedIn"]
      197 NAMECALL                         R16 R5 K17 ["getText"]
      199 CALL                             R16 3 1
      200 SETTABLEKS                       R16 R15 K26 ["Text"]
      202 GETUPVAL                         R16 6
      203 GETTABLEKS                       R16 R16 K27 ["Tag"]
      205 LOADK                            R17 K28 ["X-FitX"]
      206 SETTABLE                         R17 R15 R16
      207 CALL                             R13 2 1
      208 SETTABLEKS                       R13 R12 K42 ["LeadingLabel"]
      210 GETUPVAL                         R13 6
      211 GETTABLEKS                       R13 R13 K20 ["createElement"]
      213 GETUPVAL                         R14 12
      214 DUPTABLE                         R15 K46 [{"Source", "LayoutOrder"}]
      215 GETTABLEKS                       R16 R0 K1 ["TokenInfo"]
      217 GETTABLEKS                       R16 R16 K40 ["Source"]
      219 SETTABLEKS                       R16 R15 K40 ["Source"]
      221 LOADN                            R16 2
      222 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      224 CALL                             R13 2 1
      225 SETTABLEKS                       R13 R12 K43 ["SourceLink"]
      227 CALL                             R9 3 1
      228 SETTABLEKS                       R9 R8 K32 ["SourceContainer"]
      230 MOVE                             R6 R8
      231 GETUPVAL                         R8 6
      232 GETTABLEKS                       R8 R8 K20 ["createElement"]
      234 GETUPVAL                         R9 13
      235 DUPTABLE                         R10 K49 [{"Content", "ContentExtents"}]
      236 GETUPVAL                         R11 6
      237 GETTABLEKS                       R11 R11 K20 ["createElement"]
      239 GETUPVAL                         R12 11
      240 NEWTABLE                         R13 2 0
      242 GETUPVAL                         R14 6
      243 GETTABLEKS                       R14 R14 K27 ["Tag"]
      245 LOADK                            R15 K50 ["X-Column X-Fit"]
      246 SETTABLE                         R15 R13 R14
      247 GETUPVAL                         R14 6
      248 GETTABLEKS                       R14 R14 K51 ["Change"]
      250 GETTABLEKS                       R14 R14 K52 ["AbsoluteSize"]
      252 NEWCLOSURE                       R15 P0
      253 CAPTURE                          VAL R2
      254 SETTABLE                         R15 R13 R14
      255 MOVE                             R14 R6
      256 CALL                             R11 3 1
      257 SETTABLEKS                       R11 R10 K47 ["Content"]
      259 SETTABLEKS                       R1 R10 K48 ["ContentExtents"]
      261 CALL                             R8 2 -1
      262 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["useState"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K5 ["Packages"]
       24 GETTABLEKS                       R4 R4 K8 ["Framework"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K9 ["UI"]
       29 GETTABLEKS                       R4 R4 K10 ["Pane"]
       31 GETTABLEKS                       R5 R3 K9 ["UI"]
       33 GETTABLEKS                       R5 R5 K11 ["TextLabel"]
       35 GETTABLEKS                       R6 R3 K9 ["UI"]
       37 GETTABLEKS                       R6 R6 K12 ["Tooltip"]
       39 GETTABLEKS                       R7 R3 K13 ["Styling"]
       41 GETTABLEKS                       R7 R7 K14 ["joinTags"]
       43 GETIMPORT                        R8 K4 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       49 GETTABLEKS                       R9 R9 K17 ["useLayoutOrderCounter"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K4 [require]
       54 GETTABLEKS                       R10 R0 K15 ["Src"]
       56 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       58 GETTABLEKS                       R10 R10 K18 ["useFrameworkContext"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K4 [require]
       63 GETTABLEKS                       R11 R0 K15 ["Src"]
       65 GETTABLEKS                       R11 R11 K19 ["Enums"]
       67 GETTABLEKS                       R11 R11 K20 ["TokenValidationError"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K4 [require]
       72 GETTABLEKS                       R12 R0 K15 ["Src"]
       74 GETTABLEKS                       R12 R12 K21 ["Resources"]
       76 GETTABLEKS                       R12 R12 K22 ["PluginStyles"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K4 [require]
       81 GETTABLEKS                       R13 R0 K15 ["Src"]
       83 GETTABLEKS                       R13 R13 K23 ["Reducers"]
       85 GETTABLEKS                       R13 R13 K24 ["RootReducer"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K4 [require]
       90 GETIMPORT                        R14 K1 [script]
       92 GETTABLEKS                       R14 R14 K2 ["Parent"]
       94 GETTABLEKS                       R14 R14 K25 ["TokenSourceLink"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K4 [require]
       99 GETIMPORT                        R15 K1 [script]
      101 GETTABLEKS                       R15 R15 K2 ["Parent"]
      103 GETTABLEKS                       R15 R15 K26 ["TokenValuePreview"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K4 [require]
      108 GETIMPORT                        R16 K1 [script]
      110 GETTABLEKS                       R16 R16 K2 ["Parent"]
      112 GETTABLEKS                       R16 R16 K27 ["Types"]
      114 CALL                             R15 1 1
      115 GETIMPORT                        R16 K30 [Vector2.new]
      117 LOADN                            R17 94
      118 LOADN                            R18 60
      119 CALL                             R16 2 1
      120 LOADK                            R19 K31 ["TokenTooltipRowHeight"]
      121 NAMECALL                         R17 R11 K32 ["GetAttribute"]
      123 CALL                             R17 2 1
      124 NEWTABLE                         R18 8 0
      126 GETTABLEKS                       R19 R10 K33 ["IncorrectType"]
      128 LOADK                            R20 K34 ["TokenErrorIncorrectType"]
      129 SETTABLE                         R20 R18 R19
      130 GETTABLEKS                       R19 R10 K35 ["DoesNotExist"]
      132 LOADK                            R20 K36 ["TokenErrorDoesNotExist"]
      133 SETTABLE                         R20 R18 R19
      134 GETTABLEKS                       R19 R10 K37 ["InvalidSyntax"]
      136 LOADK                            R20 K38 ["TokenErrorInvalidSyntax"]
      137 SETTABLE                         R20 R18 R19
      138 GETTABLEKS                       R19 R10 K39 ["CyclicReference"]
      140 LOADK                            R20 K40 ["TokenErrorCyclicReference"]
      141 SETTABLE                         R20 R18 R19
      142 LOADK                            R19 K41 ["ErrorUnknown"]
      143 SETTABLEKS                       R19 R18 K42 ["Unknown"]
      145 DUPCLOSURE                       R19 K43 [PROTO_1]
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R1
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R14
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R6
      160 RETURN                           R19 1
