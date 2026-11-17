PROTO_0:
        0 LOADN                            R2 5
        1 JUMPIFNOTLT                      R1 R2 ; [+10]
        3 GETTABLEKS                       R2 R0 K0 ["Color"]
        5 GETTABLEKS                       R2 R2 K1 ["System"]
        7 GETTABLEKS                       R2 R2 K2 ["Success"]
        9 GETTABLEKS                       R2 R2 K3 ["Color3"]
       11 RETURN                           R2 1
       12 LOADN                            R2 10
       13 JUMPIFNOTLE                      R1 R2 ; [+10]
       15 GETTABLEKS                       R2 R0 K0 ["Color"]
       17 GETTABLEKS                       R2 R2 K1 ["System"]
       19 GETTABLEKS                       R2 R2 K4 ["Warning"]
       21 GETTABLEKS                       R2 R2 K3 ["Color3"]
       23 RETURN                           R2 1
       24 GETTABLEKS                       R2 R0 K0 ["Color"]
       26 GETTABLEKS                       R2 R2 K1 ["System"]
       28 GETTABLEKS                       R2 R2 K5 ["Alert"]
       30 GETTABLEKS                       R2 R2 K3 ["Color3"]
       32 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["history"]
        4 GETTABLEKS                       R3 R1 K1 ["Color"]
        6 GETTABLEKS                       R3 R3 K2 ["Content"]
        8 GETTABLEKS                       R3 R3 K3 ["Muted"]
       10 GETTABLEKS                       R4 R0 K4 ["width"]
       12 JUMPIF                           R4 ; [+1]
       13 GETUPVAL                         R4 1
       14 GETUPVAL                         R6 2
       15 ADDK                             R5 R6 K5 [1]
       16 SUB                              R7 R4 R5
       17 SUBK                             R6 R7 K5 [1]
       18 GETUPVAL                         R8 3
       19 DIV                              R7 R6 R8
       20 LOADN                            R9 1
       21 FASTCALL2                        MATH_MAX R9 R7 ; [+4]
       23 MOVE                             R10 R7
       24 GETIMPORT                        R8 K8 [math.max]
       26 CALL                             R8 2 1
       27 ADD                              R9 R5 R6
       28 GETUPVAL                         R12 4
       29 SUBK                             R11 R12 K9 [6]
       30 GETUPVAL                         R12 5
       31 SUB                              R10 R11 R12
       32 DUPTABLE                         R11 K12 [{"VAxis", "HAxis"}]
       33 GETUPVAL                         R12 6
       34 GETTABLEKS                       R12 R12 K13 ["createElement"]
       36 GETUPVAL                         R13 7
       37 GETTABLEKS                       R13 R13 K14 ["View"]
       39 DUPTABLE                         R14 K18 [{"Position", "Size", "backgroundStyle"}]
       40 GETIMPORT                        R15 K21 [UDim2.fromOffset]
       42 GETUPVAL                         R16 2
       43 LOADN                            R17 0
       44 CALL                             R15 2 1
       45 SETTABLEKS                       R15 R14 K15 ["Position"]
       47 GETIMPORT                        R15 K21 [UDim2.fromOffset]
       49 LOADN                            R16 1
       50 MOVE                             R17 R10
       51 CALL                             R15 2 1
       52 SETTABLEKS                       R15 R14 K16 ["Size"]
       54 SETTABLEKS                       R3 R14 K17 ["backgroundStyle"]
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K10 ["VAxis"]
       59 GETUPVAL                         R12 6
       60 GETTABLEKS                       R12 R12 K13 ["createElement"]
       62 GETUPVAL                         R13 7
       63 GETTABLEKS                       R13 R13 K14 ["View"]
       65 DUPTABLE                         R14 K18 [{"Position", "Size", "backgroundStyle"}]
       66 GETIMPORT                        R15 K21 [UDim2.fromOffset]
       68 GETUPVAL                         R16 2
       69 MOVE                             R17 R10
       70 CALL                             R15 2 1
       71 SETTABLEKS                       R15 R14 K15 ["Position"]
       73 GETIMPORT                        R15 K21 [UDim2.fromOffset]
       75 LOADN                            R17 1
       76 GETUPVAL                         R19 2
       77 SUB                              R18 R4 R19
       78 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
       80 GETIMPORT                        R16 K8 [math.max]
       82 CALL                             R16 2 1
       83 LOADN                            R17 1
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K16 ["Size"]
       87 SETTABLEKS                       R3 R14 K17 ["backgroundStyle"]
       89 CALL                             R12 2 1
       90 SETTABLEKS                       R12 R11 K11 ["HAxis"]
       92 LENGTH                           R12 R2
       93 LOADN                            R15 1
       94 MOVE                             R13 R12
       95 LOADN                            R14 1
       96 FORNPREP                         R13
       97 GETTABLE                         R17 R2 R15
       98 ORK                              R16 R17 K22 [0]
       99 GETUPVAL                         R19 8
      100 DIV                              R18 R16 R19
      101 LOADN                            R19 0
      102 LOADN                            R20 1
      103 FASTCALL                         MATH_CLAMP ; [+2]
      104 GETIMPORT                        R17 K24 [math.clamp]
      106 CALL                             R17 3 1
      107 GETUPVAL                         R23 9
      108 SUBRK                            R22 K5 [1] R23
      109 MUL                              R21 R17 R22
      110 MUL                              R20 R21 R10
      111 ADDK                             R19 R20 K25 [0.5]
      112 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      113 GETIMPORT                        R18 K27 [math.floor]
      115 CALL                             R18 1 1
      116 LOADN                            R19 0
      117 JUMPIFNOTLT                      R19 R16 ; [+9]
      119 LOADN                            R20 1
      120 FASTCALL2                        MATH_MAX R20 R18 ; [+4]
      122 MOVE                             R21 R18
      123 GETIMPORT                        R19 K8 [math.max]
      125 CALL                             R19 2 1
      126 MOVE                             R18 R19
      127 SUB                              R19 R12 R15
      128 ADDK                             R22 R19 K5 [1]
      129 MUL                              R21 R22 R7
      130 SUB                              R20 R9 R21
      131 SUB                              R23 R7 R8
      132 DIVK                             R22 R23 K28 [2]
      133 ADD                              R21 R20 R22
      134 LOADK                            R23 K29 ["bar"]
      135 MOVE                             R24 R15
      136 CONCAT                           R22 R23 R24
      137 GETUPVAL                         R23 6
      138 GETTABLEKS                       R23 R23 K13 ["createElement"]
      140 GETUPVAL                         R24 7
      141 GETTABLEKS                       R24 R24 K14 ["View"]
      143 DUPTABLE                         R25 K18 [{"Position", "Size", "backgroundStyle"}]
      144 GETIMPORT                        R26 K21 [UDim2.fromOffset]
      146 ADDK                             R28 R21 K25 [0.5]
      147 FASTCALL1                        MATH_FLOOR R28 ; [+2]
      148 GETIMPORT                        R27 K27 [math.floor]
      150 CALL                             R27 1 1
      151 SUB                              R28 R10 R18
      152 CALL                             R26 2 1
      153 SETTABLEKS                       R26 R25 K15 ["Position"]
      155 GETIMPORT                        R26 K21 [UDim2.fromOffset]
      157 MOVE                             R27 R8
      158 MOVE                             R28 R18
      159 CALL                             R26 2 1
      160 SETTABLEKS                       R26 R25 K16 ["Size"]
      162 DUPTABLE                         R26 K31 [{"Color3"}]
      163 LOADN                            R28 5
      164 JUMPIFNOTLT                      R16 R28 ; [+10]
      166 GETTABLEKS                       R27 R1 K1 ["Color"]
      168 GETTABLEKS                       R27 R27 K32 ["System"]
      170 GETTABLEKS                       R27 R27 K33 ["Success"]
      172 GETTABLEKS                       R27 R27 K30 ["Color3"]
      174 JUMP                             ; [+20]
      175 LOADN                            R28 10
      176 JUMPIFNOTLE                      R16 R28 ; [+10]
      178 GETTABLEKS                       R27 R1 K1 ["Color"]
      180 GETTABLEKS                       R27 R27 K32 ["System"]
      182 GETTABLEKS                       R27 R27 K34 ["Warning"]
      184 GETTABLEKS                       R27 R27 K30 ["Color3"]
      186 JUMP                             ; [+8]
      187 GETTABLEKS                       R27 R1 K1 ["Color"]
      189 GETTABLEKS                       R27 R27 K32 ["System"]
      191 GETTABLEKS                       R27 R27 K35 ["Alert"]
      193 GETTABLEKS                       R27 R27 K30 ["Color3"]
      195 SETTABLEKS                       R27 R26 K30 ["Color3"]
      197 SETTABLEKS                       R26 R25 K17 ["backgroundStyle"]
      199 CALL                             R23 2 1
      200 SETTABLE                         R23 R11 R22
      201 FORNLOOP                         R13
      202 GETUPVAL                         R13 6
      203 GETTABLEKS                       R13 R13 K13 ["createElement"]
      205 GETUPVAL                         R14 7
      206 GETTABLEKS                       R14 R14 K14 ["View"]
      208 DUPTABLE                         R15 K36 [{"Position", "Size"}]
      209 GETTABLEKS                       R16 R0 K15 ["Position"]
      211 SETTABLEKS                       R16 R15 K15 ["Position"]
      213 GETTABLEKS                       R16 R0 K16 ["Size"]
      215 SETTABLEKS                       R16 R15 K16 ["Size"]
      217 MOVE                             R16 R11
      218 CALL                             R13 3 -1
      219 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CollectionDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Hooks"]
       23 GETTABLEKS                       R3 R3 K10 ["useTokens"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETIMPORT                        R5 K1 [script]
       29 GETTABLEKS                       R5 R5 K11 ["Parent"]
       31 GETTABLEKS                       R5 R5 K12 ["constants"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["ROW_HEIGHT"]
       36 GETTABLEKS                       R6 R4 K14 ["GRAPH_W"]
       38 GETTABLEKS                       R7 R4 K15 ["GRAPH_MAX_MS"]
       40 GETTABLEKS                       R8 R4 K16 ["HISTORY_SLOTS"]
       42 GETTABLEKS                       R9 R4 K17 ["BAR_TOP_HEADROOM"]
       44 GETTABLEKS                       R10 R4 K18 ["AXIS_LEFT"]
       46 GETTABLEKS                       R11 R4 K19 ["AXIS_BOTTOM"]
       48 DUPCLOSURE                       R12 K20 [PROTO_0]
       49 DUPCLOSURE                       R13 K21 [PROTO_1]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R10
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R11
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R9
       60 RETURN                           R13 1
