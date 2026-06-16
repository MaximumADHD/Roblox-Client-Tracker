PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1
        5 GETUPVAL                         R0 1
        6 JUMPIFEQKNIL                     R0 ; [+3]
        8 GETUPVAL                         R0 1
        9 RETURN                           R0 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R0 R1 K0 ["StudioLocaleId"]
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateLocaleAndTranslator"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["localeChanged"]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R0 R0 K2 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
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
      163 JUMP                             ; [+6]
      164 GETUPVAL                         R9 0
      165 LOADK                            R11 K28 ["StudioLocaleId"]
      166 NAMECALL                         R9 R9 K29 ["GetPropertyChangedSignal"]
      168 CALL                             R9 2 1
      169 MOVE                             R8 R9
      170 NEWCLOSURE                       R9 P0
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R4
      173 CAPTURE                          UPVAL U0
      174 DUPTABLE                         R10 K36 [{"localeChanged", "externalLocaleChanged", "externalLocaleChangedConnection", "locale", "keyNamespace", "keyPluginName", "getLocale"}]
      175 GETUPVAL                         R11 1
      176 GETTABLEKS                       R11 R11 K37 ["new"]
      178 CALL                             R11 0 1
      179 SETTABLEKS                       R11 R10 K30 ["localeChanged"]
      181 SETTABLEKS                       R8 R10 K31 ["externalLocaleChanged"]
      183 LOADNIL                          R11
      184 SETTABLEKS                       R11 R10 K32 ["externalLocaleChangedConnection"]
      186 LOADK                            R11 K38 ["en-us"]
      187 SETTABLEKS                       R11 R10 K33 ["locale"]
      189 SETTABLEKS                       R6 R10 K34 ["keyNamespace"]
      191 SETTABLEKS                       R7 R10 K35 ["keyPluginName"]
      193 SETTABLEKS                       R9 R10 K23 ["getLocale"]
      195 GETUPVAL                         R11 2
      196 GETTABLEKS                       R11 R11 K39 ["Dictionary"]
      198 GETTABLEKS                       R11 R11 K40 ["join"]
      200 GETTABLEKS                       R12 R0 K13 ["libraries"]
      202 JUMPIF                           R12 ; [+2]
      203 NEWTABLE                         R12 0 0
      205 NEWTABLE                         R13 2 0
      207 GETTABLEKS                       R14 R10 K35 ["keyPluginName"]
      209 DUPTABLE                         R15 K41 [{"stringResourceTable", "translationResourceTable"}]
      210 SETTABLEKS                       R1 R15 K6 ["stringResourceTable"]
      212 SETTABLEKS                       R2 R15 K8 ["translationResourceTable"]
      214 SETTABLE                         R15 R13 R14
      215 GETUPVAL                         R14 3
      216 GETTABLEKS                       R14 R14 K42 ["LOCALIZATION_PROJECT_NAME"]
      218 DUPTABLE                         R15 K41 [{"stringResourceTable", "translationResourceTable"}]
      219 GETUPVAL                         R16 3
      220 GETTABLEKS                       R16 R16 K43 ["SourceStrings"]
      222 SETTABLEKS                       R16 R15 K6 ["stringResourceTable"]
      224 GETUPVAL                         R16 3
      225 GETTABLEKS                       R16 R16 K44 ["LocalizedStrings"]
      227 SETTABLEKS                       R16 R15 K8 ["translationResourceTable"]
      229 SETTABLE                         R15 R13 R14
      230 CALL                             R11 2 1
      231 SETTABLEKS                       R11 R10 K45 ["projects"]
      233 NEWTABLE                         R11 0 0
      235 SETTABLEKS                       R11 R10 K46 ["translators"]
      237 NEWTABLE                         R11 0 0
      239 SETTABLEKS                       R11 R10 K47 ["fallbackTranslators"]
      241 GETUPVAL                         R13 4
      242 FASTCALL2                        SETMETATABLE R10 R13 ; [+4]
      244 MOVE                             R12 R10
      245 GETIMPORT                        R11 K49 [setmetatable]
      247 CALL                             R11 2 0
      248 GETTABLEKS                       R11 R10 K31 ["externalLocaleChanged"]
      250 NEWCLOSURE                       R13 P1
      251 CAPTURE                          VAL R10
      252 NAMECALL                         R11 R11 K50 ["Connect"]
      254 CALL                             R11 2 1
      255 SETTABLEKS                       R11 R10 K51 ["localeChangedConnection"]
      257 NAMECALL                         R11 R10 K52 ["updateLocaleAndTranslator"]
      259 CALL                             R11 1 0
      260 RETURN                           R10 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["localeChanged"]
        2 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R6 R0 K0 ["keyPluginName"]
        2 MOVE                             R7 R1
        3 MOVE                             R8 R2
        4 MOVE                             R9 R3
        5 NAMECALL                         R4 R0 K1 ["getProjectText"]
        7 CALL                             R4 5 -1
        8 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 JUMPIF                           R0 ; [+3]
        1 LOADB                            R1 0
        2 LOADNIL                          R2
        3 RETURN                           R1 2
        4 GETIMPORT                        R1 K1 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R1 1 2
       11 RETURN                           R1 2

