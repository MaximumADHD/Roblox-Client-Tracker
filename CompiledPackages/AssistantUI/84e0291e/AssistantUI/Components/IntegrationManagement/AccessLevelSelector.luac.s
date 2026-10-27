PROTO_0:
        0 DUPTABLE                         R0 K1 [{"AccessLevel"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["Permissions"]
        3 LOADK                            R4 K0 ["AccessLevel"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["AccessLevel"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onSelect"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 NEWTABLE                         R2 0 0
       15 GETTABLEKS                       R3 R0 K3 ["presets"]
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 DUPTABLE                         R10 K7 [{"id", "text", "isDisabled"}]
       21 GETTABLEKS                       R11 R7 K4 ["id"]
       23 SETTABLEKS                       R11 R10 K4 ["id"]
       25 GETTABLEKS                       R11 R7 K8 ["name"]
       27 SETTABLEKS                       R11 R10 K5 ["text"]
       29 GETTABLEKS                       R12 R7 K9 ["isSelectable"]
       31 NOT                              R11 R12
       32 SETTABLEKS                       R11 R10 K6 ["isDisabled"]
       34 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       36 MOVE                             R9 R2
       37 GETIMPORT                        R8 K12 [table.insert]
       39 CALL                             R8 2 0
       40 FORGLOOP                         R3 2 ; [-21]
       42 GETUPVAL                         R3 2
       43 GETUPVAL                         R4 3
       44 DUPTABLE                         R5 K16 [{["tag"] = "col gap-xsmall size-full-0 auto-y", ["LayoutOrder"]}]
       45 GETTABLEKS                       R6 R0 K15 ["LayoutOrder"]
       47 SETTABLEKS                       R6 R5 K15 ["LayoutOrder"]
       49 DUPTABLE                         R6 K19 [{"Label", "Dropdown"}]
       50 GETUPVAL                         R7 2
       51 GETUPVAL                         R8 4
       52 DUPTABLE                         R9 K23 [{["tag"] = "auto-xy text-title-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
       53 GETTABLEKS                       R10 R1 K24 ["AccessLevel"]
       55 SETTABLEKS                       R10 R9 K21 ["Text"]
       57 CALL                             R7 2 1
       58 SETTABLEKS                       R7 R6 K17 ["Label"]
       60 GETUPVAL                         R7 2
       61 GETUPVAL                         R8 5
       62 GETTABLEKS                       R8 R8 K25 ["Root"]
       64 DUPTABLE                         R9 K35 [{["label"] = "", ["value"], ["items"], ["onItemChanged"], ["isDisabled"], ["size"], ["width"], ["testId"], ["LayoutOrder"] = 2}]
       65 GETTABLEKS                       R10 R0 K36 ["selectedPreset"]
       67 SETTABLEKS                       R10 R9 K28 ["value"]
       69 SETTABLEKS                       R2 R9 K29 ["items"]
       71 NEWCLOSURE                       R10 P1
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R10 R9 K30 ["onItemChanged"]
       75 GETTABLEKS                       R10 R0 K6 ["isDisabled"]
       77 SETTABLEKS                       R10 R9 K6 ["isDisabled"]
       79 GETUPVAL                         R10 6
       80 GETTABLEKS                       R10 R10 K37 ["Small"]
       82 SETTABLEKS                       R10 R9 K31 ["size"]
       84 GETIMPORT                        R10 K40 [UDim.new]
       86 LOADN                            R11 0
       87 LOADN                            R12 320
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K32 ["width"]
       91 GETUPVAL                         R10 7
       92 GETTABLEKS                       R10 R10 K41 ["ScopePermissions"]
       94 GETTABLEKS                       R10 R10 K42 ["AccessLevelDropdown"]
       96 SETTABLEKS                       R10 R9 K33 ["testId"]
       98 CALL                             R7 2 1
       99 SETTABLEKS                       R7 R6 K18 ["Dropdown"]
      101 CALL                             R3 3 -1
      102 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["ExecutionPermissionsModel"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["TestIds"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Resources"]
       27 GETTABLEKS                       R4 R4 K12 ["Localization"]
       29 GETTABLEKS                       R4 R4 K13 ["Translator"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K14 ["Parent"]
       36 GETTABLEKS                       R5 R5 K15 ["Foundation"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Parent"]
       43 GETTABLEKS                       R6 R6 K16 ["React"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R4 K17 ["Dropdown"]
       48 GETTABLEKS                       R7 R4 K18 ["Text"]
       50 GETTABLEKS                       R8 R4 K19 ["View"]
       52 GETTABLEKS                       R9 R4 K20 ["Enums"]
       54 GETTABLEKS                       R9 R9 K21 ["InputSize"]
       56 GETTABLEKS                       R10 R5 K22 ["createElement"]
       58 DUPCLOSURE                       R11 K23 [PROTO_2]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R2
       67 RETURN                           R11 1
