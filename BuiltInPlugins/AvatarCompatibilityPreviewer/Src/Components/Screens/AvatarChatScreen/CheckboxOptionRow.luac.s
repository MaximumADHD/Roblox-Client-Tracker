PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setChecked"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["isChecked"]
        6 NOT                              R1 R2
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["useEventCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["createElement"]
       13 GETUPVAL                         R4 2
       14 DUPTABLE                         R5 K8 [{["tag"] = "row align-y-top gap-medium size-full-0 auto-y padding-small radius-medium", ["LayoutOrder"], ["onActivated"], ["testId"]}]
       15 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       17 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       19 SETTABLEKS                       R2 R5 K6 ["onActivated"]
       21 GETTABLEKS                       R6 R0 K7 ["testId"]
       23 SETTABLEKS                       R6 R5 K7 ["testId"]
       25 DUPTABLE                         R6 K11 [{"Checkbox", "Copy"}]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K2 ["createElement"]
       29 GETUPVAL                         R8 3
       30 DUPTABLE                         R9 K16 [{["isChecked"], ["label"] = "", ["onActivated"], ["size"], ["LayoutOrder"], ["testId"]}]
       31 GETTABLEKS                       R10 R0 K12 ["isChecked"]
       33 SETTABLEKS                       R10 R9 K12 ["isChecked"]
       35 GETTABLEKS                       R10 R0 K17 ["setChecked"]
       37 SETTABLEKS                       R10 R9 K6 ["onActivated"]
       39 GETUPVAL                         R10 4
       40 GETTABLEKS                       R10 R10 K18 ["Small"]
       42 SETTABLEKS                       R10 R9 K15 ["size"]
       44 MOVE                             R10 R1
       45 CALL                             R10 0 1
       46 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       48 LOADK                            R10 K19 ["%*-checkbox"]
       49 GETTABLEKS                       R12 R0 K7 ["testId"]
       51 NAMECALL                         R10 R10 K20 ["format"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K7 ["testId"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K9 ["Checkbox"]
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R7 R7 K2 ["createElement"]
       62 GETUPVAL                         R8 2
       63 DUPTABLE                         R9 K22 [{["tag"] = "col grow gap-xxsmall auto-y", ["LayoutOrder"]}]
       64 MOVE                             R10 R1
       65 CALL                             R10 0 1
       66 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       68 DUPTABLE                         R10 K25 [{"Label", "Description"}]
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K2 ["createElement"]
       72 GETUPVAL                         R12 5
       73 DUPTABLE                         R13 K28 [{["tag"] = "auto-xy text-label-small text-wrap text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
       74 GETTABLEKS                       R14 R0 K13 ["label"]
       76 SETTABLEKS                       R14 R13 K27 ["Text"]
       78 MOVE                             R14 R1
       79 CALL                             R14 0 1
       80 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K23 ["Label"]
       85 GETUPVAL                         R11 1
       86 GETTABLEKS                       R11 R11 K2 ["createElement"]
       88 GETUPVAL                         R12 5
       89 DUPTABLE                         R13 K30 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
       90 GETTABLEKS                       R14 R0 K31 ["description"]
       92 SETTABLEKS                       R14 R13 K27 ["Text"]
       94 MOVE                             R14 R1
       95 CALL                             R14 0 1
       96 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K24 ["Description"]
      101 CALL                             R7 3 1
      102 SETTABLEKS                       R7 R6 K10 ["Copy"]
      104 CALL                             R3 3 -1
      105 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Enums"]
       30 GETTABLEKS                       R4 R4 K11 ["InputSize"]
       32 GETTABLEKS                       R5 R3 K12 ["Checkbox"]
       34 GETTABLEKS                       R6 R3 K13 ["Text"]
       36 GETTABLEKS                       R7 R3 K14 ["View"]
       38 DUPCLOSURE                       R8 K15 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R6
       45 RETURN                           R8 1
