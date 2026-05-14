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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["toggleSidebar"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
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
       59 GETUPVAL                         R12 11
       60 CALL                             R12 0 1
       61 NEWTABLE                         R13 8 0
       63 JUMPIFNOT                        R3 ; [+45]
       64 JUMPIFNOT                        R6 ; [+3]
       65 SETTABLEKS                       R10 R13 K11 ["Sidebar"]
       67 JUMP                             ; [+43]
       68 GETUPVAL                         R14 8
       69 GETTABLEKS                       R14 R14 K3 ["createElement"]
       71 GETUPVAL                         R15 12
       72 NEWTABLE                         R16 8 0
       74 LOADN                            R17 1
       75 SETTABLEKS                       R17 R16 K6 ["ZIndex"]
       77 LOADB                            R17 0
       78 SETTABLEKS                       R17 R16 K12 ["UseScale"]
       80 LOADB                            R17 1
       81 SETTABLEKS                       R17 R16 K13 ["ClampSize"]
       83 NAMECALL                         R17 R2 K14 ["getAppMinSizes"]
       85 CALL                             R17 1 1
       86 SETTABLEKS                       R17 R16 K15 ["MinSizes"]
       88 SETTABLEKS                       R12 R16 K16 ["Sizes"]
       90 NEWCLOSURE                       R17 P1
       91 CAPTURE                          VAL R2
       92 SETTABLEKS                       R17 R16 K17 ["OnSizesChange"]
       94 GETUPVAL                         R17 8
       95 GETTABLEKS                       R17 R17 K18 ["Tag"]
       97 LOADK                            R18 K19 ["size-full"]
       98 SETTABLE                         R18 R16 R17
       99 NEWTABLE                         R17 0 2
      101 MOVE                             R18 R10
      102 MOVE                             R19 R11
      103 SETLIST                          R17 R18 2 [1]
      105 CALL                             R14 3 1
      106 SETTABLEKS                       R14 R13 K20 ["SplitContents"]
      108 JUMP                             ; [+2]
      109 SETTABLEKS                       R11 R13 K21 ["MainView"]
      111 GETUPVAL                         R14 8
      112 GETTABLEKS                       R14 R14 K3 ["createElement"]
      114 GETUPVAL                         R15 13
      115 GETTABLEKS                       R15 R15 K22 ["View"]
      117 DUPTABLE                         R16 K24 [{"LayoutOrder", "tag"}]
      118 NAMECALL                         R17 R1 K8 ["getNextOrder"]
      120 CALL                             R17 1 1
      121 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      123 LOADK                            R17 K25 ["auto-xy SidebarButton"]
      124 SETTABLEKS                       R17 R16 K23 ["tag"]
      126 NEWTABLE                         R17 0 1
      128 GETUPVAL                         R18 8
      129 GETTABLEKS                       R18 R18 K3 ["createElement"]
      131 GETUPVAL                         R19 13
      132 GETTABLEKS                       R19 R19 K26 ["IconButton"]
      134 DUPTABLE                         R20 K32 [{"ZIndex", "onActivated", "variant", "icon", "size", "testId"}]
      135 LOADN                            R21 3
      136 SETTABLEKS                       R21 R20 K6 ["ZIndex"]
      138 NEWCLOSURE                       R21 P2
      139 CAPTURE                          VAL R2
      140 SETTABLEKS                       R21 R20 K27 ["onActivated"]
      142 GETUPVAL                         R21 13
      143 GETTABLEKS                       R21 R21 K33 ["Enums"]
      145 GETTABLEKS                       R21 R21 K34 ["ButtonVariant"]
      147 GETTABLEKS                       R21 R21 K35 ["Utility"]
      149 SETTABLEKS                       R21 R20 K28 ["variant"]
      151 GETUPVAL                         R21 13
      152 GETTABLEKS                       R21 R21 K33 ["Enums"]
      154 GETTABLEKS                       R21 R21 K36 ["IconName"]
      156 GETTABLEKS                       R21 R21 K11 ["Sidebar"]
      158 SETTABLEKS                       R21 R20 K29 ["icon"]
      160 GETUPVAL                         R21 13
      161 GETTABLEKS                       R21 R21 K33 ["Enums"]
      163 GETTABLEKS                       R21 R21 K37 ["InputSize"]
      165 GETTABLEKS                       R21 R21 K38 ["XSmall"]
      167 SETTABLEKS                       R21 R20 K30 ["size"]
      169 LOADK                            R21 K39 ["toggle-sidebar-button"]
      170 SETTABLEKS                       R21 R20 K31 ["testId"]
      172 CALL                             R18 2 -1
      173 SETLIST                          R17 R18 -1 [1]
      175 CALL                             R14 3 1
      176 SETTABLEKS                       R14 R13 K40 ["ToggleSidebarButton"]
      178 GETTABLEKS                       R14 R0 K41 ["HideDialogs"]
      180 JUMPIF                           R14 ; [+10]
      181 GETUPVAL                         R14 8
      182 GETTABLEKS                       R14 R14 K3 ["createElement"]
      184 GETUPVAL                         R15 14
      185 DUPTABLE                         R16 K43 [{"Active"}]
      186 SETTABLEKS                       R7 R16 K42 ["Active"]
      188 CALL                             R14 2 1
      189 SETTABLEKS                       R14 R13 K44 ["Dialogs"]
      191 GETUPVAL                         R14 15
      192 CALL                             R14 0 1
      193 JUMPIFNOT                        R14 ; [+7]
      194 GETUPVAL                         R14 8
      195 GETTABLEKS                       R14 R14 K3 ["createElement"]
      197 GETUPVAL                         R15 16
      198 CALL                             R14 1 1
      199 SETTABLEKS                       R14 R13 K45 ["ContextMenu"]
      201 GETUPVAL                         R14 17
      202 CALL                             R14 0 1
      203 JUMPIFNOT                        R14 ; [+7]
      204 GETUPVAL                         R14 8
      205 GETTABLEKS                       R14 R14 K3 ["createElement"]
      207 GETUPVAL                         R15 18
      208 CALL                             R14 1 1
      209 SETTABLEKS                       R14 R13 K46 ["Toast"]
      211 GETUPVAL                         R14 8
      212 GETTABLEKS                       R14 R14 K3 ["createElement"]
      214 GETUPVAL                         R15 19
      215 NEWTABLE                         R16 2 0
      217 SETTABLEKS                       R9 R16 K47 ["ForwardRef"]
      219 GETUPVAL                         R17 8
      220 GETTABLEKS                       R17 R17 K18 ["Tag"]
      222 LOADK                            R18 K48 ["App X-Fill"]
      223 SETTABLE                         R18 R16 R17
      224 MOVE                             R17 R13
      225 CALL                             R14 3 -1
      226 RETURN                           R14 -1

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
       75 GETTABLEKS                       R14 R0 K20 ["Src"]
       77 GETTABLEKS                       R14 R14 K21 ["Controllers"]
       79 GETTABLEKS                       R14 R14 K22 ["LayoutController"]
       81 CALL                             R13 1 1
       82 GETTABLEKS                       R14 R1 K23 ["useEffect"]
       84 GETTABLEKS                       R15 R1 K24 ["useRef"]
       86 GETIMPORT                        R16 K5 [require]
       88 GETTABLEKS                       R17 R0 K20 ["Src"]
       90 GETTABLEKS                       R17 R17 K25 ["Hooks"]
       92 GETTABLEKS                       R17 R17 K26 ["useDialogs"]
       94 CALL                             R16 1 1
       95 GETIMPORT                        R17 K5 [require]
       97 GETTABLEKS                       R18 R0 K20 ["Src"]
       99 GETTABLEKS                       R18 R18 K25 ["Hooks"]
      101 GETTABLEKS                       R18 R18 K27 ["usePluginSize"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K5 [require]
      106 GETTABLEKS                       R19 R0 K20 ["Src"]
      108 GETTABLEKS                       R19 R19 K25 ["Hooks"]
      110 GETTABLEKS                       R19 R19 K28 ["useAppSizes"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K5 [require]
      115 GETTABLEKS                       R20 R0 K20 ["Src"]
      117 GETTABLEKS                       R20 R20 K25 ["Hooks"]
      119 GETTABLEKS                       R20 R20 K29 ["useShowSidebar"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K5 [require]
      124 GETTABLEKS                       R21 R0 K20 ["Src"]
      126 GETTABLEKS                       R21 R21 K25 ["Hooks"]
      128 GETTABLEKS                       R21 R21 K30 ["useExplorerInfo"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K5 [require]
      133 GETTABLEKS                       R22 R0 K20 ["Src"]
      135 GETTABLEKS                       R22 R22 K31 ["Flags"]
      137 GETTABLEKS                       R22 R22 K32 ["getFFlagAmrFoundationifyContextMenu"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K5 [require]
      142 GETTABLEKS                       R23 R0 K20 ["Src"]
      144 GETTABLEKS                       R23 R23 K31 ["Flags"]
      146 GETTABLEKS                       R23 R23 K33 ["getFFlagAmrCustomToastNotifications"]
      148 CALL                             R22 1 1
      149 DUPCLOSURE                       R23 K34 [PROTO_3]
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R8
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R6
      170 RETURN                           R23 1
