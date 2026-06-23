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
        8 DUPTABLE                         R4 K3 [{"tag"}]
        9 LOADK                            R5 K4 ["col size-full flex-y-fill"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 NEWTABLE                         R5 0 2
       14 GETUPVAL                         R6 1
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K1 ["View"]
       18 DUPTABLE                         R8 K3 [{"tag"}]
       19 LOADK                            R9 K5 ["col size-full-0 auto-y padding-medium"]
       20 SETTABLEKS                       R9 R8 K2 ["tag"]
       22 GETTABLEKS                       R9 R0 K6 ["children"]
       24 CALL                             R6 3 1
       25 GETUPVAL                         R7 1
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R8 R8 K1 ["View"]
       29 DUPTABLE                         R9 K3 [{"tag"}]
       30 LOADK                            R10 K7 ["col size-full-0 auto-y align-y-bottom"]
       31 SETTABLEKS                       R10 R9 K2 ["tag"]
       33 NEWTABLE                         R10 0 2
       35 GETUPVAL                         R11 1
       36 GETUPVAL                         R12 2
       37 GETTABLEKS                       R12 R12 K8 ["Divider"]
       39 NEWTABLE                         R13 0 0
       41 CALL                             R11 2 1
       42 GETUPVAL                         R12 1
       43 GETUPVAL                         R13 2
       44 GETTABLEKS                       R13 R13 K1 ["View"]
       46 DUPTABLE                         R14 K3 [{"tag"}]
       47 LOADK                            R15 K9 ["row size-full-0 auto-y padding-small gap-small align-x-right align-y-bottom"]
       48 SETTABLEKS                       R15 R14 K2 ["tag"]
       50 NEWTABLE                         R15 0 3
       52 GETUPVAL                         R16 1
       53 GETUPVAL                         R17 2
       54 GETTABLEKS                       R17 R17 K10 ["Button"]
       56 DUPTABLE                         R18 K14 [{"text", "size", "onActivated"}]
       57 GETUPVAL                         R20 3
       58 CALL                             R20 0 1
       59 JUMPIFNOT                        R20 ; [+6]
       60 LOADK                            R21 K15 ["ConfigDialog"]
       61 LOADK                            R22 K16 ["Cancel"]
       62 NAMECALL                         R19 R1 K17 ["getText"]
       64 CALL                             R19 3 1
       65 JUMP                             ; [+1]
       66 LOADK                            R19 K16 ["Cancel"]
       67 SETTABLEKS                       R19 R18 K11 ["text"]
       69 GETUPVAL                         R19 2
       70 GETTABLEKS                       R19 R19 K18 ["Enums"]
       72 GETTABLEKS                       R19 R19 K19 ["InputSize"]
       74 GETTABLEKS                       R19 R19 K20 ["XSmall"]
       76 SETTABLEKS                       R19 R18 K12 ["size"]
       78 GETTABLEKS                       R19 R0 K21 ["onClose"]
       80 SETTABLEKS                       R19 R18 K13 ["onActivated"]
       82 CALL                             R16 2 1
       83 GETUPVAL                         R17 1
       84 GETUPVAL                         R18 2
       85 GETTABLEKS                       R18 R18 K10 ["Button"]
       87 DUPTABLE                         R19 K23 [{"text", "size", "isDisabled", "onActivated"}]
       88 GETUPVAL                         R21 3
       89 CALL                             R21 0 1
       90 JUMPIFNOT                        R21 ; [+6]
       91 LOADK                            R22 K15 ["ConfigDialog"]
       92 LOADK                            R23 K24 ["Save"]
       93 NAMECALL                         R20 R1 K17 ["getText"]
       95 CALL                             R20 3 1
       96 JUMP                             ; [+1]
       97 LOADK                            R20 K24 ["Save"]
       98 SETTABLEKS                       R20 R19 K11 ["text"]
      100 GETUPVAL                         R20 2
      101 GETTABLEKS                       R20 R20 K18 ["Enums"]
      103 GETTABLEKS                       R20 R20 K19 ["InputSize"]
      105 GETTABLEKS                       R20 R20 K20 ["XSmall"]
      107 SETTABLEKS                       R20 R19 K12 ["size"]
      109 GETTABLEKS                       R21 R0 K25 ["canSave"]
      111 NOT                              R20 R21
      112 SETTABLEKS                       R20 R19 K22 ["isDisabled"]
      114 NEWCLOSURE                       R20 P0
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R20 R19 K13 ["onActivated"]
      118 CALL                             R17 2 1
      119 GETUPVAL                         R18 1
      120 GETUPVAL                         R19 2
      121 GETTABLEKS                       R19 R19 K10 ["Button"]
      123 DUPTABLE                         R20 K27 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      124 GETUPVAL                         R22 3
      125 CALL                             R22 0 1
      126 JUMPIFNOT                        R22 ; [+6]
      127 LOADK                            R23 K15 ["ConfigDialog"]
      128 LOADK                            R24 K28 ["SaveAndReimport"]
      129 NAMECALL                         R21 R1 K17 ["getText"]
      131 CALL                             R21 3 1
      132 JUMP                             ; [+1]
      133 LOADK                            R21 K29 ["Save and Reimport"]
      134 SETTABLEKS                       R21 R20 K11 ["text"]
      136 GETUPVAL                         R21 2
      137 GETTABLEKS                       R21 R21 K18 ["Enums"]
      139 GETTABLEKS                       R21 R21 K30 ["ButtonVariant"]
      141 GETTABLEKS                       R21 R21 K31 ["Emphasis"]
      143 SETTABLEKS                       R21 R20 K26 ["variant"]
      145 GETUPVAL                         R21 2
      146 GETTABLEKS                       R21 R21 K18 ["Enums"]
      148 GETTABLEKS                       R21 R21 K19 ["InputSize"]
      150 GETTABLEKS                       R21 R21 K20 ["XSmall"]
      152 SETTABLEKS                       R21 R20 K12 ["size"]
      154 GETTABLEKS                       R22 R0 K25 ["canSave"]
      156 NOT                              R21 R22
      157 SETTABLEKS                       R21 R20 K22 ["isDisabled"]
      159 NEWCLOSURE                       R21 P1
      160 CAPTURE                          VAL R0
      161 SETTABLEKS                       R21 R20 K13 ["onActivated"]
      163 CALL                             R18 2 -1
      164 SETLIST                          R15 R16 -1 [1]
      166 CALL                             R12 3 -1
      167 SETLIST                          R10 R11 -1 [1]
      169 CALL                             R7 3 -1
      170 SETLIST                          R5 R6 -1 [1]
      172 CALL                             R2 3 -1
      173 RETURN                           R2 -1

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
