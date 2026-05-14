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
       10 DUPTABLE                         R4 K4 [{"tag"}]
       11 LOADK                            R5 K5 ["size-full col padding-medium gap-medium"]
       12 SETTABLEKS                       R5 R4 K3 ["tag"]
       14 DUPTABLE                         R5 K8 [{"Body", "ButtonPanel"}]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K1 ["createElement"]
       18 GETUPVAL                         R7 2
       19 GETTABLEKS                       R7 R7 K2 ["View"]
       21 DUPTABLE                         R8 K4 [{"tag"}]
       22 LOADK                            R9 K9 ["size-0-full auto-x shrink row gap-medium"]
       23 SETTABLEKS                       R9 R8 K3 ["tag"]
       25 DUPTABLE                         R9 K12 [{"IconHolder", "MainText"}]
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R10 R10 K1 ["createElement"]
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R11 R11 K2 ["View"]
       32 DUPTABLE                         R12 K4 [{"tag"}]
       33 LOADK                            R13 K13 ["align-y-center auto-xy padding-small"]
       34 SETTABLEKS                       R13 R12 K3 ["tag"]
       36 DUPTABLE                         R13 K15 [{"IconElement"}]
       37 GETUPVAL                         R14 1
       38 GETTABLEKS                       R14 R14 K1 ["createElement"]
       40 GETUPVAL                         R15 2
       41 GETTABLEKS                       R15 R15 K16 ["Image"]
       43 DUPTABLE                         R16 K18 [{"tag", "Image", "LayoutOrder"}]
       44 LOADK                            R17 K19 ["align-x-center align-y-center size-800"]
       45 SETTABLEKS                       R17 R16 K3 ["tag"]
       47 LOADK                            R17 K20 ["rbxassetid://118149935594322"]
       48 SETTABLEKS                       R17 R16 K16 ["Image"]
       50 LOADN                            R17 1
       51 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
       53 CALL                             R14 2 1
       54 SETTABLEKS                       R14 R13 K14 ["IconElement"]
       56 CALL                             R10 3 1
       57 SETTABLEKS                       R10 R9 K10 ["IconHolder"]
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K1 ["createElement"]
       62 GETUPVAL                         R11 2
       63 GETTABLEKS                       R11 R11 K21 ["Text"]
       65 DUPTABLE                         R12 K23 [{"tag", "Text", "testId", "LayoutOrder"}]
       66 LOADK                            R13 K24 ["text-align-x-left text-wrap text-body-medium size-full-0 auto-y shrink padding-small"]
       67 SETTABLEKS                       R13 R12 K3 ["tag"]
       69 GETTABLEKS                       R13 R0 K25 ["text"]
       71 SETTABLEKS                       R13 R12 K21 ["Text"]
       73 LOADK                            R13 K26 ["mainText"]
       74 SETTABLEKS                       R13 R12 K22 ["testId"]
       76 LOADN                            R13 1
       77 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
       79 CALL                             R10 2 1
       80 SETTABLEKS                       R10 R9 K11 ["MainText"]
       82 CALL                             R6 3 1
       83 SETTABLEKS                       R6 R5 K6 ["Body"]
       85 GETUPVAL                         R6 1
       86 GETTABLEKS                       R6 R6 K1 ["createElement"]
       88 GETUPVAL                         R7 2
       89 GETTABLEKS                       R7 R7 K2 ["View"]
       91 DUPTABLE                         R8 K27 [{"tag", "LayoutOrder"}]
       92 LOADK                            R9 K28 ["row align-x-right padding-small size-full-900 gap-medium"]
       93 SETTABLEKS                       R9 R8 K3 ["tag"]
       95 LOADN                            R9 2
       96 SETTABLEKS                       R9 R8 K17 ["LayoutOrder"]
       98 DUPTABLE                         R9 K31 [{"Yes", "No"}]
       99 GETUPVAL                         R10 1
      100 GETTABLEKS                       R10 R10 K1 ["createElement"]
      102 GETUPVAL                         R11 2
      103 GETTABLEKS                       R11 R11 K32 ["Button"]
      105 DUPTABLE                         R12 K38 [{"text", "variant", "width", "onActivated", "isDisabled", "size", "LayoutOrder", "testId"}]
      106 LOADK                            R15 K39 ["Buttons"]
      107 LOADK                            R16 K29 ["Yes"]
      108 NAMECALL                         R13 R1 K40 ["getText"]
      110 CALL                             R13 3 1
      111 SETTABLEKS                       R13 R12 K25 ["text"]
      113 GETUPVAL                         R13 2
      114 GETTABLEKS                       R13 R13 K41 ["Enums"]
      116 GETTABLEKS                       R13 R13 K42 ["ButtonVariant"]
      118 GETTABLEKS                       R13 R13 K43 ["Emphasis"]
      120 SETTABLEKS                       R13 R12 K33 ["variant"]
      122 GETIMPORT                        R13 K46 [UDim.new]
      124 LOADK                            R14 K47 [0.25]
      125 LOADN                            R15 0
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K34 ["width"]
      129 NEWCLOSURE                       R13 P0
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R13 R12 K35 ["onActivated"]
      133 LOADB                            R13 0
      134 SETTABLEKS                       R13 R12 K36 ["isDisabled"]
      136 GETUPVAL                         R13 2
      137 GETTABLEKS                       R13 R13 K41 ["Enums"]
      139 GETTABLEKS                       R13 R13 K48 ["InputSize"]
      141 GETTABLEKS                       R13 R13 K49 ["XSmall"]
      143 SETTABLEKS                       R13 R12 K37 ["size"]
      145 LOADN                            R13 2
      146 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
      148 LOADK                            R13 K50 ["yes"]
      149 SETTABLEKS                       R13 R12 K22 ["testId"]
      151 CALL                             R10 2 1
      152 SETTABLEKS                       R10 R9 K29 ["Yes"]
      154 GETUPVAL                         R10 1
      155 GETTABLEKS                       R10 R10 K1 ["createElement"]
      157 GETUPVAL                         R11 2
      158 GETTABLEKS                       R11 R11 K32 ["Button"]
      160 DUPTABLE                         R12 K38 [{"text", "variant", "width", "onActivated", "isDisabled", "size", "LayoutOrder", "testId"}]
      161 LOADK                            R15 K39 ["Buttons"]
      162 LOADK                            R16 K30 ["No"]
      163 NAMECALL                         R13 R1 K40 ["getText"]
      165 CALL                             R13 3 1
      166 SETTABLEKS                       R13 R12 K25 ["text"]
      168 GETUPVAL                         R13 2
      169 GETTABLEKS                       R13 R13 K41 ["Enums"]
      171 GETTABLEKS                       R13 R13 K42 ["ButtonVariant"]
      173 GETTABLEKS                       R13 R13 K51 ["Standard"]
      175 SETTABLEKS                       R13 R12 K33 ["variant"]
      177 GETIMPORT                        R13 K46 [UDim.new]
      179 LOADK                            R14 K47 [0.25]
      180 LOADN                            R15 0
      181 CALL                             R13 2 1
      182 SETTABLEKS                       R13 R12 K34 ["width"]
      184 NEWCLOSURE                       R13 P1
      185 CAPTURE                          VAL R0
      186 SETTABLEKS                       R13 R12 K35 ["onActivated"]
      188 LOADB                            R13 0
      189 SETTABLEKS                       R13 R12 K36 ["isDisabled"]
      191 GETUPVAL                         R13 2
      192 GETTABLEKS                       R13 R13 K41 ["Enums"]
      194 GETTABLEKS                       R13 R13 K48 ["InputSize"]
      196 GETTABLEKS                       R13 R13 K49 ["XSmall"]
      198 SETTABLEKS                       R13 R12 K37 ["size"]
      200 LOADN                            R13 1
      201 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
      203 LOADK                            R13 K52 ["no"]
      204 SETTABLEKS                       R13 R12 K22 ["testId"]
      206 CALL                             R10 2 1
      207 SETTABLEKS                       R10 R9 K30 ["No"]
      209 CALL                             R6 3 1
      210 SETTABLEKS                       R6 R5 K7 ["ButtonPanel"]
      212 CALL                             R2 3 -1
      213 RETURN                           R2 -1

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
