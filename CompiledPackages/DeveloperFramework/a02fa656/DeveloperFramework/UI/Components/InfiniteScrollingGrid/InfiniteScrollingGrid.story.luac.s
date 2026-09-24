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
       15 DUPTABLE                         R2 K5 [{["absoluteMax"] = 40, ["items"]}]
       16 SETTABLEKS                       R1 R2 K4 ["items"]
       18 SETTABLEKS                       R2 R0 K6 ["state"]
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K2 [{[1] = True}]
        2 NAMECALL                         R2 R2 K3 ["setState"]
        4 CALL                             R2 2 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K4 ["state"]
        8 GETTABLEKS                       R2 R2 K5 ["items"]
       10 FASTCALL2K                       MATH_MAX R0 K6 ; [+5]
       12 MOVE                             R6 R0
       13 LOADK                            R7 K6 [1]
       14 GETIMPORT                        R5 K9 [math.max]
       16 CALL                             R5 2 1
       17 ADD                              R7 R0 R1
       18 FASTCALL2K                       MATH_MIN R7 K10 ; [+4]
       20 LOADK                            R8 K10 [300]
       21 GETIMPORT                        R6 K12 [math.min]
       23 CALL                             R6 2 1
       24 MOVE                             R3 R6
       25 LOADN                            R4 1
       26 FORNPREP                         R3
       27 GETTABLE                         R6 R2 R5
       28 JUMPIF                           R6 ; [+6]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K13 ["createItem"]
       32 MOVE                             R7 R5
       33 CALL                             R6 1 1
       34 SETTABLE                         R6 R2 R5
       35 FORNLOOP                         R3
       36 GETUPVAL                         R3 0
       37 DUPTABLE                         R5 K16 [{["items"], ["absoluteMax"], [3] = False}]
       38 SETTABLEKS                       R2 R5 K5 ["items"]
       40 ADD                              R7 R0 R1
       41 FASTCALL2K                       MATH_MIN R7 K10 ; [+4]
       43 LOADK                            R8 K10 [300]
       44 GETIMPORT                        R6 K12 [math.min]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K14 ["absoluteMax"]
       49 NAMECALL                         R3 R3 K3 ["setState"]
       51 CALL                             R3 2 0
       52 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["text"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K7 [{["Style"] = "Round", ["LayoutOrder"], ["Text"], ["Size"], ["OnClick"]}]
        5 SETTABLEKS                       R0 R4 K3 ["LayoutOrder"]
        7 GETTABLEKS                       R5 R1 K8 ["text"]
        9 SETTABLEKS                       R5 R4 K4 ["Text"]
       11 GETIMPORT                        R5 K11 [UDim2.new]
       13 LOADN                            R6 0
       14 LOADN                            R7 100
       15 LOADN                            R8 0
       16 LOADN                            R9 20
       17 CALL                             R5 4 1
       18 SETTABLEKS                       R5 R4 K5 ["Size"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R5 R4 K6 ["OnClick"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K13 [{["AbsoluteMax"], ["CellPadding"], ["CellSize"], ["BufferedRows"] = 2, ["GetItemKey"], ["Items"], ["LoadRange"], ["Loading"], ["RenderItem"], ["Size"]}]
        7 GETTABLEKS                       R5 R1 K14 ["absoluteMax"]
        9 SETTABLEKS                       R5 R4 K2 ["AbsoluteMax"]
       11 GETIMPORT                        R5 K17 [UDim2.new]
       13 LOADN                            R6 0
       14 LOADN                            R7 10
       15 LOADN                            R8 0
       16 LOADN                            R9 10
       17 CALL                             R5 4 1
       18 SETTABLEKS                       R5 R4 K3 ["CellPadding"]
       20 GETIMPORT                        R5 K17 [UDim2.new]
       22 LOADN                            R6 0
       23 LOADN                            R7 100
       24 LOADN                            R8 0
       25 LOADN                            R9 100
       26 CALL                             R5 4 1
       27 SETTABLEKS                       R5 R4 K4 ["CellSize"]
       29 DUPCLOSURE                       R5 K18 [PROTO_2]
       30 SETTABLEKS                       R5 R4 K7 ["GetItemKey"]
       32 GETTABLEKS                       R5 R1 K19 ["items"]
       34 SETTABLEKS                       R5 R4 K8 ["Items"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R5 R4 K9 ["LoadRange"]
       40 GETTABLEKS                       R5 R1 K20 ["loading"]
       42 SETTABLEKS                       R5 R4 K10 ["Loading"]
       44 DUPCLOSURE                       R5 K21 [PROTO_5]
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U2
       47 SETTABLEKS                       R5 R4 K11 ["RenderItem"]
       49 GETIMPORT                        R5 K17 [UDim2.new]
       51 LOADN                            R6 1
       52 LOADN                            R7 0
       53 LOADN                            R8 0
       54 LOADN                            R9 500
       55 CALL                             R5 4 1
       56 SETTABLEKS                       R5 R4 K12 ["Size"]
       58 CALL                             R2 2 -1
       59 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["DEPRECATED_Button"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["InfiniteScrollingGrid"]
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
       52 DUPTABLE                         R7 K25 [{["name"] = "Deferred loading", ["summary"] = "In this story, the scroller starts at element 1, and scrolling down loads more elements.", ["story"]}]
       53 SETTABLEKS                       R4 R7 K24 ["story"]
       55 SETLIST                          R6 R7 1 [1]
       57 SETTABLEKS                       R6 R5 K18 ["stories"]
       59 RETURN                           R5 1
