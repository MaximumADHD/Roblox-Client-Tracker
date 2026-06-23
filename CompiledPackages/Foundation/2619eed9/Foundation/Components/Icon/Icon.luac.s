PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 4
        9 GETTABLEKS                       R6 R2 K0 ["name"]
       11 CALL                             R5 1 1
       12 GETUPVAL                         R6 5
       13 GETTABLEKS                       R7 R2 K1 ["size"]
       15 GETUPVAL                         R8 6
       16 GETTABLEKS                       R9 R2 K0 ["name"]
       18 CALL                             R8 1 -1
       19 CALL                             R6 -1 1
       20 GETTABLEKS                       R7 R2 K2 ["variant"]
       22 GETTABLEKS                       R8 R2 K0 ["name"]
       24 FASTCALL1                        TYPEOF R6 ; [+3]
       25 MOVE                             R11 R6
       26 GETIMPORT                        R10 K4 [typeof]
       28 CALL                             R10 1 1
       29 JUMPIFNOTEQKS                    R10 K5 ["table"] ; [+3]
       31 LOADNIL                          R9
       32 JUMP                             ; [+4]
       33 GETTABLEKS                       R9 R6 K6 ["Y"]
       35 GETTABLEKS                       R9 R9 K7 ["Offset"]
       37 GETUPVAL                         R10 6
       38 MOVE                             R11 R8
       39 CALL                             R10 1 1
       40 JUMPIF                           R10 ; [+22]
       41 JUMPIFNOT                        R5 ; [+21]
       42 FASTCALL1                        TYPEOF R6 ; [+3]
       43 MOVE                             R11 R6
       44 GETIMPORT                        R10 K4 [typeof]
       46 CALL                             R10 1 1
       47 JUMPIFNOTEQKS                    R10 K5 ["table"] ; [+5]
       49 GETIMPORT                        R10 K9 [error]
       51 LOADK                            R11 K10 ["Binding size isn't supported when migrating a UIBlox icon, use Builder Icons directly"]
       52 CALL                             R10 1 0
       53 GETTABLEKS                       R10 R5 K2 ["variant"]
       55 OR                               R7 R10 R7
       56 GETTABLEKS                       R8 R5 K0 ["name"]
       58 GETUPVAL                         R10 7
       59 MOVE                             R11 R9
       60 MOVE                             R12 R3
       61 CALL                             R10 2 1
       62 MOVE                             R9 R10
       63 GETTABLEKS                       R10 R2 K11 ["style"]
       65 JUMPIF                           R10 ; [+6]
       66 GETTABLEKS                       R10 R3 K12 ["Color"]
       68 GETTABLEKS                       R10 R10 K13 ["Content"]
       70 GETTABLEKS                       R10 R10 K14 ["Default"]
       72 GETUPVAL                         R11 6
       73 MOVE                             R12 R8
       74 CALL                             R11 1 1
       75 JUMPIF                           R11 ; [+34]
       76 JUMPIF                           R5 ; [+33]
       77 GETTABLEKS                       R11 R0 K2 ["variant"]
       79 JUMPIFEQKNIL                     R11 ; [+6]
       81 GETUPVAL                         R11 8
       82 LOADK                            R13 K15 ["variant is not supported when using FoundationImages, consider using BuilderIcons"]
       83 NAMECALL                         R11 R11 K16 ["warning"]
       85 CALL                             R11 2 0
       86 GETUPVAL                         R11 9
       87 GETTABLEKS                       R11 R11 K17 ["createElement"]
       89 GETUPVAL                         R12 10
       90 GETUPVAL                         R13 11
       91 MOVE                             R14 R2
       92 DUPTABLE                         R15 K23 [{"imageStyle", "Image", "Size", "ref", "Rotation"}]
       93 SETTABLEKS                       R10 R15 K18 ["imageStyle"]
       95 SETTABLEKS                       R8 R15 K19 ["Image"]
       97 SETTABLEKS                       R6 R15 K20 ["Size"]
       99 SETTABLEKS                       R1 R15 K21 ["ref"]
      101 GETTABLEKS                       R16 R2 K22 ["Rotation"]
      103 SETTABLEKS                       R16 R15 K22 ["Rotation"]
      105 CALL                             R13 2 1
      106 GETTABLEKS                       R14 R2 K24 ["children"]
      108 CALL                             R11 3 1
      109 RETURN                           R11 1
      110 GETUPVAL                         R11 9
      111 GETTABLEKS                       R11 R11 K17 ["createElement"]
      113 GETUPVAL                         R12 12
      114 GETUPVAL                         R13 11
      115 MOVE                             R14 R2
      116 DUPTABLE                         R15 K29 [{"textStyle", "Text", "fontStyle", "TextScaled", "Size", "ref", "Rotation"}]
      117 SETTABLEKS                       R10 R15 K25 ["textStyle"]
      119 SETTABLEKS                       R8 R15 K26 ["Text"]
      121 DUPTABLE                         R16 K32 [{"Font", "FontSize"}]
      122 GETUPVAL                         R18 13
      123 GETTABLE                         R17 R18 R7
      124 SETTABLEKS                       R17 R16 K30 ["Font"]
      126 SETTABLEKS                       R9 R16 K31 ["FontSize"]
      128 SETTABLEKS                       R16 R15 K27 ["fontStyle"]
      130 FASTCALL1                        TYPEOF R6 ; [+3]
      131 MOVE                             R18 R6
      132 GETIMPORT                        R17 K4 [typeof]
      134 CALL                             R17 1 1
      135 JUMPIFEQKS                       R17 K5 ["table"] ; [+2]
      137 LOADB                            R16 0 +1
      138 LOADB                            R16 1
      139 SETTABLEKS                       R16 R15 K28 ["TextScaled"]
      141 SETTABLEKS                       R6 R15 K20 ["Size"]
      143 SETTABLEKS                       R1 R15 K21 ["ref"]
      145 GETTABLEKS                       R16 R2 K22 ["Rotation"]
      147 SETTABLEKS                       R16 R15 K22 ["Rotation"]
      149 CALL                             R13 2 1
      150 DUPTABLE                         R14 K35 [{"UITextSizeConstraint", "Children"}]
      151 LOADN                            R16 0
      152 JUMPIFNOTLT                      R16 R4 ; [+11]
      154 JUMPIFNOT                        R9 ; [+9]
      155 GETUPVAL                         R15 9
      156 GETTABLEKS                       R15 R15 K17 ["createElement"]
      158 LOADK                            R16 K33 ["UITextSizeConstraint"]
      159 DUPTABLE                         R17 K37 [{"MaxTextSize"}]
      160 SETTABLEKS                       R9 R17 K36 ["MaxTextSize"]
      162 CALL                             R15 2 1
      163 JUMP                             ; [+1]
      164 LOADNIL                          R15
      165 SETTABLEKS                       R15 R14 K33 ["UITextSizeConstraint"]
      167 GETUPVAL                         R15 9
      168 GETTABLEKS                       R15 R15 K17 ["createElement"]
      170 GETUPVAL                         R16 9
      171 GETTABLEKS                       R16 R16 K38 ["Fragment"]
      173 LOADNIL                          R17
      174 GETTABLEKS                       R18 R2 K24 ["children"]
      176 CALL                             R15 3 1
      177 SETTABLEKS                       R15 R14 K34 ["Children"]
      179 CALL                             R11 3 -1
      180 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["BuilderIcons"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["Font"]
       21 GETTABLEKS                       R5 R3 K10 ["IconVariant"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETTABLEKS                       R7 R0 K11 ["Enums"]
       27 GETTABLEKS                       R7 R7 K12 ["IconSize"]
       29 CALL                             R6 1 1
       30 GETIMPORT                        R7 K6 [require]
       32 GETTABLEKS                       R8 R0 K13 ["Components"]
       34 GETTABLEKS                       R8 R8 K14 ["Image"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K6 [require]
       39 GETTABLEKS                       R9 R0 K13 ["Components"]
       41 GETTABLEKS                       R9 R9 K15 ["Text"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K6 [require]
       46 GETTABLEKS                       R10 R0 K16 ["Utility"]
       48 GETTABLEKS                       R10 R10 K17 ["Logger"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K6 [require]
       53 GETTABLEKS                       R11 R0 K16 ["Utility"]
       55 GETTABLEKS                       R11 R11 K18 ["isBuilderIcon"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K6 [require]
       60 GETIMPORT                        R12 K1 [script]
       62 GETTABLEKS                       R12 R12 K4 ["Parent"]
       64 GETTABLEKS                       R12 R12 K19 ["migrateFontSize"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K6 [require]
       69 GETIMPORT                        R13 K1 [script]
       71 GETTABLEKS                       R13 R13 K4 ["Parent"]
       73 GETTABLEKS                       R13 R13 K20 ["migrateIconName"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K6 [require]
       78 GETTABLEKS                       R14 R0 K16 ["Utility"]
       80 GETTABLEKS                       R14 R14 K21 ["useIconSize"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K6 [require]
       85 GETTABLEKS                       R15 R0 K22 ["Providers"]
       87 GETTABLEKS                       R15 R15 K23 ["Style"]
       89 GETTABLEKS                       R15 R15 K24 ["useTextSizeOffset"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K6 [require]
       94 GETTABLEKS                       R16 R0 K22 ["Providers"]
       96 GETTABLEKS                       R16 R16 K23 ["Style"]
       98 GETTABLEKS                       R16 R16 K25 ["useTokens"]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K6 [require]
      103 GETTABLEKS                       R17 R0 K16 ["Utility"]
      105 GETTABLEKS                       R17 R17 K26 ["withCommonProps"]
      107 CALL                             R16 1 1
      108 GETIMPORT                        R17 K6 [require]
      110 GETTABLEKS                       R18 R0 K16 ["Utility"]
      112 GETTABLEKS                       R18 R18 K27 ["withDefaults"]
      114 CALL                             R17 1 1
      115 GETIMPORT                        R18 K6 [require]
      117 GETTABLEKS                       R19 R0 K13 ["Components"]
      119 GETTABLEKS                       R19 R19 K28 ["Types"]
      121 CALL                             R18 1 1
      122 DUPTABLE                         R19 K32 [{"size", "variant", "testId"}]
      123 GETTABLEKS                       R20 R6 K33 ["Medium"]
      125 SETTABLEKS                       R20 R19 K29 ["size"]
      127 GETTABLEKS                       R20 R5 K34 ["Regular"]
      129 SETTABLEKS                       R20 R19 K30 ["variant"]
      131 LOADK                            R20 K35 ["--foundation-icon"]
      132 SETTABLEKS                       R20 R19 K31 ["testId"]
      134 DUPCLOSURE                       R20 K36 [PROTO_0]
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R8
      148 CAPTURE                          VAL R4
      149 GETTABLEKS                       R21 R2 K37 ["memo"]
      151 GETTABLEKS                       R22 R2 K38 ["forwardRef"]
      153 MOVE                             R23 R20
      154 CALL                             R22 1 -1
      155 CALL                             R21 -1 -1
      156 RETURN                           R21 -1
