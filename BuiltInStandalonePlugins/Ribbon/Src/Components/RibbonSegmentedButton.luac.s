PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 JUMP                             ; [+8]
        7 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
        9 GETIMPORT                        R4 K3 [Enum.UserInputType.MouseButton1]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 4
       20 JUMPIF                           R2 ; [+27]
       21 GETUPVAL                         R3 0
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+4]
       24 GETUPVAL                         R2 1
       25 MOVE                             R3 R1
       26 CALL                             R2 1 1
       27 JUMP                             ; [+8]
       28 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
       30 GETIMPORT                        R4 K3 [Enum.UserInputType.MouseButton1]
       32 JUMPIFEQ                         R3 R4 ; [+2]
       34 LOADB                            R2 0 +1
       35 LOADB                            R2 1
       36 JUMPIFNOT                        R2 ; [+11]
       37 GETUPVAL                         R2 5
       38 GETTABLEKS                       R2 R2 K4 ["OnItemActivated"]
       40 GETUPVAL                         R3 3
       41 GETUPVAL                         R4 5
       42 GETTABLEKS                       R4 R4 K5 ["Uri"]
       44 CALL                             R2 2 0
       45 GETUPVAL                         R2 6
       46 GETUPVAL                         R3 3
       47 CALL                             R2 1 0
       48 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+4]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 JUMP                             ; [+8]
        7 GETTABLEKS                       R3 R1 K0 ["UserInputType"]
        9 GETIMPORT                        R4 K3 [Enum.UserInputType.MouseButton1]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETUPVAL                         R2 2
       17 LOADN                            R3 -1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Items"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R0 K1 ["SelectedIndex"]
        5 CALL                             R2 1 2
        6 GETUPVAL                         R4 0
        7 LOADN                            R5 -1
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
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R16
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R3
       78 SETTABLE                         R26 R24 R25
       79 GETUPVAL                         R25 4
       80 GETTABLEKS                       R25 R25 K14 ["Event"]
       82 GETTABLEKS                       R25 R25 K16 ["InputEnded"]
       84 NEWCLOSURE                       R26 P1
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R5
       88 SETTABLE                         R26 R24 R25
       89 SETTABLEKS                       R15 R24 K4 ["Text"]
       91 GETUPVAL                         R25 4
       92 GETTABLEKS                       R25 R25 K8 ["Tag"]
       94 GETUPVAL                         R26 5
       95 LOADK                            R27 K17 ["X-Fit"]
       96 JUMPIFNOT                        R16 ; [+2]
       97 LOADK                            R28 K18 ["State-Selected"]
       98 JUMP                             ; [+1]
       99 LOADK                            R28 K19 ["State-Default"]
      100 CALL                             R26 2 1
      101 SETTABLE                         R26 R24 R25
      102 CALL                             R22 2 1
      103 SETTABLEKS                       R22 R21 K11 ["Option"]
      105 CALL                             R18 3 1
      106 SETTABLE                         R18 R6 R14
      107 LENGTH                           R18 R1
      108 JUMPIFNOTLT                      R12 R18 ; [+29]
      110 MOVE                             R19 R14
      111 LOADK                            R20 K20 ["Separator"]
      112 CONCAT                           R18 R19 R20
      113 GETUPVAL                         R19 4
      114 GETTABLEKS                       R19 R19 K5 ["createElement"]
      116 LOADK                            R20 K6 ["Frame"]
      117 NEWTABLE                         R21 2 0
      119 MOVE                             R22 R7
      120 CALL                             R22 0 1
      121 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
      123 GETUPVAL                         R22 4
      124 GETTABLEKS                       R22 R22 K8 ["Tag"]
      126 LOADK                            R23 K21 ["Role-Surface X-Fit"]
      127 SETTABLE                         R23 R21 R22
      128 DUPTABLE                         R22 K23 [{"Divider"}]
      129 GETUPVAL                         R23 4
      130 GETTABLEKS                       R23 R23 K5 ["createElement"]
      132 LOADK                            R24 K6 ["Frame"]
      133 CALL                             R23 1 1
      134 SETTABLEKS                       R23 R22 K22 ["Divider"]
      136 CALL                             R19 3 1
      137 SETTABLE                         R19 R6 R18
      138 FORGLOOP                         R9 2 ; [-117]
      140 GETUPVAL                         R9 4
      141 GETTABLEKS                       R9 R9 K5 ["createElement"]
      143 LOADK                            R10 K6 ["Frame"]
      144 NEWTABLE                         R11 2 0
      146 GETUPVAL                         R12 4
      147 GETTABLEKS                       R12 R12 K8 ["Tag"]
      149 LOADK                            R13 K24 ["Component-RibbonSegmentedButton X-Fit"]
      150 SETTABLE                         R13 R11 R12
      151 GETTABLEKS                       R12 R0 K7 ["LayoutOrder"]
      153 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      155 DUPTABLE                         R12 K26 [{"SegmentedButton"}]
      156 GETUPVAL                         R13 4
      157 GETTABLEKS                       R13 R13 K5 ["createElement"]
      159 LOADK                            R14 K27 ["CanvasGroup"]
      160 NEWTABLE                         R15 1 0
      162 GETUPVAL                         R16 4
      163 GETTABLEKS                       R16 R16 K8 ["Tag"]
      165 LOADK                            R18 K28 ["X-Middle X-Fit X-Row data-testid=%*"]
      166 GETUPVAL                         R20 8
      167 GETTABLEKS                       R21 R0 K29 ["Uri"]
      169 CALL                             R20 1 1
      170 NAMECALL                         R18 R18 K30 ["format"]
      172 CALL                             R18 2 1
      173 MOVE                             R17 R18
      174 SETTABLE                         R17 R15 R16
      175 MOVE                             R16 R6
      176 CALL                             R13 3 1
      177 SETTABLEKS                       R13 R12 K25 ["SegmentedButton"]
      179 CALL                             R9 3 -1
      180 RETURN                           R9 -1

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
       22 GETTABLEKS                       R4 R4 K11 ["isActivationInput"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K9 ["Src"]
       29 GETTABLEKS                       R5 R5 K10 ["Util"]
       31 GETTABLEKS                       R5 R5 K12 ["uriToTestId"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K6 ["Packages"]
       38 GETTABLEKS                       R6 R6 K13 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K14 ["Styling"]
       43 GETTABLEKS                       R7 R6 K15 ["joinTags"]
       45 GETTABLEKS                       R8 R5 K16 ["ContextServices"]
       47 GETTABLEKS                       R9 R8 K17 ["Localization"]
       49 GETTABLEKS                       R10 R5 K10 ["Util"]
       51 GETTABLEKS                       R10 R10 K18 ["counter"]
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R0 K9 ["Src"]
       57 GETTABLEKS                       R12 R12 K19 ["Types"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R0 K9 ["Src"]
       64 GETTABLEKS                       R13 R13 K20 ["Components"]
       66 GETTABLEKS                       R13 R13 K21 ["ControlsView"]
       68 GETTABLEKS                       R13 R13 K22 ["getLocalizedField"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K5 [require]
       73 GETTABLEKS                       R14 R0 K9 ["Src"]
       75 GETTABLEKS                       R14 R14 K23 ["SharedFlags"]
       77 GETTABLEKS                       R14 R14 K24 ["getFFlagRibbonEnableKeyboardNavigation"]
       79 CALL                             R13 1 1
       80 DUPCLOSURE                       R14 K25 [PROTO_2]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R4
       90 RETURN                           R14 1
