PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+9]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Activate"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["Uri"]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 JUMPIFNOT                        R2 ; [+27]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K2 ["Select"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K1 ["Uri"]
       19 JUMPIFNOT                        R0 ; [+2]
       20 LOADN                            R4 1
       21 JUMP                             ; [+1]
       22 LOADN                            R4 0
       23 MOVE                             R5 R1
       24 CALL                             R2 3 0
       25 GETUPVAL                         R2 3
       26 JUMPIFNOT                        R2 ; [+13]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K3 ["Checked"]
       30 JUMPIFEQ                         R2 R0 ; [+9]
       32 GETUPVAL                         R2 1
       33 GETTABLEKS                       R2 R2 K0 ["Activate"]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K1 ["Uri"]
       38 MOVE                             R4 R1
       39 CALL                             R2 2 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 LOADB                            R5 0
        9 LOADB                            R6 0
       10 GETTABLEKS                       R7 R2 K2 ["Action"]
       12 JUMPIFNOT                        R7 ; [+30]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K3 ["toString"]
       16 GETTABLEKS                       R8 R2 K2 ["Action"]
       18 CALL                             R7 1 1
       19 GETTABLEKS                       R8 R0 K4 ["Items"]
       21 GETTABLEKS                       R8 R8 K5 ["Actions"]
       23 GETTABLE                         R3 R8 R7
       24 JUMPIF                           R3 ; [+13]
       25 GETTABLEKS                       R8 R0 K6 ["Warn"]
       27 LOADK                            R9 K7 ["Missing Action %* for Toggle with id %*"]
       28 MOVE                             R11 R7
       29 GETTABLEKS                       R12 R2 K8 ["Id"]
       31 NAMECALL                         R9 R9 K9 ["format"]
       33 CALL                             R9 3 1
       34 CALL                             R8 1 0
       35 LOADNIL                          R8
       36 CLOSEUPVALS                      R3
       37 RETURN                           R8 1
       38 GETTABLEKS                       R5 R3 K10 ["Enabled"]
       40 GETTABLEKS                       R6 R3 K11 ["Checked"]
       42 JUMP                             ; [+60]
       43 GETTABLEKS                       R7 R2 K12 ["Setting"]
       45 JUMPIFNOT                        R7 ; [+45]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K3 ["toString"]
       49 GETTABLEKS                       R8 R2 K12 ["Setting"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R0 K4 ["Items"]
       54 GETTABLEKS                       R8 R8 K13 ["Settings"]
       56 GETTABLE                         R4 R8 R7
       57 JUMPIF                           R4 ; [+13]
       58 GETTABLEKS                       R8 R0 K6 ["Warn"]
       60 LOADK                            R9 K14 ["Missing Setting %* for Toggle with id %*"]
       61 MOVE                             R11 R7
       62 GETTABLEKS                       R12 R2 K8 ["Id"]
       64 NAMECALL                         R9 R9 K9 ["format"]
       66 CALL                             R9 3 1
       67 CALL                             R8 1 0
       68 LOADNIL                          R8
       69 CLOSEUPVALS                      R3
       70 RETURN                           R8 1
       71 GETTABLEKS                       R5 R4 K10 ["Enabled"]
       73 GETTABLEKS                       R9 R4 K15 ["Value"]
       75 FASTCALL1                        TYPEOF R9 ; [+2]
       76 GETIMPORT                        R8 K17 [typeof]
       78 CALL                             R8 1 1
       79 JUMPIFNOTEQKS                    R8 K18 ["boolean"] ; [+4]
       81 GETTABLEKS                       R6 R4 K15 ["Value"]
       83 JUMP                             ; [+19]
       84 GETTABLEKS                       R8 R4 K15 ["Value"]
       86 JUMPIFEQKN                       R8 K19 [1] ; [+2]
       88 LOADB                            R6 0 +1
       89 LOADB                            R6 1
       90 JUMP                             ; [+12]
       91 GETTABLEKS                       R7 R0 K6 ["Warn"]
       93 LOADK                            R8 K20 ["Missing Action or Setting field for Toggle with id %*"]
       94 GETTABLEKS                       R10 R2 K8 ["Id"]
       96 NAMECALL                         R8 R8 K9 ["format"]
       98 CALL                             R8 2 1
       99 CALL                             R7 1 0
      100 LOADNIL                          R7
      101 CLOSEUPVALS                      R3
      102 RETURN                           R7 1
      103 GETTABLEKS                       R8 R2 K21 ["ActionOnToggle"]
      105 JUMPIFNOT                        R8 ; [+12]
      106 GETTABLEKS                       R8 R0 K4 ["Items"]
      108 GETTABLEKS                       R8 R8 K5 ["Actions"]
      110 GETUPVAL                         R9 1
      111 GETTABLEKS                       R9 R9 K3 ["toString"]
      113 GETTABLEKS                       R10 R2 K21 ["ActionOnToggle"]
      115 CALL                             R9 1 1
      116 GETTABLE                         R7 R8 R9
      117 JUMP                             ; [+1]
      118 LOADNIL                          R7
      119 GETUPVAL                         R8 2
      120 GETUPVAL                         R9 3
      121 DUPTABLE                         R10 K27 [{"Uri", "LayoutOrder", "Enabled", "Selected", "OnClick", "Text"}]
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K28 ["child"]
      125 GETTABLEKS                       R12 R0 K29 ["WidgetUri"]
      127 GETTABLEKS                       R13 R2 K8 ["Id"]
      129 CALL                             R11 2 1
      130 SETTABLEKS                       R11 R10 K22 ["Uri"]
      132 GETTABLEKS                       R11 R0 K23 ["LayoutOrder"]
      134 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
      136 SETTABLEKS                       R5 R10 K10 ["Enabled"]
      138 SETTABLEKS                       R6 R10 K24 ["Selected"]
      140 NEWCLOSURE                       R11 P0
      141 CAPTURE                          REF R3
      142 CAPTURE                          VAL R0
      143 CAPTURE                          REF R4
      144 CAPTURE                          VAL R7
      145 SETTABLEKS                       R11 R10 K25 ["OnClick"]
      147 GETUPVAL                         R11 4
      148 MOVE                             R12 R1
      149 LOADK                            R13 K26 ["Text"]
      150 MOVE                             R14 R2
      151 OR                               R15 R3 R4
      152 CALL                             R11 4 1
      153 SETTABLEKS                       R11 R10 K26 ["Text"]
      155 CALL                             R8 2 -1
      156 CLOSEUPVALS                      R3
      157 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Components"]
       33 GETTABLEKS                       R6 R6 K14 ["RibbonToggle"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Components"]
       42 GETTABLEKS                       R7 R7 K15 ["ControlsView"]
       44 GETTABLEKS                       R7 R7 K16 ["getLocalizedField"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Packages"]
       51 GETTABLEKS                       R8 R8 K17 ["Framework"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R7 K18 ["ContextServices"]
       56 GETTABLEKS                       R9 R8 K19 ["Localization"]
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K12 ["Src"]
       62 GETTABLEKS                       R11 R11 K13 ["Components"]
       64 GETTABLEKS                       R11 R11 K15 ["ControlsView"]
       66 GETTABLEKS                       R11 R11 K20 ["ControlProps"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R12 R0 K12 ["Src"]
       73 GETTABLEKS                       R12 R12 K21 ["Types"]
       75 CALL                             R11 1 1
       76 DUPCLOSURE                       R12 K22 [PROTO_1]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 RETURN                           R12 1
