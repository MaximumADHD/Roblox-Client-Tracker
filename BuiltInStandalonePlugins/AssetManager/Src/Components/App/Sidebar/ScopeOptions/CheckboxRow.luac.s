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
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R7 R8 K10 ["createElement"]
       59 GETUPVAL                         R9 4
       60 GETTABLEKS                       R8 R9 K11 ["View"]
       62 DUPTABLE                         R9 K15 [{"LayoutOrder", "Position", "tag"}]
       63 GETTABLEKS                       R10 R0 K12 ["LayoutOrder"]
       65 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       67 GETTABLEKS                       R10 R0 K13 ["Position"]
       69 SETTABLEKS                       R10 R9 K13 ["Position"]
       71 LOADK                            R10 K16 ["CheckboxRow size-full-0 auto-y padding-right-small"]
       72 SETTABLEKS                       R10 R9 K14 ["tag"]
       74 DUPTABLE                         R10 K19 [{"Contents", "Checkbox"}]
       75 GETUPVAL                         R12 3
       76 GETTABLEKS                       R11 R12 K10 ["createElement"]
       78 GETUPVAL                         R12 5
       79 NEWTABLE                         R13 2 0
       81 NAMECALL                         R14 R1 K20 ["getNextOrder"]
       83 CALL                             R14 1 1
       84 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       86 GETUPVAL                         R15 3
       87 GETTABLEKS                       R14 R15 K21 ["Tag"]
       89 LOADK                            R15 K22 ["CheckboxRowContents X-Row X-Middle X-Left"]
       90 SETTABLE                         R15 R13 R14
       91 DUPTABLE                         R14 K25 [{"Icon", "TextLabel"}]
       92 GETTABLEKS                       R16 R0 K4 ["ScopeInfo"]
       94 JUMPIFNOT                        R16 ; [+20]
       95 GETUPVAL                         R16 3
       96 GETTABLEKS                       R15 R16 K10 ["createElement"]
       98 GETUPVAL                         R16 6
       99 NEWTABLE                         R17 4 0
      101 NAMECALL                         R18 R1 K20 ["getNextOrder"]
      103 CALL                             R18 1 1
      104 SETTABLEKS                       R18 R17 K12 ["LayoutOrder"]
      106 SETTABLEKS                       R3 R17 K26 ["Image"]
      108 GETUPVAL                         R19 3
      109 GETTABLEKS                       R18 R19 K21 ["Tag"]
      111 LOADK                            R19 K27 ["radius-circle Icon16"]
      112 SETTABLE                         R19 R17 R18
      113 CALL                             R15 2 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R15
      116 SETTABLEKS                       R15 R14 K23 ["Icon"]
      118 GETUPVAL                         R16 3
      119 GETTABLEKS                       R15 R16 K10 ["createElement"]
      121 GETUPVAL                         R16 7
      122 NEWTABLE                         R17 4 0
      124 NAMECALL                         R18 R1 K20 ["getNextOrder"]
      126 CALL                             R18 1 1
      127 SETTABLEKS                       R18 R17 K12 ["LayoutOrder"]
      129 SETTABLEKS                       R6 R17 K5 ["Text"]
      131 GETIMPORT                        R18 K31 [Enum.TextTruncate.AtEnd]
      133 SETTABLEKS                       R18 R17 K29 ["TextTruncate"]
      135 GETUPVAL                         R19 3
      136 GETTABLEKS                       R18 R19 K21 ["Tag"]
      138 LOADK                            R19 K32 ["Left X-FitY X-Pad"]
      139 SETTABLE                         R19 R17 R18
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R14 K24 ["TextLabel"]
      143 CALL                             R11 3 1
      144 SETTABLEKS                       R11 R10 K17 ["Contents"]
      146 GETUPVAL                         R12 3
      147 GETTABLEKS                       R11 R12 K10 ["createElement"]
      149 GETUPVAL                         R12 8
      150 DUPTABLE                         R13 K35 [{"LayoutOrder", "Checked", "OnClick"}]
      151 NAMECALL                         R14 R1 K20 ["getNextOrder"]
      153 CALL                             R14 1 1
      154 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
      156 GETTABLEKS                       R14 R0 K33 ["Checked"]
      158 SETTABLEKS                       R14 R13 K33 ["Checked"]
      160 NEWCLOSURE                       R14 P1
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R14 R13 K34 ["OnClick"]
      164 CALL                             R11 2 1
      165 SETTABLEKS                       R11 R10 K18 ["Checkbox"]
      167 CALL                             R7 3 -1
      168 RETURN                           R7 -1

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
       58 DUPCLOSURE                       R13 K21 [PROTO_3]
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R5
       68 RETURN                           R13 1
