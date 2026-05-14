PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R1
        8 LOADK                            R5 K2 ["Title"]
        9 MOVE                             R6 R2
       10 CALL                             R3 3 1
       11 GETUPVAL                         R4 1
       12 MOVE                             R5 R1
       13 LOADK                            R6 K3 ["Text"]
       14 MOVE                             R7 R2
       15 CALL                             R4 3 1
       16 GETUPVAL                         R5 2
       17 LOADK                            R6 K4 ["Frame"]
       18 NEWTABLE                         R7 2 0
       20 GETTABLEKS                       R8 R0 K5 ["LayoutOrder"]
       22 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       24 GETUPVAL                         R8 3
       25 GETTABLEKS                       R8 R8 K6 ["Tag"]
       27 LOADK                            R9 K7 ["Role-TextControl Role-Surface X-Fit"]
       28 SETTABLE                         R9 R7 R8
       29 DUPTABLE                         R8 K9 [{"TitleFrame", "Text"}]
       30 GETUPVAL                         R9 2
       31 LOADK                            R10 K4 ["Frame"]
       32 NEWTABLE                         R11 2 0
       34 LOADN                            R12 1
       35 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       37 GETUPVAL                         R12 3
       38 GETTABLEKS                       R12 R12 K6 ["Tag"]
       40 LOADK                            R13 K10 ["X-Row Role-Surface X-Fit"]
       41 SETTABLE                         R13 R11 R12
       42 DUPTABLE                         R12 K11 [{"Title"}]
       43 JUMPIFEQKS                       R3 K12 [""] ; [+14]
       45 GETUPVAL                         R13 2
       46 LOADK                            R14 K13 ["TextLabel"]
       47 NEWTABLE                         R15 2 0
       49 SETTABLEKS                       R3 R15 K3 ["Text"]
       51 GETUPVAL                         R16 3
       52 GETTABLEKS                       R16 R16 K6 ["Tag"]
       54 LOADK                            R17 K14 ["Role-Surface Role-Text X-Fit Text-Title"]
       55 SETTABLE                         R17 R15 R16
       56 CALL                             R13 2 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R13
       59 SETTABLEKS                       R13 R12 K2 ["Title"]
       61 CALL                             R9 3 1
       62 SETTABLEKS                       R9 R8 K8 ["TitleFrame"]
       64 JUMPIFEQKS                       R4 K12 [""] ; [+17]
       66 GETUPVAL                         R9 2
       67 LOADK                            R10 K13 ["TextLabel"]
       68 NEWTABLE                         R11 4 0
       70 LOADN                            R12 2
       71 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       73 SETTABLEKS                       R4 R11 K3 ["Text"]
       75 GETUPVAL                         R12 3
       76 GETTABLEKS                       R12 R12 K6 ["Tag"]
       78 LOADK                            R13 K15 ["Role-Surface Role-Text X-Fit Text-Label"]
       79 SETTABLE                         R13 R11 R12
       80 CALL                             R9 2 1
       81 JUMP                             ; [+1]
       82 LOADNIL                          R9
       83 SETTABLEKS                       R9 R8 K3 ["Text"]
       85 CALL                             R5 3 -1
       86 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Components"]
       22 GETTABLEKS                       R4 R4 K11 ["ControlsView"]
       24 GETTABLEKS                       R4 R4 K12 ["ControlProps"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K9 ["Src"]
       31 GETTABLEKS                       R5 R5 K13 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K6 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K16 ["Localization"]
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K9 ["Src"]
       49 GETTABLEKS                       R9 R9 K10 ["Components"]
       51 GETTABLEKS                       R9 R9 K11 ["ControlsView"]
       53 GETTABLEKS                       R9 R9 K17 ["getLocalizedField"]
       55 CALL                             R8 1 1
       56 DUPCLOSURE                       R9 K18 [PROTO_0]
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 RETURN                           R9 1
