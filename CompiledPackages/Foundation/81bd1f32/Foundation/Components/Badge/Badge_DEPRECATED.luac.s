PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["icon"]
        3 FASTCALL1                        TYPEOF R1 ; [+2]
        4 GETIMPORT                        R0 K2 [typeof]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["string"] ; [+13]
        9 DUPTABLE                         R0 K6 [{"name", "position"}]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["icon"]
       13 SETTABLEKS                       R1 R0 K4 ["name"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K7 ["Left"]
       18 SETTABLEKS                       R1 R0 K5 ["position"]
       20 RETURN                           R0 1
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R0 R1 K0 ["icon"]
       24 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["useMemo"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U4
       12 NEWTABLE                         R6 0 1
       14 GETTABLEKS                       R7 R2 K1 ["icon"]
       16 SETLIST                          R6 R7 1 [1]
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 LOADB                            R6 0
       24 GETTABLEKS                       R7 R2 K2 ["text"]
       26 JUMPIFEQKNIL                     R7 ; [+9]
       28 GETTABLEKS                       R8 R2 K2 ["text"]
       30 LENGTH                           R7 R8
       31 LOADN                            R8 0
       32 JUMPIFLT                         R8 R7 ; [+2]
       34 LOADB                            R6 0 +1
       35 LOADB                            R6 1
       36 GETUPVAL                         R7 5
       37 GETTABLEKS                       R8 R2 K3 ["variant"]
       39 GETTABLEKS                       R9 R2 K4 ["size"]
       41 MOVE                             R10 R5
       42 MOVE                             R11 R6
       43 CALL                             R7 4 5
       44 GETUPVAL                         R13 3
       45 GETTABLEKS                       R12 R13 K5 ["createElement"]
       47 GETUPVAL                         R13 6
       48 GETUPVAL                         R14 7
       49 MOVE                             R15 R2
       50 DUPTABLE                         R16 K12 [{"GroupTransparency", "backgroundStyle", "stroke", "sizeConstraint", "tag", "ref"}]
       51 GETTABLEKS                       R18 R2 K13 ["isDisabled"]
       53 JUMPIFNOT                        R18 ; [+2]
       54 LOADK                            R17 K14 [0.5]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R17
       57 SETTABLEKS                       R17 R16 K6 ["GroupTransparency"]
       59 GETTABLEKS                       R17 R7 K7 ["backgroundStyle"]
       61 SETTABLEKS                       R17 R16 K7 ["backgroundStyle"]
       63 DUPTABLE                         R17 K17 [{"Color", "Transparency"}]
       64 GETTABLEKS                       R21 R3 K15 ["Color"]
       66 GETTABLEKS                       R20 R21 K18 ["Surface"]
       68 GETTABLEKS                       R19 R20 K19 ["Surface_100"]
       70 GETTABLEKS                       R18 R19 K20 ["Color3"]
       72 SETTABLEKS                       R18 R17 K15 ["Color"]
       74 GETTABLEKS                       R21 R3 K15 ["Color"]
       76 GETTABLEKS                       R20 R21 K18 ["Surface"]
       78 GETTABLEKS                       R19 R20 K19 ["Surface_100"]
       80 GETTABLEKS                       R18 R19 K16 ["Transparency"]
       82 SETTABLEKS                       R18 R17 K16 ["Transparency"]
       84 SETTABLEKS                       R17 R16 K8 ["stroke"]
       86 SETTABLEKS                       R8 R16 K9 ["sizeConstraint"]
       88 SETTABLEKS                       R10 R16 K10 ["tag"]
       90 SETTABLEKS                       R1 R16 K11 ["ref"]
       92 CALL                             R14 2 1
       93 DUPTABLE                         R15 K23 [{"Icon", "Text"}]
       94 JUMPIFEQKNIL                     R4 ; [+42]
       96 GETUPVAL                         R17 3
       97 GETTABLEKS                       R16 R17 K5 ["createElement"]
       99 GETUPVAL                         R17 8
      100 DUPTABLE                         R18 K28 [{"name", "size", "style", "LayoutOrder", "testId"}]
      101 GETTABLEKS                       R19 R4 K24 ["name"]
      103 SETTABLEKS                       R19 R18 K24 ["name"]
      105 GETUPVAL                         R20 9
      106 GETTABLEKS                       R19 R20 K29 ["Small"]
      108 SETTABLEKS                       R19 R18 K4 ["size"]
      110 GETTABLEKS                       R19 R7 K30 ["contentStyle"]
      112 SETTABLEKS                       R19 R18 K25 ["style"]
      114 GETTABLEKS                       R20 R4 K31 ["position"]
      116 GETUPVAL                         R22 4
      117 GETTABLEKS                       R21 R22 K32 ["Left"]
      119 JUMPIFNOTEQ                      R20 R21 ; [+3]
      121 LOADN                            R19 1
      122 JUMP                             ; [+1]
      123 LOADN                            R19 3
      124 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      126 LOADK                            R20 K33 ["%*--icon"]
      127 GETTABLEKS                       R22 R2 K27 ["testId"]
      129 NAMECALL                         R20 R20 K34 ["format"]
      131 CALL                             R20 2 1
      132 MOVE                             R19 R20
      133 SETTABLEKS                       R19 R18 K27 ["testId"]
      135 CALL                             R16 2 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R16
      138 SETTABLEKS                       R16 R15 K21 ["Icon"]
      140 JUMPIFNOT                        R6 ; [+40]
      141 GETUPVAL                         R17 3
      142 GETTABLEKS                       R16 R17 K5 ["createElement"]
      144 GETUPVAL                         R17 10
      145 DUPTABLE                         R18 K38 [{"Text", "textStyle", "fontStyle", "RichText", "LayoutOrder", "sizeConstraint", "tag", "testId"}]
      146 GETTABLEKS                       R19 R2 K2 ["text"]
      148 SETTABLEKS                       R19 R18 K22 ["Text"]
      150 GETTABLEKS                       R19 R7 K30 ["contentStyle"]
      152 SETTABLEKS                       R19 R18 K35 ["textStyle"]
      154 DUPTABLE                         R19 K40 [{"LineHeight"}]
      155 LOADN                            R20 1
      156 SETTABLEKS                       R20 R19 K39 ["LineHeight"]
      158 SETTABLEKS                       R19 R18 K36 ["fontStyle"]
      160 LOADB                            R19 1
      161 SETTABLEKS                       R19 R18 K37 ["RichText"]
      163 LOADN                            R19 2
      164 SETTABLEKS                       R19 R18 K26 ["LayoutOrder"]
      166 SETTABLEKS                       R9 R18 K9 ["sizeConstraint"]
      168 SETTABLEKS                       R11 R18 K10 ["tag"]
      170 LOADK                            R20 K41 ["%*--text"]
      171 GETTABLEKS                       R22 R2 K27 ["testId"]
      173 NAMECALL                         R20 R20 K34 ["format"]
      175 CALL                             R20 2 1
      176 MOVE                             R19 R20
      177 SETTABLEKS                       R19 R18 K27 ["testId"]
      179 CALL                             R16 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R16
      182 SETTABLEKS                       R16 R15 K22 ["Text"]
      184 CALL                             R12 3 -1
      185 RETURN                           R12 -1

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
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Icon"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["Types"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R9 K13 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETIMPORT                        R11 K1 [script]
       51 GETTABLEKS                       R10 R11 K4 ["Parent"]
       53 GETTABLEKS                       R9 R10 K14 ["useBadgeVariants_DEPRECATED"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R12 R0 K15 ["Providers"]
       60 GETTABLEKS                       R11 R12 K16 ["Style"]
       62 GETTABLEKS                       R10 R11 K17 ["useTokens"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R12 R0 K18 ["Utility"]
       69 GETTABLEKS                       R11 R12 K19 ["withCommonProps"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R13 R0 K18 ["Utility"]
       76 GETTABLEKS                       R12 R13 K20 ["withDefaults"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K6 [require]
       81 GETTABLEKS                       R14 R0 K21 ["Enums"]
       83 GETTABLEKS                       R13 R14 K22 ["BadgeVariant"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R15 R0 K21 ["Enums"]
       90 GETTABLEKS                       R14 R15 K23 ["BadgeSize"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K6 [require]
       95 GETTABLEKS                       R16 R0 K21 ["Enums"]
       97 GETTABLEKS                       R15 R16 K24 ["IconPosition"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K6 [require]
      102 GETTABLEKS                       R17 R0 K21 ["Enums"]
      104 GETTABLEKS                       R16 R17 K25 ["IconSize"]
      106 CALL                             R15 1 1
      107 DUPTABLE                         R16 K29 [{"variant", "size", "testId"}]
      108 GETTABLEKS                       R17 R12 K30 ["Primary"]
      110 SETTABLEKS                       R17 R16 K26 ["variant"]
      112 GETTABLEKS                       R17 R13 K31 ["Medium"]
      114 SETTABLEKS                       R17 R16 K27 ["size"]
      116 LOADK                            R17 K32 ["--foundation-badge"]
      117 SETTABLEKS                       R17 R16 K28 ["testId"]
      119 DUPCLOSURE                       R17 K33 [PROTO_1]
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R5
      131 GETTABLEKS                       R18 R2 K34 ["memo"]
      133 GETTABLEKS                       R19 R2 K35 ["forwardRef"]
      135 MOVE                             R20 R17
      136 CALL                             R19 1 -1
      137 CALL                             R18 -1 -1
      138 RETURN                           R18 -1
