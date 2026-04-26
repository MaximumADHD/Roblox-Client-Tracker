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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+2]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R0 2
        6 NAMECALL                         R0 R0 K0 ["launchBulkImport"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 LOADNIL                          R4
       13 GETUPVAL                         R5 3
       14 CALL                             R5 0 1
       15 JUMPIF                           R5 ; [+8]
       16 GETUPVAL                         R6 4
       17 CALL                             R6 0 1
       18 GETTABLEKS                       R5 R6 K1 ["Id"]
       20 JUMPIFNOTEQKN                    R5 K2 [0] ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 JUMPIFNOT                        R4 ; [+2]
       25 LOADNIL                          R5
       26 JUMP                             ; [+5]
       27 LOADK                            R7 K3 ["Tooltip"]
       28 LOADK                            R8 K4 ["BulkImportDisabled"]
       29 NAMECALL                         R5 R1 K5 ["getText"]
       31 CALL                             R5 3 1
       32 GETUPVAL                         R7 3
       33 CALL                             R7 0 1
       34 JUMPIFNOT                        R7 ; [+2]
       35 LOADB                            R6 0
       36 JUMP                             ; [+1]
       37 NOT                              R6 R4
       38 NAMECALL                         R7 R3 K6 ["getIsCompact"]
       40 CALL                             R7 1 1
       41 LOADB                            R8 0
       42 JUMPIFEQKNIL                     R5 ; [+2]
       44 MOVE                             R8 R7
       45 GETUPVAL                         R10 5
       46 GETTABLEKS                       R9 R10 K7 ["useCallback"]
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          REF R4
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R11 0 1
       54 MOVE                             R12 R4
       55 SETLIST                          R11 R12 1 [1]
       57 CALL                             R9 2 1
       58 LOADNIL                          R10
       59 JUMPIFNOT                        R7 ; [+48]
       60 GETUPVAL                         R12 5
       61 GETTABLEKS                       R11 R12 K8 ["createElement"]
       63 GETUPVAL                         R13 6
       64 GETTABLEKS                       R12 R13 K9 ["IconButton"]
       66 DUPTABLE                         R13 K16 [{"onActivated", "LayoutOrder", "isDisabled", "variant", "size", "icon"}]
       67 SETTABLEKS                       R9 R13 K10 ["onActivated"]
       69 JUMPIF                           R8 ; [+3]
       70 GETTABLEKS                       R14 R0 K11 ["LayoutOrder"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R14
       74 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
       76 SETTABLEKS                       R6 R13 K12 ["isDisabled"]
       78 GETUPVAL                         R17 6
       79 GETTABLEKS                       R16 R17 K17 ["Enums"]
       81 GETTABLEKS                       R15 R16 K18 ["ButtonVariant"]
       83 GETTABLEKS                       R14 R15 K19 ["Utility"]
       85 SETTABLEKS                       R14 R13 K13 ["variant"]
       87 GETUPVAL                         R17 6
       88 GETTABLEKS                       R16 R17 K17 ["Enums"]
       90 GETTABLEKS                       R15 R16 K20 ["InputSize"]
       92 GETTABLEKS                       R14 R15 K21 ["XSmall"]
       94 SETTABLEKS                       R14 R13 K14 ["size"]
       96 GETUPVAL                         R17 6
       97 GETTABLEKS                       R16 R17 K17 ["Enums"]
       99 GETTABLEKS                       R15 R16 K22 ["IconName"]
      101 GETTABLEKS                       R14 R15 K23 ["ArrowUpFromLine"]
      103 SETTABLEKS                       R14 R13 K15 ["icon"]
      105 CALL                             R11 2 1
      106 MOVE                             R10 R11
      107 JUMP                             ; [+45]
      108 GETUPVAL                         R12 5
      109 GETTABLEKS                       R11 R12 K8 ["createElement"]
      111 GETUPVAL                         R13 6
      112 GETTABLEKS                       R12 R13 K24 ["Button"]
      114 DUPTABLE                         R13 K26 [{"LayoutOrder", "text", "onActivated", "isDisabled", "variant", "size"}]
      115 JUMPIF                           R8 ; [+3]
      116 GETTABLEKS                       R14 R0 K11 ["LayoutOrder"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R14
      120 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      122 LOADK                            R16 K3 ["Tooltip"]
      123 LOADK                            R17 K27 ["BulkImport"]
      124 NAMECALL                         R14 R1 K5 ["getText"]
      126 CALL                             R14 3 1
      127 SETTABLEKS                       R14 R13 K25 ["text"]
      129 SETTABLEKS                       R9 R13 K10 ["onActivated"]
      131 SETTABLEKS                       R6 R13 K12 ["isDisabled"]
      133 GETUPVAL                         R17 6
      134 GETTABLEKS                       R16 R17 K17 ["Enums"]
      136 GETTABLEKS                       R15 R16 K18 ["ButtonVariant"]
      138 GETTABLEKS                       R14 R15 K28 ["Standard"]
      140 SETTABLEKS                       R14 R13 K13 ["variant"]
      142 GETUPVAL                         R17 6
      143 GETTABLEKS                       R16 R17 K17 ["Enums"]
      145 GETTABLEKS                       R15 R16 K20 ["InputSize"]
      147 GETTABLEKS                       R14 R15 K21 ["XSmall"]
      149 SETTABLEKS                       R14 R13 K14 ["size"]
      151 CALL                             R11 2 1
      152 MOVE                             R10 R11
      153 JUMPIFNOT                        R8 ; [+47]
      154 GETUPVAL                         R12 5
      155 GETTABLEKS                       R11 R12 K8 ["createElement"]
      157 GETUPVAL                         R13 6
      158 GETTABLEKS                       R12 R13 K3 ["Tooltip"]
      160 DUPTABLE                         R13 K32 [{"LayoutOrder", "title", "text", "align", "side"}]
      161 GETTABLEKS                       R14 R0 K11 ["LayoutOrder"]
      163 SETTABLEKS                       R14 R13 K11 ["LayoutOrder"]
      165 LOADK                            R16 K3 ["Tooltip"]
      166 LOADK                            R17 K27 ["BulkImport"]
      167 NAMECALL                         R14 R1 K5 ["getText"]
      169 CALL                             R14 3 1
      170 SETTABLEKS                       R14 R13 K29 ["title"]
      172 GETUPVAL                         R15 3
      173 CALL                             R15 0 1
      174 JUMPIFNOT                        R15 ; [+2]
      175 LOADNIL                          R14
      176 JUMP                             ; [+1]
      177 MOVE                             R14 R5
      178 SETTABLEKS                       R14 R13 K25 ["text"]
      180 GETUPVAL                         R17 6
      181 GETTABLEKS                       R16 R17 K17 ["Enums"]
      183 GETTABLEKS                       R15 R16 K33 ["PopoverAlign"]
      185 GETTABLEKS                       R14 R15 K34 ["End"]
      187 SETTABLEKS                       R14 R13 K30 ["align"]
      189 GETUPVAL                         R17 6
      190 GETTABLEKS                       R16 R17 K17 ["Enums"]
      192 GETTABLEKS                       R15 R16 K35 ["PopoverSide"]
      194 GETTABLEKS                       R14 R15 K36 ["Bottom"]
      196 SETTABLEKS                       R14 R13 K31 ["side"]
      198 MOVE                             R14 R10
      199 CALL                             R11 3 1
      200 JUMP                             ; [+1]
      201 MOVE                             R11 R10
      202 CLOSEUPVALS                      R4
      203 RETURN                           R11 1

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
       45 GETTABLEKS                       R9 R10 K13 ["Controllers"]
       47 GETTABLEKS                       R8 R9 K15 ["LayoutController"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K12 ["Src"]
       54 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       56 GETTABLEKS                       R9 R10 K17 ["useGameInfo"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R12 R0 K12 ["Src"]
       63 GETTABLEKS                       R11 R12 K18 ["Flags"]
       65 GETTABLEKS                       R10 R11 K19 ["getEFCinUnifiedImportQueue"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R13 R0 K12 ["Src"]
       72 GETTABLEKS                       R12 R13 K18 ["Flags"]
       74 GETTABLEKS                       R11 R12 K20 ["getFFlagAmrUpdatedBulkImportButton"]
       76 CALL                             R10 1 1
       77 DUPCLOSURE                       R11 K21 [PROTO_1]
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R2
       84 DUPCLOSURE                       R12 K22 [PROTO_3]
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 MOVE                             R14 R10
       93 CALL                             R14 0 1
       94 JUMPIFNOT                        R14 ; [+2]
       95 MOVE                             R13 R12
       96 RETURN                           R13 1
       97 MOVE                             R13 R11
       98 RETURN                           R13 1
