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
       34 DUPTABLE                         R12 K8 [{["LayoutOrder"], ["ExplorerItems"], ["ZIndex"] = 2}]
       35 NAMECALL                         R13 R1 K9 ["getNextOrder"]
       37 CALL                             R13 1 1
       38 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       40 GETTABLEKS                       R13 R8 K10 ["Items"]
       42 SETTABLEKS                       R13 R12 K5 ["ExplorerItems"]
       44 CALL                             R10 2 1
       45 GETUPVAL                         R11 8
       46 GETTABLEKS                       R11 R11 K3 ["createElement"]
       48 GETUPVAL                         R12 10
       49 DUPTABLE                         R13 K11 [{"LayoutOrder"}]
       50 NAMECALL                         R14 R1 K9 ["getNextOrder"]
       52 CALL                             R14 1 1
       53 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       55 CALL                             R11 2 1
       56 NEWTABLE                         R12 8 0
       58 GETUPVAL                         R13 11
       59 CALL                             R13 0 1
       60 GETUPVAL                         R14 12
       61 CALL                             R14 0 1
       62 JUMPIF                           R14 ; [+49]
       63 JUMPIFNOT                        R3 ; [+45]
       64 JUMPIFNOT                        R6 ; [+3]
       65 SETTABLEKS                       R10 R12 K12 ["Sidebar"]
       67 JUMP                             ; [+89]
       68 GETUPVAL                         R14 8
       69 GETTABLEKS                       R14 R14 K3 ["createElement"]
       71 GETUPVAL                         R15 13
       72 NEWTABLE                         R16 8 0
       74 LOADN                            R17 1
       75 SETTABLEKS                       R17 R16 K6 ["ZIndex"]
       77 LOADB                            R17 0
       78 SETTABLEKS                       R17 R16 K13 ["UseScale"]
       80 LOADB                            R17 1
       81 SETTABLEKS                       R17 R16 K14 ["ClampSize"]
       83 NAMECALL                         R17 R2 K15 ["getAppMinSizes"]
       85 CALL                             R17 1 1
       86 SETTABLEKS                       R17 R16 K16 ["MinSizes"]
       88 SETTABLEKS                       R13 R16 K17 ["Sizes"]
       90 NEWCLOSURE                       R17 P1
       91 CAPTURE                          VAL R2
       92 SETTABLEKS                       R17 R16 K18 ["OnSizesChange"]
       94 GETUPVAL                         R17 8
       95 GETTABLEKS                       R17 R17 K19 ["Tag"]
       97 LOADK                            R18 K20 ["size-full"]
       98 SETTABLE                         R18 R16 R17
       99 NEWTABLE                         R17 0 2
      101 MOVE                             R18 R10
      102 MOVE                             R19 R11
      103 SETLIST                          R17 R18 2 [1]
      105 CALL                             R14 3 1
      106 SETTABLEKS                       R14 R12 K21 ["SplitContents"]
      108 JUMP                             ; [+48]
      109 SETTABLEKS                       R11 R12 K22 ["MainView"]
      111 JUMP                             ; [+45]
      112 JUMPIF                           R6 ; [+42]
      113 JUMPIFNOT                        R3 ; [+41]
      114 GETUPVAL                         R14 8
      115 GETTABLEKS                       R14 R14 K3 ["createElement"]
      117 GETUPVAL                         R15 13
      118 NEWTABLE                         R16 8 0
      120 LOADN                            R17 1
      121 SETTABLEKS                       R17 R16 K6 ["ZIndex"]
      123 LOADB                            R17 0
      124 SETTABLEKS                       R17 R16 K13 ["UseScale"]
      126 LOADB                            R17 1
      127 SETTABLEKS                       R17 R16 K14 ["ClampSize"]
      129 NAMECALL                         R17 R2 K15 ["getAppMinSizes"]
      131 CALL                             R17 1 1
      132 SETTABLEKS                       R17 R16 K16 ["MinSizes"]
      134 SETTABLEKS                       R13 R16 K17 ["Sizes"]
      136 NEWCLOSURE                       R17 P2
      137 CAPTURE                          VAL R2
      138 SETTABLEKS                       R17 R16 K18 ["OnSizesChange"]
      140 GETUPVAL                         R17 8
      141 GETTABLEKS                       R17 R17 K19 ["Tag"]
      143 LOADK                            R18 K20 ["size-full"]
      144 SETTABLE                         R18 R16 R17
      145 NEWTABLE                         R17 0 2
      147 MOVE                             R18 R10
      148 MOVE                             R19 R11
      149 SETLIST                          R17 R18 2 [1]
      151 CALL                             R14 3 1
      152 SETTABLEKS                       R14 R12 K21 ["SplitContents"]
      154 JUMP                             ; [+2]
      155 SETTABLEKS                       R11 R12 K22 ["MainView"]
      157 GETUPVAL                         R14 12
      158 CALL                             R14 0 1
      159 JUMPIFNOT                        R14 ; [+1]
      160 JUMPIF                           R6 ; [+58]
      161 GETUPVAL                         R14 8
      162 GETTABLEKS                       R14 R14 K3 ["createElement"]
      164 GETUPVAL                         R15 14
      165 GETTABLEKS                       R15 R15 K23 ["View"]
      167 DUPTABLE                         R16 K26 [{["LayoutOrder"], ["tag"] = "SidebarButton auto-xy"}]
      168 NAMECALL                         R17 R1 K9 ["getNextOrder"]
      170 CALL                             R17 1 1
      171 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      173 NEWTABLE                         R17 0 1
      175 GETUPVAL                         R18 8
      176 GETTABLEKS                       R18 R18 K3 ["createElement"]
      178 GETUPVAL                         R19 14
      179 GETTABLEKS                       R19 R19 K27 ["IconButton"]
      181 DUPTABLE                         R20 K35 [{["ZIndex"] = 3, ["onActivated"], ["variant"], ["icon"], ["size"], ["testId"] = "toggle-sidebar-button"}]
      182 NEWCLOSURE                       R21 P3
      183 CAPTURE                          VAL R2
      184 SETTABLEKS                       R21 R20 K29 ["onActivated"]
      186 GETUPVAL                         R21 14
      187 GETTABLEKS                       R21 R21 K36 ["Enums"]
      189 GETTABLEKS                       R21 R21 K37 ["ButtonVariant"]
      191 GETTABLEKS                       R21 R21 K38 ["Utility"]
      193 SETTABLEKS                       R21 R20 K30 ["variant"]
      195 GETUPVAL                         R21 14
      196 GETTABLEKS                       R21 R21 K36 ["Enums"]
      198 GETTABLEKS                       R21 R21 K39 ["IconName"]
      200 GETTABLEKS                       R21 R21 K12 ["Sidebar"]
      202 SETTABLEKS                       R21 R20 K31 ["icon"]
      204 GETUPVAL                         R21 14
      205 GETTABLEKS                       R21 R21 K36 ["Enums"]
      207 GETTABLEKS                       R21 R21 K40 ["InputSize"]
      209 GETTABLEKS                       R21 R21 K41 ["XSmall"]
      211 SETTABLEKS                       R21 R20 K32 ["size"]
      213 CALL                             R18 2 -1
      214 SETLIST                          R17 R18 -1 [1]
      216 CALL                             R14 3 1
      217 SETTABLEKS                       R14 R12 K42 ["ToggleSidebarButton"]
      219 GETTABLEKS                       R14 R0 K43 ["HideDialogs"]
      221 JUMPIF                           R14 ; [+10]
      222 GETUPVAL                         R14 8
      223 GETTABLEKS                       R14 R14 K3 ["createElement"]
      225 GETUPVAL                         R15 15
      226 DUPTABLE                         R16 K45 [{"Active"}]
      227 SETTABLEKS                       R7 R16 K44 ["Active"]
      229 CALL                             R14 2 1
      230 SETTABLEKS                       R14 R12 K46 ["Dialogs"]
      232 GETUPVAL                         R14 16
      233 CALL                             R14 0 1
      234 JUMPIFNOT                        R14 ; [+7]
      235 GETUPVAL                         R14 8
      236 GETTABLEKS                       R14 R14 K3 ["createElement"]
      238 GETUPVAL                         R15 17
      239 CALL                             R14 1 1
      240 SETTABLEKS                       R14 R12 K47 ["ContextMenu"]
      242 GETUPVAL                         R14 8
      243 GETTABLEKS                       R14 R14 K3 ["createElement"]
      245 GETUPVAL                         R15 18
      246 CALL                             R14 1 1
      247 SETTABLEKS                       R14 R12 K48 ["Toast"]
      249 GETUPVAL                         R14 8
      250 GETTABLEKS                       R14 R14 K3 ["createElement"]
      252 GETUPVAL                         R15 19
      253 CALL                             R14 1 1
      254 SETTABLEKS                       R14 R12 K49 ["DragInvalidPopover"]
      256 GETUPVAL                         R14 8
      257 GETTABLEKS                       R14 R14 K3 ["createElement"]
      259 GETUPVAL                         R15 20
      260 NEWTABLE                         R16 2 0
      262 SETTABLEKS                       R9 R16 K50 ["ForwardRef"]
      264 GETUPVAL                         R17 8
      265 GETTABLEKS                       R17 R17 K19 ["Tag"]
      267 LOADK                            R18 K51 ["App X-Fill"]
      268 SETTABLE                         R18 R16 R17
      269 MOVE                             R17 R12
      270 CALL                             R14 3 -1
      271 RETURN                           R14 -1

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
      153 GETTABLEKS                       R24 R24 K34 ["getFFlagAmrUseRedesignedCompactView"]
      155 CALL                             R23 1 1
      156 DUPCLOSURE                       R24 K35 [PROTO_4]
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R23
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R22
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R13
      177 CAPTURE                          VAL R6
      178 RETURN                           R24 1
