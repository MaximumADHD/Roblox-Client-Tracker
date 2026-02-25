PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["hideConfirmationDialog"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["restoreDefaults"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K3 ["createElement"]
       14 LOADK                            R5 K4 ["TextButton"]
       15 NEWTABLE                         R6 8 0
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K5 ["Tag"]
       20 GETUPVAL                         R8 3
       21 LOADK                            R9 K6 ["Component-ResetMappingsConfirmationDialog"]
       22 LOADK                            R10 K7 ["data-testid=Component-ResetMappingsConfirmationDialog"]
       23 LOADK                            R11 K8 ["CX-Invisible"]
       24 LOADK                            R12 K9 ["X-Fill"]
       25 CALL                             R8 4 1
       26 SETTABLE                         R8 R6 R7
       27 LOADB                            R7 1
       28 SETTABLEKS                       R7 R6 K10 ["Active"]
       30 GETUPVAL                         R7 4
       31 NAMECALL                         R7 R7 K11 ["getNextOrder"]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       36 LOADK                            R7 K13 [""]
       37 SETTABLEKS                       R7 R6 K14 ["Text"]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R8 R9 K15 ["Event"]
       42 GETTABLEKS                       R7 R8 K16 ["Activated"]
       44 GETTABLEKS                       R8 R0 K17 ["hideConfirmationDialog"]
       46 SETTABLE                         R8 R6 R7
       47 DUPTABLE                         R7 K19 [{"DialogContents"}]
       48 GETUPVAL                         R9 1
       49 GETTABLEKS                       R8 R9 K3 ["createElement"]
       51 LOADK                            R9 K20 ["Frame"]
       52 DUPTABLE                         R10 K22 [{"Name", "LayoutOrder"}]
       53 LOADK                            R11 K18 ["DialogContents"]
       54 SETTABLEKS                       R11 R10 K21 ["Name"]
       56 GETUPVAL                         R11 4
       57 NAMECALL                         R11 R11 K11 ["getNextOrder"]
       59 CALL                             R11 1 1
       60 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       62 DUPTABLE                         R11 K25 [{"IconAndTextContainer", "Buttons"}]
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R12 R13 K3 ["createElement"]
       66 LOADK                            R13 K20 ["Frame"]
       67 DUPTABLE                         R14 K22 [{"Name", "LayoutOrder"}]
       68 LOADK                            R15 K23 ["IconAndTextContainer"]
       69 SETTABLEKS                       R15 R14 K21 ["Name"]
       71 GETUPVAL                         R15 4
       72 NAMECALL                         R15 R15 K11 ["getNextOrder"]
       74 CALL                             R15 1 1
       75 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
       77 DUPTABLE                         R15 K28 [{"WarningIcon", "ConfirmationText"}]
       78 GETUPVAL                         R17 1
       79 GETTABLEKS                       R16 R17 K3 ["createElement"]
       81 LOADK                            R17 K29 ["ImageLabel"]
       82 DUPTABLE                         R18 K22 [{"Name", "LayoutOrder"}]
       83 LOADK                            R19 K26 ["WarningIcon"]
       84 SETTABLEKS                       R19 R18 K21 ["Name"]
       86 GETUPVAL                         R19 4
       87 NAMECALL                         R19 R19 K11 ["getNextOrder"]
       89 CALL                             R19 1 1
       90 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
       92 CALL                             R16 2 1
       93 SETTABLEKS                       R16 R15 K26 ["WarningIcon"]
       95 GETUPVAL                         R17 1
       96 GETTABLEKS                       R16 R17 K3 ["createElement"]
       98 LOADK                            R17 K30 ["TextLabel"]
       99 DUPTABLE                         R18 K31 [{"Name", "Text", "LayoutOrder"}]
      100 LOADK                            R19 K27 ["ConfirmationText"]
      101 SETTABLEKS                       R19 R18 K21 ["Name"]
      103 LOADK                            R21 K32 ["ResetMappingsConfirmationDialog"]
      104 LOADK                            R22 K33 ["RestoreDefaultsConfirmation"]
      105 NAMECALL                         R19 R1 K34 ["getText"]
      107 CALL                             R19 3 1
      108 SETTABLEKS                       R19 R18 K14 ["Text"]
      110 GETUPVAL                         R19 4
      111 NAMECALL                         R19 R19 K11 ["getNextOrder"]
      113 CALL                             R19 1 1
      114 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      116 CALL                             R16 2 1
      117 SETTABLEKS                       R16 R15 K27 ["ConfirmationText"]
      119 CALL                             R12 3 1
      120 SETTABLEKS                       R12 R11 K23 ["IconAndTextContainer"]
      122 GETUPVAL                         R13 1
      123 GETTABLEKS                       R12 R13 K3 ["createElement"]
      125 LOADK                            R13 K20 ["Frame"]
      126 DUPTABLE                         R14 K22 [{"Name", "LayoutOrder"}]
      127 LOADK                            R15 K35 ["ButtonsContainer"]
      128 SETTABLEKS                       R15 R14 K21 ["Name"]
      130 GETUPVAL                         R15 4
      131 NAMECALL                         R15 R15 K11 ["getNextOrder"]
      133 CALL                             R15 1 1
      134 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      136 DUPTABLE                         R15 K38 [{"NoButton", "YesButton"}]
      137 GETUPVAL                         R17 1
      138 GETTABLEKS                       R16 R17 K3 ["createElement"]
      140 LOADK                            R17 K4 ["TextButton"]
      141 NEWTABLE                         R18 4 0
      143 GETUPVAL                         R20 1
      144 GETTABLEKS                       R19 R20 K5 ["Tag"]
      146 LOADK                            R20 K39 ["Button HeaderButton Secondary"]
      147 SETTABLE                         R20 R18 R19
      148 LOADK                            R21 K32 ["ResetMappingsConfirmationDialog"]
      149 LOADK                            R22 K40 ["No"]
      150 NAMECALL                         R19 R1 K34 ["getText"]
      152 CALL                             R19 3 1
      153 SETTABLEKS                       R19 R18 K14 ["Text"]
      155 GETUPVAL                         R19 4
      156 NAMECALL                         R19 R19 K11 ["getNextOrder"]
      158 CALL                             R19 1 1
      159 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      161 GETUPVAL                         R21 1
      162 GETTABLEKS                       R20 R21 K15 ["Event"]
      164 GETTABLEKS                       R19 R20 K16 ["Activated"]
      166 GETTABLEKS                       R20 R0 K17 ["hideConfirmationDialog"]
      168 SETTABLE                         R20 R18 R19
      169 CALL                             R16 2 1
      170 SETTABLEKS                       R16 R15 K36 ["NoButton"]
      172 GETUPVAL                         R17 1
      173 GETTABLEKS                       R16 R17 K3 ["createElement"]
      175 LOADK                            R17 K4 ["TextButton"]
      176 NEWTABLE                         R18 4 0
      178 GETUPVAL                         R20 1
      179 GETTABLEKS                       R19 R20 K5 ["Tag"]
      181 LOADK                            R20 K41 ["Button HeaderButton Primary"]
      182 SETTABLE                         R20 R18 R19
      183 LOADK                            R21 K32 ["ResetMappingsConfirmationDialog"]
      184 LOADK                            R22 K42 ["Yes"]
      185 NAMECALL                         R19 R1 K34 ["getText"]
      187 CALL                             R19 3 1
      188 SETTABLEKS                       R19 R18 K14 ["Text"]
      190 GETUPVAL                         R19 4
      191 NAMECALL                         R19 R19 K11 ["getNextOrder"]
      193 CALL                             R19 1 1
      194 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      196 GETUPVAL                         R21 1
      197 GETTABLEKS                       R20 R21 K15 ["Event"]
      199 GETTABLEKS                       R19 R20 K16 ["Activated"]
      201 NEWCLOSURE                       R20 P0
      202 CAPTURE                          VAL R0
      203 CAPTURE                          VAL R3
      204 SETTABLE                         R20 R18 R19
      205 CALL                             R16 2 1
      206 SETTABLEKS                       R16 R15 K37 ["YesButton"]
      208 CALL                             R12 3 1
      209 SETTABLEKS                       R12 R11 K24 ["Buttons"]
      211 CALL                             R8 3 1
      212 SETTABLEKS                       R8 R7 K18 ["DialogContents"]
      214 CALL                             R4 3 -1
      215 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R4 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["Util"]
       27 GETTABLEKS                       R4 R5 K12 ["LayoutOrderIterator"]
       29 GETTABLEKS                       R5 R4 K13 ["new"]
       31 CALL                             R5 0 1
       32 GETTABLEKS                       R7 R2 K14 ["Styling"]
       34 GETTABLEKS                       R6 R7 K15 ["joinTags"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R10 R0 K16 ["Src"]
       40 GETTABLEKS                       R9 R10 K11 ["Util"]
       42 GETTABLEKS                       R8 R9 K17 ["MappingsActionsContext"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K18 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 GETTABLEKS                       R9 R1 K19 ["memo"]
       53 MOVE                             R10 R8
       54 CALL                             R9 1 -1
       55 RETURN                           R9 -1
