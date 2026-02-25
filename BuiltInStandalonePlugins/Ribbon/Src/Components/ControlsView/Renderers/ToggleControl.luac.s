PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+9]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["Activate"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["Uri"]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 JUMPIFNOT                        R2 ; [+27]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K2 ["Select"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K1 ["Uri"]
       19 JUMPIFNOT                        R0 ; [+2]
       20 LOADN                            R4 1
       21 JUMP                             ; [+1]
       22 LOADN                            R4 0
       23 MOVE                             R5 R1
       24 CALL                             R2 3 0
       25 GETUPVAL                         R2 3
       26 JUMPIFNOT                        R2 ; [+13]
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R2 R3 K3 ["Checked"]
       30 JUMPIFEQ                         R2 R0 ; [+9]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R2 R3 K0 ["Activate"]
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R3 R4 K1 ["Uri"]
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
       12 JUMPIFNOT                        R7 ; [+31]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K3 ["toString"]
       16 GETTABLEKS                       R8 R2 K2 ["Action"]
       18 CALL                             R7 1 1
       19 GETTABLEKS                       R9 R0 K4 ["Items"]
       21 GETTABLEKS                       R8 R9 K5 ["Actions"]
       23 GETTABLE                         R3 R8 R7
       24 JUMPIF                           R3 ; [+14]
       25 GETTABLEKS                       R8 R0 K6 ["Warn"]
       27 LOADK                            R10 K7 ["Missing Action %* for Toggle with id %*"]
       28 MOVE                             R12 R7
       29 GETTABLEKS                       R13 R2 K8 ["Id"]
       31 NAMECALL                         R10 R10 K9 ["format"]
       33 CALL                             R10 3 1
       34 MOVE                             R9 R10
       35 CALL                             R8 1 0
       36 LOADNIL                          R8
       37 CLOSEUPVALS                      R3
       38 RETURN                           R8 1
       39 GETTABLEKS                       R5 R3 K10 ["Enabled"]
       41 GETTABLEKS                       R6 R3 K11 ["Checked"]
       43 JUMP                             ; [+62]
       44 GETTABLEKS                       R7 R2 K12 ["Setting"]
       46 JUMPIFNOT                        R7 ; [+46]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R7 R8 K3 ["toString"]
       50 GETTABLEKS                       R8 R2 K12 ["Setting"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R9 R0 K4 ["Items"]
       55 GETTABLEKS                       R8 R9 K13 ["Settings"]
       57 GETTABLE                         R4 R8 R7
       58 JUMPIF                           R4 ; [+14]
       59 GETTABLEKS                       R8 R0 K6 ["Warn"]
       61 LOADK                            R10 K14 ["Missing Setting %* for Toggle with id %*"]
       62 MOVE                             R12 R7
       63 GETTABLEKS                       R13 R2 K8 ["Id"]
       65 NAMECALL                         R10 R10 K9 ["format"]
       67 CALL                             R10 3 1
       68 MOVE                             R9 R10
       69 CALL                             R8 1 0
       70 LOADNIL                          R8
       71 CLOSEUPVALS                      R3
       72 RETURN                           R8 1
       73 GETTABLEKS                       R5 R4 K10 ["Enabled"]
       75 GETTABLEKS                       R9 R4 K15 ["Value"]
       77 FASTCALL1                        TYPEOF R9 ; [+2]
       78 GETIMPORT                        R8 K17 [typeof]
       80 CALL                             R8 1 1
       81 JUMPIFNOTEQKS                    R8 K18 ["boolean"] ; [+4]
       83 GETTABLEKS                       R6 R4 K15 ["Value"]
       85 JUMP                             ; [+20]
       86 GETTABLEKS                       R8 R4 K15 ["Value"]
       88 JUMPIFEQKN                       R8 K19 [1] ; [+2]
       90 LOADB                            R6 0 +1
       91 LOADB                            R6 1
       92 JUMP                             ; [+13]
       93 GETTABLEKS                       R7 R0 K6 ["Warn"]
       95 LOADK                            R9 K20 ["Missing Action or Setting field for Toggle with id %*"]
       96 GETTABLEKS                       R11 R2 K8 ["Id"]
       98 NAMECALL                         R9 R9 K9 ["format"]
      100 CALL                             R9 2 1
      101 MOVE                             R8 R9
      102 CALL                             R7 1 0
      103 LOADNIL                          R7
      104 CLOSEUPVALS                      R3
      105 RETURN                           R7 1
      106 GETTABLEKS                       R8 R2 K21 ["ActionOnToggle"]
      108 JUMPIFNOT                        R8 ; [+12]
      109 GETTABLEKS                       R9 R0 K4 ["Items"]
      111 GETTABLEKS                       R8 R9 K5 ["Actions"]
      113 GETUPVAL                         R10 1
      114 GETTABLEKS                       R9 R10 K3 ["toString"]
      116 GETTABLEKS                       R10 R2 K21 ["ActionOnToggle"]
      118 CALL                             R9 1 1
      119 GETTABLE                         R7 R8 R9
      120 JUMP                             ; [+1]
      121 LOADNIL                          R7
      122 GETUPVAL                         R8 2
      123 GETUPVAL                         R9 3
      124 DUPTABLE                         R10 K27 [{"Uri", "LayoutOrder", "Enabled", "Selected", "OnClick", "Text"}]
      125 GETUPVAL                         R12 1
      126 GETTABLEKS                       R11 R12 K28 ["child"]
      128 GETTABLEKS                       R12 R0 K29 ["WidgetUri"]
      130 GETTABLEKS                       R13 R2 K8 ["Id"]
      132 CALL                             R11 2 1
      133 SETTABLEKS                       R11 R10 K22 ["Uri"]
      135 GETTABLEKS                       R11 R0 K23 ["LayoutOrder"]
      137 SETTABLEKS                       R11 R10 K23 ["LayoutOrder"]
      139 SETTABLEKS                       R5 R10 K10 ["Enabled"]
      141 SETTABLEKS                       R6 R10 K24 ["Selected"]
      143 NEWCLOSURE                       R11 P0
      144 CAPTURE                          REF R3
      145 CAPTURE                          VAL R0
      146 CAPTURE                          REF R4
      147 CAPTURE                          VAL R7
      148 SETTABLEKS                       R11 R10 K25 ["OnClick"]
      150 GETUPVAL                         R11 4
      151 MOVE                             R12 R1
      152 LOADK                            R13 K26 ["Text"]
      153 MOVE                             R14 R2
      154 OR                               R15 R3 R4
      155 CALL                             R11 4 1
      156 SETTABLEKS                       R11 R10 K26 ["Text"]
      158 CALL                             R8 2 -1
      159 CLOSEUPVALS                      R3
      160 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R8 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Components"]
       33 GETTABLEKS                       R6 R7 K14 ["RibbonToggle"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R10 R0 K12 ["Src"]
       40 GETTABLEKS                       R9 R10 K13 ["Components"]
       42 GETTABLEKS                       R8 R9 K15 ["ControlsView"]
       44 GETTABLEKS                       R7 R8 K16 ["getLocalizedField"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K6 ["Packages"]
       51 GETTABLEKS                       R8 R9 K17 ["Framework"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R7 K18 ["ContextServices"]
       56 GETTABLEKS                       R9 R8 K19 ["Localization"]
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R14 R0 K12 ["Src"]
       62 GETTABLEKS                       R13 R14 K13 ["Components"]
       64 GETTABLEKS                       R12 R13 K15 ["ControlsView"]
       66 GETTABLEKS                       R11 R12 K20 ["ControlProps"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K5 [require]
       71 GETTABLEKS                       R13 R0 K12 ["Src"]
       73 GETTABLEKS                       R12 R13 K21 ["Types"]
       75 CALL                             R11 1 1
       76 DUPCLOSURE                       R12 K22 [PROTO_1]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R6
       82 RETURN                           R12 1
