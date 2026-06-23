PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+17]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 JUMPIFNOTEQKNIL                  R0 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       12 LOADK                            R3 K1 ["Somehow, textInput is nil"]
       13 GETIMPORT                        R1 K3 [assert]
       15 CALL                             R1 2 0
       16 GETTABLEKS                       R1 R0 K4 ["focus"]
       18 CALL                             R1 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 2
       21 GETTABLEKS                       R0 R0 K0 ["current"]
       23 JUMPIFNOTEQKNIL                  R0 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       29 LOADK                            R3 K5 ["Somehow, textBox is nil"]
       30 GETIMPORT                        R1 K3 [assert]
       32 CALL                             R1 2 0
       33 NAMECALL                         R1 R0 K6 ["CaptureFocus"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

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
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["useEffect"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R5 0 0
       19 CALL                             R3 2 0
       20 GETUPVAL                         R3 2
       21 CALL                             R3 0 1
       22 GETUPVAL                         R4 3
       23 CALL                             R4 0 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       27 DUPCLOSURE                       R6 K3 [PROTO_1]
       28 CAPTURE                          UPVAL U4
       29 NEWTABLE                         R7 0 1
       31 GETUPVAL                         R8 4
       32 GETTABLEKS                       R8 R8 K4 ["locale"]
       34 SETLIST                          R7 R8 1 [1]
       36 CALL                             R5 2 1
       37 GETUPVAL                         R6 5
       38 GETUPVAL                         R7 6
       39 DUPTABLE                         R8 K8 [{"tag", "LayoutOrder", "Size"}]
       40 LOADK                            R9 K9 ["bg-action-standard radius-circle padding-x-small row align-y-center gap-xsmall"]
       41 SETTABLEKS                       R9 R8 K5 ["tag"]
       43 GETTABLEKS                       R9 R0 K10 ["layoutOrder"]
       45 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       47 GETTABLEKS                       R9 R0 K11 ["size"]
       49 SETTABLEKS                       R9 R8 K7 ["Size"]
       51 DUPTABLE                         R9 K15 [{"SearchIcon", "TextBoxWrapper", "TextBox"}]
       52 GETUPVAL                         R10 5
       53 GETUPVAL                         R11 7
       54 DUPTABLE                         R12 K17 [{"LayoutOrder", "name", "size"}]
       55 MOVE                             R13 R3
       56 CALL                             R13 0 1
       57 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       59 GETUPVAL                         R13 8
       60 GETTABLEKS                       R13 R13 K18 ["Enums"]
       62 GETTABLEKS                       R13 R13 K19 ["IconName"]
       64 GETTABLEKS                       R13 R13 K20 ["MagnifyingGlass"]
       66 SETTABLEKS                       R13 R12 K16 ["name"]
       68 GETUPVAL                         R13 8
       69 GETTABLEKS                       R13 R13 K18 ["Enums"]
       71 GETTABLEKS                       R13 R13 K21 ["InputSize"]
       73 GETTABLEKS                       R13 R13 K22 ["XSmall"]
       75 SETTABLEKS                       R13 R12 K11 ["size"]
       77 CALL                             R10 2 1
       78 SETTABLEKS                       R10 R9 K12 ["SearchIcon"]
       80 GETUPVAL                         R11 1
       81 CALL                             R11 0 1
       82 JUMPIFNOT                        R11 ; [+58]
       83 GETUPVAL                         R10 5
       84 GETUPVAL                         R11 6
       85 DUPTABLE                         R12 K23 [{"LayoutOrder", "tag"}]
       86 MOVE                             R13 R3
       87 CALL                             R13 0 1
       88 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
       90 LOADK                            R13 K24 ["size-full fill clip"]
       91 SETTABLEKS                       R13 R12 K5 ["tag"]
       93 DUPTABLE                         R13 K25 [{"TextBox"}]
       94 GETUPVAL                         R14 5
       95 GETUPVAL                         R15 9
       96 DUPTABLE                         R16 K33 [{"variant", "label", "text", "placeholder", "width", "size", "textBoxRef", "onChanged"}]
       97 GETUPVAL                         R17 8
       98 GETTABLEKS                       R17 R17 K18 ["Enums"]
      100 GETTABLEKS                       R17 R17 K34 ["InputVariant"]
      102 GETTABLEKS                       R17 R17 K35 ["Utility"]
      104 SETTABLEKS                       R17 R16 K26 ["variant"]
      106 LOADK                            R17 K36 [""]
      107 SETTABLEKS                       R17 R16 K27 ["label"]
      109 LOADK                            R17 K36 [""]
      110 SETTABLEKS                       R17 R16 K28 ["text"]
      112 SETTABLEKS                       R5 R16 K29 ["placeholder"]
      114 GETIMPORT                        R17 K39 [UDim.new]
      116 LOADN                            R18 1
      117 LOADN                            R19 0
      118 CALL                             R17 2 1
      119 SETTABLEKS                       R17 R16 K30 ["width"]
      121 GETUPVAL                         R17 8
      122 GETTABLEKS                       R17 R17 K18 ["Enums"]
      124 GETTABLEKS                       R17 R17 K21 ["InputSize"]
      126 GETTABLEKS                       R17 R17 K22 ["XSmall"]
      128 SETTABLEKS                       R17 R16 K11 ["size"]
      130 SETTABLEKS                       R2 R16 K31 ["textBoxRef"]
      132 GETTABLEKS                       R17 R0 K40 ["onTextChanged"]
      134 SETTABLEKS                       R17 R16 K32 ["onChanged"]
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K14 ["TextBox"]
      139 CALL                             R10 3 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R10
      142 SETTABLEKS                       R10 R9 K13 ["TextBoxWrapper"]
      144 GETUPVAL                         R11 1
      145 CALL                             R11 0 1
      146 JUMPIF                           R11 ; [+89]
      147 GETUPVAL                         R10 5
      148 LOADK                            R11 K14 ["TextBox"]
      149 NEWTABLE                         R12 16 0
      151 MOVE                             R13 R3
      152 CALL                             R13 0 1
      153 SETTABLEKS                       R13 R12 K6 ["LayoutOrder"]
      155 GETIMPORT                        R13 K43 [UDim2.fromScale]
      157 LOADN                            R14 1
      158 LOADN                            R15 1
      159 CALL                             R13 2 1
      160 SETTABLEKS                       R13 R12 K7 ["Size"]
      162 LOADN                            R13 1
      163 SETTABLEKS                       R13 R12 K44 ["BackgroundTransparency"]
      165 LOADN                            R13 0
      166 SETTABLEKS                       R13 R12 K45 ["BorderSizePixel"]
      168 LOADB                            R13 0
      169 SETTABLEKS                       R13 R12 K46 ["ClearTextOnFocus"]
      171 GETTABLEKS                       R13 R4 K47 ["Typography"]
      173 GETTABLEKS                       R13 R13 K48 ["BodySmall"]
      175 GETTABLEKS                       R13 R13 K49 ["Font"]
      177 SETTABLEKS                       R13 R12 K49 ["Font"]
      179 GETTABLEKS                       R13 R4 K47 ["Typography"]
      181 GETTABLEKS                       R13 R13 K48 ["BodySmall"]
      183 GETTABLEKS                       R13 R13 K50 ["LineHeight"]
      185 SETTABLEKS                       R13 R12 K50 ["LineHeight"]
      187 SETTABLEKS                       R5 R12 K51 ["PlaceholderText"]
      189 LOADK                            R13 K36 [""]
      190 SETTABLEKS                       R13 R12 K52 ["Text"]
      192 GETTABLEKS                       R13 R4 K47 ["Typography"]
      194 GETTABLEKS                       R13 R13 K48 ["BodySmall"]
      196 GETTABLEKS                       R13 R13 K53 ["FontSize"]
      198 SETTABLEKS                       R13 R12 K54 ["TextSize"]
      200 GETIMPORT                        R13 K58 [Enum.TextXAlignment.Left]
      202 SETTABLEKS                       R13 R12 K56 ["TextXAlignment"]
      204 GETTABLEKS                       R13 R4 K59 ["Color"]
      206 GETTABLEKS                       R13 R13 K60 ["Content"]
      208 GETTABLEKS                       R13 R13 K61 ["Default"]
      210 GETTABLEKS                       R13 R13 K62 ["Color3"]
      212 SETTABLEKS                       R13 R12 K63 ["TextColor3"]
      214 GETTABLEKS                       R13 R4 K59 ["Color"]
      216 GETTABLEKS                       R13 R13 K60 ["Content"]
      218 GETTABLEKS                       R13 R13 K61 ["Default"]
      220 GETTABLEKS                       R13 R13 K64 ["Transparency"]
      222 SETTABLEKS                       R13 R12 K65 ["TextTransparency"]
      224 SETTABLEKS                       R1 R12 K66 ["ref"]
      226 GETUPVAL                         R13 0
      227 GETTABLEKS                       R13 R13 K67 ["Change"]
      229 GETTABLEKS                       R13 R13 K52 ["Text"]
      231 GETTABLEKS                       R14 R0 K68 ["DEPRECATED_onTextBoxChanged"]
      233 SETTABLE                         R14 R12 R13
      234 CALL                             R10 2 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R10
      237 SETTABLEKS                       R10 R9 K14 ["TextBox"]
      239 CALL                             R6 3 -1
      240 RETURN                           R6 -1

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
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R8 R1 K14 ["Flags"]
       43 GETTABLEKS                       R8 R8 K15 ["getFFlagAssetPickerSearchByUrl"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R3 K16 ["Icon"]
       48 GETTABLEKS                       R9 R3 K17 ["TextInput"]
       50 GETTABLEKS                       R10 R3 K18 ["View"]
       52 GETTABLEKS                       R11 R5 K19 ["createNextOrder"]
       54 GETTABLEKS                       R12 R4 K20 ["createElement"]
       56 GETTABLEKS                       R13 R3 K21 ["Hooks"]
       58 GETTABLEKS                       R13 R13 K22 ["useTokens"]
       60 DUPCLOSURE                       R14 K23 [PROTO_2]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R9
       71 RETURN                           R14 1
