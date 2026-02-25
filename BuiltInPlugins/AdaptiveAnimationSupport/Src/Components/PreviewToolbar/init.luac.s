PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onPlaybackStateChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["stopPlayback"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["stopPlayback"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onPlaybackStateChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["autoAll"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["resetAll"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onEdit"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 GETTABLEKS                       R3 R0 K0 ["localization"]
        5 GETTABLEKS                       R4 R0 K1 ["model"]
        7 CALL                             R1 3 4
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R4
       14 NEWTABLE                         R7 0 1
       16 MOVE                             R8 R4
       17 SETLIST                          R7 R8 1 [1]
       19 CALL                             R5 2 0
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       23 NEWCLOSURE                       R6 P2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R7 0 1
       28 MOVE                             R8 R3
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 0
       32 GETTABLEKS                       R5 R0 K3 ["visible"]
       34 JUMPIF                           R5 ; [+2]
       35 LOADNIL                          R5
       36 RETURN                           R5 1
       37 GETIMPORT                        R5 K6 [table.clone]
       39 MOVE                             R6 R1
       40 CALL                             R5 1 1
       41 DUPTABLE                         R8 K8 [{"Type"}]
       42 LOADK                            R9 K9 ["Separator"]
       43 SETTABLEKS                       R9 R8 K7 ["Type"]
       45 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       47 MOVE                             R7 R5
       48 GETIMPORT                        R6 K11 [table.insert]
       50 CALL                             R6 2 0
       51 GETTABLEKS                       R6 R0 K0 ["localization"]
       53 DUPTABLE                         R9 K17 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick", "Enabled"}]
       54 LOADK                            R10 K18 ["Button"]
       55 SETTABLEKS                       R10 R9 K7 ["Type"]
       57 LOADK                            R12 K19 ["Toolbar"]
       58 LOADK                            R13 K20 ["AutoAll"]
       59 NAMECALL                         R10 R6 K21 ["getText"]
       61 CALL                             R10 3 1
       62 SETTABLEKS                       R10 R9 K12 ["Tooltip"]
       64 LOADK                            R12 K19 ["Toolbar"]
       65 LOADK                            R13 K22 ["AutoAllTooltip"]
       66 NAMECALL                         R10 R6 K21 ["getText"]
       68 CALL                             R10 3 1
       69 SETTABLEKS                       R10 R9 K13 ["TooltipDescription"]
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R10 R11 K23 ["MAGIC"]
       74 SETTABLEKS                       R10 R9 K14 ["Icon"]
       76 NEWCLOSURE                       R10 P3
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R10 R9 K15 ["OnClick"]
       80 NOT                              R10 R3
       81 SETTABLEKS                       R10 R9 K16 ["Enabled"]
       83 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       85 MOVE                             R8 R5
       86 GETIMPORT                        R7 K11 [table.insert]
       88 CALL                             R7 2 0
       89 DUPTABLE                         R9 K8 [{"Type"}]
       90 LOADK                            R10 K9 ["Separator"]
       91 SETTABLEKS                       R10 R9 K7 ["Type"]
       93 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       95 MOVE                             R8 R5
       96 GETIMPORT                        R7 K11 [table.insert]
       98 CALL                             R7 2 0
       99 DUPTABLE                         R9 K17 [{"Type", "Tooltip", "TooltipDescription", "Icon", "OnClick", "Enabled"}]
      100 LOADK                            R10 K18 ["Button"]
      101 SETTABLEKS                       R10 R9 K7 ["Type"]
      103 LOADK                            R12 K19 ["Toolbar"]
      104 LOADK                            R13 K24 ["ResetAll"]
      105 NAMECALL                         R10 R6 K21 ["getText"]
      107 CALL                             R10 3 1
      108 SETTABLEKS                       R10 R9 K12 ["Tooltip"]
      110 LOADK                            R12 K19 ["Toolbar"]
      111 LOADK                            R13 K25 ["ResetAllTooltip"]
      112 NAMECALL                         R10 R6 K21 ["getText"]
      114 CALL                             R10 3 1
      115 SETTABLEKS                       R10 R9 K13 ["TooltipDescription"]
      117 GETUPVAL                         R11 2
      118 GETTABLEKS                       R10 R11 K26 ["RESET"]
      120 SETTABLEKS                       R10 R9 K14 ["Icon"]
      122 NEWCLOSURE                       R10 P4
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R10 R9 K15 ["OnClick"]
      126 NOT                              R10 R3
      127 SETTABLEKS                       R10 R9 K16 ["Enabled"]
      129 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      131 MOVE                             R8 R5
      132 GETIMPORT                        R7 K11 [table.insert]
      134 CALL                             R7 2 0
      135 DUPTABLE                         R9 K29 [{"Type", "Text", "Tooltip", "Style", "OnClick"}]
      136 LOADK                            R10 K30 ["TextButton"]
      137 SETTABLEKS                       R10 R9 K7 ["Type"]
      139 LOADK                            R12 K31 ["Mode"]
      140 LOADK                            R13 K32 ["Edit"]
      141 NAMECALL                         R10 R6 K21 ["getText"]
      143 CALL                             R10 3 1
      144 SETTABLEKS                       R10 R9 K27 ["Text"]
      146 LOADK                            R12 K31 ["Mode"]
      147 LOADK                            R13 K32 ["Edit"]
      148 NAMECALL                         R10 R6 K21 ["getText"]
      150 CALL                             R10 3 1
      151 SETTABLEKS                       R10 R9 K12 ["Tooltip"]
      153 LOADK                            R10 K33 ["Round"]
      154 SETTABLEKS                       R10 R9 K28 ["Style"]
      156 NEWCLOSURE                       R10 P5
      157 CAPTURE                          VAL R0
      158 SETTABLEKS                       R10 R9 K15 ["OnClick"]
      160 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      162 MOVE                             R8 R5
      163 GETIMPORT                        R7 K11 [table.insert]
      165 CALL                             R7 2 0
      166 GETUPVAL                         R8 1
      167 GETTABLEKS                       R7 R8 K34 ["createElement"]
      169 GETUPVAL                         R9 1
      170 GETTABLEKS                       R8 R9 K35 ["Fragment"]
      172 NEWTABLE                         R9 0 0
      174 DUPTABLE                         R10 K37 [{"Toolbar", "PreviewPlayback"}]
      175 GETUPVAL                         R12 1
      176 GETTABLEKS                       R11 R12 K34 ["createElement"]
      178 GETUPVAL                         R13 3
      179 GETTABLEKS                       R12 R13 K19 ["Toolbar"]
      181 DUPTABLE                         R13 K40 [{"InitialPosition", "HorizontalItems"}]
      182 LOADK                            R14 K41 ["Center"]
      183 SETTABLEKS                       R14 R13 K38 ["InitialPosition"]
      185 SETTABLEKS                       R5 R13 K39 ["HorizontalItems"]
      187 CALL                             R11 2 1
      188 SETTABLEKS                       R11 R10 K19 ["Toolbar"]
      190 GETTABLEKS                       R11 R0 K1 ["model"]
      192 JUMPIFNOT                        R11 ; [+14]
      193 GETUPVAL                         R12 1
      194 GETTABLEKS                       R11 R12 K34 ["createElement"]
      196 GETUPVAL                         R12 4
      197 DUPTABLE                         R13 K44 [{"model", "animationId", "isPlaying"}]
      198 GETTABLEKS                       R14 R0 K1 ["model"]
      200 SETTABLEKS                       R14 R13 K1 ["model"]
      202 SETTABLEKS                       R2 R13 K42 ["animationId"]
      204 SETTABLEKS                       R3 R13 K43 ["isPlaying"]
      206 CALL                             R11 2 1
      207 SETTABLEKS                       R11 R10 K36 ["PreviewPlayback"]
      209 CALL                             R7 3 -1
      210 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Components"]
       13 GETTABLEKS                       R3 R4 K8 ["PreviewToolbar"]
       15 GETTABLEKS                       R2 R3 K9 ["PreviewPlayback"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R6 R0 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K7 ["Components"]
       24 GETTABLEKS                       R4 R5 K8 ["PreviewToolbar"]
       26 GETTABLEKS                       R3 R4 K10 ["usePreviewPlaybackItems"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R6 R0 K6 ["Src"]
       33 GETTABLEKS                       R5 R6 K11 ["Resources"]
       35 GETTABLEKS                       R4 R5 K12 ["Constants"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R6 R0 K13 ["Packages"]
       42 GETTABLEKS                       R5 R6 K14 ["React"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R7 R0 K13 ["Packages"]
       49 GETTABLEKS                       R6 R7 K15 ["ViewportToolingFramework"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K16 [PROTO_6]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R1
       58 RETURN                           R6 1
