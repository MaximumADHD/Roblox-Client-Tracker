PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fontStyle"]
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["fontStyle"]
        8 GETTABLEKS                       R0 R0 K1 ["Font"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R0
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K3 [typeof]
       16 CALL                             R1 1 1
       17 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+17]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K5 ["isBinding"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 1
       24 JUMPIF                           R1 ; [+10]
       25 GETIMPORT                        R1 K7 [Font.new]
       27 GETTABLEKS                       R2 R0 K8 ["Family"]
       29 GETTABLEKS                       R3 R0 K9 ["Weight"]
       31 GETTABLEKS                       R4 R0 K10 ["Style"]
       33 CALL                             R1 3 -1
       34 RETURN                           R1 -1
       35 FASTCALL1                        TYPEOF R0 ; [+3]
       36 MOVE                             R2 R0
       37 GETIMPORT                        R1 K3 [typeof]
       39 CALL                             R1 1 1
       40 JUMPIFNOTEQKS                    R1 K11 ["EnumItem"] ; [+6]
       42 GETIMPORT                        R1 K13 [Font.fromEnum]
       44 MOVE                             R2 R0
       45 CALL                             R1 1 -1
       46 RETURN                           R1 -1
       47 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fontStyle"]
        3 JUMPIFEQKNIL                     R0 ; [+18]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["fontStyle"]
        8 GETTABLEKS                       R0 R0 K1 ["LineHeight"]
       10 JUMPIFEQKNIL                     R0 ; [+11]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["fontStyle"]
       15 GETTABLEKS                       R0 R0 K2 ["FontSize"]
       17 JUMPIFEQKNIL                     R0 ; [+4]
       19 GETUPVAL                         R0 1
       20 JUMPIFNOTEQKNIL                  R0 ; [+3]
       22 LOADN                            R0 0
       23 RETURN                           R0 1
       24 LOADNIL                          R0
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K3 ["isBinding"]
       28 GETUPVAL                         R2 1
       29 CALL                             R1 1 1
       30 JUMPIFNOT                        R1 ; [+7]
       31 GETUPVAL                         R1 1
       32 NAMECALL                         R2 R1 K4 ["getValue"]
       34 CALL                             R2 1 1
       35 GETTABLEKS                       R0 R2 K5 ["Family"]
       37 JUMP                             ; [+3]
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R0 R1 K5 ["Family"]
       41 GETUPVAL                         R2 3
       42 GETTABLE                         R1 R2 R0
       43 JUMPIFNOTEQKNIL                  R1 ; [+3]
       45 LOADN                            R2 0
       46 RETURN                           R2 1
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K0 ["fontStyle"]
       50 GETTABLEKS                       R3 R3 K2 ["FontSize"]
       52 DIV                              R2 R3 R1
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K0 ["fontStyle"]
       56 GETTABLEKS                       R4 R4 K1 ["LineHeight"]
       58 MUL                              R3 R4 R1
       59 MUL                              R5 R2 R3
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K0 ["fontStyle"]
       63 GETTABLEKS                       R6 R6 K2 ["FontSize"]
       65 SUB                              R4 R5 R6
       66 DIVK                             R5 R4 K6 [2]
       67 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 LOADB                            R3 1
        5 GETTABLEKS                       R4 R2 K0 ["onStateChanged"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+12]
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R2 K1 ["onActivated"]
       12 JUMPIFNOTEQKNIL                  R4 ; [+7]
       14 GETTABLEKS                       R4 R2 K2 ["onSecondaryActivated"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 GETTABLEKS                       R5 R2 K3 ["backgroundStyle"]
       22 JUMPIFEQKNIL                     R5 ; [+3]
       24 LOADK                            R4 K4 ["gui-object-defaults text-defaults text-size-defaults text-color-defaults x-default-transparency"]
       25 JUMP                             ; [+1]
       26 LOADK                            R4 K5 ["gui-object-defaults text-defaults text-size-defaults text-color-defaults"]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R6 R2 K6 ["tag"]
       30 MOVE                             R7 R4
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 3
       33 MOVE                             R7 R5
       34 CALL                             R6 1 1
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U5
       41 NEWTABLE                         R9 0 1
       43 GETTABLEKS                       R10 R2 K8 ["fontStyle"]
       45 SETLIST                          R9 R10 1 [1]
       47 CALL                             R7 2 1
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K7 ["useMemo"]
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 NEWTABLE                         R10 0 2
       58 MOVE                             R11 R7
       59 GETTABLEKS                       R12 R2 K8 ["fontStyle"]
       61 SETLIST                          R10 R11 2 [1]
       63 CALL                             R8 2 1
       64 GETTABLEKS                       R9 R2 K9 ["padding"]
       66 JUMPIFNOTEQKNIL                  R9 ; [+10]
       68 JUMPIFEQKN                       R8 K10 [0] ; [+8]
       70 GETIMPORT                        R9 K13 [Vector2.new]
       72 LOADN                            R10 0
       73 MOVE                             R11 R8
       74 CALL                             R9 2 1
       75 SETTABLEKS                       R9 R2 K9 ["padding"]
       77 JUMPIFNOT                        R3 ; [+2]
       78 LOADK                            R9 K14 ["TextButton"]
       79 JUMP                             ; [+1]
       80 LOADK                            R9 K15 ["TextLabel"]
       81 GETUPVAL                         R10 7
       82 MOVE                             R11 R2
       83 NEWTABLE                         R12 16 0
       85 JUMPIFNOTEQKS                    R9 K14 ["TextButton"] ; [+4]
       87 GETTABLEKS                       R13 R2 K16 ["AutoButtonColor"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R13
       91 SETTABLEKS                       R13 R12 K16 ["AutoButtonColor"]
       93 SETTABLEKS                       R7 R12 K17 ["FontFace"]
       95 GETTABLEKS                       R14 R2 K8 ["fontStyle"]
       97 JUMPIFEQKNIL                     R14 ; [+6]
       99 GETTABLEKS                       R13 R2 K8 ["fontStyle"]
      101 GETTABLEKS                       R13 R13 K18 ["LineHeight"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R13
      105 SETTABLEKS                       R13 R12 K18 ["LineHeight"]
      107 GETTABLEKS                       R13 R2 K19 ["RichText"]
      109 SETTABLEKS                       R13 R12 K19 ["RichText"]
      111 GETTABLEKS                       R13 R2 K20 ["Text"]
      113 SETTABLEKS                       R13 R12 K20 ["Text"]
      115 GETTABLEKS                       R14 R2 K21 ["textStyle"]
      117 JUMPIFNOT                        R14 ; [+6]
      118 GETUPVAL                         R13 8
      119 GETTABLEKS                       R14 R2 K21 ["textStyle"]
      121 LOADK                            R15 K22 ["Color3"]
      122 CALL                             R13 2 1
      123 JUMP                             ; [+1]
      124 LOADNIL                          R13
      125 SETTABLEKS                       R13 R12 K23 ["TextColor3"]
      127 GETTABLEKS                       R14 R2 K21 ["textStyle"]
      129 JUMPIFNOT                        R14 ; [+6]
      130 GETUPVAL                         R13 8
      131 GETTABLEKS                       R14 R2 K21 ["textStyle"]
      133 LOADK                            R15 K24 ["Transparency"]
      134 CALL                             R13 2 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R13
      137 SETTABLEKS                       R13 R12 K25 ["TextTransparency"]
      139 GETTABLEKS                       R13 R2 K26 ["TextDirection"]
      141 SETTABLEKS                       R13 R12 K26 ["TextDirection"]
      143 GETTABLEKS                       R13 R2 K27 ["TextScaled"]
      145 SETTABLEKS                       R13 R12 K27 ["TextScaled"]
      147 GETTABLEKS                       R14 R2 K8 ["fontStyle"]
      149 JUMPIFEQKNIL                     R14 ; [+6]
      151 GETTABLEKS                       R13 R2 K8 ["fontStyle"]
      153 GETTABLEKS                       R13 R13 K28 ["FontSize"]
      155 JUMP                             ; [+1]
      156 LOADNIL                          R13
      157 SETTABLEKS                       R13 R12 K29 ["TextSize"]
      159 GETTABLEKS                       R13 R2 K30 ["TextTruncate"]
      161 SETTABLEKS                       R13 R12 K30 ["TextTruncate"]
      163 GETTABLEKS                       R13 R2 K31 ["TextWrapped"]
      165 SETTABLEKS                       R13 R12 K31 ["TextWrapped"]
      167 GETTABLEKS                       R13 R2 K32 ["TextXAlignment"]
      169 SETTABLEKS                       R13 R12 K32 ["TextXAlignment"]
      171 GETTABLEKS                       R13 R2 K33 ["TextYAlignment"]
      173 SETTABLEKS                       R13 R12 K33 ["TextYAlignment"]
      175 SETTABLEKS                       R1 R12 K34 ["ref"]
      177 GETUPVAL                         R13 4
      178 GETTABLEKS                       R13 R13 K35 ["Tag"]
      180 SETTABLE                         R6 R12 R13
      181 CALL                             R10 2 1
      182 GETUPVAL                         R11 9
      183 GETTABLEKS                       R11 R11 K36 ["FoundationBuildingBlocksRemoveDashUnion"]
      185 JUMPIFNOT                        R11 ; [+39]
      186 MOVE                             R11 R9
      187 JUMPIFNOT                        R3 ; [+27]
      188 GETUPVAL                         R11 10
      189 SETTABLEKS                       R9 R10 K37 ["component"]
      191 GETTABLEKS                       R12 R2 K1 ["onActivated"]
      193 SETTABLEKS                       R12 R10 K1 ["onActivated"]
      195 GETTABLEKS                       R12 R2 K2 ["onSecondaryActivated"]
      197 SETTABLEKS                       R12 R10 K2 ["onSecondaryActivated"]
      199 GETTABLEKS                       R12 R2 K0 ["onStateChanged"]
      201 SETTABLEKS                       R12 R10 K0 ["onStateChanged"]
      203 GETTABLEKS                       R12 R2 K38 ["stateLayer"]
      205 SETTABLEKS                       R12 R10 K38 ["stateLayer"]
      207 GETTABLEKS                       R12 R2 K39 ["isDisabled"]
      209 SETTABLEKS                       R12 R10 K39 ["isDisabled"]
      211 GETTABLEKS                       R12 R2 K40 ["cursor"]
      213 SETTABLEKS                       R12 R10 K40 ["cursor"]
      215 GETUPVAL                         R12 4
      216 GETTABLEKS                       R12 R12 K41 ["createElement"]
      218 MOVE                             R13 R11
      219 MOVE                             R14 R10
      220 GETUPVAL                         R15 11
      221 MOVE                             R16 R2
      222 CALL                             R15 1 -1
      223 CALL                             R12 -1 -1
      224 RETURN                           R12 -1
      225 JUMPIFNOT                        R3 ; [+2]
      226 GETUPVAL                         R11 10
      227 JUMP                             ; [+1]
      228 MOVE                             R11 R9
      229 DUPTABLE                         R12 K42 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      230 SETTABLEKS                       R9 R12 K37 ["component"]
      232 GETTABLEKS                       R13 R2 K1 ["onActivated"]
      234 SETTABLEKS                       R13 R12 K1 ["onActivated"]
      236 GETTABLEKS                       R13 R2 K2 ["onSecondaryActivated"]
      238 SETTABLEKS                       R13 R12 K2 ["onSecondaryActivated"]
      240 GETTABLEKS                       R13 R2 K0 ["onStateChanged"]
      242 SETTABLEKS                       R13 R12 K0 ["onStateChanged"]
      244 GETTABLEKS                       R13 R2 K38 ["stateLayer"]
      246 SETTABLEKS                       R13 R12 K38 ["stateLayer"]
      248 GETTABLEKS                       R13 R2 K39 ["isDisabled"]
      250 SETTABLEKS                       R13 R12 K39 ["isDisabled"]
      252 GETTABLEKS                       R13 R2 K40 ["cursor"]
      254 SETTABLEKS                       R13 R12 K40 ["cursor"]
      256 JUMPIFNOT                        R3 ; [+7]
      257 GETUPVAL                         R13 12
      258 GETTABLEKS                       R13 R13 K43 ["union"]
      260 MOVE                             R14 R10
      261 MOVE                             R15 R12
      262 CALL                             R13 2 1
      263 JUMP                             ; [+1]
      264 MOVE                             R13 R10
      265 GETUPVAL                         R14 4
      266 GETTABLEKS                       R14 R14 K41 ["createElement"]
      268 MOVE                             R15 R11
      269 MOVE                             R16 R13
      270 GETUPVAL                         R17 11
      271 MOVE                             R18 R2
      272 CALL                             R17 1 -1
      273 CALL                             R14 -1 -1
      274 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactIs"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Utility"]
       28 GETTABLEKS                       R6 R6 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K13 ["Interactable"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Utility"]
       42 GETTABLEKS                       R8 R8 K14 ["GuiObjectChildren"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K12 ["Components"]
       49 GETTABLEKS                       R9 R9 K15 ["Types"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K10 ["Utility"]
       56 GETTABLEKS                       R10 R10 K16 ["indexBindable"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R0 K10 ["Utility"]
       63 GETTABLEKS                       R11 R11 K17 ["useDefaultTags"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Utility"]
       70 GETTABLEKS                       R12 R12 K18 ["withDefaults"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K10 ["Utility"]
       77 GETTABLEKS                       R13 R13 K19 ["withGuiObjectProps"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R14 R0 K20 ["Providers"]
       84 GETTABLEKS                       R14 R14 K21 ["Style"]
       86 GETTABLEKS                       R14 R14 K22 ["useStyleTags"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETIMPORT                        R15 K1 [script]
       93 GETTABLEKS                       R15 R15 K4 ["Parent"]
       95 GETTABLEKS                       R15 R15 K23 ["FontScales"]
       97 CALL                             R14 1 1
       98 DUPTABLE                         R15 K30 [{["AutoLocalize"] = False, ["AutoButtonColor"] = False, ["BorderSizePixel"] = 0, ["isDisabled"] = False}]
       99 DUPCLOSURE                       R16 K31 [PROTO_2]
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R15
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R2
      113 GETTABLEKS                       R17 R3 K32 ["memo"]
      115 GETTABLEKS                       R18 R3 K33 ["forwardRef"]
      117 MOVE                             R19 R16
      118 CALL                             R18 1 -1
      119 CALL                             R17 -1 -1
      120 RETURN                           R17 -1
