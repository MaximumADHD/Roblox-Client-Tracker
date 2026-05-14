PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim.new]
        3 LOADN                            R3 0
        4 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R4 K4 ["X"]
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["initialWidth"]
        2 JUMPIF                           R1 ; [+5]
        3 GETIMPORT                        R1 K3 [UDim.new]
        5 LOADN                            R2 0
        6 LOADN                            R3 44
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["useState"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 2
       13 SETTABLEKS                       R2 R0 K5 ["width"]
       15 GETUPVAL                         R4 1
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K6 ["View"]
       19 DUPTABLE                         R6 K9 [{"tag", "onAbsoluteSizeChanged"}]
       20 LOADK                            R7 K10 ["size-full"]
       21 SETTABLEKS                       R7 R6 K7 ["tag"]
       23 NEWCLOSURE                       R7 P0
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R7 R6 K8 ["onAbsoluteSizeChanged"]
       27 NEWTABLE                         R7 0 1
       29 GETUPVAL                         R8 1
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K11 ["Dropdown"]
       33 GETTABLEKS                       R9 R9 K12 ["Root"]
       35 MOVE                             R10 R0
       36 CALL                             R8 2 -1
       37 SETLIST                          R7 R8 -1 [1]
       39 CALL                             R4 3 -1
       40 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
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
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 DUPCLOSURE                       R4 K10 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R1
       27 RETURN                           R4 1
