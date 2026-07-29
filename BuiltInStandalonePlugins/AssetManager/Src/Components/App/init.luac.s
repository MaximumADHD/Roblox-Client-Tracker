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
       60 JUMPIF                           R6 ; [+42]
       61 JUMPIFNOT                        R3 ; [+41]
       62 GETUPVAL                         R14 8
       63 GETTABLEKS                       R14 R14 K3 ["createElement"]
       65 GETUPVAL                         R15 12
       66 NEWTABLE                         R16 8 0
       68 LOADN                            R17 1
       69 SETTABLEKS                       R17 R16 K6 ["ZIndex"]
       71 LOADB                            R17 0
       72 SETTABLEKS                       R17 R16 K12 ["UseScale"]
       74 LOADB                            R17 1
       75 SETTABLEKS                       R17 R16 K13 ["ClampSize"]
       77 NAMECALL                         R17 R2 K14 ["getAppMinSizes"]
       79 CALL                             R17 1 1
       80 SETTABLEKS                       R17 R16 K15 ["MinSizes"]
       82 SETTABLEKS                       R13 R16 K16 ["Sizes"]
       84 NEWCLOSURE                       R17 P1
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R17 R16 K17 ["OnSizesChange"]
       88 GETUPVAL                         R17 8
       89 GETTABLEKS                       R17 R17 K18 ["Tag"]
       91 LOADK                            R18 K19 ["size-full"]
       92 SETTABLE                         R18 R16 R17
       93 NEWTABLE                         R17 0 2
       95 MOVE                             R18 R10
       96 MOVE                             R19 R11
       97 SETLIST                          R17 R18 2 [1]
       99 CALL                             R14 3 1
      100 SETTABLEKS                       R14 R12 K20 ["SplitContents"]
      102 JUMP                             ; [+2]
      103 SETTABLEKS                       R11 R12 K21 ["MainView"]
      105 JUMPIF                           R6 ; [+13]
      106 GETUPVAL                         R14 8
      107 GETTABLEKS                       R14 R14 K3 ["createElement"]
      109 GETUPVAL                         R15 13
      110 DUPTABLE                         R16 K11 [{"LayoutOrder"}]
      111 NAMECALL                         R17 R1 K9 ["getNextOrder"]
      113 CALL                             R17 1 1
      114 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      116 CALL                             R14 2 1
      117 SETTABLEKS                       R14 R12 K22 ["SidebarToggleButton"]
      119 GETTABLEKS                       R14 R0 K23 ["HideDialogs"]
      121 JUMPIF                           R14 ; [+10]
      122 GETUPVAL                         R14 8
      123 GETTABLEKS                       R14 R14 K3 ["createElement"]
      125 GETUPVAL                         R15 14
      126 DUPTABLE                         R16 K25 [{"Active"}]
      127 SETTABLEKS                       R7 R16 K24 ["Active"]
      129 CALL                             R14 2 1
      130 SETTABLEKS                       R14 R12 K26 ["Dialogs"]
      132 GETUPVAL                         R14 8
      133 GETTABLEKS                       R14 R14 K3 ["createElement"]
      135 GETUPVAL                         R15 15
      136 CALL                             R14 1 1
      137 SETTABLEKS                       R14 R12 K27 ["ContextMenu"]
      139 GETUPVAL                         R14 8
      140 GETTABLEKS                       R14 R14 K3 ["createElement"]
      142 GETUPVAL                         R15 16
      143 CALL                             R14 1 1
      144 SETTABLEKS                       R14 R12 K28 ["Toast"]
      146 GETUPVAL                         R14 8
      147 GETTABLEKS                       R14 R14 K3 ["createElement"]
      149 GETUPVAL                         R15 17
      150 CALL                             R14 1 1
      151 SETTABLEKS                       R14 R12 K29 ["DragInvalidPopover"]
      153 GETUPVAL                         R14 8
      154 GETTABLEKS                       R14 R14 K3 ["createElement"]
      156 GETUPVAL                         R15 18
      157 NEWTABLE                         R16 2 0
      159 SETTABLEKS                       R9 R16 K30 ["ForwardRef"]
      161 GETUPVAL                         R17 8
      162 GETTABLEKS                       R17 R17 K18 ["Tag"]
      164 LOADK                            R18 K31 ["App X-Fill"]
      165 SETTABLE                         R18 R16 R17
      166 MOVE                             R17 R12
      167 CALL                             R14 3 -1
      168 RETURN                           R14 -1

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
       91 GETTABLEKS                       R15 R1 K24 ["useEffect"]
       93 GETTABLEKS                       R16 R1 K25 ["useRef"]
       95 GETIMPORT                        R17 K5 [require]
       97 GETTABLEKS                       R18 R0 K21 ["Src"]
       99 GETTABLEKS                       R18 R18 K26 ["Hooks"]
      101 GETTABLEKS                       R18 R18 K27 ["useDialogs"]
      103 CALL                             R17 1 1
      104 GETIMPORT                        R18 K5 [require]
      106 GETTABLEKS                       R19 R0 K21 ["Src"]
      108 GETTABLEKS                       R19 R19 K26 ["Hooks"]
      110 GETTABLEKS                       R19 R19 K28 ["usePluginSize"]
      112 CALL                             R18 1 1
      113 GETIMPORT                        R19 K5 [require]
      115 GETTABLEKS                       R20 R0 K21 ["Src"]
      117 GETTABLEKS                       R20 R20 K26 ["Hooks"]
      119 GETTABLEKS                       R20 R20 K29 ["useAppSizes"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K5 [require]
      124 GETTABLEKS                       R21 R0 K21 ["Src"]
      126 GETTABLEKS                       R21 R21 K26 ["Hooks"]
      128 GETTABLEKS                       R21 R21 K30 ["useShowSidebar"]
      130 CALL                             R20 1 1
      131 GETIMPORT                        R21 K5 [require]
      133 GETTABLEKS                       R22 R0 K21 ["Src"]
      135 GETTABLEKS                       R22 R22 K26 ["Hooks"]
      137 GETTABLEKS                       R22 R22 K31 ["useExplorerInfo"]
      139 CALL                             R21 1 1
      140 DUPCLOSURE                       R22 K32 [PROTO_2]
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R16
      148 CAPTURE                          VAL R15
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R5
      160 RETURN                           R22 1
