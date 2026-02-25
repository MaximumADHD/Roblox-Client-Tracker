PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["Enums"]
        4 GETTABLEKS                       R3 R4 K1 ["ControlState"]
        6 GETTABLEKS                       R2 R3 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R2 ; [+12]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["Enums"]
       13 GETTABLEKS                       R3 R4 K1 ["ControlState"]
       15 GETTABLEKS                       R2 R3 K3 ["Pressed"]
       17 JUMPIFEQ                         R0 R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 GETUPVAL                         R2 1
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 2
       25 NOT                              R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R6 R0 K0 ["metadata"]
        6 GETTABLEKS                       R5 R6 K1 ["notes"]
        8 GETTABLEKS                       R4 R5 K2 ["description"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 GETTABLEKS                       R7 R0 K0 ["metadata"]
       16 GETTABLEKS                       R6 R7 K3 ["contributors"]
       18 LENGTH                           R5 R6
       19 JUMPIFNOTEQKN                    R5 K4 [0] ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 OR                               R5 R3 R4
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R6 R7 K5 ["useBinding"]
       27 LOADB                            R7 0
       28 CALL                             R6 1 2
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R8 R9 K6 ["useState"]
       32 LOADB                            R9 0
       33 CALL                             R8 1 2
       34 GETUPVAL                         R11 2
       35 GETTABLEKS                       R10 R11 K7 ["useCallback"]
       37 NEWCLOSURE                       R11 P0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R9
       41 NEWTABLE                         R12 0 0
       43 CALL                             R10 2 1
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R11 R12 K8 ["createElement"]
       47 GETUPVAL                         R13 3
       48 GETTABLEKS                       R12 R13 K9 ["View"]
       50 DUPTABLE                         R13 K14 [{"tag", "onActivated", "onStateChanged", "LayoutOrder"}]
       51 LOADK                            R14 K15 ["size-full-0 auto-y row align-y-top gap-small padding-small radius-small"]
       52 SETTABLEKS                       R14 R13 K10 ["tag"]
       54 GETTABLEKS                       R14 R2 K16 ["toggle"]
       56 SETTABLEKS                       R14 R13 K11 ["onActivated"]
       58 SETTABLEKS                       R10 R13 K12 ["onStateChanged"]
       60 GETTABLEKS                       R14 R0 K13 ["LayoutOrder"]
       62 SETTABLEKS                       R14 R13 K13 ["LayoutOrder"]
       64 DUPTABLE                         R14 K21 [{"ExpandButton", "VersionChip", "VersionNote", "OverflowMenu"}]
       65 GETUPVAL                         R16 2
       66 GETTABLEKS                       R15 R16 K8 ["createElement"]
       68 GETUPVAL                         R17 3
       69 GETTABLEKS                       R16 R17 K22 ["IconButton"]
       71 DUPTABLE                         R17 K27 [{"onActivated", "icon", "size", "testId", "isDisabled", "LayoutOrder"}]
       72 GETTABLEKS                       R18 R2 K16 ["toggle"]
       74 SETTABLEKS                       R18 R17 K11 ["onActivated"]
       76 JUMPIF                           R5 ; [+2]
       77 LOADNIL                          R18
       78 JUMP                             ; [+18]
       79 GETTABLEKS                       R19 R2 K28 ["enabled"]
       81 JUMPIFNOT                        R19 ; [+8]
       82 GETUPVAL                         R21 3
       83 GETTABLEKS                       R20 R21 K29 ["Enums"]
       85 GETTABLEKS                       R19 R20 K30 ["IconName"]
       87 GETTABLEKS                       R18 R19 K31 ["ChevronSmallUp"]
       89 JUMP                             ; [+7]
       90 GETUPVAL                         R21 3
       91 GETTABLEKS                       R20 R21 K29 ["Enums"]
       93 GETTABLEKS                       R19 R20 K30 ["IconName"]
       95 GETTABLEKS                       R18 R19 K32 ["ChevronSmallDown"]
       97 SETTABLEKS                       R18 R17 K23 ["icon"]
       99 GETUPVAL                         R21 3
      100 GETTABLEKS                       R20 R21 K29 ["Enums"]
      102 GETTABLEKS                       R19 R20 K33 ["InputSize"]
      104 GETTABLEKS                       R18 R19 K34 ["XSmall"]
      106 SETTABLEKS                       R18 R17 K24 ["size"]
      108 LOADK                            R18 K35 ["--place-version-item-expand-button"]
      109 SETTABLEKS                       R18 R17 K25 ["testId"]
      111 NOT                              R18 R5
      112 SETTABLEKS                       R18 R17 K26 ["isDisabled"]
      114 MOVE                             R18 R1
      115 CALL                             R18 0 1
      116 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      118 CALL                             R15 2 1
      119 SETTABLEKS                       R15 R14 K17 ["ExpandButton"]
      121 GETUPVAL                         R16 2
      122 GETTABLEKS                       R15 R16 K8 ["createElement"]
      124 GETUPVAL                         R17 3
      125 GETTABLEKS                       R16 R17 K36 ["Chip"]
      127 DUPTABLE                         R17 K38 [{"onActivated", "size", "text", "LayoutOrder"}]
      128 LOADNIL                          R18
      129 SETTABLEKS                       R18 R17 K11 ["onActivated"]
      131 GETUPVAL                         R21 3
      132 GETTABLEKS                       R20 R21 K29 ["Enums"]
      134 GETTABLEKS                       R19 R20 K39 ["ChipSize"]
      136 GETTABLEKS                       R18 R19 K40 ["Small"]
      138 SETTABLEKS                       R18 R17 K24 ["size"]
      140 LOADK                            R19 K41 ["v%*"]
      141 GETTABLEKS                       R22 R0 K0 ["metadata"]
      143 GETTABLEKS                       R21 R22 K42 ["version"]
      145 NAMECALL                         R19 R19 K43 ["format"]
      147 CALL                             R19 2 1
      148 MOVE                             R18 R19
      149 SETTABLEKS                       R18 R17 K37 ["text"]
      151 MOVE                             R18 R1
      152 CALL                             R18 0 1
      153 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      155 CALL                             R15 2 1
      156 SETTABLEKS                       R15 R14 K18 ["VersionChip"]
      158 GETUPVAL                         R16 2
      159 GETTABLEKS                       R15 R16 K8 ["createElement"]
      161 GETUPVAL                         R16 4
      162 DUPTABLE                         R17 K45 [{"metadata", "isExpanded", "LayoutOrder"}]
      163 GETTABLEKS                       R18 R0 K0 ["metadata"]
      165 SETTABLEKS                       R18 R17 K0 ["metadata"]
      167 GETTABLEKS                       R18 R2 K28 ["enabled"]
      169 SETTABLEKS                       R18 R17 K44 ["isExpanded"]
      171 MOVE                             R18 R1
      172 CALL                             R18 0 1
      173 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      175 CALL                             R15 2 1
      176 SETTABLEKS                       R15 R14 K19 ["VersionNote"]
      178 GETUPVAL                         R16 2
      179 GETTABLEKS                       R15 R16 K8 ["createElement"]
      181 GETUPVAL                         R16 5
      182 DUPTABLE                         R17 K47 [{"metadata", "isVisible", "isDisabled", "LayoutOrder"}]
      183 GETTABLEKS                       R18 R0 K0 ["metadata"]
      185 SETTABLEKS                       R18 R17 K0 ["metadata"]
      187 SETTABLEKS                       R6 R17 K46 ["isVisible"]
      189 SETTABLEKS                       R8 R17 K26 ["isDisabled"]
      191 MOVE                             R18 R1
      192 CALL                             R18 0 1
      193 SETTABLEKS                       R18 R17 K13 ["LayoutOrder"]
      195 CALL                             R15 2 1
      196 SETTABLEKS                       R15 R14 K20 ["OverflowMenu"]
      198 CALL                             R11 3 -1
      199 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R5 K11 ["Components"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K12 ["OverflowMenu"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R4 K13 ["PlaceVersionNote"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R2 K14 ["createNextOrder"]
       44 GETTABLEKS                       R8 R2 K15 ["useToggleState"]
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R11 R0 K10 ["Src"]
       50 GETTABLEKS                       R10 R11 K16 ["Types"]
       52 CALL                             R9 1 1
       53 DUPCLOSURE                       R10 K17 [PROTO_1]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R5
       60 RETURN                           R10 1
