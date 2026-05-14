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
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K4 ["XSmall"]
       19 JUMPIFEQ                         R5 R6 ; [+10]
       21 GETTABLEKS                       R5 R0 K3 ["size"]
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K5 ["Small"]
       26 JUMPIFEQ                         R5 R6 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 GETTABLEKS                       R6 R2 K2 ["isIconSize"]
       32 JUMPIF                           R6 ; [+4]
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K4 ["XSmall"]
       36 JUMPIFNOT                        R6 ; [+2]
       37 LOADK                            R5 K6 ["text-caption-small"]
       38 JUMP                             ; [+1]
       39 LOADK                            R5 K7 ["text-caption-medium"]
       40 GETTABLEKS                       R7 R2 K8 ["colorMode"]
       42 JUMPIF                           R7 ; [+3]
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R7 R7 K9 ["Color"]
       46 GETTABLE                         R6 R1 R7
       47 GETTABLEKS                       R6 R6 K10 ["Content"]
       49 GETTABLEKS                       R6 R6 K11 ["Emphasis"]
       51 GETUPVAL                         R7 5
       52 GETTABLEKS                       R7 R7 K12 ["createElement"]
       54 GETUPVAL                         R8 6
       55 GETUPVAL                         R9 7
       56 MOVE                             R10 R0
       57 DUPTABLE                         R11 K15 [{"Size", "backgroundStyle", "tag"}]
       58 GETTABLEKS                       R12 R0 K13 ["Size"]
       60 SETTABLEKS                       R12 R11 K13 ["Size"]
       62 SETTABLEKS                       R3 R11 K1 ["backgroundStyle"]
       64 LOADK                            R12 K16 ["radius-circle row align-x-center align-y-center"]
       65 SETTABLEKS                       R12 R11 K14 ["tag"]
       67 CALL                             R9 2 1
       68 JUMPIFNOT                        R4 ; [+17]
       69 GETUPVAL                         R10 5
       70 GETTABLEKS                       R10 R10 K12 ["createElement"]
       72 GETUPVAL                         R11 8
       73 DUPTABLE                         R12 K19 [{"name", "size", "style"}]
       74 LOADK                            R13 K20 ["three-dots-horizontal"]
       75 SETTABLEKS                       R13 R12 K17 ["name"]
       77 GETUPVAL                         R13 9
       78 GETTABLEKS                       R13 R13 K4 ["XSmall"]
       80 SETTABLEKS                       R13 R12 K3 ["size"]
       82 SETTABLEKS                       R6 R12 K18 ["style"]
       84 CALL                             R10 2 1
       85 JUMP                             ; [+25]
       86 GETUPVAL                         R10 5
       87 GETTABLEKS                       R10 R10 K12 ["createElement"]
       89 GETUPVAL                         R11 10
       90 DUPTABLE                         R12 K23 [{"Text", "tag", "textStyle"}]
       91 LOADK                            R14 K24 ["+%*"]
       92 GETTABLEKS                       R16 R0 K25 ["count"]
       94 NAMECALL                         R14 R14 K26 ["format"]
       96 CALL                             R14 2 1
       97 MOVE                             R13 R14
       98 SETTABLEKS                       R13 R12 K21 ["Text"]
      100 LOADK                            R14 K27 ["text-align-x-center auto-xy %*"]
      101 MOVE                             R16 R5
      102 NAMECALL                         R14 R14 K26 ["format"]
      104 CALL                             R14 2 1
      105 MOVE                             R13 R14
      106 SETTABLEKS                       R13 R12 K14 ["tag"]
      108 SETTABLEKS                       R6 R12 K22 ["textStyle"]
      110 CALL                             R10 2 1
      111 CALL                             R7 3 -1
      112 RETURN                           R7 -1

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
       11 GETUPVAL                         R7 4
       12 GETTABLEKS                       R7 R7 K1 ["Spread"]
       14 JUMPIFNOTEQ                      R6 R7 ; [+6]
       16 GETTABLEKS                       R6 R4 K2 ["Size"]
       18 GETTABLEKS                       R5 R6 K3 ["Size_200"]
       20 JUMP                             ; [+47]
       21 GETTABLEKS                       R6 R3 K4 ["isIconSize"]
       23 JUMPIFNOT                        R6 ; [+26]
       24 GETTABLEKS                       R6 R2 K5 ["size"]
       26 GETUPVAL                         R7 5
       27 GETTABLEKS                       R7 R7 K6 ["Large"]
       29 JUMPIFEQ                         R6 R7 ; [+8]
       31 GETTABLEKS                       R6 R2 K5 ["size"]
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R7 R7 K7 ["Medium"]
       36 JUMPIFNOTEQ                      R6 R7 ; [+7]
       38 GETTABLEKS                       R6 R4 K2 ["Size"]
       40 GETTABLEKS                       R6 R6 K8 ["Size_50"]
       42 MINUS                            R5 R6
       43 JUMP                             ; [+24]
       44 GETTABLEKS                       R6 R4 K2 ["Size"]
       46 GETTABLEKS                       R6 R6 K9 ["Size_0"]
       48 MINUS                            R5 R6
       49 JUMP                             ; [+18]
       50 GETTABLEKS                       R6 R2 K5 ["size"]
       52 GETUPVAL                         R7 5
       53 GETTABLEKS                       R7 R7 K10 ["XSmall"]
       55 JUMPIFNOTEQ                      R6 R7 ; [+7]
       57 GETTABLEKS                       R6 R4 K2 ["Size"]
       59 GETTABLEKS                       R6 R6 K8 ["Size_50"]
       61 MINUS                            R5 R6
       62 JUMP                             ; [+5]
       63 GETTABLEKS                       R6 R4 K2 ["Size"]
       65 GETTABLEKS                       R6 R6 K11 ["Size_100"]
       67 MINUS                            R5 R6
       68 GETTABLEKS                       R7 R3 K12 ["colorMode"]
       70 JUMPIF                           R7 ; [+3]
       71 GETUPVAL                         R7 6
       72 GETTABLEKS                       R7 R7 K13 ["Color"]
       74 GETTABLE                         R6 R4 R7
       75 GETTABLEKS                       R6 R6 K14 ["Shift"]
       77 GETTABLEKS                       R6 R6 K15 ["Shift_300"]
       79 GETUPVAL                         R7 7
       80 MOVE                             R8 R4
       81 GETTABLEKS                       R9 R2 K5 ["size"]
       83 GETTABLEKS                       R10 R3 K4 ["isIconSize"]
       85 CALL                             R7 3 1
       86 GETTABLEKS                       R8 R2 K16 ["backplateStyle"]
       88 JUMPIF                           R8 ; [+6]
       89 GETTABLEKS                       R8 R4 K13 ["Color"]
       91 GETTABLEKS                       R8 R8 K17 ["Surface"]
       93 GETTABLEKS                       R8 R8 K18 ["Surface_0"]
       95 NEWTABLE                         R9 0 0
       97 ADD                              R10 R7 R5
       98 GETTABLEKS                       R11 R2 K19 ["avatars"]
      100 LOADNIL                          R12
      101 LOADNIL                          R13
      102 FORGPREP                         R11
      103 GETIMPORT                        R16 K22 [UDim2.fromOffset]
      105 SUBK                             R18 R14 K23 [1]
      106 MUL                              R17 R10 R18
      107 LOADN                            R18 0
      108 CALL                             R16 2 1
      109 LOADNIL                          R17
      110 MOVE                             R18 R15
      111 FASTCALL1                        TYPEOF R15 ; [+3]
      112 MOVE                             R20 R15
      113 GETIMPORT                        R19 K25 [typeof]
      115 CALL                             R19 1 1
      116 JUMPIFNOTEQKS                    R19 K26 ["table"] ; [+5]
      118 GETTABLEKS                       R17 R15 K27 ["userPresence"]
      120 GETTABLEKS                       R18 R15 K28 ["userId"]
      122 GETTABLEKS                       R21 R2 K19 ["avatars"]
      124 LENGTH                           R20 R21
      125 SUBK                             R21 R14 K23 [1]
      126 SUB                              R19 R20 R21
      127 GETTABLEKS                       R20 R2 K29 ["max"]
      129 JUMPIFNOTLT                      R20 R14 ; [+41]
      131 GETUPVAL                         R20 8
      132 GETTABLEKS                       R20 R20 K30 ["createElement"]
      134 GETUPVAL                         R21 9
      135 DUPTABLE                         R22 K37 [{"key", "count", "size", "Size", "LayoutOrder", "Position", "ZIndex", "backgroundStyle", "backplateStyle"}]
      136 LOADK                            R23 K38 ["overflow"]
      137 SETTABLEKS                       R23 R22 K31 ["key"]
      139 GETTABLEKS                       R25 R2 K19 ["avatars"]
      141 LENGTH                           R24 R25
      142 GETTABLEKS                       R25 R2 K29 ["max"]
      144 SUB                              R23 R24 R25
      145 SETTABLEKS                       R23 R22 K32 ["count"]
      147 GETTABLEKS                       R23 R2 K5 ["size"]
      149 SETTABLEKS                       R23 R22 K5 ["size"]
      151 GETIMPORT                        R23 K22 [UDim2.fromOffset]
      153 MOVE                             R24 R7
      154 MOVE                             R25 R7
      155 CALL                             R23 2 1
      156 SETTABLEKS                       R23 R22 K2 ["Size"]
      158 SETTABLEKS                       R14 R22 K33 ["LayoutOrder"]
      160 SETTABLEKS                       R16 R22 K34 ["Position"]
      162 SETTABLEKS                       R19 R22 K35 ["ZIndex"]
      164 SETTABLEKS                       R6 R22 K36 ["backgroundStyle"]
      166 SETTABLEKS                       R8 R22 K16 ["backplateStyle"]
      168 CALL                             R20 2 1
      169 SETTABLE                         R20 R9 R14
      170 JUMP                             ; [+44]
      171 GETUPVAL                         R20 8
      172 GETTABLEKS                       R20 R20 K30 ["createElement"]
      174 GETUPVAL                         R21 10
      175 DUPTABLE                         R22 K40 [{"key", "userId", "backgroundStyle", "backplateStyle", "size", "userPresence", "LayoutOrder", "Position", "ZIndex", "testId"}]
      176 FASTCALL1                        TOSTRING R18 ; [+3]
      177 MOVE                             R24 R18
      178 GETIMPORT                        R23 K42 [tostring]
      180 CALL                             R23 1 1
      181 SETTABLEKS                       R23 R22 K31 ["key"]
      183 SETTABLEKS                       R18 R22 K28 ["userId"]
      185 SETTABLEKS                       R6 R22 K36 ["backgroundStyle"]
      187 SETTABLEKS                       R8 R22 K16 ["backplateStyle"]
      189 GETTABLEKS                       R23 R2 K5 ["size"]
      191 SETTABLEKS                       R23 R22 K5 ["size"]
      193 SETTABLEKS                       R17 R22 K27 ["userPresence"]
      195 SETTABLEKS                       R14 R22 K33 ["LayoutOrder"]
      197 SETTABLEKS                       R16 R22 K34 ["Position"]
      199 SETTABLEKS                       R19 R22 K35 ["ZIndex"]
      201 LOADK                            R24 K43 ["%*--avatar-%*"]
      202 GETTABLEKS                       R26 R2 K39 ["testId"]
      204 MOVE                             R27 R18
      205 NAMECALL                         R24 R24 K44 ["format"]
      207 CALL                             R24 3 1
      208 MOVE                             R23 R24
      209 SETTABLEKS                       R23 R22 K39 ["testId"]
      211 CALL                             R20 2 1
      212 SETTABLE                         R20 R9 R14
      213 FORGLOOP                         R11 2 ; [-111]
      215 GETUPVAL                         R11 8
      216 GETTABLEKS                       R11 R11 K30 ["createElement"]
      218 GETUPVAL                         R12 11
      219 GETUPVAL                         R13 12
      220 MOVE                             R14 R2
      221 DUPTABLE                         R15 K47 [{"ref", "tag"}]
      222 SETTABLEKS                       R1 R15 K45 ["ref"]
      224 LOADK                            R16 K48 ["auto-xy"]
      225 SETTABLEKS                       R16 R15 K46 ["tag"]
      227 CALL                             R13 2 1
      228 MOVE                             R14 R9
      229 CALL                             R11 3 -1
      230 RETURN                           R11 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Text"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["Icon"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["Avatar"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Utility"]
       53 GETTABLEKS                       R9 R9 K15 ["withDefaults"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K14 ["Utility"]
       60 GETTABLEKS                       R10 R10 K16 ["withCommonProps"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Providers"]
       67 GETTABLEKS                       R11 R11 K18 ["Style"]
       69 GETTABLEKS                       R11 R11 K19 ["useTokens"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K20 ["Enums"]
       76 GETTABLEKS                       R12 R12 K21 ["ColorMode"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K20 ["Enums"]
       83 GETTABLEKS                       R13 R13 K22 ["InputSize"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K20 ["Enums"]
       90 GETTABLEKS                       R14 R14 K23 ["IconSize"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K20 ["Enums"]
       97 GETTABLEKS                       R15 R15 K24 ["UserPresence"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R16 R0 K20 ["Enums"]
      104 GETTABLEKS                       R16 R16 K25 ["AvatarGroupType"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R17 R0 K17 ["Providers"]
      111 GETTABLEKS                       R17 R17 K18 ["Style"]
      113 GETTABLEKS                       R17 R17 K26 ["PresentationContext"]
      115 CALL                             R16 1 1
      116 GETTABLEKS                       R16 R16 K27 ["usePresentationContext"]
      118 GETIMPORT                        R17 K6 [require]
      120 GETTABLEKS                       R18 R0 K14 ["Utility"]
      122 GETTABLEKS                       R18 R18 K28 ["useCumulativeBackground"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K6 [require]
      127 GETTABLEKS                       R19 R0 K8 ["Components"]
      129 GETTABLEKS                       R19 R19 K13 ["Avatar"]
      131 GETTABLEKS                       R19 R19 K29 ["getAvatarSize"]
      133 CALL                             R18 1 1
      134 DUPTABLE                         R19 K34 [{"type", "max", "size", "testId"}]
      135 GETTABLEKS                       R20 R15 K35 ["Spread"]
      137 SETTABLEKS                       R20 R19 K30 ["type"]
      139 LOADK                            R20 K36 [∞]
      140 SETTABLEKS                       R20 R19 K31 ["max"]
      142 GETTABLEKS                       R20 R12 K37 ["Medium"]
      144 SETTABLEKS                       R20 R19 K32 ["size"]
      146 LOADK                            R20 K38 ["--foundation-avatar-group"]
      147 SETTABLEKS                       R20 R19 K33 ["testId"]
      149 DUPCLOSURE                       R20 K39 [PROTO_0]
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R5
      161 DUPCLOSURE                       R21 K40 [PROTO_1]
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R9
      175 GETTABLEKS                       R22 R2 K41 ["memo"]
      177 GETTABLEKS                       R23 R2 K42 ["forwardRef"]
      179 MOVE                             R24 R21
      180 CALL                             R23 1 -1
      181 CALL                             R22 -1 -1
      182 RETURN                           R22 -1
