PROTO_0:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 DUPTABLE                         R3 K2 [{"Color3", "Transparency"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["content"]
        6 GETTABLEKS                       R4 R4 K4 ["style"]
        8 GETTABLEKS                       R4 R4 K0 ["Color3"]
       10 SETTABLEKS                       R4 R3 K0 ["Color3"]
       12 ADD                              R4 R2 R1
       13 SETTABLEKS                       R4 R3 K1 ["Transparency"]
       15 RETURN                           R3 1

PROTO_1:
        0 GETTABLEN                        R1 R0 1
        1 GETTABLEN                        R2 R0 2
        2 DUPTABLE                         R3 K2 [{"Color3", "Transparency"}]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K3 ["content"]
        6 GETTABLEKS                       R4 R4 K4 ["style"]
        8 GETTABLEKS                       R4 R4 K0 ["Color3"]
       10 SETTABLEKS                       R4 R3 K0 ["Color3"]
       12 ADD                              R4 R2 R1
       13 SETTABLEKS                       R4 R3 K1 ["Transparency"]
       15 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["disabledTransparencyBinding"]
        2 GETTABLEKS                       R2 R0 K1 ["textTransparencyBinding"]
        4 GETUPVAL                         R3 0
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 1
        7 CALL                             R4 0 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R6 R0 K2 ["icon"]
       11 GETTABLEKS                       R7 R0 K3 ["size"]
       13 CALL                             R5 2 2
       14 GETUPVAL                         R7 3
       15 CALL                             R7 0 1
       16 GETUPVAL                         R8 4
       17 MOVE                             R9 R3
       18 GETTABLEKS                       R10 R0 K3 ["size"]
       20 GETTABLEKS                       R11 R0 K4 ["variant"]
       22 JUMPIFNOT                        R7 ; [+3]
       23 GETTABLEKS                       R12 R7 K5 ["colorMode"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R12
       27 CALL                             R8 4 1
       28 GETTABLEKS                       R9 R0 K2 ["icon"]
       30 JUMPIF                           R9 ; [+2]
       31 LOADNIL                          R9
       32 RETURN                           R9 1
       33 GETUPVAL                         R9 5
       34 GETTABLEKS                       R10 R0 K2 ["icon"]
       36 CALL                             R9 1 1
       37 JUMPIFNOT                        R9 ; [+115]
       38 GETUPVAL                         R9 6
       39 GETTABLEKS                       R9 R9 K6 ["createElement"]
       41 GETUPVAL                         R10 7
       42 DUPTABLE                         R11 K14 [{["Text"], ["fontStyle"], ["tag"] = "anchor-center-center position-center-center", ["Size"], ["textStyle"], ["testId"]}]
       43 GETUPVAL                         R13 8
       44 GETTABLEKS                       R14 R0 K2 ["icon"]
       46 CALL                             R13 1 1
       47 JUMPIFNOT                        R13 ; [+7]
       48 GETUPVAL                         R13 9
       49 GETTABLEKS                       R14 R0 K2 ["icon"]
       51 GETTABLE                         R12 R13 R14
       52 GETTABLEKS                       R12 R12 K15 ["name"]
       54 JUMP                             ; [+2]
       55 GETTABLEKS                       R12 R0 K2 ["icon"]
       57 SETTABLEKS                       R12 R11 K7 ["Text"]
       59 DUPTABLE                         R12 K18 [{"Font", "FontSize"}]
       60 GETUPVAL                         R14 10
       61 GETTABLEKS                       R14 R14 K16 ["Font"]
       63 GETUPVAL                         R16 8
       64 GETTABLEKS                       R17 R0 K2 ["icon"]
       66 CALL                             R16 1 1
       67 JUMPIFNOT                        R16 ; [+7]
       68 GETUPVAL                         R16 9
       69 GETTABLEKS                       R17 R0 K2 ["icon"]
       71 GETTABLE                         R15 R16 R17
       72 GETTABLEKS                       R15 R15 K4 ["variant"]
       74 JUMP                             ; [+5]
       75 GETUPVAL                         R15 10
       76 GETTABLEKS                       R15 R15 K19 ["IconVariant"]
       78 GETTABLEKS                       R15 R15 K20 ["Regular"]
       80 GETTABLE                         R13 R14 R15
       81 SETTABLEKS                       R13 R12 K16 ["Font"]
       83 GETTABLEKS                       R13 R8 K2 ["icon"]
       85 GETTABLEKS                       R13 R13 K3 ["size"]
       87 GETTABLEKS                       R13 R13 K21 ["Y"]
       89 GETTABLEKS                       R13 R13 K22 ["Offset"]
       91 SETTABLEKS                       R13 R12 K17 ["FontSize"]
       93 SETTABLEKS                       R12 R11 K8 ["fontStyle"]
       95 GETTABLEKS                       R12 R8 K2 ["icon"]
       97 GETTABLEKS                       R12 R12 K3 ["size"]
       99 SETTABLEKS                       R12 R11 K11 ["Size"]
      101 GETUPVAL                         R12 6
      102 GETTABLEKS                       R12 R12 K23 ["joinBindings"]
      104 NEWTABLE                         R13 0 2
      106 MOVE                             R14 R1
      107 MOVE                             R15 R2
      108 SETLIST                          R13 R14 2 [1]
      110 CALL                             R12 1 1
      111 NEWCLOSURE                       R14 P0
      112 CAPTURE                          VAL R8
      113 NAMECALL                         R12 R12 K24 ["map"]
      115 CALL                             R12 2 1
      116 SETTABLEKS                       R12 R11 K12 ["textStyle"]
      118 LOADK                            R13 K25 ["%*--icon"]
      119 GETTABLEKS                       R15 R0 K13 ["testId"]
      121 NAMECALL                         R13 R13 K26 ["format"]
      123 CALL                             R13 2 1
      124 MOVE                             R12 R13
      125 SETTABLEKS                       R12 R11 K13 ["testId"]
      127 DUPTABLE                         R12 K28 [{"UITextSizeConstraint"}]
      128 LOADN                            R14 0
      129 JUMPIFNOTLT                      R14 R4 ; [+18]
      131 GETUPVAL                         R13 6
      132 GETTABLEKS                       R13 R13 K6 ["createElement"]
      134 LOADK                            R14 K27 ["UITextSizeConstraint"]
      135 DUPTABLE                         R15 K30 [{"MaxTextSize"}]
      136 GETTABLEKS                       R16 R8 K2 ["icon"]
      138 GETTABLEKS                       R16 R16 K3 ["size"]
      140 GETTABLEKS                       R16 R16 K21 ["Y"]
      142 GETTABLEKS                       R16 R16 K22 ["Offset"]
      144 SETTABLEKS                       R16 R15 K29 ["MaxTextSize"]
      146 CALL                             R13 2 1
      147 JUMP                             ; [+1]
      148 LOADNIL                          R13
      149 SETTABLEKS                       R13 R12 K27 ["UITextSizeConstraint"]
      151 CALL                             R9 3 -1
      152 RETURN                           R9 -1
      153 GETUPVAL                         R9 6
      154 GETTABLEKS                       R9 R9 K6 ["createElement"]
      156 GETUPVAL                         R10 11
      157 DUPTABLE                         R11 K34 [{["tag"] = "anchor-center-center position-center-center", ["Image"], ["Size"], ["imageStyle"], ["scale"], ["testId"]}]
      158 GETTABLEKS                       R12 R0 K2 ["icon"]
      160 SETTABLEKS                       R12 R11 K31 ["Image"]
      162 JUMPIFNOT                        R5 ; [+8]
      163 GETIMPORT                        R12 K37 [UDim2.fromOffset]
      165 GETTABLEKS                       R13 R5 K38 ["X"]
      167 GETTABLEKS                       R14 R5 K21 ["Y"]
      169 CALL                             R12 2 1
      170 JUMP                             ; [+4]
      171 GETTABLEKS                       R12 R8 K2 ["icon"]
      173 GETTABLEKS                       R12 R12 K3 ["size"]
      175 SETTABLEKS                       R12 R11 K11 ["Size"]
      177 GETUPVAL                         R12 6
      178 GETTABLEKS                       R12 R12 K23 ["joinBindings"]
      180 NEWTABLE                         R13 0 2
      182 MOVE                             R14 R1
      183 MOVE                             R15 R2
      184 SETLIST                          R13 R14 2 [1]
      186 CALL                             R12 1 1
      187 NEWCLOSURE                       R14 P1
      188 CAPTURE                          VAL R8
      189 NAMECALL                         R12 R12 K24 ["map"]
      191 CALL                             R12 2 1
      192 SETTABLEKS                       R12 R11 K32 ["imageStyle"]
      194 SETTABLEKS                       R6 R11 K33 ["scale"]
      196 LOADK                            R13 K25 ["%*--icon"]
      197 GETTABLEKS                       R15 R0 K13 ["testId"]
      199 NAMECALL                         R13 R13 K26 ["format"]
      201 CALL                             R13 2 1
      202 MOVE                             R12 R13
      203 SETTABLEKS                       R12 R11 K13 ["testId"]
      205 CALL                             R9 2 -1
      206 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K9 ["Migration"]
       16 GETTABLEKS                       R3 R4 K8 ["uiblox"]
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R1 K10 ["React"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Enums"]
       27 GETTABLEKS                       R6 R6 K12 ["InputSize"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETIMPORT                        R7 K1 [script]
       34 GETTABLEKS                       R7 R7 K4 ["Parent"]
       36 GETTABLEKS                       R7 R7 K13 ["Types"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K14 ["Components"]
       43 GETTABLEKS                       R8 R8 K15 ["Image"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Components"]
       50 GETTABLEKS                       R9 R9 K16 ["Text"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K6 [require]
       55 GETTABLEKS                       R10 R0 K17 ["Utility"]
       57 GETTABLEKS                       R10 R10 K18 ["getIconScale"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETTABLEKS                       R11 R0 K17 ["Utility"]
       64 GETTABLEKS                       R11 R11 K19 ["iconMigrationUtils"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R10 K20 ["isMigrated"]
       69 GETTABLEKS                       R12 R10 K21 ["isBuilderOrMigratedIcon"]
       71 GETIMPORT                        R13 K6 [require]
       73 GETIMPORT                        R14 K1 [script]
       75 GETTABLEKS                       R14 R14 K4 ["Parent"]
       77 GETTABLEKS                       R14 R14 K22 ["useButtonVariants"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R15 R0 K23 ["Providers"]
       84 GETTABLEKS                       R15 R15 K24 ["Style"]
       86 GETTABLEKS                       R15 R15 K25 ["useTextSizeOffset"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K6 [require]
       91 GETTABLEKS                       R16 R0 K23 ["Providers"]
       93 GETTABLEKS                       R16 R16 K24 ["Style"]
       95 GETTABLEKS                       R16 R16 K26 ["useTokens"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R17 R0 K23 ["Providers"]
      102 GETTABLEKS                       R17 R17 K24 ["Style"]
      104 GETTABLEKS                       R17 R17 K27 ["PresentationContext"]
      106 CALL                             R16 1 1
      107 GETTABLEKS                       R16 R16 K28 ["usePresentationContext"]
      109 DUPCLOSURE                       R17 K29 [PROTO_2]
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R7
      122 RETURN                           R17 1
