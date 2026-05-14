PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["DeleteTab"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 SETTABLEKS                       R0 R1 K1 ["Enabled"]
        9 GETUPVAL                         R1 1
       10 MOVE                             R2 R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 GETUPVAL                         R3 4
        6 MOVE                             R4 R0
        7 GETUPVAL                         R5 5
        8 CALL                             R1 4 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["current"]
       12 JUMPIFNOTEQKNIL                  R2 ; [+14]
       14 GETUPVAL                         R2 0
       15 GETUPVAL                         R3 6
       16 GETUPVAL                         R4 3
       17 LOADK                            R6 K1 ["Plugin"]
       18 LOADK                            R7 K2 ["ManageTabs_Title"]
       19 NAMECALL                         R4 R4 K3 ["getText"]
       21 CALL                             R4 3 1
       22 GETUPVAL                         R5 4
       23 MOVE                             R6 R0
       24 CALL                             R3 3 1
       25 SETTABLEKS                       R3 R2 K0 ["current"]
       27 NEWCLOSURE                       R2 P1
       28 CAPTURE                          VAL R1
       29 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["use"]
        6 CALL                             R1 0 1
        7 NAMECALL                         R1 R1 K1 ["get"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K0 ["use"]
       13 CALL                             R2 0 1
       14 NAMECALL                         R2 R2 K1 ["get"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K0 ["use"]
       20 CALL                             R3 0 1
       21 GETUPVAL                         R4 5
       22 LOADB                            R5 0
       23 CALL                             R4 1 2
       24 GETUPVAL                         R6 6
       25 LOADNIL                          R7
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 7
       28 DUPTABLE                         R8 K9 [{"Intent", "Title", "ToolDialog", "Modal", "Heading", "ActionPrimary", "ActionSecondary"}]
       29 LOADK                            R9 K10 ["Destructive"]
       30 SETTABLEKS                       R9 R8 K2 ["Intent"]
       32 LOADK                            R11 K11 ["Plugin"]
       33 LOADK                            R12 K12 ["ResetTabs_Title"]
       34 NAMECALL                         R9 R3 K13 ["getText"]
       36 CALL                             R9 3 1
       37 SETTABLEKS                       R9 R8 K3 ["Title"]
       39 LOADB                            R9 1
       40 SETTABLEKS                       R9 R8 K4 ["ToolDialog"]
       42 LOADB                            R9 1
       43 SETTABLEKS                       R9 R8 K5 ["Modal"]
       45 LOADK                            R11 K11 ["Plugin"]
       46 LOADK                            R12 K14 ["ResetTabs_Text"]
       47 NAMECALL                         R9 R3 K13 ["getText"]
       49 CALL                             R9 3 1
       50 SETTABLEKS                       R9 R8 K6 ["Heading"]
       52 GETUPVAL                         R9 8
       53 GETUPVAL                         R10 9
       54 GETTABLEKS                       R10 R10 K15 ["OK"]
       56 DUPTABLE                         R11 K17 [{"OnActivated"}]
       57 GETTABLEKS                       R12 R0 K18 ["ResetAllTabs"]
       59 SETTABLEKS                       R12 R11 K16 ["OnActivated"]
       61 CALL                             R9 2 1
       62 SETTABLEKS                       R9 R8 K7 ["ActionPrimary"]
       64 GETUPVAL                         R9 9
       65 GETTABLEKS                       R9 R9 K19 ["CANCEL"]
       67 SETTABLEKS                       R9 R8 K8 ["ActionSecondary"]
       69 CALL                             R7 1 1
       70 GETUPVAL                         R8 6
       71 LOADNIL                          R9
       72 CALL                             R8 1 1
       73 GETUPVAL                         R9 10
       74 NEWCLOSURE                       R10 P0
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R0
       77 NEWTABLE                         R11 0 1
       79 GETTABLEKS                       R12 R0 K20 ["DeleteTab"]
       81 SETLIST                          R11 R12 1 [1]
       83 CALL                             R9 2 1
       84 GETUPVAL                         R10 7
       85 DUPTABLE                         R11 K9 [{"Intent", "Title", "ToolDialog", "Modal", "Heading", "ActionPrimary", "ActionSecondary"}]
       86 LOADK                            R12 K10 ["Destructive"]
       87 SETTABLEKS                       R12 R11 K2 ["Intent"]
       89 LOADK                            R14 K11 ["Plugin"]
       90 LOADK                            R15 K21 ["DeleteTab_Title"]
       91 NAMECALL                         R12 R3 K13 ["getText"]
       93 CALL                             R12 3 1
       94 SETTABLEKS                       R12 R11 K3 ["Title"]
       96 LOADB                            R12 1
       97 SETTABLEKS                       R12 R11 K4 ["ToolDialog"]
       99 LOADB                            R12 1
      100 SETTABLEKS                       R12 R11 K5 ["Modal"]
      102 LOADK                            R14 K11 ["Plugin"]
      103 LOADK                            R15 K22 ["DeleteTab_Text"]
      104 NAMECALL                         R12 R3 K13 ["getText"]
      106 CALL                             R12 3 1
      107 SETTABLEKS                       R12 R11 K6 ["Heading"]
      109 GETUPVAL                         R12 8
      110 GETUPVAL                         R13 9
      111 GETTABLEKS                       R13 R13 K15 ["OK"]
      113 DUPTABLE                         R14 K17 [{"OnActivated"}]
      114 SETTABLEKS                       R9 R14 K16 ["OnActivated"]
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K7 ["ActionPrimary"]
      119 GETUPVAL                         R12 9
      120 GETTABLEKS                       R12 R12 K19 ["CANCEL"]
      122 SETTABLEKS                       R12 R11 K8 ["ActionSecondary"]
      124 CALL                             R10 1 1
      125 NEWCLOSURE                       R11 P1
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R10
      128 GETUPVAL                         R12 11
      129 NEWCLOSURE                       R13 P2
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R5
      132 CAPTURE                          UPVAL U12
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R7
      136 CAPTURE                          UPVAL U13
      137 NEWTABLE                         R14 0 1
      139 MOVE                             R15 R7
      140 SETLIST                          R14 R15 1 [1]
      142 CALL                             R12 2 0
      143 JUMPIFNOT                        R4 ; [+39]
      144 GETTABLEKS                       R13 R6 K23 ["current"]
      146 JUMPIFNOT                        R13 ; [+36]
      147 GETUPVAL                         R12 14
      148 GETTABLEKS                       R12 R12 K24 ["createPortal"]
      150 GETUPVAL                         R13 15
      151 LOADK                            R14 K25 ["Frame"]
      152 NEWTABLE                         R15 1 0
      154 GETUPVAL                         R16 16
      155 GETTABLEKS                       R16 R16 K26 ["Tag"]
      157 LOADK                            R17 K27 ["Role-Surface X-Fit"]
      158 SETTABLE                         R17 R15 R16
      159 DUPTABLE                         R16 K30 [{"View", "StyleLink"}]
      160 GETUPVAL                         R17 15
      161 GETUPVAL                         R18 17
      162 DUPTABLE                         R19 K32 [{"ResetTabs", "DeleteTab"}]
      163 SETTABLEKS                       R7 R19 K31 ["ResetTabs"]
      165 SETTABLEKS                       R11 R19 K20 ["DeleteTab"]
      167 CALL                             R17 2 1
      168 SETTABLEKS                       R17 R16 K28 ["View"]
      170 GETUPVAL                         R17 15
      171 LOADK                            R18 K29 ["StyleLink"]
      172 DUPTABLE                         R19 K34 [{"StyleSheet"}]
      173 SETTABLEKS                       R1 R19 K33 ["StyleSheet"]
      175 CALL                             R17 2 1
      176 SETTABLEKS                       R17 R16 K29 ["StyleLink"]
      178 CALL                             R13 3 1
      179 GETTABLEKS                       R14 R6 K23 ["current"]
      181 CALL                             R12 2 1
      182 RETURN                           R12 1
      183 LOADNIL                          R12
      184 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["createElement"]
       23 GETTABLEKS                       R4 R1 K10 ["useCallback"]
       25 GETTABLEKS                       R5 R1 K11 ["useContext"]
       27 GETTABLEKS                       R6 R1 K12 ["useEffect"]
       29 GETTABLEKS                       R7 R1 K13 ["useRef"]
       31 GETTABLEKS                       R8 R1 K14 ["useState"]
       33 GETIMPORT                        R9 K5 [require]
       35 GETTABLEKS                       R10 R0 K15 ["Src"]
       37 GETTABLEKS                       R10 R10 K16 ["Contexts"]
       39 GETTABLEKS                       R10 R10 K17 ["RibbonDefinition"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R11 R0 K6 ["Packages"]
       46 GETTABLEKS                       R11 R11 K18 ["Dash"]
       48 CALL                             R10 1 1
       49 GETTABLEKS                       R11 R10 K19 ["join"]
       51 GETIMPORT                        R12 K5 [require]
       53 GETTABLEKS                       R13 R0 K6 ["Packages"]
       55 GETTABLEKS                       R13 R13 K20 ["Framework"]
       57 CALL                             R12 1 1
       58 GETTABLEKS                       R13 R12 K21 ["UI"]
       60 GETTABLEKS                       R13 R13 K22 ["Hooks"]
       62 GETTABLEKS                       R13 R13 K23 ["useDialog"]
       64 GETTABLEKS                       R14 R12 K24 ["Util"]
       66 GETTABLEKS                       R14 R14 K25 ["DialogAction"]
       68 GETTABLEKS                       R15 R12 K26 ["ContextServices"]
       70 GETTABLEKS                       R16 R15 K27 ["Design"]
       72 GETTABLEKS                       R17 R15 K28 ["Plugin"]
       74 GETTABLEKS                       R18 R12 K26 ["ContextServices"]
       76 GETTABLEKS                       R18 R18 K29 ["Localization"]
       78 GETIMPORT                        R19 K5 [require]
       80 GETTABLEKS                       R20 R0 K15 ["Src"]
       82 GETTABLEKS                       R20 R20 K30 ["Types"]
       84 CALL                             R19 1 1
       85 GETIMPORT                        R20 K5 [require]
       87 GETIMPORT                        R21 K1 [script]
       89 GETTABLEKS                       R21 R21 K31 ["createActions"]
       91 CALL                             R20 1 1
       92 GETIMPORT                        R21 K5 [require]
       94 GETIMPORT                        R22 K1 [script]
       96 GETTABLEKS                       R22 R22 K32 ["createWidget"]
       98 CALL                             R21 1 1
       99 GETIMPORT                        R22 K5 [require]
      101 GETIMPORT                        R23 K1 [script]
      103 GETTABLEKS                       R23 R23 K33 ["ManageTabsView"]
      105 CALL                             R22 1 1
      106 DUPCLOSURE                       R23 K34 [PROTO_5]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R18
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R20
      120 CAPTURE                          VAL R21
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R22
      125 RETURN                           R23 1
