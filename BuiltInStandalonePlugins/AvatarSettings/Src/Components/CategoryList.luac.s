PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["currentSettingsPage"]
        3 GETUPVAL                         R1 1
        4 JUMPIFEQ                         R0 R1 ; [+10]
        6 GETUPVAL                         R0 2
        7 LOADK                            R2 K1 ["SwitchedToTab"]
        8 DUPTABLE                         R3 K3 [{"tabName"}]
        9 GETUPVAL                         R4 1
       10 SETTABLEKS                       R4 R3 K2 ["tabName"]
       12 NAMECALL                         R0 R0 K4 ["logCounter"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K5 ["setCurrentSettingsPage"]
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
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K1 ["useContext"]
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
       31 GETTABLEKS                       R7 R5 K2 ["settings"]
       33 GETTABLEKS                       R7 R7 K6 ["categoryListExpanded"]
       35 LOADN                            R8 0
       36 GETUPVAL                         R9 5
       37 LOADNIL                          R10
       38 LOADNIL                          R11
       39 FORGPREP                         R9
       40 GETTABLEKS                       R14 R6 K7 ["navigationBarSettings"]
       42 GETTABLEKS                       R14 R14 K8 ["avatarType"]
       44 GETTABLEKS                       R14 R14 K9 ["value"]
       46 GETIMPORT                        R15 K13 [Enum.GameAvatarType.R6]
       48 JUMPIFNOTEQ                      R14 R15 ; [+15]
       50 LOADB                            R14 1
       51 JUMPIFEQKS                       R13 K14 ["Body"] ; [+5]
       53 JUMPIFEQKS                       R13 K15 ["Clothing"] ; [+2]
       55 LOADB                            R14 0 +1
       56 LOADB                            R14 1
       57 LOADB                            R15 0
       58 JUMPIFNOTEQKS                    R13 K16 ["Movement"] ; [+3]
       60 GETUPVAL                         R15 6
       61 CALL                             R15 0 1
       62 JUMPIF                           R14 ; [+1]
       63 JUMPIFNOT                        R15 ; [+39]
       64 NEWCLOSURE                       R14 P0
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R2
       68 GETUPVAL                         R15 7
       69 GETUPVAL                         R16 8
       70 DUPTABLE                         R17 K23 [{"name", "layoutOrder", "selected", "imageTag", "expanded", "onClick"}]
       71 LOADK                            R20 K24 ["CategoryList"]
       72 MOVE                             R21 R13
       73 NAMECALL                         R18 R1 K25 ["getText"]
       75 CALL                             R18 3 1
       76 SETTABLEKS                       R18 R17 K17 ["name"]
       78 MOVE                             R18 R4
       79 CALL                             R18 0 1
       80 SETTABLEKS                       R18 R17 K18 ["layoutOrder"]
       82 GETTABLEKS                       R19 R6 K26 ["currentSettingsPage"]
       84 JUMPIFEQ                         R19 R13 ; [+2]
       86 LOADB                            R18 0 +1
       87 LOADB                            R18 1
       88 SETTABLEKS                       R18 R17 K19 ["selected"]
       90 GETUPVAL                         R19 9
       91 GETTABLE                         R18 R19 R13
       92 SETTABLEKS                       R18 R17 K20 ["imageTag"]
       94 GETTABLEKS                       R18 R7 K27 ["enabled"]
       96 SETTABLEKS                       R18 R17 K21 ["expanded"]
       98 SETTABLEKS                       R14 R17 K22 ["onClick"]
      100 CALL                             R15 2 1
      101 SETTABLE                         R15 R3 R13
      102 ADDK                             R8 R8 K28 [1]
      103 FORGLOOP                         R9 2 ; [-64]
      105 MOVE                             R9 R3
      106 MOVE                             R10 R8
      107 RETURN                           R9 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
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
       21 GETTABLEKS                       R3 R2 K2 ["settings"]
       23 GETTABLEKS                       R3 R3 K6 ["categoryListExpanded"]
       25 GETUPVAL                         R4 3
       26 MOVE                             R5 R0
       27 CALL                             R4 1 2
       28 GETUPVAL                         R6 4
       29 GETUPVAL                         R7 5
       30 NEWTABLE                         R8 1 0
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K7 ["Tag"]
       35 LOADK                            R10 K8 ["Component-CategoryList"]
       36 SETTABLE                         R10 R8 R9
       37 DUPTABLE                         R9 K12 [{"UISizeConstraint", "CategoryListItems", "ExpandToggle"}]
       38 GETUPVAL                         R10 4
       39 LOADK                            R11 K9 ["UISizeConstraint"]
       40 DUPTABLE                         R12 K14 [{"MinSize"}]
       41 GETIMPORT                        R13 K17 [Vector2.new]
       43 LOADN                            R14 0
       44 GETUPVAL                         R16 6
       45 GETTABLEKS                       R16 R16 K18 ["CATEGORYLIST_ITEM_HEIGHT"]
       47 ADDK                             R17 R5 K19 [1]
       48 MUL                              R15 R16 R17
       49 CALL                             R13 2 1
       50 SETTABLEKS                       R13 R12 K13 ["MinSize"]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K9 ["UISizeConstraint"]
       55 GETUPVAL                         R10 4
       56 GETUPVAL                         R11 5
       57 NEWTABLE                         R12 4 0
       59 GETUPVAL                         R13 1
       60 GETTABLEKS                       R13 R13 K7 ["Tag"]
       62 LOADK                            R14 K20 ["X-Column"]
       63 SETTABLE                         R14 R12 R13
       64 GETIMPORT                        R13 K24 [Enum.AutomaticSize.X]
       66 SETTABLEKS                       R13 R12 K22 ["AutomaticSize"]
       68 GETIMPORT                        R13 K27 [UDim2.fromOffset]
       70 LOADN                            R14 0
       71 GETUPVAL                         R16 6
       72 GETTABLEKS                       R16 R16 K18 ["CATEGORYLIST_ITEM_HEIGHT"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Contexts"]
       15 GETTABLEKS                       R2 R2 K9 ["AvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K10 ["Util"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsProviderTypes"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Components"]
       33 GETTABLEKS                       R4 R4 K12 ["CategoryListItem"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K10 ["Util"]
       42 GETTABLEKS                       R5 R5 K13 ["Constants"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K14 ["Packages"]
       49 GETTABLEKS                       R6 R6 K15 ["Framework"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K14 ["Packages"]
       56 GETTABLEKS                       R7 R7 K16 ["React"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K14 ["Packages"]
       63 GETTABLEKS                       R8 R8 K17 ["ReactUtils"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Src"]
       70 GETTABLEKS                       R9 R9 K18 ["Flags"]
       72 GETTABLEKS                       R9 R9 K19 ["getFFlagAvatarSettingsEnableAbilitiesR6"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R9 R5 K20 ["ContextServices"]
       77 GETTABLEKS                       R10 R5 K21 ["Styling"]
       79 GETTABLEKS                       R10 R10 K22 ["joinTags"]
       81 GETTABLEKS                       R11 R9 K23 ["Localization"]
       83 GETIMPORT                        R12 K5 [require]
       85 GETTABLEKS                       R13 R0 K6 ["Src"]
       87 GETTABLEKS                       R13 R13 K10 ["Util"]
       89 GETTABLEKS                       R13 R13 K24 ["Telemetry"]
       91 GETTABLEKS                       R13 R13 K25 ["TelemetryContext"]
       93 CALL                             R12 1 1
       94 GETTABLEKS                       R13 R5 K26 ["UI"]
       96 GETTABLEKS                       R14 R13 K27 ["Pane"]
       98 GETTABLEKS                       R15 R7 K28 ["createNextOrder"]
      100 GETTABLEKS                       R16 R6 K29 ["createElement"]
      102 NEWTABLE                         R17 0 5
      104 LOADK                            R18 K30 ["General"]
      105 LOADK                            R19 K31 ["Body"]
      106 LOADK                            R20 K32 ["Clothing"]
      107 LOADK                            R21 K33 ["Accessories"]
      108 LOADK                            R22 K34 ["Movement"]
      109 SETLIST                          R17 R18 5 [1]
      111 DUPTABLE                         R18 K35 [{"General", "Body", "Movement", "Accessories", "Clothing"}]
      112 LOADK                            R19 K36 ["GeneralCategoryImage data-testid=GeneralCategoryImage"]
      113 SETTABLEKS                       R19 R18 K30 ["General"]
      115 LOADK                            R19 K37 ["BodyCategoryImage data-testid=BodyCategoryImage"]
      116 SETTABLEKS                       R19 R18 K31 ["Body"]
      118 LOADK                            R19 K38 ["MovementCategoryImage data-testid=MovementCategoryImage"]
      119 SETTABLEKS                       R19 R18 K34 ["Movement"]
      121 LOADK                            R19 K39 ["AccessoriesCategoryImage data-testid=AccessoriesCategoryImage"]
      122 SETTABLEKS                       R19 R18 K33 ["Accessories"]
      124 LOADK                            R19 K40 ["ClothingCategoryImage data-testid=ClothingCategoryImage"]
      125 SETTABLEKS                       R19 R18 K32 ["Clothing"]
      127 DUPCLOSURE                       R19 K41 [PROTO_1]
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R18
      138 DUPCLOSURE                       R20 K42 [PROTO_2]
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R10
      148 RETURN                           R20 1
