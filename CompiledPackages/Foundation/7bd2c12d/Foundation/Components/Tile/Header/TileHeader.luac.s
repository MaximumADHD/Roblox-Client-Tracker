PROTO_0:
        0 LOADNIL                          R7
        1 LOADNIL                          R8
        2 LOADNIL                          R9
        3 LOADNIL                          R10
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R12 R0
        6 GETIMPORT                        R11 K1 [typeof]
        8 CALL                             R11 1 1
        9 JUMPIFNOTEQKS                    R11 K2 ["string"] ; [+6]
       11 MOVE                             R7 R0
       12 MOVE                             R8 R1
       13 MOVE                             R9 R2
       14 MOVE                             R10 R4
       15 JUMP                             ; [+33]
       16 GETTABLEKS                       R11 R0 K3 ["isLoading"]
       18 JUMPIFNOT                        R11 ; [+19]
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R11 R11 K4 ["createElement"]
       22 GETUPVAL                         R12 1
       23 DUPTABLE                         R13 K7 [{"Size", "LayoutOrder"}]
       24 GETIMPORT                        R14 K10 [UDim2.new]
       26 DIVRK                            R15 K11 [1] R5
       27 LOADN                            R16 0
       28 LOADN                            R17 0
       29 GETTABLEKS                       R18 R1 K12 ["FontSize"]
       31 CALL                             R14 4 1
       32 SETTABLEKS                       R14 R13 K5 ["Size"]
       34 SETTABLEKS                       R5 R13 K6 ["LayoutOrder"]
       36 CALL                             R11 2 -1
       37 RETURN                           R11 -1
       38 GETTABLEKS                       R7 R0 K13 ["text"]
       40 GETTABLEKS                       R11 R0 K14 ["fontStyle"]
       42 OR                               R8 R11 R1
       43 GETTABLEKS                       R11 R0 K15 ["colorStyle"]
       45 OR                               R9 R11 R2
       46 GETTABLEKS                       R11 R0 K16 ["numLines"]
       48 OR                               R10 R11 R4
       49 JUMPIFNOTEQKNIL                  R8 ; [+2]
       51 LOADB                            R12 0 +1
       52 LOADB                            R12 1
       53 FASTCALL2K                       ASSERT R12 K17 ; [+4]
       55 LOADK                            R13 K17 ["fontStyle cannot be nil"]
       56 GETIMPORT                        R11 K19 [assert]
       58 CALL                             R11 2 0
       59 JUMPIFNOTEQKNIL                  R9 ; [+2]
       61 LOADB                            R12 0 +1
       62 LOADB                            R12 1
       63 FASTCALL2K                       ASSERT R12 K20 ; [+4]
       65 LOADK                            R13 K20 ["colorStyle cannot be nil"]
       66 GETIMPORT                        R11 K19 [assert]
       68 CALL                             R11 2 0
       69 JUMPIFNOTEQKNIL                  R10 ; [+2]
       71 LOADB                            R12 0 +1
       72 LOADB                            R12 1
       73 FASTCALL2K                       ASSERT R12 K21 ; [+4]
       75 LOADK                            R13 K21 ["numLines cannot be nil"]
       76 GETIMPORT                        R11 K19 [assert]
       78 CALL                             R11 2 0
       79 LOADN                            R11 1
       80 SETTABLEKS                       R11 R8 K22 ["LineHeight"]
       82 GETUPVAL                         R11 2
       83 CALL                             R11 0 1
       84 GETTABLEKS                       R15 R8 K12 ["FontSize"]
       86 ORK                              R16 R11 K23 [0]
       87 ADD                              R14 R15 R16
       88 MUL                              R13 R10 R14
       89 GETTABLEKS                       R14 R8 K22 ["LineHeight"]
       91 MUL                              R12 R13 R14
       92 GETUPVAL                         R13 0
       93 GETTABLEKS                       R13 R13 K4 ["createElement"]
       95 GETUPVAL                         R14 3
       96 DUPTABLE                         R15 K30 [{"fontStyle", "textStyle", "Text", "TextXAlignment", "TextTruncate", "TextWrapped", "Size", "LayoutOrder", "testId"}]
       97 SETTABLEKS                       R8 R15 K14 ["fontStyle"]
       99 SETTABLEKS                       R9 R15 K24 ["textStyle"]
      101 SETTABLEKS                       R7 R15 K25 ["Text"]
      103 SETTABLEKS                       R3 R15 K26 ["TextXAlignment"]
      105 GETIMPORT                        R16 K33 [Enum.TextTruncate.AtEnd]
      107 SETTABLEKS                       R16 R15 K27 ["TextTruncate"]
      109 LOADN                            R17 1
      110 JUMPIFNOTLT                      R17 R10 ; [+3]
      112 LOADB                            R16 1
      113 JUMP                             ; [+1]
      114 LOADB                            R16 0
      115 SETTABLEKS                       R16 R15 K28 ["TextWrapped"]
      117 GETIMPORT                        R16 K10 [UDim2.new]
      119 LOADN                            R17 1
      120 LOADN                            R18 0
      121 LOADN                            R19 0
      122 MOVE                             R20 R12
      123 CALL                             R16 4 1
      124 SETTABLEKS                       R16 R15 K5 ["Size"]
      126 SETTABLEKS                       R5 R15 K6 ["LayoutOrder"]
      128 SETTABLEKS                       R6 R15 K29 ["testId"]
      130 CALL                             R13 2 -1
      131 RETURN                           R13 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 3
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R5 R1 K0 ["title"]
       11 GETTABLEKS                       R6 R2 K1 ["Typography"]
       13 GETTABLEKS                       R6 R6 K2 ["TitleLarge"]
       15 GETTABLEKS                       R7 R2 K3 ["Color"]
       17 GETTABLEKS                       R7 R7 K4 ["Content"]
       19 GETTABLEKS                       R7 R7 K5 ["Emphasis"]
       21 GETTABLEKS                       R8 R1 K6 ["TextXAlignment"]
       23 GETTABLEKS                       R10 R1 K7 ["subtitle"]
       25 JUMPIFNOTEQKNIL                  R10 ; [+3]
       27 LOADN                            R9 2
       28 JUMP                             ; [+1]
       29 LOADN                            R9 1
       30 LOADN                            R10 1
       31 LOADK                            R12 K8 ["%*--header-title"]
       32 GETTABLEKS                       R14 R3 K9 ["testId"]
       34 NAMECALL                         R12 R12 K10 ["format"]
       36 CALL                             R12 2 1
       37 MOVE                             R11 R12
       38 CALL                             R4 7 1
       39 GETUPVAL                         R5 5
       40 GETTABLEKS                       R5 R5 K11 ["createElement"]
       42 GETUPVAL                         R6 6
       43 DUPTABLE                         R7 K16 [{["flexItem"], ["layout"], ["tag"] = "auto-y size-full-0 gap-xxsmall", ["testId"]}]
       44 DUPTABLE                         R8 K18 [{"FlexMode"}]
       45 GETIMPORT                        R9 K22 [Enum.UIFlexMode.Shrink]
       47 SETTABLEKS                       R9 R8 K17 ["FlexMode"]
       49 SETTABLEKS                       R8 R7 K12 ["flexItem"]
       51 DUPTABLE                         R8 K26 [{"HorizontalAlignment", "FillDirection", "SortOrder"}]
       52 GETIMPORT                        R9 K28 [Enum.HorizontalAlignment.Left]
       54 SETTABLEKS                       R9 R8 K23 ["HorizontalAlignment"]
       56 GETIMPORT                        R9 K30 [Enum.FillDirection.Vertical]
       58 SETTABLEKS                       R9 R8 K24 ["FillDirection"]
       60 GETIMPORT                        R9 K32 [Enum.SortOrder.LayoutOrder]
       62 SETTABLEKS                       R9 R8 K25 ["SortOrder"]
       64 SETTABLEKS                       R8 R7 K13 ["layout"]
       66 LOADK                            R9 K33 ["%*--header"]
       67 GETTABLEKS                       R11 R3 K9 ["testId"]
       69 NAMECALL                         R9 R9 K10 ["format"]
       71 CALL                             R9 2 1
       72 MOVE                             R8 R9
       73 SETTABLEKS                       R8 R7 K9 ["testId"]
       75 DUPTABLE                         R8 K36 [{"Title", "Subtitle"}]
       76 SETTABLEKS                       R4 R8 K34 ["Title"]
       78 GETTABLEKS                       R10 R1 K7 ["subtitle"]
       80 JUMPIFEQKNIL                     R10 ; [+27]
       82 GETUPVAL                         R9 4
       83 GETTABLEKS                       R10 R1 K7 ["subtitle"]
       85 GETTABLEKS                       R11 R2 K1 ["Typography"]
       87 GETTABLEKS                       R11 R11 K37 ["CaptionLarge"]
       89 GETTABLEKS                       R12 R2 K3 ["Color"]
       91 GETTABLEKS                       R12 R12 K4 ["Content"]
       93 GETTABLEKS                       R12 R12 K38 ["Default"]
       95 GETTABLEKS                       R13 R1 K6 ["TextXAlignment"]
       97 LOADN                            R14 1
       98 LOADN                            R15 2
       99 LOADK                            R17 K39 ["%*--header-subtitle"]
      100 GETTABLEKS                       R19 R3 K9 ["testId"]
      102 NAMECALL                         R17 R17 K10 ["format"]
      104 CALL                             R17 2 1
      105 MOVE                             R16 R17
      106 CALL                             R9 7 1
      107 JUMP                             ; [+1]
      108 LOADNIL                          R9
      109 SETTABLEKS                       R9 R8 K35 ["Subtitle"]
      111 CALL                             R5 3 -1
      112 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Skeleton"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Text"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K12 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Providers"]
       46 GETTABLEKS                       R8 R8 K14 ["Style"]
       48 GETTABLEKS                       R8 R8 K15 ["useTextSizeOffset"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K8 ["Components"]
       55 GETTABLEKS                       R9 R9 K16 ["Tile"]
       57 GETTABLEKS                       R9 R9 K17 ["useTile"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K13 ["Providers"]
       64 GETTABLEKS                       R10 R10 K14 ["Style"]
       66 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K6 [require]
       71 GETTABLEKS                       R11 R0 K19 ["Utility"]
       73 GETTABLEKS                       R11 R11 K20 ["withDefaults"]
       75 CALL                             R10 1 1
       76 DUPCLOSURE                       R11 K21 [PROTO_0]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R4
       81 DUPTABLE                         R12 K23 [{"TextXAlignment"}]
       82 GETIMPORT                        R13 K26 [Enum.TextXAlignment.Left]
       84 SETTABLEKS                       R13 R12 K22 ["TextXAlignment"]
       86 DUPCLOSURE                       R13 K27 [PROTO_1]
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R6
       94 RETURN                           R13 1
