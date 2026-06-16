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
        9 CALL                             R3 0 3
       10 GETUPVAL                         R6 3
       11 GETTABLEKS                       R6 R6 K1 ["useCallback"]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          VAL R2
       15 NEWTABLE                         R8 0 0
       17 CALL                             R6 2 1
       18 LOADNIL                          R7
       19 GETUPVAL                         R8 4
       20 CALL                             R8 0 1
       21 JUMPIF                           R8 ; [+77]
       22 JUMPIFNOT                        R5 ; [+76]
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K2 ["createElement"]
       26 GETUPVAL                         R9 5
       27 GETTABLEKS                       R9 R9 K3 ["Tooltip"]
       29 DUPTABLE                         R10 K8 [{"LayoutOrder", "title", "align", "side"}]
       30 GETTABLEKS                       R11 R0 K4 ["LayoutOrder"]
       32 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       34 LOADK                            R13 K3 ["Tooltip"]
       35 LOADK                            R14 K9 ["BulkImport"]
       36 NAMECALL                         R11 R1 K10 ["getText"]
       38 CALL                             R11 3 1
       39 SETTABLEKS                       R11 R10 K5 ["title"]
       41 GETUPVAL                         R11 5
       42 GETTABLEKS                       R11 R11 K11 ["Enums"]
       44 GETTABLEKS                       R11 R11 K12 ["PopoverAlign"]
       46 GETTABLEKS                       R11 R11 K13 ["End"]
       48 SETTABLEKS                       R11 R10 K6 ["align"]
       50 GETUPVAL                         R11 5
       51 GETTABLEKS                       R11 R11 K11 ["Enums"]
       53 GETTABLEKS                       R11 R11 K14 ["PopoverSide"]
       55 GETTABLEKS                       R11 R11 K15 ["Bottom"]
       57 SETTABLEKS                       R11 R10 K7 ["side"]
       59 GETUPVAL                         R11 3
       60 GETTABLEKS                       R11 R11 K2 ["createElement"]
       62 GETUPVAL                         R12 5
       63 GETTABLEKS                       R12 R12 K16 ["IconButton"]
       65 DUPTABLE                         R13 K21 [{"onActivated", "variant", "size", "icon"}]
       66 SETTABLEKS                       R6 R13 K17 ["onActivated"]
       68 GETUPVAL                         R14 5
       69 GETTABLEKS                       R14 R14 K11 ["Enums"]
       71 GETTABLEKS                       R14 R14 K22 ["ButtonVariant"]
       73 GETTABLEKS                       R14 R14 K23 ["Utility"]
       75 SETTABLEKS                       R14 R13 K18 ["variant"]
       77 GETUPVAL                         R14 5
       78 GETTABLEKS                       R14 R14 K11 ["Enums"]
       80 GETTABLEKS                       R14 R14 K24 ["InputSize"]
       82 GETTABLEKS                       R14 R14 K25 ["XSmall"]
       84 SETTABLEKS                       R14 R13 K19 ["size"]
       86 GETUPVAL                         R14 5
       87 GETTABLEKS                       R14 R14 K11 ["Enums"]
       89 GETTABLEKS                       R14 R14 K26 ["IconName"]
       91 GETTABLEKS                       R14 R14 K27 ["ArrowUpFromLine"]
       93 SETTABLEKS                       R14 R13 K20 ["icon"]
       95 CALL                             R11 2 -1
       96 CALL                             R8 -1 1
       97 MOVE                             R7 R8
       98 RETURN                           R7 1
       99 GETUPVAL                         R8 3
      100 GETTABLEKS                       R8 R8 K2 ["createElement"]
      102 GETUPVAL                         R9 5
      103 GETTABLEKS                       R9 R9 K28 ["Button"]
      105 DUPTABLE                         R10 K30 [{"LayoutOrder", "text", "onActivated", "variant", "size"}]
      106 GETTABLEKS                       R11 R0 K4 ["LayoutOrder"]
      108 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      110 LOADK                            R13 K3 ["Tooltip"]
      111 LOADK                            R14 K9 ["BulkImport"]
      112 NAMECALL                         R11 R1 K10 ["getText"]
      114 CALL                             R11 3 1
      115 SETTABLEKS                       R11 R10 K29 ["text"]
      117 SETTABLEKS                       R6 R10 K17 ["onActivated"]
      119 GETUPVAL                         R11 5
      120 GETTABLEKS                       R11 R11 K11 ["Enums"]
      122 GETTABLEKS                       R11 R11 K22 ["ButtonVariant"]
      124 GETTABLEKS                       R11 R11 K31 ["Standard"]
      126 SETTABLEKS                       R11 R10 K18 ["variant"]
      128 GETUPVAL                         R11 5
      129 GETTABLEKS                       R11 R11 K11 ["Enums"]
      131 GETTABLEKS                       R11 R11 K24 ["InputSize"]
      133 GETTABLEKS                       R11 R11 K25 ["XSmall"]
      135 SETTABLEKS                       R11 R10 K19 ["size"]
      137 CALL                             R8 2 1
      138 MOVE                             R7 R8
      139 RETURN                           R7 1

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
       45 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K16 ["usePluginSize"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K17 ["Flags"]
       56 GETTABLEKS                       R9 R9 K18 ["getFFlagAmrUseRedesignedCompactView"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K19 [PROTO_1]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R2
       66 RETURN                           R9 1
