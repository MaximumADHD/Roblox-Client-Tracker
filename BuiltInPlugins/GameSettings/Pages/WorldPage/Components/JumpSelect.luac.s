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
        2 LOADN                            R3 1000
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
       37 DUPTABLE                         R15 K20 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
       38 SETTABLEKS                       R2 R15 K1 ["LayoutOrder"]
       40 GETIMPORT                        R16 K22 [UDim2.new]
       42 LOADN                            R17 1
       43 LOADN                            R18 0
       44 LOADN                            R19 0
       45 LOADN                            R20 50
       46 CALL                             R16 4 1
       47 SETTABLEKS                       R16 R15 K17 ["Size"]
       49 DUPTABLE                         R16 K26 [{"JumpSelect", "JumpInput", "MetricLabels"}]
       50 GETUPVAL                         R17 0
       51 GETTABLEKS                       R17 R17 K15 ["createElement"]
       53 GETUPVAL                         R18 1
       54 DUPTABLE                         R19 K33 [{["Title"], ["Buttons"], ["Enabled"] = True, ["Selected"], ["Mouse"], ["SelectionChanged"]}]
       55 LOADK                            R22 K34 ["General"]
       56 LOADK                            R23 K35 ["TitleJump"]
       57 NAMECALL                         R20 R9 K36 ["getText"]
       59 CALL                             R20 3 1
       60 SETTABLEKS                       R20 R19 K27 ["Title"]
       62 NEWTABLE                         R20 0 2
       64 DUPTABLE                         R21 K39 [{["Id"] = False, ["Title"]}]
       65 LOADK                            R24 K34 ["General"]
       66 LOADK                            R25 K4 ["JumpHeight"]
       67 NAMECALL                         R22 R9 K36 ["getText"]
       69 CALL                             R22 3 1
       70 SETTABLEKS                       R22 R21 K27 ["Title"]
       72 DUPTABLE                         R22 K40 [{["Id"] = True, ["Title"]}]
       73 LOADK                            R25 K34 ["General"]
       74 LOADK                            R26 K3 ["JumpPower"]
       75 NAMECALL                         R23 R9 K36 ["getText"]
       77 CALL                             R23 3 1
       78 SETTABLEKS                       R23 R22 K27 ["Title"]
       80 SETLIST                          R20 R21 2 [1]
       82 SETTABLEKS                       R20 R19 K28 ["Buttons"]
       84 SETTABLEKS                       R3 R19 K31 ["Selected"]
       86 SETTABLEKS                       R10 R19 K9 ["Mouse"]
       88 NEWCLOSURE                       R20 P0
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R20 R19 K32 ["SelectionChanged"]
       92 CALL                             R17 2 1
       93 SETTABLEKS                       R17 R16 K23 ["JumpSelect"]
       95 GETUPVAL                         R17 0
       96 GETTABLEKS                       R17 R17 K15 ["createElement"]
       98 LOADK                            R18 K16 ["Frame"]
       99 DUPTABLE                         R19 K42 [{["Position"], ["BackgroundTransparency"] = 1}]
      100 GETIMPORT                        R20 K22 [UDim2.new]
      102 LOADN                            R21 0
      103 LOADN                            R22 340
      104 LOADN                            R23 0
      105 LOADN                            R24 0
      106 CALL                             R20 4 1
      107 SETTABLEKS                       R20 R19 K41 ["Position"]
      109 DUPTABLE                         R20 K46 [{"Layout", "JumpHeightInputBox", "JumpPowerInputBox"}]
      110 GETUPVAL                         R21 0
      111 GETTABLEKS                       R21 R21 K15 ["createElement"]
      113 LOADK                            R22 K47 ["UIListLayout"]
      114 DUPTABLE                         R23 K50 [{"Padding", "SortOrder"}]
      115 SETTABLEKS                       R12 R23 K48 ["Padding"]
      117 GETIMPORT                        R24 K52 [Enum.SortOrder.LayoutOrder]
      119 SETTABLEKS                       R24 R23 K49 ["SortOrder"]
      121 CALL                             R21 2 1
      122 SETTABLEKS                       R21 R20 K43 ["Layout"]
      124 GETUPVAL                         R21 0
      125 GETTABLEKS                       R21 R21 K15 ["createElement"]
      127 GETUPVAL                         R22 2
      128 DUPTABLE                         R23 K57 [{["Disabled"], ["LayoutOrder"] = 1, ["OnFocusLost"], ["OnTextChanged"], ["Size"], ["Text"]}]
      129 SETTABLEKS                       R3 R23 K53 ["Disabled"]
      131 NEWCLOSURE                       R24 P1
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R8
      134 SETTABLEKS                       R24 R23 K54 ["OnFocusLost"]
      136 NEWCLOSURE                       R24 P2
      137 CAPTURE                          UPVAL U3
      138 CAPTURE                          VAL R8
      139 SETTABLEKS                       R24 R23 K55 ["OnTextChanged"]
      141 GETIMPORT                        R24 K59 [UDim2.fromOffset]
      143 LOADN                            R25 150
      144 LOADN                            R26 20
      145 CALL                             R24 2 1
      146 SETTABLEKS                       R24 R23 K17 ["Size"]
      148 GETUPVAL                         R24 4
      149 MOVE                             R25 R5
      150 CALL                             R24 1 1
      151 SETTABLEKS                       R24 R23 K56 ["Text"]
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K44 ["JumpHeightInputBox"]
      156 GETUPVAL                         R21 0
      157 GETTABLEKS                       R21 R21 K15 ["createElement"]
      159 GETUPVAL                         R22 2
      160 DUPTABLE                         R23 K61 [{["Disabled"], ["LayoutOrder"] = 2, ["OnFocusLost"], ["OnTextChanged"], ["Size"], ["Text"]}]
      161 NOT                              R24 R3
      162 SETTABLEKS                       R24 R23 K53 ["Disabled"]
      164 NEWCLOSURE                       R24 P3
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R7
      167 SETTABLEKS                       R24 R23 K54 ["OnFocusLost"]
      169 NEWCLOSURE                       R24 P4
      170 CAPTURE                          UPVAL U3
      171 CAPTURE                          VAL R7
      172 SETTABLEKS                       R24 R23 K55 ["OnTextChanged"]
      174 GETIMPORT                        R24 K22 [UDim2.new]
      176 LOADN                            R25 0
      177 LOADN                            R26 150
      178 LOADN                            R27 0
      179 LOADN                            R28 20
      180 CALL                             R24 4 1
      181 SETTABLEKS                       R24 R23 K17 ["Size"]
      183 GETUPVAL                         R24 4
      184 MOVE                             R25 R4
      185 CALL                             R24 1 1
      186 SETTABLEKS                       R24 R23 K56 ["Text"]
      188 CALL                             R21 2 1
      189 SETTABLEKS                       R21 R20 K45 ["JumpPowerInputBox"]
      191 CALL                             R17 3 1
      192 SETTABLEKS                       R17 R16 K24 ["JumpInput"]
      194 GETUPVAL                         R17 0
      195 GETTABLEKS                       R17 R17 K15 ["createElement"]
      197 LOADK                            R18 K16 ["Frame"]
      198 DUPTABLE                         R19 K42 [{["Position"], ["BackgroundTransparency"] = 1}]
      199 GETIMPORT                        R20 K22 [UDim2.new]
      201 LOADN                            R21 0
      202 LOADN                            R22 510
      203 LOADN                            R23 0
      204 LOADN                            R24 0
      205 CALL                             R20 4 1
      206 SETTABLEKS                       R20 R19 K41 ["Position"]
      208 DUPTABLE                         R20 K63 [{"Layout", "JumpHeightMetricLabel"}]
      209 GETUPVAL                         R21 0
      210 GETTABLEKS                       R21 R21 K15 ["createElement"]
      212 LOADK                            R22 K47 ["UIListLayout"]
      213 DUPTABLE                         R23 K50 [{"Padding", "SortOrder"}]
      214 SETTABLEKS                       R12 R23 K48 ["Padding"]
      216 GETIMPORT                        R24 K52 [Enum.SortOrder.LayoutOrder]
      218 SETTABLEKS                       R24 R23 K49 ["SortOrder"]
      220 CALL                             R21 2 1
      221 SETTABLEKS                       R21 R20 K43 ["Layout"]
      223 GETUPVAL                         R21 0
      224 GETTABLEKS                       R21 R21 K15 ["createElement"]
      226 GETUPVAL                         R22 5
      227 DUPTABLE                         R23 K64 [{"Enabled", "Size", "Text"}]
      228 NOT                              R24 R3
      229 SETTABLEKS                       R24 R23 K29 ["Enabled"]
      231 GETIMPORT                        R24 K22 [UDim2.new]
      233 LOADN                            R25 1
      234 LOADN                            R26 0
      235 LOADN                            R27 0
      236 LOADN                            R28 20
      237 CALL                             R24 4 1
      238 SETTABLEKS                       R24 R23 K17 ["Size"]
      240 LOADK                            R26 K34 ["General"]
      241 LOADK                            R27 K65 ["UnitsMeters1"]
      242 NEWTABLE                         R28 0 1
      244 GETUPVAL                         R29 4
      245 GETTABLEKS                       R30 R11 K66 ["convertStudsToMeters"]
      247 MOVE                             R31 R5
      248 CALL                             R30 1 -1
      249 CALL                             R29 -1 -1
      250 SETLIST                          R28 R29 -1 [1]
      252 NAMECALL                         R24 R9 K36 ["getText"]
      254 CALL                             R24 4 1
      255 SETTABLEKS                       R24 R23 K56 ["Text"]
      257 CALL                             R21 2 1
      258 SETTABLEKS                       R21 R20 K62 ["JumpHeightMetricLabel"]
      260 CALL                             R17 3 1
      261 SETTABLEKS                       R17 R16 K25 ["MetricLabels"]
      263 CALL                             R13 3 -1
      264 RETURN                           R13 -1

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
