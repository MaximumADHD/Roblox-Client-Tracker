PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Weight"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["Weight"]
       10 MULK                             R1 R2 K1 [100]
       11 FASTCALL1                        MATH_ROUND R1 ; [+2]
       12 GETIMPORT                        R0 K4 [math.round]
       14 CALL                             R0 1 1
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["Weight"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["createElement"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["View"]
       18 DUPTABLE                         R4 K6 [{"tag", "LayoutOrder"}]
       19 LOADK                            R5 K7 ["row auto-xy gap-small flex-x-start align-y-center"]
       20 SETTABLEKS                       R5 R4 K4 ["tag"]
       22 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       24 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       26 DUPTABLE                         R5 K10 [{"InputLabel", "InputWeight"}]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K2 ["createElement"]
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R7 R8 K11 ["Text"]
       33 DUPTABLE                         R8 K12 [{"tag", "Text", "LayoutOrder"}]
       34 LOADK                            R9 K13 ["content-emphasis text-body-small text-align-x-left auto-xy"]
       35 SETTABLEKS                       R9 R8 K4 ["tag"]
       37 GETTABLEKS                       R9 R0 K14 ["Name"]
       39 SETTABLEKS                       R9 R8 K11 ["Text"]
       41 LOADN                            R9 1
       42 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R5 K8 ["InputLabel"]
       47 JUMPIFEQKNIL                     R1 ; [+24]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R6 R7 K2 ["createElement"]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R7 R8 K11 ["Text"]
       55 DUPTABLE                         R8 K12 [{"tag", "Text", "LayoutOrder"}]
       56 LOADK                            R9 K15 ["content-muted text-body-small text-align-x-left auto-xy"]
       57 SETTABLEKS                       R9 R8 K4 ["tag"]
       59 LOADK                            R10 K16 ["%*%%"]
       60 MOVE                             R12 R1
       61 NAMECALL                         R10 R10 K17 ["format"]
       63 CALL                             R10 2 1
       64 MOVE                             R9 R10
       65 SETTABLEKS                       R9 R8 K11 ["Text"]
       67 LOADN                            R9 2
       68 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       70 CALL                             R6 2 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R6
       73 SETTABLEKS                       R6 R5 K9 ["InputWeight"]
       75 CALL                             R2 3 -1
       76 RETURN                           R2 -1

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
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
