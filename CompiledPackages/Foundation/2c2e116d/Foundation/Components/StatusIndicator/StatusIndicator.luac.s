PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKB                       R3 TRUE ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["max"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["max"]
        7 JUMPIFNOTLT                      R1 R0 ; [+10]
        9 LOADK                            R2 K1 ["%*+"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["max"]
       13 NAMECALL                         R2 R2 K2 ["format"]
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 RETURN                           R1 1
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K4 [tostring]
       22 CALL                             R1 1 1
       23 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R4 R2 K0 ["value"]
        6 JUMPIFNOT                        R4 ; [+4]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["Circle"]
       10 JUMP                             ; [+2]
       11 GETTABLEKS                       R3 R2 K2 ["shape"]
       13 GETUPVAL                         R4 3
       14 JUMPIFNOT                        R4 ; [+35]
       15 GETTABLEKS                       R4 R2 K0 ["value"]
       17 JUMPIFEQKNIL                     R4 ; [+32]
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R7 R2 K3 ["variant"]
       22 GETTABLE                         R5 R6 R7
       23 LOADK                            R7 K4 ["%* is not a supported numeric variant. The following are valid numeric variants: %*"]
       24 GETTABLEKS                       R9 R2 K3 ["variant"]
       26 GETIMPORT                        R10 K7 [table.concat]
       28 GETUPVAL                         R11 5
       29 GETTABLEKS                       R11 R11 K8 ["filter"]
       31 GETUPVAL                         R12 5
       32 GETTABLEKS                       R12 R12 K9 ["keys"]
       34 GETUPVAL                         R13 4
       35 CALL                             R12 1 1
       36 DUPCLOSURE                       R13 K10 [PROTO_0]
       37 CAPTURE                          UPVAL U4
       38 CALL                             R11 2 1
       39 LOADK                            R12 K11 [","]
       40 CALL                             R10 2 1
       41 NAMECALL                         R7 R7 K12 ["format"]
       43 CALL                             R7 3 1
       44 MOVE                             R6 R7
       45 FASTCALL2                        ASSERT R5 R6 ; [+3]
       47 GETIMPORT                        R4 K14 [assert]
       49 CALL                             R4 2 0
       50 GETUPVAL                         R4 6
       51 CALL                             R4 0 1
       52 GETTABLEKS                       R6 R2 K0 ["value"]
       54 JUMPIFNOTEQKNIL                  R6 ; [+2]
       56 LOADB                            R5 0 +1
       57 LOADB                            R5 1
       58 GETUPVAL                         R6 7
       59 MOVE                             R7 R4
       60 GETTABLEKS                       R8 R2 K3 ["variant"]
       62 MOVE                             R9 R5
       63 MOVE                             R10 R3
       64 CALL                             R6 4 1
       65 GETUPVAL                         R7 8
       66 GETTABLEKS                       R7 R7 K15 ["useCallback"]
       68 NEWCLOSURE                       R8 P1
       69 CAPTURE                          VAL R2
       70 NEWTABLE                         R9 0 1
       72 GETTABLEKS                       R10 R2 K16 ["max"]
       74 SETLIST                          R9 R10 1 [1]
       76 CALL                             R7 2 1
       77 GETUPVAL                         R8 8
       78 GETTABLEKS                       R8 R8 K17 ["createElement"]
       80 GETUPVAL                         R9 9
       81 GETUPVAL                         R10 10
       82 MOVE                             R11 R2
       83 DUPTABLE                         R12 K21 [{"tag", "backgroundStyle", "ref"}]
       84 GETTABLEKS                       R13 R6 K22 ["container"]
       86 GETTABLEKS                       R13 R13 K18 ["tag"]
       88 SETTABLEKS                       R13 R12 K18 ["tag"]
       90 GETTABLEKS                       R14 R6 K22 ["container"]
       92 GETTABLEKS                       R14 R14 K19 ["backgroundStyle"]
       94 JUMPIFNOT                        R14 ; [+5]
       95 GETTABLEKS                       R13 R6 K22 ["container"]
       97 GETTABLEKS                       R13 R13 K19 ["backgroundStyle"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R13
      101 SETTABLEKS                       R13 R12 K19 ["backgroundStyle"]
      103 SETTABLEKS                       R1 R12 K20 ["ref"]
      105 CALL                             R10 2 1
      106 DUPTABLE                         R11 K25 [{"Text", "InnerRing"}]
      107 JUMPIFNOT                        R5 ; [+84]
      108 GETTABLEKS                       R13 R6 K26 ["content"]
      110 GETTABLEKS                       R13 R13 K27 ["style"]
      112 JUMPIFNOT                        R13 ; [+79]
      113 GETUPVAL                         R12 8
      114 GETTABLEKS                       R12 R12 K17 ["createElement"]
      116 GETUPVAL                         R13 11
      117 DUPTABLE                         R14 K31 [{"Text", "textStyle", "fontStyle", "tag", "testId"}]
      118 GETUPVAL                         R16 12
      119 GETTABLEKS                       R16 R16 K32 ["isBinding"]
      121 GETTABLEKS                       R17 R2 K0 ["value"]
      123 CALL                             R16 1 1
      124 JUMPIFNOT                        R16 ; [+7]
      125 GETTABLEKS                       R15 R2 K0 ["value"]
      127 MOVE                             R17 R7
      128 NAMECALL                         R15 R15 K33 ["map"]
      130 CALL                             R15 2 1
      131 JUMP                             ; [+4]
      132 MOVE                             R15 R7
      133 GETTABLEKS                       R16 R2 K0 ["value"]
      135 CALL                             R15 1 1
      136 SETTABLEKS                       R15 R14 K23 ["Text"]
      138 GETTABLEKS                       R15 R6 K26 ["content"]
      140 GETTABLEKS                       R15 R15 K27 ["style"]
      142 SETTABLEKS                       R15 R14 K28 ["textStyle"]
      144 GETUPVAL                         R16 13
      145 GETTABLEKS                       R16 R16 K34 ["FoundationStatusIndicatorBeta"]
      147 JUMPIFNOT                        R16 ; [+24]
      148 DUPTABLE                         R15 K38 [{"Font", "FontSize", "LineHeight"}]
      149 GETTABLEKS                       R16 R6 K26 ["content"]
      151 GETTABLEKS                       R16 R16 K39 ["font"]
      153 SETTABLEKS                       R16 R15 K35 ["Font"]
      155 GETTABLEKS                       R16 R4 K40 ["Typography"]
      157 GETTABLEKS                       R16 R16 K41 ["LabelSmall"]
      159 GETTABLEKS                       R16 R16 K36 ["FontSize"]
      161 SETTABLEKS                       R16 R15 K36 ["FontSize"]
      163 GETTABLEKS                       R16 R4 K40 ["Typography"]
      165 GETTABLEKS                       R16 R16 K41 ["LabelSmall"]
      167 GETTABLEKS                       R16 R16 K37 ["LineHeight"]
      169 SETTABLEKS                       R16 R15 K37 ["LineHeight"]
      171 JUMP                             ; [+1]
      172 LOADNIL                          R15
      173 SETTABLEKS                       R15 R14 K29 ["fontStyle"]
      175 GETTABLEKS                       R15 R6 K26 ["content"]
      177 GETTABLEKS                       R15 R15 K18 ["tag"]
      179 SETTABLEKS                       R15 R14 K18 ["tag"]
      181 LOADK                            R16 K42 ["%*--text"]
      182 GETTABLEKS                       R18 R2 K30 ["testId"]
      184 NAMECALL                         R16 R16 K12 ["format"]
      186 CALL                             R16 2 1
      187 MOVE                             R15 R16
      188 SETTABLEKS                       R15 R14 K30 ["testId"]
      190 CALL                             R12 2 1
      191 JUMP                             ; [+1]
      192 LOADNIL                          R12
      193 SETTABLEKS                       R12 R11 K23 ["Text"]
      195 GETTABLEKS                       R13 R6 K43 ["ring"]
      197 JUMPIFNOT                        R13 ; [+22]
      198 GETUPVAL                         R12 8
      199 GETTABLEKS                       R12 R12 K17 ["createElement"]
      201 GETUPVAL                         R13 9
      202 DUPTABLE                         R14 K44 [{"tag", "testId"}]
      203 GETTABLEKS                       R15 R6 K43 ["ring"]
      205 GETTABLEKS                       R15 R15 K18 ["tag"]
      207 SETTABLEKS                       R15 R14 K18 ["tag"]
      209 LOADK                            R16 K45 ["%*--ring"]
      210 GETTABLEKS                       R18 R2 K30 ["testId"]
      212 NAMECALL                         R16 R16 K12 ["format"]
      214 CALL                             R16 2 1
      215 MOVE                             R15 R16
      216 SETTABLEKS                       R15 R14 K30 ["testId"]
      218 CALL                             R12 2 1
      219 JUMP                             ; [+1]
      220 LOADNIL                          R12
      221 SETTABLEKS                       R12 R11 K24 ["InnerRing"]
      223 CALL                             R8 3 -1
      224 RETURN                           R8 -1

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
       35 GETTABLEKS                       R7 R7 K13 ["Text"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K12 ["Components"]
       42 GETTABLEKS                       R8 R8 K14 ["Types"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K12 ["Components"]
       49 GETTABLEKS                       R9 R9 K15 ["View"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETIMPORT                        R10 K1 [script]
       56 GETTABLEKS                       R10 R10 K4 ["Parent"]
       58 GETTABLEKS                       R10 R10 K16 ["useStatusIndicatorVariants"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K17 ["Providers"]
       65 GETTABLEKS                       R11 R11 K18 ["Style"]
       67 GETTABLEKS                       R11 R11 K19 ["useTokens"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K10 ["Utility"]
       74 GETTABLEKS                       R12 R12 K20 ["withCommonProps"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Utility"]
       81 GETTABLEKS                       R13 R13 K21 ["withDefaults"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R14 K23 [_G]
       86 GETTABLEKS                       R14 R14 K24 ["__DEV__"]
       88 JUMPIFEQKB                       R14 TRUE ; [+2]
       90 LOADB                            R13 0 +1
       91 LOADB                            R13 1
       92 GETIMPORT                        R14 K6 [require]
       94 GETTABLEKS                       R15 R0 K25 ["Enums"]
       96 GETTABLEKS                       R15 R15 K26 ["StatusIndicatorVariant"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K6 [require]
      101 GETTABLEKS                       R16 R0 K25 ["Enums"]
      103 GETTABLEKS                       R16 R16 K27 ["StatusIndicatorShape"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K6 [require]
      108 GETIMPORT                        R17 K1 [script]
      110 GETTABLEKS                       R17 R17 K4 ["Parent"]
      112 GETTABLEKS                       R17 R17 K28 ["ValidNumericVariants"]
      114 CALL                             R16 1 1
      115 DUPTABLE                         R17 K35 [{["variant"], ["shape"], ["max"] = ∞, ["testId"] = "--foundation-status-indicator"}]
      116 GETTABLEKS                       R18 R14 K36 ["Standard"]
      118 SETTABLEKS                       R18 R17 K29 ["variant"]
      120 GETTABLEKS                       R18 R15 K37 ["Circle"]
      122 SETTABLEKS                       R18 R17 K30 ["shape"]
      124 DUPCLOSURE                       R18 K38 [PROTO_2]
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R5
      139 GETTABLEKS                       R19 R3 K39 ["memo"]
      141 GETTABLEKS                       R20 R3 K40 ["forwardRef"]
      143 MOVE                             R21 R18
      144 CALL                             R20 1 -1
      145 CALL                             R19 -1 -1
      146 RETURN                           R19 -1
