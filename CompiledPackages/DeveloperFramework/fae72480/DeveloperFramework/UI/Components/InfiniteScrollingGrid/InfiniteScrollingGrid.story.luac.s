PROTO_0:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 LOADK                            R3 K3 ["Item "]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K5 [tostring]
        8 CALL                             R4 1 1
        9 CONCAT                           R2 R3 R4
       10 SETTABLEKS                       R2 R1 K1 ["text"]
       12 RETURN                           R1 1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 SETTABLEKS                       R1 R0 K1 ["createItem"]
        3 NEWTABLE                         R1 0 0
        5 LOADN                            R4 1
        6 LOADN                            R2 40
        7 LOADN                            R3 1
        8 FORNPREP                         R2
        9 GETTABLEKS                       R5 R0 K1 ["createItem"]
       11 MOVE                             R6 R4
       12 CALL                             R5 1 1
       13 SETTABLE                         R5 R1 R4
       14 FORNLOOP                         R2
       15 DUPTABLE                         R2 K4 [{"absoluteMax", "items"}]
       16 LOADN                            R3 40
       17 SETTABLEKS                       R3 R2 K2 ["absoluteMax"]
       19 SETTABLEKS                       R1 R2 K3 ["items"]
       21 SETTABLEKS                       R2 R0 K5 ["state"]
       23 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"loading"}]
        2 LOADB                            R5 1
        3 SETTABLEKS                       R5 R4 K0 ["loading"]
        5 NAMECALL                         R2 R2 K2 ["setState"]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["state"]
       11 GETTABLEKS                       R2 R3 K4 ["items"]
       13 FASTCALL2K                       MATH_MAX R0 K5 ; [+5]
       15 MOVE                             R6 R0
       16 LOADK                            R7 K5 [1]
       17 GETIMPORT                        R5 K8 [math.max]
       19 CALL                             R5 2 1
       20 ADD                              R7 R0 R1
       21 FASTCALL2K                       MATH_MIN R7 K9 ; [+4]
       23 LOADK                            R8 K9 [300]
       24 GETIMPORT                        R6 K11 [math.min]
       26 CALL                             R6 2 1
       27 MOVE                             R3 R6
       28 LOADN                            R4 1
       29 FORNPREP                         R3
       30 GETTABLE                         R6 R2 R5
       31 JUMPIF                           R6 ; [+6]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R6 R7 K12 ["createItem"]
       35 MOVE                             R7 R5
       36 CALL                             R6 1 1
       37 SETTABLE                         R6 R2 R5
       38 FORNLOOP                         R3
       39 GETUPVAL                         R3 0
       40 DUPTABLE                         R5 K14 [{"items", "absoluteMax", "loading"}]
       41 SETTABLEKS                       R2 R5 K4 ["items"]
       43 ADD                              R7 R0 R1
       44 FASTCALL2K                       MATH_MIN R7 K9 ; [+4]
       46 LOADK                            R8 K9 [300]
       47 GETIMPORT                        R6 K11 [math.min]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K13 ["absoluteMax"]
       52 LOADB                            R6 0
       53 SETTABLEKS                       R6 R5 K0 ["loading"]
       55 NAMECALL                         R3 R3 K2 ["setState"]
       57 CALL                             R3 2 0
       58 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["text"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{"Style", "LayoutOrder", "Text", "Size", "OnClick"}]
        5 LOADK                            R5 K7 ["Round"]
        6 SETTABLEKS                       R5 R4 K1 ["Style"]
        8 SETTABLEKS                       R0 R4 K2 ["LayoutOrder"]
       10 GETTABLEKS                       R5 R1 K8 ["text"]
       12 SETTABLEKS                       R5 R4 K3 ["Text"]
       14 GETIMPORT                        R5 K11 [UDim2.new]
       16 LOADN                            R6 0
       17 LOADN                            R7 100
       18 LOADN                            R8 0
       19 LOADN                            R9 20
       20 CALL                             R5 4 1
       21 SETTABLEKS                       R5 R4 K4 ["Size"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R5 R4 K5 ["OnClick"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K12 [{"AbsoluteMax", "CellPadding", "CellSize", "BufferedRows", "GetItemKey", "Items", "LoadRange", "Loading", "RenderItem", "Size"}]
        7 GETTABLEKS                       R5 R1 K13 ["absoluteMax"]
        9 SETTABLEKS                       R5 R4 K2 ["AbsoluteMax"]
       11 GETIMPORT                        R5 K16 [UDim2.new]
       13 LOADN                            R6 0
       14 LOADN                            R7 10
       15 LOADN                            R8 0
       16 LOADN                            R9 10
       17 CALL                             R5 4 1
       18 SETTABLEKS                       R5 R4 K3 ["CellPadding"]
       20 GETIMPORT                        R5 K16 [UDim2.new]
       22 LOADN                            R6 0
       23 LOADN                            R7 100
       24 LOADN                            R8 0
       25 LOADN                            R9 100
       26 CALL                             R5 4 1
       27 SETTABLEKS                       R5 R4 K4 ["CellSize"]
       29 LOADN                            R5 2
       30 SETTABLEKS                       R5 R4 K5 ["BufferedRows"]
       32 DUPCLOSURE                       R5 K17 [PROTO_2]
       33 SETTABLEKS                       R5 R4 K6 ["GetItemKey"]
       35 GETTABLEKS                       R5 R1 K18 ["items"]
       37 SETTABLEKS                       R5 R4 K7 ["Items"]
       39 NEWCLOSURE                       R5 P1
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R5 R4 K8 ["LoadRange"]
       43 GETTABLEKS                       R5 R1 K19 ["loading"]
       45 SETTABLEKS                       R5 R4 K9 ["Loading"]
       47 DUPCLOSURE                       R5 K20 [PROTO_5]
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U2
       50 SETTABLEKS                       R5 R4 K10 ["RenderItem"]
       52 GETIMPORT                        R5 K16 [UDim2.new]
       54 LOADN                            R6 1
       55 LOADN                            R7 0
       56 LOADN                            R8 0
       57 LOADN                            R9 244
       58 CALL                             R5 4 1
       59 SETTABLEKS                       R5 R4 K11 ["Size"]
       61 CALL                             R2 2 -1
       62 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["DEPRECATED_Button"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["InfiniteScrollingGrid"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R1 K11 ["PureComponent"]
       36 LOADK                            R6 K12 ["InfiniteDataProvider"]
       37 NAMECALL                         R4 R4 K13 ["extend"]
       39 CALL                             R4 2 1
       40 DUPCLOSURE                       R5 K14 [PROTO_1]
       41 SETTABLEKS                       R5 R4 K15 ["init"]
       43 DUPCLOSURE                       R5 K16 [PROTO_6]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R5 R4 K17 ["render"]
       49 DUPTABLE                         R5 K19 [{"stories"}]
       50 NEWTABLE                         R6 0 1
       52 DUPTABLE                         R7 K23 [{"name", "summary", "story"}]
       53 LOADK                            R8 K24 ["Deferred loading"]
       54 SETTABLEKS                       R8 R7 K20 ["name"]
       56 LOADK                            R8 K25 ["In this story, the scroller starts at element 1, and scrolling down loads more elements."]
       57 SETTABLEKS                       R8 R7 K21 ["summary"]
       59 SETTABLEKS                       R4 R7 K22 ["story"]
       61 SETLIST                          R6 R7 1 [1]
       63 SETTABLEKS                       R6 R5 K18 ["stories"]
       65 RETURN                           R5 1
