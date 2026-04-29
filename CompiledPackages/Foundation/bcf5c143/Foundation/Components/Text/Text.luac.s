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
       27 GETTABLEKS                       R5 R2 K6 ["fontStyle"]
       29 JUMPIFNOT                        R5 ; [+8]
       30 GETTABLEKS                       R6 R2 K6 ["fontStyle"]
       32 GETTABLEKS                       R5 R6 K7 ["FontSize"]
       34 JUMPIFNOT                        R5 ; [+3]
       35 MOVE                             R5 R4
       36 LOADK                            R6 K8 [" x-default-text-size"]
       37 CONCAT                           R4 R5 R6
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R6 R2 K9 ["tag"]
       41 MOVE                             R7 R4
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 3
       44 MOVE                             R7 R5
       45 CALL                             R6 1 1
       46 GETUPVAL                         R8 4
       47 GETTABLEKS                       R7 R8 K10 ["useMemo"]
       49 NEWCLOSURE                       R8 P0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          UPVAL U5
       52 NEWTABLE                         R9 0 1
       54 GETTABLEKS                       R10 R2 K6 ["fontStyle"]
       56 SETLIST                          R9 R10 1 [1]
       58 CALL                             R7 2 1
       59 GETUPVAL                         R9 4
       60 GETTABLEKS                       R8 R9 K10 ["useMemo"]
       62 NEWCLOSURE                       R9 P1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R7
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          UPVAL U6
       67 NEWTABLE                         R10 0 2
       69 MOVE                             R11 R7
       70 GETTABLEKS                       R12 R2 K6 ["fontStyle"]
       72 SETLIST                          R10 R11 2 [1]
       74 CALL                             R8 2 1
       75 GETTABLEKS                       R9 R2 K11 ["padding"]
       77 JUMPIFNOTEQKNIL                  R9 ; [+10]
       79 JUMPIFEQKN                       R8 K12 [0] ; [+8]
       81 GETIMPORT                        R9 K15 [Vector2.new]
       83 LOADN                            R10 0
       84 MOVE                             R11 R8
       85 CALL                             R9 2 1
       86 SETTABLEKS                       R9 R2 K11 ["padding"]
       88 JUMPIFNOT                        R3 ; [+2]
       89 LOADK                            R9 K16 ["TextButton"]
       90 JUMP                             ; [+1]
       91 LOADK                            R9 K17 ["TextLabel"]
       92 GETUPVAL                         R10 7
       93 MOVE                             R11 R2
       94 NEWTABLE                         R12 16 0
       96 JUMPIFNOTEQKS                    R9 K16 ["TextButton"] ; [+4]
       98 GETTABLEKS                       R13 R2 K18 ["AutoButtonColor"]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R13
      102 SETTABLEKS                       R13 R12 K18 ["AutoButtonColor"]
      104 SETTABLEKS                       R7 R12 K19 ["FontFace"]
      106 GETTABLEKS                       R14 R2 K6 ["fontStyle"]
      108 JUMPIFEQKNIL                     R14 ; [+6]
      110 GETTABLEKS                       R14 R2 K6 ["fontStyle"]
      112 GETTABLEKS                       R13 R14 K20 ["LineHeight"]
      114 JUMP                             ; [+1]
      115 LOADNIL                          R13
      116 SETTABLEKS                       R13 R12 K20 ["LineHeight"]
      118 GETTABLEKS                       R13 R2 K21 ["RichText"]
      120 SETTABLEKS                       R13 R12 K21 ["RichText"]
      122 GETTABLEKS                       R13 R2 K22 ["Text"]
      124 SETTABLEKS                       R13 R12 K22 ["Text"]
      126 GETTABLEKS                       R14 R2 K23 ["textStyle"]
      128 JUMPIFNOT                        R14 ; [+6]
      129 GETUPVAL                         R13 8
      130 GETTABLEKS                       R14 R2 K23 ["textStyle"]
      132 LOADK                            R15 K24 ["Color3"]
      133 CALL                             R13 2 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R13
      136 SETTABLEKS                       R13 R12 K25 ["TextColor3"]
      138 GETTABLEKS                       R14 R2 K23 ["textStyle"]
      140 JUMPIFNOT                        R14 ; [+6]
      141 GETUPVAL                         R13 8
      142 GETTABLEKS                       R14 R2 K23 ["textStyle"]
      144 LOADK                            R15 K26 ["Transparency"]
      145 CALL                             R13 2 1
      146 JUMP                             ; [+1]
      147 LOADNIL                          R13
      148 SETTABLEKS                       R13 R12 K27 ["TextTransparency"]
      150 GETTABLEKS                       R13 R2 K28 ["TextDirection"]
      152 SETTABLEKS                       R13 R12 K28 ["TextDirection"]
      154 GETTABLEKS                       R13 R2 K29 ["TextScaled"]
      156 SETTABLEKS                       R13 R12 K29 ["TextScaled"]
      158 GETTABLEKS                       R14 R2 K6 ["fontStyle"]
      160 JUMPIFEQKNIL                     R14 ; [+6]
      162 GETTABLEKS                       R14 R2 K6 ["fontStyle"]
      164 GETTABLEKS                       R13 R14 K7 ["FontSize"]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R13
      168 SETTABLEKS                       R13 R12 K30 ["TextSize"]
      170 GETTABLEKS                       R13 R2 K31 ["TextTruncate"]
      172 SETTABLEKS                       R13 R12 K31 ["TextTruncate"]
      174 GETTABLEKS                       R13 R2 K32 ["TextWrapped"]
      176 SETTABLEKS                       R13 R12 K32 ["TextWrapped"]
      178 GETTABLEKS                       R13 R2 K33 ["TextXAlignment"]
      180 SETTABLEKS                       R13 R12 K33 ["TextXAlignment"]
      182 GETTABLEKS                       R13 R2 K34 ["TextYAlignment"]
      184 SETTABLEKS                       R13 R12 K34 ["TextYAlignment"]
      186 SETTABLEKS                       R1 R12 K35 ["ref"]
      188 GETUPVAL                         R14 4
      189 GETTABLEKS                       R13 R14 K36 ["Tag"]
      191 SETTABLE                         R6 R12 R13
      192 CALL                             R10 2 1
      193 GETUPVAL                         R12 9
      194 GETTABLEKS                       R11 R12 K37 ["FoundationBuildingBlocksRemoveDashUnion"]
      196 JUMPIFNOT                        R11 ; [+39]
      197 MOVE                             R11 R9
      198 JUMPIFNOT                        R3 ; [+27]
      199 GETUPVAL                         R11 10
      200 SETTABLEKS                       R9 R10 K38 ["component"]
      202 GETTABLEKS                       R12 R2 K1 ["onActivated"]
      204 SETTABLEKS                       R12 R10 K1 ["onActivated"]
      206 GETTABLEKS                       R12 R2 K2 ["onSecondaryActivated"]
      208 SETTABLEKS                       R12 R10 K2 ["onSecondaryActivated"]
      210 GETTABLEKS                       R12 R2 K0 ["onStateChanged"]
      212 SETTABLEKS                       R12 R10 K0 ["onStateChanged"]
      214 GETTABLEKS                       R12 R2 K39 ["stateLayer"]
      216 SETTABLEKS                       R12 R10 K39 ["stateLayer"]
      218 GETTABLEKS                       R12 R2 K40 ["isDisabled"]
      220 SETTABLEKS                       R12 R10 K40 ["isDisabled"]
      222 GETTABLEKS                       R12 R2 K41 ["cursor"]
      224 SETTABLEKS                       R12 R10 K41 ["cursor"]
      226 GETUPVAL                         R13 4
      227 GETTABLEKS                       R12 R13 K42 ["createElement"]
      229 MOVE                             R13 R11
      230 MOVE                             R14 R10
      231 GETUPVAL                         R15 11
      232 MOVE                             R16 R2
      233 CALL                             R15 1 -1
      234 CALL                             R12 -1 -1
      235 RETURN                           R12 -1
      236 JUMPIFNOT                        R3 ; [+2]
      237 GETUPVAL                         R11 10
      238 JUMP                             ; [+1]
      239 MOVE                             R11 R9
      240 DUPTABLE                         R12 K43 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      241 SETTABLEKS                       R9 R12 K38 ["component"]
      243 GETTABLEKS                       R13 R2 K1 ["onActivated"]
      245 SETTABLEKS                       R13 R12 K1 ["onActivated"]
      247 GETTABLEKS                       R13 R2 K2 ["onSecondaryActivated"]
      249 SETTABLEKS                       R13 R12 K2 ["onSecondaryActivated"]
      251 GETTABLEKS                       R13 R2 K0 ["onStateChanged"]
      253 SETTABLEKS                       R13 R12 K0 ["onStateChanged"]
      255 GETTABLEKS                       R13 R2 K39 ["stateLayer"]
      257 SETTABLEKS                       R13 R12 K39 ["stateLayer"]
      259 GETTABLEKS                       R13 R2 K40 ["isDisabled"]
      261 SETTABLEKS                       R13 R12 K40 ["isDisabled"]
      263 GETTABLEKS                       R13 R2 K41 ["cursor"]
      265 SETTABLEKS                       R13 R12 K41 ["cursor"]
      267 JUMPIFNOT                        R3 ; [+7]
      268 GETUPVAL                         R14 12
      269 GETTABLEKS                       R13 R14 K44 ["union"]
      271 MOVE                             R14 R10
      272 MOVE                             R15 R12
      273 CALL                             R13 2 1
      274 JUMP                             ; [+1]
      275 MOVE                             R13 R10
      276 GETUPVAL                         R15 4
      277 GETTABLEKS                       R14 R15 K42 ["createElement"]
      279 MOVE                             R15 R11
      280 MOVE                             R16 R13
      281 GETUPVAL                         R17 11
      282 MOVE                             R18 R2
      283 CALL                             R17 1 -1
      284 CALL                             R14 -1 -1
      285 RETURN                           R14 -1

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
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R2
      125 GETTABLEKS                       R17 R3 K30 ["memo"]
      127 GETTABLEKS                       R18 R3 K31 ["forwardRef"]
      129 MOVE                             R19 R16
      130 CALL                             R18 1 -1
      131 CALL                             R17 -1 -1
      132 RETURN                           R17 -1
