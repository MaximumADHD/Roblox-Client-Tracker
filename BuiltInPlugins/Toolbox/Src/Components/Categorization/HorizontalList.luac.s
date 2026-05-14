PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Data"]
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 GETTABLEKS                       R2 R0 K0 ["props"]
        9 GETTABLEKS                       R2 R2 K2 ["OnRenderItem"]
       11 GETTABLEKS                       R3 R0 K0 ["props"]
       13 GETTABLEKS                       R3 R3 K3 ["Position"]
       15 GETTABLEKS                       R4 R0 K0 ["props"]
       17 GETTABLEKS                       R4 R4 K4 ["LayoutOrder"]
       19 GETTABLEKS                       R5 R0 K0 ["props"]
       21 GETTABLEKS                       R5 R5 K5 ["DisplayCount"]
       23 DUPTABLE                         R6 K7 [{"Layout"}]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K8 ["createElement"]
       27 LOADK                            R8 K9 ["UIListLayout"]
       28 DUPTABLE                         R9 K13 [{"FillDirection", "SortOrder", "Padding"}]
       29 GETIMPORT                        R10 K16 [Enum.FillDirection.Horizontal]
       31 SETTABLEKS                       R10 R9 K10 ["FillDirection"]
       33 GETIMPORT                        R10 K17 [Enum.SortOrder.LayoutOrder]
       35 SETTABLEKS                       R10 R9 K11 ["SortOrder"]
       37 GETIMPORT                        R10 K20 [UDim.new]
       39 LOADN                            R11 0
       40 LOADN                            R12 8
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K12 ["Padding"]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K6 ["Layout"]
       47 LOADN                            R7 0
       48 GETIMPORT                        R8 K22 [pairs]
       50 MOVE                             R9 R1
       51 CALL                             R8 1 3
       52 FORGPREP_NEXT                    R8
       53 MOVE                             R13 R7
       54 FASTCALL1                        TYPEOF R12 ; [+3]
       55 MOVE                             R15 R12
       56 GETIMPORT                        R14 K24 [typeof]
       58 CALL                             R14 1 1
       59 JUMPIFNOTEQKS                    R14 K25 ["table"] ; [+7]
       61 GETTABLEKS                       R14 R12 K26 ["index"]
       63 JUMPIFEQKNIL                     R14 ; [+3]
       65 GETTABLEKS                       R13 R12 K26 ["index"]
       67 JUMPIFNOTLT                      R13 R5 ; [+12]
       69 ADDK                             R7 R7 K27 [1]
       70 FASTCALL1                        TOSTRING R11 ; [+3]
       71 MOVE                             R15 R11
       72 GETIMPORT                        R14 K29 [tostring]
       74 CALL                             R14 1 1
       75 MOVE                             R15 R2
       76 MOVE                             R16 R11
       77 MOVE                             R17 R12
       78 CALL                             R15 2 1
       79 SETTABLE                         R15 R6 R14
       80 FORGLOOP                         R8 2 ; [-28]
       82 GETUPVAL                         R8 0
       83 GETTABLEKS                       R8 R8 K8 ["createElement"]
       85 LOADK                            R9 K30 ["Frame"]
       86 DUPTABLE                         R10 K34 [{"LayoutOrder", "AutomaticSize", "Size", "Position", "BackgroundTransparency"}]
       87 SETTABLEKS                       R4 R10 K4 ["LayoutOrder"]
       89 GETIMPORT                        R11 K36 [Enum.AutomaticSize.Y]
       91 SETTABLEKS                       R11 R10 K31 ["AutomaticSize"]
       93 GETIMPORT                        R11 K39 [UDim2.fromScale]
       95 LOADN                            R12 1
       96 LOADN                            R13 0
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K32 ["Size"]
      100 SETTABLEKS                       R3 R10 K3 ["Position"]
      102 LOADN                            R11 1
      103 SETTABLEKS                       R11 R10 K33 ["BackgroundTransparency"]
      105 MOVE                             R11 R6
      106 CALL                             R8 3 -1
      107 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K7 ["PureComponent"]
       20 LOADK                            R5 K8 ["HorizontalList"]
       21 NAMECALL                         R3 R3 K9 ["extend"]
       23 CALL                             R3 2 1
       24 DUPCLOSURE                       R4 K10 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 SETTABLEKS                       R4 R3 K11 ["render"]
       28 RETURN                           R3 1
