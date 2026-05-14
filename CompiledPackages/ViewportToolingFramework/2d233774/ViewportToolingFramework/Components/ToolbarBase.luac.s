PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getNextOrder"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["new"]
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
       27 GETUPVAL                         R11 3
       28 GETTABLEKS                       R11 R11 K6 ["createElement"]
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
       64 GETUPVAL                         R4 3
       65 GETTABLEKS                       R4 R4 K6 ["createElement"]
       67 GETUPVAL                         R5 6
       68 GETTABLEKS                       R5 R5 K17 ["Provider"]
       70 DUPTABLE                         R6 K19 [{"value"}]
       71 SETTABLEKS                       R3 R6 K18 ["value"]
       73 DUPTABLE                         R7 K21 [{"ToolbarBase"}]
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R8 R8 K6 ["createElement"]
       77 LOADK                            R9 K22 ["Frame"]
       78 NEWTABLE                         R10 1 0
       80 GETUPVAL                         R11 3
       81 GETTABLEKS                       R11 R11 K23 ["Tag"]
       83 GETUPVAL                         R12 7
       84 GETTABLEKS                       R12 R12 K24 ["Styling"]
       86 GETTABLEKS                       R12 R12 K25 ["joinTags"]
       88 LOADK                            R13 K26 ["VPF-ToolbarBase"]
       89 GETUPVAL                         R15 5
       90 MOVE                             R16 R0
       91 CALL                             R15 1 1
       92 JUMPIFNOTEQKS                    R15 K27 ["Horizontal"] ; [+3]
       94 LOADK                            R14 K28 ["X-Middle VPF-ToolbarBase--Horizontal"]
       95 JUMP                             ; [+1]
       96 LOADK                            R14 K29 ["X-Center VPF-ToolbarBase--Vertical"]
       97 CALL                             R12 2 1
       98 SETTABLE                         R12 R10 R11
       99 MOVE                             R11 R1
      100 CALL                             R8 3 1
      101 SETTABLEKS                       R8 R7 K20 ["ToolbarBase"]
      103 CALL                             R4 3 -1
      104 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Button"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["Dropdown"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K9 ["Components"]
       39 GETTABLEKS                       R6 R6 K12 ["Label"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K9 ["Components"]
       46 GETTABLEKS                       R7 R7 K13 ["Radio"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K9 ["Components"]
       53 GETTABLEKS                       R8 R8 K14 ["Separator"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K9 ["Components"]
       60 GETTABLEKS                       R9 R9 K15 ["Slider"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K9 ["Components"]
       67 GETTABLEKS                       R10 R10 K16 ["SplitButton"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K9 ["Components"]
       74 GETTABLEKS                       R11 R11 K17 ["TextButton"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K18 ["Util"]
       81 GETTABLEKS                       R12 R12 K19 ["ToolbarBaseContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K20 ["Types"]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K5 [require]
       91 GETTABLEKS                       R14 R0 K18 ["Util"]
       93 GETTABLEKS                       R14 R14 K21 ["getToolbarDirection"]
       95 CALL                             R13 1 1
       96 GETIMPORT                        R14 K5 [require]
       98 GETTABLEKS                       R15 R0 K18 ["Util"]
      100 GETTABLEKS                       R15 R15 K22 ["getToolbarItems"]
      102 CALL                             R14 1 1
      103 GETTABLEKS                       R15 R1 K18 ["Util"]
      105 GETTABLEKS                       R15 R15 K23 ["LayoutOrderIterator"]
      107 GETIMPORT                        R16 K5 [require]
      109 GETTABLEKS                       R17 R0 K24 ["Flags"]
      111 GETTABLEKS                       R17 R17 K25 ["getFFlagViewportToolingFrameworkMoreComponents"]
      113 CALL                             R16 1 1
      114 GETIMPORT                        R17 K5 [require]
      116 GETTABLEKS                       R18 R0 K24 ["Flags"]
      118 GETTABLEKS                       R18 R18 K26 ["getFFlagAvatarCompatibilityPreviewerFixUnitTests"]
      120 CALL                             R17 1 1
      121 DUPTABLE                         R18 K27 [{"Button", "Dropdown", "Label", "Radio", "Separator", "Slider", "SplitButton", "TextButton"}]
      122 SETTABLEKS                       R3 R18 K10 ["Button"]
      124 MOVE                             R20 R16
      125 CALL                             R20 0 1
      126 JUMPIFNOT                        R20 ; [+2]
      127 MOVE                             R19 R4
      128 JUMP                             ; [+1]
      129 LOADNIL                          R19
      130 SETTABLEKS                       R19 R18 K11 ["Dropdown"]
      132 SETTABLEKS                       R5 R18 K12 ["Label"]
      134 SETTABLEKS                       R6 R18 K13 ["Radio"]
      136 SETTABLEKS                       R7 R18 K14 ["Separator"]
      138 SETTABLEKS                       R8 R18 K15 ["Slider"]
      140 SETTABLEKS                       R9 R18 K16 ["SplitButton"]
      142 SETTABLEKS                       R10 R18 K17 ["TextButton"]
      144 DUPCLOSURE                       R19 K28 [PROTO_1]
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R1
      153 RETURN                           R19 1
