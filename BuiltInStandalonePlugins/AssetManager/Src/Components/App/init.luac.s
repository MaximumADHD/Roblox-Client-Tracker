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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["use"]
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
       30 GETUPVAL                         R11 8
       31 GETTABLEKS                       R10 R11 K3 ["createElement"]
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
       48 GETUPVAL                         R12 8
       49 GETTABLEKS                       R11 R12 K3 ["createElement"]
       51 GETUPVAL                         R12 10
       52 DUPTABLE                         R13 K10 [{"LayoutOrder"}]
       53 NAMECALL                         R14 R1 K8 ["getNextOrder"]
       55 CALL                             R14 1 1
       56 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       58 CALL                             R11 2 1
       59 GETUPVAL                         R12 11
       60 CALL                             R12 0 1
       61 NEWTABLE                         R13 8 0
       63 JUMPIFNOT                        R3 ; [+50]
       64 JUMPIFNOT                        R6 ; [+3]
       65 SETTABLEKS                       R10 R13 K11 ["Sidebar"]
       67 JUMP                             ; [+48]
       68 GETUPVAL                         R15 8
       69 GETTABLEKS                       R14 R15 K3 ["createElement"]
       71 GETUPVAL                         R15 12
       72 NEWTABLE                         R16 8 0
       74 LOADN                            R17 1
       75 SETTABLEKS                       R17 R16 K6 ["ZIndex"]
       77 GETUPVAL                         R18 13
       78 CALL                             R18 0 1
       79 JUMPIFNOT                        R18 ; [+2]
       80 LOADB                            R17 0
       81 JUMP                             ; [+1]
       82 LOADB                            R17 1
       83 SETTABLEKS                       R17 R16 K12 ["UseScale"]
       85 LOADB                            R17 1
       86 SETTABLEKS                       R17 R16 K13 ["ClampSize"]
       88 NAMECALL                         R17 R2 K14 ["getAppMinSizes"]
       90 CALL                             R17 1 1
       91 SETTABLEKS                       R17 R16 K15 ["MinSizes"]
       93 SETTABLEKS                       R12 R16 K16 ["Sizes"]
       95 NEWCLOSURE                       R17 P1
       96 CAPTURE                          VAL R2
       97 SETTABLEKS                       R17 R16 K17 ["OnSizesChange"]
       99 GETUPVAL                         R18 8
      100 GETTABLEKS                       R17 R18 K18 ["Tag"]
      102 LOADK                            R18 K19 ["size-full"]
      103 SETTABLE                         R18 R16 R17
      104 NEWTABLE                         R17 0 2
      106 MOVE                             R18 R10
      107 MOVE                             R19 R11
      108 SETLIST                          R17 R18 2 [1]
      110 CALL                             R14 3 1
      111 SETTABLEKS                       R14 R13 K20 ["SplitContents"]
      113 JUMP                             ; [+2]
      114 SETTABLEKS                       R11 R13 K21 ["MainView"]
      116 GETUPVAL                         R15 8
      117 GETTABLEKS                       R14 R15 K3 ["createElement"]
      119 GETUPVAL                         R16 14
      120 GETTABLEKS                       R15 R16 K22 ["View"]
      122 DUPTABLE                         R16 K24 [{"LayoutOrder", "tag"}]
      123 NAMECALL                         R17 R1 K8 ["getNextOrder"]
      125 CALL                             R17 1 1
      126 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      128 LOADK                            R17 K25 ["auto-xy SidebarButton"]
      129 SETTABLEKS                       R17 R16 K23 ["tag"]
      131 NEWTABLE                         R17 0 1
      133 GETUPVAL                         R19 8
      134 GETTABLEKS                       R18 R19 K3 ["createElement"]
      136 GETUPVAL                         R20 14
      137 GETTABLEKS                       R19 R20 K26 ["IconButton"]
      139 DUPTABLE                         R20 K32 [{"ZIndex", "onActivated", "variant", "icon", "size", "testId"}]
      140 LOADN                            R21 3
      141 SETTABLEKS                       R21 R20 K6 ["ZIndex"]
      143 NEWCLOSURE                       R21 P2
      144 CAPTURE                          VAL R2
      145 SETTABLEKS                       R21 R20 K27 ["onActivated"]
      147 GETUPVAL                         R24 14
      148 GETTABLEKS                       R23 R24 K33 ["Enums"]
      150 GETTABLEKS                       R22 R23 K34 ["ButtonVariant"]
      152 GETTABLEKS                       R21 R22 K35 ["Utility"]
      154 SETTABLEKS                       R21 R20 K28 ["variant"]
      156 GETUPVAL                         R24 14
      157 GETTABLEKS                       R23 R24 K33 ["Enums"]
      159 GETTABLEKS                       R22 R23 K36 ["IconName"]
      161 GETTABLEKS                       R21 R22 K11 ["Sidebar"]
      163 SETTABLEKS                       R21 R20 K29 ["icon"]
      165 GETUPVAL                         R24 14
      166 GETTABLEKS                       R23 R24 K33 ["Enums"]
      168 GETTABLEKS                       R22 R23 K37 ["InputSize"]
      170 GETTABLEKS                       R21 R22 K38 ["XSmall"]
      172 SETTABLEKS                       R21 R20 K30 ["size"]
      174 LOADK                            R21 K39 ["toggle-sidebar-button"]
      175 SETTABLEKS                       R21 R20 K31 ["testId"]
      177 CALL                             R18 2 -1
      178 SETLIST                          R17 R18 -1 [1]
      180 CALL                             R14 3 1
      181 SETTABLEKS                       R14 R13 K40 ["ToggleSidebarButton"]
      183 GETTABLEKS                       R14 R0 K41 ["HideDialogs"]
      185 JUMPIF                           R14 ; [+10]
      186 GETUPVAL                         R15 8
      187 GETTABLEKS                       R14 R15 K3 ["createElement"]
      189 GETUPVAL                         R15 15
      190 DUPTABLE                         R16 K43 [{"Active"}]
      191 SETTABLEKS                       R7 R16 K42 ["Active"]
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R13 K44 ["Dialogs"]
      196 GETUPVAL                         R15 8
      197 GETTABLEKS                       R14 R15 K3 ["createElement"]
      199 GETUPVAL                         R15 16
      200 NEWTABLE                         R16 2 0
      202 SETTABLEKS                       R9 R16 K45 ["ForwardRef"]
      204 GETUPVAL                         R18 8
      205 GETTABLEKS                       R17 R18 K18 ["Tag"]
      207 LOADK                            R18 K46 ["App X-Fill"]
      208 SETTABLE                         R18 R16 R17
      209 MOVE                             R17 R13
      210 CALL                             R14 3 -1
      211 RETURN                           R14 -1

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
       28 GETTABLEKS                       R5 R2 K10 ["Util"]
       30 GETTABLEKS                       R4 R5 K11 ["LayoutOrderIterator"]
       32 GETTABLEKS                       R5 R2 K12 ["UI"]
       34 GETTABLEKS                       R6 R5 K13 ["Pane"]
       36 GETTABLEKS                       R7 R5 K14 ["SplitPane"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETIMPORT                        R10 K1 [script]
       42 GETTABLEKS                       R9 R10 K15 ["MainView"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETIMPORT                        R11 K1 [script]
       49 GETTABLEKS                       R10 R11 K16 ["Sidebar"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETIMPORT                        R12 K1 [script]
       56 GETTABLEKS                       R11 R12 K17 ["Dialogs"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R14 R0 K18 ["Src"]
       63 GETTABLEKS                       R13 R14 K19 ["Controllers"]
       65 GETTABLEKS                       R12 R13 K20 ["LayoutController"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R12 R1 K21 ["useEffect"]
       70 GETTABLEKS                       R13 R1 K22 ["useRef"]
       72 GETIMPORT                        R14 K5 [require]
       74 GETTABLEKS                       R17 R0 K18 ["Src"]
       76 GETTABLEKS                       R16 R17 K23 ["Hooks"]
       78 GETTABLEKS                       R15 R16 K24 ["useDialogs"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K5 [require]
       83 GETTABLEKS                       R18 R0 K18 ["Src"]
       85 GETTABLEKS                       R17 R18 K23 ["Hooks"]
       87 GETTABLEKS                       R16 R17 K25 ["usePluginSize"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K5 [require]
       92 GETTABLEKS                       R19 R0 K18 ["Src"]
       94 GETTABLEKS                       R18 R19 K23 ["Hooks"]
       96 GETTABLEKS                       R17 R18 K26 ["useAppSizes"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K5 [require]
      101 GETTABLEKS                       R20 R0 K18 ["Src"]
      103 GETTABLEKS                       R19 R20 K23 ["Hooks"]
      105 GETTABLEKS                       R18 R19 K27 ["useShowSidebar"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K5 [require]
      110 GETTABLEKS                       R21 R0 K18 ["Src"]
      112 GETTABLEKS                       R20 R21 K23 ["Hooks"]
      114 GETTABLEKS                       R19 R20 K28 ["useExplorerInfo"]
      116 CALL                             R18 1 1
      117 GETIMPORT                        R19 K5 [require]
      119 GETTABLEKS                       R22 R0 K18 ["Src"]
      121 GETTABLEKS                       R21 R22 K29 ["Flags"]
      123 GETTABLEKS                       R20 R21 K30 ["getFFlagAmrSidebarSizing"]
      125 CALL                             R19 1 1
      126 DUPCLOSURE                       R20 K31 [PROTO_3]
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R6
      144 RETURN                           R20 1
