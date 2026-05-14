PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Id"]
        4 NAMECALL                         R0 R0 K1 ["RequestFlyToCollaborator"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K2 ["OnJump"]
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K2 ["OnJump"]
       14 CALL                             R0 0 0
       15 GETUPVAL                         R0 2
       16 LOADK                            R2 K3 ["jumpToCollaboratorPressed"]
       17 NAMECALL                         R0 R0 K4 ["report"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K0 ["use"]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 2
       12 NAMECALL                         R3 R3 K0 ["use"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 NAMECALL                         R4 R4 K0 ["use"]
       18 CALL                             R4 1 1
       19 GETUPVAL                         R5 4
       20 GETTABLEKS                       R5 R5 K2 ["createElement"]
       22 GETUPVAL                         R6 5
       23 DUPTABLE                         R7 K9 [{"OnClick", "Text", "Size", "AnchorPoint", "Position", "Style"}]
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R8 R7 K3 ["OnClick"]
       30 GETTABLEKS                       R9 R0 K10 ["Id"]
       32 GETUPVAL                         R10 6
       33 JUMPIFNOTEQ                      R9 R10 ; [+7]
       35 LOADK                            R10 K11 ["Collaborator"]
       36 LOADK                            R11 K12 ["Return"]
       37 NAMECALL                         R8 R2 K13 ["getText"]
       39 CALL                             R8 3 1
       40 JUMPIF                           R8 ; [+5]
       41 LOADK                            R10 K11 ["Collaborator"]
       42 LOADK                            R11 K14 ["Join"]
       43 NAMECALL                         R8 R2 K13 ["getText"]
       45 CALL                             R8 3 1
       46 SETTABLEKS                       R8 R7 K4 ["Text"]
       48 GETIMPORT                        R8 K17 [UDim2.new]
       50 LOADN                            R9 1
       51 LOADN                            R10 0
       52 LOADN                            R11 0
       53 LOADN                            R12 28
       54 CALL                             R8 4 1
       55 SETTABLEKS                       R8 R7 K5 ["Size"]
       57 GETIMPORT                        R8 K19 [Vector2.new]
       59 LOADN                            R9 0
       60 LOADN                            R10 1
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K6 ["AnchorPoint"]
       64 GETIMPORT                        R8 K21 [UDim2.fromOffset]
       66 LOADN                            R9 0
       67 LOADN                            R10 80
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K7 ["Position"]
       71 NEWTABLE                         R8 8 0
       73 GETUPVAL                         R9 7
       74 SETTABLEKS                       R9 R8 K22 ["Background"]
       76 GETUPVAL                         R9 8
       77 GETTABLEKS                       R9 R9 K23 ["join"]
       79 DUPTABLE                         R10 K25 [{"Color"}]
       80 GETTABLEKS                       R11 R3 K26 ["jumpButton"]
       82 GETTABLEKS                       R11 R11 K27 ["background"]
       84 SETTABLEKS                       R11 R10 K24 ["Color"]
       86 GETTABLEKS                       R11 R3 K26 ["jumpButton"]
       88 GETTABLEKS                       R11 R11 K28 ["baseStyle"]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K29 ["BackgroundStyle"]
       93 GETUPVAL                         R9 9
       94 GETTABLEKS                       R9 R9 K30 ["Hover"]
       96 DUPTABLE                         R10 K31 [{"BackgroundStyle"}]
       97 GETUPVAL                         R11 8
       98 GETTABLEKS                       R11 R11 K23 ["join"]
      100 DUPTABLE                         R12 K25 [{"Color"}]
      101 GETTABLEKS                       R13 R3 K26 ["jumpButton"]
      103 GETTABLEKS                       R13 R13 K32 ["hoveredBackground"]
      105 SETTABLEKS                       R13 R12 K24 ["Color"]
      107 GETTABLEKS                       R13 R3 K26 ["jumpButton"]
      109 GETTABLEKS                       R13 R13 K28 ["baseStyle"]
      111 CALL                             R11 2 1
      112 SETTABLEKS                       R11 R10 K29 ["BackgroundStyle"]
      114 SETTABLE                         R10 R8 R9
      115 GETUPVAL                         R9 9
      116 GETTABLEKS                       R9 R9 K33 ["Pressed"]
      118 DUPTABLE                         R10 K31 [{"BackgroundStyle"}]
      119 GETUPVAL                         R11 8
      120 GETTABLEKS                       R11 R11 K23 ["join"]
      122 DUPTABLE                         R12 K25 [{"Color"}]
      123 GETTABLEKS                       R13 R3 K26 ["jumpButton"]
      125 GETTABLEKS                       R13 R13 K34 ["pressedBackground"]
      127 SETTABLEKS                       R13 R12 K24 ["Color"]
      129 GETTABLEKS                       R13 R3 K26 ["jumpButton"]
      131 GETTABLEKS                       R13 R13 K28 ["baseStyle"]
      133 CALL                             R11 2 1
      134 SETTABLEKS                       R11 R10 K29 ["BackgroundStyle"]
      136 SETTABLE                         R10 R8 R9
      137 GETIMPORT                        R9 K38 [Enum.Font.SourceSans]
      139 SETTABLEKS                       R9 R8 K36 ["Font"]
      141 GETTABLEKS                       R9 R3 K26 ["jumpButton"]
      143 GETTABLEKS                       R9 R9 K39 ["textColor"]
      145 SETTABLEKS                       R9 R8 K40 ["TextColor"]
      147 LOADN                            R9 18
      148 SETTABLEKS                       R9 R8 K41 ["TextSize"]
      150 SETTABLEKS                       R8 R7 K8 ["Style"]
      152 CALL                             R5 2 -1
      153 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Dash"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["Localization"]
       34 GETTABLEKS                       R6 R4 K11 ["Analytics"]
       36 GETIMPORT                        R7 K4 [require]
       38 GETTABLEKS                       R8 R0 K12 ["Src"]
       40 GETTABLEKS                       R8 R8 K9 ["ContextServices"]
       42 GETTABLEKS                       R8 R8 K13 ["CollaboratorsServiceContext"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R2 K14 ["Style"]
       47 GETTABLEKS                       R8 R8 K15 ["Stylizer"]
       49 GETTABLEKS                       R9 R2 K16 ["Util"]
       51 GETTABLEKS                       R9 R9 K17 ["StyleModifier"]
       53 GETTABLEKS                       R10 R2 K18 ["UI"]
       55 GETTABLEKS                       R11 R10 K19 ["Button"]
       57 GETTABLEKS                       R12 R10 K20 ["RoundBox"]
       59 GETIMPORT                        R13 K22 [game]
       61 LOADK                            R15 K23 ["StudioService"]
       62 NAMECALL                         R13 R13 K24 ["GetService"]
       64 CALL                             R13 2 1
       65 NAMECALL                         R14 R13 K25 ["GetUserId"]
       67 CALL                             R14 1 1
       68 DUPCLOSURE                       R15 K26 [PROTO_1]
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R14
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R9
       79 RETURN                           R15 1
