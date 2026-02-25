PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEN                        R4 R0 1
        3 GETUPVAL                         R5 2
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSortFilterChanged"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R5 R0 K1 ["getSorts"]
        6 CALL                             R5 1 1
        7 GETTABLEN                        R4 R5 1
        8 MOVE                             R5 R1
        9 CALL                             R3 2 -1
       10 CALL                             R2 -1 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K2 ["useEffect"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R0
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 0
       25 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["addSort"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K1 ["useState"]
       11 LOADB                            R4 0
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 3
       14 MOVE                             R6 R2
       15 MOVE                             R7 R1
       16 CALL                             R5 2 1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R6 R7 K2 ["createElement"]
       20 GETUPVAL                         R8 4
       21 GETTABLEKS                       R7 R8 K3 ["Menu"]
       23 DUPTABLE                         R8 K11 [{"LayoutOrder", "isOpen", "items", "size", "width", "onPressedOutside", "onActivated"}]
       24 GETTABLEKS                       R9 R0 K4 ["LayoutOrder"]
       26 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       28 SETTABLEKS                       R3 R8 K5 ["isOpen"]
       30 SETTABLEKS                       R5 R8 K6 ["items"]
       32 GETUPVAL                         R12 4
       33 GETTABLEKS                       R11 R12 K12 ["Enums"]
       35 GETTABLEKS                       R10 R11 K13 ["InputSize"]
       37 GETTABLEKS                       R9 R10 K14 ["XSmall"]
       39 SETTABLEKS                       R9 R8 K7 ["size"]
       41 GETIMPORT                        R9 K17 [UDim.new]
       43 LOADN                            R10 0
       44 GETUPVAL                         R12 5
       45 GETTABLEKS                       R11 R12 K18 ["AMR_SORTOPTIONS_WIDTH"]
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K8 ["width"]
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R9 R8 K9 ["onPressedOutside"]
       54 NEWCLOSURE                       R9 P1
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R9 R8 K10 ["onActivated"]
       58 NEWTABLE                         R9 0 1
       60 GETUPVAL                         R11 2
       61 GETTABLEKS                       R10 R11 K2 ["createElement"]
       63 GETUPVAL                         R12 4
       64 GETTABLEKS                       R11 R12 K19 ["Tooltip"]
       66 DUPTABLE                         R12 K22 [{"title", "side"}]
       67 LOADK                            R15 K23 ["HeaderBar"]
       68 LOADK                            R16 K24 ["SortTooltip"]
       69 NAMECALL                         R13 R1 K25 ["getText"]
       71 CALL                             R13 3 1
       72 SETTABLEKS                       R13 R12 K20 ["title"]
       74 GETUPVAL                         R16 4
       75 GETTABLEKS                       R15 R16 K12 ["Enums"]
       77 GETTABLEKS                       R14 R15 K26 ["PopoverSide"]
       79 GETTABLEKS                       R13 R14 K27 ["Bottom"]
       81 SETTABLEKS                       R13 R12 K21 ["side"]
       83 NEWTABLE                         R13 0 1
       85 GETUPVAL                         R15 2
       86 GETTABLEKS                       R14 R15 K2 ["createElement"]
       88 GETUPVAL                         R16 4
       89 GETTABLEKS                       R15 R16 K28 ["IconButton"]
       91 DUPTABLE                         R16 K31 [{"onActivated", "variant", "size", "icon"}]
       92 NEWCLOSURE                       R17 P2
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R3
       95 SETTABLEKS                       R17 R16 K10 ["onActivated"]
       97 GETUPVAL                         R20 4
       98 GETTABLEKS                       R19 R20 K12 ["Enums"]
      100 GETTABLEKS                       R18 R19 K32 ["ButtonVariant"]
      102 GETTABLEKS                       R17 R18 K33 ["Utility"]
      104 SETTABLEKS                       R17 R16 K29 ["variant"]
      106 GETUPVAL                         R20 4
      107 GETTABLEKS                       R19 R20 K12 ["Enums"]
      109 GETTABLEKS                       R18 R19 K13 ["InputSize"]
      111 GETTABLEKS                       R17 R18 K14 ["XSmall"]
      113 SETTABLEKS                       R17 R16 K7 ["size"]
      115 GETUPVAL                         R20 4
      116 GETTABLEKS                       R19 R20 K12 ["Enums"]
      118 GETTABLEKS                       R18 R19 K34 ["IconName"]
      120 GETTABLEKS                       R17 R18 K35 ["TwoArrowsDownAndUp"]
      122 SETTABLEKS                       R17 R16 K30 ["icon"]
      124 CALL                             R14 2 -1
      125 SETLIST                          R13 R14 -1 [1]
      127 CALL                             R10 3 -1
      128 SETLIST                          R9 R10 -1 [1]
      130 CALL                             R6 3 -1
      131 RETURN                           R6 -1

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
       38 GETTABLEKS                       R7 R8 K14 ["ItemsController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Util"]
       47 GETTABLEKS                       R8 R9 K16 ["createGridSortItems"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K12 ["Src"]
       54 GETTABLEKS                       R10 R11 K17 ["Resources"]
       56 GETTABLEKS                       R9 R10 K18 ["StyleConstants"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K19 [PROTO_3]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R7
       62 DUPCLOSURE                       R10 K20 [PROTO_7]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R8
       69 RETURN                           R10 1
