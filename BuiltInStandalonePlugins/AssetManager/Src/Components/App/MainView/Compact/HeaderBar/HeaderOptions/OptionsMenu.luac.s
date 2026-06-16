PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 2
        8 GETUPVAL                         R5 3
        9 MOVE                             R6 R4
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 4
       12 GETTABLEKS                       R6 R6 K1 ["useState"]
       14 LOADB                            R7 0
       15 CALL                             R6 1 2
       16 GETUPVAL                         R8 4
       17 GETTABLEKS                       R8 R8 K2 ["createElement"]
       19 GETUPVAL                         R9 5
       20 GETTABLEKS                       R9 R9 K3 ["IconButton"]
       22 DUPTABLE                         R10 K8 [{"icon", "variant", "size", "onActivated"}]
       23 GETUPVAL                         R11 5
       24 GETTABLEKS                       R11 R11 K9 ["Enums"]
       26 GETTABLEKS                       R11 R11 K10 ["IconName"]
       28 GETTABLEKS                       R11 R11 K11 ["ThreeDotsHorizontal"]
       30 SETTABLEKS                       R11 R10 K4 ["icon"]
       32 JUMPIFNOT                        R5 ; [+8]
       33 GETUPVAL                         R11 5
       34 GETTABLEKS                       R11 R11 K9 ["Enums"]
       36 GETTABLEKS                       R11 R11 K12 ["ButtonVariant"]
       38 GETTABLEKS                       R11 R11 K13 ["Emphasis"]
       40 JUMP                             ; [+7]
       41 GETUPVAL                         R11 5
       42 GETTABLEKS                       R11 R11 K9 ["Enums"]
       44 GETTABLEKS                       R11 R11 K12 ["ButtonVariant"]
       46 GETTABLEKS                       R11 R11 K14 ["Utility"]
       48 SETTABLEKS                       R11 R10 K5 ["variant"]
       50 GETUPVAL                         R11 5
       51 GETTABLEKS                       R11 R11 K9 ["Enums"]
       53 GETTABLEKS                       R11 R11 K15 ["InputSize"]
       55 GETTABLEKS                       R11 R11 K16 ["XSmall"]
       57 SETTABLEKS                       R11 R10 K6 ["size"]
       59 NEWCLOSURE                       R11 P0
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R6
       62 SETTABLEKS                       R11 R10 K7 ["onActivated"]
       64 CALL                             R8 2 1
       65 GETUPVAL                         R9 4
       66 GETTABLEKS                       R9 R9 K2 ["createElement"]
       68 GETUPVAL                         R10 5
       69 GETTABLEKS                       R10 R10 K17 ["Menu"]
       71 DUPTABLE                         R11 K25 [{"LayoutOrder", "isOpen", "items", "width", "size", "side", "align", "onPressedOutside"}]
       72 GETTABLEKS                       R12 R0 K18 ["LayoutOrder"]
       74 SETTABLEKS                       R12 R11 K18 ["LayoutOrder"]
       76 SETTABLEKS                       R6 R11 K19 ["isOpen"]
       78 SETTABLEKS                       R2 R11 K20 ["items"]
       80 GETIMPORT                        R12 K28 [UDim.new]
       82 LOADN                            R13 0
       83 GETUPVAL                         R14 6
       84 GETTABLEKS                       R14 R14 K29 ["CompactOptionsMenuWidth"]
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K21 ["width"]
       89 GETUPVAL                         R12 5
       90 GETTABLEKS                       R12 R12 K9 ["Enums"]
       92 GETTABLEKS                       R12 R12 K15 ["InputSize"]
       94 GETTABLEKS                       R12 R12 K16 ["XSmall"]
       96 SETTABLEKS                       R12 R11 K6 ["size"]
       98 GETUPVAL                         R12 5
       99 GETTABLEKS                       R12 R12 K9 ["Enums"]
      101 GETTABLEKS                       R12 R12 K30 ["PopoverSide"]
      103 GETTABLEKS                       R12 R12 K31 ["Bottom"]
      105 SETTABLEKS                       R12 R11 K22 ["side"]
      107 GETUPVAL                         R12 5
      108 GETTABLEKS                       R12 R12 K9 ["Enums"]
      110 GETTABLEKS                       R12 R12 K32 ["PopoverAlign"]
      112 GETTABLEKS                       R12 R12 K33 ["Start"]
      114 SETTABLEKS                       R12 R11 K23 ["align"]
      116 NEWCLOSURE                       R12 P1
      117 CAPTURE                          VAL R7
      118 SETTABLEKS                       R12 R11 K24 ["onPressedOutside"]
      120 GETUPVAL                         R12 4
      121 GETTABLEKS                       R12 R12 K2 ["createElement"]
      123 GETUPVAL                         R13 5
      124 GETTABLEKS                       R13 R13 K34 ["Tooltip"]
      126 DUPTABLE                         R14 K36 [{"title", "side", "align"}]
      127 LOADK                            R17 K34 ["Tooltip"]
      128 LOADK                            R18 K37 ["CompactOptions"]
      129 NAMECALL                         R15 R1 K38 ["getText"]
      131 CALL                             R15 3 1
      132 SETTABLEKS                       R15 R14 K35 ["title"]
      134 GETUPVAL                         R15 5
      135 GETTABLEKS                       R15 R15 K9 ["Enums"]
      137 GETTABLEKS                       R15 R15 K30 ["PopoverSide"]
      139 GETTABLEKS                       R15 R15 K31 ["Bottom"]
      141 SETTABLEKS                       R15 R14 K22 ["side"]
      143 GETUPVAL                         R15 5
      144 GETTABLEKS                       R15 R15 K9 ["Enums"]
      146 GETTABLEKS                       R15 R15 K32 ["PopoverAlign"]
      148 GETTABLEKS                       R15 R15 K33 ["Start"]
      150 SETTABLEKS                       R15 R14 K23 ["align"]
      152 MOVE                             R15 R8
      153 CALL                             R12 3 -1
      154 CALL                             R9 -1 -1
      155 RETURN                           R9 -1

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
       36 GETTABLEKS                       R7 R7 K13 ["Resources"]
       38 GETTABLEKS                       R7 R7 K14 ["StyleConstants"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Util"]
       47 GETTABLEKS                       R8 R8 K16 ["hasActiveFilters"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Hooks"]
       56 GETTABLEKS                       R9 R9 K18 ["useCompactHeaderOptions"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K19 ["useSortFilter"]
       67 CALL                             R9 1 1
       68 DUPCLOSURE                       R10 K20 [PROTO_2]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R6
       76 RETURN                           R10 1
