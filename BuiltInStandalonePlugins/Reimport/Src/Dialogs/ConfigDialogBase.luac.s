PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["doSaveConfig"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["doSaveConfig"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["doReimport"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K4 [{["tag"] = "col flex-y-fill size-full"}]
        9 NEWTABLE                         R5 0 2
       11 GETUPVAL                         R6 1
       12 GETUPVAL                         R7 2
       13 GETTABLEKS                       R7 R7 K1 ["View"]
       15 DUPTABLE                         R8 K6 [{["tag"] = "col size-full-0 auto-y padding-medium"}]
       16 GETTABLEKS                       R9 R0 K7 ["children"]
       18 CALL                             R6 3 1
       19 GETUPVAL                         R7 1
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R8 R8 K1 ["View"]
       23 DUPTABLE                         R9 K9 [{["tag"] = "col align-y-bottom size-full-0 auto-y"}]
       24 NEWTABLE                         R10 0 2
       26 GETUPVAL                         R11 1
       27 GETUPVAL                         R12 2
       28 GETTABLEKS                       R12 R12 K10 ["Divider"]
       30 NEWTABLE                         R13 0 0
       32 CALL                             R11 2 1
       33 GETUPVAL                         R12 1
       34 GETUPVAL                         R13 2
       35 GETTABLEKS                       R13 R13 K1 ["View"]
       37 DUPTABLE                         R14 K12 [{["tag"] = "row align-x-right align-y-bottom gap-small size-full-0 auto-y padding-small"}]
       38 NEWTABLE                         R15 0 3
       40 GETUPVAL                         R16 1
       41 GETUPVAL                         R17 2
       42 GETTABLEKS                       R17 R17 K13 ["Button"]
       44 DUPTABLE                         R18 K17 [{"text", "size", "onActivated"}]
       45 LOADK                            R21 K18 ["ConfigDialog"]
       46 LOADK                            R22 K19 ["Cancel"]
       47 NAMECALL                         R19 R1 K20 ["getText"]
       49 CALL                             R19 3 1
       50 SETTABLEKS                       R19 R18 K14 ["text"]
       52 GETUPVAL                         R19 2
       53 GETTABLEKS                       R19 R19 K21 ["Enums"]
       55 GETTABLEKS                       R19 R19 K22 ["InputSize"]
       57 GETTABLEKS                       R19 R19 K23 ["XSmall"]
       59 SETTABLEKS                       R19 R18 K15 ["size"]
       61 GETTABLEKS                       R19 R0 K24 ["onClose"]
       63 SETTABLEKS                       R19 R18 K16 ["onActivated"]
       65 CALL                             R16 2 1
       66 GETUPVAL                         R17 1
       67 GETUPVAL                         R18 2
       68 GETTABLEKS                       R18 R18 K13 ["Button"]
       70 DUPTABLE                         R19 K26 [{"text", "size", "isDisabled", "onActivated"}]
       71 LOADK                            R22 K18 ["ConfigDialog"]
       72 LOADK                            R23 K27 ["Save"]
       73 NAMECALL                         R20 R1 K20 ["getText"]
       75 CALL                             R20 3 1
       76 SETTABLEKS                       R20 R19 K14 ["text"]
       78 GETUPVAL                         R20 2
       79 GETTABLEKS                       R20 R20 K21 ["Enums"]
       81 GETTABLEKS                       R20 R20 K22 ["InputSize"]
       83 GETTABLEKS                       R20 R20 K23 ["XSmall"]
       85 SETTABLEKS                       R20 R19 K15 ["size"]
       87 GETTABLEKS                       R21 R0 K28 ["canSave"]
       89 NOT                              R20 R21
       90 SETTABLEKS                       R20 R19 K25 ["isDisabled"]
       92 NEWCLOSURE                       R20 P0
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R20 R19 K16 ["onActivated"]
       96 CALL                             R17 2 1
       97 GETUPVAL                         R18 1
       98 GETUPVAL                         R19 2
       99 GETTABLEKS                       R19 R19 K13 ["Button"]
      101 DUPTABLE                         R20 K30 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      102 LOADK                            R23 K18 ["ConfigDialog"]
      103 LOADK                            R24 K31 ["SaveAndReimport"]
      104 NAMECALL                         R21 R1 K20 ["getText"]
      106 CALL                             R21 3 1
      107 SETTABLEKS                       R21 R20 K14 ["text"]
      109 GETUPVAL                         R21 2
      110 GETTABLEKS                       R21 R21 K21 ["Enums"]
      112 GETTABLEKS                       R21 R21 K32 ["ButtonVariant"]
      114 GETTABLEKS                       R21 R21 K33 ["Emphasis"]
      116 SETTABLEKS                       R21 R20 K29 ["variant"]
      118 GETUPVAL                         R21 2
      119 GETTABLEKS                       R21 R21 K21 ["Enums"]
      121 GETTABLEKS                       R21 R21 K22 ["InputSize"]
      123 GETTABLEKS                       R21 R21 K23 ["XSmall"]
      125 SETTABLEKS                       R21 R20 K15 ["size"]
      127 GETTABLEKS                       R22 R0 K28 ["canSave"]
      129 NOT                              R21 R22
      130 SETTABLEKS                       R21 R20 K25 ["isDisabled"]
      132 NEWCLOSURE                       R21 P1
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R21 R20 K16 ["onActivated"]
      136 CALL                             R18 2 -1
      137 SETLIST                          R15 R16 -1 [1]
      139 CALL                             R12 3 -1
      140 SETLIST                          R10 R11 -1 [1]
      142 CALL                             R7 3 -1
      143 SETLIST                          R5 R6 -1 [1]
      145 CALL                             R2 3 -1
      146 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["createElement"]
       30 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K12 ["Localization"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Src"]
       38 GETTABLEKS                       R8 R8 K14 ["Dialogs"]
       40 GETTABLEKS                       R8 R8 K15 ["Types"]
       42 CALL                             R7 1 1
       43 DUPCLOSURE                       R8 K16 [PROTO_2]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 RETURN                           R8 1
