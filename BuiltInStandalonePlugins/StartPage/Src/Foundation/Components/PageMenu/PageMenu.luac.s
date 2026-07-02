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
        7 GETUPVAL                         R5 2
        8 JUMPIFNOT                        R5 ; [+11]
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K4 ["createElement"]
       12 GETUPVAL                         R5 4
       13 DUPTABLE                         R6 K8 [{["LayoutOrder"] = 1, ["isCollapsed"]}]
       14 GETTABLEKS                       R7 R0 K7 ["isCollapsed"]
       16 SETTABLEKS                       R7 R6 K7 ["isCollapsed"]
       18 CALL                             R4 2 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R4
       21 SETTABLEKS                       R4 R3 K1 ["StudioLogo"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K4 ["createElement"]
       26 GETUPVAL                         R5 5
       27 DUPTABLE                         R6 K10 [{["LayoutOrder"] = 2, ["isCollapsed"]}]
       28 GETTABLEKS                       R7 R0 K7 ["isCollapsed"]
       30 SETTABLEKS                       R7 R6 K7 ["isCollapsed"]
       32 CALL                             R4 2 1
       33 SETTABLEKS                       R4 R3 K2 ["NewButton"]
       35 GETTABLEKS                       R4 R0 K11 ["pages"]
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 GETTABLEKS                       R10 R0 K12 ["selectedPage"]
       42 JUMPIFEQ                         R10 R8 ; [+2]
       44 LOADB                            R9 0 +1
       45 LOADB                            R9 1
       46 MOVE                             R11 R3
       47 GETUPVAL                         R12 3
       48 GETTABLEKS                       R12 R12 K4 ["createElement"]
       50 GETUPVAL                         R13 6
       51 DUPTABLE                         R14 K17 [{"LayoutOrder", "onActivated", "isActive", "icon", "isCollapsed", "text"}]
       52 ADDK                             R15 R7 K9 [2]
       53 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
       55 NEWCLOSURE                       R15 P0
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R8
       58 SETTABLEKS                       R15 R14 K13 ["onActivated"]
       60 SETTABLEKS                       R9 R14 K14 ["isActive"]
       62 JUMPIFNOT                        R9 ; [+3]
       63 GETTABLEKS                       R15 R8 K18 ["ActiveIcon"]
       65 JUMP                             ; [+2]
       66 GETTABLEKS                       R15 R8 K19 ["Icon"]
       68 SETTABLEKS                       R15 R14 K15 ["icon"]
       70 GETTABLEKS                       R15 R0 K7 ["isCollapsed"]
       72 SETTABLEKS                       R15 R14 K7 ["isCollapsed"]
       74 LOADK                            R17 K20 ["Plugin"]
       75 GETTABLEKS                       R18 R8 K21 ["TextKey"]
       77 NAMECALL                         R15 R2 K22 ["getText"]
       79 CALL                             R15 3 1
       80 SETTABLEKS                       R15 R14 K16 ["text"]
       82 CALL                             R12 2 -1
       83 FASTCALL                         TABLE_INSERT ; [+2]
       84 GETIMPORT                        R10 K25 [table.insert]
       86 CALL                             R10 -1 0
       87 FORGLOOP                         R4 2 ; [-48]
       89 GETUPVAL                         R4 3
       90 GETTABLEKS                       R4 R4 K4 ["createElement"]
       92 GETUPVAL                         R5 7
       93 DUPTABLE                         R6 K29 [{["Size"], ["tag"] = "col flex-x-fill auto-x padding-medium"}]
       94 GETTABLEKS                       R8 R0 K7 ["isCollapsed"]
       96 JUMPIFNOT                        R8 ; [+2]
       97 GETUPVAL                         R7 8
       98 JUMP                             ; [+1]
       99 GETUPVAL                         R7 9
      100 SETTABLEKS                       R7 R6 K26 ["Size"]
      102 DUPTABLE                         R7 K32 [{"TopGroup", "Collapse"}]
      103 GETUPVAL                         R8 3
      104 GETTABLEKS                       R8 R8 K4 ["createElement"]
      106 GETUPVAL                         R9 7
      107 DUPTABLE                         R10 K34 [{["LayoutOrder"], ["tag"] = "col flex-x-fill grow gap-small auto-xy"}]
      108 MOVE                             R11 R1
      109 CALL                             R11 0 1
      110 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      112 MOVE                             R11 R3
      113 CALL                             R8 3 1
      114 SETTABLEKS                       R8 R7 K30 ["TopGroup"]
      116 GETUPVAL                         R8 3
      117 GETTABLEKS                       R8 R8 K4 ["createElement"]
      119 GETUPVAL                         R9 6
      120 DUPTABLE                         R10 K35 [{"LayoutOrder", "icon", "onActivated", "text", "isCollapsed"}]
      121 MOVE                             R11 R1
      122 CALL                             R11 0 1
      123 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
      125 GETTABLEKS                       R12 R0 K7 ["isCollapsed"]
      127 JUMPIFNOT                        R12 ; [+2]
      128 LOADK                            R11 K36 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarOpen.png"]
      129 JUMP                             ; [+1]
      130 LOADK                            R11 K37 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarCollapse.png"]
      131 SETTABLEKS                       R11 R10 K15 ["icon"]
      133 GETTABLEKS                       R11 R0 K38 ["toggleIsCollapsed"]
      135 SETTABLEKS                       R11 R10 K13 ["onActivated"]
      137 LOADK                            R13 K20 ["Plugin"]
      138 GETTABLEKS                       R15 R0 K7 ["isCollapsed"]
      140 JUMPIFNOT                        R15 ; [+2]
      141 LOADK                            R14 K39 ["PageMenu.Open"]
      142 JUMP                             ; [+1]
      143 LOADK                            R14 K40 ["PageMenu.Hide"]
      144 NAMECALL                         R11 R2 K22 ["getText"]
      146 CALL                             R11 3 1
      147 SETTABLEKS                       R11 R10 K16 ["text"]
      149 GETTABLEKS                       R11 R0 K7 ["isCollapsed"]
      151 SETTABLEKS                       R11 R10 K7 ["isCollapsed"]
      153 CALL                             R8 2 1
      154 SETTABLEKS                       R8 R7 K31 ["Collapse"]
      156 CALL                             R4 3 -1
      157 RETURN                           R4 -1

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
