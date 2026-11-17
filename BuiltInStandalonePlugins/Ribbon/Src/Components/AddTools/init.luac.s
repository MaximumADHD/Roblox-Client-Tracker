PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETIMPORT                        R0 K1 [warn]
        4 LOADK                            R1 K2 ["Unknown active tab, cannot insert Separator"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["AddControlsToTab"]
       10 GETUPVAL                         R1 0
       11 NEWTABLE                         R2 0 1
       13 GETIMPORT                        R3 K6 [table.clone]
       15 GETUPVAL                         R4 2
       16 CALL                             R3 1 1
       17 SETLIST                          R2 R3 1 [1]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_3:
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
       12 JUMPIF                           R2 ; [+13]
       13 GETUPVAL                         R2 0
       14 GETUPVAL                         R3 6
       15 GETUPVAL                         R4 3
       16 LOADK                            R6 K1 ["Plugin"]
       17 LOADK                            R7 K2 ["AddTools_Title"]
       18 NAMECALL                         R4 R4 K3 ["getText"]
       20 CALL                             R4 3 1
       21 GETUPVAL                         R5 4
       22 MOVE                             R6 R0
       23 CALL                             R3 3 1
       24 SETTABLEKS                       R3 R2 K0 ["current"]
       26 NEWCLOSURE                       R2 P1
       27 CAPTURE                          VAL R1
       28 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 3
        6 NAMECALL                         R3 R3 K0 ["use"]
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R4 R4 K0 ["use"]
       12 CALL                             R4 0 1
       13 NAMECALL                         R4 R4 K1 ["get"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 5
       17 GETTABLEKS                       R5 R5 K0 ["use"]
       19 CALL                             R5 0 1
       20 NAMECALL                         R5 R5 K1 ["get"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 6
       24 LOADB                            R7 0
       25 CALL                             R6 1 2
       26 GETUPVAL                         R8 7
       27 LOADNIL                          R9
       28 CALL                             R8 1 1
       29 GETUPVAL                         R9 8
       30 NEWCLOSURE                       R10 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U9
       34 NEWTABLE                         R11 0 2
       36 MOVE                             R12 R1
       37 GETTABLEKS                       R13 R2 K2 ["AddControlsToTab"]
       39 SETLIST                          R11 R12 2 [1]
       41 CALL                             R9 2 1
       42 GETUPVAL                         R10 10
       43 NEWCLOSURE                       R11 P1
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R7
       46 CAPTURE                          UPVAL U11
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R9
       50 CAPTURE                          UPVAL U12
       51 NEWTABLE                         R12 0 2
       53 MOVE                             R13 R4
       54 MOVE                             R14 R9
       55 SETLIST                          R12 R13 2 [1]
       57 CALL                             R10 2 0
       58 JUMPIFNOT                        R6 ; [+53]
       59 GETTABLEKS                       R11 R8 K3 ["current"]
       61 JUMPIFNOT                        R11 ; [+50]
       62 GETUPVAL                         R10 13
       63 GETTABLEKS                       R10 R10 K4 ["createPortal"]
       65 GETUPVAL                         R11 14
       66 LOADK                            R12 K5 ["Frame"]
       67 NEWTABLE                         R13 4 0
       69 LOADN                            R14 1
       70 SETTABLEKS                       R14 R13 K6 ["BackgroundTransparency"]
       72 GETIMPORT                        R14 K9 [UDim2.fromScale]
       74 LOADN                            R15 1
       75 LOADN                            R16 1
       76 CALL                             R14 2 1
       77 SETTABLEKS                       R14 R13 K10 ["Size"]
       79 GETUPVAL                         R14 15
       80 GETTABLEKS                       R14 R14 K11 ["Tag"]
       82 LOADK                            R15 K12 ["X-Pad150"]
       83 SETTABLE                         R15 R13 R14
       84 DUPTABLE                         R14 K15 [{"View", "StyleLink"}]
       85 GETUPVAL                         R15 14
       86 GETUPVAL                         R16 16
       87 DUPTABLE                         R17 K19 [{"AddSeparator", "ActiveTabIdentifier", "CustomTools"}]
       88 SETTABLEKS                       R9 R17 K16 ["AddSeparator"]
       90 SETTABLEKS                       R1 R17 K17 ["ActiveTabIdentifier"]
       92 GETTABLEKS                       R18 R0 K18 ["CustomTools"]
       94 SETTABLEKS                       R18 R17 K18 ["CustomTools"]
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K13 ["View"]
       99 GETUPVAL                         R15 14
      100 LOADK                            R16 K14 ["StyleLink"]
      101 DUPTABLE                         R17 K21 [{"StyleSheet"}]
      102 SETTABLEKS                       R5 R17 K20 ["StyleSheet"]
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K14 ["StyleLink"]
      107 CALL                             R11 3 1
      108 GETTABLEKS                       R12 R8 K3 ["current"]
      110 CALL                             R10 2 1
      111 RETURN                           R10 1
      112 LOADNIL                          R10
      113 RETURN                           R10 1

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
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       29 GETTABLEKS                       R5 R5 K12 ["useActiveTabIdentifier"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R1 K13 ["useCallback"]
       34 GETTABLEKS                       R6 R1 K14 ["useContext"]
       36 GETTABLEKS                       R7 R1 K15 ["useEffect"]
       38 GETTABLEKS                       R8 R1 K16 ["useRef"]
       40 GETTABLEKS                       R9 R1 K17 ["useState"]
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R11 R0 K10 ["Src"]
       46 GETTABLEKS                       R11 R11 K18 ["Types"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K5 [require]
       51 GETTABLEKS                       R12 R0 K6 ["Packages"]
       53 GETTABLEKS                       R12 R12 K19 ["Framework"]
       55 CALL                             R11 1 1
       56 GETIMPORT                        R12 K5 [require]
       58 GETTABLEKS                       R13 R0 K10 ["Src"]
       60 GETTABLEKS                       R13 R13 K20 ["Contexts"]
       62 GETTABLEKS                       R13 R13 K21 ["RibbonDefinition"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K5 [require]
       67 GETIMPORT                        R14 K1 [script]
       69 GETTABLEKS                       R14 R14 K22 ["ToolTreeHelpers"]
       71 CALL                             R13 1 1
       72 GETTABLEKS                       R14 R11 K23 ["ContextServices"]
       74 GETTABLEKS                       R15 R14 K24 ["Design"]
       76 GETTABLEKS                       R16 R14 K25 ["Plugin"]
       78 GETTABLEKS                       R17 R14 K26 ["Localization"]
       80 GETIMPORT                        R18 K5 [require]
       82 GETIMPORT                        R19 K1 [script]
       84 GETTABLEKS                       R19 R19 K27 ["createActions"]
       86 CALL                             R18 1 1
       87 GETIMPORT                        R19 K5 [require]
       89 GETIMPORT                        R20 K1 [script]
       91 GETTABLEKS                       R20 R20 K28 ["createWidget"]
       93 CALL                             R19 1 1
       94 GETIMPORT                        R20 K31 [table.freeze]
       96 DUPTABLE                         R21 K36 [{["Type"] = "Separator", ["Size"] = "Large"}]
       97 CALL                             R20 1 1
       98 GETIMPORT                        R21 K5 [require]
      100 GETIMPORT                        R22 K1 [script]
      102 GETTABLEKS                       R22 R22 K37 ["AddToolsView"]
      104 CALL                             R21 1 1
      105 DUPCLOSURE                       R22 K38 [PROTO_4]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R20
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R19
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R21
      123 RETURN                           R22 1
