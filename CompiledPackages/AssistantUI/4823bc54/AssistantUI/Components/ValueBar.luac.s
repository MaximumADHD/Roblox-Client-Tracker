PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R6 R1 K2 ["Position"]
        6 GETTABLEKS                       R6 R6 K3 ["X"]
        8 GETTABLEKS                       R7 R2 K3 ["X"]
       10 SUB                              R5 R6 R7
       11 LOADN                            R6 0
       12 GETTABLEKS                       R7 R3 K3 ["X"]
       14 FASTCALL                         MATH_CLAMP ; [+2]
       15 GETIMPORT                        R4 K6 [math.clamp]
       17 CALL                             R4 3 1
       18 GETTABLEKS                       R8 R3 K3 ["X"]
       20 DIV                              R7 R4 R8
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K7 ["max"]
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K8 ["min"]
       27 SUB                              R8 R9 R10
       28 MUL                              R6 R7 R8
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K8 ["min"]
       32 ADD                              R5 R6 R7
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K9 ["onChanged"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+9]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R2 0
        7 LOADB                            R3 0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        5 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseMovement]
        7 JUMPIFNOTEQ                      R2 R3 ; [+5]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 MOVE                             R4 R1
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K5 [{[1], ["FontSize"] = 12, ["LineHeight"] = 1}]
        1 GETIMPORT                        R1 K7 [Font.new]
        3 LOADK                            R2 K8 ["rbxasset://fonts/families/BuilderMono.json"]
        4 GETIMPORT                        R3 K12 [Enum.FontWeight.Regular]
        6 GETIMPORT                        R4 K15 [Enum.FontStyle.Normal]
        8 CALL                             R1 3 1
        9 SETTABLEKS                       R1 R0 K0 ["Font"]
       11 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useBinding"]
        8 LOADN                            R4 0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R6 0 3
       17 GETTABLEKS                       R7 R0 K3 ["onChanged"]
       19 GETTABLEKS                       R8 R0 K4 ["min"]
       21 GETTABLEKS                       R9 R0 K5 ["max"]
       23 SETLIST                          R6 R7 3 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       29 NEWCLOSURE                       R6 P1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R7 0 2
       34 MOVE                             R8 R2
       35 MOVE                             R9 R4
       36 SETLIST                          R7 R8 2 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       42 NEWCLOSURE                       R7 P2
       43 CAPTURE                          VAL R2
       44 NEWTABLE                         R8 0 1
       46 MOVE                             R9 R2
       47 SETLIST                          R8 R9 1 [1]
       49 CALL                             R6 2 1
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       53 NEWCLOSURE                       R8 P3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R9 0 3
       58 MOVE                             R10 R2
       59 MOVE                             R11 R1
       60 MOVE                             R12 R4
       61 SETLIST                          R9 R10 3 [1]
       63 CALL                             R7 2 1
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       67 DUPCLOSURE                       R9 K7 [PROTO_4]
       68 NEWTABLE                         R10 0 0
       70 CALL                             R8 2 1
       71 GETUPVAL                         R9 1
       72 CALL                             R9 0 1
       73 GETUPVAL                         R10 2
       74 GETUPVAL                         R11 3
       75 DUPTABLE                         R12 K11 [{"tag", "LayoutOrder", "GroupTransparency"}]
       76 GETTABLEKS                       R13 R0 K8 ["tag"]
       78 SETTABLEKS                       R13 R12 K8 ["tag"]
       80 GETTABLEKS                       R13 R0 K9 ["LayoutOrder"]
       82 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       84 SETTABLEKS                       R3 R12 K10 ["GroupTransparency"]
       86 DUPTABLE                         R13 K13 [{"InteractionLayer"}]
       87 GETUPVAL                         R14 2
       88 LOADK                            R15 K14 ["Frame"]
       89 NEWTABLE                         R16 8 0
       91 GETIMPORT                        R17 K17 [UDim2.fromScale]
       93 LOADN                            R18 1
       94 LOADN                            R19 1
       95 CALL                             R17 2 1
       96 SETTABLEKS                       R17 R16 K18 ["Size"]
       98 LOADN                            R17 1
       99 SETTABLEKS                       R17 R16 K19 ["BackgroundTransparency"]
      101 GETUPVAL                         R17 0
      102 GETTABLEKS                       R17 R17 K20 ["Event"]
      104 GETTABLEKS                       R17 R17 K21 ["InputBegan"]
      106 SETTABLE                         R5 R16 R17
      107 GETUPVAL                         R17 0
      108 GETTABLEKS                       R17 R17 K20 ["Event"]
      110 GETTABLEKS                       R17 R17 K22 ["InputEnded"]
      112 SETTABLE                         R6 R16 R17
      113 GETUPVAL                         R17 0
      114 GETTABLEKS                       R17 R17 K20 ["Event"]
      116 GETTABLEKS                       R17 R17 K23 ["InputChanged"]
      118 SETTABLE                         R7 R16 R17
      119 GETUPVAL                         R17 0
      120 GETTABLEKS                       R17 R17 K24 ["Tag"]
      122 GETTABLEKS                       R19 R0 K25 ["testId"]
      124 JUMPIFNOT                        R19 ; [+8]
      125 LOADK                            R19 K26 ["data-testid=%*"]
      126 GETTABLEKS                       R21 R0 K25 ["testId"]
      128 NAMECALL                         R19 R19 K27 ["format"]
      130 CALL                             R19 2 1
      131 MOVE                             R18 R19
      132 JUMP                             ; [+1]
      133 LOADNIL                          R18
      134 SETTABLE                         R18 R16 R17
      135 MOVE                             R17 R9
      136 CALL                             R17 0 1
      137 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      139 DUPTABLE                         R17 K30 [{"VisualBar", "TextContainer"}]
      140 GETUPVAL                         R18 2
      141 GETUPVAL                         R19 3
      142 DUPTABLE                         R20 K32 [{["tag"] = "bg-shift-300", ["Size"], ["LayoutOrder"]}]
      143 GETIMPORT                        R21 K17 [UDim2.fromScale]
      145 GETTABLEKS                       R24 R0 K33 ["value"]
      147 GETTABLEKS                       R25 R0 K4 ["min"]
      149 SUB                              R23 R24 R25
      150 GETTABLEKS                       R25 R0 K5 ["max"]
      152 GETTABLEKS                       R26 R0 K4 ["min"]
      154 SUB                              R24 R25 R26
      155 DIV                              R22 R23 R24
      156 LOADN                            R23 1
      157 CALL                             R21 2 1
      158 SETTABLEKS                       R21 R20 K18 ["Size"]
      160 MOVE                             R21 R9
      161 CALL                             R21 0 1
      162 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      164 CALL                             R18 2 1
      165 SETTABLEKS                       R18 R17 K28 ["VisualBar"]
      167 GETUPVAL                         R18 2
      168 GETUPVAL                         R19 3
      169 DUPTABLE                         R20 K35 [{["tag"] = "size-full-full padding-xsmall", ["LayoutOrder"]}]
      170 MOVE                             R21 R9
      171 CALL                             R21 0 1
      172 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      174 DUPTABLE                         R21 K37 [{"Text"}]
      175 GETUPVAL                         R22 2
      176 GETUPVAL                         R23 4
      177 DUPTABLE                         R24 K40 [{["tag"] = "size-full-full text-align-x-left content-emphasis", ["fontStyle"], ["Text"], ["LayoutOrder"]}]
      178 SETTABLEKS                       R8 R24 K39 ["fontStyle"]
      180 GETIMPORT                        R25 K42 [string.format]
      182 LOADK                            R27 K43 ["%%.%*f"]
      183 GETTABLEKS                       R30 R0 K45 ["decimalPlaces"]
      185 ORK                              R29 R30 K44 [1]
      186 NAMECALL                         R27 R27 K27 ["format"]
      188 CALL                             R27 2 1
      189 MOVE                             R26 R27
      190 GETTABLEKS                       R27 R0 K33 ["value"]
      192 CALL                             R25 2 1
      193 SETTABLEKS                       R25 R24 K36 ["Text"]
      195 MOVE                             R25 R9
      196 CALL                             R25 0 1
      197 SETTABLEKS                       R25 R24 K9 ["LayoutOrder"]
      199 CALL                             R22 2 1
      200 SETTABLEKS                       R22 R21 K36 ["Text"]
      202 CALL                             R18 3 1
      203 SETTABLEKS                       R18 R17 K29 ["TextContainer"]
      205 CALL                             R14 3 1
      206 SETTABLEKS                       R14 R13 K12 ["InteractionLayer"]
      208 CALL                             R10 3 -1
      209 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Text"]
       30 GETTABLEKS                       R5 R1 K11 ["View"]
       32 GETTABLEKS                       R6 R3 K12 ["createNextOrder"]
       34 GETTABLEKS                       R7 R2 K13 ["createElement"]
       36 DUPCLOSURE                       R8 K14 [PROTO_5]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R4
       42 RETURN                           R8 1
