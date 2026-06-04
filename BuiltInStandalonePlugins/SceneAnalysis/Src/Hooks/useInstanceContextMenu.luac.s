PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectInstances"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["onRightClick"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["onRightClick"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K1 ["getNodeById"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+3]
       20 GETTABLEKS                       R2 R1 K2 ["path"]
       22 JUMPIF                           R2 ; [+1]
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 1
       25 LOADK                            R4 K3 ["SelectInstanceByPath"]
       26 GETTABLEKS                       R5 R1 K2 ["path"]
       28 NAMECALL                         R2 R2 K4 ["CallAssetPluginAsync"]
       30 CALL                             R2 3 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["onRightClick"]
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["onRightClick"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K1 ["getNodeById"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 JUMPIFNOT                        R1 ; [+11]
       21 GETTABLEKS                       R2 R1 K2 ["path"]
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 2
       26 LOADK                            R4 K3 ["SelectInstanceByPath"]
       27 GETTABLEKS                       R5 R1 K2 ["path"]
       29 NAMECALL                         R2 R2 K4 ["CallAssetPluginAsync"]
       31 CALL                             R2 3 0
       32 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 FASTCALL1                        TOSTRING R3 ; [+2]
        3 GETIMPORT                        R2 K1 [tostring]
        5 CALL                             R2 1 1
        6 NAMECALL                         R0 R0 K2 ["CopyToClipboard"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+95]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["onRightClick"]
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 JUMPIFNOT                        R1 ; [+12]
       12 GETUPVAL                         R4 1
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K1 ["getNodeById"]
       17 JUMPIFNOT                        R4 ; [+6]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K1 ["getNodeById"]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 JUMPIF                           R3 ; [+1]
       24 LOADNIL                          R3
       25 MOVE                             R4 R3
       26 JUMPIFNOT                        R4 ; [+2]
       27 GETTABLEKS                       R4 R3 K2 ["AssetId"]
       29 MOVE                             R5 R4
       30 JUMPIFNOT                        R5 ; [+4]
       31 JUMPIFNOTEQKS                    R4 K3 [""] ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 JUMPIF                           R2 ; [+2]
       36 JUMPIF                           R5 ; [+1]
       37 RETURN                           R0 0
       38 NEWTABLE                         R6 0 0
       40 NEWTABLE                         R7 0 0
       42 JUMPIFNOT                        R2 ; [+24]
       43 DUPTABLE                         R8 K6 [{"Text", "OnItemClicked"}]
       44 GETUPVAL                         R9 2
       45 LOADK                            R11 K7 ["ContextMenu"]
       46 LOADK                            R12 K8 ["SelectInstances"]
       47 NAMECALL                         R9 R9 K9 ["getText"]
       49 CALL                             R9 3 1
       50 SETTABLEKS                       R9 R8 K4 ["Text"]
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R9 R8 K5 ["OnItemClicked"]
       58 SETTABLEKS                       R8 R6 K10 ["SelectInstance"]
       60 FASTCALL2K                       TABLE_INSERT R7 K10 ; [+5]
       62 MOVE                             R9 R7
       63 LOADK                            R10 K10 ["SelectInstance"]
       64 GETIMPORT                        R8 K13 [table.insert]
       66 CALL                             R8 2 0
       67 JUMPIFNOT                        R5 ; [+23]
       68 DUPTABLE                         R8 K6 [{"Text", "OnItemClicked"}]
       69 GETUPVAL                         R9 2
       70 LOADK                            R11 K7 ["ContextMenu"]
       71 LOADK                            R12 K14 ["CopyAssetIdToClipboard"]
       72 NAMECALL                         R9 R9 K9 ["getText"]
       74 CALL                             R9 3 1
       75 SETTABLEKS                       R9 R8 K4 ["Text"]
       77 NEWCLOSURE                       R9 P1
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R9 R8 K5 ["OnItemClicked"]
       82 SETTABLEKS                       R8 R6 K15 ["CopyAssetId"]
       84 FASTCALL2K                       TABLE_INSERT R7 K15 ; [+5]
       86 MOVE                             R9 R7
       87 LOADK                            R10 K15 ["CopyAssetId"]
       88 GETIMPORT                        R8 K13 [table.insert]
       90 CALL                             R8 2 0
       91 GETUPVAL                         R8 5
       92 GETUPVAL                         R9 6
       93 MOVE                             R10 R6
       94 MOVE                             R11 R7
       95 CALL                             R8 3 0
       96 RETURN                           R0 0
       97 NEWCLOSURE                       R2 P2
       98 CAPTURE                          UPVAL U1
       99 CAPTURE                          UPVAL U7
      100 NEWTABLE                         R3 0 0
      102 NEWTABLE                         R4 0 0
      104 DUPTABLE                         R5 K6 [{"Text", "OnItemClicked"}]
      105 GETUPVAL                         R6 2
      106 LOADK                            R8 K7 ["ContextMenu"]
      107 LOADK                            R9 K8 ["SelectInstances"]
      108 NAMECALL                         R6 R6 K9 ["getText"]
      110 CALL                             R6 3 1
      111 SETTABLEKS                       R6 R5 K4 ["Text"]
      113 NEWCLOSURE                       R6 P3
      114 CAPTURE                          VAL R1
      115 CAPTURE                          UPVAL U1
      116 CAPTURE                          UPVAL U7
      117 SETTABLEKS                       R6 R5 K5 ["OnItemClicked"]
      119 SETTABLEKS                       R5 R3 K10 ["SelectInstance"]
      121 FASTCALL2K                       TABLE_INSERT R4 K10 ; [+5]
      123 MOVE                             R6 R4
      124 LOADK                            R7 K10 ["SelectInstance"]
      125 GETIMPORT                        R5 K13 [table.insert]
      127 CALL                             R5 2 0
      128 JUMPIFNOT                        R1 ; [+41]
      129 GETUPVAL                         R5 1
      130 JUMPIFNOT                        R5 ; [+39]
      131 GETUPVAL                         R5 1
      132 GETTABLEKS                       R5 R5 K1 ["getNodeById"]
      134 JUMPIFNOT                        R5 ; [+35]
      135 GETUPVAL                         R5 1
      136 GETTABLEKS                       R5 R5 K1 ["getNodeById"]
      138 MOVE                             R6 R1
      139 CALL                             R5 1 1
      140 MOVE                             R6 R5
      141 JUMPIFNOT                        R6 ; [+2]
      142 GETTABLEKS                       R6 R5 K2 ["AssetId"]
      144 JUMPIFNOT                        R6 ; [+25]
      145 JUMPIFEQKS                       R6 K3 [""] ; [+24]
      147 DUPTABLE                         R7 K6 [{"Text", "OnItemClicked"}]
      148 GETUPVAL                         R8 2
      149 LOADK                            R10 K7 ["ContextMenu"]
      150 LOADK                            R11 K14 ["CopyAssetIdToClipboard"]
      151 NAMECALL                         R8 R8 K9 ["getText"]
      153 CALL                             R8 3 1
      154 SETTABLEKS                       R8 R7 K4 ["Text"]
      156 NEWCLOSURE                       R8 P4
      157 CAPTURE                          UPVAL U4
      158 CAPTURE                          VAL R6
      159 SETTABLEKS                       R8 R7 K5 ["OnItemClicked"]
      161 SETTABLEKS                       R7 R3 K15 ["CopyAssetId"]
      163 FASTCALL2K                       TABLE_INSERT R4 K15 ; [+5]
      165 MOVE                             R8 R4
      166 LOADK                            R9 K15 ["CopyAssetId"]
      167 GETIMPORT                        R7 K13 [table.insert]
      169 CALL                             R7 2 0
      170 GETUPVAL                         R5 5
      171 GETUPVAL                         R6 6
      172 MOVE                             R7 R3
      173 MOVE                             R8 R4
      174 CALL                             R5 3 0
      175 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Plugin"]
        3 NAMECALL                         R2 R2 K1 ["use"]
        5 CALL                             R2 1 1
        6 NAMECALL                         R2 R2 K2 ["get"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Localization"]
       12 NAMECALL                         R3 R3 K1 ["use"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          UPVAL U5
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U6
       27 NEWTABLE                         R6 0 4
       29 MOVE                             R7 R2
       30 MOVE                             R8 R0
       31 MOVE                             R9 R1
       32 MOVE                             R10 R3
       33 SETLIST                          R6 R7 4 [1]
       35 CALL                             R4 2 1
       36 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["showContextMenu"]
       25 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R7 K13 ["Util"]
       33 GETTABLEKS                       R7 R7 K14 ["AssetDMBridge"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K16 [game]
       38 LOADK                            R9 K17 ["StudioService"]
       39 NAMECALL                         R7 R7 K18 ["GetService"]
       41 CALL                             R7 2 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R0 K12 ["Src"]
       46 GETTABLEKS                       R9 R9 K19 ["Hooks"]
       48 GETTABLEKS                       R9 R9 K20 ["contextMenuHelpers"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R0 K21 ["Bin"]
       55 GETTABLEKS                       R10 R10 K22 ["Common"]
       57 GETTABLEKS                       R10 R10 K23 ["defineLuaFlags"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R9 K24 ["getFFlagSceneAnalysisBugfixesMay2026"]
       62 CALL                             R10 0 1
       63 DUPCLOSURE                       R11 K25 [PROTO_6]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R6
       71 RETURN                           R11 1
