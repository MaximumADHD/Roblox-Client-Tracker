PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isBinding"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+10]
        6 DUPTABLE                         R1 K5 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
        7 SETTABLEKS                       R0 R1 K1 ["PaddingTop"]
        9 SETTABLEKS                       R0 R1 K2 ["PaddingBottom"]
       11 SETTABLEKS                       R0 R1 K3 ["PaddingLeft"]
       13 SETTABLEKS                       R0 R1 K4 ["PaddingRight"]
       15 RETURN                           R1 1
       16 FASTCALL1                        TYPEOF R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K7 [typeof]
       20 CALL                             R1 1 1
       21 JUMPIFNOTEQKS                    R1 K8 ["table"] ; [+19]
       23 DUPTABLE                         R1 K5 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       24 GETTABLEKS                       R2 R0 K9 ["top"]
       26 SETTABLEKS                       R2 R1 K1 ["PaddingTop"]
       28 GETTABLEKS                       R2 R0 K10 ["bottom"]
       30 SETTABLEKS                       R2 R1 K2 ["PaddingBottom"]
       32 GETTABLEKS                       R2 R0 K11 ["left"]
       34 SETTABLEKS                       R2 R1 K3 ["PaddingLeft"]
       36 GETTABLEKS                       R2 R0 K12 ["right"]
       38 SETTABLEKS                       R2 R1 K4 ["PaddingRight"]
       40 RETURN                           R1 1
       41 FASTCALL1                        TYPEOF R0 ; [+3]
       42 MOVE                             R2 R0
       43 GETIMPORT                        R1 K7 [typeof]
       45 CALL                             R1 1 1
       46 JUMPIFNOTEQKS                    R1 K13 ["number"] ; [+31]
       48 DUPTABLE                         R1 K5 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       49 GETIMPORT                        R2 K16 [UDim.new]
       51 LOADN                            R3 0
       52 MOVE                             R4 R0
       53 CALL                             R2 2 1
       54 SETTABLEKS                       R2 R1 K1 ["PaddingTop"]
       56 GETIMPORT                        R2 K16 [UDim.new]
       58 LOADN                            R3 0
       59 MOVE                             R4 R0
       60 CALL                             R2 2 1
       61 SETTABLEKS                       R2 R1 K2 ["PaddingBottom"]
       63 GETIMPORT                        R2 K16 [UDim.new]
       65 LOADN                            R3 0
       66 MOVE                             R4 R0
       67 CALL                             R2 2 1
       68 SETTABLEKS                       R2 R1 K3 ["PaddingLeft"]
       70 GETIMPORT                        R2 K16 [UDim.new]
       72 LOADN                            R3 0
       73 MOVE                             R4 R0
       74 CALL                             R2 2 1
       75 SETTABLEKS                       R2 R1 K4 ["PaddingRight"]
       77 RETURN                           R1 1
       78 FASTCALL1                        TYPEOF R0 ; [+3]
       79 MOVE                             R2 R0
       80 GETIMPORT                        R1 K7 [typeof]
       82 CALL                             R1 1 1
       83 JUMPIFNOTEQKS                    R1 K17 ["Vector2"] ; [+35]
       85 DUPTABLE                         R1 K5 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       86 GETIMPORT                        R2 K16 [UDim.new]
       88 LOADN                            R3 0
       89 GETTABLEKS                       R4 R0 K18 ["Y"]
       91 CALL                             R2 2 1
       92 SETTABLEKS                       R2 R1 K1 ["PaddingTop"]
       94 GETIMPORT                        R2 K16 [UDim.new]
       96 LOADN                            R3 0
       97 GETTABLEKS                       R4 R0 K18 ["Y"]
       99 CALL                             R2 2 1
      100 SETTABLEKS                       R2 R1 K2 ["PaddingBottom"]
      102 GETIMPORT                        R2 K16 [UDim.new]
      104 LOADN                            R3 0
      105 GETTABLEKS                       R4 R0 K19 ["X"]
      107 CALL                             R2 2 1
      108 SETTABLEKS                       R2 R1 K3 ["PaddingLeft"]
      110 GETIMPORT                        R2 K16 [UDim.new]
      112 LOADN                            R3 0
      113 GETTABLEKS                       R4 R0 K19 ["X"]
      115 CALL                             R2 2 1
      116 SETTABLEKS                       R2 R1 K4 ["PaddingRight"]
      118 RETURN                           R1 1
      119 FASTCALL1                        TYPEOF R0 ; [+3]
      120 MOVE                             R2 R0
      121 GETIMPORT                        R1 K7 [typeof]
      123 CALL                             R1 1 1
      124 JUMPIFNOTEQKS                    R1 K14 ["UDim"] ; [+11]
      126 DUPTABLE                         R1 K5 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      127 SETTABLEKS                       R0 R1 K1 ["PaddingTop"]
      129 SETTABLEKS                       R0 R1 K2 ["PaddingBottom"]
      131 SETTABLEKS                       R0 R1 K3 ["PaddingLeft"]
      133 SETTABLEKS                       R0 R1 K4 ["PaddingRight"]
      135 RETURN                           R1 1
      136 FASTCALL1                        TYPEOF R0 ; [+3]
      137 MOVE                             R2 R0
      138 GETIMPORT                        R1 K7 [typeof]
      140 CALL                             R1 1 1
      141 JUMPIFNOTEQKS                    R1 K20 ["UDim2"] ; [+19]
      143 DUPTABLE                         R1 K5 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      144 GETTABLEKS                       R2 R0 K18 ["Y"]
      146 SETTABLEKS                       R2 R1 K1 ["PaddingTop"]
      148 GETTABLEKS                       R2 R0 K18 ["Y"]
      150 SETTABLEKS                       R2 R1 K2 ["PaddingBottom"]
      152 GETTABLEKS                       R2 R0 K19 ["X"]
      154 SETTABLEKS                       R2 R1 K3 ["PaddingLeft"]
      156 GETTABLEKS                       R2 R0 K19 ["X"]
      158 SETTABLEKS                       R2 R1 K4 ["PaddingRight"]
      160 RETURN                           R1 1
      161 NEWTABLE                         R1 0 0
      163 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 LOADK                            R3 K2 ["UIPadding"]
        8 NEWTABLE                         R4 8 0
       10 GETTABLEKS                       R5 R1 K3 ["PaddingTop"]
       12 SETTABLEKS                       R5 R4 K3 ["PaddingTop"]
       14 GETTABLEKS                       R5 R1 K4 ["PaddingBottom"]
       16 SETTABLEKS                       R5 R4 K4 ["PaddingBottom"]
       18 GETTABLEKS                       R5 R1 K5 ["PaddingLeft"]
       20 SETTABLEKS                       R5 R4 K5 ["PaddingLeft"]
       22 GETTABLEKS                       R5 R1 K6 ["PaddingRight"]
       24 SETTABLEKS                       R5 R4 K6 ["PaddingRight"]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K7 ["Tag"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R7 R0 K8 ["testId"]
       32 CALL                             R6 1 1
       33 SETTABLE                         R6 R4 R5
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["getTestIdTag"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Types"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 CAPTURE                          VAL R3
       35 DUPCLOSURE                       R7 K14 [PROTO_1]
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 GETTABLEKS                       R8 R2 K15 ["memo"]
       41 MOVE                             R9 R7
       42 CALL                             R8 1 -1
       43 RETURN                           R8 -1
