PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K4 [{["LayoutOrder"], ["tag"] = "align-x-center align-y-center auto-xy padding-x-small padding-y-xsmall radius-circle bg-shift-200"}]
        5 GETTABLEKS                       R4 R0 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R4 R3 K1 ["LayoutOrder"]
        9 DUPTABLE                         R4 K6 [{"Text"}]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["createElement"]
       13 GETUPVAL                         R6 2
       14 DUPTABLE                         R7 K8 [{["tag"] = "auto-xy text-label-small content-emphasis", ["Text"]}]
       15 LOADK                            R8 K9 ["%*/%*"]
       16 GETTABLEKS                       R10 R0 K10 ["Count"]
       18 GETTABLEKS                       R11 R0 K11 ["Max"]
       20 NAMECALL                         R8 R8 K12 ["format"]
       22 CALL                             R8 3 1
       23 SETTABLEKS                       R8 R7 K5 ["Text"]
       25 CALL                             R5 2 1
       26 SETTABLEKS                       R5 R4 K5 ["Text"]
       28 CALL                             R1 3 -1
       29 RETURN                           R1 -1

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
       25 GETTABLEKS                       R3 R2 K8 ["View"]
       27 GETTABLEKS                       R4 R2 K9 ["Text"]
       29 DUPCLOSURE                       R5 K10 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 RETURN                           R5 1
