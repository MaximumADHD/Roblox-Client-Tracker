PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["currentSettingsPage"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+10]
        6 GETUPVAL                         R0 2
        7 LOADK                            R2 K1 ["SwitchedToTab"]
        8 DUPTABLE                         R3 K3 [{"tabName"}]
        9 GETUPVAL                         R4 1
       10 SETTABLEKS                       R4 R3 K2 ["tabName"]
       12 NAMECALL                         R0 R0 K4 ["logCounter"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R0 R1 K5 ["setCurrentSettingsPage"]
       18 GETUPVAL                         R1 1
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 1
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K1 ["useContext"]
       15 GETUPVAL                         R6 4
       16 CALL                             R5 1 1
       17 GETTABLEKS                       R8 R5 K2 ["settings"]
       19 JUMPIFNOTEQKNIL                  R8 ; [+2]
       21 LOADB                            R7 0 +1
       22 LOADB                            R7 1
       23 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       25 LOADK                            R8 K3 ["Settings must not be nil in AvatarSettingsContext"]
       26 GETIMPORT                        R6 K5 [assert]
       28 CALL                             R6 2 0
       29 GETTABLEKS                       R6 R5 K2 ["settings"]
       31 GETTABLEKS                       R8 R5 K2 ["settings"]
       33 GETTABLEKS                       R7 R8 K6 ["categoryListExpanded"]
       35 LOADN                            R8 0
       36 GETUPVAL                         R9 5
       37 LOADNIL                          R10
       38 LOADNIL                          R11
       39 FORGPREP                         R9
       40 JUMPIFEQKS                       R13 K7 ["Body"] ; [+13]
       42 JUMPIFEQKS                       R13 K8 ["Clothing"] ; [+11]
       44 GETTABLEKS                       R16 R6 K9 ["navigationBarSettings"]
       46 GETTABLEKS                       R15 R16 K10 ["avatarType"]
       48 GETTABLEKS                       R14 R15 K11 ["value"]
       50 GETIMPORT                        R15 K15 [Enum.GameAvatarType.R6]
       52 JUMPIFEQ                         R14 R15 ; [+40]
       54 NEWCLOSURE                       R14 P0
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R13
       57 CAPTURE                          VAL R2
       58 GETUPVAL                         R15 6
       59 GETUPVAL                         R16 7
       60 DUPTABLE                         R17 K22 [{"name", "layoutOrder", "selected", "imageTag", "expanded", "onClick"}]
       61 LOADK                            R20 K23 ["CategoryList"]
       62 MOVE                             R21 R13
       63 NAMECALL                         R18 R1 K24 ["getText"]
       65 CALL                             R18 3 1
       66 SETTABLEKS                       R18 R17 K16 ["name"]
       68 MOVE                             R18 R4
       69 CALL                             R18 0 1
       70 SETTABLEKS                       R18 R17 K17 ["layoutOrder"]
       72 GETTABLEKS                       R19 R6 K25 ["currentSettingsPage"]
       74 JUMPIFEQ                         R19 R13 ; [+2]
       76 LOADB                            R18 0 +1
       77 LOADB                            R18 1
       78 SETTABLEKS                       R18 R17 K18 ["selected"]
       80 GETUPVAL                         R19 8
       81 GETTABLE                         R18 R19 R13
       82 SETTABLEKS                       R18 R17 K19 ["imageTag"]
       84 GETTABLEKS                       R18 R7 K26 ["enabled"]
       86 SETTABLEKS                       R18 R17 K20 ["expanded"]
       88 SETTABLEKS                       R14 R17 K21 ["onClick"]
       90 CALL                             R15 2 1
       91 SETTABLE                         R15 R3 R13
       92 ADDK                             R8 R8 K27 [1]
       93 FORGLOOP                         R9 2 ; [-54]
       95 MOVE                             R9 R3
       96 MOVE                             R10 R8
       97 RETURN                           R9 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R5 R2 K2 ["settings"]
       11 JUMPIFNOTEQKNIL                  R5 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       17 LOADK                            R5 K3 ["Settings must not be nil in AvatarSettingsContext"]
       18 GETIMPORT                        R3 K5 [assert]
       20 CALL                             R3 2 0
       21 GETTABLEKS                       R4 R2 K2 ["settings"]
       23 GETTABLEKS                       R3 R4 K6 ["categoryListExpanded"]
       25 GETUPVAL                         R4 3
       26 MOVE                             R5 R0
       27 CALL                             R4 1 2
       28 GETUPVAL                         R6 4
       29 GETUPVAL                         R7 5
       30 NEWTABLE                         R8 1 0
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R9 R10 K7 ["Tag"]
       35 LOADK                            R10 K8 ["Component-CategoryList"]
       36 SETTABLE                         R10 R8 R9
       37 DUPTABLE                         R9 K12 [{"UISizeConstraint", "CategoryListItems", "ExpandToggle"}]
       38 GETUPVAL                         R10 4
       39 LOADK                            R11 K9 ["UISizeConstraint"]
       40 DUPTABLE                         R12 K14 [{"MinSize"}]
       41 GETIMPORT                        R13 K17 [Vector2.new]
       43 LOADN                            R14 0
       44 GETUPVAL                         R17 6
       45 GETTABLEKS                       R16 R17 K18 ["CATEGORYLIST_ITEM_HEIGHT"]
       47 ADDK                             R17 R5 K19 [1]
       48 MUL                              R15 R16 R17
       49 CALL                             R13 2 1
       50 SETTABLEKS                       R13 R12 K13 ["MinSize"]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K9 ["UISizeConstraint"]
       55 GETUPVAL                         R10 4
       56 GETUPVAL                         R11 5
       57 NEWTABLE                         R12 4 0
       59 GETUPVAL                         R14 1
       60 GETTABLEKS                       R13 R14 K7 ["Tag"]
       62 LOADK                            R14 K20 ["X-Column"]
       63 SETTABLE                         R14 R12 R13
       64 GETIMPORT                        R13 K24 [Enum.AutomaticSize.X]
       66 SETTABLEKS                       R13 R12 K22 ["AutomaticSize"]
       68 GETIMPORT                        R13 K27 [UDim2.fromOffset]
       70 LOADN                            R14 0
       71 GETUPVAL                         R17 6
       72 GETTABLEKS                       R16 R17 K18 ["CATEGORYLIST_ITEM_HEIGHT"]
       74 MUL                              R15 R16 R5
       75 CALL                             R13 2 1
       76 SETTABLEKS                       R13 R12 K28 ["Size"]
       78 MOVE                             R13 R4
       79 CALL                             R10 3 1
       80 SETTABLEKS                       R10 R9 K10 ["CategoryListItems"]
       82 GETUPVAL                         R10 4
       83 GETUPVAL                         R11 7
       84 DUPTABLE                         R12 K36 [{"position", "anchorPoint", "name", "selected", "imageTag", "expanded", "onClick"}]
       85 GETIMPORT                        R13 K38 [UDim2.fromScale]
       87 LOADN                            R14 0
       88 LOADN                            R15 1
       89 CALL                             R13 2 1
       90 SETTABLEKS                       R13 R12 K29 ["position"]
       92 GETIMPORT                        R13 K17 [Vector2.new]
       94 LOADN                            R14 0
       95 LOADN                            R15 1
       96 CALL                             R13 2 1
       97 SETTABLEKS                       R13 R12 K30 ["anchorPoint"]
       99 LOADK                            R15 K39 ["CategoryList"]
      100 LOADK                            R16 K40 ["HideSidebar"]
      101 NAMECALL                         R13 R1 K41 ["getText"]
      103 CALL                             R13 3 1
      104 SETTABLEKS                       R13 R12 K31 ["name"]
      106 LOADB                            R13 0
      107 SETTABLEKS                       R13 R12 K32 ["selected"]
      109 GETUPVAL                         R13 8
      110 LOADK                            R14 K42 ["ToggleSidebarExpandImage"]
      111 LOADK                            R16 K43 ["data-testid="]
      112 GETTABLEKS                       R18 R3 K44 ["enabled"]
      114 JUMPIFNOT                        R18 ; [+2]
      115 LOADK                            R17 K45 ["CategoryListCollapse"]
      116 JUMP                             ; [+1]
      117 LOADK                            R17 K46 ["CategoryListExpand"]
      118 CONCAT                           R15 R16 R17
      119 GETTABLEKS                       R17 R3 K44 ["enabled"]
      121 JUMPIFNOT                        R17 ; [+2]
      122 LOADK                            R16 K47 ["Expanded"]
      123 JUMP                             ; [+1]
      124 LOADK                            R16 K48 ["Collapsed"]
      125 CALL                             R13 3 1
      126 SETTABLEKS                       R13 R12 K33 ["imageTag"]
      128 GETTABLEKS                       R13 R3 K44 ["enabled"]
      130 SETTABLEKS                       R13 R12 K34 ["expanded"]
      132 GETTABLEKS                       R13 R3 K49 ["toggle"]
      134 SETTABLEKS                       R13 R12 K35 ["onClick"]
      136 CALL                             R10 2 1
      137 SETTABLEKS                       R10 R9 K11 ["ExpandToggle"]
      139 CALL                             R6 3 -1
      140 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R3 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Util"]
       24 GETTABLEKS                       R3 R4 K11 ["AvatarSettingsProviderTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["Components"]
       33 GETTABLEKS                       R4 R5 K12 ["CategoryListItem"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R7 K10 ["Util"]
       42 GETTABLEKS                       R5 R6 K13 ["Constants"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R7 R0 K14 ["Packages"]
       49 GETTABLEKS                       R6 R7 K15 ["Framework"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K14 ["Packages"]
       56 GETTABLEKS                       R7 R8 K16 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K14 ["Packages"]
       63 GETTABLEKS                       R8 R9 K17 ["ReactUtils"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R5 K18 ["ContextServices"]
       68 GETTABLEKS                       R10 R5 K19 ["Styling"]
       70 GETTABLEKS                       R9 R10 K20 ["joinTags"]
       72 GETTABLEKS                       R10 R8 K21 ["Localization"]
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R15 R0 K6 ["Src"]
       78 GETTABLEKS                       R14 R15 K10 ["Util"]
       80 GETTABLEKS                       R13 R14 K22 ["Telemetry"]
       82 GETTABLEKS                       R12 R13 K23 ["TelemetryContext"]
       84 CALL                             R11 1 1
       85 GETTABLEKS                       R12 R5 K24 ["UI"]
       87 GETTABLEKS                       R13 R12 K25 ["Pane"]
       89 GETTABLEKS                       R14 R7 K26 ["createNextOrder"]
       91 GETTABLEKS                       R15 R6 K27 ["createElement"]
       93 NEWTABLE                         R16 0 5
       95 LOADK                            R17 K28 ["General"]
       96 LOADK                            R18 K29 ["Body"]
       97 LOADK                            R19 K30 ["Clothing"]
       98 LOADK                            R20 K31 ["Accessories"]
       99 LOADK                            R21 K32 ["Movement"]
      100 SETLIST                          R16 R17 5 [1]
      102 DUPTABLE                         R17 K33 [{"General", "Body", "Movement", "Accessories", "Clothing"}]
      103 LOADK                            R18 K34 ["GeneralCategoryImage data-testid=GeneralCategoryImage"]
      104 SETTABLEKS                       R18 R17 K28 ["General"]
      106 LOADK                            R18 K35 ["BodyCategoryImage data-testid=BodyCategoryImage"]
      107 SETTABLEKS                       R18 R17 K29 ["Body"]
      109 LOADK                            R18 K36 ["MovementCategoryImage data-testid=MovementCategoryImage"]
      110 SETTABLEKS                       R18 R17 K32 ["Movement"]
      112 LOADK                            R18 K37 ["AccessoriesCategoryImage data-testid=AccessoriesCategoryImage"]
      113 SETTABLEKS                       R18 R17 K31 ["Accessories"]
      115 LOADK                            R18 K38 ["ClothingCategoryImage data-testid=ClothingCategoryImage"]
      116 SETTABLEKS                       R18 R17 K30 ["Clothing"]
      118 DUPCLOSURE                       R18 K39 [PROTO_1]
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R17
      128 DUPCLOSURE                       R19 K40 [PROTO_2]
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R9
      138 RETURN                           R19 1
