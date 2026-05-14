PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Url"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+8]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R2 R2 K1 ["Disconnect"]
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Url"]
        3 JUMPIFEQKNIL                     R0 ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["Url"]
        8 JUMPIFNOTEQKS                    R0 K1 [""] ; [+2]
       10 RETURN                           R0 0
       11 LOADNIL                          R0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K2 ["ImageImportedSignal"]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          REF R0
       19 NAMECALL                         R1 R1 K3 ["Connect"]
       21 CALL                             R1 2 1
       22 MOVE                             R0 R1
       23 GETUPVAL                         R1 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K0 ["Url"]
       27 NAMECALL                         R1 R1 K4 ["generateTempUrlInContentProvider"]
       29 CALL                             R1 2 0
       30 NEWCLOSURE                       R1 P1
       31 CAPTURE                          REF R0
       32 CLOSEUPVALS                      R0
       33 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADK                            R2 K1 [""]
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 JUMPIFNOT                        R3 ; [+14]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R5 0 1
       16 GETTABLEKS                       R6 R0 K3 ["Url"]
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 3
       22 NAMECALL                         R3 R3 K4 ["use"]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K5 ["new"]
       28 CALL                             R4 0 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K6 ["createElement"]
       32 LOADK                            R6 K7 ["Frame"]
       33 NEWTABLE                         R7 2 0
       35 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
       37 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K9 ["Tag"]
       42 LOADK                            R9 K10 ["Component-Reason X-FitY"]
       43 SETTABLE                         R9 R7 R8
       44 DUPTABLE                         R8 K14 [{"Reason", "OffensiveItem", "Image"}]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K6 ["createElement"]
       48 LOADK                            R10 K15 ["TextLabel"]
       49 NEWTABLE                         R11 4 0
       51 LOADK                            R14 K11 ["Reason"]
       52 LOADK                            R15 K16 ["Reason1"]
       53 DUPTABLE                         R16 K18 [{"reason"}]
       54 GETTABLEKS                       R17 R0 K11 ["Reason"]
       56 SETTABLEKS                       R17 R16 K17 ["reason"]
       58 NAMECALL                         R12 R3 K19 ["getText"]
       60 CALL                             R12 4 1
       61 SETTABLEKS                       R12 R11 K20 ["Text"]
       63 NAMECALL                         R12 R4 K21 ["getNextOrder"]
       65 CALL                             R12 1 1
       66 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       68 GETUPVAL                         R12 0
       69 GETTABLEKS                       R12 R12 K9 ["Tag"]
       71 LOADK                            R13 K22 ["X-FitY"]
       72 SETTABLE                         R13 R11 R12
       73 CALL                             R9 2 1
       74 SETTABLEKS                       R9 R8 K11 ["Reason"]
       76 GETUPVAL                         R9 0
       77 GETTABLEKS                       R9 R9 K6 ["createElement"]
       79 LOADK                            R10 K15 ["TextLabel"]
       80 NEWTABLE                         R11 4 0
       82 LOADK                            R14 K11 ["Reason"]
       83 LOADK                            R15 K23 ["OffensiveItem1"]
       84 DUPTABLE                         R16 K25 [{"offensiveItem"}]
       85 GETTABLEKS                       R17 R0 K12 ["OffensiveItem"]
       87 SETTABLEKS                       R17 R16 K24 ["offensiveItem"]
       89 NAMECALL                         R12 R3 K19 ["getText"]
       91 CALL                             R12 4 1
       92 SETTABLEKS                       R12 R11 K20 ["Text"]
       94 NAMECALL                         R12 R4 K21 ["getNextOrder"]
       96 CALL                             R12 1 1
       97 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       99 GETUPVAL                         R12 0
      100 GETTABLEKS                       R12 R12 K9 ["Tag"]
      102 LOADK                            R13 K22 ["X-FitY"]
      103 SETTABLE                         R13 R11 R12
      104 CALL                             R9 2 1
      105 SETTABLEKS                       R9 R8 K12 ["OffensiveItem"]
      107 GETUPVAL                         R9 1
      108 JUMPIFNOT                        R9 ; [+36]
      109 GETUPVAL                         R9 0
      110 GETTABLEKS                       R9 R9 K6 ["createElement"]
      112 GETUPVAL                         R10 5
      113 NEWTABLE                         R11 4 0
      115 DUPTABLE                         R12 K26 [{"Image"}]
      116 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
      118 LOADK                            R13 K27 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
      119 JUMP                             ; [+1]
      120 MOVE                             R13 R1
      121 SETTABLEKS                       R13 R12 K13 ["Image"]
      123 SETTABLEKS                       R12 R11 K28 ["Style"]
      125 GETIMPORT                        R12 K30 [UDim2.new]
      127 LOADN                            R13 0
      128 LOADN                            R14 200
      129 LOADN                            R15 0
      130 LOADN                            R16 200
      131 CALL                             R12 4 1
      132 SETTABLEKS                       R12 R11 K31 ["Size"]
      134 NAMECALL                         R12 R4 K21 ["getNextOrder"]
      136 CALL                             R12 1 1
      137 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      139 GETUPVAL                         R12 0
      140 GETTABLEKS                       R12 R12 K9 ["Tag"]
      142 LOADK                            R13 K22 ["X-FitY"]
      143 SETTABLE                         R13 R11 R12
      144 CALL                             R9 2 1
      145 SETTABLEKS                       R9 R8 K13 ["Image"]
      147 CALL                             R5 3 -1
      148 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Services"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["Localization"]
       34 GETTABLEKS                       R6 R1 K14 ["UI"]
       36 GETTABLEKS                       R6 R6 K15 ["Image"]
       38 GETTABLEKS                       R7 R1 K10 ["Util"]
       40 GETTABLEKS                       R7 R7 K16 ["LayoutOrderIterator"]
       42 GETTABLEKS                       R8 R3 K17 ["StartPageManager"]
       44 GETIMPORT                        R9 K5 [require]
       46 GETTABLEKS                       R10 R0 K9 ["Src"]
       48 GETTABLEKS                       R10 R10 K18 ["SharedFlags"]
       50 GETTABLEKS                       R10 R10 K19 ["getFFlagModerationDialogImage"]
       52 CALL                             R9 1 1
       53 CALL                             R9 0 1
       54 DUPCLOSURE                       R10 K20 [PROTO_3]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 RETURN                           R10 1
