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
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETIMPORT                        R4 K3 [UDim2.new]
       10 LOADN                            R5 0
       11 GETUPVAL                         R7 3
       12 GETTABLEKS                       R7 R7 K4 ["MENU_CONTENT_WIDTH"]
       14 GETTABLEKS                       R9 R3 K6 ["Padding"]
       16 GETTABLEKS                       R9 R9 K7 ["Medium"]
       18 MULK                             R8 R9 K5 [2]
       19 ADD                              R6 R7 R8
       20 LOADN                            R7 1
       21 LOADN                            R8 0
       22 CALL                             R4 4 1
       23 DUPTABLE                         R5 K11 [{"StudioLogo", "GroupSelector", "NewButton"}]
       24 GETUPVAL                         R6 4
       25 GETTABLEKS                       R6 R6 K12 ["createElement"]
       27 GETUPVAL                         R7 5
       28 DUPTABLE                         R8 K16 [{["LayoutOrder"] = 1, ["isCollapsed"]}]
       29 GETTABLEKS                       R9 R0 K15 ["isCollapsed"]
       31 SETTABLEKS                       R9 R8 K15 ["isCollapsed"]
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K8 ["StudioLogo"]
       36 GETUPVAL                         R7 6
       37 JUMPIFNOT                        R7 ; [+11]
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R6 R6 K12 ["createElement"]
       41 GETUPVAL                         R7 7
       42 DUPTABLE                         R8 K17 [{["LayoutOrder"] = 2, ["isCollapsed"]}]
       43 GETTABLEKS                       R9 R0 K15 ["isCollapsed"]
       45 SETTABLEKS                       R9 R8 K15 ["isCollapsed"]
       47 CALL                             R6 2 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 SETTABLEKS                       R6 R5 K9 ["GroupSelector"]
       52 GETUPVAL                         R6 4
       53 GETTABLEKS                       R6 R6 K12 ["createElement"]
       55 GETUPVAL                         R7 8
       56 DUPTABLE                         R8 K18 [{"LayoutOrder", "isCollapsed"}]
       57 GETUPVAL                         R10 6
       58 JUMPIFNOT                        R10 ; [+2]
       59 LOADN                            R9 3
       60 JUMP                             ; [+1]
       61 LOADN                            R9 2
       62 SETTABLEKS                       R9 R8 K13 ["LayoutOrder"]
       64 GETTABLEKS                       R9 R0 K15 ["isCollapsed"]
       66 SETTABLEKS                       R9 R8 K15 ["isCollapsed"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K10 ["NewButton"]
       71 GETTABLEKS                       R6 R0 K19 ["pages"]
       73 LOADNIL                          R7
       74 LOADNIL                          R8
       75 FORGPREP                         R6
       76 GETTABLEKS                       R12 R0 K20 ["selectedPage"]
       78 JUMPIFEQ                         R12 R10 ; [+2]
       80 LOADB                            R11 0 +1
       81 LOADB                            R11 1
       82 MOVE                             R13 R5
       83 GETUPVAL                         R14 4
       84 GETTABLEKS                       R14 R14 K12 ["createElement"]
       86 GETUPVAL                         R15 9
       87 DUPTABLE                         R16 K25 [{"LayoutOrder", "onActivated", "isActive", "icon", "isCollapsed", "text"}]
       88 GETUPVAL                         R19 6
       89 JUMPIFNOT                        R19 ; [+2]
       90 LOADN                            R18 3
       91 JUMP                             ; [+1]
       92 LOADN                            R18 2
       93 ADD                              R17 R9 R18
       94 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
       96 NEWCLOSURE                       R17 P0
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R10
       99 SETTABLEKS                       R17 R16 K21 ["onActivated"]
      101 SETTABLEKS                       R11 R16 K22 ["isActive"]
      103 JUMPIFNOT                        R11 ; [+3]
      104 GETTABLEKS                       R17 R10 K26 ["ActiveIcon"]
      106 JUMP                             ; [+2]
      107 GETTABLEKS                       R17 R10 K27 ["Icon"]
      109 SETTABLEKS                       R17 R16 K23 ["icon"]
      111 GETTABLEKS                       R17 R0 K15 ["isCollapsed"]
      113 SETTABLEKS                       R17 R16 K15 ["isCollapsed"]
      115 LOADK                            R19 K28 ["Plugin"]
      116 GETTABLEKS                       R20 R10 K29 ["TextKey"]
      118 NAMECALL                         R17 R2 K30 ["getText"]
      120 CALL                             R17 3 1
      121 SETTABLEKS                       R17 R16 K24 ["text"]
      123 CALL                             R14 2 -1
      124 FASTCALL                         TABLE_INSERT ; [+2]
      125 GETIMPORT                        R12 K33 [table.insert]
      127 CALL                             R12 -1 0
      128 FORGLOOP                         R6 2 ; [-53]
      130 GETUPVAL                         R6 4
      131 GETTABLEKS                       R6 R6 K12 ["createElement"]
      133 GETUPVAL                         R7 10
      134 DUPTABLE                         R8 K36 [{"Size", "tag"}]
      135 GETUPVAL                         R10 6
      136 JUMPIFNOT                        R10 ; [+11]
      137 GETTABLEKS                       R10 R0 K15 ["isCollapsed"]
      139 JUMPIFNOT                        R10 ; [+6]
      140 GETIMPORT                        R9 K38 [UDim2.fromScale]
      142 LOADN                            R10 0
      143 LOADN                            R11 1
      144 CALL                             R9 2 1
      145 JUMP                             ; [+8]
      146 MOVE                             R9 R4
      147 JUMP                             ; [+6]
      148 GETTABLEKS                       R10 R0 K15 ["isCollapsed"]
      150 JUMPIFNOT                        R10 ; [+2]
      151 GETUPVAL                         R9 11
      152 JUMP                             ; [+1]
      153 GETUPVAL                         R9 12
      154 SETTABLEKS                       R9 R8 K34 ["Size"]
      156 GETUPVAL                         R10 6
      157 JUMPIFNOT                        R10 ; [+9]
      158 NEWTABLE                         R9 2 0
      160 LOADB                            R10 1
      161 SETTABLEKS                       R10 R9 K39 ["col flex-x-fill padding-medium"]
      163 LOADB                            R10 1
      164 SETTABLEKS                       R10 R9 K40 ["auto-x"]
      166 JUMP                             ; [+1]
      167 LOADK                            R9 K41 ["col flex-x-fill auto-x padding-medium"]
      168 SETTABLEKS                       R9 R8 K35 ["tag"]
      170 DUPTABLE                         R9 K44 [{"TopGroup", "Collapse"}]
      171 GETUPVAL                         R10 4
      172 GETTABLEKS                       R10 R10 K12 ["createElement"]
      174 GETUPVAL                         R11 10
      175 DUPTABLE                         R12 K46 [{["LayoutOrder"], ["tag"] = "col flex-x-fill grow gap-small auto-xy"}]
      176 MOVE                             R13 R1
      177 CALL                             R13 0 1
      178 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      180 MOVE                             R13 R5
      181 CALL                             R10 3 1
      182 SETTABLEKS                       R10 R9 K42 ["TopGroup"]
      184 GETUPVAL                         R10 4
      185 GETTABLEKS                       R10 R10 K12 ["createElement"]
      187 GETUPVAL                         R11 9
      188 DUPTABLE                         R12 K47 [{"LayoutOrder", "icon", "onActivated", "text", "isCollapsed"}]
      189 MOVE                             R13 R1
      190 CALL                             R13 0 1
      191 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
      193 GETTABLEKS                       R14 R0 K15 ["isCollapsed"]
      195 JUMPIFNOT                        R14 ; [+2]
      196 LOADK                            R13 K48 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarOpen.png"]
      197 JUMP                             ; [+1]
      198 LOADK                            R13 K49 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/SidebarCollapse.png"]
      199 SETTABLEKS                       R13 R12 K23 ["icon"]
      201 GETTABLEKS                       R13 R0 K50 ["toggleIsCollapsed"]
      203 SETTABLEKS                       R13 R12 K21 ["onActivated"]
      205 LOADK                            R15 K28 ["Plugin"]
      206 GETTABLEKS                       R17 R0 K15 ["isCollapsed"]
      208 JUMPIFNOT                        R17 ; [+2]
      209 LOADK                            R16 K51 ["PageMenu.Open"]
      210 JUMP                             ; [+1]
      211 LOADK                            R16 K52 ["PageMenu.Hide"]
      212 NAMECALL                         R13 R2 K30 ["getText"]
      214 CALL                             R13 3 1
      215 SETTABLEKS                       R13 R12 K24 ["text"]
      217 GETTABLEKS                       R13 R0 K15 ["isCollapsed"]
      219 SETTABLEKS                       R13 R12 K15 ["isCollapsed"]
      221 CALL                             R10 2 1
      222 SETTABLEKS                       R10 R9 K43 ["Collapse"]
      224 CALL                             R6 3 -1
      225 RETURN                           R6 -1

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
       42 GETTABLEKS                       R8 R5 K17 ["Hooks"]
       44 GETTABLEKS                       R8 R8 K18 ["useTokens"]
       46 GETIMPORT                        R9 K5 [require]
       48 GETIMPORT                        R10 K1 [script]
       50 GETTABLEKS                       R10 R10 K19 ["Parent"]
       52 GETTABLEKS                       R10 R10 K20 ["NewButton"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETIMPORT                        R11 K1 [script]
       59 GETTABLEKS                       R11 R11 K19 ["Parent"]
       61 GETTABLEKS                       R11 R11 K21 ["CollapsibleButton"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETIMPORT                        R12 K1 [script]
       68 GETTABLEKS                       R12 R12 K19 ["Parent"]
       70 GETTABLEKS                       R12 R12 K22 ["Constants"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETIMPORT                        R13 K1 [script]
       77 GETTABLEKS                       R13 R13 K19 ["Parent"]
       79 GETTABLEKS                       R13 R13 K23 ["GroupSelector"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K5 [require]
       84 GETTABLEKS                       R14 R0 K13 ["Src"]
       86 GETTABLEKS                       R14 R14 K24 ["SharedFlags"]
       88 GETTABLEKS                       R14 R14 K25 ["getFFlagLuaStartPageGroupSelector"]
       90 CALL                             R13 1 1
       91 CALL                             R13 0 1
       92 GETIMPORT                        R14 K5 [require]
       94 GETTABLEKS                       R15 R0 K13 ["Src"]
       96 GETTABLEKS                       R15 R15 K26 ["Types"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K29 [UDim2.new]
      101 LOADN                            R16 0
      102 LOADN                            R17 96
      103 LOADN                            R18 0
      104 LOADN                            R19 24
      105 CALL                             R15 4 1
      106 GETIMPORT                        R16 K31 [UDim2.fromScale]
      108 LOADN                            R17 0
      109 LOADN                            R18 1
      110 CALL                             R16 2 1
      111 GETIMPORT                        R17 K29 [UDim2.new]
      113 LOADN                            R18 0
      114 LOADN                            R19 200
      115 LOADN                            R20 1
      116 LOADN                            R21 0
      117 CALL                             R17 4 1
      118 DUPCLOSURE                       R18 K32 [PROTO_0]
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R15
      123 DUPCLOSURE                       R19 K33 [PROTO_2]
      124 CAPTURE                          VAL R3
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R18
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R17
      137 RETURN                           R19 1
