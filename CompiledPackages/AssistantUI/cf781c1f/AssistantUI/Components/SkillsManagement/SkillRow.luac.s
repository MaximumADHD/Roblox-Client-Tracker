PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isSelected"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R1 K1 ["bg-content-emphasis"]
        4 JUMP                             ; [+1]
        5 LOADK                            R1 K2 [""]
        6 GETUPVAL                         R2 0
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K7 [{"tag", "testId", "onActivated", "LayoutOrder"}]
        9 LOADK                            R6 K8 ["row size-full-0 auto-y gap-small align-y-center padding-y-xsmall padding-x-small %*"]
       10 MOVE                             R8 R1
       11 NAMECALL                         R6 R6 K9 ["format"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 SETTABLEKS                       R5 R4 K3 ["tag"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K10 ["Skills"]
       20 GETTABLEKS                       R5 R5 K11 ["Row"]
       22 GETTABLEKS                       R6 R0 K12 ["skill"]
       24 GETTABLEKS                       R6 R6 K13 ["name"]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R4 K4 ["testId"]
       29 GETTABLEKS                       R5 R0 K14 ["onSelected"]
       31 SETTABLEKS                       R5 R4 K5 ["onActivated"]
       33 GETTABLEKS                       R5 R0 K6 ["LayoutOrder"]
       35 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       37 DUPTABLE                         R5 K18 [{"FolderIcon", "Name", "Toggle"}]
       38 GETUPVAL                         R6 0
       39 GETUPVAL                         R7 3
       40 DUPTABLE                         R8 K20 [{"name", "size", "LayoutOrder"}]
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R9 R9 K21 ["Folder"]
       44 SETTABLEKS                       R9 R8 K13 ["name"]
       46 GETUPVAL                         R9 5
       47 GETTABLEKS                       R9 R9 K22 ["Small"]
       49 SETTABLEKS                       R9 R8 K19 ["size"]
       51 LOADN                            R9 1
       52 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K15 ["FolderIcon"]
       57 GETUPVAL                         R6 0
       58 GETUPVAL                         R7 6
       59 DUPTABLE                         R8 K24 [{"tag", "Text", "LayoutOrder"}]
       60 LOADK                            R9 K25 ["fill auto-y text-body-small content-default text-align-x-left"]
       61 SETTABLEKS                       R9 R8 K3 ["tag"]
       63 GETTABLEKS                       R9 R0 K12 ["skill"]
       65 GETTABLEKS                       R9 R9 K13 ["name"]
       67 SETTABLEKS                       R9 R8 K23 ["Text"]
       69 LOADN                            R9 2
       70 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       72 CALL                             R6 2 1
       73 SETTABLEKS                       R6 R5 K16 ["Name"]
       75 GETUPVAL                         R6 0
       76 GETUPVAL                         R7 7
       77 DUPTABLE                         R8 K29 [{"label", "isChecked", "isDisabled", "onActivated", "size", "LayoutOrder"}]
       78 LOADK                            R9 K2 [""]
       79 SETTABLEKS                       R9 R8 K26 ["label"]
       81 LOADB                            R9 1
       82 SETTABLEKS                       R9 R8 K27 ["isChecked"]
       84 LOADB                            R9 1
       85 SETTABLEKS                       R9 R8 K28 ["isDisabled"]
       87 DUPCLOSURE                       R9 K30 [PROTO_0]
       88 SETTABLEKS                       R9 R8 K5 ["onActivated"]
       90 GETUPVAL                         R9 8
       91 GETTABLEKS                       R9 R9 K22 ["Small"]
       93 SETTABLEKS                       R9 R8 K19 ["size"]
       95 LOADN                            R9 3
       96 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       98 CALL                             R6 2 1
       99 SETTABLEKS                       R6 R5 K17 ["Toggle"]
      101 CALL                             R2 3 -1
      102 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Skills"]
       25 GETTABLEKS                       R4 R4 K10 ["SkillDefinition"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K13 ["Icon"]
       37 GETTABLEKS                       R6 R1 K14 ["Text"]
       39 GETTABLEKS                       R7 R1 K15 ["Toggle"]
       41 GETTABLEKS                       R8 R1 K16 ["View"]
       43 GETTABLEKS                       R9 R1 K17 ["Enums"]
       45 GETTABLEKS                       R9 R9 K18 ["IconName"]
       47 GETTABLEKS                       R10 R1 K17 ["Enums"]
       49 GETTABLEKS                       R10 R10 K19 ["IconSize"]
       51 GETTABLEKS                       R11 R1 K17 ["Enums"]
       53 GETTABLEKS                       R11 R11 K20 ["InputSize"]
       55 GETTABLEKS                       R12 R2 K21 ["createElement"]
       57 DUPCLOSURE                       R13 K22 [PROTO_1]
       58 CAPTURE                          VAL R12
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R11
       67 RETURN                           R13 1
