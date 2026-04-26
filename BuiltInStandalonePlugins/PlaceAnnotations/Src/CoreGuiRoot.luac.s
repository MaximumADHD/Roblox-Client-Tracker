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
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K8 ["new"]
       23 CALL                             R5 0 1
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R6 R7 K9 ["useEffect"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U3
       31 NEWTABLE                         R8 0 0
       33 CALL                             R6 2 0
       34 JUMPIF                           R4 ; [+2]
       35 LOADNIL                          R6
       36 RETURN                           R6 1
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R6 R7 K10 ["useMemo"]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R1
       44 NEWTABLE                         R8 0 1
       46 MOVE                             R9 R1
       47 SETLIST                          R8 R9 1 [1]
       49 CALL                             R6 2 2
       50 GETUPVAL                         R9 6
       51 GETTABLEKS                       R8 R9 K11 ["provide"]
       53 NEWTABLE                         R9 0 9
       55 GETUPVAL                         R11 7
       56 GETTABLEKS                       R10 R11 K8 ["new"]
       58 MOVE                             R11 R1
       59 CALL                             R10 1 1
       60 GETUPVAL                         R12 8
       61 GETTABLEKS                       R11 R12 K8 ["new"]
       63 MOVE                             R12 R2
       64 CALL                             R11 1 1
       65 GETUPVAL                         R12 9
       66 GETUPVAL                         R14 10
       67 GETTABLEKS                       R13 R14 K8 ["new"]
       69 CALL                             R13 0 1
       70 GETUPVAL                         R15 11
       71 GETTABLEKS                       R14 R15 K8 ["new"]
       73 MOVE                             R15 R4
       74 CALL                             R14 1 1
       75 GETUPVAL                         R16 12
       76 GETTABLEKS                       R15 R16 K8 ["new"]
       78 MOVE                             R16 R4
       79 CALL                             R15 1 1
       80 GETUPVAL                         R17 13
       81 GETTABLEKS                       R16 R17 K8 ["new"]
       83 CALL                             R16 0 1
       84 GETUPVAL                         R18 14
       85 GETTABLEKS                       R17 R18 K8 ["new"]
       87 MOVE                             R18 R6
       88 CALL                             R17 1 1
       89 GETUPVAL                         R19 15
       90 GETTABLEKS                       R18 R19 K8 ["new"]
       92 MOVE                             R19 R5
       93 CALL                             R18 1 -1
       94 SETLIST                          R9 R10 -1 [1]
       96 DUPTABLE                         R10 K13 [{"ContextStack"}]
       97 GETUPVAL                         R12 1
       98 GETTABLEKS                       R11 R12 K14 ["createElement"]
      100 GETUPVAL                         R13 16
      101 GETTABLEKS                       R12 R13 K12 ["ContextStack"]
      103 DUPTABLE                         R13 K16 [{"providers"}]
      104 NEWTABLE                         R14 0 3
      106 GETUPVAL                         R16 1
      107 GETTABLEKS                       R15 R16 K14 ["createElement"]
      109 GETUPVAL                         R17 17
      110 GETTABLEKS                       R16 R17 K17 ["Provider"]
      112 CALL                             R15 1 1
      113 GETUPVAL                         R17 1
      114 GETTABLEKS                       R16 R17 K14 ["createElement"]
      116 GETUPVAL                         R17 18
      117 CALL                             R16 1 1
      118 GETUPVAL                         R18 1
      119 GETTABLEKS                       R17 R18 K14 ["createElement"]
      121 GETUPVAL                         R18 19
      122 DUPTABLE                         R19 K19 [{"onStyleSheetChange"}]
      123 SETTABLEKS                       R7 R19 K18 ["onStyleSheetChange"]
      125 CALL                             R17 2 -1
      126 SETLIST                          R14 R15 -1 [1]
      128 SETTABLEKS                       R14 R13 K15 ["providers"]
      130 DUPTABLE                         R14 K21 [{"AnnotationManager"}]
      131 GETUPVAL                         R16 1
      132 GETTABLEKS                       R15 R16 K14 ["createElement"]
      134 GETUPVAL                         R16 20
      135 CALL                             R15 1 1
      136 SETTABLEKS                       R15 R14 K20 ["AnnotationManager"]
      138 CALL                             R11 3 1
      139 SETTABLEKS                       R11 R10 K12 ["ContextStack"]
      141 CALL                             R8 2 -1
      142 RETURN                           R8 -1

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
       52 GETTABLEKS                       R8 R6 K18 ["registerEditCallbacks"]
       54 GETTABLEKS                       R9 R5 K19 ["ContextServices"]
       56 GETTABLEKS                       R10 R9 K20 ["Plugin"]
       58 GETTABLEKS                       R11 R9 K21 ["Mouse"]
       60 GETTABLEKS                       R12 R9 K22 ["Focus"]
       62 GETTABLEKS                       R13 R9 K23 ["Design"]
       64 GETIMPORT                        R14 K5 [require]
       66 GETTABLEKS                       R17 R0 K13 ["Src"]
       68 GETTABLEKS                       R16 R17 K24 ["Contexts"]
       70 GETTABLEKS                       R15 R16 K25 ["TelemetryContext"]
       72 CALL                             R14 1 1
       73 GETIMPORT                        R15 K5 [require]
       75 GETTABLEKS                       R17 R0 K6 ["Packages"]
       77 GETTABLEKS                       R16 R17 K26 ["TelemetryProtocol"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R19 R0 K13 ["Src"]
       82 GETTABLEKS                       R18 R19 K27 ["Resources"]
       84 GETTABLEKS                       R17 R18 K28 ["Localization"]
       86 GETTABLEKS                       R16 R17 K29 ["SourceStrings"]
       88 GETTABLEKS                       R20 R0 K13 ["Src"]
       90 GETTABLEKS                       R19 R20 K27 ["Resources"]
       92 GETTABLEKS                       R18 R19 K28 ["Localization"]
       94 GETTABLEKS                       R17 R18 K30 ["LocalizedStrings"]
       96 GETIMPORT                        R18 K5 [require]
       98 GETTABLEKS                       R21 R0 K13 ["Src"]
      100 GETTABLEKS                       R20 R21 K24 ["Contexts"]
      102 GETTABLEKS                       R19 R20 K31 ["UsernameContext"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K5 [require]
      107 GETTABLEKS                       R22 R0 K13 ["Src"]
      109 GETTABLEKS                       R21 R22 K24 ["Contexts"]
      111 GETTABLEKS                       R20 R21 K32 ["InputListenerContext"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K5 [require]
      116 GETTABLEKS                       R23 R0 K13 ["Src"]
      118 GETTABLEKS                       R22 R23 K24 ["Contexts"]
      120 GETTABLEKS                       R21 R22 K33 ["AnnotationsServiceContext"]
      122 CALL                             R20 1 1
      123 GETIMPORT                        R21 K5 [require]
      125 GETTABLEKS                       R24 R0 K13 ["Src"]
      127 GETTABLEKS                       R23 R24 K24 ["Contexts"]
      129 GETTABLEKS                       R22 R23 K34 ["ClassIconContext"]
      131 CALL                             R21 1 1
      132 GETIMPORT                        R23 K5 [require]
      134 GETTABLEKS                       R26 R0 K13 ["Src"]
      136 GETTABLEKS                       R25 R26 K24 ["Contexts"]
      138 GETTABLEKS                       R24 R25 K35 ["TagDropdownContext"]
      140 CALL                             R23 1 1
      141 GETTABLEKS                       R22 R23 K36 ["TagDropdownProvider"]
      143 GETIMPORT                        R23 K5 [require]
      145 GETTABLEKS                       R26 R0 K13 ["Src"]
      147 GETTABLEKS                       R25 R26 K37 ["CoreGuiComponents"]
      149 GETTABLEKS                       R24 R25 K38 ["AnnotationPlacementManager"]
      151 CALL                             R23 1 1
      152 GETIMPORT                        R24 K5 [require]
      154 GETTABLEKS                       R27 R0 K13 ["Src"]
      156 GETTABLEKS                       R26 R27 K14 ["Util"]
      158 GETTABLEKS                       R25 R26 K39 ["toggleAddAnnotation"]
      160 CALL                             R24 1 1
      161 GETIMPORT                        R25 K5 [require]
      163 GETTABLEKS                       R27 R0 K13 ["Src"]
      165 GETTABLEKS                       R26 R27 K40 ["Types"]
      167 CALL                             R25 1 1
      168 GETTABLEKS                       R27 R9 K28 ["Localization"]
      170 GETTABLEKS                       R26 R27 K41 ["new"]
      172 DUPTABLE                         R27 K45 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      173 SETTABLEKS                       R16 R27 K42 ["stringResourceTable"]
      175 SETTABLEKS                       R17 R27 K43 ["translationResourceTable"]
      177 LOADK                            R28 K2 ["PlaceAnnotations"]
      178 SETTABLEKS                       R28 R27 K44 ["pluginName"]
      180 CALL                             R26 1 1
      181 DUPCLOSURE                       R27 K46 [PROTO_4]
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R24
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R7
      188 CAPTURE                          VAL R9
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R26
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R19
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R20
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R14
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R21
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R23
      203 RETURN                           R27 1
