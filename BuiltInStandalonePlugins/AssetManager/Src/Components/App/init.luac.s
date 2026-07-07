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
      160 JUMPIF                           R6 ; [+13]
      161 GETUPVAL                         R14 8
      162 GETTABLEKS                       R14 R14 K3 ["createElement"]
      164 GETUPVAL                         R15 14
      165 DUPTABLE                         R16 K11 [{"LayoutOrder"}]
      166 NAMECALL                         R17 R1 K9 ["getNextOrder"]
      168 CALL                             R17 1 1
      169 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      171 CALL                             R14 2 1
      172 SETTABLEKS                       R14 R12 K23 ["SidebarToggleButton"]
      174 GETTABLEKS                       R14 R0 K24 ["HideDialogs"]
      176 JUMPIF                           R14 ; [+10]
      177 GETUPVAL                         R14 8
      178 GETTABLEKS                       R14 R14 K3 ["createElement"]
      180 GETUPVAL                         R15 15
      181 DUPTABLE                         R16 K26 [{"Active"}]
      182 SETTABLEKS                       R7 R16 K25 ["Active"]
      184 CALL                             R14 2 1
      185 SETTABLEKS                       R14 R12 K27 ["Dialogs"]
      187 GETUPVAL                         R14 16
      188 CALL                             R14 0 1
      189 JUMPIFNOT                        R14 ; [+7]
      190 GETUPVAL                         R14 8
      191 GETTABLEKS                       R14 R14 K3 ["createElement"]
      193 GETUPVAL                         R15 17
      194 CALL                             R14 1 1
      195 SETTABLEKS                       R14 R12 K28 ["ContextMenu"]
      197 GETUPVAL                         R14 8
      198 GETTABLEKS                       R14 R14 K3 ["createElement"]
      200 GETUPVAL                         R15 18
      201 CALL                             R14 1 1
      202 SETTABLEKS                       R14 R12 K29 ["Toast"]
      204 GETUPVAL                         R14 8
      205 GETTABLEKS                       R14 R14 K3 ["createElement"]
      207 GETUPVAL                         R15 19
      208 CALL                             R14 1 1
      209 SETTABLEKS                       R14 R12 K30 ["DragInvalidPopover"]
      211 GETUPVAL                         R14 8
      212 GETTABLEKS                       R14 R14 K3 ["createElement"]
      214 GETUPVAL                         R15 20
      215 NEWTABLE                         R16 2 0
      217 SETTABLEKS                       R9 R16 K31 ["ForwardRef"]
      219 GETUPVAL                         R17 8
      220 GETTABLEKS                       R17 R17 K19 ["Tag"]
      222 LOADK                            R18 K32 ["App X-Fill"]
      223 SETTABLE                         R18 R16 R17
      224 MOVE                             R17 R12
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
      140 GETIMPORT                        R22 K5 [require]
      142 GETTABLEKS                       R23 R0 K21 ["Src"]
      144 GETTABLEKS                       R23 R23 K32 ["Flags"]
      146 GETTABLEKS                       R23 R23 K33 ["getFFlagAmrFoundationifyContextMenu"]
      148 CALL                             R22 1 1
      149 GETIMPORT                        R23 K5 [require]
      151 GETTABLEKS                       R24 R0 K21 ["Src"]
      153 GETTABLEKS                       R24 R24 K32 ["Flags"]
      155 GETTABLEKS                       R24 R24 K34 ["getFFlagAmrUseRedesignedCompactView"]
      157 CALL                             R23 1 1
      158 DUPCLOSURE                       R24 K35 [PROTO_3]
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R21
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R23
      172 CAPTURE                          VAL R6
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R5
      180 RETURN                           R24 1
