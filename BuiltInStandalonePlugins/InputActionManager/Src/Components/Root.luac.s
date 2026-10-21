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
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADNIL                          R2
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["useContext"]
       22 GETUPVAL                         R3 4
       23 GETTABLEKS                       R3 R3 K1 ["Context"]
       25 CALL                             R2 1 1
       26 LOADNIL                          R3
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R4 R4 K2 ["createUnimplemented"]
       30 LOADK                            R5 K3 ["onAbsoluteSizeChanged"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 5
       33 GETTABLEKS                       R5 R5 K2 ["createUnimplemented"]
       35 LOADK                            R6 K4 ["setRootInstance"]
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 3
       38 CALL                             R6 0 1
       39 JUMPIF                           R6 ; [+46]
       40 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       42 MOVE                             R7 R2
       43 LOADK                            R8 K5 ["pluginConfiguration must be provided"]
       44 GETIMPORT                        R6 K7 [assert]
       46 CALL                             R6 2 0
       47 GETUPVAL                         R6 5
       48 GETTABLEKS                       R6 R6 K8 ["useEventCallback"]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R2
       52 CALL                             R6 1 1
       53 MOVE                             R4 R6
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K9 ["useState"]
       57 LOADNIL                          R7
       58 CALL                             R6 1 2
       59 MOVE                             R3 R6
       60 MOVE                             R5 R7
       61 GETUPVAL                         R6 3
       62 CALL                             R6 0 1
       63 JUMPIF                           R6 ; [+22]
       64 GETTABLEKS                       R7 R2 K10 ["onInputKeycode"]
       66 FASTCALL2K                       ASSERT R7 K11 ; [+4]
       68 LOADK                            R8 K11 ["onInputKeycode must be provided"]
       69 GETIMPORT                        R6 K7 [assert]
       71 CALL                             R6 2 0
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K12 ["useEffect"]
       75 NEWCLOSURE                       R7 P1
       76 CAPTURE                          REF R3
       77 CAPTURE                          VAL R2
       78 NEWTABLE                         R8 0 2
       80 MOVE                             R9 R3
       81 GETTABLEKS                       R10 R2 K10 ["onInputKeycode"]
       83 SETLIST                          R8 R9 2 [1]
       85 CALL                             R6 2 0
       86 GETUPVAL                         R6 5
       87 GETTABLEKS                       R6 R6 K13 ["createNextOrder"]
       89 CALL                             R6 0 1
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R7 R7 K14 ["createElement"]
       93 GETUPVAL                         R8 6
       94 DUPTABLE                         R9 K20 [{["ref"], ["tag"] = "col align-y-top size-full-full bg-surface-200", ["testId"] = "root", ["onAbsoluteSizeChanged"]}]
       95 GETUPVAL                         R11 3
       96 CALL                             R11 0 1
       97 JUMPIFNOT                        R11 ; [+2]
       98 LOADNIL                          R10
       99 JUMP                             ; [+1]
      100 MOVE                             R10 R5
      101 SETTABLEKS                       R10 R9 K15 ["ref"]
      103 GETUPVAL                         R11 3
      104 CALL                             R11 0 1
      105 JUMPIFNOT                        R11 ; [+2]
      106 LOADNIL                          R10
      107 JUMP                             ; [+1]
      108 MOVE                             R10 R4
      109 SETTABLEKS                       R10 R9 K3 ["onAbsoluteSizeChanged"]
      111 DUPTABLE                         R10 K23 [{"SearchContainer", "InputTree"}]
      112 GETUPVAL                         R11 0
      113 GETTABLEKS                       R11 R11 K14 ["createElement"]
      115 GETUPVAL                         R12 6
      116 DUPTABLE                         R13 K26 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-small"}]
      117 MOVE                             R14 R6
      118 CALL                             R14 0 1
      119 SETTABLEKS                       R14 R13 K24 ["LayoutOrder"]
      121 DUPTABLE                         R14 K28 [{"SearchBar"}]
      122 GETUPVAL                         R15 0
      123 GETTABLEKS                       R15 R15 K14 ["createElement"]
      125 GETUPVAL                         R16 7
      126 DUPTABLE                         R17 K34 [{["text"], ["onChanged"], ["placeholder"], ["width"], ["testId"] = "search-bar"}]
      127 GETTABLEKS                       R18 R1 K35 ["searchString"]
      129 SETTABLEKS                       R18 R17 K29 ["text"]
      131 GETTABLEKS                       R18 R1 K36 ["setSearchString"]
      133 SETTABLEKS                       R18 R17 K30 ["onChanged"]
      135 LOADK                            R20 K37 ["Header"]
      136 LOADK                            R21 K38 ["Search"]
      137 NAMECALL                         R18 R0 K39 ["getText"]
      139 CALL                             R18 3 1
      140 SETTABLEKS                       R18 R17 K31 ["placeholder"]
      142 GETIMPORT                        R18 K42 [UDim.new]
      144 LOADN                            R19 1
      145 LOADN                            R20 0
      146 CALL                             R18 2 1
      147 SETTABLEKS                       R18 R17 K32 ["width"]
      149 CALL                             R15 2 1
      150 SETTABLEKS                       R15 R14 K27 ["SearchBar"]
      152 CALL                             R11 3 1
      153 SETTABLEKS                       R11 R10 K21 ["SearchContainer"]
      155 GETUPVAL                         R11 0
      156 GETTABLEKS                       R11 R11 K14 ["createElement"]
      158 GETUPVAL                         R12 8
      159 DUPTABLE                         R13 K43 [{"LayoutOrder"}]
      160 MOVE                             R14 R6
      161 CALL                             R14 0 1
      162 SETTABLEKS                       R14 R13 K24 ["LayoutOrder"]
      164 CALL                             R11 2 1
      165 SETTABLEKS                       R11 R10 K22 ["InputTree"]
      167 CALL                             R7 3 -1
      168 CLOSEUPVALS                      R3
      169 RETURN                           R7 -1

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
       66 GETTABLEKS                       R13 R0 K15 ["Src"]
       68 GETTABLEKS                       R13 R13 K20 ["Flags"]
       70 GETIMPORT                        R14 K5 [require]
       72 GETTABLEKS                       R15 R13 K21 ["getFFlagIAMRefactorPluginConfiguration"]
       74 CALL                             R14 1 1
       75 DUPCLOSURE                       R15 K22 [PROTO_5]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R9
       85 RETURN                           R15 1
