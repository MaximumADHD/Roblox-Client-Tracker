PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["List"]
        5 LOADK                            R3 K0 ["List"]
        6 SETTABLE                         R3 R1 R2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["Grid"]
       10 LOADK                            R3 K1 ["Grid"]
       11 SETTABLE                         R3 R1 R2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["Unsupported"]
       15 LOADK                            R3 K2 ["Unsupported"]
       16 SETTABLE                         R3 R1 R2
       17 GETTABLE                         R3 R1 R0
       18 ORK                              R2 R3 K2 ["Unsupported"]
       19 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"Id", "Label"}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 LOADK                            R5 K3 ["ViewTypeSelector"]
        6 NEWTABLE                         R7 4 0
        8 GETUPVAL                         R9 2
        9 GETTABLEKS                       R8 R9 K4 ["List"]
       11 LOADK                            R9 K4 ["List"]
       12 SETTABLE                         R9 R7 R8
       13 GETUPVAL                         R9 2
       14 GETTABLEKS                       R8 R9 K5 ["Grid"]
       16 LOADK                            R9 K5 ["Grid"]
       17 SETTABLE                         R9 R7 R8
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K6 ["Unsupported"]
       21 LOADK                            R9 K6 ["Unsupported"]
       22 SETTABLE                         R9 R7 R8
       23 GETTABLE                         R8 R7 R0
       24 ORK                              R6 R8 K6 ["Unsupported"]
       25 NAMECALL                         R2 R2 K7 ["getProjectText"]
       27 CALL                             R2 4 1
       28 SETTABLEKS                       R2 R1 K1 ["Label"]
       30 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["allValues"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K3 [table.remove]
        6 MOVE                             R3 R1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["Unsupported"]
       10 GETTABLEKS                       R4 R5 K5 ["rawValue"]
       12 CALL                             R4 0 -1
       13 CALL                             R2 -1 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K6 ["map"]
       17 MOVE                             R3 R1
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U0
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R4 R0 K0 ["Id"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["Grid"]
        5 JUMPIFEQ                         R4 R5 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADK                            R4 K1 ["Grid"]
       11 JUMP                             ; [+1]
       12 LOADK                            R4 K2 [""]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K3 ["HideLabels"]
       16 JUMPIFNOT                        R6 ; [+6]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K4 ["HideSlider"]
       20 JUMPIFNOT                        R6 ; [+2]
       21 LOADK                            R5 K5 ["Icon"]
       22 JUMP                             ; [+1]
       23 LOADK                            R5 K2 [""]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R6 R7 K6 ["createElement"]
       27 GETUPVAL                         R7 3
       28 NEWTABLE                         R8 16 0
       30 GETTABLEKS                       R9 R0 K0 ["Id"]
       32 SETTABLEKS                       R9 R8 K7 ["ViewType"]
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R10 R11 K3 ["HideLabels"]
       37 JUMPIF                           R10 ; [+3]
       38 GETTABLEKS                       R9 R0 K8 ["Label"]
       40 JUMP                             ; [+1]
       41 LOADK                            R9 K2 [""]
       42 SETTABLEKS                       R9 R8 K9 ["Text"]
       44 GETUPVAL                         R10 1
       45 GETTABLEKS                       R9 R10 K10 ["DefaultGridTileSize"]
       47 SETTABLEKS                       R9 R8 K11 ["GridTileSize"]
       49 JUMPIFNOT                        R3 ; [+4]
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R9 R10 K12 ["OnGridTileSizeChanged"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R9
       55 SETTABLEKS                       R9 R8 K12 ["OnGridTileSizeChanged"]
       57 SETTABLEKS                       R2 R8 K13 ["OnClick"]
       59 SETTABLEKS                       R1 R8 K14 ["LayoutOrder"]
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R9 R10 K15 ["MinGridTileSize"]
       64 SETTABLEKS                       R9 R8 K15 ["MinGridTileSize"]
       66 GETUPVAL                         R10 1
       67 GETTABLEKS                       R9 R10 K16 ["MaxGridTileSize"]
       69 SETTABLEKS                       R9 R8 K16 ["MaxGridTileSize"]
       71 GETUPVAL                         R11 1
       72 GETTABLEKS                       R10 R11 K4 ["HideSlider"]
       74 NOT                              R9 R10
       75 JUMPIFNOT                        R9 ; [+9]
       76 GETTABLEKS                       R10 R0 K0 ["Id"]
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R11 R12 K1 ["Grid"]
       81 JUMPIFEQ                         R10 R11 ; [+2]
       83 LOADB                            R9 0 +1
       84 LOADB                            R9 1
       85 SETTABLEKS                       R9 R8 K17 ["HasSlider"]
       87 GETUPVAL                         R10 2
       88 GETTABLEKS                       R9 R10 K18 ["Tag"]
       90 LOADK                            R11 K19 ["%* %*"]
       91 MOVE                             R13 R4
       92 MOVE                             R14 R5
       93 NAMECALL                         R11 R11 K20 ["format"]
       95 CALL                             R11 3 1
       96 MOVE                             R10 R11
       97 SETTABLE                         R10 R8 R9
       98 CALL                             R6 2 -1
       99 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Id"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["OnViewTypeSelected"]
        7 GETTABLEKS                       R2 R0 K0 ["Id"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKS                    R3 K0 [""] ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        7 LOADK                            R3 K1 ["You must be using non-legacy React in order to use ViewTypeSelector"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R1 1
       12 NAMECALL                         R1 R1 K4 ["use"]
       14 CALL                             R1 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K5 ["Tag"]
       18 GETTABLE                         R3 R0 R4
       19 ORK                              R2 R3 K0 [""]
       20 GETUPVAL                         R3 2
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R6 R0 K6 ["Default"]
       25 FASTCALL1                        TYPE R6 ; [+2]
       26 GETIMPORT                        R5 K8 [type]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K9 ["number"] ; [+8]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R4 R5 K10 ["fromRawValue"]
       34 GETTABLEKS                       R5 R0 K6 ["Default"]
       36 CALL                             R4 1 1
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R4 R0 K6 ["Default"]
       40 GETUPVAL                         R5 4
       41 MOVE                             R6 R4
       42 JUMPIF                           R6 ; [+3]
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R6 R7 K11 ["List"]
       46 CALL                             R5 1 2
       47 NEWCLOSURE                       R7 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U5
       52 GETUPVAL                         R8 6
       53 GETUPVAL                         R11 0
       54 GETTABLEKS                       R10 R11 K5 ["Tag"]
       56 GETTABLE                         R9 R0 R10
       57 LOADK                            R10 K12 ["IconOnly"]
       58 CALL                             R8 2 1
       59 LOADNIL                          R9
       60 GETUPVAL                         R11 3
       61 GETTABLEKS                       R10 R11 K13 ["Grid"]
       63 JUMPIFNOTEQ                      R5 R10 ; [+3]
       65 LOADK                            R9 K13 ["Grid"]
       66 JUMP                             ; [+1]
       67 LOADK                            R9 K11 ["List"]
       68 GETUPVAL                         R11 0
       69 GETTABLEKS                       R10 R11 K14 ["createElement"]
       71 GETUPVAL                         R11 7
       72 NEWTABLE                         R12 2 0
       74 GETTABLEKS                       R13 R0 K15 ["LayoutOrder"]
       76 SETTABLEKS                       R13 R12 K15 ["LayoutOrder"]
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R13 R14 K5 ["Tag"]
       81 GETUPVAL                         R14 8
       82 LOADK                            R15 K16 ["Component-ViewTypeSelector"]
       83 MOVE                             R16 R9
       84 MOVE                             R17 R2
       85 CALL                             R14 3 1
       86 SETTABLE                         R14 R12 R13
       87 DUPTABLE                         R13 K18 [{"Input"}]
       88 GETUPVAL                         R15 0
       89 GETTABLEKS                       R14 R15 K14 ["createElement"]
       91 GETUPVAL                         R15 9
       92 NEWTABLE                         R16 16 0
       94 SETTABLEKS                       R3 R16 K19 ["Items"]
       96 LOADB                            R17 1
       97 SETTABLEKS                       R17 R16 K20 ["UseAutoWidth"]
       99 JUMPIFNOT                        R8 ; [+6]
      100 GETUPVAL                         R17 10
      101 LOADK                            R19 K21 ["SizeIconOnly"]
      102 NAMECALL                         R17 R17 K22 ["GetAttribute"]
      104 CALL                             R17 2 1
      105 JUMP                             ; [+5]
      106 GETUPVAL                         R17 10
      107 LOADK                            R19 K23 ["SizeDefault"]
      108 NAMECALL                         R17 R17 K22 ["GetAttribute"]
      110 CALL                             R17 2 1
      111 SETTABLEKS                       R17 R16 K24 ["Size"]
      113 LOADB                            R17 1
      114 SETTABLEKS                       R17 R16 K25 ["HideText"]
      116 GETTABLEKS                       R17 R0 K15 ["LayoutOrder"]
      118 SETTABLEKS                       R17 R16 K15 ["LayoutOrder"]
      120 SETTABLEKS                       R7 R16 K26 ["OnRenderItem"]
      122 SETTABLEKS                       R5 R16 K27 ["SelectedId"]
      124 NEWCLOSURE                       R17 P1
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R17 R16 K28 ["OnItemActivated"]
      129 NOT                              R17 R8
      130 SETTABLEKS                       R17 R16 K29 ["ShowSelection"]
      132 GETTABLEKS                       R17 R0 K30 ["Tooltip"]
      134 SETTABLEKS                       R17 R16 K30 ["Tooltip"]
      136 GETUPVAL                         R18 0
      137 GETTABLEKS                       R17 R18 K5 ["Tag"]
      139 LOADK                            R19 K31 ["%* HasIcon"]
      140 MOVE                             R21 R9
      141 NAMECALL                         R19 R19 K32 ["format"]
      143 CALL                             R19 2 1
      144 MOVE                             R18 R19
      145 SETTABLE                         R18 R16 R17
      146 CALL                             R14 2 1
      147 SETTABLEKS                       R14 R13 K17 ["Input"]
      149 CALL                             R10 3 -1
      150 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["ContextServices"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Localization"]
       16 GETTABLEKS                       R4 R0 K4 ["Parent"]
       18 LOADK                            R6 K9 ["React"]
       19 NAMECALL                         R4 R4 K10 ["FindFirstChild"]
       21 CALL                             R4 2 1
       22 JUMPIFNOT                        R4 ; [+8]
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 GETTABLEKS                       R4 R5 K9 ["React"]
       29 CALL                             R3 1 1
       30 JUMP                             ; [+1]
       31 LOADK                            R3 K11 [""]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R6 R0 K12 ["Styling"]
       36 GETTABLEKS                       R5 R6 K13 ["hasTag"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R7 R0 K12 ["Styling"]
       43 GETTABLEKS                       R6 R7 K14 ["joinTags"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K6 [require]
       48 GETTABLEKS                       R7 R0 K15 ["Resources"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R6 K16 ["LOCALIZATION_PROJECT_NAME"]
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R10 R0 K4 ["Parent"]
       57 GETTABLEKS                       R9 R10 K17 ["Dash"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R12 R0 K2 ["UI"]
       64 GETTABLEKS                       R11 R12 K18 ["Components"]
       66 GETTABLEKS                       R10 R11 K19 ["Pane"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R13 R0 K2 ["UI"]
       73 GETTABLEKS                       R12 R13 K18 ["Components"]
       75 GETTABLEKS                       R11 R12 K20 ["SelectInput"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K6 [require]
       80 GETTABLEKS                       R14 R0 K2 ["UI"]
       82 GETTABLEKS                       R13 R14 K18 ["Components"]
       84 GETTABLEKS                       R12 R13 K21 ["ViewTypeButton"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K6 [require]
       89 GETTABLEKS                       R16 R0 K2 ["UI"]
       91 GETTABLEKS                       R15 R16 K18 ["Components"]
       93 GETTABLEKS                       R14 R15 K21 ["ViewTypeButton"]
       95 GETTABLEKS                       R13 R14 K22 ["ViewType"]
       97 CALL                             R12 1 1
       98 GETTABLEKS                       R13 R3 K23 ["useState"]
      100 GETIMPORT                        R14 K6 [require]
      102 GETIMPORT                        R16 K1 [script]
      104 GETTABLEKS                       R15 R16 K24 ["styles"]
      106 CALL                             R14 1 1
      107 DUPCLOSURE                       R15 K25 [PROTO_0]
      108 CAPTURE                          VAL R12
      109 DUPCLOSURE                       R16 K26 [PROTO_2]
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R7
      113 DUPCLOSURE                       R17 K27 [PROTO_5]
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R5
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R14
      125 RETURN                           R17 1
