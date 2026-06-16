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
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onSearchActivated"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useEventCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K3 ["createNextOrder"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["useState"]
       20 LOADK                            R5 K5 [""]
       21 CALL                             R4 1 2
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R0
       28 NEWTABLE                         R8 0 1
       30 GETTABLEKS                       R9 R0 K7 ["onSearchActivated"]
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K8 ["createElement"]
       38 GETUPVAL                         R8 3
       39 DUPTABLE                         R9 K11 [{"tag", "onAbsoluteSizeChanged"}]
       40 LOADK                            R10 K12 ["size-full-full col align-y-top bg-surface-200 search-root"]
       41 SETTABLEKS                       R10 R9 K9 ["tag"]
       43 SETTABLEKS                       R2 R9 K10 ["onAbsoluteSizeChanged"]
       45 DUPTABLE                         R10 K15 [{"SearchContainer", "InputTree"}]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R11 R11 K8 ["createElement"]
       49 GETUPVAL                         R12 3
       50 DUPTABLE                         R13 K17 [{"LayoutOrder", "tag"}]
       51 MOVE                             R14 R3
       52 CALL                             R14 0 1
       53 SETTABLEKS                       R14 R13 K16 ["LayoutOrder"]
       55 LOADK                            R14 K18 ["size-full-0 auto-y padding-small"]
       56 SETTABLEKS                       R14 R13 K9 ["tag"]
       58 DUPTABLE                         R14 K20 [{"SearchBar"}]
       59 GETUPVAL                         R15 0
       60 GETTABLEKS                       R15 R15 K8 ["createElement"]
       62 GETUPVAL                         R16 4
       63 DUPTABLE                         R17 K26 [{"text", "onChanged", "placeholder", "width", "testId"}]
       64 SETTABLEKS                       R4 R17 K21 ["text"]
       66 SETTABLEKS                       R6 R17 K22 ["onChanged"]
       68 LOADK                            R18 K27 ["Search"]
       69 SETTABLEKS                       R18 R17 K23 ["placeholder"]
       71 GETIMPORT                        R18 K30 [UDim.new]
       73 LOADN                            R19 1
       74 LOADN                            R20 0
       75 CALL                             R18 2 1
       76 SETTABLEKS                       R18 R17 K24 ["width"]
       78 LOADK                            R18 K31 ["search-bar"]
       79 SETTABLEKS                       R18 R17 K25 ["testId"]
       81 CALL                             R15 2 1
       82 SETTABLEKS                       R15 R14 K19 ["SearchBar"]
       84 CALL                             R11 3 1
       85 SETTABLEKS                       R11 R10 K13 ["SearchContainer"]
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R11 R11 K8 ["createElement"]
       90 GETUPVAL                         R12 5
       91 DUPTABLE                         R13 K32 [{"LayoutOrder"}]
       92 MOVE                             R14 R3
       93 CALL                             R14 0 1
       94 SETTABLEKS                       R14 R13 K16 ["LayoutOrder"]
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K14 ["InputTree"]
       99 CALL                             R7 3 -1
      100 RETURN                           R7 -1

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
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETTABLEKS                       R5 R3 K11 ["SearchInput"]
       32 GETTABLEKS                       R6 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Components"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K14 ["Tree"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R8 R0 K12 ["Src"]
       43 GETTABLEKS                       R8 R8 K15 ["Contexts"]
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R8 K16 ["PluginConfiguration"]
       49 CALL                             R9 1 1
       50 DUPCLOSURE                       R10 K17 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R7
       57 RETURN                           R10 1
