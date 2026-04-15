PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["plotToView"]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K3 [UDim2.fromScale]
        6 GETTABLEKS                       R3 R1 K4 ["X"]
        8 GETTABLEKS                       R4 R1 K5 ["Y"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["isPointInViewport"]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["Position"]
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K2 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["Vector2"] ; [+68]
        8 GETTABLEKS                       R2 R0 K0 ["Position"]
       10 GETUPVAL                         R3 0
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 1
       15 MOVE                             R6 R2
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 1
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R2
       25 SETLIST                          R6 R7 1 [1]
       27 CALL                             R4 2 1
       28 JUMPIF                           R4 ; [+2]
       29 LOADNIL                          R5
       30 RETURN                           R5 1
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K4 ["createElement"]
       34 LOADK                            R6 K5 ["Frame"]
       35 NEWTABLE                         R7 8 0
       37 GETIMPORT                        R8 K7 [Vector2.new]
       39 LOADK                            R9 K8 [0.5]
       40 LOADK                            R10 K8 [0.5]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K9 ["AnchorPoint"]
       44 SETTABLEKS                       R3 R7 K0 ["Position"]
       46 GETIMPORT                        R8 K12 [UDim2.fromOffset]
       48 LOADN                            R9 0
       49 LOADN                            R10 0
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R7 K13 ["Size"]
       53 LOADN                            R8 1
       54 SETTABLEKS                       R8 R7 K14 ["BackgroundTransparency"]
       56 LOADN                            R8 0
       57 SETTABLEKS                       R8 R7 K15 ["BorderSizePixel"]
       59 GETTABLEKS                       R8 R0 K16 ["ZIndex"]
       61 SETTABLEKS                       R8 R7 K16 ["ZIndex"]
       63 SETTABLEKS                       R1 R7 K17 ["ref"]
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R8 R9 K18 ["Tag"]
       68 GETTABLEKS                       R9 R0 K18 ["Tag"]
       70 SETTABLE                         R9 R7 R8
       71 GETTABLEKS                       R8 R0 K19 ["children"]
       73 CALL                             R5 3 -1
       74 RETURN                           R5 -1
       75 GETUPVAL                         R3 2
       76 GETTABLEKS                       R2 R3 K4 ["createElement"]
       78 LOADK                            R3 K5 ["Frame"]
       79 NEWTABLE                         R4 8 0
       81 GETIMPORT                        R5 K7 [Vector2.new]
       83 LOADK                            R6 K8 [0.5]
       84 LOADK                            R7 K8 [0.5]
       85 CALL                             R5 2 1
       86 SETTABLEKS                       R5 R4 K9 ["AnchorPoint"]
       88 GETTABLEKS                       R5 R0 K0 ["Position"]
       90 SETTABLEKS                       R5 R4 K0 ["Position"]
       92 GETIMPORT                        R5 K12 [UDim2.fromOffset]
       94 LOADN                            R6 0
       95 LOADN                            R7 0
       96 CALL                             R5 2 1
       97 SETTABLEKS                       R5 R4 K13 ["Size"]
       99 LOADN                            R5 1
      100 SETTABLEKS                       R5 R4 K14 ["BackgroundTransparency"]
      102 LOADN                            R5 0
      103 SETTABLEKS                       R5 R4 K15 ["BorderSizePixel"]
      105 GETTABLEKS                       R5 R0 K16 ["ZIndex"]
      107 SETTABLEKS                       R5 R4 K16 ["ZIndex"]
      109 SETTABLEKS                       R1 R4 K17 ["ref"]
      111 GETUPVAL                         R6 2
      112 GETTABLEKS                       R5 R6 K18 ["Tag"]
      114 GETTABLEKS                       R6 R0 K18 ["Tag"]
      116 SETTABLE                         R6 R4 R5
      117 GETTABLEKS                       R5 R0 K19 ["children"]
      119 CALL                             R2 3 -1
      120 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Types"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Util"]
       23 GETTABLEKS                       R5 R6 K10 ["useViewportBinding"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K10 ["useViewportBinding"]
       28 GETTABLEKS                       R6 R4 K11 ["useViewportVisibility"]
       30 DUPCLOSURE                       R7 K12 [PROTO_2]
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R6
       33 CAPTURE                          VAL R2
       34 SETGLOBAL                        R7 K13 ["Positioner"]
       36 GETTABLEKS                       R7 R2 K14 ["forwardRef"]
       38 GETGLOBAL                        R8 K13 ["Positioner"]
       40 CALL                             R7 1 -1
       41 RETURN                           R7 -1
