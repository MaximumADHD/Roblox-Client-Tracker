PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["createElement"]
        9 GETUPVAL                         R4 3
       10 DUPTABLE                         R5 K7 [{"LayoutOrder", "title", "text", "side", "align"}]
       11 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       13 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       15 LOADK                            R8 K8 ["QuickShare"]
       16 LOADK                            R9 K9 ["NoEditWarningTitle"]
       17 NAMECALL                         R6 R1 K10 ["getText"]
       19 CALL                             R6 3 1
       20 SETTABLEKS                       R6 R5 K3 ["title"]
       22 LOADK                            R8 K8 ["QuickShare"]
       23 LOADK                            R9 K11 ["NoEditWarningDescription"]
       24 NAMECALL                         R6 R1 K10 ["getText"]
       26 CALL                             R6 3 1
       27 SETTABLEKS                       R6 R5 K4 ["text"]
       29 GETUPVAL                         R9 4
       30 GETTABLEKS                       R8 R9 K12 ["Enums"]
       32 GETTABLEKS                       R7 R8 K13 ["PopoverSide"]
       34 GETTABLEKS                       R6 R7 K14 ["Top"]
       36 SETTABLEKS                       R6 R5 K5 ["side"]
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R8 R9 K12 ["Enums"]
       41 GETTABLEKS                       R7 R8 K15 ["PopoverAlign"]
       43 GETTABLEKS                       R6 R7 K16 ["Center"]
       45 SETTABLEKS                       R6 R5 K6 ["align"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R6 R7 K1 ["createElement"]
       50 GETUPVAL                         R7 5
       51 DUPTABLE                         R8 K21 [{"name", "size", "style", "variant"}]
       52 GETUPVAL                         R12 4
       53 GETTABLEKS                       R11 R12 K12 ["Enums"]
       55 GETTABLEKS                       R10 R11 K22 ["IconName"]
       57 GETTABLEKS                       R9 R10 K23 ["TriangleExclamation"]
       59 SETTABLEKS                       R9 R8 K17 ["name"]
       61 GETUPVAL                         R12 4
       62 GETTABLEKS                       R11 R12 K12 ["Enums"]
       64 GETTABLEKS                       R10 R11 K24 ["IconSize"]
       66 GETTABLEKS                       R9 R10 K25 ["Small"]
       68 SETTABLEKS                       R9 R8 K18 ["size"]
       70 GETTABLEKS                       R11 R2 K26 ["Color"]
       72 GETTABLEKS                       R10 R11 K27 ["System"]
       74 GETTABLEKS                       R9 R10 K28 ["Warning"]
       76 SETTABLEKS                       R9 R8 K19 ["style"]
       78 GETUPVAL                         R12 4
       79 GETTABLEKS                       R11 R12 K12 ["Enums"]
       81 GETTABLEKS                       R10 R11 K29 ["IconVariant"]
       83 GETTABLEKS                       R9 R10 K30 ["Filled"]
       85 SETTABLEKS                       R9 R8 K20 ["variant"]
       87 CALL                             R6 2 -1
       88 CALL                             R3 -1 -1
       89 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PermissionsAction"]
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

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onItemChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["Item"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R3 0 2
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K1 ["PermissionsAction"]
       12 GETTABLEKS                       R5 R6 K2 ["Use"]
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K1 ["PermissionsAction"]
       17 GETTABLE                         R6 R7 R5
       18 DUPTABLE                         R4 K5 [{"id", "text"}]
       19 SETTABLEKS                       R6 R4 K3 ["id"]
       21 LOADK                            R9 K6 ["AssetPermission"]
       22 MOVE                             R10 R6
       23 NAMECALL                         R7 R1 K7 ["getText"]
       25 CALL                             R7 3 1
       26 SETTABLEKS                       R7 R4 K4 ["text"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R7 R8 K1 ["PermissionsAction"]
       31 GETTABLEKS                       R6 R7 K8 ["Edit"]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R8 R9 K1 ["PermissionsAction"]
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
       55 DUPTABLE                         R6 K21 [{"LayoutOrder", "value", "onItemChanged", "hasError", "isDisabled", "items", "label", "size", "width", "maxHeight"}]
       56 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       58 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R8 R9 K1 ["PermissionsAction"]
       63 GETTABLEKS                       R10 R0 K22 ["Item"]
       65 GETTABLEKS                       R9 R10 K23 ["Action"]
       67 GETTABLE                         R7 R8 R9
       68 SETTABLEKS                       R7 R6 K12 ["value"]
       70 NEWCLOSURE                       R7 P1
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R7 R6 K13 ["onItemChanged"]
       74 LOADB                            R7 0
       75 SETTABLEKS                       R7 R6 K14 ["hasError"]
       77 LOADB                            R7 0
       78 SETTABLEKS                       R7 R6 K15 ["isDisabled"]
       80 SETTABLEKS                       R3 R6 K16 ["items"]
       82 LOADK                            R7 K24 [""]
       83 SETTABLEKS                       R7 R6 K17 ["label"]
       85 GETUPVAL                         R10 4
       86 GETTABLEKS                       R9 R10 K25 ["Enums"]
       88 GETTABLEKS                       R8 R9 K26 ["InputSize"]
       90 GETTABLEKS                       R7 R8 K27 ["XSmall"]
       92 SETTABLEKS                       R7 R6 K18 ["size"]
       94 GETIMPORT                        R7 K30 [UDim.new]
       96 LOADN                            R8 0
       97 GETUPVAL                         R11 5
       98 GETTABLEKS                       R10 R11 K31 ["AMR_QUICKSHARE_PERMISSIONS_DROPDOWN_SIZE"]
      100 GETTABLEKS                       R9 R10 K32 ["X"]
      102 CALL                             R7 2 1
      103 SETTABLEKS                       R7 R6 K19 ["width"]
      105 GETUPVAL                         R9 5
      106 GETTABLEKS                       R8 R9 K31 ["AMR_QUICKSHARE_PERMISSIONS_DROPDOWN_SIZE"]
      108 GETTABLEKS                       R7 R8 K33 ["Y"]
      110 SETTABLEKS                       R7 R6 K20 ["maxHeight"]
      112 CALL                             R4 2 -1
      113 RETURN                           R4 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["selectionSet"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["items"]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PermissionsAction"]
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["PermissionsAction"]
        3 GETTABLE                         R2 R3 R1
        4 SETTABLEKS                       R2 R0 K1 ["Action"]
        6 GETUPVAL                         R2 1
        7 GETIMPORT                        R3 K4 [table.clone]
        9 GETUPVAL                         R4 2
       10 CALL                             R3 1 -1
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["CanAddEditors"]
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETTABLEKS                       R3 R0 K1 ["Subject"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K2 ["PermissionsSubject"]
        9 GETTABLEKS                       R4 R5 K3 ["User"]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["HasNonEditTypes"]
       18 JUMPIFNOT                        R3 ; [+11]
       19 GETTABLEKS                       R4 R0 K5 ["Action"]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K6 ["PermissionsAction"]
       24 GETTABLEKS                       R5 R6 K7 ["Edit"]
       26 JUMPIFEQ                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R4 R5 K8 ["createElement"]
       33 GETUPVAL                         R5 3
       34 DUPTABLE                         R6 K12 [{"Item", "Index", "onItemRemoved"}]
       35 SETTABLEKS                       R0 R6 K9 ["Item"]
       37 SETTABLEKS                       R1 R6 K10 ["Index"]
       39 GETUPVAL                         R7 4
       40 SETTABLEKS                       R7 R6 K11 ["onItemRemoved"]
       42 GETUPVAL                         R8 2
       43 GETTABLEKS                       R7 R8 K8 ["createElement"]
       45 GETUPVAL                         R8 5
       46 DUPTABLE                         R9 K14 [{"tag"}]
       47 LOADK                            R10 K15 ["row align-y-center auto-xy gap-small"]
       48 SETTABLEKS                       R10 R9 K13 ["tag"]
       50 DUPTABLE                         R10 K18 [{"WarningIcon", "Dropdown"}]
       51 JUMPIFNOT                        R3 ; [+10]
       52 GETUPVAL                         R12 2
       53 GETTABLEKS                       R11 R12 K8 ["createElement"]
       55 GETUPVAL                         R12 6
       56 DUPTABLE                         R13 K20 [{"LayoutOrder"}]
       57 LOADN                            R14 1
       58 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
       60 CALL                             R11 2 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R11
       63 SETTABLEKS                       R11 R10 K16 ["WarningIcon"]
       65 JUMPIFNOT                        R2 ; [+15]
       66 GETUPVAL                         R12 2
       67 GETTABLEKS                       R11 R12 K8 ["createElement"]
       69 GETUPVAL                         R12 7
       70 DUPTABLE                         R13 K22 [{"LayoutOrder", "Item", "onItemChanged"}]
       71 LOADN                            R14 2
       72 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
       74 SETTABLEKS                       R0 R13 K9 ["Item"]
       76 GETUPVAL                         R14 8
       77 SETTABLEKS                       R14 R13 K21 ["onItemChanged"]
       79 CALL                             R11 2 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R11
       82 SETTABLEKS                       R11 R10 K17 ["Dropdown"]
       84 CALL                             R7 3 -1
       85 CALL                             R4 -1 -1
       86 RETURN                           R4 -1

PROTO_10:
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
       64 DUPTABLE                         R16 K18 [{"LayoutOrder", "Items", "State", "isDisabled", "onActivated"}]
       65 LOADN                            R17 1
       66 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       68 SETTABLEKS                       R6 R16 K15 ["Items"]
       70 SETTABLEKS                       R2 R16 K1 ["State"]
       72 GETTABLEKS                       R18 R0 K19 ["CanAdd"]
       74 NOT                              R17 R18
       75 SETTABLEKS                       R17 R16 K16 ["isDisabled"]
       77 SETTABLEKS                       R7 R16 K17 ["onActivated"]
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K11 ["CollaboratorDropdown"]
       82 GETUPVAL                         R15 1
       83 GETTABLEKS                       R14 R15 K7 ["createElement"]
       85 GETUPVAL                         R15 6
       86 DUPTABLE                         R16 K22 [{"LayoutOrder", "PlaceholderText", "PlaceholderSubtext"}]
       87 LOADN                            R17 2
       88 SETTABLEKS                       R17 R16 K14 ["LayoutOrder"]
       90 LOADK                            R19 K23 ["QuickShare"]
       91 LOADK                            R20 K24 ["CollaboratorsHintTitle"]
       92 NAMECALL                         R17 R1 K25 ["getText"]
       94 CALL                             R17 3 1
       95 SETTABLEKS                       R17 R16 K20 ["PlaceholderText"]
       97 LOADK                            R19 K23 ["QuickShare"]
       98 LOADK                            R20 K26 ["CollaboratorsHintDescription"]
       99 NAMECALL                         R17 R1 K25 ["getText"]
      101 CALL                             R17 3 1
      102 SETTABLEKS                       R17 R16 K21 ["PlaceholderSubtext"]
      104 GETUPVAL                         R18 7
      105 GETTABLEKS                       R17 R18 K27 ["map"]
      107 MOVE                             R18 R4
      108 NEWCLOSURE                       R19 P4
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          UPVAL U1
      112 CAPTURE                          UPVAL U8
      113 CAPTURE                          VAL R8
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          UPVAL U9
      116 CAPTURE                          UPVAL U10
      117 CAPTURE                          VAL R9
      118 CALL                             R17 2 -1
      119 CALL                             R14 -1 1
      120 SETTABLEKS                       R14 R13 K12 ["SelectionView"]
      122 CALL                             R10 3 -1
      123 RETURN                           R10 -1

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
       25 GETTABLEKS                       R5 R2 K11 ["Tooltip"]
       27 GETTABLEKS                       R6 R2 K12 ["Icon"]
       29 GETTABLEKS                       R8 R2 K13 ["Hooks"]
       31 GETTABLEKS                       R7 R8 K14 ["useTokens"]
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R10 R0 K6 ["Packages"]
       37 GETTABLEKS                       R9 R10 K15 ["Framework"]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R9 R8 K16 ["ContextServices"]
       42 GETTABLEKS                       R10 R9 K17 ["Localization"]
       44 GETIMPORT                        R11 K5 [require]
       46 GETTABLEKS                       R13 R0 K6 ["Packages"]
       48 GETTABLEKS                       R12 R13 K18 ["Dash"]
       50 CALL                             R11 1 1
       51 GETIMPORT                        R12 K5 [require]
       53 GETIMPORT                        R14 K1 [script]
       55 GETTABLEKS                       R13 R14 K19 ["CollaboratorsDropdown"]
       57 CALL                             R12 1 1
       58 GETIMPORT                        R13 K5 [require]
       60 GETTABLEKS                       R17 R0 K20 ["Src"]
       62 GETTABLEKS                       R16 R17 K21 ["Dialogs"]
       64 GETTABLEKS                       R15 R16 K22 ["QuickShare"]
       66 GETTABLEKS                       R14 R15 K23 ["SelectedView"]
       68 CALL                             R13 1 1
       69 GETIMPORT                        R14 K5 [require]
       71 GETTABLEKS                       R18 R0 K20 ["Src"]
       73 GETTABLEKS                       R17 R18 K21 ["Dialogs"]
       75 GETTABLEKS                       R16 R17 K22 ["QuickShare"]
       77 GETTABLEKS                       R15 R16 K24 ["SelectedEntry"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K5 [require]
       82 GETTABLEKS                       R17 R0 K20 ["Src"]
       84 GETTABLEKS                       R16 R17 K25 ["Types"]
       86 CALL                             R15 1 1
       87 GETIMPORT                        R16 K5 [require]
       89 GETTABLEKS                       R19 R0 K20 ["Src"]
       91 GETTABLEKS                       R18 R19 K26 ["Resources"]
       93 GETTABLEKS                       R17 R18 K27 ["StyleConstants"]
       95 CALL                             R16 1 1
       96 DUPCLOSURE                       R17 K28 [PROTO_0]
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R6
      103 DUPCLOSURE                       R18 K29 [PROTO_3]
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R15
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R4
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R16
      110 DUPCLOSURE                       R19 K30 [PROTO_4]
      111 CAPTURE                          VAL R11
      112 DUPCLOSURE                       R20 K31 [PROTO_10]
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R19
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R13
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R18
      124 RETURN                           R20 1
