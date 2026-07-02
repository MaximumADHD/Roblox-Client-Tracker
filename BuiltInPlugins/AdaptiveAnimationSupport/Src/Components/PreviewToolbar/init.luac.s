PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onPlaybackStateChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopPlayback"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["stopPlayback"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onPlaybackStateChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["autoAll"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resetAll"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onEdit"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 GETTABLEKS                       R3 R0 K0 ["localization"]
        5 GETTABLEKS                       R4 R0 K1 ["model"]
        7 CALL                             R1 3 4
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R4
       14 NEWTABLE                         R7 0 1
       16 MOVE                             R8 R4
       17 SETLIST                          R7 R8 1 [1]
       19 CALL                             R5 2 0
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K2 ["useEffect"]
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
       41 DUPTABLE                         R8 K9 [{["Type"] = "Separator"}]
       42 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       44 MOVE                             R7 R5
       45 GETIMPORT                        R6 K11 [table.insert]
       47 CALL                             R6 2 0
       48 GETTABLEKS                       R6 R0 K0 ["localization"]
       50 DUPTABLE                         R9 K18 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"], ["Enabled"]}]
       51 LOADK                            R12 K19 ["Toolbar"]
       52 LOADK                            R13 K20 ["AutoAll"]
       53 NAMECALL                         R10 R6 K21 ["getText"]
       55 CALL                             R10 3 1
       56 SETTABLEKS                       R10 R9 K13 ["Tooltip"]
       58 LOADK                            R12 K19 ["Toolbar"]
       59 LOADK                            R13 K22 ["AutoAllTooltip"]
       60 NAMECALL                         R10 R6 K21 ["getText"]
       62 CALL                             R10 3 1
       63 SETTABLEKS                       R10 R9 K14 ["TooltipDescription"]
       65 GETUPVAL                         R10 2
       66 GETTABLEKS                       R10 R10 K23 ["MAGIC"]
       68 SETTABLEKS                       R10 R9 K15 ["Icon"]
       70 NEWCLOSURE                       R10 P3
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R10 R9 K16 ["OnClick"]
       74 NOT                              R10 R3
       75 SETTABLEKS                       R10 R9 K17 ["Enabled"]
       77 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       79 MOVE                             R8 R5
       80 GETIMPORT                        R7 K11 [table.insert]
       82 CALL                             R7 2 0
       83 DUPTABLE                         R9 K9 [{["Type"] = "Separator"}]
       84 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
       86 MOVE                             R8 R5
       87 GETIMPORT                        R7 K11 [table.insert]
       89 CALL                             R7 2 0
       90 DUPTABLE                         R9 K18 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"], ["Enabled"]}]
       91 LOADK                            R12 K19 ["Toolbar"]
       92 LOADK                            R13 K24 ["ResetAll"]
       93 NAMECALL                         R10 R6 K21 ["getText"]
       95 CALL                             R10 3 1
       96 SETTABLEKS                       R10 R9 K13 ["Tooltip"]
       98 LOADK                            R12 K19 ["Toolbar"]
       99 LOADK                            R13 K25 ["ResetAllTooltip"]
      100 NAMECALL                         R10 R6 K21 ["getText"]
      102 CALL                             R10 3 1
      103 SETTABLEKS                       R10 R9 K14 ["TooltipDescription"]
      105 GETUPVAL                         R10 2
      106 GETTABLEKS                       R10 R10 K26 ["RESET"]
      108 SETTABLEKS                       R10 R9 K15 ["Icon"]
      110 NEWCLOSURE                       R10 P4
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R10 R9 K16 ["OnClick"]
      114 NOT                              R10 R3
      115 SETTABLEKS                       R10 R9 K17 ["Enabled"]
      117 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      119 MOVE                             R8 R5
      120 GETIMPORT                        R7 K11 [table.insert]
      122 CALL                             R7 2 0
      123 DUPTABLE                         R9 K31 [{["Type"] = "TextButton", ["Text"], ["Tooltip"], ["Style"] = "Round", ["OnClick"]}]
      124 LOADK                            R12 K32 ["Mode"]
      125 LOADK                            R13 K33 ["Edit"]
      126 NAMECALL                         R10 R6 K21 ["getText"]
      128 CALL                             R10 3 1
      129 SETTABLEKS                       R10 R9 K28 ["Text"]
      131 LOADK                            R12 K32 ["Mode"]
      132 LOADK                            R13 K33 ["Edit"]
      133 NAMECALL                         R10 R6 K21 ["getText"]
      135 CALL                             R10 3 1
      136 SETTABLEKS                       R10 R9 K13 ["Tooltip"]
      138 NEWCLOSURE                       R10 P5
      139 CAPTURE                          VAL R0
      140 SETTABLEKS                       R10 R9 K16 ["OnClick"]
      142 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      144 MOVE                             R8 R5
      145 GETIMPORT                        R7 K11 [table.insert]
      147 CALL                             R7 2 0
      148 GETUPVAL                         R7 1
      149 GETTABLEKS                       R7 R7 K34 ["createElement"]
      151 GETUPVAL                         R8 1
      152 GETTABLEKS                       R8 R8 K35 ["Fragment"]
      154 NEWTABLE                         R9 0 0
      156 DUPTABLE                         R10 K37 [{"Toolbar", "PreviewPlayback"}]
      157 GETUPVAL                         R11 1
      158 GETTABLEKS                       R11 R11 K34 ["createElement"]
      160 GETUPVAL                         R12 3
      161 GETTABLEKS                       R12 R12 K19 ["Toolbar"]
      163 DUPTABLE                         R13 K41 [{["InitialPosition"] = "Center", ["HorizontalItems"]}]
      164 SETTABLEKS                       R5 R13 K40 ["HorizontalItems"]
      166 CALL                             R11 2 1
      167 SETTABLEKS                       R11 R10 K19 ["Toolbar"]
      169 GETTABLEKS                       R11 R0 K1 ["model"]
      171 JUMPIFNOT                        R11 ; [+14]
      172 GETUPVAL                         R11 1
      173 GETTABLEKS                       R11 R11 K34 ["createElement"]
      175 GETUPVAL                         R12 4
      176 DUPTABLE                         R13 K44 [{"model", "animationId", "isPlaying"}]
      177 GETTABLEKS                       R14 R0 K1 ["model"]
      179 SETTABLEKS                       R14 R13 K1 ["model"]
      181 SETTABLEKS                       R2 R13 K42 ["animationId"]
      183 SETTABLEKS                       R3 R13 K43 ["isPlaying"]
      185 CALL                             R11 2 1
      186 SETTABLEKS                       R11 R10 K36 ["PreviewPlayback"]
      188 CALL                             R7 3 -1
      189 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["PreviewToolbar"]
       15 GETTABLEKS                       R2 R2 K9 ["PreviewPlayback"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K8 ["PreviewToolbar"]
       26 GETTABLEKS                       R3 R3 K10 ["usePreviewPlaybackItems"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K11 ["Resources"]
       35 GETTABLEKS                       R4 R4 K12 ["Constants"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K13 ["Packages"]
       42 GETTABLEKS                       R5 R5 K14 ["React"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K13 ["Packages"]
       49 GETTABLEKS                       R6 R6 K15 ["ViewportToolingFramework"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K16 [PROTO_6]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R1
       58 RETURN                           R6 1
