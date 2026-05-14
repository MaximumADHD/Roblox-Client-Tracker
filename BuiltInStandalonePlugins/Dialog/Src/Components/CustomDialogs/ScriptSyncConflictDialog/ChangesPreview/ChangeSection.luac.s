PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ease"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["isExpanded"]
        7 JUMPIFNOT                        R3 ; [+2]
        8 LOADN                            R2 76
        9 JUMP                             ; [+1]
       10 LOADN                            R2 0
       11 DUPTABLE                         R3 K4 [{"duration", "easingStyle"}]
       12 LOADK                            R4 K5 [0.15]
       13 SETTABLEKS                       R4 R3 K2 ["duration"]
       15 GETIMPORT                        R4 K9 [Enum.EasingStyle.Quad]
       17 SETTABLEKS                       R4 R3 K3 ["easingStyle"]
       19 CALL                             R1 2 -1
       20 CALL                             R0 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["isExpanded"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ease"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["isExpanded"]
        7 JUMPIFNOT                        R3 ; [+2]
        8 GETUPVAL                         R2 3
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R2 4
       11 GETTABLEKS                       R2 R2 K2 ["TITLE_HEIGHT"]
       13 DUPTABLE                         R3 K5 [{"duration", "easingStyle"}]
       14 LOADK                            R4 K6 [0.15]
       15 SETTABLEKS                       R4 R3 K3 ["duration"]
       17 GETIMPORT                        R4 K10 [Enum.EasingStyle.Quad]
       19 SETTABLEKS                       R4 R3 K4 ["easingStyle"]
       21 CALL                             R1 2 -1
       22 CALL                             R0 -1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["count"]
        2 JUMPIFNOTEQKN                    R1 K1 [0] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["Hooks"]
       11 GETTABLEKS                       R2 R2 K3 ["useTokens"]
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["useAnimatedBinding"]
       17 GETTABLEKS                       R5 R0 K5 ["isExpanded"]
       19 JUMPIFNOT                        R5 ; [+2]
       20 LOADN                            R4 180
       21 JUMP                             ; [+1]
       22 LOADN                            R4 0
       23 CALL                             R3 1 2
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R7 0 1
       33 GETTABLEKS                       R8 R0 K5 ["isExpanded"]
       35 SETLIST                          R7 R8 1 [1]
       37 CALL                             R5 2 0
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R7 0 3
       45 GETTABLEKS                       R8 R0 K8 ["onActivated"]
       47 GETTABLEKS                       R9 R0 K5 ["isExpanded"]
       49 GETTABLEKS                       R10 R0 K9 ["id"]
       51 SETLIST                          R7 R8 3 [1]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K10 ["TITLE_CONTENT_GAP"]
       57 GETUPVAL                         R9 4
       58 GETTABLEKS                       R9 R9 K11 ["TITLE_HEIGHT"]
       60 ADD                              R7 R8 R9
       61 GETTABLEKS                       R10 R0 K0 ["count"]
       63 GETUPVAL                         R11 4
       64 GETTABLEKS                       R11 R11 K12 ["ITEM_HEIGHT"]
       66 MUL                              R9 R10 R11
       67 GETUPVAL                         R11 4
       68 GETTABLEKS                       R11 R11 K12 ["ITEM_HEIGHT"]
       70 GETUPVAL                         R12 4
       71 GETTABLEKS                       R12 R12 K13 ["MAX_VISIBLE_ITEMS"]
       73 MUL                              R10 R11 R12
       74 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       76 GETIMPORT                        R8 K16 [math.min]
       78 CALL                             R8 2 1
       79 ADD                              R6 R7 R8
       80 GETUPVAL                         R7 2
       81 GETTABLEKS                       R7 R7 K4 ["useAnimatedBinding"]
       83 GETTABLEKS                       R9 R0 K5 ["isExpanded"]
       85 JUMPIFNOT                        R9 ; [+2]
       86 MOVE                             R8 R6
       87 JUMP                             ; [+3]
       88 GETUPVAL                         R8 4
       89 GETTABLEKS                       R8 R8 K11 ["TITLE_HEIGHT"]
       91 CALL                             R7 1 2
       92 GETUPVAL                         R9 3
       93 GETTABLEKS                       R9 R9 K6 ["useEffect"]
       95 NEWCLOSURE                       R10 P2
       96 CAPTURE                          VAL R8
       97 CAPTURE                          UPVAL U2
       98 CAPTURE                          VAL R0
       99 CAPTURE                          VAL R6
      100 CAPTURE                          UPVAL U4
      101 NEWTABLE                         R11 0 2
      103 GETTABLEKS                       R12 R0 K5 ["isExpanded"]
      105 GETTABLEKS                       R13 R0 K0 ["count"]
      107 SETLIST                          R11 R12 2 [1]
      109 CALL                             R9 2 0
      110 GETUPVAL                         R9 5
      111 GETUPVAL                         R10 1
      112 GETTABLEKS                       R10 R10 K17 ["View"]
      114 DUPTABLE                         R11 K21 [{"tag", "LayoutOrder", "Size"}]
      115 LOADK                            R12 K22 ["col gap-xsmall clip auto-none"]
      116 SETTABLEKS                       R12 R11 K18 ["tag"]
      118 GETTABLEKS                       R12 R0 K23 ["layoutOrder"]
      120 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
      122 DUPCLOSURE                       R14 K24 [PROTO_3]
      123 NAMECALL                         R12 R7 K25 ["map"]
      125 CALL                             R12 2 1
      126 SETTABLEKS                       R12 R11 K20 ["Size"]
      128 DUPTABLE                         R12 K28 [{"Header", "Content"}]
      129 GETUPVAL                         R13 5
      130 GETUPVAL                         R14 1
      131 GETTABLEKS                       R14 R14 K17 ["View"]
      133 DUPTABLE                         R15 K29 [{"tag", "onActivated", "LayoutOrder"}]
      134 LOADK                            R16 K30 ["row size-full-600 radius-small gap-small align-x-left align-y-center"]
      135 SETTABLEKS                       R16 R15 K18 ["tag"]
      137 SETTABLEKS                       R5 R15 K8 ["onActivated"]
      139 MOVE                             R16 R1
      140 CALL                             R16 0 1
      141 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      143 DUPTABLE                         R16 K33 [{"CollapseIcon", "Title"}]
      144 GETTABLEKS                       R18 R0 K34 ["isLocked"]
      146 JUMPIF                           R18 ; [+37]
      147 GETUPVAL                         R17 5
      148 GETUPVAL                         R18 1
      149 GETTABLEKS                       R18 R18 K17 ["View"]
      151 DUPTABLE                         R19 K35 [{"tag", "LayoutOrder"}]
      152 LOADK                            R20 K36 ["auto-xy padding-left-xsmall"]
      153 SETTABLEKS                       R20 R19 K18 ["tag"]
      155 MOVE                             R20 R1
      156 CALL                             R20 0 1
      157 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      159 DUPTABLE                         R20 K38 [{"Icon"}]
      160 GETUPVAL                         R21 5
      161 GETUPVAL                         R22 1
      162 GETTABLEKS                       R22 R22 K37 ["Icon"]
      164 DUPTABLE                         R23 K42 [{"name", "Rotation", "size"}]
      165 LOADK                            R24 K43 ["chevron-large-down"]
      166 SETTABLEKS                       R24 R23 K39 ["name"]
      168 SETTABLEKS                       R3 R23 K40 ["Rotation"]
      170 GETUPVAL                         R24 1
      171 GETTABLEKS                       R24 R24 K44 ["Enums"]
      173 GETTABLEKS                       R24 R24 K45 ["IconSize"]
      175 GETTABLEKS                       R24 R24 K46 ["XSmall"]
      177 SETTABLEKS                       R24 R23 K41 ["size"]
      179 CALL                             R21 2 1
      180 SETTABLEKS                       R21 R20 K37 ["Icon"]
      182 CALL                             R17 3 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R17
      185 SETTABLEKS                       R17 R16 K31 ["CollapseIcon"]
      187 GETUPVAL                         R17 5
      188 GETUPVAL                         R18 1
      189 GETTABLEKS                       R18 R18 K47 ["Text"]
      191 DUPTABLE                         R19 K49 [{"LayoutOrder", "tag", "textStyle", "Text"}]
      192 MOVE                             R20 R1
      193 CALL                             R20 0 1
      194 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      196 LOADK                            R20 K50 ["text-title-medium text-align-x-left size-full-600 text-no-wrap text-truncate-end"]
      197 SETTABLEKS                       R20 R19 K18 ["tag"]
      199 GETTABLEKS                       R21 R0 K9 ["id"]
      201 JUMPIFNOTEQKS                    R21 K51 ["Delete"] ; [+10]
      203 GETTABLEKS                       R20 R2 K52 ["Color"]
      205 GETTABLEKS                       R20 R20 K53 ["Extended"]
      207 GETTABLEKS                       R20 R20 K54 ["Red"]
      209 GETTABLEKS                       R20 R20 K55 ["Red_600"]
      211 JUMP                             ; [+1]
      212 LOADNIL                          R20
      213 SETTABLEKS                       R20 R19 K48 ["textStyle"]
      215 GETTABLEKS                       R20 R0 K56 ["titleText"]
      217 SETTABLEKS                       R20 R19 K47 ["Text"]
      219 CALL                             R17 2 1
      220 SETTABLEKS                       R17 R16 K32 ["Title"]
      222 CALL                             R13 3 1
      223 SETTABLEKS                       R13 R12 K26 ["Header"]
      225 GETUPVAL                         R13 5
      226 GETUPVAL                         R14 1
      227 GETTABLEKS                       R14 R14 K17 ["View"]
      229 DUPTABLE                         R15 K35 [{"tag", "LayoutOrder"}]
      230 LOADK                            R16 K57 ["size-full-0 auto-y"]
      231 SETTABLEKS                       R16 R15 K18 ["tag"]
      233 MOVE                             R16 R1
      234 CALL                             R16 0 1
      235 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
      237 GETTABLEKS                       R16 R0 K58 ["children"]
      239 CALL                             R13 3 1
      240 SETTABLEKS                       R13 R12 K27 ["Content"]
      242 CALL                             R9 3 -1
      243 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R4 K10 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Packages"]
       34 GETTABLEKS                       R5 R5 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Packages"]
       41 GETTABLEKS                       R6 R6 K12 ["ReactOtter"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K13 ["Util"]
       46 GETTABLEKS                       R6 R6 K14 ["counter"]
       48 GETTABLEKS                       R7 R4 K15 ["createElement"]
       50 DUPCLOSURE                       R8 K16 [PROTO_4]
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R7
       57 GETTABLEKS                       R9 R4 K17 ["memo"]
       59 MOVE                             R10 R8
       60 CALL                             R9 1 -1
       61 RETURN                           R9 -1
