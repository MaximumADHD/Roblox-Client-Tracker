PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onItemSelected"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K4 [{[1] = "row align-y-center gap-xsmall size-full-500 padding-x-xsmall radius-small", ["LayoutOrder"], ["onActivated"]}]
        3 SETTABLEKS                       R1 R4 K2 ["LayoutOrder"]
        5 GETUPVAL                         R5 2
        6 GETUPVAL                         R6 3
        7 GETTABLEKS                       R6 R6 K5 ["id"]
        9 GETTABLEKS                       R7 R0 K5 ["id"]
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       14 DUPTABLE                         R5 K8 [{"CheckContainer", "Label"}]
       15 GETUPVAL                         R7 4
       16 GETTABLEKS                       R7 R7 K9 ["shouldDisplayChecks"]
       18 JUMPIFNOT                        R7 ; [+47]
       19 GETUPVAL                         R6 0
       20 GETUPVAL                         R7 1
       21 DUPTABLE                         R8 K11 [{[1] = "size-400-400"}]
       22 DUPTABLE                         R9 K13 [{"Check"}]
       23 GETUPVAL                         R11 4
       24 GETTABLEKS                       R11 R11 K14 ["values"]
       26 JUMPIFNOT                        R11 ; [+34]
       27 GETUPVAL                         R12 4
       28 GETTABLEKS                       R12 R12 K14 ["values"]
       30 GETTABLEKS                       R13 R0 K5 ["id"]
       32 GETTABLE                         R11 R12 R13
       33 JUMPIFNOT                        R11 ; [+27]
       34 GETUPVAL                         R10 0
       35 GETUPVAL                         R11 5
       36 DUPTABLE                         R12 K17 [{"LayoutOrder", "name", "size"}]
       37 GETUPVAL                         R13 6
       38 CALL                             R13 0 1
       39 SETTABLEKS                       R13 R12 K2 ["LayoutOrder"]
       41 GETUPVAL                         R13 7
       42 GETTABLEKS                       R13 R13 K18 ["Enums"]
       44 GETTABLEKS                       R13 R13 K19 ["IconName"]
       46 GETTABLEKS                       R13 R13 K12 ["Check"]
       48 SETTABLEKS                       R13 R12 K15 ["name"]
       50 GETUPVAL                         R13 7
       51 GETTABLEKS                       R13 R13 K18 ["Enums"]
       53 GETTABLEKS                       R13 R13 K20 ["InputSize"]
       55 GETTABLEKS                       R13 R13 K21 ["Small"]
       57 SETTABLEKS                       R13 R12 K16 ["size"]
       59 CALL                             R10 2 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R10
       62 SETTABLEKS                       R10 R9 K12 ["Check"]
       64 CALL                             R6 3 1
       65 JUMP                             ; [+1]
       66 LOADNIL                          R6
       67 SETTABLEKS                       R6 R5 K6 ["CheckContainer"]
       69 GETUPVAL                         R6 0
       70 GETUPVAL                         R7 8
       71 DUPTABLE                         R8 K24 [{[1] = "fill size-0-full text-body-small text-no-wrap text-align-x-left text-align-y-center clip content-emphasis", ["LayoutOrder"], ["Text"]}]
       72 GETUPVAL                         R9 6
       73 CALL                             R9 0 1
       74 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       76 GETTABLEKS                       R9 R0 K25 ["text"]
       78 SETTABLEKS                       R9 R8 K23 ["Text"]
       80 CALL                             R6 2 1
       81 SETTABLEKS                       R6 R5 K7 ["Label"]
       83 CALL                             R2 3 1
       84 GETTABLEKS                       R4 R0 K5 ["id"]
       86 FASTCALL1                        TOSTRING R4 ; [+2]
       87 GETIMPORT                        R3 K27 [tostring]
       89 CALL                             R3 1 1
       90 RETURN                           R2 2

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["items"]
        2 LENGTH                           R2 R3
        3 JUMPIFNOTEQKN                    R2 K1 [0] ; [+9]
        5 LOADNIL                          R2
        6 GETTABLEKS                       R4 R0 K2 ["id"]
        8 FASTCALL1                        TOSTRING R4 ; [+2]
        9 GETIMPORT                        R3 K4 [tostring]
       11 CALL                             R3 1 1
       12 RETURN                           R2 2
       13 GETUPVAL                         R2 0
       14 GETUPVAL                         R3 1
       15 DUPTABLE                         R4 K8 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
       16 SETTABLEKS                       R1 R4 K7 ["LayoutOrder"]
       18 DUPTABLE                         R5 K12 [{"Header", "CategoryItems", "DividerContainer"}]
       19 GETTABLEKS                       R6 R0 K13 ["text"]
       21 JUMPIFNOT                        R6 ; [+12]
       22 GETUPVAL                         R6 0
       23 GETUPVAL                         R7 2
       24 DUPTABLE                         R8 K16 [{["tag"] = "size-full-500 padding-x-small text-caption-small text-no-wrap text-align-x-left text-align-y-center clip content-muted", ["LayoutOrder"], ["Text"]}]
       25 GETUPVAL                         R9 3
       26 CALL                             R9 0 1
       27 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       29 GETTABLEKS                       R9 R0 K13 ["text"]
       31 SETTABLEKS                       R9 R8 K15 ["Text"]
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K9 ["Header"]
       36 GETUPVAL                         R6 0
       37 GETUPVAL                         R7 1
       38 DUPTABLE                         R8 K18 [{["tag"] = "col gap-xxsmall size-full-0 auto-y padding-x-small", ["LayoutOrder"]}]
       39 GETUPVAL                         R9 3
       40 CALL                             R9 0 1
       41 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R9 R9 K19 ["Dictionary"]
       46 GETTABLEKS                       R9 R9 K20 ["map"]
       48 GETTABLEKS                       R10 R0 K0 ["items"]
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          UPVAL U2
       60 CALL                             R9 2 -1
       61 CALL                             R6 -1 1
       62 SETTABLEKS                       R6 R5 K10 ["CategoryItems"]
       64 GETUPVAL                         R8 6
       65 GETTABLEKS                       R8 R8 K0 ["items"]
       67 LENGTH                           R7 R8
       68 JUMPIFEQ                         R1 R7 ; [+26]
       70 GETUPVAL                         R6 0
       71 GETUPVAL                         R7 1
       72 DUPTABLE                         R8 K22 [{["tag"] = "auto-xy padding-y-xxsmall", ["LayoutOrder"]}]
       73 GETUPVAL                         R9 3
       74 CALL                             R9 0 1
       75 SETTABLEKS                       R9 R8 K7 ["LayoutOrder"]
       77 DUPTABLE                         R9 K24 [{"Divider"}]
       78 GETUPVAL                         R10 0
       79 GETUPVAL                         R11 9
       80 DUPTABLE                         R12 K26 [{"orientation"}]
       81 GETUPVAL                         R13 8
       82 GETTABLEKS                       R13 R13 K27 ["Enums"]
       84 GETTABLEKS                       R13 R13 K28 ["Orientation"]
       86 GETTABLEKS                       R13 R13 K29 ["Horizontal"]
       88 SETTABLEKS                       R13 R12 K25 ["orientation"]
       90 CALL                             R10 2 1
       91 SETTABLEKS                       R10 R9 K23 ["Divider"]
       93 CALL                             R6 3 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R6
       96 SETTABLEKS                       R6 R5 K11 ["DividerContainer"]
       98 CALL                             R2 3 1
       99 GETTABLEKS                       R4 R0 K2 ["id"]
      101 FASTCALL1                        TOSTRING R4 ; [+2]
      102 GETIMPORT                        R3 K4 [tostring]
      104 CALL                             R3 1 1
      105 RETURN                           R2 2

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K1 ["onItemSelected"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 3
       16 DUPTABLE                         R5 K5 [{["tag"] = "col align-x-center auto-y padding-y-xsmall stroke-default radius-medium", ["Size"]}]
       17 GETIMPORT                        R6 K8 [UDim2.fromOffset]
       19 GETTABLEKS                       R7 R0 K9 ["width"]
       21 LOADN                            R8 0
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K4 ["Size"]
       25 GETUPVAL                         R6 4
       26 GETTABLEKS                       R6 R6 K10 ["Dictionary"]
       28 GETTABLEKS                       R6 R6 K11 ["map"]
       30 GETTABLEKS                       R7 R0 K12 ["items"]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U6
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          UPVAL U8
       43 CALL                             R6 2 -1
       44 CALL                             R3 -1 -1
       45 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Cryo"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["ReactUtils"]
       28 CALL                             R5 1 1
       29 GETTABLEKS                       R6 R2 K11 ["Divider"]
       31 GETTABLEKS                       R7 R2 K12 ["Icon"]
       33 GETTABLEKS                       R8 R2 K13 ["Text"]
       35 GETTABLEKS                       R9 R2 K14 ["View"]
       37 GETTABLEKS                       R10 R4 K15 ["createElement"]
       39 GETTABLEKS                       R11 R5 K16 ["createNextOrder"]
       41 DUPCLOSURE                       R12 K17 [PROTO_4]
       42 CAPTURE                          VAL R11
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R10
       45 CAPTURE                          VAL R9
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R6
       51 RETURN                           R12 1
