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
        0 DUPTABLE                         R0 K3 [{"Font", "FontSize", "LineHeight"}]
        1 GETIMPORT                        R1 K5 [Font.new]
        3 LOADK                            R2 K6 ["rbxasset://fonts/families/BuilderMono.json"]
        4 GETIMPORT                        R3 K10 [Enum.FontWeight.Regular]
        6 GETIMPORT                        R4 K13 [Enum.FontStyle.Normal]
        8 CALL                             R1 3 1
        9 SETTABLEKS                       R1 R0 K0 ["Font"]
       11 LOADN                            R1 12
       12 SETTABLEKS                       R1 R0 K1 ["FontSize"]
       14 LOADN                            R1 1
       15 SETTABLEKS                       R1 R0 K2 ["LineHeight"]
       17 RETURN                           R0 1

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
       15 NEWTABLE                         R6 0 1
       17 GETTABLEKS                       R7 R0 K3 ["onChanged"]
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R7 0 2
       30 MOVE                             R8 R2
       31 MOVE                             R9 R4
       32 SETLIST                          R7 R8 2 [1]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       38 NEWCLOSURE                       R7 P2
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R2
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       49 NEWCLOSURE                       R8 P3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R9 0 5
       54 GETTABLEKS                       R10 R0 K4 ["min"]
       56 GETTABLEKS                       R11 R0 K5 ["max"]
       58 MOVE                             R12 R2
       59 MOVE                             R13 R1
       60 MOVE                             R14 R4
       61 SETLIST                          R9 R10 5 [1]
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
      135 DUPTABLE                         R17 K30 [{"VisualBar", "TextContainer"}]
      136 GETUPVAL                         R18 2
      137 GETUPVAL                         R19 3
      138 DUPTABLE                         R20 K31 [{"tag", "Size", "LayoutOrder"}]
      139 LOADK                            R21 K32 ["bg-shift-300"]
      140 SETTABLEKS                       R21 R20 K8 ["tag"]
      142 GETIMPORT                        R21 K17 [UDim2.fromScale]
      144 GETTABLEKS                       R24 R0 K33 ["value"]
      146 GETTABLEKS                       R25 R0 K4 ["min"]
      148 SUB                              R23 R24 R25
      149 GETTABLEKS                       R25 R0 K5 ["max"]
      151 GETTABLEKS                       R26 R0 K4 ["min"]
      153 SUB                              R24 R25 R26
      154 DIV                              R22 R23 R24
      155 LOADN                            R23 1
      156 CALL                             R21 2 1
      157 SETTABLEKS                       R21 R20 K18 ["Size"]
      159 MOVE                             R21 R9
      160 CALL                             R21 0 1
      161 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      163 CALL                             R18 2 1
      164 SETTABLEKS                       R18 R17 K28 ["VisualBar"]
      166 GETUPVAL                         R18 2
      167 GETUPVAL                         R19 3
      168 DUPTABLE                         R20 K34 [{"tag", "LayoutOrder"}]
      169 LOADK                            R21 K35 ["size-full-full padding-xsmall"]
      170 SETTABLEKS                       R21 R20 K8 ["tag"]
      172 MOVE                             R21 R9
      173 CALL                             R21 0 1
      174 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      176 DUPTABLE                         R21 K37 [{"Text"}]
      177 GETUPVAL                         R22 2
      178 GETUPVAL                         R23 4
      179 DUPTABLE                         R24 K39 [{"tag", "fontStyle", "Text", "LayoutOrder"}]
      180 LOADK                            R25 K40 ["size-full-full content-emphasis text-align-x-left"]
      181 SETTABLEKS                       R25 R24 K8 ["tag"]
      183 SETTABLEKS                       R8 R24 K38 ["fontStyle"]
      185 GETIMPORT                        R25 K42 [string.format]
      187 LOADK                            R27 K43 ["%%.%*f"]
      188 LOADN                            R29 1
      189 NAMECALL                         R27 R27 K27 ["format"]
      191 CALL                             R27 2 1
      192 MOVE                             R26 R27
      193 GETTABLEKS                       R27 R0 K33 ["value"]
      195 CALL                             R25 2 1
      196 SETTABLEKS                       R25 R24 K36 ["Text"]
      198 MOVE                             R25 R9
      199 CALL                             R25 0 1
      200 SETTABLEKS                       R25 R24 K9 ["LayoutOrder"]
      202 CALL                             R22 2 1
      203 SETTABLEKS                       R22 R21 K36 ["Text"]
      205 CALL                             R18 3 1
      206 SETTABLEKS                       R18 R17 K29 ["TextContainer"]
      208 CALL                             R14 3 1
      209 SETTABLEKS                       R14 R13 K12 ["InteractionLayer"]
      211 CALL                             R10 3 -1
      212 RETURN                           R10 -1

