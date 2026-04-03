PROTO_0:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 SETTABLE                         R6 R0 R5
        5 FORGLOOP                         R2 2 ; [-2]
        7 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Platform"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R5 K3 [script]
       14 GETTABLEKS                       R4 R5 K4 ["Parent"]
       16 GETTABLEKS                       R3 R4 K4 ["Parent"]
       18 GETTABLEKS                       R2 R3 K6 ["Icon"]
       20 CALL                             R1 1 1
       21 DUPCLOSURE                       R2 K7 [PROTO_0]
       22 DUPTABLE                         R3 K24 [{"ButtonA", "ButtonB", "ButtonX", "ButtonY", "ButtonL1", "ButtonL2", "ButtonL3", "ButtonR1", "ButtonR2", "ButtonR3", "Thumbstick1", "Thumbstick2", "DPadDown", "DPadUp", "DPadLeft", "DPadRight"}]
       23 GETTABLEKS                       R4 R1 K25 ["PsX"]
       25 SETTABLEKS                       R4 R3 K8 ["ButtonA"]
       27 GETTABLEKS                       R4 R1 K26 ["PsCircle"]
       29 SETTABLEKS                       R4 R3 K9 ["ButtonB"]
       31 GETTABLEKS                       R4 R1 K27 ["PsSquare"]
       33 SETTABLEKS                       R4 R3 K10 ["ButtonX"]
       35 GETTABLEKS                       R4 R1 K28 ["PsTriagle"]
       37 SETTABLEKS                       R4 R3 K11 ["ButtonY"]
       39 GETTABLEKS                       R4 R1 K29 ["PsL1"]
       41 SETTABLEKS                       R4 R3 K12 ["ButtonL1"]
       43 GETTABLEKS                       R4 R1 K30 ["PsL2"]
       45 SETTABLEKS                       R4 R3 K13 ["ButtonL2"]
       47 GETTABLEKS                       R4 R1 K31 ["PsL3"]
       49 SETTABLEKS                       R4 R3 K14 ["ButtonL3"]
       51 GETTABLEKS                       R4 R1 K32 ["PsR1"]
       53 SETTABLEKS                       R4 R3 K15 ["ButtonR1"]
       55 GETTABLEKS                       R4 R1 K33 ["PsR2"]
       57 SETTABLEKS                       R4 R3 K16 ["ButtonR2"]
       59 GETTABLEKS                       R4 R1 K34 ["PsR3"]
       61 SETTABLEKS                       R4 R3 K17 ["ButtonR3"]
       63 GETTABLEKS                       R4 R1 K35 ["PsStickLeft"]
       65 SETTABLEKS                       R4 R3 K18 ["Thumbstick1"]
       67 GETTABLEKS                       R4 R1 K36 ["PsStickRight"]
       69 SETTABLEKS                       R4 R3 K19 ["Thumbstick2"]
       71 GETTABLEKS                       R4 R1 K37 ["PsDpadDown"]
       73 SETTABLEKS                       R4 R3 K20 ["DPadDown"]
       75 GETTABLEKS                       R4 R1 K38 ["PsDpadUp"]
       77 SETTABLEKS                       R4 R3 K21 ["DPadUp"]
       79 GETTABLEKS                       R4 R1 K39 ["PsDpadLeft"]
       81 SETTABLEKS                       R4 R3 K22 ["DPadLeft"]
       83 GETTABLEKS                       R4 R1 K40 ["PsDpadRight"]
       85 SETTABLEKS                       R4 R3 K23 ["DPadRight"]
       87 NEWTABLE                         R4 4 0
       89 GETTABLEKS                       R5 R0 K41 ["PS4"]
       91 DUPTABLE                         R7 K44 [{"ButtonStart", "ButtonSelect"}]
       92 GETTABLEKS                       R8 R1 K45 ["Ps4Options"]
       94 SETTABLEKS                       R8 R7 K42 ["ButtonStart"]
       96 GETTABLEKS                       R8 R1 K46 ["Ps4Share"]
       98 SETTABLEKS                       R8 R7 K43 ["ButtonSelect"]
      100 MOVE                             R8 R7
      101 LOADNIL                          R9
      102 LOADNIL                          R10
      103 FORGPREP                         R8
      104 SETTABLE                         R12 R3 R11
      105 FORGLOOP                         R8 2 ; [-2]
      107 MOVE                             R6 R3
      108 SETTABLE                         R6 R4 R5
      109 GETTABLEKS                       R5 R0 K47 ["PS5"]
      111 DUPTABLE                         R7 K44 [{"ButtonStart", "ButtonSelect"}]
      112 GETTABLEKS                       R8 R1 K48 ["Ps5Options"]
      114 SETTABLEKS                       R8 R7 K42 ["ButtonStart"]
      116 GETTABLEKS                       R8 R1 K49 ["Ps5Share"]
      118 SETTABLEKS                       R8 R7 K43 ["ButtonSelect"]
      120 MOVE                             R8 R7
      121 LOADNIL                          R9
      122 LOADNIL                          R10
      123 FORGPREP                         R8
      124 SETTABLE                         R12 R3 R11
      125 FORGLOOP                         R8 2 ; [-2]
      127 MOVE                             R6 R3
      128 SETTABLE                         R6 R4 R5
      129 GETTABLEKS                       R5 R0 K50 ["Xbox"]
      131 DUPTABLE                         R6 K51 [{"ButtonA", "ButtonB", "ButtonX", "ButtonY", "ButtonL1", "ButtonL2", "ButtonL3", "ButtonR1", "ButtonR2", "ButtonR3", "ButtonStart", "ButtonSelect", "Thumbstick1", "Thumbstick2", "DPadDown", "DPadUp", "DPadLeft", "DPadRight"}]
      132 GETTABLEKS                       R7 R1 K52 ["XboxA"]
      134 SETTABLEKS                       R7 R6 K8 ["ButtonA"]
      136 GETTABLEKS                       R7 R1 K53 ["XboxB"]
      138 SETTABLEKS                       R7 R6 K9 ["ButtonB"]
      140 GETTABLEKS                       R7 R1 K54 ["XboxX"]
      142 SETTABLEKS                       R7 R6 K10 ["ButtonX"]
      144 GETTABLEKS                       R7 R1 K55 ["XboxY"]
      146 SETTABLEKS                       R7 R6 K11 ["ButtonY"]
      148 GETTABLEKS                       R7 R1 K56 ["XboxLb"]
      150 SETTABLEKS                       R7 R6 K12 ["ButtonL1"]
      152 GETTABLEKS                       R7 R1 K57 ["XboxLt"]
      154 SETTABLEKS                       R7 R6 K13 ["ButtonL2"]
      156 GETTABLEKS                       R7 R1 K58 ["XboxStickLeft"]
      158 SETTABLEKS                       R7 R6 K14 ["ButtonL3"]
      160 GETTABLEKS                       R7 R1 K59 ["XboxRb"]
      162 SETTABLEKS                       R7 R6 K15 ["ButtonR1"]
      164 GETTABLEKS                       R7 R1 K60 ["XboxRt"]
      166 SETTABLEKS                       R7 R6 K16 ["ButtonR2"]
      168 GETTABLEKS                       R7 R1 K61 ["XboxStickRight"]
      170 SETTABLEKS                       R7 R6 K17 ["ButtonR3"]
      172 GETTABLEKS                       R7 R1 K62 ["XboxMenu"]
      174 SETTABLEKS                       R7 R6 K42 ["ButtonStart"]
      176 GETTABLEKS                       R7 R1 K63 ["XboxView"]
      178 SETTABLEKS                       R7 R6 K43 ["ButtonSelect"]
      180 GETTABLEKS                       R7 R1 K64 ["XboxStickLeftDirectional"]
      182 SETTABLEKS                       R7 R6 K18 ["Thumbstick1"]
      184 GETTABLEKS                       R7 R1 K65 ["XboxStickRightDirectional"]
      186 SETTABLEKS                       R7 R6 K19 ["Thumbstick2"]
      188 GETTABLEKS                       R7 R1 K66 ["XboxDpadDown"]
      190 SETTABLEKS                       R7 R6 K20 ["DPadDown"]
      192 GETTABLEKS                       R7 R1 K67 ["XboxDpadUp"]
      194 SETTABLEKS                       R7 R6 K21 ["DPadUp"]
      196 GETTABLEKS                       R7 R1 K68 ["XboxDpadLeft"]
      198 SETTABLEKS                       R7 R6 K22 ["DPadLeft"]
      200 GETTABLEKS                       R7 R1 K69 ["XboxDpadRight"]
      202 SETTABLEKS                       R7 R6 K23 ["DPadRight"]
      204 SETTABLE                         R6 R4 R5
      205 GETTABLEKS                       R5 R0 K70 ["Default"]
      207 DUPTABLE                         R6 K73 [{"LeftAlt", "RightAlt"}]
      208 GETTABLEKS                       R7 R1 K74 ["KeyAlt"]
      210 SETTABLEKS                       R7 R6 K71 ["LeftAlt"]
      212 GETTABLEKS                       R7 R1 K74 ["KeyAlt"]
      214 SETTABLEKS                       R7 R6 K72 ["RightAlt"]
      216 SETTABLE                         R6 R4 R5
      217 RETURN                           R4 1
