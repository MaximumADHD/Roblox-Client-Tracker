PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["focus"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["current"]
       13 GETTABLEKS                       R0 R1 K2 ["setSelectionStart"]
       15 LOADN                            R1 0
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOT                        R2 ; [+14]
        1 GETTABLEKS                       R3 R2 K0 ["KeyCode"]
        3 GETIMPORT                        R4 K3 [Enum.KeyCode.Escape]
        5 JUMPIFNOTEQ                      R3 R4 ; [+9]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K4 ["InitialText"]
       11 NAMECALL                         R3 R3 K5 ["renamePlace"]
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 0
       16 GETUPVAL                         R5 2
       17 NAMECALL                         R3 R3 K5 ["renamePlace"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useRef"]
        7 LOADNIL                          R3
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["useState"]
       12 GETTABLEKS                       R4 R0 K3 ["InitialText"]
       14 CALL                             R3 1 2
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K4 ["useEffect"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R7 0 0
       22 CALL                             R5 2 0
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R5 R6 K5 ["createElement"]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K6 ["View"]
       29 DUPTABLE                         R7 K10 [{"LayoutOrder", "Size", "tag"}]
       30 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       32 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       34 GETIMPORT                        R8 K13 [UDim2.new]
       36 GETTABLEKS                       R11 R0 K8 ["Size"]
       38 GETTABLEKS                       R10 R11 K14 ["X"]
       40 GETTABLEKS                       R9 R10 K15 ["Scale"]
       42 GETTABLEKS                       R12 R0 K8 ["Size"]
       44 GETTABLEKS                       R11 R12 K14 ["X"]
       46 GETTABLEKS                       R10 R11 K16 ["Offset"]
       48 LOADN                            R11 0
       49 LOADN                            R12 0
       50 CALL                             R8 4 1
       51 SETTABLEKS                       R8 R7 K8 ["Size"]
       53 LOADK                            R8 K17 ["auto-y padding-left-xsmall padding-right-small"]
       54 SETTABLEKS                       R8 R7 K9 ["tag"]
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R8 R9 K5 ["createElement"]
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R9 R10 K18 ["TextInput"]
       62 DUPTABLE                         R10 K27 [{"LayoutOrder", "label", "placeholder", "text", "onChanged", "textBoxRef", "onFocusLost", "size", "width"}]
       63 GETTABLEKS                       R11 R0 K7 ["LayoutOrder"]
       65 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       67 LOADK                            R11 K28 [""]
       68 SETTABLEKS                       R11 R10 K19 ["label"]
       70 LOADK                            R11 K28 [""]
       71 SETTABLEKS                       R11 R10 K20 ["placeholder"]
       73 SETTABLEKS                       R3 R10 K21 ["text"]
       75 SETTABLEKS                       R4 R10 K22 ["onChanged"]
       77 SETTABLEKS                       R2 R10 K23 ["textBoxRef"]
       79 NEWCLOSURE                       R11 P1
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R11 R10 K24 ["onFocusLost"]
       85 GETUPVAL                         R14 2
       86 GETTABLEKS                       R13 R14 K29 ["Enums"]
       88 GETTABLEKS                       R12 R13 K30 ["InputSize"]
       90 GETTABLEKS                       R11 R12 K31 ["XSmall"]
       92 SETTABLEKS                       R11 R10 K25 ["size"]
       94 GETIMPORT                        R11 K33 [UDim.new]
       96 LOADN                            R12 1
       97 LOADN                            R13 0
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K26 ["width"]
      101 CALL                             R8 2 -1
      102 CALL                             R5 -1 -1
      103 RETURN                           R5 -1

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
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Controllers"]
       27 GETTABLEKS                       R4 R5 K11 ["PluginController"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_2]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 RETURN                           R4 1
