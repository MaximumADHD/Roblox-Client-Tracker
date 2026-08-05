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
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+14]
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R0 R1 K0 ["StudioLocaleId"]
       15 GETIMPORT                        R1 K3 [string.gsub]
       17 GETIMPORT                        R2 K5 [string.lower]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 LOADK                            R3 K6 ["_"]
       22 LOADK                            R4 K7 ["-"]
       23 CALL                             R1 3 1
       24 MOVE                             R0 R1
       25 RETURN                           R0 1
       26 GETUPVAL                         R1 3
       27 GETTABLEKS                       R0 R1 K0 ["StudioLocaleId"]
       29 RETURN                           R0 1

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
       55 GETUPVAL                         R1 0
       56 JUMPIFNOT                        R1 ; [+15]
       57 GETTABLEKS                       R1 R0 K13 ["allowExternalNamespaces"]
       59 JUMPIFNOT                        R1 ; [+12]
       60 GETTABLEKS                       R3 R0 K14 ["namespace"]
       62 JUMPIFEQKNIL                     R3 ; [+2]
       64 LOADB                            R2 0 +1
       65 LOADB                            R2 1
       66 FASTCALL2K                       ASSERT R2 K15 ; [+4]
       68 LOADK                            R3 K15 ["Multiple namespaces are enabled, cannot specify a particular namespace"]
       69 GETIMPORT                        R1 K5 [assert]
       71 CALL                             R1 2 0
       72 GETTABLEKS                       R1 R0 K16 ["libraries"]
       74 JUMPIFEQKNIL                     R1 ; [+85]
       76 GETTABLEKS                       R4 R0 K16 ["libraries"]
       78 FASTCALL1                        TYPE R4 ; [+2]
       79 GETIMPORT                        R3 K1 [type]
       81 CALL                             R3 1 1
       82 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
       84 LOADB                            R2 0 +1
       85 LOADB                            R2 1
       86 FASTCALL2K                       ASSERT R2 K17 ; [+4]
       88 LOADK                            R3 K17 ["Localization libraries prop must be a table or nil"]
       89 GETIMPORT                        R1 K5 [assert]
       91 CALL                             R1 2 0
       92 GETIMPORT                        R1 K19 [pairs]
       94 GETTABLEKS                       R2 R0 K16 ["libraries"]
       96 CALL                             R1 1 3
       97 FORGPREP_NEXT                    R1
       98 FASTCALL1                        TYPE R4 ; [+3]
       99 MOVE                             R9 R4
      100 GETIMPORT                        R8 K1 [type]
      102 CALL                             R8 1 1
      103 JUMPIFEQKS                       R8 K11 ["string"] ; [+2]
      105 LOADB                            R7 0 +1
      106 LOADB                            R7 1
      107 FASTCALL2K                       ASSERT R7 K20 ; [+4]
      109 LOADK                            R8 K20 ["Localization libraries key must be a string"]
      110 GETIMPORT                        R6 K5 [assert]
      112 CALL                             R6 2 0
      113 FASTCALL1                        TYPE R5 ; [+3]
      114 MOVE                             R9 R5
      115 GETIMPORT                        R8 K1 [type]
      117 CALL                             R8 1 1
      118 JUMPIFEQKS                       R8 K2 ["table"] ; [+2]
      120 LOADB                            R7 0 +1
      121 LOADB                            R7 1
      122 FASTCALL2K                       ASSERT R7 K21 ; [+4]
      124 LOADK                            R8 K21 ["Localization libraries value must be a table"]
      125 GETIMPORT                        R6 K5 [assert]
      127 CALL                             R6 2 0
      128 GETTABLEKS                       R8 R5 K6 ["stringResourceTable"]
      130 JUMPIFNOTEQKNIL                  R8 ; [+2]
      132 LOADB                            R7 0 +1
      133 LOADB                            R7 1
      134 GETIMPORT                        R8 K23 [string.format]
      136 LOADK                            R9 K24 ["Localization table %s must have a .csv string resource table for English strings"]
      137 MOVE                             R10 R4
      138 CALL                             R8 2 -1
      139 FASTCALL                         ASSERT ; [+2]
      140 GETIMPORT                        R6 K5 [assert]
      142 CALL                             R6 -1 0
      143 GETTABLEKS                       R8 R5 K8 ["translationResourceTable"]
      145 JUMPIFNOTEQKNIL                  R8 ; [+2]
      147 LOADB                            R7 0 +1
      148 LOADB                            R7 1
      149 GETIMPORT                        R8 K23 [string.format]
      151 LOADK                            R9 K25 ["Localization table %s must have a .csv string resource table of translations"]
      152 MOVE                             R10 R4
      153 CALL                             R8 2 -1
      154 FASTCALL                         ASSERT ; [+2]
      155 GETIMPORT                        R6 K5 [assert]
      157 CALL                             R6 -1 0
      158 FORGLOOP                         R1 2 ; [-61]
      160 GETTABLEKS                       R1 R0 K6 ["stringResourceTable"]
      162 GETTABLEKS                       R2 R0 K8 ["translationResourceTable"]
      164 GETTABLEKS                       R3 R0 K26 ["getLocale"]
      166 GETTABLEKS                       R4 R0 K27 ["overrideLocaleId"]
      168 GETTABLEKS                       R5 R0 K28 ["overrideLocaleChangedSignal"]
      170 GETTABLEKS                       R6 R0 K14 ["namespace"]
      172 GETTABLEKS                       R7 R0 K10 ["pluginName"]
      174 JUMPIFNOTEQKNIL                  R6 ; [+2]
      176 LOADK                            R6 K29 ["Studio"]
      177 LOADNIL                          R8
      178 JUMPIFNOT                        R5 ; [+2]
      179 MOVE                             R8 R5
      180 JUMP                             ; [+6]
      181 GETUPVAL                         R9 1
      182 LOADK                            R11 K30 ["StudioLocaleId"]
      183 NAMECALL                         R9 R9 K31 ["GetPropertyChangedSignal"]
      185 CALL                             R9 2 1
      186 MOVE                             R8 R9
      187 NEWCLOSURE                       R9 P0
      188 CAPTURE                          VAL R3
      189 CAPTURE                          VAL R4
      190 CAPTURE                          UPVAL U2
      191 CAPTURE                          UPVAL U1
      192 DUPTABLE                         R10 K40 [{["localeChanged"], ["externalLocaleChanged"], ["externalLocaleChangedConnection"] = , ["locale"] = "en-us", ["defaultKeyNamespace"], ["keyPluginName"], ["getLocale"]}]
      193 GETUPVAL                         R11 3
      194 GETTABLEKS                       R11 R11 K41 ["new"]
      196 CALL                             R11 0 1
      197 SETTABLEKS                       R11 R10 K32 ["localeChanged"]
      199 SETTABLEKS                       R8 R10 K33 ["externalLocaleChanged"]
      201 SETTABLEKS                       R6 R10 K38 ["defaultKeyNamespace"]
      203 SETTABLEKS                       R7 R10 K39 ["keyPluginName"]
      205 SETTABLEKS                       R9 R10 K26 ["getLocale"]
      207 GETUPVAL                         R11 4
      208 GETTABLEKS                       R11 R11 K42 ["Dictionary"]
      210 GETTABLEKS                       R11 R11 K43 ["join"]
      212 GETTABLEKS                       R12 R0 K16 ["libraries"]
      214 JUMPIF                           R12 ; [+2]
      215 NEWTABLE                         R12 0 0
      217 NEWTABLE                         R13 2 0
      219 GETTABLEKS                       R14 R10 K39 ["keyPluginName"]
      221 DUPTABLE                         R15 K44 [{"stringResourceTable", "translationResourceTable"}]
      222 SETTABLEKS                       R1 R15 K6 ["stringResourceTable"]
      224 SETTABLEKS                       R2 R15 K8 ["translationResourceTable"]
      226 SETTABLE                         R15 R13 R14
      227 GETUPVAL                         R14 5
      228 GETTABLEKS                       R14 R14 K45 ["LOCALIZATION_PROJECT_NAME"]
      230 DUPTABLE                         R15 K44 [{"stringResourceTable", "translationResourceTable"}]
      231 GETUPVAL                         R16 5
      232 GETTABLEKS                       R16 R16 K46 ["SourceStrings"]
      234 SETTABLEKS                       R16 R15 K6 ["stringResourceTable"]
      236 GETUPVAL                         R16 5
      237 GETTABLEKS                       R16 R16 K47 ["LocalizedStrings"]
      239 SETTABLEKS                       R16 R15 K8 ["translationResourceTable"]
      241 SETTABLE                         R15 R13 R14
      242 CALL                             R11 2 1
      243 SETTABLEKS                       R11 R10 K48 ["projects"]
      245 NEWTABLE                         R11 0 0
      247 SETTABLEKS                       R11 R10 K49 ["translators"]
      249 NEWTABLE                         R11 0 0
      251 SETTABLEKS                       R11 R10 K50 ["fallbackTranslators"]
      253 GETUPVAL                         R13 6
      254 FASTCALL2                        SETMETATABLE R10 R13 ; [+4]
      256 MOVE                             R12 R10
      257 GETIMPORT                        R11 K52 [setmetatable]
      259 CALL                             R11 2 0
      260 GETTABLEKS                       R11 R10 K33 ["externalLocaleChanged"]
      262 NEWCLOSURE                       R13 P1
      263 CAPTURE                          VAL R10
      264 NAMECALL                         R11 R11 K53 ["Connect"]
      266 CALL                             R11 2 1
      267 SETTABLEKS                       R11 R10 K54 ["localeChangedConnection"]
      269 NAMECALL                         R11 R10 K55 ["updateLocaleAndTranslator"]
      271 CALL                             R11 1 0
      272 RETURN                           R10 1

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
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["Cannot call function if FFlagDevFrameworkSupportExternalLoc == false"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 LOADK                            R5 K3 ["%*.%*"]
        8 MOVE                             R7 R1
        9 MOVE                             R8 R2
       10 NAMECALL                         R5 R5 K4 ["format"]
       12 CALL                             R5 3 1
       13 MOVE                             R4 R5
       14 GETTABLEKS                       R5 R0 K5 ["keyPluginName"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K6 ["LOCALIZATION_PROJECT_NAME"]
       19 JUMPIFNOTEQ                      R1 R6 ; [+2]
       21 MOVE                             R5 R1
       22 MOVE                             R8 R5
       23 MOVE                             R9 R4
       24 MOVE                             R10 R3
       25 NAMECALL                         R6 R0 K7 ["_getStringInProject"]
       27 CALL                             R6 4 -1
       28 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R7 0
        1 FASTCALL2K                       ASSERT R7 K0 ; [+4]
        3 LOADK                            R8 K0 ["Cannot call function if FFlagDevFrameworkSupportExternalLoc == false"]
        4 GETIMPORT                        R6 K2 [assert]
        6 CALL                             R6 2 0
        7 LOADK                            R7 K3 ["%*.%*.%*.%*"]
        8 MOVE                             R9 R1
        9 MOVE                             R10 R2
       10 MOVE                             R11 R3
       11 MOVE                             R12 R4
       12 NAMECALL                         R7 R7 K4 ["format"]
       14 CALL                             R7 5 1
       15 MOVE                             R6 R7
       16 GETTABLEKS                       R7 R0 K5 ["keyPluginName"]
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K6 ["LOCALIZATION_PROJECT_NAME"]
       21 JUMPIFNOTEQ                      R2 R8 ; [+2]
       23 MOVE                             R7 R2
       24 MOVE                             R10 R7
       25 MOVE                             R11 R6
       26 MOVE                             R12 R5
       27 NAMECALL                         R8 R0 K7 ["_getStringInProject"]
       29 CALL                             R8 4 -1
       30 RETURN                           R8 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_9:
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

PROTO_10:
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
       64 GETTABLEKS                       R7 R0 K13 ["defaultKeyNamespace"]
       66 MOVE                             R8 R1
       67 MOVE                             R9 R2
       68 MOVE                             R10 R3
       69 CALL                             R5 5 1
       70 GETUPVAL                         R6 0
       71 JUMPIFNOT                        R6 ; [+7]
       72 MOVE                             R8 R1
       73 MOVE                             R9 R5
       74 MOVE                             R10 R4
       75 NAMECALL                         R6 R0 K14 ["_getStringInProject"]
       77 CALL                             R6 4 -1
       78 RETURN                           R6 -1
       79 NEWCLOSURE                       R6 P0
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R4
       82 GETTABLEKS                       R8 R0 K15 ["translators"]
       84 GETTABLE                         R7 R8 R1
       85 GETTABLEKS                       R9 R0 K16 ["fallbackTranslators"]
       87 GETTABLE                         R8 R9 R1
       88 LOADNIL                          R9
       89 LOADNIL                          R10
       90 GETTABLEKS                       R11 R0 K17 ["locale"]
       92 JUMPIFNOTEQKS                    R11 K18 ["en-us"] ; [+19]
       94 JUMPIF                           R8 ; [+3]
       95 LOADB                            R11 0
       96 LOADNIL                          R12
       97 JUMP                             ; [+9]
       98 GETIMPORT                        R13 K20 [pcall]
      100 NEWCLOSURE                       R14 P1
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R4
      104 CALL                             R13 1 2
      105 MOVE                             R11 R13
      106 MOVE                             R12 R14
      107 MOVE                             R9 R11
      108 MOVE                             R10 R12
      109 JUMPIFNOT                        R9 ; [+36]
      110 RETURN                           R10 1
      111 JUMP                             ; [+34]
      112 JUMPIF                           R7 ; [+3]
      113 LOADB                            R11 0
      114 LOADNIL                          R12
      115 JUMP                             ; [+9]
      116 GETIMPORT                        R13 K20 [pcall]
      118 NEWCLOSURE                       R14 P1
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R4
      122 CALL                             R13 1 2
      123 MOVE                             R11 R13
      124 MOVE                             R12 R14
      125 MOVE                             R9 R11
      126 MOVE                             R10 R12
      127 JUMPIFNOT                        R9 ; [+1]
      128 RETURN                           R10 1
      129 JUMPIF                           R8 ; [+3]
      130 LOADB                            R11 0
      131 LOADNIL                          R12
      132 JUMP                             ; [+9]
      133 GETIMPORT                        R13 K20 [pcall]
      135 NEWCLOSURE                       R14 P1
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R4
      139 CALL                             R13 1 2
      140 MOVE                             R11 R13
      141 MOVE                             R12 R14
      142 MOVE                             R9 R11
      143 MOVE                             R10 R12
      144 JUMPIFNOT                        R9 ; [+1]
      145 RETURN                           R10 1
      146 GETIMPORT                        R11 K22 [game]
      148 LOADK                            R13 K23 ["RefactorTranslatorInstance"]
      149 NAMECALL                         R11 R11 K24 ["GetEngineFeature"]
      151 CALL                             R11 2 1
      152 JUMPIFNOT                        R11 ; [+19]
      153 GETTABLEKS                       R11 R0 K25 ["keyPluginName"]
      155 JUMPIFEQKS                       R11 K26 ["Test"] ; [+34]
      157 JUMPIF                           R9 ; [+32]
      158 GETIMPORT                        R11 K28 [string.find]
      160 MOVE                             R12 R10
      161 LOADK                            R13 K29 ["Key .* not found for locale"]
      162 CALL                             R11 2 1
      163 JUMPIF                           R11 ; [+26]
      164 GETIMPORT                        R11 K31 [warn]
      166 MOVE                             R12 R10
      167 GETIMPORT                        R13 K34 [debug.traceback]
      169 CALL                             R13 0 -1
      170 CALL                             R11 -1 0
      171 RETURN                           R5 1
      172 GETTABLEKS                       R11 R0 K25 ["keyPluginName"]
      174 JUMPIFEQKS                       R11 K26 ["Test"] ; [+15]
      176 JUMPIF                           R9 ; [+13]
      177 GETIMPORT                        R11 K28 [string.find]
      179 MOVE                             R12 R10
      180 LOADK                            R13 K35 ["LocalizationTable or parent tables do not contain a translation"]
      181 CALL                             R11 2 1
      182 JUMPIF                           R11 ; [+7]
      183 GETIMPORT                        R11 K31 [warn]
      185 MOVE                             R12 R10
      186 GETIMPORT                        R13 K34 [debug.traceback]
      188 CALL                             R13 0 -1
      189 CALL                             R11 -1 0
      190 RETURN                           R5 1

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
        4 GETIMPORT                        R1 K1 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R1 1 2
       11 RETURN                           R1 2

PROTO_13:
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["Cannot call function if FFlagDevFrameworkSupportExternalLoc == false"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 GETTABLEKS                       R6 R0 K3 ["translators"]
       12 GETTABLE                         R5 R6 R1
       13 GETTABLEKS                       R7 R0 K4 ["fallbackTranslators"]
       15 GETTABLE                         R6 R7 R1
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 GETTABLEKS                       R9 R0 K5 ["locale"]
       20 JUMPIFNOTEQKS                    R9 K6 ["en-us"] ; [+19]
       22 JUMPIF                           R6 ; [+3]
       23 LOADB                            R9 0
       24 LOADNIL                          R10
       25 JUMP                             ; [+9]
       26 GETIMPORT                        R11 K8 [pcall]
       28 NEWCLOSURE                       R12 P1
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CALL                             R11 1 2
       33 MOVE                             R9 R11
       34 MOVE                             R10 R12
       35 MOVE                             R7 R9
       36 MOVE                             R8 R10
       37 JUMPIFNOT                        R7 ; [+36]
       38 RETURN                           R8 1
       39 JUMP                             ; [+34]
       40 JUMPIF                           R5 ; [+3]
       41 LOADB                            R9 0
       42 LOADNIL                          R10
       43 JUMP                             ; [+9]
       44 GETIMPORT                        R11 K8 [pcall]
       46 NEWCLOSURE                       R12 P1
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CALL                             R11 1 2
       51 MOVE                             R9 R11
       52 MOVE                             R10 R12
       53 MOVE                             R7 R9
       54 MOVE                             R8 R10
       55 JUMPIFNOT                        R7 ; [+1]
       56 RETURN                           R8 1
       57 JUMPIF                           R6 ; [+3]
       58 LOADB                            R9 0
       59 LOADNIL                          R10
       60 JUMP                             ; [+9]
       61 GETIMPORT                        R11 K8 [pcall]
       63 NEWCLOSURE                       R12 P1
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CALL                             R11 1 2
       68 MOVE                             R9 R11
       69 MOVE                             R10 R12
       70 MOVE                             R7 R9
       71 MOVE                             R8 R10
       72 JUMPIFNOT                        R7 ; [+1]
       73 RETURN                           R8 1
       74 GETIMPORT                        R9 K10 [game]
       76 LOADK                            R11 K11 ["RefactorTranslatorInstance"]
       77 NAMECALL                         R9 R9 K12 ["GetEngineFeature"]
       79 CALL                             R9 2 1
       80 JUMPIFNOT                        R9 ; [+19]
       81 GETTABLEKS                       R9 R0 K13 ["keyPluginName"]
       83 JUMPIFEQKS                       R9 K14 ["Test"] ; [+34]
       85 JUMPIF                           R7 ; [+32]
       86 GETIMPORT                        R9 K17 [string.find]
       88 MOVE                             R10 R8
       89 LOADK                            R11 K18 ["Key .* not found for locale"]
       90 CALL                             R9 2 1
       91 JUMPIF                           R9 ; [+26]
       92 GETIMPORT                        R9 K20 [warn]
       94 MOVE                             R10 R8
       95 GETIMPORT                        R11 K23 [debug.traceback]
       97 CALL                             R11 0 -1
       98 CALL                             R9 -1 0
       99 RETURN                           R2 1
      100 GETTABLEKS                       R9 R0 K13 ["keyPluginName"]
      102 JUMPIFEQKS                       R9 K14 ["Test"] ; [+15]
      104 JUMPIF                           R7 ; [+13]
      105 GETIMPORT                        R9 K17 [string.find]
      107 MOVE                             R10 R8
      108 LOADK                            R11 K24 ["LocalizationTable or parent tables do not contain a translation"]
      109 CALL                             R9 2 1
      110 JUMPIF                           R9 ; [+7]
      111 GETIMPORT                        R9 K20 [warn]
      113 MOVE                             R10 R8
      114 GETIMPORT                        R11 K23 [debug.traceback]
      116 CALL                             R11 0 -1
      117 CALL                             R9 -1 0
      118 RETURN                           R2 1

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
        0 GETTABLEN                        R3 R0 1
        1 FASTCALL1                        MATH_ABS R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [math.abs]
        5 CALL                             R4 1 1
        6 LENGTH                           R7 R0
        7 LOADN                            R5 2
        8 LOADN                            R6 -1
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
       38 CALL                             R4 2 -1
       39 CALL                             R3 -1 -1
       40 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["UI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETIMPORT                        R2 K10 [require]
       17 GETTABLEKS                       R3 R1 K6 ["UI"]
       19 GETTABLEKS                       R3 R3 K11 ["ContextServices"]
       21 GETTABLEKS                       R3 R3 K12 ["ContextItem"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K10 [require]
       26 GETTABLEKS                       R4 R1 K13 ["Resources"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K10 [require]
       31 GETTABLEKS                       R5 R1 K14 ["Util"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K15 ["Signal"]
       36 GETIMPORT                        R6 K10 [require]
       38 GETTABLEKS                       R7 R1 K8 ["Parent"]
       40 GETTABLEKS                       R7 R7 K16 ["Cryo"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K10 [require]
       45 GETTABLEKS                       R8 R1 K17 ["SharedFlags"]
       47 GETTABLEKS                       R8 R8 K18 ["getFFlagDevFrameworkSupportExternalLoc"]
       49 CALL                             R7 1 1
       50 CALL                             R7 0 1
       51 LOADK                            R10 K19 ["Localization"]
       52 NAMECALL                         R8 R2 K20 ["extend"]
       54 CALL                             R8 2 1
       55 GETIMPORT                        R9 K1 [game]
       57 LOADK                            R11 K21 ["CorrectlyParseQTLocale"]
       58 LOADB                            R12 0
       59 NAMECALL                         R9 R9 K22 ["DefineFastFlag"]
       61 CALL                             R9 3 1
       62 DUPCLOSURE                       R10 K23 [PROTO_2]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R8
       70 SETTABLEKS                       R10 R8 K24 ["new"]
       72 DUPCLOSURE                       R10 K25 [PROTO_3]
       73 SETTABLEKS                       R10 R8 K26 ["getSignal"]
       75 DUPCLOSURE                       R10 K27 [PROTO_4]
       76 SETTABLEKS                       R10 R8 K28 ["getConsumerItem"]
       78 DUPCLOSURE                       R10 K29 [PROTO_5]
       79 SETTABLEKS                       R10 R8 K30 ["getText"]
       81 DUPCLOSURE                       R10 K31 [PROTO_6]
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R10 R8 K32 ["getExternalTextWithOnlyNamespace"]
       86 DUPCLOSURE                       R10 K33 [PROTO_7]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R10 R8 K34 ["getExternalText"]
       91 DUPCLOSURE                       R10 K35 [PROTO_10]
       92 CAPTURE                          VAL R7
       93 SETTABLEKS                       R10 R8 K36 ["getProjectText"]
       95 DUPCLOSURE                       R10 K37 [PROTO_13]
       96 CAPTURE                          VAL R7
       97 SETTABLEKS                       R10 R8 K38 ["_getStringInProject"]
       99 DUPCLOSURE                       R10 K39 [PROTO_14]
      100 SETTABLEKS                       R10 R8 K40 ["destroy"]
      102 DUPCLOSURE                       R10 K41 [PROTO_15]
      103 SETTABLEKS                       R10 R8 K42 ["updateLocaleAndTranslator"]
      105 GETIMPORT                        R10 K10 [require]
      107 GETTABLEKS                       R11 R1 K14 ["Util"]
      109 GETTABLEKS                       R11 R11 K43 ["RoundingBehaviour"]
      111 CALL                             R10 1 1
      112 NEWTABLE                         R11 0 0
      114 NEWTABLE                         R12 2 4
      116 LOADK                            R17 K44 ["."]
      117 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      119 LOADK                            R17 K46 [","]
      120 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      122 NEWTABLE                         R13 0 2
      124 LOADN                            R14 1
      125 LOADK                            R15 K48 [""]
      126 SETLIST                          R13 R14 2 [1]
      128 NEWTABLE                         R14 0 2
      130 LOADN                            R15 1000
      131 LOADK                            R16 K49 ["K"]
      132 SETLIST                          R14 R15 2 [1]
      134 NEWTABLE                         R15 0 2
      136 LOADK                            R16 K50 [1000000]
      137 LOADK                            R17 K51 ["M"]
      138 SETLIST                          R15 R16 2 [1]
      140 NEWTABLE                         R16 0 2
      142 LOADK                            R17 K52 [1000000000]
      143 LOADK                            R18 K53 ["B"]
      144 SETLIST                          R16 R17 2 [1]
      146 SETLIST                          R12 R13 4 [1]
      148 SETTABLEKS                       R12 R11 K54 ["en-us"]
      150 NEWTABLE                         R12 2 3
      152 LOADK                            R16 K46 [","]
      153 SETTABLEKS                       R16 R12 K45 ["decimalSeparator"]
      155 LOADK                            R16 K44 ["."]
      156 SETTABLEKS                       R16 R12 K47 ["groupDelimiter"]
      158 NEWTABLE                         R13 0 2
      160 LOADN                            R14 1
      161 LOADK                            R15 K48 [""]
      162 SETLIST                          R13 R14 2 [1]
      164 NEWTABLE                         R14 0 2
      166 LOADN                            R15 1000
      167 LOADK                            R16 K55 [" mil"]
      168 SETLIST                          R14 R15 2 [1]
      170 NEWTABLE                         R15 0 2
      172 LOADK                            R16 K50 [1000000]
      173 LOADK                            R17 K56 [" M"]
      174 SETLIST                          R15 R16 2 [1]
      176 SETLIST                          R12 R13 3 [1]
      178 SETTABLEKS                       R12 R11 K57 ["es-es"]
      180 NEWTABLE                         R12 2 4
      182 LOADK                            R17 K46 [","]
      183 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      185 LOADK                            R17 K58 [" "]
      186 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      188 NEWTABLE                         R13 0 2
      190 LOADN                            R14 1
      191 LOADK                            R15 K48 [""]
      192 SETLIST                          R13 R14 2 [1]
      194 NEWTABLE                         R14 0 2
      196 LOADN                            R15 1000
      197 LOADK                            R16 K59 [" k"]
      198 SETLIST                          R14 R15 2 [1]
      200 NEWTABLE                         R15 0 2
      202 LOADK                            R16 K50 [1000000]
      203 LOADK                            R17 K56 [" M"]
      204 SETLIST                          R15 R16 2 [1]
      206 NEWTABLE                         R16 0 2
      208 LOADK                            R17 K52 [1000000000]
      209 LOADK                            R18 K60 [" Md"]
      210 SETLIST                          R16 R17 2 [1]
      212 SETLIST                          R12 R13 4 [1]
      214 SETTABLEKS                       R12 R11 K61 ["fr-fr"]
      216 NEWTABLE                         R12 2 4
      218 LOADK                            R17 K46 [","]
      219 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      221 LOADK                            R17 K58 [" "]
      222 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      224 NEWTABLE                         R13 0 2
      226 LOADN                            R14 1
      227 LOADK                            R15 K48 [""]
      228 SETLIST                          R13 R14 2 [1]
      230 NEWTABLE                         R14 0 2
      232 LOADN                            R15 1000
      233 LOADK                            R16 K62 [" Tsd."]
      234 SETLIST                          R14 R15 2 [1]
      236 NEWTABLE                         R15 0 2
      238 LOADK                            R16 K50 [1000000]
      239 LOADK                            R17 K63 [" Mio."]
      240 SETLIST                          R15 R16 2 [1]
      242 NEWTABLE                         R16 0 2
      244 LOADK                            R17 K52 [1000000000]
      245 LOADK                            R18 K64 [" Mrd."]
      246 SETLIST                          R16 R17 2 [1]
      248 SETLIST                          R12 R13 4 [1]
      250 SETTABLEKS                       R12 R11 K65 ["de-de"]
      252 NEWTABLE                         R12 2 4
      254 LOADK                            R17 K46 [","]
      255 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      257 LOADK                            R17 K44 ["."]
      258 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      260 NEWTABLE                         R13 0 2
      262 LOADN                            R14 1
      263 LOADK                            R15 K48 [""]
      264 SETLIST                          R13 R14 2 [1]
      266 NEWTABLE                         R14 0 2
      268 LOADN                            R15 1000
      269 LOADK                            R16 K55 [" mil"]
      270 SETLIST                          R14 R15 2 [1]
      272 NEWTABLE                         R15 0 2
      274 LOADK                            R16 K50 [1000000]
      275 LOADK                            R17 K66 [" mi"]
      276 SETLIST                          R15 R16 2 [1]
      278 NEWTABLE                         R16 0 2
      280 LOADK                            R17 K52 [1000000000]
      281 LOADK                            R18 K67 [" bi"]
      282 SETLIST                          R16 R17 2 [1]
      284 SETLIST                          R12 R13 4 [1]
      286 SETTABLEKS                       R12 R11 K68 ["pt-br"]
      288 NEWTABLE                         R12 2 4
      290 LOADK                            R17 K44 ["."]
      291 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      293 LOADK                            R17 K46 [","]
      294 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      296 NEWTABLE                         R13 0 2
      298 LOADN                            R14 1
      299 LOADK                            R15 K48 [""]
      300 SETLIST                          R13 R14 2 [1]
      302 NEWTABLE                         R14 0 2
      304 LOADN                            R15 1000
      305 LOADK                            R16 K69 ["千"]
      306 SETLIST                          R14 R15 2 [1]
      308 NEWTABLE                         R15 0 2
      310 LOADN                            R16 10000
      311 LOADK                            R17 K70 ["万"]
      312 SETLIST                          R15 R16 2 [1]
      314 NEWTABLE                         R16 0 2
      316 LOADK                            R17 K71 [100000000]
      317 LOADK                            R18 K72 ["亿"]
      318 SETLIST                          R16 R17 2 [1]
      320 SETLIST                          R12 R13 4 [1]
      322 SETTABLEKS                       R12 R11 K73 ["zh-cn"]
      324 NEWTABLE                         R12 2 4
      326 LOADK                            R17 K44 ["."]
      327 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      329 LOADK                            R17 K46 [","]
      330 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      332 NEWTABLE                         R13 0 2
      334 LOADN                            R14 1
      335 LOADK                            R15 K48 [""]
      336 SETLIST                          R13 R14 2 [1]
      338 NEWTABLE                         R14 0 2
      340 LOADN                            R15 1000
      341 LOADK                            R16 K69 ["千"]
      342 SETLIST                          R14 R15 2 [1]
      344 NEWTABLE                         R15 0 2
      346 LOADN                            R16 10000
      347 LOADK                            R17 K70 ["万"]
      348 SETLIST                          R15 R16 2 [1]
      350 NEWTABLE                         R16 0 2
      352 LOADK                            R17 K71 [100000000]
      353 LOADK                            R18 K72 ["亿"]
      354 SETLIST                          R16 R17 2 [1]
      356 SETLIST                          R12 R13 4 [1]
      358 SETTABLEKS                       R12 R11 K74 ["zh-cjv"]
      360 NEWTABLE                         R12 2 4
      362 LOADK                            R17 K44 ["."]
      363 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      365 LOADK                            R17 K46 [","]
      366 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      368 NEWTABLE                         R13 0 2
      370 LOADN                            R14 1
      371 LOADK                            R15 K48 [""]
      372 SETLIST                          R13 R14 2 [1]
      374 NEWTABLE                         R14 0 2
      376 LOADN                            R15 1000
      377 LOADK                            R16 K69 ["千"]
      378 SETLIST                          R14 R15 2 [1]
      380 NEWTABLE                         R15 0 2
      382 LOADN                            R16 10000
      383 LOADK                            R17 K75 ["萬"]
      384 SETLIST                          R15 R16 2 [1]
      386 NEWTABLE                         R16 0 2
      388 LOADK                            R17 K71 [100000000]
      389 LOADK                            R18 K76 ["億"]
      390 SETLIST                          R16 R17 2 [1]
      392 SETLIST                          R12 R13 4 [1]
      394 SETTABLEKS                       R12 R11 K77 ["zh-tw"]
      396 NEWTABLE                         R12 2 4
      398 LOADK                            R17 K44 ["."]
      399 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      401 LOADK                            R17 K46 [","]
      402 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      404 NEWTABLE                         R13 0 2
      406 LOADN                            R14 1
      407 LOADK                            R15 K48 [""]
      408 SETLIST                          R13 R14 2 [1]
      410 NEWTABLE                         R14 0 2
      412 LOADN                            R15 1000
      413 LOADK                            R16 K78 ["천"]
      414 SETLIST                          R14 R15 2 [1]
      416 NEWTABLE                         R15 0 2
      418 LOADN                            R16 10000
      419 LOADK                            R17 K79 ["만"]
      420 SETLIST                          R15 R16 2 [1]
      422 NEWTABLE                         R16 0 2
      424 LOADK                            R17 K71 [100000000]
      425 LOADK                            R18 K80 ["억"]
      426 SETLIST                          R16 R17 2 [1]
      428 SETLIST                          R12 R13 4 [1]
      430 SETTABLEKS                       R12 R11 K81 ["ko-kr"]
      432 NEWTABLE                         R12 2 4
      434 LOADK                            R17 K44 ["."]
      435 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      437 LOADK                            R17 K46 [","]
      438 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      440 NEWTABLE                         R13 0 2
      442 LOADN                            R14 1
      443 LOADK                            R15 K48 [""]
      444 SETLIST                          R13 R14 2 [1]
      446 NEWTABLE                         R14 0 2
      448 LOADN                            R15 1000
      449 LOADK                            R16 K69 ["千"]
      450 SETLIST                          R14 R15 2 [1]
      452 NEWTABLE                         R15 0 2
      454 LOADN                            R16 10000
      455 LOADK                            R17 K70 ["万"]
      456 SETLIST                          R15 R16 2 [1]
      458 NEWTABLE                         R16 0 2
      460 LOADK                            R17 K71 [100000000]
      461 LOADK                            R18 K76 ["億"]
      462 SETLIST                          R16 R17 2 [1]
      464 SETLIST                          R12 R13 4 [1]
      466 SETTABLEKS                       R12 R11 K82 ["ja-jp"]
      468 NEWTABLE                         R12 2 4
      470 LOADK                            R17 K46 [","]
      471 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      473 LOADK                            R17 K58 [" "]
      474 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      476 NEWTABLE                         R13 0 2
      478 LOADN                            R14 1
      479 LOADK                            R15 K48 [""]
      480 SETLIST                          R13 R14 2 [1]
      482 NEWTABLE                         R14 0 2
      484 LOADN                            R15 1000
      485 LOADK                            R16 K83 [" mila"]
      486 SETLIST                          R14 R15 2 [1]
      488 NEWTABLE                         R15 0 2
      490 LOADK                            R16 K50 [1000000]
      491 LOADK                            R17 K84 [" Mln"]
      492 SETLIST                          R15 R16 2 [1]
      494 NEWTABLE                         R16 0 2
      496 LOADK                            R17 K52 [1000000000]
      497 LOADK                            R18 K85 [" Mld"]
      498 SETLIST                          R16 R17 2 [1]
      500 SETLIST                          R12 R13 4 [1]
      502 SETTABLEKS                       R12 R11 K86 ["it-it"]
      504 NEWTABLE                         R12 2 4
      506 LOADK                            R17 K46 [","]
      507 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      509 LOADK                            R17 K44 ["."]
      510 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      512 NEWTABLE                         R13 0 2
      514 LOADN                            R14 1
      515 LOADK                            R15 K48 [""]
      516 SETLIST                          R13 R14 2 [1]
      518 NEWTABLE                         R14 0 2
      520 LOADN                            R15 1000
      521 LOADK                            R16 K87 [" тыс"]
      522 SETLIST                          R14 R15 2 [1]
      524 NEWTABLE                         R15 0 2
      526 LOADK                            R16 K50 [1000000]
      527 LOADK                            R17 K88 [" млн"]
      528 SETLIST                          R15 R16 2 [1]
      530 NEWTABLE                         R16 0 2
      532 LOADK                            R17 K52 [1000000000]
      533 LOADK                            R18 K89 [" млрд"]
      534 SETLIST                          R16 R17 2 [1]
      536 SETLIST                          R12 R13 4 [1]
      538 SETTABLEKS                       R12 R11 K90 ["ru-ru"]
      540 NEWTABLE                         R12 2 4
      542 LOADK                            R17 K46 [","]
      543 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      545 LOADK                            R17 K44 ["."]
      546 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      548 NEWTABLE                         R13 0 2
      550 LOADN                            R14 1
      551 LOADK                            R15 K48 [""]
      552 SETLIST                          R13 R14 2 [1]
      554 NEWTABLE                         R14 0 2
      556 LOADN                            R15 1000
      557 LOADK                            R16 K91 [" rb"]
      558 SETLIST                          R14 R15 2 [1]
      560 NEWTABLE                         R15 0 2
      562 LOADK                            R16 K50 [1000000]
      563 LOADK                            R17 K92 [" jt"]
      564 SETLIST                          R15 R16 2 [1]
      566 NEWTABLE                         R16 0 2
      568 LOADK                            R17 K52 [1000000000]
      569 LOADK                            R18 K56 [" M"]
      570 SETLIST                          R16 R17 2 [1]
      572 SETLIST                          R12 R13 4 [1]
      574 SETTABLEKS                       R12 R11 K93 ["id-id"]
      576 NEWTABLE                         R12 2 4
      578 LOADK                            R17 K44 ["."]
      579 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      581 LOADK                            R17 K58 [" "]
      582 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      584 NEWTABLE                         R13 0 2
      586 LOADN                            R14 1
      587 LOADK                            R15 K48 [""]
      588 SETLIST                          R13 R14 2 [1]
      590 NEWTABLE                         R14 0 2
      592 LOADN                            R15 1000
      593 LOADK                            R16 K94 [" N"]
      594 SETLIST                          R14 R15 2 [1]
      596 NEWTABLE                         R15 0 2
      598 LOADK                            R16 K50 [1000000]
      599 LOADK                            R17 K95 [" Tr"]
      600 SETLIST                          R15 R16 2 [1]
      602 NEWTABLE                         R16 0 2
      604 LOADK                            R17 K52 [1000000000]
      605 LOADK                            R18 K96 [" T"]
      606 SETLIST                          R16 R17 2 [1]
      608 SETLIST                          R12 R13 4 [1]
      610 SETTABLEKS                       R12 R11 K97 ["vi-vn"]
      612 NEWTABLE                         R12 2 5
      614 LOADK                            R18 K44 ["."]
      615 SETTABLEKS                       R18 R12 K45 ["decimalSeparator"]
      617 LOADK                            R18 K46 [","]
      618 SETTABLEKS                       R18 R12 K47 ["groupDelimiter"]
      620 NEWTABLE                         R13 0 2
      622 LOADN                            R14 1
      623 LOADK                            R15 K48 [""]
      624 SETLIST                          R13 R14 2 [1]
      626 NEWTABLE                         R14 0 2
      628 LOADN                            R15 1000
      629 LOADK                            R16 K98 [" พ"]
      630 SETLIST                          R14 R15 2 [1]
      632 NEWTABLE                         R15 0 2
      634 LOADN                            R16 10000
      635 LOADK                            R17 K99 [" ม"]
      636 SETLIST                          R15 R16 2 [1]
      638 NEWTABLE                         R16 0 2
      640 LOADK                            R17 K100 [100000]
      641 LOADK                            R18 K101 [" ส"]
      642 SETLIST                          R16 R17 2 [1]
      644 NEWTABLE                         R17 0 2
      646 LOADK                            R18 K50 [1000000]
      647 LOADK                            R19 K102 [" ล"]
      648 SETLIST                          R17 R18 2 [1]
      650 SETLIST                          R12 R13 5 [1]
      652 SETTABLEKS                       R12 R11 K103 ["th-th"]
      654 NEWTABLE                         R12 2 4
      656 LOADK                            R17 K46 [","]
      657 SETTABLEKS                       R17 R12 K45 ["decimalSeparator"]
      659 LOADK                            R17 K44 ["."]
      660 SETTABLEKS                       R17 R12 K47 ["groupDelimiter"]
      662 NEWTABLE                         R13 0 2
      664 LOADN                            R14 1
      665 LOADK                            R15 K48 [""]
      666 SETLIST                          R13 R14 2 [1]
      668 NEWTABLE                         R14 0 2
      670 LOADN                            R15 1000
      671 LOADK                            R16 K104 [" B"]
      672 SETLIST                          R14 R15 2 [1]
      674 NEWTABLE                         R15 0 2
      676 LOADK                            R16 K50 [1000000]
      677 LOADK                            R17 K105 [" Mn"]
      678 SETLIST                          R15 R16 2 [1]
      680 NEWTABLE                         R16 0 2
      682 LOADK                            R17 K52 [1000000000]
      683 LOADK                            R18 K106 [" Mr"]
      684 SETLIST                          R16 R17 2 [1]
      686 SETLIST                          R12 R13 4 [1]
      688 SETTABLEKS                       R12 R11 K107 ["tr-tr"]
      690 GETTABLEKS                       R12 R11 K54 ["en-us"]
      692 SETTABLEKS                       R12 R11 K108 ["en-gb"]
      694 GETTABLEKS                       R12 R11 K57 ["es-es"]
      696 SETTABLEKS                       R12 R11 K109 ["es-mx"]
      698 DUPCLOSURE                       R12 K110 [PROTO_16]
      699 DUPCLOSURE                       R13 K111 [PROTO_17]
      700 DUPCLOSURE                       R14 K112 [PROTO_18]
      701 CAPTURE                          VAL R10
      702 DUPCLOSURE                       R15 K113 [PROTO_19]
      703 DUPCLOSURE                       R16 K114 [PROTO_20]
      704 CAPTURE                          VAL R10
      705 DUPCLOSURE                       R17 K115 [PROTO_21]
      706 CAPTURE                          VAL R11
      707 CAPTURE                          VAL R15
      708 SETTABLEKS                       R17 R8 K116 ["localizeNumber"]
      710 DUPCLOSURE                       R17 K117 [PROTO_22]
      711 CAPTURE                          VAL R10
      712 CAPTURE                          VAL R11
      713 CAPTURE                          VAL R16
      714 CAPTURE                          VAL R15
      715 SETTABLEKS                       R17 R8 K118 ["localizeAndAbbreviateNumber"]
      717 DUPCLOSURE                       R17 K119 [PROTO_26]
      718 CAPTURE                          VAL R8
      719 CAPTURE                          VAL R6
      720 CAPTURE                          VAL R5
      721 SETTABLEKS                       R17 R8 K120 ["mock"]
      723 RETURN                           R8 1
