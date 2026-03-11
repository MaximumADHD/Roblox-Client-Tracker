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
        2 NAMECALL                         R0 R0 K0 ["DEPRECATED_resolveRemovePlace"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R2 0
        2 NAMECALL                         R0 R0 K0 ["DEPRECATED_resolveRemovePlace"]
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
       22 LOADNIL                          R10
       23 GETUPVAL                         R11 7
       24 CALL                             R11 0 1
       25 JUMPIFNOT                        R11 ; [+3]
       26 GETUPVAL                         R11 8
       27 CALL                             R11 0 1
       28 MOVE                             R10 R11
       29 GETUPVAL                         R11 9
       30 CALL                             R11 0 1
       31 GETUPVAL                         R12 10
       32 LOADNIL                          R13
       33 CALL                             R12 1 1
       34 GETUPVAL                         R13 11
       35 NEWCLOSURE                       R14 P0
       36 CAPTURE                          VAL R12
       37 CAPTURE                          VAL R4
       38 NEWTABLE                         R15 0 1
       40 GETTABLEKS                       R16 R12 K2 ["current"]
       42 SETLIST                          R15 R16 1 [1]
       44 CALL                             R13 2 0
       45 GETUPVAL                         R14 12
       46 GETTABLEKS                       R13 R14 K3 ["createElement"]
       48 GETUPVAL                         R14 13
       49 DUPTABLE                         R15 K7 [{"LayoutOrder", "ExplorerItems", "ZIndex"}]
       50 NAMECALL                         R16 R1 K8 ["getNextOrder"]
       52 CALL                             R16 1 1
       53 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
       55 GETTABLEKS                       R16 R11 K9 ["Items"]
       57 SETTABLEKS                       R16 R15 K5 ["ExplorerItems"]
       59 LOADN                            R16 2
       60 SETTABLEKS                       R16 R15 K6 ["ZIndex"]
       62 CALL                             R13 2 1
       63 GETUPVAL                         R15 12
       64 GETTABLEKS                       R14 R15 K3 ["createElement"]
       66 GETUPVAL                         R15 14
       67 DUPTABLE                         R16 K10 [{"LayoutOrder"}]
       68 NAMECALL                         R17 R1 K8 ["getNextOrder"]
       70 CALL                             R17 1 1
       71 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       73 CALL                             R14 2 1
       74 GETUPVAL                         R15 15
       75 CALL                             R15 0 1
       76 NEWTABLE                         R16 8 0
       78 JUMPIFNOT                        R5 ; [+39]
       79 JUMPIFNOT                        R8 ; [+3]
       80 SETTABLEKS                       R13 R16 K11 ["Sidebar"]
       82 JUMP                             ; [+37]
       83 GETUPVAL                         R18 12
       84 GETTABLEKS                       R17 R18 K3 ["createElement"]
       86 GETUPVAL                         R18 16
       87 DUPTABLE                         R19 K17 [{"ZIndex", "UseScale", "ClampSize", "MinSizes", "Sizes", "OnSizesChange"}]
       88 LOADN                            R20 1
       89 SETTABLEKS                       R20 R19 K6 ["ZIndex"]
       91 LOADB                            R20 1
       92 SETTABLEKS                       R20 R19 K12 ["UseScale"]
       94 LOADB                            R20 1
       95 SETTABLEKS                       R20 R19 K13 ["ClampSize"]
       97 NAMECALL                         R20 R4 K18 ["getAppMinSizes"]
       99 CALL                             R20 1 1
      100 SETTABLEKS                       R20 R19 K14 ["MinSizes"]
      102 SETTABLEKS                       R15 R19 K15 ["Sizes"]
      104 NEWCLOSURE                       R20 P1
      105 CAPTURE                          VAL R4
      106 SETTABLEKS                       R20 R19 K16 ["OnSizesChange"]
      108 NEWTABLE                         R20 0 2
      110 MOVE                             R21 R13
      111 MOVE                             R22 R14
      112 SETLIST                          R20 R21 2 [1]
      114 CALL                             R17 3 1
      115 SETTABLEKS                       R17 R16 K19 ["SplitContents"]
      117 JUMP                             ; [+2]
      118 SETTABLEKS                       R14 R16 K20 ["MainView"]
      120 GETUPVAL                         R18 12
      121 GETTABLEKS                       R17 R18 K3 ["createElement"]
      123 GETUPVAL                         R19 17
      124 GETTABLEKS                       R18 R19 K21 ["View"]
      126 DUPTABLE                         R19 K23 [{"LayoutOrder", "tag"}]
      127 NAMECALL                         R20 R1 K8 ["getNextOrder"]
      129 CALL                             R20 1 1
      130 SETTABLEKS                       R20 R19 K4 ["LayoutOrder"]
      132 LOADK                            R20 K24 ["auto-xy SidebarButton"]
      133 SETTABLEKS                       R20 R19 K22 ["tag"]
      135 NEWTABLE                         R20 0 1
      137 GETUPVAL                         R22 12
      138 GETTABLEKS                       R21 R22 K3 ["createElement"]
      140 GETUPVAL                         R23 17
      141 GETTABLEKS                       R22 R23 K25 ["IconButton"]
      143 DUPTABLE                         R23 K31 [{"ZIndex", "onActivated", "variant", "icon", "size", "testId"}]
      144 LOADN                            R24 3
      145 SETTABLEKS                       R24 R23 K6 ["ZIndex"]
      147 NEWCLOSURE                       R24 P2
      148 CAPTURE                          VAL R4
      149 SETTABLEKS                       R24 R23 K26 ["onActivated"]
      151 GETUPVAL                         R27 17
      152 GETTABLEKS                       R26 R27 K32 ["Enums"]
      154 GETTABLEKS                       R25 R26 K33 ["ButtonVariant"]
      156 GETTABLEKS                       R24 R25 K34 ["Utility"]
      158 SETTABLEKS                       R24 R23 K27 ["variant"]
      160 GETUPVAL                         R27 17
      161 GETTABLEKS                       R26 R27 K32 ["Enums"]
      163 GETTABLEKS                       R25 R26 K35 ["IconName"]
      165 GETTABLEKS                       R24 R25 K11 ["Sidebar"]
      167 SETTABLEKS                       R24 R23 K28 ["icon"]
      169 GETUPVAL                         R27 17
      170 GETTABLEKS                       R26 R27 K32 ["Enums"]
      172 GETTABLEKS                       R25 R26 K36 ["InputSize"]
      174 GETTABLEKS                       R24 R25 K37 ["XSmall"]
      176 SETTABLEKS                       R24 R23 K29 ["size"]
      178 LOADK                            R24 K38 ["toggle-sidebar-button"]
      179 SETTABLEKS                       R24 R23 K30 ["testId"]
      181 CALL                             R21 2 -1
      182 SETLIST                          R20 R21 -1 [1]
      184 CALL                             R17 3 1
      185 SETTABLEKS                       R17 R16 K39 ["ToggleSidebarButton"]
      187 GETTABLEKS                       R17 R0 K40 ["HideDialogs"]
      189 JUMPIF                           R17 ; [+69]
      190 GETUPVAL                         R17 7
      191 CALL                             R17 0 1
      192 JUMPIFNOT                        R17 ; [+11]
      193 GETUPVAL                         R18 12
      194 GETTABLEKS                       R17 R18 K3 ["createElement"]
      196 GETUPVAL                         R18 18
      197 DUPTABLE                         R19 K42 [{"Active"}]
      198 SETTABLEKS                       R10 R19 K41 ["Active"]
      200 CALL                             R17 2 1
      201 SETTABLEKS                       R17 R16 K43 ["Dialogs"]
      203 JUMP                             ; [+55]
      204 GETUPVAL                         R17 19
      205 DUPTABLE                         R18 K50 [{"Intent", "Heading", "ActionPrimary", "ActionSecondary", "Modal", "Title"}]
      206 LOADK                            R20 K51 ["Destructive"]
      207 SETTABLEKS                       R20 R18 K44 ["Intent"]
      209 LOADK                            R22 K43 ["Dialogs"]
      210 LOADK                            R23 K52 ["ConfirmPlaceRemoveHeading"]
      211 NAMECALL                         R20 R2 K53 ["getText"]
      213 CALL                             R20 3 1
      214 SETTABLEKS                       R20 R18 K45 ["Heading"]
      216 GETUPVAL                         R21 20
      217 GETTABLEKS                       R20 R21 K54 ["join"]
      219 GETUPVAL                         R22 21
      220 GETTABLEKS                       R21 R22 K55 ["OK"]
      222 DUPTABLE                         R22 K57 [{"OnActivated"}]
      223 NEWCLOSURE                       R23 P3
      224 CAPTURE                          VAL R3
      225 SETTABLEKS                       R23 R22 K56 ["OnActivated"]
      227 CALL                             R20 2 1
      228 SETTABLEKS                       R20 R18 K46 ["ActionPrimary"]
      230 GETUPVAL                         R21 20
      231 GETTABLEKS                       R20 R21 K54 ["join"]
      233 GETUPVAL                         R22 21
      234 GETTABLEKS                       R21 R22 K58 ["CANCEL"]
      236 DUPTABLE                         R22 K57 [{"OnActivated"}]
      237 NEWCLOSURE                       R23 P4
      238 CAPTURE                          VAL R3
      239 SETTABLEKS                       R23 R22 K56 ["OnActivated"]
      241 CALL                             R20 2 1
      242 SETTABLEKS                       R20 R18 K47 ["ActionSecondary"]
      244 LOADB                            R20 1
      245 SETTABLEKS                       R20 R18 K48 ["Modal"]
      247 LOADK                            R22 K59 ["ContextMenu"]
      248 LOADK                            R23 K60 ["RemoveFromExperience"]
      249 NAMECALL                         R20 R2 K53 ["getText"]
      251 CALL                             R20 3 1
      252 SETTABLEKS                       R20 R18 K49 ["Title"]
      254 CALL                             R17 1 3
      255 JUMPIFNOT                        R9 ; [+3]
      256 JUMPIF                           R19 ; [+2]
      257 MOVE                             R20 R17
      258 CALL                             R20 0 0
      259 GETUPVAL                         R18 12
      260 GETTABLEKS                       R17 R18 K3 ["createElement"]
      262 GETUPVAL                         R18 22
      263 NEWTABLE                         R19 2 0
      265 SETTABLEKS                       R12 R19 K61 ["ForwardRef"]
      267 GETUPVAL                         R21 12
      268 GETTABLEKS                       R20 R21 K62 ["Tag"]
      270 LOADK                            R21 K63 ["App X-Fill"]
      271 SETTABLE                         R21 R19 R20
      272 MOVE                             R20 R16
      273 CALL                             R17 3 -1
      274 RETURN                           R17 -1

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
       73 GETIMPORT                        R17 K1 [script]
       75 GETTABLEKS                       R16 R17 K23 ["Dialogs"]
       77 CALL                             R15 1 1
       78 GETIMPORT                        R16 K5 [require]
       80 GETTABLEKS                       R19 R0 K24 ["Src"]
       82 GETTABLEKS                       R18 R19 K25 ["Controllers"]
       84 GETTABLEKS                       R17 R18 K26 ["LayoutController"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K5 [require]
       89 GETTABLEKS                       R20 R0 K24 ["Src"]
       91 GETTABLEKS                       R19 R20 K25 ["Controllers"]
       93 GETTABLEKS                       R18 R19 K27 ["PluginController"]
       95 CALL                             R17 1 1
       96 GETTABLEKS                       R18 R1 K28 ["useEffect"]
       98 GETTABLEKS                       R19 R1 K29 ["useRef"]
      100 GETIMPORT                        R20 K5 [require]
      102 GETTABLEKS                       R23 R0 K24 ["Src"]
      104 GETTABLEKS                       R22 R23 K18 ["Hooks"]
      106 GETTABLEKS                       R21 R22 K30 ["useConfirmRemovePlace"]
      108 CALL                             R20 1 1
      109 GETIMPORT                        R21 K5 [require]
      111 GETTABLEKS                       R24 R0 K24 ["Src"]
      113 GETTABLEKS                       R23 R24 K18 ["Hooks"]
      115 GETTABLEKS                       R22 R23 K31 ["useDialogs"]
      117 CALL                             R21 1 1
      118 GETIMPORT                        R22 K5 [require]
      120 GETTABLEKS                       R25 R0 K24 ["Src"]
      122 GETTABLEKS                       R24 R25 K18 ["Hooks"]
      124 GETTABLEKS                       R23 R24 K32 ["usePluginSize"]
      126 CALL                             R22 1 1
      127 GETIMPORT                        R23 K5 [require]
      129 GETTABLEKS                       R26 R0 K24 ["Src"]
      131 GETTABLEKS                       R25 R26 K18 ["Hooks"]
      133 GETTABLEKS                       R24 R25 K33 ["useAppSizes"]
      135 CALL                             R23 1 1
      136 GETIMPORT                        R24 K5 [require]
      138 GETTABLEKS                       R27 R0 K24 ["Src"]
      140 GETTABLEKS                       R26 R27 K18 ["Hooks"]
      142 GETTABLEKS                       R25 R26 K34 ["useShowSidebar"]
      144 CALL                             R24 1 1
      145 GETIMPORT                        R25 K5 [require]
      147 GETTABLEKS                       R28 R0 K24 ["Src"]
      149 GETTABLEKS                       R27 R28 K18 ["Hooks"]
      151 GETTABLEKS                       R26 R27 K35 ["useExplorerInfo"]
      153 CALL                             R25 1 1
      154 GETIMPORT                        R26 K5 [require]
      156 GETTABLEKS                       R29 R0 K24 ["Src"]
      158 GETTABLEKS                       R28 R29 K36 ["Flags"]
      160 GETTABLEKS                       R27 R28 K37 ["getFFlagAmrUseDialogComponent"]
      162 CALL                             R26 1 1
      163 DUPCLOSURE                       R27 K38 [PROTO_5]
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R6
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R24
      169 CAPTURE                          VAL R22
      170 CAPTURE                          VAL R20
      171 CAPTURE                          VAL R26
      172 CAPTURE                          VAL R21
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R18
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R14
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R23
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R3
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R12
      186 CAPTURE                          VAL R9
      187 RETURN                           R27 1
