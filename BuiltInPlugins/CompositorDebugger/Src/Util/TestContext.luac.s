PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["render"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Store"]
        3 GETTABLEKS                       R2 R2 K1 ["new"]
        5 GETUPVAL                         R3 1
        6 LOADNIL                          R4
        7 NEWTABLE                         R5 0 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K2 ["thunkMiddleware"]
       12 SETLIST                          R5 R6 1 [1]
       14 CALL                             R2 3 1
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 LOADNIL                          R6
       19 JUMPIFNOT                        R0 ; [+73]
       20 GETUPVAL                         R7 2
       21 DUPTABLE                         R8 K4 [{"Canvas"}]
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R9 R9 K5 ["createElement"]
       25 LOADK                            R10 K6 ["Frame"]
       26 DUPTABLE                         R11 K8 [{"Size"}]
       27 GETIMPORT                        R12 K11 [UDim2.fromOffset]
       29 LOADN                            R13 640
       30 LOADN                            R14 480
       31 CALL                             R12 2 1
       32 SETTABLEKS                       R12 R11 K7 ["Size"]
       34 DUPTABLE                         R12 K13 [{"Component"}]
       35 GETUPVAL                         R13 3
       36 GETTABLEKS                       R13 R13 K5 ["createElement"]
       38 MOVE                             R14 R0
       39 GETUPVAL                         R15 4
       40 DUPTABLE                         R16 K8 [{"Size"}]
       41 GETIMPORT                        R17 K15 [UDim2.fromScale]
       43 LOADN                            R18 1
       44 LOADN                            R19 1
       45 CALL                             R17 2 1
       46 SETTABLEKS                       R17 R16 K7 ["Size"]
       48 MOVE                             R17 R1
       49 CALL                             R15 2 -1
       50 CALL                             R13 -1 1
       51 SETTABLEKS                       R13 R12 K12 ["Component"]
       53 CALL                             R9 3 1
       54 SETTABLEKS                       R9 R8 K3 ["Canvas"]
       56 MOVE                             R9 R2
       57 CALL                             R7 2 1
       58 MOVE                             R4 R7
       59 GETIMPORT                        R7 K17 [Instance.new]
       61 LOADK                            R8 K18 ["ScreenGui"]
       62 GETIMPORT                        R9 K20 [game]
       64 LOADK                            R11 K21 ["CoreGui"]
       65 NAMECALL                         R9 R9 K22 ["GetService"]
       67 CALL                             R9 2 -1
       68 CALL                             R7 -1 1
       69 MOVE                             R3 R7
       70 GETUPVAL                         R7 5
       71 GETTABLEKS                       R7 R7 K23 ["createRoot"]
       73 MOVE                             R8 R3
       74 CALL                             R7 1 1
       75 MOVE                             R6 R7
       76 GETUPVAL                         R7 5
       77 GETTABLEKS                       R7 R7 K24 ["act"]
       79 NEWCLOSURE                       R8 P0
       80 CAPTURE                          REF R6
       81 CAPTURE                          REF R4
       82 CALL                             R7 1 0
       83 GETUPVAL                         R7 6
       84 MOVE                             R8 R3
       85 CALL                             R7 1 1
       86 GETTABLEKS                       R7 R7 K3 ["Canvas"]
       88 LOADK                            R9 K12 ["Component"]
       89 NAMECALL                         R7 R7 K25 ["FindFirstChild"]
       91 CALL                             R7 2 1
       92 MOVE                             R5 R7
       93 DUPTABLE                         R8 K31 [{"container", "element", "root", "main", "store"}]
       94 SETTABLEKS                       R3 R8 K26 ["container"]
       96 SETTABLEKS                       R4 R8 K27 ["element"]
       98 SETTABLEKS                       R6 R8 K28 ["root"]
      100 SETTABLEKS                       R5 R8 K29 ["main"]
      102 SETTABLEKS                       R2 R8 K30 ["store"]
      104 GETUPVAL                         R9 7
      105 FASTCALL2                        SETMETATABLE R8 R9 ; [+3]
      107 GETIMPORT                        R7 K33 [setmetatable]
      109 CALL                             R7 2 1
      110 CLOSEUPVALS                      R4
      111 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["root"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["element"]
        6 NAMECALL                         R0 R0 K2 ["render"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["root"]
        2 FASTCALL1                        ASSERT R2 ; [+2]
        3 GETIMPORT                        R1 K2 [assert]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["act"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R2 R0 K4 ["container"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K5 ["Canvas"]
       18 GETTABLEKS                       R1 R1 K6 ["Component"]
       20 SETTABLEKS                       R1 R0 K7 ["main"]
       22 GETIMPORT                        R1 K10 [task.wait]
       24 LOADK                            R2 K11 [0.1]
       25 CALL                             R1 1 0
       26 GETTABLEKS                       R1 R0 K7 ["main"]
       28 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["container"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["container"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Rodux"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["TestHelpers"]
       37 GETTABLEKS                       R5 R5 K12 ["getContentRoot"]
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Packages"]
       43 GETTABLEKS                       R7 R7 K13 ["Dash"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R6 K14 ["join"]
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K6 ["Packages"]
       52 GETTABLEKS                       R9 R9 K15 ["Dev"]
       54 GETTABLEKS                       R9 R9 K16 ["JestGlobals"]
       56 CALL                             R8 1 1
       57 GETTABLEKS                       R9 R8 K17 ["expect"]
       59 GETTABLEKS                       R10 R0 K18 ["Src"]
       61 GETTABLEKS                       R10 R10 K19 ["Reducers"]
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R10 K20 ["MainReducer"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R12 R0 K18 ["Src"]
       70 GETTABLEKS                       R12 R12 K21 ["Util"]
       72 GETIMPORT                        R13 K5 [require]
       74 GETTABLEKS                       R14 R12 K22 ["mockContext"]
       76 CALL                             R13 1 1
       77 NEWTABLE                         R14 4 0
       79 SETTABLEKS                       R14 R14 K23 ["__index"]
       81 DUPCLOSURE                       R15 K24 [PROTO_1]
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R14
       90 SETTABLEKS                       R15 R14 K25 ["new"]
       92 DUPCLOSURE                       R15 K26 [PROTO_3]
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R15 R14 K27 ["render"]
       97 DUPCLOSURE                       R15 K28 [PROTO_4]
       98 SETTABLEKS                       R15 R14 K29 ["destroy"]
      100 RETURN                           R14 1
