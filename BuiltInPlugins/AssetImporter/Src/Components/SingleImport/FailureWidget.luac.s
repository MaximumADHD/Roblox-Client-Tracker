PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelImport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETIMPORT                        R4 K2 [next]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 JUMPIFEQKNIL                     R4 ; [+6]
       16 GETUPVAL                         R5 3
       17 GETTABLE                         R6 R3 R4
       18 MOVE                             R7 R1
       19 CALL                             R5 2 1
       20 JUMP                             ; [+1]
       21 LOADK                            R5 K3 [""]
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R6 R6 K4 ["createElement"]
       25 GETUPVAL                         R7 5
       26 GETTABLEKS                       R7 R7 K5 ["View"]
       28 DUPTABLE                         R8 K8 [{["tag"] = "col gap-medium size-full padding-medium"}]
       29 DUPTABLE                         R9 K11 [{"Body", "ButtonPanel"}]
       30 GETUPVAL                         R10 4
       31 GETTABLEKS                       R10 R10 K4 ["createElement"]
       33 GETUPVAL                         R11 5
       34 GETTABLEKS                       R11 R11 K5 ["View"]
       36 DUPTABLE                         R12 K13 [{["tag"] = "row shrink gap-medium size-0-full auto-x"}]
       37 DUPTABLE                         R13 K16 [{"IconHolder", "BodyText"}]
       38 GETUPVAL                         R14 4
       39 GETTABLEKS                       R14 R14 K4 ["createElement"]
       41 GETUPVAL                         R15 5
       42 GETTABLEKS                       R15 R15 K5 ["View"]
       44 DUPTABLE                         R16 K18 [{["tag"] = "align-y-center auto-xy padding-small"}]
       45 DUPTABLE                         R17 K20 [{"IconElement"}]
       46 GETUPVAL                         R18 4
       47 GETTABLEKS                       R18 R18 K4 ["createElement"]
       49 GETUPVAL                         R19 5
       50 GETTABLEKS                       R19 R19 K21 ["Image"]
       52 DUPTABLE                         R20 K27 [{["tag"] = "align-x-center align-y-center", ["Image"] = "rbxassetid://117968062074216", ["Size"], ["LayoutOrder"] = 1}]
       53 GETIMPORT                        R21 K30 [UDim2.fromOffset]
       55 LOADN                            R22 32
       56 LOADN                            R23 32
       57 CALL                             R21 2 1
       58 SETTABLEKS                       R21 R20 K24 ["Size"]
       60 CALL                             R18 2 1
       61 SETTABLEKS                       R18 R17 K19 ["IconElement"]
       63 CALL                             R14 3 1
       64 SETTABLEKS                       R14 R13 K14 ["IconHolder"]
       66 GETUPVAL                         R14 4
       67 GETTABLEKS                       R14 R14 K4 ["createElement"]
       69 GETUPVAL                         R15 5
       70 GETTABLEKS                       R15 R15 K5 ["View"]
       72 DUPTABLE                         R16 K32 [{["tag"] = "col shrink gap-medium size-0-full auto-x padding-small"}]
       73 DUPTABLE                         R17 K35 [{"HeaderText", "ErrorText"}]
       74 GETUPVAL                         R18 4
       75 GETTABLEKS                       R18 R18 K4 ["createElement"]
       77 GETUPVAL                         R19 5
       78 GETTABLEKS                       R19 R19 K36 ["Text"]
       80 DUPTABLE                         R20 K40 [{["tag"] = "size-full-0 auto-y text-title-medium text-wrap text-align-x-left", ["Text"], ["testId"] = "headerText", ["LayoutOrder"] = 1}]
       81 GETIMPORT                        R21 K43 [table.concat]
       83 NEWTABLE                         R22 0 3
       85 LOADK                            R25 K44 ["Upload"]
       86 LOADK                            R26 K45 ["Failure"]
       87 NAMECALL                         R23 R1 K46 ["getText"]
       89 CALL                             R23 3 1
       90 LOADK                            R24 K47 [": "]
       91 MOVE                             R25 R4
       92 SETLIST                          R22 R23 3 [1]
       94 CALL                             R21 1 1
       95 SETTABLEKS                       R21 R20 K36 ["Text"]
       97 CALL                             R18 2 1
       98 SETTABLEKS                       R18 R17 K33 ["HeaderText"]
      100 GETUPVAL                         R18 4
      101 GETTABLEKS                       R18 R18 K4 ["createElement"]
      103 GETUPVAL                         R19 5
      104 GETTABLEKS                       R19 R19 K36 ["Text"]
      106 DUPTABLE                         R20 K51 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left", ["Text"], ["testId"] = "errorText", ["LayoutOrder"] = 2}]
      107 SETTABLEKS                       R5 R20 K36 ["Text"]
      109 CALL                             R18 2 1
      110 SETTABLEKS                       R18 R17 K34 ["ErrorText"]
      112 CALL                             R14 3 1
      113 SETTABLEKS                       R14 R13 K15 ["BodyText"]
      115 CALL                             R10 3 1
      116 SETTABLEKS                       R10 R9 K9 ["Body"]
      118 GETUPVAL                         R10 4
      119 GETTABLEKS                       R10 R10 K4 ["createElement"]
      121 GETUPVAL                         R11 5
      122 GETTABLEKS                       R11 R11 K5 ["View"]
      124 DUPTABLE                         R12 K53 [{["tag"] = "row align-x-right gap-medium size-full-900 padding-small", ["LayoutOrder"] = 2}]
      125 DUPTABLE                         R13 K55 [{"Ok"}]
      126 GETUPVAL                         R14 4
      127 GETTABLEKS                       R14 R14 K4 ["createElement"]
      129 GETUPVAL                         R15 5
      130 GETTABLEKS                       R15 R15 K56 ["Button"]
      132 DUPTABLE                         R16 K65 [{["text"], ["variant"], ["width"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 2, ["testId"] = "ok"}]
      133 LOADK                            R19 K66 ["Buttons"]
      134 LOADK                            R20 K54 ["Ok"]
      135 NAMECALL                         R17 R1 K46 ["getText"]
      137 CALL                             R17 3 1
      138 SETTABLEKS                       R17 R16 K57 ["text"]
      140 GETUPVAL                         R17 5
      141 GETTABLEKS                       R17 R17 K67 ["Enums"]
      143 GETTABLEKS                       R17 R17 K68 ["ButtonVariant"]
      145 GETTABLEKS                       R17 R17 K69 ["Emphasis"]
      147 SETTABLEKS                       R17 R16 K58 ["variant"]
      149 GETIMPORT                        R17 K72 [UDim.new]
      151 LOADK                            R18 K73 [0.25]
      152 LOADN                            R19 0
      153 CALL                             R17 2 1
      154 SETTABLEKS                       R17 R16 K59 ["width"]
      156 NEWCLOSURE                       R17 P0
      157 CAPTURE                          VAL R2
      158 SETTABLEKS                       R17 R16 K60 ["onActivated"]
      160 GETUPVAL                         R17 5
      161 GETTABLEKS                       R17 R17 K67 ["Enums"]
      163 GETTABLEKS                       R17 R17 K74 ["InputSize"]
      165 GETTABLEKS                       R17 R17 K75 ["XSmall"]
      167 SETTABLEKS                       R17 R16 K63 ["size"]
      169 CALL                             R14 2 1
      170 SETTABLEKS                       R14 R13 K54 ["Ok"]
      172 CALL                             R10 3 1
      173 SETTABLEKS                       R10 R9 K10 ["ButtonPanel"]
      175 CALL                             R6 3 -1
      176 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["SingleMeshController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Utility"]
       47 GETTABLEKS                       R8 R8 K16 ["parseErrorTable"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       56 GETTABLEKS                       R9 R9 K18 ["useErrors"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K19 [PROTO_1]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 RETURN                           R9 1
