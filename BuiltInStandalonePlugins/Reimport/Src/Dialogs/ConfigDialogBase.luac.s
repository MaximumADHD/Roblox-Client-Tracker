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
        4 NEWTABLE                         R2 0 1
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["View"]
       10 DUPTABLE                         R5 K3 [{"tag"}]
       11 LOADK                            R6 K4 ["col size-full flex-y-fill"]
       12 SETTABLEKS                       R6 R5 K2 ["tag"]
       14 NEWTABLE                         R6 0 2
       16 GETUPVAL                         R7 1
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R8 R8 K1 ["View"]
       20 DUPTABLE                         R9 K3 [{"tag"}]
       21 LOADK                            R10 K5 ["col size-full-0 auto-y padding-medium"]
       22 SETTABLEKS                       R10 R9 K2 ["tag"]
       24 GETTABLEKS                       R10 R0 K6 ["children"]
       26 CALL                             R7 3 1
       27 GETUPVAL                         R8 1
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R9 R9 K1 ["View"]
       31 DUPTABLE                         R10 K3 [{"tag"}]
       32 LOADK                            R11 K7 ["col size-full-0 auto-y align-y-bottom"]
       33 SETTABLEKS                       R11 R10 K2 ["tag"]
       35 NEWTABLE                         R11 0 2
       37 GETUPVAL                         R12 1
       38 GETUPVAL                         R13 2
       39 GETTABLEKS                       R13 R13 K8 ["Divider"]
       41 NEWTABLE                         R14 0 0
       43 CALL                             R12 2 1
       44 GETUPVAL                         R13 1
       45 GETUPVAL                         R14 2
       46 GETTABLEKS                       R14 R14 K1 ["View"]
       48 DUPTABLE                         R15 K3 [{"tag"}]
       49 LOADK                            R16 K9 ["row size-full-0 auto-y padding-small gap-small align-x-right align-y-bottom"]
       50 SETTABLEKS                       R16 R15 K2 ["tag"]
       52 NEWTABLE                         R16 0 3
       54 GETUPVAL                         R17 1
       55 GETUPVAL                         R18 2
       56 GETTABLEKS                       R18 R18 K10 ["Button"]
       58 DUPTABLE                         R19 K14 [{"text", "size", "onActivated"}]
       59 GETUPVAL                         R21 3
       60 CALL                             R21 0 1
       61 JUMPIFNOT                        R21 ; [+6]
       62 LOADK                            R22 K15 ["ConfigDialog"]
       63 LOADK                            R23 K16 ["Cancel"]
       64 NAMECALL                         R20 R1 K17 ["getText"]
       66 CALL                             R20 3 1
       67 JUMP                             ; [+1]
       68 LOADK                            R20 K16 ["Cancel"]
       69 SETTABLEKS                       R20 R19 K11 ["text"]
       71 GETUPVAL                         R21 4
       72 CALL                             R21 0 1
       73 JUMPIFNOT                        R21 ; [+8]
       74 GETUPVAL                         R20 2
       75 GETTABLEKS                       R20 R20 K18 ["Enums"]
       77 GETTABLEKS                       R20 R20 K19 ["InputSize"]
       79 GETTABLEKS                       R20 R20 K20 ["XSmall"]
       81 JUMP                             ; [+7]
       82 GETUPVAL                         R20 2
       83 GETTABLEKS                       R20 R20 K18 ["Enums"]
       85 GETTABLEKS                       R20 R20 K19 ["InputSize"]
       87 GETTABLEKS                       R20 R20 K21 ["Small"]
       89 SETTABLEKS                       R20 R19 K12 ["size"]
       91 GETTABLEKS                       R20 R0 K22 ["onClose"]
       93 SETTABLEKS                       R20 R19 K13 ["onActivated"]
       95 CALL                             R17 2 1
       96 GETUPVAL                         R18 1
       97 GETUPVAL                         R19 2
       98 GETTABLEKS                       R19 R19 K10 ["Button"]
      100 DUPTABLE                         R20 K24 [{"text", "size", "isDisabled", "onActivated"}]
      101 GETUPVAL                         R22 3
      102 CALL                             R22 0 1
      103 JUMPIFNOT                        R22 ; [+6]
      104 LOADK                            R23 K15 ["ConfigDialog"]
      105 LOADK                            R24 K25 ["Save"]
      106 NAMECALL                         R21 R1 K17 ["getText"]
      108 CALL                             R21 3 1
      109 JUMP                             ; [+1]
      110 LOADK                            R21 K25 ["Save"]
      111 SETTABLEKS                       R21 R20 K11 ["text"]
      113 GETUPVAL                         R22 4
      114 CALL                             R22 0 1
      115 JUMPIFNOT                        R22 ; [+8]
      116 GETUPVAL                         R21 2
      117 GETTABLEKS                       R21 R21 K18 ["Enums"]
      119 GETTABLEKS                       R21 R21 K19 ["InputSize"]
      121 GETTABLEKS                       R21 R21 K20 ["XSmall"]
      123 JUMP                             ; [+7]
      124 GETUPVAL                         R21 2
      125 GETTABLEKS                       R21 R21 K18 ["Enums"]
      127 GETTABLEKS                       R21 R21 K19 ["InputSize"]
      129 GETTABLEKS                       R21 R21 K21 ["Small"]
      131 SETTABLEKS                       R21 R20 K12 ["size"]
      133 GETTABLEKS                       R22 R0 K26 ["canSave"]
      135 NOT                              R21 R22
      136 SETTABLEKS                       R21 R20 K23 ["isDisabled"]
      138 NEWCLOSURE                       R21 P0
      139 CAPTURE                          VAL R0
      140 SETTABLEKS                       R21 R20 K13 ["onActivated"]
      142 CALL                             R18 2 1
      143 GETUPVAL                         R19 1
      144 GETUPVAL                         R20 2
      145 GETTABLEKS                       R20 R20 K10 ["Button"]
      147 DUPTABLE                         R21 K28 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      148 GETUPVAL                         R23 3
      149 CALL                             R23 0 1
      150 JUMPIFNOT                        R23 ; [+6]
      151 LOADK                            R24 K15 ["ConfigDialog"]
      152 LOADK                            R25 K29 ["SaveAndReimport"]
      153 NAMECALL                         R22 R1 K17 ["getText"]
      155 CALL                             R22 3 1
      156 JUMP                             ; [+1]
      157 LOADK                            R22 K30 ["Save and Reimport"]
      158 SETTABLEKS                       R22 R21 K11 ["text"]
      160 GETUPVAL                         R22 2
      161 GETTABLEKS                       R22 R22 K18 ["Enums"]
      163 GETTABLEKS                       R22 R22 K31 ["ButtonVariant"]
      165 GETTABLEKS                       R22 R22 K32 ["Emphasis"]
      167 SETTABLEKS                       R22 R21 K27 ["variant"]
      169 GETUPVAL                         R23 4
      170 CALL                             R23 0 1
      171 JUMPIFNOT                        R23 ; [+8]
      172 GETUPVAL                         R22 2
      173 GETTABLEKS                       R22 R22 K18 ["Enums"]
      175 GETTABLEKS                       R22 R22 K19 ["InputSize"]
      177 GETTABLEKS                       R22 R22 K20 ["XSmall"]
      179 JUMP                             ; [+7]
      180 GETUPVAL                         R22 2
      181 GETTABLEKS                       R22 R22 K18 ["Enums"]
      183 GETTABLEKS                       R22 R22 K19 ["InputSize"]
      185 GETTABLEKS                       R22 R22 K21 ["Small"]
      187 SETTABLEKS                       R22 R21 K12 ["size"]
      189 GETTABLEKS                       R23 R0 K26 ["canSave"]
      191 NOT                              R22 R23
      192 SETTABLEKS                       R22 R21 K23 ["isDisabled"]
      194 NEWCLOSURE                       R22 P1
      195 CAPTURE                          VAL R0
      196 SETTABLEKS                       R22 R21 K13 ["onActivated"]
      198 CALL                             R19 2 -1
      199 SETLIST                          R16 R17 -1 [1]
      201 CALL                             R13 3 -1
      202 SETLIST                          R11 R12 -1 [1]
      204 CALL                             R8 3 -1
      205 SETLIST                          R6 R7 -1 [1]
      207 CALL                             R3 3 -1
      208 SETLIST                          R2 R3 -1 [1]
      210 RETURN                           R2 1

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
       47 GETTABLEKS                       R9 R9 K17 ["GetFFlagReimportConfigureButtonsXSmall"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R0 K16 ["Flags"]
       54 GETTABLEKS                       R10 R10 K18 ["GetFFlagReimportLocalizeDialogs"]
       56 CALL                             R9 1 1
       57 DUPCLOSURE                       R10 K19 [PROTO_2]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R8
       63 RETURN                           R10 1
