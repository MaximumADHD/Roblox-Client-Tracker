PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["current"]
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
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 1
        2 NAMECALL                         R0 R0 K0 ["resolveRemovePlace"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["resolveRemovePlace"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K1 ["use"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 CALL                             R5 0 1
       18 GETUPVAL                         R6 5
       19 CALL                             R6 0 3
       20 GETUPVAL                         R9 6
       21 CALL                             R9 0 1
       22 GETUPVAL                         R10 7
       23 CALL                             R10 0 1
       24 GETUPVAL                         R11 8
       25 CALL                             R11 0 1
       26 GETUPVAL                         R12 9
       27 LOADNIL                          R13
       28 CALL                             R12 1 1
       29 GETUPVAL                         R13 10
       30 NEWCLOSURE                       R14 P0
       31 CAPTURE                          VAL R12
       32 CAPTURE                          VAL R4
       33 NEWTABLE                         R15 0 1
       35 GETTABLEKS                       R16 R12 K2 ["current"]
       37 SETLIST                          R15 R16 1 [1]
       39 CALL                             R13 2 0
       40 GETUPVAL                         R14 11
       41 GETTABLEKS                       R13 R14 K3 ["createElement"]
       43 GETUPVAL                         R14 12
       44 DUPTABLE                         R15 K7 [{"LayoutOrder", "ExplorerItems", "ZIndex"}]
       45 NAMECALL                         R16 R1 K8 ["getNextOrder"]
       47 CALL                             R16 1 1
       48 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
       50 GETTABLEKS                       R16 R11 K9 ["Items"]
       52 SETTABLEKS                       R16 R15 K5 ["ExplorerItems"]
       54 LOADN                            R16 2
       55 SETTABLEKS                       R16 R15 K6 ["ZIndex"]
       57 CALL                             R13 2 1
       58 GETUPVAL                         R15 11
       59 GETTABLEKS                       R14 R15 K3 ["createElement"]
       61 GETUPVAL                         R15 13
       62 DUPTABLE                         R16 K10 [{"LayoutOrder"}]
       63 NAMECALL                         R17 R1 K8 ["getNextOrder"]
       65 CALL                             R17 1 1
       66 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       68 CALL                             R14 2 1
       69 GETUPVAL                         R15 14
       70 CALL                             R15 0 1
       71 NEWTABLE                         R16 8 0
       73 JUMPIFNOT                        R5 ; [+39]
       74 JUMPIFNOT                        R8 ; [+3]
       75 SETTABLEKS                       R13 R16 K11 ["Sidebar"]
       77 JUMP                             ; [+37]
       78 GETUPVAL                         R18 11
       79 GETTABLEKS                       R17 R18 K3 ["createElement"]
       81 GETUPVAL                         R18 15
       82 DUPTABLE                         R19 K17 [{"ZIndex", "UseScale", "ClampSize", "MinSizes", "Sizes", "OnSizesChange"}]
       83 LOADN                            R20 1
       84 SETTABLEKS                       R20 R19 K6 ["ZIndex"]
       86 LOADB                            R20 1
       87 SETTABLEKS                       R20 R19 K12 ["UseScale"]
       89 LOADB                            R20 1
       90 SETTABLEKS                       R20 R19 K13 ["ClampSize"]
       92 NAMECALL                         R20 R4 K18 ["getAppMinSizes"]
       94 CALL                             R20 1 1
       95 SETTABLEKS                       R20 R19 K14 ["MinSizes"]
       97 SETTABLEKS                       R15 R19 K15 ["Sizes"]
       99 NEWCLOSURE                       R20 P1
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R20 R19 K16 ["OnSizesChange"]
      103 NEWTABLE                         R20 0 2
      105 MOVE                             R21 R13
      106 MOVE                             R22 R14
      107 SETLIST                          R20 R21 2 [1]
      109 CALL                             R17 3 1
      110 SETTABLEKS                       R17 R16 K19 ["SplitContents"]
      112 JUMP                             ; [+2]
      113 SETTABLEKS                       R14 R16 K20 ["MainView"]
      115 GETUPVAL                         R18 11
      116 GETTABLEKS                       R17 R18 K3 ["createElement"]
      118 GETUPVAL                         R19 16
      119 GETTABLEKS                       R18 R19 K21 ["View"]
      121 DUPTABLE                         R19 K23 [{"LayoutOrder", "tag"}]
      122 NAMECALL                         R20 R1 K8 ["getNextOrder"]
      124 CALL                             R20 1 1
      125 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      127 LOADK                            R20 K24 ["auto-xy SidebarButton"]
      128 SETTABLEKS                       R20 R19 K22 ["tag"]
      130 NEWTABLE                         R20 0 1
      132 GETUPVAL                         R22 11
      133 GETTABLEKS                       R21 R22 K3 ["createElement"]
      135 GETUPVAL                         R23 16
      136 GETTABLEKS                       R22 R23 K25 ["IconButton"]
      138 DUPTABLE                         R23 K31 [{"ZIndex", "onActivated", "variant", "icon", "size", "testId"}]
      139 LOADN                            R24 3
      140 SETTABLEKS                       R24 R23 K6 ["ZIndex"]
      142 NEWCLOSURE                       R24 P2
      143 CAPTURE                          VAL R4
      144 SETTABLEKS                       R24 R23 K26 ["onActivated"]
      146 GETUPVAL                         R27 16
      147 GETTABLEKS                       R26 R27 K32 ["Enums"]
      149 GETTABLEKS                       R25 R26 K33 ["ButtonVariant"]
      151 GETTABLEKS                       R24 R25 K34 ["Utility"]
      153 SETTABLEKS                       R24 R23 K27 ["variant"]
      155 GETUPVAL                         R27 16
      156 GETTABLEKS                       R26 R27 K32 ["Enums"]
      158 GETTABLEKS                       R25 R26 K35 ["IconName"]
      160 GETTABLEKS                       R24 R25 K11 ["Sidebar"]
      162 SETTABLEKS                       R24 R23 K28 ["icon"]
      164 GETUPVAL                         R27 16
      165 GETTABLEKS                       R26 R27 K32 ["Enums"]
      167 GETTABLEKS                       R25 R26 K36 ["InputSize"]
      169 GETTABLEKS                       R24 R25 K37 ["XSmall"]
      171 SETTABLEKS                       R24 R23 K29 ["size"]
      173 LOADK                            R24 K38 ["toggle-sidebar-button"]
      174 SETTABLEKS                       R24 R23 K30 ["testId"]
      176 CALL                             R21 2 -1
      177 SETLIST                          R20 R21 -1 [1]
      179 CALL                             R17 3 1
      180 SETTABLEKS                       R17 R16 K39 ["ToggleSidebarButton"]
      182 GETTABLEKS                       R17 R0 K40 ["HideDialogs"]
      184 JUMPIF                           R17 ; [+68]
      185 GETUPVAL                         R17 17
      186 DUPTABLE                         R18 K47 [{"Intent", "Heading", "ActionPrimary", "ActionSecondary", "Modal", "Title"}]
      187 LOADK                            R20 K48 ["Destructive"]
      188 SETTABLEKS                       R20 R18 K41 ["Intent"]
      190 LOADK                            R22 K49 ["Dialogs"]
      191 LOADK                            R23 K50 ["ConfirmPlaceRemoveHeading"]
      192 NAMECALL                         R20 R2 K51 ["getText"]
      194 CALL                             R20 3 1
      195 SETTABLEKS                       R20 R18 K42 ["Heading"]
      197 GETUPVAL                         R21 18
      198 GETTABLEKS                       R20 R21 K52 ["join"]
      200 GETUPVAL                         R22 19
      201 GETTABLEKS                       R21 R22 K53 ["OK"]
      203 DUPTABLE                         R22 K55 [{"OnActivated"}]
      204 NEWCLOSURE                       R23 P3
      205 CAPTURE                          VAL R3
      206 SETTABLEKS                       R23 R22 K54 ["OnActivated"]
      208 CALL                             R20 2 1
      209 SETTABLEKS                       R20 R18 K43 ["ActionPrimary"]
      211 GETUPVAL                         R21 18
      212 GETTABLEKS                       R20 R21 K52 ["join"]
      214 GETUPVAL                         R22 19
      215 GETTABLEKS                       R21 R22 K56 ["CANCEL"]
      217 DUPTABLE                         R22 K55 [{"OnActivated"}]
      218 NEWCLOSURE                       R23 P4
      219 CAPTURE                          VAL R3
      220 SETTABLEKS                       R23 R22 K54 ["OnActivated"]
      222 CALL                             R20 2 1
      223 SETTABLEKS                       R20 R18 K44 ["ActionSecondary"]
      225 LOADB                            R20 1
      226 SETTABLEKS                       R20 R18 K45 ["Modal"]
      228 LOADK                            R22 K57 ["ContextMenu"]
      229 LOADK                            R23 K58 ["RemoveFromExperience"]
      230 NAMECALL                         R20 R2 K51 ["getText"]
      232 CALL                             R20 3 1
      233 SETTABLEKS                       R20 R18 K46 ["Title"]
      235 CALL                             R17 1 3
      236 JUMPIFNOT                        R9 ; [+3]
      237 JUMPIF                           R19 ; [+2]
      238 MOVE                             R20 R17
      239 CALL                             R20 0 0
      240 GETUPVAL                         R20 20
      241 CALL                             R20 0 1
      242 JUMPIFNOT                        R20 ; [+10]
      243 GETUPVAL                         R21 11
      244 GETTABLEKS                       R20 R21 K3 ["createElement"]
      246 GETUPVAL                         R21 21
      247 DUPTABLE                         R22 K60 [{"AssetIds"}]
      248 SETTABLEKS                       R10 R22 K59 ["AssetIds"]
      250 CALL                             R20 2 1
      251 SETTABLEKS                       R20 R16 K61 ["QuickShare"]
      253 GETUPVAL                         R18 11
      254 GETTABLEKS                       R17 R18 K3 ["createElement"]
      256 GETUPVAL                         R18 22
      257 NEWTABLE                         R19 2 0
      259 SETTABLEKS                       R12 R19 K62 ["ForwardRef"]
      261 GETUPVAL                         R21 11
      262 GETTABLEKS                       R20 R21 K63 ["Tag"]
      264 LOADK                            R21 K64 ["App X-Fill"]
      265 SETTABLE                         R21 R19 R20
      266 MOVE                             R20 R16
      267 CALL                             R17 3 -1
      268 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R8 R2 K13 ["Util"]
       41 GETTABLEKS                       R7 R8 K14 ["LayoutOrderIterator"]
       43 GETTABLEKS                       R8 R2 K15 ["UI"]
       45 GETTABLEKS                       R9 R8 K16 ["Pane"]
       47 GETTABLEKS                       R10 R8 K17 ["SplitPane"]
       49 GETTABLEKS                       R12 R8 K18 ["Hooks"]
       51 GETTABLEKS                       R11 R12 K19 ["useDialog"]
       53 GETTABLEKS                       R13 R2 K13 ["Util"]
       55 GETTABLEKS                       R12 R13 K20 ["DialogAction"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETIMPORT                        R15 K1 [script]
       61 GETTABLEKS                       R14 R15 K21 ["MainView"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K5 [require]
       66 GETIMPORT                        R16 K1 [script]
       68 GETTABLEKS                       R15 R16 K22 ["Sidebar"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K5 [require]
       73 GETTABLEKS                       R18 R0 K23 ["Src"]
       75 GETTABLEKS                       R17 R18 K24 ["Controllers"]
       77 GETTABLEKS                       R16 R17 K25 ["LayoutController"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K5 [require]
       82 GETTABLEKS                       R19 R0 K23 ["Src"]
       84 GETTABLEKS                       R18 R19 K24 ["Controllers"]
       86 GETTABLEKS                       R17 R18 K26 ["PluginController"]
       88 CALL                             R16 1 1
       89 GETTABLEKS                       R17 R1 K27 ["useEffect"]
       91 GETTABLEKS                       R18 R1 K28 ["useRef"]
       93 GETIMPORT                        R19 K5 [require]
       95 GETTABLEKS                       R22 R0 K23 ["Src"]
       97 GETTABLEKS                       R21 R22 K18 ["Hooks"]
       99 GETTABLEKS                       R20 R21 K29 ["useConfirmRemovePlace"]
      101 CALL                             R19 1 1
      102 GETIMPORT                        R20 K5 [require]
      104 GETTABLEKS                       R23 R0 K23 ["Src"]
      106 GETTABLEKS                       R22 R23 K18 ["Hooks"]
      108 GETTABLEKS                       R21 R22 K30 ["useQuickShare"]
      110 CALL                             R20 1 1
      111 GETIMPORT                        R21 K5 [require]
      113 GETTABLEKS                       R24 R0 K23 ["Src"]
      115 GETTABLEKS                       R23 R24 K18 ["Hooks"]
      117 GETTABLEKS                       R22 R23 K31 ["usePluginSize"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K5 [require]
      122 GETTABLEKS                       R25 R0 K23 ["Src"]
      124 GETTABLEKS                       R24 R25 K18 ["Hooks"]
      126 GETTABLEKS                       R23 R24 K32 ["useAppSizes"]
      128 CALL                             R22 1 1
      129 GETIMPORT                        R23 K5 [require]
      131 GETTABLEKS                       R26 R0 K23 ["Src"]
      133 GETTABLEKS                       R25 R26 K18 ["Hooks"]
      135 GETTABLEKS                       R24 R25 K33 ["useShowSidebar"]
      137 CALL                             R23 1 1
      138 GETIMPORT                        R24 K5 [require]
      140 GETTABLEKS                       R27 R0 K23 ["Src"]
      142 GETTABLEKS                       R26 R27 K18 ["Hooks"]
      144 GETTABLEKS                       R25 R26 K34 ["useExplorerInfo"]
      146 CALL                             R24 1 1
      147 GETIMPORT                        R25 K5 [require]
      149 GETTABLEKS                       R28 R0 K23 ["Src"]
      151 GETTABLEKS                       R27 R28 K35 ["Flags"]
      153 GETTABLEKS                       R26 R27 K36 ["getFFlagAmrQuickShare"]
      155 CALL                             R25 1 1
      156 GETIMPORT                        R26 K5 [require]
      158 GETTABLEKS                       R29 R0 K23 ["Src"]
      160 GETTABLEKS                       R28 R29 K37 ["Dialogs"]
      162 GETTABLEKS                       R27 R28 K38 ["QuickShare"]
      164 CALL                             R26 1 1
      165 DUPCLOSURE                       R27 K39 [PROTO_5]
      166 CAPTURE                          VAL R7
      167 CAPTURE                          VAL R6
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R23
      171 CAPTURE                          VAL R21
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R20
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R22
      181 CAPTURE                          VAL R10
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R25
      187 CAPTURE                          VAL R26
      188 CAPTURE                          VAL R9
      189 RETURN                           R27 1
