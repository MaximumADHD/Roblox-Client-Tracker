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
        7 DUPTABLE                         R1 K3 [{"Type", "Children"}]
        8 LOADK                            R2 K4 ["Column"]
        9 SETTABLEKS                       R2 R1 K2 ["Type"]
       11 SETTABLEKS                       R0 R1 K0 ["Children"]
       13 GETUPVAL                         R2 3
       14 NEWTABLE                         R3 0 1
       16 MOVE                             R4 R1
       17 SETLIST                          R3 R4 1 [1]
       19 GETUPVAL                         R4 4
       20 DUPTABLE                         R5 K8 [{"TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       21 GETUPVAL                         R7 5
       22 GETTABLEKS                       R7 R7 K9 ["menuOnLeft"]
       24 JUMPIFNOT                        R7 ; [+6]
       25 GETIMPORT                        R6 K12 [Vector2.new]
       27 LOADN                            R7 0
       28 LOADN                            R8 0
       29 CALL                             R6 2 1
       30 JUMP                             ; [+5]
       31 GETIMPORT                        R6 K12 [Vector2.new]
       33 LOADN                            R7 1
       34 LOADN                            R8 0
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K5 ["TargetAnchorPoint"]
       38 GETUPVAL                         R7 5
       39 GETTABLEKS                       R7 R7 K9 ["menuOnLeft"]
       41 JUMPIFNOT                        R7 ; [+6]
       42 GETIMPORT                        R6 K12 [Vector2.new]
       44 LOADN                            R7 1
       45 LOADN                            R8 0
       46 CALL                             R6 2 1
       47 JUMP                             ; [+5]
       48 GETIMPORT                        R6 K12 [Vector2.new]
       50 LOADN                            R7 0
       51 LOADN                            R8 0
       52 CALL                             R6 2 1
       53 SETTABLEKS                       R6 R5 K6 ["SubjectAnchorPoint"]
       55 GETUPVAL                         R6 6
       56 SETTABLEKS                       R6 R5 K7 ["Offset"]
       58 CALL                             R2 3 0
       59 RETURN                           R0 0

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
      108 GETUPVAL                         R17 7
      109 GETTABLEKS                       R19 R0 K24 ["Disabled"]
      111 JUMPIFNOT                        R19 ; [+7]
      112 GETTABLEKS                       R19 R0 K21 ["Children"]
      114 JUMPIFNOT                        R19 ; [+2]
      115 LOADK                            R18 K25 ["State-ActionDisabled"]
      116 JUMP                             ; [+3]
      117 LOADK                            R18 K26 ["State-Disabled"]
      118 JUMP                             ; [+1]
      119 LOADK                            R18 K27 ["State-Default"]
      120 GETTABLEKS                       R20 R0 K28 ["Checkable"]
      122 JUMPIFNOT                        R20 ; [+5]
      123 GETTABLEKS                       R20 R0 K29 ["Checked"]
      125 JUMPIFNOT                        R20 ; [+2]
      126 LOADK                            R19 K30 ["State-Checked"]
      127 JUMP                             ; [+1]
      128 LOADNIL                          R19
      129 GETTABLEKS                       R21 R0 K31 ["Selected"]
      131 JUMPIFNOT                        R21 ; [+2]
      132 LOADK                            R20 K32 ["State-Selected"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R20
      135 CALL                             R17 3 1
      136 MOVE                             R16 R17
      137 GETTABLEKS                       R18 R0 K2 ["Size"]
      139 JUMPIFNOTEQKS                    R18 K3 ["Small"] ; [+4]
      141 GETTABLEKS                       R17 R0 K2 ["Size"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R17
      145 GETTABLEKS                       R19 R0 K7 ["WidgetUri"]
      147 JUMPIFNOT                        R19 ; [+10]
      148 LOADK                            R19 K33 ["data-testid=%*"]
      149 GETUPVAL                         R21 8
      150 GETTABLEKS                       R22 R0 K7 ["WidgetUri"]
      152 CALL                             R21 1 1
      153 NAMECALL                         R19 R19 K34 ["format"]
      155 CALL                             R19 2 1
      156 MOVE                             R18 R19
      157 JUMP                             ; [+1]
      158 LOADNIL                          R18
      159 CALL                             R14 4 1
      160 SETTABLE                         R14 R12 R13
      161 DUPTABLE                         R13 K37 [{"Row", "Arrow"}]
      162 GETUPVAL                         R14 6
      163 GETTABLEKS                       R14 R14 K13 ["createElement"]
      165 LOADK                            R15 K38 ["Frame"]
      166 NEWTABLE                         R16 1 0
      168 GETUPVAL                         R17 6
      169 GETTABLEKS                       R17 R17 K22 ["Tag"]
      171 LOADK                            R18 K39 ["Role-Surface X-Middle X-Fit"]
      172 SETTABLE                         R18 R16 R17
      173 DUPTABLE                         R17 K45 [{"Check", "CheckSpace", "Image", "Text", "ArrowSpace"}]
      174 GETTABLEKS                       R19 R0 K46 ["ReserveCheckmarkSpace"]
      176 JUMPIFNOT                        R19 ; [+9]
      177 GETTABLEKS                       R19 R0 K28 ["Checkable"]
      179 JUMPIFNOT                        R19 ; [+6]
      180 GETUPVAL                         R18 6
      181 GETTABLEKS                       R18 R18 K13 ["createElement"]
      183 LOADK                            R19 K47 ["ImageLabel"]
      184 CALL                             R18 1 1
      185 JUMP                             ; [+1]
      186 LOADNIL                          R18
      187 SETTABLEKS                       R18 R17 K40 ["Check"]
      189 GETTABLEKS                       R19 R0 K46 ["ReserveCheckmarkSpace"]
      191 JUMPIFNOT                        R19 ; [+16]
      192 GETTABLEKS                       R19 R0 K28 ["Checkable"]
      194 JUMPIF                           R19 ; [+13]
      195 GETUPVAL                         R18 6
      196 GETTABLEKS                       R18 R18 K13 ["createElement"]
      198 LOADK                            R19 K38 ["Frame"]
      199 NEWTABLE                         R20 1 0
      201 GETUPVAL                         R21 6
      202 GETTABLEKS                       R21 R21 K22 ["Tag"]
      204 LOADK                            R22 K48 ["Role-Surface X-Fit"]
      205 SETTABLE                         R22 R20 R21
      206 CALL                             R18 2 1
      207 JUMP                             ; [+1]
      208 LOADNIL                          R18
      209 SETTABLEKS                       R18 R17 K41 ["CheckSpace"]
      211 JUMPIFNOT                        R1 ; [+9]
      212 GETUPVAL                         R18 6
      213 GETTABLEKS                       R18 R18 K13 ["createElement"]
      215 LOADK                            R19 K47 ["ImageLabel"]
      216 DUPTABLE                         R20 K49 [{"Image"}]
      217 SETTABLEKS                       R1 R20 K42 ["Image"]
      219 CALL                             R18 2 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R18
      222 SETTABLEKS                       R18 R17 K42 ["Image"]
      224 GETUPVAL                         R18 6
      225 GETTABLEKS                       R18 R18 K13 ["createElement"]
      227 LOADK                            R19 K50 ["TextLabel"]
      228 NEWTABLE                         R20 2 0
      230 GETTABLEKS                       R22 R0 K43 ["Text"]
      232 ORK                              R21 R22 K51 [""]
      233 SETTABLEKS                       R21 R20 K43 ["Text"]
      235 GETUPVAL                         R21 6
      236 GETTABLEKS                       R21 R21 K22 ["Tag"]
      238 LOADK                            R22 K52 ["X-Fit"]
      239 SETTABLE                         R22 R20 R21
      240 CALL                             R18 2 1
      241 SETTABLEKS                       R18 R17 K43 ["Text"]
      243 GETTABLEKS                       R19 R0 K21 ["Children"]
      245 JUMPIFNOT                        R19 ; [+13]
      246 GETUPVAL                         R18 6
      247 GETTABLEKS                       R18 R18 K13 ["createElement"]
      249 LOADK                            R19 K38 ["Frame"]
      250 NEWTABLE                         R20 1 0
      252 GETUPVAL                         R21 6
      253 GETTABLEKS                       R21 R21 K22 ["Tag"]
      255 LOADK                            R22 K48 ["Role-Surface X-Fit"]
      256 SETTABLE                         R22 R20 R21
      257 CALL                             R18 2 1
      258 JUMP                             ; [+1]
      259 LOADNIL                          R18
      260 SETTABLEKS                       R18 R17 K44 ["ArrowSpace"]
      262 CALL                             R14 3 1
      263 SETTABLEKS                       R14 R13 K35 ["Row"]
      265 GETTABLEKS                       R15 R0 K21 ["Children"]
      267 JUMPIFNOT                        R15 ; [+6]
      268 GETUPVAL                         R14 6
      269 GETTABLEKS                       R14 R14 K13 ["createElement"]
      271 LOADK                            R15 K47 ["ImageLabel"]
      272 CALL                             R14 1 1
      273 JUMP                             ; [+1]
      274 LOADNIL                          R14
      275 SETTABLEKS                       R14 R13 K36 ["Arrow"]
      277 CALL                             R10 3 -1
      278 RETURN                           R10 -1

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
