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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["FoundationDisableStylingPolyfill"]
        3 JUMPIF                           R3 ; [+8]
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["Text"]
        6 GETTABLEKS                       R4 R0 K2 ["tag"]
        8 LOADK                            R5 K3 ["gui-object-defaults text-defaults text-size-defaults text-color-defaults"]
        9 GETUPVAL                         R6 2
       10 CALL                             R2 4 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R0
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["FoundationDisableStylingPolyfill"]
       18 JUMPIF                           R6 ; [+2]
       19 MOVE                             R5 R2
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R5 2
       22 CALL                             R3 2 1
       23 LOADB                            R4 1
       24 GETTABLEKS                       R5 R3 K4 ["onStateChanged"]
       26 JUMPIFNOTEQKNIL                  R5 ; [+12]
       28 LOADB                            R4 1
       29 GETTABLEKS                       R5 R3 K5 ["onActivated"]
       31 JUMPIFNOTEQKNIL                  R5 ; [+7]
       33 GETTABLEKS                       R5 R3 K6 ["onSecondaryActivated"]
       35 JUMPIFNOTEQKNIL                  R5 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 GETTABLEKS                       R6 R3 K7 ["backgroundStyle"]
       41 JUMPIFEQKNIL                     R6 ; [+3]
       43 LOADK                            R5 K8 ["gui-object-defaults text-defaults text-size-defaults text-color-defaults x-default-transparency"]
       44 JUMP                             ; [+1]
       45 LOADK                            R5 K3 ["gui-object-defaults text-defaults text-size-defaults text-color-defaults"]
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R7 R3 K2 ["tag"]
       49 MOVE                             R8 R5
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 5
       52 MOVE                             R8 R6
       53 CALL                             R7 1 1
       54 GETUPVAL                         R9 6
       55 GETTABLEKS                       R8 R9 K9 ["useMemo"]
       57 NEWCLOSURE                       R9 P0
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U7
       60 NEWTABLE                         R10 0 1
       62 GETTABLEKS                       R11 R3 K10 ["fontStyle"]
       64 SETLIST                          R10 R11 1 [1]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R10 6
       68 GETTABLEKS                       R9 R10 K9 ["useMemo"]
       70 NEWCLOSURE                       R10 P1
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R8
       73 CAPTURE                          UPVAL U7
       74 CAPTURE                          UPVAL U8
       75 NEWTABLE                         R11 0 2
       77 MOVE                             R12 R8
       78 GETTABLEKS                       R13 R3 K10 ["fontStyle"]
       80 SETLIST                          R11 R12 2 [1]
       82 CALL                             R9 2 1
       83 GETTABLEKS                       R10 R3 K11 ["padding"]
       85 JUMPIFNOTEQKNIL                  R10 ; [+10]
       87 JUMPIFEQKN                       R9 K12 [0] ; [+8]
       89 GETIMPORT                        R10 K15 [Vector2.new]
       91 LOADN                            R11 0
       92 MOVE                             R12 R9
       93 CALL                             R10 2 1
       94 SETTABLEKS                       R10 R3 K11 ["padding"]
       96 JUMPIFNOT                        R4 ; [+2]
       97 LOADK                            R10 K16 ["TextButton"]
       98 JUMP                             ; [+1]
       99 LOADK                            R10 K17 ["TextLabel"]
      100 GETUPVAL                         R11 9
      101 MOVE                             R12 R3
      102 NEWTABLE                         R13 16 0
      104 JUMPIFNOTEQKS                    R10 K16 ["TextButton"] ; [+4]
      106 GETTABLEKS                       R14 R3 K18 ["AutoButtonColor"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R14
      110 SETTABLEKS                       R14 R13 K18 ["AutoButtonColor"]
      112 SETTABLEKS                       R8 R13 K19 ["FontFace"]
      114 GETTABLEKS                       R15 R3 K10 ["fontStyle"]
      116 JUMPIFEQKNIL                     R15 ; [+6]
      118 GETTABLEKS                       R15 R3 K10 ["fontStyle"]
      120 GETTABLEKS                       R14 R15 K20 ["LineHeight"]
      122 JUMP                             ; [+1]
      123 LOADNIL                          R14
      124 SETTABLEKS                       R14 R13 K20 ["LineHeight"]
      126 GETTABLEKS                       R14 R3 K21 ["RichText"]
      128 SETTABLEKS                       R14 R13 K21 ["RichText"]
      130 GETTABLEKS                       R14 R3 K1 ["Text"]
      132 SETTABLEKS                       R14 R13 K1 ["Text"]
      134 GETTABLEKS                       R15 R3 K22 ["textStyle"]
      136 JUMPIFNOT                        R15 ; [+6]
      137 GETUPVAL                         R14 10
      138 GETTABLEKS                       R15 R3 K22 ["textStyle"]
      140 LOADK                            R16 K23 ["Color3"]
      141 CALL                             R14 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R14
      144 SETTABLEKS                       R14 R13 K24 ["TextColor3"]
      146 GETTABLEKS                       R15 R3 K22 ["textStyle"]
      148 JUMPIFNOT                        R15 ; [+6]
      149 GETUPVAL                         R14 10
      150 GETTABLEKS                       R15 R3 K22 ["textStyle"]
      152 LOADK                            R16 K25 ["Transparency"]
      153 CALL                             R14 2 1
      154 JUMP                             ; [+1]
      155 LOADNIL                          R14
      156 SETTABLEKS                       R14 R13 K26 ["TextTransparency"]
      158 GETTABLEKS                       R14 R3 K27 ["TextDirection"]
      160 SETTABLEKS                       R14 R13 K27 ["TextDirection"]
      162 GETTABLEKS                       R14 R3 K28 ["TextScaled"]
      164 SETTABLEKS                       R14 R13 K28 ["TextScaled"]
      166 GETTABLEKS                       R15 R3 K10 ["fontStyle"]
      168 JUMPIFEQKNIL                     R15 ; [+6]
      170 GETTABLEKS                       R15 R3 K10 ["fontStyle"]
      172 GETTABLEKS                       R14 R15 K29 ["FontSize"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R14
      176 SETTABLEKS                       R14 R13 K30 ["TextSize"]
      178 GETTABLEKS                       R14 R3 K31 ["TextTruncate"]
      180 SETTABLEKS                       R14 R13 K31 ["TextTruncate"]
      182 GETTABLEKS                       R14 R3 K32 ["TextWrapped"]
      184 SETTABLEKS                       R14 R13 K32 ["TextWrapped"]
      186 GETTABLEKS                       R14 R3 K33 ["TextXAlignment"]
      188 SETTABLEKS                       R14 R13 K33 ["TextXAlignment"]
      190 GETTABLEKS                       R14 R3 K34 ["TextYAlignment"]
      192 SETTABLEKS                       R14 R13 K34 ["TextYAlignment"]
      194 SETTABLEKS                       R1 R13 K35 ["ref"]
      196 GETUPVAL                         R15 6
      197 GETTABLEKS                       R14 R15 K36 ["Tag"]
      199 SETTABLE                         R7 R13 R14
      200 CALL                             R11 2 1
      201 JUMPIFNOT                        R4 ; [+2]
      202 GETUPVAL                         R12 11
      203 JUMP                             ; [+1]
      204 MOVE                             R12 R10
      205 JUMPIFNOT                        R4 ; [+35]
      206 GETUPVAL                         R15 12
      207 GETTABLEKS                       R14 R15 K37 ["Dictionary"]
      209 GETTABLEKS                       R13 R14 K38 ["union"]
      211 MOVE                             R14 R11
      212 DUPTABLE                         R15 K43 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      213 SETTABLEKS                       R10 R15 K39 ["component"]
      215 GETTABLEKS                       R16 R3 K5 ["onActivated"]
      217 SETTABLEKS                       R16 R15 K5 ["onActivated"]
      219 GETTABLEKS                       R16 R3 K6 ["onSecondaryActivated"]
      221 SETTABLEKS                       R16 R15 K6 ["onSecondaryActivated"]
      223 GETTABLEKS                       R16 R3 K4 ["onStateChanged"]
      225 SETTABLEKS                       R16 R15 K4 ["onStateChanged"]
      227 GETTABLEKS                       R16 R3 K40 ["stateLayer"]
      229 SETTABLEKS                       R16 R15 K40 ["stateLayer"]
      231 GETTABLEKS                       R16 R3 K41 ["isDisabled"]
      233 SETTABLEKS                       R16 R15 K41 ["isDisabled"]
      235 GETTABLEKS                       R16 R3 K42 ["cursor"]
      237 SETTABLEKS                       R16 R15 K42 ["cursor"]
      239 CALL                             R13 2 1
      240 JUMP                             ; [+1]
      241 MOVE                             R13 R11
      242 GETUPVAL                         R15 6
      243 GETTABLEKS                       R14 R15 K44 ["createElement"]
      245 MOVE                             R15 R12
      246 MOVE                             R16 R13
      247 GETUPVAL                         R17 13
      248 MOVE                             R18 R3
      249 CALL                             R17 1 -1
      250 CALL                             R14 -1 -1
      251 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["ReactIs"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R1 K11 ["Cryo"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R8 K13 ["Interactable"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R9 R0 K12 ["Components"]
       42 GETTABLEKS                       R8 R9 K14 ["Types"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R10 R0 K7 ["Utility"]
       49 GETTABLEKS                       R9 R10 K15 ["withDefaults"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R11 R0 K7 ["Utility"]
       56 GETTABLEKS                       R10 R11 K16 ["useDefaultTags"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R12 R0 K7 ["Utility"]
       63 GETTABLEKS                       R11 R12 K17 ["withGuiObjectProps"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R13 R0 K7 ["Utility"]
       70 GETTABLEKS                       R12 R13 K18 ["useStyledDefaults"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R14 R0 K7 ["Utility"]
       77 GETTABLEKS                       R13 R14 K19 ["indexBindable"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R15 R0 K7 ["Utility"]
       84 GETTABLEKS                       R14 R15 K20 ["GuiObjectChildren"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R17 R0 K21 ["Providers"]
       91 GETTABLEKS                       R16 R17 K22 ["Style"]
       93 GETTABLEKS                       R15 R16 K23 ["useStyleTags"]
       95 CALL                             R14 1 1
       96 GETIMPORT                        R15 K6 [require]
       98 GETIMPORT                        R18 K1 [script]
      100 GETTABLEKS                       R17 R18 K4 ["Parent"]
      102 GETTABLEKS                       R16 R17 K24 ["FontScales"]
      104 CALL                             R15 1 1
      105 DUPTABLE                         R16 K29 [{"AutoLocalize", "AutoButtonColor", "BorderSizePixel", "isDisabled"}]
      106 LOADB                            R17 0
      107 SETTABLEKS                       R17 R16 K25 ["AutoLocalize"]
      109 LOADB                            R17 0
      110 SETTABLEKS                       R17 R16 K26 ["AutoButtonColor"]
      112 LOADN                            R17 0
      113 SETTABLEKS                       R17 R16 K27 ["BorderSizePixel"]
      115 LOADB                            R17 0
      116 SETTABLEKS                       R17 R16 K28 ["isDisabled"]
      118 DUPCLOSURE                       R17 K30 [PROTO_2]
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R13
      133 GETTABLEKS                       R18 R3 K31 ["memo"]
      135 GETTABLEKS                       R19 R3 K32 ["forwardRef"]
      137 MOVE                             R20 R17
      138 CALL                             R19 1 -1
      139 CALL                             R18 -1 -1
      140 RETURN                           R18 -1
