PROTO_0:
        0 LOADNIL                          R4
        1 MOVE                             R5 R0
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 FORGPREP                         R5
        5 MOVE                             R12 R8
        6 NAMECALL                         R10 R2 K0 ["findScriptGUID"]
        8 CALL                             R10 2 1
        9 JUMPIFNOTEQKNIL                  R4 ; [+2]
       11 MOVE                             R4 R10
       12 MOVE                             R11 R9
       13 LOADNIL                          R12
       14 LOADNIL                          R13
       15 FORGPREP                         R11
       16 GETTABLE                         R16 R1 R10
       17 GETUPVAL                         R18 0
       18 GETTABLEKS                       R17 R18 K1 ["getConvertedAnimationAssetInfo"]
       20 GETTABLEKS                       R18 R15 K2 ["info"]
       22 CALL                             R17 1 1
       23 GETTABLEKS                       R18 R17 K3 ["id"]
       25 JUMPIFNOT                        R18 ; [+14]
       26 GETUPVAL                         R19 1
       27 GETTABLEKS                       R18 R19 K4 ["replaceWithSuggestion"]
       29 MOVE                             R19 R10
       30 GETTABLEKS                       R21 R15 K5 ["ref"]
       32 GETTABLEKS                       R20 R21 K6 ["range"]
       34 MOVE                             R21 R2
       35 GETTABLEKS                       R22 R17 K7 ["url"]
       37 MOVE                             R23 R16
       38 MOVE                             R24 R3
       39 CALL                             R18 6 0
       40 FORGLOOP                         R11 2 ; [-25]
       42 JUMPIFEQ                         R10 R4 ; [+5]
       44 MOVE                             R13 R10
       45 NAMECALL                         R11 R2 K8 ["closeScriptIfOpen"]
       47 CALL                             R11 2 0
       48 FORGLOOP                         R5 2 ; [-44]
       50 JUMPIFNOT                        R4 ; [+4]
       51 MOVE                             R7 R4
       52 NAMECALL                         R5 R2 K8 ["closeScriptIfOpen"]
       54 CALL                             R5 2 0
       55 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["AnimationConversion"]
        5 GETTABLEKS                       R2 R3 K2 ["animations"]
        7 GETTABLEKS                       R4 R1 K3 ["ScriptConversion"]
        9 GETTABLEKS                       R3 R4 K4 ["diagnostics"]
       11 GETUPVAL                         R4 0
       12 LOADK                            R6 K5 ["preReplace"]
       13 NAMECALL                         R4 R4 K6 ["SetWaypoint"]
       15 CALL                             R4 2 0
       16 NEWTABLE                         R4 0 0
       18 GETUPVAL                         R5 1
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETUPVAL                         R11 2
       23 GETTABLEKS                       R10 R11 K7 ["getConvertedAnimationAssetInfo"]
       25 MOVE                             R11 R9
       26 CALL                             R10 1 1
       27 GETTABLEKS                       R11 R10 K8 ["id"]
       29 JUMPIF                           R11 ; [+1]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R13 R10 K9 ["_type"]
       33 NAMECALL                         R11 R9 K10 ["IsA"]
       35 CALL                             R11 2 1
       36 JUMPIF                           R11 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R11 K12 [next]
       40 GETTABLEKS                       R14 R9 K8 ["id"]
       42 GETTABLE                         R13 R2 R14
       43 GETTABLEKS                       R12 R13 K13 ["refs"]
       45 CALL                             R11 1 1
       46 JUMPIFNOT                        R11 ; [+131]
       47 GETUPVAL                         R11 3
       48 GETTABLEKS                       R13 R9 K8 ["id"]
       50 GETTABLE                         R12 R2 R13
       51 CALL                             R11 1 1
       52 GETUPVAL                         R13 2
       53 GETTABLEKS                       R12 R13 K14 ["getConvertedKeyframeSequence"]
       55 MOVE                             R13 R9
       56 CALL                             R12 1 1
       57 NEWTABLE                         R13 0 0
       59 LOADN                            R14 0
       60 GETTABLEKS                       R15 R11 K13 ["refs"]
       62 LOADNIL                          R16
       63 LOADNIL                          R17
       64 FORGPREP                         R15
       65 GETUPVAL                         R23 4
       66 GETTABLEKS                       R22 R23 K15 ["LocalAsset"]
       68 NAMECALL                         R20 R19 K10 ["IsA"]
       70 CALL                             R20 2 1
       71 JUMPIFNOT                        R20 ; [+27]
       72 NAMECALL                         R20 R18 K16 ["ClearAllChildren"]
       74 CALL                             R20 1 0
       75 NAMECALL                         R20 R12 K17 ["GetChildren"]
       77 CALL                             R20 1 3
       78 FORGPREP                         R20
       79 NAMECALL                         R25 R24 K18 ["Clone"]
       81 CALL                             R25 1 1
       82 SETTABLEKS                       R18 R25 K19 ["Parent"]
       84 FORGLOOP                         R20 2 ; [-6]
       86 FASTCALL2                        TABLE_INSERT R13 R18 ; [+5]
       88 MOVE                             R21 R13
       89 MOVE                             R22 R18
       90 GETIMPORT                        R20 K22 [table.insert]
       92 CALL                             R20 2 0
       93 GETUPVAL                         R20 5
       94 MOVE                             R22 R18
       95 NAMECALL                         R20 R20 K23 ["removeTag"]
       97 CALL                             R20 2 0
       98 JUMP                             ; [+57]
       99 GETUPVAL                         R23 4
      100 GETTABLEKS                       R22 R23 K24 ["AnimationInstance"]
      102 NAMECALL                         R20 R19 K10 ["IsA"]
      104 CALL                             R20 2 1
      105 JUMPIFNOT                        R20 ; [+17]
      106 GETTABLEKS                       R20 R10 K25 ["url"]
      108 SETTABLEKS                       R20 R18 K26 ["AnimationId"]
      110 FASTCALL2                        TABLE_INSERT R13 R18 ; [+5]
      112 MOVE                             R21 R13
      113 MOVE                             R22 R18
      114 GETIMPORT                        R20 K22 [table.insert]
      116 CALL                             R20 2 0
      117 GETUPVAL                         R20 5
      118 MOVE                             R22 R18
      119 NAMECALL                         R20 R20 K23 ["removeTag"]
      121 CALL                             R20 2 0
      122 JUMP                             ; [+33]
      123 GETUPVAL                         R23 4
      124 GETTABLEKS                       R22 R23 K27 ["AssetIdString"]
      126 NAMECALL                         R20 R19 K10 ["IsA"]
      128 CALL                             R20 2 1
      129 JUMPIFNOT                        R20 ; [+26]
      130 GETTABLEKS                       R20 R18 K28 ["scriptInstance"]
      132 GETTABLE                         R21 R4 R20
      133 JUMPIFNOT                        R21 ; [+12]
      134 GETTABLE                         R22 R4 R20
      135 DUPTABLE                         R23 K31 [{"ref", "info"}]
      136 SETTABLEKS                       R18 R23 K29 ["ref"]
      138 SETTABLEKS                       R9 R23 K30 ["info"]
      140 FASTCALL2                        TABLE_INSERT R22 R23 ; [+3]
      142 GETIMPORT                        R21 K22 [table.insert]
      144 CALL                             R21 2 0
      145 JUMP                             ; [+10]
      146 NEWTABLE                         R21 0 1
      148 DUPTABLE                         R22 K31 [{"ref", "info"}]
      149 SETTABLEKS                       R18 R22 K29 ["ref"]
      151 SETTABLEKS                       R9 R22 K30 ["info"]
      153 SETLIST                          R21 R22 1 [1]
      155 SETTABLE                         R21 R4 R20
      156 ADDK                             R14 R14 K32 [1]
      157 FORGLOOP                         R15 2 ; [-93]
      159 LENGTH                           R15 R13
      160 JUMPIFNOTEQ                      R14 R15 ; [+5]
      162 NAMECALL                         R15 R11 K33 ["complete"]
      164 CALL                             R15 1 0
      165 JUMP                             ; [+4]
      166 MOVE                             R17 R13
      167 NAMECALL                         R15 R11 K34 ["removeRefs"]
      169 CALL                             R15 2 0
      170 GETUPVAL                         R17 6
      171 GETTABLEKS                       R18 R9 K8 ["id"]
      173 MOVE                             R19 R11
      174 CALL                             R17 2 -1
      175 NAMECALL                         R15 R0 K35 ["dispatch"]
      177 CALL                             R15 -1 0
      178 FORGLOOP                         R5 2 ; [-157]
      180 GETUPVAL                         R5 7
      181 MOVE                             R6 R4
      182 MOVE                             R7 R3
      183 GETUPVAL                         R8 8
      184 GETUPVAL                         R9 9
      185 CALL                             R5 4 0
      186 GETUPVAL                         R5 0
      187 LOADK                            R7 K36 ["postReplace"]
      188 NAMECALL                         R5 R5 K6 ["SetWaypoint"]
      190 CALL                             R5 2 0
      191 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R4 R2 K12 ["Util"]
       22 GETTABLEKS                       R3 R4 K13 ["deepCopy"]
       24 GETTABLEKS                       R5 R0 K14 ["Src"]
       26 GETTABLEKS                       R4 R5 K12 ["Util"]
       28 GETIMPORT                        R6 K9 [require]
       30 GETTABLEKS                       R7 R4 K15 ["PublishTagging"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R5 R6 K16 ["AnimationTagging"]
       35 GETIMPORT                        R6 K9 [require]
       37 GETTABLEKS                       R7 R4 K17 ["ScriptReplacement"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R4 K18 ["AnimationConversion"]
       42 GETIMPORT                        R8 K9 [require]
       44 GETTABLEKS                       R9 R7 K19 ["AnimationConversionManager"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K9 [require]
       49 GETTABLEKS                       R10 R7 K20 ["constants"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R10 R9 K21 ["AssetType"]
       54 GETTABLEKS                       R12 R0 K14 ["Src"]
       56 GETTABLEKS                       R11 R12 K22 ["Actions"]
       58 GETIMPORT                        R12 K9 [require]
       60 GETTABLEKS                       R13 R11 K23 ["SetAnimation"]
       62 CALL                             R12 1 1
       63 DUPCLOSURE                       R13 K24 [PROTO_0]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R6
       66 DUPCLOSURE                       R14 K25 [PROTO_2]
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R13
       74 RETURN                           R14 1
