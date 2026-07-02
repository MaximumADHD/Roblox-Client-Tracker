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
       57 DUPTABLE                         R11 K16 [{["Size"], ["backgroundStyle"], ["tag"] = "radius-circle row align-x-center align-y-center"}]
       58 GETTABLEKS                       R12 R0 K13 ["Size"]
       60 SETTABLEKS                       R12 R11 K13 ["Size"]
       62 SETTABLEKS                       R3 R11 K1 ["backgroundStyle"]
       64 CALL                             R9 2 1
       65 JUMPIFNOT                        R4 ; [+14]
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R10 R10 K12 ["createElement"]
       69 GETUPVAL                         R11 8
       70 DUPTABLE                         R12 K20 [{["name"] = "three-dots-horizontal", ["size"], ["style"]}]
       71 GETUPVAL                         R13 9
       72 GETTABLEKS                       R13 R13 K4 ["XSmall"]
       74 SETTABLEKS                       R13 R12 K3 ["size"]
       76 SETTABLEKS                       R6 R12 K19 ["style"]
       78 CALL                             R10 2 1
       79 JUMP                             ; [+25]
       80 GETUPVAL                         R10 5
       81 GETTABLEKS                       R10 R10 K12 ["createElement"]
       83 GETUPVAL                         R11 10
       84 DUPTABLE                         R12 K23 [{"Text", "tag", "textStyle"}]
       85 LOADK                            R14 K24 ["+%*"]
       86 GETTABLEKS                       R16 R0 K25 ["count"]
       88 NAMECALL                         R14 R14 K26 ["format"]
       90 CALL                             R14 2 1
       91 MOVE                             R13 R14
       92 SETTABLEKS                       R13 R12 K21 ["Text"]
       94 LOADK                            R14 K27 ["text-align-x-center auto-xy %*"]
       95 MOVE                             R16 R5
       96 NAMECALL                         R14 R14 K26 ["format"]
       98 CALL                             R14 2 1
       99 MOVE                             R13 R14
      100 SETTABLEKS                       R13 R12 K14 ["tag"]
      102 SETTABLEKS                       R6 R12 K22 ["textStyle"]
      104 CALL                             R10 2 1
      105 CALL                             R7 3 -1
      106 RETURN                           R7 -1

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
      129 JUMPIFNOTLT                      R20 R14 ; [+38]
      131 GETUPVAL                         R20 8
      132 GETTABLEKS                       R20 R20 K30 ["createElement"]
      134 GETUPVAL                         R21 9
      135 DUPTABLE                         R22 K38 [{["key"] = "overflow", ["count"], ["size"], ["Size"], ["LayoutOrder"], ["Position"], ["ZIndex"], ["backgroundStyle"], ["backplateStyle"]}]
      136 GETTABLEKS                       R25 R2 K19 ["avatars"]
      138 LENGTH                           R24 R25
      139 GETTABLEKS                       R25 R2 K29 ["max"]
      141 SUB                              R23 R24 R25
      142 SETTABLEKS                       R23 R22 K33 ["count"]
      144 GETTABLEKS                       R23 R2 K5 ["size"]
      146 SETTABLEKS                       R23 R22 K5 ["size"]
      148 GETIMPORT                        R23 K22 [UDim2.fromOffset]
      150 MOVE                             R24 R7
      151 MOVE                             R25 R7
      152 CALL                             R23 2 1
      153 SETTABLEKS                       R23 R22 K2 ["Size"]
      155 SETTABLEKS                       R14 R22 K34 ["LayoutOrder"]
      157 SETTABLEKS                       R16 R22 K35 ["Position"]
      159 SETTABLEKS                       R19 R22 K36 ["ZIndex"]
      161 SETTABLEKS                       R6 R22 K37 ["backgroundStyle"]
      163 SETTABLEKS                       R8 R22 K16 ["backplateStyle"]
      165 CALL                             R20 2 1
      166 SETTABLE                         R20 R9 R14
      167 JUMP                             ; [+44]
      168 GETUPVAL                         R20 8
      169 GETTABLEKS                       R20 R20 K30 ["createElement"]
      171 GETUPVAL                         R21 10
      172 DUPTABLE                         R22 K40 [{"key", "userId", "backgroundStyle", "backplateStyle", "size", "userPresence", "LayoutOrder", "Position", "ZIndex", "testId"}]
      173 FASTCALL1                        TOSTRING R18 ; [+3]
      174 MOVE                             R24 R18
      175 GETIMPORT                        R23 K42 [tostring]
      177 CALL                             R23 1 1
      178 SETTABLEKS                       R23 R22 K31 ["key"]
      180 SETTABLEKS                       R18 R22 K28 ["userId"]
      182 SETTABLEKS                       R6 R22 K37 ["backgroundStyle"]
      184 SETTABLEKS                       R8 R22 K16 ["backplateStyle"]
      186 GETTABLEKS                       R23 R2 K5 ["size"]
      188 SETTABLEKS                       R23 R22 K5 ["size"]
      190 SETTABLEKS                       R17 R22 K27 ["userPresence"]
      192 SETTABLEKS                       R14 R22 K34 ["LayoutOrder"]
      194 SETTABLEKS                       R16 R22 K35 ["Position"]
      196 SETTABLEKS                       R19 R22 K36 ["ZIndex"]
      198 LOADK                            R24 K43 ["%*--avatar-%*"]
      199 GETTABLEKS                       R26 R2 K39 ["testId"]
      201 MOVE                             R27 R18
      202 NAMECALL                         R24 R24 K44 ["format"]
      204 CALL                             R24 3 1
      205 MOVE                             R23 R24
      206 SETTABLEKS                       R23 R22 K39 ["testId"]
      208 CALL                             R20 2 1
      209 SETTABLE                         R20 R9 R14
      210 FORGLOOP                         R11 2 ; [-108]
      212 GETUPVAL                         R11 8
      213 GETTABLEKS                       R11 R11 K30 ["createElement"]
      215 GETUPVAL                         R12 11
      216 GETUPVAL                         R13 12
      217 MOVE                             R14 R2
      218 DUPTABLE                         R15 K48 [{["ref"], ["tag"] = "auto-xy"}]
      219 SETTABLEKS                       R1 R15 K45 ["ref"]
      221 CALL                             R13 2 1
      222 MOVE                             R14 R9
      223 CALL                             R11 3 -1
      224 RETURN                           R11 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Avatar"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["ColorMode"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Icon"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["IconSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K10 ["Enums"]
       46 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K8 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["Text"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Components"]
       60 GETTABLEKS                       R10 R10 K16 ["Types"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K8 ["Components"]
       67 GETTABLEKS                       R11 R11 K17 ["View"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K18 ["Providers"]
       74 GETTABLEKS                       R12 R12 K19 ["Style"]
       76 GETTABLEKS                       R12 R12 K20 ["useTokens"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R13 R0 K21 ["Utility"]
       83 GETTABLEKS                       R13 R13 K22 ["withCommonProps"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R14 R0 K21 ["Utility"]
       90 GETTABLEKS                       R14 R14 K23 ["withDefaults"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R15 R0 K10 ["Enums"]
       97 GETTABLEKS                       R15 R15 K24 ["UserPresence"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R16 R0 K10 ["Enums"]
      104 GETTABLEKS                       R16 R16 K25 ["AvatarGroupType"]
      106 CALL                             R15 1 1
      107 GETIMPORT                        R16 K6 [require]
      109 GETTABLEKS                       R17 R0 K18 ["Providers"]
      111 GETTABLEKS                       R17 R17 K19 ["Style"]
      113 GETTABLEKS                       R17 R17 K26 ["PresentationContext"]
      115 CALL                             R16 1 1
      116 GETTABLEKS                       R16 R16 K27 ["usePresentationContext"]
      118 GETIMPORT                        R17 K6 [require]
      120 GETTABLEKS                       R18 R0 K21 ["Utility"]
      122 GETTABLEKS                       R18 R18 K28 ["useCumulativeBackground"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K6 [require]
      127 GETTABLEKS                       R19 R0 K8 ["Components"]
      129 GETTABLEKS                       R19 R19 K9 ["Avatar"]
      131 GETTABLEKS                       R19 R19 K29 ["getAvatarSize"]
      133 CALL                             R18 1 1
      134 DUPTABLE                         R19 K36 [{["type"], ["max"] = ∞, ["size"], ["testId"] = "--foundation-avatar-group"}]
      135 GETTABLEKS                       R20 R15 K37 ["Spread"]
      137 SETTABLEKS                       R20 R19 K30 ["type"]
      139 GETTABLEKS                       R20 R7 K38 ["Medium"]
      141 SETTABLEKS                       R20 R19 K33 ["size"]
      143 DUPCLOSURE                       R20 K39 [PROTO_0]
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R10
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R8
      155 DUPCLOSURE                       R21 K40 [PROTO_1]
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R19
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R11
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R7
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R18
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R3
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R12
      169 GETTABLEKS                       R22 R2 K41 ["memo"]
      171 GETTABLEKS                       R23 R2 K42 ["forwardRef"]
      173 MOVE                             R24 R21
      174 CALL                             R23 1 -1
      175 CALL                             R22 -1 -1
      176 RETURN                           R22 -1
