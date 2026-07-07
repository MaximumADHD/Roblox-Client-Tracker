PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onResolved"]
        3 LOADK                            R1 K1 ["Cancel"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["useState"]
        9 LOADK                            R4 K2 ["Studio"]
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R7 0 2
       19 GETTABLEKS                       R8 R0 K4 ["onResolved"]
       21 MOVE                             R9 R3
       22 SETLIST                          R7 R8 2 [1]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R8 0 1
       32 GETTABLEKS                       R9 R0 K4 ["onResolved"]
       34 SETLIST                          R8 R9 1 [1]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 3
       38 GETUPVAL                         R8 4
       39 DUPTABLE                         R9 K11 [{["uri"], ["width"] = 470, ["type"] = "Warning", ["title"]}]
       40 GETTABLEKS                       R10 R0 K5 ["uri"]
       42 SETTABLEKS                       R10 R9 K5 ["uri"]
       44 LOADK                            R12 K12 ["ScriptSyncConflictDialog"]
       45 LOADK                            R13 K13 ["Title"]
       46 NAMECALL                         R10 R1 K14 ["getText"]
       48 CALL                             R10 3 1
       49 SETTABLEKS                       R10 R9 K10 ["title"]
       51 DUPTABLE                         R10 K17 [{"Content", "Actions"}]
       52 GETUPVAL                         R11 3
       53 GETUPVAL                         R12 5
       54 GETTABLEKS                       R12 R12 K18 ["View"]
       56 DUPTABLE                         R13 K21 [{["tag"] = "col gap-large size-full-0 auto-y"}]
       57 DUPTABLE                         R14 K25 [{"SourceSelection", "Description", "ChangesPreview"}]
       58 GETUPVAL                         R15 3
       59 GETUPVAL                         R16 6
       60 DUPTABLE                         R17 K31 [{"selectedSource", "onSelected", "studioVersionLabel", "diskVersionLabel", "LayoutOrder"}]
       61 SETTABLEKS                       R3 R17 K26 ["selectedSource"]
       63 SETTABLEKS                       R4 R17 K27 ["onSelected"]
       65 LOADK                            R20 K12 ["ScriptSyncConflictDialog"]
       66 LOADK                            R21 K32 ["SelectStudioButton"]
       67 NAMECALL                         R18 R1 K14 ["getText"]
       69 CALL                             R18 3 1
       70 SETTABLEKS                       R18 R17 K28 ["studioVersionLabel"]
       72 LOADK                            R20 K12 ["ScriptSyncConflictDialog"]
       73 LOADK                            R21 K33 ["SelectDiskButton"]
       74 NAMECALL                         R18 R1 K14 ["getText"]
       76 CALL                             R18 3 1
       77 SETTABLEKS                       R18 R17 K29 ["diskVersionLabel"]
       79 MOVE                             R18 R2
       80 CALL                             R18 0 1
       81 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
       83 CALL                             R15 2 1
       84 SETTABLEKS                       R15 R14 K22 ["SourceSelection"]
       86 GETUPVAL                         R15 3
       87 GETUPVAL                         R16 5
       88 GETTABLEKS                       R16 R16 K34 ["Text"]
       90 DUPTABLE                         R17 K36 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left", ["Text"]}]
       91 MOVE                             R18 R2
       92 CALL                             R18 0 1
       93 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
       95 LOADK                            R20 K12 ["ScriptSyncConflictDialog"]
       96 JUMPIFNOTEQKS                    R3 K2 ["Studio"] ; [+3]
       98 LOADK                            R21 K37 ["KeepStudioDescription"]
       99 JUMP                             ; [+1]
      100 LOADK                            R21 K38 ["KeepDiskDescription"]
      101 NAMECALL                         R18 R1 K14 ["getText"]
      103 CALL                             R18 3 1
      104 SETTABLEKS                       R18 R17 K34 ["Text"]
      106 CALL                             R15 2 1
      107 SETTABLEKS                       R15 R14 K23 ["Description"]
      109 GETUPVAL                         R15 3
      110 GETUPVAL                         R16 7
      111 DUPTABLE                         R17 K40 [{"selectedSource", "input", "LayoutOrder"}]
      112 SETTABLEKS                       R3 R17 K26 ["selectedSource"]
      114 GETTABLEKS                       R18 R0 K39 ["input"]
      116 SETTABLEKS                       R18 R17 K39 ["input"]
      118 MOVE                             R18 R2
      119 CALL                             R18 0 1
      120 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K24 ["ChangesPreview"]
      125 CALL                             R11 3 1
      126 SETTABLEKS                       R11 R10 K15 ["Content"]
      128 GETUPVAL                         R11 3
      129 GETUPVAL                         R12 5
      130 GETTABLEKS                       R12 R12 K18 ["View"]
      132 DUPTABLE                         R13 K42 [{["tag"] = "row align-x-right gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      133 MOVE                             R14 R2
      134 CALL                             R14 0 1
      135 SETTABLEKS                       R14 R13 K30 ["LayoutOrder"]
      137 DUPTABLE                         R14 K45 [{"Primary", "Secondary"}]
      138 GETUPVAL                         R15 3
      139 GETUPVAL                         R16 5
      140 GETTABLEKS                       R16 R16 K46 ["Button"]
      142 DUPTABLE                         R17 K51 [{"text", "onActivated", "variant", "size", "LayoutOrder"}]
      143 LOADK                            R20 K12 ["ScriptSyncConflictDialog"]
      144 JUMPIFNOTEQKS                    R3 K2 ["Studio"] ; [+3]
      146 LOADK                            R21 K52 ["KeepStudioButton"]
      147 JUMP                             ; [+1]
      148 LOADK                            R21 K53 ["KeepDiskButton"]
      149 NAMECALL                         R18 R1 K14 ["getText"]
      151 CALL                             R18 3 1
      152 SETTABLEKS                       R18 R17 K47 ["text"]
      154 SETTABLEKS                       R5 R17 K48 ["onActivated"]
      156 GETUPVAL                         R18 5
      157 GETTABLEKS                       R18 R18 K54 ["Enums"]
      159 GETTABLEKS                       R18 R18 K55 ["ButtonVariant"]
      161 GETTABLEKS                       R18 R18 K56 ["Emphasis"]
      163 SETTABLEKS                       R18 R17 K49 ["variant"]
      165 GETUPVAL                         R18 5
      166 GETTABLEKS                       R18 R18 K54 ["Enums"]
      168 GETTABLEKS                       R18 R18 K57 ["InputSize"]
      170 GETTABLEKS                       R18 R18 K58 ["XSmall"]
      172 SETTABLEKS                       R18 R17 K50 ["size"]
      174 MOVE                             R18 R2
      175 CALL                             R18 0 1
      176 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      178 CALL                             R15 2 1
      179 SETTABLEKS                       R15 R14 K43 ["Primary"]
      181 GETUPVAL                         R15 3
      182 GETUPVAL                         R16 5
      183 GETTABLEKS                       R16 R16 K46 ["Button"]
      185 DUPTABLE                         R17 K51 [{"text", "onActivated", "variant", "size", "LayoutOrder"}]
      186 LOADK                            R20 K12 ["ScriptSyncConflictDialog"]
      187 LOADK                            R21 K59 ["CancelButton"]
      188 NAMECALL                         R18 R1 K14 ["getText"]
      190 CALL                             R18 3 1
      191 SETTABLEKS                       R18 R17 K47 ["text"]
      193 SETTABLEKS                       R6 R17 K48 ["onActivated"]
      195 GETUPVAL                         R18 5
      196 GETTABLEKS                       R18 R18 K54 ["Enums"]
      198 GETTABLEKS                       R18 R18 K55 ["ButtonVariant"]
      200 GETTABLEKS                       R18 R18 K60 ["Standard"]
      202 SETTABLEKS                       R18 R17 K49 ["variant"]
      204 GETUPVAL                         R18 5
      205 GETTABLEKS                       R18 R18 K54 ["Enums"]
      207 GETTABLEKS                       R18 R18 K57 ["InputSize"]
      209 GETTABLEKS                       R18 R18 K58 ["XSmall"]
      211 SETTABLEKS                       R18 R17 K50 ["size"]
      213 MOVE                             R18 R2
      214 CALL                             R18 0 1
      215 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      217 CALL                             R15 2 1
      218 SETTABLEKS                       R15 R14 K44 ["Secondary"]
      220 CALL                             R11 3 1
      221 SETTABLEKS                       R11 R10 K16 ["Actions"]
      223 CALL                             R7 3 -1
      224 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["ChangesPreview"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Packages"]
       20 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Packages"]
       27 GETTABLEKS                       R4 R4 K10 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Packages"]
       34 GETTABLEKS                       R5 R5 K11 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K12 ["SourceSelection"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K8 ["Packages"]
       50 GETTABLEKS                       R7 R7 K13 ["StudioFoundation"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K14 ["Src"]
       57 GETTABLEKS                       R8 R8 K15 ["Types"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K14 ["Src"]
       64 GETTABLEKS                       R9 R9 K16 ["Flags"]
       66 GETTABLEKS                       R9 R9 K17 ["getFFlagLDP875ScriptSyncLuaDialog"]
       68 CALL                             R8 1 1
       69 GETTABLEKS                       R10 R6 K18 ["SharedFlags"]
       71 GETTABLEKS                       R10 R10 K19 ["getFFlagStudioFoundationDialogComponent"]
       73 CALL                             R10 0 1
       74 JUMPIFNOT                        R10 ; [+5]
       75 GETTABLEKS                       R9 R6 K20 ["Components"]
       77 GETTABLEKS                       R9 R9 K2 ["Dialog"]
       79 JUMP                             ; [+9]
       80 GETIMPORT                        R9 K5 [require]
       82 GETTABLEKS                       R10 R0 K14 ["Src"]
       84 GETTABLEKS                       R10 R10 K20 ["Components"]
       86 GETTABLEKS                       R10 R10 K21 ["DEPRECATED_Dialog"]
       88 CALL                             R9 1 1
       89 GETTABLEKS                       R10 R3 K22 ["ContextServices"]
       91 GETTABLEKS                       R10 R10 K23 ["Localization"]
       93 GETTABLEKS                       R11 R6 K24 ["Util"]
       95 GETTABLEKS                       R11 R11 K25 ["StudioUri"]
       97 GETTABLEKS                       R12 R3 K24 ["Util"]
       99 GETTABLEKS                       R12 R12 K26 ["counter"]
      101 GETTABLEKS                       R13 R4 K27 ["createElement"]
      103 DUPCLOSURE                       R14 K28 [PROTO_2]
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R1
      112 MOVE                             R16 R8
      113 CALL                             R16 0 1
      114 JUMPIFNOT                        R16 ; [+18]
      115 GETIMPORT                        R15 K31 [table.freeze]
      117 DUPTABLE                         R16 K34 [{"uri", "component"}]
      118 GETTABLEKS                       R17 R11 K35 ["fromWidget"]
      120 LOADK                            R18 K36 ["ScriptSync"]
      121 LOADK                            R19 K37 ["ConflictResolutionDialog"]
      122 CALL                             R17 2 1
      123 SETTABLEKS                       R17 R16 K32 ["uri"]
      125 GETTABLEKS                       R17 R4 K38 ["memo"]
      127 MOVE                             R18 R14
      128 CALL                             R17 1 1
      129 SETTABLEKS                       R17 R16 K33 ["component"]
      131 CALL                             R15 1 1
      132 RETURN                           R15 1
      133 LOADNIL                          R15
      134 RETURN                           R15 1
