PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETUPVAL                         R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+22]
        7 GETTABLEKS                       R1 R0 K0 ["AbsoluteSize"]
        9 GETTABLEKS                       R1 R1 K1 ["X"]
       11 SETUPVAL                         R1 0
       12 GETIMPORT                        R1 K3 [ipairs]
       14 GETUPVAL                         R2 1
       15 CALL                             R1 1 3
       16 FORGPREP_INEXT                   R1
       17 MOVE                             R6 R5
       18 GETIMPORT                        R7 K6 [UDim2.new]
       20 LOADN                            R8 0
       21 GETUPVAL                         R9 0
       22 LOADN                            R10 1
       23 LOADN                            R11 0
       24 CALL                             R7 4 -1
       25 CALL                             R6 -1 0
       26 FORGLOOP                         R1 2 [inext] ; [-10]
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETIMPORT                        R2 K3 [UDim2.new]
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 LOADN                            R5 1
        8 LOADN                            R6 0
        9 CALL                             R2 4 -1
       10 CALL                             R1 -1 2
       11 GETUPVAL                         R4 1
       12 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       14 MOVE                             R5 R2
       15 GETIMPORT                        R3 K6 [table.insert]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 2
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K7 ["View"]
       22 DUPTABLE                         R5 K9 [{"tag"}]
       23 LOADK                            R6 K10 ["auto-xy"]
       24 SETTABLEKS                       R6 R5 K8 ["tag"]
       26 NEWTABLE                         R6 0 1
       28 GETUPVAL                         R7 2
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K11 ["Text"]
       32 DUPTABLE                         R9 K14 [{"Size", "Text", "tag", "onAbsoluteSizeChanged"}]
       33 SETTABLEKS                       R1 R9 K12 ["Size"]
       35 SETTABLEKS                       R0 R9 K11 ["Text"]
       37 LOADK                            R10 K15 ["text-label-medium auto-x text-align-x-left"]
       38 SETTABLEKS                       R10 R9 K8 ["tag"]
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U1
       43 SETTABLEKS                       R10 R9 K13 ["onAbsoluteSizeChanged"]
       45 CALL                             R7 2 -1
       46 SETLIST                          R6 R7 -1 [1]
       48 CALL                             R3 3 -1
       49 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["View"]
        4 DUPTABLE                         R4 K3 [{"layoutOrder", "tag"}]
        5 GETUPVAL                         R5 2
        6 CALL                             R5 0 1
        7 SETTABLEKS                       R5 R4 K1 ["layoutOrder"]
        9 LOADK                            R5 K4 ["row size-full-0 auto-y flex-y-fill gap-xlarge"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 NEWTABLE                         R5 0 2
       14 GETUPVAL                         R6 3
       15 MOVE                             R7 R0
       16 CALL                             R6 1 1
       17 GETUPVAL                         R7 0
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K0 ["View"]
       21 DUPTABLE                         R9 K5 [{"tag"}]
       22 LOADK                            R10 K6 ["auto-y fill"]
       23 SETTABLEKS                       R10 R9 K2 ["tag"]
       25 NEWTABLE                         R10 0 1
       27 MOVE                             R11 R1
       28 SETLIST                          R10 R11 1 [1]
       30 CALL                             R7 3 -1
       31 SETLIST                          R5 R6 -1 [1]
       33 CALL                             R2 3 -1
       34 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["label"]
        3 GETTABLEKS                       R3 R0 K1 ["content"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 LOADN                            R1 0
        1 NEWTABLE                         R2 0 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          REF R1
        9 GETUPVAL                         R4 3
       10 GETTABLEKS                       R4 R4 K0 ["new"]
       12 CALL                             R4 0 1
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R3
       18 GETUPVAL                         R6 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K1 ["View"]
       22 DUPTABLE                         R8 K3 [{"tag"}]
       23 LOADK                            R9 K4 ["col size-full-0 auto-y gap-medium"]
       24 SETTABLEKS                       R9 R8 K2 ["tag"]
       26 NEWTABLE                         R9 0 1
       28 GETUPVAL                         R10 4
       29 GETTABLEKS                       R10 R10 K5 ["map"]
       31 GETTABLEKS                       R11 R0 K6 ["children"]
       33 NEWCLOSURE                       R12 P2
       34 CAPTURE                          VAL R5
       35 CALL                             R10 2 -1
       36 SETLIST                          R9 R10 -1 [1]
       38 CALL                             R6 3 -1
       39 CLOSEUPVALS                      R1
       40 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Lib"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Counter"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["createElement"]
       39 DUPCLOSURE                       R6 K14 [PROTO_4]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R1
       45 RETURN                           R6 1
