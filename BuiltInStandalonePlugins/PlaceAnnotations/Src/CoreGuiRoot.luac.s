PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["Deactivation"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R0 R0 K1 ["Connect"]
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Util"]
        3 GETTABLEKS                       R0 R1 K1 ["createFoundationDesignBinding"]
        5 CALL                             R0 0 2
        6 GETUPVAL                         R2 1
        7 GETUPVAL                         R3 2
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 NEWTABLE                         R6 0 1
       12 MOVE                             R7 R0
       13 SETLIST                          R6 R7 1 [1]
       15 CALL                             R2 4 1
       16 MOVE                             R3 R1
       17 RETURN                           R2 2

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 NAMECALL                         R2 R1 K1 ["GetMouse"]
        4 CALL                             R2 1 1
        5 GETIMPORT                        R4 K3 [game]
        7 GETTABLEKS                       R3 R4 K4 ["CoreGui"]
        9 LOADK                            R5 K5 ["PlaceAnnotations"]
       10 NAMECALL                         R3 R3 K6 ["FindFirstChild"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+5]
       14 LOADK                            R6 K7 ["PlaceAnnotationsGui"]
       15 NAMECALL                         R4 R3 K6 ["FindFirstChild"]
       17 CALL                             R4 2 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R4
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K8 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
       23 JUMPIFNOT                        R6 ; [+5]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K9 ["new"]
       27 CALL                             R5 0 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R5
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R6 R7 K10 ["useEffect"]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U4
       37 NEWTABLE                         R8 0 0
       39 CALL                             R6 2 0
       40 JUMPIF                           R4 ; [+2]
       41 LOADNIL                          R6
       42 RETURN                           R6 1
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R6 R7 K11 ["useMemo"]
       46 NEWCLOSURE                       R7 P1
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          VAL R1
       50 NEWTABLE                         R8 0 1
       52 MOVE                             R9 R1
       53 SETLIST                          R8 R9 1 [1]
       55 CALL                             R6 2 2
       56 GETUPVAL                         R9 7
       57 GETTABLEKS                       R8 R9 K12 ["provide"]
       59 NEWTABLE                         R9 0 9
       61 GETUPVAL                         R11 8
       62 GETTABLEKS                       R10 R11 K9 ["new"]
       64 MOVE                             R11 R1
       65 CALL                             R10 1 1
       66 GETUPVAL                         R12 9
       67 GETTABLEKS                       R11 R12 K9 ["new"]
       69 MOVE                             R12 R2
       70 CALL                             R11 1 1
       71 GETUPVAL                         R12 10
       72 GETUPVAL                         R14 11
       73 GETTABLEKS                       R13 R14 K9 ["new"]
       75 CALL                             R13 0 1
       76 GETUPVAL                         R15 12
       77 GETTABLEKS                       R14 R15 K9 ["new"]
       79 MOVE                             R15 R4
       80 CALL                             R14 1 1
       81 GETUPVAL                         R16 13
       82 GETTABLEKS                       R15 R16 K9 ["new"]
       84 MOVE                             R16 R4
       85 CALL                             R15 1 1
       86 GETUPVAL                         R17 14
       87 GETTABLEKS                       R16 R17 K9 ["new"]
       89 CALL                             R16 0 1
       90 GETUPVAL                         R18 15
       91 GETTABLEKS                       R17 R18 K9 ["new"]
       93 MOVE                             R18 R6
       94 CALL                             R17 1 1
       95 GETUPVAL                         R20 0
       96 GETTABLEKS                       R19 R20 K8 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
       98 JUMPIFNOT                        R19 ; [+6]
       99 GETUPVAL                         R19 16
      100 GETTABLEKS                       R18 R19 K9 ["new"]
      102 MOVE                             R19 R5
      103 CALL                             R18 1 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R18
      106 SETLIST                          R9 R10 9 [1]
      108 DUPTABLE                         R10 K14 [{"ContextStack"}]
      109 GETUPVAL                         R12 2
      110 GETTABLEKS                       R11 R12 K15 ["createElement"]
      112 GETUPVAL                         R13 17
      113 GETTABLEKS                       R12 R13 K13 ["ContextStack"]
      115 DUPTABLE                         R13 K17 [{"providers"}]
      116 NEWTABLE                         R14 0 3
      118 GETUPVAL                         R16 2
      119 GETTABLEKS                       R15 R16 K15 ["createElement"]
      121 GETUPVAL                         R17 18
      122 GETTABLEKS                       R16 R17 K18 ["Provider"]
      124 CALL                             R15 1 1
      125 GETUPVAL                         R17 2
      126 GETTABLEKS                       R16 R17 K15 ["createElement"]
      128 GETUPVAL                         R17 19
      129 CALL                             R16 1 1
      130 GETUPVAL                         R18 2
      131 GETTABLEKS                       R17 R18 K15 ["createElement"]
      133 GETUPVAL                         R18 20
      134 DUPTABLE                         R19 K20 [{"onStyleSheetChange"}]
      135 SETTABLEKS                       R7 R19 K19 ["onStyleSheetChange"]
      137 CALL                             R17 2 -1
      138 SETLIST                          R14 R15 -1 [1]
      140 SETTABLEKS                       R14 R13 K16 ["providers"]
      142 DUPTABLE                         R14 K22 [{"AnnotationManager"}]
      143 GETUPVAL                         R16 2
      144 GETTABLEKS                       R15 R16 K15 ["createElement"]
      146 GETUPVAL                         R16 21
      147 CALL                             R15 1 1
      148 SETTABLEKS                       R15 R14 K21 ["AnnotationManager"]
      150 CALL                             R11 3 1
      151 SETTABLEKS                       R11 R10 K13 ["ContextStack"]
      153 CALL                             R8 2 -1
      154 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
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
       25 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["Components"]
       30 GETTABLEKS                       R4 R5 K11 ["FoundationProviderAdapter"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R7 K12 ["Framework"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R9 R0 K13 ["Src"]
       43 GETTABLEKS                       R8 R9 K14 ["Util"]
       45 GETTABLEKS                       R7 R8 K15 ["CrossDMCallbacks"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R8 R5 K16 ["Styling"]
       50 GETTABLEKS                       R7 R8 K17 ["registerPluginStyles"]
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R11 R0 K18 ["Bin"]
       56 GETTABLEKS                       R10 R11 K19 ["Common"]
       58 GETTABLEKS                       R9 R10 K20 ["defineLuaFlags"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R6 K21 ["registerEditCallbacks"]
       63 GETTABLEKS                       R10 R5 K22 ["ContextServices"]
       65 GETTABLEKS                       R11 R10 K23 ["Plugin"]
       67 GETTABLEKS                       R12 R10 K24 ["Mouse"]
       69 GETTABLEKS                       R13 R10 K25 ["Focus"]
       71 GETTABLEKS                       R14 R10 K26 ["Design"]
       73 GETIMPORT                        R15 K5 [require]
       75 GETTABLEKS                       R18 R0 K13 ["Src"]
       77 GETTABLEKS                       R17 R18 K27 ["Contexts"]
       79 GETTABLEKS                       R16 R17 K28 ["TelemetryContext"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R18 R0 K6 ["Packages"]
       86 GETTABLEKS                       R17 R18 K29 ["TelemetryProtocol"]
       88 CALL                             R16 1 1
       89 GETTABLEKS                       R20 R0 K13 ["Src"]
       91 GETTABLEKS                       R19 R20 K30 ["Resources"]
       93 GETTABLEKS                       R18 R19 K31 ["Localization"]
       95 GETTABLEKS                       R17 R18 K32 ["SourceStrings"]
       97 GETTABLEKS                       R21 R0 K13 ["Src"]
       99 GETTABLEKS                       R20 R21 K30 ["Resources"]
      101 GETTABLEKS                       R19 R20 K31 ["Localization"]
      103 GETTABLEKS                       R18 R19 K33 ["LocalizedStrings"]
      105 GETIMPORT                        R19 K5 [require]
      107 GETTABLEKS                       R22 R0 K13 ["Src"]
      109 GETTABLEKS                       R21 R22 K27 ["Contexts"]
      111 GETTABLEKS                       R20 R21 K34 ["UsernameContext"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K5 [require]
      116 GETTABLEKS                       R23 R0 K13 ["Src"]
      118 GETTABLEKS                       R22 R23 K27 ["Contexts"]
      120 GETTABLEKS                       R21 R22 K35 ["InputListenerContext"]
      122 CALL                             R20 1 1
      123 GETIMPORT                        R21 K5 [require]
      125 GETTABLEKS                       R24 R0 K13 ["Src"]
      127 GETTABLEKS                       R23 R24 K27 ["Contexts"]
      129 GETTABLEKS                       R22 R23 K36 ["AnnotationsServiceContext"]
      131 CALL                             R21 1 1
      132 GETIMPORT                        R22 K5 [require]
      134 GETTABLEKS                       R25 R0 K13 ["Src"]
      136 GETTABLEKS                       R24 R25 K27 ["Contexts"]
      138 GETTABLEKS                       R23 R24 K37 ["ClassIconContext"]
      140 CALL                             R22 1 1
      141 GETIMPORT                        R24 K5 [require]
      143 GETTABLEKS                       R27 R0 K13 ["Src"]
      145 GETTABLEKS                       R26 R27 K27 ["Contexts"]
      147 GETTABLEKS                       R25 R26 K38 ["TagDropdownContext"]
      149 CALL                             R24 1 1
      150 GETTABLEKS                       R23 R24 K39 ["TagDropdownProvider"]
      152 GETIMPORT                        R24 K5 [require]
      154 GETTABLEKS                       R27 R0 K13 ["Src"]
      156 GETTABLEKS                       R26 R27 K40 ["CoreGuiComponents"]
      158 GETTABLEKS                       R25 R26 K41 ["AnnotationPlacementManager"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K5 [require]
      163 GETTABLEKS                       R28 R0 K13 ["Src"]
      165 GETTABLEKS                       R27 R28 K14 ["Util"]
      167 GETTABLEKS                       R26 R27 K42 ["toggleAddAnnotation"]
      169 CALL                             R25 1 1
      170 GETIMPORT                        R26 K5 [require]
      172 GETTABLEKS                       R28 R0 K13 ["Src"]
      174 GETTABLEKS                       R27 R28 K43 ["Types"]
      176 CALL                             R26 1 1
      177 GETTABLEKS                       R28 R10 K31 ["Localization"]
      179 GETTABLEKS                       R27 R28 K44 ["new"]
      181 DUPTABLE                         R28 K48 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      182 SETTABLEKS                       R17 R28 K45 ["stringResourceTable"]
      184 SETTABLEKS                       R18 R28 K46 ["translationResourceTable"]
      186 LOADK                            R29 K2 ["PlaceAnnotations"]
      187 SETTABLEKS                       R29 R28 K47 ["pluginName"]
      189 CALL                             R27 1 1
      190 DUPCLOSURE                       R28 K49 [PROTO_4]
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R16
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R11
      200 CAPTURE                          VAL R12
      201 CAPTURE                          VAL R27
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R20
      204 CAPTURE                          VAL R13
      205 CAPTURE                          VAL R21
      206 CAPTURE                          VAL R14
      207 CAPTURE                          VAL R15
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R22
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R24
      213 RETURN                           R28 1
