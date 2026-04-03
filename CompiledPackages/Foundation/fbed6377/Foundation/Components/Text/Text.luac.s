PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fontStyle"]
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["fontStyle"]
        8 GETTABLEKS                       R0 R1 K1 ["Font"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R0
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K3 [typeof]
       16 CALL                             R1 1 1
       17 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+17]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K5 ["isBinding"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["fontStyle"]
        3 JUMPIFEQKNIL                     R0 ; [+18]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["fontStyle"]
        8 GETTABLEKS                       R0 R1 K1 ["LineHeight"]
       10 JUMPIFEQKNIL                     R0 ; [+11]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["fontStyle"]
       15 GETTABLEKS                       R0 R1 K2 ["FontSize"]
       17 JUMPIFEQKNIL                     R0 ; [+4]
       19 GETUPVAL                         R0 1
       20 JUMPIFNOTEQKNIL                  R0 ; [+3]
       22 LOADN                            R0 0
       23 RETURN                           R0 1
       24 LOADNIL                          R0
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K3 ["isBinding"]
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
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K0 ["fontStyle"]
       50 GETTABLEKS                       R3 R4 K2 ["FontSize"]
       52 DIV                              R2 R3 R1
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R5 R6 K0 ["fontStyle"]
       56 GETTABLEKS                       R4 R5 K1 ["LineHeight"]
       58 MUL                              R3 R4 R1
       59 MUL                              R5 R2 R3
       60 GETUPVAL                         R8 0
       61 GETTABLEKS                       R7 R8 K0 ["fontStyle"]
       63 GETTABLEKS                       R6 R7 K2 ["FontSize"]
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
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R5 R6 K6 ["FoundationTextSizeDefaults"]
       30 JUMPIFNOT                        R5 ; [+11]
       31 GETTABLEKS                       R5 R2 K7 ["fontStyle"]
       33 JUMPIFNOT                        R5 ; [+8]
       34 GETTABLEKS                       R6 R2 K7 ["fontStyle"]
       36 GETTABLEKS                       R5 R6 K8 ["FontSize"]
       38 JUMPIFNOT                        R5 ; [+3]
       39 MOVE                             R5 R4
       40 LOADK                            R6 K9 [" x-default-text-size"]
       41 CONCAT                           R4 R5 R6
       42 GETUPVAL                         R5 3
       43 GETTABLEKS                       R6 R2 K10 ["tag"]
       45 MOVE                             R7 R4
       46 CALL                             R5 2 1
       47 GETUPVAL                         R6 4
       48 MOVE                             R7 R5
       49 CALL                             R6 1 1
       50 GETUPVAL                         R8 5
       51 GETTABLEKS                       R7 R8 K11 ["useMemo"]
       53 NEWCLOSURE                       R8 P0
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U6
       56 NEWTABLE                         R9 0 1
       58 GETTABLEKS                       R10 R2 K7 ["fontStyle"]
       60 SETLIST                          R9 R10 1 [1]
       62 CALL                             R7 2 1
       63 GETUPVAL                         R9 5
       64 GETTABLEKS                       R8 R9 K11 ["useMemo"]
       66 NEWCLOSURE                       R9 P1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R7
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          UPVAL U7
       71 NEWTABLE                         R10 0 2
       73 MOVE                             R11 R7
       74 GETTABLEKS                       R12 R2 K7 ["fontStyle"]
       76 SETLIST                          R10 R11 2 [1]
       78 CALL                             R8 2 1
       79 GETTABLEKS                       R9 R2 K12 ["padding"]
       81 JUMPIFNOTEQKNIL                  R9 ; [+10]
       83 JUMPIFEQKN                       R8 K13 [0] ; [+8]
       85 GETIMPORT                        R9 K16 [Vector2.new]
       87 LOADN                            R10 0
       88 MOVE                             R11 R8
       89 CALL                             R9 2 1
       90 SETTABLEKS                       R9 R2 K12 ["padding"]
       92 JUMPIFNOT                        R3 ; [+2]
       93 LOADK                            R9 K17 ["TextButton"]
       94 JUMP                             ; [+1]
       95 LOADK                            R9 K18 ["TextLabel"]
       96 GETUPVAL                         R10 8
       97 MOVE                             R11 R2
       98 NEWTABLE                         R12 16 0
      100 JUMPIFNOTEQKS                    R9 K17 ["TextButton"] ; [+4]
      102 GETTABLEKS                       R13 R2 K19 ["AutoButtonColor"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R13
      106 SETTABLEKS                       R13 R12 K19 ["AutoButtonColor"]
      108 SETTABLEKS                       R7 R12 K20 ["FontFace"]
      110 GETTABLEKS                       R14 R2 K7 ["fontStyle"]
      112 JUMPIFEQKNIL                     R14 ; [+6]
      114 GETTABLEKS                       R14 R2 K7 ["fontStyle"]
      116 GETTABLEKS                       R13 R14 K21 ["LineHeight"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R13
      120 SETTABLEKS                       R13 R12 K21 ["LineHeight"]
      122 GETTABLEKS                       R13 R2 K22 ["RichText"]
      124 SETTABLEKS                       R13 R12 K22 ["RichText"]
      126 GETTABLEKS                       R13 R2 K23 ["Text"]
      128 SETTABLEKS                       R13 R12 K23 ["Text"]
      130 GETTABLEKS                       R14 R2 K24 ["textStyle"]
      132 JUMPIFNOT                        R14 ; [+6]
      133 GETUPVAL                         R13 9
      134 GETTABLEKS                       R14 R2 K24 ["textStyle"]
      136 LOADK                            R15 K25 ["Color3"]
      137 CALL                             R13 2 1
      138 JUMP                             ; [+1]
      139 LOADNIL                          R13
      140 SETTABLEKS                       R13 R12 K26 ["TextColor3"]
      142 GETTABLEKS                       R14 R2 K24 ["textStyle"]
      144 JUMPIFNOT                        R14 ; [+6]
      145 GETUPVAL                         R13 9
      146 GETTABLEKS                       R14 R2 K24 ["textStyle"]
      148 LOADK                            R15 K27 ["Transparency"]
      149 CALL                             R13 2 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R13
      152 SETTABLEKS                       R13 R12 K28 ["TextTransparency"]
      154 GETTABLEKS                       R13 R2 K29 ["TextDirection"]
      156 SETTABLEKS                       R13 R12 K29 ["TextDirection"]
      158 GETTABLEKS                       R13 R2 K30 ["TextScaled"]
      160 SETTABLEKS                       R13 R12 K30 ["TextScaled"]
      162 GETTABLEKS                       R14 R2 K7 ["fontStyle"]
      164 JUMPIFEQKNIL                     R14 ; [+6]
      166 GETTABLEKS                       R14 R2 K7 ["fontStyle"]
      168 GETTABLEKS                       R13 R14 K8 ["FontSize"]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R13
      172 SETTABLEKS                       R13 R12 K31 ["TextSize"]
      174 GETTABLEKS                       R13 R2 K32 ["TextTruncate"]
      176 SETTABLEKS                       R13 R12 K32 ["TextTruncate"]
      178 GETTABLEKS                       R13 R2 K33 ["TextWrapped"]
      180 SETTABLEKS                       R13 R12 K33 ["TextWrapped"]
      182 GETTABLEKS                       R13 R2 K34 ["TextXAlignment"]
      184 SETTABLEKS                       R13 R12 K34 ["TextXAlignment"]
      186 GETTABLEKS                       R13 R2 K35 ["TextYAlignment"]
      188 SETTABLEKS                       R13 R12 K35 ["TextYAlignment"]
      190 SETTABLEKS                       R1 R12 K36 ["ref"]
      192 GETUPVAL                         R14 5
      193 GETTABLEKS                       R13 R14 K37 ["Tag"]
      195 SETTABLE                         R6 R12 R13
      196 CALL                             R10 2 1
      197 GETUPVAL                         R12 2
      198 GETTABLEKS                       R11 R12 K38 ["FoundationBuildingBlocksRemoveDashUnion"]
      200 JUMPIFNOT                        R11 ; [+39]
      201 MOVE                             R11 R9
      202 JUMPIFNOT                        R3 ; [+27]
      203 GETUPVAL                         R11 10
      204 SETTABLEKS                       R9 R10 K39 ["component"]
      206 GETTABLEKS                       R12 R2 K1 ["onActivated"]
      208 SETTABLEKS                       R12 R10 K1 ["onActivated"]
      210 GETTABLEKS                       R12 R2 K2 ["onSecondaryActivated"]
      212 SETTABLEKS                       R12 R10 K2 ["onSecondaryActivated"]
      214 GETTABLEKS                       R12 R2 K0 ["onStateChanged"]
      216 SETTABLEKS                       R12 R10 K0 ["onStateChanged"]
      218 GETTABLEKS                       R12 R2 K40 ["stateLayer"]
      220 SETTABLEKS                       R12 R10 K40 ["stateLayer"]
      222 GETTABLEKS                       R12 R2 K41 ["isDisabled"]
      224 SETTABLEKS                       R12 R10 K41 ["isDisabled"]
      226 GETTABLEKS                       R12 R2 K42 ["cursor"]
      228 SETTABLEKS                       R12 R10 K42 ["cursor"]
      230 GETUPVAL                         R13 5
      231 GETTABLEKS                       R12 R13 K43 ["createElement"]
      233 MOVE                             R13 R11
      234 MOVE                             R14 R10
      235 GETUPVAL                         R15 11
      236 MOVE                             R16 R2
      237 CALL                             R15 1 -1
      238 CALL                             R12 -1 -1
      239 RETURN                           R12 -1
      240 JUMPIFNOT                        R3 ; [+2]
      241 GETUPVAL                         R11 10
      242 JUMP                             ; [+1]
      243 MOVE                             R11 R9
      244 DUPTABLE                         R12 K44 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      245 SETTABLEKS                       R9 R12 K39 ["component"]
      247 GETTABLEKS                       R13 R2 K1 ["onActivated"]
      249 SETTABLEKS                       R13 R12 K1 ["onActivated"]
      251 GETTABLEKS                       R13 R2 K2 ["onSecondaryActivated"]
      253 SETTABLEKS                       R13 R12 K2 ["onSecondaryActivated"]
      255 GETTABLEKS                       R13 R2 K0 ["onStateChanged"]
      257 SETTABLEKS                       R13 R12 K0 ["onStateChanged"]
      259 GETTABLEKS                       R13 R2 K40 ["stateLayer"]
      261 SETTABLEKS                       R13 R12 K40 ["stateLayer"]
      263 GETTABLEKS                       R13 R2 K41 ["isDisabled"]
      265 SETTABLEKS                       R13 R12 K41 ["isDisabled"]
      267 GETTABLEKS                       R13 R2 K42 ["cursor"]
      269 SETTABLEKS                       R13 R12 K42 ["cursor"]
      271 JUMPIFNOT                        R3 ; [+7]
      272 GETUPVAL                         R14 12
      273 GETTABLEKS                       R13 R14 K45 ["union"]
      275 MOVE                             R14 R10
      276 MOVE                             R15 R12
      277 CALL                             R13 2 1
      278 JUMP                             ; [+1]
      279 MOVE                             R13 R10
      280 GETUPVAL                         R15 5
      281 GETTABLEKS                       R14 R15 K43 ["createElement"]
      283 MOVE                             R15 R11
      284 MOVE                             R16 R13
      285 GETUPVAL                         R17 11
      286 MOVE                             R18 R2
      287 CALL                             R17 1 -1
      288 CALL                             R14 -1 -1
      289 RETURN                           R14 -1

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
       26 GETTABLEKS                       R7 R0 K10 ["Utility"]
       28 GETTABLEKS                       R6 R7 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R8 K13 ["Interactable"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R9 R0 K10 ["Utility"]
       42 GETTABLEKS                       R8 R9 K14 ["GuiObjectChildren"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R10 R0 K12 ["Components"]
       49 GETTABLEKS                       R9 R10 K15 ["Types"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R11 R0 K10 ["Utility"]
       56 GETTABLEKS                       R10 R11 K16 ["indexBindable"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R12 R0 K10 ["Utility"]
       63 GETTABLEKS                       R11 R12 K17 ["useDefaultTags"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R13 R0 K10 ["Utility"]
       70 GETTABLEKS                       R12 R13 K18 ["withDefaults"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R14 R0 K10 ["Utility"]
       77 GETTABLEKS                       R13 R14 K19 ["withGuiObjectProps"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R16 R0 K20 ["Providers"]
       84 GETTABLEKS                       R15 R16 K21 ["Style"]
       86 GETTABLEKS                       R14 R15 K22 ["useStyleTags"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K6 [require]
       91 GETIMPORT                        R17 K1 [script]
       93 GETTABLEKS                       R16 R17 K4 ["Parent"]
       95 GETTABLEKS                       R15 R16 K23 ["FontScales"]
       97 CALL                             R14 1 1
       98 DUPTABLE                         R15 K28 [{"AutoLocalize", "AutoButtonColor", "BorderSizePixel", "isDisabled"}]
       99 LOADB                            R16 0
      100 SETTABLEKS                       R16 R15 K24 ["AutoLocalize"]
      102 LOADB                            R16 0
      103 SETTABLEKS                       R16 R15 K25 ["AutoButtonColor"]
      105 LOADN                            R16 0
      106 SETTABLEKS                       R16 R15 K26 ["BorderSizePixel"]
      108 LOADB                            R16 0
      109 SETTABLEKS                       R16 R15 K27 ["isDisabled"]
      111 DUPCLOSURE                       R16 K29 [PROTO_2]
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R10
      116 CAPTURE                          VAL R13
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R2
      125 GETTABLEKS                       R17 R3 K30 ["memo"]
      127 GETTABLEKS                       R18 R3 K31 ["forwardRef"]
      129 MOVE                             R19 R16
      130 CALL                             R18 1 -1
      131 CALL                             R17 -1 -1
      132 RETURN                           R17 -1
