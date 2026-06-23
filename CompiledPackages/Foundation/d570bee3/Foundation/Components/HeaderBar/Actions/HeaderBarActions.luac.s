PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["slot"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Leading"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+18]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K2 ["LEADING_ACTIONS_LAYOUT_ORDER"]
       11 DUPTABLE                         R1 K4 [{"left"}]
       12 GETIMPORT                        R2 K7 [UDim.new]
       14 LOADN                            R3 0
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K8 ["Size"]
       18 GETTABLEKS                       R5 R5 K9 ["Size_200"]
       20 MINUS                            R4 R5
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K3 ["left"]
       24 RETURN                           R0 2
       25 GETUPVAL                         R0 0
       26 GETTABLEKS                       R0 R0 K0 ["slot"]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K10 ["Trailing"]
       31 JUMPIFNOTEQ                      R0 R1 ; [+18]
       33 GETUPVAL                         R0 2
       34 GETTABLEKS                       R0 R0 K11 ["TRAILING_ACTIONS_LAYOUT_ORDER"]
       36 DUPTABLE                         R1 K13 [{"right"}]
       37 GETIMPORT                        R2 K7 [UDim.new]
       39 LOADN                            R3 0
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R5 R5 K8 ["Size"]
       43 GETTABLEKS                       R5 R5 K9 ["Size_200"]
       45 MINUS                            R4 R5
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R1 K12 ["right"]
       49 RETURN                           R0 2
       50 LOADNIL                          R0
       51 LOADNIL                          R1
       52 RETURN                           R0 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          VAL R2
       12 NEWTABLE                         R5 0 2
       14 GETTABLEKS                       R6 R1 K1 ["slot"]
       16 GETTABLEKS                       R7 R2 K2 ["Size"]
       18 GETTABLEKS                       R7 R7 K3 ["Size_200"]
       20 SETLIST                          R5 R6 2 [1]
       22 CALL                             R3 2 2
       23 NEWTABLE                         R5 0 0
       25 GETTABLEKS                       R6 R0 K4 ["actions"]
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 FORGPREP                         R6
       30 GETTABLEKS                       R12 R10 K5 ["id"]
       32 FASTCALL1                        TOSTRING R12 ; [+2]
       33 GETIMPORT                        R11 K7 [tostring]
       35 CALL                             R11 1 1
       36 GETUPVAL                         R12 2
       37 GETTABLEKS                       R12 R12 K8 ["createElement"]
       39 GETUPVAL                         R13 5
       40 DUPTABLE                         R14 K13 [{"icon", "onActivated", "LayoutOrder", "testId"}]
       41 GETTABLEKS                       R15 R10 K9 ["icon"]
       43 SETTABLEKS                       R15 R14 K9 ["icon"]
       45 GETTABLEKS                       R15 R10 K10 ["onActivated"]
       47 SETTABLEKS                       R15 R14 K10 ["onActivated"]
       49 SETTABLEKS                       R9 R14 K11 ["LayoutOrder"]
       51 LOADK                            R16 K14 ["%*--actions--%*"]
       52 GETTABLEKS                       R18 R1 K12 ["testId"]
       54 GETTABLEKS                       R19 R10 K5 ["id"]
       56 NAMECALL                         R16 R16 K15 ["format"]
       58 CALL                             R16 3 1
       59 MOVE                             R15 R16
       60 SETTABLEKS                       R15 R14 K12 ["testId"]
       62 CALL                             R12 2 1
       63 SETTABLE                         R12 R5 R11
       64 FORGLOOP                         R6 2 ; [-35]
       66 GETUPVAL                         R6 2
       67 GETTABLEKS                       R6 R6 K8 ["createElement"]
       69 GETUPVAL                         R7 6
       70 DUPTABLE                         R8 K18 [{"tag", "padding", "LayoutOrder", "testId"}]
       71 LOADK                            R9 K19 ["row align-y-center shrink gap-small auto-xy"]
       72 SETTABLEKS                       R9 R8 K16 ["tag"]
       74 SETTABLEKS                       R4 R8 K17 ["padding"]
       76 SETTABLEKS                       R3 R8 K11 ["LayoutOrder"]
       78 LOADK                            R10 K20 ["%*--actions"]
       79 GETTABLEKS                       R12 R1 K12 ["testId"]
       81 NAMECALL                         R10 R10 K15 ["format"]
       83 CALL                             R10 2 1
       84 MOVE                             R9 R10
       85 SETTABLEKS                       R9 R8 K12 ["testId"]
       87 MOVE                             R9 R5
       88 CALL                             R6 3 -1
       89 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R5 K10 ["HeaderBarSlot"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["IconButton"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Types"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Components"]
       51 GETTABLEKS                       R9 R9 K15 ["HeaderBar"]
       53 GETTABLEKS                       R9 R9 K16 ["constants"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Components"]
       60 GETTABLEKS                       R10 R10 K15 ["HeaderBar"]
       62 GETTABLEKS                       R10 R10 K17 ["useHeaderBarContext"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K18 ["Providers"]
       69 GETTABLEKS                       R11 R11 K19 ["Style"]
       71 GETTABLEKS                       R11 R11 K20 ["useTokens"]
       73 CALL                             R10 1 1
       74 DUPCLOSURE                       R11 K21 [PROTO_1]
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R7
       82 GETTABLEKS                       R12 R3 K22 ["memo"]
       84 MOVE                             R13 R11
       85 CALL                             R12 1 -1
       86 RETURN                           R12 -1
