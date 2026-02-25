PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R0 K1 ["AbsoluteSize"]
        4 GETTABLEKS                       R7 R1 K2 ["Position"]
        6 GETTABLEKS                       R6 R7 K3 ["X"]
        8 GETTABLEKS                       R7 R2 K3 ["X"]
       10 SUB                              R5 R6 R7
       11 LOADN                            R6 0
       12 GETTABLEKS                       R7 R3 K3 ["X"]
       14 FASTCALL                         MATH_CLAMP ; [+2]
       15 GETIMPORT                        R4 K6 [math.clamp]
       17 CALL                             R4 3 1
       18 GETTABLEKS                       R8 R3 K3 ["X"]
       20 DIV                              R7 R4 R8
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R9 R10 K7 ["max"]
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R10 R11 K8 ["min"]
       27 SUB                              R8 R9 R10
       28 MUL                              R6 R7 R8
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K8 ["min"]
       32 ADD                              R5 R6 R7
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K9 ["onChanged"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useBinding"]
        8 LOADN                            R4 0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R0
       15 NEWTABLE                         R6 0 1
       17 GETTABLEKS                       R7 R0 K3 ["onChanged"]
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R4
       28 NEWTABLE                         R7 0 2
       30 MOVE                             R8 R2
       31 MOVE                             R9 R4
       32 SETLIST                          R7 R8 2 [1]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       38 NEWCLOSURE                       R7 P2
       39 CAPTURE                          VAL R2
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R2
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R7 R8 K2 ["useCallback"]
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
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R8 R9 K6 ["useMemo"]
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
      101 GETUPVAL                         R19 0
      102 GETTABLEKS                       R18 R19 K20 ["Event"]
      104 GETTABLEKS                       R17 R18 K21 ["InputBegan"]
      106 SETTABLE                         R5 R16 R17
      107 GETUPVAL                         R19 0
      108 GETTABLEKS                       R18 R19 K20 ["Event"]
      110 GETTABLEKS                       R17 R18 K22 ["InputEnded"]
      112 SETTABLE                         R6 R16 R17
      113 GETUPVAL                         R19 0
      114 GETTABLEKS                       R18 R19 K20 ["Event"]
      116 GETTABLEKS                       R17 R18 K23 ["InputChanged"]
      118 SETTABLE                         R7 R16 R17
      119 GETUPVAL                         R18 0
      120 GETTABLEKS                       R17 R18 K24 ["Tag"]
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
       30 LOADK                            R3 K9 ["MeshGen"]
       31 LOADK                            R4 K3 ["UnknownError"]
       32 NAMECALL                         R1 R1 K6 ["getText"]
       34 CALL                             R1 3 1
       35 SETTABLEKS                       R1 R0 K3 ["UnknownError"]
       37 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["Generating"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+4]
        7 GETTABLEKS                       R1 R0 K2 ["name"]
        9 JUMP                             ; [+1]
       10 LOADK                            R1 K3 [""]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["useMemo"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R4 0 2
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K5 ["locale"]
       22 MOVE                             R6 R1
       23 SETLIST                          R4 R5 2 [1]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 3
       27 CALL                             R3 0 1
       28 GETUPVAL                         R4 4
       29 GETUPVAL                         R6 5
       30 GETTABLEKS                       R5 R6 K6 ["Root"]
       32 DUPTABLE                         R6 K11 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       33 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       35 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       37 LOADB                            R7 0
       38 SETTABLEKS                       R7 R6 K8 ["expanded"]
       40 GETTABLEKS                       R7 R0 K9 ["contentId"]
       42 SETTABLEKS                       R7 R6 K9 ["contentId"]
       44 GETTABLEKS                       R7 R0 K10 ["editThisContent"]
       46 SETTABLEKS                       R7 R6 K10 ["editThisContent"]
       48 DUPTABLE                         R7 K13 [{"Header"}]
       49 GETUPVAL                         R8 4
       50 GETUPVAL                         R10 5
       51 GETTABLEKS                       R9 R10 K12 ["Header"]
       53 DUPTABLE                         R10 K16 [{"IsDisabled", "LayoutOrder", "testId"}]
       54 LOADB                            R11 1
       55 SETTABLEKS                       R11 R10 K14 ["IsDisabled"]
       57 MOVE                             R11 R3
       58 CALL                             R11 0 1
       59 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       61 GETUPVAL                         R13 6
       62 GETTABLEKS                       R12 R13 K17 ["MaterialGen"]
       64 GETTABLEKS                       R11 R12 K18 ["Expand"]
       66 SETTABLEKS                       R11 R10 K15 ["testId"]
       68 DUPTABLE                         R11 K20 [{"Text"}]
       69 GETUPVAL                         R12 4
       70 GETUPVAL                         R13 7
       71 DUPTABLE                         R14 K22 [{"tag", "Text", "LayoutOrder"}]
       72 LOADK                            R15 K23 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
       73 SETTABLEKS                       R15 R14 K21 ["tag"]
       75 GETTABLEKS                       R16 R0 K24 ["isError"]
       77 JUMPIFNOT                        R16 ; [+3]
       78 GETTABLEKS                       R15 R2 K25 ["FailedToGenerate"]
       80 JUMP                             ; [+22]
       81 GETTABLEKS                       R16 R0 K0 ["mode"]
       83 GETUPVAL                         R18 0
       84 GETTABLEKS                       R17 R18 K1 ["Generating"]
       86 JUMPIFNOTEQ                      R16 R17 ; [+4]
       88 GETTABLEKS                       R15 R2 K1 ["Generating"]
       90 JUMP                             ; [+12]
       91 GETTABLEKS                       R16 R0 K0 ["mode"]
       93 GETUPVAL                         R18 0
       94 GETTABLEKS                       R17 R18 K26 ["Preparing"]
       96 JUMPIFNOTEQ                      R16 R17 ; [+4]
       98 GETTABLEKS                       R15 R2 K26 ["Preparing"]
      100 JUMP                             ; [+2]
      101 GETTABLEKS                       R15 R2 K27 ["UnknownError"]
      103 SETTABLEKS                       R15 R14 K19 ["Text"]
      105 MOVE                             R15 R3
      106 CALL                             R15 0 1
      107 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      109 DUPTABLE                         R15 K29 [{"Shimmer"}]
      110 GETTABLEKS                       R17 R0 K24 ["isError"]
      112 JUMPIF                           R17 ; [+4]
      113 GETUPVAL                         R16 4
      114 GETUPVAL                         R17 8
      115 CALL                             R16 1 1
      116 JUMP                             ; [+1]
      117 LOADNIL                          R16
      118 SETTABLEKS                       R16 R15 K28 ["Shimmer"]
      120 CALL                             R12 3 1
      121 SETTABLEKS                       R12 R11 K19 ["Text"]
      123 CALL                             R8 3 1
      124 SETTABLEKS                       R8 R7 K12 ["Header"]
      126 CALL                             R4 3 -1
      127 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClickMaterial"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["studsPerTile"]
        3 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setStudsPerTile"]
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
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K8 ["editThisContent"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K9 ["contentId"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R1
       25 CALL                             R2 2 0
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K0 ["setStudsPerTile"]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isOrganic"]
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setIsOrganic"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["isOrganic"]
        8 NOT                              R0 R1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K2 ["editThisContent"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["contentId"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R0
       17 CALL                             R1 2 0
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K0 ["setIsOrganic"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MaterialGen"]
        2 LOADK                            R3 K1 ["Generated"]
        3 DUPTABLE                         R4 K3 [{"name"}]
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R6 R7 K4 ["shouldShowChip"]
        7 JUMPIFNOT                        R6 ; [+2]
        8 LOADK                            R5 K5 ["{CHIP}"]
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K2 ["name"]
       13 SETTABLEKS                       R5 R4 K2 ["name"]
       15 NAMECALL                         R0 R0 K6 ["getText"]
       17 CALL                             R0 4 1
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K4 ["shouldShowChip"]
       21 JUMPIFNOT                        R1 ; [+16]
       22 LOADK                            R3 K7 ["[ ]*{CHIP}[ ]*"]
       23 LOADK                            R4 K8 [" "]
       24 NAMECALL                         R1 R0 K9 ["gsub"]
       26 CALL                             R1 3 1
       27 LOADK                            R3 K10 ["^%s+"]
       28 LOADK                            R4 K11 [""]
       29 NAMECALL                         R1 R1 K9 ["gsub"]
       31 CALL                             R1 3 1
       32 LOADK                            R3 K12 ["%s+$"]
       33 LOADK                            R4 K11 [""]
       34 NAMECALL                         R1 R1 K9 ["gsub"]
       36 CALL                             R1 3 1
       37 MOVE                             R0 R1
       38 DUPTABLE                         R1 K16 [{"Generated", "SelectAVariant", "StudsPerTile", "OrganicPattern"}]
       39 SETTABLEKS                       R0 R1 K1 ["Generated"]
       41 GETUPVAL                         R2 0
       42 LOADK                            R4 K0 ["MaterialGen"]
       43 LOADK                            R5 K13 ["SelectAVariant"]
       44 NAMECALL                         R2 R2 K6 ["getText"]
       46 CALL                             R2 3 1
       47 SETTABLEKS                       R2 R1 K13 ["SelectAVariant"]
       49 GETUPVAL                         R2 0
       50 LOADK                            R4 K0 ["MaterialGen"]
       51 LOADK                            R5 K14 ["StudsPerTile"]
       52 NAMECALL                         R2 R2 K6 ["getText"]
       54 CALL                             R2 3 1
       55 SETTABLEKS                       R2 R1 K14 ["StudsPerTile"]
       57 GETUPVAL                         R2 0
       58 LOADK                            R4 K0 ["MaterialGen"]
       59 LOADK                            R5 K15 ["OrganicPattern"]
       60 NAMECALL                         R2 R2 K6 ["getText"]
       62 CALL                             R2 3 1
       63 SETTABLEKS                       R2 R1 K15 ["OrganicPattern"]
       65 RETURN                           R1 1

PROTO_14:
        0 DUPTABLE                         R0 K4 [{"Applied", "SelectAVariant", "StudsPerTile", "OrganicPattern"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["MaterialGen"]
        3 LOADK                            R4 K0 ["Applied"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Applied"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["MaterialGen"]
       11 LOADK                            R4 K1 ["SelectAVariant"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["SelectAVariant"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["MaterialGen"]
       19 LOADK                            R4 K2 ["StudsPerTile"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["StudsPerTile"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K5 ["MaterialGen"]
       27 LOADK                            R4 K3 ["OrganicPattern"]
       28 NAMECALL                         R1 R1 K6 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["OrganicPattern"]
       33 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["getClassIcon"]
        6 LOADK                            R2 K2 ["MaterialVariant"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R4 R1 K2 ["Config"]
        8 GETTABLEKS                       R3 R4 K3 ["ColorMode"]
       10 GETTABLEKS                       R2 R3 K4 ["Name"]
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
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K13 ["useCallback"]
       41 NEWCLOSURE                       R5 P1
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R6 0 3
       45 GETTABLEKS                       R7 R0 K14 ["editThisContent"]
       47 GETTABLEKS                       R8 R0 K15 ["contentId"]
       49 GETTABLEKS                       R9 R0 K16 ["setStudsPerTile"]
       51 SETLIST                          R6 R7 3 [1]
       53 CALL                             R4 2 1
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R5 R6 K13 ["useCallback"]
       57 NEWCLOSURE                       R6 P2
       58 CAPTURE                          VAL R0
       59 NEWTABLE                         R7 0 4
       61 GETTABLEKS                       R8 R0 K17 ["isOrganic"]
       63 GETTABLEKS                       R9 R0 K14 ["editThisContent"]
       65 GETTABLEKS                       R10 R0 K15 ["contentId"]
       67 GETTABLEKS                       R11 R0 K18 ["setIsOrganic"]
       69 SETLIST                          R7 R8 4 [1]
       71 CALL                             R5 2 1
       72 LOADNIL                          R6
       73 GETUPVAL                         R7 2
       74 CALL                             R7 0 1
       75 JUMPIFNOT                        R7 ; [+20]
       76 GETUPVAL                         R8 1
       77 GETTABLEKS                       R7 R8 K19 ["useMemo"]
       79 NEWCLOSURE                       R8 P3
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R0
       82 NEWTABLE                         R9 0 3
       84 GETUPVAL                         R11 3
       85 GETTABLEKS                       R10 R11 K20 ["locale"]
       87 GETTABLEKS                       R11 R0 K21 ["name"]
       89 GETTABLEKS                       R12 R0 K22 ["shouldShowChip"]
       91 SETLIST                          R9 R10 3 [1]
       93 CALL                             R7 2 1
       94 MOVE                             R6 R7
       95 JUMP                             ; [+14]
       96 GETUPVAL                         R8 1
       97 GETTABLEKS                       R7 R8 K19 ["useMemo"]
       99 DUPCLOSURE                       R8 K23 [PROTO_14]
      100 CAPTURE                          UPVAL U3
      101 NEWTABLE                         R9 0 1
      103 GETUPVAL                         R11 3
      104 GETTABLEKS                       R10 R11 K20 ["locale"]
      106 SETLIST                          R9 R10 1 [1]
      108 CALL                             R7 2 1
      109 MOVE                             R6 R7
      110 GETUPVAL                         R8 1
      111 GETTABLEKS                       R7 R8 K19 ["useMemo"]
      113 DUPCLOSURE                       R8 K24 [PROTO_15]
      114 CAPTURE                          UPVAL U4
      115 NEWTABLE                         R9 0 1
      117 MOVE                             R10 R2
      118 SETLIST                          R9 R10 1 [1]
      120 CALL                             R7 2 1
      121 LOADNIL                          R8
      122 GETUPVAL                         R9 2
      123 CALL                             R9 0 1
      124 JUMPIF                           R9 ; [+10]
      125 GETTABLEKS                       R8 R6 K25 ["Applied"]
      127 GETTABLEKS                       R9 R0 K22 ["shouldShowChip"]
      129 JUMPIF                           R9 ; [+5]
      130 MOVE                             R9 R8
      131 LOADK                            R10 K26 [" "]
      132 GETTABLEKS                       R11 R0 K21 ["name"]
      134 CONCAT                           R8 R9 R11
      135 GETUPVAL                         R9 5
      136 CALL                             R9 0 1
      137 GETUPVAL                         R10 6
      138 GETUPVAL                         R12 7
      139 GETTABLEKS                       R11 R12 K27 ["Root"]
      141 DUPTABLE                         R12 K30 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      142 GETTABLEKS                       R13 R0 K28 ["LayoutOrder"]
      144 SETTABLEKS                       R13 R12 K28 ["LayoutOrder"]
      146 GETTABLEKS                       R13 R0 K29 ["expanded"]
      148 SETTABLEKS                       R13 R12 K29 ["expanded"]
      150 GETTABLEKS                       R13 R0 K15 ["contentId"]
      152 SETTABLEKS                       R13 R12 K15 ["contentId"]
      154 GETTABLEKS                       R13 R0 K14 ["editThisContent"]
      156 SETTABLEKS                       R13 R12 K14 ["editThisContent"]
      158 DUPTABLE                         R13 K33 [{"Header", "Content"}]
      159 GETUPVAL                         R14 6
      160 GETUPVAL                         R16 7
      161 GETTABLEKS                       R15 R16 K31 ["Header"]
      163 DUPTABLE                         R16 K35 [{"LayoutOrder", "testId"}]
      164 MOVE                             R17 R9
      165 CALL                             R17 0 1
      166 SETTABLEKS                       R17 R16 K28 ["LayoutOrder"]
      168 GETUPVAL                         R19 8
      169 GETTABLEKS                       R18 R19 K36 ["MaterialGen"]
      171 GETTABLEKS                       R17 R18 K37 ["Expand"]
      173 SETTABLEKS                       R17 R16 K34 ["testId"]
      175 DUPTABLE                         R17 K40 [{"Text", "AssetLink"}]
      176 GETUPVAL                         R19 2
      177 CALL                             R19 0 1
      178 JUMPIFNOT                        R19 ; [+16]
      179 GETUPVAL                         R18 6
      180 GETUPVAL                         R19 9
      181 DUPTABLE                         R20 K42 [{"tag", "Text", "LayoutOrder"}]
      182 LOADK                            R21 K43 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
      183 SETTABLEKS                       R21 R20 K41 ["tag"]
      185 GETTABLEKS                       R21 R6 K44 ["Generated"]
      187 SETTABLEKS                       R21 R20 K38 ["Text"]
      189 MOVE                             R21 R9
      190 CALL                             R21 0 1
      191 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      193 CALL                             R18 2 1
      194 JUMP                             ; [+13]
      195 GETUPVAL                         R18 6
      196 GETUPVAL                         R19 9
      197 DUPTABLE                         R20 K42 [{"tag", "Text", "LayoutOrder"}]
      198 LOADK                            R21 K45 ["size-0-0 auto-xy text-label-small content-default text-truncate-end"]
      199 SETTABLEKS                       R21 R20 K41 ["tag"]
      201 SETTABLEKS                       R8 R20 K38 ["Text"]
      203 MOVE                             R21 R9
      204 CALL                             R21 0 1
      205 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      207 CALL                             R18 2 1
      208 SETTABLEKS                       R18 R17 K38 ["Text"]
      210 GETTABLEKS                       R18 R0 K22 ["shouldShowChip"]
      212 JUMPIFNOT                        R18 ; [+32]
      213 GETUPVAL                         R18 6
      214 GETUPVAL                         R19 10
      215 DUPTABLE                         R20 K50 [{"text", "leading", "onActivated", "isChecked", "size", "LayoutOrder"}]
      216 GETTABLEKS                       R21 R0 K21 ["name"]
      218 SETTABLEKS                       R21 R20 K46 ["text"]
      220 GETTABLEKS                       R21 R7 K51 ["Image"]
      222 SETTABLEKS                       R21 R20 K47 ["leading"]
      224 GETTABLEKS                       R21 R0 K52 ["onChipClicked"]
      226 SETTABLEKS                       R21 R20 K7 ["onActivated"]
      228 LOADB                            R21 0
      229 SETTABLEKS                       R21 R20 K48 ["isChecked"]
      231 GETUPVAL                         R24 0
      232 GETTABLEKS                       R23 R24 K53 ["Enums"]
      234 GETTABLEKS                       R22 R23 K54 ["ChipSize"]
      236 GETTABLEKS                       R21 R22 K55 ["Small"]
      238 SETTABLEKS                       R21 R20 K49 ["size"]
      240 MOVE                             R21 R9
      241 CALL                             R21 0 1
      242 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      244 CALL                             R18 2 1
      245 SETTABLEKS                       R18 R17 K39 ["AssetLink"]
      247 CALL                             R14 3 1
      248 SETTABLEKS                       R14 R13 K31 ["Header"]
      250 GETUPVAL                         R14 6
      251 GETUPVAL                         R16 7
      252 GETTABLEKS                       R15 R16 K32 ["Content"]
      254 DUPTABLE                         R16 K56 [{"tag", "LayoutOrder"}]
      255 LOADK                            R17 K57 ["col size-0-0 fill auto-y gap-small"]
      256 SETTABLEKS                       R17 R16 K41 ["tag"]
      258 MOVE                             R17 R9
      259 CALL                             R17 0 1
      260 SETTABLEKS                       R17 R16 K28 ["LayoutOrder"]
      262 DUPTABLE                         R17 K61 [{"Text", "Carousel", "StudsPerTileRow", "OrganicPattern"}]
      263 GETUPVAL                         R18 6
      264 GETUPVAL                         R19 9
      265 DUPTABLE                         R20 K42 [{"tag", "Text", "LayoutOrder"}]
      266 LOADK                            R21 K62 ["size-0-0 auto-xy content-default text-body-small text-truncate-end"]
      267 SETTABLEKS                       R21 R20 K41 ["tag"]
      269 GETTABLEKS                       R21 R6 K63 ["SelectAVariant"]
      271 SETTABLEKS                       R21 R20 K38 ["Text"]
      273 MOVE                             R21 R9
      274 CALL                             R21 0 1
      275 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      277 CALL                             R18 2 1
      278 SETTABLEKS                       R18 R17 K38 ["Text"]
      280 GETUPVAL                         R18 6
      281 GETUPVAL                         R19 11
      282 DUPTABLE                         R20 K67 [{"height", "canSelect", "items", "LayoutOrder"}]
      283 LOADN                            R21 70
      284 SETTABLEKS                       R21 R20 K64 ["height"]
      286 LOADB                            R21 0
      287 SETTABLEKS                       R21 R20 K65 ["canSelect"]
      289 SETTABLEKS                       R3 R20 K66 ["items"]
      291 MOVE                             R21 R9
      292 CALL                             R21 0 1
      293 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      295 CALL                             R18 2 1
      296 SETTABLEKS                       R18 R17 K58 ["Carousel"]
      298 GETUPVAL                         R18 6
      299 GETUPVAL                         R19 12
      300 DUPTABLE                         R20 K56 [{"tag", "LayoutOrder"}]
      301 LOADK                            R21 K68 ["size-full-600 padding-y-xxsmall row gap-small align-y-center"]
      302 SETTABLEKS                       R21 R20 K41 ["tag"]
      304 MOVE                             R21 R9
      305 CALL                             R21 0 1
      306 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      308 DUPTABLE                         R21 K71 [{"Label", "Value"}]
      309 GETUPVAL                         R22 6
      310 GETUPVAL                         R23 9
      311 DUPTABLE                         R24 K42 [{"tag", "Text", "LayoutOrder"}]
      312 LOADK                            R25 K72 ["size-2700-full text-body-small content-emphasis text-align-x-left"]
      313 SETTABLEKS                       R25 R24 K41 ["tag"]
      315 GETTABLEKS                       R25 R6 K73 ["StudsPerTile"]
      317 SETTABLEKS                       R25 R24 K38 ["Text"]
      319 MOVE                             R25 R9
      320 CALL                             R25 0 1
      321 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      323 CALL                             R22 2 1
      324 SETTABLEKS                       R22 R21 K69 ["Label"]
      326 GETUPVAL                         R22 6
      327 GETUPVAL                         R23 13
      328 DUPTABLE                         R24 K78 [{"tag", "min", "max", "value", "onChanged", "LayoutOrder", "testId"}]
      329 LOADK                            R25 K79 ["size-0-full fill bg-shift-200 radius-small"]
      330 SETTABLEKS                       R25 R24 K41 ["tag"]
      332 LOADK                            R25 K80 [0.1]
      333 SETTABLEKS                       R25 R24 K74 ["min"]
      335 LOADN                            R25 20
      336 SETTABLEKS                       R25 R24 K75 ["max"]
      338 GETTABLEKS                       R25 R0 K81 ["studsPerTile"]
      340 SETTABLEKS                       R25 R24 K76 ["value"]
      342 SETTABLEKS                       R4 R24 K77 ["onChanged"]
      344 MOVE                             R25 R9
      345 CALL                             R25 0 1
      346 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      348 GETUPVAL                         R27 8
      349 GETTABLEKS                       R26 R27 K36 ["MaterialGen"]
      351 GETTABLEKS                       R25 R26 K82 ["StudsPerTileValueBar"]
      353 SETTABLEKS                       R25 R24 K34 ["testId"]
      355 CALL                             R22 2 1
      356 SETTABLEKS                       R22 R21 K70 ["Value"]
      358 CALL                             R18 3 1
      359 SETTABLEKS                       R18 R17 K59 ["StudsPerTileRow"]
      361 GETUPVAL                         R18 6
      362 GETUPVAL                         R19 12
      363 DUPTABLE                         R20 K56 [{"tag", "LayoutOrder"}]
      364 LOADK                            R21 K68 ["size-full-600 padding-y-xxsmall row gap-small align-y-center"]
      365 SETTABLEKS                       R21 R20 K41 ["tag"]
      367 MOVE                             R21 R9
      368 CALL                             R21 0 1
      369 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      371 DUPTABLE                         R21 K71 [{"Label", "Value"}]
      372 GETUPVAL                         R22 6
      373 GETUPVAL                         R23 9
      374 DUPTABLE                         R24 K42 [{"tag", "Text", "LayoutOrder"}]
      375 LOADK                            R25 K72 ["size-2700-full text-body-small content-emphasis text-align-x-left"]
      376 SETTABLEKS                       R25 R24 K41 ["tag"]
      378 GETTABLEKS                       R25 R6 K60 ["OrganicPattern"]
      380 SETTABLEKS                       R25 R24 K38 ["Text"]
      382 MOVE                             R25 R9
      383 CALL                             R25 0 1
      384 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      386 CALL                             R22 2 1
      387 SETTABLEKS                       R22 R21 K69 ["Label"]
      389 GETUPVAL                         R22 6
      390 GETUPVAL                         R23 14
      391 DUPTABLE                         R24 K84 [{"size", "label", "isChecked", "onActivated", "LayoutOrder", "testId"}]
      392 GETUPVAL                         R28 0
      393 GETTABLEKS                       R27 R28 K53 ["Enums"]
      395 GETTABLEKS                       R26 R27 K85 ["ToggleSize"]
      397 GETTABLEKS                       R25 R26 K86 ["Medium"]
      399 SETTABLEKS                       R25 R24 K49 ["size"]
      401 LOADK                            R25 K87 [""]
      402 SETTABLEKS                       R25 R24 K83 ["label"]
      404 GETTABLEKS                       R25 R0 K17 ["isOrganic"]
      406 SETTABLEKS                       R25 R24 K48 ["isChecked"]
      408 SETTABLEKS                       R5 R24 K7 ["onActivated"]
      410 MOVE                             R25 R9
      411 CALL                             R25 0 1
      412 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      414 GETUPVAL                         R27 8
      415 GETTABLEKS                       R26 R27 K36 ["MaterialGen"]
      417 GETTABLEKS                       R25 R26 K88 ["OrganicPatternToggle"]
      419 SETTABLEKS                       R25 R24 K34 ["testId"]
      421 CALL                             R22 2 1
      422 SETTABLEKS                       R22 R21 K70 ["Value"]
      424 CALL                             R18 3 1
      425 SETTABLEKS                       R18 R17 K60 ["OrganicPattern"]
      427 CALL                             R14 3 1
      428 SETTABLEKS                       R14 R13 K32 ["Content"]
      430 CALL                             R10 3 -1
      431 RETURN                           R10 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+34]
        3 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R2 R0 K0 ["toolResult"]
        8 GETTABLEKS                       R1 R2 K1 ["isError"]
       10 GETTABLEKS                       R2 R0 K2 ["mode"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["Generated"]
       15 JUMPIFNOTEQ                      R2 R3 ; [+7]
       17 JUMPIF                           R1 ; [+5]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 3
       20 MOVE                             R4 R0
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 2
       24 GETUPVAL                         R3 4
       25 GETUPVAL                         R6 5
       26 GETTABLEKS                       R5 R6 K4 ["Dictionary"]
       28 GETTABLEKS                       R4 R5 K5 ["join"]
       30 MOVE                             R5 R0
       31 DUPTABLE                         R6 K6 [{"isError"}]
       32 SETTABLEKS                       R1 R6 K1 ["isError"]
       34 CALL                             R4 2 1
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1
       37 GETUPVAL                         R1 3
       38 MOVE                             R2 R0
       39 CALL                             R1 1 -1
       40 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R4 K8 ["Carousel"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["ContentWidgetRegistry"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["Cryo"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Guest"]
       39 GETTABLEKS                       R6 R7 K14 ["Environment"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Parent"]
       46 GETTABLEKS                       R7 R8 K15 ["Foundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Parent"]
       53 GETTABLEKS                       R8 R9 K16 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Parent"]
       60 GETTABLEKS                       R9 R10 K17 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K6 ["Components"]
       67 GETTABLEKS                       R10 R11 K18 ["ShimmerGradient"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K9 ["Util"]
       74 GETTABLEKS                       R11 R12 K19 ["TestIds"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R14 R0 K20 ["Resources"]
       81 GETTABLEKS                       R13 R14 K21 ["Localization"]
       83 GETTABLEKS                       R12 R13 K22 ["Translator"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K5 [require]
       88 GETTABLEKS                       R13 R0 K23 ["Types"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R15 R0 K24 ["Flags"]
       95 GETTABLEKS                       R14 R15 K25 ["FFlagAssistantRegisterWidgetsThroughTools"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R16 R0 K24 ["Flags"]
      102 GETTABLEKS                       R15 R16 K26 ["FFlagMCPAssistantLongRunningToolCalls"]
      104 CALL                             R14 1 1
      105 GETTABLEKS                       R15 R6 K27 ["Chip"]
      107 GETTABLEKS                       R16 R6 K28 ["Text"]
      109 GETTABLEKS                       R17 R6 K29 ["Toggle"]
      111 GETTABLEKS                       R18 R6 K30 ["View"]
      113 GETTABLEKS                       R19 R8 K31 ["createNextOrder"]
      115 GETTABLEKS                       R20 R7 K32 ["createElement"]
      117 DUPTABLE                         R21 K36 [{"Preparing", "Generating", "Generated"}]
      118 LOADK                            R22 K33 ["Preparing"]
      119 SETTABLEKS                       R22 R21 K33 ["Preparing"]
      121 LOADK                            R22 K34 ["Generating"]
      122 SETTABLEKS                       R22 R21 K34 ["Generating"]
      124 LOADK                            R22 K35 ["Generated"]
      125 SETTABLEKS                       R22 R21 K35 ["Generated"]
      127 DUPCLOSURE                       R22 K37 [PROTO_5]
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R20
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R16
      133 DUPCLOSURE                       R23 K38 [PROTO_7]
      134 CAPTURE                          VAL R21
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R19
      138 CAPTURE                          VAL R20
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R9
      143 DUPCLOSURE                       R24 K39 [PROTO_16]
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R17
      159 DUPCLOSURE                       R25 K40 [PROTO_17]
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R24
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R4
      166 DUPTABLE                         R26 K44 [{"Type", "ContentWidget", "Modes"}]
      167 LOADK                            R27 K45 ["MaterialGen"]
      168 SETTABLEKS                       R27 R26 K41 ["Type"]
      170 MOVE                             R28 R13
      171 CALL                             R28 0 1
      172 JUMPIFNOT                        R28 ; [+5]
      173 GETTABLEKS                       R27 R7 K46 ["memo"]
      175 MOVE                             R28 R25
      176 CALL                             R27 1 1
      177 JUMP                             ; [+1]
      178 MOVE                             R27 R25
      179 SETTABLEKS                       R27 R26 K42 ["ContentWidget"]
      181 SETTABLEKS                       R21 R26 K43 ["Modes"]
      183 MOVE                             R27 R13
      184 CALL                             R27 0 1
      185 JUMPIF                           R27 ; [+7]
      186 GETTABLEKS                       R27 R3 K47 ["registerWidget"]
      188 GETTABLEKS                       R28 R26 K41 ["Type"]
      190 GETTABLEKS                       R29 R26 K42 ["ContentWidget"]
      192 CALL                             R27 2 0
      193 RETURN                           R26 1
