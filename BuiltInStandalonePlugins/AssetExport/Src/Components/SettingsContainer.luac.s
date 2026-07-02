PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["toggleSetting"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R0 K1 ["settings"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETUPVAL                         R9 2
       16 MOVE                             R10 R2
       17 MOVE                             R11 R8
       18 CALL                             R9 2 1
       19 LOADB                            R10 1
       20 JUMPIFNOTEQKS                    R8 K2 ["pbr"] ; [+6]
       22 LOADK                            R13 K3 ["textures"]
       23 NAMECALL                         R11 R2 K4 ["getSettingValue"]
       25 CALL                             R11 2 1
       26 MOVE                             R10 R11
       27 JUMPIFNOTEQKS                    R8 K5 ["facs"] ; [+6]
       29 LOADK                            R13 K6 ["skinning"]
       30 NAMECALL                         R11 R2 K4 ["getSettingValue"]
       32 CALL                             R11 2 1
       33 MOVE                             R10 R11
       34 JUMPIFNOT                        R10 ; [+2]
       35 MOVE                             R11 R9
       36 JUMPIF                           R11 ; [+1]
       37 LOADB                            R11 0
       38 GETUPVAL                         R12 3
       39 GETTABLEKS                       R12 R12 K7 ["createElement"]
       41 GETUPVAL                         R13 4
       42 GETTABLEKS                       R13 R13 K8 ["Checkbox"]
       44 DUPTABLE                         R14 K16 [{"label", "isChecked", "isDisabled", "onActivated", "size", "testId", "LayoutOrder"}]
       45 LOADK                            R17 K17 ["SettingName"]
       46 MOVE                             R18 R8
       47 NAMECALL                         R15 R1 K18 ["getText"]
       49 CALL                             R15 3 1
       50 SETTABLEKS                       R15 R14 K9 ["label"]
       52 SETTABLEKS                       R11 R14 K10 ["isChecked"]
       54 NOT                              R15 R10
       55 JUMPIF                           R15 ; [+3]
       56 GETTABLEKS                       R16 R0 K19 ["settingsEnabled"]
       58 NOT                              R15 R16
       59 SETTABLEKS                       R15 R14 K11 ["isDisabled"]
       61 NEWCLOSURE                       R15 P0
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R15 R14 K12 ["onActivated"]
       66 GETUPVAL                         R15 4
       67 GETTABLEKS                       R15 R15 K20 ["Enums"]
       69 GETTABLEKS                       R15 R15 K21 ["CheckboxSize"]
       71 GETTABLEKS                       R15 R15 K22 ["Small"]
       73 SETTABLEKS                       R15 R14 K13 ["size"]
       75 SETTABLEKS                       R8 R14 K14 ["testId"]
       77 SETTABLEKS                       R7 R14 K15 ["LayoutOrder"]
       79 CALL                             R12 2 1
       80 SETTABLE                         R12 R3 R8
       81 FORGLOOP                         R4 2 ; [-67]
       83 GETUPVAL                         R4 3
       84 GETTABLEKS                       R4 R4 K7 ["createElement"]
       86 GETUPVAL                         R5 4
       87 GETTABLEKS                       R5 R5 K23 ["View"]
       89 DUPTABLE                         R6 K26 [{["tag"] = "col gap-small size-full-0 auto-y"}]
       90 DUPTABLE                         R7 K28 [{"title", "settings"}]
       91 GETUPVAL                         R8 3
       92 GETTABLEKS                       R8 R8 K7 ["createElement"]
       94 GETUPVAL                         R9 4
       95 GETTABLEKS                       R9 R9 K29 ["Text"]
       97 DUPTABLE                         R10 K31 [{["Text"], ["tag"] = "grow size-full-400 text-title-medium text-align-x-left"}]
       98 LOADK                            R13 K32 ["SettingTitle"]
       99 GETTABLEKS                       R14 R0 K27 ["title"]
      101 NAMECALL                         R11 R1 K18 ["getText"]
      103 CALL                             R11 3 1
      104 SETTABLEKS                       R11 R10 K29 ["Text"]
      106 CALL                             R8 2 1
      107 SETTABLEKS                       R8 R7 K27 ["title"]
      109 GETUPVAL                         R8 3
      110 GETTABLEKS                       R8 R8 K7 ["createElement"]
      112 GETUPVAL                         R9 4
      113 GETTABLEKS                       R9 R9 K23 ["View"]
      115 DUPTABLE                         R10 K34 [{["tag"] = "col align-y-top gap-small size-full-0 auto-y"}]
      116 MOVE                             R11 R3
      117 CALL                             R8 3 1
      118 SETTABLEKS                       R8 R7 K1 ["settings"]
      120 CALL                             R4 3 -1
      121 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["ExportController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K16 ["useSettings"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K17 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 RETURN                           R8 1
