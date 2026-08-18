PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K10 [{[1] = "size-full-0 auto-y content-default", ["Text"], ["TextXAlignment"], ["Font"], ["TextSize"] = 18, ["LayoutOrder"], ["TextWrapped"] = True}]
        3 GETTABLEKS                       R4 R0 K11 ["Markdown"]
        5 SETTABLEKS                       R4 R3 K2 ["Text"]
        7 GETIMPORT                        R4 K14 [Enum.TextXAlignment.Left]
        9 SETTABLEKS                       R4 R3 K3 ["TextXAlignment"]
       11 GETIMPORT                        R4 K16 [Enum.Font.SourceSans]
       13 SETTABLEKS                       R4 R3 K4 ["Font"]
       15 GETTABLEKS                       R5 R0 K17 ["WrapperProps"]
       17 JUMPIFNOT                        R5 ; [+5]
       18 GETTABLEKS                       R4 R0 K17 ["WrapperProps"]
       20 GETTABLEKS                       R4 R4 K7 ["LayoutOrder"]
       22 JUMPIF                           R4 ; [+1]
       23 LOADN                            R4 0
       24 SETTABLEKS                       R4 R3 K7 ["LayoutOrder"]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Text"]
       23 GETTABLEKS                       R4 R2 K10 ["createElement"]
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R3
       28 RETURN                           R5 1
