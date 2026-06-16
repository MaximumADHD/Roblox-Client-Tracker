PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 2
       10 CALL                             R4 0 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["createElement"]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K3 ["Menu"]
       17 DUPTABLE                         R7 K10 [{"LayoutOrder", "isOpen", "items", "size", "width", "onPressedOutside"}]
       18 GETTABLEKS                       R8 R0 K4 ["LayoutOrder"]
       20 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       22 SETTABLEKS                       R2 R7 K5 ["isOpen"]
       24 SETTABLEKS                       R4 R7 K6 ["items"]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K11 ["Enums"]
       29 GETTABLEKS                       R8 R8 K12 ["InputSize"]
       31 GETTABLEKS                       R8 R8 K13 ["XSmall"]
       33 SETTABLEKS                       R8 R7 K7 ["size"]
       35 GETIMPORT                        R8 K16 [UDim.new]
       37 LOADN                            R9 0
       38 GETUPVAL                         R10 4
       39 GETTABLEKS                       R10 R10 K17 ["SortOptionsWidth"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K8 ["width"]
       44 NEWCLOSURE                       R8 P0
       45 CAPTURE                          VAL R3
       46 SETTABLEKS                       R8 R7 K9 ["onPressedOutside"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K2 ["createElement"]
       51 GETUPVAL                         R9 3
       52 GETTABLEKS                       R9 R9 K18 ["Tooltip"]
       54 DUPTABLE                         R10 K21 [{"title", "side"}]
       55 LOADK                            R13 K22 ["HeaderBar"]
       56 LOADK                            R14 K23 ["SortTooltip"]
       57 NAMECALL                         R11 R1 K24 ["getText"]
       59 CALL                             R11 3 1
       60 SETTABLEKS                       R11 R10 K19 ["title"]
       62 GETUPVAL                         R11 3
       63 GETTABLEKS                       R11 R11 K11 ["Enums"]
       65 GETTABLEKS                       R11 R11 K25 ["PopoverSide"]
       67 GETTABLEKS                       R11 R11 K26 ["Bottom"]
       69 SETTABLEKS                       R11 R10 K20 ["side"]
       71 NEWTABLE                         R11 0 1
       73 GETUPVAL                         R12 1
       74 GETTABLEKS                       R12 R12 K2 ["createElement"]
       76 GETUPVAL                         R13 3
       77 GETTABLEKS                       R13 R13 K27 ["IconButton"]
       79 DUPTABLE                         R14 K31 [{"onActivated", "variant", "size", "icon"}]
       80 NEWCLOSURE                       R15 P1
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R2
       83 SETTABLEKS                       R15 R14 K28 ["onActivated"]
       85 GETUPVAL                         R15 3
       86 GETTABLEKS                       R15 R15 K11 ["Enums"]
       88 GETTABLEKS                       R15 R15 K32 ["ButtonVariant"]
       90 GETTABLEKS                       R15 R15 K33 ["Utility"]
       92 SETTABLEKS                       R15 R14 K29 ["variant"]
       94 GETUPVAL                         R15 3
       95 GETTABLEKS                       R15 R15 K11 ["Enums"]
       97 GETTABLEKS                       R15 R15 K12 ["InputSize"]
       99 GETTABLEKS                       R15 R15 K13 ["XSmall"]
      101 SETTABLEKS                       R15 R14 K7 ["size"]
      103 GETUPVAL                         R15 3
      104 GETTABLEKS                       R15 R15 K11 ["Enums"]
      106 GETTABLEKS                       R15 R15 K34 ["IconName"]
      108 GETTABLEKS                       R15 R15 K35 ["TwoArrowsDownAndUp"]
      110 SETTABLEKS                       R15 R14 K30 ["icon"]
      112 CALL                             R12 2 -1
      113 SETLIST                          R11 R12 -1 [1]
      115 CALL                             R8 3 -1
      116 CALL                             R5 -1 -1
      117 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       38 GETTABLEKS                       R7 R7 K14 ["useGridSortOptions"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Resources"]
       47 GETTABLEKS                       R8 R8 K16 ["StyleConstants"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K17 [PROTO_2]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R7
       56 RETURN                           R8 1
