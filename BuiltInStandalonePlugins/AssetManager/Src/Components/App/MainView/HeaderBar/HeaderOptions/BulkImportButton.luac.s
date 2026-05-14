PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["launchBulkImport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R6 0 0
       19 CALL                             R4 2 1
       20 LOADNIL                          R5
       21 NAMECALL                         R6 R3 K2 ["getIsCompact"]
       23 CALL                             R6 1 1
       24 JUMPIFNOT                        R6 ; [+76]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K3 ["createElement"]
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R7 R7 K4 ["Tooltip"]
       31 DUPTABLE                         R8 K9 [{"LayoutOrder", "title", "align", "side"}]
       32 GETTABLEKS                       R9 R0 K5 ["LayoutOrder"]
       34 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       36 LOADK                            R11 K4 ["Tooltip"]
       37 LOADK                            R12 K10 ["BulkImport"]
       38 NAMECALL                         R9 R1 K11 ["getText"]
       40 CALL                             R9 3 1
       41 SETTABLEKS                       R9 R8 K6 ["title"]
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K12 ["Enums"]
       46 GETTABLEKS                       R9 R9 K13 ["PopoverAlign"]
       48 GETTABLEKS                       R9 R9 K14 ["End"]
       50 SETTABLEKS                       R9 R8 K7 ["align"]
       52 GETUPVAL                         R9 4
       53 GETTABLEKS                       R9 R9 K12 ["Enums"]
       55 GETTABLEKS                       R9 R9 K15 ["PopoverSide"]
       57 GETTABLEKS                       R9 R9 K16 ["Bottom"]
       59 SETTABLEKS                       R9 R8 K8 ["side"]
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R9 R9 K3 ["createElement"]
       64 GETUPVAL                         R10 4
       65 GETTABLEKS                       R10 R10 K17 ["IconButton"]
       67 DUPTABLE                         R11 K22 [{"onActivated", "variant", "size", "icon"}]
       68 SETTABLEKS                       R4 R11 K18 ["onActivated"]
       70 GETUPVAL                         R12 4
       71 GETTABLEKS                       R12 R12 K12 ["Enums"]
       73 GETTABLEKS                       R12 R12 K23 ["ButtonVariant"]
       75 GETTABLEKS                       R12 R12 K24 ["Utility"]
       77 SETTABLEKS                       R12 R11 K19 ["variant"]
       79 GETUPVAL                         R12 4
       80 GETTABLEKS                       R12 R12 K12 ["Enums"]
       82 GETTABLEKS                       R12 R12 K25 ["InputSize"]
       84 GETTABLEKS                       R12 R12 K26 ["XSmall"]
       86 SETTABLEKS                       R12 R11 K20 ["size"]
       88 GETUPVAL                         R12 4
       89 GETTABLEKS                       R12 R12 K12 ["Enums"]
       91 GETTABLEKS                       R12 R12 K27 ["IconName"]
       93 GETTABLEKS                       R12 R12 K28 ["ArrowUpFromLine"]
       95 SETTABLEKS                       R12 R11 K21 ["icon"]
       97 CALL                             R9 2 -1
       98 CALL                             R6 -1 1
       99 MOVE                             R5 R6
      100 RETURN                           R5 1
      101 GETUPVAL                         R6 3
      102 GETTABLEKS                       R6 R6 K3 ["createElement"]
      104 GETUPVAL                         R7 4
      105 GETTABLEKS                       R7 R7 K29 ["Button"]
      107 DUPTABLE                         R8 K31 [{"LayoutOrder", "text", "onActivated", "variant", "size"}]
      108 GETTABLEKS                       R9 R0 K5 ["LayoutOrder"]
      110 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
      112 LOADK                            R11 K4 ["Tooltip"]
      113 LOADK                            R12 K10 ["BulkImport"]
      114 NAMECALL                         R9 R1 K11 ["getText"]
      116 CALL                             R9 3 1
      117 SETTABLEKS                       R9 R8 K30 ["text"]
      119 SETTABLEKS                       R4 R8 K18 ["onActivated"]
      121 GETUPVAL                         R9 4
      122 GETTABLEKS                       R9 R9 K12 ["Enums"]
      124 GETTABLEKS                       R9 R9 K23 ["ButtonVariant"]
      126 GETTABLEKS                       R9 R9 K32 ["Standard"]
      128 SETTABLEKS                       R9 R8 K19 ["variant"]
      130 GETUPVAL                         R9 4
      131 GETTABLEKS                       R9 R9 K12 ["Enums"]
      133 GETTABLEKS                       R9 R9 K25 ["InputSize"]
      135 GETTABLEKS                       R9 R9 K26 ["XSmall"]
      137 SETTABLEKS                       R9 R8 K20 ["size"]
      139 CALL                             R6 2 1
      140 MOVE                             R5 R6
      141 RETURN                           R5 1

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
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["PluginController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["Controllers"]
       47 GETTABLEKS                       R8 R8 K15 ["LayoutController"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K16 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 RETURN                           R8 1
