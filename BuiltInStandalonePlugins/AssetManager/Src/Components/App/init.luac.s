PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["current"]
        8 NAMECALL                         R0 R0 K1 ["setPluginFrame"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setAppSizes"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setAppSizes"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["toggleSidebar"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 CALL                             R4 0 3
       12 GETUPVAL                         R7 4
       13 CALL                             R7 0 1
       14 GETUPVAL                         R8 5
       15 CALL                             R8 0 1
       16 GETUPVAL                         R9 6
       17 LOADNIL                          R10
       18 CALL                             R9 1 1
       19 GETUPVAL                         R10 7
       20 NEWCLOSURE                       R11 P0
       21 CAPTURE                          VAL R9
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R12 0 1
       25 GETTABLEKS                       R13 R9 K2 ["current"]
       27 SETLIST                          R12 R13 1 [1]
       29 CALL                             R10 2 0
       30 GETUPVAL                         R10 8
       31 GETTABLEKS                       R10 R10 K3 ["createElement"]
       33 GETUPVAL                         R11 9
       34 DUPTABLE                         R12 K7 [{"LayoutOrder", "ExplorerItems", "ZIndex"}]
       35 NAMECALL                         R13 R1 K8 ["getNextOrder"]
       37 CALL                             R13 1 1
       38 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       40 GETTABLEKS                       R13 R8 K9 ["Items"]
       42 SETTABLEKS                       R13 R12 K5 ["ExplorerItems"]
       44 LOADN                            R13 2
       45 SETTABLEKS                       R13 R12 K6 ["ZIndex"]
       47 CALL                             R10 2 1
       48 GETUPVAL                         R11 8
       49 GETTABLEKS                       R11 R11 K3 ["createElement"]
       51 GETUPVAL                         R12 10
       52 DUPTABLE                         R13 K10 [{"LayoutOrder"}]
       53 NAMECALL                         R14 R1 K8 ["getNextOrder"]
       55 CALL                             R14 1 1
       56 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       58 CALL                             R11 2 1
       59 NEWTABLE                         R12 8 0
       61 GETUPVAL                         R13 11
       62 CALL                             R13 0 1
       63 GETUPVAL                         R14 12
       64 CALL                             R14 0 1
       65 JUMPIF                           R14 ; [+49]
       66 JUMPIFNOT                        R3 ; [+45]
       67 JUMPIFNOT                        R6 ; [+3]
       68 SETTABLEKS                       R10 R12 K11 ["Sidebar"]
       70 JUMP                             ; [+89]
       71 GETUPVAL                         R14 8
       72 GETTABLEKS                       R14 R14 K3 ["createElement"]
       74 GETUPVAL                         R15 13
       75 NEWTABLE                         R16 8 0
       77 LOADN                            R17 1
       78 SETTABLEKS                       R17 R16 K6 ["ZIndex"]
       80 LOADB                            R17 0
       81 SETTABLEKS                       R17 R16 K12 ["UseScale"]
       83 LOADB                            R17 1
       84 SETTABLEKS                       R17 R16 K13 ["ClampSize"]
       86 NAMECALL                         R17 R2 K14 ["getAppMinSizes"]
       88 CALL                             R17 1 1
       89 SETTABLEKS                       R17 R16 K15 ["MinSizes"]
       91 SETTABLEKS                       R13 R16 K16 ["Sizes"]
       93 NEWCLOSURE                       R17 P1
       94 CAPTURE                          VAL R2
       95 SETTABLEKS                       R17 R16 K17 ["OnSizesChange"]
       97 GETUPVAL                         R17 8
       98 GETTABLEKS                       R17 R17 K18 ["Tag"]
      100 LOADK                            R18 K19 ["size-full"]
      101 SETTABLE                         R18 R16 R17
      102 NEWTABLE                         R17 0 2
      104 MOVE                             R18 R10
      105 MOVE                             R19 R11
      106 SETLIST                          R17 R18 2 [1]
      108 CALL                             R14 3 1
      109 SETTABLEKS                       R14 R12 K20 ["SplitContents"]
      111 JUMP                             ; [+48]
      112 SETTABLEKS                       R11 R12 K21 ["MainView"]
      114 JUMP                             ; [+45]
      115 JUMPIF                           R6 ; [+42]
      116 JUMPIFNOT                        R3 ; [+41]
      117 GETUPVAL                         R14 8
      118 GETTABLEKS                       R14 R14 K3 ["createElement"]
      120 GETUPVAL                         R15 13
      121 NEWTABLE                         R16 8 0
      123 LOADN                            R17 1
      124 SETTABLEKS                       R17 R16 K6 ["ZIndex"]
      126 LOADB                            R17 0
      127 SETTABLEKS                       R17 R16 K12 ["UseScale"]
      129 LOADB                            R17 1
      130 SETTABLEKS                       R17 R16 K13 ["ClampSize"]
      132 NAMECALL                         R17 R2 K14 ["getAppMinSizes"]
      134 CALL                             R17 1 1
      135 SETTABLEKS                       R17 R16 K15 ["MinSizes"]
      137 SETTABLEKS                       R13 R16 K16 ["Sizes"]
      139 NEWCLOSURE                       R17 P2
      140 CAPTURE                          VAL R2
      141 SETTABLEKS                       R17 R16 K17 ["OnSizesChange"]
      143 GETUPVAL                         R17 8
      144 GETTABLEKS                       R17 R17 K18 ["Tag"]
      146 LOADK                            R18 K19 ["size-full"]
      147 SETTABLE                         R18 R16 R17
      148 NEWTABLE                         R17 0 2
      150 MOVE                             R18 R10
      151 MOVE                             R19 R11
      152 SETLIST                          R17 R18 2 [1]
      154 CALL                             R14 3 1
      155 SETTABLEKS                       R14 R12 K20 ["SplitContents"]
      157 JUMP                             ; [+2]
      158 SETTABLEKS                       R11 R12 K21 ["MainView"]
      160 GETUPVAL                         R14 12
      161 CALL                             R14 0 1
      162 JUMPIFNOT                        R14 ; [+1]
      163 JUMPIF                           R6 ; [+67]
      164 GETUPVAL                         R14 8
      165 GETTABLEKS                       R14 R14 K3 ["createElement"]
      167 GETUPVAL                         R15 14
      168 GETTABLEKS                       R15 R15 K22 ["View"]
      170 DUPTABLE                         R16 K24 [{"LayoutOrder", "tag"}]
      171 NAMECALL                         R17 R1 K8 ["getNextOrder"]
      173 CALL                             R17 1 1
      174 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      176 LOADK                            R17 K25 ["auto-xy SidebarButton"]
      177 SETTABLEKS                       R17 R16 K23 ["tag"]
      179 NEWTABLE                         R17 0 1
      181 GETUPVAL                         R18 8
      182 GETTABLEKS                       R18 R18 K3 ["createElement"]
      184 GETUPVAL                         R19 14
      185 GETTABLEKS                       R19 R19 K26 ["IconButton"]
      187 DUPTABLE                         R20 K32 [{"ZIndex", "onActivated", "variant", "icon", "size", "testId"}]
      188 LOADN                            R21 3
      189 SETTABLEKS                       R21 R20 K6 ["ZIndex"]
      191 NEWCLOSURE                       R21 P3
      192 CAPTURE                          VAL R2
      193 SETTABLEKS                       R21 R20 K27 ["onActivated"]
      195 GETUPVAL                         R21 14
      196 GETTABLEKS                       R21 R21 K33 ["Enums"]
      198 GETTABLEKS                       R21 R21 K34 ["ButtonVariant"]
      200 GETTABLEKS                       R21 R21 K35 ["Utility"]
      202 SETTABLEKS                       R21 R20 K28 ["variant"]
      204 GETUPVAL                         R21 14
      205 GETTABLEKS                       R21 R21 K33 ["Enums"]
      207 GETTABLEKS                       R21 R21 K36 ["IconName"]
      209 GETTABLEKS                       R21 R21 K11 ["Sidebar"]
      211 SETTABLEKS                       R21 R20 K29 ["icon"]
      213 GETUPVAL                         R21 14
      214 GETTABLEKS                       R21 R21 K33 ["Enums"]
      216 GETTABLEKS                       R21 R21 K37 ["InputSize"]
      218 GETTABLEKS                       R21 R21 K38 ["XSmall"]
      220 SETTABLEKS                       R21 R20 K30 ["size"]
      222 LOADK                            R21 K39 ["toggle-sidebar-button"]
      223 SETTABLEKS                       R21 R20 K31 ["testId"]
      225 CALL                             R18 2 -1
      226 SETLIST                          R17 R18 -1 [1]
      228 CALL                             R14 3 1
      229 SETTABLEKS                       R14 R12 K40 ["ToggleSidebarButton"]
      231 GETTABLEKS                       R14 R0 K41 ["HideDialogs"]
      233 JUMPIF                           R14 ; [+10]
      234 GETUPVAL                         R14 8
      235 GETTABLEKS                       R14 R14 K3 ["createElement"]
      237 GETUPVAL                         R15 15
      238 DUPTABLE                         R16 K43 [{"Active"}]
      239 SETTABLEKS                       R7 R16 K42 ["Active"]
      241 CALL                             R14 2 1
      242 SETTABLEKS                       R14 R12 K44 ["Dialogs"]
      244 GETUPVAL                         R14 16
      245 CALL                             R14 0 1
      246 JUMPIFNOT                        R14 ; [+7]
      247 GETUPVAL                         R14 8
      248 GETTABLEKS                       R14 R14 K3 ["createElement"]
      250 GETUPVAL                         R15 17
      251 CALL                             R14 1 1
      252 SETTABLEKS                       R14 R12 K45 ["ContextMenu"]
      254 GETUPVAL                         R14 8
      255 GETTABLEKS                       R14 R14 K3 ["createElement"]
      257 GETUPVAL                         R15 18
      258 CALL                             R14 1 1
      259 SETTABLEKS                       R14 R12 K46 ["Toast"]
      261 GETUPVAL                         R14 19
      262 CALL                             R14 0 1
      263 JUMPIFNOT                        R14 ; [+7]
      264 GETUPVAL                         R14 8
      265 GETTABLEKS                       R14 R14 K3 ["createElement"]
      267 GETUPVAL                         R15 20
      268 CALL                             R14 1 1
      269 SETTABLEKS                       R14 R12 K47 ["DragInvalidPopover"]
      271 GETUPVAL                         R14 8
      272 GETTABLEKS                       R14 R14 K3 ["createElement"]
      274 GETUPVAL                         R15 21
      275 NEWTABLE                         R16 2 0
      277 SETTABLEKS                       R9 R16 K48 ["ForwardRef"]
      279 GETUPVAL                         R17 8
      280 GETTABLEKS                       R17 R17 K18 ["Tag"]
      282 LOADK                            R18 K49 ["App X-Fill"]
      283 SETTABLE                         R18 R16 R17
      284 MOVE                             R17 R12
      285 CALL                             R14 3 -1
      286 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["Util"]
       30 GETTABLEKS                       R4 R4 K11 ["LayoutOrderIterator"]
       32 GETTABLEKS                       R5 R2 K12 ["UI"]
       34 GETTABLEKS                       R6 R5 K13 ["Pane"]
       36 GETTABLEKS                       R7 R5 K14 ["SplitPane"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETIMPORT                        R9 K1 [script]
       42 GETTABLEKS                       R9 R9 K15 ["MainView"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETIMPORT                        R10 K1 [script]
       49 GETTABLEKS                       R10 R10 K16 ["Sidebar"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETIMPORT                        R11 K1 [script]
       56 GETTABLEKS                       R11 R11 K17 ["Dialogs"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETIMPORT                        R12 K1 [script]
       63 GETTABLEKS                       R12 R12 K18 ["ContextMenu"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K5 [require]
       68 GETIMPORT                        R13 K1 [script]
       70 GETTABLEKS                       R13 R13 K19 ["Toast"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETIMPORT                        R14 K1 [script]
       77 GETTABLEKS                       R14 R14 K20 ["DragInvalidPopover"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K5 [require]
       82 GETTABLEKS                       R15 R0 K21 ["Src"]
       84 GETTABLEKS                       R15 R15 K22 ["Controllers"]
       86 GETTABLEKS                       R15 R15 K23 ["LayoutController"]
       88 CALL                             R14 1 1
       89 GETTABLEKS                       R15 R1 K24 ["useEffect"]
       91 GETTABLEKS                       R16 R1 K25 ["useRef"]
       93 GETIMPORT                        R17 K5 [require]
       95 GETTABLEKS                       R18 R0 K21 ["Src"]
       97 GETTABLEKS                       R18 R18 K26 ["Hooks"]
       99 GETTABLEKS                       R18 R18 K27 ["useDialogs"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K5 [require]
      104 GETTABLEKS                       R19 R0 K21 ["Src"]
      106 GETTABLEKS                       R19 R19 K26 ["Hooks"]
      108 GETTABLEKS                       R19 R19 K28 ["usePluginSize"]
      110 CALL                             R18 1 1
      111 GETIMPORT                        R19 K5 [require]
      113 GETTABLEKS                       R20 R0 K21 ["Src"]
      115 GETTABLEKS                       R20 R20 K26 ["Hooks"]
      117 GETTABLEKS                       R20 R20 K29 ["useAppSizes"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K5 [require]
      122 GETTABLEKS                       R21 R0 K21 ["Src"]
      124 GETTABLEKS                       R21 R21 K26 ["Hooks"]
      126 GETTABLEKS                       R21 R21 K30 ["useShowSidebar"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K5 [require]
      131 GETTABLEKS                       R22 R0 K21 ["Src"]
      133 GETTABLEKS                       R22 R22 K26 ["Hooks"]
      135 GETTABLEKS                       R22 R22 K31 ["useExplorerInfo"]
      137 CALL                             R21 1 1
      138 GETIMPORT                        R22 K5 [require]
      140 GETTABLEKS                       R23 R0 K21 ["Src"]
      142 GETTABLEKS                       R23 R23 K32 ["Flags"]
      144 GETTABLEKS                       R23 R23 K33 ["getFFlagAmrFoundationifyContextMenu"]
      146 CALL                             R22 1 1
      147 GETIMPORT                        R23 K5 [require]
      149 GETTABLEKS                       R24 R0 K21 ["Src"]
      151 GETTABLEKS                       R24 R24 K32 ["Flags"]
      153 GETTABLEKS                       R24 R24 K34 ["getFFlagAmrOrganizationFoundation"]
      155 CALL                             R23 1 1
      156 GETIMPORT                        R24 K5 [require]
      158 GETTABLEKS                       R25 R0 K21 ["Src"]
      160 GETTABLEKS                       R25 R25 K32 ["Flags"]
      162 GETTABLEKS                       R25 R25 K35 ["getFFlagAmrUseRedesignedCompactView"]
      164 CALL                             R24 1 1
      165 DUPCLOSURE                       R25 K36 [PROTO_4]
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R20
      169 CAPTURE                          VAL R18
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R21
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R19
      178 CAPTURE                          VAL R24
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R23
      186 CAPTURE                          VAL R13
      187 CAPTURE                          VAL R6
      188 RETURN                           R25 1
