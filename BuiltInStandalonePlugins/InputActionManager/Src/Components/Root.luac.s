PROTO_0:
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
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K2 ["createNextOrder"]
       17 CALL                             R2 0 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K3 ["createElement"]
       21 GETUPVAL                         R4 4
       22 DUPTABLE                         R5 K8 [{["tag"] = "col align-y-top size-full-full bg-surface-200", ["testId"] = "root"}]
       23 DUPTABLE                         R6 K11 [{"SearchContainer", "InputTree"}]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K3 ["createElement"]
       27 GETUPVAL                         R8 4
       28 DUPTABLE                         R9 K14 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-small"}]
       29 MOVE                             R10 R2
       30 CALL                             R10 0 1
       31 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       33 DUPTABLE                         R10 K16 [{"SearchBar"}]
       34 GETUPVAL                         R11 0
       35 GETTABLEKS                       R11 R11 K3 ["createElement"]
       37 GETUPVAL                         R12 5
       38 DUPTABLE                         R13 K22 [{["text"], ["onChanged"], ["placeholder"], ["width"], ["testId"] = "search-bar"}]
       39 GETTABLEKS                       R14 R1 K23 ["searchString"]
       41 SETTABLEKS                       R14 R13 K17 ["text"]
       43 GETTABLEKS                       R14 R1 K24 ["setSearchString"]
       45 SETTABLEKS                       R14 R13 K18 ["onChanged"]
       47 LOADK                            R16 K25 ["Header"]
       48 LOADK                            R17 K26 ["Search"]
       49 NAMECALL                         R14 R0 K27 ["getText"]
       51 CALL                             R14 3 1
       52 SETTABLEKS                       R14 R13 K19 ["placeholder"]
       54 GETIMPORT                        R14 K30 [UDim.new]
       56 LOADN                            R15 1
       57 LOADN                            R16 0
       58 CALL                             R14 2 1
       59 SETTABLEKS                       R14 R13 K20 ["width"]
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K15 ["SearchBar"]
       64 CALL                             R7 3 1
       65 SETTABLEKS                       R7 R6 K9 ["SearchContainer"]
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R7 R7 K3 ["createElement"]
       70 GETUPVAL                         R8 6
       71 DUPTABLE                         R9 K31 [{"LayoutOrder"}]
       72 MOVE                             R10 R2
       73 CALL                             R10 0 1
       74 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       76 CALL                             R7 2 1
       77 SETTABLEKS                       R7 R6 K10 ["InputTree"]
       79 CALL                             R3 3 -1
       80 RETURN                           R3 -1

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
       61 DUPCLOSURE                       R12 K19 [PROTO_0]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R9
       69 RETURN                           R12 1
