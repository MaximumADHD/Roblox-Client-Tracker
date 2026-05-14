PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["CancellableDialog::DialogContainer::OnClosed - Dialog closed via X button in title bar"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K3 ["OnCancel"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["OnDialogShown"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["Enabled"]
       12 JUMPIF                           R0 ; [+7]
       13 GETUPVAL                         R0 1
       14 JUMPIFNOT                        R0 ; [+5]
       15 GETUPVAL                         R0 3
       16 CALL                             R0 0 0
       17 GETUPVAL                         R0 4
       18 LOADB                            R1 0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useState"]
       11 LOADB                            R4 0
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K2 ["useState"]
       16 LOADN                            R6 0
       17 CALL                             R5 1 2
       18 GETUPVAL                         R7 3
       19 DUPTABLE                         R8 K9 [{"Size", "Modal", "Title", "OnClosed", "DisableTitleBar", "Contents"}]
       20 GETIMPORT                        R10 K11 [Vector2.new]
       22 GETUPVAL                         R13 4
       23 GETTABLEKS                       R13 R13 K12 ["X"]
       25 FASTCALL2                        MATH_MAX R5 R13 ; [+4]
       27 MOVE                             R12 R5
       28 GETIMPORT                        R11 K15 [math.max]
       30 CALL                             R11 2 1
       31 GETUPVAL                         R12 4
       32 GETTABLEKS                       R12 R12 K16 ["Y"]
       34 CALL                             R10 2 1
       35 SETTABLEKS                       R10 R8 K3 ["Size"]
       37 LOADB                            R10 1
       38 SETTABLEKS                       R10 R8 K4 ["Modal"]
       40 LOADK                            R12 K17 ["Plugin"]
       41 LOADK                            R13 K5 ["Title"]
       42 NAMECALL                         R10 R2 K18 ["getText"]
       44 CALL                             R10 3 1
       45 SETTABLEKS                       R10 R8 K5 ["Title"]
       47 NEWCLOSURE                       R10 P0
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R10 R8 K6 ["OnClosed"]
       51 LOADB                            R10 1
       52 SETTABLEKS                       R10 R8 K7 ["DisableTitleBar"]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K19 ["createElement"]
       57 LOADK                            R11 K20 ["Frame"]
       58 NEWTABLE                         R12 1 0
       60 GETUPVAL                         R13 2
       61 GETTABLEKS                       R13 R13 K21 ["Tag"]
       63 LOADK                            R14 K22 ["X-FitY X-Column Component-DialogContainer"]
       64 SETTABLE                         R14 R12 R13
       65 DUPTABLE                         R13 K25 [{"ThumbnailAndTextInfo", "CancelButton"}]
       66 GETUPVAL                         R14 2
       67 GETTABLEKS                       R14 R14 K19 ["createElement"]
       69 GETUPVAL                         R15 5
       70 DUPTABLE                         R16 K32 [{"LayoutOrder", "Title", "Subtitle", "Status", "Image", "OnWidthChanged", "OnShown"}]
       71 NAMECALL                         R17 R1 K33 ["getNextOrder"]
       73 CALL                             R17 1 1
       74 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
       76 GETTABLEKS                       R17 R0 K5 ["Title"]
       78 SETTABLEKS                       R17 R16 K5 ["Title"]
       80 GETTABLEKS                       R17 R0 K27 ["Subtitle"]
       82 SETTABLEKS                       R17 R16 K27 ["Subtitle"]
       84 GETTABLEKS                       R17 R0 K28 ["Status"]
       86 SETTABLEKS                       R17 R16 K28 ["Status"]
       88 GETTABLEKS                       R17 R0 K29 ["Image"]
       90 SETTABLEKS                       R17 R16 K29 ["Image"]
       92 SETTABLEKS                       R6 R16 K30 ["OnWidthChanged"]
       94 NEWCLOSURE                       R17 P1
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R17 R16 K31 ["OnShown"]
       98 CALL                             R14 2 1
       99 SETTABLEKS                       R14 R13 K23 ["ThumbnailAndTextInfo"]
      101 GETUPVAL                         R14 2
      102 GETTABLEKS                       R14 R14 K19 ["createElement"]
      104 GETUPVAL                         R15 6
      105 DUPTABLE                         R16 K36 [{"LayoutOrder", "Enabled", "OnCancel"}]
      106 NAMECALL                         R17 R1 K33 ["getNextOrder"]
      108 CALL                             R17 1 1
      109 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
      111 GETTABLEKS                       R17 R0 K37 ["CancelButtonEnabled"]
      113 SETTABLEKS                       R17 R16 K34 ["Enabled"]
      115 GETTABLEKS                       R17 R0 K35 ["OnCancel"]
      117 SETTABLEKS                       R17 R16 K35 ["OnCancel"]
      119 CALL                             R14 2 1
      120 SETTABLEKS                       R14 R13 K24 ["CancelButton"]
      122 CALL                             R10 3 1
      123 SETTABLEKS                       R10 R8 K8 ["Contents"]
      125 CALL                             R7 1 3
      126 GETUPVAL                         R10 2
      127 GETTABLEKS                       R10 R10 K38 ["useEffect"]
      129 NEWCLOSURE                       R11 P2
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R0
      132 NEWTABLE                         R12 0 1
      134 MOVE                             R13 R3
      135 SETLIST                          R12 R13 1 [1]
      137 CALL                             R10 2 0
      138 GETUPVAL                         R10 2
      139 GETTABLEKS                       R10 R10 K38 ["useEffect"]
      141 NEWCLOSURE                       R11 P3
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R4
      147 NEWTABLE                         R12 0 2
      149 GETTABLEKS                       R13 R0 K34 ["Enabled"]
      151 MOVE                             R14 R9
      152 SETLIST                          R12 R13 2 [1]
      154 CALL                             R10 2 0
      155 LOADNIL                          R10
      156 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       29 GETTABLEKS                       R5 R5 K13 ["useDialogWidget"]
       31 GETTABLEKS                       R6 R2 K14 ["Util"]
       33 GETTABLEKS                       R6 R6 K15 ["LayoutOrderIterator"]
       35 GETTABLEKS                       R7 R0 K16 ["Src"]
       37 GETTABLEKS                       R7 R7 K17 ["Components"]
       39 GETIMPORT                        R8 K5 [require]
       41 GETTABLEKS                       R9 R7 K18 ["CancelButton"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K5 [require]
       46 GETTABLEKS                       R10 R7 K19 ["ThumbnailAndTextInfo"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K5 [require]
       51 GETIMPORT                        R11 K1 [script]
       53 GETTABLEKS                       R11 R11 K20 ["styles"]
       55 CALL                             R10 1 1
       56 LOADK                            R13 K21 ["MinimumDialogSize"]
       57 NAMECALL                         R11 R10 K22 ["GetAttribute"]
       59 CALL                             R11 2 1
       60 DUPCLOSURE                       R12 K23 [PROTO_4]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R8
       68 RETURN                           R12 1
