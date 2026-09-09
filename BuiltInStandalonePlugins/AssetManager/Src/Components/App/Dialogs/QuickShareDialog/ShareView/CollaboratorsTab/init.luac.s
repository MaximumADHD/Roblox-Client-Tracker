PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Hooks"]
        7 GETTABLEKS                       R2 R2 K2 ["useTokens"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["createElement"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["Tooltip"]
       16 DUPTABLE                         R5 K10 [{"LayoutOrder", "title", "text", "side", "align"}]
       17 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       19 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       21 LOADK                            R8 K11 ["QuickShare"]
       22 LOADK                            R9 K12 ["NoEditWarningTitle"]
       23 NAMECALL                         R6 R1 K13 ["getText"]
       25 CALL                             R6 3 1
       26 SETTABLEKS                       R6 R5 K6 ["title"]
       28 LOADK                            R8 K11 ["QuickShare"]
       29 LOADK                            R9 K14 ["NoEditWarningDescription"]
       30 NAMECALL                         R6 R1 K13 ["getText"]
       32 CALL                             R6 3 1
       33 SETTABLEKS                       R6 R5 K7 ["text"]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K15 ["Enums"]
       38 GETTABLEKS                       R6 R6 K16 ["PopoverSide"]
       40 GETTABLEKS                       R6 R6 K17 ["Top"]
       42 SETTABLEKS                       R6 R5 K8 ["side"]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K15 ["Enums"]
       47 GETTABLEKS                       R6 R6 K18 ["PopoverAlign"]
       49 GETTABLEKS                       R6 R6 K19 ["Center"]
       51 SETTABLEKS                       R6 R5 K9 ["align"]
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R6 R6 K3 ["createElement"]
       56 GETUPVAL                         R7 1
       57 GETTABLEKS                       R7 R7 K20 ["Icon"]
       59 DUPTABLE                         R8 K25 [{"name", "size", "style", "variant"}]
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K15 ["Enums"]
       63 GETTABLEKS                       R9 R9 K26 ["IconName"]
       65 GETTABLEKS                       R9 R9 K27 ["TriangleExclamation"]
       67 SETTABLEKS                       R9 R8 K21 ["name"]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K15 ["Enums"]
       72 GETTABLEKS                       R9 R9 K28 ["IconSize"]
       74 GETTABLEKS                       R9 R9 K29 ["Small"]
       76 SETTABLEKS                       R9 R8 K22 ["size"]
       78 GETTABLEKS                       R9 R2 K30 ["Color"]
       80 GETTABLEKS                       R9 R9 K31 ["System"]
       82 GETTABLEKS                       R9 R9 K32 ["Warning"]
       84 SETTABLEKS                       R9 R8 K23 ["style"]
       86 GETUPVAL                         R9 1
       87 GETTABLEKS                       R9 R9 K15 ["Enums"]
       89 GETTABLEKS                       R9 R9 K33 ["IconVariant"]
       91 GETTABLEKS                       R9 R9 K34 ["Filled"]
       93 SETTABLEKS                       R9 R8 K24 ["variant"]
       95 CALL                             R6 2 -1
       96 CALL                             R3 -1 -1
       97 RETURN                           R3 -1

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
       57 DUPTABLE                         R6 K22 [{["LayoutOrder"], ["value"], ["onItemChanged"], ["isDisabled"], ["items"], ["label"] = "", ["size"], ["width"], ["maxHeight"]}]
       58 GETTABLEKS                       R7 R0 K12 ["LayoutOrder"]
       60 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       62 GETUPVAL                         R8 1
       63 GETTABLEKS                       R8 R8 K1 ["PermissionsAction"]
       65 GETTABLEKS                       R9 R0 K23 ["Item"]
       67 GETTABLEKS                       R9 R9 K24 ["Action"]
       69 GETTABLE                         R7 R8 R9
       70 SETTABLEKS                       R7 R6 K13 ["value"]
       72 NEWCLOSURE                       R7 P1
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R7 R6 K14 ["onItemChanged"]
       76 GETTABLEKS                       R7 R0 K15 ["isDisabled"]
       78 SETTABLEKS                       R7 R6 K15 ["isDisabled"]
       80 SETTABLEKS                       R3 R6 K16 ["items"]
       82 GETUPVAL                         R7 3
       83 GETTABLEKS                       R7 R7 K25 ["Enums"]
       85 GETTABLEKS                       R7 R7 K26 ["InputSize"]
       87 GETTABLEKS                       R7 R7 K27 ["XSmall"]
       89 SETTABLEKS                       R7 R6 K19 ["size"]
       91 GETIMPORT                        R7 K30 [UDim.new]
       93 LOADN                            R8 0
       94 GETUPVAL                         R9 4
       95 GETTABLEKS                       R9 R9 K31 ["QuickSharePermissionsDropdownSize"]
       97 GETTABLEKS                       R9 R9 K32 ["X"]
       99 CALL                             R7 2 1
      100 SETTABLEKS                       R7 R6 K20 ["width"]
      102 GETUPVAL                         R7 4
      103 GETTABLEKS                       R7 R7 K31 ["QuickSharePermissionsDropdownSize"]
      105 GETTABLEKS                       R7 R7 K33 ["Y"]
      107 SETTABLEKS                       R7 R6 K21 ["maxHeight"]
      109 CALL                             R4 2 -1
      110 RETURN                           R4 -1

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
       48 DUPTABLE                         R9 K16 [{["tag"] = "row align-y-center gap-small auto-xy"}]
       49 DUPTABLE                         R10 K19 [{"WarningIcon", "Dropdown"}]
       50 JUMPIFNOT                        R3 ; [+7]
       51 GETUPVAL                         R11 2
       52 GETTABLEKS                       R11 R11 K8 ["createElement"]
       54 GETUPVAL                         R12 6
       55 DUPTABLE                         R13 K22 [{["LayoutOrder"] = 1}]
       56 CALL                             R11 2 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R11
       59 SETTABLEKS                       R11 R10 K17 ["WarningIcon"]
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R11 R11 K8 ["createElement"]
       64 GETUPVAL                         R12 7
       65 DUPTABLE                         R13 K26 [{["LayoutOrder"] = 2, ["Item"], ["onItemChanged"], ["isDisabled"]}]
       66 SETTABLEKS                       R0 R13 K9 ["Item"]
       68 GETUPVAL                         R14 8
       69 SETTABLEKS                       R14 R13 K24 ["onItemChanged"]
       71 NOT                              R14 R2
       72 SETTABLEKS                       R14 R13 K25 ["isDisabled"]
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K18 ["Dropdown"]
       77 CALL                             R7 3 -1
       78 CALL                             R4 -1 -1
       79 RETURN                           R4 -1

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
       61 DUPTABLE                         R13 K13 [{["tag"] = "col gap-medium size-full", ["testId"] = "collaboratorstab-view"}]
       62 DUPTABLE                         R14 K16 [{"CollaboratorDropdown", "SelectionView"}]
       63 GETUPVAL                         R15 4
       64 GETTABLEKS                       R15 R15 K7 ["createElement"]
       66 GETUPVAL                         R16 6
       67 DUPTABLE                         R17 K23 [{["LayoutOrder"] = 1, ["Items"], ["State"], ["isDisabled"], ["onActivated"]}]
       68 SETTABLEKS                       R7 R17 K19 ["Items"]
       70 SETTABLEKS                       R4 R17 K20 ["State"]
       72 GETTABLEKS                       R19 R0 K24 ["MaxCount"]
       74 JUMPIFEQKN                       R19 K25 [0] ; [+2]
       76 LOADB                            R18 0 +1
       77 LOADB                            R18 1
       78 SETTABLEKS                       R18 R17 K21 ["isDisabled"]
       80 SETTABLEKS                       R8 R17 K22 ["onActivated"]
       82 CALL                             R15 2 1
       83 SETTABLEKS                       R15 R14 K14 ["CollaboratorDropdown"]
       85 GETUPVAL                         R15 4
       86 GETTABLEKS                       R15 R15 K7 ["createElement"]
       88 GETUPVAL                         R16 7
       89 DUPTABLE                         R17 K29 [{["LayoutOrder"] = 2, ["PlaceholderText"], ["PlaceholderSubtext"]}]
       90 LOADK                            R20 K2 ["QuickShare"]
       91 LOADK                            R21 K30 ["CollaboratorsHintTitle"]
       92 NAMECALL                         R18 R3 K31 ["getText"]
       94 CALL                             R18 3 1
       95 SETTABLEKS                       R18 R17 K27 ["PlaceholderText"]
       97 LOADK                            R20 K2 ["QuickShare"]
       98 LOADK                            R21 K32 ["CollaboratorsHintDescription"]
       99 NAMECALL                         R18 R3 K31 ["getText"]
      101 CALL                             R18 3 1
      102 SETTABLEKS                       R18 R17 K28 ["PlaceholderSubtext"]
      104 GETUPVAL                         R18 8
      105 GETTABLEKS                       R18 R18 K33 ["map"]
      107 MOVE                             R19 R6
      108 NEWCLOSURE                       R20 P4
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U1
      111 CAPTURE                          UPVAL U4
      112 CAPTURE                          UPVAL U9
      113 CAPTURE                          VAL R9
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          UPVAL U10
      116 CAPTURE                          UPVAL U11
      117 CAPTURE                          VAL R10
      118 CALL                             R18 2 -1
      119 CALL                             R15 -1 1
      120 SETTABLEKS                       R15 R14 K15 ["SelectionView"]
      122 CALL                             R11 3 -1
      123 RETURN                           R11 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       45 GETTABLEKS                       R8 R8 K15 ["PluginController"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K13 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Util"]
       54 GETTABLEKS                       R9 R9 K17 ["Dialogs"]
       56 GETTABLEKS                       R9 R9 K18 ["useQuickShareState"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETIMPORT                        R10 K1 [script]
       63 GETTABLEKS                       R10 R10 K19 ["CollaboratorsDropdown"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETIMPORT                        R11 K1 [script]
       70 GETTABLEKS                       R11 R11 K20 ["Parent"]
       72 GETTABLEKS                       R11 R11 K21 ["SelectedView"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K5 [require]
       77 GETIMPORT                        R12 K1 [script]
       79 GETTABLEKS                       R12 R12 K20 ["Parent"]
       81 GETTABLEKS                       R12 R12 K22 ["SelectedEntry"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K13 ["Src"]
       88 GETTABLEKS                       R13 R13 K23 ["Types"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K13 ["Src"]
       95 GETTABLEKS                       R14 R14 K24 ["Resources"]
       97 GETTABLEKS                       R14 R14 K25 ["StyleConstants"]
       99 CALL                             R13 1 1
      100 DUPCLOSURE                       R14 K26 [PROTO_0]
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R1
      104 DUPCLOSURE                       R15 K27 [PROTO_3]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R13
      110 DUPCLOSURE                       R16 K28 [PROTO_9]
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R15
      123 RETURN                           R16 1
