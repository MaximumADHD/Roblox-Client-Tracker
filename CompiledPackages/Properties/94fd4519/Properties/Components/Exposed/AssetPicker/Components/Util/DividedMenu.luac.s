PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onItemSelected"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K3 [{"tag", "LayoutOrder", "onActivated"}]
        3 LOADK                            R5 K4 ["size-full-500 row gap-xsmall align-y-center radius-small padding-x-xsmall"]
        4 SETTABLEKS                       R5 R4 K0 ["tag"]
        6 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R6 R0 K5 ["id"]
       11 CALL                             R5 1 1
       12 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       14 DUPTABLE                         R5 K8 [{"CheckContainer", "Label"}]
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R7 R8 K9 ["shouldDisplayChecks"]
       18 JUMPIFNOT                        R7 ; [+50]
       19 GETUPVAL                         R6 0
       20 GETUPVAL                         R7 1
       21 DUPTABLE                         R8 K10 [{"tag"}]
       22 LOADK                            R9 K11 ["size-400-400"]
       23 SETTABLEKS                       R9 R8 K0 ["tag"]
       25 DUPTABLE                         R9 K13 [{"Check"}]
       26 GETUPVAL                         R12 3
       27 GETTABLEKS                       R11 R12 K14 ["values"]
       29 JUMPIFNOT                        R11 ; [+34]
       30 GETUPVAL                         R13 3
       31 GETTABLEKS                       R12 R13 K14 ["values"]
       33 GETTABLEKS                       R13 R0 K5 ["id"]
       35 GETTABLE                         R11 R12 R13
       36 JUMPIFNOT                        R11 ; [+27]
       37 GETUPVAL                         R10 0
       38 GETUPVAL                         R11 4
       39 DUPTABLE                         R12 K17 [{"LayoutOrder", "name", "size"}]
       40 GETUPVAL                         R13 5
       41 CALL                             R13 0 1
       42 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       44 GETUPVAL                         R16 6
       45 GETTABLEKS                       R15 R16 K18 ["Enums"]
       47 GETTABLEKS                       R14 R15 K19 ["IconName"]
       49 GETTABLEKS                       R13 R14 K12 ["Check"]
       51 SETTABLEKS                       R13 R12 K15 ["name"]
       53 GETUPVAL                         R16 6
       54 GETTABLEKS                       R15 R16 K18 ["Enums"]
       56 GETTABLEKS                       R14 R15 K20 ["InputSize"]
       58 GETTABLEKS                       R13 R14 K21 ["Small"]
       60 SETTABLEKS                       R13 R12 K16 ["size"]
       62 CALL                             R10 2 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R10
       65 SETTABLEKS                       R10 R9 K12 ["Check"]
       67 CALL                             R6 3 1
       68 JUMP                             ; [+1]
       69 LOADNIL                          R6
       70 SETTABLEKS                       R6 R5 K6 ["CheckContainer"]
       72 GETUPVAL                         R6 0
       73 GETUPVAL                         R7 7
       74 DUPTABLE                         R8 K23 [{"tag", "LayoutOrder", "Text"}]
       75 LOADK                            R9 K24 ["size-0-full fill clip text-no-wrap text-align-x-left text-align-y-center text-body-small content-emphasis"]
       76 SETTABLEKS                       R9 R8 K0 ["tag"]
       78 GETUPVAL                         R9 5
       79 CALL                             R9 0 1
       80 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       82 GETTABLEKS                       R9 R0 K25 ["text"]
       84 SETTABLEKS                       R9 R8 K22 ["Text"]
       86 CALL                             R6 2 1
       87 SETTABLEKS                       R6 R5 K7 ["Label"]
       89 CALL                             R2 3 1
       90 GETTABLEKS                       R4 R0 K5 ["id"]
       92 FASTCALL1                        TOSTRING R4 ; [+2]
       93 GETIMPORT                        R3 K27 [tostring]
       95 CALL                             R3 1 1
       96 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DUPTABLE                         R4 K2 [{"tag", "LayoutOrder"}]
        3 LOADK                            R5 K3 ["size-full-0 auto-y col gap-xxsmall"]
        4 SETTABLEKS                       R5 R4 K0 ["tag"]
        6 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        8 DUPTABLE                         R5 K7 [{"Header", "CategoryItems", "DividerContainer"}]
        9 GETTABLEKS                       R6 R0 K8 ["text"]
       11 JUMPIFNOT                        R6 ; [+15]
       12 GETUPVAL                         R6 0
       13 GETUPVAL                         R7 2
       14 DUPTABLE                         R8 K10 [{"tag", "LayoutOrder", "Text"}]
       15 LOADK                            R9 K11 ["size-full-500 clip text-no-wrap text-align-x-left text-align-y-center text-caption-small content-muted padding-x-small"]
       16 SETTABLEKS                       R9 R8 K0 ["tag"]
       18 GETUPVAL                         R9 3
       19 CALL                             R9 0 1
       20 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       22 GETTABLEKS                       R9 R0 K8 ["text"]
       24 SETTABLEKS                       R9 R8 K9 ["Text"]
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K4 ["Header"]
       29 GETUPVAL                         R6 0
       30 GETUPVAL                         R7 1
       31 DUPTABLE                         R8 K2 [{"tag", "LayoutOrder"}]
       32 LOADK                            R9 K12 ["col size-full-0 auto-y padding-x-small gap-xxsmall"]
       33 SETTABLEKS                       R9 R8 K0 ["tag"]
       35 GETUPVAL                         R9 3
       36 CALL                             R9 0 1
       37 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       39 GETUPVAL                         R11 4
       40 GETTABLEKS                       R10 R11 K13 ["Dictionary"]
       42 GETTABLEKS                       R9 R10 K14 ["map"]
       44 GETTABLEKS                       R10 R0 K15 ["items"]
       46 NEWCLOSURE                       R11 P0
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U1
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          UPVAL U2
       55 CALL                             R9 2 -1
       56 CALL                             R6 -1 1
       57 SETTABLEKS                       R6 R5 K5 ["CategoryItems"]
       59 GETUPVAL                         R9 6
       60 GETTABLEKS                       R8 R9 K15 ["items"]
       62 LENGTH                           R7 R8
       63 JUMPIFEQ                         R1 R7 ; [+29]
       65 GETUPVAL                         R6 0
       66 GETUPVAL                         R7 1
       67 DUPTABLE                         R8 K2 [{"tag", "LayoutOrder"}]
       68 LOADK                            R9 K16 ["auto-xy padding-y-xxsmall"]
       69 SETTABLEKS                       R9 R8 K0 ["tag"]
       71 GETUPVAL                         R9 3
       72 CALL                             R9 0 1
       73 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       75 DUPTABLE                         R9 K18 [{"Divider"}]
       76 GETUPVAL                         R10 0
       77 GETUPVAL                         R11 9
       78 DUPTABLE                         R12 K20 [{"orientation"}]
       79 GETUPVAL                         R16 8
       80 GETTABLEKS                       R15 R16 K21 ["Enums"]
       82 GETTABLEKS                       R14 R15 K22 ["Orientation"]
       84 GETTABLEKS                       R13 R14 K23 ["Horizontal"]
       86 SETTABLEKS                       R13 R12 K19 ["orientation"]
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K17 ["Divider"]
       91 CALL                             R6 3 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R6
       94 SETTABLEKS                       R6 R5 K6 ["DividerContainer"]
       96 CALL                             R2 3 1
       97 GETTABLEKS                       R4 R0 K24 ["id"]
       99 FASTCALL1                        TOSTRING R4 ; [+2]
      100 GETIMPORT                        R3 K26 [tostring]
      102 CALL                             R3 1 1
      103 RETURN                           R2 2

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K1 ["onItemSelected"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 3
       16 DUPTABLE                         R5 K4 [{"tag", "Size"}]
       17 LOADK                            R6 K5 ["col auto-y align-x-center stroke-standard stroke-default radius-small padding-y-xsmall"]
       18 SETTABLEKS                       R6 R5 K2 ["tag"]
       20 GETIMPORT                        R6 K8 [UDim2.fromOffset]
       22 GETTABLEKS                       R7 R0 K9 ["width"]
       24 LOADN                            R8 0
       25 CALL                             R6 2 1
       26 SETTABLEKS                       R6 R5 K3 ["Size"]
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R7 R8 K10 ["Dictionary"]
       31 GETTABLEKS                       R6 R7 K11 ["map"]
       33 GETTABLEKS                       R7 R0 K12 ["items"]
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CALL                             R6 2 -1
       47 CALL                             R3 -1 -1
       48 RETURN                           R3 -1

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
