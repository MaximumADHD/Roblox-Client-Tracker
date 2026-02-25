PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["resultCallback"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["resultCallback"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["View"]
       10 DUPTABLE                         R4 K4 [{"tag"}]
       11 LOADK                            R5 K5 ["size-full col padding-medium"]
       12 SETTABLEKS                       R5 R4 K3 ["tag"]
       14 DUPTABLE                         R5 K8 [{"MainText", "ButtonPanel"}]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K1 ["createElement"]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K9 ["Text"]
       21 DUPTABLE                         R8 K12 [{"tag", "Text", "testId", "LayoutOrder"}]
       22 LOADK                            R9 K13 ["text-align-x-left text-wrap text-body-medium size-0-full auto-x shrink"]
       23 SETTABLEKS                       R9 R8 K3 ["tag"]
       25 GETTABLEKS                       R9 R0 K14 ["text"]
       27 SETTABLEKS                       R9 R8 K9 ["Text"]
       29 LOADK                            R9 K15 ["mainText"]
       30 SETTABLEKS                       R9 R8 K10 ["testId"]
       32 LOADN                            R9 1
       33 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R5 K6 ["MainText"]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R6 R7 K1 ["createElement"]
       41 GETUPVAL                         R8 2
       42 GETTABLEKS                       R7 R8 K2 ["View"]
       44 DUPTABLE                         R8 K16 [{"tag", "LayoutOrder"}]
       45 LOADK                            R9 K17 ["row align-x-right padding-small size-full-1200 gap-small"]
       46 SETTABLEKS                       R9 R8 K3 ["tag"]
       48 LOADN                            R9 2
       49 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       51 DUPTABLE                         R9 K20 [{"Yes", "No"}]
       52 GETUPVAL                         R11 1
       53 GETTABLEKS                       R10 R11 K1 ["createElement"]
       55 GETUPVAL                         R12 2
       56 GETTABLEKS                       R11 R12 K21 ["Button"]
       58 DUPTABLE                         R12 K26 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder", "testId"}]
       59 LOADK                            R15 K27 ["Buttons"]
       60 LOADK                            R16 K18 ["Yes"]
       61 NAMECALL                         R13 R1 K28 ["getText"]
       63 CALL                             R13 3 1
       64 SETTABLEKS                       R13 R12 K14 ["text"]
       66 GETUPVAL                         R16 2
       67 GETTABLEKS                       R15 R16 K29 ["Enums"]
       69 GETTABLEKS                       R14 R15 K30 ["ButtonVariant"]
       71 GETTABLEKS                       R13 R14 K31 ["Emphasis"]
       73 SETTABLEKS                       R13 R12 K22 ["variant"]
       75 NEWCLOSURE                       R13 P0
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R13 R12 K23 ["onActivated"]
       79 LOADB                            R13 0
       80 SETTABLEKS                       R13 R12 K24 ["isDisabled"]
       82 GETUPVAL                         R16 2
       83 GETTABLEKS                       R15 R16 K29 ["Enums"]
       85 GETTABLEKS                       R14 R15 K32 ["InputSize"]
       87 GETTABLEKS                       R13 R14 K33 ["Small"]
       89 SETTABLEKS                       R13 R12 K25 ["size"]
       91 LOADN                            R13 2
       92 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       94 LOADK                            R13 K34 ["yes"]
       95 SETTABLEKS                       R13 R12 K10 ["testId"]
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R9 K18 ["Yes"]
      100 GETUPVAL                         R11 1
      101 GETTABLEKS                       R10 R11 K1 ["createElement"]
      103 GETUPVAL                         R12 2
      104 GETTABLEKS                       R11 R12 K21 ["Button"]
      106 DUPTABLE                         R12 K26 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder", "testId"}]
      107 LOADK                            R15 K27 ["Buttons"]
      108 LOADK                            R16 K19 ["No"]
      109 NAMECALL                         R13 R1 K28 ["getText"]
      111 CALL                             R13 3 1
      112 SETTABLEKS                       R13 R12 K14 ["text"]
      114 GETUPVAL                         R16 2
      115 GETTABLEKS                       R15 R16 K29 ["Enums"]
      117 GETTABLEKS                       R14 R15 K30 ["ButtonVariant"]
      119 GETTABLEKS                       R13 R14 K31 ["Emphasis"]
      121 SETTABLEKS                       R13 R12 K22 ["variant"]
      123 NEWCLOSURE                       R13 P1
      124 CAPTURE                          VAL R0
      125 SETTABLEKS                       R13 R12 K23 ["onActivated"]
      127 LOADB                            R13 0
      128 SETTABLEKS                       R13 R12 K24 ["isDisabled"]
      130 GETUPVAL                         R16 2
      131 GETTABLEKS                       R15 R16 K29 ["Enums"]
      133 GETTABLEKS                       R14 R15 K32 ["InputSize"]
      135 GETTABLEKS                       R13 R14 K33 ["Small"]
      137 SETTABLEKS                       R13 R12 K25 ["size"]
      139 LOADN                            R13 1
      140 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      142 LOADK                            R13 K35 ["no"]
      143 SETTABLEKS                       R13 R12 K10 ["testId"]
      145 CALL                             R10 2 1
      146 SETTABLEKS                       R10 R9 K19 ["No"]
      148 CALL                             R6 3 1
      149 SETTABLEKS                       R6 R5 K7 ["ButtonPanel"]
      151 CALL                             R2 3 -1
      152 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 DUPCLOSURE                       R6 K12 [PROTO_2]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 RETURN                           R6 1
