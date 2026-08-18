PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shortcuts"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETIMPORT                        R0 K3 [table.concat]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["shortcuts"]
       12 LOADK                            R2 K4 [", "]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADN                            R3 320
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R5 0 1
       12 GETTABLEKS                       R6 R0 K1 ["shortcuts"]
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K2 ["createElement"]
       20 GETUPVAL                         R5 3
       21 DUPTABLE                         R6 K7 [{"onAbsoluteSizeChanged", "backgroundStyle", "tag", "sizeConstraint"}]
       22 GETTABLEKS                       R7 R0 K3 ["onAbsoluteSizeChanged"]
       24 SETTABLEKS                       R7 R6 K3 ["onAbsoluteSizeChanged"]
       26 GETTABLEKS                       R7 R1 K8 ["Inverse"]
       28 GETTABLEKS                       R7 R7 K9 ["Surface"]
       30 GETTABLEKS                       R7 R7 K10 ["Surface_0"]
       32 SETTABLEKS                       R7 R6 K4 ["backgroundStyle"]
       34 NEWTABLE                         R7 4 0
       36 LOADB                            R8 1
       37 SETTABLEKS                       R8 R7 K11 ["col gap-xsmall auto-xy"]
       39 GETTABLEKS                       R9 R0 K12 ["text"]
       41 JUMPIFNOTEQKNIL                  R9 ; [+2]
       43 LOADB                            R8 0 +1
       44 LOADB                            R8 1
       45 SETTABLEKS                       R8 R7 K13 ["padding-x-medium padding-y-small"]
       47 GETTABLEKS                       R9 R0 K12 ["text"]
       49 JUMPIFEQKNIL                     R9 ; [+2]
       51 LOADB                            R8 0 +1
       52 LOADB                            R8 1
       53 SETTABLEKS                       R8 R7 K14 ["padding-x-small padding-y-xsmall"]
       55 SETTABLEKS                       R7 R6 K5 ["tag"]
       57 DUPTABLE                         R7 K16 [{"MaxSize"}]
       58 GETIMPORT                        R8 K19 [Vector2.new]
       60 MOVE                             R9 R2
       61 LOADK                            R10 K20 [∞]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K15 ["MaxSize"]
       65 SETTABLEKS                       R7 R6 K6 ["sizeConstraint"]
       67 DUPTABLE                         R7 K23 [{"Header", "Text"}]
       68 GETUPVAL                         R8 2
       69 GETTABLEKS                       R8 R8 K2 ["createElement"]
       71 GETUPVAL                         R9 3
       72 DUPTABLE                         R10 K27 [{["LayoutOrder"] = 1, ["tag"] = "row flex-between gap-small size-full-0 auto-y"}]
       73 DUPTABLE                         R11 K30 [{"Title", "Shortcut"}]
       74 GETUPVAL                         R12 2
       75 GETTABLEKS                       R12 R12 K2 ["createElement"]
       77 GETUPVAL                         R13 4
       78 DUPTABLE                         R14 K32 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "auto-xy text-title-small content-inverse-emphasis"}]
       79 GETTABLEKS                       R15 R0 K33 ["title"]
       81 SETTABLEKS                       R15 R14 K22 ["Text"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K28 ["Title"]
       86 GETTABLEKS                       R13 R0 K1 ["shortcuts"]
       88 JUMPIFNOT                        R13 ; [+9]
       89 GETUPVAL                         R12 2
       90 GETTABLEKS                       R12 R12 K2 ["createElement"]
       92 GETUPVAL                         R13 4
       93 DUPTABLE                         R14 K36 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "auto-xy text-body-small content-inverse-muted"}]
       94 SETTABLEKS                       R3 R14 K22 ["Text"]
       96 CALL                             R12 2 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R12
       99 SETTABLEKS                       R12 R11 K29 ["Shortcut"]
      101 CALL                             R8 3 1
      102 SETTABLEKS                       R8 R7 K21 ["Header"]
      104 GETTABLEKS                       R9 R0 K12 ["text"]
      106 JUMPIFNOT                        R9 ; [+15]
      107 GETTABLEKS                       R9 R0 K12 ["text"]
      109 JUMPIFEQKS                       R9 K37 [""] ; [+12]
      111 GETUPVAL                         R8 2
      112 GETTABLEKS                       R8 R8 K2 ["createElement"]
      114 GETUPVAL                         R9 4
      115 DUPTABLE                         R10 K39 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-inverse-default"}]
      116 GETTABLEKS                       R11 R0 K12 ["text"]
      118 SETTABLEKS                       R11 R10 K22 ["Text"]
      120 CALL                             R8 2 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R8
      123 SETTABLEKS                       R8 R7 K22 ["Text"]
      125 CALL                             R4 3 -1
      126 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["Text"]
       21 GETTABLEKS                       R5 R3 K10 ["View"]
       23 GETTABLEKS                       R6 R3 K11 ["Hooks"]
       25 GETTABLEKS                       R6 R6 K12 ["useTokens"]
       27 GETTABLEKS                       R7 R3 K11 ["Hooks"]
       29 GETTABLEKS                       R7 R7 K13 ["useScaledValue"]
       31 DUPCLOSURE                       R8 K14 [PROTO_1]
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R7
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R4
       37 RETURN                           R8 1
