PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onTabChanged"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["tabs"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K1 ["id"]
       10 GETUPVAL                         R7 1
       11 GETUPVAL                         R8 2
       12 DUPTABLE                         R9 K7 [{"LayoutOrder", "size", "isChecked", "text", "onActivated"}]
       13 SETTABLEKS                       R4 R9 K2 ["LayoutOrder"]
       15 GETUPVAL                         R11 3
       16 GETTABLEKS                       R10 R11 K8 ["Small"]
       18 SETTABLEKS                       R10 R9 K3 ["size"]
       20 GETTABLEKS                       R11 R5 K1 ["id"]
       22 GETUPVAL                         R12 4
       23 JUMPIFEQ                         R11 R12 ; [+2]
       25 LOADB                            R10 0 +1
       26 LOADB                            R10 1
       27 SETTABLEKS                       R10 R9 K4 ["isChecked"]
       29 GETTABLEKS                       R10 R5 K5 ["text"]
       31 SETTABLEKS                       R10 R9 K5 ["text"]
       33 NEWCLOSURE                       R10 P0
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          VAL R5
       36 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       38 CALL                             R7 2 1
       39 SETTABLE                         R7 R0 R6
       40 FORGLOOP                         R1 2 ; [-33]
       42 RETURN                           R0 1

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
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K4 ["onSearchChanged"]
        9 GETTABLEKS                       R2 R0 K3 ["Text"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["enabled"]
        3 JUMPIF                           R0 ; [+16]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["current"]
        7 JUMPIFNOTEQKNIL                  R0 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       13 LOADK                            R3 K2 ["textBox somehow nil"]
       14 GETIMPORT                        R1 K4 [assert]
       16 CALL                             R1 2 0
       17 NAMECALL                         R1 R0 K5 ["CaptureFocus"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R0 R1 K6 ["toggle"]
       23 CALL                             R0 0 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useRef"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["useSignalState"]
       10 GETTABLEKS                       R4 R0 K2 ["getCurrentTab"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K3 ["useMemo"]
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
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K3 ["useMemo"]
       35 DUPCLOSURE                       R6 K6 [PROTO_2]
       36 CAPTURE                          UPVAL U6
       37 NEWTABLE                         R7 0 1
       39 GETUPVAL                         R9 6
       40 GETTABLEKS                       R8 R9 K7 ["locale"]
       42 SETLIST                          R7 R8 1 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R6 R7 K8 ["useCallback"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R8 0 1
       52 GETTABLEKS                       R9 R0 K9 ["onSearchChanged"]
       54 SETLIST                          R8 R9 1 [1]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R7 R8 K8 ["useCallback"]
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
      103 DUPTABLE                         R16 K26 [{"tag", "LayoutOrder", "Visible"}]
      104 LOADK                            R17 K27 ["row align-x-left align-y-center gap-xsmall auto-x size-0-full"]
      105 SETTABLEKS                       R17 R16 K10 ["tag"]
      107 MOVE                             R17 R8
      108 CALL                             R17 0 1
      109 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      111 GETTABLEKS                       R18 R1 K15 ["enabled"]
      113 NOT                              R17 R18
      114 SETTABLEKS                       R17 R16 K25 ["Visible"]
      116 MOVE                             R17 R4
      117 CALL                             R14 3 1
      118 SETTABLEKS                       R14 R13 K20 ["Tabs"]
      120 GETUPVAL                         R14 3
      121 GETUPVAL                         R15 9
      122 DUPTABLE                         R16 K26 [{"tag", "LayoutOrder", "Visible"}]
      123 LOADK                            R17 K28 ["size-0-600 fill bg-surface-300 radius-circle padding-x-small"]
      124 SETTABLEKS                       R17 R16 K10 ["tag"]
      126 MOVE                             R17 R8
      127 CALL                             R17 0 1
      128 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      130 GETTABLEKS                       R17 R1 K15 ["enabled"]
      132 SETTABLEKS                       R17 R16 K25 ["Visible"]
      134 DUPTABLE                         R17 K30 [{"TextBox"}]
      135 GETUPVAL                         R18 3
      136 LOADK                            R19 K29 ["TextBox"]
      137 NEWTABLE                         R20 16 0
      139 GETIMPORT                        R21 K33 [UDim2.fromScale]
      141 LOADN                            R22 1
      142 LOADN                            R23 1
      143 CALL                             R21 2 1
      144 SETTABLEKS                       R21 R20 K11 ["Size"]
      146 LOADN                            R21 1
      147 SETTABLEKS                       R21 R20 K34 ["BackgroundTransparency"]
      149 LOADN                            R21 0
      150 SETTABLEKS                       R21 R20 K35 ["BorderSizePixel"]
      152 LOADB                            R21 0
      153 SETTABLEKS                       R21 R20 K36 ["ClearTextOnFocus"]
      155 GETTABLEKS                       R23 R9 K37 ["Typography"]
      157 GETTABLEKS                       R22 R23 K38 ["BodySmall"]
      159 GETTABLEKS                       R21 R22 K39 ["Font"]
      161 SETTABLEKS                       R21 R20 K39 ["Font"]
      163 GETTABLEKS                       R23 R9 K37 ["Typography"]
      165 GETTABLEKS                       R22 R23 K38 ["BodySmall"]
      167 GETTABLEKS                       R21 R22 K40 ["LineHeight"]
      169 SETTABLEKS                       R21 R20 K40 ["LineHeight"]
      171 GETTABLEKS                       R21 R5 K41 ["PlaceholderText"]
      173 SETTABLEKS                       R21 R20 K41 ["PlaceholderText"]
      175 LOADK                            R21 K42 [""]
      176 SETTABLEKS                       R21 R20 K43 ["Text"]
      178 GETTABLEKS                       R23 R9 K37 ["Typography"]
      180 GETTABLEKS                       R22 R23 K38 ["BodySmall"]
      182 GETTABLEKS                       R21 R22 K44 ["FontSize"]
      184 SETTABLEKS                       R21 R20 K45 ["TextSize"]
      186 GETIMPORT                        R21 K49 [Enum.TextXAlignment.Left]
      188 SETTABLEKS                       R21 R20 K47 ["TextXAlignment"]
      190 GETTABLEKS                       R24 R9 K50 ["Color"]
      192 GETTABLEKS                       R23 R24 K51 ["Content"]
      194 GETTABLEKS                       R22 R23 K52 ["Default"]
      196 GETTABLEKS                       R21 R22 K53 ["Color3"]
      198 SETTABLEKS                       R21 R20 K54 ["TextColor3"]
      200 GETTABLEKS                       R24 R9 K50 ["Color"]
      202 GETTABLEKS                       R23 R24 K51 ["Content"]
      204 GETTABLEKS                       R22 R23 K52 ["Default"]
      206 GETTABLEKS                       R21 R22 K55 ["Transparency"]
      208 SETTABLEKS                       R21 R20 K56 ["TextTransparency"]
      210 SETTABLEKS                       R2 R20 K57 ["ref"]
      212 GETUPVAL                         R23 1
      213 GETTABLEKS                       R22 R23 K58 ["Change"]
      215 GETTABLEKS                       R21 R22 K43 ["Text"]
      217 SETTABLE                         R6 R20 R21
      218 CALL                             R18 2 1
      219 SETTABLEKS                       R18 R17 K29 ["TextBox"]
      221 CALL                             R14 3 1
      222 SETTABLEKS                       R14 R13 K21 ["SearchBar"]
      224 GETUPVAL                         R14 3
      225 GETUPVAL                         R15 9
      226 DUPTABLE                         R16 K59 [{"tag", "LayoutOrder"}]
      227 NEWTABLE                         R17 2 0
      229 GETTABLEKS                       R19 R1 K15 ["enabled"]
      231 NOT                              R18 R19
      232 SETTABLEKS                       R18 R17 K60 ["size-0-full fill"]
      234 GETTABLEKS                       R18 R1 K15 ["enabled"]
      236 SETTABLEKS                       R18 R17 K61 ["size-100-full"]
      238 SETTABLEKS                       R17 R16 K10 ["tag"]
      240 MOVE                             R17 R8
      241 CALL                             R17 0 1
      242 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      244 DUPTABLE                         R17 K63 [{"SizeConstraint"}]
      245 GETTABLEKS                       R19 R1 K15 ["enabled"]
      247 NOT                              R18 R19
      248 JUMPIFNOT                        R18 ; [+14]
      249 GETUPVAL                         R18 3
      250 LOADK                            R19 K64 ["UISizeConstraint"]
      251 DUPTABLE                         R20 K66 [{"MinSize"}]
      252 GETIMPORT                        R21 K69 [Vector2.new]
      254 GETTABLEKS                       R23 R9 K11 ["Size"]
      256 GETTABLEKS                       R22 R23 K70 ["Size_200"]
      258 LOADN                            R23 0
      259 CALL                             R21 2 1
      260 SETTABLEKS                       R21 R20 K65 ["MinSize"]
      262 CALL                             R18 2 1
      263 SETTABLEKS                       R18 R17 K62 ["SizeConstraint"]
      265 CALL                             R14 3 1
      266 SETTABLEKS                       R14 R13 K22 ["Gap"]
      268 GETUPVAL                         R14 3
      269 GETUPVAL                         R15 4
      270 DUPTABLE                         R16 K75 [{"LayoutOrder", "isChecked", "leading", "text", "size", "onActivated"}]
      271 MOVE                             R17 R8
      272 CALL                             R17 0 1
      273 SETTABLEKS                       R17 R16 K12 ["LayoutOrder"]
      275 GETTABLEKS                       R17 R1 K15 ["enabled"]
      277 SETTABLEKS                       R17 R16 K71 ["isChecked"]
      279 DUPTABLE                         R17 K78 [{"iconName", "isCircular"}]
      280 LOADK                            R18 K79 ["icons/common/search"]
      281 SETTABLEKS                       R18 R17 K76 ["iconName"]
      283 LOADB                            R18 1
      284 SETTABLEKS                       R18 R17 K77 ["isCircular"]
      286 SETTABLEKS                       R17 R16 K72 ["leading"]
      288 GETTABLEKS                       R17 R5 K80 ["All"]
      290 SETTABLEKS                       R17 R16 K73 ["text"]
      292 GETUPVAL                         R20 10
      293 GETTABLEKS                       R19 R20 K81 ["Enums"]
      295 GETTABLEKS                       R18 R19 K82 ["ChipSize"]
      297 GETTABLEKS                       R17 R18 K83 ["Small"]
      299 SETTABLEKS                       R17 R16 K18 ["size"]
      301 SETTABLEKS                       R7 R16 K74 ["onActivated"]
      303 CALL                             R14 2 1
      304 SETTABLEKS                       R14 R13 K23 ["SearchButton"]
      306 CALL                             R10 3 -1
      307 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K4 ["Parent"]
       13 GETTABLEKS                       R3 R4 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["PropertyEditorTypes"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K4 ["Parent"]
       25 GETTABLEKS                       R5 R6 K9 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K4 ["Parent"]
       32 GETTABLEKS                       R6 R7 K10 ["ReactUtils"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K11 ["Signals"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R1 K12 ["SignalsReact"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R11 R0 K13 ["Resources"]
       49 GETTABLEKS                       R10 R11 K14 ["Localization"]
       51 GETTABLEKS                       R9 R10 K15 ["Translator"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R2 K16 ["Chip"]
       56 GETTABLEKS                       R11 R2 K17 ["Enums"]
       58 GETTABLEKS                       R10 R11 K18 ["ChipSize"]
       60 GETTABLEKS                       R11 R2 K19 ["View"]
       62 GETTABLEKS                       R12 R5 K20 ["createNextOrder"]
       64 GETTABLEKS                       R13 R4 K21 ["createElement"]
       66 GETTABLEKS                       R15 R2 K22 ["Hooks"]
       68 GETTABLEKS                       R14 R15 K23 ["useTokens"]
       70 GETTABLEKS                       R15 R5 K24 ["useToggleState"]
       72 DUPCLOSURE                       R16 K25 [PROTO_5]
       73 CAPTURE                          VAL R15
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R2
       84 RETURN                           R16 1
