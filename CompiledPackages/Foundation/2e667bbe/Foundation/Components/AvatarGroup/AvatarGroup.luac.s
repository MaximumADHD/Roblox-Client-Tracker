PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R4 R0 K0 ["backplateStyle"]
        7 GETTABLEKS                       R5 R0 K1 ["backgroundStyle"]
        9 CALL                             R3 2 1
       10 GETTABLEKS                       R4 R2 K2 ["isIconSize"]
       12 JUMPIFNOT                        R4 ; [+17]
       13 LOADB                            R4 1
       14 GETTABLEKS                       R5 R0 K3 ["size"]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R6 R7 K4 ["XSmall"]
       19 JUMPIFEQ                         R5 R6 ; [+10]
       21 GETTABLEKS                       R5 R0 K3 ["size"]
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R6 R7 K5 ["Small"]
       26 JUMPIFEQ                         R5 R6 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 GETTABLEKS                       R6 R2 K2 ["isIconSize"]
       32 JUMPIF                           R6 ; [+4]
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R6 R7 K4 ["XSmall"]
       36 JUMPIFNOT                        R6 ; [+2]
       37 LOADK                            R5 K6 ["text-caption-small"]
       38 JUMP                             ; [+1]
       39 LOADK                            R5 K7 ["text-caption-medium"]
       40 GETTABLEKS                       R9 R2 K8 ["isInverse"]
       42 JUMPIFNOT                        R9 ; [+3]
       43 GETTABLEKS                       R8 R1 K9 ["Inverse"]
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R8 R1 K10 ["Color"]
       48 GETTABLEKS                       R7 R8 K11 ["Content"]
       50 GETTABLEKS                       R6 R7 K12 ["Emphasis"]
       52 GETUPVAL                         R8 4
       53 GETTABLEKS                       R7 R8 K13 ["createElement"]
       55 GETUPVAL                         R8 5
       56 GETUPVAL                         R9 6
       57 MOVE                             R10 R0
       58 DUPTABLE                         R11 K16 [{"Size", "backgroundStyle", "tag"}]
       59 GETTABLEKS                       R12 R0 K14 ["Size"]
       61 SETTABLEKS                       R12 R11 K14 ["Size"]
       63 SETTABLEKS                       R3 R11 K1 ["backgroundStyle"]
       65 LOADK                            R12 K17 ["radius-circle row align-x-center align-y-center"]
       66 SETTABLEKS                       R12 R11 K15 ["tag"]
       68 CALL                             R9 2 1
       69 JUMPIFNOT                        R4 ; [+17]
       70 GETUPVAL                         R11 4
       71 GETTABLEKS                       R10 R11 K13 ["createElement"]
       73 GETUPVAL                         R11 7
       74 DUPTABLE                         R12 K20 [{"name", "size", "style"}]
       75 LOADK                            R13 K21 ["three-dots-horizontal"]
       76 SETTABLEKS                       R13 R12 K18 ["name"]
       78 GETUPVAL                         R14 8
       79 GETTABLEKS                       R13 R14 K4 ["XSmall"]
       81 SETTABLEKS                       R13 R12 K3 ["size"]
       83 SETTABLEKS                       R6 R12 K19 ["style"]
       85 CALL                             R10 2 1
       86 JUMP                             ; [+25]
       87 GETUPVAL                         R11 4
       88 GETTABLEKS                       R10 R11 K13 ["createElement"]
       90 GETUPVAL                         R11 9
       91 DUPTABLE                         R12 K24 [{"Text", "tag", "textStyle"}]
       92 LOADK                            R14 K25 ["+%*"]
       93 GETTABLEKS                       R16 R0 K26 ["count"]
       95 NAMECALL                         R14 R14 K27 ["format"]
       97 CALL                             R14 2 1
       98 MOVE                             R13 R14
       99 SETTABLEKS                       R13 R12 K22 ["Text"]
      101 LOADK                            R14 K28 ["text-align-x-center auto-xy %*"]
      102 MOVE                             R16 R5
      103 NAMECALL                         R14 R14 K27 ["format"]
      105 CALL                             R14 2 1
      106 MOVE                             R13 R14
      107 SETTABLEKS                       R13 R12 K15 ["tag"]
      109 SETTABLEKS                       R6 R12 K23 ["textStyle"]
      111 CALL                             R10 2 1
      112 CALL                             R7 3 -1
      113 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 LOADNIL                          R5
        9 GETTABLEKS                       R6 R2 K0 ["type"]
       11 GETUPVAL                         R8 4
       12 GETTABLEKS                       R7 R8 K1 ["Spread"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+6]
       16 GETTABLEKS                       R6 R4 K2 ["Size"]
       18 GETTABLEKS                       R5 R6 K3 ["Size_200"]
       20 JUMP                             ; [+47]
       21 GETTABLEKS                       R6 R3 K4 ["isIconSize"]
       23 JUMPIFNOT                        R6 ; [+26]
       24 GETTABLEKS                       R6 R2 K5 ["size"]
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R7 R8 K6 ["Large"]
       29 JUMPIFEQ                         R6 R7 ; [+8]
       31 GETTABLEKS                       R6 R2 K5 ["size"]
       33 GETUPVAL                         R8 5
       34 GETTABLEKS                       R7 R8 K7 ["Medium"]
       36 JUMPIFNOTEQ                      R6 R7 ; [+7]
       38 GETTABLEKS                       R7 R4 K2 ["Size"]
       40 GETTABLEKS                       R6 R7 K8 ["Size_50"]
       42 MINUS                            R5 R6
       43 JUMP                             ; [+24]
       44 GETTABLEKS                       R7 R4 K2 ["Size"]
       46 GETTABLEKS                       R6 R7 K9 ["Size_0"]
       48 MINUS                            R5 R6
       49 JUMP                             ; [+18]
       50 GETTABLEKS                       R6 R2 K5 ["size"]
       52 GETUPVAL                         R8 5
       53 GETTABLEKS                       R7 R8 K10 ["XSmall"]
       55 JUMPIFNOTEQ                      R6 R7 ; [+7]
       57 GETTABLEKS                       R7 R4 K2 ["Size"]
       59 GETTABLEKS                       R6 R7 K8 ["Size_50"]
       61 MINUS                            R5 R6
       62 JUMP                             ; [+5]
       63 GETTABLEKS                       R7 R4 K2 ["Size"]
       65 GETTABLEKS                       R6 R7 K11 ["Size_100"]
       67 MINUS                            R5 R6
       68 GETTABLEKS                       R9 R3 K12 ["isInverse"]
       70 JUMPIFNOT                        R9 ; [+3]
       71 GETTABLEKS                       R8 R4 K13 ["Inverse"]
       73 JUMP                             ; [+2]
       74 GETTABLEKS                       R8 R4 K14 ["Color"]
       76 GETTABLEKS                       R7 R8 K15 ["Shift"]
       78 GETTABLEKS                       R6 R7 K16 ["Shift_300"]
       80 GETUPVAL                         R7 6
       81 MOVE                             R8 R4
       82 GETTABLEKS                       R9 R2 K5 ["size"]
       84 GETTABLEKS                       R10 R3 K4 ["isIconSize"]
       86 CALL                             R7 3 1
       87 GETTABLEKS                       R8 R2 K17 ["backplateStyle"]
       89 JUMPIF                           R8 ; [+6]
       90 GETTABLEKS                       R10 R4 K14 ["Color"]
       92 GETTABLEKS                       R9 R10 K18 ["Surface"]
       94 GETTABLEKS                       R8 R9 K19 ["Surface_0"]
       96 NEWTABLE                         R9 0 0
       98 ADD                              R10 R7 R5
       99 GETTABLEKS                       R11 R2 K20 ["avatars"]
      101 LOADNIL                          R12
      102 LOADNIL                          R13
      103 FORGPREP                         R11
      104 GETIMPORT                        R16 K23 [UDim2.fromOffset]
      106 SUBK                             R18 R14 K24 [1]
      107 MUL                              R17 R10 R18
      108 LOADN                            R18 0
      109 CALL                             R16 2 1
      110 LOADNIL                          R17
      111 MOVE                             R18 R15
      112 FASTCALL1                        TYPEOF R15 ; [+3]
      113 MOVE                             R20 R15
      114 GETIMPORT                        R19 K26 [typeof]
      116 CALL                             R19 1 1
      117 JUMPIFNOTEQKS                    R19 K27 ["table"] ; [+5]
      119 GETTABLEKS                       R17 R15 K28 ["userPresence"]
      121 GETTABLEKS                       R18 R15 K29 ["userId"]
      123 GETTABLEKS                       R21 R2 K20 ["avatars"]
      125 LENGTH                           R20 R21
      126 SUBK                             R21 R14 K24 [1]
      127 SUB                              R19 R20 R21
      128 GETTABLEKS                       R20 R2 K30 ["max"]
      130 JUMPIFNOTLT                      R20 R14 ; [+41]
      132 GETUPVAL                         R21 7
      133 GETTABLEKS                       R20 R21 K31 ["createElement"]
      135 GETUPVAL                         R21 8
      136 DUPTABLE                         R22 K38 [{"key", "count", "size", "Size", "LayoutOrder", "Position", "ZIndex", "backgroundStyle", "backplateStyle"}]
      137 LOADK                            R23 K39 ["overflow"]
      138 SETTABLEKS                       R23 R22 K32 ["key"]
      140 GETTABLEKS                       R25 R2 K20 ["avatars"]
      142 LENGTH                           R24 R25
      143 GETTABLEKS                       R25 R2 K30 ["max"]
      145 SUB                              R23 R24 R25
      146 SETTABLEKS                       R23 R22 K33 ["count"]
      148 GETTABLEKS                       R23 R2 K5 ["size"]
      150 SETTABLEKS                       R23 R22 K5 ["size"]
      152 GETIMPORT                        R23 K23 [UDim2.fromOffset]
      154 MOVE                             R24 R7
      155 MOVE                             R25 R7
      156 CALL                             R23 2 1
      157 SETTABLEKS                       R23 R22 K2 ["Size"]
      159 SETTABLEKS                       R14 R22 K34 ["LayoutOrder"]
      161 SETTABLEKS                       R16 R22 K35 ["Position"]
      163 SETTABLEKS                       R19 R22 K36 ["ZIndex"]
      165 SETTABLEKS                       R6 R22 K37 ["backgroundStyle"]
      167 SETTABLEKS                       R8 R22 K17 ["backplateStyle"]
      169 CALL                             R20 2 1
      170 SETTABLE                         R20 R9 R14
      171 JUMP                             ; [+44]
      172 GETUPVAL                         R21 7
      173 GETTABLEKS                       R20 R21 K31 ["createElement"]
      175 GETUPVAL                         R21 9
      176 DUPTABLE                         R22 K41 [{"key", "userId", "backgroundStyle", "backplateStyle", "size", "userPresence", "LayoutOrder", "Position", "ZIndex", "testId"}]
      177 FASTCALL1                        TOSTRING R18 ; [+3]
      178 MOVE                             R24 R18
      179 GETIMPORT                        R23 K43 [tostring]
      181 CALL                             R23 1 1
      182 SETTABLEKS                       R23 R22 K32 ["key"]
      184 SETTABLEKS                       R18 R22 K29 ["userId"]
      186 SETTABLEKS                       R6 R22 K37 ["backgroundStyle"]
      188 SETTABLEKS                       R8 R22 K17 ["backplateStyle"]
      190 GETTABLEKS                       R23 R2 K5 ["size"]
      192 SETTABLEKS                       R23 R22 K5 ["size"]
      194 SETTABLEKS                       R17 R22 K28 ["userPresence"]
      196 SETTABLEKS                       R14 R22 K34 ["LayoutOrder"]
      198 SETTABLEKS                       R16 R22 K35 ["Position"]
      200 SETTABLEKS                       R19 R22 K36 ["ZIndex"]
      202 LOADK                            R24 K44 ["%*--avatar-%*"]
      203 GETTABLEKS                       R26 R2 K40 ["testId"]
      205 MOVE                             R27 R18
      206 NAMECALL                         R24 R24 K45 ["format"]
      208 CALL                             R24 3 1
      209 MOVE                             R23 R24
      210 SETTABLEKS                       R23 R22 K40 ["testId"]
      212 CALL                             R20 2 1
      213 SETTABLE                         R20 R9 R14
      214 FORGLOOP                         R11 2 ; [-111]
      216 GETUPVAL                         R12 7
      217 GETTABLEKS                       R11 R12 K31 ["createElement"]
      219 GETUPVAL                         R12 10
      220 GETUPVAL                         R13 11
      221 MOVE                             R14 R2
      222 DUPTABLE                         R15 K48 [{"ref", "tag"}]
      223 SETTABLEKS                       R1 R15 K46 ["ref"]
      225 LOADK                            R16 K49 ["auto-xy"]
      226 SETTABLEKS                       R16 R15 K47 ["tag"]
      228 CALL                             R13 2 1
      229 MOVE                             R14 R9
      230 CALL                             R11 3 -1
      231 RETURN                           R11 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["Text"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R8 K12 ["Icon"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R9 K13 ["Avatar"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R10 R0 K14 ["Utility"]
       53 GETTABLEKS                       R9 R10 K15 ["withDefaults"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R11 R0 K14 ["Utility"]
       60 GETTABLEKS                       R10 R11 K16 ["withCommonProps"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R13 R0 K17 ["Providers"]
       67 GETTABLEKS                       R12 R13 K18 ["Style"]
       69 GETTABLEKS                       R11 R12 K19 ["useTokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K20 ["Enums"]
       76 GETTABLEKS                       R12 R13 K21 ["InputSize"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K20 ["Enums"]
       83 GETTABLEKS                       R13 R14 K22 ["IconSize"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R15 R0 K20 ["Enums"]
       90 GETTABLEKS                       R14 R15 K23 ["UserPresence"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R16 R0 K20 ["Enums"]
       97 GETTABLEKS                       R15 R16 K24 ["AvatarGroupType"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R16 K6 [require]
      102 GETTABLEKS                       R19 R0 K17 ["Providers"]
      104 GETTABLEKS                       R18 R19 K18 ["Style"]
      106 GETTABLEKS                       R17 R18 K25 ["PresentationContext"]
      108 CALL                             R16 1 1
      109 GETTABLEKS                       R15 R16 K26 ["usePresentationContext"]
      111 GETIMPORT                        R16 K6 [require]
      113 GETTABLEKS                       R18 R0 K14 ["Utility"]
      115 GETTABLEKS                       R17 R18 K27 ["useCumulativeBackground"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K6 [require]
      120 GETTABLEKS                       R20 R0 K8 ["Components"]
      122 GETTABLEKS                       R19 R20 K13 ["Avatar"]
      124 GETTABLEKS                       R18 R19 K28 ["getAvatarSize"]
      126 CALL                             R17 1 1
      127 DUPTABLE                         R18 K33 [{"type", "max", "size", "testId"}]
      128 GETTABLEKS                       R19 R14 K34 ["Spread"]
      130 SETTABLEKS                       R19 R18 K29 ["type"]
      132 LOADK                            R19 K35 [∞]
      133 SETTABLEKS                       R19 R18 K30 ["max"]
      135 GETTABLEKS                       R19 R11 K36 ["Medium"]
      137 SETTABLEKS                       R19 R18 K31 ["size"]
      139 LOADK                            R19 K37 ["--foundation-avatar-group"]
      140 SETTABLEKS                       R19 R18 K32 ["testId"]
      142 DUPCLOSURE                       R19 K38 [PROTO_0]
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R5
      153 DUPCLOSURE                       R20 K39 [PROTO_1]
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R2
      162 CAPTURE                          VAL R19
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R9
      166 GETTABLEKS                       R21 R2 K40 ["memo"]
      168 GETTABLEKS                       R22 R2 K41 ["forwardRef"]
      170 MOVE                             R23 R20
      171 CALL                             R22 1 -1
      172 CALL                             R21 -1 -1
      173 RETURN                           R21 -1
