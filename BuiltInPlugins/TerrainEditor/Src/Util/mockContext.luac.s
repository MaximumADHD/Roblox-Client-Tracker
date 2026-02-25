PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["Expected story to be a table"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K6 ["provideMockContext"]
       18 MOVE                             R3 R1
       19 JUMPIF                           R3 ; [+1]
       20 GETUPVAL                         R3 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K7 ["createElement"]
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R5 R6 K8 ["FoundationProvider"]
       27 DUPTABLE                         R6 K10 [{"theme"}]
       28 GETUPVAL                         R10 3
       29 GETTABLEKS                       R9 R10 K11 ["Enums"]
       31 GETTABLEKS                       R8 R9 K12 ["Theme"]
       33 GETTABLEKS                       R7 R8 K13 ["Dark"]
       35 SETTABLEKS                       R7 R6 K9 ["theme"]
       37 MOVE                             R7 R0
       38 CALL                             R4 3 -1
       39 CALL                             R2 -1 -1
       40 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Foundation"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K9 ["MaterialFramework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K10 ["TestHelpers"]
       39 GETTABLEKS                       R6 R2 K11 ["ContextServices"]
       41 GETTABLEKS                       R8 R5 K12 ["Instances"]
       43 GETTABLEKS                       R7 R8 K13 ["MockPlugin"]
       45 GETIMPORT                        R8 K4 [require]
       47 GETTABLEKS                       R11 R0 K14 ["Src"]
       49 GETTABLEKS                       R10 R11 K15 ["Resources"]
       51 GETTABLEKS                       R9 R10 K16 ["MakeTheme"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K4 [require]
       56 GETTABLEKS                       R12 R0 K14 ["Src"]
       58 GETTABLEKS                       R11 R12 K17 ["Controllers"]
       60 GETTABLEKS                       R10 R11 K18 ["PluginController"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K4 [require]
       65 GETTABLEKS                       R13 R0 K14 ["Src"]
       67 GETTABLEKS                       R12 R13 K17 ["Controllers"]
       69 GETTABLEKS                       R11 R12 K19 ["ShortcutController"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K4 [require]
       74 GETTABLEKS                       R14 R0 K14 ["Src"]
       76 GETTABLEKS                       R13 R14 K17 ["Controllers"]
       78 GETTABLEKS                       R12 R13 K20 ["ToolController"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K4 [require]
       83 GETTABLEKS                       R15 R0 K14 ["Src"]
       85 GETTABLEKS                       R14 R15 K21 ["Util"]
       87 GETTABLEKS                       R13 R14 K22 ["mockResourceTable"]
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R14 R4 K23 ["Context"]
       92 GETTABLEKS                       R13 R14 K24 ["StudioServices"]
       94 DUPTABLE                         R14 K26 [{"libraries"}]
       95 NEWTABLE                         R15 2 0
       97 GETTABLEKS                       R17 R4 K15 ["Resources"]
       99 GETTABLEKS                       R16 R17 K27 ["LOCALIZATION_PROJECT_NAME"]
      101 DUPTABLE                         R17 K30 [{"stringResourceTable", "translationResourceTable"}]
      102 SETTABLEKS                       R12 R17 K28 ["stringResourceTable"]
      104 SETTABLEKS                       R12 R17 K29 ["translationResourceTable"]
      106 SETTABLE                         R17 R15 R16
      107 GETTABLEKS                       R17 R2 K15 ["Resources"]
      109 GETTABLEKS                       R16 R17 K27 ["LOCALIZATION_PROJECT_NAME"]
      111 DUPTABLE                         R17 K30 [{"stringResourceTable", "translationResourceTable"}]
      112 SETTABLEKS                       R12 R17 K28 ["stringResourceTable"]
      114 SETTABLEKS                       R12 R17 K29 ["translationResourceTable"]
      116 SETTABLE                         R17 R15 R16
      117 SETTABLEKS                       R15 R14 K25 ["libraries"]
      119 GETTABLEKS                       R15 R7 K31 ["new"]
      121 LOADK                            R16 K32 ["TerrainEditor"]
      122 CALL                             R15 1 1
      123 NAMECALL                         R16 R15 K33 ["GetMouse"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K35 [Ray.new]
      128 LOADK                            R18 K36 [{0, 0, 0}]
      129 LOADK                            R19 K37 [{1, 0, 0}]
      130 CALL                             R17 2 1
      131 SETTABLEKS                       R17 R16 K38 ["UnitRay"]
      133 NAMECALL                         R16 R15 K33 ["GetMouse"]
      135 CALL                             R16 1 1
      136 LOADN                            R17 0
      137 SETTABLEKS                       R17 R16 K39 ["X"]
      139 NAMECALL                         R16 R15 K33 ["GetMouse"]
      141 CALL                             R16 1 1
      142 LOADN                            R17 0
      143 SETTABLEKS                       R17 R16 K40 ["Y"]
      145 GETTABLEKS                       R17 R6 K41 ["Analytics"]
      147 GETTABLEKS                       R16 R17 K42 ["mock"]
      149 CALL                             R16 0 1
      150 GETTABLEKS                       R18 R6 K43 ["Localization"]
      152 GETTABLEKS                       R17 R18 K42 ["mock"]
      154 MOVE                             R18 R14
      155 CALL                             R17 1 1
      156 GETTABLEKS                       R18 R9 K42 ["mock"]
      158 MOVE                             R19 R15
      159 CALL                             R18 1 1
      160 GETTABLEKS                       R19 R10 K31 ["new"]
      162 MOVE                             R20 R15
      163 MOVE                             R21 R17
      164 CALL                             R19 2 1
      165 GETTABLEKS                       R20 R13 K42 ["mock"]
      167 CALL                             R20 0 1
      168 MOVE                             R21 R8
      169 LOADB                            R22 1
      170 CALL                             R21 1 1
      171 GETTABLEKS                       R22 R11 K42 ["mock"]
      173 MOVE                             R23 R18
      174 MOVE                             R24 R19
      175 MOVE                             R25 R16
      176 MOVE                             R26 R17
      177 MOVE                             R27 R21
      178 CALL                             R22 5 1
      179 NEWTABLE                         R23 0 7
      181 MOVE                             R24 R21
      182 MOVE                             R25 R16
      183 MOVE                             R26 R17
      184 MOVE                             R27 R18
      185 MOVE                             R28 R19
      186 MOVE                             R29 R20
      187 MOVE                             R30 R22
      188 SETLIST                          R23 R24 7 [1]
      190 DUPCLOSURE                       R24 K44 [PROTO_0]
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R23
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R1
      195 RETURN                           R24 1
