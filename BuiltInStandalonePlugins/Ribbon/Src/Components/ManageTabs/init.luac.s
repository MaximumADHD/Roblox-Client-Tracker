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
       28 DUPTABLE                         R8 K11 [{["Intent"] = "Destructive", ["Title"], ["ToolDialog"] = True, ["Modal"] = True, ["Heading"], ["ActionPrimary"], ["ActionSecondary"]}]
       29 LOADK                            R11 K12 ["Plugin"]
       30 LOADK                            R12 K13 ["ResetTabs_Title"]
       31 NAMECALL                         R9 R3 K14 ["getText"]
       33 CALL                             R9 3 1
       34 SETTABLEKS                       R9 R8 K4 ["Title"]
       36 LOADK                            R11 K12 ["Plugin"]
       37 LOADK                            R12 K15 ["ResetTabs_Text"]
       38 NAMECALL                         R9 R3 K14 ["getText"]
       40 CALL                             R9 3 1
       41 SETTABLEKS                       R9 R8 K8 ["Heading"]
       43 GETUPVAL                         R9 8
       44 GETUPVAL                         R10 9
       45 GETTABLEKS                       R10 R10 K16 ["OK"]
       47 DUPTABLE                         R11 K18 [{"OnActivated"}]
       48 GETTABLEKS                       R12 R0 K19 ["ResetAllTabs"]
       50 SETTABLEKS                       R12 R11 K17 ["OnActivated"]
       52 CALL                             R9 2 1
       53 SETTABLEKS                       R9 R8 K9 ["ActionPrimary"]
       55 GETUPVAL                         R9 9
       56 GETTABLEKS                       R9 R9 K20 ["CANCEL"]
       58 SETTABLEKS                       R9 R8 K10 ["ActionSecondary"]
       60 CALL                             R7 1 1
       61 GETUPVAL                         R8 6
       62 LOADNIL                          R9
       63 CALL                             R8 1 1
       64 GETUPVAL                         R9 10
       65 NEWCLOSURE                       R10 P0
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R11 0 1
       70 GETTABLEKS                       R12 R0 K21 ["DeleteTab"]
       72 SETLIST                          R11 R12 1 [1]
       74 CALL                             R9 2 1
       75 GETUPVAL                         R10 7
       76 DUPTABLE                         R11 K11 [{["Intent"] = "Destructive", ["Title"], ["ToolDialog"] = True, ["Modal"] = True, ["Heading"], ["ActionPrimary"], ["ActionSecondary"]}]
       77 LOADK                            R14 K12 ["Plugin"]
       78 LOADK                            R15 K22 ["DeleteTab_Title"]
       79 NAMECALL                         R12 R3 K14 ["getText"]
       81 CALL                             R12 3 1
       82 SETTABLEKS                       R12 R11 K4 ["Title"]
       84 LOADK                            R14 K12 ["Plugin"]
       85 LOADK                            R15 K23 ["DeleteTab_Text"]
       86 NAMECALL                         R12 R3 K14 ["getText"]
       88 CALL                             R12 3 1
       89 SETTABLEKS                       R12 R11 K8 ["Heading"]
       91 GETUPVAL                         R12 8
       92 GETUPVAL                         R13 9
       93 GETTABLEKS                       R13 R13 K16 ["OK"]
       95 DUPTABLE                         R14 K18 [{"OnActivated"}]
       96 SETTABLEKS                       R9 R14 K17 ["OnActivated"]
       98 CALL                             R12 2 1
       99 SETTABLEKS                       R12 R11 K9 ["ActionPrimary"]
      101 GETUPVAL                         R12 9
      102 GETTABLEKS                       R12 R12 K20 ["CANCEL"]
      104 SETTABLEKS                       R12 R11 K10 ["ActionSecondary"]
      106 CALL                             R10 1 1
      107 NEWCLOSURE                       R11 P1
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R10
      110 GETUPVAL                         R12 11
      111 NEWCLOSURE                       R13 P2
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R5
      114 CAPTURE                          UPVAL U12
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R7
      118 CAPTURE                          UPVAL U13
      119 NEWTABLE                         R14 0 1
      121 MOVE                             R15 R7
      122 SETLIST                          R14 R15 1 [1]
      124 CALL                             R12 2 0
      125 JUMPIFNOT                        R4 ; [+39]
      126 GETTABLEKS                       R13 R6 K24 ["current"]
      128 JUMPIFNOT                        R13 ; [+36]
      129 GETUPVAL                         R12 14
      130 GETTABLEKS                       R12 R12 K25 ["createPortal"]
      132 GETUPVAL                         R13 15
      133 LOADK                            R14 K26 ["Frame"]
      134 NEWTABLE                         R15 1 0
      136 GETUPVAL                         R16 16
      137 GETTABLEKS                       R16 R16 K27 ["Tag"]
      139 LOADK                            R17 K28 ["Role-Surface X-Fit"]
      140 SETTABLE                         R17 R15 R16
      141 DUPTABLE                         R16 K31 [{"View", "StyleLink"}]
      142 GETUPVAL                         R17 15
      143 GETUPVAL                         R18 17
      144 DUPTABLE                         R19 K33 [{"ResetTabs", "DeleteTab"}]
      145 SETTABLEKS                       R7 R19 K32 ["ResetTabs"]
      147 SETTABLEKS                       R11 R19 K21 ["DeleteTab"]
      149 CALL                             R17 2 1
      150 SETTABLEKS                       R17 R16 K29 ["View"]
      152 GETUPVAL                         R17 15
      153 LOADK                            R18 K30 ["StyleLink"]
      154 DUPTABLE                         R19 K35 [{"StyleSheet"}]
      155 SETTABLEKS                       R1 R19 K34 ["StyleSheet"]
      157 CALL                             R17 2 1
      158 SETTABLEKS                       R17 R16 K30 ["StyleLink"]
      160 CALL                             R13 3 1
      161 GETTABLEKS                       R14 R6 K24 ["current"]
      163 CALL                             R12 2 1
      164 RETURN                           R12 1
      165 LOADNIL                          R12
      166 RETURN                           R12 1

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
