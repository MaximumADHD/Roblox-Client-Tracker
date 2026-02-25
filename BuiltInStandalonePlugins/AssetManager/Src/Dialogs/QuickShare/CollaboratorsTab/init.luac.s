PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PermissionsGrantAction"]
        3 GETTABLE                         R1 R2 R0
        4 DUPTABLE                         R2 K3 [{"id", "text"}]
        5 SETTABLEKS                       R1 R2 K1 ["id"]
        7 GETUPVAL                         R3 1
        8 LOADK                            R5 K4 ["AssetPermission"]
        9 MOVE                             R6 R1
       10 NAMECALL                         R3 R3 K5 ["getText"]
       12 CALL                             R3 3 1
       13 SETTABLEKS                       R3 R2 K2 ["text"]
       15 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onItemChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["Item"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R3 0 2
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K1 ["PermissionsGrantAction"]
       12 GETTABLEKS                       R5 R6 K2 ["Use"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K1 ["PermissionsGrantAction"]
       17 GETTABLE                         R6 R7 R5
       18 DUPTABLE                         R4 K5 [{"id", "text"}]
       19 SETTABLEKS                       R6 R4 K3 ["id"]
       21 LOADK                            R9 K6 ["AssetPermission"]
       22 MOVE                             R10 R6
       23 NAMECALL                         R7 R1 K7 ["getText"]
       25 CALL                             R7 3 1
       26 SETTABLEKS                       R7 R4 K4 ["text"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R7 R8 K1 ["PermissionsGrantAction"]
       31 GETTABLEKS                       R6 R7 K8 ["Edit"]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R8 R9 K1 ["PermissionsGrantAction"]
       36 GETTABLE                         R7 R8 R6
       37 DUPTABLE                         R5 K5 [{"id", "text"}]
       38 SETTABLEKS                       R7 R5 K3 ["id"]
       40 LOADK                            R10 K6 ["AssetPermission"]
       41 MOVE                             R11 R7
       42 NAMECALL                         R8 R1 K7 ["getText"]
       44 CALL                             R8 3 1
       45 SETTABLEKS                       R8 R5 K4 ["text"]
       47 SETLIST                          R3 R4 2 [1]
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R4 R5 K9 ["createElement"]
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R5 R6 K10 ["Root"]
       55 DUPTABLE                         R6 K20 [{"value", "onItemChanged", "hasError", "isDisabled", "items", "label", "size", "width", "maxHeight"}]
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R8 R9 K1 ["PermissionsGrantAction"]
       59 GETTABLEKS                       R10 R0 K21 ["Item"]
       61 GETTABLEKS                       R9 R10 K22 ["Action"]
       63 GETTABLE                         R7 R8 R9
       64 SETTABLEKS                       R7 R6 K11 ["value"]
       66 NEWCLOSURE                       R7 P1
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R7 R6 K12 ["onItemChanged"]
       70 LOADB                            R7 0
       71 SETTABLEKS                       R7 R6 K13 ["hasError"]
       73 LOADB                            R7 0
       74 SETTABLEKS                       R7 R6 K14 ["isDisabled"]
       76 SETTABLEKS                       R3 R6 K15 ["items"]
       78 LOADK                            R7 K23 [""]
       79 SETTABLEKS                       R7 R6 K16 ["label"]
       81 GETUPVAL                         R10 4
       82 GETTABLEKS                       R9 R10 K24 ["Enums"]
       84 GETTABLEKS                       R8 R9 K25 ["InputSize"]
       86 GETTABLEKS                       R7 R8 K26 ["XSmall"]
       88 SETTABLEKS                       R7 R6 K17 ["size"]
       90 GETIMPORT                        R7 K29 [UDim.new]
       92 LOADN                            R8 0
       93 LOADN                            R9 100
       94 CALL                             R7 2 1
       95 SETTABLEKS                       R7 R6 K18 ["width"]
       97 LOADN                            R7 200
       98 SETTABLEKS                       R7 R6 K19 ["maxHeight"]
      100 CALL                             R4 2 -1
      101 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["count"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        7 RETURN                           R1 1
        8 NEWTABLE                         R2 0 0
       10 MOVE                             R3 R1
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R9 R7 K2 ["Id"]
       16 GETTABLE                         R8 R0 R9
       17 JUMPIF                           R8 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       20 MOVE                             R9 R2
       21 MOVE                             R10 R7
       22 GETIMPORT                        R8 K5 [table.insert]
       24 CALL                             R8 2 0
       25 FORGLOOP                         R3 2 ; [-12]
       27 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["selectionSet"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["items"]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PermissionsGrantAction"]
        3 GETTABLEKS                       R1 R2 K1 ["Use"]
        5 SETTABLEKS                       R1 R0 K2 ["Action"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R2 R0 K3 ["Id"]
       10 LOADB                            R3 1
       11 SETTABLE                         R3 R1 R2
       12 GETUPVAL                         R2 2
       13 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R1 K6 [table.insert]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 3
       20 GETIMPORT                        R2 K8 [table.clone]
       22 GETUPVAL                         R3 4
       23 CALL                             R2 1 -1
       24 CALL                             R1 -1 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Id"]
        3 LOADNIL                          R4
        4 SETTABLE                         R4 R2 R3
        5 GETIMPORT                        R2 K3 [table.remove]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 GETUPVAL                         R2 2
       11 GETIMPORT                        R3 K5 [table.clone]
       13 GETUPVAL                         R4 3
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["PermissionsGrantAction"]
        3 GETTABLE                         R2 R3 R1
        4 SETTABLEKS                       R2 R0 K1 ["Action"]
        6 GETUPVAL                         R2 1
        7 GETIMPORT                        R3 K4 [table.clone]
        9 GETUPVAL                         R4 2
       10 CALL                             R3 1 -1
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K4 [{"Item", "Index", "onItemRemoved"}]
        5 SETTABLEKS                       R0 R4 K1 ["Item"]
        7 SETTABLEKS                       R1 R4 K2 ["Index"]
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K3 ["onItemRemoved"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["createElement"]
       15 GETUPVAL                         R6 3
       16 DUPTABLE                         R7 K6 [{"Item", "onItemChanged"}]
       17 SETTABLEKS                       R0 R7 K1 ["Item"]
       19 GETUPVAL                         R8 4
       20 SETTABLEKS                       R8 R7 K5 ["onItemChanged"]
       22 CALL                             R5 2 -1
       23 CALL                             R2 -1 -1
       24 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["State"]
        6 GETTABLEKS                       R3 R0 K2 ["SetState"]
        8 GETTABLEKS                       R4 R2 K3 ["selection"]
       10 GETTABLEKS                       R5 R2 K4 ["selectionSet"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R6 R7 K5 ["useMemo"]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R8 0 1
       20 MOVE                             R9 R2
       21 SETLIST                          R8 R9 1 [1]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R8 1
       25 GETTABLEKS                       R7 R8 K6 ["useCallback"]
       27 NEWCLOSURE                       R8 P1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R5
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CALL                             R7 1 1
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R8 R9 K6 ["useCallback"]
       37 NEWCLOSURE                       R9 P2
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CALL                             R8 1 1
       43 GETUPVAL                         R10 1
       44 GETTABLEKS                       R9 R10 K6 ["useCallback"]
       46 NEWCLOSURE                       R10 P3
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 CALL                             R9 1 1
       51 GETUPVAL                         R11 1
       52 GETTABLEKS                       R10 R11 K7 ["createElement"]
       54 GETUPVAL                         R11 4
       55 DUPTABLE                         R12 K9 [{"tag"}]
       56 LOADK                            R13 K10 ["col size-full gap-medium data-testid=collaboratorstab-view"]
       57 SETTABLEKS                       R13 R12 K8 ["tag"]
       59 DUPTABLE                         R13 K13 [{"CollaboratorDropdown", "SelectionView"}]
       60 GETUPVAL                         R15 1
       61 GETTABLEKS                       R14 R15 K7 ["createElement"]
       63 GETUPVAL                         R15 5
       64 DUPTABLE                         R16 K17 [{"LayoutOrder", "Items", "State", "onActivated"}]
       65 LOADN                            R17 1
       66 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       68 SETTABLEKS                       R6 R16 K15 ["Items"]
       70 SETTABLEKS                       R2 R16 K1 ["State"]
       72 SETTABLEKS                       R7 R16 K16 ["onActivated"]
       74 CALL                             R14 2 1
       75 SETTABLEKS                       R14 R13 K11 ["CollaboratorDropdown"]
       77 GETUPVAL                         R15 1
       78 GETTABLEKS                       R14 R15 K7 ["createElement"]
       80 GETUPVAL                         R15 6
       81 DUPTABLE                         R16 K20 [{"LayoutOrder", "PlaceholderText", "PlaceholderSubtext"}]
       82 LOADN                            R17 2
       83 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       85 LOADK                            R19 K21 ["QuickShare"]
       86 LOADK                            R20 K22 ["CollaboratorsHintTitle"]
       87 NAMECALL                         R17 R1 K23 ["getText"]
       89 CALL                             R17 3 1
       90 SETTABLEKS                       R17 R16 K18 ["PlaceholderText"]
       92 LOADK                            R19 K21 ["QuickShare"]
       93 LOADK                            R20 K24 ["CollaboratorsHintDescription"]
       94 NAMECALL                         R17 R1 K23 ["getText"]
       96 CALL                             R17 3 1
       97 SETTABLEKS                       R17 R16 K19 ["PlaceholderSubtext"]
       99 GETUPVAL                         R18 7
      100 GETTABLEKS                       R17 R18 K25 ["map"]
      102 MOVE                             R18 R4
      103 NEWCLOSURE                       R19 P4
      104 CAPTURE                          UPVAL U1
      105 CAPTURE                          UPVAL U8
      106 CAPTURE                          VAL R8
      107 CAPTURE                          UPVAL U9
      108 CAPTURE                          VAL R9
      109 CALL                             R17 2 -1
      110 CALL                             R14 -1 1
      111 SETTABLEKS                       R14 R13 K12 ["SelectionView"]
      113 CALL                             R10 3 -1
      114 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Dropdown"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R7 K11 ["Framework"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K13 ["Localization"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R10 R0 K6 ["Packages"]
       40 GETTABLEKS                       R9 R10 K14 ["Dash"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K5 [require]
       45 GETIMPORT                        R11 K1 [script]
       47 GETTABLEKS                       R10 R11 K15 ["CollaboratorsDropdown"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R14 R0 K16 ["Src"]
       54 GETTABLEKS                       R13 R14 K17 ["Dialogs"]
       56 GETTABLEKS                       R12 R13 K18 ["QuickShare"]
       58 GETTABLEKS                       R11 R12 K19 ["SelectedView"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R15 R0 K16 ["Src"]
       65 GETTABLEKS                       R14 R15 K17 ["Dialogs"]
       67 GETTABLEKS                       R13 R14 K18 ["QuickShare"]
       69 GETTABLEKS                       R12 R13 K20 ["SelectedEntry"]
       71 CALL                             R11 1 1
       72 GETIMPORT                        R12 K5 [require]
       74 GETTABLEKS                       R14 R0 K16 ["Src"]
       76 GETTABLEKS                       R13 R14 K21 ["Types"]
       78 CALL                             R12 1 1
       79 DUPCLOSURE                       R13 K22 [PROTO_2]
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R2
       85 DUPCLOSURE                       R14 K23 [PROTO_3]
       86 CAPTURE                          VAL R8
       87 DUPCLOSURE                       R15 K24 [PROTO_9]
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R13
       98 RETURN                           R15 1
