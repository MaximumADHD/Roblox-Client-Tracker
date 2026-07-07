PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onSizeChanged"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onSizeChanged"]
        7 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onInputKeycode"]
        3 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onInputKeycode"]
        3 GETTABLEKS                       R2 R0 K1 ["KeyCode"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K0 ["InputBegan"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R0 R0 K1 ["Connect"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["InputChanged"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R1 R1 K1 ["Connect"]
       18 CALL                             R1 2 1
       19 NEWCLOSURE                       R2 P2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["useContext"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K1 ["Context"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 4
       22 GETTABLEKS                       R3 R3 K2 ["useEventCallback"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R2
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K3 ["createNextOrder"]
       30 CALL                             R4 0 1
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K4 ["useState"]
       34 LOADNIL                          R6
       35 CALL                             R5 1 2
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R9 0 2
       44 MOVE                             R10 R5
       45 GETTABLEKS                       R11 R2 K6 ["onInputKeycode"]
       47 SETLIST                          R9 R10 2 [1]
       49 CALL                             R7 2 0
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K7 ["createElement"]
       53 GETUPVAL                         R8 5
       54 DUPTABLE                         R9 K14 [{["ref"], ["tag"] = "col align-y-top size-full-full bg-surface-200", ["testId"] = "root", ["onAbsoluteSizeChanged"]}]
       55 SETTABLEKS                       R6 R9 K8 ["ref"]
       57 SETTABLEKS                       R3 R9 K13 ["onAbsoluteSizeChanged"]
       59 DUPTABLE                         R10 K17 [{"SearchContainer", "InputTree"}]
       60 GETUPVAL                         R11 0
       61 GETTABLEKS                       R11 R11 K7 ["createElement"]
       63 GETUPVAL                         R12 5
       64 DUPTABLE                         R13 K20 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-small"}]
       65 MOVE                             R14 R4
       66 CALL                             R14 0 1
       67 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
       69 DUPTABLE                         R14 K22 [{"SearchBar"}]
       70 GETUPVAL                         R15 0
       71 GETTABLEKS                       R15 R15 K7 ["createElement"]
       73 GETUPVAL                         R16 6
       74 DUPTABLE                         R17 K28 [{["text"], ["onChanged"], ["placeholder"], ["width"], ["testId"] = "search-bar"}]
       75 GETTABLEKS                       R18 R1 K29 ["searchString"]
       77 SETTABLEKS                       R18 R17 K23 ["text"]
       79 GETTABLEKS                       R18 R1 K30 ["setSearchString"]
       81 SETTABLEKS                       R18 R17 K24 ["onChanged"]
       83 LOADK                            R20 K31 ["Header"]
       84 LOADK                            R21 K32 ["Search"]
       85 NAMECALL                         R18 R0 K33 ["getText"]
       87 CALL                             R18 3 1
       88 SETTABLEKS                       R18 R17 K25 ["placeholder"]
       90 GETIMPORT                        R18 K36 [UDim.new]
       92 LOADN                            R19 1
       93 LOADN                            R20 0
       94 CALL                             R18 2 1
       95 SETTABLEKS                       R18 R17 K26 ["width"]
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K21 ["SearchBar"]
      100 CALL                             R11 3 1
      101 SETTABLEKS                       R11 R10 K15 ["SearchContainer"]
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K7 ["createElement"]
      106 GETUPVAL                         R12 7
      107 DUPTABLE                         R13 K37 [{"LayoutOrder"}]
      108 MOVE                             R14 R4
      109 CALL                             R14 0 1
      110 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
      112 CALL                             R11 2 1
      113 SETTABLEKS                       R11 R10 K16 ["InputTree"]
      115 CALL                             R7 3 -1
      116 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Contexts"]
       37 GETTABLEKS                       R5 R5 K12 ["Localization"]
       39 GETTABLEKS                       R6 R3 K13 ["View"]
       41 GETTABLEKS                       R7 R3 K14 ["SearchInput"]
       43 GETTABLEKS                       R8 R0 K15 ["Src"]
       45 GETTABLEKS                       R8 R8 K16 ["Components"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R8 K17 ["Tree"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R10 R0 K15 ["Src"]
       54 GETTABLEKS                       R10 R10 K11 ["Contexts"]
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R10 K18 ["FilterConfiguration"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R10 K19 ["PluginConfiguration"]
       65 CALL                             R12 1 1
       66 DUPCLOSURE                       R13 K20 [PROTO_5]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 RETURN                           R13 1
