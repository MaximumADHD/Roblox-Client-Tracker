PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Localization"]
        2 LOADK                            R4 K1 ["SearchBar"]
        3 LOADK                            R5 K2 ["CantInviteTooltip"]
        4 NAMECALL                         R2 R1 K3 ["getText"]
        6 CALL                             R2 3 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K4 ["createElement"]
       10 GETUPVAL                         R4 1
       11 DUPTABLE                         R5 K7 [{["tag"] = "auto-xy stroke-standard stroke-default radius-small bg-shift-300"}]
       12 DUPTABLE                         R6 K9 [{"Label"}]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K4 ["createElement"]
       16 GETUPVAL                         R8 2
       17 DUPTABLE                         R9 K12 [{["Text"], ["tag"] = "auto-xy padding-x-small padding-y-xsmall text-label-small content-default"}]
       18 LOADK                            R12 K1 ["SearchBar"]
       19 LOADK                            R13 K13 ["CantInviteLabel"]
       20 NAMECALL                         R10 R1 K3 ["getText"]
       22 CALL                             R10 3 1
       23 SETTABLEKS                       R10 R9 K10 ["Text"]
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K8 ["Label"]
       28 CALL                             R3 3 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K4 ["createElement"]
       32 GETUPVAL                         R5 1
       33 DUPTABLE                         R6 K16 [{["LayoutOrder"], ["tag"] = "self-center auto-xy"}]
       34 GETTABLEKS                       R7 R0 K14 ["LayoutOrder"]
       36 SETTABLEKS                       R7 R6 K14 ["LayoutOrder"]
       38 DUPTABLE                         R7 K18 [{"Tooltip"}]
       39 GETTABLEKS                       R9 R0 K19 ["InDropdownMenu"]
       41 JUMPIFNOT                        R9 ; [+11]
       42 GETUPVAL                         R8 0
       43 GETTABLEKS                       R8 R8 K4 ["createElement"]
       45 GETUPVAL                         R9 3
       46 DUPTABLE                         R10 K21 [{"Text", "Child"}]
       47 SETTABLEKS                       R2 R10 K10 ["Text"]
       49 SETTABLEKS                       R3 R10 K20 ["Child"]
       51 CALL                             R8 2 1
       52 JUMP                             ; [+19]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K4 ["createElement"]
       56 GETUPVAL                         R9 4
       57 DUPTABLE                         R10 K27 [{["title"] = "", ["text"], ["side"], ["align"]}]
       58 SETTABLEKS                       R2 R10 K24 ["text"]
       60 GETUPVAL                         R11 5
       61 GETTABLEKS                       R11 R11 K28 ["Top"]
       63 SETTABLEKS                       R11 R10 K25 ["side"]
       65 GETUPVAL                         R11 6
       66 GETTABLEKS                       R11 R11 K29 ["End"]
       68 SETTABLEKS                       R11 R10 K26 ["align"]
       70 MOVE                             R11 R3
       71 CALL                             R8 3 1
       72 SETTABLEKS                       R8 R7 K17 ["Tooltip"]
       74 CALL                             R4 3 -1
       75 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K9 ["View"]
       34 GETTABLEKS                       R5 R2 K10 ["Text"]
       36 GETTABLEKS                       R6 R2 K11 ["Tooltip"]
       38 GETTABLEKS                       R7 R2 K12 ["Enums"]
       40 GETTABLEKS                       R7 R7 K13 ["PopoverSide"]
       42 GETTABLEKS                       R8 R2 K12 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["PopoverAlign"]
       46 GETTABLEKS                       R9 R3 K15 ["UI"]
       48 GETTABLEKS                       R9 R9 K11 ["Tooltip"]
       50 GETIMPORT                        R10 K4 [require]
       52 GETTABLEKS                       R11 R0 K16 ["Src"]
       54 GETTABLEKS                       R11 R11 K17 ["Types"]
       56 CALL                             R10 1 1
       57 DUPCLOSURE                       R11 K18 [PROTO_0]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R8
       65 RETURN                           R11 1
