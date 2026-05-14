PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 CALL                             R0 1 1
        3 SETUPVAL                         R0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["StyleSheet"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R0 R4 K4 ["Name"]
        6 GETUPVAL                         R5 0
        7 JUMPIFNOT                        R5 ; [+3]
        8 GETUPVAL                         R5 1
        9 SETTABLEKS                       R5 R4 K5 ["Parent"]
       11 JUMPIFNOT                        R2 ; [+123]
       12 MOVE                             R5 R2
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 FASTCALL1                        TYPEOF R9 ; [+3]
       17 MOVE                             R11 R9
       18 GETIMPORT                        R10 K7 [typeof]
       20 CALL                             R10 1 1
       21 JUMPIFNOTEQKS                    R10 K8 ["Color3"] ; [+38]
       23 GETUPVAL                         R10 2
       24 MOVE                             R11 R9
       25 CALL                             R10 1 3
       26 GETUPVAL                         R13 3
       27 JUMPIFNOT                        R13 ; [+26]
       28 JUMPIFEQ                         R9 R10 ; [+25]
       30 GETIMPORT                        R13 K10 [print]
       32 LOADK                            R14 K11 ["[DebugDeveloperFrameworkSdk] Stylesheet rule %s: (%s) replaced with the closest color system color %s[%s]: (%s)"]
       33 FASTCALL1                        TOSTRING R8 ; [+3]
       34 MOVE                             R17 R8
       35 GETIMPORT                        R16 K13 [tostring]
       37 CALL                             R16 1 1
       38 FASTCALL1                        TOSTRING R9 ; [+3]
       39 MOVE                             R18 R9
       40 GETIMPORT                        R17 K13 [tostring]
       42 CALL                             R17 1 1
       43 MOVE                             R18 R11
       44 MOVE                             R19 R12
       45 FASTCALL1                        TOSTRING R10 ; [+3]
       46 MOVE                             R21 R10
       47 GETIMPORT                        R20 K13 [tostring]
       49 CALL                             R20 1 1
       50 NAMECALL                         R14 R14 K14 ["format"]
       52 CALL                             R14 6 -1
       53 CALL                             R13 -1 0
       54 MOVE                             R15 R8
       55 MOVE                             R16 R10
       56 NAMECALL                         R13 R4 K15 ["SetAttribute"]
       58 CALL                             R13 3 0
       59 JUMP                             ; [+73]
       60 FASTCALL1                        TYPEOF R9 ; [+3]
       61 MOVE                             R11 R9
       62 GETIMPORT                        R10 K7 [typeof]
       64 CALL                             R10 1 1
       65 JUMPIFNOTEQKS                    R10 K16 ["ColorSequence"] ; [+62]
       67 NEWTABLE                         R10 0 0
       69 GETTABLEKS                       R11 R9 K17 ["Keypoints"]
       71 LOADNIL                          R12
       72 LOADNIL                          R13
       73 FORGPREP                         R11
       74 GETUPVAL                         R16 2
       75 GETTABLEKS                       R17 R15 K18 ["Value"]
       77 CALL                             R16 1 3
       78 GETUPVAL                         R19 3
       79 JUMPIFNOT                        R19 ; [+26]
       80 JUMPIFEQ                         R9 R16 ; [+25]
       82 GETIMPORT                        R19 K10 [print]
       84 LOADK                            R20 K19 ["[DebugDeveloperFrameworkSdk] Stylesheet rule %s: (%s) replaced color sequence color with the closest color system color %s[%s]: (%s)"]
       85 FASTCALL1                        TOSTRING R8 ; [+3]
       86 MOVE                             R23 R8
       87 GETIMPORT                        R22 K13 [tostring]
       89 CALL                             R22 1 1
       90 FASTCALL1                        TOSTRING R9 ; [+3]
       91 MOVE                             R24 R9
       92 GETIMPORT                        R23 K13 [tostring]
       94 CALL                             R23 1 1
       95 MOVE                             R24 R17
       96 MOVE                             R25 R18
       97 FASTCALL1                        TOSTRING R16 ; [+3]
       98 MOVE                             R27 R16
       99 GETIMPORT                        R26 K13 [tostring]
      101 CALL                             R26 1 1
      102 NAMECALL                         R20 R20 K14 ["format"]
      104 CALL                             R20 6 -1
      105 CALL                             R19 -1 0
      106 MOVE                             R20 R10
      107 GETIMPORT                        R21 K21 [ColorSequenceKeypoint.new]
      109 GETTABLEKS                       R22 R15 K22 ["Time"]
      111 MOVE                             R23 R16
      112 CALL                             R21 2 -1
      113 FASTCALL                         TABLE_INSERT ; [+2]
      114 GETIMPORT                        R19 K25 [table.insert]
      116 CALL                             R19 -1 0
      117 FORGLOOP                         R11 2 ; [-44]
      119 MOVE                             R13 R8
      120 GETIMPORT                        R14 K26 [ColorSequence.new]
      122 MOVE                             R15 R10
      123 CALL                             R14 1 -1
      124 NAMECALL                         R11 R4 K15 ["SetAttribute"]
      126 CALL                             R11 -1 0
      127 JUMP                             ; [+5]
      128 MOVE                             R12 R8
      129 MOVE                             R13 R9
      130 NAMECALL                         R10 R4 K15 ["SetAttribute"]
      132 CALL                             R10 3 0
      133 FORGLOOP                         R5 2 ; [-118]
      135 JUMPIFNOT                        R1 ; [+37]
      136 LOADNIL                          R5
      137 GETIMPORT                        R6 K28 [pcall]
      139 NEWCLOSURE                       R7 P0
      140 CAPTURE                          REF R5
      141 CAPTURE                          UPVAL U4
      142 CAPTURE                          VAL R1
      143 CALL                             R6 1 1
      144 JUMPIF                           R6 ; [+9]
      145 GETIMPORT                        R6 K30 [error]
      147 LOADK                            R8 K31 ["Zero priorities mixed with non-zero priorities in StyleRule children for StyleSheet: %*"]
      148 MOVE                             R10 R0
      149 NAMECALL                         R8 R8 K14 ["format"]
      151 CALL                             R8 2 1
      152 MOVE                             R7 R8
      153 CALL                             R6 1 0
      154 MOVE                             R6 R1
      155 LOADNIL                          R7
      156 LOADNIL                          R8
      157 FORGPREP                         R6
      158 JUMPIFNOT                        R5 ; [+9]
      159 MOVE                             R13 R10
      160 NAMECALL                         R15 R4 K32 ["GetStyleRules"]
      162 CALL                             R15 1 1
      163 LENGTH                           R14 R15
      164 NAMECALL                         R11 R4 K33 ["InsertStyleRule"]
      166 CALL                             R11 3 0
      167 JUMP                             ; [+2]
      168 SETTABLEKS                       R4 R10 K5 ["Parent"]
      170 FORGLOOP                         R6 2 ; [-13]
      172 CLOSEUPVALS                      R5
      173 JUMPIFNOT                        R3 ; [+4]
      174 MOVE                             R7 R3
      175 NAMECALL                         R5 R4 K34 ["SetDerives"]
      177 CALL                             R5 2 0
      178 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R2 R1 K6 ["Parent"]
       13 GETIMPORT                        R3 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["shouldOrderStyleRulesByInsertion"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K8 [require]
       20 GETTABLEKS                       R5 R2 K10 ["Style"]
       22 GETTABLEKS                       R5 R5 K11 ["getClosestColorSystemColor"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K8 [require]
       27 GETTABLEKS                       R6 R2 K12 ["SharedFlags"]
       29 GETTABLEKS                       R6 R6 K13 ["getFFlagDevFrameworkParentStylesToDm"]
       31 CALL                             R5 1 1
       32 CALL                             R5 0 1
       33 GETIMPORT                        R6 K1 [game]
       35 LOADK                            R8 K14 ["DebugDeveloperFrameworkSdk"]
       36 NAMECALL                         R6 R6 K15 ["GetFastFlag"]
       38 CALL                             R6 2 1
       39 DUPCLOSURE                       R7 K16 [PROTO_1]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R3
       45 RETURN                           R7 1
