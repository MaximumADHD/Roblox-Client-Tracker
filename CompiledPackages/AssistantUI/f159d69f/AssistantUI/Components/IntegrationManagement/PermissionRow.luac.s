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
        2 DUPTABLE                         R3 K3 [{[1] = "row gap-medium size-full-0 auto-y padding-y-xsmall", ["LayoutOrder"]}]
        3 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
        5 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
        7 DUPTABLE                         R4 K6 [{"Details", "PermissionControl"}]
        8 GETUPVAL                         R5 0
        9 GETUPVAL                         R6 1
       10 DUPTABLE                         R7 K9 [{[1] = "col grow gap-xxsmall size-0-0 auto-y", ["LayoutOrder"] = 1}]
       11 DUPTABLE                         R8 K12 [{"PermissionName", "PermissionDescription"}]
       12 GETUPVAL                         R9 0
       13 GETUPVAL                         R10 2
       14 DUPTABLE                         R11 K16 [{[1] = "size-full-0 auto-y text-label-small text-wrap text-align-x-left", ["fontStyle"], ["Text"], ["LayoutOrder"] = 1}]
       15 DUPTABLE                         R12 K18 [{"Font"}]
       16 GETIMPORT                        R13 K21 [Enum.Font.BuilderSansBold]
       18 SETTABLEKS                       R13 R12 K17 ["Font"]
       20 SETTABLEKS                       R12 R11 K14 ["fontStyle"]
       22 GETTABLEKS                       R12 R0 K22 ["entry"]
       24 GETTABLEKS                       R12 R12 K23 ["name"]
       26 SETTABLEKS                       R12 R11 K15 ["Text"]
       28 CALL                             R9 2 1
       29 SETTABLEKS                       R9 R8 K10 ["PermissionName"]
       31 GETTABLEKS                       R10 R0 K22 ["entry"]
       33 GETTABLEKS                       R10 R10 K24 ["description"]
       35 JUMPIFEQKS                       R10 K25 [""] ; [+12]
       37 GETUPVAL                         R9 0
       38 GETUPVAL                         R10 2
       39 DUPTABLE                         R11 K28 [{[1] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"] = 2}]
       40 GETTABLEKS                       R12 R0 K22 ["entry"]
       42 GETTABLEKS                       R12 R12 K24 ["description"]
       44 SETTABLEKS                       R12 R11 K15 ["Text"]
       46 CALL                             R9 2 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R9
       49 SETTABLEKS                       R9 R8 K11 ["PermissionDescription"]
       51 CALL                             R5 3 1
       52 SETTABLEKS                       R5 R4 K4 ["Details"]
       54 GETUPVAL                         R5 0
       55 GETUPVAL                         R6 3
       56 DUPTABLE                         R7 K34 [{["label"] = "", ["isChecked"], ["onActivated"], ["size"], ["testId"], ["LayoutOrder"] = 2}]
       57 GETTABLEKS                       R8 R0 K22 ["entry"]
       59 GETTABLEKS                       R8 R8 K35 ["enabled"]
       61 SETTABLEKS                       R8 R7 K30 ["isChecked"]
       63 NEWCLOSURE                       R8 P0
       64 CAPTURE                          VAL R0
       65 SETTABLEKS                       R8 R7 K31 ["onActivated"]
       67 GETUPVAL                         R8 4
       68 GETTABLEKS                       R8 R8 K36 ["Small"]
       70 SETTABLEKS                       R8 R7 K32 ["size"]
       72 GETUPVAL                         R8 5
       73 GETTABLEKS                       R8 R8 K37 ["ScopePermissions"]
       75 GETTABLEKS                       R8 R8 K38 ["ScopeCheckbox"]
       77 GETTABLEKS                       R9 R0 K22 ["entry"]
       79 GETTABLEKS                       R9 R9 K39 ["key"]
       81 CALL                             R8 1 1
       82 SETTABLEKS                       R8 R7 K33 ["testId"]
       84 CALL                             R5 2 1
       85 SETTABLEKS                       R5 R4 K5 ["PermissionControl"]
       87 CALL                             R1 3 -1
       88 RETURN                           R1 -1

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
