PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CanVote"]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R1 R0 K2 ["OnClick"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClick"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R1 K2 ["Size"]
        7 GETTABLEKS                       R5 R2 K2 ["Size"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R5 R1 K3 ["Style"]
       13 LOADK                            R8 K4 ["&"]
       14 GETTABLEKS                       R9 R1 K5 ["VoteType"]
       16 CONCAT                           R7 R8 R9
       17 GETTABLE                         R6 R2 R7
       18 CALL                             R4 2 1
       19 GETTABLEKS                       R6 R1 K6 ["CanVote"]
       21 JUMPIFNOT                        R6 ; [+3]
       22 GETTABLEKS                       R5 R4 K6 ["CanVote"]
       24 JUMPIF                           R5 ; [+1]
       25 MOVE                             R5 R4
       26 GETTABLEKS                       R7 R1 K5 ["VoteType"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K5 ["VoteType"]
       31 GETTABLEKS                       R8 R8 K7 ["UpVote"]
       33 JUMPIFEQ                         R7 R8 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 LOADNIL                          R7
       38 GETTABLEKS                       R8 R1 K6 ["CanVote"]
       40 JUMPIFNOT                        R8 ; [+14]
       41 GETTABLEKS                       R8 R1 K8 ["UserVote"]
       43 JUMPIFNOTEQKB                    R8 TRUE ; [+2]
       45 JUMPIF                           R6 ; [+5]
       46 GETTABLEKS                       R8 R1 K8 ["UserVote"]
       48 JUMPIFNOTEQKB                    R8 FALSE ; [+9]
       50 JUMPIF                           R6 ; [+7]
       51 GETUPVAL                         R8 2
       52 GETTABLEKS                       R7 R8 K9 ["Selected"]
       54 JUMP                             ; [+3]
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R7 R8 K10 ["Disabled"]
       58 GETUPVAL                         R8 3
       59 GETTABLEKS                       R8 R8 K11 ["createElement"]
       61 GETUPVAL                         R9 4
       62 DUPTABLE                         R10 K15 [{"LayoutOrder", "Style", "StyleModifier", "OnClick", "Size"}]
       63 GETTABLEKS                       R11 R1 K12 ["LayoutOrder"]
       65 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       67 SETTABLEKS                       R5 R10 K3 ["Style"]
       69 SETTABLEKS                       R7 R10 K13 ["StyleModifier"]
       71 GETTABLEKS                       R11 R0 K16 ["onClick"]
       73 SETTABLEKS                       R11 R10 K14 ["OnClick"]
       75 SETTABLEKS                       R3 R10 K2 ["Size"]
       77 DUPTABLE                         R11 K20 [{"UIListLayout", "Thumb", "HoverArea"}]
       78 GETUPVAL                         R12 3
       79 GETTABLEKS                       R12 R12 K11 ["createElement"]
       81 GETUPVAL                         R13 5
       82 DUPTABLE                         R14 K23 [{"HorizontalAlignment", "VerticalAlignment"}]
       83 GETIMPORT                        R15 K26 [Enum.HorizontalAlignment.Center]
       85 SETTABLEKS                       R15 R14 K21 ["HorizontalAlignment"]
       87 GETIMPORT                        R15 K27 [Enum.VerticalAlignment.Center]
       89 SETTABLEKS                       R15 R14 K22 ["VerticalAlignment"]
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R11 K17 ["UIListLayout"]
       94 GETUPVAL                         R12 3
       95 GETTABLEKS                       R12 R12 K11 ["createElement"]
       97 LOADK                            R13 K28 ["ImageLabel"]
       98 GETTABLEKS                       R14 R5 K29 ["ThumbStyle"]
      100 CALL                             R12 2 1
      101 SETTABLEKS                       R12 R11 K18 ["Thumb"]
      103 GETTABLEKS                       R12 R1 K6 ["CanVote"]
      105 JUMPIFNOT                        R12 ; [+9]
      106 GETUPVAL                         R12 3
      107 GETTABLEKS                       R12 R12 K11 ["createElement"]
      109 GETUPVAL                         R13 6
      110 DUPTABLE                         R14 K31 [{"Cursor"}]
      111 LOADK                            R15 K32 ["PointingHand"]
      112 SETTABLEKS                       R15 R14 K30 ["Cursor"]
      114 CALL                             R12 2 1
      115 SETTABLEKS                       R12 R11 K19 ["HoverArea"]
      117 CALL                             R8 3 -1
      118 RETURN                           R8 -1

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
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["prioritize"]
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Util"]
       36 GETTABLEKS                       R7 R7 K12 ["StyleModifier"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K2 ["UI"]
       43 GETTABLEKS                       R8 R8 K13 ["Components"]
       45 GETTABLEKS                       R8 R8 K14 ["DEPRECATED_Button"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K6 [require]
       50 GETTABLEKS                       R9 R0 K2 ["UI"]
       52 GETTABLEKS                       R9 R9 K13 ["Components"]
       54 GETTABLEKS                       R9 R9 K15 ["HoverArea"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R10 R0 K2 ["UI"]
       61 GETTABLEKS                       R10 R10 K13 ["Components"]
       63 GETTABLEKS                       R10 R10 K16 ["Pane"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R1 K17 ["PureComponent"]
       68 LOADK                            R12 K18 ["VoteButton"]
       69 NAMECALL                         R10 R10 K19 ["extend"]
       71 CALL                             R10 2 1
       72 DUPTABLE                         R11 K22 [{"UpVote", "DownVote"}]
       73 LOADK                            R12 K20 ["UpVote"]
       74 SETTABLEKS                       R12 R11 K20 ["UpVote"]
       76 LOADK                            R12 K21 ["DownVote"]
       77 SETTABLEKS                       R12 R11 K21 ["DownVote"]
       79 SETTABLEKS                       R11 R10 K23 ["VoteType"]
       81 DUPCLOSURE                       R11 K24 [PROTO_1]
       82 SETTABLEKS                       R11 R10 K25 ["init"]
       84 NEWCLOSURE                       R11 P1
       85 CAPTURE                          VAL R5
       86 CAPTURE                          REF R10
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 SETTABLEKS                       R11 R10 K26 ["render"]
       94 MOVE                             R11 R3
       95 DUPTABLE                         R12 K28 [{"Stylizer"}]
       96 GETTABLEKS                       R13 R2 K27 ["Stylizer"]
       98 SETTABLEKS                       R13 R12 K27 ["Stylizer"]
      100 CALL                             R11 1 1
      101 MOVE                             R12 R10
      102 CALL                             R11 1 1
      103 MOVE                             R10 R11
      104 CLOSEUPVALS                      R10
      105 RETURN                           R10 1
