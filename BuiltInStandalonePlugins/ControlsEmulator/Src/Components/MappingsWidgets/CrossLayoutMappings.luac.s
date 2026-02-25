PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["side"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Left"] ; [+10]
        5 GETIMPORT                        R0 K4 [UDim2.new]
        7 GETUPVAL                         R2 1
        8 MINUS                            R1 R2
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 LOADN                            R4 0
       12 CALL                             R0 4 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K0 ["side"]
       17 JUMPIFNOTEQKS                    R0 K5 ["Right"] ; [+9]
       19 GETIMPORT                        R0 K4 [UDim2.new]
       21 GETUPVAL                         R1 1
       22 LOADN                            R2 0
       23 LOADN                            R3 0
       24 LOADN                            R4 0
       25 CALL                             R0 4 -1
       26 RETURN                           R0 -1
       27 GETIMPORT                        R0 K4 [UDim2.new]
       29 LOADN                            R1 0
       30 LOADN                            R2 0
       31 LOADN                            R3 0
       32 LOADN                            R4 0
       33 CALL                             R0 4 -1
       34 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["side"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K2 ["createElement"]
       16 LOADK                            R3 K3 ["Frame"]
       17 NEWTABLE                         R4 1 0
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K4 ["Tag"]
       22 LOADK                            R6 K5 ["Mapping-Widget Width-Scaling data-testid=CrossLayoutMappings"]
       23 SETTABLE                         R6 R4 R5
       24 DUPTABLE                         R5 K12 [{"UpLabel", "RightLabel", "LeftLabel", "DownLabel", "CenterLabel", "UpArrow"}]
       25 GETTABLEKS                       R7 R0 K13 ["upKeyName"]
       27 JUMPIFEQKNIL                     R7 ; [+30]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K2 ["createElement"]
       32 GETUPVAL                         R7 2
       33 DUPTABLE                         R8 K16 [{"keyName", "side", "Position"}]
       34 GETTABLEKS                       R9 R0 K13 ["upKeyName"]
       36 SETTABLEKS                       R9 R8 K14 ["keyName"]
       38 GETTABLEKS                       R9 R0 K1 ["side"]
       40 SETTABLEKS                       R9 R8 K1 ["side"]
       42 GETTABLEKS                       R11 R0 K15 ["Position"]
       44 GETIMPORT                        R12 K19 [UDim2.new]
       46 LOADN                            R13 0
       47 LOADN                            R14 0
       48 GETUPVAL                         R16 1
       49 MINUS                            R15 R16
       50 LOADN                            R16 0
       51 CALL                             R12 4 1
       52 ADD                              R10 R11 R12
       53 ADD                              R9 R10 R1
       54 SETTABLEKS                       R9 R8 K15 ["Position"]
       56 CALL                             R6 2 1
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R5 K6 ["UpLabel"]
       61 GETTABLEKS                       R7 R0 K20 ["rightKeyName"]
       63 JUMPIFEQKNIL                     R7 ; [+29]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R6 R7 K2 ["createElement"]
       68 GETUPVAL                         R7 2
       69 DUPTABLE                         R8 K16 [{"keyName", "side", "Position"}]
       70 GETTABLEKS                       R9 R0 K20 ["rightKeyName"]
       72 SETTABLEKS                       R9 R8 K14 ["keyName"]
       74 GETTABLEKS                       R9 R0 K1 ["side"]
       76 SETTABLEKS                       R9 R8 K1 ["side"]
       78 GETTABLEKS                       R11 R0 K15 ["Position"]
       80 GETIMPORT                        R12 K19 [UDim2.new]
       82 GETUPVAL                         R13 1
       83 LOADN                            R14 0
       84 LOADN                            R15 0
       85 LOADN                            R16 0
       86 CALL                             R12 4 1
       87 ADD                              R10 R11 R12
       88 ADD                              R9 R10 R1
       89 SETTABLEKS                       R9 R8 K15 ["Position"]
       91 CALL                             R6 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R6
       94 SETTABLEKS                       R6 R5 K7 ["RightLabel"]
       96 GETTABLEKS                       R7 R0 K21 ["leftKeyName"]
       98 JUMPIFEQKNIL                     R7 ; [+30]
      100 GETUPVAL                         R7 0
      101 GETTABLEKS                       R6 R7 K2 ["createElement"]
      103 GETUPVAL                         R7 2
      104 DUPTABLE                         R8 K16 [{"keyName", "side", "Position"}]
      105 GETTABLEKS                       R9 R0 K21 ["leftKeyName"]
      107 SETTABLEKS                       R9 R8 K14 ["keyName"]
      109 GETTABLEKS                       R9 R0 K1 ["side"]
      111 SETTABLEKS                       R9 R8 K1 ["side"]
      113 GETTABLEKS                       R11 R0 K15 ["Position"]
      115 GETIMPORT                        R12 K19 [UDim2.new]
      117 GETUPVAL                         R14 1
      118 MINUS                            R13 R14
      119 LOADN                            R14 0
      120 LOADN                            R15 0
      121 LOADN                            R16 0
      122 CALL                             R12 4 1
      123 ADD                              R10 R11 R12
      124 ADD                              R9 R10 R1
      125 SETTABLEKS                       R9 R8 K15 ["Position"]
      127 CALL                             R6 2 1
      128 JUMP                             ; [+1]
      129 LOADNIL                          R6
      130 SETTABLEKS                       R6 R5 K8 ["LeftLabel"]
      132 GETTABLEKS                       R7 R0 K22 ["downKeyName"]
      134 JUMPIFEQKNIL                     R7 ; [+29]
      136 GETUPVAL                         R7 0
      137 GETTABLEKS                       R6 R7 K2 ["createElement"]
      139 GETUPVAL                         R7 2
      140 DUPTABLE                         R8 K16 [{"keyName", "side", "Position"}]
      141 GETTABLEKS                       R9 R0 K22 ["downKeyName"]
      143 SETTABLEKS                       R9 R8 K14 ["keyName"]
      145 GETTABLEKS                       R9 R0 K1 ["side"]
      147 SETTABLEKS                       R9 R8 K1 ["side"]
      149 GETTABLEKS                       R11 R0 K15 ["Position"]
      151 GETIMPORT                        R12 K19 [UDim2.new]
      153 LOADN                            R13 0
      154 LOADN                            R14 0
      155 GETUPVAL                         R15 1
      156 LOADN                            R16 0
      157 CALL                             R12 4 1
      158 ADD                              R10 R11 R12
      159 ADD                              R9 R10 R1
      160 SETTABLEKS                       R9 R8 K15 ["Position"]
      162 CALL                             R6 2 1
      163 JUMP                             ; [+1]
      164 LOADNIL                          R6
      165 SETTABLEKS                       R6 R5 K9 ["DownLabel"]
      167 GETTABLEKS                       R7 R0 K23 ["centerKeyName"]
      169 JUMPIFEQKNIL                     R7 ; [+29]
      171 GETUPVAL                         R7 0
      172 GETTABLEKS                       R6 R7 K2 ["createElement"]
      174 GETUPVAL                         R7 2
      175 DUPTABLE                         R8 K16 [{"keyName", "side", "Position"}]
      176 GETTABLEKS                       R9 R0 K23 ["centerKeyName"]
      178 SETTABLEKS                       R9 R8 K14 ["keyName"]
      180 GETTABLEKS                       R9 R0 K1 ["side"]
      182 SETTABLEKS                       R9 R8 K1 ["side"]
      184 GETTABLEKS                       R11 R0 K15 ["Position"]
      186 GETIMPORT                        R12 K19 [UDim2.new]
      188 LOADN                            R13 0
      189 LOADN                            R14 0
      190 LOADN                            R15 0
      191 LOADN                            R16 0
      192 CALL                             R12 4 1
      193 ADD                              R10 R11 R12
      194 ADD                              R9 R10 R1
      195 SETTABLEKS                       R9 R8 K15 ["Position"]
      197 CALL                             R6 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R6
      200 SETTABLEKS                       R6 R5 K10 ["CenterLabel"]
      202 GETUPVAL                         R7 0
      203 GETTABLEKS                       R6 R7 K2 ["createElement"]
      205 GETUPVAL                         R7 3
      206 DUPTABLE                         R8 K27 [{"arrowStart", "arrowDestination", "arrowBendPoint"}]
      207 GETTABLEKS                       R9 R0 K15 ["Position"]
      209 SETTABLEKS                       R9 R8 K24 ["arrowStart"]
      211 GETTABLEKS                       R9 R0 K25 ["arrowDestination"]
      213 SETTABLEKS                       R9 R8 K25 ["arrowDestination"]
      215 GETTABLEKS                       R9 R0 K26 ["arrowBendPoint"]
      217 SETTABLEKS                       R9 R8 K26 ["arrowBendPoint"]
      219 CALL                             R6 2 1
      220 SETTABLEKS                       R6 R5 K11 ["UpArrow"]
      222 CALL                             R2 3 -1
      223 RETURN                           R2 -1

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
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K8 ["Parent"]
       20 GETTABLEKS                       R3 R4 K9 ["Arrow"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K8 ["Parent"]
       29 GETTABLEKS                       R4 R5 K10 ["MappingLabel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K11 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Util"]
       38 GETTABLEKS                       R5 R6 K13 ["KeyNamesConstants"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R8 K12 ["Util"]
       47 GETTABLEKS                       R6 R7 K14 ["Constants"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R6 R5 K15 ["MAPPING_LABELS_OFFSET_FROM_CENTER"]
       52 DUPCLOSURE                       R7 K16 [PROTO_1]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 GETTABLEKS                       R8 R1 K17 ["memo"]
       59 MOVE                             R9 R7
       60 CALL                             R8 1 -1
       61 RETURN                           R8 -1
