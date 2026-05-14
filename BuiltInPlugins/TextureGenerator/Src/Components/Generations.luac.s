PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 GETTABLEKS                       R2 R2 K0 ["layoutOrder"]
        6 GETTABLEKS                       R4 R1 K1 ["status"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R5 R5 K2 ["STATUS"]
       11 GETTABLEKS                       R5 R5 K3 ["PENDING"]
       13 JUMPIFNOTEQ                      R4 R5 ; [+3]
       15 LOADN                            R3 1
       16 RETURN                           R3 1
       17 GETTABLEKS                       R4 R1 K1 ["status"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K2 ["STATUS"]
       22 GETTABLEKS                       R5 R5 K4 ["FAILED"]
       24 JUMPIFNOTEQ                      R4 R5 ; [+3]
       26 LOADN                            R3 2
       27 RETURN                           R3 1
       28 MOVE                             R3 R2
       29 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["generations"]
        2 NEWTABLE                         R4 0 0
        4 GETUPVAL                         R5 0
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K1 ["keys"]
        8 MOVE                             R7 R3
        9 CALL                             R6 1 1
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U2
       13 CALL                             R5 2 1
       14 MOVE                             R6 R3
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 FORGPREP                         R6
       18 GETTABLEKS                       R11 R10 K2 ["status"]
       20 GETUPVAL                         R12 2
       21 GETTABLEKS                       R12 R12 K3 ["STATUS"]
       23 GETTABLEKS                       R12 R12 K4 ["COMPLETED"]
       25 JUMPIFNOTEQ                      R11 R12 ; [+25]
       27 JUMPIFNOT                        R1 ; [+23]
       28 GETTABLEKS                       R12 R0 K5 ["modelToGenerations"]
       30 GETTABLE                         R11 R12 R1
       31 JUMPIFNOT                        R11 ; [+9]
       32 GETIMPORT                        R11 K8 [table.find]
       34 GETTABLEKS                       R13 R0 K5 ["modelToGenerations"]
       36 GETTABLE                         R12 R13 R1
       37 MOVE                             R13 R9
       38 CALL                             R11 2 1
       39 JUMPIF                           R11 ; [+1]
       40 JUMP                             ; [+36]
       41 GETIMPORT                        R11 K10 [next]
       43 MOVE                             R12 R2
       44 CALL                             R11 1 1
       45 JUMPIFEQKNIL                     R11 ; [+5]
       47 GETTABLEKS                       R12 R0 K5 ["modelToGenerations"]
       49 GETTABLE                         R11 R12 R1
       50 JUMPIFNOT                        R11 ; [+26]
       51 GETIMPORT                        R11 K8 [table.find]
       53 MOVE                             R12 R5
       54 MOVE                             R13 R9
       55 CALL                             R11 2 1
       56 JUMPIFNOTEQKNIL                  R11 ; [+2]
       58 LOADB                            R13 0 +1
       59 LOADB                            R13 1
       60 FASTCALL2K                       ASSERT R13 K11 ; [+4]
       62 LOADK                            R14 K11 ["Can't find generation id in sorted list"]
       63 GETIMPORT                        R12 K13 [assert]
       65 CALL                             R12 2 0
       66 GETUPVAL                         R12 3
       67 GETTABLEKS                       R12 R12 K14 ["createElement"]
       69 GETUPVAL                         R13 4
       70 DUPTABLE                         R14 K17 [{"Generation", "LayoutOrder"}]
       71 SETTABLEKS                       R10 R14 K15 ["Generation"]
       73 SETTABLEKS                       R11 R14 K16 ["LayoutOrder"]
       75 CALL                             R12 2 1
       76 SETTABLE                         R12 R4 R9
       77 FORGLOOP                         R6 2 ; [-60]
       79 RETURN                           R4 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [next]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K2 ["setSelected"]
        9 LOADNIL                          R1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 3
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 4
       12 MOVE                             R5 R3
       13 MOVE                             R6 R2
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K1 ["useContext"]
       18 GETUPVAL                         R6 5
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 6
       21 MOVE                             R7 R5
       22 MOVE                             R8 R4
       23 MOVE                             R9 R3
       24 CALL                             R6 3 1
       25 GETIMPORT                        R8 K3 [next]
       27 MOVE                             R9 R3
       28 CALL                             R8 1 1
       29 JUMPIFNOTEQKNIL                  R8 ; [+7]
       31 LOADK                            R9 K4 ["Generations"]
       32 LOADK                            R10 K5 ["TitleAll"]
       33 NAMECALL                         R7 R1 K6 ["getText"]
       35 CALL                             R7 3 1
       36 JUMP                             ; [+5]
       37 LOADK                            R9 K4 ["Generations"]
       38 LOADK                            R10 K7 ["TitleSelected"]
       39 NAMECALL                         R7 R1 K6 ["getText"]
       41 CALL                             R7 3 1
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K8 ["useEffect"]
       45 NEWCLOSURE                       R9 P0
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 NEWTABLE                         R10 0 2
       50 MOVE                             R11 R3
       51 GETTABLEKS                       R12 R5 K9 ["setSelected"]
       53 SETLIST                          R10 R11 2 [1]
       55 CALL                             R8 2 0
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K10 ["createElement"]
       59 GETUPVAL                         R9 7
       60 DUPTABLE                         R10 K19 [{"AlwaysExpanded", "HorizontalAlignment", "Layout", "LayoutOrder", "Style", "OnExpandedChanged", "Text", "VerticalAlignment"}]
       61 LOADB                            R11 1
       62 SETTABLEKS                       R11 R10 K11 ["AlwaysExpanded"]
       64 GETIMPORT                        R11 K22 [Enum.HorizontalAlignment.Center]
       66 SETTABLEKS                       R11 R10 K12 ["HorizontalAlignment"]
       68 GETIMPORT                        R11 K25 [Enum.FillDirection.Horizontal]
       70 SETTABLEKS                       R11 R10 K13 ["Layout"]
       72 GETTABLEKS                       R11 R0 K14 ["LayoutOrder"]
       74 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       76 LOADK                            R11 K26 ["Section"]
       77 SETTABLEKS                       R11 R10 K15 ["Style"]
       79 DUPCLOSURE                       R11 K27 [PROTO_3]
       80 SETTABLEKS                       R11 R10 K16 ["OnExpandedChanged"]
       82 SETTABLEKS                       R7 R10 K17 ["Text"]
       84 GETIMPORT                        R11 K29 [Enum.VerticalAlignment.Top]
       86 SETTABLEKS                       R11 R10 K18 ["VerticalAlignment"]
       88 DUPTABLE                         R11 K31 [{"GenerationsPane"}]
       89 GETUPVAL                         R12 1
       90 GETTABLEKS                       R12 R12 K10 ["createElement"]
       92 GETUPVAL                         R13 8
       93 DUPTABLE                         R14 K34 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Spacing", "VerticalAlignment"}]
       94 GETIMPORT                        R15 K36 [Enum.AutomaticSize.Y]
       96 SETTABLEKS                       R15 R14 K32 ["AutomaticSize"]
       98 GETIMPORT                        R15 K22 [Enum.HorizontalAlignment.Center]
      100 SETTABLEKS                       R15 R14 K12 ["HorizontalAlignment"]
      102 GETIMPORT                        R15 K38 [Enum.FillDirection.Vertical]
      104 SETTABLEKS                       R15 R14 K13 ["Layout"]
      106 GETIMPORT                        R15 K41 [UDim.new]
      108 LOADN                            R16 0
      109 LOADN                            R17 4
      110 CALL                             R15 2 1
      111 SETTABLEKS                       R15 R14 K33 ["Spacing"]
      113 GETIMPORT                        R15 K29 [Enum.VerticalAlignment.Top]
      115 SETTABLEKS                       R15 R14 K18 ["VerticalAlignment"]
      117 MOVE                             R15 R6
      118 CALL                             R12 3 1
      119 SETTABLEKS                       R12 R11 K30 ["GenerationsPane"]
      121 CALL                             R8 3 -1
      122 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Components"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K14 ["GenerationCard"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R6 K15 ["TextureGenerationServiceContext"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R0 K12 ["Src"]
       48 GETTABLEKS                       R9 R9 K16 ["Hooks"]
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R9 K17 ["useSelectedMeshParts"]
       54 CALL                             R10 1 1
       55 GETTABLEKS                       R11 R2 K18 ["UI"]
       57 GETTABLEKS                       R12 R11 K19 ["ExpandablePane"]
       59 GETTABLEKS                       R13 R11 K20 ["Pane"]
       61 GETIMPORT                        R14 K5 [require]
       63 GETTABLEKS                       R15 R0 K12 ["Src"]
       65 GETTABLEKS                       R15 R15 K21 ["Util"]
       67 GETTABLEKS                       R15 R15 K22 ["Constants"]
       69 CALL                             R14 1 1
       70 GETIMPORT                        R15 K5 [require]
       72 GETTABLEKS                       R16 R0 K12 ["Src"]
       74 GETTABLEKS                       R16 R16 K21 ["Util"]
       76 GETTABLEKS                       R16 R16 K23 ["createHashFromMeshParts"]
       78 CALL                             R15 1 1
       79 GETIMPORT                        R16 K5 [require]
       81 GETTABLEKS                       R17 R0 K12 ["Src"]
       83 GETTABLEKS                       R17 R17 K21 ["Util"]
       85 GETTABLEKS                       R17 R17 K24 ["GenerationsContext"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K5 [require]
       90 GETTABLEKS                       R18 R0 K12 ["Src"]
       92 GETTABLEKS                       R18 R18 K21 ["Util"]
       94 GETTABLEKS                       R18 R18 K25 ["sort"]
       96 CALL                             R17 1 1
       97 DUPCLOSURE                       R18 K26 [PROTO_1]
       98 CAPTURE                          VAL R17
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R7
      103 DUPCLOSURE                       R19 K27 [PROTO_4]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R13
      113 RETURN                           R19 1
