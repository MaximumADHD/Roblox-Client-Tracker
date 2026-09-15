PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Items"]
        3 GETTABLEKS                       R2 R2 K1 ["Actions"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["toString"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 GETTABLE                         R1 R2 R3
       11 MOVE                             R2 R1
       12 JUMPIFNOT                        R2 ; [+2]
       13 GETTABLEKS                       R2 R1 K3 ["Enabled"]
       15 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Activate"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Uri"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["Item"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 GETTABLEKS                       R5 R2 K2 ["ActionGroup"]
       10 JUMPIFNOT                        R5 ; [+30]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R6 R2 K2 ["ActionGroup"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U2
       17 CALL                             R5 2 1
       18 JUMPIF                           R5 ; [+3]
       19 LOADNIL                          R6
       20 CLOSEUPVALS                      R3
       21 RETURN                           R6 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K3 ["toString"]
       25 GETTABLEKS                       R8 R2 K2 ["ActionGroup"]
       27 GETTABLE                         R7 R8 R5
       28 CALL                             R6 1 1
       29 GETTABLEKS                       R7 R0 K4 ["Items"]
       31 GETTABLEKS                       R7 R7 K5 ["Actions"]
       33 GETTABLE                         R3 R7 R6
       34 GETTABLEKS                       R7 R2 K6 ["ActionGroupIcons"]
       36 JUMPIFNOT                        R7 ; [+45]
       37 GETTABLEKS                       R7 R2 K6 ["ActionGroupIcons"]
       39 GETTABLE                         R4 R7 R5
       40 JUMP                             ; [+41]
       41 GETTABLEKS                       R5 R2 K7 ["Action"]
       43 JUMPIFNOT                        R5 ; [+26]
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K3 ["toString"]
       47 GETTABLEKS                       R6 R2 K7 ["Action"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R0 K4 ["Items"]
       52 GETTABLEKS                       R6 R6 K5 ["Actions"]
       54 GETTABLE                         R3 R6 R5
       55 JUMPIF                           R3 ; [+26]
       56 GETTABLEKS                       R6 R0 K8 ["Warn"]
       58 LOADK                            R7 K9 ["Missing Action %* for Button with id %*"]
       59 MOVE                             R9 R5
       60 GETTABLEKS                       R10 R2 K10 ["Id"]
       62 NAMECALL                         R7 R7 K11 ["format"]
       64 CALL                             R7 3 1
       65 CALL                             R6 1 0
       66 LOADNIL                          R6
       67 CLOSEUPVALS                      R3
       68 RETURN                           R6 1
       69 JUMP                             ; [+12]
       70 GETTABLEKS                       R5 R0 K8 ["Warn"]
       72 LOADK                            R6 K12 ["Missing Action or ActionGroup field for Button with id %*"]
       73 GETTABLEKS                       R8 R2 K10 ["Id"]
       75 NAMECALL                         R6 R6 K11 ["format"]
       77 CALL                             R6 2 1
       78 CALL                             R5 1 0
       79 LOADNIL                          R5
       80 CLOSEUPVALS                      R3
       81 RETURN                           R5 1
       82 GETUPVAL                         R5 3
       83 MOVE                             R6 R1
       84 LOADK                            R7 K13 ["Text"]
       85 MOVE                             R8 R2
       86 MOVE                             R9 R3
       87 CALL                             R5 4 1
       88 GETUPVAL                         R6 4
       89 GETUPVAL                         R7 5
       90 NEWTABLE                         R8 16 0
       92 NEWCLOSURE                       R9 P1
       93 CAPTURE                          VAL R0
       94 CAPTURE                          REF R3
       95 SETTABLEKS                       R9 R8 K14 ["OnSelect"]
       97 GETTABLEKS                       R10 R3 K15 ["Enabled"]
       99 NOT                              R9 R10
      100 SETTABLEKS                       R9 R8 K16 ["Disabled"]
      102 GETUPVAL                         R9 2
      103 GETTABLEKS                       R9 R9 K17 ["child"]
      105 GETTABLEKS                       R10 R0 K18 ["WidgetUri"]
      107 GETTABLEKS                       R11 R2 K10 ["Id"]
      109 CALL                             R9 2 1
      110 SETTABLEKS                       R9 R8 K19 ["Uri"]
      112 MOVE                             R9 R4
      113 JUMPIF                           R9 ; [+5]
      114 GETTABLEKS                       R9 R2 K20 ["Icon"]
      116 JUMPIF                           R9 ; [+2]
      117 GETTABLEKS                       R9 R3 K20 ["Icon"]
      119 SETTABLEKS                       R9 R8 K20 ["Icon"]
      121 GETTABLEKS                       R9 R3 K21 ["Shortcuts"]
      123 SETTABLEKS                       R9 R8 K21 ["Shortcuts"]
      125 GETUPVAL                         R9 3
      126 MOVE                             R10 R1
      127 LOADK                            R11 K22 ["Tooltip"]
      128 MOVE                             R12 R2
      129 MOVE                             R13 R3
      130 CALL                             R9 4 1
      131 SETTABLEKS                       R9 R8 K22 ["Tooltip"]
      133 SETTABLEKS                       R5 R8 K23 ["TooltipTitle"]
      135 GETTABLEKS                       R9 R0 K24 ["LayoutOrder"]
      137 SETTABLEKS                       R9 R8 K24 ["LayoutOrder"]
      139 SETTABLEKS                       R5 R8 K13 ["Text"]
      141 GETTABLEKS                       R9 R2 K25 ["TextOnly"]
      143 SETTABLEKS                       R9 R8 K25 ["TextOnly"]
      145 GETTABLEKS                       R9 R2 K26 ["Size"]
      147 SETTABLEKS                       R9 R8 K26 ["Size"]
      149 GETTABLEKS                       R9 R3 K27 ["Visible"]
      151 SETTABLEKS                       R9 R8 K27 ["Visible"]
      153 GETUPVAL                         R9 6
      154 GETTABLEKS                       R9 R9 K28 ["Tag"]
      156 GETTABLEKS                       R10 R2 K29 ["Style"]
      158 SETTABLE                         R10 R8 R9
      159 CALL                             R6 2 -1
      160 CLOSEUPVALS                      R3
      161 RETURN                           R6 -1

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
       20 GETTABLEKS                       R4 R4 K9 ["Dash"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["findIndex"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R6 R6 K11 ["StudioFoundation"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R5 K12 ["Util"]
       34 GETTABLEKS                       R6 R6 K13 ["StudioUri"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Components"]
       42 GETTABLEKS                       R8 R8 K16 ["Button"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R0 K14 ["Src"]
       49 GETTABLEKS                       R9 R9 K15 ["Components"]
       51 GETTABLEKS                       R9 R9 K17 ["ControlsView"]
       53 GETTABLEKS                       R9 R9 K18 ["getLocalizedField"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Packages"]
       60 GETTABLEKS                       R10 R10 K19 ["Framework"]
       62 CALL                             R9 1 1
       63 GETTABLEKS                       R10 R9 K20 ["ContextServices"]
       65 GETTABLEKS                       R11 R10 K21 ["Localization"]
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R0 K14 ["Src"]
       71 GETTABLEKS                       R13 R13 K15 ["Components"]
       73 GETTABLEKS                       R13 R13 K17 ["ControlsView"]
       75 GETTABLEKS                       R13 R13 K22 ["ControlProps"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R0 K14 ["Src"]
       82 GETTABLEKS                       R14 R14 K23 ["Types"]
       84 CALL                             R13 1 1
       85 DUPCLOSURE                       R14 K24 [PROTO_2]
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R1
       93 RETURN                           R14 1
