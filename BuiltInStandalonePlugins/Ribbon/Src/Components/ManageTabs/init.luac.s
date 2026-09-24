PROTO_0:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/ResetTabs"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"DialogComponent", "DialogUri"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["DialogComponent"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["join"]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K4 ["GetUri"]
       10 CALL                             R2 1 1
       11 DUPTABLE                         R3 K9 [{["Category"] = "Widget", ["ItemId"] = "Dialog/ManageTabsDeleteTab"}]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K1 ["DialogUri"]
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["DeleteTab"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["current"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 0
        5 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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
       27 GETUPVAL                         R8 7
       28 JUMPIFNOT                        R8 ; [+12]
       29 GETUPVAL                         R7 8
       30 NEWCLOSURE                       R8 P0
       31 CAPTURE                          UPVAL U9
       32 CAPTURE                          UPVAL U10
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R9 0 1
       36 MOVE                             R10 R2
       37 SETLIST                          R9 R10 1 [1]
       39 CALL                             R7 2 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R7
       42 GETUPVAL                         R9 7
       43 JUMPIFNOT                        R9 ; [+12]
       44 GETUPVAL                         R8 8
       45 NEWCLOSURE                       R9 P1
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          UPVAL U10
       48 CAPTURE                          VAL R2
       49 NEWTABLE                         R10 0 1
       51 MOVE                             R11 R2
       52 SETLIST                          R10 R11 1 [1]
       54 CALL                             R8 2 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R8
       57 GETUPVAL                         R9 11
       58 DUPTABLE                         R10 K12 [{["Intent"] = "Destructive", ["Title"], ["ToolDialog"] = True, ["Modal"] = True, ["Heading"], ["ActionPrimary"], ["ActionSecondary"], ["MigrateToStudioFoundation"]}]
       59 LOADK                            R13 K13 ["Plugin"]
       60 LOADK                            R14 K14 ["ResetTabs_Title"]
       61 NAMECALL                         R11 R3 K15 ["getText"]
       63 CALL                             R11 3 1
       64 SETTABLEKS                       R11 R10 K4 ["Title"]
       66 LOADK                            R13 K13 ["Plugin"]
       67 LOADK                            R14 K16 ["ResetTabs_Text"]
       68 NAMECALL                         R11 R3 K15 ["getText"]
       70 CALL                             R11 3 1
       71 SETTABLEKS                       R11 R10 K8 ["Heading"]
       73 GETUPVAL                         R11 12
       74 GETUPVAL                         R12 13
       75 GETTABLEKS                       R12 R12 K17 ["OK"]
       77 DUPTABLE                         R13 K19 [{"OnActivated"}]
       78 GETTABLEKS                       R14 R0 K20 ["ResetAllTabs"]
       80 SETTABLEKS                       R14 R13 K18 ["OnActivated"]
       82 CALL                             R11 2 1
       83 SETTABLEKS                       R11 R10 K9 ["ActionPrimary"]
       85 GETUPVAL                         R11 13
       86 GETTABLEKS                       R11 R11 K21 ["CANCEL"]
       88 SETTABLEKS                       R11 R10 K10 ["ActionSecondary"]
       90 SETTABLEKS                       R7 R10 K11 ["MigrateToStudioFoundation"]
       92 CALL                             R9 1 1
       93 GETUPVAL                         R10 6
       94 LOADNIL                          R11
       95 CALL                             R10 1 1
       96 GETUPVAL                         R11 14
       97 NEWCLOSURE                       R12 P2
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R0
      100 NEWTABLE                         R13 0 1
      102 GETTABLEKS                       R14 R0 K22 ["DeleteTab"]
      104 SETLIST                          R13 R14 1 [1]
      106 CALL                             R11 2 1
      107 GETUPVAL                         R12 11
      108 DUPTABLE                         R13 K12 [{["Intent"] = "Destructive", ["Title"], ["ToolDialog"] = True, ["Modal"] = True, ["Heading"], ["ActionPrimary"], ["ActionSecondary"], ["MigrateToStudioFoundation"]}]
      109 LOADK                            R16 K13 ["Plugin"]
      110 LOADK                            R17 K23 ["DeleteTab_Title"]
      111 NAMECALL                         R14 R3 K15 ["getText"]
      113 CALL                             R14 3 1
      114 SETTABLEKS                       R14 R13 K4 ["Title"]
      116 LOADK                            R16 K13 ["Plugin"]
      117 LOADK                            R17 K24 ["DeleteTab_Text"]
      118 NAMECALL                         R14 R3 K15 ["getText"]
      120 CALL                             R14 3 1
      121 SETTABLEKS                       R14 R13 K8 ["Heading"]
      123 GETUPVAL                         R14 12
      124 GETUPVAL                         R15 13
      125 GETTABLEKS                       R15 R15 K17 ["OK"]
      127 DUPTABLE                         R16 K19 [{"OnActivated"}]
      128 SETTABLEKS                       R11 R16 K18 ["OnActivated"]
      130 CALL                             R14 2 1
      131 SETTABLEKS                       R14 R13 K9 ["ActionPrimary"]
      133 GETUPVAL                         R14 13
      134 GETTABLEKS                       R14 R14 K21 ["CANCEL"]
      136 SETTABLEKS                       R14 R13 K10 ["ActionSecondary"]
      138 SETTABLEKS                       R8 R13 K11 ["MigrateToStudioFoundation"]
      140 CALL                             R12 1 1
      141 NEWCLOSURE                       R13 P3
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R12
      144 GETUPVAL                         R14 15
      145 NEWCLOSURE                       R15 P4
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R5
      148 CAPTURE                          UPVAL U16
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R9
      152 CAPTURE                          UPVAL U17
      153 NEWTABLE                         R16 0 1
      155 MOVE                             R17 R9
      156 SETLIST                          R16 R17 1 [1]
      158 CALL                             R14 2 0
      159 JUMPIFNOT                        R4 ; [+39]
      160 GETTABLEKS                       R15 R6 K25 ["current"]
      162 JUMPIFNOT                        R15 ; [+36]
      163 GETUPVAL                         R14 18
      164 GETTABLEKS                       R14 R14 K26 ["createPortal"]
      166 GETUPVAL                         R15 19
      167 LOADK                            R16 K27 ["Frame"]
      168 NEWTABLE                         R17 1 0
      170 GETUPVAL                         R18 20
      171 GETTABLEKS                       R18 R18 K28 ["Tag"]
      173 LOADK                            R19 K29 ["Role-Surface X-Fit"]
      174 SETTABLE                         R19 R17 R18
      175 DUPTABLE                         R18 K32 [{"View", "StyleLink"}]
      176 GETUPVAL                         R19 19
      177 GETUPVAL                         R20 21
      178 DUPTABLE                         R21 K34 [{"ResetTabs", "DeleteTab"}]
      179 SETTABLEKS                       R9 R21 K33 ["ResetTabs"]
      181 SETTABLEKS                       R13 R21 K22 ["DeleteTab"]
      183 CALL                             R19 2 1
      184 SETTABLEKS                       R19 R18 K30 ["View"]
      186 GETUPVAL                         R19 19
      187 LOADK                            R20 K31 ["StyleLink"]
      188 DUPTABLE                         R21 K36 [{"StyleSheet"}]
      189 SETTABLEKS                       R1 R21 K35 ["StyleSheet"]
      191 CALL                             R19 2 1
      192 SETTABLEKS                       R19 R18 K31 ["StyleLink"]
      194 CALL                             R15 3 1
      195 GETTABLEKS                       R16 R6 K25 ["current"]
      197 CALL                             R14 2 1
      198 RETURN                           R14 1
      199 LOADNIL                          R14
      200 RETURN                           R14 1

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
       29 GETTABLEKS                       R7 R1 K13 ["useMemo"]
       31 GETTABLEKS                       R8 R1 K14 ["useRef"]
       33 GETTABLEKS                       R9 R1 K15 ["useState"]
       35 GETIMPORT                        R10 K5 [require]
       37 GETTABLEKS                       R11 R0 K16 ["Src"]
       39 GETTABLEKS                       R11 R11 K17 ["Contexts"]
       41 GETTABLEKS                       R11 R11 K18 ["RibbonDefinition"]
       43 CALL                             R10 1 1
       44 GETIMPORT                        R11 K5 [require]
       46 GETTABLEKS                       R12 R0 K6 ["Packages"]
       48 GETTABLEKS                       R12 R12 K19 ["Dash"]
       50 CALL                             R11 1 1
       51 GETTABLEKS                       R12 R11 K20 ["join"]
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R14 R0 K6 ["Packages"]
       57 GETTABLEKS                       R14 R14 K21 ["Framework"]
       59 CALL                             R13 1 1
       60 GETIMPORT                        R14 K5 [require]
       62 GETTABLEKS                       R15 R0 K6 ["Packages"]
       64 GETTABLEKS                       R15 R15 K22 ["StudioFoundation"]
       66 CALL                             R14 1 1
       67 GETTABLEKS                       R15 R14 K23 ["Components"]
       69 GETTABLEKS                       R15 R15 K24 ["Dialog"]
       71 GETTABLEKS                       R16 R14 K25 ["Util"]
       73 GETTABLEKS                       R16 R16 K26 ["StudioUri"]
       75 GETTABLEKS                       R17 R13 K27 ["UI"]
       77 GETTABLEKS                       R17 R17 K28 ["Hooks"]
       79 GETTABLEKS                       R17 R17 K29 ["RESTRICTED_useDialog"]
       81 GETTABLEKS                       R18 R13 K25 ["Util"]
       83 GETTABLEKS                       R18 R18 K30 ["DialogAction"]
       85 GETTABLEKS                       R19 R13 K31 ["ContextServices"]
       87 GETTABLEKS                       R20 R19 K32 ["Design"]
       89 GETTABLEKS                       R21 R19 K33 ["Plugin"]
       91 GETTABLEKS                       R22 R13 K31 ["ContextServices"]
       93 GETTABLEKS                       R22 R22 K34 ["Localization"]
       95 GETIMPORT                        R23 K5 [require]
       97 GETTABLEKS                       R24 R0 K16 ["Src"]
       99 GETTABLEKS                       R24 R24 K35 ["Types"]
      101 CALL                             R23 1 1
      102 GETIMPORT                        R24 K5 [require]
      104 GETIMPORT                        R25 K1 [script]
      106 GETTABLEKS                       R25 R25 K36 ["createActions"]
      108 CALL                             R24 1 1
      109 GETIMPORT                        R25 K5 [require]
      111 GETIMPORT                        R26 K1 [script]
      113 GETTABLEKS                       R26 R26 K37 ["createWidget"]
      115 CALL                             R25 1 1
      116 GETIMPORT                        R26 K5 [require]
      118 GETIMPORT                        R27 K1 [script]
      120 GETTABLEKS                       R27 R27 K38 ["ManageTabsView"]
      122 CALL                             R26 1 1
      123 GETIMPORT                        R27 K5 [require]
      125 GETTABLEKS                       R28 R0 K16 ["Src"]
      127 GETTABLEKS                       R28 R28 K39 ["SharedFlags"]
      129 GETTABLEKS                       R28 R28 K40 ["getFFlagRibbonMigrateUseDialog"]
      131 CALL                             R27 1 1
      132 CALL                             R27 0 1
      133 DUPCLOSURE                       R28 K41 [PROTO_7]
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R21
      138 CAPTURE                          VAL R22
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R27
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R6
      150 CAPTURE                          VAL R24
      151 CAPTURE                          VAL R25
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R26
      156 RETURN                           R28 1
