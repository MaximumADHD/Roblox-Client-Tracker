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
      138 DUPTABLE                         R20 K32 [{["tag"] = "bg-shift-300", ["Size"], ["LayoutOrder"]}]
      139 GETIMPORT                        R21 K17 [UDim2.fromScale]
      141 GETTABLEKS                       R24 R0 K33 ["value"]
      143 GETTABLEKS                       R25 R0 K4 ["min"]
      145 SUB                              R23 R24 R25
      146 GETTABLEKS                       R25 R0 K5 ["max"]
      148 GETTABLEKS                       R26 R0 K4 ["min"]
      150 SUB                              R24 R25 R26
      151 DIV                              R22 R23 R24
      152 LOADN                            R23 1
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K18 ["Size"]
      156 MOVE                             R21 R9
      157 CALL                             R21 0 1
      158 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      160 CALL                             R18 2 1
      161 SETTABLEKS                       R18 R17 K28 ["VisualBar"]
      163 GETUPVAL                         R18 2
      164 GETUPVAL                         R19 3
      165 DUPTABLE                         R20 K35 [{["tag"] = "size-full-full padding-xsmall", ["LayoutOrder"]}]
      166 MOVE                             R21 R9
      167 CALL                             R21 0 1
      168 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      170 DUPTABLE                         R21 K37 [{"Text"}]
      171 GETUPVAL                         R22 2
      172 GETUPVAL                         R23 4
      173 DUPTABLE                         R24 K40 [{["tag"] = "size-full-full text-align-x-left content-emphasis", ["fontStyle"], ["Text"], ["LayoutOrder"]}]
      174 SETTABLEKS                       R8 R24 K39 ["fontStyle"]
      176 GETIMPORT                        R25 K42 [string.format]
      178 LOADK                            R27 K43 ["%%.%*f"]
      179 LOADN                            R29 1
      180 NAMECALL                         R27 R27 K27 ["format"]
      182 CALL                             R27 2 1
      183 MOVE                             R26 R27
      184 GETTABLEKS                       R27 R0 K33 ["value"]
      186 CALL                             R25 2 1
      187 SETTABLEKS                       R25 R24 K36 ["Text"]
      189 MOVE                             R25 R9
      190 CALL                             R25 0 1
      191 SETTABLEKS                       R25 R24 K9 ["LayoutOrder"]
      193 CALL                             R22 2 1
      194 SETTABLEKS                       R22 R21 K36 ["Text"]
      196 CALL                             R18 3 1
      197 SETTABLEKS                       R18 R17 K29 ["TextContainer"]
      199 CALL                             R14 3 1
      200 SETTABLEKS                       R14 R13 K12 ["InteractionLayer"]
      202 CALL                             R10 3 -1
      203 RETURN                           R10 -1

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
       26 GETTABLEKS                       R4 R0 K6 ["isError"]
       28 NOT                              R3 R4
       29 JUMPIFNOT                        R3 ; [+17]
       30 LOADB                            R3 1
       31 GETTABLEKS                       R4 R0 K0 ["mode"]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K7 ["Preparing"]
       36 JUMPIFEQ                         R4 R5 ; [+10]
       38 GETTABLEKS                       R4 R0 K0 ["mode"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K1 ["Generating"]
       43 JUMPIFEQ                         R4 R5 ; [+2]
       45 LOADB                            R3 0 +1
       46 LOADB                            R3 1
       47 GETUPVAL                         R4 3
       48 CALL                             R4 0 1
       49 GETUPVAL                         R5 4
       50 GETUPVAL                         R6 5
       51 GETTABLEKS                       R6 R6 K8 ["Root"]
       53 DUPTABLE                         R7 K14 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       54 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       56 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       58 GETTABLEKS                       R8 R0 K12 ["contentId"]
       60 SETTABLEKS                       R8 R7 K12 ["contentId"]
       62 GETTABLEKS                       R8 R0 K13 ["editThisContent"]
       64 SETTABLEKS                       R8 R7 K13 ["editThisContent"]
       66 DUPTABLE                         R8 K16 [{"Header"}]
       67 GETUPVAL                         R9 4
       68 GETUPVAL                         R10 5
       69 GETTABLEKS                       R10 R10 K15 ["Header"]
       71 DUPTABLE                         R11 K20 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
       72 MOVE                             R12 R4
       73 CALL                             R12 0 1
       74 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       76 GETUPVAL                         R12 6
       77 GETTABLEKS                       R12 R12 K21 ["MaterialGen"]
       79 GETTABLEKS                       R12 R12 K22 ["Expand"]
       81 SETTABLEKS                       R12 R11 K19 ["testId"]
       83 DUPTABLE                         R12 K24 [{"Text"}]
       84 GETUPVAL                         R13 4
       85 GETUPVAL                         R14 7
       86 DUPTABLE                         R15 K27 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       87 GETTABLEKS                       R17 R0 K6 ["isError"]
       89 JUMPIFNOT                        R17 ; [+3]
       90 GETTABLEKS                       R16 R2 K28 ["FailedToGenerate"]
       92 JUMP                             ; [+22]
       93 GETTABLEKS                       R17 R0 K0 ["mode"]
       95 GETUPVAL                         R18 0
       96 GETTABLEKS                       R18 R18 K1 ["Generating"]
       98 JUMPIFNOTEQ                      R17 R18 ; [+4]
      100 GETTABLEKS                       R16 R2 K1 ["Generating"]
      102 JUMP                             ; [+12]
      103 GETTABLEKS                       R17 R0 K0 ["mode"]
      105 GETUPVAL                         R18 0
      106 GETTABLEKS                       R18 R18 K7 ["Preparing"]
      108 JUMPIFNOTEQ                      R17 R18 ; [+4]
      110 GETTABLEKS                       R16 R2 K7 ["Preparing"]
      112 JUMP                             ; [+2]
      113 GETTABLEKS                       R16 R2 K29 ["UnknownError"]
      115 SETTABLEKS                       R16 R15 K23 ["Text"]
      117 MOVE                             R16 R4
      118 CALL                             R16 0 1
      119 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      121 DUPTABLE                         R16 K31 [{"Shimmer"}]
      122 MOVE                             R17 R3
      123 JUMPIFNOT                        R17 ; [+3]
      124 GETUPVAL                         R17 4
      125 GETUPVAL                         R18 8
      126 CALL                             R17 1 1
      127 SETTABLEKS                       R17 R16 K30 ["Shimmer"]
      129 CALL                             R13 3 1
      130 SETTABLEKS                       R13 R12 K23 ["Text"]
      132 CALL                             R9 3 1
      133 SETTABLEKS                       R9 R8 K15 ["Header"]
      135 CALL                             R5 3 -1
      136 RETURN                           R5 -1

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
      144 DUPTABLE                         R19 K40 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      145 GETTABLEKS                       R20 R6 K41 ["Generated"]
      147 SETTABLEKS                       R20 R19 K35 ["Text"]
      149 MOVE                             R20 R8
      150 CALL                             R20 0 1
      151 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      153 CALL                             R17 2 1
      154 SETTABLEKS                       R17 R16 K35 ["Text"]
      156 GETTABLEKS                       R17 R0 K22 ["shouldShowChip"]
      158 JUMPIFNOT                        R17 ; [+29]
      159 GETUPVAL                         R17 5
      160 GETUPVAL                         R18 9
      161 DUPTABLE                         R19 K47 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
      162 GETTABLEKS                       R20 R0 K21 ["displayName"]
      164 SETTABLEKS                       R20 R19 K42 ["text"]
      166 GETTABLEKS                       R20 R7 K48 ["Image"]
      168 SETTABLEKS                       R20 R19 K43 ["leading"]
      170 GETTABLEKS                       R20 R0 K49 ["onChipClicked"]
      172 SETTABLEKS                       R20 R19 K7 ["onActivated"]
      174 GETUPVAL                         R20 0
      175 GETTABLEKS                       R20 R20 K50 ["Enums"]
      177 GETTABLEKS                       R20 R20 K51 ["ChipSize"]
      179 GETTABLEKS                       R20 R20 K52 ["Small"]
      181 SETTABLEKS                       R20 R19 K46 ["size"]
      183 MOVE                             R20 R8
      184 CALL                             R20 0 1
      185 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      187 CALL                             R17 2 1
      188 SETTABLEKS                       R17 R16 K36 ["AssetLink"]
      190 CALL                             R13 3 1
      191 SETTABLEKS                       R13 R12 K28 ["Header"]
      193 GETUPVAL                         R13 5
      194 GETUPVAL                         R14 6
      195 GETTABLEKS                       R14 R14 K29 ["Content"]
      197 DUPTABLE                         R15 K54 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      198 MOVE                             R16 R8
      199 CALL                             R16 0 1
      200 SETTABLEKS                       R16 R15 K25 ["LayoutOrder"]
      202 DUPTABLE                         R16 K58 [{"Text", "Carousel", "StudsPerTileRow", "OrganicPattern"}]
      203 GETUPVAL                         R17 5
      204 GETUPVAL                         R18 8
      205 DUPTABLE                         R19 K60 [{["tag"] = "size-0-0 auto-xy text-body-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      206 GETTABLEKS                       R20 R6 K61 ["SelectAVariant"]
      208 SETTABLEKS                       R20 R19 K35 ["Text"]
      210 MOVE                             R20 R8
      211 CALL                             R20 0 1
      212 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      214 CALL                             R17 2 1
      215 SETTABLEKS                       R17 R16 K35 ["Text"]
      217 GETUPVAL                         R17 5
      218 GETUPVAL                         R18 10
      219 DUPTABLE                         R19 K66 [{["height"] = 70, ["canSelect"] = False, ["items"], ["LayoutOrder"]}]
      220 SETTABLEKS                       R3 R19 K65 ["items"]
      222 MOVE                             R20 R8
      223 CALL                             R20 0 1
      224 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      226 CALL                             R17 2 1
      227 SETTABLEKS                       R17 R16 K55 ["Carousel"]
      229 GETUPVAL                         R17 5
      230 GETUPVAL                         R18 11
      231 DUPTABLE                         R19 K68 [{["tag"] = "row align-y-center gap-small size-full-600 padding-y-xxsmall", ["LayoutOrder"]}]
      232 MOVE                             R20 R8
      233 CALL                             R20 0 1
      234 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      236 DUPTABLE                         R20 K71 [{"Label", "Value"}]
      237 GETUPVAL                         R21 5
      238 GETUPVAL                         R22 8
      239 DUPTABLE                         R23 K73 [{["tag"] = "size-2700-full text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      240 GETTABLEKS                       R24 R6 K74 ["StudsPerTile"]
      242 SETTABLEKS                       R24 R23 K35 ["Text"]
      244 MOVE                             R24 R8
      245 CALL                             R24 0 1
      246 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      248 CALL                             R21 2 1
      249 SETTABLEKS                       R21 R20 K69 ["Label"]
      251 GETUPVAL                         R21 5
      252 GETUPVAL                         R22 12
      253 DUPTABLE                         R23 K82 [{["tag"] = "fill size-0-full radius-small bg-shift-200", ["min"] = 0.1, ["max"] = 20, ["value"], ["onChanged"], ["LayoutOrder"], ["testId"]}]
      254 GETTABLEKS                       R24 R0 K83 ["studsPerTile"]
      256 SETTABLEKS                       R24 R23 K80 ["value"]
      258 SETTABLEKS                       R4 R23 K81 ["onChanged"]
      260 MOVE                             R24 R8
      261 CALL                             R24 0 1
      262 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      264 GETUPVAL                         R24 7
      265 GETTABLEKS                       R24 R24 K33 ["MaterialGen"]
      267 GETTABLEKS                       R24 R24 K84 ["StudsPerTileValueBar"]
      269 SETTABLEKS                       R24 R23 K31 ["testId"]
      271 CALL                             R21 2 1
      272 SETTABLEKS                       R21 R20 K70 ["Value"]
      274 CALL                             R17 3 1
      275 SETTABLEKS                       R17 R16 K56 ["StudsPerTileRow"]
      277 GETUPVAL                         R17 5
      278 GETUPVAL                         R18 11
      279 DUPTABLE                         R19 K68 [{["tag"] = "row align-y-center gap-small size-full-600 padding-y-xxsmall", ["LayoutOrder"]}]
      280 MOVE                             R20 R8
      281 CALL                             R20 0 1
      282 SETTABLEKS                       R20 R19 K25 ["LayoutOrder"]
      284 DUPTABLE                         R20 K71 [{"Label", "Value"}]
      285 GETUPVAL                         R21 5
      286 GETUPVAL                         R22 8
      287 DUPTABLE                         R23 K73 [{["tag"] = "size-2700-full text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      288 GETTABLEKS                       R24 R6 K57 ["OrganicPattern"]
      290 SETTABLEKS                       R24 R23 K35 ["Text"]
      292 MOVE                             R24 R8
      293 CALL                             R24 0 1
      294 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      296 CALL                             R21 2 1
      297 SETTABLEKS                       R21 R20 K69 ["Label"]
      299 GETUPVAL                         R21 5
      300 GETUPVAL                         R22 13
      301 DUPTABLE                         R23 K87 [{["size"], ["label"] = "", ["isChecked"], ["onActivated"], ["LayoutOrder"], ["testId"]}]
      302 GETUPVAL                         R24 0
      303 GETTABLEKS                       R24 R24 K50 ["Enums"]
      305 GETTABLEKS                       R24 R24 K88 ["ToggleSize"]
      307 GETTABLEKS                       R24 R24 K89 ["Medium"]
      309 SETTABLEKS                       R24 R23 K46 ["size"]
      311 GETTABLEKS                       R24 R0 K17 ["isOrganic"]
      313 SETTABLEKS                       R24 R23 K44 ["isChecked"]
      315 SETTABLEKS                       R5 R23 K7 ["onActivated"]
      317 MOVE                             R24 R8
      318 CALL                             R24 0 1
      319 SETTABLEKS                       R24 R23 K25 ["LayoutOrder"]
      321 GETUPVAL                         R24 7
      322 GETTABLEKS                       R24 R24 K33 ["MaterialGen"]
      324 GETTABLEKS                       R24 R24 K90 ["OrganicPatternToggle"]
      326 SETTABLEKS                       R24 R23 K31 ["testId"]
      328 CALL                             R21 2 1
      329 SETTABLEKS                       R21 R20 K70 ["Value"]
      331 CALL                             R17 3 1
      332 SETTABLEKS                       R17 R16 K57 ["OrganicPattern"]
      334 CALL                             R13 3 1
      335 SETTABLEKS                       R13 R12 K29 ["Content"]
      337 CALL                             R9 3 -1
      338 RETURN                           R9 -1

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
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Generated"]
        5 JUMPIFEQ                         R1 R2 ; [+8]
        7 DUPTABLE                         R1 K2 [{"mode"}]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["Preparing"]
       11 SETTABLEKS                       R2 R1 K0 ["mode"]
       13 RETURN                           R1 1
       14 DUPTABLE                         R1 K6 [{"mode", "name", "assetIds"}]
       15 GETTABLEKS                       R2 R0 K0 ["mode"]
       17 SETTABLEKS                       R2 R1 K0 ["mode"]
       19 GETTABLEKS                       R2 R0 K4 ["name"]
       21 SETTABLEKS                       R2 R1 K4 ["name"]
       23 GETTABLEKS                       R2 R0 K5 ["assetIds"]
       25 SETTABLEKS                       R2 R1 K5 ["assetIds"]
       27 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Generated"]
        5 JUMPIFEQ                         R2 R3 ; [+8]
        7 DUPTABLE                         R2 K6 [{["type"] = "MaterialGen", [2], ["isError"] = True}]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K7 ["Preparing"]
       11 SETTABLEKS                       R3 R2 K0 ["mode"]
       13 RETURN                           R2 1
       14 DUPTABLE                         R2 K21 [{["type"] = "MaterialGen", [2], ["name"], ["displayName"], ["expanded"] = False, ["assetIds"], ["studsPerTile"] = 1, ["isOrganic"] = False, ["onClickMaterial"], ["setStudsPerTile"], ["setIsOrganic"], ["shouldShowChip"] = False, ["onChipClicked"]}]
       15 GETTABLEKS                       R3 R0 K0 ["mode"]
       17 SETTABLEKS                       R3 R2 K0 ["mode"]
       19 GETTABLEKS                       R4 R0 K8 ["name"]
       21 ORK                              R3 R4 K22 ["UNKNOWN_NAME"]
       22 SETTABLEKS                       R3 R2 K8 ["name"]
       24 GETTABLEKS                       R4 R0 K8 ["name"]
       26 ORK                              R3 R4 K22 ["UNKNOWN_NAME"]
       27 SETTABLEKS                       R3 R2 K9 ["displayName"]
       29 GETTABLEKS                       R3 R0 K12 ["assetIds"]
       31 JUMPIF                           R3 ; [+2]
       32 NEWTABLE                         R3 0 0
       34 SETTABLEKS                       R3 R2 K12 ["assetIds"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R3 R3 K23 ["createUnimplemented"]
       39 LOADK                            R4 K16 ["onClickMaterial"]
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R3 R2 K16 ["onClickMaterial"]
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K23 ["createUnimplemented"]
       46 LOADK                            R4 K17 ["setStudsPerTile"]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R2 K17 ["setStudsPerTile"]
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K23 ["createUnimplemented"]
       53 LOADK                            R4 K18 ["setIsOrganic"]
       54 CALL                             R3 1 1
       55 SETTABLEKS                       R3 R2 K18 ["setIsOrganic"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K23 ["createUnimplemented"]
       60 LOADK                            R4 K20 ["onChipClicked"]
       61 CALL                             R3 1 1
       62 SETTABLEKS                       R3 R2 K20 ["onChipClicked"]
       64 RETURN                           R2 1

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
       93 GETTABLEKS                       R13 R5 K25 ["Chip"]
       95 GETTABLEKS                       R14 R5 K26 ["Text"]
       97 GETTABLEKS                       R15 R5 K27 ["Toggle"]
       99 GETTABLEKS                       R16 R5 K28 ["View"]
      101 GETTABLEKS                       R17 R7 K29 ["createNextOrder"]
      103 GETTABLEKS                       R18 R6 K30 ["createElement"]
      105 DUPTABLE                         R19 K34 [{["Preparing"] = "Preparing", ["Generating"] = "Generating", ["Generated"] = "Generated"}]
      106 DUPCLOSURE                       R20 K35 [PROTO_5]
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R14
      112 DUPCLOSURE                       R21 K36 [PROTO_7]
      113 CAPTURE                          VAL R19
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R9
      122 DUPCLOSURE                       R22 K37 [PROTO_15]
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R15
      137 DUPCLOSURE                       R23 K38 [PROTO_16]
      138 CAPTURE                          VAL R19
      139 CAPTURE                          VAL R18
      140 CAPTURE                          VAL R22
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R3
      143 DUPTABLE                         R24 K41 [{"toMeta", "fromMeta"}]
      144 DUPCLOSURE                       R25 K42 [PROTO_17]
      145 CAPTURE                          VAL R19
      146 SETTABLEKS                       R25 R24 K39 ["toMeta"]
      148 DUPCLOSURE                       R25 K43 [PROTO_18]
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R7
      151 SETTABLEKS                       R25 R24 K40 ["fromMeta"]
      153 DUPTABLE                         R25 K49 [{["Type"] = "MaterialGen", ["ContentWidget"], ["Serialization"], ["Modes"]}]
      154 GETTABLEKS                       R26 R6 K50 ["memo"]
      156 MOVE                             R27 R23
      157 CALL                             R26 1 1
      158 SETTABLEKS                       R26 R25 K46 ["ContentWidget"]
      160 SETTABLEKS                       R24 R25 K47 ["Serialization"]
      162 SETTABLEKS                       R19 R25 K48 ["Modes"]
      164 RETURN                           R25 1
