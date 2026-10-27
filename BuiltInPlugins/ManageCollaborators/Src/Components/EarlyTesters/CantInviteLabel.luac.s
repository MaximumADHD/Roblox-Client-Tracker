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
       41 JUMPIFNOT                        R9 ; [+15]
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R9 R9 K20 ["fflagEarlyTestersPolish"]
       45 JUMPIF                           R9 ; [+11]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K4 ["createElement"]
       49 GETUPVAL                         R9 4
       50 DUPTABLE                         R10 K22 [{"Text", "Child"}]
       51 SETTABLEKS                       R2 R10 K10 ["Text"]
       53 SETTABLEKS                       R3 R10 K21 ["Child"]
       55 CALL                             R8 2 1
       56 JUMP                             ; [+19]
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K4 ["createElement"]
       60 GETUPVAL                         R9 5
       61 DUPTABLE                         R10 K28 [{["title"] = "", ["text"], ["side"], ["align"]}]
       62 SETTABLEKS                       R2 R10 K25 ["text"]
       64 GETUPVAL                         R11 6
       65 GETTABLEKS                       R11 R11 K29 ["Top"]
       67 SETTABLEKS                       R11 R10 K26 ["side"]
       69 GETUPVAL                         R11 7
       70 GETTABLEKS                       R11 R11 K30 ["End"]
       72 SETTABLEKS                       R11 R10 K27 ["align"]
       74 MOVE                             R11 R3
       75 CALL                             R8 3 1
       76 SETTABLEKS                       R8 R7 K17 ["Tooltip"]
       78 CALL                             R4 3 -1
       79 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Bin"]
       15 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Packages"]
       22 GETTABLEKS                       R3 R3 K8 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K7 ["Packages"]
       36 GETTABLEKS                       R5 R5 K10 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R3 K11 ["View"]
       41 GETTABLEKS                       R6 R3 K12 ["Text"]
       43 GETTABLEKS                       R7 R3 K13 ["Tooltip"]
       45 GETTABLEKS                       R8 R3 K14 ["Enums"]
       47 GETTABLEKS                       R8 R8 K15 ["PopoverSide"]
       49 GETTABLEKS                       R9 R3 K14 ["Enums"]
       51 GETTABLEKS                       R9 R9 K16 ["PopoverAlign"]
       53 GETTABLEKS                       R10 R4 K17 ["UI"]
       55 GETTABLEKS                       R10 R10 K13 ["Tooltip"]
       57 GETIMPORT                        R11 K4 [require]
       59 GETTABLEKS                       R12 R0 K18 ["Src"]
       61 GETTABLEKS                       R12 R12 K19 ["Types"]
       63 CALL                             R11 1 1
       64 DUPCLOSURE                       R12 K20 [PROTO_0]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 RETURN                           R12 1
