PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["createElement"]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K2 ["Tooltip"]
       12 DUPTABLE                         R5 K8 [{"LayoutOrder", "title", "text", "side", "align"}]
       13 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       15 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       17 LOADK                            R8 K9 ["QuickShare"]
       18 LOADK                            R9 K10 ["NoEditWarningTitle"]
       19 NAMECALL                         R6 R1 K11 ["getText"]
       21 CALL                             R6 3 1
       22 SETTABLEKS                       R6 R5 K4 ["title"]
       24 LOADK                            R8 K9 ["QuickShare"]
       25 LOADK                            R9 K12 ["NoEditWarningDescription"]
       26 NAMECALL                         R6 R1 K11 ["getText"]
       28 CALL                             R6 3 1
       29 SETTABLEKS                       R6 R5 K5 ["text"]
       31 GETUPVAL                         R6 3
       32 GETTABLEKS                       R6 R6 K13 ["Enums"]
       34 GETTABLEKS                       R6 R6 K14 ["PopoverSide"]
       36 GETTABLEKS                       R6 R6 K15 ["Top"]
       38 SETTABLEKS                       R6 R5 K6 ["side"]
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K13 ["Enums"]
       43 GETTABLEKS                       R6 R6 K16 ["PopoverAlign"]
       45 GETTABLEKS                       R6 R6 K17 ["Center"]
       47 SETTABLEKS                       R6 R5 K7 ["align"]
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K1 ["createElement"]
       52 GETUPVAL                         R7 3
       53 GETTABLEKS                       R7 R7 K18 ["Icon"]
       55 DUPTABLE                         R8 K23 [{"name", "size", "style", "variant"}]
       56 GETUPVAL                         R9 3
       57 GETTABLEKS                       R9 R9 K13 ["Enums"]
       59 GETTABLEKS                       R9 R9 K24 ["IconName"]
       61 GETTABLEKS                       R9 R9 K25 ["TriangleExclamation"]
       63 SETTABLEKS                       R9 R8 K19 ["name"]
       65 GETUPVAL                         R9 3
       66 GETTABLEKS                       R9 R9 K13 ["Enums"]
       68 GETTABLEKS                       R9 R9 K26 ["IconSize"]
       70 GETTABLEKS                       R9 R9 K27 ["Small"]
       72 SETTABLEKS                       R9 R8 K20 ["size"]
       74 GETTABLEKS                       R9 R2 K28 ["Color"]
       76 GETTABLEKS                       R9 R9 K29 ["System"]
       78 GETTABLEKS                       R9 R9 K30 ["Warning"]
       80 SETTABLEKS                       R9 R8 K21 ["style"]
       82 GETUPVAL                         R9 3
       83 GETTABLEKS                       R9 R9 K13 ["Enums"]
       85 GETTABLEKS                       R9 R9 K31 ["IconVariant"]
       87 GETTABLEKS                       R9 R9 K32 ["Filled"]
       89 SETTABLEKS                       R9 R8 K22 ["variant"]
       91 CALL                             R6 2 -1
       92 CALL                             R3 -1 -1
       93 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["PermissionsAction"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onItemChanged"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Item"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R3 0 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K1 ["PermissionsAction"]
       12 GETTABLEKS                       R5 R5 K2 ["Use"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K1 ["PermissionsAction"]
       17 GETTABLE                         R6 R7 R5
       18 DUPTABLE                         R4 K5 [{"id", "text"}]
       19 SETTABLEKS                       R6 R4 K3 ["id"]
       21 LOADK                            R9 K6 ["AssetPermission"]
       22 MOVE                             R10 R6
       23 NAMECALL                         R7 R1 K7 ["getText"]
       25 CALL                             R7 3 1
       26 SETTABLEKS                       R7 R4 K4 ["text"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K1 ["PermissionsAction"]
       31 GETTABLEKS                       R6 R6 K8 ["Edit"]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K1 ["PermissionsAction"]
       36 GETTABLE                         R7 R8 R6
       37 DUPTABLE                         R5 K5 [{"id", "text"}]
       38 SETTABLEKS                       R7 R5 K3 ["id"]
       40 LOADK                            R10 K6 ["AssetPermission"]
       41 MOVE                             R11 R7
       42 NAMECALL                         R8 R1 K7 ["getText"]
       44 CALL                             R8 3 1
       45 SETTABLEKS                       R8 R5 K4 ["text"]
       47 SETLIST                          R3 R4 2 [1]
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K9 ["createElement"]
       52 GETUPVAL                         R5 3
       53 GETTABLEKS                       R5 R5 K10 ["Dropdown"]
       55 GETTABLEKS                       R5 R5 K11 ["Root"]
       57 DUPTABLE                         R6 K21 [{"LayoutOrder", "value", "onItemChanged", "isDisabled", "items", "label", "size", "width", "maxHeight"}]
       58 GETTABLEKS                       R7 R0 K12 ["LayoutOrder"]
       60 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       62 GETUPVAL                         R8 1
       63 GETTABLEKS                       R8 R8 K1 ["PermissionsAction"]
       65 GETTABLEKS                       R9 R0 K22 ["Item"]
       67 GETTABLEKS                       R9 R9 K23 ["Action"]
       69 GETTABLE                         R7 R8 R9
       70 SETTABLEKS                       R7 R6 K13 ["value"]
       72 NEWCLOSURE                       R7 P1
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R7 R6 K14 ["onItemChanged"]
       76 GETTABLEKS                       R7 R0 K15 ["isDisabled"]
       78 SETTABLEKS                       R7 R6 K15 ["isDisabled"]
       80 SETTABLEKS                       R3 R6 K16 ["items"]
       82 LOADK                            R7 K24 [""]
       83 SETTABLEKS                       R7 R6 K17 ["label"]
       85 GETUPVAL                         R7 3
       86 GETTABLEKS                       R7 R7 K25 ["Enums"]
       88 GETTABLEKS                       R7 R7 K26 ["InputSize"]
       90 GETTABLEKS                       R7 R7 K27 ["XSmall"]
       92 SETTABLEKS                       R7 R6 K18 ["size"]
       94 GETIMPORT                        R7 K30 [UDim.new]
       96 LOADN                            R8 0
       97 GETUPVAL                         R9 4
       98 GETTABLEKS                       R9 R9 K31 ["QuickSharePermissionsDropdownSize"]
      100 GETTABLEKS                       R9 R9 K32 ["X"]
      102 CALL                             R7 2 1
      103 SETTABLEKS                       R7 R6 K19 ["width"]
      105 GETUPVAL                         R7 4
      106 GETTABLEKS                       R7 R7 K31 ["QuickSharePermissionsDropdownSize"]
      108 GETTABLEKS                       R7 R7 K33 ["Y"]
      110 SETTABLEKS                       R7 R6 K20 ["maxHeight"]
      112 CALL                             R4 2 -1
      113 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getCollaboratorItems"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["addCollaborator"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["removeCollaborator"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["updateCollaborator"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CanAddEditors"]
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETTABLEKS                       R3 R0 K1 ["Subject"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["PermissionsSubject"]
        9 GETTABLEKS                       R4 R4 K3 ["User"]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K4 ["HasNonEditTypes"]
       18 JUMPIFNOT                        R3 ; [+11]
       19 GETTABLEKS                       R4 R0 K5 ["Action"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K6 ["PermissionsAction"]
       24 GETTABLEKS                       R5 R5 K7 ["Edit"]
       26 JUMPIFEQ                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K8 ["createElement"]
       33 GETUPVAL                         R5 3
       34 DUPTABLE                         R6 K12 [{"Item", "Index", "onItemRemoved"}]
       35 SETTABLEKS                       R0 R6 K9 ["Item"]
       37 SETTABLEKS                       R1 R6 K10 ["Index"]
       39 GETUPVAL                         R7 4
       40 SETTABLEKS                       R7 R6 K11 ["onItemRemoved"]
       42 GETUPVAL                         R7 2
       43 GETTABLEKS                       R7 R7 K8 ["createElement"]
       45 GETUPVAL                         R8 5
       46 GETTABLEKS                       R8 R8 K13 ["View"]
       48 DUPTABLE                         R9 K15 [{"tag"}]
       49 LOADK                            R10 K16 ["row align-y-center auto-xy gap-small"]
       50 SETTABLEKS                       R10 R9 K14 ["tag"]
       52 DUPTABLE                         R10 K19 [{"WarningIcon", "Dropdown"}]
       53 JUMPIFNOT                        R3 ; [+10]
       54 GETUPVAL                         R11 2
       55 GETTABLEKS                       R11 R11 K8 ["createElement"]
       57 GETUPVAL                         R12 6
       58 DUPTABLE                         R13 K21 [{"LayoutOrder"}]
       59 LOADN                            R14 1
       60 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
       62 CALL                             R11 2 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R11
       65 SETTABLEKS                       R11 R10 K17 ["WarningIcon"]
       67 GETUPVAL                         R11 2
       68 GETTABLEKS                       R11 R11 K8 ["createElement"]
       70 GETUPVAL                         R12 7
       71 DUPTABLE                         R13 K24 [{"LayoutOrder", "Item", "onItemChanged", "isDisabled"}]
       72 LOADN                            R14 2
       73 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
       75 SETTABLEKS                       R0 R13 K9 ["Item"]
       77 GETUPVAL                         R14 8
       78 SETTABLEKS                       R14 R13 K22 ["onItemChanged"]
       80 NOT                              R14 R2
       81 SETTABLEKS                       R14 R13 K23 ["isDisabled"]
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K18 ["Dropdown"]
       86 CALL                             R7 3 -1
       87 CALL                             R4 -1 -1
       88 RETURN                           R4 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["DialogType"]
        7 GETTABLEKS                       R4 R4 K2 ["QuickShare"]
        9 NAMECALL                         R2 R1 K3 ["getDialogController"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K0 ["use"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 2
       18 GETTABLEKS                       R6 R4 K4 ["Selection"]
       20 GETUPVAL                         R7 4
       21 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R2
       25 NEWTABLE                         R9 0 1
       27 MOVE                             R10 R4
       28 SETLIST                          R9 R10 1 [1]
       30 CALL                             R7 2 1
       31 GETUPVAL                         R8 4
       32 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       34 NEWCLOSURE                       R9 P1
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R10 0 0
       38 CALL                             R8 2 1
       39 GETUPVAL                         R9 4
       40 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       42 NEWCLOSURE                       R10 P2
       43 CAPTURE                          VAL R2
       44 NEWTABLE                         R11 0 0
       46 CALL                             R9 2 1
       47 GETUPVAL                         R10 4
       48 GETTABLEKS                       R10 R10 K6 ["useCallback"]
       50 NEWCLOSURE                       R11 P3
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R12 0 0
       54 CALL                             R10 2 1
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R11 R11 K7 ["createElement"]
       58 GETUPVAL                         R12 5
       59 GETTABLEKS                       R12 R12 K8 ["View"]
       61 DUPTABLE                         R13 K10 [{"tag"}]
       62 LOADK                            R14 K11 ["col size-full gap-medium data-testid=collaboratorstab-view"]
       63 SETTABLEKS                       R14 R13 K9 ["tag"]
       65 DUPTABLE                         R14 K14 [{"CollaboratorDropdown", "SelectionView"}]
       66 GETUPVAL                         R15 4
       67 GETTABLEKS                       R15 R15 K7 ["createElement"]
       69 GETUPVAL                         R16 6
       70 DUPTABLE                         R17 K20 [{"LayoutOrder", "Items", "State", "isDisabled", "onActivated"}]
       71 LOADN                            R18 1
       72 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
       74 SETTABLEKS                       R7 R17 K16 ["Items"]
       76 SETTABLEKS                       R4 R17 K17 ["State"]
       78 GETTABLEKS                       R19 R0 K21 ["MaxCount"]
       80 JUMPIFEQKN                       R19 K22 [0] ; [+2]
       82 LOADB                            R18 0 +1
       83 LOADB                            R18 1
       84 SETTABLEKS                       R18 R17 K18 ["isDisabled"]
       86 SETTABLEKS                       R8 R17 K19 ["onActivated"]
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K12 ["CollaboratorDropdown"]
       91 GETUPVAL                         R15 4
       92 GETTABLEKS                       R15 R15 K7 ["createElement"]
       94 GETUPVAL                         R16 7
       95 DUPTABLE                         R17 K25 [{"LayoutOrder", "PlaceholderText", "PlaceholderSubtext"}]
       96 LOADN                            R18 2
       97 SETTABLEKS                       R18 R17 K15 ["LayoutOrder"]
       99 LOADK                            R20 K2 ["QuickShare"]
      100 LOADK                            R21 K26 ["CollaboratorsHintTitle"]
      101 NAMECALL                         R18 R3 K27 ["getText"]
      103 CALL                             R18 3 1
      104 SETTABLEKS                       R18 R17 K23 ["PlaceholderText"]
      106 LOADK                            R20 K2 ["QuickShare"]
      107 LOADK                            R21 K28 ["CollaboratorsHintDescription"]
      108 NAMECALL                         R18 R3 K27 ["getText"]
      110 CALL                             R18 3 1
      111 SETTABLEKS                       R18 R17 K24 ["PlaceholderSubtext"]
      113 GETUPVAL                         R18 8
      114 GETTABLEKS                       R18 R18 K29 ["map"]
      116 MOVE                             R19 R6
      117 NEWCLOSURE                       R20 P4
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U1
      120 CAPTURE                          UPVAL U4
      121 CAPTURE                          UPVAL U9
      122 CAPTURE                          VAL R9
      123 CAPTURE                          UPVAL U5
      124 CAPTURE                          UPVAL U10
      125 CAPTURE                          UPVAL U11
      126 CAPTURE                          VAL R10
      127 CALL                             R18 2 -1
      128 CALL                             R15 -1 1
      129 SETTABLEKS                       R15 R14 K13 ["SelectionView"]
      131 CALL                             R11 3 -1
      132 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Hooks"]
       30 GETTABLEKS                       R4 R4 K11 ["useTokens"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R6 K12 ["Framework"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R6 K14 ["Localization"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Controllers"]
       49 GETTABLEKS                       R9 R9 K17 ["PluginController"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R0 K15 ["Src"]
       56 GETTABLEKS                       R10 R10 K18 ["Util"]
       58 GETTABLEKS                       R10 R10 K19 ["Dialogs"]
       60 GETTABLEKS                       R10 R10 K20 ["useQuickShareState"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETIMPORT                        R11 K1 [script]
       67 GETTABLEKS                       R11 R11 K21 ["CollaboratorsDropdown"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETIMPORT                        R12 K1 [script]
       74 GETTABLEKS                       R12 R12 K22 ["Parent"]
       76 GETTABLEKS                       R12 R12 K23 ["SelectedView"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K5 [require]
       81 GETIMPORT                        R13 K1 [script]
       83 GETTABLEKS                       R13 R13 K22 ["Parent"]
       85 GETTABLEKS                       R13 R13 K24 ["SelectedEntry"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K5 [require]
       90 GETTABLEKS                       R14 R0 K15 ["Src"]
       92 GETTABLEKS                       R14 R14 K25 ["Types"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K5 [require]
       97 GETTABLEKS                       R15 R0 K15 ["Src"]
       99 GETTABLEKS                       R15 R15 K26 ["Resources"]
      101 GETTABLEKS                       R15 R15 K27 ["StyleConstants"]
      103 CALL                             R14 1 1
      104 DUPCLOSURE                       R15 K28 [PROTO_0]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R3
      109 DUPCLOSURE                       R16 K29 [PROTO_3]
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R14
      115 DUPCLOSURE                       R17 K30 [PROTO_9]
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R16
      128 RETURN                           R17 1
