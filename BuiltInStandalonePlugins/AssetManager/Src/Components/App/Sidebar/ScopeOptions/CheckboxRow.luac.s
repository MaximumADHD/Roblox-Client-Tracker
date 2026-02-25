PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R1 R0 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ScopeInfo"]
        3 JUMPIFNOT                        R0 ; [+24]
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R1 1
        8 JUMPIFEQKS                       R1 K1 [""] ; [+11]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 3
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["ScopeInfo"]
       15 NAMECALL                         R2 R2 K2 ["getThumbnailUriForScope"]
       17 CALL                             R2 2 1
       18 JUMPIFEQ                         R1 R2 ; [+9]
       20 GETUPVAL                         R1 3
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K0 ["ScopeInfo"]
       24 MOVE                             R4 R0
       25 NAMECALL                         R1 R1 K3 ["getThumbnailForScopeAsync"]
       27 CALL                             R1 3 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnChecked"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R4 K2 [""]
       10 CALL                             R3 1 2
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R4
       15 CAPTURE                          VAL R2
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R6 R7 K3 ["useEffect"]
       19 MOVE                             R7 R5
       20 NEWTABLE                         R8 0 1
       22 GETTABLEKS                       R9 R0 K4 ["ScopeInfo"]
       24 SETLIST                          R8 R9 1 [1]
       26 CALL                             R6 2 0
       27 LOADK                            R6 K2 [""]
       28 GETTABLEKS                       R7 R0 K5 ["Text"]
       30 JUMPIFNOT                        R7 ; [+3]
       31 GETTABLEKS                       R6 R0 K5 ["Text"]
       33 JUMP                             ; [+22]
       34 GETTABLEKS                       R7 R0 K4 ["ScopeInfo"]
       36 JUMPIFNOT                        R7 ; [+19]
       37 GETTABLEKS                       R8 R0 K4 ["ScopeInfo"]
       39 GETTABLEKS                       R7 R8 K6 ["Name"]
       41 JUMPIFNOT                        R7 ; [+5]
       42 GETTABLEKS                       R7 R0 K4 ["ScopeInfo"]
       44 GETTABLEKS                       R6 R7 K6 ["Name"]
       46 JUMP                             ; [+9]
       47 GETTABLEKS                       R9 R0 K4 ["ScopeInfo"]
       49 GETTABLEKS                       R8 R9 K7 ["Id"]
       51 FASTCALL1                        TOSTRING R8 ; [+2]
       52 GETIMPORT                        R7 K9 [tostring]
       54 CALL                             R7 1 1
       55 MOVE                             R6 R7
       56 GETUPVAL                         R8 4
       57 CALL                             R8 0 1
       58 JUMPIFNOT                        R8 ; [+58]
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R7 R8 K10 ["createElement"]
       62 GETUPVAL                         R9 5
       63 GETTABLEKS                       R8 R9 K11 ["View"]
       65 DUPTABLE                         R9 K13 [{"tag"}]
       66 LOADK                            R10 K14 ["CheckboxRowContents row align-y-center align-x-left"]
       67 SETTABLEKS                       R10 R9 K12 ["tag"]
       69 DUPTABLE                         R10 K17 [{"Icon", "TextLabel"}]
       70 GETTABLEKS                       R12 R0 K4 ["ScopeInfo"]
       72 JUMPIFNOT                        R12 ; [+19]
       73 GETUPVAL                         R12 3
       74 GETTABLEKS                       R11 R12 K10 ["createElement"]
       76 GETUPVAL                         R13 5
       77 GETTABLEKS                       R12 R13 K18 ["Image"]
       79 DUPTABLE                         R13 K20 [{"LayoutOrder", "Image", "tag"}]
       80 NAMECALL                         R14 R1 K21 ["getNextOrder"]
       82 CALL                             R14 1 1
       83 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
       85 SETTABLEKS                       R3 R13 K18 ["Image"]
       87 LOADK                            R14 K22 ["radius-circle size-400"]
       88 SETTABLEKS                       R14 R13 K12 ["tag"]
       90 CALL                             R11 2 1
       91 JUMP                             ; [+1]
       92 LOADNIL                          R11
       93 SETTABLEKS                       R11 R10 K15 ["Icon"]
       95 GETUPVAL                         R12 3
       96 GETTABLEKS                       R11 R12 K10 ["createElement"]
       98 GETUPVAL                         R13 5
       99 GETTABLEKS                       R12 R13 K5 ["Text"]
      101 DUPTABLE                         R13 K23 [{"LayoutOrder", "Text", "tag"}]
      102 NAMECALL                         R14 R1 K21 ["getNextOrder"]
      104 CALL                             R14 1 1
      105 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      107 SETTABLEKS                       R6 R13 K5 ["Text"]
      109 LOADK                            R14 K24 ["text-label-small text-align-x-left text-truncate-end size-full-0 auto-y padding-small"]
      110 SETTABLEKS                       R14 R13 K12 ["tag"]
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K16 ["TextLabel"]
      115 CALL                             R7 3 1
      116 JUMP                             ; [+69]
      117 GETUPVAL                         R8 3
      118 GETTABLEKS                       R7 R8 K10 ["createElement"]
      120 GETUPVAL                         R8 6
      121 NEWTABLE                         R9 2 0
      123 NAMECALL                         R10 R1 K21 ["getNextOrder"]
      125 CALL                             R10 1 1
      126 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
      128 GETUPVAL                         R11 3
      129 GETTABLEKS                       R10 R11 K25 ["Tag"]
      131 LOADK                            R11 K26 ["CheckboxRowContents X-Row X-Middle X-Left"]
      132 SETTABLE                         R11 R9 R10
      133 DUPTABLE                         R10 K17 [{"Icon", "TextLabel"}]
      134 GETTABLEKS                       R12 R0 K4 ["ScopeInfo"]
      136 JUMPIFNOT                        R12 ; [+20]
      137 GETUPVAL                         R12 3
      138 GETTABLEKS                       R11 R12 K10 ["createElement"]
      140 GETUPVAL                         R12 7
      141 NEWTABLE                         R13 4 0
      143 NAMECALL                         R14 R1 K21 ["getNextOrder"]
      145 CALL                             R14 1 1
      146 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      148 SETTABLEKS                       R3 R13 K18 ["Image"]
      150 GETUPVAL                         R15 3
      151 GETTABLEKS                       R14 R15 K25 ["Tag"]
      153 LOADK                            R15 K27 ["radius-circle Icon16"]
      154 SETTABLE                         R15 R13 R14
      155 CALL                             R11 2 1
      156 JUMP                             ; [+1]
      157 LOADNIL                          R11
      158 SETTABLEKS                       R11 R10 K15 ["Icon"]
      160 GETUPVAL                         R12 3
      161 GETTABLEKS                       R11 R12 K10 ["createElement"]
      163 GETUPVAL                         R12 8
      164 NEWTABLE                         R13 4 0
      166 NAMECALL                         R14 R1 K21 ["getNextOrder"]
      168 CALL                             R14 1 1
      169 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      171 SETTABLEKS                       R6 R13 K5 ["Text"]
      173 GETIMPORT                        R14 K31 [Enum.TextTruncate.AtEnd]
      175 SETTABLEKS                       R14 R13 K29 ["TextTruncate"]
      177 GETUPVAL                         R15 3
      178 GETTABLEKS                       R14 R15 K25 ["Tag"]
      180 LOADK                            R15 K32 ["Left X-FitY X-Pad"]
      181 SETTABLE                         R15 R13 R14
      182 CALL                             R11 2 1
      183 SETTABLEKS                       R11 R10 K16 ["TextLabel"]
      185 CALL                             R7 3 1
      186 GETUPVAL                         R9 4
      187 CALL                             R9 0 1
      188 JUMPIFNOT                        R9 ; [+42]
      189 GETUPVAL                         R9 3
      190 GETTABLEKS                       R8 R9 K10 ["createElement"]
      192 GETUPVAL                         R10 5
      193 GETTABLEKS                       R9 R10 K11 ["View"]
      195 DUPTABLE                         R10 K13 [{"tag"}]
      196 LOADK                            R11 K33 ["anchor-center-right position-center-right size-0 auto-xy"]
      197 SETTABLEKS                       R11 R10 K12 ["tag"]
      199 GETUPVAL                         R12 3
      200 GETTABLEKS                       R11 R12 K10 ["createElement"]
      202 GETUPVAL                         R13 5
      203 GETTABLEKS                       R12 R13 K34 ["Checkbox"]
      205 DUPTABLE                         R13 K39 [{"isChecked", "onActivated", "size", "label"}]
      206 GETTABLEKS                       R14 R0 K40 ["Checked"]
      208 SETTABLEKS                       R14 R13 K35 ["isChecked"]
      210 GETTABLEKS                       R14 R0 K41 ["OnChecked"]
      212 SETTABLEKS                       R14 R13 K36 ["onActivated"]
      214 GETUPVAL                         R17 5
      215 GETTABLEKS                       R16 R17 K42 ["Enums"]
      217 GETTABLEKS                       R15 R16 K43 ["InputSize"]
      219 GETTABLEKS                       R14 R15 K44 ["XSmall"]
      221 SETTABLEKS                       R14 R13 K37 ["size"]
      223 LOADK                            R14 K2 [""]
      224 SETTABLEKS                       R14 R13 K38 ["label"]
      226 NEWTABLE                         R14 0 0
      228 CALL                             R11 3 -1
      229 CALL                             R8 -1 1
      230 JUMP                             ; [+19]
      231 GETUPVAL                         R9 3
      232 GETTABLEKS                       R8 R9 K10 ["createElement"]
      234 GETUPVAL                         R9 9
      235 DUPTABLE                         R10 K46 [{"LayoutOrder", "Checked", "OnClick"}]
      236 NAMECALL                         R11 R1 K21 ["getNextOrder"]
      238 CALL                             R11 1 1
      239 SETTABLEKS                       R11 R10 K19 ["LayoutOrder"]
      241 GETTABLEKS                       R11 R0 K40 ["Checked"]
      243 SETTABLEKS                       R11 R10 K40 ["Checked"]
      245 NEWCLOSURE                       R11 P1
      246 CAPTURE                          VAL R0
      247 SETTABLEKS                       R11 R10 K45 ["OnClick"]
      249 CALL                             R8 2 1
      250 GETUPVAL                         R10 3
      251 GETTABLEKS                       R9 R10 K10 ["createElement"]
      253 GETUPVAL                         R11 5
      254 GETTABLEKS                       R10 R11 K11 ["View"]
      256 DUPTABLE                         R11 K48 [{"LayoutOrder", "Position", "tag"}]
      257 GETTABLEKS                       R12 R0 K19 ["LayoutOrder"]
      259 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
      261 GETTABLEKS                       R12 R0 K47 ["Position"]
      263 SETTABLEKS                       R12 R11 K47 ["Position"]
      265 LOADK                            R12 K49 ["CheckboxRow size-full-0 auto-y padding-right-small"]
      266 SETTABLEKS                       R12 R11 K12 ["tag"]
      268 DUPTABLE                         R12 K51 [{"Contents", "Checkbox"}]
      269 SETTABLEKS                       R7 R12 K50 ["Contents"]
      271 SETTABLEKS                       R8 R12 K34 ["Checkbox"]
      273 CALL                             R9 3 -1
      274 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["UI"]
       30 GETTABLEKS                       R5 R4 K11 ["Checkbox"]
       32 GETTABLEKS                       R6 R4 K12 ["Pane"]
       34 GETTABLEKS                       R7 R4 K13 ["Image"]
       36 GETTABLEKS                       R8 R4 K14 ["TextLabel"]
       38 GETTABLEKS                       R9 R1 K15 ["useState"]
       40 GETIMPORT                        R10 K5 [require]
       42 GETTABLEKS                       R12 R0 K16 ["Src"]
       44 GETTABLEKS                       R11 R12 K17 ["Networking"]
       46 CALL                             R10 1 1
       47 GETTABLEKS                       R12 R3 K18 ["Util"]
       49 GETTABLEKS                       R11 R12 K19 ["LayoutOrderIterator"]
       51 GETIMPORT                        R12 K5 [require]
       53 GETTABLEKS                       R14 R0 K16 ["Src"]
       55 GETTABLEKS                       R13 R14 K20 ["Types"]
       57 CALL                             R12 1 1
       58 GETIMPORT                        R13 K5 [require]
       60 GETTABLEKS                       R16 R0 K16 ["Src"]
       62 GETTABLEKS                       R15 R16 K21 ["Flags"]
       64 GETTABLEKS                       R14 R15 K22 ["getFFlagAmrCheckboxFoundationify"]
       66 CALL                             R13 1 1
       67 DUPCLOSURE                       R14 K23 [PROTO_3]
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R5
       78 RETURN                           R14 1
