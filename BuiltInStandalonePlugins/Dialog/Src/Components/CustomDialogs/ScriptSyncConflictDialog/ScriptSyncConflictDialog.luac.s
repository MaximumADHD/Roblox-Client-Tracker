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
       39 DUPTABLE                         R9 K9 [{"uri", "width", "type", "title"}]
       40 GETTABLEKS                       R10 R0 K5 ["uri"]
       42 SETTABLEKS                       R10 R9 K5 ["uri"]
       44 LOADN                            R10 214
       45 SETTABLEKS                       R10 R9 K6 ["width"]
       47 LOADK                            R10 K10 ["Warning"]
       48 SETTABLEKS                       R10 R9 K7 ["type"]
       50 LOADK                            R12 K11 ["ScriptSyncConflictDialog"]
       51 LOADK                            R13 K12 ["Title"]
       52 NAMECALL                         R10 R1 K13 ["getText"]
       54 CALL                             R10 3 1
       55 SETTABLEKS                       R10 R9 K8 ["title"]
       57 DUPTABLE                         R10 K16 [{"Content", "Actions"}]
       58 GETUPVAL                         R11 3
       59 GETUPVAL                         R12 5
       60 GETTABLEKS                       R12 R12 K17 ["View"]
       62 DUPTABLE                         R13 K19 [{"tag"}]
       63 LOADK                            R14 K20 ["col size-full-0 auto-y gap-large"]
       64 SETTABLEKS                       R14 R13 K18 ["tag"]
       66 DUPTABLE                         R14 K24 [{"SourceSelection", "Description", "ChangesPreview"}]
       67 GETUPVAL                         R15 3
       68 GETUPVAL                         R16 6
       69 DUPTABLE                         R17 K30 [{"selectedSource", "onSelected", "studioVersionLabel", "diskVersionLabel", "LayoutOrder"}]
       70 SETTABLEKS                       R3 R17 K25 ["selectedSource"]
       72 SETTABLEKS                       R4 R17 K26 ["onSelected"]
       74 LOADK                            R20 K11 ["ScriptSyncConflictDialog"]
       75 LOADK                            R21 K31 ["SelectStudioButton"]
       76 NAMECALL                         R18 R1 K13 ["getText"]
       78 CALL                             R18 3 1
       79 SETTABLEKS                       R18 R17 K27 ["studioVersionLabel"]
       81 LOADK                            R20 K11 ["ScriptSyncConflictDialog"]
       82 LOADK                            R21 K32 ["SelectDiskButton"]
       83 NAMECALL                         R18 R1 K13 ["getText"]
       85 CALL                             R18 3 1
       86 SETTABLEKS                       R18 R17 K28 ["diskVersionLabel"]
       88 MOVE                             R18 R2
       89 CALL                             R18 0 1
       90 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K21 ["SourceSelection"]
       95 GETUPVAL                         R15 3
       96 GETUPVAL                         R16 5
       97 GETTABLEKS                       R16 R16 K33 ["Text"]
       99 DUPTABLE                         R17 K34 [{"LayoutOrder", "tag", "Text"}]
      100 MOVE                             R18 R2
      101 CALL                             R18 0 1
      102 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      104 LOADK                            R18 K35 ["text-body-medium text-align-x-left size-full-0 auto-y text-wrap"]
      105 SETTABLEKS                       R18 R17 K18 ["tag"]
      107 LOADK                            R20 K11 ["ScriptSyncConflictDialog"]
      108 JUMPIFNOTEQKS                    R3 K2 ["Studio"] ; [+3]
      110 LOADK                            R21 K36 ["KeepStudioDescription"]
      111 JUMP                             ; [+1]
      112 LOADK                            R21 K37 ["KeepDiskDescription"]
      113 NAMECALL                         R18 R1 K13 ["getText"]
      115 CALL                             R18 3 1
      116 SETTABLEKS                       R18 R17 K33 ["Text"]
      118 CALL                             R15 2 1
      119 SETTABLEKS                       R15 R14 K22 ["Description"]
      121 GETUPVAL                         R15 3
      122 GETUPVAL                         R16 7
      123 DUPTABLE                         R17 K39 [{"selectedSource", "input", "LayoutOrder"}]
      124 SETTABLEKS                       R3 R17 K25 ["selectedSource"]
      126 GETTABLEKS                       R18 R0 K38 ["input"]
      128 SETTABLEKS                       R18 R17 K38 ["input"]
      130 MOVE                             R18 R2
      131 CALL                             R18 0 1
      132 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      134 CALL                             R15 2 1
      135 SETTABLEKS                       R15 R14 K23 ["ChangesPreview"]
      137 CALL                             R11 3 1
      138 SETTABLEKS                       R11 R10 K14 ["Content"]
      140 GETUPVAL                         R11 3
      141 GETUPVAL                         R12 5
      142 GETTABLEKS                       R12 R12 K17 ["View"]
      144 DUPTABLE                         R13 K40 [{"tag", "LayoutOrder"}]
      145 LOADK                            R14 K41 ["row size-full-0 auto-y align-x-right gap-small"]
      146 SETTABLEKS                       R14 R13 K18 ["tag"]
      148 MOVE                             R14 R2
      149 CALL                             R14 0 1
      150 SETTABLEKS                       R14 R13 K29 ["LayoutOrder"]
      152 DUPTABLE                         R14 K44 [{"Primary", "Secondary"}]
      153 GETUPVAL                         R15 3
      154 GETUPVAL                         R16 5
      155 GETTABLEKS                       R16 R16 K45 ["Button"]
      157 DUPTABLE                         R17 K50 [{"text", "onActivated", "variant", "size", "LayoutOrder"}]
      158 LOADK                            R20 K11 ["ScriptSyncConflictDialog"]
      159 JUMPIFNOTEQKS                    R3 K2 ["Studio"] ; [+3]
      161 LOADK                            R21 K51 ["KeepStudioButton"]
      162 JUMP                             ; [+1]
      163 LOADK                            R21 K52 ["KeepDiskButton"]
      164 NAMECALL                         R18 R1 K13 ["getText"]
      166 CALL                             R18 3 1
      167 SETTABLEKS                       R18 R17 K46 ["text"]
      169 SETTABLEKS                       R5 R17 K47 ["onActivated"]
      171 GETUPVAL                         R18 5
      172 GETTABLEKS                       R18 R18 K53 ["Enums"]
      174 GETTABLEKS                       R18 R18 K54 ["ButtonVariant"]
      176 GETTABLEKS                       R18 R18 K55 ["Emphasis"]
      178 SETTABLEKS                       R18 R17 K48 ["variant"]
      180 GETUPVAL                         R18 5
      181 GETTABLEKS                       R18 R18 K53 ["Enums"]
      183 GETTABLEKS                       R18 R18 K56 ["InputSize"]
      185 GETTABLEKS                       R18 R18 K57 ["XSmall"]
      187 SETTABLEKS                       R18 R17 K49 ["size"]
      189 MOVE                             R18 R2
      190 CALL                             R18 0 1
      191 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K42 ["Primary"]
      196 GETUPVAL                         R15 3
      197 GETUPVAL                         R16 5
      198 GETTABLEKS                       R16 R16 K45 ["Button"]
      200 DUPTABLE                         R17 K50 [{"text", "onActivated", "variant", "size", "LayoutOrder"}]
      201 LOADK                            R20 K11 ["ScriptSyncConflictDialog"]
      202 LOADK                            R21 K58 ["CancelButton"]
      203 NAMECALL                         R18 R1 K13 ["getText"]
      205 CALL                             R18 3 1
      206 SETTABLEKS                       R18 R17 K46 ["text"]
      208 SETTABLEKS                       R6 R17 K47 ["onActivated"]
      210 GETUPVAL                         R18 5
      211 GETTABLEKS                       R18 R18 K53 ["Enums"]
      213 GETTABLEKS                       R18 R18 K54 ["ButtonVariant"]
      215 GETTABLEKS                       R18 R18 K59 ["Standard"]
      217 SETTABLEKS                       R18 R17 K48 ["variant"]
      219 GETUPVAL                         R18 5
      220 GETTABLEKS                       R18 R18 K53 ["Enums"]
      222 GETTABLEKS                       R18 R18 K56 ["InputSize"]
      224 GETTABLEKS                       R18 R18 K57 ["XSmall"]
      226 SETTABLEKS                       R18 R17 K49 ["size"]
      228 MOVE                             R18 R2
      229 CALL                             R18 0 1
      230 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      232 CALL                             R15 2 1
      233 SETTABLEKS                       R15 R14 K43 ["Secondary"]
      235 CALL                             R11 3 1
      236 SETTABLEKS                       R11 R10 K15 ["Actions"]
      238 CALL                             R7 3 -1
      239 RETURN                           R7 -1

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
       18 GETTABLEKS                       R3 R0 K8 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K2 ["Dialog"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["Framework"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K6 ["Parent"]
       52 GETTABLEKS                       R7 R7 K14 ["SourceSelection"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Packages"]
       59 GETTABLEKS                       R8 R8 K15 ["StudioFoundation"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K8 ["Src"]
       66 GETTABLEKS                       R9 R9 K16 ["Types"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K8 ["Src"]
       73 GETTABLEKS                       R10 R10 K17 ["Flags"]
       75 GETTABLEKS                       R10 R10 K18 ["getFFlagLDP875ScriptSyncLuaDialog"]
       77 CALL                             R9 1 1
       78 GETTABLEKS                       R10 R4 K19 ["ContextServices"]
       80 GETTABLEKS                       R10 R10 K20 ["Localization"]
       82 GETTABLEKS                       R11 R7 K21 ["Util"]
       84 GETTABLEKS                       R11 R11 K22 ["StudioUri"]
       86 GETTABLEKS                       R12 R4 K21 ["Util"]
       88 GETTABLEKS                       R12 R12 K23 ["counter"]
       90 GETTABLEKS                       R13 R5 K24 ["createElement"]
       92 DUPCLOSURE                       R14 K25 [PROTO_2]
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R1
      101 MOVE                             R16 R9
      102 CALL                             R16 0 1
      103 JUMPIFNOT                        R16 ; [+18]
      104 GETIMPORT                        R15 K28 [table.freeze]
      106 DUPTABLE                         R16 K31 [{"uri", "component"}]
      107 GETTABLEKS                       R17 R11 K32 ["fromWidget"]
      109 LOADK                            R18 K33 ["ScriptSync"]
      110 LOADK                            R19 K34 ["ConflictResolutionDialog"]
      111 CALL                             R17 2 1
      112 SETTABLEKS                       R17 R16 K29 ["uri"]
      114 GETTABLEKS                       R17 R5 K35 ["memo"]
      116 MOVE                             R18 R14
      117 CALL                             R17 1 1
      118 SETTABLEKS                       R17 R16 K30 ["component"]
      120 CALL                             R15 1 1
      121 RETURN                           R15 1
      122 LOADNIL                          R15
      123 RETURN                           R15 1
