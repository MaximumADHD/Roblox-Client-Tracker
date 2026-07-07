PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["getScopeAnalyticsContext"]
        4 CALL                             R2 1 -1
        5 NAMECALL                         R0 R0 K1 ["launchBulkImport"]
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

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
       13 CALL                             R4 0 3
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R7 R7 K1 ["useCallback"]
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R9 0 0
       22 CALL                             R7 2 1
       23 LOADNIL                          R8
       24 GETUPVAL                         R9 5
       25 CALL                             R9 0 1
       26 JUMPIF                           R9 ; [+77]
       27 JUMPIFNOT                        R6 ; [+76]
       28 GETUPVAL                         R9 4
       29 GETTABLEKS                       R9 R9 K2 ["createElement"]
       31 GETUPVAL                         R10 6
       32 GETTABLEKS                       R10 R10 K3 ["Tooltip"]
       34 DUPTABLE                         R11 K8 [{"LayoutOrder", "title", "align", "side"}]
       35 GETTABLEKS                       R12 R0 K4 ["LayoutOrder"]
       37 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
       39 LOADK                            R14 K3 ["Tooltip"]
       40 LOADK                            R15 K9 ["BulkImport"]
       41 NAMECALL                         R12 R1 K10 ["getText"]
       43 CALL                             R12 3 1
       44 SETTABLEKS                       R12 R11 K5 ["title"]
       46 GETUPVAL                         R12 6
       47 GETTABLEKS                       R12 R12 K11 ["Enums"]
       49 GETTABLEKS                       R12 R12 K12 ["PopoverAlign"]
       51 GETTABLEKS                       R12 R12 K13 ["End"]
       53 SETTABLEKS                       R12 R11 K6 ["align"]
       55 GETUPVAL                         R12 6
       56 GETTABLEKS                       R12 R12 K11 ["Enums"]
       58 GETTABLEKS                       R12 R12 K14 ["PopoverSide"]
       60 GETTABLEKS                       R12 R12 K15 ["Bottom"]
       62 SETTABLEKS                       R12 R11 K7 ["side"]
       64 GETUPVAL                         R12 4
       65 GETTABLEKS                       R12 R12 K2 ["createElement"]
       67 GETUPVAL                         R13 6
       68 GETTABLEKS                       R13 R13 K16 ["IconButton"]
       70 DUPTABLE                         R14 K21 [{"onActivated", "variant", "size", "icon"}]
       71 SETTABLEKS                       R7 R14 K17 ["onActivated"]
       73 GETUPVAL                         R15 6
       74 GETTABLEKS                       R15 R15 K11 ["Enums"]
       76 GETTABLEKS                       R15 R15 K22 ["ButtonVariant"]
       78 GETTABLEKS                       R15 R15 K23 ["Utility"]
       80 SETTABLEKS                       R15 R14 K18 ["variant"]
       82 GETUPVAL                         R15 6
       83 GETTABLEKS                       R15 R15 K11 ["Enums"]
       85 GETTABLEKS                       R15 R15 K24 ["InputSize"]
       87 GETTABLEKS                       R15 R15 K25 ["XSmall"]
       89 SETTABLEKS                       R15 R14 K19 ["size"]
       91 GETUPVAL                         R15 6
       92 GETTABLEKS                       R15 R15 K11 ["Enums"]
       94 GETTABLEKS                       R15 R15 K26 ["IconName"]
       96 GETTABLEKS                       R15 R15 K27 ["ArrowUpFromLine"]
       98 SETTABLEKS                       R15 R14 K20 ["icon"]
      100 CALL                             R12 2 -1
      101 CALL                             R9 -1 1
      102 MOVE                             R8 R9
      103 RETURN                           R8 1
      104 GETUPVAL                         R9 4
      105 GETTABLEKS                       R9 R9 K2 ["createElement"]
      107 GETUPVAL                         R10 6
      108 GETTABLEKS                       R10 R10 K28 ["Button"]
      110 DUPTABLE                         R11 K30 [{"LayoutOrder", "text", "onActivated", "variant", "size"}]
      111 GETTABLEKS                       R12 R0 K4 ["LayoutOrder"]
      113 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
      115 LOADK                            R14 K3 ["Tooltip"]
      116 LOADK                            R15 K9 ["BulkImport"]
      117 NAMECALL                         R12 R1 K10 ["getText"]
      119 CALL                             R12 3 1
      120 SETTABLEKS                       R12 R11 K29 ["text"]
      122 SETTABLEKS                       R7 R11 K17 ["onActivated"]
      124 GETUPVAL                         R12 6
      125 GETTABLEKS                       R12 R12 K11 ["Enums"]
      127 GETTABLEKS                       R12 R12 K22 ["ButtonVariant"]
      129 GETTABLEKS                       R12 R12 K31 ["Standard"]
      131 SETTABLEKS                       R12 R11 K18 ["variant"]
      133 GETUPVAL                         R12 6
      134 GETTABLEKS                       R12 R12 K11 ["Enums"]
      136 GETTABLEKS                       R12 R12 K24 ["InputSize"]
      138 GETTABLEKS                       R12 R12 K25 ["XSmall"]
      140 SETTABLEKS                       R12 R11 K19 ["size"]
      142 CALL                             R9 2 1
      143 MOVE                             R8 R9
      144 RETURN                           R8 1

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
       38 GETTABLEKS                       R7 R7 K14 ["ItemsController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K13 ["Controllers"]
       47 GETTABLEKS                       R8 R8 K15 ["PluginController"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Src"]
       54 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       56 GETTABLEKS                       R9 R9 K17 ["usePluginSize"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R10 K18 ["Flags"]
       65 GETTABLEKS                       R10 R10 K19 ["getFFlagAmrUseRedesignedCompactView"]
       67 CALL                             R9 1 1
       68 DUPCLOSURE                       R10 K20 [PROTO_1]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R2
       76 RETURN                           R10 1
