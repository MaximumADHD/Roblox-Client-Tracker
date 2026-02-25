PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["backHistory"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["forwardHistory"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 2
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R5 R6 K1 ["createElement"]
       13 GETUPVAL                         R7 4
       14 GETTABLEKS                       R6 R7 K2 ["View"]
       16 DUPTABLE                         R7 K5 [{"LayoutOrder", "tag"}]
       17 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       19 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       21 LOADK                            R8 K6 ["size-0 auto-xy row"]
       22 SETTABLEKS                       R8 R7 K4 ["tag"]
       24 DUPTABLE                         R8 K9 [{"BackButton", "ForwardButton"}]
       25 GETUPVAL                         R10 3
       26 GETTABLEKS                       R9 R10 K1 ["createElement"]
       28 GETUPVAL                         R11 4
       29 GETTABLEKS                       R10 R11 K10 ["Tooltip"]
       31 DUPTABLE                         R11 K13 [{"LayoutOrder", "title", "side"}]
       32 LOADN                            R12 1
       33 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       35 LOADK                            R14 K14 ["Navigation"]
       36 LOADK                            R15 K15 ["GoBack"]
       37 NAMECALL                         R12 R1 K16 ["getText"]
       39 CALL                             R12 3 1
       40 SETTABLEKS                       R12 R11 K11 ["title"]
       42 GETUPVAL                         R15 4
       43 GETTABLEKS                       R14 R15 K17 ["Enums"]
       45 GETTABLEKS                       R13 R14 K18 ["PopoverSide"]
       47 GETTABLEKS                       R12 R13 K19 ["Bottom"]
       49 SETTABLEKS                       R12 R11 K12 ["side"]
       51 GETUPVAL                         R13 3
       52 GETTABLEKS                       R12 R13 K1 ["createElement"]
       54 GETUPVAL                         R14 4
       55 GETTABLEKS                       R13 R14 K20 ["IconButton"]
       57 DUPTABLE                         R14 K25 [{"icon", "size", "onActivated", "isDisabled"}]
       58 GETUPVAL                         R18 4
       59 GETTABLEKS                       R17 R18 K17 ["Enums"]
       61 GETTABLEKS                       R16 R17 K26 ["IconName"]
       63 GETTABLEKS                       R15 R16 K27 ["ChevronLargeLeft"]
       65 SETTABLEKS                       R15 R14 K21 ["icon"]
       67 GETUPVAL                         R18 4
       68 GETTABLEKS                       R17 R18 K17 ["Enums"]
       70 GETTABLEKS                       R16 R17 K28 ["IconSize"]
       72 GETTABLEKS                       R15 R16 K29 ["XSmall"]
       74 SETTABLEKS                       R15 R14 K22 ["size"]
       76 NEWCLOSURE                       R15 P0
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R15 R14 K23 ["onActivated"]
       80 SETTABLEKS                       R3 R14 K24 ["isDisabled"]
       82 CALL                             R12 2 -1
       83 CALL                             R9 -1 1
       84 SETTABLEKS                       R9 R8 K7 ["BackButton"]
       86 GETUPVAL                         R10 3
       87 GETTABLEKS                       R9 R10 K1 ["createElement"]
       89 GETUPVAL                         R11 4
       90 GETTABLEKS                       R10 R11 K10 ["Tooltip"]
       92 DUPTABLE                         R11 K13 [{"LayoutOrder", "title", "side"}]
       93 LOADN                            R12 2
       94 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       96 LOADK                            R14 K14 ["Navigation"]
       97 LOADK                            R15 K30 ["GoForward"]
       98 NAMECALL                         R12 R1 K16 ["getText"]
      100 CALL                             R12 3 1
      101 SETTABLEKS                       R12 R11 K11 ["title"]
      103 GETUPVAL                         R15 4
      104 GETTABLEKS                       R14 R15 K17 ["Enums"]
      106 GETTABLEKS                       R13 R14 K18 ["PopoverSide"]
      108 GETTABLEKS                       R12 R13 K19 ["Bottom"]
      110 SETTABLEKS                       R12 R11 K12 ["side"]
      112 GETUPVAL                         R13 3
      113 GETTABLEKS                       R12 R13 K1 ["createElement"]
      115 GETUPVAL                         R14 4
      116 GETTABLEKS                       R13 R14 K20 ["IconButton"]
      118 DUPTABLE                         R14 K25 [{"icon", "size", "onActivated", "isDisabled"}]
      119 GETUPVAL                         R18 4
      120 GETTABLEKS                       R17 R18 K17 ["Enums"]
      122 GETTABLEKS                       R16 R17 K26 ["IconName"]
      124 GETTABLEKS                       R15 R16 K31 ["ChevronLargeRight"]
      126 SETTABLEKS                       R15 R14 K21 ["icon"]
      128 GETUPVAL                         R18 4
      129 GETTABLEKS                       R17 R18 K17 ["Enums"]
      131 GETTABLEKS                       R16 R17 K28 ["IconSize"]
      133 GETTABLEKS                       R15 R16 K29 ["XSmall"]
      135 SETTABLEKS                       R15 R14 K22 ["size"]
      137 NEWCLOSURE                       R15 P1
      138 CAPTURE                          VAL R2
      139 SETTABLEKS                       R15 R14 K23 ["onActivated"]
      141 SETTABLEKS                       R4 R14 K24 ["isDisabled"]
      143 CALL                             R12 2 -1
      144 CALL                             R9 -1 1
      145 SETTABLEKS                       R9 R8 K8 ["ForwardButton"]
      147 CALL                             R5 3 -1
      148 RETURN                           R5 -1

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
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R8 K14 ["ExplorerController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R9 K16 ["useCurrentScopeHistory"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K17 [PROTO_2]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 RETURN                           R8 1
