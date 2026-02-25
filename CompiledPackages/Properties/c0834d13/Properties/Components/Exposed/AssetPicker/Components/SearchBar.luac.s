PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        9 LOADK                            R3 K1 ["Somehow, textBox is nil"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 NAMECALL                         R1 R0 K4 ["CaptureFocus"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 1
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 2
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 3
       18 GETUPVAL                         R5 4
       19 DUPTABLE                         R6 K5 [{"tag", "LayoutOrder", "Size"}]
       20 LOADK                            R7 K6 ["bg-surface-300 row align-y-center gap-xsmall radius-circle padding-x-small"]
       21 SETTABLEKS                       R7 R6 K2 ["tag"]
       23 GETTABLEKS                       R7 R0 K7 ["layoutOrder"]
       25 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       27 GETTABLEKS                       R7 R0 K8 ["size"]
       29 SETTABLEKS                       R7 R6 K4 ["Size"]
       31 DUPTABLE                         R7 K11 [{"SearchIcon", "TextBox"}]
       32 GETUPVAL                         R8 3
       33 GETUPVAL                         R9 5
       34 DUPTABLE                         R10 K13 [{"LayoutOrder", "name", "size"}]
       35 MOVE                             R11 R2
       36 CALL                             R11 0 1
       37 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       39 GETUPVAL                         R14 6
       40 GETTABLEKS                       R13 R14 K14 ["Enums"]
       42 GETTABLEKS                       R12 R13 K15 ["IconName"]
       44 GETTABLEKS                       R11 R12 K16 ["MagnifyingGlass"]
       46 SETTABLEKS                       R11 R10 K12 ["name"]
       48 GETUPVAL                         R14 6
       49 GETTABLEKS                       R13 R14 K14 ["Enums"]
       51 GETTABLEKS                       R12 R13 K17 ["InputSize"]
       53 GETTABLEKS                       R11 R12 K18 ["XSmall"]
       55 SETTABLEKS                       R11 R10 K8 ["size"]
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K9 ["SearchIcon"]
       60 GETUPVAL                         R8 3
       61 LOADK                            R9 K10 ["TextBox"]
       62 NEWTABLE                         R10 16 0
       64 MOVE                             R11 R2
       65 CALL                             R11 0 1
       66 SETTABLEKS                       R11 R10 K3 ["LayoutOrder"]
       68 GETIMPORT                        R11 K21 [UDim2.fromScale]
       70 LOADN                            R12 1
       71 LOADN                            R13 1
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K4 ["Size"]
       75 LOADN                            R11 1
       76 SETTABLEKS                       R11 R10 K22 ["BackgroundTransparency"]
       78 LOADN                            R11 0
       79 SETTABLEKS                       R11 R10 K23 ["BorderSizePixel"]
       81 LOADB                            R11 0
       82 SETTABLEKS                       R11 R10 K24 ["ClearTextOnFocus"]
       84 GETTABLEKS                       R13 R3 K25 ["Typography"]
       86 GETTABLEKS                       R12 R13 K26 ["BodySmall"]
       88 GETTABLEKS                       R11 R12 K27 ["Font"]
       90 SETTABLEKS                       R11 R10 K27 ["Font"]
       92 GETTABLEKS                       R13 R3 K25 ["Typography"]
       94 GETTABLEKS                       R12 R13 K26 ["BodySmall"]
       96 GETTABLEKS                       R11 R12 K28 ["LineHeight"]
       98 SETTABLEKS                       R11 R10 K28 ["LineHeight"]
      100 LOADK                            R11 K29 ["name, assetId, ..."]
      101 SETTABLEKS                       R11 R10 K30 ["PlaceholderText"]
      103 LOADK                            R11 K31 [""]
      104 SETTABLEKS                       R11 R10 K32 ["Text"]
      106 GETTABLEKS                       R13 R3 K25 ["Typography"]
      108 GETTABLEKS                       R12 R13 K26 ["BodySmall"]
      110 GETTABLEKS                       R11 R12 K33 ["FontSize"]
      112 SETTABLEKS                       R11 R10 K34 ["TextSize"]
      114 GETIMPORT                        R11 K38 [Enum.TextXAlignment.Left]
      116 SETTABLEKS                       R11 R10 K36 ["TextXAlignment"]
      118 GETTABLEKS                       R14 R3 K39 ["Color"]
      120 GETTABLEKS                       R13 R14 K40 ["Content"]
      122 GETTABLEKS                       R12 R13 K41 ["Default"]
      124 GETTABLEKS                       R11 R12 K42 ["Color3"]
      126 SETTABLEKS                       R11 R10 K43 ["TextColor3"]
      128 GETTABLEKS                       R14 R3 K39 ["Color"]
      130 GETTABLEKS                       R13 R14 K40 ["Content"]
      132 GETTABLEKS                       R12 R13 K41 ["Default"]
      134 GETTABLEKS                       R11 R12 K44 ["Transparency"]
      136 SETTABLEKS                       R11 R10 K45 ["TextTransparency"]
      138 SETTABLEKS                       R1 R10 K46 ["ref"]
      140 GETUPVAL                         R13 0
      141 GETTABLEKS                       R12 R13 K47 ["Change"]
      143 GETTABLEKS                       R11 R12 K32 ["Text"]
      145 GETTABLEKS                       R12 R0 K48 ["onTextBoxChanged"]
      147 SETTABLE                         R12 R10 R11
      148 CALL                             R8 2 1
      149 SETTABLEKS                       R8 R7 K10 ["TextBox"]
      151 CALL                             R4 3 -1
      152 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K10 ["Icon"]
       26 GETTABLEKS                       R6 R2 K11 ["View"]
       28 GETTABLEKS                       R7 R4 K12 ["createNextOrder"]
       30 GETTABLEKS                       R8 R3 K13 ["createElement"]
       32 GETTABLEKS                       R10 R2 K14 ["Hooks"]
       34 GETTABLEKS                       R9 R10 K15 ["useTokens"]
       36 DUPCLOSURE                       R10 K16 [PROTO_1]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R9
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R2
       44 RETURN                           R10 1
