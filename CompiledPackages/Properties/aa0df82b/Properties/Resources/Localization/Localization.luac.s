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
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_1]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K3 ["LocalPlayer"]
       11 JUMPIF                           R2 ; [+2]
       12 LOADK                            R3 K4 ["en-us"]
       13 RETURN                           R3 1
       14 GETTABLEKS                       R3 R2 K5 ["LocaleId"]
       16 RETURN                           R3 1

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
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_3]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K3 ["LocalPlayer"]
       11 JUMPIF                           R2 ; [+7]
       12 GETIMPORT                        R3 K6 [Instance.new]
       14 LOADK                            R4 K7 ["BindableEvent"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R3 R3 K8 ["Event"]
       18 RETURN                           R3 1
       19 LOADK                            R5 K9 ["LocaleId"]
       20 NAMECALL                         R3 R2 K10 ["GetPropertyChangedSignal"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1

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
       11 JUMPIFNOT                        R0 ; [+28]
       12 GETIMPORT                        R1 K1 [pcall]
       14 DUPCLOSURE                       R2 K2 [PROTO_1]
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CALL                             R1 1 2
       18 JUMPIFNOT                        R1 ; [+2]
       19 MOVE                             R0 R2
       20 JUMP                             ; [+8]
       21 GETUPVAL                         R3 5
       22 GETTABLEKS                       R3 R3 K3 ["LocalPlayer"]
       24 JUMPIF                           R3 ; [+2]
       25 LOADK                            R0 K4 ["en-us"]
       26 JUMP                             ; [+2]
       27 GETTABLEKS                       R0 R3 K5 ["LocaleId"]
       29 GETIMPORT                        R1 K8 [string.gsub]
       31 GETIMPORT                        R2 K10 [string.lower]
       33 MOVE                             R3 R0
       34 CALL                             R2 1 1
       35 LOADK                            R3 K11 ["_"]
       36 LOADK                            R4 K12 ["-"]
       37 CALL                             R1 3 1
       38 MOVE                             R0 R1
       39 RETURN                           R0 1
       40 GETIMPORT                        R1 K1 [pcall]
       42 DUPCLOSURE                       R2 K2 [PROTO_1]
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U4
       45 CALL                             R1 1 2
       46 JUMPIFNOT                        R1 ; [+2]
       47 MOVE                             R0 R2
       48 RETURN                           R0 1
       49 GETUPVAL                         R3 5
       50 GETTABLEKS                       R3 R3 K3 ["LocalPlayer"]
       52 JUMPIF                           R3 ; [+2]
       53 LOADK                            R0 K4 ["en-us"]
       54 RETURN                           R0 1
       55 GETTABLEKS                       R0 R3 K5 ["LocaleId"]
       57 RETURN                           R0 1

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
        4 GETIMPORT                        R1 K1 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R1 1 2
       11 RETURN                           R1 2

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
      137 MOVE                             R12 R10
      138 JUMPIFNOT                        R12 ; [+9]
      139 FASTCALL1                        TYPEOF R10 ; [+3]
      140 MOVE                             R14 R10
      141 GETIMPORT                        R13 K21 [typeof]
      143 CALL                             R13 1 1
      144 JUMPIFEQKS                       R13 K2 ["string"] ; [+2]
      146 LOADB                            R12 0 +1
      147 LOADB                            R12 1
      148 FASTCALL2K                       ASSERT R12 K22 ; [+4]
      150 LOADK                            R13 K22 ["Failed to get translated string"]
      151 GETIMPORT                        R11 K5 [assert]
      153 CALL                             R11 2 0
      154 GETIMPORT                        R11 K24 [game]
      156 LOADK                            R13 K25 ["RefactorTranslatorInstance"]
      157 NAMECALL                         R11 R11 K26 ["GetEngineFeature"]
      159 CALL                             R11 2 1
      160 JUMPIFNOT                        R11 ; [+19]
      161 GETTABLEKS                       R11 R0 K27 ["keyPluginName"]
      163 JUMPIFEQKS                       R11 K28 ["Test"] ; [+34]
      165 JUMPIF                           R9 ; [+32]
      166 GETIMPORT                        R11 K30 [string.find]
      168 MOVE                             R12 R10
      169 LOADK                            R13 K31 ["Key .* not found for locale"]
      170 CALL                             R11 2 1
      171 JUMPIF                           R11 ; [+26]
      172 GETIMPORT                        R11 K33 [warn]
      174 MOVE                             R12 R10
      175 GETIMPORT                        R13 K36 [debug.traceback]
      177 CALL                             R13 0 -1
      178 CALL                             R11 -1 0
      179 RETURN                           R5 1
      180 GETTABLEKS                       R11 R0 K27 ["keyPluginName"]
      182 JUMPIFEQKS                       R11 K28 ["Test"] ; [+15]
      184 JUMPIF                           R9 ; [+13]
      185 GETIMPORT                        R11 K30 [string.find]
      187 MOVE                             R12 R10
      188 LOADK                            R13 K37 ["LocalizationTable or parent tables do not contain a translation"]
      189 CALL                             R11 2 1
      190 JUMPIF                           R11 ; [+7]
      191 GETIMPORT                        R11 K33 [warn]
      193 MOVE                             R12 R10
      194 GETIMPORT                        R13 K36 [debug.traceback]
      196 CALL                             R13 0 -1
      197 CALL                             R11 -1 0
      198 RETURN                           R5 1

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
       26 MOVE                             R10 R3
       27 MOVE                             R11 R2
       28 JUMPIFNOTEQKN                    R9 K0 [0] ; [+3]
       30 LOADN                            R12 0
       31 JUMP                             ; [+15]
       32 FASTCALL1                        MATH_ABS R9 ; [+3]
       33 MOVE                             R16 R9
       34 GETIMPORT                        R15 K7 [math.abs]
       36 CALL                             R15 1 1
       37 FASTCALL1                        MATH_LOG10 R15 ; [+2]
       38 GETIMPORT                        R14 K9 [math.log10]
       40 CALL                             R14 1 1
       41 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       42 GETIMPORT                        R13 K11 [math.floor]
       44 CALL                             R13 1 1
       45 ADDK                             R14 R13 K12 [1]
       46 MINUS                            R12 R14
       47 LOADN                            R14 10
       48 ADD                              R15 R10 R12
       49 POW                              R13 R14 R15
       50 LOADNIL                          R14
       51 GETUPVAL                         R15 2
       52 GETTABLEKS                       R15 R15 K13 ["Truncate"]
       54 JUMPIFNOTEQ                      R11 R15 ; [+8]
       56 MUL                              R16 R9 R13
       57 FASTCALL1                        MATH_MODF R16 ; [+2]
       58 GETIMPORT                        R15 K15 [math.modf]
       60 CALL                             R15 1 1
       61 MOVE                             R14 R15
       62 JUMP                             ; [+7]
       63 MUL                              R17 R9 R13
       64 ADDK                             R16 R17 K16 [0.5]
       65 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       66 GETIMPORT                        R15 K11 [math.floor]
       68 CALL                             R15 1 1
       69 MOVE                             R14 R15
       70 DIV                              R8 R14 R13
       71 LOADNIL                          R9
       72 JUMPIFNOTEQKS                    R2 K13 ["Truncate"] ; [+8]
       74 MULK                             R11 R8 K17 [10]
       75 FASTCALL1                        MATH_MODF R11 ; [+2]
       76 GETIMPORT                        R10 K15 [math.modf]
       78 CALL                             R10 1 1
       79 DIVK                             R9 R10 K17 [10]
       80 JUMP                             ; [+7]
       81 MULK                             R12 R8 K17 [10]
       82 ADDK                             R11 R12 K16 [0.5]
       83 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       84 GETIMPORT                        R10 K11 [math.floor]
       86 CALL                             R10 1 1
       87 DIVK                             R9 R10 K17 [10]
       88 FASTCALL1                        TOSTRING R9 ; [+3]
       89 MOVE                             R11 R9
       90 GETIMPORT                        R10 K19 [tostring]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K22 [string.find]
       95 MOVE                             R12 R10
       96 LOADK                            R13 K23 ["%."]
       97 CALL                             R11 2 1
       98 JUMPIF                           R11 ; [+2]
       99 LENGTH                           R12 R10
      100 ADDK                             R11 R12 K12 [1]
      101 LOADN                            R14 1
      102 SUBK                             R15 R11 K12 [1]
      103 FASTCALL3                        STRING_SUB R10 R14 R15
      105 MOVE                             R13 R10
      106 GETIMPORT                        R12 K25 [string.sub]
      108 CALL                             R12 3 1
      109 ADDK                             R15 R11 K12 [1]
      110 LENGTH                           R16 R10
      111 FASTCALL3                        STRING_SUB R10 R15 R16
      113 MOVE                             R14 R10
      114 GETIMPORT                        R13 K25 [string.sub]
      116 CALL                             R13 3 1
      117 GETTABLEKS                       R14 R4 K26 ["groupDelimiter"]
      119 JUMPIFNOT                        R14 ; [+6]
      120 GETUPVAL                         R14 3
      121 MOVE                             R15 R12
      122 GETTABLEKS                       R16 R4 K26 ["groupDelimiter"]
      124 CALL                             R14 2 1
      125 MOVE                             R12 R14
      126 LENGTH                           R14 R13
      127 LOADN                            R15 0
      128 JUMPIFNOTLT                      R15 R14 ; [+8]
      130 MOVE                             R15 R12
      131 GETTABLEKS                       R16 R4 K27 ["decimalSeparator"]
      133 MOVE                             R17 R13
      134 MOVE                             R18 R7
      135 CONCAT                           R14 R15 R18
      136 RETURN                           R14 1
      137 MOVE                             R15 R12
      138 MOVE                             R16 R7
      139 CONCAT                           R14 R15 R16
      140 RETURN                           R14 1

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
        7 GETIMPORT                        R1 K5 [pcall]
        9 DUPCLOSURE                       R2 K6 [PROTO_0]
       10 CALL                             R1 1 2
       11 GETIMPORT                        R3 K8 [script]
       13 LOADK                            R5 K9 ["Properties"]
       14 NAMECALL                         R3 R3 K10 ["FindFirstAncestor"]
       16 CALL                             R3 2 1
       17 GETIMPORT                        R4 K12 [require]
       19 GETTABLEKS                       R5 R3 K13 ["Parent"]
       21 GETTABLEKS                       R5 R5 K14 ["Cryo"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K12 [require]
       26 GETTABLEKS                       R6 R3 K13 ["Parent"]
       28 GETTABLEKS                       R6 R6 K15 ["Signal"]
       30 CALL                             R5 1 1
       31 NEWTABLE                         R6 16 0
       33 SETTABLEKS                       R6 R6 K16 ["__index"]
       35 LOADB                            R7 0
       36 GETIMPORT                        R8 K5 [pcall]
       38 GETIMPORT                        R9 K1 [game]
       40 GETTABLEKS                       R9 R9 K17 ["DefineFastFlag"]
       42 GETIMPORT                        R10 K1 [game]
       44 LOADK                            R11 K18 ["CorrectlyParseQTLocale"]
       45 LOADB                            R12 0
       46 CALL                             R8 4 2
       47 JUMPIFNOT                        R8 ; [+1]
       48 MOVE                             R7 R9
       49 DUPCLOSURE                       R8 K19 [PROTO_2]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 DUPCLOSURE                       R9 K20 [PROTO_4]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R0
       57 NEWCLOSURE                       R10 P3
       58 CAPTURE                          VAL R9
       59 CAPTURE                          REF R7
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R6
       66 SETTABLEKS                       R10 R6 K21 ["new"]
       68 DUPCLOSURE                       R10 K22 [PROTO_8]
       69 SETTABLEKS                       R10 R6 K23 ["getSignal"]
       71 DUPCLOSURE                       R10 K24 [PROTO_9]
       72 SETTABLEKS                       R10 R6 K25 ["getConsumerItem"]
       74 DUPCLOSURE                       R10 K26 [PROTO_10]
       75 SETTABLEKS                       R10 R6 K27 ["getText"]
       77 DUPCLOSURE                       R10 K28 [PROTO_13]
       78 SETTABLEKS                       R10 R6 K29 ["getProjectText"]
       80 DUPCLOSURE                       R10 K30 [PROTO_14]
       81 SETTABLEKS                       R10 R6 K31 ["destroy"]
       83 DUPCLOSURE                       R10 K32 [PROTO_15]
       84 SETTABLEKS                       R10 R6 K33 ["updateLocaleAndTranslator"]
       86 DUPTABLE                         R10 K36 [{["RoundToClosest"] = "RoundToClosest", ["Truncate"] = "Truncate"}]
       87 NEWTABLE                         R11 0 0
       89 NEWTABLE                         R12 4 0
       91 LOADK                            R13 K37 ["."]
       92 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
       94 LOADK                            R13 K39 [","]
       95 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
       97 NEWTABLE                         R13 0 4
       99 NEWTABLE                         R14 0 2
      101 LOADN                            R15 1
      102 LOADK                            R16 K41 [""]
      103 SETLIST                          R14 R15 2 [1]
      105 NEWTABLE                         R15 0 2
      107 LOADN                            R16 1000
      108 LOADK                            R17 K42 ["K"]
      109 SETLIST                          R15 R16 2 [1]
      111 NEWTABLE                         R16 0 2
      113 LOADK                            R17 K43 [1000000]
      114 LOADK                            R18 K44 ["M"]
      115 SETLIST                          R16 R17 2 [1]
      117 NEWTABLE                         R17 0 2
      119 LOADK                            R18 K45 [1000000000]
      120 LOADK                            R19 K46 ["B"]
      121 SETLIST                          R17 R18 2 [1]
      123 SETLIST                          R13 R14 4 [1]
      125 SETTABLEKS                       R13 R12 K47 ["entries"]
      127 SETTABLEKS                       R12 R11 K48 ["en-us"]
      129 NEWTABLE                         R12 4 0
      131 LOADK                            R13 K39 [","]
      132 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      134 LOADK                            R13 K37 ["."]
      135 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      137 NEWTABLE                         R13 0 3
      139 NEWTABLE                         R14 0 2
      141 LOADN                            R15 1
      142 LOADK                            R16 K41 [""]
      143 SETLIST                          R14 R15 2 [1]
      145 NEWTABLE                         R15 0 2
      147 LOADN                            R16 1000
      148 LOADK                            R17 K49 [" mil"]
      149 SETLIST                          R15 R16 2 [1]
      151 NEWTABLE                         R16 0 2
      153 LOADK                            R17 K43 [1000000]
      154 LOADK                            R18 K50 [" M"]
      155 SETLIST                          R16 R17 2 [1]
      157 SETLIST                          R13 R14 3 [1]
      159 SETTABLEKS                       R13 R12 K47 ["entries"]
      161 SETTABLEKS                       R12 R11 K51 ["es-es"]
      163 NEWTABLE                         R12 4 0
      165 LOADK                            R13 K39 [","]
      166 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      168 LOADK                            R13 K52 [" "]
      169 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      171 NEWTABLE                         R13 0 4
      173 NEWTABLE                         R14 0 2
      175 LOADN                            R15 1
      176 LOADK                            R16 K41 [""]
      177 SETLIST                          R14 R15 2 [1]
      179 NEWTABLE                         R15 0 2
      181 LOADN                            R16 1000
      182 LOADK                            R17 K53 [" k"]
      183 SETLIST                          R15 R16 2 [1]
      185 NEWTABLE                         R16 0 2
      187 LOADK                            R17 K43 [1000000]
      188 LOADK                            R18 K50 [" M"]
      189 SETLIST                          R16 R17 2 [1]
      191 NEWTABLE                         R17 0 2
      193 LOADK                            R18 K45 [1000000000]
      194 LOADK                            R19 K54 [" Md"]
      195 SETLIST                          R17 R18 2 [1]
      197 SETLIST                          R13 R14 4 [1]
      199 SETTABLEKS                       R13 R12 K47 ["entries"]
      201 SETTABLEKS                       R12 R11 K55 ["fr-fr"]
      203 NEWTABLE                         R12 4 0
      205 LOADK                            R13 K39 [","]
      206 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      208 LOADK                            R13 K52 [" "]
      209 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      211 NEWTABLE                         R13 0 4
      213 NEWTABLE                         R14 0 2
      215 LOADN                            R15 1
      216 LOADK                            R16 K41 [""]
      217 SETLIST                          R14 R15 2 [1]
      219 NEWTABLE                         R15 0 2
      221 LOADN                            R16 1000
      222 LOADK                            R17 K56 [" Tsd."]
      223 SETLIST                          R15 R16 2 [1]
      225 NEWTABLE                         R16 0 2
      227 LOADK                            R17 K43 [1000000]
      228 LOADK                            R18 K57 [" Mio."]
      229 SETLIST                          R16 R17 2 [1]
      231 NEWTABLE                         R17 0 2
      233 LOADK                            R18 K45 [1000000000]
      234 LOADK                            R19 K58 [" Mrd."]
      235 SETLIST                          R17 R18 2 [1]
      237 SETLIST                          R13 R14 4 [1]
      239 SETTABLEKS                       R13 R12 K47 ["entries"]
      241 SETTABLEKS                       R12 R11 K59 ["de-de"]
      243 NEWTABLE                         R12 4 0
      245 LOADK                            R13 K39 [","]
      246 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      248 LOADK                            R13 K37 ["."]
      249 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      251 NEWTABLE                         R13 0 4
      253 NEWTABLE                         R14 0 2
      255 LOADN                            R15 1
      256 LOADK                            R16 K41 [""]
      257 SETLIST                          R14 R15 2 [1]
      259 NEWTABLE                         R15 0 2
      261 LOADN                            R16 1000
      262 LOADK                            R17 K49 [" mil"]
      263 SETLIST                          R15 R16 2 [1]
      265 NEWTABLE                         R16 0 2
      267 LOADK                            R17 K43 [1000000]
      268 LOADK                            R18 K60 [" mi"]
      269 SETLIST                          R16 R17 2 [1]
      271 NEWTABLE                         R17 0 2
      273 LOADK                            R18 K45 [1000000000]
      274 LOADK                            R19 K61 [" bi"]
      275 SETLIST                          R17 R18 2 [1]
      277 SETLIST                          R13 R14 4 [1]
      279 SETTABLEKS                       R13 R12 K47 ["entries"]
      281 SETTABLEKS                       R12 R11 K62 ["pt-br"]
      283 NEWTABLE                         R12 4 0
      285 LOADK                            R13 K37 ["."]
      286 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      288 LOADK                            R13 K39 [","]
      289 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      291 NEWTABLE                         R13 0 4
      293 NEWTABLE                         R14 0 2
      295 LOADN                            R15 1
      296 LOADK                            R16 K41 [""]
      297 SETLIST                          R14 R15 2 [1]
      299 NEWTABLE                         R15 0 2
      301 LOADN                            R16 1000
      302 LOADK                            R17 K63 ["千"]
      303 SETLIST                          R15 R16 2 [1]
      305 NEWTABLE                         R16 0 2
      307 LOADN                            R17 10000
      308 LOADK                            R18 K64 ["万"]
      309 SETLIST                          R16 R17 2 [1]
      311 NEWTABLE                         R17 0 2
      313 LOADK                            R18 K65 [100000000]
      314 LOADK                            R19 K66 ["亿"]
      315 SETLIST                          R17 R18 2 [1]
      317 SETLIST                          R13 R14 4 [1]
      319 SETTABLEKS                       R13 R12 K47 ["entries"]
      321 SETTABLEKS                       R12 R11 K67 ["zh-cn"]
      323 NEWTABLE                         R12 4 0
      325 LOADK                            R13 K37 ["."]
      326 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      328 LOADK                            R13 K39 [","]
      329 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      331 NEWTABLE                         R13 0 4
      333 NEWTABLE                         R14 0 2
      335 LOADN                            R15 1
      336 LOADK                            R16 K41 [""]
      337 SETLIST                          R14 R15 2 [1]
      339 NEWTABLE                         R15 0 2
      341 LOADN                            R16 1000
      342 LOADK                            R17 K63 ["千"]
      343 SETLIST                          R15 R16 2 [1]
      345 NEWTABLE                         R16 0 2
      347 LOADN                            R17 10000
      348 LOADK                            R18 K64 ["万"]
      349 SETLIST                          R16 R17 2 [1]
      351 NEWTABLE                         R17 0 2
      353 LOADK                            R18 K65 [100000000]
      354 LOADK                            R19 K66 ["亿"]
      355 SETLIST                          R17 R18 2 [1]
      357 SETLIST                          R13 R14 4 [1]
      359 SETTABLEKS                       R13 R12 K47 ["entries"]
      361 SETTABLEKS                       R12 R11 K68 ["zh-cjv"]
      363 NEWTABLE                         R12 4 0
      365 LOADK                            R13 K37 ["."]
      366 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      368 LOADK                            R13 K39 [","]
      369 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      371 NEWTABLE                         R13 0 4
      373 NEWTABLE                         R14 0 2
      375 LOADN                            R15 1
      376 LOADK                            R16 K41 [""]
      377 SETLIST                          R14 R15 2 [1]
      379 NEWTABLE                         R15 0 2
      381 LOADN                            R16 1000
      382 LOADK                            R17 K63 ["千"]
      383 SETLIST                          R15 R16 2 [1]
      385 NEWTABLE                         R16 0 2
      387 LOADN                            R17 10000
      388 LOADK                            R18 K69 ["萬"]
      389 SETLIST                          R16 R17 2 [1]
      391 NEWTABLE                         R17 0 2
      393 LOADK                            R18 K65 [100000000]
      394 LOADK                            R19 K70 ["億"]
      395 SETLIST                          R17 R18 2 [1]
      397 SETLIST                          R13 R14 4 [1]
      399 SETTABLEKS                       R13 R12 K47 ["entries"]
      401 SETTABLEKS                       R12 R11 K71 ["zh-tw"]
      403 NEWTABLE                         R12 4 0
      405 LOADK                            R13 K37 ["."]
      406 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      408 LOADK                            R13 K39 [","]
      409 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      411 NEWTABLE                         R13 0 4
      413 NEWTABLE                         R14 0 2
      415 LOADN                            R15 1
      416 LOADK                            R16 K41 [""]
      417 SETLIST                          R14 R15 2 [1]
      419 NEWTABLE                         R15 0 2
      421 LOADN                            R16 1000
      422 LOADK                            R17 K72 ["천"]
      423 SETLIST                          R15 R16 2 [1]
      425 NEWTABLE                         R16 0 2
      427 LOADN                            R17 10000
      428 LOADK                            R18 K73 ["만"]
      429 SETLIST                          R16 R17 2 [1]
      431 NEWTABLE                         R17 0 2
      433 LOADK                            R18 K65 [100000000]
      434 LOADK                            R19 K74 ["억"]
      435 SETLIST                          R17 R18 2 [1]
      437 SETLIST                          R13 R14 4 [1]
      439 SETTABLEKS                       R13 R12 K47 ["entries"]
      441 SETTABLEKS                       R12 R11 K75 ["ko-kr"]
      443 NEWTABLE                         R12 4 0
      445 LOADK                            R13 K37 ["."]
      446 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      448 LOADK                            R13 K39 [","]
      449 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      451 NEWTABLE                         R13 0 4
      453 NEWTABLE                         R14 0 2
      455 LOADN                            R15 1
      456 LOADK                            R16 K41 [""]
      457 SETLIST                          R14 R15 2 [1]
      459 NEWTABLE                         R15 0 2
      461 LOADN                            R16 1000
      462 LOADK                            R17 K63 ["千"]
      463 SETLIST                          R15 R16 2 [1]
      465 NEWTABLE                         R16 0 2
      467 LOADN                            R17 10000
      468 LOADK                            R18 K64 ["万"]
      469 SETLIST                          R16 R17 2 [1]
      471 NEWTABLE                         R17 0 2
      473 LOADK                            R18 K65 [100000000]
      474 LOADK                            R19 K70 ["億"]
      475 SETLIST                          R17 R18 2 [1]
      477 SETLIST                          R13 R14 4 [1]
      479 SETTABLEKS                       R13 R12 K47 ["entries"]
      481 SETTABLEKS                       R12 R11 K76 ["ja-jp"]
      483 NEWTABLE                         R12 4 0
      485 LOADK                            R13 K39 [","]
      486 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      488 LOADK                            R13 K52 [" "]
      489 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      491 NEWTABLE                         R13 0 4
      493 NEWTABLE                         R14 0 2
      495 LOADN                            R15 1
      496 LOADK                            R16 K41 [""]
      497 SETLIST                          R14 R15 2 [1]
      499 NEWTABLE                         R15 0 2
      501 LOADN                            R16 1000
      502 LOADK                            R17 K77 [" mila"]
      503 SETLIST                          R15 R16 2 [1]
      505 NEWTABLE                         R16 0 2
      507 LOADK                            R17 K43 [1000000]
      508 LOADK                            R18 K78 [" Mln"]
      509 SETLIST                          R16 R17 2 [1]
      511 NEWTABLE                         R17 0 2
      513 LOADK                            R18 K45 [1000000000]
      514 LOADK                            R19 K79 [" Mld"]
      515 SETLIST                          R17 R18 2 [1]
      517 SETLIST                          R13 R14 4 [1]
      519 SETTABLEKS                       R13 R12 K47 ["entries"]
      521 SETTABLEKS                       R12 R11 K80 ["it-it"]
      523 NEWTABLE                         R12 4 0
      525 LOADK                            R13 K39 [","]
      526 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      528 LOADK                            R13 K37 ["."]
      529 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      531 NEWTABLE                         R13 0 4
      533 NEWTABLE                         R14 0 2
      535 LOADN                            R15 1
      536 LOADK                            R16 K41 [""]
      537 SETLIST                          R14 R15 2 [1]
      539 NEWTABLE                         R15 0 2
      541 LOADN                            R16 1000
      542 LOADK                            R17 K81 [" тыс"]
      543 SETLIST                          R15 R16 2 [1]
      545 NEWTABLE                         R16 0 2
      547 LOADK                            R17 K43 [1000000]
      548 LOADK                            R18 K82 [" млн"]
      549 SETLIST                          R16 R17 2 [1]
      551 NEWTABLE                         R17 0 2
      553 LOADK                            R18 K45 [1000000000]
      554 LOADK                            R19 K83 [" млрд"]
      555 SETLIST                          R17 R18 2 [1]
      557 SETLIST                          R13 R14 4 [1]
      559 SETTABLEKS                       R13 R12 K47 ["entries"]
      561 SETTABLEKS                       R12 R11 K84 ["ru-ru"]
      563 NEWTABLE                         R12 4 0
      565 LOADK                            R13 K39 [","]
      566 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      568 LOADK                            R13 K37 ["."]
      569 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      571 NEWTABLE                         R13 0 4
      573 NEWTABLE                         R14 0 2
      575 LOADN                            R15 1
      576 LOADK                            R16 K41 [""]
      577 SETLIST                          R14 R15 2 [1]
      579 NEWTABLE                         R15 0 2
      581 LOADN                            R16 1000
      582 LOADK                            R17 K85 [" rb"]
      583 SETLIST                          R15 R16 2 [1]
      585 NEWTABLE                         R16 0 2
      587 LOADK                            R17 K43 [1000000]
      588 LOADK                            R18 K86 [" jt"]
      589 SETLIST                          R16 R17 2 [1]
      591 NEWTABLE                         R17 0 2
      593 LOADK                            R18 K45 [1000000000]
      594 LOADK                            R19 K50 [" M"]
      595 SETLIST                          R17 R18 2 [1]
      597 SETLIST                          R13 R14 4 [1]
      599 SETTABLEKS                       R13 R12 K47 ["entries"]
      601 SETTABLEKS                       R12 R11 K87 ["id-id"]
      603 NEWTABLE                         R12 4 0
      605 LOADK                            R13 K37 ["."]
      606 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      608 LOADK                            R13 K52 [" "]
      609 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      611 NEWTABLE                         R13 0 4
      613 NEWTABLE                         R14 0 2
      615 LOADN                            R15 1
      616 LOADK                            R16 K41 [""]
      617 SETLIST                          R14 R15 2 [1]
      619 NEWTABLE                         R15 0 2
      621 LOADN                            R16 1000
      622 LOADK                            R17 K88 [" N"]
      623 SETLIST                          R15 R16 2 [1]
      625 NEWTABLE                         R16 0 2
      627 LOADK                            R17 K43 [1000000]
      628 LOADK                            R18 K89 [" Tr"]
      629 SETLIST                          R16 R17 2 [1]
      631 NEWTABLE                         R17 0 2
      633 LOADK                            R18 K45 [1000000000]
      634 LOADK                            R19 K90 [" T"]
      635 SETLIST                          R17 R18 2 [1]
      637 SETLIST                          R13 R14 4 [1]
      639 SETTABLEKS                       R13 R12 K47 ["entries"]
      641 SETTABLEKS                       R12 R11 K91 ["vi-vn"]
      643 NEWTABLE                         R12 4 0
      645 LOADK                            R13 K37 ["."]
      646 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      648 LOADK                            R13 K39 [","]
      649 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      651 NEWTABLE                         R13 0 5
      653 NEWTABLE                         R14 0 2
      655 LOADN                            R15 1
      656 LOADK                            R16 K41 [""]
      657 SETLIST                          R14 R15 2 [1]
      659 NEWTABLE                         R15 0 2
      661 LOADN                            R16 1000
      662 LOADK                            R17 K92 [" พ"]
      663 SETLIST                          R15 R16 2 [1]
      665 NEWTABLE                         R16 0 2
      667 LOADN                            R17 10000
      668 LOADK                            R18 K93 [" ม"]
      669 SETLIST                          R16 R17 2 [1]
      671 NEWTABLE                         R17 0 2
      673 LOADK                            R18 K94 [100000]
      674 LOADK                            R19 K95 [" ส"]
      675 SETLIST                          R17 R18 2 [1]
      677 NEWTABLE                         R18 0 2
      679 LOADK                            R19 K43 [1000000]
      680 LOADK                            R20 K96 [" ล"]
      681 SETLIST                          R18 R19 2 [1]
      683 SETLIST                          R13 R14 5 [1]
      685 SETTABLEKS                       R13 R12 K47 ["entries"]
      687 SETTABLEKS                       R12 R11 K97 ["th-th"]
      689 NEWTABLE                         R12 4 0
      691 LOADK                            R13 K39 [","]
      692 SETTABLEKS                       R13 R12 K38 ["decimalSeparator"]
      694 LOADK                            R13 K37 ["."]
      695 SETTABLEKS                       R13 R12 K40 ["groupDelimiter"]
      697 NEWTABLE                         R13 0 4
      699 NEWTABLE                         R14 0 2
      701 LOADN                            R15 1
      702 LOADK                            R16 K41 [""]
      703 SETLIST                          R14 R15 2 [1]
      705 NEWTABLE                         R15 0 2
      707 LOADN                            R16 1000
      708 LOADK                            R17 K98 [" B"]
      709 SETLIST                          R15 R16 2 [1]
      711 NEWTABLE                         R16 0 2
      713 LOADK                            R17 K43 [1000000]
      714 LOADK                            R18 K99 [" Mn"]
      715 SETLIST                          R16 R17 2 [1]
      717 NEWTABLE                         R17 0 2
      719 LOADK                            R18 K45 [1000000000]
      720 LOADK                            R19 K100 [" Mr"]
      721 SETLIST                          R17 R18 2 [1]
      723 SETLIST                          R13 R14 4 [1]
      725 SETTABLEKS                       R13 R12 K47 ["entries"]
      727 SETTABLEKS                       R12 R11 K101 ["tr-tr"]
      729 GETTABLEKS                       R12 R11 K48 ["en-us"]
      731 SETTABLEKS                       R12 R11 K102 ["en-gb"]
      733 GETTABLEKS                       R12 R11 K51 ["es-es"]
      735 SETTABLEKS                       R12 R11 K103 ["es-mx"]
      737 DUPCLOSURE                       R12 K104 [PROTO_16]
      738 DUPCLOSURE                       R13 K105 [PROTO_17]
      739 DUPCLOSURE                       R14 K106 [PROTO_18]
      740 DUPCLOSURE                       R15 K107 [PROTO_19]
      741 DUPCLOSURE                       R16 K108 [PROTO_20]
      742 DUPCLOSURE                       R17 K109 [PROTO_21]
      743 CAPTURE                          VAL R11
      744 CAPTURE                          VAL R15
      745 SETTABLEKS                       R17 R6 K110 ["localizeNumber"]
      747 DUPCLOSURE                       R17 K111 [PROTO_22]
      748 CAPTURE                          VAL R11
      749 CAPTURE                          VAL R16
      750 CAPTURE                          VAL R10
      751 CAPTURE                          VAL R15
      752 SETTABLEKS                       R17 R6 K112 ["localizeAndAbbreviateNumber"]
      754 DUPCLOSURE                       R17 K113 [PROTO_26]
      755 CAPTURE                          VAL R6
      756 CAPTURE                          VAL R4
      757 CAPTURE                          VAL R5
      758 SETTABLEKS                       R17 R6 K114 ["mock"]
      760 CLOSEUPVALS                      R7
      761 RETURN                           R6 1
