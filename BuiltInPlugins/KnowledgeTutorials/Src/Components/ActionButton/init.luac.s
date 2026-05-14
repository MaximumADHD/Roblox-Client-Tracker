PROTO_0:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R2 K2 ["Error in action handler:"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R2 0
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 NAMECALL                         R8 R7 K0 ["getWidth"]
        7 CALL                             R8 1 1
        8 ADD                              R2 R2 R8
        9 FORGLOOP                         R3 2 ; [-5]
       11 GETTABLEKS                       R3 R0 K1 ["attributes"]
       13 JUMPIFNOT                        R3 ; [+6]
       14 GETTABLEKS                       R3 R0 K1 ["attributes"]
       16 GETTABLEKS                       R3 R3 K2 ["icon"]
       18 JUMPIFNOT                        R3 ; [+1]
       19 ADDK                             R2 R2 K3 [18]
       20 ADDK                             R3 R2 K4 [16]
       21 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["action"]
        3 JUMPIF                           R0 ; [+5]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R2 K3 ["ActionButton is missing action attribute"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 1
       10 FASTCALL1                        TOSTRING R0 ; [+3]
       11 MOVE                             R4 R0
       12 GETIMPORT                        R3 K5 [tostring]
       14 CALL                             R3 1 1
       15 GETTABLE                         R1 R2 R3
       16 JUMPIF                           R1 ; [+6]
       17 GETIMPORT                        R2 K2 [warn]
       19 LOADK                            R3 K6 ["No action handler found for action:"]
       20 MOVE                             R4 R0
       21 CALL                             R2 2 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R2 K8 [xpcall]
       25 MOVE                             R3 R1
       26 GETUPVAL                         R4 2
       27 GETUPVAL                         R5 0
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K9 ["extraContext"]
       31 CALL                             R2 4 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R2 R0 K1 ["context"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETTABLEKS                       R3 R1 K2 ["attributes"]
       10 JUMPIF                           R3 ; [+2]
       11 NEWTABLE                         R3 0 0
       13 NEWTABLE                         R4 0 0
       15 GETTABLEKS                       R5 R0 K3 ["childElements"]
       17 LOADNIL                          R6
       18 LOADNIL                          R7
       19 FORGPREP                         R5
       20 MOVE                             R11 R4
       21 NAMECALL                         R12 R9 K4 ["render"]
       23 CALL                             R12 1 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R10 K7 [table.insert]
       27 CALL                             R10 -1 0
       28 FORGLOOP                         R5 2 ; [-9]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K8 ["useCallback"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R7 0 1
       40 MOVE                             R8 R1
       41 SETLIST                          R7 R8 1 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K9 ["createElement"]
       47 GETUPVAL                         R7 3
       48 DUPTABLE                         R8 K13 [{"tag", "onActivated", "LayoutOrder"}]
       49 LOADK                            R9 K14 ["size-0-500 auto-x row align-x-center align-y-center gap-xxsmall padding-x-small bg-action-standard radius-circle"]
       50 SETTABLEKS                       R9 R8 K10 ["tag"]
       52 SETTABLEKS                       R5 R8 K11 ["onActivated"]
       54 GETTABLEKS                       R9 R0 K12 ["LayoutOrder"]
       56 JUMPIF                           R9 ; [+2]
       57 GETTABLEKS                       R9 R1 K15 ["index"]
       59 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       61 DUPTABLE                         R9 K18 [{"Image", "Content"}]
       62 GETTABLEKS                       R11 R3 K19 ["icon"]
       64 JUMPIFNOT                        R11 ; [+28]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K9 ["createElement"]
       68 GETUPVAL                         R11 4
       69 GETUPVAL                         R12 5
       70 DUPTABLE                         R13 K21 [{"Size", "tag", "LayoutOrder"}]
       71 GETIMPORT                        R14 K24 [UDim2.fromOffset]
       73 LOADN                            R15 16
       74 LOADN                            R16 16
       75 CALL                             R14 2 1
       76 SETTABLEKS                       R14 R13 K20 ["Size"]
       78 LOADK                            R14 K25 ["content-action-standard"]
       79 SETTABLEKS                       R14 R13 K10 ["tag"]
       81 LOADN                            R14 255
       82 SETTABLEKS                       R14 R13 K12 ["LayoutOrder"]
       84 GETTABLEKS                       R15 R3 K19 ["icon"]
       86 FASTCALL1                        TOSTRING R15 ; [+2]
       87 GETIMPORT                        R14 K27 [tostring]
       89 CALL                             R14 1 1
       90 CALL                             R12 2 -1
       91 CALL                             R10 -1 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R10
       94 SETTABLEKS                       R10 R9 K16 ["Image"]
       96 GETUPVAL                         R10 0
       97 GETTABLEKS                       R10 R10 K9 ["createElement"]
       99 GETUPVAL                         R11 3
      100 DUPTABLE                         R12 K28 [{"tag", "LayoutOrder"}]
      101 LOADK                            R13 K29 ["row align-x-center align-y-center auto-x size-0-full content-action-standard"]
      102 SETTABLEKS                       R13 R12 K10 ["tag"]
      104 LOADN                            R13 1
      105 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      107 MOVE                             R13 R4
      108 CALL                             R10 3 1
      109 SETTABLEKS                       R10 R9 K17 ["Content"]
      111 CALL                             R6 3 -1
      112 RETURN                           R6 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R2 R0 K1 ["context"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R4 R2 K2 ["processChildren"]
        8 GETTABLEKS                       R5 R1 K3 ["children"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K4 ["joinDeep"]
       13 MOVE                             R7 R2
       14 DUPTABLE                         R8 K7 [{"isInline", "textStyles"}]
       15 LOADB                            R9 1
       16 SETTABLEKS                       R9 R8 K5 ["isInline"]
       18 DUPTABLE                         R9 K10 [{"color", "transparency"}]
       19 LOADK                            R11 K11 ["#%*"]
       20 GETTABLEKS                       R13 R3 K12 ["Color"]
       22 GETTABLEKS                       R13 R13 K13 ["ActionStandard"]
       24 GETTABLEKS                       R13 R13 K14 ["Foreground"]
       26 GETTABLEKS                       R13 R13 K15 ["Color3"]
       28 NAMECALL                         R13 R13 K16 ["ToHex"]
       30 CALL                             R13 1 1
       31 NAMECALL                         R11 R11 K17 ["format"]
       33 CALL                             R11 2 1
       34 MOVE                             R10 R11
       35 SETTABLEKS                       R10 R9 K8 ["color"]
       37 GETTABLEKS                       R10 R3 K12 ["Color"]
       39 GETTABLEKS                       R10 R10 K13 ["ActionStandard"]
       41 GETTABLEKS                       R10 R10 K14 ["Foreground"]
       43 GETTABLEKS                       R10 R10 K18 ["Transparency"]
       45 SETTABLEKS                       R10 R9 K9 ["transparency"]
       47 SETTABLEKS                       R9 R8 K6 ["textStyles"]
       49 CALL                             R6 2 -1
       50 CALL                             R4 -1 1
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K19 ["join"]
       54 MOVE                             R6 R0
       55 DUPTABLE                         R7 K22 [{"childElements", "Size"}]
       56 SETTABLEKS                       R4 R7 K20 ["childElements"]
       58 GETIMPORT                        R8 K25 [UDim2.fromOffset]
       60 GETTABLEKS                       R10 R0 K0 ["node"]
       62 LOADN                            R11 0
       63 MOVE                             R12 R4
       64 LOADNIL                          R13
       65 LOADNIL                          R14
       66 FORGPREP                         R12
       67 NAMECALL                         R17 R16 K26 ["getWidth"]
       69 CALL                             R17 1 1
       70 ADD                              R11 R11 R17
       71 FORGLOOP                         R12 2 ; [-5]
       73 GETTABLEKS                       R12 R10 K27 ["attributes"]
       75 JUMPIFNOT                        R12 ; [+6]
       76 GETTABLEKS                       R12 R10 K27 ["attributes"]
       78 GETTABLEKS                       R12 R12 K28 ["icon"]
       80 JUMPIFNOT                        R12 ; [+1]
       81 ADDK                             R11 R11 K29 [18]
       82 ADDK                             R9 R11 K30 [16]
       83 LOADN                            R10 20
       84 CALL                             R8 2 1
       85 SETTABLEKS                       R8 R7 K21 ["Size"]
       87 CALL                             R5 2 1
       88 GETTABLEKS                       R6 R0 K1 ["context"]
       90 GETTABLEKS                       R6 R6 K5 ["isInline"]
       92 JUMPIFNOT                        R6 ; [+9]
       93 GETUPVAL                         R6 2
       94 JUMPIFNOT                        R6 ; [+7]
       95 GETUPVAL                         R6 2
       96 GETTABLEKS                       R6 R6 K31 ["new"]
       98 GETUPVAL                         R7 3
       99 MOVE                             R8 R5
      100 CALL                             R6 2 -1
      101 RETURN                           R6 -1
      102 GETUPVAL                         R6 4
      103 GETTABLEKS                       R6 R6 K32 ["createElement"]
      105 GETUPVAL                         R7 3
      106 MOVE                             R8 R5
      107 CALL                             R6 2 1
      108 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Packages"]
       39 GETTABLEKS                       R6 R6 K12 ["Dash"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Util"]
       48 GETTABLEKS                       R7 R7 K14 ["processImageProps"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R3 K15 ["Hooks"]
       53 GETTABLEKS                       R7 R7 K16 ["useTokens"]
       55 GETTABLEKS                       R8 R4 K17 ["UI"]
       57 GETTABLEKS                       R8 R8 K18 ["InlineLayoutElements"]
       59 GETTABLEKS                       R8 R8 K19 ["RenderableInlineElement"]
       61 GETTABLEKS                       R9 R3 K20 ["View"]
       63 GETTABLEKS                       R10 R3 K21 ["Image"]
       65 GETIMPORT                        R11 K5 [require]
       67 GETIMPORT                        R12 K1 [script]
       69 GETTABLEKS                       R12 R12 K22 ["actionHandlers"]
       71 CALL                             R11 1 1
       72 DUPCLOSURE                       R12 K23 [PROTO_0]
       73 DUPCLOSURE                       R13 K24 [PROTO_1]
       74 DUPCLOSURE                       R14 K25 [PROTO_3]
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R6
       81 DUPCLOSURE                       R15 K26 [PROTO_4]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R2
       87 RETURN                           R15 1
