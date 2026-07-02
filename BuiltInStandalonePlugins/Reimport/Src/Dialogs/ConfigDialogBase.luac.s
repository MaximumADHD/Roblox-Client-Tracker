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
       45 GETUPVAL                         R20 3
       46 CALL                             R20 0 1
       47 JUMPIFNOT                        R20 ; [+6]
       48 LOADK                            R21 K18 ["ConfigDialog"]
       49 LOADK                            R22 K19 ["Cancel"]
       50 NAMECALL                         R19 R1 K20 ["getText"]
       52 CALL                             R19 3 1
       53 JUMP                             ; [+1]
       54 LOADK                            R19 K19 ["Cancel"]
       55 SETTABLEKS                       R19 R18 K14 ["text"]
       57 GETUPVAL                         R19 2
       58 GETTABLEKS                       R19 R19 K21 ["Enums"]
       60 GETTABLEKS                       R19 R19 K22 ["InputSize"]
       62 GETTABLEKS                       R19 R19 K23 ["XSmall"]
       64 SETTABLEKS                       R19 R18 K15 ["size"]
       66 GETTABLEKS                       R19 R0 K24 ["onClose"]
       68 SETTABLEKS                       R19 R18 K16 ["onActivated"]
       70 CALL                             R16 2 1
       71 GETUPVAL                         R17 1
       72 GETUPVAL                         R18 2
       73 GETTABLEKS                       R18 R18 K13 ["Button"]
       75 DUPTABLE                         R19 K26 [{"text", "size", "isDisabled", "onActivated"}]
       76 GETUPVAL                         R21 3
       77 CALL                             R21 0 1
       78 JUMPIFNOT                        R21 ; [+6]
       79 LOADK                            R22 K18 ["ConfigDialog"]
       80 LOADK                            R23 K27 ["Save"]
       81 NAMECALL                         R20 R1 K20 ["getText"]
       83 CALL                             R20 3 1
       84 JUMP                             ; [+1]
       85 LOADK                            R20 K27 ["Save"]
       86 SETTABLEKS                       R20 R19 K14 ["text"]
       88 GETUPVAL                         R20 2
       89 GETTABLEKS                       R20 R20 K21 ["Enums"]
       91 GETTABLEKS                       R20 R20 K22 ["InputSize"]
       93 GETTABLEKS                       R20 R20 K23 ["XSmall"]
       95 SETTABLEKS                       R20 R19 K15 ["size"]
       97 GETTABLEKS                       R21 R0 K28 ["canSave"]
       99 NOT                              R20 R21
      100 SETTABLEKS                       R20 R19 K25 ["isDisabled"]
      102 NEWCLOSURE                       R20 P0
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R20 R19 K16 ["onActivated"]
      106 CALL                             R17 2 1
      107 GETUPVAL                         R18 1
      108 GETUPVAL                         R19 2
      109 GETTABLEKS                       R19 R19 K13 ["Button"]
      111 DUPTABLE                         R20 K30 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      112 GETUPVAL                         R22 3
      113 CALL                             R22 0 1
      114 JUMPIFNOT                        R22 ; [+6]
      115 LOADK                            R23 K18 ["ConfigDialog"]
      116 LOADK                            R24 K31 ["SaveAndReimport"]
      117 NAMECALL                         R21 R1 K20 ["getText"]
      119 CALL                             R21 3 1
      120 JUMP                             ; [+1]
      121 LOADK                            R21 K32 ["Save and Reimport"]
      122 SETTABLEKS                       R21 R20 K14 ["text"]
      124 GETUPVAL                         R21 2
      125 GETTABLEKS                       R21 R21 K21 ["Enums"]
      127 GETTABLEKS                       R21 R21 K33 ["ButtonVariant"]
      129 GETTABLEKS                       R21 R21 K34 ["Emphasis"]
      131 SETTABLEKS                       R21 R20 K29 ["variant"]
      133 GETUPVAL                         R21 2
      134 GETTABLEKS                       R21 R21 K21 ["Enums"]
      136 GETTABLEKS                       R21 R21 K22 ["InputSize"]
      138 GETTABLEKS                       R21 R21 K23 ["XSmall"]
      140 SETTABLEKS                       R21 R20 K15 ["size"]
      142 GETTABLEKS                       R22 R0 K28 ["canSave"]
      144 NOT                              R21 R22
      145 SETTABLEKS                       R21 R20 K25 ["isDisabled"]
      147 NEWCLOSURE                       R21 P1
      148 CAPTURE                          VAL R0
      149 SETTABLEKS                       R21 R20 K16 ["onActivated"]
      151 CALL                             R18 2 -1
      152 SETLIST                          R15 R16 -1 [1]
      154 CALL                             R12 3 -1
      155 SETLIST                          R10 R11 -1 [1]
      157 CALL                             R7 3 -1
      158 SETLIST                          R5 R6 -1 [1]
      160 CALL                             R2 3 -1
      161 RETURN                           R2 -1

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
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K16 ["Flags"]
       47 GETTABLEKS                       R9 R9 K17 ["GetFFlagReimportLocalizeDialogs"]
       49 CALL                             R8 1 1
       50 DUPCLOSURE                       R9 K18 [PROTO_2]
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R8
       55 RETURN                           R9 1
