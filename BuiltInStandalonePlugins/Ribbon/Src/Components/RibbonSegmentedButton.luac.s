PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+4]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 JUMPIF                           R2 ; [+17]
       11 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       13 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
       15 JUMPIFNOTEQ                      R2 R3 ; [+12]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K4 ["OnItemActivated"]
       20 GETUPVAL                         R3 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K5 ["Uri"]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 4
       26 GETUPVAL                         R3 1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+4]
        6 GETUPVAL                         R2 0
        7 LOADN                            R3 255
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Items"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R0 K1 ["SelectedIndex"]
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 0
        7 LOADN                            R5 255
        8 CALL                             R4 1 2
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R7 1
       12 CALL                             R7 0 1
       13 GETUPVAL                         R8 2
       14 NAMECALL                         R8 R8 K2 ["use"]
       16 CALL                             R8 1 1
       17 GETTABLEKS                       R9 R0 K0 ["Items"]
       19 LOADNIL                          R10
       20 LOADNIL                          R11
       21 FORGPREP                         R9
       22 GETTABLEKS                       R14 R13 K3 ["Id"]
       24 GETUPVAL                         R15 3
       25 MOVE                             R16 R8
       26 LOADK                            R17 K4 ["Text"]
       27 MOVE                             R18 R13
       28 CALL                             R15 3 1
       29 JUMPIFEQ                         R2 R12 ; [+2]
       31 LOADB                            R16 0 +1
       32 LOADB                            R16 1
       33 JUMPIFEQ                         R4 R12 ; [+2]
       35 LOADB                            R17 0 +1
       36 LOADB                            R17 1
       37 GETUPVAL                         R18 4
       38 GETTABLEKS                       R18 R18 K5 ["createElement"]
       40 LOADK                            R19 K6 ["Frame"]
       41 NEWTABLE                         R20 2 0
       43 MOVE                             R21 R7
       44 CALL                             R21 0 1
       45 SETTABLEKS                       R21 R20 K7 ["LayoutOrder"]
       47 GETUPVAL                         R21 4
       48 GETTABLEKS                       R21 R21 K8 ["Tag"]
       50 GETUPVAL                         R22 5
       51 LOADK                            R23 K9 ["X-Fit StateLayer"]
       52 JUMPIFNOT                        R17 ; [+2]
       53 LOADK                            R24 K10 ["State-Pressed"]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R24
       56 CALL                             R22 2 1
       57 SETTABLE                         R22 R20 R21
       58 DUPTABLE                         R21 K12 [{"Option"}]
       59 GETUPVAL                         R22 4
       60 GETTABLEKS                       R22 R22 K5 ["createElement"]
       62 LOADK                            R23 K13 ["TextButton"]
       63 NEWTABLE                         R24 4 0
       65 GETUPVAL                         R25 4
       66 GETTABLEKS                       R25 R25 K14 ["Event"]
       68 GETTABLEKS                       R25 R25 K15 ["InputBegan"]
       70 NEWCLOSURE                       R26 P0
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R16
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R3
       76 SETTABLE                         R26 R24 R25
       77 GETUPVAL                         R25 4
       78 GETTABLEKS                       R25 R25 K14 ["Event"]
       80 GETTABLEKS                       R25 R25 K16 ["InputEnded"]
       82 NEWCLOSURE                       R26 P1
       83 CAPTURE                          VAL R5
       84 SETTABLE                         R26 R24 R25
       85 SETTABLEKS                       R15 R24 K4 ["Text"]
       87 GETUPVAL                         R25 4
       88 GETTABLEKS                       R25 R25 K8 ["Tag"]
       90 GETUPVAL                         R26 5
       91 LOADK                            R27 K17 ["X-Fit"]
       92 JUMPIFNOT                        R16 ; [+2]
       93 LOADK                            R28 K18 ["State-Selected"]
       94 JUMP                             ; [+1]
       95 LOADK                            R28 K19 ["State-Default"]
       96 CALL                             R26 2 1
       97 SETTABLE                         R26 R24 R25
       98 CALL                             R22 2 1
       99 SETTABLEKS                       R22 R21 K11 ["Option"]
      101 CALL                             R18 3 1
      102 SETTABLE                         R18 R6 R14
      103 LENGTH                           R18 R1
      104 JUMPIFNOTLT                      R12 R18 ; [+29]
      106 MOVE                             R19 R14
      107 LOADK                            R20 K20 ["Separator"]
      108 CONCAT                           R18 R19 R20
      109 GETUPVAL                         R19 4
      110 GETTABLEKS                       R19 R19 K5 ["createElement"]
      112 LOADK                            R20 K6 ["Frame"]
      113 NEWTABLE                         R21 2 0
      115 MOVE                             R22 R7
      116 CALL                             R22 0 1
      117 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
      119 GETUPVAL                         R22 4
      120 GETTABLEKS                       R22 R22 K8 ["Tag"]
      122 LOADK                            R23 K21 ["Role-Surface X-Fit"]
      123 SETTABLE                         R23 R21 R22
      124 DUPTABLE                         R22 K23 [{"Divider"}]
      125 GETUPVAL                         R23 4
      126 GETTABLEKS                       R23 R23 K5 ["createElement"]
      128 LOADK                            R24 K6 ["Frame"]
      129 CALL                             R23 1 1
      130 SETTABLEKS                       R23 R22 K22 ["Divider"]
      132 CALL                             R19 3 1
      133 SETTABLE                         R19 R6 R18
      134 FORGLOOP                         R9 2 ; [-113]
      136 GETUPVAL                         R9 4
      137 GETTABLEKS                       R9 R9 K5 ["createElement"]
      139 LOADK                            R10 K6 ["Frame"]
      140 NEWTABLE                         R11 2 0
      142 GETUPVAL                         R12 4
      143 GETTABLEKS                       R12 R12 K8 ["Tag"]
      145 LOADK                            R13 K24 ["Component-RibbonSegmentedButton X-Fit"]
      146 SETTABLE                         R13 R11 R12
      147 GETTABLEKS                       R12 R0 K7 ["LayoutOrder"]
      149 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      151 DUPTABLE                         R12 K26 [{"SegmentedButton"}]
      152 GETUPVAL                         R13 4
      153 GETTABLEKS                       R13 R13 K5 ["createElement"]
      155 LOADK                            R14 K27 ["CanvasGroup"]
      156 NEWTABLE                         R15 1 0
      158 GETUPVAL                         R16 4
      159 GETTABLEKS                       R16 R16 K8 ["Tag"]
      161 LOADK                            R18 K28 ["X-Middle X-Fit X-Row data-testid=%*"]
      162 GETUPVAL                         R20 6
      163 GETTABLEKS                       R21 R0 K29 ["Uri"]
      165 CALL                             R20 1 1
      166 NAMECALL                         R18 R18 K30 ["format"]
      168 CALL                             R18 2 1
      169 MOVE                             R17 R18
      170 SETTABLE                         R17 R15 R16
      171 MOVE                             R16 R6
      172 CALL                             R13 3 1
      173 SETTABLEKS                       R13 R12 K25 ["SegmentedButton"]
      175 CALL                             R9 3 -1
      176 RETURN                           R9 -1

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
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Util"]
       22 GETTABLEKS                       R4 R4 K11 ["uriToTestId"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R5 K12 ["Framework"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K13 ["Styling"]
       34 GETTABLEKS                       R6 R5 K14 ["joinTags"]
       36 GETTABLEKS                       R7 R4 K15 ["ContextServices"]
       38 GETTABLEKS                       R8 R7 K16 ["Localization"]
       40 GETTABLEKS                       R9 R4 K10 ["Util"]
       42 GETTABLEKS                       R9 R9 K17 ["counter"]
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R11 R0 K9 ["Src"]
       48 GETTABLEKS                       R11 R11 K18 ["Types"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R12 R0 K9 ["Src"]
       55 GETTABLEKS                       R12 R12 K19 ["Components"]
       57 GETTABLEKS                       R12 R12 K20 ["ControlsView"]
       59 GETTABLEKS                       R12 R12 K21 ["getLocalizedField"]
       61 CALL                             R11 1 1
       62 DUPCLOSURE                       R12 K22 [PROTO_2]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R3
       70 RETURN                           R12 1
