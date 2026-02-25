PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K0 ["Key"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K1 ["Uri"]
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
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R10 R11 K17 ["createElement"]
       55 LOADK                            R11 K18 ["TextLabel"]
       56 NEWTABLE                         R12 4 0
       58 SETTABLEKS                       R6 R12 K8 ["Text"]
       60 SETTABLEKS                       R7 R12 K9 ["TextWrapped"]
       62 GETUPVAL                         R14 1
       63 GETTABLEKS                       R13 R14 K19 ["Tag"]
       65 LOADK                            R14 K20 ["X-Fit"]
       66 SETTABLE                         R14 R12 R13
       67 CALL                             R10 2 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R10
       70 GETUPVAL                         R12 1
       71 GETTABLEKS                       R11 R12 K17 ["createElement"]
       73 LOADK                            R12 K21 ["Frame"]
       74 NEWTABLE                         R13 2 0
       76 SETTABLEKS                       R4 R13 K4 ["LayoutOrder"]
       78 GETUPVAL                         R15 1
       79 GETTABLEKS                       R14 R15 K19 ["Tag"]
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
      104 JUMPIFNOT                        R16 ; [+31]
      105 GETUPVAL                         R16 1
      106 GETTABLEKS                       R15 R16 K17 ["createElement"]
      108 LOADK                            R16 K21 ["Frame"]
      109 NEWTABLE                         R17 1 0
      111 GETUPVAL                         R19 1
      112 GETTABLEKS                       R18 R19 K19 ["Tag"]
      114 LOADK                            R19 K28 ["X-Fit X-Middle"]
      115 SETTABLE                         R19 R17 R18
      116 DUPTABLE                         R18 K31 [{"CheckboxIcon", "CheckboxLabel"}]
      117 GETUPVAL                         R20 1
      118 GETTABLEKS                       R19 R20 K17 ["createElement"]
      120 LOADK                            R20 K32 ["ImageButton"]
      121 NEWTABLE                         R21 1 0
      123 GETUPVAL                         R24 1
      124 GETTABLEKS                       R23 R24 K33 ["Event"]
      126 GETTABLEKS                       R22 R23 K34 ["Activated"]
      128 SETTABLE                         R9 R21 R22
      129 CALL                             R19 2 1
      130 SETTABLEKS                       R19 R18 K29 ["CheckboxIcon"]
      132 SETTABLEKS                       R10 R18 K30 ["CheckboxLabel"]
      134 CALL                             R15 3 1
      135 JUMP                             ; [+30]
      136 GETUPVAL                         R16 1
      137 GETTABLEKS                       R15 R16 K17 ["createElement"]
      139 LOADK                            R16 K35 ["TextButton"]
      140 NEWTABLE                         R17 2 0
      142 GETUPVAL                         R20 1
      143 GETTABLEKS                       R19 R20 K33 ["Event"]
      145 GETTABLEKS                       R18 R19 K34 ["Activated"]
      147 SETTABLE                         R9 R17 R18
      148 GETUPVAL                         R19 1
      149 GETTABLEKS                       R18 R19 K19 ["Tag"]
      151 LOADK                            R19 K28 ["X-Fit X-Middle"]
      152 SETTABLE                         R19 R17 R18
      153 DUPTABLE                         R18 K31 [{"CheckboxIcon", "CheckboxLabel"}]
      154 GETUPVAL                         R20 1
      155 GETTABLEKS                       R19 R20 K17 ["createElement"]
      157 LOADK                            R20 K36 ["ImageLabel"]
      158 NEWTABLE                         R21 0 0
      160 CALL                             R19 2 1
      161 SETTABLEKS                       R19 R18 K29 ["CheckboxIcon"]
      163 SETTABLEKS                       R10 R18 K30 ["CheckboxLabel"]
      165 CALL                             R15 3 1
      166 SETTABLEKS                       R15 R14 K25 ["CheckboxContainer"]
      168 CALL                             R11 3 -1
      169 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useCallback"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Src"]
       20 GETTABLEKS                       R5 R6 K10 ["Util"]
       22 GETTABLEKS                       R4 R5 K11 ["uriToTestId"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R6 K12 ["Framework"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K13 ["Styling"]
       34 GETTABLEKS                       R6 R5 K14 ["joinTags"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R9 R0 K9 ["Src"]
       40 GETTABLEKS                       R8 R9 K15 ["Types"]
       42 CALL                             R7 1 1
       43 DUPCLOSURE                       R8 K16 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R3
       48 RETURN                           R8 1
