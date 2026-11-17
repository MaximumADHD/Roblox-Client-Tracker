PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["Disabled"]
        3 JUMPIFNOT                        R3 ; [+7]
        4 GETTABLEKS                       R3 R0 K1 ["Children"]
        6 JUMPIFNOT                        R3 ; [+2]
        7 LOADK                            R2 K2 ["State-ActionDisabled"]
        8 JUMP                             ; [+3]
        9 LOADK                            R2 K3 ["State-Disabled"]
       10 JUMP                             ; [+1]
       11 LOADK                            R2 K4 ["State-Default"]
       12 GETTABLEKS                       R4 R0 K5 ["Checkable"]
       14 JUMPIFNOT                        R4 ; [+5]
       15 GETTABLEKS                       R4 R0 K6 ["Checked"]
       17 JUMPIFNOT                        R4 ; [+2]
       18 LOADK                            R3 K7 ["State-Checked"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R3
       21 GETTABLEKS                       R5 R0 K8 ["Selected"]
       23 JUMPIFNOT                        R5 ; [+2]
       24 LOADK                            R4 K9 ["State-Selected"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R4
       27 CALL                             R1 3 1
       28 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 DUPTABLE                         R3 K1 [{"Type"}]
        3 GETTABLEKS                       R5 R0 K0 ["Type"]
        5 JUMPIFEQKS                       R5 K2 ["IconButton"] ; [+5]
        7 GETTABLEKS                       R5 R0 K0 ["Type"]
        9 JUMPIFNOTEQKS                    R5 K3 ["SplitButton"] ; [+3]
       11 LOADK                            R4 K4 ["Option"]
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R4 R0 K0 ["Type"]
       15 SETTABLEKS                       R4 R3 K0 ["Type"]
       17 CALL                             R1 2 -1
       18 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Children"]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K4 [{["Type"] = "Column", [2]}]
        8 SETTABLEKS                       R0 R1 K0 ["Children"]
       10 GETUPVAL                         R2 3
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R1
       14 SETLIST                          R3 R4 1 [1]
       16 GETUPVAL                         R4 4
       17 DUPTABLE                         R5 K8 [{"TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R7 R7 K9 ["menuOnLeft"]
       21 JUMPIFNOT                        R7 ; [+6]
       22 GETIMPORT                        R6 K12 [Vector2.new]
       24 LOADN                            R7 0
       25 LOADN                            R8 0
       26 CALL                             R6 2 1
       27 JUMP                             ; [+5]
       28 GETIMPORT                        R6 K12 [Vector2.new]
       30 LOADN                            R7 1
       31 LOADN                            R8 0
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K5 ["TargetAnchorPoint"]
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R7 R7 K9 ["menuOnLeft"]
       38 JUMPIFNOT                        R7 ; [+6]
       39 GETIMPORT                        R6 K12 [Vector2.new]
       41 LOADN                            R7 1
       42 LOADN                            R8 0
       43 CALL                             R6 2 1
       44 JUMP                             ; [+5]
       45 GETIMPORT                        R6 K12 [Vector2.new]
       47 LOADN                            R7 0
       48 LOADN                            R8 0
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K6 ["SubjectAnchorPoint"]
       52 GETUPVAL                         R6 6
       53 SETTABLEKS                       R6 R5 K7 ["Offset"]
       55 CALL                             R2 3 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Disabled"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["OnSelect"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["depth"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getPathForIcon"]
        3 GETTABLEKS                       R2 R0 K1 ["Icon"]
        5 GETTABLEKS                       R4 R0 K2 ["Size"]
        7 JUMPIFNOTEQKS                    R4 K3 ["Small"] ; [+4]
        9 GETTABLEKS                       R3 R0 K2 ["Size"]
       11 JUMP                             ; [+1]
       12 LOADK                            R3 K4 ["Large"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R3 R0 K5 ["MenuView"]
       17 CALL                             R2 1 3
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K6 ["child"]
       21 GETTABLEKS                       R6 R0 K7 ["WidgetUri"]
       23 GETTABLEKS                       R7 R0 K8 ["Id"]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 3
       27 MOVE                             R7 R5
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R8 R0 K2 ["Size"]
       31 JUMPIFNOTEQKS                    R8 K4 ["Large"] ; [+3]
       33 LOADN                            R7 10
       34 JUMP                             ; [+1]
       35 LOADN                            R7 8
       36 GETTABLEKS                       R9 R4 K9 ["menuOnLeft"]
       38 JUMPIFNOT                        R9 ; [+6]
       39 GETIMPORT                        R8 K12 [Vector2.new]
       41 MINUS                            R9 R7
       42 LOADN                            R10 0
       43 CALL                             R8 2 1
       44 JUMP                             ; [+5]
       45 GETIMPORT                        R8 K12 [Vector2.new]
       47 MOVE                             R9 R7
       48 LOADN                            R10 0
       49 CALL                             R8 2 1
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R8
       58 GETUPVAL                         R10 6
       59 GETTABLEKS                       R10 R10 K13 ["createElement"]
       61 LOADK                            R11 K14 ["TextButton"]
       62 NEWTABLE                         R12 8 0
       64 GETTABLEKS                       R13 R0 K15 ["LayoutOrder"]
       66 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
       68 SETTABLEKS                       R6 R12 K16 ["ref"]
       70 GETTABLEKS                       R14 R0 K17 ["Visible"]
       72 JUMPIFEQKNIL                     R14 ; [+4]
       74 GETTABLEKS                       R13 R0 K17 ["Visible"]
       76 JUMP                             ; [+1]
       77 LOADB                            R13 1
       78 SETTABLEKS                       R13 R12 K17 ["Visible"]
       80 GETUPVAL                         R13 6
       81 GETTABLEKS                       R13 R13 K18 ["Event"]
       83 GETTABLEKS                       R13 R13 K19 ["Activated"]
       85 NEWCLOSURE                       R14 P1
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R5
       88 SETTABLE                         R14 R12 R13
       89 GETUPVAL                         R13 6
       90 GETTABLEKS                       R13 R13 K18 ["Event"]
       92 GETTABLEKS                       R13 R13 K20 ["MouseEnter"]
       94 GETTABLEKS                       R15 R0 K21 ["Children"]
       96 JUMPIFNOT                        R15 ; [+2]
       97 MOVE                             R14 R9
       98 JUMP                             ; [+3]
       99 NEWCLOSURE                       R14 P2
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R4
      102 SETTABLE                         R14 R12 R13
      103 GETUPVAL                         R13 6
      104 GETTABLEKS                       R13 R13 K22 ["Tag"]
      106 GETUPVAL                         R14 7
      107 LOADK                            R15 K23 ["Component-MenuItem X-FitY"]
      108 GETUPVAL                         R16 7
      109 GETTABLEKS                       R18 R0 K24 ["Disabled"]
      111 JUMPIFNOT                        R18 ; [+7]
      112 GETTABLEKS                       R18 R0 K21 ["Children"]
      114 JUMPIFNOT                        R18 ; [+2]
      115 LOADK                            R17 K25 ["State-ActionDisabled"]
      116 JUMP                             ; [+3]
      117 LOADK                            R17 K26 ["State-Disabled"]
      118 JUMP                             ; [+1]
      119 LOADK                            R17 K27 ["State-Default"]
      120 GETTABLEKS                       R19 R0 K28 ["Checkable"]
      122 JUMPIFNOT                        R19 ; [+5]
      123 GETTABLEKS                       R19 R0 K29 ["Checked"]
      125 JUMPIFNOT                        R19 ; [+2]
      126 LOADK                            R18 K30 ["State-Checked"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R18
      129 GETTABLEKS                       R20 R0 K31 ["Selected"]
      131 JUMPIFNOT                        R20 ; [+2]
      132 LOADK                            R19 K32 ["State-Selected"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R19
      135 CALL                             R16 3 1
      136 GETTABLEKS                       R18 R0 K2 ["Size"]
      138 JUMPIFNOTEQKS                    R18 K3 ["Small"] ; [+4]
      140 GETTABLEKS                       R17 R0 K2 ["Size"]
      142 JUMP                             ; [+1]
      143 LOADNIL                          R17
      144 GETTABLEKS                       R19 R0 K7 ["WidgetUri"]
      146 JUMPIFNOT                        R19 ; [+9]
      147 LOADK                            R18 K33 ["data-testid=%*"]
      148 GETUPVAL                         R20 8
      149 GETTABLEKS                       R21 R0 K7 ["WidgetUri"]
      151 CALL                             R20 1 1
      152 NAMECALL                         R18 R18 K34 ["format"]
      154 CALL                             R18 2 1
      155 JUMP                             ; [+1]
      156 LOADNIL                          R18
      157 CALL                             R14 4 1
      158 SETTABLE                         R14 R12 R13
      159 DUPTABLE                         R13 K37 [{"Row", "Arrow"}]
      160 GETUPVAL                         R14 6
      161 GETTABLEKS                       R14 R14 K13 ["createElement"]
      163 LOADK                            R15 K38 ["Frame"]
      164 NEWTABLE                         R16 1 0
      166 GETUPVAL                         R17 6
      167 GETTABLEKS                       R17 R17 K22 ["Tag"]
      169 LOADK                            R18 K39 ["Role-Surface X-Middle X-Fit"]
      170 SETTABLE                         R18 R16 R17
      171 DUPTABLE                         R17 K45 [{"Check", "CheckSpace", "Image", "Text", "ArrowSpace"}]
      172 GETTABLEKS                       R19 R0 K46 ["ReserveCheckmarkSpace"]
      174 JUMPIFNOT                        R19 ; [+9]
      175 GETTABLEKS                       R19 R0 K28 ["Checkable"]
      177 JUMPIFNOT                        R19 ; [+6]
      178 GETUPVAL                         R18 6
      179 GETTABLEKS                       R18 R18 K13 ["createElement"]
      181 LOADK                            R19 K47 ["ImageLabel"]
      182 CALL                             R18 1 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R18
      185 SETTABLEKS                       R18 R17 K40 ["Check"]
      187 GETTABLEKS                       R19 R0 K46 ["ReserveCheckmarkSpace"]
      189 JUMPIFNOT                        R19 ; [+16]
      190 GETTABLEKS                       R19 R0 K28 ["Checkable"]
      192 JUMPIF                           R19 ; [+13]
      193 GETUPVAL                         R18 6
      194 GETTABLEKS                       R18 R18 K13 ["createElement"]
      196 LOADK                            R19 K38 ["Frame"]
      197 NEWTABLE                         R20 1 0
      199 GETUPVAL                         R21 6
      200 GETTABLEKS                       R21 R21 K22 ["Tag"]
      202 LOADK                            R22 K48 ["Role-Surface X-Fit"]
      203 SETTABLE                         R22 R20 R21
      204 CALL                             R18 2 1
      205 JUMP                             ; [+1]
      206 LOADNIL                          R18
      207 SETTABLEKS                       R18 R17 K41 ["CheckSpace"]
      209 JUMPIFNOT                        R1 ; [+9]
      210 GETUPVAL                         R18 6
      211 GETTABLEKS                       R18 R18 K13 ["createElement"]
      213 LOADK                            R19 K47 ["ImageLabel"]
      214 DUPTABLE                         R20 K49 [{"Image"}]
      215 SETTABLEKS                       R1 R20 K42 ["Image"]
      217 CALL                             R18 2 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R18
      220 SETTABLEKS                       R18 R17 K42 ["Image"]
      222 GETUPVAL                         R18 6
      223 GETTABLEKS                       R18 R18 K13 ["createElement"]
      225 LOADK                            R19 K50 ["TextLabel"]
      226 NEWTABLE                         R20 2 0
      228 GETTABLEKS                       R22 R0 K43 ["Text"]
      230 ORK                              R21 R22 K51 [""]
      231 SETTABLEKS                       R21 R20 K43 ["Text"]
      233 GETUPVAL                         R21 6
      234 GETTABLEKS                       R21 R21 K22 ["Tag"]
      236 LOADK                            R22 K52 ["X-Fit"]
      237 SETTABLE                         R22 R20 R21
      238 CALL                             R18 2 1
      239 SETTABLEKS                       R18 R17 K43 ["Text"]
      241 GETTABLEKS                       R19 R0 K21 ["Children"]
      243 JUMPIFNOT                        R19 ; [+13]
      244 GETUPVAL                         R18 6
      245 GETTABLEKS                       R18 R18 K13 ["createElement"]
      247 LOADK                            R19 K38 ["Frame"]
      248 NEWTABLE                         R20 1 0
      250 GETUPVAL                         R21 6
      251 GETTABLEKS                       R21 R21 K22 ["Tag"]
      253 LOADK                            R22 K48 ["Role-Surface X-Fit"]
      254 SETTABLE                         R22 R20 R21
      255 CALL                             R18 2 1
      256 JUMP                             ; [+1]
      257 LOADNIL                          R18
      258 SETTABLEKS                       R18 R17 K44 ["ArrowSpace"]
      260 CALL                             R14 3 1
      261 SETTABLEKS                       R14 R13 K35 ["Row"]
      263 GETTABLEKS                       R15 R0 K21 ["Children"]
      265 JUMPIFNOT                        R15 ; [+6]
      266 GETUPVAL                         R14 6
      267 GETTABLEKS                       R14 R14 K13 ["createElement"]
      269 LOADK                            R15 K47 ["ImageLabel"]
      270 CALL                             R14 1 1
      271 JUMP                             ; [+1]
      272 LOADNIL                          R14
      273 SETTABLEKS                       R14 R13 K36 ["Arrow"]
      275 CALL                             R10 3 -1
      276 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["IconHelper"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["Util"]
       39 GETTABLEKS                       R5 R5 K13 ["StudioUri"]
       41 GETTABLEKS                       R6 R4 K14 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K15 ["useWidgetRef"]
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Src"]
       49 GETTABLEKS                       R8 R8 K10 ["Util"]
       51 GETTABLEKS                       R8 R8 K16 ["uriToTestId"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Packages"]
       58 GETTABLEKS                       R9 R9 K17 ["Dash"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R8 K18 ["join"]
       63 GETTABLEKS                       R10 R8 K19 ["map"]
       65 GETIMPORT                        R11 K5 [require]
       67 GETTABLEKS                       R12 R0 K6 ["Packages"]
       69 GETTABLEKS                       R12 R12 K20 ["Framework"]
       71 CALL                             R11 1 1
       72 GETTABLEKS                       R12 R11 K21 ["Styling"]
       74 GETTABLEKS                       R13 R12 K22 ["joinTags"]
       76 GETIMPORT                        R14 K5 [require]
       78 GETTABLEKS                       R15 R0 K8 ["Src"]
       80 GETTABLEKS                       R15 R15 K14 ["Hooks"]
       82 GETTABLEKS                       R15 R15 K23 ["useMenu"]
       84 CALL                             R14 1 1
       85 DUPCLOSURE                       R15 K24 [PROTO_0]
       86 CAPTURE                          VAL R13
       87 DUPCLOSURE                       R16 K25 [PROTO_5]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R7
       97 RETURN                           R16 1
