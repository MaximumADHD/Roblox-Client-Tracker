PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Popover"]
        6 GETTABLEKS                       R2 R3 K2 ["Root"]
        8 DUPTABLE                         R3 K4 [{"isOpen"}]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K3 ["isOpen"]
       12 DUPTABLE                         R4 K7 [{"Anchor", "Content"}]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K0 ["createElement"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K1 ["Popover"]
       19 GETTABLEKS                       R6 R7 K5 ["Anchor"]
       21 DUPTABLE                         R7 K9 [{"anchorRef"}]
       22 GETTABLEKS                       R8 R0 K10 ["virtualRef"]
       24 SETTABLEKS                       R8 R7 K8 ["anchorRef"]
       26 CALL                             R5 2 1
       27 SETTABLEKS                       R5 R4 K5 ["Anchor"]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K0 ["createElement"]
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R7 R8 K1 ["Popover"]
       35 GETTABLEKS                       R6 R7 K6 ["Content"]
       37 DUPTABLE                         R7 K13 [{"align", "side"}]
       38 GETUPVAL                         R11 1
       39 GETTABLEKS                       R10 R11 K14 ["Enums"]
       41 GETTABLEKS                       R9 R10 K15 ["PopoverAlign"]
       43 GETTABLEKS                       R8 R9 K16 ["Start"]
       45 SETTABLEKS                       R8 R7 K11 ["align"]
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R10 R11 K14 ["Enums"]
       50 GETTABLEKS                       R9 R10 K17 ["PopoverSide"]
       52 GETTABLEKS                       R8 R9 K18 ["Right"]
       54 SETTABLEKS                       R8 R7 K12 ["side"]
       56 DUPTABLE                         R8 K20 [{"Body"}]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R9 R10 K0 ["createElement"]
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R10 R11 K21 ["View"]
       63 DUPTABLE                         R11 K23 [{"tag"}]
       64 LOADK                            R12 K24 ["auto-xy gap-small padding-small radius-small stroke-standard stroke-default"]
       65 SETTABLEKS                       R12 R11 K22 ["tag"]
       67 DUPTABLE                         R12 K26 [{"CompositorNodeInputLabel"}]
       68 GETUPVAL                         R14 0
       69 GETTABLEKS                       R13 R14 K0 ["createElement"]
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R14 R15 K27 ["Text"]
       74 DUPTABLE                         R15 K29 [{"tag", "Text", "LayoutOrder"}]
       75 LOADK                            R16 K30 ["text-body-small text-align-x-left auto-xy"]
       76 SETTABLEKS                       R16 R15 K22 ["tag"]
       78 GETTABLEKS                       R16 R0 K27 ["Text"]
       80 SETTABLEKS                       R16 R15 K27 ["Text"]
       82 LOADN                            R16 1
       83 SETTABLEKS                       R16 R15 K28 ["LayoutOrder"]
       85 CALL                             R13 2 1
       86 SETTABLEKS                       R13 R12 K25 ["CompositorNodeInputLabel"]
       88 CALL                             R9 3 1
       89 SETTABLEKS                       R9 R8 K19 ["Body"]
       91 CALL                             R5 3 1
       92 SETTABLEKS                       R5 R4 K6 ["Content"]
       94 CALL                             R1 3 -1
       95 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
