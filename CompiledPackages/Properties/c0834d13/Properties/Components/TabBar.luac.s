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
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R12 R13 K9 ["currentTab"]
       25 JUMPIFEQ                         R11 R12 ; [+2]
       27 LOADB                            R10 0 +1
       28 LOADB                            R10 1
       29 SETTABLEKS                       R10 R9 K4 ["isChecked"]
       31 GETTABLEKS                       R10 R5 K5 ["text"]
       33 SETTABLEKS                       R10 R9 K5 ["text"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       40 CALL                             R7 2 1
       41 SETTABLE                         R7 R0 R6
       42 FORGLOOP                         R1 2 ; [-35]
       44 RETURN                           R0 1

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
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 NEWTABLE                         R5 0 3
       17 GETTABLEKS                       R6 R0 K2 ["tabs"]
       19 GETTABLEKS                       R7 R0 K3 ["currentTab"]
       21 GETTABLEKS                       R8 R0 K4 ["onTabChanged"]
       23 SETLIST                          R5 R6 3 [1]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       29 DUPCLOSURE                       R5 K5 [PROTO_2]
       30 CAPTURE                          UPVAL U5
       31 NEWTABLE                         R6 0 1
       33 GETUPVAL                         R8 5
       34 GETTABLEKS                       R7 R8 K6 ["locale"]
       36 SETLIST                          R6 R7 1 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R5 R6 K7 ["useCallback"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R7 0 1
       46 GETTABLEKS                       R8 R0 K8 ["onSearchChanged"]
       48 SETLIST                          R7 R8 1 [1]
       50 CALL                             R5 2 1
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R6 R7 K7 ["useCallback"]
       54 NEWCLOSURE                       R7 P3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R8 0 1
       59 MOVE                             R9 R1
       60 SETLIST                          R8 R9 1 [1]
       62 CALL                             R6 2 1
       63 GETUPVAL                         R7 6
       64 CALL                             R7 0 1
       65 GETUPVAL                         R8 7
       66 CALL                             R8 0 1
       67 GETUPVAL                         R9 2
       68 GETUPVAL                         R10 8
       69 DUPTABLE                         R11 K12 [{"tag", "Size", "LayoutOrder"}]
       70 NEWTABLE                         R12 4 0
       72 LOADB                            R13 1
       73 SETTABLEKS                       R13 R12 K13 ["row align-x-left align-y-center padding-right-small"]
       75 GETTABLEKS                       R13 R1 K14 ["enabled"]
       77 SETTABLEKS                       R13 R12 K15 ["padding-left-small"]
       79 GETTABLEKS                       R14 R1 K14 ["enabled"]
       81 NOT                              R13 R14
       82 SETTABLEKS                       R13 R12 K16 ["padding-left-xxlarge"]
       84 SETTABLEKS                       R12 R11 K9 ["tag"]
       86 GETTABLEKS                       R12 R0 K17 ["size"]
       88 SETTABLEKS                       R12 R11 K10 ["Size"]
       90 GETTABLEKS                       R12 R0 K18 ["layoutOrder"]
       92 SETTABLEKS                       R12 R11 K11 ["LayoutOrder"]
       94 DUPTABLE                         R12 K23 [{"Tabs", "SearchBar", "Gap", "SearchButton"}]
       95 GETUPVAL                         R13 2
       96 GETUPVAL                         R14 8
       97 DUPTABLE                         R15 K25 [{"tag", "LayoutOrder", "Visible"}]
       98 LOADK                            R16 K26 ["row align-x-left align-y-center gap-xsmall auto-x size-0-full"]
       99 SETTABLEKS                       R16 R15 K9 ["tag"]
      101 MOVE                             R16 R7
      102 CALL                             R16 0 1
      103 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      105 GETTABLEKS                       R17 R1 K14 ["enabled"]
      107 NOT                              R16 R17
      108 SETTABLEKS                       R16 R15 K24 ["Visible"]
      110 MOVE                             R16 R3
      111 CALL                             R13 3 1
      112 SETTABLEKS                       R13 R12 K19 ["Tabs"]
      114 GETUPVAL                         R13 2
      115 GETUPVAL                         R14 8
      116 DUPTABLE                         R15 K25 [{"tag", "LayoutOrder", "Visible"}]
      117 LOADK                            R16 K27 ["size-0-600 fill bg-surface-300 radius-circle padding-x-small"]
      118 SETTABLEKS                       R16 R15 K9 ["tag"]
      120 MOVE                             R16 R7
      121 CALL                             R16 0 1
      122 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      124 GETTABLEKS                       R16 R1 K14 ["enabled"]
      126 SETTABLEKS                       R16 R15 K24 ["Visible"]
      128 DUPTABLE                         R16 K29 [{"TextBox"}]
      129 GETUPVAL                         R17 2
      130 LOADK                            R18 K28 ["TextBox"]
      131 NEWTABLE                         R19 16 0
      133 GETIMPORT                        R20 K32 [UDim2.fromScale]
      135 LOADN                            R21 1
      136 LOADN                            R22 1
      137 CALL                             R20 2 1
      138 SETTABLEKS                       R20 R19 K10 ["Size"]
      140 LOADN                            R20 1
      141 SETTABLEKS                       R20 R19 K33 ["BackgroundTransparency"]
      143 LOADN                            R20 0
      144 SETTABLEKS                       R20 R19 K34 ["BorderSizePixel"]
      146 LOADB                            R20 0
      147 SETTABLEKS                       R20 R19 K35 ["ClearTextOnFocus"]
      149 GETTABLEKS                       R22 R8 K36 ["Typography"]
      151 GETTABLEKS                       R21 R22 K37 ["BodySmall"]
      153 GETTABLEKS                       R20 R21 K38 ["Font"]
      155 SETTABLEKS                       R20 R19 K38 ["Font"]
      157 GETTABLEKS                       R22 R8 K36 ["Typography"]
      159 GETTABLEKS                       R21 R22 K37 ["BodySmall"]
      161 GETTABLEKS                       R20 R21 K39 ["LineHeight"]
      163 SETTABLEKS                       R20 R19 K39 ["LineHeight"]
      165 GETTABLEKS                       R20 R4 K40 ["PlaceholderText"]
      167 SETTABLEKS                       R20 R19 K40 ["PlaceholderText"]
      169 LOADK                            R20 K41 [""]
      170 SETTABLEKS                       R20 R19 K42 ["Text"]
      172 GETTABLEKS                       R22 R8 K36 ["Typography"]
      174 GETTABLEKS                       R21 R22 K37 ["BodySmall"]
      176 GETTABLEKS                       R20 R21 K43 ["FontSize"]
      178 SETTABLEKS                       R20 R19 K44 ["TextSize"]
      180 GETIMPORT                        R20 K48 [Enum.TextXAlignment.Left]
      182 SETTABLEKS                       R20 R19 K46 ["TextXAlignment"]
      184 GETTABLEKS                       R23 R8 K49 ["Color"]
      186 GETTABLEKS                       R22 R23 K50 ["Content"]
      188 GETTABLEKS                       R21 R22 K51 ["Default"]
      190 GETTABLEKS                       R20 R21 K52 ["Color3"]
      192 SETTABLEKS                       R20 R19 K53 ["TextColor3"]
      194 GETTABLEKS                       R23 R8 K49 ["Color"]
      196 GETTABLEKS                       R22 R23 K50 ["Content"]
      198 GETTABLEKS                       R21 R22 K51 ["Default"]
      200 GETTABLEKS                       R20 R21 K54 ["Transparency"]
      202 SETTABLEKS                       R20 R19 K55 ["TextTransparency"]
      204 SETTABLEKS                       R2 R19 K56 ["ref"]
      206 GETUPVAL                         R22 1
      207 GETTABLEKS                       R21 R22 K57 ["Change"]
      209 GETTABLEKS                       R20 R21 K42 ["Text"]
      211 SETTABLE                         R5 R19 R20
      212 CALL                             R17 2 1
      213 SETTABLEKS                       R17 R16 K28 ["TextBox"]
      215 CALL                             R13 3 1
      216 SETTABLEKS                       R13 R12 K20 ["SearchBar"]
      218 GETUPVAL                         R13 2
      219 GETUPVAL                         R14 8
      220 DUPTABLE                         R15 K58 [{"tag", "LayoutOrder"}]
      221 NEWTABLE                         R16 2 0
      223 GETTABLEKS                       R18 R1 K14 ["enabled"]
      225 NOT                              R17 R18
      226 SETTABLEKS                       R17 R16 K59 ["size-0-full fill"]
      228 GETTABLEKS                       R17 R1 K14 ["enabled"]
      230 SETTABLEKS                       R17 R16 K60 ["size-100-full"]
      232 SETTABLEKS                       R16 R15 K9 ["tag"]
      234 MOVE                             R16 R7
      235 CALL                             R16 0 1
      236 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      238 DUPTABLE                         R16 K62 [{"SizeConstraint"}]
      239 GETTABLEKS                       R18 R1 K14 ["enabled"]
      241 NOT                              R17 R18
      242 JUMPIFNOT                        R17 ; [+14]
      243 GETUPVAL                         R17 2
      244 LOADK                            R18 K63 ["UISizeConstraint"]
      245 DUPTABLE                         R19 K65 [{"MinSize"}]
      246 GETIMPORT                        R20 K68 [Vector2.new]
      248 GETTABLEKS                       R22 R8 K10 ["Size"]
      250 GETTABLEKS                       R21 R22 K69 ["Size_200"]
      252 LOADN                            R22 0
      253 CALL                             R20 2 1
      254 SETTABLEKS                       R20 R19 K64 ["MinSize"]
      256 CALL                             R17 2 1
      257 SETTABLEKS                       R17 R16 K61 ["SizeConstraint"]
      259 CALL                             R13 3 1
      260 SETTABLEKS                       R13 R12 K21 ["Gap"]
      262 GETUPVAL                         R13 2
      263 GETUPVAL                         R14 3
      264 DUPTABLE                         R15 K74 [{"LayoutOrder", "isChecked", "leading", "text", "size", "onActivated"}]
      265 MOVE                             R16 R7
      266 CALL                             R16 0 1
      267 SETTABLEKS                       R16 R15 K11 ["LayoutOrder"]
      269 GETTABLEKS                       R16 R1 K14 ["enabled"]
      271 SETTABLEKS                       R16 R15 K70 ["isChecked"]
      273 DUPTABLE                         R16 K77 [{"iconName", "isCircular"}]
      274 LOADK                            R17 K78 ["icons/common/search"]
      275 SETTABLEKS                       R17 R16 K75 ["iconName"]
      277 LOADB                            R17 1
      278 SETTABLEKS                       R17 R16 K76 ["isCircular"]
      280 SETTABLEKS                       R16 R15 K71 ["leading"]
      282 GETTABLEKS                       R16 R4 K79 ["All"]
      284 SETTABLEKS                       R16 R15 K72 ["text"]
      286 GETUPVAL                         R19 9
      287 GETTABLEKS                       R18 R19 K80 ["Enums"]
      289 GETTABLEKS                       R17 R18 K81 ["ChipSize"]
      291 GETTABLEKS                       R16 R17 K82 ["Small"]
      293 SETTABLEKS                       R16 R15 K17 ["size"]
      295 SETTABLEKS                       R6 R15 K73 ["onActivated"]
      297 CALL                             R13 2 1
      298 SETTABLEKS                       R13 R12 K22 ["SearchButton"]
      300 CALL                             R9 3 -1
      301 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Resources"]
       32 GETTABLEKS                       R6 R7 K11 ["Localization"]
       34 GETTABLEKS                       R5 R6 K12 ["Translator"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Chip"]
       39 GETTABLEKS                       R7 R1 K14 ["Enums"]
       41 GETTABLEKS                       R6 R7 K15 ["ChipSize"]
       43 GETTABLEKS                       R7 R1 K16 ["View"]
       45 GETTABLEKS                       R8 R3 K17 ["createNextOrder"]
       47 GETTABLEKS                       R9 R2 K18 ["createElement"]
       49 GETTABLEKS                       R11 R1 K19 ["Hooks"]
       51 GETTABLEKS                       R10 R11 K20 ["useTokens"]
       53 GETTABLEKS                       R11 R3 K21 ["useToggleState"]
       55 DUPCLOSURE                       R12 K22 [PROTO_5]
       56 CAPTURE                          VAL R11
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R1
       66 RETURN                           R12 1
