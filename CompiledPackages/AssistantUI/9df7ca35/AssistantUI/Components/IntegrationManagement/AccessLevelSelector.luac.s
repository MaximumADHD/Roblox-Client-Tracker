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
       44 DUPTABLE                         R5 K15 [{"tag", "LayoutOrder"}]
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R7 R7 K16 ["FFlagStudioAssistantPermissionsFilter"]
       48 JUMPIFNOT                        R7 ; [+2]
       49 LOADK                            R6 K17 ["col gap-xsmall auto-xy"]
       50 JUMP                             ; [+1]
       51 LOADK                            R6 K18 ["col gap-xsmall size-full-0 auto-y"]
       52 SETTABLEKS                       R6 R5 K13 ["tag"]
       54 GETTABLEKS                       R6 R0 K14 ["LayoutOrder"]
       56 SETTABLEKS                       R6 R5 K14 ["LayoutOrder"]
       58 DUPTABLE                         R6 K21 [{"Label", "Dropdown"}]
       59 GETUPVAL                         R7 2
       60 GETUPVAL                         R8 5
       61 DUPTABLE                         R9 K25 [{["tag"] = "auto-xy text-title-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
       62 GETTABLEKS                       R10 R1 K26 ["AccessLevel"]
       64 SETTABLEKS                       R10 R9 K23 ["Text"]
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K19 ["Label"]
       69 GETUPVAL                         R7 2
       70 GETUPVAL                         R8 6
       71 GETTABLEKS                       R8 R8 K27 ["Root"]
       73 DUPTABLE                         R9 K37 [{["label"] = "", ["value"], ["items"], ["onItemChanged"], ["isDisabled"], ["size"], ["width"], ["testId"], ["LayoutOrder"] = 2}]
       74 GETTABLEKS                       R10 R0 K38 ["selectedPreset"]
       76 SETTABLEKS                       R10 R9 K30 ["value"]
       78 SETTABLEKS                       R2 R9 K31 ["items"]
       80 NEWCLOSURE                       R10 P1
       81 CAPTURE                          VAL R0
       82 SETTABLEKS                       R10 R9 K32 ["onItemChanged"]
       84 GETTABLEKS                       R10 R0 K6 ["isDisabled"]
       86 SETTABLEKS                       R10 R9 K6 ["isDisabled"]
       88 GETUPVAL                         R10 7
       89 GETTABLEKS                       R10 R10 K39 ["Small"]
       91 SETTABLEKS                       R10 R9 K33 ["size"]
       93 GETIMPORT                        R10 K42 [UDim.new]
       95 LOADN                            R11 0
       96 LOADN                            R12 320
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R9 K34 ["width"]
      100 GETUPVAL                         R10 8
      101 GETTABLEKS                       R10 R10 K43 ["ScopePermissions"]
      103 GETTABLEKS                       R10 R10 K44 ["AccessLevelDropdown"]
      105 SETTABLEKS                       R10 R9 K35 ["testId"]
      107 CALL                             R7 2 1
      108 SETTABLEKS                       R7 R6 K20 ["Dropdown"]
      110 CALL                             R3 3 -1
      111 RETURN                           R3 -1

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
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["TestIds"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Resources"]
       32 GETTABLEKS                       R5 R5 K13 ["Localization"]
       34 GETTABLEKS                       R5 R5 K14 ["Translator"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K15 ["Parent"]
       41 GETTABLEKS                       R6 R6 K16 ["Foundation"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Parent"]
       48 GETTABLEKS                       R7 R7 K17 ["React"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R5 K18 ["Dropdown"]
       53 GETTABLEKS                       R8 R5 K19 ["Text"]
       55 GETTABLEKS                       R9 R5 K20 ["View"]
       57 GETTABLEKS                       R10 R5 K21 ["Enums"]
       59 GETTABLEKS                       R10 R10 K22 ["InputSize"]
       61 GETTABLEKS                       R11 R6 K23 ["createElement"]
       63 DUPCLOSURE                       R12 K24 [PROTO_2]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R3
       73 RETURN                           R12 1
