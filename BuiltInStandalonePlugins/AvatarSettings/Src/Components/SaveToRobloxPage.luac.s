PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R4 R1 K1 ["default"]
        7 JUMPIFEQKB                       R4 FALSE ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["EnableAvatarSettingsContext must not be default"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 2
       18 NAMECALL                         R2 R2 K5 ["use"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 3
       22 CALL                             R3 0 1
       23 GETUPVAL                         R4 4
       24 GETUPVAL                         R5 5
       25 NEWTABLE                         R6 0 0
       27 DUPTABLE                         R7 K7 [{"PageContent"}]
       28 GETUPVAL                         R8 4
       29 GETUPVAL                         R9 5
       30 NEWTABLE                         R10 8 0
       32 GETUPVAL                         R12 0
       33 GETTABLEKS                       R11 R12 K8 ["Tag"]
       35 LOADK                            R12 K9 ["X-Column X-Middle X-Center"]
       36 SETTABLE                         R12 R10 R11
       37 GETIMPORT                        R11 K13 [Enum.AutomaticSize.X]
       39 SETTABLEKS                       R11 R10 K11 ["AutomaticSize"]
       41 GETIMPORT                        R11 K16 [UDim2.fromOffset]
       43 LOADN                            R12 0
       44 LOADN                            R13 200
       45 CALL                             R11 2 1
       46 SETTABLEKS                       R11 R10 K17 ["Size"]
       48 GETIMPORT                        R11 K20 [Vector2.new]
       50 LOADK                            R12 K21 [0.5]
       51 LOADK                            R13 K21 [0.5]
       52 CALL                             R11 2 1
       53 SETTABLEKS                       R11 R10 K22 ["AnchorPoint"]
       55 GETIMPORT                        R11 K23 [UDim2.new]
       57 LOADK                            R12 K21 [0.5]
       58 LOADN                            R13 0
       59 LOADN                            R14 0
       60 LOADN                            R15 200
       61 CALL                             R11 4 1
       62 SETTABLEKS                       R11 R10 K24 ["Position"]
       64 DUPTABLE                         R11 K28 [{"UIListLayout", "SaveToAccessAvatarSettingsText", "SaveToRobloxButton"}]
       65 GETUPVAL                         R12 4
       66 LOADK                            R13 K25 ["UIListLayout"]
       67 DUPTABLE                         R14 K30 [{"Padding"}]
       68 GETIMPORT                        R15 K32 [UDim.new]
       70 LOADN                            R16 0
       71 LOADN                            R17 20
       72 CALL                             R15 2 1
       73 SETTABLEKS                       R15 R14 K29 ["Padding"]
       75 CALL                             R12 2 1
       76 SETTABLEKS                       R12 R11 K25 ["UIListLayout"]
       78 GETUPVAL                         R12 4
       79 LOADK                            R13 K33 ["TextLabel"]
       80 NEWTABLE                         R14 8 0
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R15 R16 K8 ["Tag"]
       85 LOADK                            R16 K34 ["Component-TextLabel"]
       86 SETTABLE                         R16 R14 R15
       87 LOADK                            R17 K35 ["Unpublished"]
       88 LOADK                            R18 K36 ["SaveToAccessAvatarSettings"]
       89 NAMECALL                         R15 R2 K37 ["getText"]
       91 CALL                             R15 3 1
       92 SETTABLEKS                       R15 R14 K38 ["Text"]
       94 MOVE                             R15 R3
       95 CALL                             R15 0 1
       96 SETTABLEKS                       R15 R14 K39 ["LayoutOrder"]
       98 GETIMPORT                        R15 K16 [UDim2.fromOffset]
      100 LOADN                            R16 0
      101 LOADN                            R17 28
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K17 ["Size"]
      105 GETIMPORT                        R15 K13 [Enum.AutomaticSize.X]
      107 SETTABLEKS                       R15 R14 K11 ["AutomaticSize"]
      109 LOADN                            R15 20
      110 SETTABLEKS                       R15 R14 K40 ["TextSize"]
      112 CALL                             R12 2 1
      113 SETTABLEKS                       R12 R11 K26 ["SaveToAccessAvatarSettingsText"]
      115 GETUPVAL                         R12 4
      116 GETUPVAL                         R13 6
      117 NEWTABLE                         R14 8 0
      119 GETUPVAL                         R16 0
      120 GETTABLEKS                       R15 R16 K8 ["Tag"]
      122 LOADK                            R16 K41 ["PrimaryBrand Compact SaveToRobloxButton"]
      123 SETTABLE                         R16 R14 R15
      124 LOADK                            R16 K42 ["         "]
      125 LOADK                            R21 K35 ["Unpublished"]
      126 LOADK                            R22 K43 ["SaveToRoblox"]
      127 NAMECALL                         R19 R2 K37 ["getText"]
      129 CALL                             R19 3 1
      130 MOVE                             R17 R19
      131 LOADK                            R18 K42 ["         "]
      132 CONCAT                           R15 R16 R18
      133 SETTABLEKS                       R15 R14 K38 ["Text"]
      135 MOVE                             R15 R3
      136 CALL                             R15 0 1
      137 SETTABLEKS                       R15 R14 K39 ["LayoutOrder"]
      139 GETIMPORT                        R15 K45 [Enum.AutomaticSize.XY]
      141 SETTABLEKS                       R15 R14 K11 ["AutomaticSize"]
      143 GETTABLEKS                       R15 R1 K46 ["requestSaveToRoblox"]
      145 SETTABLEKS                       R15 R14 K47 ["OnClick"]
      147 CALL                             R12 2 1
      148 SETTABLEKS                       R12 R11 K27 ["SaveToRobloxButton"]
      150 CALL                             R8 3 1
      151 SETTABLEKS                       R8 R7 K6 ["PageContent"]
      153 CALL                             R4 3 -1
      154 RETURN                           R4 -1

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
       15 GETTABLEKS                       R2 R3 K9 ["EnableAvatarSettingsContext"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R4 K11 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R6 K13 ["ReactUtils"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R2 K14 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K15 ["Localization"]
       43 GETTABLEKS                       R7 R4 K16 ["createNextOrder"]
       45 GETTABLEKS                       R8 R2 K17 ["UI"]
       47 GETTABLEKS                       R9 R8 K18 ["Pane"]
       49 GETTABLEKS                       R10 R8 K19 ["IconButton"]
       51 GETTABLEKS                       R11 R3 K20 ["createElement"]
       53 DUPCLOSURE                       R12 K21 [PROTO_0]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R10
       61 RETURN                           R12 1
