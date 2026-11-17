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
        1 GETTABLE                         R1 R2 R0
        2 DUPTABLE                         R2 K2 [{"id", "text"}]
        3 SETTABLEKS                       R1 R2 K0 ["id"]
        5 GETUPVAL                         R3 1
        6 LOADK                            R5 K3 ["AssetPermission"]
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R3 K4 ["getText"]
       10 CALL                             R3 3 1
       11 SETTABLEKS                       R3 R2 K1 ["text"]
       13 RETURN                           R2 1

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
       10 GETTABLEKS                       R5 R5 K1 ["Use"]
       12 GETUPVAL                         R7 1
       13 GETTABLE                         R6 R7 R5
       14 DUPTABLE                         R4 K4 [{"id", "text"}]
       15 SETTABLEKS                       R6 R4 K2 ["id"]
       17 LOADK                            R9 K5 ["AssetPermission"]
       18 MOVE                             R10 R6
       19 NAMECALL                         R7 R1 K6 ["getText"]
       21 CALL                             R7 3 1
       22 SETTABLEKS                       R7 R4 K3 ["text"]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K7 ["Edit"]
       27 GETUPVAL                         R8 1
       28 GETTABLE                         R7 R8 R6
       29 DUPTABLE                         R5 K4 [{"id", "text"}]
       30 SETTABLEKS                       R7 R5 K2 ["id"]
       32 LOADK                            R10 K5 ["AssetPermission"]
       33 MOVE                             R11 R7
       34 NAMECALL                         R8 R1 K6 ["getText"]
       36 CALL                             R8 3 1
       37 SETTABLEKS                       R8 R5 K3 ["text"]
       39 SETLIST                          R3 R4 2 [1]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K8 ["createElement"]
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K9 ["Dropdown"]
       47 GETTABLEKS                       R5 R5 K10 ["Root"]
       49 DUPTABLE                         R6 K21 [{["LayoutOrder"], ["value"], ["onItemChanged"], ["isDisabled"], ["items"], ["label"] = "", ["size"], ["width"], ["maxHeight"]}]
       50 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       52 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R9 R0 K22 ["Item"]
       57 GETTABLEKS                       R9 R9 K23 ["Action"]
       59 GETTABLE                         R7 R8 R9
       60 SETTABLEKS                       R7 R6 K12 ["value"]
       62 NEWCLOSURE                       R7 P1
       63 CAPTURE                          VAL R0
       64 SETTABLEKS                       R7 R6 K13 ["onItemChanged"]
       66 GETTABLEKS                       R7 R0 K14 ["isDisabled"]
       68 SETTABLEKS                       R7 R6 K14 ["isDisabled"]
       70 SETTABLEKS                       R3 R6 K15 ["items"]
       72 GETUPVAL                         R7 3
       73 GETTABLEKS                       R7 R7 K24 ["Enums"]
       75 GETTABLEKS                       R7 R7 K25 ["InputSize"]
       77 GETTABLEKS                       R7 R7 K26 ["XSmall"]
       79 SETTABLEKS                       R7 R6 K18 ["size"]
       81 GETIMPORT                        R7 K29 [UDim.new]
       83 LOADN                            R8 0
       84 GETUPVAL                         R9 4
       85 GETTABLEKS                       R9 R9 K30 ["QuickSharePermissionsDropdownSize"]
       87 GETTABLEKS                       R9 R9 K31 ["X"]
       89 CALL                             R7 2 1
       90 SETTABLEKS                       R7 R6 K19 ["width"]
       92 GETUPVAL                         R7 4
       93 GETTABLEKS                       R7 R7 K30 ["QuickSharePermissionsDropdownSize"]
       95 GETTABLEKS                       R7 R7 K32 ["Y"]
       97 SETTABLEKS                       R7 R6 K20 ["maxHeight"]
       99 CALL                             R4 2 -1
      100 RETURN                           R4 -1

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
        3 JUMPIFNOT                        R2 ; [+9]
        4 GETTABLEKS                       R3 R0 K1 ["Subject"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["User"]
        9 JUMPIFEQ                         R3 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K3 ["HasNonEditTypes"]
       16 JUMPIFNOT                        R3 ; [+9]
       17 GETTABLEKS                       R4 R0 K4 ["Action"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K5 ["Edit"]
       22 JUMPIFEQ                         R4 R5 ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K6 ["createElement"]
       29 GETUPVAL                         R5 4
       30 DUPTABLE                         R6 K10 [{"Item", "Index", "onItemRemoved"}]
       31 SETTABLEKS                       R0 R6 K7 ["Item"]
       33 SETTABLEKS                       R1 R6 K8 ["Index"]
       35 GETUPVAL                         R7 5
       36 SETTABLEKS                       R7 R6 K9 ["onItemRemoved"]
       38 GETUPVAL                         R7 3
       39 GETTABLEKS                       R7 R7 K6 ["createElement"]
       41 GETUPVAL                         R8 6
       42 GETTABLEKS                       R8 R8 K11 ["View"]
       44 DUPTABLE                         R9 K14 [{["tag"] = "row align-y-center gap-small auto-xy"}]
       45 DUPTABLE                         R10 K17 [{"WarningIcon", "Dropdown"}]
       46 JUMPIFNOT                        R3 ; [+7]
       47 GETUPVAL                         R11 3
       48 GETTABLEKS                       R11 R11 K6 ["createElement"]
       50 GETUPVAL                         R12 7
       51 DUPTABLE                         R13 K20 [{["LayoutOrder"] = 1}]
       52 CALL                             R11 2 1
       53 JUMP                             ; [+1]
       54 LOADNIL                          R11
       55 SETTABLEKS                       R11 R10 K15 ["WarningIcon"]
       57 GETUPVAL                         R11 3
       58 GETTABLEKS                       R11 R11 K6 ["createElement"]
       60 GETUPVAL                         R12 8
       61 DUPTABLE                         R13 K24 [{["LayoutOrder"] = 2, ["Item"], ["onItemChanged"], ["isDisabled"]}]
       62 SETTABLEKS                       R0 R13 K7 ["Item"]
       64 GETUPVAL                         R14 9
       65 SETTABLEKS                       R14 R13 K22 ["onItemChanged"]
       67 NOT                              R14 R2
       68 SETTABLEKS                       R14 R13 K23 ["isDisabled"]
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K16 ["Dropdown"]
       73 CALL                             R7 3 -1
       74 CALL                             R4 -1 -1
       75 RETURN                           R4 -1

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
      110 CAPTURE                          UPVAL U9
      111 CAPTURE                          UPVAL U10
      112 CAPTURE                          UPVAL U4
      113 CAPTURE                          UPVAL U11
      114 CAPTURE                          VAL R9
      115 CAPTURE                          UPVAL U5
      116 CAPTURE                          UPVAL U12
      117 CAPTURE                          UPVAL U13
      118 CAPTURE                          VAL R10
      119 CALL                             R18 2 -1
      120 CALL                             R15 -1 1
      121 SETTABLEKS                       R15 R14 K15 ["SelectionView"]
      123 CALL                             R11 3 -1
      124 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       44 GETTABLEKS                       R7 R6 K13 ["Localization"]
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Src"]
       50 GETTABLEKS                       R9 R9 K15 ["Controllers"]
       52 GETTABLEKS                       R9 R9 K16 ["PluginController"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R10 R0 K14 ["Src"]
       59 GETTABLEKS                       R10 R10 K17 ["Util"]
       61 GETTABLEKS                       R10 R10 K18 ["Dialogs"]
       63 GETTABLEKS                       R10 R10 K19 ["useQuickShareState"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K5 [require]
       68 GETIMPORT                        R11 K1 [script]
       70 GETTABLEKS                       R11 R11 K20 ["CollaboratorsDropdown"]
       72 CALL                             R10 1 1
       73 GETIMPORT                        R11 K5 [require]
       75 GETIMPORT                        R12 K1 [script]
       77 GETTABLEKS                       R12 R12 K21 ["Parent"]
       79 GETTABLEKS                       R12 R12 K22 ["SelectedView"]
       81 CALL                             R11 1 1
       82 GETIMPORT                        R12 K5 [require]
       84 GETIMPORT                        R13 K1 [script]
       86 GETTABLEKS                       R13 R13 K21 ["Parent"]
       88 GETTABLEKS                       R13 R13 K23 ["SelectedEntry"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K14 ["Src"]
       95 GETTABLEKS                       R14 R14 K24 ["Types"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K5 [require]
      100 GETTABLEKS                       R15 R0 K14 ["Src"]
      102 GETTABLEKS                       R15 R15 K25 ["Resources"]
      104 GETTABLEKS                       R15 R15 K26 ["StyleConstants"]
      106 CALL                             R14 1 1
      107 GETTABLEKS                       R15 R1 K27 ["Enums"]
      109 GETTABLEKS                       R15 R15 K28 ["PermissionsAction"]
      111 GETTABLEKS                       R16 R1 K27 ["Enums"]
      113 GETTABLEKS                       R16 R16 K29 ["PermissionsSubject"]
      115 DUPCLOSURE                       R17 K30 [PROTO_0]
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R2
      119 DUPCLOSURE                       R18 K31 [PROTO_3]
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R14
      125 DUPCLOSURE                       R19 K32 [PROTO_9]
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R18
      140 RETURN                           R19 1
