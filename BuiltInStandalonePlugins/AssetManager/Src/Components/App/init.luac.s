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
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 4
       13 CALL                             R5 0 1
       14 GETUPVAL                         R6 5
       15 CALL                             R6 0 1
       16 GETUPVAL                         R7 6
       17 LOADNIL                          R8
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 7
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R7
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R10 0 1
       25 GETTABLEKS                       R11 R7 K2 ["current"]
       27 SETLIST                          R10 R11 1 [1]
       29 CALL                             R8 2 0
       30 GETUPVAL                         R8 8
       31 GETTABLEKS                       R8 R8 K3 ["createElement"]
       33 GETUPVAL                         R9 9
       34 DUPTABLE                         R10 K8 [{["LayoutOrder"], ["ExplorerItems"], ["ZIndex"] = 2}]
       35 NAMECALL                         R11 R1 K9 ["getNextOrder"]
       37 CALL                             R11 1 1
       38 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       40 GETTABLEKS                       R11 R6 K10 ["Items"]
       42 SETTABLEKS                       R11 R10 K5 ["ExplorerItems"]
       44 CALL                             R8 2 1
       45 GETUPVAL                         R9 8
       46 GETTABLEKS                       R9 R9 K3 ["createElement"]
       48 GETUPVAL                         R10 10
       49 DUPTABLE                         R11 K11 [{"LayoutOrder"}]
       50 NAMECALL                         R12 R1 K9 ["getNextOrder"]
       52 CALL                             R12 1 1
       53 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
       55 CALL                             R9 2 1
       56 NEWTABLE                         R10 8 0
       58 GETUPVAL                         R11 11
       59 CALL                             R11 0 1
       60 JUMPIF                           R4 ; [+42]
       61 JUMPIFNOT                        R3 ; [+41]
       62 GETUPVAL                         R12 8
       63 GETTABLEKS                       R12 R12 K3 ["createElement"]
       65 GETUPVAL                         R13 12
       66 NEWTABLE                         R14 8 0
       68 LOADN                            R15 1
       69 SETTABLEKS                       R15 R14 K6 ["ZIndex"]
       71 LOADB                            R15 0
       72 SETTABLEKS                       R15 R14 K12 ["UseScale"]
       74 LOADB                            R15 1
       75 SETTABLEKS                       R15 R14 K13 ["ClampSize"]
       77 NAMECALL                         R15 R2 K14 ["getAppMinSizes"]
       79 CALL                             R15 1 1
       80 SETTABLEKS                       R15 R14 K15 ["MinSizes"]
       82 SETTABLEKS                       R11 R14 K16 ["Sizes"]
       84 NEWCLOSURE                       R15 P1
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R15 R14 K17 ["OnSizesChange"]
       88 GETUPVAL                         R15 8
       89 GETTABLEKS                       R15 R15 K18 ["Tag"]
       91 LOADK                            R16 K19 ["size-full"]
       92 SETTABLE                         R16 R14 R15
       93 NEWTABLE                         R15 0 2
       95 MOVE                             R16 R8
       96 MOVE                             R17 R9
       97 SETLIST                          R15 R16 2 [1]
       99 CALL                             R12 3 1
      100 SETTABLEKS                       R12 R10 K20 ["SplitContents"]
      102 JUMP                             ; [+2]
      103 SETTABLEKS                       R9 R10 K21 ["MainView"]
      105 JUMPIF                           R4 ; [+13]
      106 GETUPVAL                         R12 8
      107 GETTABLEKS                       R12 R12 K3 ["createElement"]
      109 GETUPVAL                         R13 13
      110 DUPTABLE                         R14 K11 [{"LayoutOrder"}]
      111 NAMECALL                         R15 R1 K9 ["getNextOrder"]
      113 CALL                             R15 1 1
      114 SETTABLEKS                       R15 R14 K4 ["LayoutOrder"]
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R10 K22 ["SidebarToggleButton"]
      119 GETTABLEKS                       R12 R0 K23 ["HideDialogs"]
      121 JUMPIF                           R12 ; [+10]
      122 GETUPVAL                         R12 8
      123 GETTABLEKS                       R12 R12 K3 ["createElement"]
      125 GETUPVAL                         R13 14
      126 DUPTABLE                         R14 K25 [{"Active"}]
      127 SETTABLEKS                       R5 R14 K24 ["Active"]
      129 CALL                             R12 2 1
      130 SETTABLEKS                       R12 R10 K26 ["Dialogs"]
      132 GETUPVAL                         R12 8
      133 GETTABLEKS                       R12 R12 K3 ["createElement"]
      135 GETUPVAL                         R13 15
      136 CALL                             R12 1 1
      137 SETTABLEKS                       R12 R10 K27 ["ContextMenu"]
      139 GETUPVAL                         R12 16
      140 CALL                             R12 0 1
      141 JUMPIF                           R12 ; [+7]
      142 GETUPVAL                         R12 8
      143 GETTABLEKS                       R12 R12 K3 ["createElement"]
      145 GETUPVAL                         R13 17
      146 CALL                             R12 1 1
      147 SETTABLEKS                       R12 R10 K28 ["Toast"]
      149 GETUPVAL                         R12 8
      150 GETTABLEKS                       R12 R12 K3 ["createElement"]
      152 GETUPVAL                         R13 18
      153 CALL                             R12 1 1
      154 SETTABLEKS                       R12 R10 K29 ["DragInvalidPopover"]
      156 GETUPVAL                         R12 8
      157 GETTABLEKS                       R12 R12 K3 ["createElement"]
      159 GETUPVAL                         R13 19
      160 NEWTABLE                         R14 2 0
      162 SETTABLEKS                       R7 R14 K30 ["ForwardRef"]
      164 GETUPVAL                         R15 8
      165 GETTABLEKS                       R15 R15 K18 ["Tag"]
      167 LOADK                            R16 K31 ["App X-Fill"]
      168 SETTABLE                         R16 R14 R15
      169 MOVE                             R15 R10
      170 CALL                             R12 3 -1
      171 RETURN                           R12 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["LayoutOrderIterator"]
       25 GETTABLEKS                       R4 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R4 K12 ["Pane"]
       29 GETTABLEKS                       R6 R4 K13 ["SplitPane"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETIMPORT                        R8 K1 [script]
       35 GETTABLEKS                       R8 R8 K14 ["MainView"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K5 [require]
       40 GETIMPORT                        R9 K1 [script]
       42 GETTABLEKS                       R9 R9 K15 ["Sidebar"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETIMPORT                        R10 K1 [script]
       49 GETTABLEKS                       R10 R10 K15 ["Sidebar"]
       51 GETTABLEKS                       R10 R10 K16 ["ToggleButton"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETIMPORT                        R11 K1 [script]
       58 GETTABLEKS                       R11 R11 K17 ["Dialogs"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETIMPORT                        R12 K1 [script]
       65 GETTABLEKS                       R12 R12 K18 ["ContextMenu"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETIMPORT                        R13 K1 [script]
       72 GETTABLEKS                       R13 R13 K19 ["Toast"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K5 [require]
       77 GETIMPORT                        R14 K1 [script]
       79 GETTABLEKS                       R14 R14 K20 ["DragInvalidPopover"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K5 [require]
       84 GETTABLEKS                       R15 R0 K21 ["Src"]
       86 GETTABLEKS                       R15 R15 K22 ["Controllers"]
       88 GETTABLEKS                       R15 R15 K23 ["LayoutController"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K5 [require]
       93 GETTABLEKS                       R16 R0 K21 ["Src"]
       95 GETTABLEKS                       R16 R16 K24 ["Flags"]
       97 GETTABLEKS                       R16 R16 K25 ["getFFlagAmrStudioToastsIntegration"]
       99 CALL                             R15 1 1
      100 GETTABLEKS                       R16 R1 K26 ["useEffect"]
      102 GETTABLEKS                       R17 R1 K27 ["useRef"]
      104 GETIMPORT                        R18 K5 [require]
      106 GETTABLEKS                       R19 R0 K21 ["Src"]
      108 GETTABLEKS                       R19 R19 K28 ["Hooks"]
      110 GETTABLEKS                       R19 R19 K29 ["useDialogs"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K5 [require]
      115 GETTABLEKS                       R20 R0 K21 ["Src"]
      117 GETTABLEKS                       R20 R20 K28 ["Hooks"]
      119 GETTABLEKS                       R20 R20 K30 ["useIsCompact"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K5 [require]
      124 GETTABLEKS                       R21 R0 K21 ["Src"]
      126 GETTABLEKS                       R21 R21 K28 ["Hooks"]
      128 GETTABLEKS                       R21 R21 K31 ["useAppSizes"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K5 [require]
      133 GETTABLEKS                       R22 R0 K21 ["Src"]
      135 GETTABLEKS                       R22 R22 K28 ["Hooks"]
      137 GETTABLEKS                       R22 R22 K32 ["useShowSidebar"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K5 [require]
      142 GETTABLEKS                       R23 R0 K21 ["Src"]
      144 GETTABLEKS                       R23 R23 K28 ["Hooks"]
      146 GETTABLEKS                       R23 R23 K33 ["useExplorerInfo"]
      148 CALL                             R22 1 1
      149 DUPCLOSURE                       R23 K34 [PROTO_2]
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R19
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R5
      170 RETURN                           R23 1
