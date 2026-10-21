PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["LayoutOrder"], ["tag"] = "row align-x-left align-y-center gap-medium auto-xy padding-medium radius-medium"}]
        5 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        9 DUPTABLE                         R4 K7 [{"Image", "Text"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K11 [{["LayoutOrder"] = 1, ["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Dark/Medium/StudioLogo.png", ["tag"] = "size-600 content-default"}]
       15 CALL                             R5 2 1
       16 SETTABLEKS                       R5 R4 K5 ["Image"]
       18 GETTABLEKS                       R6 R0 K12 ["isCollapsed"]
       20 JUMPIFNOT                        R6 ; [+2]
       21 LOADNIL                          R5
       22 JUMP                             ; [+9]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K0 ["createElement"]
       26 GETUPVAL                         R6 2
       27 DUPTABLE                         R7 K17 [{["Size"], ["LayoutOrder"] = 2, ["Image"] = "rbxasset://textures/StartPage/RobloxStudioLockup.png", ["tag"] = "content-default"}]
       28 GETUPVAL                         R8 3
       29 SETTABLEKS                       R8 R7 K13 ["Size"]
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K6 ["Text"]
       34 CALL                             R1 3 -1
       35 RETURN                           R1 -1

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
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K4 ["createElement"]
       10 GETUPVAL                         R5 3
       11 DUPTABLE                         R6 K8 [{["LayoutOrder"] = 1, ["isCollapsed"]}]
       12 GETTABLEKS                       R7 R0 K7 ["isCollapsed"]
       14 SETTABLEKS                       R7 R6 K7 ["isCollapsed"]
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K1 ["StudioLogo"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["createElement"]
       22 GETUPVAL                         R5 4
       23 DUPTABLE                         R6 K10 [{["LayoutOrder"] = 2, ["isCollapsed"]}]
       24 GETTABLEKS                       R7 R0 K7 ["isCollapsed"]
       26 SETTABLEKS                       R7 R6 K7 ["isCollapsed"]
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R3 K2 ["NewButton"]
       31 GETTABLEKS                       R4 R0 K11 ["pages"]
       33 LOADNIL                          R5
       34 LOADNIL                          R6
       35 FORGPREP                         R4
       36 GETTABLEKS                       R10 R0 K12 ["selectedPage"]
       38 JUMPIFEQ                         R10 R8 ; [+2]
       40 LOADB                            R9 0 +1
       41 LOADB                            R9 1
       42 MOVE                             R11 R3
       43 GETUPVAL                         R12 2
       44 GETTABLEKS                       R12 R12 K4 ["createElement"]
       46 GETUPVAL                         R13 5
       47 DUPTABLE                         R14 K17 [{"LayoutOrder", "onActivated", "isActive", "icon", "isCollapsed", "text"}]
       48 ADDK                             R15 R7 K9 [2]
       49 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
       51 NEWCLOSURE                       R15 P0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R8
       54 SETTABLEKS                       R15 R14 K13 ["onActivated"]
       56 SETTABLEKS                       R9 R14 K14 ["isActive"]
       58 JUMPIFNOT                        R9 ; [+3]
       59 GETTABLEKS                       R15 R8 K18 ["ActiveIcon"]
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R15 R8 K19 ["Icon"]
       64 SETTABLEKS                       R15 R14 K15 ["icon"]
       66 GETTABLEKS                       R15 R0 K7 ["isCollapsed"]
       68 SETTABLEKS                       R15 R14 K7 ["isCollapsed"]
       70 LOADK                            R17 K20 ["Plugin"]
       71 GETTABLEKS                       R18 R8 K21 ["TextKey"]
       73 NAMECALL                         R15 R2 K22 ["getText"]
       75 CALL                             R15 3 1
       76 SETTABLEKS                       R15 R14 K16 ["text"]
       78 CALL                             R12 2 -1
       79 FASTCALL                         TABLE_INSERT ; [+2]
       80 GETIMPORT                        R10 K25 [table.insert]
       82 CALL                             R10 -1 0
       83 FORGLOOP                         R4 2 ; [-48]
       85 GETUPVAL                         R4 2
       86 GETTABLEKS                       R4 R4 K4 ["createElement"]
       88 GETUPVAL                         R5 6
       89 DUPTABLE                         R6 K29 [{["Size"], ["tag"] = "col flex-x-fill auto-x padding-medium"}]
       90 GETTABLEKS                       R8 R0 K7 ["isCollapsed"]
       92 JUMPIFNOT                        R8 ; [+2]
       93 GETUPVAL                         R7 7
       94 JUMP                             ; [+1]
       95 GETUPVAL                         R7 8
       96 SETTABLEKS                       R7 R6 K26 ["Size"]
       98 DUPTABLE                         R7 K32 [{"TopGroup", "Collapse"}]
       99 GETUPVAL                         R8 2
      100 GETTABLEKS                       R8 R8 K4 ["createElement"]
      102 GETUPVAL                         R9 6
      103 DUPTABLE                         R10 K34 [{["LayoutOrder"], ["tag"] = "col flex-x-fill grow gap-small auto-xy"}]
      104 MOVE                             R11 R1
      105 CALL                             R11 0 1
      106 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      108 MOVE                             R11 R3
      109 CALL                             R8 3 1
      110 SETTABLEKS                       R8 R7 K30 ["TopGroup"]
      112 GETUPVAL                         R8 2
      113 GETTABLEKS                       R8 R8 K4 ["createElement"]
      115 GETUPVAL                         R9 5
      116 DUPTABLE                         R10 K35 [{"LayoutOrder", "icon", "onActivated", "text", "isCollapsed"}]
      117 MOVE                             R11 R1
      118 CALL                             R11 0 1
      119 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      121 GETTABLEKS                       R12 R0 K7 ["isCollapsed"]
      123 JUMPIFNOT                        R12 ; [+2]
      124 LOADK                            R11 K36 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarOpen.png"]
      125 JUMP                             ; [+1]
      126 LOADK                            R11 K37 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarCollapse.png"]
      127 SETTABLEKS                       R11 R10 K15 ["icon"]
      129 GETTABLEKS                       R11 R0 K38 ["toggleIsCollapsed"]
      131 SETTABLEKS                       R11 R10 K13 ["onActivated"]
      133 LOADK                            R13 K20 ["Plugin"]
      134 GETTABLEKS                       R15 R0 K7 ["isCollapsed"]
      136 JUMPIFNOT                        R15 ; [+2]
      137 LOADK                            R14 K39 ["PageMenu.Open"]
      138 JUMP                             ; [+1]
      139 LOADK                            R14 K40 ["PageMenu.Hide"]
      140 NAMECALL                         R11 R2 K22 ["getText"]
      142 CALL                             R11 3 1
      143 SETTABLEKS                       R11 R10 K16 ["text"]
      145 GETTABLEKS                       R11 R0 K7 ["isCollapsed"]
      147 SETTABLEKS                       R11 R10 K7 ["isCollapsed"]
      149 CALL                             R8 2 1
      150 SETTABLEKS                       R8 R7 K31 ["Collapse"]
      152 CALL                             R4 3 -1
      153 RETURN                           R4 -1

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
       33 GETTABLEKS                       R6 R6 K9 ["Util"]
       35 GETTABLEKS                       R6 R6 K14 ["Foundation"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R5 K15 ["View"]
       40 GETTABLEKS                       R7 R5 K16 ["Image"]
       42 GETIMPORT                        R8 K5 [require]
       44 GETIMPORT                        R9 K1 [script]
       46 GETTABLEKS                       R9 R9 K17 ["Parent"]
       48 GETTABLEKS                       R9 R9 K18 ["NewButton"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K5 [require]
       53 GETIMPORT                        R10 K1 [script]
       55 GETTABLEKS                       R10 R10 K17 ["Parent"]
       57 GETTABLEKS                       R10 R10 K19 ["CollapsibleButton"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K5 [require]
       62 GETTABLEKS                       R11 R0 K13 ["Src"]
       64 GETTABLEKS                       R11 R11 K20 ["Types"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K23 [UDim2.new]
       69 LOADN                            R12 0
       70 LOADN                            R13 96
       71 LOADN                            R14 0
       72 LOADN                            R15 24
       73 CALL                             R11 4 1
       74 DUPCLOSURE                       R12 K24 [PROTO_0]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R11
       79 GETIMPORT                        R13 K26 [UDim2.fromScale]
       81 LOADN                            R14 0
       82 LOADN                            R15 1
       83 CALL                             R13 2 1
       84 GETIMPORT                        R14 K23 [UDim2.new]
       86 LOADN                            R15 0
       87 LOADN                            R16 200
       88 LOADN                            R17 1
       89 LOADN                            R18 0
       90 CALL                             R14 4 1
       91 DUPCLOSURE                       R15 K27 [PROTO_2]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R14
      101 RETURN                           R15 1
