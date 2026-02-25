PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 DUPTABLE                         R2 K16 [{"AssigningGroup", "ColorPicker", "GroupData", "GroupMenu", "HoveredIcon", "IconPicker", "IconSearch", "MinimizedSettingsPane", "RenamingGroup", "RenamingTag", "Search", "TagData", "TagMenu", "UIGroupCollapseState", "UnknownTags", "WorldView"}]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R4 R0 K0 ["AssigningGroup"]
        9 MOVE                             R5 R1
       10 CALL                             R3 2 1
       11 SETTABLEKS                       R3 R2 K0 ["AssigningGroup"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R4 R0 K1 ["ColorPicker"]
       16 MOVE                             R5 R1
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K1 ["ColorPicker"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R4 R0 K2 ["GroupData"]
       23 MOVE                             R5 R1
       24 CALL                             R3 2 1
       25 SETTABLEKS                       R3 R2 K2 ["GroupData"]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R4 R0 K3 ["GroupMenu"]
       30 MOVE                             R5 R1
       31 CALL                             R3 2 1
       32 SETTABLEKS                       R3 R2 K3 ["GroupMenu"]
       34 GETUPVAL                         R3 4
       35 GETTABLEKS                       R4 R0 K4 ["HoveredIcon"]
       37 MOVE                             R5 R1
       38 CALL                             R3 2 1
       39 SETTABLEKS                       R3 R2 K4 ["HoveredIcon"]
       41 GETUPVAL                         R3 5
       42 GETTABLEKS                       R4 R0 K5 ["IconPicker"]
       44 MOVE                             R5 R1
       45 CALL                             R3 2 1
       46 SETTABLEKS                       R3 R2 K5 ["IconPicker"]
       48 GETUPVAL                         R3 6
       49 GETTABLEKS                       R4 R0 K6 ["IconSearch"]
       51 MOVE                             R5 R1
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R2 K6 ["IconSearch"]
       55 GETUPVAL                         R3 7
       56 GETTABLEKS                       R4 R0 K7 ["MinimizedSettingsPane"]
       58 MOVE                             R5 R1
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R2 K7 ["MinimizedSettingsPane"]
       62 GETUPVAL                         R3 8
       63 GETTABLEKS                       R4 R0 K8 ["RenamingGroup"]
       65 MOVE                             R5 R1
       66 CALL                             R3 2 1
       67 SETTABLEKS                       R3 R2 K8 ["RenamingGroup"]
       69 GETUPVAL                         R3 9
       70 GETTABLEKS                       R4 R0 K9 ["RenamingTag"]
       72 MOVE                             R5 R1
       73 CALL                             R3 2 1
       74 SETTABLEKS                       R3 R2 K9 ["RenamingTag"]
       76 GETUPVAL                         R3 10
       77 GETTABLEKS                       R4 R0 K10 ["Search"]
       79 MOVE                             R5 R1
       80 CALL                             R3 2 1
       81 SETTABLEKS                       R3 R2 K10 ["Search"]
       83 GETUPVAL                         R3 11
       84 GETTABLEKS                       R4 R0 K11 ["TagData"]
       86 MOVE                             R5 R1
       87 CALL                             R3 2 1
       88 SETTABLEKS                       R3 R2 K11 ["TagData"]
       90 GETUPVAL                         R3 12
       91 MOVE                             R4 R0
       92 MOVE                             R5 R1
       93 CALL                             R3 2 1
       94 SETTABLEKS                       R3 R2 K12 ["TagMenu"]
       96 GETUPVAL                         R3 13
       97 GETTABLEKS                       R4 R0 K13 ["UIGroupCollapseState"]
       99 MOVE                             R5 R1
      100 CALL                             R3 2 1
      101 SETTABLEKS                       R3 R2 K13 ["UIGroupCollapseState"]
      103 GETUPVAL                         R3 14
      104 GETTABLEKS                       R4 R0 K14 ["UnknownTags"]
      106 MOVE                             R5 R1
      107 CALL                             R3 2 1
      108 SETTABLEKS                       R3 R2 K14 ["UnknownTags"]
      110 GETUPVAL                         R3 15
      111 GETTABLEKS                       R4 R0 K15 ["WorldView"]
      113 MOVE                             R5 R1
      114 CALL                             R3 2 1
      115 SETTABLEKS                       R3 R2 K15 ["WorldView"]
      117 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["AssigningGroup"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R3 K3 [script]
       12 GETTABLEKS                       R2 R3 K5 ["ColorPicker"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R4 K3 [script]
       19 GETTABLEKS                       R3 R4 K6 ["GroupData"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K1 [require]
       24 GETIMPORT                        R5 K3 [script]
       26 GETTABLEKS                       R4 R5 K7 ["GroupMenu"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K1 [require]
       31 GETIMPORT                        R6 K3 [script]
       33 GETTABLEKS                       R5 R6 K8 ["HoveredIcon"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K1 [require]
       38 GETIMPORT                        R7 K3 [script]
       40 GETTABLEKS                       R6 R7 K9 ["IconPicker"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K1 [require]
       45 GETIMPORT                        R8 K3 [script]
       47 GETTABLEKS                       R7 R8 K10 ["IconSearch"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K1 [require]
       52 GETIMPORT                        R9 K3 [script]
       54 GETTABLEKS                       R8 R9 K11 ["MinimizedSettingsPane"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K1 [require]
       59 GETIMPORT                        R10 K3 [script]
       61 GETTABLEKS                       R9 R10 K12 ["RenamingGroup"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K1 [require]
       66 GETIMPORT                        R11 K3 [script]
       68 GETTABLEKS                       R10 R11 K13 ["RenamingTag"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K1 [require]
       73 GETIMPORT                        R12 K3 [script]
       75 GETTABLEKS                       R11 R12 K14 ["Search"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K1 [require]
       80 GETIMPORT                        R13 K3 [script]
       82 GETTABLEKS                       R12 R13 K15 ["TagData"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K1 [require]
       87 GETIMPORT                        R14 K3 [script]
       89 GETTABLEKS                       R13 R14 K16 ["TagMenu"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K1 [require]
       94 GETIMPORT                        R15 K3 [script]
       96 GETTABLEKS                       R14 R15 K17 ["UIGroupCollapseState"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K1 [require]
      101 GETIMPORT                        R16 K3 [script]
      103 GETTABLEKS                       R15 R16 K18 ["UnknownTags"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K1 [require]
      108 GETIMPORT                        R17 K3 [script]
      110 GETTABLEKS                       R16 R17 K19 ["WorldView"]
      112 CALL                             R15 1 1
      113 DUPCLOSURE                       R16 K20 [PROTO_0]
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R15
      130 RETURN                           R16 1
