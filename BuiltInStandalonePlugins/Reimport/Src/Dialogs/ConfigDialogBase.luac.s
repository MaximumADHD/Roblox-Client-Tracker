PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["doSaveConfig"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["doSaveConfig"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K1 ["onClose"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R0 R1 K2 ["doReimport"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["View"]
        6 DUPTABLE                         R4 K2 [{"tag"}]
        7 LOADK                            R5 K3 ["col size-full flex-y-fill"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 NEWTABLE                         R5 0 2
       12 GETUPVAL                         R6 0
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K0 ["View"]
       16 DUPTABLE                         R8 K2 [{"tag"}]
       17 LOADK                            R9 K4 ["col size-full-0 auto-y padding-medium"]
       18 SETTABLEKS                       R9 R8 K1 ["tag"]
       20 GETTABLEKS                       R9 R0 K5 ["children"]
       22 CALL                             R6 3 1
       23 GETUPVAL                         R7 0
       24 GETUPVAL                         R9 1
       25 GETTABLEKS                       R8 R9 K0 ["View"]
       27 DUPTABLE                         R9 K2 [{"tag"}]
       28 LOADK                            R10 K6 ["col size-full-0 auto-y align-y-bottom"]
       29 SETTABLEKS                       R10 R9 K1 ["tag"]
       31 NEWTABLE                         R10 0 2
       33 GETUPVAL                         R11 0
       34 GETUPVAL                         R13 1
       35 GETTABLEKS                       R12 R13 K7 ["Divider"]
       37 NEWTABLE                         R13 0 0
       39 CALL                             R11 2 1
       40 GETUPVAL                         R12 0
       41 GETUPVAL                         R14 1
       42 GETTABLEKS                       R13 R14 K0 ["View"]
       44 DUPTABLE                         R14 K2 [{"tag"}]
       45 LOADK                            R15 K8 ["row size-full-0 auto-y padding-small gap-small align-x-right align-y-bottom"]
       46 SETTABLEKS                       R15 R14 K1 ["tag"]
       48 NEWTABLE                         R15 0 3
       50 GETUPVAL                         R16 0
       51 GETUPVAL                         R18 1
       52 GETTABLEKS                       R17 R18 K9 ["Button"]
       54 DUPTABLE                         R18 K13 [{"text", "size", "onActivated"}]
       55 LOADK                            R19 K14 ["Cancel"]
       56 SETTABLEKS                       R19 R18 K10 ["text"]
       58 GETUPVAL                         R20 2
       59 CALL                             R20 0 1
       60 JUMPIFNOT                        R20 ; [+8]
       61 GETUPVAL                         R22 1
       62 GETTABLEKS                       R21 R22 K15 ["Enums"]
       64 GETTABLEKS                       R20 R21 K16 ["InputSize"]
       66 GETTABLEKS                       R19 R20 K17 ["XSmall"]
       68 JUMP                             ; [+7]
       69 GETUPVAL                         R22 1
       70 GETTABLEKS                       R21 R22 K15 ["Enums"]
       72 GETTABLEKS                       R20 R21 K16 ["InputSize"]
       74 GETTABLEKS                       R19 R20 K18 ["Small"]
       76 SETTABLEKS                       R19 R18 K11 ["size"]
       78 GETTABLEKS                       R19 R0 K19 ["onClose"]
       80 SETTABLEKS                       R19 R18 K12 ["onActivated"]
       82 CALL                             R16 2 1
       83 GETUPVAL                         R17 0
       84 GETUPVAL                         R19 1
       85 GETTABLEKS                       R18 R19 K9 ["Button"]
       87 DUPTABLE                         R19 K21 [{"text", "size", "isDisabled", "onActivated"}]
       88 LOADK                            R20 K22 ["Save"]
       89 SETTABLEKS                       R20 R19 K10 ["text"]
       91 GETUPVAL                         R21 2
       92 CALL                             R21 0 1
       93 JUMPIFNOT                        R21 ; [+8]
       94 GETUPVAL                         R23 1
       95 GETTABLEKS                       R22 R23 K15 ["Enums"]
       97 GETTABLEKS                       R21 R22 K16 ["InputSize"]
       99 GETTABLEKS                       R20 R21 K17 ["XSmall"]
      101 JUMP                             ; [+7]
      102 GETUPVAL                         R23 1
      103 GETTABLEKS                       R22 R23 K15 ["Enums"]
      105 GETTABLEKS                       R21 R22 K16 ["InputSize"]
      107 GETTABLEKS                       R20 R21 K18 ["Small"]
      109 SETTABLEKS                       R20 R19 K11 ["size"]
      111 GETTABLEKS                       R21 R0 K23 ["canSave"]
      113 NOT                              R20 R21
      114 SETTABLEKS                       R20 R19 K20 ["isDisabled"]
      116 NEWCLOSURE                       R20 P0
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R20 R19 K12 ["onActivated"]
      120 CALL                             R17 2 1
      121 GETUPVAL                         R18 0
      122 GETUPVAL                         R20 1
      123 GETTABLEKS                       R19 R20 K9 ["Button"]
      125 DUPTABLE                         R20 K25 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      126 LOADK                            R21 K26 ["Save and Reimport"]
      127 SETTABLEKS                       R21 R20 K10 ["text"]
      129 GETUPVAL                         R24 1
      130 GETTABLEKS                       R23 R24 K15 ["Enums"]
      132 GETTABLEKS                       R22 R23 K27 ["ButtonVariant"]
      134 GETTABLEKS                       R21 R22 K28 ["Emphasis"]
      136 SETTABLEKS                       R21 R20 K24 ["variant"]
      138 GETUPVAL                         R22 2
      139 CALL                             R22 0 1
      140 JUMPIFNOT                        R22 ; [+8]
      141 GETUPVAL                         R24 1
      142 GETTABLEKS                       R23 R24 K15 ["Enums"]
      144 GETTABLEKS                       R22 R23 K16 ["InputSize"]
      146 GETTABLEKS                       R21 R22 K17 ["XSmall"]
      148 JUMP                             ; [+7]
      149 GETUPVAL                         R24 1
      150 GETTABLEKS                       R23 R24 K15 ["Enums"]
      152 GETTABLEKS                       R22 R23 K16 ["InputSize"]
      154 GETTABLEKS                       R21 R22 K18 ["Small"]
      156 SETTABLEKS                       R21 R20 K11 ["size"]
      158 GETTABLEKS                       R22 R0 K23 ["canSave"]
      160 NOT                              R21 R22
      161 SETTABLEKS                       R21 R20 K20 ["isDisabled"]
      163 NEWCLOSURE                       R21 P1
      164 CAPTURE                          VAL R0
      165 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      167 CALL                             R18 2 -1
      168 SETLIST                          R15 R16 -1 [1]
      170 CALL                             R12 3 -1
      171 SETLIST                          R10 R11 -1 [1]
      173 CALL                             R7 3 -1
      174 SETLIST                          R5 R6 -1 [1]
      176 CALL                             R2 3 -1
      177 SETLIST                          R1 R2 -1 [1]
      179 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Dialogs"]
       29 GETTABLEKS                       R5 R6 K12 ["Types"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R7 R0 K13 ["Flags"]
       36 GETTABLEKS                       R6 R7 K14 ["GetFFlagReimportConfigureButtonsXSmall"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K15 [PROTO_2]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 RETURN                           R6 1
