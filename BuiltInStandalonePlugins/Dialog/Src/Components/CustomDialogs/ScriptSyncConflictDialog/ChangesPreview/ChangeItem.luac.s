PROTO_0:
        0 GETIMPORT                        R3 K2 [string.split]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K3 ["/"]
        4 CALL                             R3 2 1
        5 SETTABLEKS                       R0 R2 K4 ["Text"]
        7 GETIMPORT                        R4 K6 [pcall]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K7 ["GetTextBoundsAsync"]
       12 GETUPVAL                         R6 0
       13 MOVE                             R7 R2
       14 CALL                             R4 3 2
       15 JUMPIFNOT                        R4 ; [+4]
       16 GETTABLEKS                       R6 R5 K8 ["X"]
       18 JUMPIFNOTLE                      R6 R1 ; [+2]
       20 RETURN                           R0 1
       21 LOADN                            R8 2
       22 LENGTH                           R6 R3
       23 LOADN                            R7 1
       24 FORNPREP                         R6
       25 LOADK                            R10 K9 [".../"]
       26 GETIMPORT                        R11 K12 [table.concat]
       28 MOVE                             R12 R3
       29 LOADK                            R13 K3 ["/"]
       30 MOVE                             R14 R8
       31 CALL                             R11 3 1
       32 CONCAT                           R9 R10 R11
       33 SETTABLEKS                       R9 R2 K4 ["Text"]
       35 GETIMPORT                        R10 K6 [pcall]
       37 GETUPVAL                         R11 0
       38 GETTABLEKS                       R11 R11 K7 ["GetTextBoundsAsync"]
       40 GETUPVAL                         R12 0
       41 MOVE                             R13 R2
       42 CALL                             R10 3 2
       43 JUMPIFNOT                        R10 ; [+5]
       44 GETTABLEKS                       R12 R11 K8 ["X"]
       46 JUMPIFNOTLE                      R12 R1 ; [+2]
       48 RETURN                           R9 1
       49 FORNLOOP                         R6
       50 LENGTH                           R7 R3
       51 GETTABLE                         R6 R3 R7
       52 LOADN                            R9 1
       53 LENGTH                           R7 R6
       54 LOADN                            R8 1
       55 FORNPREP                         R7
       56 LOADK                            R11 K13 ["..."]
       57 MOVE                             R14 R9
       58 NAMECALL                         R12 R6 K14 ["sub"]
       60 CALL                             R12 2 1
       61 CONCAT                           R10 R11 R12
       62 SETTABLEKS                       R10 R2 K4 ["Text"]
       64 GETIMPORT                        R11 K6 [pcall]
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K7 ["GetTextBoundsAsync"]
       69 GETUPVAL                         R13 0
       70 MOVE                             R14 R2
       71 CALL                             R11 3 2
       72 JUMPIFNOT                        R11 ; [+5]
       73 GETTABLEKS                       R13 R12 K8 ["X"]
       75 JUMPIFNOTLE                      R13 R1 ; [+2]
       77 RETURN                           R10 1
       78 FORNLOOP                         R7
       79 LOADK                            R7 K13 ["..."]
       80 RETURN                           R7 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["X"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["GetTextBoundsParams"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 SETTABLEKS                       R1 R0 K4 ["Font"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K5 ["FontSize"]
       10 SETTABLEKS                       R1 R0 K6 ["Size"]
       12 LOADK                            R1 K7 [∞]
       13 SETTABLEKS                       R1 R0 K8 ["Width"]
       15 GETUPVAL                         R1 2
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K9 ["change"]
       19 GETUPVAL                         R3 4
       20 MOVE                             R4 R0
       21 CALL                             R1 3 1
       22 NAMECALL                         R2 R0 K10 ["Destroy"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 5
       26 JUMPIF                           R2 ; [+3]
       27 GETUPVAL                         R2 6
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFNOTLE                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 LOADB                            R0 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["Font"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K2 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K3 ["EnumItem"] ; [+8]
       15 GETIMPORT                        R1 K5 [Font.fromEnum]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K0 ["Font"]
       20 CALL                             R1 1 1
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K0 ["Font"]
       25 GETIMPORT                        R2 K8 [task.spawn]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          REF R0
       34 CAPTURE                          UPVAL U4
       35 CALL                             R2 1 0
       36 NEWCLOSURE                       R2 P1
       37 CAPTURE                          REF R0
       38 CLOSEUPVALS                      R0
       39 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R2 K3 ["BodyMedium"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["useState"]
       13 LOADN                            R4 0
       14 CALL                             R3 1 2
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K4 ["useState"]
       18 GETTABLEKS                       R6 R0 K5 ["change"]
       20 CALL                             R5 1 2
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          VAL R4
       26 NEWTABLE                         R9 0 0
       28 CALL                             R7 2 1
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K7 ["useEffect"]
       32 NEWCLOSURE                       R9 P1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R6
       38 NEWTABLE                         R10 0 3
       40 GETTABLEKS                       R11 R0 K5 ["change"]
       42 MOVE                             R12 R3
       43 MOVE                             R13 R2
       44 SETLIST                          R10 R11 3 [1]
       46 CALL                             R8 2 0
       47 GETUPVAL                         R8 3
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K8 ["View"]
       51 DUPTABLE                         R10 K10 [{"tag"}]
       52 LOADK                            R11 K11 ["row size-full-500 gap-small align-x-left align-y-center padding-left-xsmall"]
       53 SETTABLEKS                       R11 R10 K9 ["tag"]
       55 DUPTABLE                         R11 K14 [{"Icon", "Text"}]
       56 GETUPVAL                         R12 3
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R13 R13 K15 ["Image"]
       60 DUPTABLE                         R14 K16 [{"Image", "tag"}]
       61 GETTABLEKS                       R15 R0 K17 ["icon"]
       63 SETTABLEKS                       R15 R14 K15 ["Image"]
       65 LOADK                            R15 K18 ["size-400-400"]
       66 SETTABLEKS                       R15 R14 K9 ["tag"]
       68 CALL                             R12 2 1
       69 SETTABLEKS                       R12 R11 K12 ["Icon"]
       71 GETUPVAL                         R12 3
       72 GETUPVAL                         R13 0
       73 GETTABLEKS                       R13 R13 K13 ["Text"]
       75 DUPTABLE                         R14 K20 [{"tag", "Text", "onAbsoluteSizeChanged"}]
       76 LOADK                            R15 K21 ["text-body-medium text-align-x-left auto-xy fill text-no-wrap"]
       77 SETTABLEKS                       R15 R14 K9 ["tag"]
       79 SETTABLEKS                       R5 R14 K13 ["Text"]
       81 SETTABLEKS                       R7 R14 K19 ["onAbsoluteSizeChanged"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K13 ["Text"]
       86 CALL                             R8 3 -1
       87 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K10 [game]
       23 LOADK                            R5 K11 ["TextService"]
       24 NAMECALL                         R3 R3 K12 ["GetService"]
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R4 R2 K13 ["createElement"]
       29 DUPCLOSURE                       R5 K14 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R6 K15 [PROTO_5]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R4
       36 GETTABLEKS                       R7 R2 K16 ["memo"]
       38 MOVE                             R8 R6
       39 CALL                             R7 1 -1
       40 RETURN                           R7 -1
