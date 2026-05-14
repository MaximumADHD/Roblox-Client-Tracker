PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["currentPreset"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["creatorId"]
        7 NAMECALL                         R0 R0 K2 ["applySettingstoAll"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["removeSelectedQueuedFile"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["findInWorkspace"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["copyAssetId"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["uploadResults"]
        2 JUMPIFNOT                        R4 ; [+15]
        3 GETTABLEKS                       R4 R0 K0 ["uploadResults"]
        5 GETTABLEKS                       R4 R4 K1 ["Succeeded"]
        7 JUMPIFNOT                        R4 ; [+10]
        8 LOADB                            R3 1
        9 GETTABLEKS                       R4 R0 K2 ["fileType"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["FileType"]
       14 GETTABLEKS                       R5 R5 K4 ["Scene"]
       16 JUMPIFEQ                         R4 R5 ; [+2]
       18 LOADB                            R3 0
       19 LOADNIL                          R4
       20 GETTABLEKS                       R5 R0 K2 ["fileType"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K3 ["FileType"]
       25 GETTABLEKS                       R6 R6 K4 ["Scene"]
       27 JUMPIFNOTEQ                      R5 R6 ; [+26]
       29 GETTABLEKS                       R6 R0 K0 ["uploadResults"]
       31 JUMPIFNOT                        R6 ; [+19]
       32 GETTABLEKS                       R6 R0 K0 ["uploadResults"]
       34 GETTABLEKS                       R6 R6 K1 ["Succeeded"]
       36 JUMPIFNOT                        R6 ; [+14]
       37 GETTABLEKS                       R6 R0 K0 ["uploadResults"]
       39 GETTABLEKS                       R6 R6 K5 ["AssetIds"]
       41 JUMPIFNOT                        R6 ; [+9]
       42 LOADB                            R5 1
       43 GETTABLEKS                       R7 R0 K0 ["uploadResults"]
       45 GETTABLEKS                       R7 R7 K5 ["AssetIds"]
       47 GETTABLEKS                       R6 R7 K6 ["0"]
       49 JUMPIFNOTEQKNIL                  R6 ; [+2]
       51 LOADB                            R5 0
       52 MOVE                             R4 R5
       53 JUMP                             ; [+17]
       54 GETTABLEKS                       R6 R0 K0 ["uploadResults"]
       56 JUMPIFNOT                        R6 ; [+12]
       57 GETTABLEKS                       R6 R0 K0 ["uploadResults"]
       59 GETTABLEKS                       R6 R6 K1 ["Succeeded"]
       61 JUMPIFNOT                        R6 ; [+7]
       62 LOADB                            R5 1
       63 GETTABLEKS                       R6 R0 K0 ["uploadResults"]
       65 GETTABLEKS                       R6 R6 K5 ["AssetIds"]
       67 JUMPIFNOTEQKNIL                  R6 ; [+2]
       69 LOADB                            R5 0
       70 MOVE                             R4 R5
       71 NEWTABLE                         R5 0 4
       73 DUPTABLE                         R6 K9 [{"Text", "OnItemClicked"}]
       74 LOADK                            R9 K10 ["AssetImportTree"]
       75 LOADK                            R10 K11 ["RightClickApplyToAll"]
       76 NAMECALL                         R7 R1 K12 ["getText"]
       78 CALL                             R7 3 1
       79 SETTABLEKS                       R7 R6 K7 ["Text"]
       81 NEWCLOSURE                       R7 P0
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R7 R6 K8 ["OnItemClicked"]
       86 DUPTABLE                         R7 K9 [{"Text", "OnItemClicked"}]
       87 LOADK                            R10 K13 ["ImportQueue"]
       88 LOADK                            R11 K14 ["RemoveFromQueue"]
       89 NAMECALL                         R8 R1 K12 ["getText"]
       91 CALL                             R8 3 1
       92 SETTABLEKS                       R8 R7 K7 ["Text"]
       94 NEWCLOSURE                       R8 P1
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R0
       97 SETTABLEKS                       R8 R7 K8 ["OnItemClicked"]
       99 DUPTABLE                         R8 K16 [{"Text", "OnItemClicked", "Enabled"}]
      100 LOADK                            R11 K13 ["ImportQueue"]
      101 LOADK                            R12 K17 ["FindInWorkspace"]
      102 NAMECALL                         R9 R1 K12 ["getText"]
      104 CALL                             R9 3 1
      105 SETTABLEKS                       R9 R8 K7 ["Text"]
      107 NEWCLOSURE                       R9 P2
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R9 R8 K8 ["OnItemClicked"]
      112 SETTABLEKS                       R3 R8 K15 ["Enabled"]
      114 DUPTABLE                         R9 K16 [{"Text", "OnItemClicked", "Enabled"}]
      115 LOADK                            R12 K13 ["ImportQueue"]
      116 LOADK                            R13 K18 ["CopyAssetId"]
      117 NAMECALL                         R10 R1 K12 ["getText"]
      119 CALL                             R10 3 1
      120 SETTABLEKS                       R10 R9 K7 ["Text"]
      122 NEWCLOSURE                       R10 P3
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R0
      125 SETTABLEKS                       R10 R9 K8 ["OnItemClicked"]
      127 SETTABLEKS                       R4 R9 K15 ["Enabled"]
      129 SETLIST                          R5 R6 4 [1]
      131 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K1 ["Plugin"]
       11 GETTABLEKS                       R3 R3 K0 ["use"]
       13 CALL                             R3 0 1
       14 NAMECALL                         R3 R3 K2 ["get"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R0 K3 ["TableEntry"]
       19 GETUPVAL                         R5 3
       20 MOVE                             R6 R4
       21 MOVE                             R7 R1
       22 MOVE                             R8 R2
       23 CALL                             R5 3 1
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R5
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K4 ["new"]
       31 CALL                             R7 0 1
       32 NEWTABLE                         R8 0 6
       34 GETUPVAL                         R9 6
       35 GETUPVAL                         R10 7
       36 GETUPVAL                         R11 8
       37 GETUPVAL                         R12 9
       38 GETUPVAL                         R13 10
       39 GETUPVAL                         R14 11
       40 SETLIST                          R8 R9 6 [1]
       42 NEWTABLE                         R9 0 0
       44 MOVE                             R10 R8
       45 LOADNIL                          R11
       46 LOADNIL                          R12
       47 FORGPREP                         R10
       48 MOVE                             R16 R9
       49 GETUPVAL                         R17 12
       50 GETUPVAL                         R18 13
       51 GETTABLEKS                       R18 R18 K5 ["View"]
       53 DUPTABLE                         R19 K9 [{"tag", "LayoutOrder", "Size"}]
       54 LOADK                            R20 K10 ["size-full-full padding-x-small padding-y-xsmall align-x-center align-y-center"]
       55 SETTABLEKS                       R20 R19 K6 ["tag"]
       57 NAMECALL                         R20 R7 K11 ["getNextOrder"]
       59 CALL                             R20 1 1
       60 SETTABLEKS                       R20 R19 K7 ["LayoutOrder"]
       62 GETIMPORT                        R20 K13 [UDim2.new]
       64 GETTABLEKS                       R22 R0 K14 ["ColumnWidths"]
       66 GETTABLE                         R21 R22 R13
       67 GETIMPORT                        R22 K16 [UDim.new]
       69 LOADN                            R23 1
       70 LOADN                            R24 0
       71 CALL                             R22 2 -1
       72 CALL                             R20 -1 1
       73 SETTABLEKS                       R20 R19 K8 ["Size"]
       75 GETUPVAL                         R20 12
       76 MOVE                             R21 R14
       77 DUPTABLE                         R22 K18 [{"TableEntry", "SecondaryActivated"}]
       78 GETTABLEKS                       R23 R0 K3 ["TableEntry"]
       80 SETTABLEKS                       R23 R22 K3 ["TableEntry"]
       82 SETTABLEKS                       R6 R22 K17 ["SecondaryActivated"]
       84 CALL                             R20 2 -1
       85 CALL                             R17 -1 -1
       86 FASTCALL                         TABLE_INSERT ; [+2]
       87 GETIMPORT                        R15 K21 [table.insert]
       89 CALL                             R15 -1 0
       90 FORGLOOP                         R10 2 ; [-43]
       92 GETUPVAL                         R10 12
       93 GETUPVAL                         R11 13
       94 GETTABLEKS                       R11 R11 K5 ["View"]
       96 DUPTABLE                         R12 K23 [{"tag", "LayoutOrder", "onSecondaryActivated"}]
       97 LOADK                            R13 K24 ["row size-full-800 align-y-center"]
       98 SETTABLEKS                       R13 R12 K6 ["tag"]
      100 GETTABLEKS                       R13 R0 K7 ["LayoutOrder"]
      102 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
      104 SETTABLEKS                       R6 R12 K22 ["onSecondaryActivated"]
      106 MOVE                             R13 R9
      107 CALL                             R10 3 -1
      108 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K10 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K12 ["Localization"]
       34 GETTABLEKS                       R7 R4 K13 ["Util"]
       36 GETTABLEKS                       R7 R7 K14 ["LayoutOrderIterator"]
       38 GETTABLEKS                       R8 R4 K15 ["UI"]
       40 GETTABLEKS                       R8 R8 K16 ["showContextMenu"]
       42 GETIMPORT                        R9 K5 [require]
       44 GETIMPORT                        R10 K1 [script]
       46 GETTABLEKS                       R10 R10 K17 ["AssetNameCell"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K5 [require]
       51 GETIMPORT                        R11 K1 [script]
       53 GETTABLEKS                       R11 R11 K18 ["AssetStatusCell"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K5 [require]
       58 GETIMPORT                        R12 K1 [script]
       60 GETTABLEKS                       R12 R12 K19 ["CheckboxCell"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K5 [require]
       65 GETIMPORT                        R13 K1 [script]
       67 GETTABLEKS                       R13 R13 K20 ["CreatorCell"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETIMPORT                        R14 K1 [script]
       74 GETTABLEKS                       R14 R14 K21 ["FilePathCell"]
       76 CALL                             R13 1 1
       77 GETIMPORT                        R14 K5 [require]
       79 GETIMPORT                        R15 K1 [script]
       81 GETTABLEKS                       R15 R15 K22 ["PresetCell"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R16 R0 K23 ["Src"]
       88 GETTABLEKS                       R16 R16 K24 ["Controllers"]
       90 GETTABLEKS                       R16 R16 K25 ["QueueController"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K5 [require]
       95 GETTABLEKS                       R17 R0 K23 ["Src"]
       97 GETTABLEKS                       R17 R17 K26 ["Types"]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K5 [require]
      102 GETTABLEKS                       R18 R0 K23 ["Src"]
      104 GETTABLEKS                       R18 R18 K26 ["Types"]
      106 GETTABLEKS                       R18 R18 K27 ["QueuedSession"]
      108 CALL                             R17 1 1
      109 DUPCLOSURE                       R18 K28 [PROTO_4]
      110 CAPTURE                          VAL R16
      111 DUPCLOSURE                       R19 K29 [PROTO_6]
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R8
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 RETURN                           R19 1
