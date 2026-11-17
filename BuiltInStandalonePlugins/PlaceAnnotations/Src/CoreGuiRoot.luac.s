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
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["Deactivation"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R0 R0 K1 ["Connect"]
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["createFoundationDesignBinding"]
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
        5 GETIMPORT                        R3 K3 [game]
        7 GETTABLEKS                       R3 R3 K4 ["CoreGui"]
        9 LOADK                            R5 K5 ["PlaceAnnotations"]
       10 NAMECALL                         R3 R3 K6 ["FindFirstChild"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+5]
       14 LOADK                            R6 K7 ["PlaceAnnotationsGui"]
       15 NAMECALL                         R4 R3 K6 ["FindFirstChild"]
       17 CALL                             R4 2 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R4
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K8 ["new"]
       23 CALL                             R5 0 1
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K9 ["useEffect"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U3
       31 NEWTABLE                         R8 0 0
       33 CALL                             R6 2 0
       34 JUMPIF                           R4 ; [+2]
       35 LOADNIL                          R6
       36 RETURN                           R6 1
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K10 ["useMemo"]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R1
       44 NEWTABLE                         R8 0 1
       46 MOVE                             R9 R1
       47 SETLIST                          R8 R9 1 [1]
       49 CALL                             R6 2 2
       50 NEWTABLE                         R8 0 3
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R9 R9 K11 ["createElement"]
       55 GETUPVAL                         R10 6
       56 GETTABLEKS                       R10 R10 K12 ["Provider"]
       58 CALL                             R9 1 1
       59 GETUPVAL                         R10 1
       60 GETTABLEKS                       R10 R10 K11 ["createElement"]
       62 GETUPVAL                         R11 7
       63 CALL                             R10 1 1
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R11 R11 K11 ["createElement"]
       67 GETUPVAL                         R12 8
       68 DUPTABLE                         R13 K14 [{"onStyleSheetChange"}]
       69 SETTABLEKS                       R7 R13 K13 ["onStyleSheetChange"]
       71 CALL                             R11 2 -1
       72 SETLIST                          R8 R9 -1 [1]
       74 GETUPVAL                         R9 9
       75 GETTABLEKS                       R9 R9 K15 ["fflagStudioUserReportingComments"]
       77 JUMPIFNOT                        R9 ; [+13]
       78 MOVE                             R10 R8
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K11 ["createElement"]
       82 GETUPVAL                         R12 10
       83 DUPTABLE                         R13 K16 [{"Plugin"}]
       84 SETTABLEKS                       R1 R13 K0 ["Plugin"]
       86 CALL                             R11 2 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R9 K19 [table.insert]
       90 CALL                             R9 -1 0
       91 GETUPVAL                         R9 11
       92 GETTABLEKS                       R9 R9 K20 ["provide"]
       94 NEWTABLE                         R10 0 9
       96 GETUPVAL                         R11 12
       97 GETTABLEKS                       R11 R11 K8 ["new"]
       99 MOVE                             R12 R1
      100 CALL                             R11 1 1
      101 GETUPVAL                         R12 13
      102 GETTABLEKS                       R12 R12 K8 ["new"]
      104 MOVE                             R13 R2
      105 CALL                             R12 1 1
      106 GETUPVAL                         R13 14
      107 GETUPVAL                         R14 15
      108 GETTABLEKS                       R14 R14 K8 ["new"]
      110 CALL                             R14 0 1
      111 GETUPVAL                         R15 16
      112 GETTABLEKS                       R15 R15 K8 ["new"]
      114 MOVE                             R16 R4
      115 CALL                             R15 1 1
      116 GETUPVAL                         R16 17
      117 GETTABLEKS                       R16 R16 K8 ["new"]
      119 MOVE                             R17 R4
      120 CALL                             R16 1 1
      121 GETUPVAL                         R17 18
      122 GETTABLEKS                       R17 R17 K8 ["new"]
      124 CALL                             R17 0 1
      125 GETUPVAL                         R18 19
      126 GETTABLEKS                       R18 R18 K8 ["new"]
      128 MOVE                             R19 R6
      129 CALL                             R18 1 1
      130 GETUPVAL                         R19 20
      131 GETTABLEKS                       R19 R19 K8 ["new"]
      133 MOVE                             R20 R5
      134 CALL                             R19 1 -1
      135 SETLIST                          R10 R11 -1 [1]
      137 DUPTABLE                         R11 K22 [{"ContextStack"}]
      138 GETUPVAL                         R12 1
      139 GETTABLEKS                       R12 R12 K11 ["createElement"]
      141 GETUPVAL                         R13 21
      142 GETTABLEKS                       R13 R13 K21 ["ContextStack"]
      144 DUPTABLE                         R14 K24 [{"providers"}]
      145 SETTABLEKS                       R8 R14 K23 ["providers"]
      147 DUPTABLE                         R15 K27 [{"AnnotationManager", "ReportDialog"}]
      148 GETUPVAL                         R16 1
      149 GETTABLEKS                       R16 R16 K11 ["createElement"]
      151 GETUPVAL                         R17 22
      152 CALL                             R16 1 1
      153 SETTABLEKS                       R16 R15 K25 ["AnnotationManager"]
      155 GETUPVAL                         R17 9
      156 GETTABLEKS                       R17 R17 K15 ["fflagStudioUserReportingComments"]
      158 JUMPIFNOT                        R17 ; [+6]
      159 GETUPVAL                         R16 1
      160 GETTABLEKS                       R16 R16 K11 ["createElement"]
      162 GETUPVAL                         R17 23
      163 CALL                             R16 1 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R16
      166 SETTABLEKS                       R16 R15 K26 ["ReportDialog"]
      168 CALL                             R12 3 1
      169 SETTABLEKS                       R12 R11 K21 ["ContextStack"]
      171 CALL                             R9 2 -1
      172 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Bin"]
       25 GETTABLEKS                       R4 R4 K10 ["Common"]
       27 GETTABLEKS                       R4 R4 K11 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioFoundation"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["Components"]
       39 GETTABLEKS                       R5 R5 K14 ["FoundationProviderAdapter"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K6 ["Packages"]
       45 GETTABLEKS                       R7 R7 K15 ["Framework"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K16 ["Src"]
       52 GETTABLEKS                       R8 R8 K17 ["Util"]
       54 GETTABLEKS                       R8 R8 K18 ["CrossDMCallbacks"]
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R8 R6 K19 ["Styling"]
       59 GETTABLEKS                       R8 R8 K20 ["registerPluginStyles"]
       61 GETTABLEKS                       R9 R7 K21 ["registerEditCallbacks"]
       63 GETTABLEKS                       R10 R6 K22 ["ContextServices"]
       65 GETTABLEKS                       R11 R10 K23 ["Plugin"]
       67 GETTABLEKS                       R12 R10 K24 ["Mouse"]
       69 GETTABLEKS                       R13 R10 K25 ["Focus"]
       71 GETTABLEKS                       R14 R10 K26 ["Design"]
       73 GETIMPORT                        R15 K5 [require]
       75 GETTABLEKS                       R16 R0 K16 ["Src"]
       77 GETTABLEKS                       R16 R16 K27 ["Contexts"]
       79 GETTABLEKS                       R16 R16 K28 ["TelemetryContext"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R17 R0 K6 ["Packages"]
       86 GETTABLEKS                       R17 R17 K29 ["TelemetryProtocol"]
       88 CALL                             R16 1 1
       89 GETTABLEKS                       R17 R0 K16 ["Src"]
       91 GETTABLEKS                       R17 R17 K30 ["Resources"]
       93 GETTABLEKS                       R17 R17 K31 ["Localization"]
       95 GETTABLEKS                       R17 R17 K32 ["SourceStrings"]
       97 GETTABLEKS                       R18 R0 K16 ["Src"]
       99 GETTABLEKS                       R18 R18 K30 ["Resources"]
      101 GETTABLEKS                       R18 R18 K31 ["Localization"]
      103 GETTABLEKS                       R18 R18 K33 ["LocalizedStrings"]
      105 GETIMPORT                        R19 K5 [require]
      107 GETTABLEKS                       R20 R0 K16 ["Src"]
      109 GETTABLEKS                       R20 R20 K27 ["Contexts"]
      111 GETTABLEKS                       R20 R20 K34 ["UsernameContext"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K5 [require]
      116 GETTABLEKS                       R21 R0 K16 ["Src"]
      118 GETTABLEKS                       R21 R21 K27 ["Contexts"]
      120 GETTABLEKS                       R21 R21 K35 ["InputListenerContext"]
      122 CALL                             R20 1 1
      123 GETIMPORT                        R21 K5 [require]
      125 GETTABLEKS                       R22 R0 K16 ["Src"]
      127 GETTABLEKS                       R22 R22 K27 ["Contexts"]
      129 GETTABLEKS                       R22 R22 K36 ["AnnotationsServiceContext"]
      131 CALL                             R21 1 1
      132 GETIMPORT                        R22 K5 [require]
      134 GETTABLEKS                       R23 R0 K16 ["Src"]
      136 GETTABLEKS                       R23 R23 K27 ["Contexts"]
      138 GETTABLEKS                       R23 R23 K37 ["ClassIconContext"]
      140 CALL                             R22 1 1
      141 GETIMPORT                        R23 K5 [require]
      143 GETTABLEKS                       R24 R0 K16 ["Src"]
      145 GETTABLEKS                       R24 R24 K27 ["Contexts"]
      147 GETTABLEKS                       R24 R24 K38 ["TagDropdownContext"]
      149 CALL                             R23 1 1
      150 GETTABLEKS                       R23 R23 K39 ["TagDropdownProvider"]
      152 GETIMPORT                        R24 K5 [require]
      154 GETTABLEKS                       R25 R0 K16 ["Src"]
      156 GETTABLEKS                       R25 R25 K27 ["Contexts"]
      158 GETTABLEKS                       R25 R25 K40 ["ReportContext"]
      160 CALL                             R24 1 1
      161 GETTABLEKS                       R25 R24 K41 ["ReportProvider"]
      163 GETTABLEKS                       R26 R24 K42 ["ReportDialogHost"]
      165 GETIMPORT                        R27 K5 [require]
      167 GETTABLEKS                       R28 R0 K16 ["Src"]
      169 GETTABLEKS                       R28 R28 K43 ["CoreGuiComponents"]
      171 GETTABLEKS                       R28 R28 K44 ["AnnotationPlacementManager"]
      173 CALL                             R27 1 1
      174 GETIMPORT                        R28 K5 [require]
      176 GETTABLEKS                       R29 R0 K16 ["Src"]
      178 GETTABLEKS                       R29 R29 K17 ["Util"]
      180 GETTABLEKS                       R29 R29 K45 ["toggleAddAnnotation"]
      182 CALL                             R28 1 1
      183 GETIMPORT                        R29 K5 [require]
      185 GETTABLEKS                       R30 R0 K16 ["Src"]
      187 GETTABLEKS                       R30 R30 K46 ["Types"]
      189 CALL                             R29 1 1
      190 GETTABLEKS                       R30 R10 K31 ["Localization"]
      192 GETTABLEKS                       R30 R30 K47 ["new"]
      194 DUPTABLE                         R31 K51 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "PlaceAnnotations"}]
      195 SETTABLEKS                       R17 R31 K48 ["stringResourceTable"]
      197 SETTABLEKS                       R18 R31 K49 ["translationResourceTable"]
      199 CALL                             R30 1 1
      200 DUPCLOSURE                       R31 K52 [PROTO_4]
      201 CAPTURE                          VAL R16
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R28
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R22
      208 CAPTURE                          VAL R23
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R3
      211 CAPTURE                          VAL R25
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R12
      215 CAPTURE                          VAL R30
      216 CAPTURE                          VAL R19
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R21
      220 CAPTURE                          VAL R14
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R27
      224 CAPTURE                          VAL R26
      225 RETURN                           R31 1
