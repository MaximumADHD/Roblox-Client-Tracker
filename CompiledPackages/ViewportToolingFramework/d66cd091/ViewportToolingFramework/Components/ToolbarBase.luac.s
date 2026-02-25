PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getNextOrder"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["new"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 CALL                             R3 1 3
        9 FORGPREP                         R3
       10 GETUPVAL                         R9 2
       11 GETTABLEKS                       R10 R7 K1 ["Type"]
       13 GETTABLE                         R8 R9 R10
       14 JUMPIFNOTEQKNIL                  R8 ; [+11]
       16 GETIMPORT                        R9 K3 [error]
       18 LOADK                            R11 K4 ["Unimplemented type: %*"]
       19 GETTABLEKS                       R13 R7 K1 ["Type"]
       21 NAMECALL                         R11 R11 K5 ["format"]
       23 CALL                             R11 2 1
       24 MOVE                             R10 R11
       25 CALL                             R9 1 0
       26 MOVE                             R10 R1
       27 GETUPVAL                         R12 3
       28 GETTABLEKS                       R11 R12 K6 ["createElement"]
       30 MOVE                             R12 R8
       31 DUPTABLE                         R13 K10 [{"key", "Item", "NextOrder"}]
       32 GETUPVAL                         R15 4
       33 CALL                             R15 0 1
       34 JUMPIFNOT                        R15 ; [+7]
       35 LOADK                            R15 K11 ["%*"]
       36 MOVE                             R17 R6
       37 NAMECALL                         R15 R15 K5 ["format"]
       39 CALL                             R15 2 1
       40 MOVE                             R14 R15
       41 JUMP                             ; [+1]
       42 LOADNIL                          R14
       43 SETTABLEKS                       R14 R13 K7 ["key"]
       45 SETTABLEKS                       R7 R13 K8 ["Item"]
       47 NEWCLOSURE                       R14 P0
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R14 R13 K9 ["NextOrder"]
       51 CALL                             R11 2 -1
       52 FASTCALL                         TABLE_INSERT ; [+2]
       53 GETIMPORT                        R9 K14 [table.insert]
       55 CALL                             R9 -1 0
       56 FORGLOOP                         R3 2 ; [-47]
       58 DUPTABLE                         R3 K16 [{"Direction"}]
       59 GETUPVAL                         R4 5
       60 MOVE                             R5 R0
       61 CALL                             R4 1 1
       62 SETTABLEKS                       R4 R3 K15 ["Direction"]
       64 GETUPVAL                         R5 3
       65 GETTABLEKS                       R4 R5 K6 ["createElement"]
       67 GETUPVAL                         R6 6
       68 GETTABLEKS                       R5 R6 K17 ["Provider"]
       70 DUPTABLE                         R6 K19 [{"value"}]
       71 SETTABLEKS                       R3 R6 K18 ["value"]
       73 DUPTABLE                         R7 K21 [{"ToolbarBase"}]
       74 GETUPVAL                         R9 7
       75 CALL                             R9 0 1
       76 JUMPIFNOT                        R9 ; [+28]
       77 GETUPVAL                         R9 3
       78 GETTABLEKS                       R8 R9 K6 ["createElement"]
       80 LOADK                            R9 K22 ["Frame"]
       81 NEWTABLE                         R10 1 0
       83 GETUPVAL                         R12 3
       84 GETTABLEKS                       R11 R12 K23 ["Tag"]
       86 GETUPVAL                         R14 8
       87 GETTABLEKS                       R13 R14 K24 ["Styling"]
       89 GETTABLEKS                       R12 R13 K25 ["joinTags"]
       91 LOADK                            R13 K26 ["VPF-ToolbarBase"]
       92 GETUPVAL                         R15 5
       93 MOVE                             R16 R0
       94 CALL                             R15 1 1
       95 JUMPIFNOTEQKS                    R15 K27 ["Horizontal"] ; [+3]
       97 LOADK                            R14 K28 ["X-Middle VPF-ToolbarBase--Horizontal"]
       98 JUMP                             ; [+1]
       99 LOADK                            R14 K29 ["X-Center VPF-ToolbarBase--Vertical"]
      100 CALL                             R12 2 1
      101 SETTABLE                         R12 R10 R11
      102 MOVE                             R11 R1
      103 CALL                             R8 3 1
      104 JUMP                             ; [+34]
      105 GETUPVAL                         R9 3
      106 GETTABLEKS                       R8 R9 K6 ["createElement"]
      108 GETUPVAL                         R9 9
      109 NEWTABLE                         R10 0 0
      111 GETUPVAL                         R12 3
      112 GETTABLEKS                       R11 R12 K6 ["createElement"]
      114 LOADK                            R12 K22 ["Frame"]
      115 NEWTABLE                         R13 1 0
      117 GETUPVAL                         R15 3
      118 GETTABLEKS                       R14 R15 K23 ["Tag"]
      120 GETUPVAL                         R17 8
      121 GETTABLEKS                       R16 R17 K24 ["Styling"]
      123 GETTABLEKS                       R15 R16 K25 ["joinTags"]
      125 LOADK                            R16 K26 ["VPF-ToolbarBase"]
      126 GETUPVAL                         R18 5
      127 MOVE                             R19 R0
      128 CALL                             R18 1 1
      129 JUMPIFNOTEQKS                    R18 K27 ["Horizontal"] ; [+3]
      131 LOADK                            R17 K28 ["X-Middle VPF-ToolbarBase--Horizontal"]
      132 JUMP                             ; [+1]
      133 LOADK                            R17 K29 ["X-Center VPF-ToolbarBase--Vertical"]
      134 CALL                             R15 2 1
      135 SETTABLE                         R15 R13 R14
      136 MOVE                             R14 R1
      137 CALL                             R11 3 -1
      138 CALL                             R8 -1 1
      139 SETTABLEKS                       R8 R7 K20 ["ToolbarBase"]
      141 CALL                             R4 3 -1
      142 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R5 K10 ["DEPRECATED_AvoidFOUC"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R6 K11 ["Button"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K9 ["Components"]
       39 GETTABLEKS                       R6 R7 K12 ["Dropdown"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Components"]
       46 GETTABLEKS                       R7 R8 K13 ["Label"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K9 ["Components"]
       53 GETTABLEKS                       R8 R9 K14 ["Radio"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K9 ["Components"]
       60 GETTABLEKS                       R9 R10 K15 ["Separator"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K9 ["Components"]
       67 GETTABLEKS                       R10 R11 K16 ["Slider"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K9 ["Components"]
       74 GETTABLEKS                       R11 R12 K17 ["SplitButton"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R13 R0 K9 ["Components"]
       81 GETTABLEKS                       R12 R13 K18 ["TextButton"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R14 R0 K19 ["Util"]
       88 GETTABLEKS                       R13 R14 K20 ["ToolbarBaseContext"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K21 ["Types"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R16 R0 K19 ["Util"]
      100 GETTABLEKS                       R15 R16 K22 ["getToolbarDirection"]
      102 CALL                             R14 1 1
      103 GETIMPORT                        R15 K5 [require]
      105 GETTABLEKS                       R17 R0 K19 ["Util"]
      107 GETTABLEKS                       R16 R17 K23 ["getToolbarItems"]
      109 CALL                             R15 1 1
      110 GETTABLEKS                       R17 R1 K19 ["Util"]
      112 GETTABLEKS                       R16 R17 K24 ["LayoutOrderIterator"]
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R19 R0 K25 ["Flags"]
      118 GETTABLEKS                       R18 R19 K26 ["getFFlagViewportToolingFrameworkMoreComponents"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K5 [require]
      123 GETTABLEKS                       R20 R0 K25 ["Flags"]
      125 GETTABLEKS                       R19 R20 K27 ["getFFlagViewportToolingFrameworkSplitButtons"]
      127 CALL                             R18 1 1
      128 GETIMPORT                        R19 K5 [require]
      130 GETTABLEKS                       R21 R0 K25 ["Flags"]
      132 GETTABLEKS                       R20 R21 K28 ["getFFlagAvatarCompatibilityPreviewerFixUnitTests"]
      134 CALL                             R19 1 1
      135 DUPTABLE                         R20 K29 [{"Button", "Dropdown", "Label", "Radio", "Separator", "Slider", "SplitButton", "TextButton"}]
      136 SETTABLEKS                       R4 R20 K11 ["Button"]
      138 MOVE                             R22 R17
      139 CALL                             R22 0 1
      140 JUMPIFNOT                        R22 ; [+2]
      141 MOVE                             R21 R5
      142 JUMP                             ; [+1]
      143 LOADNIL                          R21
      144 SETTABLEKS                       R21 R20 K12 ["Dropdown"]
      146 SETTABLEKS                       R6 R20 K13 ["Label"]
      148 SETTABLEKS                       R7 R20 K14 ["Radio"]
      150 SETTABLEKS                       R8 R20 K15 ["Separator"]
      152 SETTABLEKS                       R9 R20 K16 ["Slider"]
      154 SETTABLEKS                       R10 R20 K17 ["SplitButton"]
      156 SETTABLEKS                       R11 R20 K18 ["TextButton"]
      158 DUPCLOSURE                       R21 K30 [PROTO_1]
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R20
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R18
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R3
      169 RETURN                           R21 1
