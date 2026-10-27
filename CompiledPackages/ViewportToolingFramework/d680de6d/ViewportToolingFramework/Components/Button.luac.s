PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnClick"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+2]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R3 R1 K1 ["Enabled"]
        4 JUMPIFEQKB                       R3 FALSE ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R5 0 2
       16 GETTABLEKS                       R6 R1 K3 ["OnClick"]
       18 MOVE                             R7 R2
       19 SETLIST                          R5 R6 2 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K4 ["createElement"]
       25 LOADK                            R5 K5 ["TextButton"]
       26 NEWTABLE                         R6 4 0
       28 GETTABLEKS                       R7 R0 K6 ["NextOrder"]
       30 CALL                             R7 0 1
       31 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       33 NOT                              R7 R2
       34 SETTABLEKS                       R7 R6 K8 ["Active"]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K9 ["Event"]
       39 GETTABLEKS                       R7 R7 K10 ["Activated"]
       41 SETTABLE                         R3 R6 R7
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K11 ["Tag"]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R8 R8 K12 ["Styling"]
       48 GETTABLEKS                       R8 R8 K13 ["joinTags"]
       50 LOADK                            R9 K14 ["VPF-Button"]
       51 JUMPIFNOT                        R2 ; [+2]
       52 LOADK                            R10 K15 ["VPF-Button--Disabled"]
       53 JUMP                             ; [+6]
       54 GETTABLEKS                       R11 R1 K16 ["Selected"]
       56 JUMPIFNOT                        R11 ; [+2]
       57 LOADK                            R10 K17 ["VPF-Button--Selected"]
       58 JUMP                             ; [+1]
       59 LOADK                            R10 K18 ["VPF-Button--Unselected"]
       60 CALL                             R8 2 1
       61 SETTABLE                         R8 R6 R7
       62 DUPTABLE                         R7 K21 [{"Tooltip", "Contents"}]
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R8 R8 K4 ["createElement"]
       66 GETUPVAL                         R9 2
       67 DUPTABLE                         R10 K24 [{"Title", "Description"}]
       68 GETTABLEKS                       R11 R1 K19 ["Tooltip"]
       70 SETTABLEKS                       R11 R10 K22 ["Title"]
       72 GETTABLEKS                       R11 R1 K25 ["TooltipDescription"]
       74 SETTABLEKS                       R11 R10 K23 ["Description"]
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R7 K19 ["Tooltip"]
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K4 ["createElement"]
       82 LOADK                            R9 K26 ["Frame"]
       83 NEWTABLE                         R10 1 0
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K11 ["Tag"]
       88 LOADK                            R12 K27 ["X-Fill X-PadS"]
       89 SETTABLE                         R12 R10 R11
       90 DUPTABLE                         R11 K29 [{"Icon"}]
       91 GETUPVAL                         R12 0
       92 GETTABLEKS                       R12 R12 K4 ["createElement"]
       94 GETUPVAL                         R13 3
       95 DUPTABLE                         R14 K29 [{"Icon"}]
       96 GETTABLEKS                       R15 R1 K28 ["Icon"]
       98 SETTABLEKS                       R15 R14 K28 ["Icon"]
      100 CALL                             R12 2 1
      101 SETTABLEKS                       R12 R11 K28 ["Icon"]
      103 CALL                             R8 3 1
      104 SETTABLEKS                       R8 R7 K20 ["Contents"]
      106 CALL                             R4 3 -1
      107 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["Icon"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["Tooltip"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Types"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 RETURN                           R6 1
