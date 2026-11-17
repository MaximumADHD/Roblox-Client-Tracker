PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R1 K1 ["settings"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["Settings must not be nil in AvatarSettingsContext"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R2 R1 K1 ["settings"]
       19 GETTABLEKS                       R2 R2 K5 ["categoryListExpanded"]
       21 GETTABLEKS                       R3 R1 K1 ["settings"]
       23 GETTABLEKS                       R3 R3 K6 ["currentSettingsPage"]
       25 GETTABLEKS                       R5 R2 K7 ["enabled"]
       27 JUMPIFNOT                        R5 ; [+8]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K8 ["EXPANDED_CATEGORYLIST_ITEM_SIZE"]
       31 GETTABLEKS                       R4 R4 K9 ["X"]
       33 GETTABLEKS                       R4 R4 K10 ["Offset"]
       35 JUMP                             ; [+7]
       36 GETUPVAL                         R4 2
       37 GETTABLEKS                       R4 R4 K11 ["COLLAPSED_CATEGORYLIST_ITEM_SIZE"]
       39 GETTABLEKS                       R4 R4 K9 ["X"]
       41 GETTABLEKS                       R4 R4 K10 ["Offset"]
       43 GETUPVAL                         R5 3
       44 GETUPVAL                         R6 4
       45 NEWTABLE                         R7 4 0
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K12 ["Tag"]
       50 LOADK                            R9 K13 ["X-Row"]
       51 SETTABLE                         R9 R7 R8
       52 GETIMPORT                        R8 K16 [UDim2.new]
       54 LOADN                            R9 1
       55 LOADN                            R10 0
       56 LOADN                            R11 1
       57 GETUPVAL                         R14 2
       58 GETTABLEKS                       R14 R14 K18 ["MENU_BAR_HEIGHT"]
       60 MINUS                            R13 R14
       61 MULK                             R12 R13 K17 [2]
       62 CALL                             R8 4 1
       63 SETTABLEKS                       R8 R7 K19 ["Size"]
       65 GETTABLEKS                       R8 R0 K20 ["layoutOrder"]
       67 SETTABLEKS                       R8 R7 K21 ["LayoutOrder"]
       69 DUPTABLE                         R8 K24 [{"CategoryList", "SettingsContent"}]
       70 GETUPVAL                         R9 3
       71 GETUPVAL                         R10 5
       72 CALL                             R9 1 1
       73 SETTABLEKS                       R9 R8 K22 ["CategoryList"]
       75 GETUPVAL                         R9 3
       76 GETUPVAL                         R10 6
       77 NEWTABLE                         R11 4 0
       79 GETUPVAL                         R12 0
       80 GETTABLEKS                       R12 R12 K12 ["Tag"]
       82 LOADK                            R13 K25 ["AvatarSettings-SettingsContent"]
       83 SETTABLE                         R13 R11 R12
       84 GETIMPORT                        R12 K29 [Enum.AutomaticSize.XY]
       86 SETTABLEKS                       R12 R11 K30 ["AutomaticCanvasSize"]
       88 GETIMPORT                        R12 K16 [UDim2.new]
       90 CALL                             R12 0 1
       91 SETTABLEKS                       R12 R11 K31 ["CanvasSize"]
       93 GETUPVAL                         R13 2
       94 GETTABLEKS                       R13 R13 K32 ["SETTINGS_CONTENT_SIZE"]
       96 GETIMPORT                        R14 K34 [UDim2.fromOffset]
       98 MOVE                             R15 R4
       99 LOADN                            R16 0
      100 CALL                             R14 2 1
      101 SUB                              R12 R13 R14
      102 SETTABLEKS                       R12 R11 K19 ["Size"]
      104 DUPTABLE                         R12 K36 [{"SettingsBody"}]
      105 JUMPIFNOTEQKS                    R3 K37 ["General"] ; [+5]
      107 GETUPVAL                         R13 3
      108 GETUPVAL                         R14 7
      109 CALL                             R13 1 1
      110 JUMP                             ; [+27]
      111 JUMPIFNOTEQKS                    R3 K38 ["Body"] ; [+5]
      113 GETUPVAL                         R13 3
      114 GETUPVAL                         R14 8
      115 CALL                             R13 1 1
      116 JUMP                             ; [+21]
      117 JUMPIFNOTEQKS                    R3 K39 ["Movement"] ; [+5]
      119 GETUPVAL                         R13 3
      120 GETUPVAL                         R14 9
      121 CALL                             R13 1 1
      122 JUMP                             ; [+15]
      123 JUMPIFNOTEQKS                    R3 K40 ["Accessories"] ; [+5]
      125 GETUPVAL                         R13 3
      126 GETUPVAL                         R14 10
      127 CALL                             R13 1 1
      128 JUMP                             ; [+9]
      129 JUMPIFNOTEQKS                    R3 K41 ["Clothing"] ; [+5]
      131 GETUPVAL                         R13 3
      132 GETUPVAL                         R14 11
      133 CALL                             R13 1 1
      134 JUMP                             ; [+3]
      135 GETUPVAL                         R13 12
      136 MOVE                             R14 R3
      137 CALL                             R13 1 1
      138 SETTABLEKS                       R13 R12 K35 ["SettingsBody"]
      140 CALL                             R9 3 1
      141 SETTABLEKS                       R9 R8 K23 ["SettingsContent"]
      143 CALL                             R5 3 -1
      144 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Settings"]
       15 GETTABLEKS                       R2 R2 K9 ["AccessoriesSettings"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       26 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsContext"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K12 ["Util"]
       35 GETTABLEKS                       R4 R4 K13 ["AvatarSettingsProviderTypes"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Src"]
       42 GETTABLEKS                       R5 R5 K7 ["Components"]
       44 GETTABLEKS                       R5 R5 K8 ["Settings"]
       46 GETTABLEKS                       R5 R5 K14 ["BodySettings"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R6 R0 K6 ["Src"]
       53 GETTABLEKS                       R6 R6 K7 ["Components"]
       55 GETTABLEKS                       R6 R6 K15 ["CategoryList"]
       57 CALL                             R5 1 1
       58 GETIMPORT                        R6 K5 [require]
       60 GETTABLEKS                       R7 R0 K6 ["Src"]
       62 GETTABLEKS                       R7 R7 K7 ["Components"]
       64 GETTABLEKS                       R7 R7 K8 ["Settings"]
       66 GETTABLEKS                       R7 R7 K16 ["ClothingSettings"]
       68 CALL                             R6 1 1
       69 GETIMPORT                        R7 K5 [require]
       71 GETTABLEKS                       R8 R0 K6 ["Src"]
       73 GETTABLEKS                       R8 R8 K12 ["Util"]
       75 GETTABLEKS                       R8 R8 K17 ["Constants"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R8 K5 [require]
       80 GETTABLEKS                       R9 R0 K18 ["Packages"]
       82 GETTABLEKS                       R9 R9 K19 ["Framework"]
       84 CALL                             R8 1 1
       85 GETIMPORT                        R9 K5 [require]
       87 GETTABLEKS                       R10 R0 K6 ["Src"]
       89 GETTABLEKS                       R10 R10 K7 ["Components"]
       91 GETTABLEKS                       R10 R10 K8 ["Settings"]
       93 GETTABLEKS                       R10 R10 K20 ["GeneralSettings"]
       95 CALL                             R9 1 1
       96 GETIMPORT                        R10 K5 [require]
       98 GETTABLEKS                       R11 R0 K6 ["Src"]
      100 GETTABLEKS                       R11 R11 K7 ["Components"]
      102 GETTABLEKS                       R11 R11 K8 ["Settings"]
      104 GETTABLEKS                       R11 R11 K21 ["MovementSettings"]
      106 CALL                             R10 1 1
      107 GETIMPORT                        R11 K5 [require]
      109 GETTABLEKS                       R12 R0 K18 ["Packages"]
      111 GETTABLEKS                       R12 R12 K22 ["React"]
      113 CALL                             R11 1 1
      114 GETIMPORT                        R12 K5 [require]
      116 GETTABLEKS                       R13 R0 K6 ["Src"]
      118 GETTABLEKS                       R13 R13 K12 ["Util"]
      120 GETTABLEKS                       R13 R13 K23 ["exhaustiveMatch"]
      122 CALL                             R12 1 1
      123 GETTABLEKS                       R13 R8 K24 ["UI"]
      125 GETTABLEKS                       R14 R13 K25 ["Pane"]
      127 GETTABLEKS                       R15 R13 K26 ["ScrollingFrame"]
      129 GETTABLEKS                       R16 R11 K27 ["createElement"]
      131 DUPCLOSURE                       R17 K28 [PROTO_0]
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R2
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R12
      145 RETURN                           R17 1
