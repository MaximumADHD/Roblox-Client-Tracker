PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resultCallback"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resultCallback"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["View"]
       10 DUPTABLE                         R4 K5 [{["tag"] = "col gap-medium size-full padding-medium"}]
       11 DUPTABLE                         R5 K8 [{"Body", "ButtonPanel"}]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K1 ["createElement"]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K2 ["View"]
       18 DUPTABLE                         R8 K10 [{["tag"] = "row shrink gap-medium size-0-full auto-x"}]
       19 DUPTABLE                         R9 K13 [{"IconHolder", "MainText"}]
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R10 R10 K1 ["createElement"]
       23 GETUPVAL                         R11 2
       24 GETTABLEKS                       R11 R11 K2 ["View"]
       26 DUPTABLE                         R12 K15 [{["tag"] = "align-y-center auto-xy padding-small"}]
       27 DUPTABLE                         R13 K17 [{"IconElement"}]
       28 GETUPVAL                         R14 1
       29 GETTABLEKS                       R14 R14 K1 ["createElement"]
       31 GETUPVAL                         R15 2
       32 GETTABLEKS                       R15 R15 K18 ["Image"]
       34 DUPTABLE                         R16 K23 [{["tag"] = "align-x-center align-y-center size-800", ["Image"] = "rbxassetid://118149935594322", ["LayoutOrder"] = 1}]
       35 CALL                             R14 2 1
       36 SETTABLEKS                       R14 R13 K16 ["IconElement"]
       38 CALL                             R10 3 1
       39 SETTABLEKS                       R10 R9 K11 ["IconHolder"]
       41 GETUPVAL                         R10 1
       42 GETTABLEKS                       R10 R10 K1 ["createElement"]
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R11 R11 K24 ["Text"]
       47 DUPTABLE                         R12 K28 [{["tag"] = "shrink size-full-0 auto-y padding-small text-body-medium text-wrap text-align-x-left", ["Text"], ["testId"] = "mainText", ["LayoutOrder"] = 1}]
       48 GETTABLEKS                       R13 R0 K29 ["text"]
       50 SETTABLEKS                       R13 R12 K24 ["Text"]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K12 ["MainText"]
       55 CALL                             R6 3 1
       56 SETTABLEKS                       R6 R5 K6 ["Body"]
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R6 R6 K1 ["createElement"]
       61 GETUPVAL                         R7 2
       62 GETTABLEKS                       R7 R7 K2 ["View"]
       64 DUPTABLE                         R8 K32 [{["tag"] = "row align-x-right gap-medium size-full-900 padding-small", ["LayoutOrder"] = 2}]
       65 DUPTABLE                         R9 K35 [{"Yes", "No"}]
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R10 R10 K1 ["createElement"]
       69 GETUPVAL                         R11 2
       70 GETTABLEKS                       R11 R11 K36 ["Button"]
       72 DUPTABLE                         R12 K44 [{["text"], ["variant"], ["width"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 2, ["testId"] = "yes"}]
       73 LOADK                            R15 K45 ["Buttons"]
       74 LOADK                            R16 K33 ["Yes"]
       75 NAMECALL                         R13 R1 K46 ["getText"]
       77 CALL                             R13 3 1
       78 SETTABLEKS                       R13 R12 K29 ["text"]
       80 GETUPVAL                         R13 2
       81 GETTABLEKS                       R13 R13 K47 ["Enums"]
       83 GETTABLEKS                       R13 R13 K48 ["ButtonVariant"]
       85 GETTABLEKS                       R13 R13 K49 ["Emphasis"]
       87 SETTABLEKS                       R13 R12 K37 ["variant"]
       89 GETIMPORT                        R13 K52 [UDim.new]
       91 LOADK                            R14 K53 [0.25]
       92 LOADN                            R15 0
       93 CALL                             R13 2 1
       94 SETTABLEKS                       R13 R12 K38 ["width"]
       96 NEWCLOSURE                       R13 P0
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R13 R12 K39 ["onActivated"]
      100 GETUPVAL                         R13 2
      101 GETTABLEKS                       R13 R13 K47 ["Enums"]
      103 GETTABLEKS                       R13 R13 K54 ["InputSize"]
      105 GETTABLEKS                       R13 R13 K55 ["XSmall"]
      107 SETTABLEKS                       R13 R12 K42 ["size"]
      109 CALL                             R10 2 1
      110 SETTABLEKS                       R10 R9 K33 ["Yes"]
      112 GETUPVAL                         R10 1
      113 GETTABLEKS                       R10 R10 K1 ["createElement"]
      115 GETUPVAL                         R11 2
      116 GETTABLEKS                       R11 R11 K36 ["Button"]
      118 DUPTABLE                         R12 K57 [{["text"], ["variant"], ["width"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 1, ["testId"] = "no"}]
      119 LOADK                            R15 K45 ["Buttons"]
      120 LOADK                            R16 K34 ["No"]
      121 NAMECALL                         R13 R1 K46 ["getText"]
      123 CALL                             R13 3 1
      124 SETTABLEKS                       R13 R12 K29 ["text"]
      126 GETUPVAL                         R13 2
      127 GETTABLEKS                       R13 R13 K47 ["Enums"]
      129 GETTABLEKS                       R13 R13 K48 ["ButtonVariant"]
      131 GETTABLEKS                       R13 R13 K58 ["Standard"]
      133 SETTABLEKS                       R13 R12 K37 ["variant"]
      135 GETIMPORT                        R13 K52 [UDim.new]
      137 LOADK                            R14 K53 [0.25]
      138 LOADN                            R15 0
      139 CALL                             R13 2 1
      140 SETTABLEKS                       R13 R12 K38 ["width"]
      142 NEWCLOSURE                       R13 P1
      143 CAPTURE                          VAL R0
      144 SETTABLEKS                       R13 R12 K39 ["onActivated"]
      146 GETUPVAL                         R13 2
      147 GETTABLEKS                       R13 R13 K47 ["Enums"]
      149 GETTABLEKS                       R13 R13 K54 ["InputSize"]
      151 GETTABLEKS                       R13 R13 K55 ["XSmall"]
      153 SETTABLEKS                       R13 R12 K42 ["size"]
      155 CALL                             R10 2 1
      156 SETTABLEKS                       R10 R9 K34 ["No"]
      158 CALL                             R6 3 1
      159 SETTABLEKS                       R6 R5 K7 ["ButtonPanel"]
      161 CALL                             R2 3 -1
      162 RETURN                           R2 -1

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
       32 DUPCLOSURE                       R6 K12 [PROTO_2]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 RETURN                           R6 1
