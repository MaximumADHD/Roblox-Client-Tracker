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
       58 GETUPVAL                         R22 1
       59 GETTABLEKS                       R21 R22 K15 ["Enums"]
       61 GETTABLEKS                       R20 R21 K16 ["InputSize"]
       63 GETTABLEKS                       R19 R20 K17 ["Small"]
       65 SETTABLEKS                       R19 R18 K11 ["size"]
       67 GETTABLEKS                       R19 R0 K18 ["onClose"]
       69 SETTABLEKS                       R19 R18 K12 ["onActivated"]
       71 CALL                             R16 2 1
       72 GETUPVAL                         R17 0
       73 GETUPVAL                         R19 1
       74 GETTABLEKS                       R18 R19 K9 ["Button"]
       76 DUPTABLE                         R19 K20 [{"text", "size", "isDisabled", "onActivated"}]
       77 LOADK                            R20 K21 ["Save"]
       78 SETTABLEKS                       R20 R19 K10 ["text"]
       80 GETUPVAL                         R23 1
       81 GETTABLEKS                       R22 R23 K15 ["Enums"]
       83 GETTABLEKS                       R21 R22 K16 ["InputSize"]
       85 GETTABLEKS                       R20 R21 K17 ["Small"]
       87 SETTABLEKS                       R20 R19 K11 ["size"]
       89 GETTABLEKS                       R21 R0 K22 ["canSave"]
       91 NOT                              R20 R21
       92 SETTABLEKS                       R20 R19 K19 ["isDisabled"]
       94 NEWCLOSURE                       R20 P0
       95 CAPTURE                          VAL R0
       96 SETTABLEKS                       R20 R19 K12 ["onActivated"]
       98 CALL                             R17 2 1
       99 GETUPVAL                         R18 0
      100 GETUPVAL                         R20 1
      101 GETTABLEKS                       R19 R20 K9 ["Button"]
      103 DUPTABLE                         R20 K24 [{"text", "variant", "size", "isDisabled", "onActivated"}]
      104 LOADK                            R21 K25 ["Save and Reimport"]
      105 SETTABLEKS                       R21 R20 K10 ["text"]
      107 GETUPVAL                         R24 1
      108 GETTABLEKS                       R23 R24 K15 ["Enums"]
      110 GETTABLEKS                       R22 R23 K26 ["ButtonVariant"]
      112 GETTABLEKS                       R21 R22 K27 ["Emphasis"]
      114 SETTABLEKS                       R21 R20 K23 ["variant"]
      116 GETUPVAL                         R24 1
      117 GETTABLEKS                       R23 R24 K15 ["Enums"]
      119 GETTABLEKS                       R22 R23 K16 ["InputSize"]
      121 GETTABLEKS                       R21 R22 K17 ["Small"]
      123 SETTABLEKS                       R21 R20 K11 ["size"]
      125 GETTABLEKS                       R22 R0 K22 ["canSave"]
      127 NOT                              R21 R22
      128 SETTABLEKS                       R21 R20 K19 ["isDisabled"]
      130 NEWCLOSURE                       R21 P1
      131 CAPTURE                          VAL R0
      132 SETTABLEKS                       R21 R20 K12 ["onActivated"]
      134 CALL                             R18 2 -1
      135 SETLIST                          R15 R16 -1 [1]
      137 CALL                             R12 3 -1
      138 SETLIST                          R10 R11 -1 [1]
      140 CALL                             R7 3 -1
      141 SETLIST                          R5 R6 -1 [1]
      143 CALL                             R2 3 -1
      144 SETLIST                          R1 R2 -1 [1]
      146 RETURN                           R1 1

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
       32 DUPCLOSURE                       R5 K13 [PROTO_2]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 RETURN                           R5 1
