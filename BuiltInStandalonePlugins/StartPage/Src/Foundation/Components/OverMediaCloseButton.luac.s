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
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K10 ["createElement"]
       36 GETUPVAL                         R9 4
       37 DUPTABLE                         R10 K18 [{"Position", "AnchorPoint", "name", "size", "style"}]
       38 GETIMPORT                        R11 K21 [UDim2.fromScale]
       40 LOADK                            R12 K22 [0.5]
       41 LOADK                            R13 K22 [0.5]
       42 CALL                             R11 2 1
       43 SETTABLEKS                       R11 R10 K13 ["Position"]
       45 GETIMPORT                        R11 K25 [Vector2.new]
       47 LOADK                            R12 K22 [0.5]
       48 LOADK                            R13 K22 [0.5]
       49 CALL                             R11 2 1
       50 SETTABLEKS                       R11 R10 K14 ["AnchorPoint"]
       52 GETUPVAL                         R11 5
       53 GETTABLEKS                       R11 R11 K26 ["XSmall"]
       55 SETTABLEKS                       R11 R10 K15 ["name"]
       57 GETUPVAL                         R11 6
       58 GETTABLEKS                       R11 R11 K27 ["Medium"]
       60 SETTABLEKS                       R11 R10 K16 ["size"]
       62 GETTABLEKS                       R11 R2 K28 ["Color"]
       64 GETTABLEKS                       R11 R11 K29 ["Content"]
       66 GETTABLEKS                       R11 R11 K30 ["Emphasis"]
       68 SETTABLEKS                       R11 R10 K17 ["style"]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R7 K11 ["Icon"]
       73 CALL                             R4 3 -1
       74 RETURN                           R4 -1

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
       25 GETTABLEKS                       R4 R2 K12 ["Icon"]
       27 GETTABLEKS                       R5 R2 K13 ["Enums"]
       29 GETTABLEKS                       R5 R5 K14 ["IconName"]
       31 GETTABLEKS                       R6 R2 K13 ["Enums"]
       33 GETTABLEKS                       R6 R6 K15 ["IconSize"]
       35 GETTABLEKS                       R7 R2 K16 ["Hooks"]
       37 GETTABLEKS                       R7 R7 K17 ["useTokens"]
       39 GETIMPORT                        R8 K5 [require]
       41 GETTABLEKS                       R9 R0 K8 ["Src"]
       43 GETTABLEKS                       R9 R9 K18 ["Types"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R0 K8 ["Src"]
       50 GETTABLEKS                       R10 R10 K16 ["Hooks"]
       52 GETTABLEKS                       R10 R10 K19 ["useOnStateChangedCursor"]
       54 CALL                             R9 1 1
       55 DUPCLOSURE                       R10 K20 [PROTO_0]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 RETURN                           R10 1
