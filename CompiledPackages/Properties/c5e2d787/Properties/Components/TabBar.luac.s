PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onTabChanged"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["tabs"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R9 R5 K1 ["id"]
       10 FASTCALL1                        TYPEOF R9 ; [+2]
       11 GETIMPORT                        R8 K3 [typeof]
       13 CALL                             R8 1 1
       14 JUMPIFEQKS                       R8 K4 ["string"] ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       20 LOADK                            R8 K5 ["Tab ids must be strings"]
       21 GETIMPORT                        R6 K7 [assert]
       23 CALL                             R6 2 0
       24 GETTABLEKS                       R6 R5 K1 ["id"]
       26 GETUPVAL                         R7 1
       27 GETUPVAL                         R8 2
       28 DUPTABLE                         R9 K13 [{"LayoutOrder", "size", "isChecked", "text", "onActivated"}]
       29 SETTABLEKS                       R4 R9 K8 ["LayoutOrder"]
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R10 R10 K14 ["Small"]
       34 SETTABLEKS                       R10 R9 K9 ["size"]
       36 GETTABLEKS                       R11 R5 K1 ["id"]
       38 GETUPVAL                         R12 4
       39 JUMPIFEQ                         R11 R12 ; [+2]
       41 LOADB                            R10 0 +1
       42 LOADB                            R10 1
       43 SETTABLEKS                       R10 R9 K10 ["isChecked"]
       45 GETTABLEKS                       R10 R5 K11 ["text"]
       47 SETTABLEKS                       R10 R9 K11 ["text"]
       49 NEWCLOSURE                       R10 P0
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R10 R9 K12 ["onActivated"]
       54 CALL                             R7 2 1
       55 SETTABLE                         R7 R0 R6
       56 FORGLOOP                         R1 2 ; [-49]
       58 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"All", "PlaceholderText"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["Tabs"]
        3 LOADK                            R4 K0 ["All"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["All"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["SearchBar"]
       11 LOADK                            R4 K1 ["PlaceholderText"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["PlaceholderText"]
       17 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["searching meowmeow: "]
        3 GETTABLEKS                       R3 R0 K3 ["Text"]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["onSearchChanged"]
        9 GETTABLEKS                       R2 R0 K3 ["Text"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+16]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["current"]
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       13 LOADK                            R3 K2 ["textBox somehow nil"]
       14 GETIMPORT                        R1 K4 [assert]
       16 CALL                             R1 2 0
       17 NAMECALL                         R1 R0 K5 ["CaptureFocus"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K6 ["toggle"]
       23 CALL                             R0 0 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["useSignalState"]
       10 GETTABLEKS                       R4 R0 K2 ["getCurrentTab"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R6 0 3
       24 GETTABLEKS                       R7 R0 K4 ["tabs"]
       26 MOVE                             R8 R3
       27 GETTABLEKS                       R9 R0 K5 ["onTabChanged"]
       29 SETLIST                          R6 R7 3 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       35 DUPCLOSURE                       R6 K6 [PROTO_2]
       36 CAPTURE                          UPVAL U6
       37 NEWTABLE                         R7 0 1
       39 GETUPVAL                         R8 6
       40 GETTABLEKS                       R8 R8 K7 ["locale"]
       42 SETLIST                          R7 R8 1 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K8 ["useCallback"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R8 0 1
       52 GETTABLEKS                       R9 R0 K9 ["onSearchChanged"]
       54 SETLIST                          R8 R9 1 [1]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R7 R7 K8 ["useCallback"]
       60 NEWCLOSURE                       R8 P3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 NEWTABLE                         R9 0 1
       65 MOVE                             R10 R1
       66 SETLIST                          R9 R10 1 [1]
       68 CALL                             R7 2 1
       69 GETUPVAL                         R8 7
       70 CALL                             R8 0 1
       71 GETUPVAL                         R9 8
       72 CALL                             R9 0 1
       73 GETUPVAL                         R10 3
       74 GETUPVAL                         R11 9
       75 DUPTABLE                         R12 K13 [{"tag", "Size", "LayoutOrder"}]
       76 NEWTABLE                         R13 4 0
       78 LOADB                            R14 1
       79 SETTABLEKS                       R14 R13 K14 ["row align-x-left align-y-center padding-right-small"]
       81 GETTABLEKS                       R14 R1 K15 ["enabled"]
       83 SETTABLEKS                       R14 R13 K16 ["padding-left-small"]
       85 GETTABLEKS                       R15 R1 K15 ["enabled"]
       87 NOT                              R14 R15
       88 SETTABLEKS                       R14 R13 K17 ["padding-left-xxlarge"]
       90 SETTABLEKS                       R13 R12 K10 ["tag"]
       92 GETTABLEKS                       R13 R0 K18 ["size"]
       94 SETTABLEKS                       R13 R12 K11 ["Size"]
       96 GETTABLEKS                       R13 R0 K19 ["layoutOrder"]
       98 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      100 DUPTABLE                         R13 K24 [{"Tabs", "SearchBar", "Gap", "SearchButton"}]
      101 GETUPVAL                         R14 3
      102 GETUPVAL                         R15 9
      103 DUPTABLE                         R16 K27 [{["tag"] = "row align-x-left align-y-center gap-xsmall size-0-full auto-x", ["LayoutOrder"], ["Visible"]}]
      104 MOVE                             R17 R8
      105 CALL                             R17 0 1
      106 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      108 GETTABLEKS                       R18 R1 K15 ["enabled"]
      110 NOT                              R17 R18
      111 SETTABLEKS                       R17 R16 K26 ["Visible"]
      113 MOVE                             R17 R4
      114 CALL                             R14 3 1
      115 SETTABLEKS                       R14 R13 K20 ["Tabs"]
      117 GETUPVAL                         R14 3
      118 GETUPVAL                         R15 9
      119 DUPTABLE                         R16 K29 [{["tag"] = "fill size-0-600 padding-x-small radius-circle bg-surface-300", ["LayoutOrder"], ["Visible"]}]
      120 MOVE                             R17 R8
      121 CALL                             R17 0 1
      122 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      124 GETTABLEKS                       R17 R1 K15 ["enabled"]
      126 SETTABLEKS                       R17 R16 K26 ["Visible"]
      128 DUPTABLE                         R17 K31 [{"TextBox"}]
      129 GETUPVAL                         R18 3
      130 LOADK                            R19 K30 ["TextBox"]
      131 NEWTABLE                         R20 16 0
      133 GETIMPORT                        R21 K34 [UDim2.fromScale]
      135 LOADN                            R22 1
      136 LOADN                            R23 1
      137 CALL                             R21 2 1
      138 SETTABLEKS                       R21 R20 K11 ["Size"]
      140 LOADN                            R21 1
      141 SETTABLEKS                       R21 R20 K35 ["BackgroundTransparency"]
      143 LOADN                            R21 0
      144 SETTABLEKS                       R21 R20 K36 ["BorderSizePixel"]
      146 LOADB                            R21 0
      147 SETTABLEKS                       R21 R20 K37 ["ClearTextOnFocus"]
      149 GETTABLEKS                       R21 R9 K38 ["Typography"]
      151 GETTABLEKS                       R21 R21 K39 ["BodySmall"]
      153 GETTABLEKS                       R21 R21 K40 ["Font"]
      155 SETTABLEKS                       R21 R20 K40 ["Font"]
      157 GETTABLEKS                       R21 R9 K38 ["Typography"]
      159 GETTABLEKS                       R21 R21 K39 ["BodySmall"]
      161 GETTABLEKS                       R21 R21 K41 ["LineHeight"]
      163 SETTABLEKS                       R21 R20 K41 ["LineHeight"]
      165 GETTABLEKS                       R21 R5 K42 ["PlaceholderText"]
      167 SETTABLEKS                       R21 R20 K42 ["PlaceholderText"]
      169 LOADK                            R21 K43 [""]
      170 SETTABLEKS                       R21 R20 K44 ["Text"]
      172 GETTABLEKS                       R21 R9 K38 ["Typography"]
      174 GETTABLEKS                       R21 R21 K39 ["BodySmall"]
      176 GETTABLEKS                       R21 R21 K45 ["FontSize"]
      178 SETTABLEKS                       R21 R20 K46 ["TextSize"]
      180 GETIMPORT                        R21 K50 [Enum.TextXAlignment.Left]
      182 SETTABLEKS                       R21 R20 K48 ["TextXAlignment"]
      184 GETTABLEKS                       R21 R9 K51 ["Color"]
      186 GETTABLEKS                       R21 R21 K52 ["Content"]
      188 GETTABLEKS                       R21 R21 K53 ["Default"]
      190 GETTABLEKS                       R21 R21 K54 ["Color3"]
      192 SETTABLEKS                       R21 R20 K55 ["TextColor3"]
      194 GETTABLEKS                       R21 R9 K51 ["Color"]
      196 GETTABLEKS                       R21 R21 K52 ["Content"]
      198 GETTABLEKS                       R21 R21 K53 ["Default"]
      200 GETTABLEKS                       R21 R21 K56 ["Transparency"]
      202 SETTABLEKS                       R21 R20 K57 ["TextTransparency"]
      204 SETTABLEKS                       R2 R20 K58 ["ref"]
      206 GETUPVAL                         R21 1
      207 GETTABLEKS                       R21 R21 K59 ["Change"]
      209 GETTABLEKS                       R21 R21 K44 ["Text"]
      211 SETTABLE                         R6 R20 R21
      212 CALL                             R18 2 1
      213 SETTABLEKS                       R18 R17 K30 ["TextBox"]
      215 CALL                             R14 3 1
      216 SETTABLEKS                       R14 R13 K21 ["SearchBar"]
      218 GETUPVAL                         R14 3
      219 GETUPVAL                         R15 9
      220 DUPTABLE                         R16 K60 [{"tag", "LayoutOrder"}]
      221 NEWTABLE                         R17 2 0
      223 GETTABLEKS                       R19 R1 K15 ["enabled"]
      225 NOT                              R18 R19
      226 SETTABLEKS                       R18 R17 K61 ["fill size-0-full"]
      228 GETTABLEKS                       R18 R1 K15 ["enabled"]
      230 SETTABLEKS                       R18 R17 K62 ["size-100-full"]
      232 SETTABLEKS                       R17 R16 K10 ["tag"]
      234 MOVE                             R17 R8
      235 CALL                             R17 0 1
      236 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      238 DUPTABLE                         R17 K64 [{"SizeConstraint"}]
      239 GETTABLEKS                       R19 R1 K15 ["enabled"]
      241 NOT                              R18 R19
      242 JUMPIFNOT                        R18 ; [+14]
      243 GETUPVAL                         R18 3
      244 LOADK                            R19 K65 ["UISizeConstraint"]
      245 DUPTABLE                         R20 K67 [{"MinSize"}]
      246 GETIMPORT                        R21 K70 [Vector2.new]
      248 GETTABLEKS                       R22 R9 K11 ["Size"]
      250 GETTABLEKS                       R22 R22 K71 ["Size_200"]
      252 LOADN                            R23 0
      253 CALL                             R21 2 1
      254 SETTABLEKS                       R21 R20 K66 ["MinSize"]
      256 CALL                             R18 2 1
      257 SETTABLEKS                       R18 R17 K63 ["SizeConstraint"]
      259 CALL                             R14 3 1
      260 SETTABLEKS                       R14 R13 K22 ["Gap"]
      262 GETUPVAL                         R14 3
      263 GETUPVAL                         R15 4
      264 DUPTABLE                         R16 K76 [{"LayoutOrder", "isChecked", "leading", "text", "size", "onActivated"}]
      265 MOVE                             R17 R8
      266 CALL                             R17 0 1
      267 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      269 GETTABLEKS                       R17 R1 K15 ["enabled"]
      271 SETTABLEKS                       R17 R16 K72 ["isChecked"]
      273 DUPTABLE                         R17 K81 [{["iconName"] = "icons/common/search", ["isCircular"] = True}]
      274 SETTABLEKS                       R17 R16 K73 ["leading"]
      276 GETTABLEKS                       R17 R5 K82 ["All"]
      278 SETTABLEKS                       R17 R16 K74 ["text"]
      280 GETUPVAL                         R17 10
      281 GETTABLEKS                       R17 R17 K83 ["Enums"]
      283 GETTABLEKS                       R17 R17 K84 ["ChipSize"]
      285 GETTABLEKS                       R17 R17 K85 ["Small"]
      287 SETTABLEKS                       R17 R16 K18 ["size"]
      289 SETTABLEKS                       R7 R16 K75 ["onActivated"]
      291 CALL                             R14 2 1
      292 SETTABLEKS                       R14 R13 K23 ["SearchButton"]
      294 CALL                             R10 3 -1
      295 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K9 ["ReactUtils"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K10 ["Signals"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K11 ["SignalsReact"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K12 ["Components"]
       44 GETTABLEKS                       R8 R8 K13 ["Contexts"]
       46 GETTABLEKS                       R8 R8 K14 ["TabsContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K15 ["Resources"]
       53 GETTABLEKS                       R9 R9 K16 ["Localization"]
       55 GETTABLEKS                       R9 R9 K17 ["Translator"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R2 K18 ["Chip"]
       60 GETTABLEKS                       R10 R2 K19 ["Enums"]
       62 GETTABLEKS                       R10 R10 K20 ["ChipSize"]
       64 GETTABLEKS                       R11 R2 K21 ["View"]
       66 GETTABLEKS                       R12 R4 K22 ["createNextOrder"]
       68 GETTABLEKS                       R13 R3 K23 ["createElement"]
       70 GETTABLEKS                       R14 R2 K24 ["Hooks"]
       72 GETTABLEKS                       R14 R14 K25 ["useTokens"]
       74 GETTABLEKS                       R15 R4 K26 ["useToggleState"]
       76 DUPCLOSURE                       R16 K27 [PROTO_5]
       77 CAPTURE                          VAL R15
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R2
       88 RETURN                           R16 1
