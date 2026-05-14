PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Id"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 LOADK                            R3 K0 [∞]
        3 FASTCALL                         MATH_CLAMP ; [+2]
        4 GETIMPORT                        R0 K3 [math.clamp]
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R0 R1
        4 FASTCALL1                        TONUMBER R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [tonumber]
        8 CALL                             R1 1 1
        9 ORK                              R0 R1 K0 [0]
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 LOADN                            R3 232
        3 FASTCALL                         MATH_CLAMP ; [+2]
        4 GETIMPORT                        R0 K2 [math.clamp]
        6 CALL                             R0 3 1
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R0 R1
        4 FASTCALL1                        TONUMBER R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [tonumber]
        8 CALL                             R1 1 1
        9 ORK                              R0 R1 K0 [0]
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["UseJumpPower"]
        6 GETTABLEKS                       R4 R1 K3 ["JumpPower"]
        8 GETTABLEKS                       R5 R1 K4 ["JumpHeight"]
       10 GETTABLEKS                       R6 R1 K5 ["SetUseJumpPower"]
       12 GETTABLEKS                       R7 R1 K6 ["SetJumpPower"]
       14 GETTABLEKS                       R8 R1 K7 ["SetJumpHeight"]
       16 GETTABLEKS                       R9 R1 K8 ["Localization"]
       18 GETTABLEKS                       R10 R1 K9 ["Mouse"]
       20 NAMECALL                         R10 R10 K10 ["get"]
       22 CALL                             R10 1 1
       23 GETTABLEKS                       R11 R1 K11 ["WorldRootPhysics"]
       25 NAMECALL                         R11 R11 K10 ["get"]
       27 CALL                             R11 1 1
       28 GETIMPORT                        R12 K14 [UDim.new]
       30 LOADN                            R13 0
       31 LOADN                            R14 10
       32 CALL                             R12 2 1
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R13 R13 K15 ["createElement"]
       36 LOADK                            R14 K16 ["Frame"]
       37 DUPTABLE                         R15 K19 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
       38 SETTABLEKS                       R2 R15 K1 ["LayoutOrder"]
       40 GETIMPORT                        R16 K21 [UDim2.new]
       42 LOADN                            R17 1
       43 LOADN                            R18 0
       44 LOADN                            R19 0
       45 LOADN                            R20 50
       46 CALL                             R16 4 1
       47 SETTABLEKS                       R16 R15 K17 ["Size"]
       49 LOADN                            R16 1
       50 SETTABLEKS                       R16 R15 K18 ["BackgroundTransparency"]
       52 DUPTABLE                         R16 K25 [{"JumpSelect", "JumpInput", "MetricLabels"}]
       53 GETUPVAL                         R17 0
       54 GETTABLEKS                       R17 R17 K15 ["createElement"]
       56 GETUPVAL                         R18 1
       57 DUPTABLE                         R19 K31 [{"Title", "Buttons", "Enabled", "Selected", "Mouse", "SelectionChanged"}]
       58 LOADK                            R22 K32 ["General"]
       59 LOADK                            R23 K33 ["TitleJump"]
       60 NAMECALL                         R20 R9 K34 ["getText"]
       62 CALL                             R20 3 1
       63 SETTABLEKS                       R20 R19 K26 ["Title"]
       65 NEWTABLE                         R20 0 2
       67 DUPTABLE                         R21 K36 [{"Id", "Title"}]
       68 LOADB                            R22 0
       69 SETTABLEKS                       R22 R21 K35 ["Id"]
       71 LOADK                            R24 K32 ["General"]
       72 LOADK                            R25 K4 ["JumpHeight"]
       73 NAMECALL                         R22 R9 K34 ["getText"]
       75 CALL                             R22 3 1
       76 SETTABLEKS                       R22 R21 K26 ["Title"]
       78 DUPTABLE                         R22 K36 [{"Id", "Title"}]
       79 LOADB                            R23 1
       80 SETTABLEKS                       R23 R22 K35 ["Id"]
       82 LOADK                            R25 K32 ["General"]
       83 LOADK                            R26 K3 ["JumpPower"]
       84 NAMECALL                         R23 R9 K34 ["getText"]
       86 CALL                             R23 3 1
       87 SETTABLEKS                       R23 R22 K26 ["Title"]
       89 SETLIST                          R20 R21 2 [1]
       91 SETTABLEKS                       R20 R19 K27 ["Buttons"]
       93 LOADB                            R20 1
       94 SETTABLEKS                       R20 R19 K28 ["Enabled"]
       96 SETTABLEKS                       R3 R19 K29 ["Selected"]
       98 SETTABLEKS                       R10 R19 K9 ["Mouse"]
      100 NEWCLOSURE                       R20 P0
      101 CAPTURE                          VAL R6
      102 SETTABLEKS                       R20 R19 K30 ["SelectionChanged"]
      104 CALL                             R17 2 1
      105 SETTABLEKS                       R17 R16 K22 ["JumpSelect"]
      107 GETUPVAL                         R17 0
      108 GETTABLEKS                       R17 R17 K15 ["createElement"]
      110 LOADK                            R18 K16 ["Frame"]
      111 DUPTABLE                         R19 K38 [{"Position", "BackgroundTransparency"}]
      112 GETIMPORT                        R20 K21 [UDim2.new]
      114 LOADN                            R21 0
      115 LOADN                            R22 84
      116 LOADN                            R23 0
      117 LOADN                            R24 0
      118 CALL                             R20 4 1
      119 SETTABLEKS                       R20 R19 K37 ["Position"]
      121 LOADN                            R20 1
      122 SETTABLEKS                       R20 R19 K18 ["BackgroundTransparency"]
      124 DUPTABLE                         R20 K42 [{"Layout", "JumpHeightInputBox", "JumpPowerInputBox"}]
      125 GETUPVAL                         R21 0
      126 GETTABLEKS                       R21 R21 K15 ["createElement"]
      128 LOADK                            R22 K43 ["UIListLayout"]
      129 DUPTABLE                         R23 K46 [{"Padding", "SortOrder"}]
      130 SETTABLEKS                       R12 R23 K44 ["Padding"]
      132 GETIMPORT                        R24 K48 [Enum.SortOrder.LayoutOrder]
      134 SETTABLEKS                       R24 R23 K45 ["SortOrder"]
      136 CALL                             R21 2 1
      137 SETTABLEKS                       R21 R20 K39 ["Layout"]
      139 GETUPVAL                         R21 0
      140 GETTABLEKS                       R21 R21 K15 ["createElement"]
      142 GETUPVAL                         R22 2
      143 DUPTABLE                         R23 K53 [{"Disabled", "LayoutOrder", "OnFocusLost", "OnTextChanged", "Size", "Text"}]
      144 SETTABLEKS                       R3 R23 K49 ["Disabled"]
      146 LOADN                            R24 1
      147 SETTABLEKS                       R24 R23 K1 ["LayoutOrder"]
      149 NEWCLOSURE                       R24 P1
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R8
      152 SETTABLEKS                       R24 R23 K50 ["OnFocusLost"]
      154 NEWCLOSURE                       R24 P2
      155 CAPTURE                          UPVAL U3
      156 CAPTURE                          VAL R8
      157 SETTABLEKS                       R24 R23 K51 ["OnTextChanged"]
      159 GETIMPORT                        R24 K55 [UDim2.fromOffset]
      161 LOADN                            R25 150
      162 LOADN                            R26 20
      163 CALL                             R24 2 1
      164 SETTABLEKS                       R24 R23 K17 ["Size"]
      166 GETUPVAL                         R24 4
      167 MOVE                             R25 R5
      168 CALL                             R24 1 1
      169 SETTABLEKS                       R24 R23 K52 ["Text"]
      171 CALL                             R21 2 1
      172 SETTABLEKS                       R21 R20 K40 ["JumpHeightInputBox"]
      174 GETUPVAL                         R21 0
      175 GETTABLEKS                       R21 R21 K15 ["createElement"]
      177 GETUPVAL                         R22 2
      178 DUPTABLE                         R23 K53 [{"Disabled", "LayoutOrder", "OnFocusLost", "OnTextChanged", "Size", "Text"}]
      179 NOT                              R24 R3
      180 SETTABLEKS                       R24 R23 K49 ["Disabled"]
      182 LOADN                            R24 2
      183 SETTABLEKS                       R24 R23 K1 ["LayoutOrder"]
      185 NEWCLOSURE                       R24 P3
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R7
      188 SETTABLEKS                       R24 R23 K50 ["OnFocusLost"]
      190 NEWCLOSURE                       R24 P4
      191 CAPTURE                          UPVAL U3
      192 CAPTURE                          VAL R7
      193 SETTABLEKS                       R24 R23 K51 ["OnTextChanged"]
      195 GETIMPORT                        R24 K21 [UDim2.new]
      197 LOADN                            R25 0
      198 LOADN                            R26 150
      199 LOADN                            R27 0
      200 LOADN                            R28 20
      201 CALL                             R24 4 1
      202 SETTABLEKS                       R24 R23 K17 ["Size"]
      204 GETUPVAL                         R24 4
      205 MOVE                             R25 R4
      206 CALL                             R24 1 1
      207 SETTABLEKS                       R24 R23 K52 ["Text"]
      209 CALL                             R21 2 1
      210 SETTABLEKS                       R21 R20 K41 ["JumpPowerInputBox"]
      212 CALL                             R17 3 1
      213 SETTABLEKS                       R17 R16 K23 ["JumpInput"]
      215 GETUPVAL                         R17 0
      216 GETTABLEKS                       R17 R17 K15 ["createElement"]
      218 LOADK                            R18 K16 ["Frame"]
      219 DUPTABLE                         R19 K38 [{"Position", "BackgroundTransparency"}]
      220 GETIMPORT                        R20 K21 [UDim2.new]
      222 LOADN                            R21 0
      223 LOADN                            R22 254
      224 LOADN                            R23 0
      225 LOADN                            R24 0
      226 CALL                             R20 4 1
      227 SETTABLEKS                       R20 R19 K37 ["Position"]
      229 LOADN                            R20 1
      230 SETTABLEKS                       R20 R19 K18 ["BackgroundTransparency"]
      232 DUPTABLE                         R20 K57 [{"Layout", "JumpHeightMetricLabel"}]
      233 GETUPVAL                         R21 0
      234 GETTABLEKS                       R21 R21 K15 ["createElement"]
      236 LOADK                            R22 K43 ["UIListLayout"]
      237 DUPTABLE                         R23 K46 [{"Padding", "SortOrder"}]
      238 SETTABLEKS                       R12 R23 K44 ["Padding"]
      240 GETIMPORT                        R24 K48 [Enum.SortOrder.LayoutOrder]
      242 SETTABLEKS                       R24 R23 K45 ["SortOrder"]
      244 CALL                             R21 2 1
      245 SETTABLEKS                       R21 R20 K39 ["Layout"]
      247 GETUPVAL                         R21 0
      248 GETTABLEKS                       R21 R21 K15 ["createElement"]
      250 GETUPVAL                         R22 5
      251 DUPTABLE                         R23 K58 [{"Enabled", "Size", "Text"}]
      252 NOT                              R24 R3
      253 SETTABLEKS                       R24 R23 K28 ["Enabled"]
      255 GETIMPORT                        R24 K21 [UDim2.new]
      257 LOADN                            R25 1
      258 LOADN                            R26 0
      259 LOADN                            R27 0
      260 LOADN                            R28 20
      261 CALL                             R24 4 1
      262 SETTABLEKS                       R24 R23 K17 ["Size"]
      264 LOADK                            R26 K32 ["General"]
      265 LOADK                            R27 K59 ["UnitsMeters1"]
      266 NEWTABLE                         R28 0 1
      268 GETUPVAL                         R29 4
      269 GETTABLEKS                       R30 R11 K60 ["convertStudsToMeters"]
      271 MOVE                             R31 R5
      272 CALL                             R30 1 -1
      273 CALL                             R29 -1 -1
      274 SETLIST                          R28 R29 -1 [1]
      276 NAMECALL                         R24 R9 K34 ["getText"]
      278 CALL                             R24 4 1
      279 SETTABLEKS                       R24 R23 K52 ["Text"]
      281 CALL                             R21 2 1
      282 SETTABLEKS                       R21 R20 K56 ["JumpHeightMetricLabel"]
      284 CALL                             R17 3 1
      285 SETTABLEKS                       R17 R16 K24 ["MetricLabels"]
      287 CALL                             R13 3 -1
      288 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["Framework"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       33 GETTABLEKS                       R5 R4 K9 ["withContext"]
       35 GETTABLEKS                       R6 R3 K10 ["UI"]
       37 GETTABLEKS                       R7 R6 K11 ["TextInput"]
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R9 R0 K8 ["ContextServices"]
       43 GETTABLEKS                       R9 R9 K12 ["WorldRootPhysics"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K4 [require]
       48 GETTABLEKS                       R10 R0 K13 ["Util"]
       50 GETTABLEKS                       R10 R10 K14 ["formatNumberForDisplay"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETTABLEKS                       R11 R0 K13 ["Util"]
       57 GETTABLEKS                       R11 R11 K15 ["formatNumberForEngine"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R1 K16 ["RoactStudioWidgets"]
       62 GETIMPORT                        R12 K4 [require]
       64 GETTABLEKS                       R13 R1 K17 ["Src"]
       66 GETTABLEKS                       R13 R13 K18 ["Components"]
       68 GETTABLEKS                       R13 R13 K19 ["RadioButtonSet"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K4 [require]
       73 GETTABLEKS                       R14 R11 K20 ["Text"]
       75 CALL                             R13 1 1
       76 GETTABLEKS                       R14 R2 K21 ["PureComponent"]
       78 LOADK                            R16 K22 ["JumpSelect"]
       79 NAMECALL                         R14 R14 K23 ["extend"]
       81 CALL                             R14 2 1
       82 DUPCLOSURE                       R15 K24 [PROTO_5]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R13
       89 SETTABLEKS                       R15 R14 K25 ["render"]
       91 MOVE                             R15 R5
       92 DUPTABLE                         R16 K28 [{"Localization", "Mouse", "WorldRootPhysics"}]
       93 GETTABLEKS                       R17 R4 K26 ["Localization"]
       95 SETTABLEKS                       R17 R16 K26 ["Localization"]
       97 GETTABLEKS                       R17 R4 K27 ["Mouse"]
       99 SETTABLEKS                       R17 R16 K27 ["Mouse"]
      101 SETTABLEKS                       R8 R16 K12 ["WorldRootPhysics"]
      103 CALL                             R15 1 1
      104 MOVE                             R16 R14
      105 CALL                             R15 1 1
      106 MOVE                             R14 R15
      107 RETURN                           R14 1
