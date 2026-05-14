PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 LOADK                            R4 K3 ["PointingHand"]
        8 CALL                             R3 1 1
        9 LOADK                            R4 K4 ["bg-over-media-0 radius-circle size-800"]
       10 SETTABLEKS                       R4 R1 K5 ["tag"]
       12 SETTABLEKS                       R3 R1 K6 ["onStateChanged"]
       14 GETTABLEKS                       R5 R0 K7 ["Visible"]
       16 JUMPIFNOTEQKNIL                  R5 ; [+3]
       18 LOADB                            R4 1
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R4 R0 K7 ["Visible"]
       22 SETTABLEKS                       R4 R1 K7 ["Visible"]
       24 LOADK                            R4 K8 ["--start-page-OverMediaCloseButton"]
       25 SETTABLEKS                       R4 R1 K9 ["testId"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K10 ["createElement"]
       30 GETUPVAL                         R5 3
       31 MOVE                             R6 R1
       32 DUPTABLE                         R7 K12 [{"Icon"}]
       33 GETUPVAL                         R9 4
       34 JUMPIFNOT                        R9 ; [+39]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R8 R8 K10 ["createElement"]
       38 GETUPVAL                         R9 5
       39 DUPTABLE                         R10 K18 [{"Position", "AnchorPoint", "name", "size", "style"}]
       40 GETIMPORT                        R11 K21 [UDim2.fromScale]
       42 LOADK                            R12 K22 [0.5]
       43 LOADK                            R13 K22 [0.5]
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K13 ["Position"]
       47 GETIMPORT                        R11 K25 [Vector2.new]
       49 LOADK                            R12 K22 [0.5]
       50 LOADK                            R13 K22 [0.5]
       51 CALL                             R11 2 1
       52 SETTABLEKS                       R11 R10 K14 ["AnchorPoint"]
       54 GETUPVAL                         R11 6
       55 GETTABLEKS                       R11 R11 K26 ["XSmall"]
       57 SETTABLEKS                       R11 R10 K15 ["name"]
       59 GETUPVAL                         R11 7
       60 GETTABLEKS                       R11 R11 K27 ["Medium"]
       62 SETTABLEKS                       R11 R10 K16 ["size"]
       64 GETTABLEKS                       R11 R2 K28 ["Color"]
       66 GETTABLEKS                       R11 R11 K29 ["Content"]
       68 GETTABLEKS                       R11 R11 K30 ["Emphasis"]
       70 SETTABLEKS                       R11 R10 K17 ["style"]
       72 CALL                             R8 2 1
       73 JUMP                             ; [+23]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R8 R8 K10 ["createElement"]
       77 GETUPVAL                         R9 8
       78 DUPTABLE                         R10 K31 [{"Position", "AnchorPoint", "tag"}]
       79 GETIMPORT                        R11 K21 [UDim2.fromScale]
       81 LOADK                            R12 K22 [0.5]
       82 LOADK                            R13 K22 [0.5]
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K13 ["Position"]
       86 GETIMPORT                        R11 K25 [Vector2.new]
       88 LOADK                            R12 K22 [0.5]
       89 LOADK                            R13 K22 [0.5]
       90 CALL                             R11 2 1
       91 SETTABLEKS                       R11 R10 K14 ["AnchorPoint"]
       93 LOADK                            R11 K32 ["StartPage-CancelWhiteIcon content-emphasis"]
       94 SETTABLEKS                       R11 R10 K5 ["tag"]
       96 CALL                             R8 2 1
       97 SETTABLEKS                       R8 R7 K11 ["Icon"]
       99 CALL                             R4 3 -1
      100 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["View"]
       25 GETTABLEKS                       R4 R2 K12 ["Image"]
       27 GETTABLEKS                       R5 R2 K13 ["Icon"]
       29 GETTABLEKS                       R6 R2 K14 ["Enums"]
       31 GETTABLEKS                       R6 R6 K15 ["IconName"]
       33 GETTABLEKS                       R7 R2 K14 ["Enums"]
       35 GETTABLEKS                       R7 R7 K16 ["IconSize"]
       37 GETTABLEKS                       R8 R2 K17 ["Hooks"]
       39 GETTABLEKS                       R8 R8 K18 ["useTokens"]
       41 GETIMPORT                        R9 K5 [require]
       43 GETTABLEKS                       R10 R0 K8 ["Src"]
       45 GETTABLEKS                       R10 R10 K19 ["SharedFlags"]
       47 GETTABLEKS                       R10 R10 K20 ["getFFlagLuaStartPageBuilderIcons"]
       49 CALL                             R9 1 1
       50 CALL                             R9 0 1
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K8 ["Src"]
       55 GETTABLEKS                       R11 R11 K21 ["Types"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R0 K8 ["Src"]
       62 GETTABLEKS                       R12 R12 K17 ["Hooks"]
       64 GETTABLEKS                       R12 R12 K22 ["useOnStateChangedCursor"]
       66 CALL                             R11 1 1
       67 DUPCLOSURE                       R12 K23 [PROTO_0]
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R4
       77 RETURN                           R12 1