PROTO_8:
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
       83 JUMPIFNOTEQKS                    R11 K17 ["en-us"] ; [+19]
       85 JUMPIF                           R8 ; [+3]
       86 LOADB                            R11 0
       87 LOADNIL                          R12
       88 JUMP                             ; [+9]
       89 GETIMPORT                        R13 K19 [pcall]
       91 NEWCLOSURE                       R14 P1
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 CALL                             R13 1 2
       96 MOVE                             R11 R13
       97 MOVE                             R12 R14
       98 MOVE                             R9 R11
       99 MOVE                             R10 R12
      100 JUMPIFNOT                        R9 ; [+36]
      101 RETURN                           R10 1
      102 JUMP                             ; [+34]
      103 JUMPIF                           R7 ; [+3]
      104 LOADB                            R11 0
      105 LOADNIL                          R12
      106 JUMP                             ; [+9]
      107 GETIMPORT                        R13 K19 [pcall]
      109 NEWCLOSURE                       R14 P1
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R4
      113 CALL                             R13 1 2
      114 MOVE                             R11 R13
      115 MOVE                             R12 R14
      116 MOVE                             R9 R11
      117 MOVE                             R10 R12
      118 JUMPIFNOT                        R9 ; [+1]
      119 RETURN                           R10 1
      120 JUMPIF                           R8 ; [+3]
      121 LOADB                            R11 0
      122 LOADNIL                          R12
      123 JUMP                             ; [+9]
      124 GETIMPORT                        R13 K19 [pcall]
      126 NEWCLOSURE                       R14 P1
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R4
      130 CALL                             R13 1 2
      131 MOVE                             R11 R13
      132 MOVE                             R12 R14
      133 MOVE                             R9 R11
      134 MOVE                             R10 R12
      135 JUMPIFNOT                        R9 ; [+1]
      136 RETURN                           R10 1
      137 GETIMPORT                        R11 K21 [game]
      139 LOADK                            R13 K22 ["RefactorTranslatorInstance"]
      140 NAMECALL                         R11 R11 K23 ["GetEngineFeature"]
      142 CALL                             R11 2 1
      143 JUMPIFNOT                        R11 ; [+19]
      144 GETTABLEKS                       R11 R0 K24 ["keyPluginName"]
      146 JUMPIFEQKS                       R11 K25 ["Test"] ; [+34]
      148 JUMPIF                           R9 ; [+32]
      149 GETIMPORT                        R11 K27 [string.find]
      151 MOVE                             R12 R10
      152 LOADK                            R13 K28 ["Key .* not found for locale"]
      153 CALL                             R11 2 1
      154 JUMPIF                           R11 ; [+26]
      155 GETIMPORT                        R11 K30 [warn]
      157 MOVE                             R12 R10
      158 GETIMPORT                        R13 K33 [debug.traceback]
      160 CALL                             R13 0 -1
      161 CALL                             R11 -1 0
      162 RETURN                           R5 1
      163 GETTABLEKS                       R11 R0 K24 ["keyPluginName"]
      165 JUMPIFEQKS                       R11 K25 ["Test"] ; [+15]
      167 JUMPIF                           R9 ; [+13]
      168 GETIMPORT                        R11 K27 [string.find]
      170 MOVE                             R12 R10
      171 LOADK                            R13 K34 ["LocalizationTable or parent tables do not contain a translation"]
      172 CALL                             R11 2 1
      173 JUMPIF                           R11 ; [+7]
      174 GETIMPORT                        R11 K30 [warn]
      176 MOVE                             R12 R10
      177 GETIMPORT                        R13 K33 [debug.traceback]
      179 CALL                             R13 0 -1
      180 CALL                             R11 -1 0
      181 RETURN                           R5 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["localeChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["localeChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%."]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LENGTH                           R2 R0
        7 ADDK                             R1 R2 K4 [1]
        8 RETURN                           R1 1

PROTO_12:
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

PROTO_13:
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
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K9 ["Truncate"]
       26 JUMPIFNOTEQ                      R2 R6 ; [+8]
       28 MUL                              R7 R0 R4
       29 FASTCALL1                        MATH_MODF R7 ; [+2]
       30 GETIMPORT                        R6 K11 [math.modf]
       32 CALL                             R6 1 1
       33 MOVE                             R5 R6
       34 JUMP                             ; [+7]
       35 MUL                              R8 R0 R4
       36 ADDK                             R7 R8 K12 [0.5]
       37 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       38 GETIMPORT                        R6 K7 [math.floor]
       40 CALL                             R6 1 1
       41 MOVE                             R5 R6
       42 DIV                              R6 R5 R4
       43 RETURN                           R6 1

PROTO_14:
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

PROTO_15:
        0 GETTABLEN                        R3 R0 1
        1 FASTCALL1                        MATH_ABS R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [math.abs]
        5 CALL                             R4 1 1
        6 LENGTH                           R7 R0
        7 LOADN                            R5 2
        8 LOADN                            R6 255
        9 FORNPREP                         R5
       10 GETTABLE                         R8 R0 R7
       11 LOADNIL                          R9
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R10 R10 K3 ["Truncate"]
       15 JUMPIFNOTEQ                      R2 R10 ; [+3]
       17 GETTABLEN                        R9 R8 1
       18 JUMP                             ; [+6]
       19 GETTABLEN                        R10 R8 1
       20 SUBK                             R14 R7 K5 [1]
       21 GETTABLE                         R13 R0 R14
       22 GETTABLEN                        R12 R13 1
       23 DIVK                             R11 R12 K4 [2]
       24 SUB                              R9 R10 R11
       25 JUMPIFNOTLE                      R9 R4 ; [+3]
       27 MOVE                             R3 R8
       28 RETURN                           R3 1
       29 FORNLOOP                         R5
       30 RETURN                           R3 1

PROTO_16:
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

PROTO_17:
        0 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        2 LOADK                            R4 K1 ["0"]
        3 RETURN                           R4 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+4]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R2 R4 K2 ["RoundToClosest"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADN                            R3 3
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R6 R0 K3 ["locale"]
       15 GETTABLE                         R4 R5 R6
       16 JUMPIF                           R4 ; [+3]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K4 ["en-us"]
       20 GETUPVAL                         R5 2
       21 MOVE                             R6 R4
       22 MOVE                             R7 R1
       23 MOVE                             R8 R2
       24 CALL                             R5 3 1
       25 GETTABLEN                        R6 R5 1
       26 GETTABLEN                        R7 R5 2
       27 DIV                              R9 R1 R6
       28 MOVE                             R10 R3
       29 MOVE                             R11 R2
       30 JUMPIFNOTEQKN                    R9 K0 [0] ; [+3]
       32 LOADN                            R12 0
       33 JUMP                             ; [+15]
       34 FASTCALL1                        MATH_ABS R9 ; [+3]
       35 MOVE                             R16 R9
       36 GETIMPORT                        R15 K7 [math.abs]
       38 CALL                             R15 1 1
       39 FASTCALL1                        MATH_LOG10 R15 ; [+2]
       40 GETIMPORT                        R14 K9 [math.log10]
       42 CALL                             R14 1 1
       43 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       44 GETIMPORT                        R13 K11 [math.floor]
       46 CALL                             R13 1 1
       47 ADDK                             R14 R13 K12 [1]
       48 MINUS                            R12 R14
       49 LOADN                            R14 10
       50 ADD                              R15 R10 R12
       51 POW                              R13 R14 R15
       52 LOADNIL                          R14
       53 GETUPVAL                         R15 0
       54 GETTABLEKS                       R15 R15 K13 ["Truncate"]
       56 JUMPIFNOTEQ                      R11 R15 ; [+8]
       58 MUL                              R16 R9 R13
       59 FASTCALL1                        MATH_MODF R16 ; [+2]
       60 GETIMPORT                        R15 K15 [math.modf]
       62 CALL                             R15 1 1
       63 MOVE                             R14 R15
       64 JUMP                             ; [+7]
       65 MUL                              R17 R9 R13
       66 ADDK                             R16 R17 K16 [0.5]
       67 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       68 GETIMPORT                        R15 K11 [math.floor]
       70 CALL                             R15 1 1
       71 MOVE                             R14 R15
       72 DIV                              R8 R14 R13
       73 LOADNIL                          R9
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K13 ["Truncate"]
       77 JUMPIFNOTEQ                      R2 R10 ; [+8]
       79 MULK                             R11 R8 K17 [10]
       80 FASTCALL1                        MATH_MODF R11 ; [+2]
       81 GETIMPORT                        R10 K15 [math.modf]
       83 CALL                             R10 1 1
       84 DIVK                             R9 R10 K17 [10]
       85 JUMP                             ; [+7]
       86 MULK                             R12 R8 K17 [10]
       87 ADDK                             R11 R12 K16 [0.5]
       88 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       89 GETIMPORT                        R10 K11 [math.floor]
       91 CALL                             R10 1 1
       92 DIVK                             R9 R10 K17 [10]
       93 FASTCALL1                        TOSTRING R9 ; [+3]
       94 MOVE                             R11 R9
       95 GETIMPORT                        R10 K19 [tostring]
       97 CALL                             R10 1 1
       98 GETIMPORT                        R11 K22 [string.find]
      100 MOVE                             R12 R10
      101 LOADK                            R13 K23 ["%."]
      102 CALL                             R11 2 1
      103 JUMPIF                           R11 ; [+2]
      104 LENGTH                           R12 R10
      105 ADDK                             R11 R12 K12 [1]
      106 LOADN                            R14 1
      107 SUBK                             R15 R11 K12 [1]
      108 FASTCALL3                        STRING_SUB R10 R14 R15
      110 MOVE                             R13 R10
      111 GETIMPORT                        R12 K25 [string.sub]
      113 CALL                             R12 3 1
      114 ADDK                             R15 R11 K12 [1]
      115 LENGTH                           R16 R10
      116 FASTCALL3                        STRING_SUB R10 R15 R16
      118 MOVE                             R14 R10
      119 GETIMPORT                        R13 K25 [string.sub]
      121 CALL                             R13 3 1
      122 GETTABLEKS                       R14 R4 K26 ["groupDelimiter"]
      124 JUMPIFNOT                        R14 ; [+6]
      125 GETUPVAL                         R14 3
      126 MOVE                             R15 R12
      127 GETTABLEKS                       R16 R4 K26 ["groupDelimiter"]
      129 CALL                             R14 2 1
      130 MOVE                             R12 R14
      131 LENGTH                           R14 R13
      132 LOADN                            R15 0
      133 JUMPIFNOTLT                      R15 R14 ; [+8]
      135 MOVE                             R15 R12
      136 GETTABLEKS                       R16 R4 K27 ["decimalSeparator"]
      138 MOVE                             R17 R13
      139 MOVE                             R18 R7
      140 CONCAT                           R14 R15 R18
      141 RETURN                           R14 1
      142 MOVE                             R15 R12
      143 MOVE                             R16 R7
      144 CONCAT                           R14 R15 R16
      145 RETURN                           R14 1

PROTO_18:
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

PROTO_19:
        0 DUPTABLE                         R0 K1 [{"FormatByKey"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_18]
        2 SETTABLEKS                       R1 R0 K0 ["FormatByKey"]
        4 RETURN                           R0 1

PROTO_20:
        0 LOADK                            R0 K0 ["en-us"]
        1 RETURN                           R0 1

PROTO_21:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 DUPTABLE                         R1 K1 [{"GetTranslator"}]
        6 DUPCLOSURE                       R2 K2 [PROTO_19]
        7 SETTABLEKS                       R2 R1 K0 ["GetTranslator"]
        9 GETTABLEKS                       R2 R0 K3 ["getLocale"]
       11 JUMPIF                           R2 ; [+1]
       12 DUPCLOSURE                       R2 K4 [PROTO_20]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K5 ["new"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K6 ["Dictionary"]
       19 GETTABLEKS                       R4 R4 K7 ["join"]
       21 DUPTABLE                         R5 K12 [{"stringResourceTable", "translationResourceTable", "pluginName", "overrideLocaleChangedSignal", "getLocale"}]
       22 SETTABLEKS                       R1 R5 K8 ["stringResourceTable"]
       24 SETTABLEKS                       R1 R5 K9 ["translationResourceTable"]
       26 LOADK                            R6 K13 ["Test"]
       27 SETTABLEKS                       R6 R5 K10 ["pluginName"]
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K5 ["new"]
       32 CALL                             R6 0 1
       33 SETTABLEKS                       R6 R5 K11 ["overrideLocaleChangedSignal"]
       35 SETTABLEKS                       R2 R5 K3 ["getLocale"]
       37 MOVE                             R6 R0
       38 JUMPIF                           R6 ; [+2]
       39 NEWTABLE                         R6 0 0
       41 CALL                             R4 2 -1
       42 CALL                             R3 -1 -1
       43 RETURN                           R3 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["localization"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["getConsumerItem"]
        4 CALL                             R2 1 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["getConsumerItem"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["getSignal"]
        9 CALL                             R0 1 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 NAMECALL                         R0 R0 K2 ["Connect"]
       15 CALL                             R0 2 1
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["localization"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["useEffect"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R5 0 0
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K0 ["useState"]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 2
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R7 0 1
       28 MOVE                             R8 R1
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K3 ["createElement"]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R6 R6 K4 ["Provider"]
       38 DUPTABLE                         R7 K6 [{"value"}]
       39 SETTABLEKS                       R3 R7 K5 ["value"]
       41 GETTABLEKS                       R8 R0 K7 ["children"]
       43 CALL                             R5 3 -1
       44 RETURN                           R5 -1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K4 ["mock"]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 SETTABLEKS                       R4 R3 K2 ["value"]
       14 GETTABLEKS                       R4 R0 K5 ["children"]
       16 CALL                             R1 3 -1
       17 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["StudioFoundation"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Framework"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K12 ["Resources"]
       22 GETTABLEKS                       R5 R3 K13 ["Util"]
       24 GETTABLEKS                       R6 R5 K14 ["Signal"]
       26 GETIMPORT                        R7 K10 [require]
       28 GETTABLEKS                       R8 R2 K15 ["Cryo"]
       30 CALL                             R7 1 1
       31 GETIMPORT                        R8 K10 [require]
       33 GETTABLEKS                       R9 R2 K16 ["React"]
       35 CALL                             R8 1 1
       36 NEWTABLE                         R9 16 0
       38 SETTABLEKS                       R9 R9 K17 ["__index"]
       40 DUPCLOSURE                       R10 K18 [PROTO_2]
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R9
       46 SETTABLEKS                       R10 R9 K19 ["new"]
       48 DUPCLOSURE                       R10 K20 [PROTO_3]
       49 SETTABLEKS                       R10 R9 K21 ["getSignal"]
       51 DUPCLOSURE                       R10 K22 [PROTO_4]
       52 SETTABLEKS                       R10 R9 K23 ["getConsumerItem"]
       54 DUPCLOSURE                       R10 K24 [PROTO_5]
       55 SETTABLEKS                       R10 R9 K25 ["getText"]
       57 DUPCLOSURE                       R10 K26 [PROTO_8]
       58 SETTABLEKS                       R10 R9 K27 ["getProjectText"]
       60 DUPCLOSURE                       R10 K28 [PROTO_9]
       61 SETTABLEKS                       R10 R9 K29 ["destroy"]
       63 DUPCLOSURE                       R10 K30 [PROTO_10]
       64 SETTABLEKS                       R10 R9 K31 ["updateLocaleAndTranslator"]
       66 GETTABLEKS                       R10 R3 K13 ["Util"]
       68 GETTABLEKS                       R10 R10 K32 ["RoundingBehaviour"]
       70 NEWTABLE                         R11 0 0
       72 NEWTABLE                         R12 2 4
       74 LOADK                            R17 K33 ["."]
       75 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
       77 LOADK                            R17 K35 [","]
       78 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
       80 NEWTABLE                         R13 0 2
       82 LOADN                            R14 1
       83 LOADK                            R15 K37 [""]
       84 SETLIST                          R13 R14 2 [1]
       86 NEWTABLE                         R14 0 2
       88 LOADN                            R15 232
       89 LOADK                            R16 K38 ["K"]
       90 SETLIST                          R14 R15 2 [1]
       92 NEWTABLE                         R15 0 2
       94 LOADK                            R16 K39 [1000000]
       95 LOADK                            R17 K40 ["M"]
       96 SETLIST                          R15 R16 2 [1]
       98 NEWTABLE                         R16 0 2
      100 LOADK                            R17 K41 [1000000000]
      101 LOADK                            R18 K42 ["B"]
      102 SETLIST                          R16 R17 2 [1]
      104 SETLIST                          R12 R13 4 [1]
      106 SETTABLEKS                       R12 R11 K43 ["en-us"]
      108 NEWTABLE                         R12 2 3
      110 LOADK                            R16 K35 [","]
      111 SETTABLEKS                       R16 R12 K34 ["decimalSeparator"]
      113 LOADK                            R16 K33 ["."]
      114 SETTABLEKS                       R16 R12 K36 ["groupDelimiter"]
      116 NEWTABLE                         R13 0 2
      118 LOADN                            R14 1
      119 LOADK                            R15 K37 [""]
      120 SETLIST                          R13 R14 2 [1]
      122 NEWTABLE                         R14 0 2
      124 LOADN                            R15 232
      125 LOADK                            R16 K44 [" mil"]
      126 SETLIST                          R14 R15 2 [1]
      128 NEWTABLE                         R15 0 2
      130 LOADK                            R16 K39 [1000000]
      131 LOADK                            R17 K45 [" M"]
      132 SETLIST                          R15 R16 2 [1]
      134 SETLIST                          R12 R13 3 [1]
      136 SETTABLEKS                       R12 R11 K46 ["es-es"]
      138 NEWTABLE                         R12 2 4
      140 LOADK                            R17 K35 [","]
      141 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      143 LOADK                            R17 K47 [" "]
      144 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      146 NEWTABLE                         R13 0 2
      148 LOADN                            R14 1
      149 LOADK                            R15 K37 [""]
      150 SETLIST                          R13 R14 2 [1]
      152 NEWTABLE                         R14 0 2
      154 LOADN                            R15 232
      155 LOADK                            R16 K48 [" k"]
      156 SETLIST                          R14 R15 2 [1]
      158 NEWTABLE                         R15 0 2
      160 LOADK                            R16 K39 [1000000]
      161 LOADK                            R17 K45 [" M"]
      162 SETLIST                          R15 R16 2 [1]
      164 NEWTABLE                         R16 0 2
      166 LOADK                            R17 K41 [1000000000]
      167 LOADK                            R18 K49 [" Md"]
      168 SETLIST                          R16 R17 2 [1]
      170 SETLIST                          R12 R13 4 [1]
      172 SETTABLEKS                       R12 R11 K50 ["fr-fr"]
      174 NEWTABLE                         R12 2 4
      176 LOADK                            R17 K35 [","]
      177 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      179 LOADK                            R17 K47 [" "]
      180 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      182 NEWTABLE                         R13 0 2
      184 LOADN                            R14 1
      185 LOADK                            R15 K37 [""]
      186 SETLIST                          R13 R14 2 [1]
      188 NEWTABLE                         R14 0 2
      190 LOADN                            R15 232
      191 LOADK                            R16 K51 [" Tsd."]
      192 SETLIST                          R14 R15 2 [1]
      194 NEWTABLE                         R15 0 2
      196 LOADK                            R16 K39 [1000000]
      197 LOADK                            R17 K52 [" Mio."]
      198 SETLIST                          R15 R16 2 [1]
      200 NEWTABLE                         R16 0 2
      202 LOADK                            R17 K41 [1000000000]
      203 LOADK                            R18 K53 [" Mrd."]
      204 SETLIST                          R16 R17 2 [1]
      206 SETLIST                          R12 R13 4 [1]
      208 SETTABLEKS                       R12 R11 K54 ["de-de"]
      210 NEWTABLE                         R12 2 4
      212 LOADK                            R17 K35 [","]
      213 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      215 LOADK                            R17 K33 ["."]
      216 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      218 NEWTABLE                         R13 0 2
      220 LOADN                            R14 1
      221 LOADK                            R15 K37 [""]
      222 SETLIST                          R13 R14 2 [1]
      224 NEWTABLE                         R14 0 2
      226 LOADN                            R15 232
      227 LOADK                            R16 K44 [" mil"]
      228 SETLIST                          R14 R15 2 [1]
      230 NEWTABLE                         R15 0 2
      232 LOADK                            R16 K39 [1000000]
      233 LOADK                            R17 K55 [" mi"]
      234 SETLIST                          R15 R16 2 [1]
      236 NEWTABLE                         R16 0 2
      238 LOADK                            R17 K41 [1000000000]
      239 LOADK                            R18 K56 [" bi"]
      240 SETLIST                          R16 R17 2 [1]
      242 SETLIST                          R12 R13 4 [1]
      244 SETTABLEKS                       R12 R11 K57 ["pt-br"]
      246 NEWTABLE                         R12 2 4
      248 LOADK                            R17 K33 ["."]
      249 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      251 LOADK                            R17 K35 [","]
      252 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      254 NEWTABLE                         R13 0 2
      256 LOADN                            R14 1
      257 LOADK                            R15 K37 [""]
      258 SETLIST                          R13 R14 2 [1]
      260 NEWTABLE                         R14 0 2
      262 LOADN                            R15 232
      263 LOADK                            R16 K58 ["千"]
      264 SETLIST                          R14 R15 2 [1]
      266 NEWTABLE                         R15 0 2
      268 LOADN                            R16 16
      269 LOADK                            R17 K59 ["万"]
      270 SETLIST                          R15 R16 2 [1]
      272 NEWTABLE                         R16 0 2
      274 LOADK                            R17 K60 [100000000]
      275 LOADK                            R18 K61 ["亿"]
      276 SETLIST                          R16 R17 2 [1]
      278 SETLIST                          R12 R13 4 [1]
      280 SETTABLEKS                       R12 R11 K62 ["zh-cn"]
      282 NEWTABLE                         R12 2 4
      284 LOADK                            R17 K33 ["."]
      285 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      287 LOADK                            R17 K35 [","]
      288 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      290 NEWTABLE                         R13 0 2
      292 LOADN                            R14 1
      293 LOADK                            R15 K37 [""]
      294 SETLIST                          R13 R14 2 [1]
      296 NEWTABLE                         R14 0 2
      298 LOADN                            R15 232
      299 LOADK                            R16 K58 ["千"]
      300 SETLIST                          R14 R15 2 [1]
      302 NEWTABLE                         R15 0 2
      304 LOADN                            R16 16
      305 LOADK                            R17 K59 ["万"]
      306 SETLIST                          R15 R16 2 [1]
      308 NEWTABLE                         R16 0 2
      310 LOADK                            R17 K60 [100000000]
      311 LOADK                            R18 K61 ["亿"]
      312 SETLIST                          R16 R17 2 [1]
      314 SETLIST                          R12 R13 4 [1]
      316 SETTABLEKS                       R12 R11 K63 ["zh-cjv"]
      318 NEWTABLE                         R12 2 4
      320 LOADK                            R17 K33 ["."]
      321 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      323 LOADK                            R17 K35 [","]
      324 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      326 NEWTABLE                         R13 0 2
      328 LOADN                            R14 1
      329 LOADK                            R15 K37 [""]
      330 SETLIST                          R13 R14 2 [1]
      332 NEWTABLE                         R14 0 2
      334 LOADN                            R15 232
      335 LOADK                            R16 K58 ["千"]
      336 SETLIST                          R14 R15 2 [1]
      338 NEWTABLE                         R15 0 2
      340 LOADN                            R16 16
      341 LOADK                            R17 K64 ["萬"]
      342 SETLIST                          R15 R16 2 [1]
      344 NEWTABLE                         R16 0 2
      346 LOADK                            R17 K60 [100000000]
      347 LOADK                            R18 K65 ["億"]
      348 SETLIST                          R16 R17 2 [1]
      350 SETLIST                          R12 R13 4 [1]
      352 SETTABLEKS                       R12 R11 K66 ["zh-tw"]
      354 NEWTABLE                         R12 2 4
      356 LOADK                            R17 K33 ["."]
      357 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      359 LOADK                            R17 K35 [","]
      360 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      362 NEWTABLE                         R13 0 2
      364 LOADN                            R14 1
      365 LOADK                            R15 K37 [""]
      366 SETLIST                          R13 R14 2 [1]
      368 NEWTABLE                         R14 0 2
      370 LOADN                            R15 232
      371 LOADK                            R16 K67 ["천"]
      372 SETLIST                          R14 R15 2 [1]
      374 NEWTABLE                         R15 0 2
      376 LOADN                            R16 16
      377 LOADK                            R17 K68 ["만"]
      378 SETLIST                          R15 R16 2 [1]
      380 NEWTABLE                         R16 0 2
      382 LOADK                            R17 K60 [100000000]
      383 LOADK                            R18 K69 ["억"]
      384 SETLIST                          R16 R17 2 [1]
      386 SETLIST                          R12 R13 4 [1]
      388 SETTABLEKS                       R12 R11 K70 ["ko-kr"]
      390 NEWTABLE                         R12 2 4
      392 LOADK                            R17 K33 ["."]
      393 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      395 LOADK                            R17 K35 [","]
      396 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      398 NEWTABLE                         R13 0 2
      400 LOADN                            R14 1
      401 LOADK                            R15 K37 [""]
      402 SETLIST                          R13 R14 2 [1]
      404 NEWTABLE                         R14 0 2
      406 LOADN                            R15 232
      407 LOADK                            R16 K58 ["千"]
      408 SETLIST                          R14 R15 2 [1]
      410 NEWTABLE                         R15 0 2
      412 LOADN                            R16 16
      413 LOADK                            R17 K59 ["万"]
      414 SETLIST                          R15 R16 2 [1]
      416 NEWTABLE                         R16 0 2
      418 LOADK                            R17 K60 [100000000]
      419 LOADK                            R18 K65 ["億"]
      420 SETLIST                          R16 R17 2 [1]
      422 SETLIST                          R12 R13 4 [1]
      424 SETTABLEKS                       R12 R11 K71 ["ja-jp"]
      426 NEWTABLE                         R12 2 4
      428 LOADK                            R17 K35 [","]
      429 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      431 LOADK                            R17 K47 [" "]
      432 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      434 NEWTABLE                         R13 0 2
      436 LOADN                            R14 1
      437 LOADK                            R15 K37 [""]
      438 SETLIST                          R13 R14 2 [1]
      440 NEWTABLE                         R14 0 2
      442 LOADN                            R15 232
      443 LOADK                            R16 K72 [" mila"]
      444 SETLIST                          R14 R15 2 [1]
      446 NEWTABLE                         R15 0 2
      448 LOADK                            R16 K39 [1000000]
      449 LOADK                            R17 K73 [" Mln"]
      450 SETLIST                          R15 R16 2 [1]
      452 NEWTABLE                         R16 0 2
      454 LOADK                            R17 K41 [1000000000]
      455 LOADK                            R18 K74 [" Mld"]
      456 SETLIST                          R16 R17 2 [1]
      458 SETLIST                          R12 R13 4 [1]
      460 SETTABLEKS                       R12 R11 K75 ["it-it"]
      462 NEWTABLE                         R12 2 4
      464 LOADK                            R17 K35 [","]
      465 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      467 LOADK                            R17 K33 ["."]
      468 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      470 NEWTABLE                         R13 0 2
      472 LOADN                            R14 1
      473 LOADK                            R15 K37 [""]
      474 SETLIST                          R13 R14 2 [1]
      476 NEWTABLE                         R14 0 2
      478 LOADN                            R15 232
      479 LOADK                            R16 K76 [" тыс"]
      480 SETLIST                          R14 R15 2 [1]
      482 NEWTABLE                         R15 0 2
      484 LOADK                            R16 K39 [1000000]
      485 LOADK                            R17 K77 [" млн"]
      486 SETLIST                          R15 R16 2 [1]
      488 NEWTABLE                         R16 0 2
      490 LOADK                            R17 K41 [1000000000]
      491 LOADK                            R18 K78 [" млрд"]
      492 SETLIST                          R16 R17 2 [1]
      494 SETLIST                          R12 R13 4 [1]
      496 SETTABLEKS                       R12 R11 K79 ["ru-ru"]
      498 NEWTABLE                         R12 2 4
      500 LOADK                            R17 K35 [","]
      501 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      503 LOADK                            R17 K33 ["."]
      504 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      506 NEWTABLE                         R13 0 2
      508 LOADN                            R14 1
      509 LOADK                            R15 K37 [""]
      510 SETLIST                          R13 R14 2 [1]
      512 NEWTABLE                         R14 0 2
      514 LOADN                            R15 232
      515 LOADK                            R16 K80 [" rb"]
      516 SETLIST                          R14 R15 2 [1]
      518 NEWTABLE                         R15 0 2
      520 LOADK                            R16 K39 [1000000]
      521 LOADK                            R17 K81 [" jt"]
      522 SETLIST                          R15 R16 2 [1]
      524 NEWTABLE                         R16 0 2
      526 LOADK                            R17 K41 [1000000000]
      527 LOADK                            R18 K45 [" M"]
      528 SETLIST                          R16 R17 2 [1]
      530 SETLIST                          R12 R13 4 [1]
      532 SETTABLEKS                       R12 R11 K82 ["id-id"]
      534 NEWTABLE                         R12 2 4
      536 LOADK                            R17 K33 ["."]
      537 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      539 LOADK                            R17 K47 [" "]
      540 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      542 NEWTABLE                         R13 0 2
      544 LOADN                            R14 1
      545 LOADK                            R15 K37 [""]
      546 SETLIST                          R13 R14 2 [1]
      548 NEWTABLE                         R14 0 2
      550 LOADN                            R15 232
      551 LOADK                            R16 K83 [" N"]
      552 SETLIST                          R14 R15 2 [1]
      554 NEWTABLE                         R15 0 2
      556 LOADK                            R16 K39 [1000000]
      557 LOADK                            R17 K84 [" Tr"]
      558 SETLIST                          R15 R16 2 [1]
      560 NEWTABLE                         R16 0 2
      562 LOADK                            R17 K41 [1000000000]
      563 LOADK                            R18 K85 [" T"]
      564 SETLIST                          R16 R17 2 [1]
      566 SETLIST                          R12 R13 4 [1]
      568 SETTABLEKS                       R12 R11 K86 ["vi-vn"]
      570 NEWTABLE                         R12 2 5
      572 LOADK                            R18 K33 ["."]
      573 SETTABLEKS                       R18 R12 K34 ["decimalSeparator"]
      575 LOADK                            R18 K35 [","]
      576 SETTABLEKS                       R18 R12 K36 ["groupDelimiter"]
      578 NEWTABLE                         R13 0 2
      580 LOADN                            R14 1
      581 LOADK                            R15 K37 [""]
      582 SETLIST                          R13 R14 2 [1]
      584 NEWTABLE                         R14 0 2
      586 LOADN                            R15 232
      587 LOADK                            R16 K87 [" พ"]
      588 SETLIST                          R14 R15 2 [1]
      590 NEWTABLE                         R15 0 2
      592 LOADN                            R16 16
      593 LOADK                            R17 K88 [" ม"]
      594 SETLIST                          R15 R16 2 [1]
      596 NEWTABLE                         R16 0 2
      598 LOADK                            R17 K89 [100000]
      599 LOADK                            R18 K90 [" ส"]
      600 SETLIST                          R16 R17 2 [1]
      602 NEWTABLE                         R17 0 2
      604 LOADK                            R18 K39 [1000000]
      605 LOADK                            R19 K91 [" ล"]
      606 SETLIST                          R17 R18 2 [1]
      608 SETLIST                          R12 R13 5 [1]
      610 SETTABLEKS                       R12 R11 K92 ["th-th"]
      612 NEWTABLE                         R12 2 4
      614 LOADK                            R17 K35 [","]
      615 SETTABLEKS                       R17 R12 K34 ["decimalSeparator"]
      617 LOADK                            R17 K33 ["."]
      618 SETTABLEKS                       R17 R12 K36 ["groupDelimiter"]
      620 NEWTABLE                         R13 0 2
      622 LOADN                            R14 1
      623 LOADK                            R15 K37 [""]
      624 SETLIST                          R13 R14 2 [1]
      626 NEWTABLE                         R14 0 2
      628 LOADN                            R15 232
      629 LOADK                            R16 K93 [" B"]
      630 SETLIST                          R14 R15 2 [1]
      632 NEWTABLE                         R15 0 2
      634 LOADK                            R16 K39 [1000000]
      635 LOADK                            R17 K94 [" Mn"]
      636 SETLIST                          R15 R16 2 [1]
      638 NEWTABLE                         R16 0 2
      640 LOADK                            R17 K41 [1000000000]
      641 LOADK                            R18 K95 [" Mr"]
      642 SETLIST                          R16 R17 2 [1]
      644 SETLIST                          R12 R13 4 [1]
      646 SETTABLEKS                       R12 R11 K96 ["tr-tr"]
      648 GETTABLEKS                       R12 R11 K43 ["en-us"]
      650 SETTABLEKS                       R12 R11 K97 ["en-gb"]
      652 GETTABLEKS                       R12 R11 K46 ["es-es"]
      654 SETTABLEKS                       R12 R11 K98 ["es-mx"]
      656 DUPCLOSURE                       R12 K99 [PROTO_11]
      657 DUPCLOSURE                       R13 K100 [PROTO_12]
      658 DUPCLOSURE                       R14 K101 [PROTO_13]
      659 CAPTURE                          VAL R10
      660 DUPCLOSURE                       R15 K102 [PROTO_14]
      661 DUPCLOSURE                       R16 K103 [PROTO_15]
      662 CAPTURE                          VAL R10
      663 DUPCLOSURE                       R17 K104 [PROTO_16]
      664 CAPTURE                          VAL R11
      665 CAPTURE                          VAL R15
      666 SETTABLEKS                       R17 R9 K105 ["localizeNumber"]
      668 DUPCLOSURE                       R17 K106 [PROTO_17]
      669 CAPTURE                          VAL R10
      670 CAPTURE                          VAL R11
      671 CAPTURE                          VAL R16
      672 CAPTURE                          VAL R15
      673 SETTABLEKS                       R17 R9 K107 ["localizeAndAbbreviateNumber"]
      675 DUPCLOSURE                       R17 K108 [PROTO_21]
      676 CAPTURE                          VAL R9
      677 CAPTURE                          VAL R7
      678 CAPTURE                          VAL R6
      679 SETTABLEKS                       R17 R9 K109 ["mock"]
      681 GETTABLEKS                       R17 R8 K110 ["createContext"]
      683 LOADNIL                          R18
      684 CALL                             R17 1 1
      685 DUPCLOSURE                       R18 K111 [PROTO_26]
      686 CAPTURE                          VAL R8
      687 CAPTURE                          VAL R17
      688 DUPCLOSURE                       R19 K112 [PROTO_27]
      689 CAPTURE                          VAL R8
      690 CAPTURE                          VAL R17
      691 CAPTURE                          VAL R9
      692 DUPTABLE                         R20 K117 [{"Localization", "Context", "Provider", "MockProvider"}]
      693 SETTABLEKS                       R9 R20 K113 ["Localization"]
      695 SETTABLEKS                       R17 R20 K114 ["Context"]
      697 SETTABLEKS                       R18 R20 K115 ["Provider"]
      699 SETTABLEKS                       R19 R20 K116 ["MockProvider"]
      701 RETURN                           R20 1
