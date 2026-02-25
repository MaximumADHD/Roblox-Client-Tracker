PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onItemSelected"]
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
        2 DUPTABLE                         R4 K3 [{"tag", "LayoutOrder", "onActivated"}]
        3 LOADK                            R5 K4 ["size-full-500 row gap-xsmall align-y-center radius-small padding-x-xsmall"]
        4 SETTABLEKS                       R5 R4 K0 ["tag"]
        6 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        8 GETUPVAL                         R5 2
        9 GETUPVAL                         R7 3
       10 GETTABLEKS                       R6 R7 K5 ["id"]
       12 GETTABLEKS                       R7 R0 K5 ["id"]
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K2 ["onActivated"]
       17 DUPTABLE                         R5 K8 [{"CheckContainer", "Label"}]
       18 GETUPVAL                         R8 4
       19 GETTABLEKS                       R7 R8 K9 ["shouldDisplayChecks"]
       21 JUMPIFNOT                        R7 ; [+50]
       22 GETUPVAL                         R6 0
       23 GETUPVAL                         R7 1
       24 DUPTABLE                         R8 K10 [{"tag"}]
       25 LOADK                            R9 K11 ["size-400-400"]
       26 SETTABLEKS                       R9 R8 K0 ["tag"]
       28 DUPTABLE                         R9 K13 [{"Check"}]
       29 GETUPVAL                         R12 4
       30 GETTABLEKS                       R11 R12 K14 ["values"]
       32 JUMPIFNOT                        R11 ; [+34]
       33 GETUPVAL                         R13 4
       34 GETTABLEKS                       R12 R13 K14 ["values"]
       36 GETTABLEKS                       R13 R0 K5 ["id"]
       38 GETTABLE                         R11 R12 R13
       39 JUMPIFNOT                        R11 ; [+27]
       40 GETUPVAL                         R10 0
       41 GETUPVAL                         R11 5
       42 DUPTABLE                         R12 K17 [{"LayoutOrder", "name", "size"}]
       43 GETUPVAL                         R13 6
       44 CALL                             R13 0 1
       45 SETTABLEKS                       R13 R12 K1 ["LayoutOrder"]
       47 GETUPVAL                         R16 7
       48 GETTABLEKS                       R15 R16 K18 ["Enums"]
       50 GETTABLEKS                       R14 R15 K19 ["IconName"]
       52 GETTABLEKS                       R13 R14 K12 ["Check"]
       54 SETTABLEKS                       R13 R12 K15 ["name"]
       56 GETUPVAL                         R16 7
       57 GETTABLEKS                       R15 R16 K18 ["Enums"]
       59 GETTABLEKS                       R14 R15 K20 ["InputSize"]
       61 GETTABLEKS                       R13 R14 K21 ["Small"]
       63 SETTABLEKS                       R13 R12 K16 ["size"]
       65 CALL                             R10 2 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R10
       68 SETTABLEKS                       R10 R9 K12 ["Check"]
       70 CALL                             R6 3 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R6
       73 SETTABLEKS                       R6 R5 K6 ["CheckContainer"]
       75 GETUPVAL                         R6 0
       76 GETUPVAL                         R7 8
       77 DUPTABLE                         R8 K23 [{"tag", "LayoutOrder", "Text"}]
       78 LOADK                            R9 K24 ["size-0-full fill clip text-no-wrap text-align-x-left text-align-y-center text-body-small content-emphasis"]
       79 SETTABLEKS                       R9 R8 K0 ["tag"]
       81 GETUPVAL                         R9 6
       82 CALL                             R9 0 1
       83 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       85 GETTABLEKS                       R9 R0 K25 ["text"]
       87 SETTABLEKS                       R9 R8 K22 ["Text"]
       89 CALL                             R6 2 1
       90 SETTABLEKS                       R6 R5 K7 ["Label"]
       92 CALL                             R2 3 1
       93 GETTABLEKS                       R4 R0 K5 ["id"]
       95 FASTCALL1                        TOSTRING R4 ; [+2]
       96 GETIMPORT                        R3 K27 [tostring]
       98 CALL                             R3 1 1
       99 RETURN                           R2 2

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
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          UPVAL U7
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          UPVAL U2
       56 CALL                             R9 2 -1
       57 CALL                             R6 -1 1
       58 SETTABLEKS                       R6 R5 K5 ["CategoryItems"]
       60 GETUPVAL                         R9 6
       61 GETTABLEKS                       R8 R9 K15 ["items"]
       63 LENGTH                           R7 R8
       64 JUMPIFEQ                         R1 R7 ; [+29]
       66 GETUPVAL                         R6 0
       67 GETUPVAL                         R7 1
       68 DUPTABLE                         R8 K2 [{"tag", "LayoutOrder"}]
       69 LOADK                            R9 K16 ["auto-xy padding-y-xxsmall"]
       70 SETTABLEKS                       R9 R8 K0 ["tag"]
       72 GETUPVAL                         R9 3
       73 CALL                             R9 0 1
       74 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       76 DUPTABLE                         R9 K18 [{"Divider"}]
       77 GETUPVAL                         R10 0
       78 GETUPVAL                         R11 9
       79 DUPTABLE                         R12 K20 [{"orientation"}]
       80 GETUPVAL                         R16 8
       81 GETTABLEKS                       R15 R16 K21 ["Enums"]
       83 GETTABLEKS                       R14 R15 K22 ["Orientation"]
       85 GETTABLEKS                       R13 R14 K23 ["Horizontal"]
       87 SETTABLEKS                       R13 R12 K19 ["orientation"]
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K17 ["Divider"]
       92 CALL                             R6 3 1
       93 JUMP                             ; [+1]
       94 LOADNIL                          R6
       95 SETTABLEKS                       R6 R5 K6 ["DividerContainer"]
       97 CALL                             R2 3 1
       98 GETTABLEKS                       R4 R0 K24 ["id"]
      100 FASTCALL1                        TOSTRING R4 ; [+2]
      101 GETIMPORT                        R3 K26 [tostring]
      103 CALL                             R3 1 1
      104 RETURN                           R2 2

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
