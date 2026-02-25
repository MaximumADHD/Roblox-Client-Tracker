PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K0 ["launchBulkImport"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 LOADNIL                          R3
        9 GETUPVAL                         R4 2
       10 CALL                             R4 0 1
       11 JUMPIF                           R4 ; [+8]
       12 GETUPVAL                         R5 3
       13 CALL                             R5 0 1
       14 GETTABLEKS                       R4 R5 K1 ["Id"]
       16 JUMPIFNOTEQKN                    R4 K2 [0] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 JUMPIFNOT                        R3 ; [+2]
       21 LOADNIL                          R4
       22 JUMP                             ; [+5]
       23 LOADK                            R6 K3 ["Tooltip"]
       24 LOADK                            R7 K4 ["BulkImportDisabled"]
       25 NAMECALL                         R4 R1 K5 ["getText"]
       27 CALL                             R4 3 1
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R5 R6 K6 ["createElement"]
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R6 R7 K3 ["Tooltip"]
       34 DUPTABLE                         R7 K12 [{"LayoutOrder", "title", "text", "align", "side"}]
       35 GETTABLEKS                       R8 R0 K7 ["LayoutOrder"]
       37 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       39 LOADK                            R10 K3 ["Tooltip"]
       40 LOADK                            R11 K13 ["BulkImport"]
       41 NAMECALL                         R8 R1 K5 ["getText"]
       43 CALL                             R8 3 1
       44 SETTABLEKS                       R8 R7 K8 ["title"]
       46 GETUPVAL                         R9 2
       47 CALL                             R9 0 1
       48 JUMPIFNOT                        R9 ; [+2]
       49 LOADNIL                          R8
       50 JUMP                             ; [+1]
       51 MOVE                             R8 R4
       52 SETTABLEKS                       R8 R7 K9 ["text"]
       54 GETUPVAL                         R11 5
       55 GETTABLEKS                       R10 R11 K14 ["Enums"]
       57 GETTABLEKS                       R9 R10 K15 ["PopoverAlign"]
       59 GETTABLEKS                       R8 R9 K16 ["End"]
       61 SETTABLEKS                       R8 R7 K10 ["align"]
       63 GETUPVAL                         R11 5
       64 GETTABLEKS                       R10 R11 K14 ["Enums"]
       66 GETTABLEKS                       R9 R10 K17 ["PopoverSide"]
       68 GETTABLEKS                       R8 R9 K18 ["Bottom"]
       70 SETTABLEKS                       R8 R7 K11 ["side"]
       72 NEWTABLE                         R8 0 1
       74 GETUPVAL                         R10 4
       75 GETTABLEKS                       R9 R10 K6 ["createElement"]
       77 GETUPVAL                         R11 5
       78 GETTABLEKS                       R10 R11 K19 ["IconButton"]
       80 DUPTABLE                         R11 K25 [{"onActivated", "isDisabled", "variant", "size", "icon"}]
       81 NEWCLOSURE                       R12 P0
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          REF R3
       84 CAPTURE                          VAL R2
       85 SETTABLEKS                       R12 R11 K20 ["onActivated"]
       87 GETUPVAL                         R13 2
       88 CALL                             R13 0 1
       89 JUMPIFNOT                        R13 ; [+2]
       90 LOADB                            R12 0
       91 JUMP                             ; [+1]
       92 NOT                              R12 R3
       93 SETTABLEKS                       R12 R11 K21 ["isDisabled"]
       95 GETUPVAL                         R15 5
       96 GETTABLEKS                       R14 R15 K14 ["Enums"]
       98 GETTABLEKS                       R13 R14 K26 ["ButtonVariant"]
      100 GETTABLEKS                       R12 R13 K27 ["Utility"]
      102 SETTABLEKS                       R12 R11 K22 ["variant"]
      104 GETUPVAL                         R15 5
      105 GETTABLEKS                       R14 R15 K14 ["Enums"]
      107 GETTABLEKS                       R13 R14 K28 ["InputSize"]
      109 GETTABLEKS                       R12 R13 K29 ["XSmall"]
      111 SETTABLEKS                       R12 R11 K23 ["size"]
      113 GETUPVAL                         R15 5
      114 GETTABLEKS                       R14 R15 K14 ["Enums"]
      116 GETTABLEKS                       R13 R14 K30 ["IconName"]
      118 GETTABLEKS                       R12 R13 K31 ["ArrowDownToLine"]
      120 SETTABLEKS                       R12 R11 K24 ["icon"]
      122 CALL                             R9 2 -1
      123 SETLIST                          R8 R9 -1 [1]
      125 CALL                             R5 3 -1
      126 CLOSEUPVALS                      R3
      127 RETURN                           R5 -1

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
       38 GETTABLEKS                       R7 R8 K14 ["PluginController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R9 K16 ["useGameInfo"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K12 ["Src"]
       54 GETTABLEKS                       R10 R11 K17 ["Flags"]
       56 GETTABLEKS                       R9 R10 K18 ["getEFCinUnifiedImportQueue"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K19 [PROTO_1]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 RETURN                           R9 1
