PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R0 K2 ["Checked"]
       10 JUMPIFNOT                        R3 ; [+2]
       11 LOADK                            R4 K2 ["Checked"]
       12 JUMP                             ; [+1]
       13 LOADK                            R4 K3 ["Unchecked"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["createElement"]
       17 LOADK                            R6 K5 ["Frame"]
       18 NEWTABLE                         R7 2 0
       20 GETTABLEKS                       R8 R0 K6 ["LayoutOrder"]
       22 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K7 ["Tag"]
       27 LOADK                            R9 K8 ["Component-Checkbox X-FitY"]
       28 SETTABLE                         R9 R7 R8
       29 DUPTABLE                         R8 K11 [{"CheckboxImage", "IAgree"}]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K4 ["createElement"]
       33 LOADK                            R10 K12 ["ImageButton"]
       34 NEWTABLE                         R11 4 0
       36 NAMECALL                         R12 R2 K13 ["getNextOrder"]
       38 CALL                             R12 1 1
       39 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       41 GETUPVAL                         R12 2
       42 GETTABLEKS                       R12 R12 K7 ["Tag"]
       44 GETUPVAL                         R13 3
       45 LOADK                            R14 K14 ["X-Fit"]
       46 MOVE                             R15 R4
       47 CALL                             R13 2 1
       48 SETTABLE                         R13 R11 R12
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R12 R12 K15 ["Event"]
       52 GETTABLEKS                       R12 R12 K16 ["Activated"]
       54 GETTABLEKS                       R13 R0 K17 ["OnChecked"]
       56 SETTABLE                         R13 R11 R12
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K9 ["CheckboxImage"]
       60 GETUPVAL                         R9 2
       61 GETTABLEKS                       R9 R9 K4 ["createElement"]
       63 LOADK                            R10 K18 ["TextButton"]
       64 NEWTABLE                         R11 4 0
       66 LOADK                            R13 K19 ["<b>%*</b>"]
       67 LOADK                            R17 K20 ["Agreement"]
       68 LOADK                            R18 K10 ["IAgree"]
       69 NAMECALL                         R15 R1 K21 ["getText"]
       71 CALL                             R15 3 1
       72 NAMECALL                         R13 R13 K22 ["format"]
       74 CALL                             R13 2 1
       75 MOVE                             R12 R13
       76 SETTABLEKS                       R12 R11 K23 ["Text"]
       78 NAMECALL                         R12 R2 K13 ["getNextOrder"]
       80 CALL                             R12 1 1
       81 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       83 GETUPVAL                         R12 2
       84 GETTABLEKS                       R12 R12 K7 ["Tag"]
       86 LOADK                            R13 K24 ["X-FitY"]
       87 SETTABLE                         R13 R11 R12
       88 GETUPVAL                         R12 2
       89 GETTABLEKS                       R12 R12 K15 ["Event"]
       91 GETTABLEKS                       R12 R12 K16 ["Activated"]
       93 GETTABLEKS                       R13 R0 K17 ["OnChecked"]
       95 SETTABLE                         R13 R11 R12
       96 CALL                             R9 2 1
       97 SETTABLEKS                       R9 R8 K10 ["IAgree"]
       99 CALL                             R5 3 -1
      100 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModerationDialog"]
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
       25 GETTABLEKS                       R5 R2 K11 ["Styling"]
       27 GETTABLEKS                       R5 R5 K12 ["joinTags"]
       29 GETTABLEKS                       R6 R2 K13 ["Util"]
       31 GETTABLEKS                       R6 R6 K14 ["LayoutOrderIterator"]
       33 DUPCLOSURE                       R7 K15 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 RETURN                           R7 1