PROTO_6:
        0 DUPTABLE                         R0 K4 [{"FailedToGenerate", "Preparing", "Generating", "UnknownError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["MaterialGen"]
        3 LOADK                            R4 K0 ["FailedToGenerate"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FailedToGenerate"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["MaterialGen"]
       11 LOADK                            R4 K1 ["Preparing"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Preparing"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["MaterialGen"]
       19 LOADK                            R4 K2 ["Generating"]
       20 DUPTABLE                         R5 K8 [{"name"}]
       21 GETUPVAL                         R6 1
       22 SETTABLEKS                       R6 R5 K7 ["name"]
       24 NAMECALL                         R1 R1 K6 ["getText"]
       26 CALL                             R1 4 1
       27 SETTABLEKS                       R1 R0 K2 ["Generating"]
       29 GETUPVAL                         R1 0
       30 LOADK                            R3 K5 ["MaterialGen"]
       31 LOADK                            R4 K9 ["UnknownErrorHeader"]
       32 NAMECALL                         R1 R1 K6 ["getText"]
       34 CALL                             R1 3 1
       35 SETTABLEKS                       R1 R0 K3 ["UnknownError"]
       37 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Generating"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+4]
        7 GETTABLEKS                       R1 R0 K2 ["displayName"]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K3 [""]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["useMemo"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 2
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K5 ["locale"]
       22 MOVE                             R6 R1
       23 SETLIST                          R4 R5 2 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 3
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+22]
       29 GETTABLEKS                       R4 R0 K6 ["isError"]
       31 NOT                              R3 R4
       32 JUMPIFNOT                        R3 ; [+21]
       33 LOADB                            R3 1
       34 GETTABLEKS                       R4 R0 K0 ["mode"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K7 ["Preparing"]
       39 JUMPIFEQ                         R4 R5 ; [+14]
       41 GETTABLEKS                       R4 R0 K0 ["mode"]
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K1 ["Generating"]
       46 JUMPIFEQ                         R4 R5 ; [+2]
       48 LOADB                            R3 0 +1
       49 LOADB                            R3 1
       50 JUMP                             ; [+3]
       51 GETTABLEKS                       R4 R0 K6 ["isError"]
       53 NOT                              R3 R4
       54 GETUPVAL                         R4 4
       55 CALL                             R4 0 1
       56 GETUPVAL                         R5 5
       57 GETUPVAL                         R6 6
       58 GETTABLEKS                       R6 R6 K8 ["Root"]
       60 DUPTABLE                         R7 K13 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       61 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       63 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       65 LOADB                            R8 0
       66 SETTABLEKS                       R8 R7 K10 ["expanded"]
       68 GETTABLEKS                       R8 R0 K11 ["contentId"]
       70 SETTABLEKS                       R8 R7 K11 ["contentId"]
       72 GETTABLEKS                       R8 R0 K12 ["editThisContent"]
       74 SETTABLEKS                       R8 R7 K12 ["editThisContent"]
       76 DUPTABLE                         R8 K15 [{"Header"}]
       77 GETUPVAL                         R9 5
       78 GETUPVAL                         R10 6
       79 GETTABLEKS                       R10 R10 K14 ["Header"]
       81 DUPTABLE                         R11 K18 [{"IsDisabled", "LayoutOrder", "testId"}]
       82 LOADB                            R12 1
       83 SETTABLEKS                       R12 R11 K16 ["IsDisabled"]
       85 MOVE                             R12 R4
       86 CALL                             R12 0 1
       87 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       89 GETUPVAL                         R12 7
       90 GETTABLEKS                       R12 R12 K19 ["MaterialGen"]
       92 GETTABLEKS                       R12 R12 K20 ["Expand"]
       94 SETTABLEKS                       R12 R11 K17 ["testId"]
       96 DUPTABLE                         R12 K22 [{"Text"}]
       97 GETUPVAL                         R13 5
       98 GETUPVAL                         R14 8
       99 DUPTABLE                         R15 K24 [{"tag", "Text", "LayoutOrder"}]
      100 LOADK                            R16 K25 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      101 SETTABLEKS                       R16 R15 K23 ["tag"]
      103 GETTABLEKS                       R17 R0 K6 ["isError"]
      105 JUMPIFNOT                        R17 ; [+3]
      106 GETTABLEKS                       R16 R2 K26 ["FailedToGenerate"]
      108 JUMP                             ; [+22]
      109 GETTABLEKS                       R17 R0 K0 ["mode"]
      111 GETUPVAL                         R18 0
      112 GETTABLEKS                       R18 R18 K1 ["Generating"]
      114 JUMPIFNOTEQ                      R17 R18 ; [+4]
      116 GETTABLEKS                       R16 R2 K1 ["Generating"]
      118 JUMP                             ; [+12]
      119 GETTABLEKS                       R17 R0 K0 ["mode"]
      121 GETUPVAL                         R18 0
      122 GETTABLEKS                       R18 R18 K7 ["Preparing"]
      124 JUMPIFNOTEQ                      R17 R18 ; [+4]
      126 GETTABLEKS                       R16 R2 K7 ["Preparing"]
      128 JUMP                             ; [+2]
      129 GETTABLEKS                       R16 R2 K27 ["UnknownError"]
      131 SETTABLEKS                       R16 R15 K21 ["Text"]
      133 MOVE                             R16 R4
      134 CALL                             R16 0 1
      135 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      137 DUPTABLE                         R16 K29 [{"Shimmer"}]
      138 MOVE                             R17 R3
      139 JUMPIFNOT                        R17 ; [+3]
      140 GETUPVAL                         R17 5
      141 GETUPVAL                         R18 9
      142 CALL                             R17 1 1
      143 SETTABLEKS                       R17 R16 K28 ["Shimmer"]
      145 CALL                             R13 3 1
      146 SETTABLEKS                       R13 R12 K21 ["Text"]
      148 CALL                             R9 3 1
      149 SETTABLEKS                       R9 R8 K14 ["Header"]
      151 CALL                             R5 3 -1
      152 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClickMaterial"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["studsPerTile"]
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setStudsPerTile"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 MULK                             R4 R0 K1 [10]
        6 FASTCALL1                        MATH_ROUND R4 ; [+2]
        7 GETIMPORT                        R3 K4 [math.round]
        9 CALL                             R3 1 1
       10 DIVK                             R2 R3 K1 [10]
       11 LOADK                            R3 K5 [0.1]
       12 LOADN                            R4 20
       13 FASTCALL                         MATH_CLAMP ; [+2]
       14 GETIMPORT                        R1 K7 [math.clamp]
       16 CALL                             R1 3 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K8 ["editThisContent"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K9 ["contentId"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R1
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["setStudsPerTile"]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isOrganic"]
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setIsOrganic"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["isOrganic"]
        8 NOT                              R0 R1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["editThisContent"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["contentId"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 CALL                             R1 2 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K0 ["setIsOrganic"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGen"]
        2 LOADK                            R3 K1 ["Generated"]
        3 DUPTABLE                         R4 K3 [{"name"}]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K4 ["shouldShowChip"]
        7 JUMPIFNOT                        R6 ; [+2]
        8 LOADK                            R5 K5 ["{CHIP}"]
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K6 ["displayName"]
       13 SETTABLEKS                       R5 R4 K2 ["name"]
       15 NAMECALL                         R0 R0 K7 ["getText"]
       17 CALL                             R0 4 1
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K4 ["shouldShowChip"]
       21 JUMPIFNOT                        R1 ; [+16]
       22 LOADK                            R3 K8 ["[ ]*{CHIP}[ ]*"]
       23 LOADK                            R4 K9 [" "]
       24 NAMECALL                         R1 R0 K10 ["gsub"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K11 ["^%s+"]
       28 LOADK                            R4 K12 [""]
       29 NAMECALL                         R1 R1 K10 ["gsub"]
       31 CALL                             R1 3 1
       32 LOADK                            R3 K13 ["%s+$"]
       33 LOADK                            R4 K12 [""]
       34 NAMECALL                         R1 R1 K10 ["gsub"]
       36 CALL                             R1 3 1
       37 MOVE                             R0 R1
       38 DUPTABLE                         R1 K17 [{"Generated", "SelectAVariant", "StudsPerTile", "OrganicPattern"}]
       39 SETTABLEKS                       R0 R1 K1 ["Generated"]
       41 GETUPVAL                         R2 0
       42 LOADK                            R4 K0 ["MaterialGen"]
       43 LOADK                            R5 K14 ["SelectAVariant"]
       44 NAMECALL                         R2 R2 K7 ["getText"]
       46 CALL                             R2 3 1
       47 SETTABLEKS                       R2 R1 K14 ["SelectAVariant"]
       49 GETUPVAL                         R2 0
       50 LOADK                            R4 K0 ["MaterialGen"]
       51 LOADK                            R5 K15 ["StudsPerTile"]
       52 NAMECALL                         R2 R2 K7 ["getText"]
       54 CALL                             R2 3 1
       55 SETTABLEKS                       R2 R1 K15 ["StudsPerTile"]
       57 GETUPVAL                         R2 0
       58 LOADK                            R4 K0 ["MaterialGen"]
       59 LOADK                            R5 K16 ["OrganicPattern"]
       60 NAMECALL                         R2 R2 K7 ["getText"]
       62 CALL                             R2 3 1
       63 SETTABLEKS                       R2 R1 K16 ["OrganicPattern"]
       65 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["getClassIcon"]
        6 LOADK                            R2 K2 ["MaterialVariant"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Config"]
        8 GETTABLEKS                       R2 R2 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R2 K4 ["Name"]
       12 NEWTABLE                         R3 0 0
       14 GETTABLEKS                       R4 R0 K5 ["assetIds"]
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 DUPTABLE                         R11 K8 [{"uri", "onActivated"}]
       20 SETTABLEKS                       R8 R11 K6 ["uri"]
       22 GETTABLEKS                       R12 R0 K9 ["onClickMaterial"]
       24 JUMPIFNOT                        R12 ; [+3]
       25 NEWCLOSURE                       R12 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R8
       28 SETTABLEKS                       R12 R11 K7 ["onActivated"]
       30 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       32 MOVE                             R10 R3
       33 GETIMPORT                        R9 K12 [table.insert]
       35 CALL                             R9 2 0
       36 FORGLOOP                         R4 2 ; [-18]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R4 R4 K13 ["useCallback"]
       41 NEWCLOSURE                       R5 P1
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R6 0 3
       45 GETTABLEKS                       R7 R0 K14 ["editThisContent"]
       47 GETTABLEKS                       R8 R0 K15 ["contentId"]
       49 GETTABLEKS                       R9 R0 K16 ["setStudsPerTile"]
       51 SETLIST                          R6 R7 3 [1]
       53 CALL                             R4 2 1
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R5 R5 K13 ["useCallback"]
       57 NEWCLOSURE                       R6 P2
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R7 0 4
       61 GETTABLEKS                       R8 R0 K17 ["isOrganic"]
       63 GETTABLEKS                       R9 R0 K14 ["editThisContent"]
       65 GETTABLEKS                       R10 R0 K15 ["contentId"]
       67 GETTABLEKS                       R11 R0 K18 ["setIsOrganic"]
       69 SETLIST                          R7 R8 4 [1]
       71 CALL                             R5 2 1
       72 GETUPVAL                         R6 1
       73 GETTABLEKS                       R6 R6 K19 ["useMemo"]
       75 NEWCLOSURE                       R7 P3
       76 CAPTURE                          UPVAL U2
       77 CAPTURE                          VAL R0
       78 NEWTABLE                         R8 0 3
       80 GETUPVAL                         R9 2
       81 GETTABLEKS                       R9 R9 K20 ["locale"]
       83 GETTABLEKS                       R10 R0 K21 ["displayName"]
       85 GETTABLEKS                       R11 R0 K22 ["shouldShowChip"]
       87 SETLIST                          R8 R9 3 [1]
       89 CALL                             R6 2 1
       90 GETUPVAL                         R7 1
       91 GETTABLEKS                       R7 R7 K19 ["useMemo"]
       93 DUPCLOSURE                       R8 K23 [PROTO_14]
       94 CAPTURE                          UPVAL U3
       95 NEWTABLE                         R9 0 1
       97 MOVE                             R10 R2
       98 SETLIST                          R9 R10 1 [1]
      100 CALL                             R7 2 1
      101 GETUPVAL                         R8 4
      102 CALL                             R8 0 1
      103 GETUPVAL                         R9 5
      104 GETUPVAL                         R10 6
      105 GETTABLEKS                       R10 R10 K24 ["Root"]
      107 DUPTABLE                         R11 K27 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      108 GETTABLEKS                       R12 R0 K25 ["LayoutOrder"]
      110 SETTABLEKS                       R12 R11 K25 ["LayoutOrder"]
      112 GETTABLEKS                       R12 R0 K26 ["expanded"]
      114 SETTABLEKS                       R12 R11 K26 ["expanded"]
      116 GETTABLEKS                       R12 R0 K15 ["contentId"]
      118 SETTABLEKS                       R12 R11 K15 ["contentId"]
      120 GETTABLEKS                       R12 R0 K14 ["editThisContent"]
      122 SETTABLEKS                       R12 R11 K14 ["editThisContent"]
      124 DUPTABLE                         R12 K30 [{"Header", "Content"}]
      125 GETUPVAL                         R13 5
      126 GETUPVAL                         R14 6
      127 GETTABLEKS                       R14 R14 K28 ["Header"]
      129 DUPTABLE                         R15 K32 [{"LayoutOrder", "testId"}]
      130 MOVE                             R16 R8
      131 CALL                             R16 0 1
      132 SETTABLEKS                       R16 R15 K25 ["LayoutOrder"]
      134 GETUPVAL                         R16 7
      135 GETTABLEKS                       R16 R16 K33 ["MaterialGen"]
      137 GETTABLEKS                       R16 R16 K34 ["Expand"]
      139 SETTABLEKS                       R16 R15 K31 ["testId"]
      141 DUPTABLE                         R16 K37 [{"Text", "AssetLink"}]
      142 GETUPVAL                         R17 5
      143 GETUPVAL                         R18 8
      144 DUPTABLE                         R19 K39 [{"tag", "Text", "LayoutOrder"}]
      145 LOADK                            R20 K40 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      146 SETTABLEKS                       R20 R19 K38 ["tag"]
      148 GETTABLEKS                       R20 R6 K41 ["Generated"]
      150 SETTABLEKS                       R20 R19 K35 ["Text"]
      152 MOVE                             R20 R8
      153 CALL                             R20 0 1
      154 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      156 CALL                             R17 2 1
      157 SETTABLEKS                       R17 R16 K35 ["Text"]
      159 GETTABLEKS                       R17 R0 K22 ["shouldShowChip"]
      161 JUMPIFNOT                        R17 ; [+32]
      162 GETUPVAL                         R17 5
      163 GETUPVAL                         R18 9
      164 DUPTABLE                         R19 K46 [{"text", "leading", "onActivated", "isChecked", "size", "LayoutOrder"}]
      165 GETTABLEKS                       R20 R0 K21 ["displayName"]
      167 SETTABLEKS                       R20 R19 K42 ["text"]
      169 GETTABLEKS                       R20 R7 K47 ["Image"]
      171 SETTABLEKS                       R20 R19 K43 ["leading"]
      173 GETTABLEKS                       R20 R0 K48 ["onChipClicked"]
      175 SETTABLEKS                       R20 R19 K7 ["onActivated"]
      177 LOADB                            R20 0
      178 SETTABLEKS                       R20 R19 K44 ["isChecked"]
      180 GETUPVAL                         R20 0
      181 GETTABLEKS                       R20 R20 K49 ["Enums"]
      183 GETTABLEKS                       R20 R20 K50 ["ChipSize"]
      185 GETTABLEKS                       R20 R20 K51 ["Small"]
      187 SETTABLEKS                       R20 R19 K45 ["size"]
      189 MOVE                             R20 R8
      190 CALL                             R20 0 1
      191 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      193 CALL                             R17 2 1
      194 SETTABLEKS                       R17 R16 K36 ["AssetLink"]
      196 CALL                             R13 3 1
      197 SETTABLEKS                       R13 R12 K28 ["Header"]
      199 GETUPVAL                         R13 5
      200 GETUPVAL                         R14 6
      201 GETTABLEKS                       R14 R14 K29 ["Content"]
      203 DUPTABLE                         R15 K52 [{"tag", "LayoutOrder"}]
      204 LOADK                            R16 K53 ["col size-0-0 fill auto-y gap-small"]
      205 SETTABLEKS                       R16 R15 K38 ["tag"]
      207 MOVE                             R16 R8
      208 CALL                             R16 0 1
      209 SETTABLEKS                       R16 R15 K25 ["LayoutOrder"]
      211 DUPTABLE                         R16 K57 [{"Text", "Carousel", "StudsPerTileRow", "OrganicPattern"}]
      212 GETUPVAL                         R17 5
      213 GETUPVAL                         R18 8
      214 DUPTABLE                         R19 K39 [{"tag", "Text", "LayoutOrder"}]
      215 LOADK                            R20 K58 ["size-0-0 auto-xy content-default text-body-small text-truncate-end"]
      216 SETTABLEKS                       R20 R19 K38 ["tag"]
      218 GETTABLEKS                       R20 R6 K59 ["SelectAVariant"]
      220 SETTABLEKS                       R20 R19 K35 ["Text"]
      222 MOVE                             R20 R8
      223 CALL                             R20 0 1
      224 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      226 CALL                             R17 2 1
      227 SETTABLEKS                       R17 R16 K35 ["Text"]
      229 GETUPVAL                         R17 5
      230 GETUPVAL                         R18 10
      231 DUPTABLE                         R19 K63 [{"height", "canSelect", "items", "LayoutOrder"}]
      232 LOADN                            R20 70
      233 SETTABLEKS                       R20 R19 K60 ["height"]
      235 LOADB                            R20 0
      236 SETTABLEKS                       R20 R19 K61 ["canSelect"]
      238 SETTABLEKS                       R3 R19 K62 ["items"]
      240 MOVE                             R20 R8
      241 CALL                             R20 0 1
      242 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      244 CALL                             R17 2 1
      245 SETTABLEKS                       R17 R16 K54 ["Carousel"]
      247 GETUPVAL                         R17 5
      248 GETUPVAL                         R18 11
      249 DUPTABLE                         R19 K52 [{"tag", "LayoutOrder"}]
      250 LOADK                            R20 K64 ["size-full-600 padding-y-xxsmall row gap-small align-y-center"]
      251 SETTABLEKS                       R20 R19 K38 ["tag"]
      253 MOVE                             R20 R8
      254 CALL                             R20 0 1
      255 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      257 DUPTABLE                         R20 K67 [{"Label", "Value"}]
      258 GETUPVAL                         R21 5
      259 GETUPVAL                         R22 8
      260 DUPTABLE                         R23 K39 [{"tag", "Text", "LayoutOrder"}]
      261 LOADK                            R24 K68 ["size-2700-full text-body-small content-emphasis text-align-x-left"]
      262 SETTABLEKS                       R24 R23 K38 ["tag"]
      264 GETTABLEKS                       R24 R6 K69 ["StudsPerTile"]
      266 SETTABLEKS                       R24 R23 K35 ["Text"]
      268 MOVE                             R24 R8
      269 CALL                             R24 0 1
      270 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      272 CALL                             R21 2 1
      273 SETTABLEKS                       R21 R20 K65 ["Label"]
      275 GETUPVAL                         R21 5
      276 GETUPVAL                         R22 12
      277 DUPTABLE                         R23 K74 [{"tag", "min", "max", "value", "onChanged", "LayoutOrder", "testId"}]
      278 LOADK                            R24 K75 ["size-0-full fill bg-shift-200 radius-small"]
      279 SETTABLEKS                       R24 R23 K38 ["tag"]
      281 LOADK                            R24 K76 [0.1]
      282 SETTABLEKS                       R24 R23 K70 ["min"]
      284 LOADN                            R24 20
      285 SETTABLEKS                       R24 R23 K71 ["max"]
      287 GETTABLEKS                       R24 R0 K77 ["studsPerTile"]
      289 SETTABLEKS                       R24 R23 K72 ["value"]
      291 SETTABLEKS                       R4 R23 K73 ["onChanged"]
      293 MOVE                             R24 R8
      294 CALL                             R24 0 1
      295 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      297 GETUPVAL                         R24 7
      298 GETTABLEKS                       R24 R24 K33 ["MaterialGen"]
      300 GETTABLEKS                       R24 R24 K78 ["StudsPerTileValueBar"]
      302 SETTABLEKS                       R24 R23 K31 ["testId"]
      304 CALL                             R21 2 1
      305 SETTABLEKS                       R21 R20 K66 ["Value"]
      307 CALL                             R17 3 1
      308 SETTABLEKS                       R17 R16 K55 ["StudsPerTileRow"]
      310 GETUPVAL                         R17 5
      311 GETUPVAL                         R18 11
      312 DUPTABLE                         R19 K52 [{"tag", "LayoutOrder"}]
      313 LOADK                            R20 K64 ["size-full-600 padding-y-xxsmall row gap-small align-y-center"]
      314 SETTABLEKS                       R20 R19 K38 ["tag"]
      316 MOVE                             R20 R8
      317 CALL                             R20 0 1
      318 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      320 DUPTABLE                         R20 K67 [{"Label", "Value"}]
      321 GETUPVAL                         R21 5
      322 GETUPVAL                         R22 8
      323 DUPTABLE                         R23 K39 [{"tag", "Text", "LayoutOrder"}]
      324 LOADK                            R24 K68 ["size-2700-full text-body-small content-emphasis text-align-x-left"]
      325 SETTABLEKS                       R24 R23 K38 ["tag"]
      327 GETTABLEKS                       R24 R6 K56 ["OrganicPattern"]
      329 SETTABLEKS                       R24 R23 K35 ["Text"]
      331 MOVE                             R24 R8
      332 CALL                             R24 0 1
      333 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      335 CALL                             R21 2 1
      336 SETTABLEKS                       R21 R20 K65 ["Label"]
      338 GETUPVAL                         R21 5
      339 GETUPVAL                         R22 13
      340 DUPTABLE                         R23 K80 [{"size", "label", "isChecked", "onActivated", "LayoutOrder", "testId"}]
      341 GETUPVAL                         R24 0
      342 GETTABLEKS                       R24 R24 K49 ["Enums"]
      344 GETTABLEKS                       R24 R24 K81 ["ToggleSize"]
      346 GETTABLEKS                       R24 R24 K82 ["Medium"]
      348 SETTABLEKS                       R24 R23 K45 ["size"]
      350 LOADK                            R24 K83 [""]
      351 SETTABLEKS                       R24 R23 K79 ["label"]
      353 GETTABLEKS                       R24 R0 K17 ["isOrganic"]
      355 SETTABLEKS                       R24 R23 K44 ["isChecked"]
      357 SETTABLEKS                       R5 R23 K7 ["onActivated"]
      359 MOVE                             R24 R8
      360 CALL                             R24 0 1
      361 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      363 GETUPVAL                         R24 7
      364 GETTABLEKS                       R24 R24 K33 ["MaterialGen"]
      366 GETTABLEKS                       R24 R24 K84 ["OrganicPatternToggle"]
      368 SETTABLEKS                       R24 R23 K31 ["testId"]
      370 CALL                             R21 2 1
      371 SETTABLEKS                       R21 R20 K66 ["Value"]
      373 CALL                             R17 3 1
      374 SETTABLEKS                       R17 R16 K56 ["OrganicPattern"]
      376 CALL                             R13 3 1
      377 SETTABLEKS                       R13 R12 K29 ["Content"]
      379 CALL                             R9 3 -1
      380 RETURN                           R9 -1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        5 GETTABLEKS                       R1 R1 K1 ["isError"]
        7 GETTABLEKS                       R2 R0 K2 ["mode"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Generated"]
       12 JUMPIFNOTEQ                      R2 R3 ; [+7]
       14 JUMPIF                           R1 ; [+5]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R3 2
       17 MOVE                             R4 R0
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       25 GETTABLEKS                       R4 R4 K5 ["join"]
       27 MOVE                             R5 R0
       28 DUPTABLE                         R6 K6 [{"isError"}]
       29 SETTABLEKS                       R1 R6 K1 ["isError"]
       31 CALL                             R4 2 1
       32 CALL                             R2 2 -1
       33 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K4 ["Generated"]
       13 JUMPIFEQ                         R1 R2 ; [+8]
       15 DUPTABLE                         R1 K5 [{"mode"}]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K6 ["Preparing"]
       19 SETTABLEKS                       R2 R1 K3 ["mode"]
       21 RETURN                           R1 1
       22 DUPTABLE                         R1 K9 [{"mode", "name", "assetIds"}]
       23 GETTABLEKS                       R2 R0 K3 ["mode"]
       25 SETTABLEKS                       R2 R1 K3 ["mode"]
       27 GETTABLEKS                       R2 R0 K7 ["name"]
       29 SETTABLEKS                       R2 R1 K7 ["name"]
       31 GETTABLEKS                       R2 R0 K8 ["assetIds"]
       33 SETTABLEKS                       R2 R1 K8 ["assetIds"]
       35 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Generated"]
       13 JUMPIFEQ                         R2 R3 ; [+14]
       15 DUPTABLE                         R2 K7 [{"type", "mode", "isError"}]
       16 LOADK                            R3 K8 ["MaterialGen"]
       17 SETTABLEKS                       R3 R2 K5 ["type"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K9 ["Preparing"]
       22 SETTABLEKS                       R3 R2 K3 ["mode"]
       24 LOADB                            R3 1
       25 SETTABLEKS                       R3 R2 K6 ["isError"]
       27 RETURN                           R2 1
       28 DUPTABLE                         R2 K21 [{"type", "mode", "name", "displayName", "expanded", "assetIds", "studsPerTile", "isOrganic", "onClickMaterial", "setStudsPerTile", "setIsOrganic", "shouldShowChip", "onChipClicked"}]
       29 LOADK                            R3 K8 ["MaterialGen"]
       30 SETTABLEKS                       R3 R2 K5 ["type"]
       32 GETTABLEKS                       R3 R0 K3 ["mode"]
       34 SETTABLEKS                       R3 R2 K3 ["mode"]
       36 GETTABLEKS                       R4 R0 K10 ["name"]
       38 ORK                              R3 R4 K22 ["UNKNOWN_NAME"]
       39 SETTABLEKS                       R3 R2 K10 ["name"]
       41 GETTABLEKS                       R4 R0 K10 ["name"]
       43 ORK                              R3 R4 K22 ["UNKNOWN_NAME"]
       44 SETTABLEKS                       R3 R2 K11 ["displayName"]
       46 LOADB                            R3 0
       47 SETTABLEKS                       R3 R2 K12 ["expanded"]
       49 GETTABLEKS                       R3 R0 K13 ["assetIds"]
       51 JUMPIF                           R3 ; [+2]
       52 NEWTABLE                         R3 0 0
       54 SETTABLEKS                       R3 R2 K13 ["assetIds"]
       56 LOADN                            R3 1
       57 SETTABLEKS                       R3 R2 K14 ["studsPerTile"]
       59 LOADB                            R3 0
       60 SETTABLEKS                       R3 R2 K15 ["isOrganic"]
       62 GETUPVAL                         R3 2
       63 GETTABLEKS                       R3 R3 K23 ["createUnimplemented"]
       65 LOADK                            R4 K16 ["onClickMaterial"]
       66 CALL                             R3 1 1
       67 SETTABLEKS                       R3 R2 K16 ["onClickMaterial"]
       69 GETUPVAL                         R3 2
       70 GETTABLEKS                       R3 R3 K23 ["createUnimplemented"]
       72 LOADK                            R4 K17 ["setStudsPerTile"]
       73 CALL                             R3 1 1
       74 SETTABLEKS                       R3 R2 K17 ["setStudsPerTile"]
       76 GETUPVAL                         R3 2
       77 GETTABLEKS                       R3 R3 K23 ["createUnimplemented"]
       79 LOADK                            R4 K18 ["setIsOrganic"]
       80 CALL                             R3 1 1
       81 SETTABLEKS                       R3 R2 K18 ["setIsOrganic"]
       83 LOADB                            R3 0
       84 SETTABLEKS                       R3 R2 K19 ["shouldShowChip"]
       86 GETUPVAL                         R3 2
       87 GETTABLEKS                       R3 R3 K23 ["createUnimplemented"]
       89 LOADK                            R4 K20 ["onChipClicked"]
       90 CALL                             R3 1 1
       91 SETTABLEKS                       R3 R2 K20 ["onChipClicked"]
       93 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["Carousel"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Guest"]
       32 GETTABLEKS                       R5 R5 K12 ["Environment"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["React"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["Serializer"]
       62 GETTABLEKS                       R9 R9 K18 ["SerializerTypes"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["Components"]
       69 GETTABLEKS                       R10 R10 K19 ["ShimmerGradient"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K16 ["Util"]
       76 GETTABLEKS                       R11 R11 K20 ["TestIds"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K21 ["Resources"]
       83 GETTABLEKS                       R12 R12 K22 ["Localization"]
       85 GETTABLEKS                       R12 R12 K23 ["Translator"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Types"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [require]
       95 GETTABLEKS                       R14 R0 K25 ["Flags"]
       97 GETTABLEKS                       R14 R14 K26 ["FFlagAssistantMultipleChatPersistence"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R5 K27 ["Chip"]
      102 GETTABLEKS                       R15 R5 K28 ["Text"]
      104 GETTABLEKS                       R16 R5 K29 ["Toggle"]
      106 GETTABLEKS                       R17 R5 K30 ["View"]
      108 GETTABLEKS                       R18 R7 K31 ["createNextOrder"]
      110 GETTABLEKS                       R19 R6 K32 ["createElement"]
      112 DUPTABLE                         R20 K36 [{"Preparing", "Generating", "Generated"}]
      113 LOADK                            R21 K33 ["Preparing"]
      114 SETTABLEKS                       R21 R20 K33 ["Preparing"]
      116 LOADK                            R21 K34 ["Generating"]
      117 SETTABLEKS                       R21 R20 K34 ["Generating"]
      119 LOADK                            R21 K35 ["Generated"]
      120 SETTABLEKS                       R21 R20 K35 ["Generated"]
      122 DUPCLOSURE                       R21 K37 [PROTO_5]
      123 CAPTURE                          VAL R6
      124 CAPTURE                          VAL R18
      125 CAPTURE                          VAL R19
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R15
      128 DUPCLOSURE                       R22 K38 [PROTO_7]
      129 CAPTURE                          VAL R20
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R9
      139 DUPCLOSURE                       R23 K39 [PROTO_15]
      140 CAPTURE                          VAL R5
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R16
      154 DUPCLOSURE                       R24 K40 [PROTO_16]
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R3
      160 DUPTABLE                         R25 K43 [{"toMeta", "fromMeta"}]
      161 DUPCLOSURE                       R26 K44 [PROTO_17]
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R20
      164 SETTABLEKS                       R26 R25 K41 ["toMeta"]
      166 DUPCLOSURE                       R26 K45 [PROTO_18]
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R7
      170 SETTABLEKS                       R26 R25 K42 ["fromMeta"]
      172 DUPTABLE                         R26 K50 [{"Type", "ContentWidget", "Serialization", "Modes"}]
      173 LOADK                            R27 K51 ["MaterialGen"]
      174 SETTABLEKS                       R27 R26 K46 ["Type"]
      176 GETTABLEKS                       R27 R6 K52 ["memo"]
      178 MOVE                             R28 R24
      179 CALL                             R27 1 1
      180 SETTABLEKS                       R27 R26 K47 ["ContentWidget"]
      182 SETTABLEKS                       R25 R26 K48 ["Serialization"]
      184 SETTABLEKS                       R20 R26 K49 ["Modes"]
      186 RETURN                           R26 1
