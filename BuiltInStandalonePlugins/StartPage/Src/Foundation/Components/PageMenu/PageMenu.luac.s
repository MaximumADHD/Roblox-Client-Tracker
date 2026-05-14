PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"LayoutOrder", "tag"}]
        5 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        9 LOADK                            R4 K4 ["row align-x-left align-y-center radius-medium padding-medium gap-medium auto-xy"]
       10 SETTABLEKS                       R4 R3 K2 ["tag"]
       12 DUPTABLE                         R4 K7 [{"Image", "Text"}]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["createElement"]
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K8 [{"LayoutOrder", "Image", "tag"}]
       18 LOADN                            R8 1
       19 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       21 LOADK                            R8 K9 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/StudioLogo.png"]
       22 SETTABLEKS                       R8 R7 K5 ["Image"]
       24 LOADK                            R8 K10 ["size-600 content-default"]
       25 SETTABLEKS                       R8 R7 K2 ["tag"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K5 ["Image"]
       30 GETTABLEKS                       R6 R0 K11 ["isCollapsed"]
       32 JUMPIFNOT                        R6 ; [+2]
       33 LOADNIL                          R5
       34 JUMP                             ; [+18]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K0 ["createElement"]
       38 GETUPVAL                         R6 2
       39 DUPTABLE                         R7 K13 [{"Size", "LayoutOrder", "Image", "tag"}]
       40 GETUPVAL                         R8 3
       41 SETTABLEKS                       R8 R7 K12 ["Size"]
       43 LOADN                            R8 2
       44 SETTABLEKS                       R8 R7 K1 ["LayoutOrder"]
       46 LOADK                            R8 K14 ["rbxasset://textures/StartPage/RobloxStudioLockup.png"]
       47 SETTABLEKS                       R8 R7 K5 ["Image"]
       49 LOADK                            R8 K15 ["content-default"]
       50 SETTABLEKS                       R8 R7 K2 ["tag"]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K6 ["Text"]
       55 CALL                             R1 3 -1
       56 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPageSwap"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 NAMECALL                         R2 R2 K0 ["use"]
        5 CALL                             R2 1 1
        6 DUPTABLE                         R3 K3 [{"StudioLogo", "NewButton"}]
        7 GETUPVAL                         R5 2
        8 JUMPIFNOT                        R5 ; [+14]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K4 ["createElement"]
       12 GETUPVAL                         R5 4
       13 DUPTABLE                         R6 K7 [{"LayoutOrder", "isCollapsed"}]
       14 LOADN                            R7 1
       15 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       17 GETTABLEKS                       R7 R0 K6 ["isCollapsed"]
       19 SETTABLEKS                       R7 R6 K6 ["isCollapsed"]
       21 CALL                             R4 2 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K1 ["StudioLogo"]
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K4 ["createElement"]
       29 GETUPVAL                         R5 5
       30 DUPTABLE                         R6 K7 [{"LayoutOrder", "isCollapsed"}]
       31 LOADN                            R7 2
       32 SETTABLEKS                       R7 R6 K5 ["LayoutOrder"]
       34 GETTABLEKS                       R7 R0 K6 ["isCollapsed"]
       36 SETTABLEKS                       R7 R6 K6 ["isCollapsed"]
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R3 K2 ["NewButton"]
       41 GETTABLEKS                       R4 R0 K8 ["pages"]
       43 LOADNIL                          R5
       44 LOADNIL                          R6
       45 FORGPREP                         R4
       46 GETTABLEKS                       R10 R0 K9 ["selectedPage"]
       48 JUMPIFEQ                         R10 R8 ; [+2]
       50 LOADB                            R9 0 +1
       51 LOADB                            R9 1
       52 MOVE                             R11 R3
       53 GETUPVAL                         R12 3
       54 GETTABLEKS                       R12 R12 K4 ["createElement"]
       56 GETUPVAL                         R13 6
       57 DUPTABLE                         R14 K14 [{"LayoutOrder", "onActivated", "isActive", "icon", "isCollapsed", "text"}]
       58 ADDK                             R15 R7 K15 [2]
       59 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
       61 NEWCLOSURE                       R15 P0
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R15 R14 K10 ["onActivated"]
       66 SETTABLEKS                       R9 R14 K11 ["isActive"]
       68 JUMPIFNOT                        R9 ; [+3]
       69 GETTABLEKS                       R15 R8 K16 ["ActiveIcon"]
       71 JUMP                             ; [+2]
       72 GETTABLEKS                       R15 R8 K17 ["Icon"]
       74 SETTABLEKS                       R15 R14 K12 ["icon"]
       76 GETTABLEKS                       R15 R0 K6 ["isCollapsed"]
       78 SETTABLEKS                       R15 R14 K6 ["isCollapsed"]
       80 LOADK                            R17 K18 ["Plugin"]
       81 GETTABLEKS                       R18 R8 K19 ["TextKey"]
       83 NAMECALL                         R15 R2 K20 ["getText"]
       85 CALL                             R15 3 1
       86 SETTABLEKS                       R15 R14 K13 ["text"]
       88 CALL                             R12 2 -1
       89 FASTCALL                         TABLE_INSERT ; [+2]
       90 GETIMPORT                        R10 K23 [table.insert]
       92 CALL                             R10 -1 0
       93 FORGLOOP                         R4 2 ; [-48]
       95 GETUPVAL                         R4 3
       96 GETTABLEKS                       R4 R4 K4 ["createElement"]
       98 GETUPVAL                         R5 7
       99 DUPTABLE                         R6 K26 [{"Size", "tag"}]
      100 GETTABLEKS                       R8 R0 K6 ["isCollapsed"]
      102 JUMPIFNOT                        R8 ; [+2]
      103 GETUPVAL                         R7 8
      104 JUMP                             ; [+1]
      105 GETUPVAL                         R7 9
      106 SETTABLEKS                       R7 R6 K24 ["Size"]
      108 LOADK                            R7 K27 ["padding-medium col auto-x flex-x-fill"]
      109 SETTABLEKS                       R7 R6 K25 ["tag"]
      111 DUPTABLE                         R7 K30 [{"TopGroup", "Collapse"}]
      112 GETUPVAL                         R8 3
      113 GETTABLEKS                       R8 R8 K4 ["createElement"]
      115 GETUPVAL                         R9 7
      116 DUPTABLE                         R10 K31 [{"LayoutOrder", "tag"}]
      117 MOVE                             R11 R1
      118 CALL                             R11 0 1
      119 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      121 LOADK                            R11 K32 ["col gap-small grow flex-x-fill auto-xy"]
      122 SETTABLEKS                       R11 R10 K25 ["tag"]
      124 MOVE                             R11 R3
      125 CALL                             R8 3 1
      126 SETTABLEKS                       R8 R7 K28 ["TopGroup"]
      128 GETUPVAL                         R8 3
      129 GETTABLEKS                       R8 R8 K4 ["createElement"]
      131 GETUPVAL                         R9 6
      132 DUPTABLE                         R10 K33 [{"LayoutOrder", "icon", "onActivated", "text", "isCollapsed"}]
      133 MOVE                             R11 R1
      134 CALL                             R11 0 1
      135 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      137 GETTABLEKS                       R12 R0 K6 ["isCollapsed"]
      139 JUMPIFNOT                        R12 ; [+2]
      140 LOADK                            R11 K34 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarOpen.png"]
      141 JUMP                             ; [+1]
      142 LOADK                            R11 K35 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarCollapse.png"]
      143 SETTABLEKS                       R11 R10 K12 ["icon"]
      145 GETTABLEKS                       R11 R0 K36 ["toggleIsCollapsed"]
      147 SETTABLEKS                       R11 R10 K10 ["onActivated"]
      149 LOADK                            R13 K18 ["Plugin"]
      150 GETTABLEKS                       R15 R0 K6 ["isCollapsed"]
      152 JUMPIFNOT                        R15 ; [+2]
      153 LOADK                            R14 K37 ["PageMenu.Open"]
      154 JUMP                             ; [+1]
      155 LOADK                            R14 K38 ["PageMenu.Hide"]
      156 NAMECALL                         R11 R2 K20 ["getText"]
      158 CALL                             R11 3 1
      159 SETTABLEKS                       R11 R10 K13 ["text"]
      161 GETTABLEKS                       R11 R0 K6 ["isCollapsed"]
      163 SETTABLEKS                       R11 R10 K6 ["isCollapsed"]
      165 CALL                             R8 2 1
      166 SETTABLEKS                       R8 R7 K29 ["Collapse"]
      168 CALL                             R4 3 -1
      169 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["counter"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R4 R4 K12 ["Localization"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K13 ["Src"]
       33 GETTABLEKS                       R6 R6 K14 ["SharedFlags"]
       35 GETTABLEKS                       R6 R6 K15 ["getFFlagLuaStartPageStudioLogo"]
       37 CALL                             R5 1 1
       38 CALL                             R5 0 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Src"]
       43 GETTABLEKS                       R7 R7 K9 ["Util"]
       45 GETTABLEKS                       R7 R7 K16 ["Foundation"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K17 ["View"]
       50 GETTABLEKS                       R8 R6 K18 ["Image"]
       52 GETIMPORT                        R9 K5 [require]
       54 GETIMPORT                        R10 K1 [script]
       56 GETTABLEKS                       R10 R10 K19 ["Parent"]
       58 GETTABLEKS                       R10 R10 K20 ["NewButton"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETIMPORT                        R11 K1 [script]
       65 GETTABLEKS                       R11 R11 K19 ["Parent"]
       67 GETTABLEKS                       R11 R11 K21 ["CollapsibleButton"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R12 R0 K13 ["Src"]
       74 GETTABLEKS                       R12 R12 K22 ["Types"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K25 [UDim2.new]
       79 LOADN                            R13 0
       80 LOADN                            R14 96
       81 LOADN                            R15 0
       82 LOADN                            R16 24
       83 CALL                             R12 4 1
       84 DUPCLOSURE                       R13 K26 [PROTO_0]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R12
       89 GETIMPORT                        R14 K28 [UDim2.fromScale]
       91 LOADN                            R15 0
       92 LOADN                            R16 1
       93 CALL                             R14 2 1
       94 GETIMPORT                        R15 K25 [UDim2.new]
       96 LOADN                            R16 0
       97 LOADN                            R17 200
       98 LOADN                            R18 1
       99 LOADN                            R19 0
      100 CALL                             R15 4 1
      101 DUPCLOSURE                       R16 K29 [PROTO_2]
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R15
      112 RETURN                           R16 1
