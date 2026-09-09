PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["Key"]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["Uri"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K1 ["Checked"]
        2 ORK                              R1 R2 K0 [False]
        3 GETTABLEKS                       R3 R0 K2 ["Disabled"]
        5 ORK                              R2 R3 K0 [False]
        6 GETTABLEKS                       R3 R0 K3 ["OnClick"]
        8 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R0 K6 ["Size"]
       12 ORK                              R5 R6 K5 ["Medium"]
       13 GETTABLEKS                       R7 R0 K8 ["Text"]
       15 ORK                              R6 R7 K7 [""]
       16 GETTABLEKS                       R7 R0 K9 ["TextWrapped"]
       18 LOADNIL                          R8
       19 JUMPIFNOT                        R2 ; [+2]
       20 LOADK                            R8 K10 ["State-Disabled"]
       21 JUMP                             ; [+1]
       22 LOADK                            R8 K11 ["State-Default"]
       23 JUMPIFNOTEQKB                    R1 TRUE ; [+5]
       25 MOVE                             R9 R8
       26 LOADK                            R10 K12 [" Checked"]
       27 CONCAT                           R8 R9 R10
       28 JUMP                             ; [+5]
       29 JUMPIFNOTEQKS                    R1 K13 ["Indeterminate"] ; [+4]
       31 MOVE                             R9 R8
       32 LOADK                            R10 K14 [" Indeterminate"]
       33 CONCAT                           R8 R9 R10
       34 GETUPVAL                         R9 0
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R11 0 4
       41 MOVE                             R12 R3
       42 MOVE                             R13 R2
       43 GETTABLEKS                       R14 R0 K15 ["Key"]
       45 GETTABLEKS                       R15 R0 K16 ["Uri"]
       47 SETLIST                          R11 R12 4 [1]
       49 CALL                             R9 2 1
       50 JUMPIFEQKS                       R6 K7 [""] ; [+18]
       52 GETUPVAL                         R10 1
       53 GETTABLEKS                       R10 R10 K17 ["createElement"]
       55 LOADK                            R11 K18 ["TextLabel"]
       56 NEWTABLE                         R12 4 0
       58 SETTABLEKS                       R6 R12 K8 ["Text"]
       60 SETTABLEKS                       R7 R12 K9 ["TextWrapped"]
       62 GETUPVAL                         R13 1
       63 GETTABLEKS                       R13 R13 K19 ["Tag"]
       65 LOADK                            R14 K20 ["X-Fit"]
       66 SETTABLE                         R14 R12 R13
       67 CALL                             R10 2 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R10
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K17 ["createElement"]
       73 LOADK                            R12 K21 ["Frame"]
       74 NEWTABLE                         R13 2 0
       76 SETTABLEKS                       R4 R13 K4 ["LayoutOrder"]
       78 GETUPVAL                         R14 1
       79 GETTABLEKS                       R14 R14 K19 ["Tag"]
       81 GETUPVAL                         R15 2
       82 LOADK                            R16 K22 ["Component-RibbonCheckbox X-Fit X-Middle"]
       83 MOVE                             R17 R5
       84 MOVE                             R18 R8
       85 GETTABLEKS                       R20 R0 K16 ["Uri"]
       87 JUMPIFNOT                        R20 ; [+10]
       88 LOADK                            R20 K23 ["data-testid=%*"]
       89 GETUPVAL                         R22 3
       90 GETTABLEKS                       R23 R0 K16 ["Uri"]
       92 CALL                             R22 1 1
       93 NAMECALL                         R20 R20 K24 ["format"]
       95 CALL                             R20 2 1
       96 MOVE                             R19 R20
       97 JUMP                             ; [+1]
       98 LOADNIL                          R19
       99 CALL                             R15 4 1
      100 SETTABLE                         R15 R13 R14
      101 DUPTABLE                         R14 K26 [{"CheckboxContainer"}]
      102 GETTABLEKS                       R16 R0 K27 ["ExcludeTextFromClickableArea"]
      104 JUMPIFNOT                        R16 ; [+39]
      105 GETUPVAL                         R15 1
      106 GETTABLEKS                       R15 R15 K17 ["createElement"]
      108 LOADK                            R16 K21 ["Frame"]
      109 NEWTABLE                         R17 1 0
      111 GETUPVAL                         R18 1
      112 GETTABLEKS                       R18 R18 K19 ["Tag"]
      114 LOADK                            R19 K28 ["X-Fit X-Middle"]
      115 SETTABLE                         R19 R17 R18
      116 DUPTABLE                         R18 K31 [{"CheckboxIcon", "CheckboxLabel"}]
      117 GETUPVAL                         R19 1
      118 GETTABLEKS                       R19 R19 K17 ["createElement"]
      120 LOADK                            R20 K32 ["ImageButton"]
      121 NEWTABLE                         R21 2 0
      123 GETUPVAL                         R23 4
      124 CALL                             R23 0 1
      125 JUMPIFNOT                        R23 ; [+2]
      126 NOT                              R22 R2
      127 JUMP                             ; [+1]
      128 LOADNIL                          R22
      129 SETTABLEKS                       R22 R21 K33 ["Selectable"]
      131 GETUPVAL                         R22 1
      132 GETTABLEKS                       R22 R22 K34 ["Event"]
      134 GETTABLEKS                       R22 R22 K35 ["Activated"]
      136 SETTABLE                         R9 R21 R22
      137 CALL                             R19 2 1
      138 SETTABLEKS                       R19 R18 K29 ["CheckboxIcon"]
      140 SETTABLEKS                       R10 R18 K30 ["CheckboxLabel"]
      142 CALL                             R15 3 1
      143 JUMP                             ; [+38]
      144 GETUPVAL                         R15 1
      145 GETTABLEKS                       R15 R15 K17 ["createElement"]
      147 LOADK                            R16 K36 ["TextButton"]
      148 NEWTABLE                         R17 4 0
      150 GETUPVAL                         R19 4
      151 CALL                             R19 0 1
      152 JUMPIFNOT                        R19 ; [+2]
      153 NOT                              R18 R2
      154 JUMP                             ; [+1]
      155 LOADNIL                          R18
      156 SETTABLEKS                       R18 R17 K33 ["Selectable"]
      158 GETUPVAL                         R18 1
      159 GETTABLEKS                       R18 R18 K34 ["Event"]
      161 GETTABLEKS                       R18 R18 K35 ["Activated"]
      163 SETTABLE                         R9 R17 R18
      164 GETUPVAL                         R18 1
      165 GETTABLEKS                       R18 R18 K19 ["Tag"]
      167 LOADK                            R19 K28 ["X-Fit X-Middle"]
      168 SETTABLE                         R19 R17 R18
      169 DUPTABLE                         R18 K31 [{"CheckboxIcon", "CheckboxLabel"}]
      170 GETUPVAL                         R19 1
      171 GETTABLEKS                       R19 R19 K17 ["createElement"]
      173 LOADK                            R20 K37 ["ImageLabel"]
      174 NEWTABLE                         R21 0 0
      176 CALL                             R19 2 1
      177 SETTABLEKS                       R19 R18 K29 ["CheckboxIcon"]
      179 SETTABLEKS                       R10 R18 K30 ["CheckboxLabel"]
      181 CALL                             R15 3 1
      182 SETTABLEKS                       R15 R14 K25 ["CheckboxContainer"]
      184 CALL                             R11 3 -1
      185 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K6 ["Parent"]
       15 GETTABLEKS                       R2 R2 K7 ["SharedFlags"]
       17 GETTABLEKS                       R2 R2 K8 ["getFFlagRibbonEnableKeyboardNavigation"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K9 ["Packages"]
       24 GETTABLEKS                       R3 R3 K10 ["React"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K11 ["useCallback"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R0 K12 ["Src"]
       33 GETTABLEKS                       R5 R5 K13 ["Util"]
       35 GETTABLEKS                       R5 R5 K14 ["uriToTestId"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R0 K9 ["Packages"]
       42 GETTABLEKS                       R6 R6 K15 ["Framework"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R5 K16 ["Styling"]
       47 GETTABLEKS                       R7 R6 K17 ["joinTags"]
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R9 R0 K12 ["Src"]
       53 GETTABLEKS                       R9 R9 K18 ["Types"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K19 [PROTO_1]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 RETURN                           R9 1
