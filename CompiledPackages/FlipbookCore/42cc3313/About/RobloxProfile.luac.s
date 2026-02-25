PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R4 2
        3 GETTABLEKS                       R3 R4 K0 ["userId"]
        5 NAMECALL                         R1 R1 K1 ["GetNameFromUserIdAsync"]
        7 CALL                             R1 2 -1
        8 CALL                             R0 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADNIL                          R3
        4 CALL                             R2 1 2
        5 JUMPIFEQKNIL                     R2 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K0 ["useSpring"]
       12 DUPTABLE                         R6 K2 [{"alpha"}]
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADN                            R7 1
       15 JUMP                             ; [+1]
       16 LOADN                            R7 0
       17 SETTABLEKS                       R7 R6 K1 ["alpha"]
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 3
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R3
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R8 0 1
       27 GETTABLEKS                       R9 R0 K3 ["userId"]
       29 SETLIST                          R8 R9 1 [1]
       31 CALL                             R6 2 0
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R6 R7 K4 ["createElement"]
       35 GETUPVAL                         R8 6
       36 GETTABLEKS                       R7 R8 K5 ["View"]
       38 DUPTABLE                         R8 K8 [{"tag", "LayoutOrder"}]
       39 LOADK                            R9 K9 ["auto-xy row align-y-center gap-small"]
       40 SETTABLEKS                       R9 R8 K6 ["tag"]
       42 GETTABLEKS                       R9 R0 K7 ["LayoutOrder"]
       44 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       46 DUPTABLE                         R9 K12 [{"Avatar", "Username"}]
       47 GETUPVAL                         R11 5
       48 GETTABLEKS                       R10 R11 K4 ["createElement"]
       50 GETUPVAL                         R12 6
       51 GETTABLEKS                       R11 R12 K10 ["Avatar"]
       53 DUPTABLE                         R12 K14 [{"userId", "backplateStyle", "LayoutOrder"}]
       54 GETTABLEKS                       R13 R0 K3 ["userId"]
       56 SETTABLEKS                       R13 R12 K3 ["userId"]
       58 GETTABLEKS                       R15 R1 K15 ["Color"]
       60 GETTABLEKS                       R14 R15 K16 ["Surface"]
       62 GETTABLEKS                       R13 R14 K17 ["Surface_300"]
       64 SETTABLEKS                       R13 R12 K13 ["backplateStyle"]
       66 GETUPVAL                         R13 7
       67 CALL                             R13 0 1
       68 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K10 ["Avatar"]
       73 GETUPVAL                         R11 5
       74 GETTABLEKS                       R10 R11 K4 ["createElement"]
       76 GETUPVAL                         R12 6
       77 GETTABLEKS                       R11 R12 K18 ["Text"]
       79 DUPTABLE                         R12 K20 [{"tag", "LayoutOrder", "Text", "TextTransparency"}]
       80 LOADK                            R13 K21 ["auto-xy text-label-medium"]
       81 SETTABLEKS                       R13 R12 K6 ["tag"]
       83 GETUPVAL                         R13 7
       84 CALL                             R13 0 1
       85 SETTABLEKS                       R13 R12 K7 ["LayoutOrder"]
       87 LOADK                            R14 K22 ["@%*"]
       88 MOVE                             R16 R2
       89 NAMECALL                         R14 R14 K23 ["format"]
       91 CALL                             R14 2 1
       92 MOVE                             R13 R14
       93 SETTABLEKS                       R13 R12 K18 ["Text"]
       95 GETTABLEKS                       R13 R5 K1 ["alpha"]
       97 SETTABLEKS                       R13 R12 K19 ["TextTransparency"]
       99 CALL                             R10 2 1
      100 SETTABLEKS                       R10 R9 K11 ["Username"]
      102 CALL                             R6 3 -1
      103 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R6 K7 [script]
       11 GETTABLEKS                       R5 R6 K8 ["Parent"]
       13 GETTABLEKS                       R4 R5 K8 ["Parent"]
       15 GETTABLEKS                       R3 R4 K9 ["RobloxPackages"]
       17 GETTABLEKS                       R2 R3 K10 ["Foundation"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETIMPORT                        R7 K7 [script]
       24 GETTABLEKS                       R6 R7 K8 ["Parent"]
       26 GETTABLEKS                       R5 R6 K8 ["Parent"]
       28 GETTABLEKS                       R4 R5 K11 ["Packages"]
       30 GETTABLEKS                       R3 R4 K12 ["React"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETIMPORT                        R8 K7 [script]
       37 GETTABLEKS                       R7 R8 K8 ["Parent"]
       39 GETTABLEKS                       R6 R7 K8 ["Parent"]
       41 GETTABLEKS                       R5 R6 K11 ["Packages"]
       43 GETTABLEKS                       R4 R5 K13 ["ReactSpring"]
       45 CALL                             R3 1 1
       46 GETIMPORT                        R4 K5 [require]
       48 GETIMPORT                        R9 K7 [script]
       50 GETTABLEKS                       R8 R9 K8 ["Parent"]
       52 GETTABLEKS                       R7 R8 K8 ["Parent"]
       54 GETTABLEKS                       R6 R7 K14 ["Common"]
       56 GETTABLEKS                       R5 R6 K15 ["nextLayoutOrder"]
       58 CALL                             R4 1 1
       59 GETTABLEKS                       R5 R2 K16 ["useState"]
       61 GETTABLEKS                       R6 R2 K17 ["useEffect"]
       63 GETTABLEKS                       R8 R1 K18 ["Hooks"]
       65 GETTABLEKS                       R7 R8 K19 ["useTokens"]
       67 DUPCLOSURE                       R8 K20 [PROTO_2]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R4
       76 RETURN                           R8 1
