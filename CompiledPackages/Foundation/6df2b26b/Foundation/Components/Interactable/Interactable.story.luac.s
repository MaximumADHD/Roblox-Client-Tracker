PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["secondary activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["useBinding"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["Initialize"]
        8 CALL                             R1 1 2
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K2 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K9 [{"Size", "BackgroundTransparency", "BackgroundColor3", "onStateChanged", "onActivated", "onSecondaryActivated"}]
       16 GETIMPORT                        R7 K12 [UDim2.new]
       18 LOADN                            R8 0
       19 LOADN                            R9 100
       20 LOADN                            R10 0
       21 LOADN                            R11 100
       22 CALL                             R7 4 1
       23 SETTABLEKS                       R7 R6 K3 ["Size"]
       25 GETTABLEKS                       R11 R0 K13 ["Color"]
       27 GETTABLEKS                       R10 R11 K14 ["Extended"]
       29 GETTABLEKS                       R9 R10 K15 ["Green"]
       31 GETTABLEKS                       R8 R9 K16 ["Green_500"]
       33 GETTABLEKS                       R7 R8 K17 ["Transparency"]
       35 SETTABLEKS                       R7 R6 K4 ["BackgroundTransparency"]
       37 GETTABLEKS                       R11 R0 K13 ["Color"]
       39 GETTABLEKS                       R10 R11 K14 ["Extended"]
       41 GETTABLEKS                       R9 R10 K15 ["Green"]
       43 GETTABLEKS                       R8 R9 K16 ["Green_500"]
       45 GETTABLEKS                       R7 R8 K18 ["Color3"]
       47 SETTABLEKS                       R7 R6 K5 ["BackgroundColor3"]
       49 SETTABLEKS                       R3 R6 K6 ["onStateChanged"]
       51 DUPCLOSURE                       R7 K19 [PROTO_1]
       52 SETTABLEKS                       R7 R6 K7 ["onActivated"]
       54 DUPCLOSURE                       R7 K20 [PROTO_2]
       55 SETTABLEKS                       R7 R6 K8 ["onSecondaryActivated"]
       57 NEWTABLE                         R7 0 1
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R8 R9 K2 ["createElement"]
       62 GETUPVAL                         R9 4
       63 DUPTABLE                         R10 K24 [{"Text", "Position", "textStyle"}]
       64 DUPCLOSURE                       R13 K25 [PROTO_3]
       65 NAMECALL                         R11 R1 K26 ["map"]
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K21 ["Text"]
       70 GETIMPORT                        R11 K12 [UDim2.new]
       72 LOADK                            R12 K27 [0.5]
       73 LOADN                            R13 0
       74 LOADK                            R14 K27 [0.5]
       75 LOADN                            R15 0
       76 CALL                             R11 4 1
       77 SETTABLEKS                       R11 R10 K22 ["Position"]
       79 GETTABLEKS                       R13 R0 K13 ["Color"]
       81 GETTABLEKS                       R12 R13 K28 ["Content"]
       83 GETTABLEKS                       R11 R12 K29 ["Emphasis"]
       85 SETTABLEKS                       R11 R10 K23 ["textStyle"]
       87 CALL                             R8 2 -1
       88 SETLIST                          R7 R8 -1 [1]
       90 CALL                             R4 3 -1
       91 RETURN                           R4 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Interactable"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Text"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R8 R0 K11 ["Providers"]
       32 GETTABLEKS                       R7 R8 K12 ["Style"]
       34 GETTABLEKS                       R6 R7 K13 ["useTokens"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K14 ["Enums"]
       41 GETTABLEKS                       R7 R8 K15 ["ControlState"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K16 [PROTO_4]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 DUPTABLE                         R8 K19 [{"summary", "stories"}]
       51 LOADK                            R9 K20 ["View"]
       52 SETTABLEKS                       R9 R8 K17 ["summary"]
       54 DUPTABLE                         R9 K22 [{"BasicStory"}]
       55 DUPTABLE                         R10 K25 [{"name", "story"}]
       56 LOADK                            R11 K26 ["GUI State Use"]
       57 SETTABLEKS                       R11 R10 K23 ["name"]
       59 SETTABLEKS                       R7 R10 K24 ["story"]
       61 SETTABLEKS                       R10 R9 K21 ["BasicStory"]
       63 SETTABLEKS                       R9 R8 K18 ["stories"]
       65 RETURN                           R8 1
