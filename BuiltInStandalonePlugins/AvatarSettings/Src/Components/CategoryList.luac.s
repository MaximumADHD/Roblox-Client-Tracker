PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+15]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["currentSettingsPage"]
        6 GETUPVAL                         R1 2
        7 JUMPIFEQ                         R0 R1 ; [+10]
        9 GETUPVAL                         R0 3
       10 LOADK                            R2 K1 ["SwitchedToTab"]
       11 DUPTABLE                         R3 K3 [{"tabName"}]
       12 GETUPVAL                         R4 2
       13 SETTABLEKS                       R4 R3 K2 ["tabName"]
       15 NAMECALL                         R0 R0 K4 ["logCounter"]
       17 CALL                             R0 3 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R0 R1 K5 ["setCurrentSettingsPage"]
       21 GETUPVAL                         R1 2
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 NEWTABLE                         R3 0 0
       15 GETUPVAL                         R4 3
       16 CALL                             R4 0 1
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R5 R6 K1 ["useContext"]
       20 GETUPVAL                         R6 5
       21 CALL                             R5 1 1
       22 GETTABLEKS                       R8 R5 K2 ["settings"]
       24 JUMPIFNOTEQKNIL                  R8 ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 FASTCALL2K                       ASSERT R7 K3 ; [+4]
       30 LOADK                            R8 K3 ["Settings must not be nil in AvatarSettingsContext"]
       31 GETIMPORT                        R6 K5 [assert]
       33 CALL                             R6 2 0
       34 GETTABLEKS                       R6 R5 K2 ["settings"]
       36 GETTABLEKS                       R8 R5 K2 ["settings"]
       38 GETTABLEKS                       R7 R8 K6 ["categoryListExpanded"]
       40 LOADN                            R8 0
       41 GETUPVAL                         R9 6
       42 LOADNIL                          R10
       43 LOADNIL                          R11
       44 FORGPREP                         R9
       45 JUMPIFEQKS                       R13 K7 ["Body"] ; [+13]
       47 JUMPIFEQKS                       R13 K8 ["Clothing"] ; [+11]
       49 GETTABLEKS                       R16 R6 K9 ["navigationBarSettings"]
       51 GETTABLEKS                       R15 R16 K10 ["avatarType"]
       53 GETTABLEKS                       R14 R15 K11 ["value"]
       55 GETIMPORT                        R15 K15 [Enum.GameAvatarType.R6]
       57 JUMPIFEQ                         R14 R15 ; [+41]
       59 NEWCLOSURE                       R14 P0
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R2
       64 GETUPVAL                         R15 7
       65 GETUPVAL                         R16 8
       66 DUPTABLE                         R17 K22 [{"name", "layoutOrder", "selected", "imageTag", "expanded", "onClick"}]
       67 LOADK                            R20 K23 ["CategoryList"]
       68 MOVE                             R21 R13
       69 NAMECALL                         R18 R1 K24 ["getText"]
       71 CALL                             R18 3 1
       72 SETTABLEKS                       R18 R17 K16 ["name"]
       74 MOVE                             R18 R4
       75 CALL                             R18 0 1
       76 SETTABLEKS                       R18 R17 K17 ["layoutOrder"]
       78 GETTABLEKS                       R19 R6 K25 ["currentSettingsPage"]
       80 JUMPIFEQ                         R19 R13 ; [+2]
       82 LOADB                            R18 0 +1
       83 LOADB                            R18 1
       84 SETTABLEKS                       R18 R17 K18 ["selected"]
       86 GETUPVAL                         R19 9
       87 GETTABLE                         R18 R19 R13
       88 SETTABLEKS                       R18 R17 K19 ["imageTag"]
       90 GETTABLEKS                       R18 R7 K26 ["enabled"]
       92 SETTABLEKS                       R18 R17 K20 ["expanded"]
       94 SETTABLEKS                       R14 R17 K21 ["onClick"]
       96 CALL                             R15 2 1
       97 SETTABLE                         R15 R3 R13
       98 ADDK                             R8 R8 K27 [1]
       99 FORGLOOP                         R9 2 ; [-55]
      101 MOVE                             R9 R3
      102 MOVE                             R10 R8
      103 RETURN                           R9 2

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
       85 GETIMPORT                        R12 K5 [require]
       87 GETTABLEKS                       R15 R0 K6 ["Src"]
       89 GETTABLEKS                       R14 R15 K24 ["Flags"]
       91 GETTABLEKS                       R13 R14 K25 ["getFFlagAddTelemetry"]
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
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R18
      138 DUPCLOSURE                       R20 K42 [PROTO_2]
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R9
      148 RETURN                           R20 1
