PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnClick"]
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
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIFNOT                        R3 ; [+7]
        5 GETTABLEKS                       R3 R1 K1 ["Enabled"]
        7 JUMPIFEQKB                       R3 FALSE ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 GETUPVAL                         R4 0
       15 CALL                             R4 0 1
       16 JUMPIFNOT                        R4 ; [+15]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 NEWTABLE                         R6 0 2
       25 GETTABLEKS                       R7 R1 K3 ["OnClick"]
       27 MOVE                             R8 R2
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 1
       31 MOVE                             R3 R4
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R4 R5 K4 ["createElement"]
       35 LOADK                            R5 K5 ["TextButton"]
       36 NEWTABLE                         R6 4 0
       38 GETTABLEKS                       R7 R0 K6 ["NextOrder"]
       40 CALL                             R7 0 1
       41 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       43 GETUPVAL                         R8 0
       44 CALL                             R8 0 1
       45 JUMPIFNOT                        R8 ; [+2]
       46 NOT                              R7 R2
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 SETTABLEKS                       R7 R6 K8 ["Active"]
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R8 R9 K9 ["Event"]
       54 GETTABLEKS                       R7 R8 K10 ["Activated"]
       56 GETUPVAL                         R9 0
       57 CALL                             R9 0 1
       58 JUMPIFNOT                        R9 ; [+2]
       59 MOVE                             R8 R3
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R8 R1 K3 ["OnClick"]
       63 SETTABLE                         R8 R6 R7
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R7 R8 K11 ["Tag"]
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R9 R10 K12 ["Styling"]
       70 GETTABLEKS                       R8 R9 K13 ["joinTags"]
       72 LOADK                            R9 K14 ["VPF-Button"]
       73 GETUPVAL                         R11 0
       74 CALL                             R11 0 1
       75 JUMPIFNOT                        R11 ; [+10]
       76 JUMPIFNOT                        R2 ; [+2]
       77 LOADK                            R10 K15 ["VPF-Button--Disabled"]
       78 JUMP                             ; [+13]
       79 GETTABLEKS                       R11 R1 K16 ["Selected"]
       81 JUMPIFNOT                        R11 ; [+2]
       82 LOADK                            R10 K17 ["VPF-Button--Selected"]
       83 JUMP                             ; [+8]
       84 LOADK                            R10 K18 ["VPF-Button--Unselected"]
       85 JUMP                             ; [+6]
       86 GETTABLEKS                       R11 R1 K16 ["Selected"]
       88 JUMPIFNOT                        R11 ; [+2]
       89 LOADK                            R10 K17 ["VPF-Button--Selected"]
       90 JUMP                             ; [+1]
       91 LOADK                            R10 K18 ["VPF-Button--Unselected"]
       92 CALL                             R8 2 1
       93 SETTABLE                         R8 R6 R7
       94 DUPTABLE                         R7 K21 [{"Tooltip", "Contents"}]
       95 GETUPVAL                         R9 1
       96 GETTABLEKS                       R8 R9 K4 ["createElement"]
       98 GETUPVAL                         R9 3
       99 DUPTABLE                         R10 K24 [{"Title", "Description"}]
      100 GETTABLEKS                       R11 R1 K19 ["Tooltip"]
      102 SETTABLEKS                       R11 R10 K22 ["Title"]
      104 GETTABLEKS                       R11 R1 K25 ["TooltipDescription"]
      106 SETTABLEKS                       R11 R10 K23 ["Description"]
      108 CALL                             R8 2 1
      109 SETTABLEKS                       R8 R7 K19 ["Tooltip"]
      111 GETUPVAL                         R9 1
      112 GETTABLEKS                       R8 R9 K4 ["createElement"]
      114 LOADK                            R9 K26 ["Frame"]
      115 NEWTABLE                         R10 1 0
      117 GETUPVAL                         R12 1
      118 GETTABLEKS                       R11 R12 K11 ["Tag"]
      120 LOADK                            R12 K27 ["X-Fill X-PadS"]
      121 SETTABLE                         R12 R10 R11
      122 DUPTABLE                         R11 K29 [{"Icon"}]
      123 GETUPVAL                         R13 1
      124 GETTABLEKS                       R12 R13 K4 ["createElement"]
      126 GETUPVAL                         R13 4
      127 DUPTABLE                         R14 K29 [{"Icon"}]
      128 GETTABLEKS                       R15 R1 K28 ["Icon"]
      130 SETTABLEKS                       R15 R14 K28 ["Icon"]
      132 CALL                             R12 2 1
      133 SETTABLEKS                       R12 R11 K28 ["Icon"]
      135 CALL                             R8 3 1
      136 SETTABLEKS                       R8 R7 K20 ["Contents"]
      138 CALL                             R4 3 -1
      139 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R5 K10 ["Icon"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Components"]
       32 GETTABLEKS                       R5 R6 K11 ["Tooltip"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Flags"]
       44 GETTABLEKS                       R7 R8 K14 ["getFFlagViewportToolingFrameworkButtonDisabled"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K15 [PROTO_1]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 RETURN                           R7 1
