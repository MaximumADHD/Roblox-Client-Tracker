PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onToggle"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["entry"]
        6 GETTABLEKS                       R2 R2 K2 ["key"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K4 [{[1] = "row gap-medium size-full-0 auto-y padding-y-xsmall", ["testId"], ["LayoutOrder"]}]
        3 GETTABLEKS                       R4 R0 K2 ["testId"]
        5 SETTABLEKS                       R4 R3 K2 ["testId"]
        7 GETTABLEKS                       R4 R0 K3 ["LayoutOrder"]
        9 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       11 DUPTABLE                         R4 K7 [{"Details", "PermissionControl"}]
       12 GETUPVAL                         R5 0
       13 GETUPVAL                         R6 1
       14 DUPTABLE                         R7 K10 [{[1] = "col grow gap-xxsmall size-0-0 auto-y", ["LayoutOrder"] = 1}]
       15 DUPTABLE                         R8 K13 [{"PermissionName", "PermissionDescription"}]
       16 GETTABLEKS                       R10 R0 K14 ["categoryName"]
       18 JUMPIFNOT                        R10 ; [+35]
       19 GETUPVAL                         R9 0
       20 GETUPVAL                         R10 1
       21 DUPTABLE                         R11 K16 [{[1] = "row wrap align-y-center gap-xsmall size-full-0 auto-y", ["LayoutOrder"] = 1}]
       22 DUPTABLE                         R12 K19 [{"Name", "Category"}]
       23 GETUPVAL                         R13 0
       24 GETUPVAL                         R14 2
       25 DUPTABLE                         R15 K23 [{[1] = "shrink auto-xy text-label-small text-wrap text-align-x-left", ["fontStyle"], ["Text"], ["LayoutOrder"] = 1}]
       26 DUPTABLE                         R16 K25 [{"Font"}]
       27 GETIMPORT                        R17 K28 [Enum.Font.BuilderSansBold]
       29 SETTABLEKS                       R17 R16 K24 ["Font"]
       31 SETTABLEKS                       R16 R15 K21 ["fontStyle"]
       33 GETTABLEKS                       R16 R0 K29 ["entry"]
       35 GETTABLEKS                       R16 R16 K30 ["name"]
       37 SETTABLEKS                       R16 R15 K22 ["Text"]
       39 CALL                             R13 2 1
       40 SETTABLEKS                       R13 R12 K17 ["Name"]
       42 GETUPVAL                         R13 0
       43 GETUPVAL                         R14 2
       44 DUPTABLE                         R15 K33 [{[1] = "shrink auto-xy text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"] = 2}]
       45 GETTABLEKS                       R16 R0 K14 ["categoryName"]
       47 SETTABLEKS                       R16 R15 K22 ["Text"]
       49 CALL                             R13 2 1
       50 SETTABLEKS                       R13 R12 K18 ["Category"]
       52 CALL                             R9 3 1
       53 JUMP                             ; [+17]
       54 GETUPVAL                         R9 0
       55 GETUPVAL                         R10 2
       56 DUPTABLE                         R11 K35 [{[1] = "size-full-0 auto-y text-label-small text-wrap text-align-x-left", ["fontStyle"], ["Text"], ["LayoutOrder"] = 1}]
       57 DUPTABLE                         R12 K25 [{"Font"}]
       58 GETIMPORT                        R13 K28 [Enum.Font.BuilderSansBold]
       60 SETTABLEKS                       R13 R12 K24 ["Font"]
       62 SETTABLEKS                       R12 R11 K21 ["fontStyle"]
       64 GETTABLEKS                       R12 R0 K29 ["entry"]
       66 GETTABLEKS                       R12 R12 K30 ["name"]
       68 SETTABLEKS                       R12 R11 K22 ["Text"]
       70 CALL                             R9 2 1
       71 SETTABLEKS                       R9 R8 K11 ["PermissionName"]
       73 GETTABLEKS                       R10 R0 K29 ["entry"]
       75 GETTABLEKS                       R10 R10 K36 ["description"]
       77 JUMPIFEQKS                       R10 K37 [""] ; [+12]
       79 GETUPVAL                         R9 0
       80 GETUPVAL                         R10 2
       81 DUPTABLE                         R11 K39 [{[1] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"] = 2}]
       82 GETTABLEKS                       R12 R0 K29 ["entry"]
       84 GETTABLEKS                       R12 R12 K36 ["description"]
       86 SETTABLEKS                       R12 R11 K22 ["Text"]
       88 CALL                             R9 2 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R9
       91 SETTABLEKS                       R9 R8 K12 ["PermissionDescription"]
       93 CALL                             R5 3 1
       94 SETTABLEKS                       R5 R4 K5 ["Details"]
       96 GETUPVAL                         R5 0
       97 GETUPVAL                         R6 3
       98 DUPTABLE                         R7 K45 [{["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["testId"], ["LayoutOrder"] = 2}]
       99 GETTABLEKS                       R8 R0 K29 ["entry"]
      101 GETTABLEKS                       R8 R8 K46 ["enabled"]
      103 SETTABLEKS                       R8 R7 K41 ["isChecked"]
      105 GETTABLEKS                       R8 R0 K42 ["isDisabled"]
      107 SETTABLEKS                       R8 R7 K42 ["isDisabled"]
      109 NEWCLOSURE                       R8 P0
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R8 R7 K43 ["onActivated"]
      113 GETUPVAL                         R8 4
      114 GETTABLEKS                       R8 R8 K47 ["Small"]
      116 SETTABLEKS                       R8 R7 K44 ["size"]
      118 GETUPVAL                         R8 5
      119 GETTABLEKS                       R8 R8 K48 ["ScopePermissions"]
      121 GETTABLEKS                       R8 R8 K49 ["ScopeCheckbox"]
      123 GETTABLEKS                       R9 R0 K29 ["entry"]
      125 GETTABLEKS                       R9 R9 K50 ["key"]
      127 CALL                             R8 1 1
      128 SETTABLEKS                       R8 R7 K2 ["testId"]
      130 CALL                             R5 2 1
      131 SETTABLEKS                       R5 R4 K6 ["PermissionControl"]
      133 CALL                             R1 3 -1
      134 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["ExecutionPermissionsModel"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["TestIds"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K12 ["Text"]
       39 GETTABLEKS                       R6 R3 K13 ["Toggle"]
       41 GETTABLEKS                       R7 R3 K14 ["View"]
       43 GETTABLEKS                       R8 R3 K15 ["Enums"]
       45 GETTABLEKS                       R8 R8 K16 ["InputSize"]
       47 GETTABLEKS                       R9 R4 K17 ["createElement"]
       49 DUPCLOSURE                       R10 K18 [PROTO_1]
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R2
       56 RETURN                           R10 1
