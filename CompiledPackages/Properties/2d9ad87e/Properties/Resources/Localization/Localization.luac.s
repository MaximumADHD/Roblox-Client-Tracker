PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioService is not available in this environment"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K3 ["StudioLocaleId"]
       10 RETURN                           R0 1

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R0 K2 [pcall]
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["LocalPlayer"]
       12 JUMPIF                           R2 ; [+2]
       13 LOADK                            R3 K4 ["en-us"]
       14 RETURN                           R3 1
       15 GETTABLEKS                       R3 R2 K5 ["LocaleId"]
       17 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioService is not available in this environment"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 LOADK                            R2 K3 ["StudioLocaleId"]
        9 NAMECALL                         R0 R0 K4 ["GetPropertyChangedSignal"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_4:
        0 DUPCLOSURE                       R1 K0 [PROTO_3]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R0 K2 [pcall]
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+1]
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K3 ["LocalPlayer"]
       12 JUMPIF                           R2 ; [+7]
       13 GETIMPORT                        R3 K6 [Instance.new]
       15 LOADK                            R4 K7 ["BindableEvent"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R3 R3 K8 ["Event"]
       19 RETURN                           R3 1
       20 LOADK                            R5 K9 ["LocaleId"]
       21 NAMECALL                         R3 R2 K10 ["GetPropertyChangedSignal"]
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1
        5 GETUPVAL                         R0 1
        6 JUMPIFEQKNIL                     R0 ; [+3]
        8 GETUPVAL                         R0 1
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+29]
       12 DUPCLOSURE                       R2 K0 [PROTO_1]
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 FASTPCALL                        pcall 1 ; [+2]
       16 GETIMPORT                        R1 K2 [pcall]
       18 CALL                             R1 1 2
       19 JUMPIFNOT                        R1 ; [+2]
       20 MOVE                             R0 R2
       21 JUMP                             ; [+8]
       22 GETUPVAL                         R3 5
       23 GETTABLEKS                       R3 R3 K3 ["LocalPlayer"]
       25 JUMPIF                           R3 ; [+2]
       26 LOADK                            R0 K4 ["en-us"]
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R0 R3 K5 ["LocaleId"]
       30 GETIMPORT                        R1 K8 [string.gsub]
       32 GETIMPORT                        R2 K10 [string.lower]
       34 MOVE                             R3 R0
       35 CALL                             R2 1 1
       36 LOADK                            R3 K11 ["_"]
       37 LOADK                            R4 K12 ["-"]
       38 CALL                             R1 3 1
       39 MOVE                             R0 R1
       40 RETURN                           R0 1
       41 DUPCLOSURE                       R2 K0 [PROTO_1]
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U4
       44 FASTPCALL                        pcall 1 ; [+2]
       45 GETIMPORT                        R1 K2 [pcall]
       47 CALL                             R1 1 2
       48 JUMPIFNOT                        R1 ; [+2]
       49 MOVE                             R0 R2
       50 RETURN                           R0 1
       51 GETUPVAL                         R3 5
       52 GETTABLEKS                       R3 R3 K3 ["LocalPlayer"]
       54 JUMPIF                           R3 ; [+2]
       55 LOADK                            R0 K4 ["en-us"]
       56 RETURN                           R0 1
       57 GETTABLEKS                       R0 R3 K5 ["LocaleId"]
       59 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateLocaleAndTranslator"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["localeChanged"]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R0 R0 K2 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Localization props is expected to be a table."]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R3 R0 K6 ["stringResourceTable"]
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 FASTCALL2K                       ASSERT R2 K7 ; [+4]
       23 LOADK                            R3 K7 ["Localization must have a .csv string resource table for English strings"]
       24 GETIMPORT                        R1 K5 [assert]
       26 CALL                             R1 2 0
       27 GETTABLEKS                       R3 R0 K8 ["translationResourceTable"]
       29 JUMPIFNOTEQKNIL                  R3 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       35 LOADK                            R3 K9 ["Localization must have a .csv string resource table of translations"]
       36 GETIMPORT                        R1 K5 [assert]
       38 CALL                             R1 2 0
       39 GETTABLEKS                       R4 R0 K10 ["pluginName"]
       41 FASTCALL1                        TYPE R4 ; [+2]
       42 GETIMPORT                        R3 K1 [type]
       44 CALL                             R3 1 1
       45 JUMPIFEQKS                       R3 K11 ["string"] ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       51 LOADK                            R3 K12 ["Please specify the plugin's name"]
       52 GETIMPORT                        R1 K5 [assert]
       54 CALL                             R1 2 0
       55 GETTABLEKS                       R1 R0 K13 ["libraries"]
       57 JUMPIFEQKNIL                     R1 ; [+85]
       59 GETTABLEKS                       R4 R0 K13 ["libraries"]
       61 FASTCALL1                        TYPE R4 ; [+2]
       62 GETIMPORT                        R3 K1 [type]
       64 CALL                             R3 1 1
       65 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
       67 LOADB                            R2 0 +1
       68 LOADB                            R2 1
       69 FASTCALL2K                       ASSERT R2 K14 ; [+4]
       71 LOADK                            R3 K14 ["Localization libraries prop must be a table or nil"]
       72 GETIMPORT                        R1 K5 [assert]
       74 CALL                             R1 2 0
       75 GETIMPORT                        R1 K16 [pairs]
       77 GETTABLEKS                       R2 R0 K13 ["libraries"]
       79 CALL                             R1 1 3
       80 FORGPREP_NEXT                    R1
       81 FASTCALL1                        TYPE R4 ; [+3]
       82 MOVE                             R9 R4
       83 GETIMPORT                        R8 K1 [type]
       85 CALL                             R8 1 1
       86 JUMPIFEQKS                       R8 K11 ["string"] ; [+2]
       88 LOADB                            R7 0 +1
       89 LOADB                            R7 1
       90 FASTCALL2K                       ASSERT R7 K17 ; [+4]
       92 LOADK                            R8 K17 ["Localization libraries key must be a string"]
       93 GETIMPORT                        R6 K5 [assert]
       95 CALL                             R6 2 0
       96 FASTCALL1                        TYPE R5 ; [+3]
       97 MOVE                             R9 R5
       98 GETIMPORT                        R8 K1 [type]
      100 CALL                             R8 1 1
      101 JUMPIFEQKS                       R8 K2 ["table"] ; [+2]
      103 LOADB                            R7 0 +1
      104 LOADB                            R7 1
      105 FASTCALL2K                       ASSERT R7 K18 ; [+4]
      107 LOADK                            R8 K18 ["Localization libraries value must be a table"]
      108 GETIMPORT                        R6 K5 [assert]
      110 CALL                             R6 2 0
      111 GETTABLEKS                       R8 R5 K6 ["stringResourceTable"]
      113 JUMPIFNOTEQKNIL                  R8 ; [+2]
      115 LOADB                            R7 0 +1
      116 LOADB                            R7 1
      117 GETIMPORT                        R8 K20 [string.format]
      119 LOADK                            R9 K21 ["Localization table %s must have a .csv string resource table for English strings"]
      120 MOVE                             R10 R4
      121 CALL                             R8 2 -1
      122 FASTCALL                         ASSERT ; [+2]
      123 GETIMPORT                        R6 K5 [assert]
      125 CALL                             R6 -1 0
      126 GETTABLEKS                       R8 R5 K8 ["translationResourceTable"]
      128 JUMPIFNOTEQKNIL                  R8 ; [+2]
      130 LOADB                            R7 0 +1
      131 LOADB                            R7 1
      132 GETIMPORT                        R8 K20 [string.format]
      134 LOADK                            R9 K22 ["Localization table %s must have a .csv string resource table of translations"]
      135 MOVE                             R10 R4
      136 CALL                             R8 2 -1
      137 FASTCALL                         ASSERT ; [+2]
      138 GETIMPORT                        R6 K5 [assert]
      140 CALL                             R6 -1 0
      141 FORGLOOP                         R1 2 ; [-61]
      143 GETTABLEKS                       R1 R0 K6 ["stringResourceTable"]
      145 GETTABLEKS                       R2 R0 K8 ["translationResourceTable"]
      147 GETTABLEKS                       R3 R0 K23 ["getLocale"]
      149 GETTABLEKS                       R4 R0 K24 ["overrideLocaleId"]
      151 GETTABLEKS                       R5 R0 K25 ["overrideLocaleChangedSignal"]
      153 GETTABLEKS                       R6 R0 K26 ["namespace"]
      155 GETTABLEKS                       R7 R0 K10 ["pluginName"]
      157 JUMPIFNOTEQKNIL                  R6 ; [+2]
      159 LOADK                            R6 K27 ["Studio"]
      160 LOADNIL                          R8
      161 JUMPIFNOT                        R5 ; [+2]
      162 MOVE                             R8 R5
      163 JUMP                             ; [+3]
      164 GETUPVAL                         R9 0
      165 CALL                             R9 0 1
      166 MOVE                             R8 R9
      167 NEWCLOSURE                       R9 P0
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R4
      170 CAPTURE                          UPVAL U1
      171 CAPTURE                          UPVAL U2
      172 CAPTURE                          UPVAL U3
      173 CAPTURE                          UPVAL U4
      174 DUPTABLE                         R10 K36 [{["localeChanged"], ["externalLocaleChanged"], ["externalLocaleChangedConnection"] = , ["locale"] = "en-us", ["keyNamespace"], ["keyPluginName"], ["getLocale"]}]
      175 GETUPVAL                         R11 5
      176 GETTABLEKS                       R11 R11 K37 ["new"]
      178 CALL                             R11 0 1
      179 SETTABLEKS                       R11 R10 K28 ["localeChanged"]
      181 SETTABLEKS                       R8 R10 K29 ["externalLocaleChanged"]
      183 SETTABLEKS                       R6 R10 K34 ["keyNamespace"]
      185 SETTABLEKS                       R7 R10 K35 ["keyPluginName"]
      187 SETTABLEKS                       R9 R10 K23 ["getLocale"]
      189 GETUPVAL                         R11 6
      190 GETTABLEKS                       R11 R11 K38 ["Dictionary"]
      192 GETTABLEKS                       R11 R11 K39 ["join"]
      194 GETTABLEKS                       R12 R0 K13 ["libraries"]
      196 JUMPIF                           R12 ; [+2]
      197 NEWTABLE                         R12 0 0
      199 NEWTABLE                         R13 1 0
      201 GETTABLEKS                       R14 R10 K35 ["keyPluginName"]
      203 DUPTABLE                         R15 K40 [{"stringResourceTable", "translationResourceTable"}]
      204 SETTABLEKS                       R1 R15 K6 ["stringResourceTable"]
      206 SETTABLEKS                       R2 R15 K8 ["translationResourceTable"]
      208 SETTABLE                         R15 R13 R14
      209 CALL                             R11 2 1
      210 SETTABLEKS                       R11 R10 K41 ["projects"]
      212 NEWTABLE                         R11 0 0
      214 SETTABLEKS                       R11 R10 K42 ["translators"]
      216 NEWTABLE                         R11 0 0
      218 SETTABLEKS                       R11 R10 K43 ["fallbackTranslators"]
      220 GETUPVAL                         R13 7
      221 FASTCALL2                        SETMETATABLE R10 R13 ; [+4]
      223 MOVE                             R12 R10
      224 GETIMPORT                        R11 K45 [setmetatable]
      226 CALL                             R11 2 0
      227 GETTABLEKS                       R11 R10 K29 ["externalLocaleChanged"]
      229 NEWCLOSURE                       R13 P1
      230 CAPTURE                          VAL R10
      231 NAMECALL                         R11 R11 K46 ["Connect"]
      233 CALL                             R11 2 1
      234 SETTABLEKS                       R11 R10 K47 ["localeChangedConnection"]
      236 NAMECALL                         R11 R10 K48 ["updateLocaleAndTranslator"]
      238 CALL                             R11 1 0
      239 RETURN                           R10 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["localeChanged"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_10:
        0 GETTABLEKS                       R6 R0 K0 ["keyPluginName"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R0 K1 ["getProjectText"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 JUMPIF                           R0 ; [+3]
        1 LOADB                            R1 0
        2 LOADNIL                          R2
        3 RETURN                           R1 2
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K1 [pcall]
       11 CALL                             R1 1 2
       12 RETURN                           R1 2

PROTO_13:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R8 R1
        2 GETIMPORT                        R7 K1 [type]
        4 CALL                             R7 1 1
        5 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
        7 LOADB                            R6 0 +1
        8 LOADB                            R6 1
        9 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       11 LOADK                            R7 K3 ["Cannot fetch the string without a project"]
       12 GETIMPORT                        R5 K5 [assert]
       14 CALL                             R5 2 0
       15 FASTCALL1                        TYPE R2 ; [+3]
       16 MOVE                             R8 R2
       17 GETIMPORT                        R7 K1 [type]
       19 CALL                             R7 1 1
       20 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K6 ; [+4]
       26 LOADK                            R7 K6 ["Cannot fetch the string without a scope"]
       27 GETIMPORT                        R5 K5 [assert]
       29 CALL                             R5 2 0
       30 FASTCALL1                        TYPE R3 ; [+3]
       31 MOVE                             R8 R3
       32 GETIMPORT                        R7 K1 [type]
       34 CALL                             R7 1 1
       35 JUMPIFEQKS                       R7 K2 ["string"] ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       41 LOADK                            R7 K7 ["Cannot fetch a string without the key"]
       42 GETIMPORT                        R5 K5 [assert]
       44 CALL                             R5 2 0
       45 GETTABLEKS                       R8 R0 K8 ["projects"]
       47 GETTABLE                         R7 R8 R1
       48 JUMPIFNOTEQKNIL                  R7 ; [+2]
       50 LOADB                            R6 0 +1
       51 LOADB                            R6 1
       52 GETIMPORT                        R7 K10 [string.format]
       54 LOADK                            R8 K11 ["Project %s is not available"]
       55 MOVE                             R9 R1
       56 CALL                             R7 2 -1
       57 FASTCALL                         ASSERT ; [+2]
       58 GETIMPORT                        R5 K5 [assert]
       60 CALL                             R5 -1 0
       61 GETIMPORT                        R5 K10 [string.format]
       63 LOADK                            R6 K12 ["%s.%s.%s.%s"]
       64 GETTABLEKS                       R7 R0 K13 ["keyNamespace"]
       66 MOVE                             R8 R1
       67 MOVE                             R9 R2
       68 MOVE                             R10 R3
       69 CALL                             R5 5 1
       70 NEWCLOSURE                       R6 P0
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R4
       73 GETTABLEKS                       R8 R0 K14 ["translators"]
       75 GETTABLE                         R7 R8 R1
       76 GETTABLEKS                       R9 R0 K15 ["fallbackTranslators"]
       78 GETTABLE                         R8 R9 R1
       79 LOADNIL                          R9
       80 LOADNIL                          R10
       81 GETTABLEKS                       R11 R0 K16 ["locale"]
       83 JUMPIFNOTEQKS                    R11 K17 ["en-us"] ; [+20]
       85 JUMPIF                           R8 ; [+3]
       86 LOADB                            R11 0
       87 LOADNIL                          R12
       88 JUMP                             ; [+10]
       89 NEWCLOSURE                       R14 P1
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R4
       93 FASTPCALL                        pcall 1 ; [+2]
       94 GETIMPORT                        R13 K19 [pcall]
       96 CALL                             R13 1 2
       97 MOVE                             R11 R13
       98 MOVE                             R12 R14
       99 MOVE                             R9 R11
      100 MOVE                             R10 R12
      101 JUMPIFNOT                        R9 ; [+38]
      102 RETURN                           R10 1
      103 JUMP                             ; [+36]
      104 JUMPIF                           R7 ; [+3]
      105 LOADB                            R11 0
      106 LOADNIL                          R12
      107 JUMP                             ; [+10]
      108 NEWCLOSURE                       R14 P1
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 FASTPCALL                        pcall 1 ; [+2]
      113 GETIMPORT                        R13 K19 [pcall]
      115 CALL                             R13 1 2
      116 MOVE                             R11 R13
      117 MOVE                             R12 R14
      118 MOVE                             R9 R11
      119 MOVE                             R10 R12
      120 JUMPIFNOT                        R9 ; [+1]
      121 RETURN                           R10 1
      122 JUMPIF                           R8 ; [+3]
      123 LOADB                            R11 0
      124 LOADNIL                          R12
      125 JUMP                             ; [+10]
      126 NEWCLOSURE                       R14 P1
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R4
      130 FASTPCALL                        pcall 1 ; [+2]
      131 GETIMPORT                        R13 K19 [pcall]
      133 CALL                             R13 1 2
      134 MOVE                             R11 R13
      135 MOVE                             R12 R14
      136 MOVE                             R9 R11
      137 MOVE                             R10 R12
      138 JUMPIFNOT                        R9 ; [+1]
      139 RETURN                           R10 1
      140 MOVE                             R12 R10
      141 JUMPIFNOT                        R12 ; [+9]
      142 FASTCALL1                        TYPEOF R10 ; [+3]
      143 MOVE                             R14 R10
      144 GETIMPORT                        R13 K21 [typeof]
      146 CALL                             R13 1 1
      147 JUMPIFEQKS                       R13 K2 ["string"] ; [+2]
      149 LOADB                            R12 0 +1
      150 LOADB                            R12 1
      151 FASTCALL2K                       ASSERT R12 K22 ; [+4]
      153 LOADK                            R13 K22 ["Failed to get translated string"]
      154 GETIMPORT                        R11 K5 [assert]
      156 CALL                             R11 2 0
      157 GETIMPORT                        R11 K24 [game]
      159 LOADK                            R13 K25 ["RefactorTranslatorInstance"]
      160 NAMECALL                         R11 R11 K26 ["GetEngineFeature"]
      162 CALL                             R11 2 1
      163 JUMPIFNOT                        R11 ; [+19]
      164 GETTABLEKS                       R11 R0 K27 ["keyPluginName"]
      166 JUMPIFEQKS                       R11 K28 ["Test"] ; [+34]
      168 JUMPIF                           R9 ; [+32]
      169 GETIMPORT                        R11 K30 [string.find]
      171 MOVE                             R12 R10
      172 LOADK                            R13 K31 ["Key .* not found for locale"]
      173 CALL                             R11 2 1
      174 JUMPIF                           R11 ; [+26]
      175 GETIMPORT                        R11 K33 [warn]
      177 MOVE                             R12 R10
      178 GETIMPORT                        R13 K36 [debug.traceback]
      180 CALL                             R13 0 -1
      181 CALL                             R11 -1 0
      182 RETURN                           R5 1
      183 GETTABLEKS                       R11 R0 K27 ["keyPluginName"]
      185 JUMPIFEQKS                       R11 K28 ["Test"] ; [+15]
      187 JUMPIF                           R9 ; [+13]
      188 GETIMPORT                        R11 K30 [string.find]
      190 MOVE                             R12 R10
      191 LOADK                            R13 K37 ["LocalizationTable or parent tables do not contain a translation"]
      192 CALL                             R11 2 1
      193 JUMPIF                           R11 ; [+7]
      194 GETIMPORT                        R11 K33 [warn]
      196 MOVE                             R12 R10
      197 GETIMPORT                        R13 K36 [debug.traceback]
      199 CALL                             R13 0 -1
      200 CALL                             R11 -1 0
      201 RETURN                           R5 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["localeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["localeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["getLocale"]
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K1 ["locale"]
        5 GETIMPORT                        R1 K3 [pairs]
        7 GETTABLEKS                       R2 R0 K4 ["projects"]
        9 CALL                             R1 1 3
       10 FORGPREP_NEXT                    R1
       11 GETTABLEKS                       R6 R0 K5 ["translators"]
       13 GETTABLEKS                       R7 R5 K6 ["translationResourceTable"]
       15 GETTABLEKS                       R9 R0 K1 ["locale"]
       17 NAMECALL                         R7 R7 K7 ["GetTranslator"]
       19 CALL                             R7 2 1
       20 SETTABLE                         R7 R6 R4
       21 GETTABLEKS                       R6 R0 K8 ["fallbackTranslators"]
       23 GETTABLEKS                       R7 R5 K9 ["stringResourceTable"]
       25 LOADK                            R9 K10 ["en-us"]
       26 NAMECALL                         R7 R7 K7 ["GetTranslator"]
       28 CALL                             R7 2 1
       29 SETTABLE                         R7 R6 R4
       30 FORGLOOP                         R1 2 ; [-20]
       32 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%."]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LENGTH                           R2 R0
        7 ADDK                             R1 R2 K4 [1]
        8 RETURN                           R1 1

PROTO_17:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R1 0
        3 RETURN                           R1 1
        4 FASTCALL1                        MATH_ABS R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K3 [math.abs]
        8 CALL                             R3 1 1
        9 FASTCALL1                        MATH_LOG10 R3 ; [+2]
       10 GETIMPORT                        R2 K5 [math.log10]
       12 CALL                             R2 1 1
       13 FASTCALL1                        MATH_FLOOR R2 ; [+2]
       14 GETIMPORT                        R1 K7 [math.floor]
       16 CALL                             R1 1 1
       17 ADDK                             R3 R1 K8 [1]
       18 MINUS                            R2 R3
       19 RETURN                           R2 1

PROTO_18:
        0 JUMPIFNOTEQKN                    R0 K0 [0] ; [+3]
        2 LOADN                            R3 0
        3 JUMP                             ; [+15]
        4 FASTCALL1                        MATH_ABS R0 ; [+3]
        5 MOVE                             R7 R0
        6 GETIMPORT                        R6 K3 [math.abs]
        8 CALL                             R6 1 1
        9 FASTCALL1                        MATH_LOG10 R6 ; [+2]
       10 GETIMPORT                        R5 K5 [math.log10]
       12 CALL                             R5 1 1
       13 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       14 GETIMPORT                        R4 K7 [math.floor]
       16 CALL                             R4 1 1
       17 ADDK                             R5 R4 K8 [1]
       18 MINUS                            R3 R5
       19 LOADN                            R5 10
       20 ADD                              R6 R1 R3
       21 POW                              R4 R5 R6
       22 LOADNIL                          R5
       23 JUMPIFNOTEQKS                    R2 K9 ["Truncate"] ; [+8]
       25 MUL                              R7 R0 R4
       26 FASTCALL1                        MATH_MODF R7 ; [+2]
       27 GETIMPORT                        R6 K11 [math.modf]
       29 CALL                             R6 1 1
       30 MOVE                             R5 R6
       31 JUMP                             ; [+7]
       32 MUL                              R8 R0 R4
       33 ADDK                             R7 R8 K12 [0.5]
       34 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       35 GETIMPORT                        R6 K7 [math.floor]
       37 CALL                             R6 1 1
       38 MOVE                             R5 R6
       39 DIV                              R6 R5 R4
       40 RETURN                           R6 1

PROTO_19:
        0 MOVE                             R2 R0
        1 GETIMPORT                        R3 K2 [string.format]
        3 LOADK                            R4 K3 ["%%1%s%%2"]
        4 MOVE                             R5 R1
        5 CALL                             R3 2 1
        6 GETIMPORT                        R4 K5 [string.gsub]
        8 MOVE                             R5 R2
        9 LOADK                            R6 K6 ["^(-?%d+)(%d%d%d)"]
       10 MOVE                             R7 R3
       11 CALL                             R4 3 2
       12 MOVE                             R2 R4
       13 JUMPIFEQKN                       R5 K7 [0] ; [+2]
       15 JUMPBACK                         ; [-10]
       16 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R3 R0 K0 ["entries"]
        2 GETTABLEN                        R4 R3 1
        3 FASTCALL1                        MATH_ABS R1 ; [+3]
        4 MOVE                             R6 R1
        5 GETIMPORT                        R5 K3 [math.abs]
        7 CALL                             R5 1 1
        8 LENGTH                           R8 R3
        9 LOADN                            R6 2
       10 LOADN                            R7 -1
       11 FORNPREP                         R6
       12 GETTABLE                         R9 R3 R8
       13 LOADNIL                          R10
       14 JUMPIFNOTEQKS                    R2 K4 ["Truncate"] ; [+3]
       16 GETTABLEN                        R10 R9 1
       17 JUMP                             ; [+6]
       18 GETTABLEN                        R11 R9 1
       19 SUBK                             R15 R8 K6 [1]
       20 GETTABLE                         R14 R3 R15
       21 GETTABLEN                        R13 R14 1
       22 DIVK                             R12 R13 K5 [2]
       23 SUB                              R10 R11 R12
       24 JUMPIFNOTLE                      R10 R5 ; [+3]
       26 MOVE                             R4 R9
       27 RETURN                           R4 1
       28 FORNLOOP                         R6
       29 RETURN                           R4 1

PROTO_21:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADK                            R2 K1 ["0"]
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R4 R0 K2 ["locale"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIF                           R2 ; [+3]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K3 ["en-us"]
       12 GETTABLEKS                       R3 R2 K4 ["groupDelimiter"]
       14 JUMPIFNOT                        R3 ; [+6]
       15 GETUPVAL                         R3 1
       16 MOVE                             R4 R1
       17 GETTABLEKS                       R5 R2 K4 ["groupDelimiter"]
       19 CALL                             R3 2 1
       20 RETURN                           R3 1
       21 RETURN                           R1 1

PROTO_22:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADK                            R4 K1 ["0"]
        3 RETURN                           R4 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADK                            R2 K2 ["RoundToClosest"]
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADN                            R3 3
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R6 R0 K3 ["locale"]
       13 GETTABLE                         R4 R5 R6
       14 JUMPIF                           R4 ; [+3]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K4 ["en-us"]
       18 GETUPVAL                         R5 1
       19 MOVE                             R6 R4
       20 MOVE                             R7 R1
       21 MOVE                             R8 R2
       22 CALL                             R5 3 1
       23 GETTABLEN                        R6 R5 1
       24 GETTABLEN                        R7 R5 2
       25 DIV                              R9 R1 R6
       26 JUMPIFNOTEQKN                    R9 K0 [0] ; [+3]
       28 LOADN                            R12 0
       29 JUMP                             ; [+15]
       30 FASTCALL1                        MATH_ABS R9 ; [+3]
       31 MOVE                             R16 R9
       32 GETIMPORT                        R15 K7 [math.abs]
       34 CALL                             R15 1 1
       35 FASTCALL1                        MATH_LOG10 R15 ; [+2]
       36 GETIMPORT                        R14 K9 [math.log10]
       38 CALL                             R14 1 1
       39 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       40 GETIMPORT                        R13 K11 [math.floor]
       42 CALL                             R13 1 1
       43 ADDK                             R14 R13 K12 [1]
       44 MINUS                            R12 R14
       45 LOADN                            R14 10
       46 ADD                              R15 R3 R12
       47 POW                              R13 R14 R15
       48 LOADNIL                          R14
       49 GETUPVAL                         R15 2
       50 GETTABLEKS                       R15 R15 K13 ["Truncate"]
       52 JUMPIFNOTEQ                      R2 R15 ; [+8]
       54 MUL                              R16 R9 R13
       55 FASTCALL1                        MATH_MODF R16 ; [+2]
       56 GETIMPORT                        R15 K15 [math.modf]
       58 CALL                             R15 1 1
       59 MOVE                             R14 R15
       60 JUMP                             ; [+7]
       61 MUL                              R17 R9 R13
       62 ADDK                             R16 R17 K16 [0.5]
       63 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       64 GETIMPORT                        R15 K11 [math.floor]
       66 CALL                             R15 1 1
       67 MOVE                             R14 R15
       68 DIV                              R8 R14 R13
       69 LOADNIL                          R9
       70 JUMPIFNOTEQKS                    R2 K13 ["Truncate"] ; [+8]
       72 MULK                             R11 R8 K17 [10]
       73 FASTCALL1                        MATH_MODF R11 ; [+2]
       74 GETIMPORT                        R10 K15 [math.modf]
       76 CALL                             R10 1 1
       77 DIVK                             R9 R10 K17 [10]
       78 JUMP                             ; [+7]
       79 MULK                             R12 R8 K17 [10]
       80 ADDK                             R11 R12 K16 [0.5]
       81 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       82 GETIMPORT                        R10 K11 [math.floor]
       84 CALL                             R10 1 1
       85 DIVK                             R9 R10 K17 [10]
       86 FASTCALL1                        TOSTRING R9 ; [+3]
       87 MOVE                             R11 R9
       88 GETIMPORT                        R10 K19 [tostring]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K22 [string.find]
       93 MOVE                             R12 R10
       94 LOADK                            R13 K23 ["%."]
       95 CALL                             R11 2 1
       96 JUMPIF                           R11 ; [+2]
       97 LENGTH                           R12 R10
       98 ADDK                             R11 R12 K12 [1]
       99 LOADN                            R14 1
      100 SUBK                             R15 R11 K12 [1]
      101 FASTCALL3                        STRING_SUB R10 R14 R15
      103 MOVE                             R13 R10
      104 GETIMPORT                        R12 K25 [string.sub]
      106 CALL                             R12 3 1
      107 ADDK                             R15 R11 K12 [1]
      108 LENGTH                           R16 R10
      109 FASTCALL3                        STRING_SUB R10 R15 R16
      111 MOVE                             R14 R10
      112 GETIMPORT                        R13 K25 [string.sub]
      114 CALL                             R13 3 1
      115 GETTABLEKS                       R14 R4 K26 ["groupDelimiter"]
      117 JUMPIFNOT                        R14 ; [+6]
      118 GETUPVAL                         R14 3
      119 MOVE                             R15 R12
      120 GETTABLEKS                       R16 R4 K26 ["groupDelimiter"]
      122 CALL                             R14 2 1
      123 MOVE                             R12 R14
      124 LENGTH                           R14 R13
      125 LOADN                            R15 0
      126 JUMPIFNOTLT                      R15 R14 ; [+8]
      128 MOVE                             R15 R12
      129 GETTABLEKS                       R16 R4 K27 ["decimalSeparator"]
      131 MOVE                             R17 R13
      132 MOVE                             R18 R7
      133 CONCAT                           R14 R15 R18
      134 RETURN                           R14 1
      135 MOVE                             R15 R12
      136 MOVE                             R16 R7
      137 CONCAT                           R14 R15 R16
      138 RETURN                           R14 1

PROTO_23:
        0 LOADK                            R3 K0 [""]
        1 JUMPIFNOT                        R2 ; [+35]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R5 R2
        4 GETIMPORT                        R4 K2 [type]
        6 CALL                             R4 1 1
        7 JUMPIFEQKS                       R4 K3 ["table"] ; [+6]
        9 GETIMPORT                        R4 K5 [error]
       11 LOADK                            R5 K6 ["Args must be a table"]
       12 CALL                             R4 1 0
       13 JUMP                             ; [+23]
       14 GETIMPORT                        R4 K8 [pairs]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 3
       18 FORGPREP_NEXT                    R4
       19 GETIMPORT                        R9 K11 [string.format]
       21 LOADK                            R10 K12 ["%s,%s:%s"]
       22 MOVE                             R11 R3
       23 MOVE                             R12 R7
       24 MOVE                             R13 R8
       25 CALL                             R9 4 1
       26 MOVE                             R3 R9
       27 FORGLOOP                         R4 2 ; [-9]
       29 FASTCALL2K                       STRING_SUB R3 K13 ; [+5]
       31 MOVE                             R5 R3
       32 LOADK                            R6 K13 [2]
       33 GETIMPORT                        R4 K15 [string.sub]
       35 CALL                             R4 2 1
       36 MOVE                             R3 R4
       37 GETIMPORT                        R4 K11 [string.format]
       39 LOADK                            R5 K16 ["%s:[%s]"]
       40 MOVE                             R6 R1
       41 MOVE                             R7 R3
       42 CALL                             R4 3 -1
       43 RETURN                           R4 -1

PROTO_24:
        0 DUPTABLE                         R0 K1 [{"FormatByKey"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_23]
        2 SETTABLEKS                       R1 R0 K0 ["FormatByKey"]
        4 RETURN                           R0 1

PROTO_25:
        0 LOADK                            R0 K0 ["en-us"]
        1 RETURN                           R0 1

PROTO_26:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K1 [{"GetTranslator"}]
        6 DUPCLOSURE                       R2 K2 [PROTO_24]
        7 SETTABLEKS                       R2 R1 K0 ["GetTranslator"]
        9 GETTABLEKS                       R2 R0 K3 ["getLocale"]
       11 JUMPIF                           R2 ; [+1]
       12 DUPCLOSURE                       R2 K4 [PROTO_25]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K5 ["new"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K6 ["Dictionary"]
       19 GETTABLEKS                       R4 R4 K7 ["join"]
       21 DUPTABLE                         R5 K13 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "Test", ["overrideLocaleChangedSignal"], ["getLocale"]}]
       22 SETTABLEKS                       R1 R5 K8 ["stringResourceTable"]
       24 SETTABLEKS                       R1 R5 K9 ["translationResourceTable"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K5 ["new"]
       29 CALL                             R6 0 1
       30 SETTABLEKS                       R6 R5 K12 ["overrideLocaleChangedSignal"]
       32 SETTABLEKS                       R2 R5 K3 ["getLocale"]
       34 MOVE                             R6 R0
       35 JUMPIF                           R6 ; [+2]
       36 NEWTABLE                         R6 0 0
       38 CALL                             R4 2 1
       39 CALL                             R3 1 -1
       40 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R2 K4 [PROTO_0]
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K6 [pcall]
       11 CALL                             R1 1 2
       12 GETIMPORT                        R3 K8 [script]
       14 LOADK                            R5 K9 ["Properties"]
       15 NAMECALL                         R3 R3 K10 ["FindFirstAncestor"]
       17 CALL                             R3 2 1
       18 GETIMPORT                        R4 K12 [require]
       20 GETTABLEKS                       R5 R3 K13 ["Parent"]
       22 GETTABLEKS                       R5 R5 K14 ["Cryo"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K12 [require]
       27 GETTABLEKS                       R6 R3 K13 ["Parent"]
       29 GETTABLEKS                       R6 R6 K15 ["Signal"]
       31 CALL                             R5 1 1
       32 NEWTABLE                         R6 16 0
       34 SETTABLEKS                       R6 R6 K16 ["__index"]
       36 LOADB                            R7 0
       37 GETIMPORT                        R9 K1 [game]
       39 GETTABLEKS                       R9 R9 K17 ["DefineFastFlag"]
       41 GETIMPORT                        R10 K1 [game]
       43 LOADK                            R11 K18 ["CorrectlyParseQTLocale"]
       44 LOADB                            R12 0
       45 FASTPCALL                        pcall 4 ; [+2]
       46 GETIMPORT                        R8 K6 [pcall]
       48 CALL                             R8 4 2
       49 JUMPIFNOT                        R8 ; [+1]
       50 MOVE                             R7 R9
       51 DUPCLOSURE                       R8 K19 [PROTO_2]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R0
       55 DUPCLOSURE                       R9 K20 [PROTO_4]
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R0
       59 NEWCLOSURE                       R10 P3
       60 CAPTURE                          VAL R9
       61 CAPTURE                          REF R7
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R6
       68 SETTABLEKS                       R10 R6 K21 ["new"]
       70 DUPCLOSURE                       R10 K22 [PROTO_8]
       71 SETTABLEKS                       R10 R6 K23 ["getSignal"]
       73 DUPCLOSURE                       R10 K24 [PROTO_9]
       74 SETTABLEKS                       R10 R6 K25 ["getConsumerItem"]
       76 DUPCLOSURE                       R10 K26 [PROTO_10]
       77 SETTABLEKS                       R10 R6 K27 ["getText"]
       79 DUPCLOSURE                       R10 K28 [PROTO_13]
       80 SETTABLEKS                       R10 R6 K29 ["getProjectText"]
       82 DUPCLOSURE                       R10 K30 [PROTO_14]
       83 SETTABLEKS                       R10 R6 K31 ["destroy"]
       85 DUPCLOSURE                       R10 K32 [PROTO_15]
       86 SETTABLEKS                       R10 R6 K33 ["updateLocaleAndTranslator"]
       88 DUPTABLE                         R10 K36 [{["RoundToClosest"] = "RoundToClosest", ["Truncate"] = "Truncate"}]
       89 NEWTABLE                         R11 0 0
       91 NEWTABLE                         R12 4 0
       93 LOADK                            R13 K37 ["."]
       94 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
       96 LOADK                            R13 K39 [","]
       97 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
       99 NEWTABLE                         R13 0 4
      101 NEWTABLE                         R14 0 2
      103 LOADN                            R15 1
      104 LOADK                            R16 K41 [""]
      105 SETLIST                          R14 R15 2 [1]
      107 NEWTABLE                         R15 0 2
      109 LOADN                            R16 1000
      110 LOADK                            R17 K42 ["K"]
      111 SETLIST                          R15 R16 2 [1]
      113 NEWTABLE                         R16 0 2
      115 LOADK                            R17 K43 [1000000]
      116 LOADK                            R18 K44 ["M"]
      117 SETLIST                          R16 R17 2 [1]
      119 NEWTABLE                         R17 0 2
      121 LOADK                            R18 K45 [1000000000]
      122 LOADK                            R19 K46 ["B"]
      123 SETLIST                          R17 R18 2 [1]
      125 SETLIST                          R13 R14 4 [1]
      127 SETTABLEKS                       R13 R12 K47 ["entries"]
      129 SETTABLEKS                       R12 R11 K48 ["en-us"]
      131 NEWTABLE                         R12 4 0
      133 LOADK                            R13 K39 [","]
      134 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      136 LOADK                            R13 K37 ["."]
      137 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      139 NEWTABLE                         R13 0 3
      141 NEWTABLE                         R14 0 2
      143 LOADN                            R15 1
      144 LOADK                            R16 K41 [""]
      145 SETLIST                          R14 R15 2 [1]
      147 NEWTABLE                         R15 0 2
      149 LOADN                            R16 1000
      150 LOADK                            R17 K49 [" mil"]
      151 SETLIST                          R15 R16 2 [1]
      153 NEWTABLE                         R16 0 2
      155 LOADK                            R17 K43 [1000000]
      156 LOADK                            R18 K50 [" M"]
      157 SETLIST                          R16 R17 2 [1]
      159 SETLIST                          R13 R14 3 [1]
      161 SETTABLEKS                       R13 R12 K47 ["entries"]
      163 SETTABLEKS                       R12 R11 K51 ["es-es"]
      165 NEWTABLE                         R12 4 0
      167 LOADK                            R13 K39 [","]
      168 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      170 LOADK                            R13 K52 [" "]
      171 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      173 NEWTABLE                         R13 0 4
      175 NEWTABLE                         R14 0 2
      177 LOADN                            R15 1
      178 LOADK                            R16 K41 [""]
      179 SETLIST                          R14 R15 2 [1]
      181 NEWTABLE                         R15 0 2
      183 LOADN                            R16 1000
      184 LOADK                            R17 K53 [" k"]
      185 SETLIST                          R15 R16 2 [1]
      187 NEWTABLE                         R16 0 2
      189 LOADK                            R17 K43 [1000000]
      190 LOADK                            R18 K50 [" M"]
      191 SETLIST                          R16 R17 2 [1]
      193 NEWTABLE                         R17 0 2
      195 LOADK                            R18 K45 [1000000000]
      196 LOADK                            R19 K54 [" Md"]
      197 SETLIST                          R17 R18 2 [1]
      199 SETLIST                          R13 R14 4 [1]
      201 SETTABLEKS                       R13 R12 K47 ["entries"]
      203 SETTABLEKS                       R12 R11 K55 ["fr-fr"]
      205 NEWTABLE                         R12 4 0
      207 LOADK                            R13 K39 [","]
      208 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      210 LOADK                            R13 K52 [" "]
      211 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      213 NEWTABLE                         R13 0 4
      215 NEWTABLE                         R14 0 2
      217 LOADN                            R15 1
      218 LOADK                            R16 K41 [""]
      219 SETLIST                          R14 R15 2 [1]
      221 NEWTABLE                         R15 0 2
      223 LOADN                            R16 1000
      224 LOADK                            R17 K56 [" Tsd."]
      225 SETLIST                          R15 R16 2 [1]
      227 NEWTABLE                         R16 0 2
      229 LOADK                            R17 K43 [1000000]
      230 LOADK                            R18 K57 [" Mio."]
      231 SETLIST                          R16 R17 2 [1]
      233 NEWTABLE                         R17 0 2
      235 LOADK                            R18 K45 [1000000000]
      236 LOADK                            R19 K58 [" Mrd."]
      237 SETLIST                          R17 R18 2 [1]
      239 SETLIST                          R13 R14 4 [1]
      241 SETTABLEKS                       R13 R12 K47 ["entries"]
      243 SETTABLEKS                       R12 R11 K59 ["de-de"]
      245 NEWTABLE                         R12 4 0
      247 LOADK                            R13 K39 [","]
      248 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      250 LOADK                            R13 K37 ["."]
      251 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      253 NEWTABLE                         R13 0 4
      255 NEWTABLE                         R14 0 2
      257 LOADN                            R15 1
      258 LOADK                            R16 K41 [""]
      259 SETLIST                          R14 R15 2 [1]
      261 NEWTABLE                         R15 0 2
      263 LOADN                            R16 1000
      264 LOADK                            R17 K49 [" mil"]
      265 SETLIST                          R15 R16 2 [1]
      267 NEWTABLE                         R16 0 2
      269 LOADK                            R17 K43 [1000000]
      270 LOADK                            R18 K60 [" mi"]
      271 SETLIST                          R16 R17 2 [1]
      273 NEWTABLE                         R17 0 2
      275 LOADK                            R18 K45 [1000000000]
      276 LOADK                            R19 K61 [" bi"]
      277 SETLIST                          R17 R18 2 [1]
      279 SETLIST                          R13 R14 4 [1]
      281 SETTABLEKS                       R13 R12 K47 ["entries"]
      283 SETTABLEKS                       R12 R11 K62 ["pt-br"]
      285 NEWTABLE                         R12 4 0
      287 LOADK                            R13 K37 ["."]
      288 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      290 LOADK                            R13 K39 [","]
      291 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      293 NEWTABLE                         R13 0 4
      295 NEWTABLE                         R14 0 2
      297 LOADN                            R15 1
      298 LOADK                            R16 K41 [""]
      299 SETLIST                          R14 R15 2 [1]
      301 NEWTABLE                         R15 0 2
      303 LOADN                            R16 1000
      304 LOADK                            R17 K63 ["千"]
      305 SETLIST                          R15 R16 2 [1]
      307 NEWTABLE                         R16 0 2
      309 LOADN                            R17 10000
      310 LOADK                            R18 K64 ["万"]
      311 SETLIST                          R16 R17 2 [1]
      313 NEWTABLE                         R17 0 2
      315 LOADK                            R18 K65 [100000000]
      316 LOADK                            R19 K66 ["亿"]
      317 SETLIST                          R17 R18 2 [1]
      319 SETLIST                          R13 R14 4 [1]
      321 SETTABLEKS                       R13 R12 K47 ["entries"]
      323 SETTABLEKS                       R12 R11 K67 ["zh-cn"]
      325 NEWTABLE                         R12 4 0
      327 LOADK                            R13 K37 ["."]
      328 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      330 LOADK                            R13 K39 [","]
      331 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      333 NEWTABLE                         R13 0 4
      335 NEWTABLE                         R14 0 2
      337 LOADN                            R15 1
      338 LOADK                            R16 K41 [""]
      339 SETLIST                          R14 R15 2 [1]
      341 NEWTABLE                         R15 0 2
      343 LOADN                            R16 1000
      344 LOADK                            R17 K63 ["千"]
      345 SETLIST                          R15 R16 2 [1]
      347 NEWTABLE                         R16 0 2
      349 LOADN                            R17 10000
      350 LOADK                            R18 K64 ["万"]
      351 SETLIST                          R16 R17 2 [1]
      353 NEWTABLE                         R17 0 2
      355 LOADK                            R18 K65 [100000000]
      356 LOADK                            R19 K66 ["亿"]
      357 SETLIST                          R17 R18 2 [1]
      359 SETLIST                          R13 R14 4 [1]
      361 SETTABLEKS                       R13 R12 K47 ["entries"]
      363 SETTABLEKS                       R12 R11 K68 ["zh-cjv"]
      365 NEWTABLE                         R12 4 0
      367 LOADK                            R13 K37 ["."]
      368 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      370 LOADK                            R13 K39 [","]
      371 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      373 NEWTABLE                         R13 0 4
      375 NEWTABLE                         R14 0 2
      377 LOADN                            R15 1
      378 LOADK                            R16 K41 [""]
      379 SETLIST                          R14 R15 2 [1]
      381 NEWTABLE                         R15 0 2
      383 LOADN                            R16 1000
      384 LOADK                            R17 K63 ["千"]
      385 SETLIST                          R15 R16 2 [1]
      387 NEWTABLE                         R16 0 2
      389 LOADN                            R17 10000
      390 LOADK                            R18 K69 ["萬"]
      391 SETLIST                          R16 R17 2 [1]
      393 NEWTABLE                         R17 0 2
      395 LOADK                            R18 K65 [100000000]
      396 LOADK                            R19 K70 ["億"]
      397 SETLIST                          R17 R18 2 [1]
      399 SETLIST                          R13 R14 4 [1]
      401 SETTABLEKS                       R13 R12 K47 ["entries"]
      403 SETTABLEKS                       R12 R11 K71 ["zh-tw"]
      405 NEWTABLE                         R12 4 0
      407 LOADK                            R13 K37 ["."]
      408 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      410 LOADK                            R13 K39 [","]
      411 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      413 NEWTABLE                         R13 0 4
      415 NEWTABLE                         R14 0 2
      417 LOADN                            R15 1
      418 LOADK                            R16 K41 [""]
      419 SETLIST                          R14 R15 2 [1]
      421 NEWTABLE                         R15 0 2
      423 LOADN                            R16 1000
      424 LOADK                            R17 K72 ["천"]
      425 SETLIST                          R15 R16 2 [1]
      427 NEWTABLE                         R16 0 2
      429 LOADN                            R17 10000
      430 LOADK                            R18 K73 ["만"]
      431 SETLIST                          R16 R17 2 [1]
      433 NEWTABLE                         R17 0 2
      435 LOADK                            R18 K65 [100000000]
      436 LOADK                            R19 K74 ["억"]
      437 SETLIST                          R17 R18 2 [1]
      439 SETLIST                          R13 R14 4 [1]
      441 SETTABLEKS                       R13 R12 K47 ["entries"]
      443 SETTABLEKS                       R12 R11 K75 ["ko-kr"]
      445 NEWTABLE                         R12 4 0
      447 LOADK                            R13 K37 ["."]
      448 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      450 LOADK                            R13 K39 [","]
      451 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      453 NEWTABLE                         R13 0 4
      455 NEWTABLE                         R14 0 2
      457 LOADN                            R15 1
      458 LOADK                            R16 K41 [""]
      459 SETLIST                          R14 R15 2 [1]
      461 NEWTABLE                         R15 0 2
      463 LOADN                            R16 1000
      464 LOADK                            R17 K63 ["千"]
      465 SETLIST                          R15 R16 2 [1]
      467 NEWTABLE                         R16 0 2
      469 LOADN                            R17 10000
      470 LOADK                            R18 K64 ["万"]
      471 SETLIST                          R16 R17 2 [1]
      473 NEWTABLE                         R17 0 2
      475 LOADK                            R18 K65 [100000000]
      476 LOADK                            R19 K70 ["億"]
      477 SETLIST                          R17 R18 2 [1]
      479 SETLIST                          R13 R14 4 [1]
      481 SETTABLEKS                       R13 R12 K47 ["entries"]
      483 SETTABLEKS                       R12 R11 K76 ["ja-jp"]
      485 NEWTABLE                         R12 4 0
      487 LOADK                            R13 K39 [","]
      488 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      490 LOADK                            R13 K52 [" "]
      491 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      493 NEWTABLE                         R13 0 4
      495 NEWTABLE                         R14 0 2
      497 LOADN                            R15 1
      498 LOADK                            R16 K41 [""]
      499 SETLIST                          R14 R15 2 [1]
      501 NEWTABLE                         R15 0 2
      503 LOADN                            R16 1000
      504 LOADK                            R17 K77 [" mila"]
      505 SETLIST                          R15 R16 2 [1]
      507 NEWTABLE                         R16 0 2
      509 LOADK                            R17 K43 [1000000]
      510 LOADK                            R18 K78 [" Mln"]
      511 SETLIST                          R16 R17 2 [1]
      513 NEWTABLE                         R17 0 2
      515 LOADK                            R18 K45 [1000000000]
      516 LOADK                            R19 K79 [" Mld"]
      517 SETLIST                          R17 R18 2 [1]
      519 SETLIST                          R13 R14 4 [1]
      521 SETTABLEKS                       R13 R12 K47 ["entries"]
      523 SETTABLEKS                       R12 R11 K80 ["it-it"]
      525 NEWTABLE                         R12 4 0
      527 LOADK                            R13 K39 [","]
      528 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      530 LOADK                            R13 K37 ["."]
      531 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      533 NEWTABLE                         R13 0 4
      535 NEWTABLE                         R14 0 2
      537 LOADN                            R15 1
      538 LOADK                            R16 K41 [""]
      539 SETLIST                          R14 R15 2 [1]
      541 NEWTABLE                         R15 0 2
      543 LOADN                            R16 1000
      544 LOADK                            R17 K81 [" тыс"]
      545 SETLIST                          R15 R16 2 [1]
      547 NEWTABLE                         R16 0 2
      549 LOADK                            R17 K43 [1000000]
      550 LOADK                            R18 K82 [" млн"]
      551 SETLIST                          R16 R17 2 [1]
      553 NEWTABLE                         R17 0 2
      555 LOADK                            R18 K45 [1000000000]
      556 LOADK                            R19 K83 [" млрд"]
      557 SETLIST                          R17 R18 2 [1]
      559 SETLIST                          R13 R14 4 [1]
      561 SETTABLEKS                       R13 R12 K47 ["entries"]
      563 SETTABLEKS                       R12 R11 K84 ["ru-ru"]
      565 NEWTABLE                         R12 4 0
      567 LOADK                            R13 K39 [","]
      568 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      570 LOADK                            R13 K37 ["."]
      571 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      573 NEWTABLE                         R13 0 4
      575 NEWTABLE                         R14 0 2
      577 LOADN                            R15 1
      578 LOADK                            R16 K41 [""]
      579 SETLIST                          R14 R15 2 [1]
      581 NEWTABLE                         R15 0 2
      583 LOADN                            R16 1000
      584 LOADK                            R17 K85 [" rb"]
      585 SETLIST                          R15 R16 2 [1]
      587 NEWTABLE                         R16 0 2
      589 LOADK                            R17 K43 [1000000]
      590 LOADK                            R18 K86 [" jt"]
      591 SETLIST                          R16 R17 2 [1]
      593 NEWTABLE                         R17 0 2
      595 LOADK                            R18 K45 [1000000000]
      596 LOADK                            R19 K50 [" M"]
      597 SETLIST                          R17 R18 2 [1]
      599 SETLIST                          R13 R14 4 [1]
      601 SETTABLEKS                       R13 R12 K47 ["entries"]
      603 SETTABLEKS                       R12 R11 K87 ["id-id"]
      605 NEWTABLE                         R12 4 0
      607 LOADK                            R13 K37 ["."]
      608 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      610 LOADK                            R13 K52 [" "]
      611 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      613 NEWTABLE                         R13 0 4
      615 NEWTABLE                         R14 0 2
      617 LOADN                            R15 1
      618 LOADK                            R16 K41 [""]
      619 SETLIST                          R14 R15 2 [1]
      621 NEWTABLE                         R15 0 2
      623 LOADN                            R16 1000
      624 LOADK                            R17 K88 [" N"]
      625 SETLIST                          R15 R16 2 [1]
      627 NEWTABLE                         R16 0 2
      629 LOADK                            R17 K43 [1000000]
      630 LOADK                            R18 K89 [" Tr"]
      631 SETLIST                          R16 R17 2 [1]
      633 NEWTABLE                         R17 0 2
      635 LOADK                            R18 K45 [1000000000]
      636 LOADK                            R19 K90 [" T"]
      637 SETLIST                          R17 R18 2 [1]
      639 SETLIST                          R13 R14 4 [1]
      641 SETTABLEKS                       R13 R12 K47 ["entries"]
      643 SETTABLEKS                       R12 R11 K91 ["vi-vn"]
      645 NEWTABLE                         R12 4 0
      647 LOADK                            R13 K37 ["."]
      648 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      650 LOADK                            R13 K39 [","]
      651 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      653 NEWTABLE                         R13 0 5
      655 NEWTABLE                         R14 0 2
      657 LOADN                            R15 1
      658 LOADK                            R16 K41 [""]
      659 SETLIST                          R14 R15 2 [1]
      661 NEWTABLE                         R15 0 2
      663 LOADN                            R16 1000
      664 LOADK                            R17 K92 [" พ"]
      665 SETLIST                          R15 R16 2 [1]
      667 NEWTABLE                         R16 0 2
      669 LOADN                            R17 10000
      670 LOADK                            R18 K93 [" ม"]
      671 SETLIST                          R16 R17 2 [1]
      673 NEWTABLE                         R17 0 2
      675 LOADK                            R18 K94 [100000]
      676 LOADK                            R19 K95 [" ส"]
      677 SETLIST                          R17 R18 2 [1]
      679 NEWTABLE                         R18 0 2
      681 LOADK                            R19 K43 [1000000]
      682 LOADK                            R20 K96 [" ล"]
      683 SETLIST                          R18 R19 2 [1]
      685 SETLIST                          R13 R14 5 [1]
      687 SETTABLEKS                       R13 R12 K47 ["entries"]
      689 SETTABLEKS                       R12 R11 K97 ["th-th"]
      691 NEWTABLE                         R12 4 0
      693 LOADK                            R13 K39 [","]
      694 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      696 LOADK                            R13 K37 ["."]
      697 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      699 NEWTABLE                         R13 0 4
      701 NEWTABLE                         R14 0 2
      703 LOADN                            R15 1
      704 LOADK                            R16 K41 [""]
      705 SETLIST                          R14 R15 2 [1]
      707 NEWTABLE                         R15 0 2
      709 LOADN                            R16 1000
      710 LOADK                            R17 K98 [" B"]
      711 SETLIST                          R15 R16 2 [1]
      713 NEWTABLE                         R16 0 2
      715 LOADK                            R17 K43 [1000000]
      716 LOADK                            R18 K99 [" Mn"]
      717 SETLIST                          R16 R17 2 [1]
      719 NEWTABLE                         R17 0 2
      721 LOADK                            R18 K45 [1000000000]
      722 LOADK                            R19 K100 [" Mr"]
      723 SETLIST                          R17 R18 2 [1]
      725 SETLIST                          R13 R14 4 [1]
      727 SETTABLEKS                       R13 R12 K47 ["entries"]
      729 SETTABLEKS                       R12 R11 K101 ["tr-tr"]
      731 GETTABLEKS                       R12 R11 K48 ["en-us"]
      733 SETTABLEKS                       R12 R11 K102 ["en-gb"]
      735 GETTABLEKS                       R12 R11 K51 ["es-es"]
      737 SETTABLEKS                       R12 R11 K103 ["es-mx"]
      739 DUPCLOSURE                       R12 K104 [PROTO_16]
      740 DUPCLOSURE                       R13 K105 [PROTO_17]
      741 DUPCLOSURE                       R14 K106 [PROTO_18]
      742 DUPCLOSURE                       R15 K107 [PROTO_19]
      743 DUPCLOSURE                       R16 K108 [PROTO_20]
      744 DUPCLOSURE                       R17 K109 [PROTO_21]
      745 CAPTURE                          VAL R11
      746 CAPTURE                          VAL R15
      747 SETTABLEKS                       R17 R6 K110 ["localizeNumber"]
      749 DUPCLOSURE                       R17 K111 [PROTO_22]
      750 CAPTURE                          VAL R11
      751 CAPTURE                          VAL R16
      752 CAPTURE                          VAL R10
      753 CAPTURE                          VAL R15
      754 SETTABLEKS                       R17 R6 K112 ["localizeAndAbbreviateNumber"]
      756 DUPCLOSURE                       R17 K113 [PROTO_26]
      757 CAPTURE                          VAL R6
      758 CAPTURE                          VAL R4
      759 CAPTURE                          VAL R5
      760 SETTABLEKS                       R17 R6 K114 ["mock"]
      762 CLOSEUPVALS                      R7
      763 RETURN                           R6 1
