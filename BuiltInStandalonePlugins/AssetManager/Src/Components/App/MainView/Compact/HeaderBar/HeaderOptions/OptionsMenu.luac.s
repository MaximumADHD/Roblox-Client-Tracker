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
       12 CALL                             R6 0 3
       13 GETUPVAL                         R9 5
       14 GETTABLEKS                       R9 R9 K1 ["useState"]
       16 LOADB                            R10 0
       17 CALL                             R9 1 2
       18 GETUPVAL                         R11 5
       19 GETTABLEKS                       R11 R11 K2 ["createElement"]
       21 GETUPVAL                         R12 6
       22 GETTABLEKS                       R12 R12 K3 ["IconButton"]
       24 DUPTABLE                         R13 K8 [{"icon", "variant", "size", "onActivated"}]
       25 GETUPVAL                         R14 6
       26 GETTABLEKS                       R14 R14 K9 ["Enums"]
       28 GETTABLEKS                       R14 R14 K10 ["IconName"]
       30 GETTABLEKS                       R14 R14 K11 ["ThreeDotsHorizontal"]
       32 SETTABLEKS                       R14 R13 K4 ["icon"]
       34 JUMPIFNOT                        R5 ; [+8]
       35 GETUPVAL                         R14 6
       36 GETTABLEKS                       R14 R14 K9 ["Enums"]
       38 GETTABLEKS                       R14 R14 K12 ["ButtonVariant"]
       40 GETTABLEKS                       R14 R14 K13 ["Emphasis"]
       42 JUMP                             ; [+7]
       43 GETUPVAL                         R14 6
       44 GETTABLEKS                       R14 R14 K9 ["Enums"]
       46 GETTABLEKS                       R14 R14 K12 ["ButtonVariant"]
       48 GETTABLEKS                       R14 R14 K14 ["Utility"]
       50 SETTABLEKS                       R14 R13 K5 ["variant"]
       52 GETUPVAL                         R14 6
       53 GETTABLEKS                       R14 R14 K9 ["Enums"]
       55 GETTABLEKS                       R14 R14 K15 ["InputSize"]
       57 GETTABLEKS                       R14 R14 K16 ["XSmall"]
       59 SETTABLEKS                       R14 R13 K6 ["size"]
       61 NEWCLOSURE                       R14 P0
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R9
       64 SETTABLEKS                       R14 R13 K7 ["onActivated"]
       66 CALL                             R11 2 1
       67 GETUPVAL                         R12 5
       68 GETTABLEKS                       R12 R12 K2 ["createElement"]
       70 GETUPVAL                         R13 6
       71 GETTABLEKS                       R13 R13 K17 ["Menu"]
       73 DUPTABLE                         R14 K26 [{"LayoutOrder", "isOpen", "items", "width", "size", "side", "align", "maxHeight", "onPressedOutside"}]
       74 GETTABLEKS                       R15 R0 K18 ["LayoutOrder"]
       76 SETTABLEKS                       R15 R14 K18 ["LayoutOrder"]
       78 SETTABLEKS                       R9 R14 K19 ["isOpen"]
       80 SETTABLEKS                       R2 R14 K20 ["items"]
       82 GETIMPORT                        R15 K29 [UDim.new]
       84 LOADN                            R16 0
       85 GETUPVAL                         R17 7
       86 GETTABLEKS                       R17 R17 K30 ["CompactOptionsMenuWidth"]
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K21 ["width"]
       91 GETUPVAL                         R15 6
       92 GETTABLEKS                       R15 R15 K9 ["Enums"]
       94 GETTABLEKS                       R15 R15 K15 ["InputSize"]
       96 GETTABLEKS                       R15 R15 K16 ["XSmall"]
       98 SETTABLEKS                       R15 R14 K6 ["size"]
      100 GETUPVAL                         R15 6
      101 GETTABLEKS                       R15 R15 K9 ["Enums"]
      103 GETTABLEKS                       R15 R15 K31 ["PopoverSide"]
      105 GETTABLEKS                       R15 R15 K32 ["Bottom"]
      107 SETTABLEKS                       R15 R14 K22 ["side"]
      109 GETUPVAL                         R15 6
      110 GETTABLEKS                       R15 R15 K9 ["Enums"]
      112 GETTABLEKS                       R15 R15 K33 ["PopoverAlign"]
      114 GETTABLEKS                       R15 R15 K34 ["Start"]
      116 SETTABLEKS                       R15 R14 K23 ["align"]
      118 GETUPVAL                         R16 7
      119 GETTABLEKS                       R16 R16 K35 ["CompactOptionsMenuMaxHeight"]
      121 FASTCALL2                        MATH_MIN R16 R7 ; [+4]
      123 MOVE                             R17 R7
      124 GETIMPORT                        R15 K38 [math.min]
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K24 ["maxHeight"]
      129 NEWCLOSURE                       R15 P1
      130 CAPTURE                          VAL R10
      131 SETTABLEKS                       R15 R14 K25 ["onPressedOutside"]
      133 GETUPVAL                         R15 5
      134 GETTABLEKS                       R15 R15 K2 ["createElement"]
      136 GETUPVAL                         R16 6
      137 GETTABLEKS                       R16 R16 K39 ["Tooltip"]
      139 DUPTABLE                         R17 K41 [{"title", "side", "align"}]
      140 LOADK                            R20 K39 ["Tooltip"]
      141 LOADK                            R21 K42 ["CompactOptions"]
      142 NAMECALL                         R18 R1 K43 ["getText"]
      144 CALL                             R18 3 1
      145 SETTABLEKS                       R18 R17 K40 ["title"]
      147 GETUPVAL                         R18 6
      148 GETTABLEKS                       R18 R18 K9 ["Enums"]
      150 GETTABLEKS                       R18 R18 K31 ["PopoverSide"]
      152 GETTABLEKS                       R18 R18 K32 ["Bottom"]
      154 SETTABLEKS                       R18 R17 K22 ["side"]
      156 GETUPVAL                         R18 6
      157 GETTABLEKS                       R18 R18 K9 ["Enums"]
      159 GETTABLEKS                       R18 R18 K33 ["PopoverAlign"]
      161 GETTABLEKS                       R18 R18 K34 ["Start"]
      163 SETTABLEKS                       R18 R17 K23 ["align"]
      165 MOVE                             R18 R11
      166 CALL                             R15 3 -1
      167 CALL                             R12 -1 -1
      168 RETURN                           R12 -1

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
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K12 ["Src"]
       72 GETTABLEKS                       R11 R11 K17 ["Hooks"]
       74 GETTABLEKS                       R11 R11 K20 ["usePluginSize"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K21 [PROTO_2]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R6
       86 RETURN                           R11 1
