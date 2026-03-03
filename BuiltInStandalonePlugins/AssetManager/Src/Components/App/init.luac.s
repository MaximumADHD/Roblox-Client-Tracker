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
       22 GETUPVAL                         R10 7
       23 CALL                             R10 0 1
       24 LOADNIL                          R11
       25 GETUPVAL                         R12 8
       26 CALL                             R12 0 1
       27 JUMPIFNOT                        R12 ; [+3]
       28 GETUPVAL                         R12 9
       29 CALL                             R12 0 1
       30 MOVE                             R11 R12
       31 GETUPVAL                         R12 10
       32 CALL                             R12 0 1
       33 GETUPVAL                         R13 11
       34 LOADNIL                          R14
       35 CALL                             R13 1 1
       36 GETUPVAL                         R14 12
       37 NEWCLOSURE                       R15 P0
       38 CAPTURE                          VAL R13
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R16 0 1
       42 GETTABLEKS                       R17 R13 K2 ["current"]
       44 SETLIST                          R16 R17 1 [1]
       46 CALL                             R14 2 0
       47 GETUPVAL                         R15 13
       48 GETTABLEKS                       R14 R15 K3 ["createElement"]
       50 GETUPVAL                         R15 14
       51 DUPTABLE                         R16 K7 [{"LayoutOrder", "ExplorerItems", "ZIndex"}]
       52 NAMECALL                         R17 R1 K8 ["getNextOrder"]
       54 CALL                             R17 1 1
       55 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       57 GETTABLEKS                       R17 R12 K9 ["Items"]
       59 SETTABLEKS                       R17 R16 K5 ["ExplorerItems"]
       61 LOADN                            R17 2
       62 SETTABLEKS                       R17 R16 K6 ["ZIndex"]
       64 CALL                             R14 2 1
       65 GETUPVAL                         R16 13
       66 GETTABLEKS                       R15 R16 K3 ["createElement"]
       68 GETUPVAL                         R16 15
       69 DUPTABLE                         R17 K10 [{"LayoutOrder"}]
       70 NAMECALL                         R18 R1 K8 ["getNextOrder"]
       72 CALL                             R18 1 1
       73 SETTABLEKS                       R18 R17 K4 ["LayoutOrder"]
       75 CALL                             R15 2 1
       76 GETUPVAL                         R16 16
       77 CALL                             R16 0 1
       78 NEWTABLE                         R17 8 0
       80 JUMPIFNOT                        R5 ; [+39]
       81 JUMPIFNOT                        R8 ; [+3]
       82 SETTABLEKS                       R14 R17 K11 ["Sidebar"]
       84 JUMP                             ; [+37]
       85 GETUPVAL                         R19 13
       86 GETTABLEKS                       R18 R19 K3 ["createElement"]
       88 GETUPVAL                         R19 17
       89 DUPTABLE                         R20 K17 [{"ZIndex", "UseScale", "ClampSize", "MinSizes", "Sizes", "OnSizesChange"}]
       90 LOADN                            R21 1
       91 SETTABLEKS                       R21 R20 K6 ["ZIndex"]
       93 LOADB                            R21 1
       94 SETTABLEKS                       R21 R20 K12 ["UseScale"]
       96 LOADB                            R21 1
       97 SETTABLEKS                       R21 R20 K13 ["ClampSize"]
       99 NAMECALL                         R21 R4 K18 ["getAppMinSizes"]
      101 CALL                             R21 1 1
      102 SETTABLEKS                       R21 R20 K14 ["MinSizes"]
      104 SETTABLEKS                       R16 R20 K15 ["Sizes"]
      106 NEWCLOSURE                       R21 P1
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R21 R20 K16 ["OnSizesChange"]
      110 NEWTABLE                         R21 0 2
      112 MOVE                             R22 R14
      113 MOVE                             R23 R15
      114 SETLIST                          R21 R22 2 [1]
      116 CALL                             R18 3 1
      117 SETTABLEKS                       R18 R17 K19 ["SplitContents"]
      119 JUMP                             ; [+2]
      120 SETTABLEKS                       R15 R17 K20 ["MainView"]
      122 GETUPVAL                         R19 13
      123 GETTABLEKS                       R18 R19 K3 ["createElement"]
      125 GETUPVAL                         R20 18
      126 GETTABLEKS                       R19 R20 K21 ["View"]
      128 DUPTABLE                         R20 K23 [{"LayoutOrder", "tag"}]
      129 NAMECALL                         R21 R1 K8 ["getNextOrder"]
      131 CALL                             R21 1 1
      132 SETTABLEKS                       R21 R20 K4 ["LayoutOrder"]
      134 LOADK                            R21 K24 ["auto-xy SidebarButton"]
      135 SETTABLEKS                       R21 R20 K22 ["tag"]
      137 NEWTABLE                         R21 0 1
      139 GETUPVAL                         R23 13
      140 GETTABLEKS                       R22 R23 K3 ["createElement"]
      142 GETUPVAL                         R24 18
      143 GETTABLEKS                       R23 R24 K25 ["IconButton"]
      145 DUPTABLE                         R24 K31 [{"ZIndex", "onActivated", "variant", "icon", "size", "testId"}]
      146 LOADN                            R25 3
      147 SETTABLEKS                       R25 R24 K6 ["ZIndex"]
      149 NEWCLOSURE                       R25 P2
      150 CAPTURE                          VAL R4
      151 SETTABLEKS                       R25 R24 K26 ["onActivated"]
      153 GETUPVAL                         R28 18
      154 GETTABLEKS                       R27 R28 K32 ["Enums"]
      156 GETTABLEKS                       R26 R27 K33 ["ButtonVariant"]
      158 GETTABLEKS                       R25 R26 K34 ["Utility"]
      160 SETTABLEKS                       R25 R24 K27 ["variant"]
      162 GETUPVAL                         R28 18
      163 GETTABLEKS                       R27 R28 K32 ["Enums"]
      165 GETTABLEKS                       R26 R27 K35 ["IconName"]
      167 GETTABLEKS                       R25 R26 K11 ["Sidebar"]
      169 SETTABLEKS                       R25 R24 K28 ["icon"]
      171 GETUPVAL                         R28 18
      172 GETTABLEKS                       R27 R28 K32 ["Enums"]
      174 GETTABLEKS                       R26 R27 K36 ["InputSize"]
      176 GETTABLEKS                       R25 R26 K37 ["XSmall"]
      178 SETTABLEKS                       R25 R24 K29 ["size"]
      180 LOADK                            R25 K38 ["toggle-sidebar-button"]
      181 SETTABLEKS                       R25 R24 K30 ["testId"]
      183 CALL                             R22 2 -1
      184 SETLIST                          R21 R22 -1 [1]
      186 CALL                             R18 3 1
      187 SETTABLEKS                       R18 R17 K39 ["ToggleSidebarButton"]
      189 GETTABLEKS                       R18 R0 K40 ["HideDialogs"]
      191 JUMPIF                           R18 ; [+82]
      192 GETUPVAL                         R18 8
      193 CALL                             R18 0 1
      194 JUMPIFNOT                        R18 ; [+11]
      195 GETUPVAL                         R19 13
      196 GETTABLEKS                       R18 R19 K3 ["createElement"]
      198 GETUPVAL                         R19 19
      199 DUPTABLE                         R20 K42 [{"Active"}]
      200 SETTABLEKS                       R11 R20 K41 ["Active"]
      202 CALL                             R18 2 1
      203 SETTABLEKS                       R18 R17 K43 ["Dialogs"]
      205 JUMP                             ; [+55]
      206 GETUPVAL                         R18 20
      207 DUPTABLE                         R19 K50 [{"Intent", "Heading", "ActionPrimary", "ActionSecondary", "Modal", "Title"}]
      208 LOADK                            R21 K51 ["Destructive"]
      209 SETTABLEKS                       R21 R19 K44 ["Intent"]
      211 LOADK                            R23 K43 ["Dialogs"]
      212 LOADK                            R24 K52 ["ConfirmPlaceRemoveHeading"]
      213 NAMECALL                         R21 R2 K53 ["getText"]
      215 CALL                             R21 3 1
      216 SETTABLEKS                       R21 R19 K45 ["Heading"]
      218 GETUPVAL                         R22 21
      219 GETTABLEKS                       R21 R22 K54 ["join"]
      221 GETUPVAL                         R23 22
      222 GETTABLEKS                       R22 R23 K55 ["OK"]
      224 DUPTABLE                         R23 K57 [{"OnActivated"}]
      225 NEWCLOSURE                       R24 P3
      226 CAPTURE                          VAL R3
      227 SETTABLEKS                       R24 R23 K56 ["OnActivated"]
      229 CALL                             R21 2 1
      230 SETTABLEKS                       R21 R19 K46 ["ActionPrimary"]
      232 GETUPVAL                         R22 21
      233 GETTABLEKS                       R21 R22 K54 ["join"]
      235 GETUPVAL                         R23 22
      236 GETTABLEKS                       R22 R23 K58 ["CANCEL"]
      238 DUPTABLE                         R23 K57 [{"OnActivated"}]
      239 NEWCLOSURE                       R24 P4
      240 CAPTURE                          VAL R3
      241 SETTABLEKS                       R24 R23 K56 ["OnActivated"]
      243 CALL                             R21 2 1
      244 SETTABLEKS                       R21 R19 K47 ["ActionSecondary"]
      246 LOADB                            R21 1
      247 SETTABLEKS                       R21 R19 K48 ["Modal"]
      249 LOADK                            R23 K59 ["ContextMenu"]
      250 LOADK                            R24 K60 ["RemoveFromExperience"]
      251 NAMECALL                         R21 R2 K53 ["getText"]
      253 CALL                             R21 3 1
      254 SETTABLEKS                       R21 R19 K49 ["Title"]
      256 CALL                             R18 1 3
      257 JUMPIFNOT                        R9 ; [+3]
      258 JUMPIF                           R20 ; [+2]
      259 MOVE                             R21 R18
      260 CALL                             R21 0 0
      261 GETUPVAL                         R18 23
      262 CALL                             R18 0 1
      263 JUMPIFNOT                        R18 ; [+10]
      264 GETUPVAL                         R19 13
      265 GETTABLEKS                       R18 R19 K3 ["createElement"]
      267 GETUPVAL                         R19 24
      268 DUPTABLE                         R20 K62 [{"AssetPaths"}]
      269 SETTABLEKS                       R10 R20 K61 ["AssetPaths"]
      271 CALL                             R18 2 1
      272 SETTABLEKS                       R18 R17 K63 ["QuickShare"]
      274 GETUPVAL                         R19 13
      275 GETTABLEKS                       R18 R19 K3 ["createElement"]
      277 GETUPVAL                         R19 25
      278 NEWTABLE                         R20 2 0
      280 SETTABLEKS                       R13 R20 K64 ["ForwardRef"]
      282 GETUPVAL                         R22 13
      283 GETTABLEKS                       R21 R22 K65 ["Tag"]
      285 LOADK                            R22 K66 ["App X-Fill"]
      286 SETTABLE                         R22 R20 R21
      287 MOVE                             R21 R17
      288 CALL                             R18 3 -1
      289 RETURN                           R18 -1

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
      115 GETTABLEKS                       R22 R23 K31 ["useQuickShare"]
      117 CALL                             R21 1 1
      118 GETIMPORT                        R22 K5 [require]
      120 GETTABLEKS                       R25 R0 K24 ["Src"]
      122 GETTABLEKS                       R24 R25 K18 ["Hooks"]
      124 GETTABLEKS                       R23 R24 K32 ["useDialogs"]
      126 CALL                             R22 1 1
      127 GETIMPORT                        R23 K5 [require]
      129 GETTABLEKS                       R26 R0 K24 ["Src"]
      131 GETTABLEKS                       R25 R26 K18 ["Hooks"]
      133 GETTABLEKS                       R24 R25 K33 ["usePluginSize"]
      135 CALL                             R23 1 1
      136 GETIMPORT                        R24 K5 [require]
      138 GETTABLEKS                       R27 R0 K24 ["Src"]
      140 GETTABLEKS                       R26 R27 K18 ["Hooks"]
      142 GETTABLEKS                       R25 R26 K34 ["useAppSizes"]
      144 CALL                             R24 1 1
      145 GETIMPORT                        R25 K5 [require]
      147 GETTABLEKS                       R28 R0 K24 ["Src"]
      149 GETTABLEKS                       R27 R28 K18 ["Hooks"]
      151 GETTABLEKS                       R26 R27 K35 ["useShowSidebar"]
      153 CALL                             R25 1 1
      154 GETIMPORT                        R26 K5 [require]
      156 GETTABLEKS                       R29 R0 K24 ["Src"]
      158 GETTABLEKS                       R28 R29 K18 ["Hooks"]
      160 GETTABLEKS                       R27 R28 K36 ["useExplorerInfo"]
      162 CALL                             R26 1 1
      163 GETIMPORT                        R27 K5 [require]
      165 GETTABLEKS                       R30 R0 K24 ["Src"]
      167 GETTABLEKS                       R29 R30 K37 ["Flags"]
      169 GETTABLEKS                       R28 R29 K38 ["getFFlagAmrQuickShare"]
      171 CALL                             R27 1 1
      172 GETIMPORT                        R28 K5 [require]
      174 GETTABLEKS                       R31 R0 K24 ["Src"]
      176 GETTABLEKS                       R30 R31 K37 ["Flags"]
      178 GETTABLEKS                       R29 R30 K39 ["getFFlagAmrUseDialogComponent"]
      180 CALL                             R28 1 1
      181 GETIMPORT                        R29 K5 [require]
      183 GETTABLEKS                       R32 R0 K24 ["Src"]
      185 GETTABLEKS                       R31 R32 K23 ["Dialogs"]
      187 GETTABLEKS                       R30 R31 K40 ["QuickShare"]
      189 CALL                             R29 1 1
      190 DUPCLOSURE                       R30 K41 [PROTO_5]
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R6
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R23
      197 CAPTURE                          VAL R20
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R28
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R26
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R18
      204 CAPTURE                          VAL R1
      205 CAPTURE                          VAL R14
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R24
      208 CAPTURE                          VAL R10
      209 CAPTURE                          VAL R3
      210 CAPTURE                          VAL R15
      211 CAPTURE                          VAL R11
      212 CAPTURE                          VAL R4
      213 CAPTURE                          VAL R12
      214 CAPTURE                          VAL R27
      215 CAPTURE                          VAL R29
      216 CAPTURE                          VAL R9
      217 RETURN                           R30 1
