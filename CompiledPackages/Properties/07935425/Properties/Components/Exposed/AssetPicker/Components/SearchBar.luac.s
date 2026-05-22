PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
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
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SearchBar"]
        2 LOADK                            R3 K1 ["PlaceholderText"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 1
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 2
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       20 DUPCLOSURE                       R5 K3 [PROTO_1]
       21 CAPTURE                          UPVAL U3
       22 NEWTABLE                         R6 0 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K4 ["locale"]
       27 SETLIST                          R6 R7 1 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 4
       31 GETUPVAL                         R6 5
       32 DUPTABLE                         R7 K8 [{"tag", "LayoutOrder", "Size"}]
       33 LOADK                            R8 K9 ["bg-action-standard radius-circle padding-x-small row align-y-center gap-xsmall"]
       34 SETTABLEKS                       R8 R7 K5 ["tag"]
       36 GETTABLEKS                       R8 R0 K10 ["layoutOrder"]
       38 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       40 GETTABLEKS                       R8 R0 K11 ["size"]
       42 SETTABLEKS                       R8 R7 K7 ["Size"]
       44 DUPTABLE                         R8 K14 [{"SearchIcon", "TextBox"}]
       45 GETUPVAL                         R9 4
       46 GETUPVAL                         R10 6
       47 DUPTABLE                         R11 K16 [{"LayoutOrder", "name", "size"}]
       48 MOVE                             R12 R2
       49 CALL                             R12 0 1
       50 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       52 GETUPVAL                         R12 7
       53 GETTABLEKS                       R12 R12 K17 ["Enums"]
       55 GETTABLEKS                       R12 R12 K18 ["IconName"]
       57 GETTABLEKS                       R12 R12 K19 ["MagnifyingGlass"]
       59 SETTABLEKS                       R12 R11 K15 ["name"]
       61 GETUPVAL                         R12 7
       62 GETTABLEKS                       R12 R12 K17 ["Enums"]
       64 GETTABLEKS                       R12 R12 K20 ["InputSize"]
       66 GETTABLEKS                       R12 R12 K21 ["XSmall"]
       68 SETTABLEKS                       R12 R11 K11 ["size"]
       70 CALL                             R9 2 1
       71 SETTABLEKS                       R9 R8 K12 ["SearchIcon"]
       73 GETUPVAL                         R9 4
       74 LOADK                            R10 K13 ["TextBox"]
       75 NEWTABLE                         R11 16 0
       77 MOVE                             R12 R2
       78 CALL                             R12 0 1
       79 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       81 GETIMPORT                        R12 K24 [UDim2.fromScale]
       83 LOADN                            R13 1
       84 LOADN                            R14 1
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K7 ["Size"]
       88 LOADN                            R12 1
       89 SETTABLEKS                       R12 R11 K25 ["BackgroundTransparency"]
       91 LOADN                            R12 0
       92 SETTABLEKS                       R12 R11 K26 ["BorderSizePixel"]
       94 LOADB                            R12 0
       95 SETTABLEKS                       R12 R11 K27 ["ClearTextOnFocus"]
       97 GETTABLEKS                       R12 R3 K28 ["Typography"]
       99 GETTABLEKS                       R12 R12 K29 ["BodySmall"]
      101 GETTABLEKS                       R12 R12 K30 ["Font"]
      103 SETTABLEKS                       R12 R11 K30 ["Font"]
      105 GETTABLEKS                       R12 R3 K28 ["Typography"]
      107 GETTABLEKS                       R12 R12 K29 ["BodySmall"]
      109 GETTABLEKS                       R12 R12 K31 ["LineHeight"]
      111 SETTABLEKS                       R12 R11 K31 ["LineHeight"]
      113 SETTABLEKS                       R4 R11 K32 ["PlaceholderText"]
      115 LOADK                            R12 K33 [""]
      116 SETTABLEKS                       R12 R11 K34 ["Text"]
      118 GETTABLEKS                       R12 R3 K28 ["Typography"]
      120 GETTABLEKS                       R12 R12 K29 ["BodySmall"]
      122 GETTABLEKS                       R12 R12 K35 ["FontSize"]
      124 SETTABLEKS                       R12 R11 K36 ["TextSize"]
      126 GETIMPORT                        R12 K40 [Enum.TextXAlignment.Left]
      128 SETTABLEKS                       R12 R11 K38 ["TextXAlignment"]
      130 GETTABLEKS                       R12 R3 K41 ["Color"]
      132 GETTABLEKS                       R12 R12 K42 ["Content"]
      134 GETTABLEKS                       R12 R12 K43 ["Default"]
      136 GETTABLEKS                       R12 R12 K44 ["Color3"]
      138 SETTABLEKS                       R12 R11 K45 ["TextColor3"]
      140 GETTABLEKS                       R12 R3 K41 ["Color"]
      142 GETTABLEKS                       R12 R12 K42 ["Content"]
      144 GETTABLEKS                       R12 R12 K43 ["Default"]
      146 GETTABLEKS                       R12 R12 K46 ["Transparency"]
      148 SETTABLEKS                       R12 R11 K47 ["TextTransparency"]
      150 SETTABLEKS                       R1 R11 K48 ["ref"]
      152 GETUPVAL                         R12 0
      153 GETTABLEKS                       R12 R12 K49 ["Change"]
      155 GETTABLEKS                       R12 R12 K34 ["Text"]
      157 GETTABLEKS                       R13 R0 K50 ["onTextBoxChanged"]
      159 SETTABLE                         R13 R11 R12
      160 CALL                             R9 2 1
      161 SETTABLEKS                       R9 R8 K13 ["TextBox"]
      163 CALL                             R5 3 -1
      164 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K5 ["Parent"]
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R2 K8 ["Foundation"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R2 K9 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R2 K10 ["ReactUtils"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R1 K11 ["Resources"]
       34 GETTABLEKS                       R7 R7 K12 ["Localization"]
       36 GETTABLEKS                       R7 R7 K13 ["Translator"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R3 K14 ["Icon"]
       41 GETTABLEKS                       R8 R3 K15 ["View"]
       43 GETTABLEKS                       R9 R5 K16 ["createNextOrder"]
       45 GETTABLEKS                       R10 R4 K17 ["createElement"]
       47 GETTABLEKS                       R11 R3 K18 ["Hooks"]
       49 GETTABLEKS                       R11 R11 K19 ["useTokens"]
       51 DUPCLOSURE                       R12 K20 [PROTO_2]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R11
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R3
       60 RETURN                           R12 1
