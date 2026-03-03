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
       25 GETTABLEKS                       R6 R7 K5 ["useContext"]
       27 GETUPVAL                         R7 3
       28 CALL                             R6 1 1
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R7 R8 K6 ["useBinding"]
       32 LOADB                            R8 0
       33 CALL                             R7 1 2
       34 GETUPVAL                         R10 2
       35 GETTABLEKS                       R9 R10 K7 ["useState"]
       37 LOADB                            R10 0
       38 CALL                             R9 1 2
       39 GETUPVAL                         R12 2
       40 GETTABLEKS                       R11 R12 K8 ["useCallback"]
       42 NEWCLOSURE                       R12 P0
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R10
       46 NEWTABLE                         R13 0 0
       48 CALL                             R11 2 1
       49 GETUPVAL                         R13 2
       50 GETTABLEKS                       R12 R13 K9 ["createElement"]
       52 GETUPVAL                         R14 4
       53 GETTABLEKS                       R13 R14 K10 ["View"]
       55 DUPTABLE                         R14 K16 [{"tag", "onActivated", "onStateChanged", "isDisabled", "LayoutOrder"}]
       56 LOADK                            R15 K17 ["size-full-0 auto-y row align-y-top gap-small padding-small radius-small"]
       57 SETTABLEKS                       R15 R14 K11 ["tag"]
       59 GETTABLEKS                       R15 R2 K18 ["toggle"]
       61 SETTABLEKS                       R15 R14 K12 ["onActivated"]
       63 SETTABLEKS                       R11 R14 K13 ["onStateChanged"]
       65 GETTABLEKS                       R15 R6 K19 ["isHovered"]
       67 SETTABLEKS                       R15 R14 K14 ["isDisabled"]
       69 GETTABLEKS                       R15 R0 K15 ["LayoutOrder"]
       71 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
       73 DUPTABLE                         R15 K24 [{"ExpandButton", "VersionChip", "VersionNote", "OverflowMenu"}]
       74 GETUPVAL                         R17 2
       75 GETTABLEKS                       R16 R17 K9 ["createElement"]
       77 GETUPVAL                         R18 4
       78 GETTABLEKS                       R17 R18 K25 ["IconButton"]
       80 DUPTABLE                         R18 K29 [{"onActivated", "icon", "size", "testId", "isDisabled", "LayoutOrder"}]
       81 GETTABLEKS                       R19 R2 K18 ["toggle"]
       83 SETTABLEKS                       R19 R18 K12 ["onActivated"]
       85 JUMPIF                           R5 ; [+2]
       86 LOADNIL                          R19
       87 JUMP                             ; [+18]
       88 GETTABLEKS                       R20 R2 K30 ["enabled"]
       90 JUMPIFNOT                        R20 ; [+8]
       91 GETUPVAL                         R22 4
       92 GETTABLEKS                       R21 R22 K31 ["Enums"]
       94 GETTABLEKS                       R20 R21 K32 ["IconName"]
       96 GETTABLEKS                       R19 R20 K33 ["ChevronSmallUp"]
       98 JUMP                             ; [+7]
       99 GETUPVAL                         R22 4
      100 GETTABLEKS                       R21 R22 K31 ["Enums"]
      102 GETTABLEKS                       R20 R21 K32 ["IconName"]
      104 GETTABLEKS                       R19 R20 K34 ["ChevronSmallDown"]
      106 SETTABLEKS                       R19 R18 K26 ["icon"]
      108 GETUPVAL                         R22 4
      109 GETTABLEKS                       R21 R22 K31 ["Enums"]
      111 GETTABLEKS                       R20 R21 K35 ["InputSize"]
      113 GETTABLEKS                       R19 R20 K36 ["XSmall"]
      115 SETTABLEKS                       R19 R18 K27 ["size"]
      117 LOADK                            R19 K37 ["--place-version-item-expand-button"]
      118 SETTABLEKS                       R19 R18 K28 ["testId"]
      120 NOT                              R19 R5
      121 SETTABLEKS                       R19 R18 K14 ["isDisabled"]
      123 MOVE                             R19 R1
      124 CALL                             R19 0 1
      125 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      127 CALL                             R16 2 1
      128 SETTABLEKS                       R16 R15 K20 ["ExpandButton"]
      130 GETUPVAL                         R17 2
      131 GETTABLEKS                       R16 R17 K9 ["createElement"]
      133 GETUPVAL                         R18 4
      134 GETTABLEKS                       R17 R18 K38 ["Chip"]
      136 DUPTABLE                         R18 K40 [{"onActivated", "size", "text", "LayoutOrder"}]
      137 LOADNIL                          R19
      138 SETTABLEKS                       R19 R18 K12 ["onActivated"]
      140 GETUPVAL                         R22 4
      141 GETTABLEKS                       R21 R22 K31 ["Enums"]
      143 GETTABLEKS                       R20 R21 K41 ["ChipSize"]
      145 GETTABLEKS                       R19 R20 K42 ["Small"]
      147 SETTABLEKS                       R19 R18 K27 ["size"]
      149 LOADK                            R20 K43 ["v%*"]
      150 GETTABLEKS                       R23 R0 K0 ["metadata"]
      152 GETTABLEKS                       R22 R23 K44 ["version"]
      154 NAMECALL                         R20 R20 K45 ["format"]
      156 CALL                             R20 2 1
      157 MOVE                             R19 R20
      158 SETTABLEKS                       R19 R18 K39 ["text"]
      160 MOVE                             R19 R1
      161 CALL                             R19 0 1
      162 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      164 CALL                             R16 2 1
      165 SETTABLEKS                       R16 R15 K21 ["VersionChip"]
      167 GETUPVAL                         R17 2
      168 GETTABLEKS                       R16 R17 K9 ["createElement"]
      170 GETUPVAL                         R17 5
      171 DUPTABLE                         R18 K47 [{"metadata", "isExpanded", "LayoutOrder"}]
      172 GETTABLEKS                       R19 R0 K0 ["metadata"]
      174 SETTABLEKS                       R19 R18 K0 ["metadata"]
      176 GETTABLEKS                       R19 R2 K30 ["enabled"]
      178 SETTABLEKS                       R19 R18 K46 ["isExpanded"]
      180 MOVE                             R19 R1
      181 CALL                             R19 0 1
      182 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      184 CALL                             R16 2 1
      185 SETTABLEKS                       R16 R15 K22 ["VersionNote"]
      187 GETUPVAL                         R17 2
      188 GETTABLEKS                       R16 R17 K9 ["createElement"]
      190 GETUPVAL                         R17 6
      191 DUPTABLE                         R18 K49 [{"metadata", "isVisible", "isDisabled", "LayoutOrder"}]
      192 GETTABLEKS                       R19 R0 K0 ["metadata"]
      194 SETTABLEKS                       R19 R18 K0 ["metadata"]
      196 SETTABLEKS                       R7 R18 K48 ["isVisible"]
      198 SETTABLEKS                       R9 R18 K14 ["isDisabled"]
      200 MOVE                             R19 R1
      201 CALL                             R19 0 1
      202 SETTABLEKS                       R19 R18 K15 ["LayoutOrder"]
      204 CALL                             R16 2 1
      205 SETTABLEKS                       R16 R15 K23 ["OverflowMenu"]
      207 CALL                             R12 3 -1
      208 RETURN                           R12 -1

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
       30 GETTABLEKS                       R4 R5 K11 ["Contexts"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K12 ["PopoverContext"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R7 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R7 K13 ["Components"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R6 K14 ["OverflowMenu"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R6 K15 ["PlaceVersionNote"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R2 K16 ["createNextOrder"]
       53 GETTABLEKS                       R10 R2 K17 ["useToggleState"]
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R13 R0 K10 ["Src"]
       59 GETTABLEKS                       R12 R13 K18 ["Types"]
       61 CALL                             R11 1 1
       62 DUPCLOSURE                       R12 K19 [PROTO_1]
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 RETURN                           R12 1
